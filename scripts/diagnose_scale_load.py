#!/usr/bin/env python3
"""Matched, single-seed screening of route formation and application load.

Not a performance benchmark: quiet runs have no delivery denominator.
No attack comparison is automatically released by this script.
"""

import gzip
import hashlib
import json
import subprocess
import sys
from collections import Counter, defaultdict
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

import run_matrix
from plan import cfg

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "output/diagnostics/scale_load_isolation"
PROFILES = {"quiet": (0, 60), "delayed60": (1, 60), "delayed300": (1, 300)}


def save(name, value):
    p = OUT / name
    temp = p.with_suffix(p.suffix + ".tmp")
    temp.write_text(json.dumps(value, indent=2, allow_nan=False))
    temp.replace(p)


def summarize(row):
    folder = OUT / "runs" / row["run_id"]
    reachable = defaultdict(dict)
    parents = Counter()
    sent, received, echoed = set(), set(), set()
    warnings = Counter()
    with gzip.open(folder / "COOJA.testlog.gz", "rt") as stream:
        for line in stream:
            p = line.split()
            if len(p) < 3:
                continue
            try:
                sec, node = int(p[0]) / 1e6, int(p[1])
            except ValueError:
                continue
            tag = p[2]
            if tag == "#N" and node != 1:
                reachable[int(sec // 60)][node] = int(p[3])
            elif tag == "#P" and node != 1:
                parents[int(sec // 60)] += 1
            elif tag == "#T":
                sent.add((node, int(p[3])))
            elif tag == "#R":
                received.add((int(p[3]), int(p[4])))
            elif tag == "#E":
                echoed.add((node, int(p[3])))
            for word in ["dropping", "local repair", "fragment"]:
                if word in line:
                    warnings[word] += 1
    good = sent & received
    return dict(
        run_id=row["run_id"],
        nodes=row["nodes"],
        profile=row["load_profile"],
        seed=row["seed"],
        duration_min=row["duration_min"],
        reachable_by_minute=[
            dict(
                minute=m,
                reports=len(v),
                reachable=sum(v.values()),
                fraction=sum(v.values()) / (row["nodes"] - 1),
            )
            for m, v in sorted(reachable.items())
        ],
        parent_changes_by_minute=dict(sorted(parents.items())),
        application_sent=len(sent),
        application_received=len(good),
        application_pdr=len(good) / len(sent) if sent else None,
        round_trip_completion=len(good & echoed) / len(sent) if sent else None,
        warning_counts=dict(warnings),
        interpretation="Single-seed diagnostic; quiet-run delivery is undefined.",
        raw_log_sha256=hashlib.sha256(
            (folder / "COOJA.testlog.gz").read_bytes()
        ).hexdigest(),
    )


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    engine = json.loads(
        (
            ROOT / "output/experiments/journal_extension/execution_engine.json"
        ).read_text()
    )
    variants, mappings = {}, {}
    for profile, (enabled, interval) in PROFILES.items():
        mappings[profile] = {}
        for key, role in [("root", 0), ("cli0", 1)]:
            name = f"v_loadiso_{profile}_{key}"
            variants[name] = (
                f"ROLE={role},DEFENSE=0,NODE_MOBILE=0,BIG_NET=1,"
                f"SEND_INTERVAL_SEC={interval},APP_TRAFFIC_ENABLED={enabled},APP_TRAFFIC_START_SEC=300,"
                "SCALE_DIAGNOSTICS=1,APP_RPL_DIS_INTERVAL_SEC=60,ROOT_ROUTES=1100,ROOT_QUEUEBUF=128,"
                "APP_CSMA_NEIGHBOR_QUEUES=16,APP_COMPRESS_EXT_HDR=0,APP_DAO_RTX_SEC=30,"
                "APP_DAO_MAX_RTX=10,RPL_CONF_LOOP_ERROR_DROP=1"
            )
            mappings[profile][key] = name
        mappings[profile]["cli1"] = mappings[profile]["cli0"]
    save("variants.json", variants)
    rows = []
    for nodes in (100, 250, 500, 1000):
        for profile, (enabled, interval) in PROFILES.items():
            r = cfg(
                0,
                0,
                3,
                0,
                0,
                1,
                duration=10,
                nodes=nodes,
                send_s=interval,
                rank_hops=20,
            )
            r.update(
                run_id=f"loadiso_{profile}_n{nodes}_s1_t10",
                experiment="scale_load_screening",
                load_profile=profile,
                application_traffic_enabled=bool(enabled),
                application_traffic_start_s=300,
                native_dis_interval_s=60,
                topology="random_connected",
                variant_overrides=mappings[profile],
            )
            rows.append(r)
    (OUT / "plan.jsonl").write_text("".join(json.dumps(r) + "\n" for r in rows))
    save("status.json", dict(state="building", completed=0, planned=len(rows)))
    subprocess.run(
        [
            sys.executable,
            str(ROOT / "scripts/build_variants.py"),
            "--extra-variants",
            str(OUT / "variants.json"),
            "--only",
            *variants,
            "--jobs",
            "3",
            "--docker-context",
            engine["docker_context"],
            "--docker-image",
            engine["docker_image"],
        ],
        check=True,
    )
    paths = [Path(__file__), ROOT / "firmware/node.c", ROOT / "firmware/project-conf.h"]
    paths += [ROOT / f"build/variants/{v}/build/cooja/{v}.cooja" for v in variants]
    save(
        "sha256.json",
        {
            str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest()
            for p in paths
        },
    )
    run_matrix.gen_csc.SCRIPT = run_matrix.gen_csc.SCRIPT.replace(
        'else if (msg.startsWith("#"))', "else"
    )
    done = 0
    save("status.json", dict(state="running", completed=done, planned=len(rows)))
    with ThreadPoolExecutor(max_workers=3) as pool:
        jobs = {
            pool.submit(
                run_matrix.run_one, r, OUT / "runs", heap="2g", timeout=7200, **engine
            ): r
            for r in rows
        }
        for future in as_completed(jobs):
            rid, state = future.result()
            if state not in ("ok", "skip"):
                raise RuntimeError(f"{rid}: {state}")
            row = jobs[future]
            save(rid + ".json", summarize(row))
            done += 1
            print(f"[{done}/{len(rows)}] {rid}: {state}", flush=True)
            save(
                "status.json", dict(state="running", completed=done, planned=len(rows))
            )
    save("summary.json", [summarize(r) for r in rows])
    save(
        "status.json",
        dict(
            state="complete",
            completed=done,
            planned=len(rows),
            attack_comparison_released=False,
            note="Screening only; choose follow-up after examining results.",
        ),
    )


if __name__ == "__main__":
    try:
        main()
    except Exception as error:
        OUT.mkdir(parents=True, exist_ok=True)
        save("status.json", dict(state="failed", error=str(error)))
        raise
