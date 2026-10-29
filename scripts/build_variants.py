#!/usr/bin/env python3
import argparse
import json
import os
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CONTIKI = ROOT.parent / "contiki-ng-work" / "contiki-ng"
IMAGE = "contiker/contiki-ng"
COOJA_VERSION = "2023090701"
SCALE_NODES = (500, 1000)
SCALE_SEND = 60
ROOT_ROUTES = 1100
ROOT_QUEUEBUF = 128
SOURCES = ["node.c", "defense.c", "defense.h", "dst.c", "dst.h", "rl.c", "rl.h",
           "attack.c", "attack.h", "project-conf.h", "Makefile"]


def all_variants(tr_static, tr_mobile, beta):
    v = {}
    for d in range(8):
        extra = f",LIMSD_BETA={beta}" if d == 5 else ""
        v[f"v_root_d{d}"] = f"ROLE=0,DEFENSE={d}{extra}"
        for m in (0, 1):
            defs = f"ROLE=1,DEFENSE={d},NODE_MOBILE={m}{extra}"
            if d in (3, 4, 6, 7):
                defs += f",TR_STATIC_MS={tr_static},TR_MOBILE_MS={tr_mobile}"
            v[f"v_cli_d{d}_m{m}"] = defs
    for a in (1, 2, 3):
        v[f"v_atk_a{a}_i3"] = f"ROLE=2,ATTACK_MODE={a},ATTACK_DIS_INTERVAL=3"
    for i in (6, 10, 15, 30):
        v[f"v_atk_a1_i{i}"] = f"ROLE=2,ATTACK_MODE=1,ATTACK_DIS_INTERVAL={i}"
    for n in SCALE_NODES:
        v[f"v_atk_a3_i3_n{n}_p{SCALE_SEND}"] = (f"ROLE=2,ATTACK_MODE=3,ATTACK_DIS_INTERVAL=3,NUM_NODES={n},"
                                                f"SEND_INTERVAL_SEC={SCALE_SEND},BIG_NET=1")
    for d in range(8):
        extra = f",LIMSD_BETA={beta}" if d == 5 else ""
        for m in (0, 1):
            defs = f"ROLE=1,DEFENSE={d},NODE_MOBILE={m}{extra},SEND_INTERVAL_SEC={SCALE_SEND},BIG_NET=1"
            if d in (3, 4, 6, 7):
                defs += f",TR_STATIC_MS={tr_static},TR_MOBILE_MS={tr_mobile}"
            v[f"v_cli_d{d}_m{m}_p{SCALE_SEND}"] = defs
    for d in range(8):
        extra = f",LIMSD_BETA={beta}" if d == 5 else ""
        v[f"v_root_d{d}_big"] = f"ROLE=0,DEFENSE={d}{extra},ROOT_ROUTES={ROOT_ROUTES},ROOT_QUEUEBUF={ROOT_QUEUEBUF},BIG_NET=1"
    v["v_root_d3_w30"] = "ROLE=0,DEFENSE=3,DEF_WINDOW_SEC=30"
    for m in (0, 1):
        v[f"v_cli_d3_m{m}_w30"] = (f"ROLE=1,DEFENSE=3,NODE_MOBILE={m},DEF_WINDOW_SEC=30,"
                                   f"TR_STATIC_MS={tr_static},TR_MOBILE_MS={tr_mobile}")
    return v


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--tr", default=str(ROOT / "output" / "calibration" / "tr.json"))
    ap.add_argument("--limsd", default=str(ROOT / "output" / "calibration" / "limsd.json"))
    ap.add_argument("--only", nargs="*")
    ap.add_argument("--jobs", type=int, default=8)
    ap.add_argument("--mac", default="csma", choices=["csma", "tsch"])
    ap.add_argument("--extra-variants", type=Path,
                    help="JSON object mapping additional variant names to build definitions")
    ap.add_argument("--docker-context")
    ap.add_argument("--docker-image", default=IMAGE)
    a = ap.parse_args()

    tr_static = tr_mobile = 0
    if os.path.exists(a.tr):
        tr = json.loads(Path(a.tr).read_text())
        tr_static, tr_mobile = int(tr["tr_static_ms"]), int(tr["tr_mobile_ms"])

    beta = 10
    if os.path.exists(a.limsd):
        beta = int(json.loads(Path(a.limsd).read_text())["beta"])

    variants = all_variants(tr_static, tr_mobile, beta)
    if a.extra_variants:
        variants.update(json.loads(a.extra_variants.read_text()))
    if a.only:
        variants = {k: v for k, v in variants.items() if k in a.only}

    lines = []
    for name, defs in variants.items():
        d = ROOT / "build" / "variants" / name
        d.mkdir(parents=True, exist_ok=True)
        for f in SOURCES:
            link = d / f
            if link.is_symlink() or link.exists():
                link.unlink()
            link.symlink_to(Path("../../../firmware") / f)
        lines.append(f"cd /home/user/project/build/variants/{name} && rm -rf build && "
                     f"make -j2 node.cooja TARGET=cooja MAC={a.mac} COOJA_VERSION={COOJA_VERSION} "
                     f"DEFINES={defs} LIBNAME=build/cooja/{name}.cooja > build.log 2>&1 "
                     f"&& echo OK {name} || echo FAIL {name}")
    jobfile = ROOT / "build" / "jobs.txt"
    jobfile.write_text("\n".join(lines) + "\n")

    cmd = ["docker"] + (["--context", a.docker_context] if a.docker_context else [])
    cmd += ["run", "--rm",
           "-v", f"{CONTIKI}:/home/user/contiki-ng",
           "-v", f"{ROOT}:/home/user/project",
           a.docker_image, "bash", "-c",
           f"xargs -P {a.jobs} -I CMD bash -c CMD < /home/user/project/build/jobs.txt"]
    res = subprocess.run(cmd, capture_output=True, text=True)
    print(res.stdout.strip())
    if "FAIL" in res.stdout or res.returncode != 0:
        print(res.stderr[-2000:])
        raise SystemExit(1)
    record = ROOT / "build" / "variants.json"
    built = json.loads(record.read_text())["variants"] if record.exists() else {}
    built.update(variants)
    info = {"mac": a.mac, "tr_static_ms": tr_static, "tr_mobile_ms": tr_mobile, "limsd_beta": beta,
            "variants": built}
    record.write_text(json.dumps(info, indent=1))


if __name__ == "__main__":
    main()
