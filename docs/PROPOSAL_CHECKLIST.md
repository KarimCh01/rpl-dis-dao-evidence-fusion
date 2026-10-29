# Proposal checklist: what was promised and where it is

Each item from the research proposal (submitted 2026-10-08) and from the
supervisor's feedback, with its status and the file or paper section that
shows it.

## Objectives

| Objective | Status | Evidence |
|---|---|---|
| O1 Reproduce DIS-FDM | Done; overhead trends reproduced, delivery losses not (always-on MAC) | Paper Sec. VII-A; `output/results/reproduction_vs_paper.csv`; `output/hypotheses/h1_reproduction_checks.csv` |
| O2 Combined DIS + DAO attack from the same node | Done | `firmware/attack.c`; paper Sec. IV-A, VII-B |
| O3 Self-calibrated DAO evidence and DIS thresholds | Done | `firmware/defense.c`; paper Sec. IV-B, IV-C |
| O4 Compare with DIS-FDM, Secure-RPL, RPL-MRC, Li-MSD; cost and robustness | Done at 30 nodes (attack rate, reception loss, CPU cost) | Paper Sec. VII-C to VII-F; `output/experiments/journal_extension/` |
| O5 Statistics over paired seeds, static and mobile | Done: 10 seeds, Wilcoxon, Holm, rank-biserial | `analysis/aggregate.py`; `output/results/stats_*.csv` |
| O6 On-node Q-learning, math before simulation | Done | `firmware/rl.c`; `analysis/check_theory.py` (`make theory`: ALL HOLD); paper Sec. IV-F, V |
| O7 Attack Resilience Index and recovery time | Done at 30 nodes | `analysis/metrics.py`; `output/results/resilience.csv`; paper Sec. V-E |

## Supervisor feedback (2026-10-09)

| Request | Status |
|---|---|
| Intelligence on each node, math first then simulation | Done (O6) |
| Our own metric | Done: ARI and DRT (O7) |
| Fourth gap about intelligence | Done: Gap 4, paper Sec. II-E |
| Analysis reproducible from logs with identical results | Done: `make reproduce` (ALL 8 OUTPUT FILES MATCH) and `make reproduce-paper` (COMPLETE); see `docs/SUPERVISOR_README.md` |
| Research questions that are not yes/no | Done: RQ1 to RQ5, paper Sec. I |
| 500 to 1000 nodes | Not done. Attack-free pilots at 500 and 1000 nodes did not form stable bidirectional routes in the simulated stack, so the comparison was carried out at 30 nodes. Pilots are in `output/diagnostics/`, analysis in `docs/SCALE_FAILURE_DIAGNOSIS.md`. Stated in paper Sec. IX. |

## Hypotheses (decided with the criteria fixed in the proposal)

| Hypothesis | Decision | Evidence |
|---|---|---|
| H1 | Partly supported | 4 of 8 effect directions |
| H2 | Partly supported | Downward PDR and ARI vs DIS 6/6; DIO vs DAO 5/6 |
| H3 | Supported for resilience; detection equal | Downward PDR 6/6, ARI 6/6, FPR higher 0/6 |
| H4 | Not supported for FPR | FPR lower 0/8; latency lower 6/6 |
| H5 | Supported for the service effect | 6/6 conditions; 10 of 12 rate and loss cells |

All counts are in `output/hypotheses/evidence.json`, written by `analysis/test_hypotheses.py`.
