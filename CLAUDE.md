# HOSS block-config pipeline — AutSim/SANKET

## Goal
Generate a HOSS optimization config: ~800 parameters, ~450 experiment
files, 40-50 blocks.

## Inputs (read-only, never edit)
- inputs/model.g                      MOOSE/Kinetikit model
- inputs/params_wide.tsv              two stacked tables:
                                        (A) group | reaction | Kf | Kb
                                        (B) group | enz_parent | enz | Km | kcat
                                      NOT parseable by plain read_csv
- inputs/param_list.txt               flat "<leaf>.<field>" list; has duplicate
                                      leaf names and 5 "(unmapped)" entries
- inputs/expt_weights.json            filename -> {"weight": N}; ordering is a
                                      hand-curated block structure
- inputs/expts/                       450 FindSim JSONs
- inputs/HOSS_19Aug2025_COBYLA.json   AUTHORITATIVE for param path convention,
                                      block schema, optimizer settings

## Environment
- MOOSE python: python3
- FindSim run command: findSim
- 5 cores.

## Parameter model
One row per (object, field) — Kf and Kb are two parameters, Km and kcat
are two parameters. Keep `path` and `field` as SEPARATE columns; build the
HOSS string as f"{path}.{field}" only at emit time. Derive the path prefix
by parsing the existing config, never hardcode it.

Leaf names collide across groups (e.g. craf_deph, crafpq_deph appear in
both the canonical MAPK arm and the barrestin arm). Always carry the full
path. On an ambiguous match, emit ALL matches and flag — never pick one.

## Experiment classes — partition FIRST
DIRECT-PARAMETER: measures a constant directly.
  - Excluded from the sensitivity sweep (S would be nonzero at one entry).
  - Assigned deterministically: follows the parameter it measures into
    whatever block that parameter lands in.
  - Appearing in MULTIPLE blocks is correct and expected. Do not flag.

TIME-SERIES / DOSE-RESPONSE / BARCHART:
  - Goes through masking, sensitivity, and packing.
  - One block only, except where a block fails the rank check.

## Scope
The roster in expt_weights.json defines the working set. Files present in
inputs/expts/ but absent from the roster are OUT OF SCOPE — do not parse
them, do not simulate them, do not place them in blocks, do not count them
in any total. Report their number once, as a single line, and move on.

The reverse case is an error: a file in the roster with no corresponding
JSON in inputs/expts/ must be reported by name and treated as a blocker.

## Sibling variants
Files sharing a stem and differing only by _abs / _window / _slow / a
concentration token are scorings of ONE dataset. Assign a shared
dataset_id and pack them as an atomic unit — splitting them across blocks
double-counts the same information.

## Constraints
- Every parameter in exactly ONE block.
- 15-20 params per block, 40-50 blocks.
- Time-series,  BarCharts and Dose-Response datasets: one block each. Log every exception with reason.
- Thermodynamically constrained cycles: all member reactions share a block.
- Effective rank per block >= 0.7 * n_params (sigma_i/sigma_1 > 1e-3).
  Rank is the real criterion; param count is only a proxy for it.
- Leftover experiments are an ACCEPTABLE outcome. Report, never force-fit.

## Weights
Range 19-700. Use UNWEIGHTED |S| for block assignment — that is an
information question, not a priority question. Carry `weight` through
unchanged to the emitted config.

## Seeding
The ordering in expt_weights.json is the existing hand-built block
structure. Extract contiguous runs as outputs/seed_blocks.json and
initialize the Phase 4 local search from it. Do not cluster cold.

## Rules
- Write scripts to scripts/, artifacts to outputs/.
- Never load 450 experiment JSONs into context. Write a parser, read
  the table it emits.
- Never fabricate a pathway label. Leave blank and report.
- Parse expt_weights.json with object_pairs_hook, not json.load —
  duplicate keys are meaningful here (direct-parameter experiments
  appear in multiple blocks), not errors.
- Build the experiment table from the roster, then look up each file in
  inputs/expts/. Never glob the folder as the source of truth.
- Cache simulation results so long scripts are resumable.
- After each phase, STOP and report. Do not proceed unprompted.

## Phases
0.5  scripts/00_paramtable.py   -> outputs/params.csv
1    scripts/01_inventory.py    -> outputs/expts.csv, direct_params.csv,
                                   seed_blocks.json
2    scripts/02_graph.py        -> outputs/mask.npz, thermo_cycles.json
3    scripts/03_sensitivity.py  -> outputs/S.npz   (expensive; time a
                                   5-param trial before the full sweep)
4    scripts/04_blocks.py       -> outputs/blocks.json + rank summary
5    scripts/05_emit.py         -> outputs/hoss_config.json, validated by
                                   loading through HOSS's own parser
