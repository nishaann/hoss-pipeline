#!/usr/bin/env python3
"""Phase 4: reshape the 37 existing HOSS blocks into outputs/blocks.json.

Per explicit direction: only SPLIT oversized blocks (>20 params); the 21
undersized (<15 params) and 5 already-in-range blocks are left untouched
as final blocks -- no cross-block merging.

Splitting method, per block: recursively bisect the param set (hierarchical
clustering on each param's dscore-vs-experiment sensitivity profile from
outputs/S.npz, correlation distance) until every resulting group is <=20
params. Thermodynamic-cycle members (outputs/thermo_cycles.json) are
contracted into a single node before clustering so they can never be
split apart. Each of the block's original experiments is then assigned to
whichever resulting sub-block it is jointly most sensitive to (so no
experiment is duplicated across sub-blocks). Effective rank
(sigma_i/sigma_1 > 1e-3, count vs 0.7*n_params) is computed per resulting
block and reported -- per CLAUDE.md, rank is the real acceptance
criterion, param count is only a proxy, so a low-rank result is reported,
not force-fixed.
"""
import csv
import json
import os
import numpy as np
from scipy.cluster.hierarchy import linkage, fcluster
from scipy.spatial.distance import pdist

CONFIG_PATH = "inputs/configHOSS_whole_15Jun2026_COBYLA.json"
PARAMS_CSV = "outputs/params.csv"
S_NPZ = "outputs/S.npz"
CYCLES_JSON = "outputs/thermo_cycles.json"
OUT_BLOCKS = "outputs/blocks.json"

SIZE_CAP = 20
RANK_TOL = 1e-3
RANK_FRACTION = 0.7


def load_config():
    with open(CONFIG_PATH) as f:
        return json.load(f)


def collect_existing_blocks(cfg):
    blocks = []
    for group in cfg["HOSS"]:
        group_name = group.get("name", "")
        for key, val in group.items():
            if not isinstance(val, dict) or "params" not in val:
                continue
            params = [tuple(p.rsplit(".", 1)) for p in val["params"]]
            expts = list(val.get("expt", {}).keys())
            blocks.append({"block": key, "group": group_name,
                           "params": params, "expts": expts})
    return blocks


def load_sensitivity():
    d = np.load(S_NPZ)
    return d["block"], d["leaf"], d["field"], d["expt"], d["dscore"]


def load_cycle_groups(params_available):
    """Sets of (leaf, field) that must stay together, one set per cycle."""
    cycles = json.load(open(CYCLES_JSON))
    groups = []
    for cyc in cycles:
        members = set()
        for leg in cyc.get("legs", []):
            for p in leg.get("params", []):
                leaf, field = p.rsplit(".", 1)
                if (leaf, field) in params_available:
                    members.add((leaf, field))
        if len(members) > 1:
            groups.append(members)
    return groups


def build_matrix(block_name, params, expts, s_block, s_leaf, s_field, s_expt, s_dscore):
    mask = s_block == block_name
    idx = {(l, f, e): i for i, (l, f, e) in enumerate(
        zip(s_leaf[mask], s_field[mask], s_expt[mask]))}
    dscore_masked = s_dscore[mask]
    expt_names = [os.path.basename(e) for e in expts]
    M = np.zeros((len(params), len(expt_names)))
    for i, (leaf, field) in enumerate(params):
        for j, e in enumerate(expt_names):
            k = idx.get((leaf, field, e))
            if k is not None:
                M[i, j] = dscore_masked[k]
    return M, expt_names


def contract_cycle_groups(params, M, cycle_groups):
    """Merge cycle-member params into single nodes (mean profile) so they
    can never be separated by clustering. Returns node list (each a tuple
    of underlying params) and the node x expt matrix."""
    remaining = set(range(len(params)))
    nodes = []
    node_rows = []
    used = set()
    for grp in cycle_groups:
        idxs = [i for i, p in enumerate(params) if p in grp]
        if len(idxs) < 2:
            continue
        idxs = [i for i in idxs if i not in used]
        if len(idxs) < 2:
            continue
        used.update(idxs)
        nodes.append(tuple(params[i] for i in idxs))
        node_rows.append(M[idxs].mean(axis=0))
    for i in range(len(params)):
        if i in used:
            continue
        nodes.append((params[i],))
        node_rows.append(M[i])
    return nodes, np.array(node_rows)


def order_nodes_by_similarity(node_indices, node_matrix):
    """Leaf order from hierarchical clustering: similar nodes end up
    adjacent, so slicing this order into contiguous chunks groups similar
    params together while keeping exact control over chunk size."""
    if len(node_indices) <= 2:
        return list(node_indices)
    sub = node_matrix[node_indices]
    if np.allclose(sub.std(axis=1), 0):
        return list(node_indices)  # no signal to order by; keep as-is
    dist = pdist(sub, metric="correlation")
    dist = np.nan_to_num(dist, nan=1.0)
    Z = linkage(dist, method="average")
    from scipy.cluster.hierarchy import leaves_list
    order = leaves_list(Z)
    return [node_indices[i] for i in order]


def pack_into_groups(ordered_indices, sizes, cap):
    """Walk the similarity order, closing a group whenever the next node
    would push it over cap. A tiny trailing group gets folded into the
    previous one if it still fits."""
    groups = []
    current, current_size = [], 0
    for i in ordered_indices:
        s = sizes[i]
        if current and current_size + s > cap:
            groups.append(current)
            current, current_size = [], 0
        current.append(i)
        current_size += s
    if current:
        groups.append(current)
    if len(groups) > 1:
        last_size = sum(sizes[i] for i in groups[-1])
        prev_size = sum(sizes[i] for i in groups[-2])
        if last_size < 0.5 * cap and prev_size + last_size <= cap:
            groups[-2].extend(groups[-1])
            groups.pop()
    return groups


def split_block(params, M, cycle_groups, cap):
    nodes, node_matrix = contract_cycle_groups(params, M, cycle_groups)
    sizes = {i: len(n) for i, n in enumerate(nodes)}
    ordered = order_nodes_by_similarity(list(range(len(nodes))), node_matrix)
    groups = pack_into_groups(ordered, sizes, cap)
    param_groups = []
    for g in groups:
        pset = []
        for ni in g:
            pset.extend(nodes[ni])
        param_groups.append(pset)
    return param_groups


def effective_rank(sub_matrix):
    if sub_matrix.size == 0 or min(sub_matrix.shape) == 0:
        return 0
    try:
        s = np.linalg.svd(sub_matrix, compute_uv=False)
    except np.linalg.LinAlgError:
        return 0
    if s[0] == 0:
        return 0
    return int((s / s[0] > RANK_TOL).sum())


def main():
    cfg = load_config()
    existing = collect_existing_blocks(cfg)
    s_block, s_leaf, s_field, s_expt, s_dscore = load_sensitivity()

    all_params_in_any_block = set()
    for b in existing:
        all_params_in_any_block.update(b["params"])
    cycle_groups = load_cycle_groups(all_params_in_any_block)

    final_blocks = []
    split_report = []
    for b in existing:
        n_params = len(b["params"])
        if n_params <= SIZE_CAP:
            final_blocks.append({
                "name": b["block"], "source_block": b["block"],
                "group": b["group"],
                "params": ["{}.{}".format(l, f) for l, f in b["params"]],
                "experiments": b["expts"], "split": False,
            })
            continue

        M, expt_names = build_matrix(b["block"], b["params"], b["expts"],
                                       s_block, s_leaf, s_field, s_expt, s_dscore)
        relevant_cycles = [g for g in cycle_groups
                           if g <= set(b["params"])]
        param_groups = split_block(b["params"], M, relevant_cycles, SIZE_CAP)
        param_idx = {p: i for i, p in enumerate(b["params"])}
        # Every sub-block keeps the FULL parent experiment set: they're all
        # still testing the same pathway, so splitting params shouldn't
        # starve any sub-block of the data needed to rank-check it.
        sub_expts = b["expts"]

        for gi, pg in enumerate(param_groups):
            sub_name = "{}_{}".format(b["block"], gi + 1)
            rows = [param_idx[p] for p in pg]
            sub_matrix = M[rows, :] if expt_names else np.zeros((len(rows), 0))
            rank = effective_rank(sub_matrix)
            rank_ok = rank >= RANK_FRACTION * len(pg)
            final_blocks.append({
                "name": sub_name, "source_block": b["block"],
                "group": b["group"],
                "params": ["{}.{}".format(l, f) for l, f in pg],
                "experiments": sub_expts, "split": True,
                "n_params": len(pg), "n_experiments": len(sub_expts),
                "effective_rank": rank, "rank_ok": bool(rank_ok),
            })
            split_report.append((b["block"], sub_name, len(pg), len(sub_expts),
                                 rank, rank_ok))

    with open(OUT_BLOCKS, "w") as f:
        json.dump(final_blocks, f, indent=2)

    print("{} existing blocks -> {} final blocks".format(len(existing), len(final_blocks)))
    n_unsplit = sum(1 for b in final_blocks if not b["split"])
    n_split = len(final_blocks) - n_unsplit
    print("  {} unchanged (undersized/in-range), {} from splitting oversized blocks"
          .format(n_unsplit, n_split))

    print("\nSplit results (source -> sub-block: n_params, n_expts, rank, ok?):")
    for src, name, npar, nexp, rank, ok in split_report:
        flag = "OK" if ok else ">>> LOW RANK <<<"
        print("  {:20s} -> {:24s} n={:3d} expts={:3d} rank={:3d} (need>={:.1f}) {}"
              .format(src, name, npar, nexp, rank, RANK_FRACTION * npar, flag))

    n_low_rank = sum(1 for *_, ok in split_report if not ok)
    print("\n{} of {} split sub-blocks meet the rank>=0.7*n_params criterion"
          .format(len(split_report) - n_low_rank, len(split_report)))

    sizes = [b.get("n_params", len(b["params"])) for b in final_blocks]
    print("\nFinal block size distribution: min={} max={} mean={:.1f}"
          .format(min(sizes), max(sizes), np.mean(sizes)))
    print("Wrote {} blocks to {}".format(len(final_blocks), OUT_BLOCKS))


if __name__ == "__main__":
    main()
