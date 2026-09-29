# Detecting Coordinated DIS Flooding and DAO Manipulation Attacks in RPL-Based IoT Networks via Adaptive Evidence Fusion

Implementation and evaluation code for the research proposal of the same title
(CSC 689, LAU). The base paper is Prajisha C. and Vasudevan A.R., "Detection and
mitigation of Multicast DIS flooding attacks in RPL-based IoT networks," Ad Hoc
Networks 179 (2025) 104002, which proposes DIS-FDM.

* Full step-by-step account of what was built and why: `docs/WALKTHROUGH.md`
* How to rebuild everything and get the same numbers: `docs/REPRODUCE.md`
* Readable results tables: `output/results/summary.md`

## Research questions and where each one is answered

| Research question | Proposal objective | Experiments (plan file) | Main outputs |
|---|---|---|---|
| RQ1. How closely can DIS-FDM's reported performance be reproduced? | O1 | `output/plan/reproduction.jsonl` | `output/figures/repro_*.png`, `output/results/reproduction_vs_paper.csv` |
| RQ2. Is the combined DIS + DAO attack worse than either attack alone? | O2 | `output/plan/main.jsonl`, defense 0 | `output/figures/rq2_attack_damage.png`, `output/results/stats_rq2_combined_vs_single.csv` |
| RQ3. Does the self-calibrated DAO-consistency evidence source improve detection? | O3, O4 | `output/plan/main.jsonl`, defenses 3 and 4 | `output/figures/main_detection_*.png`, `output/figures/main_network_*.png` |
| RQ4. Are the improvements statistically significant across seeds, static and mobile? | O5 | all of `main.jsonl` (10 seeds per cell) | `output/results/stats_rq3_rq4_proposed_vs_baselines.csv` |

## Folder map

| Folder / file | What it contains | Proposal link |
|---|---|---|
| `firmware/node.c` | One program for every node: border router, legitimate sensor, or attacker (chosen at compile time). Sends data every 10 s, the root echoes it back, and every node prints compact log lines. | Methodology, Materials and Tools |
| `firmware/attack.c` | The attack model: multicast DIS flooding, DAO manipulation (forged parent in the DAO transit option), or both from the same node. | Procedure step 2, O2 |
| `firmware/defense.c` | All defenses: Secure-RPL, RPL-MRC, DIS-FDM (base paper), and the proposed extension (DIS-FDM plus the DAO-consistency evidence source). | Procedure steps 1 and 3, O1, O3 |
| `firmware/dst.c` | Dempster's rule of combination and the base paper's belief tables (Tables 3 and 4). | O3 |
| `firmware/project-conf.h`, `Makefile`, `install.mk` | Build configuration. | Materials and Tools |
| `patches/contiki-ng-hooks.patch` | The only change to Contiki-NG: message counters and three optional hooks (DIS input, DAO input, packet forwarding). | Materials and Tools |
| `scenarios/gen_csc.py` | Turns one experiment setting into a Cooja simulation file plus a ground-truth record. | Study Population / Sample |
| `scripts/plan.py` | Writes the full experimental matrix. | Procedure step 4 |
| `scripts/build_variants.py` | Compiles every firmware variant in its own folder inside the pinned Docker image. | Materials and Tools (Docker) |
| `scripts/run_matrix.py` | Runs simulations in parallel Docker containers, resumable. | Data Collection Method |
| `analysis/parse_run.py` | Computes every metric for one run from its log. | Data Analysis Methods 1 and 2 |
| `analysis/calibrate_tr.py` | Computes DIS-FDM's parent-change thresholds from attack-free runs (base paper Eqs. 8 to 13). | O1 |
| `analysis/aggregate.py` | Summary tables, figures, Wilcoxon signed-rank tests with Holm correction. | Data Analysis Methods 3, O5 |
| `analysis/reparse_all.py` | Re-parses every saved log with the final parser. | Data Analysis Methods |
| `analysis/paper_reference.json` | The base paper's published numbers, used for the RQ1 comparison. | O1 |
| `output/runs/` | One folder per simulation: input file, ground truth, raw log, parsed metrics. | Data Collection Method |
| `output/calibration/` | Calibrated thresholds. | O1 |
| `output/results/` | CSV tables, statistics, readable summary. | Expected Results |
| `output/figures/` | All figures. | Expected Results |
| `output/preliminary/` | Engineering checks done while building the system (smoke test, DAO-check verification, radio-loss test, TSCH test). Not part of the reported results. | Validation of the environment |
| `requirements.txt` | Pinned Python packages. | Materials and Tools |

## Experimental conditions

| Factor | Levels |
|---|---|
| Network | 30 nodes (1 border router, 29 sensors), 200 m x 200 m, UDGM radio (50 m range, 100 m interference), connected placement |
| Attack type | none, DIS flooding, DAO manipulation, combined DIS + DAO |
| Malicious nodes (main matrix) | 0%, 10%, 25%, 50% of the 29 sensors (0, 3, 7, 14 nodes) |
| Malicious nodes (reproduction) | 2, 5, 10 attackers and DIS intervals 3, 6, 10, 15, 30 s, as in the base paper Sections 6.1 and 6.2 |
| Topology | static; 70% static / 30% mobile (Random Waypoint, 0.5 to 2 m/s, 0 to 10 s pause) |
| Defense | 0 RPL (none), 1 Secure-RPL, 2 RPL-MRC, 3 DIS-FDM, 4 proposed |
| Seeds | 1 to 10 for every cell |
| Duration | 60 simulated minutes, attack starts at 300 s |
