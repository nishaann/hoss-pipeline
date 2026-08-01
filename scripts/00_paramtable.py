#!/usr/bin/env python3
"""Build outputs/params.csv: one row per (path, field) HOSS parameter.

Source of truth is inputs/configHOSS_whole_15Jun2026_COBYLA.json (the
"HOSS" block structure). Each param leaf name (e.g. "RhebGTP+mTOR") is
resolved to a real moose object path via the name map and model file the
config itself points to ("map"/"model" fields) -- never hardcoded here, so
this script tracks whichever model/map the config is pointed at.

inputs/params.csv (legacy flat leaf.field list) is cross-checked but not
treated as authoritative: entries it has that configHOSS doesn't reference
are reported, not merged in.
"""
import csv
import json
import os
import moose

CONFIG_PATH = "inputs/configHOSS_whole_15Jun2026_COBYLA.json"
LEGACY_PARAM_LIST = "inputs/params.csv"
MODEL_ROOT = "/model"
OUT_CSV = "outputs/params.csv"

FIELD_CLASS = {
    "Kf": "Reac", "Kb": "Reac", "Kd": "Reac", "tau": "Reac",
    "Km": "EnzBase", "kcat": "EnzBase",
}


def resolve_path(config_path, relative):
    return os.path.normpath(os.path.join(os.path.dirname(config_path), relative))


def load_config():
    with open(CONFIG_PATH) as f:
        return json.load(f)


def collect_param_rows(cfg):
    """One row per (leaf, field) listed under any HOSS sub-block's 'params'."""
    rows = []
    for group in cfg["HOSS"]:
        group_name = group.get("name", "")
        for key, val in group.items():
            if not isinstance(val, dict) or "params" not in val:
                continue
            for p in val["params"]:
                leaf, field = p.rsplit(".", 1)
                rows.append({"leaf": leaf, "field": field,
                             "group": group_name, "block": key})
    return rows


def load_name_map(cfg):
    with open(resolve_path(CONFIG_PATH, cfg["map"])) as f:
        raw = json.load(f)
    return {k: v for k, v in raw.items() if k not in ("FileType", "Version")}


def build_object_index(cfg):
    """name -> [full moose paths] for every Reac and EnzBase in the model."""
    model_path = resolve_path(CONFIG_PATH, cfg["model"])
    if moose.exists(MODEL_ROOT):
        moose.delete(MODEL_ROOT)
    moose.loadModel(model_path, MODEL_ROOT, "ee")

    index = {"Reac": {}, "EnzBase": {}}
    for cls in index:
        for obj in moose.wildcardFind("{}/##[ISA={}]".format(MODEL_ROOT, cls)):
            index[cls].setdefault(obj.name, []).append(obj.path)
    return index


def resolve(leaf, field, name_map, index):
    """Returns (paths, status). Never picks one on ambiguity -- returns all."""
    cls = FIELD_CLASS.get(field)
    if cls is None:
        return [], "unknown_field"
    names = name_map.get(leaf)
    if names is None:
        return [], "leaf_not_in_map"
    if len(names) > 1:
        return names, "ambiguous_map"
    paths = index[cls].get(names[0], [])
    if len(paths) == 0:
        return [], "not_found_in_model"
    if len(paths) > 1:
        return paths, "ambiguous_path"
    return paths, "resolved"


def load_legacy_params():
    if not os.path.exists(LEGACY_PARAM_LIST):
        return set()
    with open(LEGACY_PARAM_LIST) as f:
        return set(line.strip() for line in f if line.strip())


def main():
    cfg = load_config()
    rows = collect_param_rows(cfg)
    name_map = load_name_map(cfg)
    index = build_object_index(cfg)
    legacy = load_legacy_params()

    out_rows = []
    status_counts = {}
    not_found = []
    for r in rows:
        paths, status = resolve(r["leaf"], r["field"], name_map, index)
        status_counts[status] = status_counts.get(status, 0) + 1
        if status == "not_found_in_model":
            not_found.append(r)
        out_rows.append({
            "leaf": r["leaf"],
            "field": r["field"],
            "group": r["group"],
            "block": r["block"],
            "path": ";".join(paths),
            "status": status,
            "in_legacy_params_csv": "{}.{}".format(r["leaf"], r["field"]) in legacy,
        })

    os.makedirs(os.path.dirname(OUT_CSV), exist_ok=True)
    with open(OUT_CSV, "w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=[
            "leaf", "field", "group", "block", "path", "status",
            "in_legacy_params_csv",
        ])
        writer.writeheader()
        writer.writerows(out_rows)

    configured_keys = set("{}.{}".format(r["leaf"], r["field"]) for r in rows)
    legacy_only = sorted(legacy - configured_keys)

    print("Wrote {} param rows to {}".format(len(out_rows), OUT_CSV))
    print("\nResolution status:")
    for status, count in sorted(status_counts.items(), key=lambda x: -x[1]):
        print("  {:20s} {}".format(status, count))

    if not_found:
        print("\n{} params not found in the model (leaf.field [block]):"
              .format(len(not_found)))
        for r in not_found:
            print("  - {}.{} [{}]".format(r["leaf"], r["field"], r["block"]))

    print("\n{} legacy params.csv entries not referenced by any HOSS block "
          "(reported only, not written -- configHOSS is authoritative):"
          .format(len(legacy_only)))
    for p in legacy_only:
        print("  - {}".format(p))


if __name__ == "__main__":
    main()
