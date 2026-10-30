#!/usr/bin/env python3
"""Plan host callback cost, radio-loss robustness, and scale diagnostics."""

import json
from pathlib import Path
from plan import cfg

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "output/experiments/journal_extension"
tr = json.loads((ROOT / "output/calibration/tr.json").read_text())
variants = {}
profile = []
radio = []
scale = []
for defense in (1, 3, 7):
    mapping = {}
    for key, role, mob in [("root", 0, 0), ("cli0", 1, 0), ("cli1", 1, 1)]:
        name = f"v_jprof_d{defense}_{key}"
        variants[name] = (
            f"ROLE={role},DEFENSE={defense},NODE_MOBILE={mob},HOST_PROFILE=1,"
            f'TR_STATIC_MS={tr["tr_static_ms"]},TR_MOBILE_MS={tr["tr_mobile_ms"]}'
        )
        mapping[key] = name
    for mode in (0, 3):
        for mob in (0.0, 0.3):
            for seed in range(41, 46):
                r = cfg(mode, 7 if mode else 0, 3, mob, defense, seed)
                r["run_id"] = "jprof_" + r["run_id"]
                r.update(
                    experiment="host_callback_cost",
                    dao_interval=2,
                    variant_overrides=dict(mapping, atk="v_journal_atk_dis3_dao2"),
                )
                profile.append(r)
for ratio in (1.0, 0.95, 0.8):
    for mode in (0, 3):
        for mob in (0.0, 0.3):
            for seed in range(41, 46):
                for defense in (3, 7):
                    r = cfg(mode, 7 if mode else 0, 3, mob, defense, seed)
                    r["run_id"] = f"jradio_rx{int(ratio*100)}_" + r["run_id"]
                    r.update(
                        experiment="radio_loss",
                        rx_ratio=ratio,
                        dao_interval=2,
                        variant_overrides={"atk": "v_journal_atk_dis3_dao2"},
                    )
                    radio.append(r)
# Diagnostics vary only the native DIS solicitation period on the same layouts.
# No attack and no defense: first establish that routing can support the topology.
for interval in (10, 60):
    mapping = {}
    for key, role in [("root", 0), ("cli0", 1), ("cli1", 1)]:
        name = f"v_jscale_dis{interval}_{key}"
        variants[name] = (
            f"ROLE={role},DEFENSE=0,SEND_INTERVAL_SEC=60,BIG_NET=1,SCALE_DIAGNOSTICS=1,"
            f"APP_RPL_DIS_INTERVAL_SEC={interval},ROOT_ROUTES=1100,ROOT_QUEUEBUF=128"
        )
        mapping[key] = name
    for nodes in (500, 1000):
        for seed in (1, 2):
            r = cfg(
                0, 0, 3, 0.0, 0, seed, duration=15, nodes=nodes, send_s=60, rank_hops=20
            )
            r["run_id"] = f"jscale_dis{interval}_" + r["run_id"]
            r.update(
                experiment="scale_feasibility",
                native_dis_interval_s=interval,
                variant_overrides=mapping,
            )
            scale.append(r)
(OUT / "operational_variants.json").write_text(json.dumps(variants, indent=2))
for name, rows in [
    ("profiling", profile),
    ("robservation", radio),
    ("scale_diagnostics", scale),
]:
    (OUT / f"{name}.jsonl").write_text("".join(json.dumps(x) + "\n" for x in rows))
    print(name, len(rows))
