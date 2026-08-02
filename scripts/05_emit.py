#!/usr/bin/env python3
"""Phase 5: emit outputs/hoss_config.json from outputs/blocks.json, and
validate it against HOSS's own hossSchema.json (the same jsonschema.validate
call hoss.py's loadConfig performs internally).

Top-level fields (FileType, Version, author, model, map, exptDir,
outputDir, scoreFunc, tolerance, timeout, algorithm, hossMethod) are
carried over unchanged from the source config. Each final block's
experiment weights are looked up from the source config's per-block expt
dict. For blocks that came from SPLITTING an oversized block:
  - TimeSeries/DoseResponse/BarChart experiments are shared across every
    sub-block of that split (they all still test the same pathway).
  - DirectParameter experiments follow the specific param they measure
    into whichever single sub-block contains it (per CLAUDE.md: "Assigned
    deterministically: follows the parameter it measures"), not duplicated.
"""
import json
import os

CONFIG_PATH = "inputs/configHOSS_whole_15Jun2026_COBYLA.json"
BLOCKS_JSON = "outputs/blocks.json"
EXPTS_DIR = "inputs/expts"
HOSS_SCHEMA = "/home/nisha/SynPlast/HOSS/hossSchema.json"
OUT_CONFIG = "outputs/hoss_config.json"

TOP_LEVEL_KEYS = ["FileType", "Version", "author", "model", "map", "exptDir",
                   "outputDir", "scoreFunc", "tolerance", "timeout",
                   "algorithm", "hossMethod", "comment"]


def load_source():
    with open(CONFIG_PATH) as f:
        return json.load(f)


def source_block_index(cfg):
    """block name -> (group name, hierarchyLevel, expt dict w/ weights)."""
    idx = {}
    group_levels = {}
    for group in cfg["HOSS"]:
        group_levels[group["name"]] = group["hierarchyLevel"]
        for key, val in group.items():
            if isinstance(val, dict) and "params" in val:
                idx[key] = {"group": group["name"], "expt": val.get("expt", {})}
    return idx, group_levels


def build_expt_index():
    files = []
    for root, _, names in os.walk(EXPTS_DIR):
        for n in names:
            if n.endswith(".json"):
                files.append(os.path.join(root, n))
    return {os.path.basename(f): f for f in files}


_direct_param_cache = {}


def direct_param_target(expt_name, expt_index):
    """(leaf, field) this DirectParameter experiment measures, or None."""
    if expt_name in _direct_param_cache:
        return _direct_param_cache[expt_name]
    path = expt_index.get(expt_name)
    result = None
    if path:
        try:
            with open(path) as f:
                d = json.load(f)
            if d.get("Experiment", {}).get("design", "").lower() == "directparameter":
                pd = d.get("Readouts", {}).get("paramdata", [])
                if pd:
                    entity = pd[0]["entity"]["name"]
                    field = pd[0]["field"]
                    result = (entity, field)
        except (json.JSONDecodeError, OSError, KeyError, IndexError):
            result = None
    _direct_param_cache[expt_name] = result
    return result


def build_block_expt_dict(block, src_expt, expt_index):
    """weight-carrying expt dict for one final block."""
    param_set = set(tuple(p.rsplit(".", 1)) for p in block["params"])
    out = {}
    for name, meta in src_expt.items():
        target = direct_param_target(name, expt_index)
        if target is not None:
            # DirectParameter: only include in the block that owns the
            # param it measures.
            if target in param_set:
                out[name] = meta
        else:
            # TimeSeries/DoseResponse/BarChart: shared across every
            # sub-block of a split (or the block's own list if unsplit).
            out[name] = meta
    return out


def main():
    cfg = load_source()
    src_idx, group_levels = source_block_index(cfg)
    expt_index = build_expt_index()
    blocks = json.load(open(BLOCKS_JSON))

    groups = {}
    empty_blocks = []
    for b in blocks:
        src = src_idx.get(b["source_block"], {"group": b.get("group", ""), "expt": {}})
        expt_dict = build_block_expt_dict(b, src["expt"], expt_index)
        if not expt_dict or not b["params"]:
            empty_blocks.append(b["name"])
            continue
        entry = {
            "expt": expt_dict,
            "params": b["params"],
            "resultFile": "{}_parms.json".format(b["name"]),
            "optModelFile": "{}_opt.g".format(b["name"]),
        }
        group_name = src["group"]
        groups.setdefault(group_name, {
            "name": group_name,
            "hierarchyLevel": group_levels.get(group_name, 0),
        })[b["name"]] = entry

    hoss_array = [groups[g] for g in sorted(groups, key=lambda g: group_levels.get(g, 0))]

    out = {k: cfg[k] for k in TOP_LEVEL_KEYS if k in cfg}
    out["HOSS"] = hoss_array

    with open(OUT_CONFIG, "w") as f:
        json.dump(out, f, indent=2)

    n_blocks = sum(len(g) - 2 for g in hoss_array)  # minus name/hierarchyLevel
    print("Wrote {} groups / {} blocks to {}".format(len(hoss_array), n_blocks, OUT_CONFIG))
    if empty_blocks:
        print("{} blocks dropped (no params or no experiments after routing): {}"
              .format(len(empty_blocks), empty_blocks))

    # Validate against HOSS's own schema.
    import jsonschema
    schema = json.load(open(HOSS_SCHEMA))
    try:
        jsonschema.validate(out, schema)
        print("\nValidated OK against {}".format(HOSS_SCHEMA))
    except jsonschema.exceptions.ValidationError as e:
        print("\nSCHEMA VALIDATION FAILED: {}".format(e.message))
        print("path:", list(e.absolute_path))
        raise


if __name__ == "__main__":
    main()
