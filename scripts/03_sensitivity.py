#!/usr/bin/env python3
"""Phase 3: per-block sensitivity sweep -> outputs/S.npz.

For each existing HOSS sub-block (from configHOSS_whole_15Jun2026_COBYLA.json),
sweeps its own params against its own (non-DirectParameter) experiments
using FindSim's own scoring (findSim.innerMain, via the /home/nisha/SynPlast/
FindSim copy -- the one whose Readout parsing matches this repo's expt JSON
schema). Parallelized across processes (default 5, matching CLAUDE.md's
stated environment).

Resumable per CLAUDE.md's "cache simulation results" rule: every completed
(kind, block, expt, leaf, field) run is appended to outputs/S_raw.jsonl as
it finishes; a rerun skips anything already recorded there.

This produces the per-block ("diagonal") sensitivity data needed to SPLIT
oversized blocks. It does NOT cover cross-block terms needed to rank-check
MERGING undersized blocks -- that's a smaller follow-up sweep once phase 4
proposes specific merge candidates.
"""
import glob
import json
import os
import sys
import time
from multiprocessing import Pool

os.environ.setdefault("MPLBACKEND", "Agg")

FINDSIM_DIR = "/home/nisha/SynPlast/FindSim"
CONFIG_PATH = "inputs/configHOSS_whole_15Jun2026_COBYLA.json"
EXPTS_DIR = "inputs/expts"
PERTURB_RATIO = 1.1
N_WORKERS = 4

OUT_RAW = "outputs/S_raw.jsonl"
OUT_S = "outputs/S.npz"


def load_config():
    with open(CONFIG_PATH) as f:
        return json.load(f)


def model_and_map_paths(cfg):
    base = os.path.dirname(CONFIG_PATH)
    return (os.path.normpath(os.path.join(base, cfg["model"])),
            os.path.normpath(os.path.join(base, cfg["map"])))


def build_expt_index():
    files = glob.glob(os.path.join(EXPTS_DIR, "**/*.json"), recursive=True)
    return {os.path.basename(f): f for f in files}


def is_direct_param(path):
    try:
        with open(path) as f:
            d = json.load(f)
    except (json.JSONDecodeError, OSError):
        return True  # exclude unreadable files rather than choke the sweep
    return d.get("Experiment", {}).get("design", "").lower() == "directparameter"


def collect_blocks(cfg, expt_index):
    blocks = []
    for group in cfg["HOSS"]:
        for key, val in group.items():
            if not isinstance(val, dict) or "params" not in val:
                continue
            params = [tuple(p.rsplit(".", 1)) for p in val["params"]]
            expt_paths = []
            for name in val.get("expt", {}):
                path = expt_index.get(name)
                if path is None or is_direct_param(path):
                    continue
                expt_paths.append(path)
            blocks.append({"block": key, "params": params, "expts": expt_paths})
    return blocks


def build_tasks(blocks):
    tasks = []
    for b in blocks:
        for expt in b["expts"]:
            tasks.append({"kind": "baseline", "block": b["block"],
                          "expt": expt, "leaf": "", "field": ""})
            for leaf, field in b["params"]:
                tasks.append({"kind": "perturbed", "block": b["block"],
                              "expt": expt, "leaf": leaf, "field": field})
    return tasks


def task_key(t):
    return (t["kind"], t["block"], t["expt"], t["leaf"], t["field"])


def load_done(path):
    done = {}
    if not os.path.exists(path):
        return done
    with open(path) as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            try:
                r = json.loads(line)
            except json.JSONDecodeError:
                continue
            done[tuple(r["key"])] = r
    return done


_MODEL_FILE = None
_MAP_FILE = None
findSim = None


def _worker_init(model_file, map_file):
    global _MODEL_FILE, _MAP_FILE, findSim
    _MODEL_FILE = model_file
    _MAP_FILE = map_file
    os.environ.setdefault("MPLBACKEND", "Agg")
    sys.path.insert(0, FINDSIM_DIR)
    import findSim as _findSim
    findSim = _findSim


def _worker(task):
    scaleParam = []
    if task["kind"] == "perturbed":
        scaleParam = [task["leaf"], task["field"], str(PERTURB_RATIO)]
    t0 = time.time()
    try:
        score, _, _ = findSim.innerMain(
            task["expt"], modelFile=_MODEL_FILE, mapFile=_MAP_FILE,
            hidePlot=True, silent=True, scaleParam=scaleParam)
        err = None
    except Exception as e:
        score = None
        err = str(e)
    wall = time.time() - t0
    return {"key": list(task_key(task)), **task, "score": score,
            "error": err, "wall": wall}


def run_sweep(tasks, model_file, map_file):
    done = load_done(OUT_RAW)
    remaining = [t for t in tasks if task_key(t) not in done]
    print("{} total runs needed, {} already done, {} remaining"
          .format(len(tasks), len(done), len(remaining)))
    if not remaining:
        return

    t_start = time.time()
    n_completed = 0
    with open(OUT_RAW, "a") as out_f:
        with Pool(N_WORKERS, initializer=_worker_init,
                  initargs=(model_file, map_file)) as pool:
            for result in pool.imap_unordered(_worker, remaining, chunksize=1):
                out_f.write(json.dumps(result) + "\n")
                out_f.flush()
                n_completed += 1
                if result["error"]:
                    print("  FAILED {}: {}".format(result["key"], result["error"]))
                if n_completed % 100 == 0:
                    elapsed = time.time() - t_start
                    rate = n_completed / elapsed
                    eta = (len(remaining) - n_completed) / rate if rate else float("inf")
                    print("  {}/{} done ({:.2f}/s, ETA {:.0f}s)"
                          .format(n_completed, len(remaining), rate, eta))
    print("Sweep finished in {:.0f}s".format(time.time() - t_start))


def assemble_s_matrix():
    import numpy as np
    all_done = load_done(OUT_RAW)
    baselines = {}
    for r in all_done.values():
        if r["kind"] == "baseline":
            baselines[(r["block"], r["expt"])] = r["score"]

    rows = []
    for r in all_done.values():
        if r["kind"] != "perturbed":
            continue
        base = baselines.get((r["block"], r["expt"]))
        if base is None or r["score"] is None:
            continue
        rows.append((r["block"], r["leaf"], r["field"],
                     os.path.basename(r["expt"]), base, r["score"],
                     r["score"] - base))

    np.savez(
        OUT_S,
        block=np.array([r[0] for r in rows]),
        leaf=np.array([r[1] for r in rows]),
        field=np.array([r[2] for r in rows]),
        expt=np.array([r[3] for r in rows]),
        baseline=np.array([r[4] for r in rows], dtype=float),
        perturbed=np.array([r[5] for r in rows], dtype=float),
        dscore=np.array([r[6] for r in rows], dtype=float),
        perturb_ratio=PERTURB_RATIO,
    )
    print("Wrote {} sensitivity rows to {}".format(len(rows), OUT_S))
    n_failed = sum(1 for r in all_done.values() if r["error"])
    if n_failed:
        print("{} runs failed (see {} for details)".format(n_failed, OUT_RAW))


def main():
    cfg = load_config()
    model_file, map_file = model_and_map_paths(cfg)
    expt_index = build_expt_index()
    blocks = collect_blocks(cfg, expt_index)
    tasks = build_tasks(blocks)

    print("{} blocks, {} params total, {} experiment-refs total".format(
        len(blocks), sum(len(b["params"]) for b in blocks),
        sum(len(b["expts"]) for b in blocks)))

    run_sweep(tasks, model_file, map_file)
    assemble_s_matrix()


if __name__ == "__main__":
    main()
