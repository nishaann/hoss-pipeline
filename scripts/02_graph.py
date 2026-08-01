#!/usr/bin/env python3
"""Build outputs/thermo_cycles.json and outputs/mask.npz.

Detects thermodynamically constrained cycles ("boxes"): ligand/G-protein
receptor-binding cycles where two binding orders reach the same ternary
complex, so detailed balance requires Keq(leg0)*Keq(leg1) == Keq(leg2)*Keq(leg3)
(the Wegscheider condition). Box topology is the same curated domain
knowledge as ~/Downloads/model_audit.py's BOXES (same 6 GPCR boxes), but
re-verified here against the live model's actual Kf/Kb rather than that
script's hardcoded values, and re-mapped to this model's actual reaction
object names (confirmed by inspecting sub/prd structure directly).
"""
import csv
import json
import os
import numpy as np
import moose

CONFIG_PATH = "inputs/configHOSS_whole_15Jun2026_COBYLA.json"
PARAMS_CSV = "outputs/params.csv"
MODEL_ROOT = "/model"
OUT_CYCLES = "outputs/thermo_cycles.json"
OUT_MASK = "outputs/mask.npz"
TOL = 1e-3  # relative tolerance for "balanced"

# name -> 4 legs, each (label, reaction_object_name).
# Order: leg0=ligand-first bind, leg1=then-G bind, leg2=G-first bind,
# leg3=then-ligand bind. path1 = Keq(leg0)*Keq(leg1) (ligand-then-G route),
# path2 = Keq(leg2)*Keq(leg3) (G-then-ligand route); both reach the same
# ternary complex so must agree.
BOXES = {
    "mGluR5/Glu/Gq": [
        ("Glu", "RecLigandBinding"),
        ("+Gq", "RecGlu_bind_Gq"),
        ("Gq", "Rec_bind_Gq"),
        ("+Glu", "RecGq_bind_Glu"),
    ],
    "mGluR5/DHPG/Gq": [
        ("DHPG", "DHPG_bind_mGluR"),
        ("+Gq", "DHPG_Rec_bind_Gq"),
        ("Gq", "Rec_bind_Gq"),
        ("+DHPG", "DHPG_bind_RecGq"),
    ],
    "RecpS870/Glu/Gq": [
        ("Glu", "RecpS870_bind_Glu"),
        ("+Gq", "RecpS870Glu_bind_Gq"),
        ("Gq", "RecpS870_bind_Gq"),
        ("+Glu", "RecpS870Gq_bind_Glu"),
    ],
    "RecpS870/DHPG/Gq": [
        ("DHPG", "DHPG_bind_RecpS870"),
        ("+Gq", "DHPG_RecpS870_bind_Gq"),
        ("Gq", "RecpS870_bind_Gq"),
        ("+DHPG", "DHPG_bind_RecpS870_Gq"),
    ],
    "b2AR/Iso/Gs": [
        ("Iso", "Iso_bind_b2AR"),
        ("+Gs", "IsoR_bind_GsGDP"),
        ("Gs", "R_bind_GsGDP"),
        ("+Iso", "Iso_bind_RGs"),
    ],
    "b2AR/Epi/Gs": [
        ("Epi", "Epi_bind_b2AR"),
        ("+Gs", "EpiR_bind_GsGDP"),
        ("Gs", "R_bind_GsGDP"),
        ("+Epi", "Epi_bind_RGs"),
    ],
}


def load_model_from_config():
    with open(CONFIG_PATH) as f:
        cfg = json.load(f)
    model_path = os.path.normpath(
        os.path.join(os.path.dirname(CONFIG_PATH), cfg["model"]))
    if moose.exists(MODEL_ROOT):
        moose.delete(MODEL_ROOT)
    moose.loadModel(model_path, MODEL_ROOT, "ee")


def index_reacs():
    idx = {}
    for r in moose.wildcardFind(MODEL_ROOT + "/##[ISA=Reac]"):
        idx.setdefault(r.name, []).append(r)
    return idx


def load_param_rows():
    with open(PARAMS_CSV) as f:
        return list(csv.DictReader(f))


def build_path_to_leaves(param_rows):
    path_to_leaves = {}
    for row in param_rows:
        for p in row["path"].split(";"):
            if p:
                path_to_leaves.setdefault(p, []).append(
                    "{}.{}".format(row["leaf"], row["field"]))
    return path_to_leaves


def analyze_box(name, legs, reac_idx, path_to_leaves):
    leg_info = []
    complete = True
    for label, rname in legs:
        matches = reac_idx.get(rname, [])
        if len(matches) != 1:
            status = "not_found" if not matches else "ambiguous"
            leg_info.append({"label": label, "reaction_name": rname,
                              "status": status})
            complete = False
            continue
        r = matches[0]
        leg_info.append({
            "label": label, "reaction_name": rname, "path": r.path,
            "Kf": r.Kf, "Kb": r.Kb,
            "params": path_to_leaves.get(r.path, []),
        })

    if not complete:
        return {"name": name, "legs": leg_info, "status": "incomplete"}

    keq = [leg["Kf"] / leg["Kb"] if leg["Kb"] else float("inf") for leg in leg_info]
    path1 = keq[0] * keq[1]
    path2 = keq[2] * keq[3]
    ratio = path1 / path2 if path2 else float("inf")
    return {
        "name": name,
        "legs": leg_info,
        "path1_ligand_then_G": path1,
        "path2_G_then_ligand": path2,
        "ratio": ratio,
        "balanced": abs(ratio - 1.0) < TOL,
    }


def build_mask(param_rows, cycles):
    all_params = ["{}.{}".format(r["leaf"], r["field"]) for r in param_rows]
    box_names = list(BOXES.keys())
    param_index = {p: i for i, p in enumerate(all_params)}
    mask = np.zeros((len(all_params), len(box_names)), dtype=bool)
    for j, cyc in enumerate(cycles):
        for leg in cyc["legs"]:
            for p in leg.get("params", []):
                if p in param_index:
                    mask[param_index[p], j] = True
    return all_params, box_names, mask


def main():
    load_model_from_config()
    reac_idx = index_reacs()
    param_rows = load_param_rows()
    path_to_leaves = build_path_to_leaves(param_rows)

    cycles = [analyze_box(name, legs, reac_idx, path_to_leaves)
              for name, legs in BOXES.items()]

    os.makedirs("outputs", exist_ok=True)
    with open(OUT_CYCLES, "w") as f:
        json.dump(cycles, f, indent=2)

    all_params, box_names, mask = build_mask(param_rows, cycles)
    np.savez(OUT_MASK, params=np.array(all_params), cycles=np.array(box_names),
              mask=mask)

    print("Wrote {} cycles to {}".format(len(cycles), OUT_CYCLES))
    for cyc in cycles:
        if cyc.get("status") == "incomplete":
            print("  {:20s} INCOMPLETE (missing/ambiguous reaction)"
                  .format(cyc["name"]))
        else:
            tag = "OK" if cyc["balanced"] else ">>> ASYMMETRIC <<<"
            n_params = sum(len(leg.get("params", [])) for leg in cyc["legs"])
            print("  {:20s} ratio={:.6f}  {}  ({} HOSS params among its legs)"
                  .format(cyc["name"], cyc["ratio"], tag, n_params))

    print("\nWrote params x cycles membership mask to {} "
          "({} params, {} cycles, {} nonzero entries)"
          .format(OUT_MASK, mask.shape[0], mask.shape[1], mask.sum()))


if __name__ == "__main__":
    main()
