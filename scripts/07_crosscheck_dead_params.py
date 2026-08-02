#!/usr/bin/env python3
"""Probe: are certain "dead" params only dead relative to their own narrow
home block's experiments, or genuinely dead everywhere?

Tests two groups against OTHER blocks' experiments (not their home block's):
  - the 33 b2AR desensitization params (GRK/arrestin/internalize/deph),
    currently in Receptors_MAPK -- tested against PKA and AC's experiments
    (Receptors_MAPK's own 45 already cover them from the main sweep).
  - ePKA+DHPGR.{Km,kcat} (home: DHPG_mGluR) and ePKA+RG.{Km,kcat} (home:
    Glu_mGluR) -- tested against Receptors_MAPK, Receptors_S6K, and
    Receptors_protein experiments.

Baselines are reused from the main sweep's cache (outputs/S_raw.jsonl) by
matching on experiment basename only -- a baseline score doesn't depend on
which block launched it. Only new PERTURBED runs are computed here. Any
run that comes back NaN is dropped, not treated as an error (per
instruction: those are destined to be omitted, not investigated).
"""
import csv
import json
import os
import sys
import time
from multiprocessing import Pool

os.environ.setdefault("MPLBACKEND", "Agg")
FINDSIM_DIR = "/home/nisha/SynPlast/FindSim"

CONFIG_PATH = "inputs/configHOSS_whole_15Jun2026_COBYLA.json"
MAIN_RAW = "outputs/S_raw.jsonl"
EXPTS_DIR = "inputs/expts"
PERTURB_RATIO = 1.1
N_WORKERS = 4
OUT_RAW = "outputs/crosscheck_raw.jsonl"
OUT_CSV = "outputs/crosscheck_dead_params.csv"

B2AR_PARAMS = [
    "Epib2ARp1+barr2.Kd", "Epib2ARp1+barr2.tau", "Epib2ARp1_barr2_internalize.Kf",
    "Epib2ARp1_deph.Km", "Epib2ARp1_deph.kcat", "Epib2ARp2+barr2.Kd",
    "Epib2ARp2+barr2.tau", "Epib2ARp2_barr2_internalize.Kf", "Epib2ARp2_deph.Km",
    "Epib2ARp2_deph.kcat", "Isob2ARp1+barr2.Kd", "Isob2ARp1+barr2.tau",
    "Isob2ARp1_barr2_internalize.Kf", "Isob2ARp1_deph.Km", "Isob2ARp1_deph.kcat",
    "Isob2ARp2+barr2.Kd", "Isob2ARp2+barr2.tau", "Isob2ARp2_barr2_internalize.Kf",
    "Isob2ARp2_deph.Km", "Isob2ARp2_deph.kcat", "Intb2ARp1_deph.Km",
    "Intb2ARp1_deph.kcat", "b2ARp2barr2p_deph.Km", "b2ARp2barr2p_deph.kcat",
    "b2ARp2barr2p_dissoc.Kf", "eGRK2+Epi_b2AR.Km", "eGRK2+Epi_b2AR.kcat",
    "eGRK2+Iso_b2AR.Km", "eGRK2+Iso_b2AR.kcat", "eGRK5+Epi_b2AR.Km",
    "eGRK5+Epi_b2AR.kcat", "eGRK5+Iso_b2AR.Km", "eGRK5+Iso_b2AR.kcat",
]
PKA_DEAD_PARAMS = ["ePKA+DHPGR.Km", "ePKA+DHPGR.kcat", "ePKA+RG.Km", "ePKA+RG.kcat"]

# param -> which blocks' experiments to test it against (skip blocks it's
# already been swept against as part of the main run)
PROBE_TARGETS = {}
for p in B2AR_PARAMS:
    PROBE_TARGETS[p] = ["PKA", "AC"]
for p in PKA_DEAD_PARAMS:
    PROBE_TARGETS[p] = ["Receptors_MAPK", "Receptors_S6K", "Receptors_protein"]


def load_config():
    return json.load(open(CONFIG_PATH))


def model_and_map_paths(cfg):
    base = os.path.dirname(CONFIG_PATH)
    return (os.path.normpath(os.path.join(base, cfg["model"])),
            os.path.normpath(os.path.join(base, cfg["map"])))


def build_expt_index():
    files = []
    for root, _, names in os.walk(EXPTS_DIR):
        for n in names:
            if n.endswith(".json"):
                files.append(os.path.join(root, n))
    return {os.path.basename(f): f for f in files}


def is_direct_param(path):
    try:
        with open(path) as f:
            d = json.load(f)
    except (json.JSONDecodeError, OSError):
        return True
    return d.get("Experiment", {}).get("design", "").lower() == "directparameter"


def block_experiments(cfg, block_name, expt_index):
    for group in cfg["HOSS"]:
        for key, val in group.items():
            if key == block_name and isinstance(val, dict) and "params" in val:
                out = []
                for name in val.get("expt", {}):
                    path = expt_index.get(name)
                    if path and not is_direct_param(path):
                        out.append(path)
                return out
    return []


def load_baselines():
    """expt basename -> any cached unperturbed score, from any block."""
    baselines = {}
    if not os.path.exists(MAIN_RAW):
        return baselines
    with open(MAIN_RAW) as f:
        for line in f:
            try:
                r = json.loads(line)
            except json.JSONDecodeError:
                continue
            if r["kind"] == "baseline" and r.get("score") is not None:
                baselines[os.path.basename(r["expt"])] = r["score"]
    return baselines


def load_done():
    done = set()
    if not os.path.exists(OUT_RAW):
        return done
    with open(OUT_RAW) as f:
        for line in f:
            try:
                r = json.loads(line)
            except json.JSONDecodeError:
                continue
            done.add(tuple(r["key"]))
    return done


_MODEL_FILE = None
_MAP_FILE = None
findSim = None


def _worker_init(model_file, map_file):
    global _MODEL_FILE, _MAP_FILE, findSim
    _MODEL_FILE, _MAP_FILE = model_file, map_file
    os.environ.setdefault("MPLBACKEND", "Agg")
    sys.path.insert(0, FINDSIM_DIR)
    import findSim as _findSim
    findSim = _findSim


def _worker(task):
    leaf, field, expt = task
    try:
        score, _, _ = findSim.innerMain(
            expt, modelFile=_MODEL_FILE, mapFile=_MAP_FILE,
            hidePlot=True, silent=True,
            scaleParam=[leaf, field, str(PERTURB_RATIO)])
        err = None
    except Exception as e:
        score, err = None, str(e)
    return {"key": [leaf, field, expt], "leaf": leaf, "field": field,
            "expt": expt, "score": score, "error": err}


def main():
    cfg = load_config()
    model_file, map_file = model_and_map_paths(cfg)
    expt_index = build_expt_index()
    baselines = load_baselines()
    done = load_done()

    tasks = []
    for param, target_blocks in PROBE_TARGETS.items():
        leaf, field = param.rsplit(".", 1)
        for tb in target_blocks:
            for expt in block_experiments(cfg, tb, expt_index):
                key = (leaf, field, expt)
                if key not in done:
                    tasks.append((leaf, field, expt))

    print("{} probe params, {} new (param, experiment) runs needed"
          .format(len(PROBE_TARGETS), len(tasks)))

    if tasks:
        t0 = time.time()
        with open(OUT_RAW, "a") as out_f:
            with Pool(N_WORKERS, initializer=_worker_init,
                      initargs=(model_file, map_file)) as pool:
                for i, result in enumerate(pool.imap_unordered(_worker, tasks, chunksize=1)):
                    out_f.write(json.dumps(result) + "\n")
                    out_f.flush()
                    if (i + 1) % 100 == 0:
                        print("  {}/{} done ({:.1f}s elapsed)".format(
                            i + 1, len(tasks), time.time() - t0))
        print("Probe sweep finished in {:.0f}s".format(time.time() - t0))

    # Assemble report, dropping NaN/failed runs per instruction.
    import math
    all_results = {}
    with open(OUT_RAW) as f:
        for line in f:
            r = json.loads(line)
            all_results[tuple(r["key"])] = r

    rows = []
    n_nan = 0
    for param, target_blocks in PROBE_TARGETS.items():
        leaf, field = param.rsplit(".", 1)
        for tb in target_blocks:
            for expt in block_experiments(cfg, tb, expt_index):
                r = all_results.get((leaf, field, expt))
                if r is None or r["score"] is None:
                    continue
                score = r["score"]
                if isinstance(score, float) and math.isnan(score):
                    n_nan += 1
                    continue
                base = baselines.get(os.path.basename(expt))
                if base is None or (isinstance(base, float) and math.isnan(base)):
                    continue
                rows.append({
                    "param": param, "probe_block": tb,
                    "experiment": os.path.basename(expt),
                    "baseline": round(base, 6), "perturbed": round(score, 6),
                    "dscore": round(score - base, 6),
                })

    rows.sort(key=lambda r: -abs(r["dscore"]))
    with open(OUT_CSV, "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=["param", "probe_block", "experiment",
                            "baseline", "perturbed", "dscore"])
        w.writeheader()
        w.writerows(rows)

    print("\n{} NaN/unusable runs dropped".format(n_nan))
    print("Wrote {} probe results to {}".format(len(rows), OUT_CSV))

    print("\nPer-param peak |dscore| found outside its home block:")
    by_param = {}
    for r in rows:
        by_param.setdefault(r["param"], []).append(abs(r["dscore"]))
    for p in PROBE_TARGETS:
        vals = by_param.get(p, [])
        peak = max(vals) if vals else 0.0
        tag = "STILL DEAD" if peak < 1e-4 else "ALIVE elsewhere!"
        print("  {:28s} peak|dscore|={:.6f}  n_tested={:3d}  {}"
              .format(p, peak, len(vals), tag))

    update_ranges_csv(by_param)


RANGES_CSV = "outputs/param_sensitivity_ranges.csv"
# Peak |dscore| above this, found in ANOTHER block's experiments, is a real
# signal (comparable to the well-identified params from the main sweep,
# not noise) and overrides a "dead" status. Below it (as with most of the
# b2AR set) is left as "dead" -- it's ~1000x smaller than a real signal.
ALIVE_ELSEWHERE_THRESH = 0.01


def update_ranges_csv(by_param):
    if not os.path.exists(RANGES_CSV):
        print("\n{} not found, skipping update".format(RANGES_CSV))
        return
    with open(RANGES_CSV) as f:
        rows = list(csv.DictReader(f))
    fieldnames = list(rows[0].keys()) + [
        "crosscheck_tested", "crosscheck_peak_abs_dscore", "crosscheck_verdict"]

    changed = 0
    for row in rows:
        param = "{}.{}".format(row["leaf"], row["field"])
        if param not in PROBE_TARGETS:
            row["crosscheck_tested"] = ""
            row["crosscheck_peak_abs_dscore"] = ""
            row["crosscheck_verdict"] = ""
            continue
        vals = by_param.get(param, [])
        peak = max(vals) if vals else 0.0
        row["crosscheck_tested"] = "/".join(PROBE_TARGETS[param])
        row["crosscheck_peak_abs_dscore"] = round(peak, 6)
        if peak >= ALIVE_ELSEWHERE_THRESH:
            row["crosscheck_verdict"] = "alive_elsewhere"
            if row["status"] == "dead":
                row["status"] = "alive_elsewhere"
                changed += 1
        elif peak >= 1e-4:
            row["crosscheck_verdict"] = "marginal_elsewhere"
        else:
            row["crosscheck_verdict"] = "still_dead"

    with open(RANGES_CSV, "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=fieldnames)
        w.writeheader()
        w.writerows(rows)
    print("\nUpdated {} with crosscheck columns; {} params' status changed "
          "from dead -> alive_elsewhere".format(RANGES_CSV, changed))


if __name__ == "__main__":
    main()
