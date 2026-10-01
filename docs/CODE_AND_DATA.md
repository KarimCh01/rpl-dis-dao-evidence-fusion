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
| `d4` | defense 4 = proposed (0 none, 1 Secure-RPL, 2 RPL-MRC, 3 DIS-FDM, 4 proposed) |
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
blacklist flag, Secure-RPL's last-DIS time, and the accumulated DAO evidence
`mdao`.

| Function | Used by | What it does |
|---|---|---|
| `defense_dis_input()` | all | the DIS hook. Counts the DIS, then: Secure-RPL checks `srpl_accept()`; RPL-MRC calls `rpl_timers_dio_readjust(15)` and drops the normal reset; DIS-FDM and proposed drop it if the sender is blacklisted |
| `srpl_accept()` | Secure-RPL | drops a DIS arriving less than 5 s after the previous one from the same neighbor; after 3 in a row, blacklists it |
| `defense_window()` | DIS-FDM, proposed | every 10 s. During the first 240 s calls `calibrate()`; at 240 s calls `finish_calibration()`; afterwards updates `v` (parent changes), `e` (energy), each neighbor's `u` (DIS load) and, for the proposed defense, `update_dao_evidence()`, then `decide()` |
| `calibrate()` / `finish_calibration()` | DIS-FDM, proposed | accumulates DIS and packet counts and energy per window; computes `T_DTL = (DIS+1)/(packets+2)`, energy mean and SD, and `eps = (inconsistent+1)/(first-hop DAOs+2)`; prints `#K` |
| `recent_switches()` | DIS-FDM, proposed | number of this node's parent changes in the last 60 s |
| `decide()` | DIS-FDM, proposed | the paper's Algorithm 1 on `u`, `v`, `e`; the proposed defense also fuses `mdao` and has the extra DAO path (fused attack belief >= 0.95) |
| `update_dao_evidence()` | proposed | after two consecutive windows with inconsistent DAOs from a neighbor, combines `(1-eps, 0, eps)` into its `mdao`; resets it after any clean window |
| `observe_dao()` | all | common DAO bookkeeping; decides first-hop consistency; for the proposed defense returns drop, pass or repair for a blacklisted sender |
| `dao_transit()` | all | finds the transit option inside a DAO |
| `defense_forward()` | all | the forwarding hook. Skips IPv6 extension headers, finds DAOs, calls `observe_dao()`; for a repair it writes the node's own address as the parent and calls `icmp6_fix_checksum()` |
| `defense_dao_input()` | all | the root's DAO hook; same logic as forwarding, and the root repairs by setting the parent to itself |
| `defense_parent_switch()` | all | the RPL parent-change callback; records the time and prints `#P` |
| `blacklist()` | Secure-RPL, DIS-FDM, proposed | marks the neighbor and prints `#D` once |

### 2.6 Other firmware files

| File | Purpose |
|---|---|
| `project-conf.h` | connects the hooks to the defense functions, sets the 10 s DIS interval, turns on energest and IP statistics, quietens logs |
| `Makefile` | builds `node` with `defense.c`, `dst.c`, `attack.c`; `MAC=tsch` switches to TSCH |
| `install.mk` | copies a pre-built firmware to the name Cooja asks for at load time |

### 2.7 Python

| File | What it does |
|---|---|
| `scenarios/gen_csc.py` | `place_nodes()` draws a connected layout; `waypoint_path()` draws Random Waypoint paths; `build()` assembles `sim.csc` and `meta.json` |
| `scripts/plan.py` | writes `calibration.jsonl` (20 runs), `reproduction.jsonl` (320) and `main.jsonl` (1000); `attackers_for()` turns 10/25/50% into 3/7/14 nodes |
| `scripts/build_variants.py` | builds the 22 firmware variants in Docker, each in its own folder, with the calibrated thresholds |
| `scripts/run_matrix.py` | runs plans in parallel containers, skips finished runs, validates, parses, compresses |
| `scripts/verify_sample.py` | re-runs a random sample of published runs into `output/verify/` and compares every metric |
| `analysis/parse_run.py` | computes all metrics of one run from its log (section 3.4) |
| `analysis/calibrate_tr.py` | computes DIS-FDM's parent-change thresholds from the 20 attack-free runs |
| `analysis/reparse_all.py` | re-parses every saved log with the current parser |
| `analysis/aggregate.py` | builds summary tables, figures, Wilcoxon tests with Holm correction, and `summary.md` |
| `analysis/paper_reference.json` | the base paper's published numbers used for RQ1 |

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
| `#D` | a node blacklists a neighbor | suspect ID, reason (1 Secure-RPL, 2 u = 5, 3 Algorithm 1 rule, 4 fused decision, 5 DAO evidence), attack belief x 1000 |
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
