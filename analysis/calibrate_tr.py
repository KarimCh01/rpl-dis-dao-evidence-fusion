#!/usr/bin/env python3
import glob
import json
import math
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "output" / "calibration"
SETTLE_S = 120
ALPHA = 1.0


def main():
    static, mobile = [], []
    runs = 0
    for f in sorted(glob.glob(str(ROOT / "output/runs/m0_k0_i3_mob*_d0_s*/result.json"))):
        res = json.loads(Path(f).read_text())
        meta = json.loads((Path(f).parent / "meta.json").read_text())
        mob_ids = set(meta["mobile_ids"])
        runs += 1
        for nid, times in res["_psw"].items():
            nid = int(nid)
            if nid == 1:
                continue
            ts = [t for t in times if t >= SETTLE_S]
            gaps = [b - a for a, b in zip(ts, ts[1:])]
            (mobile if nid in mob_ids else static).extend(gaps)

    def stats(x):
        mu = sum(x) / len(x)
        sd = math.sqrt(sum((v - mu) ** 2 for v in x) / len(x))
        return mu, sd

    mu_s, sd_s = stats(static)
    mu_m, sd_m = stats(mobile)
    tr_s = mu_s - ALPHA * sd_s
    tr_m = mu_m - ALPHA * sd_m
    rule = "mu - alpha*sigma"
    if tr_s <= 0 or tr_m <= 0:
        rule = "mu - alpha*sigma was <= 0, so the threshold falls back to mu / 2"
        tr_s = tr_s if tr_s > 0 else mu_s / 2
        tr_m = tr_m if tr_m > 0 else mu_m / 2

    out = {"runs": runs, "settle_s": SETTLE_S, "alpha": ALPHA,
           "static": {"n_intervals": len(static), "mu_s": mu_s, "sigma_s": sd_s},
           "mobile": {"n_intervals": len(mobile), "mu_s": mu_m, "sigma_s": sd_m},
           "rule": rule,
           "tr_static_ms": int(round(tr_s * 1000)), "tr_mobile_ms": int(round(tr_m * 1000))}
    OUT.mkdir(parents=True, exist_ok=True)
    (OUT / "tr.json").write_text(json.dumps(out, indent=1))
    print(json.dumps(out, indent=1))


if __name__ == "__main__":
    main()
