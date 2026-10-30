# Code and data guide

This guide explains every source file and every data file. `WALKTHROUGH.md`
explains the method and the reasons behind each choice; this file explains how
the code implements it and how to read what it produces.

---

## 1. One simulation from start to finish

Take the run `m3_k7_i3_mob3_d4_s5` as an example. Its name encodes its setting:

| Part | Meaning |
|---|---|
| `m3` | attack mode 3 = combined DIS flooding + DAO manipulation (0 none, 1 DIS, 2 DAO, 3 combined) |
| `k7` | 7 attackers (25% of the 29 sensors) |
| `i3` | attackers send a DIS every 3 s |
| `mob3` | 30% of sensors mobile (`mob0` = static) |
| `d4` | defense 4 = AEF-RPL with learning off (0 none, 1 Secure-RPL, 2 RPL-MRC, 3 DIS-FDM, 4 AEF-RPL with the fixed decision rule, 5 Li-MSD, 6 first learning version, 7 AEF-RPL as evaluated in the paper) |
| `s5` | seed 5 |

What happens to it:

1. `scripts/plan.py` wrote its settings as one line of `output/plan/main.jsonl`.
2. `scripts/run_matrix.py` reads that line and calls `scenarios/gen_csc.py`,
   which draws the node positions, the 7 attackers and the 9 mobile nodes from
   seed 5, and writes `output/runs/m3_k7_i3_mob3_d4_s5/sim.csc` (the Cooja
   input) and `meta.json` (the ground truth).
3. The runner starts a Docker container named `twinrpl-m3_k7_i3_mob3_d4_s5`
   that runs Cooja headless on `sim.csc`.
4. Cooja loads three firmware variants built earlier by
   `scripts/build_variants.py`: `v_root_d4` (node 1), `v_cli_d4_m0` and
   `v_cli_d4_m1` (static and mobile legitimate sensors), and `v_atk_a3_i3`
   (the 7 attackers).
5. For 60 simulated minutes every node runs `firmware/node.c` and prints short
   lines starting with `#`. The script inside `sim.csc` moves the mobile nodes
   every second and copies the `#` lines into `COOJA.testlog`.
6. When the simulation ends, the runner checks that the log ends with
   `TEST OK` at 3600 s, runs `analysis/parse_run.py` to compute every metric
   into `result.json`, and compresses the log to `COOJA.testlog.gz`.
7. After all runs, `analysis/aggregate.py` reads every `result.json` and
   builds the tables, figures and statistical tests.

---

## 2. Source files

### 2.1 `patches/contiki-ng-hooks.patch`

Applied to Contiki-NG commit `385d72a76`. Five files:

| File | Added |
|---|---|
| `rpl-icmp6.h` | `rpl_ctrl_stats_t` counter struct; declarations of the DIS and DAO hooks |
| `rpl-icmp6.c` | counters in the DIS, DIO, DAO and DAO-ACK send and receive functions; the DIS hook call in `dis_input()`; the DAO hook call in `dao_input()` |
| `uip6.c` | the forwarding hook call, just before a packet is relayed |
| `rpl-timers.c/.h` | `rpl_timers_dio_readjust(i)`: restarts Trickle at interval 2^i ms if the current interval is longer (RPL-MRC) |

### 2.2 `firmware/node.c`, the program every node runs

| Part | What it does |
|---|---|
| `ROLE` (compile flag) | 0 border router, 1 legitimate sensor, 2 attacker |
| `on_udp()` | root: prints `#R` and echoes the packet back; sensor: prints `#E` when its echo returns |
| `report()` | every 60 s prints `#S` with all counters and radio times |
| main process | root starts the DODAG; every node turns the MAC on; sensors send one packet every 10 s (1 s jitter) once they have a route and print `#T`; every 10 s calls `defense_window()`; attackers call `attack_start()` |

### 2.3 `firmware/attack.c`, the attacks

| Function | What it does |
|---|---|
| `attack_process` | waits until 300 s, then fires a DIS timer (every `ATTACK_DIS_INTERVAL` s) and/or a DAO timer (every 2 s) depending on `ATTACK_MODE` |
| `forged_dao()` | builds a complete DAO by hand: target = the attacker's own address, transit parent = a random node that is neither itself nor its real parent, lifetime = normal; sends it to the root |

### 2.4 `firmware/dst.c`, the Dempster-Shafer part

| Function | What it does |
|---|---|
| `dst_combine(x, y)` | Dempster's rule for the frame {attack, non-attack}. Conflict `K = x.a*y.n + x.n*y.a`; new masses normalised by `1 - K` |
| `dst_table(count)` | the paper's Tables 3 and 4: 0 → vacuous, 1 → (0, 0.8, 0.2), 2 → (0, 0.6, 0.4), 3 → (0.6, 0, 0.4), 4 or more → (0.8, 0, 0.2), as (attack, non-attack, uncertain) |

### 2.5 `firmware/defense.c`, all defenses

The per-neighbor record `peer_t` holds, for each node ID: DIS and DAO counts in
the current window, inconsistent DAOs in the window, the counter `u`, the
blacklist flag, Secure-RPL's last-DIS time, Li-MSD's DAO count `lim_dao`, and
the accumulated DAO evidence `mdao`.

| Function | Used by | What it does |
|---|---|---|
| `defense_dis_input()` | all | the DIS hook. Counts the DIS, then: Secure-RPL checks `srpl_accept()`; RPL-MRC calls `rpl_timers_dio_readjust(15)` and drops the normal reset; DIS-FDM and proposed drop it if the sender is blacklisted |
| `srpl_accept()` | Secure-RPL | drops a DIS arriving less than 5 s after the previous one from the same neighbor; after 3 in a row, blacklists it |
| `defense_window()` | DIS-FDM, proposed, Li-MSD | every 10 s. For Li-MSD it only runs INITIALIZE: at 120 s and every 1800 s after it clears every DAO count and the blacklist. During the first 240 s calls `calibrate()`; at 240 s calls `finish_calibration()`; afterwards updates `v` (parent changes), `e` (energy), each neighbor's `u` (DIS load) and, for the proposed defense, `update_dao_evidence()`, then `decide()` |
| `calibrate()` / `finish_calibration()` | DIS-FDM, proposed | accumulates DIS and packet counts and energy per window; computes `T_DTL = (DIS+1)/(packets+2)`, energy mean and SD, and `eps = (inconsistent+1)/(first-hop DAOs+2)`; prints `#K` |
| `recent_switches()` | DIS-FDM, proposed | number of this node's parent changes in the last 60 s |
| `decide()` | DIS-FDM, proposed | the paper's Algorithm 1 on `u`, `v`, `e`; the proposed defense also fuses `mdao` and has the extra DAO path (fused attack belief >= 0.95) |
| `update_dao_evidence()` | proposed | after two consecutive windows with inconsistent DAOs from a neighbor, combines `(1-eps, 0, eps)` into its `mdao`; resets it after any clean window |
| `observe_dao()` | all | common DAO bookkeeping; decides first-hop consistency; for the proposed defense returns drop, pass or repair for a blacklisted sender; for Li-MSD drops DAOs from a blacklisted originator, counts DAOs that arrive directly from their originator, and blacklists the originator when its count has reached `LIMSD_BETA` |
| `dao_transit()` | all | finds the transit option inside a DAO |
| `defense_forward()` | all | the forwarding hook. Skips IPv6 extension headers, finds DAOs, calls `observe_dao()`; for a repair it writes the node's own address as the parent and calls `icmp6_fix_checksum()` |
| `defense_dao_input()` | all | the root's DAO hook; same logic as forwarding, and the root repairs by setting the parent to itself |
| `defense_parent_switch()` | all | the RPL parent-change callback; records the time and prints `#P` |
| `blacklist()` | Secure-RPL, DIS-FDM, proposed, Li-MSD | marks the neighbor and prints `#D` once (Li-MSD can print it again after a reset) |
| `learn()` | defenses 6 and 7 | called by `decide()` instead of the fixed rule. Builds the state with `rl_state()`, gives the previous window's action its reward through `rl_update()`, skips neighbors with no evidence, picks the action with `rl_choose()` (the fixed rule's verdict is the tie-breaker), then isolates or releases. Defense 7 adds two rules: exploration only when the neighbor has DIS or DAO evidence or is already isolated, and no release before two consecutive calm windows (`RL_CALM_RELEASE`) |
| `release()` | defenses 6 and 7 | clears the blacklist flag and prints `#U` |

Defense IDs are the `DEF_*` constants in `defense.h`. The two learning
defenses are selected by `DEF_AEF_RL` (6) and `DEF_AEF_RL2` (7); these macro
names are the ones the firmware was built with and are kept unchanged because
the stored run provenance hashes the firmware source. `DEF_LEARNING`,
`DEF_FUSION` and `DEF_DAO_EVIDENCE` are derived from the selected defense and
switch the corresponding code paths on.

### 2.6 `firmware/rl.c`, the Q-learning decision layer (defenses 6 and 7)

Compiled only when `DEF_LEARNING` is set. The table `q[96][2]` holds 16-bit
fixed-point values with 8 fractional bits, `visits[96][2]` the visit counts,
and `greedy[]` one bit per state for the last reported greedy action.

| Function | What it does |
|---|---|
| `rl_state(c, belief, dao, isolated)` | state index `c*16 + b*4 + dao*2 + isolated`: the DIS counter `u` capped at 5, the fused attack belief quantized at 0.5, 0.8 and 0.95, whether DAO evidence exists, whether the neighbor is isolated (96 states) |
| `epsilon(now)` | exploration rate: 0.10 from 240 s, halved every 600 s, never below 0.01 |
| `rl_choose(s, fixed, now, explore)` | safety rules first (`u = 5` always isolates, the all-zero state always accepts); then, if `explore` is set, a random action with probability `epsilon`; otherwise the action with the larger Q value, and the fixed rule's action `fixed` when both are equal |
| `rl_update(s, a, anomaly, next)` | reward 0 (accept, calm), -1 (accept, anomaly), -2 (isolate, calm), +1 (isolate, anomaly); update `Q(s,a) += (r + max Q(next)/2 - Q(s,a)) / n` with `n` the visit count capped at 16 |
| `rl_report()` | every 600 s: prints `#G` with the number of states whose greedy action is Isolate and the number that changed since the last report |

`rl.h` declares these functions and the constants `RL_STATES` (96),
`RL_ACCEPT`, `RL_ISOLATE` and `RL_NONE` (no decision pending).

### 2.7 Other firmware files

| File | Purpose |
|---|---|
| `defense.h` | the defense IDs (`DEF_NONE` to `DEF_AEF_RL2`), the derived switches `DEF_LEARNING`, `DEF_FUSION`, `DEF_DAO_EVIDENCE`, the 10 s window (`DEF_WINDOW_SEC`) and the hook declarations |
| `attack.h`, `dst.h`, `rl.h` | declarations for `attack.c`, `dst.c` and `rl.c` |
| `project-conf.h` | connects the hooks to the defense functions, sets the 10 s DIS interval, turns on energest and IP statistics, quietens logs; also holds the opt-in build options used only by the large-network pilots (`BIG_NET`, `ROOT_ROUTES`, `ROOT_QUEUEBUF`, `APP_CSMA_NEIGHBOR_QUEUES`, `APP_COMPRESS_EXT_HDR`, `APP_DAO_RTX_SEC`, `APP_DAO_MAX_RTX`), all inactive in the 30-node builds |
| `Makefile` | builds `node` with `defense.c`, `dst.c`, `attack.c` and `rl.c`; `MAC=tsch` switches to TSCH |
| `install.mk` | copies a pre-built firmware to the name Cooja asks for at load time |

### 2.8 Python (main campaign)

| File | What it does |
|---|---|
| `scenarios/gen_csc.py` | `place_nodes()` draws a connected layout; `waypoint_path()` draws Random Waypoint paths; `build()` assembles `sim.csc` and `meta.json` |
| `scripts/plan.py` | writes `calibration.jsonl` (20 runs), `reproduction.jsonl` (320) and `main.jsonl` (1000); `attackers_for()` turns 10/25/50% into 3/7/14 nodes |
| `scripts/build_variants.py` | builds every firmware variant in Docker, each in its own folder, with the calibrated thresholds compiled in: 8 root, 16 client and 7 attacker variants for the 30-node study, 3 variants for the 30 s-window sensitivity test, and the large-network variants (`*_big`, `*_p60`) used only by the scale pilots |
| `scripts/run_matrix.py` | runs plans in parallel containers, skips finished runs, validates, parses, compresses |
| `scripts/verify_sample.py` | re-runs a random sample of published runs into `output/verify/` and compares every metric |
| `analysis/parse_run.py` | computes all metrics of one run from its log (section 3.4) |
| `analysis/calibrate_tr.py` | computes DIS-FDM's parent-change thresholds from the 20 attack-free runs |
| `analysis/metrics.py` | writes `output/results/resilience.csv`: ARI and DRT per run (section 3.7) |
| `analysis/check_theory.py` | checks the delay and false-alarm bounds, the learned policy and the Q-value bound numerically; writes `output/theory/theory_check.json` |
| `analysis/calibrate_limsd.py` | computes Li-MSD's DAO receive threshold `beta` from the same 20 runs and writes `output/calibration/limsd.json` |
| `analysis/reparse_all.py` | re-parses every saved log with the current parser |
| `analysis/aggregate.py` | builds summary tables, figures, Wilcoxon tests with Holm correction, and `summary.md` |
| `analysis/paper_reference.json` | the base paper's published numbers used for RQ1 |
| `analysis/reproduce_from_logs.py` | `make reproduce`: checks the 1960 log hashes against `output/MANIFEST.sha256`, reparses into `output/repro/` and compares the 8 result files byte for byte |
| `analysis/test_hypotheses.py` | decides H1 to H5 with the proposal's decision rules; writes `output/hypotheses/` and the paper's hypothesis and primary-test tables |
| `analysis/false_isolation_reasons.py` | which decision rule first isolated each honest node, from the `#D` lines of the stored logs |
| `analysis/check_manuscript_math.py` | numerical checks of the paper's conditional derivations and the analytical figure |
| `analysis/diagnose_false_positives.py`, `analysis/diagnose_parent_cycles.py` | descriptive log diagnostics of the no-attack mobile runs (blacklist reasons; parent-pointer cycles from `#P` lines) |
| `scripts/reproduce_paper_from_logs.py` | `make reproduce-paper`: runs every replay and figure step in order and writes a report to `output/paper_reproduction/` |
| `scripts/build_full_paper_assets.py` | the paper's figures and LaTeX tables in `full_paper/generated/` from the result files |

---

## 3. Data files

### 3.1 Plan line (`output/plan/*.jsonl`)

`run_id`, `seed`, `nodes` (30), `attackers`, `attack_mode`, `dis_interval`,
`defense`, `mobile_frac` (0.0 or 0.3), `duration_min` (60).

### 3.2 `meta.json` (ground truth of one run)

The plan fields plus `attacker_ids`, `mobile_ids`, `positions` (starting x, y of
every node) and `variants` (firmware used).

### 3.3 `COOJA.testlog.gz` (raw log)

Each line is `<time in microseconds> <node ID> <tag> <values>`:

| Tag | Printed by | Values |
|---|---|---|
| `#B` | every node at boot | role, defense, mobile, attack mode, energest ticks per second |
| `#T` | sensor sends | sequence number |
| `#R` | root receives | sender ID, sequence number |
| `#E` | sensor receives its echo | sequence number |
| `#P` | parent change | new parent ID (0 = none) |
| `#K` | end of calibration (DIS-FDM, proposed) | T_DTL x 10^6, energy mean, energy SD, first-hop DAOs seen, inconsistent ones, eps x 1000 |
| `#D` | a node blacklists a neighbor | suspect ID, reason (1 Secure-RPL, 2 u = 5, 3 Algorithm 1 rule, 4 fused decision, 5 DAO evidence, 6 Li-MSD, 7 learned decision), attack belief x 1000 |
| `#S` | every node every 60 s (cumulative) | DIO sent, DIS sent, DAO sent, DAO-ACK sent, DIO received, DIS received, DAO received, parent changes, attack DIS sent, forged DAO sent, CPU ticks, LPM ticks, transmit ticks, listen ticks |

### 3.4 `result.json` (metrics of one run)

| Field | Meaning |
|---|---|
| `pdr_up` | upward packet delivery ratio, legitimate nodes, from 300 s |
| `pdr_down` | echoes returned / packets that reached the root |
| `delivery_up` | packets received / packets that would be sent if every legitimate node were always connected |
| `delay_up_ms`, `rtt_ms` | mean one-way delay to the root and round-trip time |
| `dio_total`, `dis_total`, `dao_total` | whole-run message totals, all nodes (DAO includes forged ones) |
| `*_attack_phase` | the same totals counted from 300 s only |
| `parent_switches`, `parent_switches_legit` | parent changes, all nodes and legitimate only |
| `tx_duty_pct`, `tx_power_mw`, `radio_power_mw` | radio transmit share and power per legitimate node |
| `legit_joined`, `legit_total` | legitimate nodes that ever sent data, and all legitimate nodes |
| `tp`, `fn`, `fp`, `tn` | attackers flagged, missed; legitimate nodes flagged, not flagged |
| `tpr`, `fpr`, `precision` | detection rates (empty for defenses that do not detect) |
| `detect_latency_s` | mean time from 300 s to the first flag of each detected attacker |
| `fp_before_attack` | legitimate nodes flagged before the attack started |
| `blacklist_entries_legit`, `blacklist_entries_attacker` | how many node pairs flagged legitimate nodes and attackers |
| `wall_s` | real time the simulation took (not a result, ignored by verification) |
| `_psw`, `_calib`, `_flags` | raw parent-change times, calibration lines and blacklist events, kept for checking |

### 3.5 Result tables (`output/results/`)

| File | Content |
|---|---|
| `all_runs.csv` | one row per run, every field of `result.json` |
| `summary_by_condition.csv` | per condition: mean, 95% CI half-width (`_ci95`) and SD (`_sd`) of each metric, and `n` |
| `reproduction_vs_paper.csv` | experiment, x value, condition, metric, paper's value, our value |
| `stats_rq2_combined_vs_single.csv` | combined vs each single attack, no defense: pairs, median difference, p, Holm-adjusted p, rank-biserial effect size |
| `stats_rq3_rq4_proposed_vs_baselines.csv` | proposed vs DIS-FDM, Secure-RPL and RPL-MRC for every condition and metric, with the same statistics plus means and SDs |
| `sensitivity_fdm_window.csv` | DIS-FDM window test: DIO, TPR, FPR, latency per interval and window |
| `summary.md` | readable tables built from the files above |

### 3.6 Figures (`output/figures/`)

| File | Shows |
|---|---|
| `repro_interval_*.png` | reproduction against attack interval (5 attackers), with the paper's values as hollow diamonds |
| `repro_attackers_*.png` | reproduction against number of attackers (3 s interval) |
| `rq2_attack_damage.png` | damage of DIS-only, DAO-only and combined attacks with no defense |
| `main_network_k{3,7,14}.png` | downward delivery, DIO overhead and transmit power per attack and defense |
| `main_detection_k{3,7,14}.png` | TPR, FPR and detection latency per attack and defense |
| `false_positives_no_attack.png` | false alarms when no attacker is present |
| `sensitivity_fdm_window.png` | DIS-FDM with a 10 s and a 30 s evidence window against attack interval |

### 3.7 Attack Resilience Index and Downward Recovery Time (`resilience.csv`)

| Column | Meaning |
|---|---|
| `reference` | the run used as reference: same seed and mobility, no attack, no defense. When `output/runs/m0_k<k>_i3_mob<x>_d0_s<seed>` exists (plan `reference.jsonl`), it is used: the same nodes are chosen as attackers but run honest firmware, so the same nodes move on the same paths. Otherwise `m0_k0_...` is used |
| `reference_exact` | 1 when the reference has the same moving nodes as the run (always true for static runs) |
| `e_attacked`, `e_reference` | packets sent by the run's legitimate nodes after 300 s whose echo came back, in the run and in the reference |
| `ari` | `e_attacked / e_reference` |
| `pre_level` | mean fraction of expected round trips completed per minute between 120 and 300 s |
| `drt_s` | Downward Recovery Time: from the first minute after 300 s in which the 3-minute trailing mean falls below 90% of `pre_level` to the start of 5 consecutive minutes back above it; 0 if it never falls |
| `drt_censored` | 1 if service never recovered; `drt_s` is then the remaining run time |

### 3.8 Learning-layer log lines (defenses 6 and 7)

| Tag | Printed when | Fields |
|---|---|---|
| `#D` | a neighbor is isolated (also after a release) | as above; reason 7 is a decision made by the learned policy |
| `#U` | an isolated neighbor is released | neighbor ID |
| `#G` | every 600 s after calibration | number of states whose greedy action is Isolate, number of states whose greedy action changed since the last report |

`parse_run.py` adds `legit_isolated_frac` and `attacker_isolated_frac` (average share of the time after 240 s during which a node is isolated by at least one neighbor) and `policy_changes_last` (mean of the last `#G` change count).

---

## 4. Second campaign (fresh seeds 21 to 45)

Everything in this section lives under `output/experiments/journal_extension/`
and is separate from the 1960-run main campaign and its manifest. The plans are
frozen JSONL files, each run keeps the same four files as a main-campaign run,
and `PROVENANCE.json` records the firmware hashes, compile definitions, Contiki
commit, Python version and Docker image used. `MANIFEST.sha256` lists every
file of the campaign with its hash. `JOURNAL_EXPERIMENTS_REPRODUCE.md`
gives the commands.

### 4.1 Studies

| Study (plan file) | Runs | Seeds | Design |
|---|---|---|---|
| Attack-rate robustness (`robustness.jsonl`) | 240 | 21 to 30 | 30 nodes, seven attackers, static and 30% mobile; DIS/DAO intervals 3/2, 10/10 and 30/30 s; RPL, DIS-FDM, Li-MSD and AEF-RPL. The two intervals change together, so this measures joint-rate robustness, not separate DIS-rate and DAO-rate effects |
| Component ablations (`ablations.jsonl`) | 240 | 31 to 40 | combined attack and no attack, static and mobile; six variants: full AEF-RPL, learning off, DAO fusion mass off, immediate DAO evidence (one window instead of two), route repair off, and calibration fixed from benign seeds 1 to 10. Each variant differs from the full method in one mechanism; `ablation_calibration.json` holds the frozen constants and their source seeds |
| Matched attack-free references (`references.jsonl`) | 70 | per study | the ARI denominators. Each reference keeps the attacker-position draws of its attacked scenario before choosing the mobile nodes, so layout, mobile membership and waypoint paths match. The analyzer checks the layout hash, the mobile set and the service-node IDs before computing an ARI; a reference with zero completed round trips gives an undefined ratio, not a result |
| Reception loss (`robservation.jsonl`) | 120 | 41 to 45 | reception probabilities 1.00, 0.95 and 0.80 |
| Host callback cost (`profiling.jsonl`) | 60 | 41 to 45 | per-window callback CPU time measured on the host, plus native compiled-object section sizes (`analysis/native_object_sizes.csv`). These are simulator-host measurements, not mote runtime, flash, RAM or energy |
| Injection-trace validation (`timing_validation.jsonl`) | 2 | 21 | 10-minute combined-attack runs at 30 nodes that log every injection attempt, to check that attacks start 300 s after boot |
| Large-network feasibility pilots (`scale_diagnostics.jsonl`) | 8 | 1 and 2 | attack-free 15-minute runs at 500 and 1000 nodes with native DIS periods of 10 and 60 s, all with the enlarged root queue and route table. Their only purpose was the scale gate below |

The design notes that apply to every study: the run (one seed) is the
independent unit; all paired comparisons use the same seeds and layouts within
a study; every evaluation run lasts 60 simulated minutes except where the table
says otherwise; the attack is scheduled 300 s after each mote boots and the
actual first injection follows the attacker's timer and route state, which the
trace records distinguish from confirmed over-air reception; no PR-AUC is
derived from blacklist logs, which carry decisions rather than continuous
scores.

### 4.2 Scale gate

`analysis/validate_journal_protocol.py` evaluates the eight pilots against
predefined thresholds (95% application participation, 80% expected
network-wide upward delivery, 90% conditional downward delivery, in every
matched pilot of a setting) and writes `analysis/scale_gate.json`. A passing
setting would have released `scale_full.jsonl` through
`scripts/plan_validated_scale.py`; no setting passed, `pipeline_status.json`
records `scale_feasibility_established: false`, and the 500- and 1000-node
comparison was not run. The reported results are all at 30 nodes.

### 4.3 Scripts and outputs

| File | What it does |
|---|---|
| `scripts/plan_journal_extension.py`, `plan_journal_ablations.py`, `plan_journal_references.py`, `plan_journal_operational.py` | write the frozen plans and variant definitions (`variants.json`, `ablation_variants.json`, `operational_variants.json`) |
| `scripts/complete_journal_experiments.py` | runs the stages in order as a systemd user service, skipping completed runs, and refreshes the analysis after each stage |
| `scripts/journal_status.py` | read-only progress summary |
| `scripts/record_journal_provenance.py` | writes `PROVENANCE.json` |
| `analysis/analyze_journal_extension.py` | per-cell means with Student-t intervals, paired bootstrap differences (10 000 resamples), exact sign-flip p-values, Holm correction within each study; writes `analysis/per_run.csv`, `summary.csv`, `paired_comparisons.csv`, `attacker_events.csv`, `completion.csv` and `STATUS.md`. Node-level detection metrics and post-onset event metrics use different observation rules and are reported separately; latency is averaged over detected events and the missed-event count is reported next to it |
| `analysis/analyze_learning_fp_extension.py` | paired comparison of the 20 benign mobile runs (seeds 11 to 20, learning on and off) in `output/preliminary/learning_fp_extension/` |
| `analysis/plot_journal_extension.py` | the campaign figures in `figures/` |
| `analysis/profile_native_resources.py` | native object section sizes from the compiled variants |
| `analysis/validate_journal_protocol.py` | manifest bounds, rejection of nonfinite settings, source check that `defense.c` and `rl.c` reference no attacker-label or schedule symbol, injection timing, scale gate; writes `analysis/PROTOCOL_VALIDATION.md` |
| `analysis/reproduce_journal_extension.py` | reparses the 740 logs into `output/repro_journal_extension/` and compares the tables |

---

## 5. Scale pilot tooling (not part of the reported results)

The 500- and 1000-node condition was not completed. The files below produced
and examined the attack-free pilots and the follow-up diagnostics kept under
`output/preliminary/scale_checks/`, `output/diagnostics/` and
`output/experiments/grid_scale_extension/`. They are kept because the pilots
were run with them; none of them feeds the result tables of the paper, and
`scripts/plan.py` and `scripts/build_variants.py` still contain the
large-network plan and variant definitions they rely on.

| File | What it does |
|---|---|
| `scripts/trace_scale_failure.py` | repeats one 500-node, no-attack diagnostic with stack warnings retained; writes `output/diagnostics/scale_root_cause/` |
| `scripts/trace_scale_ack.py` | captures link outcomes and DAO exchanges around the route loss; `output/diagnostics/scale_ack_trace/` |
| `scripts/fix_scale_transport.py` | builds and runs matched variants with larger CSMA neighbor queues and other transport settings; `output/diagnostics/scale_transport_fix/` |
| `scripts/fix_scale_routing.py` | follow-up on DAO retry exhaustion after the transport changes; `output/diagnostics/scale_routing_fix/` |
| `scripts/validate_scale_loop_handling.py` | tests the standard loop-error drop on the same layouts; `output/diagnostics/scale_loop_handling/` |
| `scripts/diagnose_scale_load.py` | single-seed screening of route formation at 100, 250, 500 and 1000 nodes with three traffic profiles; `output/diagnostics/scale_load_isolation/` (`docs/SCALE_LOAD_SCREENING.md`) |
| `scripts/diagnose_500_echo.py` | upward-only against bidirectional traffic at 500 nodes; `output/diagnostics/scale500_echo_isolation/` (`docs/SCALE500_DIRECTION_SCREENING.md`) |
| `scripts/trace_500_downward.py` | RPL-level trace of the first minutes of downward traffic at 500 nodes; `output/diagnostics/scale500_downward_trace/` |
| `scripts/validate_500_route_refresh.py` | one changed routing parameter (maximum Trickle doublings 8 to 4) at 500 nodes; `output/diagnostics/scale500_route_refresh/` (`docs/SCALE500_ROUTING_REPAIR.md`) |
| `scripts/validate_grid_scale.py`, `scripts/complete_grid_scale.py` | a separate structured-grid topology family with its own gate; `output/diagnostics/structured_grid_scale/` and `output/experiments/grid_scale_extension/` |
| `scripts/plan_validated_scale.py` | would write the 114-run scale comparison plan if the gate of section 4.2 passed; it never did |
| `analysis/diagnose_scale_geometry.py` | compares geometric connectivity with logged route availability in the pilots; `analysis/scale_geometry.csv` |
| `analysis/reproduce_scale_diagnostics.py` | rechecks the diagnostic summaries against their logs (a step of `make reproduce-paper`) |
| `analysis/reproduce_scale_followups.py` | rebuilds the follow-up numbers and the paper's scale table from the saved logs into `output/repro_scale_followups/` |
| `analysis/plot_scale_corrections.py` | plots the completed random-layout controls (`full_paper/generated/scale_corrections.pdf`) |
| `docs/SCALE_FAILURE_DIAGNOSIS.md` | the mechanisms found in the traces: source-routing header size, CSMA neighbor-queue exhaustion, DAO retry exhaustion |
| `docs/SCALE_LOAD_SCREENING.md`, `docs/SCALE500_DIRECTION_SCREENING.md`, `docs/SCALE500_ROUTING_REPAIR.md` | protocol and interpretation notes of the three follow-up campaigns |
