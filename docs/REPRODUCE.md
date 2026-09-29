# How to reproduce every result

This guide rebuilds the whole study from nothing and produces the same numbers,
because every source of randomness is fixed: the Docker image is pinned by its
ID, Contiki-NG is pinned to one commit, the Cooja random seed is written into
each simulation file, and node placement, attacker choice and mobility paths are
generated from the same seed.

## 1. What you need

* Linux with Docker (tested with Docker 28.5, Docker Desktop engine)
* Python 3.12
* About 25 GB free disk space (the Docker image is 5.8 GB)
* A multi-core machine. The full matrix takes about 10 to 12 hours on a
  16-thread laptop with 12 parallel simulations.

## 2. Pinned versions

| Item | Value |
|---|---|
| Docker image | `contiker/contiki-ng`, image ID `sha256:b14d5afb0a2a852d9e72bbed607ead03f6ccc5f4d4dee44f0799110be2f4b609` |
| Contiki-NG commit | `385d72a76` |
| Cooja commit (submodule) | `fabff3ee` |
| Cooja build version | `2023090701` |
| Java inside the image | 25.0.3 |
| Python packages | see `requirements.txt` |

## 3. Folder layout expected by the scripts

The scripts expect this layout, with the two folders side by side:

```
Research_Methodology/
  contiki-ng-work/contiki-ng/     Contiki-NG clone (with the patch applied)
  twin-attack-rpl/                this project
```

## 4. Step by step

### 4.1 Get the image

```bash
docker pull contiker/contiki-ng
docker image inspect contiker/contiki-ng --format '{{.Id}}'
```

The ID must match the one in section 2. If Docker Hub has moved the `latest`
tag, pull by digest instead.

### 4.2 Get Contiki-NG at the pinned commit and apply the patch

```bash
mkdir -p contiki-ng-work && cd contiki-ng-work
git clone https://github.com/contiki-ng/contiki-ng.git
cd contiki-ng
git checkout 385d72a76
git submodule update --init tools/cooja
git apply ../../twin-attack-rpl/patches/contiki-ng-hooks.patch
git diff --stat
```

`git diff --stat` must list exactly five files: `os/net/ipv6/uip6.c`,
`os/net/routing/rpl-lite/rpl-icmp6.c`, `os/net/routing/rpl-lite/rpl-icmp6.h`,
`os/net/routing/rpl-lite/rpl-timers.c` and `os/net/routing/rpl-lite/rpl-timers.h`
(60 added lines). The patch only adds message counters, three optional hooks
and one Trickle helper used by RPL-MRC. With the hooks left undefined,
Contiki-NG behaves exactly as upstream.

### 4.3 Build Cooja once

```bash
docker run --rm -v $PWD:/home/user/contiki-ng contiker/contiki-ng \
  bash -c 'cd /home/user/contiki-ng/tools/cooja && ./gradlew fullJar'
ls tools/cooja/build/libs/cooja-full.jar
```

### 4.4 Python environment

```bash
cd ../../twin-attack-rpl
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt
```

### 4.5 Generate the experiment plans

```bash
python3 scripts/plan.py
```

This writes `output/plan/calibration.jsonl` (20 runs),
`output/plan/reproduction.jsonl` (320 runs) and `output/plan/main.jsonl`
(1000 runs). Runs shared between plans have the same ID and are only executed
once, so the real total is about 1160 simulations.

### 4.6 Calibration phase

```bash
python3 scripts/build_variants.py --mac csma
python3 scripts/run_matrix.py output/plan/calibration.jsonl --workers 12
.venv/bin/python analysis/calibrate_tr.py
```

The last command writes `output/calibration/tr.json` with the parent-change
thresholds for static and mobile nodes.

### 4.7 Rebuild with the calibrated thresholds

```bash
python3 scripts/build_variants.py --mac csma
```

The build script reads `output/calibration/tr.json` automatically and compiles
the thresholds into the DIS-FDM and proposed-defense firmware.

### 4.8 Run everything

```bash
python3 scripts/run_matrix.py output/plan/reproduction.jsonl output/plan/main.jsonl --workers 12
```

The runner skips any run that already has `output/runs/<run>/result.json`, so
it can be stopped and restarted at any time. Lower `--workers` on a smaller
machine.

### 4.9 Analysis, tables and figures

```bash
.venv/bin/python analysis/aggregate.py
```

## 5. Where the outputs go

| Path | Content |
|---|---|
| `output/runs/<run>/` | `sim.csc` (exact Cooja input), `meta.json` (ground truth: attackers, mobile nodes, positions), `COOJA.testlog.gz` (raw log), `result.json` (parsed metrics) |
| `output/calibration/tr.json` | calibrated thresholds |
| `output/results/all_runs.csv` | one row per simulation |
| `output/results/summary_by_condition.csv` | mean and 95% CI per condition |
| `output/results/stats_*.csv` | Wilcoxon signed-rank tests with Holm correction |
| `output/results/reproduction_vs_paper.csv` | our values next to the paper's published values |
| `output/results/summary.md` | readable summary tables |
| `output/figures/*.png` | all figures |

## 6. Checking that you got the same results

Every run is deterministic. To check one run, delete its folder and run it again:

```bash
rm -rf output/runs/m3_k5_i3_mob0_d4_s1
python3 scripts/run_matrix.py output/plan/main.jsonl --workers 1
```

Then compare the new `result.json` with the published one. They must be
identical apart from the `wall_s` field (wall-clock time).
