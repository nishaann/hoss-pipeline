#!/usr/bin/env python3
"""Settle-time diagnostic: run the kinetic model to steady state and report
how long each pool takes to stop changing.
"""
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
import moose

MODEL_PATH = "inputs/dumpreac25_test_mod2_lowCa.g"
MODEL_ROOT = "/model"
RUNTIME = 40000.0
WINDOW = 100.0
THRESHOLD = 1e-4
PLOT_TICK = 18
OUT_NPZ = "outputs/settle_trace.npz"
OUT_PNG = "outputs/settle_trace.png"
N_SLOWEST = 20

# Pools excluded from the settle-time criteria: irreversible sinks with no
# consuming/salvage reaction (e.g. cAMP -> AMP via PDEs, nothing consumes
# AMP), so they accumulate ~linearly for the whole run and can never satisfy
# a relative-change threshold on any practical timescale.
EXCLUDE_FROM_SETTLING = ["AC_g/AMP"]


def is_excluded(path):
    clean = path.replace("[0]", "")
    return any(clean.endswith(suffix) for suffix in EXCLUDE_FROM_SETTLING)


def build_model():
    if moose.exists(MODEL_ROOT):
        moose.delete(MODEL_ROOT)
    moose.loadModel(MODEL_PATH, MODEL_ROOT, "ee")
    compt = moose.wildcardFind(MODEL_ROOT + "/##[ISA=ChemCompt]")[0]
    ksolve = moose.Ksolve(compt.path + "/ksolve")
    ksolve.method = "lsoda"
    stoich = moose.Stoich(compt.path + "/stoich")
    stoich.compartment = compt
    stoich.ksolve = ksolve
    stoich.reacSystemPath = compt.path + "/##"
    return compt


def wire_plots():
    pools = sorted(moose.wildcardFind(MODEL_ROOT + "/##[ISA=PoolBase]"),
                    key=lambda p: p.path)
    moose.Neutral(MODEL_ROOT + "/plots")
    tables = []
    for i, pool in enumerate(pools):
        tab = moose.Table2("{}/plots/{}_{}".format(MODEL_ROOT, i, pool.name))
        moose.connect(tab, "requestOut", pool, "getConc")
        tables.append(tab)
    moose.setClock(PLOT_TICK, WINDOW)
    return pools, tables


def collect(pools, tables):
    conc = np.array([tab.vector for tab in tables])
    n_samples = conc.shape[1]
    time = WINDOW * np.arange(n_samples)
    names = [p.path for p in pools]
    return names, time, conc


def settle_index(frac_row, threshold):
    """Earliest index after which frac_row stays below threshold for good.

    Returns (index, settled) where `settled` is False if the row is still
    above threshold at the final window.
    """
    violations = np.where(frac_row >= threshold)[0]
    if len(violations) == 0:
        return 0, True
    last = violations[-1]
    if last + 1 >= len(frac_row):
        return len(frac_row), False
    return last + 1, True


def analyze(names, time, conc):
    frac = np.abs(conc[:, 1:] - conc[:, :-1]) / np.maximum(conc[:, :-1], 1e-12)
    excluded = np.array([is_excluded(n) for n in names])

    n_pools = len(names)
    pool_idx = np.zeros(n_pools, dtype=int)
    pool_settled = np.zeros(n_pools, dtype=bool)
    for i in range(n_pools):
        idx, settled = settle_index(frac[i], THRESHOLD)
        pool_idx[i] = idx
        pool_settled[i] = settled
    clipped_idx = np.minimum(pool_idx, len(time) - 1)
    pool_settle_times = np.where(pool_settled, time[clipped_idx], RUNTIME)

    maxfrac = frac[~excluded].max(axis=0)
    global_idx, global_settled = settle_index(maxfrac, THRESHOLD)
    settle_time = time[min(global_idx, len(time) - 1)] if global_settled else RUNTIME

    return frac, pool_settle_times, pool_settled, settle_time, global_settled, excluded


def report(names, pool_settle_times, pool_settled, settle_time, global_settled,
           excluded):
    if excluded.any():
        print("Excluded from settle-time criteria (non-converging sink pools):")
        for n in np.array(names)[excluded]:
            print("  - {}".format(n))
        print()

    if global_settled:
        print("Overall settle time: {:.1f} s".format(settle_time))
    else:
        print("Overall settle time: {:.1f} s (system had not stayed below "
              "{:.0e} fractional change by end of run)".format(settle_time, THRESHOLD))

    eligible = np.where(~excluded)[0]
    order = eligible[np.argsort(-pool_settle_times[eligible])]
    top = order[:N_SLOWEST]
    print("\n{} slowest-settling pools:".format(N_SLOWEST))
    for rank, i in enumerate(top, 1):
        flag = "" if pool_settled[i] else "  (NEVER SETTLED)"
        print("{:2d}. {:65s} {:10.1f} s{}".format(
            rank, names[i], pool_settle_times[i], flag))
    return top


def save_trace(names, time, conc, settle_time, pool_settle_times, pool_settled,
                excluded):
    np.savez(
        OUT_NPZ,
        time=time,
        pool_names=np.array(names),
        conc=conc,
        settle_time=settle_time,
        pool_settle_times=pool_settle_times,
        pool_settled=pool_settled,
        pool_excluded=excluded,
    )


def plot_slowest(names, time, conc, top_idx):
    fig, ax = plt.subplots(figsize=(11, 6.5))
    colors = plt.get_cmap("tab20").colors
    for rank, i in enumerate(top_idx):
        label = names[i].replace(MODEL_ROOT + "/kinetics/", "")
        ax.plot(time, conc[i], lw=1.4, color=colors[rank % len(colors)],
                label=label)

    ax.set_yscale("log")
    ax.set_xlabel("Time (s)")
    ax.set_ylabel("Concentration (mM, log scale)")
    ax.set_title("{} slowest-settling pools".format(N_SLOWEST))
    ax.grid(True, alpha=0.25, linewidth=0.6)
    for spine in ("top", "right"):
        ax.spines[spine].set_visible(False)
    ax.legend(loc="center left", bbox_to_anchor=(1.02, 0.5), fontsize=8,
               frameon=False)
    fig.tight_layout()
    fig.savefig(OUT_PNG, dpi=150)
    plt.close(fig)


def main():
    build_model()
    pools, tables = wire_plots()
    moose.reinit()
    moose.start(RUNTIME)

    names, time, conc = collect(pools, tables)
    frac, pool_settle_times, pool_settled, settle_time, global_settled, excluded = \
        analyze(names, time, conc)
    top_idx = report(names, pool_settle_times, pool_settled, settle_time,
                      global_settled, excluded)

    save_trace(names, time, conc, settle_time, pool_settle_times, pool_settled,
               excluded)
    plot_slowest(names, time, conc, top_idx)
    print("\nSaved trajectory to {}".format(OUT_NPZ))
    print("Saved plot to {}".format(OUT_PNG))


if __name__ == "__main__":
    main()
