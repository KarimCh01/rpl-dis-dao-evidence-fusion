# For the supervisor: regenerate every result from the stored logs

Every number, statistical test, table and figure in `manuscript_full.pdf` can be
rebuilt from the raw simulation logs stored in this folder. No simulator, Docker
or network connection is needed after the Python packages are installed.
What the proposal promised and where each item is delivered:
[`PROPOSAL_CHECKLIST.md`](PROPOSAL_CHECKLIST.md).

## 1. Setup (once)

From the `twin-attack-rpl/` folder, with Python 3.12:

```bash
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt
```

Copy the whole `twin-attack-rpl/` folder, including `output/`. The logs are in
`output/runs/*/COOJA.testlog.gz` (main campaign) and
`output/experiments/journal_extension/` (second campaign).

## 2. Check the main campaign (about 5 minutes)

```bash
make reproduce
```

This checks all 1960 raw logs against `output/MANIFEST.sha256`, reparses each
one into `output/repro/`, rebuilds the result tables, the Wilcoxon tests and the
Attack Resilience Index, and compares each rebuilt file byte for byte with the
published one in `output/results/`. Expected last line:

```
ALL 8 OUTPUT FILES MATCH
```

Changing a single byte of any log makes this check fail and names the log.

## 3. Regenerate the whole paper (about 15 minutes)

```bash
make reproduce-paper
```

This runs step 2, reparses the 740 logs of the second campaign and the 20 fresh
benign runs, decides hypotheses H1 to H5 (`analysis/test_hypotheses.py`), and
rebuilds every table and figure used by the paper in `full_paper/generated/`.
Expected last line:

```
COMPLETE: stored-log analysis and paper figures/tables regenerated. No simulations executed.
```

Each step's log is in `output/paper_reproduction/`, and `report.json` records
`"complete": true`. Then rebuild the PDF:

```bash
TEXINPUTS=tex: pdflatex manuscript_full.tex
TEXINPUTS=tex: pdflatex manuscript_full.tex
```

## 4. Check the mathematical analysis

```bash
make theory
```

Expected last line: `ALL HOLD`. It checks the detection-delay interval, the
false-alarm bound, the learned policy threshold and the Q-value bound of
Section V, without simulation.

## Where each paper result comes from

| Paper item | File |
|---|---|
| Table V (seven-attacker comparison) | `full_paper/generated/main_table.tex` from `output/results/all_runs.csv` |
| Table VI (tests in all six conditions) | `full_paper/generated/primary_tests_table.tex` |
| Table VIII (hypothesis decisions) | `full_paper/generated/hypothesis_table.tex`; evidence in `output/hypotheses/evidence.json` |
| Wilcoxon and Holm results | `output/results/stats_rq2_combined_vs_single.csv`, `output/results/stats_rq3_rq4_proposed_vs_baselines.csv`, `output/hypotheses/ari_tests.csv` |
| ARI and recovery time per run | `output/results/resilience.csv` |
| Fresh-seed replication, ablations, rate and reception loss | `output/experiments/journal_extension/analysis/summary.csv`, `paired_comparisons.csv` |
| Benign learning comparison | `output/preliminary/learning_fp_extension_summary.csv` |

## Notes

* Numerical outputs match exactly. Figure files can differ by a few bytes
  between Matplotlib or LaTeX versions; their numbers do not.
* The stored CPU-time values are measurements from the original host; they are
  reparsed, not re-measured.
* Rerunning the simulations themselves takes about 235 run-hours and needs
  Docker and the pinned Contiki-NG tree; see `docs/REPRODUCE.md`. It is not
  needed to check the paper.
