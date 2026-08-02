#!/usr/bin/env python3
"""Apply manually-confirmed dead-param overrides to
outputs/param_sensitivity_ranges.csv.

These 16 params are PKA/PKC phosphorylation reactions on receptor
sub-states (Gq-bound "RG"/"GluRG"/"DHPGRG" forms and doubly-phosphorylated
"pS870G"/"LRpS870G"/"DHPGRpS870G" forms) confirmed dead by inspection,
regardless of what the automatic classification (06_sensitivity_report.py)
or the cross-block probe (07_crosscheck_dead_params.py) found -- three of
them (ePKA+RG.{Km,kcat}, ePKA+DHPGR.kcat) had been flagged
"alive_elsewhere" by the probe; that finding is overridden here.

Run this AFTER 06 and 07 (or any future re-run of either), since both
rewrite param_sensitivity_ranges.csv and would silently drop this
correction otherwise.
"""
import csv

RANGES_CSV = "outputs/param_sensitivity_ranges.csv"

MANUAL_DEAD = [
    "ePKA+GluRG.Km", "ePKA+GluRG.kcat", "ePKA+GluR.Km", "ePKA+GluR.kcat",
    "ePKA+RG.Km", "ePKA+RG.kcat", "ePKA+DHPGRG.Km", "ePKA+DHPGRG.kcat",
    "ePKA+DHPGR.Km", "ePKA+DHPGR.kcat", "ePKC+LRpS870G.Km", "ePKC+LRpS870G.kcat",
    "ePKC+DHPGRpS870G.Km", "ePKC+DHPGRpS870G.kcat", "ePKC+mGluR.Km", "ePKC+mGluR.kcat",
]


def main():
    with open(RANGES_CSV) as f:
        rows = list(csv.DictReader(f))
    fieldnames = list(rows[0].keys())
    if "manual_override" not in fieldnames:
        fieldnames.append("manual_override")

    targets = set(MANUAL_DEAD)
    found = set()
    changed = 0
    for row in rows:
        param = "{}.{}".format(row["leaf"], row["field"])
        if param not in targets:
            row.setdefault("manual_override", "")
            continue
        found.add(param)
        if row["status"] != "dead":
            changed += 1
        row["status"] = "dead"
        row["manual_override"] = "confirmed_dead"

    missing = targets - found
    if missing:
        print("WARNING: {} params not found in {}: {}".format(
            len(missing), RANGES_CSV, sorted(missing)))

    with open(RANGES_CSV, "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=fieldnames)
        w.writeheader()
        w.writerows(rows)

    print("Applied manual dead override to {} params ({} status changed) in {}"
          .format(len(found), changed, RANGES_CSV))


if __name__ == "__main__":
    main()
