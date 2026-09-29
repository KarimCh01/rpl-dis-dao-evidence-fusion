# Walkthrough: everything that was built, in order, and why

This document explains every step of the implementation and evaluation, every
parameter and where it comes from, every place where the base paper was
unclear and how that was resolved, and every problem met along the way. It
follows the five-step procedure of the proposal (Section 4.1).

Base paper: Prajisha C. and Vasudevan A.R., "Detection and mitigation of
Multicast DIS flooding attacks in RPL-based IoT networks," Ad Hoc Networks 179
(2025) 104002. Below it is called "the paper" and its method "DIS-FDM".

---

## Part A. Environment

### A.1 Tools and versions

| Item | Value | Why |
|---|---|---|
| Docker image | `contiker/contiki-ng`, ID `b14d5afb0a2a` | Official Contiki-NG toolchain. Pinning the ID fixes compiler, Java and libraries. |
| Contiki-NG | commit `385d72a76` | Same OS family the paper states (Table 7: Contiki-NG/Cooja). |
| Cooja | commit `fabff3ee`, run headless with `--no-gui` | Scripted, repeatable runs, as the proposal requires. |
| Mote type | Cooja native motes | Fast enough to run about 1300 one-hour simulations on a laptop. |
| MAC layer | CSMA (Contiki-NG default) | See B.8 for why TSCH was tested and rejected. |
| Routing | RPL-lite, non-storing mode (Contiki-NG default) | Default RPL implementation of Contiki-NG. |
| Python | 3.12 with pandas, numpy, scipy, matplotlib (versions in `requirements.txt`) | Log parsing and statistics, as the proposal lists. |

### A.2 The only change made to Contiki-NG

File: `patches/contiki-ng-hooks.patch` (five files, 60 added lines).

1. **Message counters.** A small struct `rpl_ctrl_stats` counts DIO, DIS, DAO
   and DAO-ACK messages sent and received by each node. The paper measures
   control overhead as a message count, so the counts have to be exact. The
   alternative, printing every RPL message to the log, produced 33 MB of log per
   run in an earlier test and would have meant about 40 GB for the full study.
2. **DIS input hook** in `dis_input()`. Called for every DIS a node receives,
   with the sender address. Returning 0 drops the DIS before it can reset the
   Trickle timer. Secure-RPL, RPL-MRC, DIS-FDM and the proposed defense all act
   here.
3. **DAO input hook** in `dao_input()`. Called at the border router for every
   DAO, with the sender, the claimed parent and the lifetime. The parent is
   passed as a writable pointer so the root can correct it (see C.5).
4. **Forwarding hook** in `uip6.c`. Called for every packet a node relays
   upward. The proposed defense uses it to inspect DAOs passing through.
5. **`rpl_timers_dio_readjust()`** in `rpl-timers.c`. Restarts the Trickle
   timer at a given interval instead of the minimum. Needed to implement
   RPL-MRC exactly (D.2). Nothing calls it unless RPL-MRC is compiled in.

If a firmware does not define these hooks, the code compiles exactly as
upstream. The parent-switch callback needed by DIS-FDM already exists in
RPL-lite (`RPL_CALLBACK_PARENT_SWITCH`), so no patch was needed for it.

---

## Part B. Network, traffic and scenarios

### B.1 Topology (proposal: Study Population / Sample; paper Table 7)

* 30 nodes: node 1 is the border router at the center (100, 100); nodes 2 to 30
  are sensors placed uniformly at random in 200 m x 200 m.
* Radio: Cooja UDGM, transmission range 50 m, interference range 100 m.
* Placement is redrawn until every node can reach the root through 45 m links
  (90% of the range). Without this check some random layouts leave nodes that
  can never join, and every metric would then mix "attack damage" with "node
  was never connected". This was learned in the earlier smoke test, where 25 m
  range left most nodes disconnected.

### B.2 Traffic

* Every sensor (legitimate or attacker) sends one 4-byte sequence number to the
  root every 10 s with 1 s of random jitter, once it has a route.
* The root echoes every packet back to the sender. This creates downward
  traffic, which is exactly what a DAO attack damages, so the DAO attack's
  effect can be measured (downward delivery).
* The paper does not state its traffic rate; 10 s is the default of Contiki-NG's
  RPL-UDP example, which the paper's setup is based on.

### B.3 Mobility (proposal: 70% static / 30% mobile, Random Waypoint)

* 30% of the 29 sensors (9 nodes, chosen with the run seed) move.
* Random Waypoint inside the 200 m x 200 m area, speed uniform in 0.5 to 2 m/s,
  pause uniform in 0 to 10 s. The paper gives the model but not the speeds, so
  walking-pace values were used.
* The whole path is generated in Python from the seed and embedded in the Cooja
  script, which moves the nodes once per simulated second. The same seed always
  gives the same path.

### B.4 Attacker selection

Attackers are drawn at random from the 29 sensors using the seed. Positions are
drawn first, so all conditions with the same seed share the same layout, and all
defenses with the same seed and attacker count face the same attackers. This is
what makes the paired Wilcoxon test valid: seed s under DIS-FDM and seed s under
the proposed defense are the same network.

### B.5 Timing

* Simulation length: 60 minutes (paper Table 7).
* Attack start: 300 s. The paper does not give an attack start time. 300 s lets
  the DODAG form and lets DIS-FDM finish its 240 s calibration first, which the
  paper requires ("at the beginning of the simulation, the normal DIS arrival
  rate is calculated").
* All network metrics are measured over the attack phase (300 s to 3600 s).

### B.6 Seeds and determinism

Each simulation file carries its seed in `<randomseed>`. Cooja with the same
seed and the same firmware produces the same run. The node layout, attacker set
and mobility come from Python's `random.Random(seed * 1000003 + 17)`. Seeds 1 to
10 are used everywhere.

### B.7 Normal DIS interval

The paper uses a normal DIS interval of 10 s. `RPL_CONF_DIS_INTERVAL` is set to
10 s. In RPL-lite this timer only fires while a node has no parent, and the
actual gap is drawn between 5 s and 15 s.

### B.8 MAC layer: CSMA kept, TSCH tested and rejected

The paper does not name its MAC layer. Its power values (1.5 to 6 mW) are only
possible with a duty-cycled radio; an always-on radio draws about 60 mW.

* With CSMA (radio always on, up to 7 link retransmissions), attack-free upward
  delivery was 99.8% to 100%. It also stayed at 100% under DIS flooding, even
  when 20% of packets were dropped per link (`output/preliminary/radio_loss`).
  The DIO storm fits into the spare channel capacity.
* With TSCH (Contiki-NG's duty-cycled MAC, minimal schedule), the network was
  already broken without any attack: 50% to 73% upward delivery, delays of 2 to
  7 s, and up to a third of nodes never joined in 20 minutes
  (`output/preliminary/tsch`). A baseline that is broken before the attack
  cannot be used to measure attack damage.

Decision: CSMA is used for every reported run, and the Cooja default link
success ratio (1.0) is kept since the paper does not report one. Consequence
for RQ1: the paper's control-overhead damage can be compared directly, but its
drop in upward delivery and its absolute power values depend on a MAC layer the
paper does not specify, and are not expected to reproduce under CSMA. TSCH
support remains in the code (`make MAC=tsch`).

---

## Part C. Attack model (proposal step 2, objective O2)

File: `firmware/attack.c`. Attackers also send normal data, so they look like
ordinary sensors, as in the paper.

### C.1 Multicast DIS flooding

From 300 s, the attacker sends a multicast DIS every `ATTACK_DIS_INTERVAL`
seconds using the normal RPL function `rpl_icmp6_dis_output(NULL)`. Every
neighbor that receives it resets its Trickle timer to the minimum and sends a
DIO. The main matrix uses 3 s, the value of the paper's attacker-count
experiment (Section 6.2). The reproduction also uses 6, 10, 15 and 30 s
(Section 6.1).

### C.2 DAO manipulation

From 300 s, every 2 s the attacker sends a forged DAO to the root. It is a
well-formed DAO carrying the attacker's own address as target, but its transit
option names a false parent: a random other node that is not its real parent.

Why this breaks the network: in RPL-lite non-storing mode the root builds its
downward routes from DAOs, keyed by the DAO's sender, with the parent the DAO
claims. After a forged DAO, the root believes the attacker hangs below a node it
cannot actually reach, so every source-routed packet toward the attacker and
toward every node below the attacker is lost. The legitimate DAOs of the
attacker are sent rarely (on parent change or refresh), so the forged ones keep
winning.

This follows the DAO manipulation and DAO inconsistency attacks in the
literature the proposal cites (Pu 2018; Verma et al. 2024, Li-MSD; Deepavathi
and Mala 2023, IMDRPL).

### C.3 Combined attack

The same node runs both C.1 and C.2 at the same time (`ATTACK_MODE=3`), which is
the "single malicious node executing both concurrently" of the proposal.

---

## Part D. Defenses (proposal steps 1 and 3)

File: `firmware/defense.c`. The defense is chosen at compile time
(`DEFENSE=0..4`). All legitimate nodes and the root run the same defense.
Attackers run no defense.

### D.1 Secure-RPL (Verma and Ranga 2020), DEFENSE=1

As described in the base paper's related work: a node discards every DIS from a
neighbor that arrives before that neighbor's DIS interval has expired, and
tracks the sender, the time of its last DIS and a count.

* Interval: 5 s, the shortest gap a legitimate RPL-lite node can produce with a
  10 s DIS interval (B.7).
* After 3 early DIS in a row, the neighbor is recorded as an attacker (used for
  detection metrics) and all its DIS are dropped.

### D.2 RPL-MRC (Medjek et al. 2021), DEFENSE=2

Implemented exactly as published in Medjek, Tandjaoui, Djedjig and Romdhani,
"Multicast DIS attack mitigation in RPL-based IoT-LLNs," Journal of Information
Security and Applications 61 (2021) 102939, Section 4 and Algorithm 1.

* Maximum Response Delay: `MRD = 2^MRC` ms (their Eq. 1). Their evaluation uses
  `MRC = 15` (best value in their Section 5.5), so `MRD = 32768` ms.
* Timer Readjustment (their Eq. 2): when a node receives a multicast DIS, it
  resets its Trickle interval to MRD if MRD is shorter than its current
  interval; otherwise it does not reset at all. Native RPL instead resets to
  the minimum interval (2^12 ms).
* Response Delay: the reply DIO is sent at a random time in [MRD/2, MRD] and is
  cancelled if enough neighbors already replied. This is exactly how Trickle
  schedules the first transmission of a new interval (random point in [I/2, I],
  suppressed by the redundancy counter), so it is obtained by restarting
  Trickle at I = MRD.
* Code: `rpl_timers_dio_readjust(15)` in the DIS input hook. This function is the
  one addition to `rpl-timers.c` in the patch.
* RPL-MRC does not identify attackers, so it has no detection metrics.

An earlier version of this project used an approximation of RPL-MRC (random
0 to 4 s delay, at most one reset per 16 s) because the original paper was not
yet available. It suppressed far fewer DIOs than the paper reports (7661 DIO
against the paper's 692 at 5 attackers and a 3 s interval). Once the paper was
obtained, the exact rule replaced it, all RPL-MRC runs made with the
approximation were deleted and re-run, and a check run confirmed the correction
(`output/preliminary/mrc_check`: 1307 DIO in 20 minutes against 3374 with no
defense).

### D.3 DIS-FDM (the base paper), DEFENSE=3

Every node runs DIS-FDM locally and evaluates every neighbor once per 10 s
window.

**Calibration (first 240 s of each node's life).**
* DIS threshold `T_DTL` (paper Eqs. 4 to 6, the Beta-distribution mean):
  `T_DTL = (sum of DIS received + 1) / (sum of all packets received + 2)` over
  the calibration windows.
* Energy statistics for the third source: mean and standard deviation of the
  node's energy use per window.

**Primary evidence u, DIS Traffic Load (paper Section 4.1).**
Each window, for each neighbor: `DTL = DIS from that neighbor / all packets
received`. If `DTL > T_DTL`, the neighbor's counter `u` goes up by one (capped
at 5); otherwise it resets to 0. So `u` is the number of consecutive violations.

**Secondary evidence v, Time between Parent Changes (paper Section 4.2).**
Each window: `TPC = 60 s / number of this node's parent changes in the last
60 s`. If `TPC < TR`, counter `v` goes up (capped at 5), else resets. `TR` is
`TR_s` for static nodes and `TR_m` for mobile nodes, computed offline from
attack-free runs (Part E).

**Tertiary evidence e, energy.** Counter of consecutive windows where the
node's energy use is above calibration mean plus one standard deviation. The
paper uses it only when the first two sources disagree.

**Belief tables (paper Tables 3 and 4), used for u, v and e:**

| Count | Attack | Non-attack | Uncertain |
|---|---|---|---|
| 4 or more | 0.8 | 0 | 0.2 |
| 3 | 0.6 | 0 | 0.4 |
| 2 | 0 | 0.6 | 0.4 |
| 1 | 0 | 0.8 | 0.2 |
| 0 | 0 | 0 | 1 |

**Combination.** Dempster's rule (paper Eqs. 12 to 16) in `dst_combine()`. Checked
against the paper: u = 4, v = 4 gives 0.96 attack (paper Case 1); u = 4, v = 1
gives 0.4444 attack and 0.4444 non-attack (paper Table 5).

**Decision (paper Algorithm 1), with c1 = u and c2 = v:**
1. c1 = 5: attack.
2. c1 = 4 and c2 >= 2, or c1 = 3 and c2 >= 3: attack.
3. c1 = 4 and c2 = 1, or c1 = 3 and c2 = 2: combine u, v and e; attack if the
   combined attack belief is larger than the non-attack belief.
4. Otherwise: normal.

**Mitigation.** An attacker is stored in the blacklist and its DIS messages are
dropped from then on, so they no longer reset the Trickle timer.

### D.4 Proposed defense: DIS-FDM plus a self-calibrated DAO-consistency evidence source, DEFENSE=4

Everything in D.3 is kept unchanged. One new evidence source is added, and one
new decision path uses it.

**The observation.** A DAO travels hop by hop to the root. The first node that
receives it is the sender's real parent. If a DAO arrives directly from the
node that created it (the link-layer sender equals the DAO's source address)
and has a non-zero lifetime, its claimed parent must be the receiving node
itself. If it names someone else, the DAO is inconsistent. This check runs at
every node through the forwarding hook, and at the root through the DAO hook.
It adds no messages and costs a few byte comparisons.

**No-Path DAOs are exempt.** When an honest node changes parent, RPL sends a
No-Path DAO (lifetime 0) that names the old parent while travelling through the
new one. Without this exemption honest nodes were flagged in the first tests.

**Self-calibration.** During its 240 s calibration, each node counts how many
first-hop DAOs it saw (`fh`) and how many of them were inconsistent (`inc`),
honest nodes included. Its estimate of how often an honest child looks
inconsistent is `eps = (inc + 1) / (fh + 2)`, the same Beta-mean estimator the
paper uses for DIS in Eq. 4. The evidence from one inconsistent window is then
`attack = 1 - eps, uncertain = eps`. A node that saw a clean warm-up trusts the
check more; a node whose children flapped during warm-up trusts it less. Nothing
here is tuned by hand, which is the fix for Gap 2 (fixed, hand-tuned belief
values).

**Persistence.** An honest node produces short bursts of inconsistent DAOs,
about 3 within a quarter of a second, around a parent change, a race inside RPL.
A forger sends one every 2 s, window after window. So DAO evidence only starts
once inconsistent DAOs appear in two consecutive windows, and then accumulates
across consecutive windows with Dempster's rule. It resets to vacuous (no
evidence) after any clean window.

**Fusion and decision.** The DAO evidence is combined with u, v and e by
Dempster's rule. Algorithm 1 is applied first, exactly as in D.3. If Algorithm 1
says normal, a fifth path is checked: when DAO evidence exists and the fused
attack belief reaches 0.95 and exceeds the non-attack belief, the neighbor is
an attacker. The 0.95 level plays the role of a 5% error level and is not tuned
to the network. With no DAO evidence the proposed defense makes exactly the same
decisions as DIS-FDM.

**Mitigation.**
1. The attacker's DIS is dropped, as in DIS-FDM.
2. At most one DAO per window from the attacker is relayed.
3. Route repair: when the attacker's real parent relays a forged DAO from it,
   the parent rewrites the claimed parent to its own address, which is the
   truth, and fixes the ICMPv6 checksum. The root does the same for its direct
   children. This restores the root's route immediately instead of waiting up
   to about 15 minutes for the attacker's next honest DAO.

---

## Part E. Calibrating DIS-FDM's parent-change thresholds

Paper Eqs. 8 to 13: `TR = mu - alpha * sigma` of the time between parent changes,
separately for static and mobile nodes, under normal conditions. The paper does
not give alpha; alpha = 1 was used.

* Data: 20 attack-free runs (10 static, 10 with 30% mobile), intervals after the
  first 120 s (`analysis/calibrate_tr.py`).
* Static: 7484 intervals, mean 18.6 s, standard deviation 97.7 s.
* Mobile: 9153 intervals, mean 33.0 s, standard deviation 61.5 s.
* `mu - sigma` is negative for both, because parent changes come in bursts (many
  very short gaps and a long tail). A negative threshold would disable the
  secondary source. The fallback `TR = mu / 2` was used: 9.3 s static, 16.5 s
  mobile. The rule applied is written into `output/calibration/tr.json`.

---

## Part F. Places where the paper is ambiguous, and the choice made

| Issue in the paper | Choice made | Reason |
|---|---|---|
| Algorithm 1 counts a violation when `T_PC > TR`, but the text says frequent parent changes indicate an attack | Violation when `TPC < TR` (changes more frequent than normal) | Only this direction matches the paper's own reasoning in Section 4.2. |
| Table 7 lists 0/10/25/50% malicious nodes, but Sections 6.1 and 6.2 use 2, 5 and 10 attackers | Reproduction uses 2/5/10 and the interval sweep; the main matrix uses 0/10/25/50% as the proposal states | Published numbers exist only for the Section 6 settings. |
| "Traffic samples of size n" is not defined in time | 10 s windows | Equal to the normal DIS interval. |
| alpha in `TR = mu - alpha*sigma` not given | alpha = 1, fallback mu/2 (Part E) | Data-driven, recorded. |
| Belief tables have no row for 0 violations | 0 means no evidence (vacuous) | Zero violations is absence of evidence, not evidence of an attack. |
| MAC layer, link loss, traffic rate, attack start, mobility speeds not given | CSMA, Cooja default link success, 10 s traffic, attack at 300 s, 0.5 to 2 m/s | See B.2, B.3, B.5, B.8. |
| Power model not given | Radio power from Cooja energest with CC2420 currents (TX 17.7 mA, RX 20 mA, 3 V) | Cooja native motes report the CPU as always on, so only radio time is meaningful. |

---

## Part G. Build and run pipeline

1. `scripts/plan.py` writes the matrix as JSON lines.
2. `scripts/build_variants.py` compiles 22 firmware variants (5 root, 10 sensor,
   7 attacker), each in its own folder, cleaned before every build, inside the
   pinned Docker image.
3. `scripts/run_matrix.py` runs 12 simulations in parallel. For each run it
   writes `sim.csc` and `meta.json`, runs Cooja headless in a container named
   `twinrpl-<run>`, checks that the log ends with `TEST OK` at exactly 3600 s,
   parses the metrics into `result.json` and compresses the raw log.
4. `analysis/aggregate.py` builds all tables, figures and tests.

Speed on this laptop (16 threads): about 6 minutes of wall time per 60-minute
simulation with 12 in parallel, about 11 to 12 hours for the whole matrix.

---

## Part H. Metrics (proposal: Data Analysis Methods)

Measured on legitimate nodes over the attack phase (300 s to 3600 s):

| Metric | Definition |
|---|---|
| Upward PDR | data packets received by the root / data packets sent |
| Downward PDR | echo replies received back / packets that reached the root |
| End-to-end delay | mean time from send to arrival at the root (Cooja global clock) |
| Control overhead | total DIO messages sent by all nodes over the whole run (the paper's measure); DIS and DAO totals also recorded |
| Transmit power | 3 V x 17.7 mA x fraction of time the radio transmits, averaged over legitimate nodes |
| Radio power | transmit plus listen power (listen is always on with CSMA) |
| TPR (recall) | attackers blacklisted by at least one legitimate node / all attackers |
| FPR | legitimate nodes blacklisted by at least one node / all legitimate nodes |
| Precision | attackers blacklisted / all nodes blacklisted |
| Detection latency | mean over detected attackers of first blacklisting time minus 300 s |

---

## Part I. Statistics (proposal: Data Analysis Methods 3; RQ4)

* Every cell has 10 seeds. Tables report mean and standard deviation; CSV files
  and figures also give 95% confidence intervals (t distribution).
* Wilcoxon signed-rank test, paired by seed:
  * RQ2: combined attack against DIS-only and against DAO-only, no defense,
    one-sided (combined is worse).
  * RQ3/RQ4: proposed defense against DIS-FDM, Secure-RPL and RPL-MRC, two-sided,
    for every attack type, malicious ratio and topology.
* Effect size: matched-pairs rank-biserial correlation.
* Multiple comparisons: Holm correction within each family of tests.

---

## Part J. Problems met while building, and how each was fixed

| # | Problem | Cause | Fix |
|---|---|---|---|
| 1 | Pre-built firmware not found by Cooja | Cooja renames each mote type to a random `mtypeNNN` at load time | Cooja's build step copies the pre-built firmware to the name Cooja asks for (`firmware/install.mk`) |
| 2 | Build refused to start | Cooja passes a version stamp that a manual build must supply | `COOJA_VERSION=2023090701` added |
| 3 | 16 of 22 variants failed to compile | Warnings are errors in Contiki-NG; some helpers unused in some variants | Helpers compiled only in the variants that use them |
| 4 | Honest nodes flagged by the DAO check before the attack | No-Path DAOs legitimately name the old parent | Lifetime-0 DAOs exempt |
| 5 | Honest nodes still flagged | The new decision path fired on DIS plus energy evidence alone | Path only allowed when DAO evidence exists |
| 6 | Honest nodes still flagged | A DAO-rate bonus pushed one short burst past 0.95 | Rate bonus removed; two consecutive windows required |
| 7 | Downward delivery barely recovered after detection | Root kept the last forged route | Route repair by the true parent |
| 8 | Attack did not reduce upward delivery | CSMA always-on radio with retransmissions | Investigated; TSCH tested and rejected (B.8) |
| 9 | One run reported as failed although complete | Cooja crashes while shutting down its script thread | Success judged from the simulation log |
| 10 | Shared runs could start twice | Runner did not remove duplicates across plan files | Runs deduplicated by run ID |
| 11 | Matrix used 2/5/10 attackers | Drift from the proposal, which states 0/10/25/50% | Main matrix changed to 3/7/14 attackers; 2/5/10 kept only for RQ1 |
| 12 | RPL-MRC far weaker than the paper reports | First version was an approximation, original paper not yet available | Exact rule from Medjek et al. (2021) implemented; old RPL-MRC runs deleted and re-run (D.2) |

---

## Part K. Preliminary checks (not part of the reported results)

`output/preliminary/` keeps the engineering runs used to validate the system.
Some used earlier firmware versions, so they are evidence for the design
decisions only, not results.

* `smoke/`: first 10-minute runs; found problems 4 to 6.
* `verification/`: 20-minute DAO-only and combined runs, 5 attackers, 2 seeds.
  With route repair, downward delivery under the DAO attack went from 64% and
  84% (no defense, and DIS-FDM, which detected 0 of 5) to 98% and 99% (proposed,
  5 of 5 detected, 0 false alarms).
* `radio_loss/`: link success 1.0, 0.9 and 0.8 under CSMA; upward delivery
  about 100% in every case.
* `tsch/`: TSCH baseline broken without attack (B.8).
* `mrc_check/`: one 20-minute run confirming the corrected RPL-MRC (D.2).

---

## Part L. Results

This part is filled in from `output/results/` once the full matrix has finished.
