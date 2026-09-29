#!/usr/bin/env python3
import argparse
import gzip
import json
import shutil
import subprocess
import sys
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "scenarios"))
sys.path.insert(0, str(ROOT / "analysis"))
import gen_csc
import parse_run

CONTIKI = ROOT.parent / "contiki-ng-work" / "contiki-ng"
IMAGE = "contiker/contiki-ng"
RUNS = ROOT / "output" / "runs"


def run_one(cfg):
    rid = cfg["run_id"]
    d = RUNS / rid
    res_file = d / "result.json"
    if res_file.exists():
        return rid, "skip"
    d.mkdir(parents=True, exist_ok=True)
    csc, meta = gen_csc.build(cfg)
    (d / "sim.csc").write_text(csc)
    (d / "meta.json").write_text(json.dumps(meta, indent=1))
    cmd = ["docker", "run", "--rm", "--name", f"twinrpl-{rid}",
           "-v", f"{CONTIKI}:/home/user/contiki-ng",
           "-v", f"{ROOT}:/home/user/project",
           IMAGE, "bash", "-c",
           "cd /home/user/contiki-ng/tools/cooja && "
           f"java -jar build/libs/cooja-full.jar --no-gui "
           f"--logdir=/home/user/project/output/runs/{rid} "
           f"/home/user/project/output/runs/{rid}/sim.csc > /home/user/project/output/runs/{rid}/cooja.out 2>&1"]
    t0 = time.time()
    subprocess.run(cmd)
    wall = time.time() - t0
    log = d / "COOJA.testlog"
    if not log.exists():
        return rid, "fail"
    with open(log, "rb") as f:
        f.seek(max(0, log.stat().st_size - 400))
        tail = f.read().decode(errors="replace")
    end_marker = f"Test ended at simulation time: {cfg['duration_min'] * 60 * 1000000}"
    if "TEST OK" not in tail or end_marker not in tail:
        return rid, "fail"
    res = parse_run.parse(d)
    res["wall_s"] = round(wall, 1)
    with open(log, "rb") as src, gzip.open(str(log) + ".gz", "wb") as dst:
        shutil.copyfileobj(src, dst)
    log.unlink()
    (d / "cooja.out").unlink()
    res_file.write_text(json.dumps(res))
    return rid, "ok"


def sweep_temp_libs():
    now = time.time()
    for f in (ROOT / "build" / "variants").glob("*/build/cooja/mtype*.cooja"):
        try:
            if now - f.stat().st_mtime > 180:
                f.unlink()
        except FileNotFoundError:
            pass


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("plans", nargs="+")
    ap.add_argument("--workers", type=int, default=12)
    a = ap.parse_args()
    cfgs = {}
    for p in a.plans:
        for line in Path(p).read_text().splitlines():
            if line.strip():
                c = json.loads(line)
                cfgs.setdefault(c["run_id"], c)
    cfgs = list(cfgs.values())
    todo = [c for c in cfgs if not (RUNS / c["run_id"] / "result.json").exists()]
    print(f"{len(cfgs)} runs in plan, {len(todo)} to do", flush=True)
    done = 0
    t0 = time.time()
    with ThreadPoolExecutor(max_workers=a.workers) as ex:
        futs = {ex.submit(run_one, c): c for c in todo}
        for fut in as_completed(futs):
            rid, status = fut.result()
            done += 1
            if done % 5 == 0:
                sweep_temp_libs()
            rate = (time.time() - t0) / done
            print(f"[{done}/{len(todo)}] {status} {rid} eta {rate * (len(todo) - done) / 60:.1f} min",
                  flush=True)
    sweep_temp_libs()


if __name__ == "__main__":
    main()
