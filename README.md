# Detecting Coordinated DIS Flooding and DAO Manipulation Attacks in RPL-Based IoT Networks via Adaptive Evidence Fusion

Implementation, data and analysis for the AEF-RPL study (CSC 689, LAU). The base
paper is Prajisha C. and Vasudevan A.R., "Detection and mitigation of Multicast
DIS flooding attacks in RPL-based IoT networks," Ad Hoc Networks 179 (2025)
104002, which proposes DIS-FDM. AEF-RPL extends DIS-FDM with a self-calibrated
DAO-consistency evidence source, selective DAO repair, and an on-node tabular
Q-learning decision layer.

* Full paper: `manuscript_full.tex` / `manuscript_full.pdf` (IEEE two-column; 46 references, of which the 44 with a DOI were resolved against Crossref and the registered titles matched, see `docs/DOI_AUDIT.md`)
* Introduction and literature review course submission: `manuscript.tex` / `manuscript.pdf`
* Regenerate every result from the stored logs: [`docs/REGENERATE_FROM_LOGS.md`](docs/REGENERATE_FROM_LOGS.md)
* Proposal promises and where each is delivered: [`docs/PROPOSAL_CHECKLIST.md`](docs/PROPOSAL_CHECKLIST.md)
* What was built and why: `docs/WALKTHROUGH.md`
* Every source file, log line and data column: `docs/CODE_AND_DATA.md`
* Rerunning the simulations themselves (Docker and Cooja): `docs/REPRODUCE.md`
* Readable result tables: `output/results/summary.md`

## Study at a glance

* 2720 simulation runs stored with their raw logs. 2712 of them are 30-node networks (2710 of 60 simulated minutes with attack onset at 300 s, plus two 10-minute injection-trace runs) and 8 are attack-free 15-minute feasibility pilots at 500 and 1000 nodes:
  * 1960 runs in the main campaign (seeds 1 to 10), all 30 nodes;
  * 20 benign mobile runs on fresh seeds (11 to 20), all 30 nodes;
  * 740 runs in a second campaign on fresh seeds (21 to 45): attack rate, ablations, matched references, reception loss, CPU profiling and the two trace runs (732 runs at 30 nodes), plus the 8 scale pilots (seeds 1 and 2), which only served the scale gate and are not part of the reported comparison.
* Hypothesis decisions, using the decision rules fixed in the proposal (`output/hypotheses/evidence.json`):

| Hypothesis | Decision |
|---|---|
| H1 reproduction of DIS-FDM | Partly supported: overhead trends reproduced; delivery losses not (always-on MAC) |
| H2 combined attack worse than each single attack | Partly supported: damage is additive (DIS overhead plus DAO route loss) |
| H3 AEF-RPL has higher detection accuracy than DIS-FDM | Not supported: TPR and precision equal (0/6). For RQ3, downward PDR and ARI are higher in 6/6 conditions (Holm p = .012) |
| H4 learning vs fixed rule | Not supported for FPR; detection latency 20 to 73% lower in 6/6 conditions |
| H5 consistency (static, mobile, 500 and 1000 nodes) | Partly supported: service and latency gains hold in static and mobile networks, attack rates and reception loss at 30 nodes; 500 and 1000 nodes not tested |

## Regenerate everything from the logs (no simulation)

```bash
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt
make reproduce          # main campaign: checks 1960 log hashes, rebuilds 8 result files, compares byte for byte
make reproduce-paper    # everything: both campaigns, hypothesis tests, every paper table and figure
make theory             # numerical checks of the mathematical analysis
```

`make reproduce` ends with `ALL 8 OUTPUT FILES MATCH`. `make reproduce-paper`
ends with `COMPLETE` and writes `output/paper_reproduction/report.json`. Neither
runs Cooja or Docker. `make reproduce-paper` also writes one log per step and
`report.json` into `output/paper_reproduction/`; these are produced locally and
are not tracked. Details and expected outputs are in
[`docs/REGENERATE_FROM_LOGS.md`](docs/REGENERATE_FROM_LOGS.md).

## Research questions and where each one is answered

| Research question | Objective | Runs (plan file) | Main outputs |
|---|---|---|---|
| RQ1. To what extent is DIS-FDM's reported performance reproduced? | O1 | `output/plan/reproduction.jsonl`, `sensitivity.jsonl` | `output/results/reproduction_vs_paper.csv`, `output/hypotheses/h1_reproduction_checks.csv` |
| RQ2. How much more does the combined DIS + DAO attack degrade the network than either attack alone? | O2, O7 | `main.jsonl`, defense 0 | `output/results/stats_rq2_combined_vs_single.csv`, `output/hypotheses/ari_tests.csv` |
| RQ3. To what extent do DAO-consistency evidence and repair change detection and resilience? | O3, O4 | `main.jsonl`, `limsd.jsonl`, `learning_v2.jsonl` | `output/results/stats_rq3_rq4_proposed_vs_baselines.csv`, `output/results/resilience.csv` |
| RQ4. How does the Q-learning layer change false positives, latency and resilience? | O6 | `learning_v2.jsonl` (defense 7) against defense 4 (learning off); `learning_fp_extension.jsonl` | `output/results/stats_rq3_rq4_proposed_vs_baselines.csv`, `output/preliminary/learning_fp_extension_summary.csv` |
| RQ5. How consistent are the effects across seeds, attacker fractions, mobility, attack rates and reception loss? | O4, O5 | all plans; `output/experiments/journal_extension/` | `output/experiments/journal_extension/analysis/paired_comparisons.csv` |
| Mathematical checks before simulation | O6 | none | `output/theory/theory_check.json` |

## Folder map

| Folder / file | What it contains |
|---|---|
| `firmware/node.c` | One program for every node: border router, legitimate client, or attacker (chosen at compile time). Clients send every 10 s and the root echoes each packet. |
| `firmware/attack.c` | Attack model: multicast DIS flooding, DAO manipulation (false transit parent), or both from the same node. |
| `firmware/defense.c` | All defenses: Secure-RPL, RPL-MRC, DIS-FDM, Li-MSD, and AEF-RPL (DAO-consistency evidence, persistence, selective repair). |
| `firmware/rl.c` | AEF-RPL's Q-learning decision layer: 96-state table, safety rules, epsilon-greedy choice, Q8.8 update. |
| `firmware/dst.c` | Dempster's rule and the base paper's belief tables. |
| `patches/contiki-ng-hooks.patch` | The only change to Contiki-NG: message counters and three hooks (DIS input, DAO input, forwarding). |
| `scenarios/gen_csc.py` | Turns one experiment setting into a Cooja simulation file plus a ground-truth record. |
| `scripts/plan.py`, `scripts/build_variants.py`, `scripts/run_matrix.py` | Experiment matrix, firmware builds in the pinned Docker image, parallel resumable runs. |
| `analysis/parse_run.py` | Every metric for one run from its log. |
| `analysis/calibrate_tr.py`, `analysis/calibrate_limsd.py` | DIS-FDM parent-change thresholds and the Li-MSD threshold from attack-free runs. |
| `analysis/metrics.py` | Attack Resilience Index (ARI) and Downward Recovery Time (DRT). |
| `analysis/aggregate.py` | Summary tables, figures, Wilcoxon signed-rank tests with Holm correction. |
| `analysis/test_hypotheses.py` | Decides H1 to H5 with the proposal's decision rules and writes the paper's hypothesis and primary-test tables. |
| `analysis/false_isolation_reasons.py` | Which decision rule first isolated each honest node, read from the blacklist lines of the stored logs. |
| `analysis/check_theory.py` | Numerical checks of the delay, false-alarm and Q-value bounds. |
| `analysis/reproduce_from_logs.py`, `scripts/reproduce_paper_from_logs.py` | `make reproduce` and `make reproduce-paper`. |
| `full_paper/` | Paper sections, generated tables and figures, literature map. |
| `output/runs/` | One folder per main-campaign run: scenario, ground truth, raw log, parsed metrics. |
| `output/experiments/journal_extension/` | Second campaign: runs, analysis, figures. |
| `output/results/`, `output/hypotheses/`, `output/figures/` | Result tables, hypothesis evidence, figures. |
| `output/diagnostics/`, `output/preliminary/` | Engineering checks and the 500/1000-node feasibility pilots (not part of the reported comparison). |

### Firmware defense identifiers

The defense is selected at compile time with `DEFENSE=0..7`, the `DEF_*`
constants of `firmware/defense.h`. The two learning defenses are selected by
the macros `DEF_AEF_RL` (defense 6, the first learning version) and
`DEF_AEF_RL2` (defense 7, the final AEF-RPL evaluated in the paper). These are
the names the firmware was built with. They are kept unchanged, rather than
renamed to match the paper's terminology, because the provenance records of
the stored runs (`output/experiments/journal_extension/PROVENANCE.json` with
its `current_source_sha256` entries, the `source_snapshot/SHA256SUMS` of the
second campaign and the hashes of the built variants) are computed over the
firmware source, and a rename would break the link between the archived runs
and the code that produced them.

## Experimental conditions

| Factor | Levels |
|---|---|
| Network | 30 nodes (1 border router, 29 clients), 200 m x 200 m, unit-disk radio (50 m range, 100 m interference), connected placement, CSMA with always-on radio |
| Attack | none, DIS flooding, DAO manipulation, combined DIS + DAO from the same node |
| Malicious clients | 3, 7, 14 of 29 (10%, 25%, 50%); reproduction uses 2, 5, 10 attackers and DIS intervals of 3 to 30 s |
| Topology | static; 30% mobile (random waypoint, 0.5 to 2 m/s, 0 to 10 s pause) |
| Defense | 0 RPL (none), 1 Secure-RPL, 2 RPL-MRC, 3 DIS-FDM, 4 AEF-RPL with learning off, 5 Li-MSD, 7 AEF-RPL (final, evaluated in the paper). Defense 6 is an earlier learning version kept for traceability. |
| Seeds | 1 to 10 for every main-campaign cell; fresh seeds 11 to 45 for the later studies |
| Duration | 60 simulated minutes, attack onset at 300 s |

## Scope note

The proposal also planned 500- and 1000-node networks. Attack-free pilots at
those sizes did not form stable bidirectional routes in the simulated stack, so
the comparison was carried out at 30 nodes. The pilots and their diagnostics are
kept in `output/diagnostics/` and documented in `docs/SCALE_FAILURE_DIAGNOSIS.md`.
