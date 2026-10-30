#!/usr/bin/env python3
import glob
import gzip
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "output" / "calibration"
START_S = 120
PERIOD_S = 1800
DAO_TX = 2


def windows(duration_s):
    t = START_S
    while t < duration_s:
        yield t, min(t + PERIOD_S, duration_s)
        t += PERIOD_S


def at(series, t):
    v = 0
    for ts, x in series:
        if ts > t:
            break
        v = x
    return v


def main():
    counts = {"static": [], "mobile": []}
    runs = 0
    for f in sorted(
        glob.glob(str(ROOT / "output/runs/m0_k0_i3_mob*_d0_s*/COOJA.testlog.gz"))
    ):
        d = Path(f).parent
        meta = json.loads((d / "meta.json").read_text())
        mob_ids = set(meta["mobile_ids"])
        duration_s = meta["duration_min"] * 60
        series = {}
        with gzip.open(f, "rt", errors="replace") as fh:
            for line in fh:
                parts = line.split()
                if len(parts) < 4 or parts[2] != "#S":
                    continue
                try:
                    t = int(parts[0]) / 1e6
                    nid = int(parts[1])
                    v = int(parts[3 + DAO_TX])
                except ValueError:
                    continue
                series.setdefault(nid, []).append((t, v))
        runs += 1
        for nid, s in series.items():
            if nid == 1:
                continue
            for a, b in windows(duration_s):
                n = at(s, b) - at(s, a)
                counts["mobile" if nid in mob_ids else "static"].append(n)

    allc = counts["static"] + counts["mobile"]
    out = {
        "runs": runs,
        "start_s": START_S,
        "period_s": PERIOD_S,
        "rule": "beta = largest number of DAOs any node originated in one reset period "
        "in the attack-free runs, so no honest node in the calibration data exceeds it",
        "static": {
            "n": len(counts["static"]),
            "max": max(counts["static"]),
            "mean": sum(counts["static"]) / len(counts["static"]),
        },
        "mobile": {
            "n": len(counts["mobile"]),
            "max": max(counts["mobile"]),
            "mean": sum(counts["mobile"]) / len(counts["mobile"]),
        },
        "beta": max(allc),
    }
    OUT.mkdir(parents=True, exist_ok=True)
    (OUT / "limsd.json").write_text(json.dumps(out, indent=1))
    print(json.dumps(out, indent=1))


if __name__ == "__main__":
    main()
