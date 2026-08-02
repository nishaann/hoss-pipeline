#!/usr/bin/env python3
"""Two analysis artifacts derived from outputs/S.npz + outputs/blocks.json:

outputs/correlated_param_pairs.csv
    Every pair of params in the same final block whose sensitivity
    profiles (dscore across that block's experiments) correlate above
    CORR_THRESH in either direction. High +corr = the two params move
    every experiment's score the same way (indistinguishable, freeze one).
    High -corr (e.g. Km/kcat pairs) = they move scores in opposite,
    compensating directions (only their combination is constrained).

outputs/param_sensitivity_ranges.csv
    Per-param sensitivity range (min/max/mean dscore across its own
    block's experiments) plus a dead/sloppy/well-identified tag, so
    consistently near-zero (dead) params can be given wider optimizer
    bounds without risking the fit.
"""
import csv
import json
import numpy as np

BLOCKS_JSON = "outputs/blocks.json"
S_NPZ = "outputs/S.npz"
OUT_PAIRS = "outputs/correlated_param_pairs.csv"
OUT_RANGES = "outputs/param_sensitivity_ranges.csv"

DEAD_THRESH = 1e-4
CORR_THRESH = 0.9


def get_matrix(b, s_block, s_leaf, s_field, s_expt, s_dscore):
    src = b["source_block"]
    params = [tuple(p.rsplit(".", 1)) for p in b["params"]]
    expt_names = [e.split("/")[-1] for e in b["experiments"]]
    mask = s_block == src
    idx = {(l, f, e): i for i, (l, f, e) in enumerate(
        zip(s_leaf[mask], s_field[mask], s_expt[mask]))}
    dsc = s_dscore[mask]
    M = np.zeros((len(params), len(expt_names)))
    for i, (leaf, field) in enumerate(params):
        for j, e in enumerate(expt_names):
            k = idx.get((leaf, field, e))
            if k is not None:
                M[i, j] = dsc[k]
    return params, expt_names, M


def main():
    blocks = json.load(open(BLOCKS_JSON))
    d = np.load(S_NPZ)
    s_block, s_leaf, s_field = d["block"], d["leaf"], d["field"]
    s_expt, s_dscore = d["expt"], d["dscore"]

    pair_rows = []
    range_rows = []

    for b in blocks:
        params, expts, M = get_matrix(b, s_block, s_leaf, s_field, s_expt, s_dscore)
        n_expts = len(expts)
        row_max = np.abs(M).max(axis=1) if n_expts else np.zeros(len(params))
        is_dead = row_max < DEAD_THRESH

        for i, (leaf, field) in enumerate(params):
            row = M[i]
            if n_expts:
                min_d, max_d = float(row.min()), float(row.max())
                mean_abs = float(np.abs(row).mean())
                max_abs = float(row_max[i])
            else:
                min_d = max_d = mean_abs = max_abs = 0.0
            status = "dead"
            if not is_dead[i]:
                status = "well_identified"  # provisional; may downgrade below
            range_rows.append({
                "block": b["name"], "leaf": leaf, "field": field,
                "n_experiments": n_expts,
                "min_dscore": round(min_d, 6), "max_dscore": round(max_d, 6),
                "mean_abs_dscore": round(mean_abs, 6),
                "max_abs_dscore": round(max_abs, 6),
                "status": status,
            })

        # correlated pairs + status downgrade to "sloppy" for anything
        # that clears CORR_THRESH with some other live param
        sloppy_idx = set()
        for i in range(len(params)):
            if is_dead[i]:
                continue
            for j in range(i + 1, len(params)):
                if is_dead[j]:
                    continue
                vi, vj = M[i], M[j]
                if vi.std() == 0 or vj.std() == 0:
                    continue
                c = np.corrcoef(vi, vj)[0, 1]
                if np.isnan(c):
                    continue
                if abs(c) > CORR_THRESH:
                    sloppy_idx.add(i)
                    sloppy_idx.add(j)
                    pair_rows.append({
                        "block": b["name"],
                        "param1": "{}.{}".format(*params[i]),
                        "param2": "{}.{}".format(*params[j]),
                        "correlation": round(float(c), 4),
                        "direction": "positive (redundant)" if c > 0
                                     else "negative (compensating)",
                        "max_abs_dscore_1": round(float(row_max[i]), 6),
                        "max_abs_dscore_2": round(float(row_max[j]), 6),
                    })
        base = len(range_rows) - len(params)
        for k in sloppy_idx:
            range_rows[base + k]["status"] = "sloppy"

    pair_rows.sort(key=lambda r: -abs(r["correlation"]))
    range_rows.sort(key=lambda r: r["max_abs_dscore"])

    with open(OUT_PAIRS, "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=["block", "param1", "param2",
                            "correlation", "direction",
                            "max_abs_dscore_1", "max_abs_dscore_2"])
        w.writeheader()
        w.writerows(pair_rows)

    with open(OUT_RANGES, "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=["block", "leaf", "field",
                            "n_experiments", "min_dscore", "max_dscore",
                            "mean_abs_dscore", "max_abs_dscore", "status"])
        w.writeheader()
        w.writerows(range_rows)

    n_dead = sum(1 for r in range_rows if r["status"] == "dead")
    n_sloppy = sum(1 for r in range_rows if r["status"] == "sloppy")
    n_wellid = len(range_rows) - n_dead - n_sloppy
    print("Wrote {} correlated pairs (|corr|>{}) to {}".format(
        len(pair_rows), CORR_THRESH, OUT_PAIRS))
    print("Wrote {} param sensitivity ranges to {}".format(len(range_rows), OUT_RANGES))
    print("  dead={} sloppy={} well_identified={}".format(n_dead, n_sloppy, n_wellid))


if __name__ == "__main__":
    main()
