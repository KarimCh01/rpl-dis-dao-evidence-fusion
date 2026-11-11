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
| Docker image | `contiker/contiki-ng`, created 2026-07-10 (ID `b14d5afb0a2a` in Docker Desktop, `0e20b334617f` in the native engine; same layers) | Official Contiki-NG toolchain. Pinning the image fixes compiler, Java and libraries. |
| Contiki-NG | commit `385d72a76` | Same OS family the paper states (Table 7: Contiki-NG/Cooja). |
| Cooja | commit `fabff3ee`, run headless with `--no-gui` | Scripted, repeatable runs, as the proposal requires. |
| Mote type | Cooja native motes | Fast enough to run about 2700 simulations, most of them one hour long, on a laptop. |
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
10 are used for every cell of the main campaign; the later studies use fresh
seeds 11 to 45 (Part L).

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
(`DEFENSE=0..7`, the `DEF_*` constants of `firmware/defense.h`): 0 none,
1 Secure-RPL, 2 RPL-MRC, 3 DIS-FDM, 4 AEF-RPL with the fixed decision rule
(AEF fixed), 5 Li-MSD, 6 the first learning version, 7 AEF-RPL as evaluated in
the paper. All legitimate nodes and the root run the same defense. Attackers
run no defense.

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

### D.4 AEF-RPL evidence model: DIS-FDM plus a self-calibrated DAO-consistency evidence source, with the fixed decision rule (AEF fixed), DEFENSE=4

Everything in D.3 is kept unchanged. One new evidence source is added, and one
new decision path uses it. Defense 4 keeps the fixed decision rule; the paper
calls it AEF fixed and uses it as the learning-off ablation of AEF-RPL (D.6).

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

### D.5 Li-MSD (Verma et al. 2024), DEFENSE=5

The DAO-specific baseline, implemented from Algorithms 1 to 3 of the paper.

**Detection.** Every parent counts the DAOs it receives from each child. Only
DAOs that the child itself created are counted (the link-layer sender equals
the DAO's source address). This is the paper's solution to the "victim node
problem": a parent that merely forwards an attacker's DAOs is never counted
against. When a child's count has reached the DAO receive threshold `beta`, the
next DAO from it puts it in the blacklist.

**Mitigation.** Every DAO whose originator is blacklisted is dropped without
further processing (the paper's SEARCH-BLACKLIST). DIS messages are not
affected: Li-MSD only watches DAOs.

**INITIALIZE.** As in the paper, Li-MSD becomes active at 120 s and clears all
counts and the blacklist then and every 1800 s after it, so a 60-minute run
has two periods (120 to 1920 s and 1920 s to the end).

**Choice of beta.** The paper chooses `beta` from attack-free runs without
giving a value for other networks. `analysis/calibrate_limsd.py` reads each
node's own DAO count (`dao_tx` in the `#S` lines, reported every 60 s) in the
20 attack-free calibration runs, measures how many DAOs each node sent in each
period, and sets `beta` to the largest value seen, so no honest node in the
calibration data exceeds it. The result is `beta = 94` (static nodes: mean 4,
maximum 94; mobile nodes: mean 31, maximum 73). Because `#S` is printed once a
minute, the period edges are accurate to about 60 s.

**Differences from the paper.** The paper's pseudocode has each parent receive
a DAO and forward it to its own preferred parent, as in storing mode. Here RPL runs in non-storing mode, so a
parent sees its children's DAOs in the forwarding hook and the root in its DAO
hook; the counting and blacklisting are the same. The paper's attacker replays
captured DAOs, while the DAO attacker here sends a forged DAO every 2 s, so it
also exceeds the count.

### D.6 AEF-RPL decision layer: on-node Q-learning, DEFENSE=6 and DEFENSE=7

The full proposed algorithm. Everything in D.4 is kept (evidence, self-calibration,
route repair); only the final decision changes. Defense 4 is the same algorithm with
the fixed decision rule, and serves as the ablation with learning switched off.

Two learning versions exist. Defense 6 is the first version, which follows the
proposal's learner exactly. Defense 7 is the final AEF-RPL, the one evaluated in
the paper; it adds two rules that the runs of the first version showed to be
necessary: a random exploratory action is drawn only for a neighbor that has DIS
or DAO evidence or is already isolated, so that exploration never isolates a
neighbor about which nothing is known, and an isolated neighbor is released only
after two consecutive calm windows (`RL_CALM_RELEASE` in `defense.c`). The 200
runs of defense 6 (plan `learning.jsonl`) are kept for traceability and are not
in the paper's tables. In the firmware the two versions are the macros
`DEF_AEF_RL` (6) and `DEF_AEF_RL2` (7); the names are the ones the firmware was
built with and stay unchanged because the run provenance hashes the source.

**Math first.** Before any simulation, `analysis/check_theory.py` checks the
proposal's claims numerically: the detection-delay bounds (every simulated delay
lies between `T_w` and `(k*+2) T_w`), the false-alarm bound (measured rate below
`L q^(k*+1)`), the learned policy with gamma = 0 (isolate when the probability that
the anomaly persists is above 1/2), the bound `|Q| <= 4`, and the exploration
schedule. All hold. One finding: because the learning rate never drops below 1/16,
states whose probability is only slightly above 1/2 (up to about 0.65) may be learned
as Accept. The error is always toward accepting, never toward isolating an honest
node.

**Per window, for each active neighbor** (it sent a DIS or an inconsistent DAO, has
DIS or DAO evidence, or is isolated):

1. Build the state `(c, beta, delta, iota)`: the DIS counter `u` (0 to 5), the fused
   attack belief quantized at 0.5, 0.8 and 0.95, whether DAO evidence exists, and
   whether the neighbor is isolated. 96 states.
2. If the neighbor had a decision in the previous window, give that decision its
   reward: +1 isolate and the anomaly persisted, -2 isolate and it did not, -1 accept
   and it persisted, 0 accept and it did not. "Persisted" means the DIS Traffic Load
   was above `T_DTL` or an inconsistent DAO arrived in this window. Then update
   `Q(s,a) += (r + Q_max(s')/2 - Q(s,a)) / n`, with `n` the visit count capped at 16.
3. Choose the action: Isolate if `c = 5`, Accept if the state is fully benign,
   otherwise epsilon-greedy (0.10 at 240 s, halved every 10 minutes, at least 0.01;
   in defense 7 the random draw is made only for neighbors with evidence or already
   isolated). When both actions have the same value, the fixed rule's action is
   taken, so an empty table behaves exactly like defense 4.
4. Isolate prints `#D` and applies the D.4 mitigation; Accept on an isolated
   neighbor releases it and prints `#U` (in defense 7 only after two consecutive
   calm windows). Isolation is therefore reversible.

Q values are 16-bit fixed point (8 fractional bits). The table and visit counts take
768 bytes, plus 12 bytes of greedy-action bits (780 bytes in all) and 3 bytes per
neighbor (last state, last action, calm counter). Every 600 s the node prints `#G`
with the number of states that changed their greedy action, which measures how fast
the policy settles. The code is in `firmware/rl.c`; it was also compiled on the host
and tested against the same theory (60 of 61 test states learned as predicted, the
remaining one is the near-threshold case above).

---

## Part D2. Support for 500 and 1000 nodes (RQ5, not completed)

The proposal planned the comparison at 500 and 1000 nodes as well. The firmware
and the scenario generator were extended for it as described below, but the
attack-free pilots at those sizes never formed stable bidirectional routes, so
the comparison was not run and every reported result is at 30 nodes (Part L.5).

**Node identifiers.** Cooja gives node `n` the link-layer address made of the
bytes `n >> 8` and `n & 0xff` repeated, and the IPv6 interface identifier is that
address with one bit flipped in its first byte. The firmware now reads a node's
16-bit ID from the last two bytes of either address. For IDs below 256 these are
exactly the bytes the 30-node version read, so nothing changes for the existing runs.

**Neighbor table.** The per-neighbor records were an array indexed by node ID
(at most 63 nodes). They are now 64 slots kept sorted by node ID. A slot is
created only for a real neighbor: a node heard sending a DIS, or a node whose own
DAO arrives directly. DAOs merely forwarded from further away are looked up but
never create a slot, so the root does not need one record per node. When all
slots are in use, an idle slot (no counts, no evidence, not isolated) is reused;
if none is idle the new neighbor is not tracked. Because the slots are visited in
ID order, the per-window processing happens in the same order as before, which
keeps even the learning layer's random draws in the same sequence.

**Attacker.** The forged parent is drawn from 1 to `NUM_NODES` (a build option,
30 by default) and written as a 16-bit address.

**Root.** In non-storing mode the root stores one downward route per node. The
large-network root variants (`v_root_d*_big`) raise Contiki-NG's limit from 300
to 1100 routes and the packet queue from 64 to 128.

**Placement at constant density.** The area grows with the number of nodes,
side `200 * sqrt(N / 30)`: 816 m at 500 nodes and 1155 m at 1000. Placing that
many nodes uniformly at random almost never gives a connected network, so the
nodes are added one at a time: a random point is kept only if it is within
45 m of a node already placed and at least 27 m from every placed node. The
spacing of 27 m was chosen so that the average number of neighbors within radio
range matches the 30-node networks (4.9 at 30 nodes, 4.8 at 500, 4.95 at 1000).
The 30-node layouts are generated exactly as before.

**Regression check.** Four existing 30-node runs (no defense, Secure-RPL,
DIS-FDM, AEF-RPL learning off; static and mobile; attackers forging DAOs) were
re-run with the new firmware into `output/verify/` and compared metric by metric
with the published results.

**Planned runs.** `scripts/plan.py` writes `timing.jsonl` (one 15-minute run at
500 and at 1000 nodes) and `scale.jsonl` (the combined attack with 25%
attackers: at 500 nodes, static and mobile, no defense, DIS-FDM, AEF fixed,
Li-MSD and AEF-RPL plus an exact reference run, 8 seeds; at 1000 nodes, static,
DIS-FDM and AEF-RPL plus the reference, 6 seeds; 114 runs). Run names end in
`_n500` or `_n1000` (and `_t15` for 15-minute runs). The 30-node analysis in
`aggregate.py` reads only 30-node, 60-minute runs. `scale.jsonl` was never run.

**What the pilots showed.** In the first 500- and 1000-node runs, only the nodes
within about 7 hops of the root joined (98 of 374 honest nodes at 500). A plain
500-node run with no attack and no defense showed the same limit, so it comes
from the network, not from the defenses. Sending data every 60 s instead of 10 s
(build option `SEND_INTERVAL_SEC`, run names ending in `_p60`) raised joining to
293 of 499 nodes and about 10 hops; more 6LoWPAN reassembly buffers (`BIG_NET`)
changed nothing. Nodes 11 or more hops away join the DODAG and send DIOs, but
none of their DAOs reaches the root, so they never become reachable. These
checks are in `output/preliminary/scale_checks/`.

The second campaign then ran eight attack-free 15-minute pilots (500 and 1000
nodes, seeds 1 and 2, native DIS periods of 10 and 60 s) against a predefined
gate (95% participation, 80% expected upward delivery, 90% conditional downward
delivery in every matched pilot). No setting passed, so the 114-run comparison
was not released. Traces with the stack warnings retained identified three
mechanisms: the source-routing header of long downward paths no longer fits the
first 6LoWPAN fragment, the CSMA neighbor queues (two by default) overflow, and
DAO retry exhaustion triggers local repairs that drop the routes
(`docs/SCALE_FAILURE_DIAGNOSIS.md`). Follow-up diagnostics that enlarged the
queues, bounded the DIO interval, separated upward from bidirectional traffic
and tried a structured grid layout are in `output/diagnostics/` and the
`docs/SCALE*.md` notes; none produced a validated bidirectional network at 500
nodes. The tooling is indexed in `CODE_AND_DATA.md`, section 5.

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

### E2. Sensitivity test on DIS-FDM's evidence window

The reproduction showed that with a 10 s window DIS-FDM stops working once
attackers send a DIS only every 15 s or 30 s: some windows then contain no
DIS, the consecutive counter `u` resets, and five consecutive violations are
never reached. The paper does not give its sample size, so this is a
consequence of a parameter the paper leaves open.

To measure how much this one parameter matters, the DIS-FDM interval sweep
(5 attackers, static, intervals 3 to 30 s, 10 seeds) is repeated with a 30 s
window (`DEF_WINDOW_SEC=30`, variants `v_*_d3*_w30`, plan
`output/plan/sensitivity.jsonl`, 50 runs). Everything else is unchanged.
These runs are kept out of the main analysis and reported separately in
`output/results/sensitivity_fdm_window.csv` and
`output/figures/sensitivity_fdm_window.png`.

---

## Part F. Places where the paper is ambiguous, and the choice made

| Issue in the paper | Choice made | Reason |
|---|---|---|
| Algorithm 1 counts a violation when `T_PC > TR`, but the text says frequent parent changes indicate an attack | Violation when `TPC < TR` (changes more frequent than normal) | Only this direction matches the paper's own reasoning in Section 4.2. |
| Table 7 lists 0/10/25/50% malicious nodes, but Sections 6.1 and 6.2 use 2, 5 and 10 attackers | Reproduction uses 2/5/10 and the interval sweep; the main matrix uses 0/10/25/50% as the proposal states | Published numbers exist only for the Section 6 settings. |
| "Traffic samples of size n" is not defined in time | 10 s windows | Equal to the normal DIS interval. Because the reproduction showed this choice decides whether slow floods (15 s and 30 s) are caught, a sensitivity test repeats the interval sweep with a 30 s window (Part E2). |
| alpha in `TR = mu - alpha*sigma` not given | alpha = 1, fallback mu/2 (Part E) | Data-driven, recorded. |
| Belief tables have no row for 0 violations | 0 means no evidence (vacuous) | Zero violations is absence of evidence, not evidence of an attack. |
| MAC layer, link loss, traffic rate, attack start, mobility speeds not given | CSMA, Cooja default link success, 10 s traffic, attack at 300 s, 0.5 to 2 m/s | See B.2, B.3, B.5, B.8. |
| Power model not given | Radio power from Cooja energest with CC2420 currents (TX 17.7 mA, RX 20 mA, 3 V) | Cooja native motes report the CPU as always on, so only radio time is meaningful. |

---

## Part G. Build and run pipeline

1. `scripts/plan.py` writes the matrix as JSON lines.
2. `scripts/build_variants.py` compiles the firmware variants (8 root, 16 sensor
   and 7 attacker variants for the 30-node study, 3 for the 30 s-window
   sensitivity test, and the large-network variants used only by the scale
   pilots), each in its own folder, cleaned before every build, inside the
   pinned Docker image.
3. `scripts/run_matrix.py` runs 12 simulations in parallel. For each run it
   writes `sim.csc` and `meta.json`, runs Cooja headless in a container named
   `twinrpl-<run>`, checks that the log ends with `TEST OK` at exactly 3600 s,
   parses the metrics into `result.json` and compresses the raw log.
4. `analysis/aggregate.py` builds all tables, figures and tests.
5. `scripts/verify_sample.py` re-runs a random sample of published runs into a
   separate folder and checks that every metric is identical. A check of one
   random run (`m1_k14_i3_mob0_d3_s10`) and a cross-engine check of
   `m1_k5_i3_mob0_d3_s1` (Docker Desktop against the native engine) both gave
   identical results.

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
| Detection latency | mean over detected attackers of the first blacklisting time at or after 300 s, minus 300 s |
| Attack Resilience Index (ARI) | completed round trips of the legitimate nodes after 300 s, divided by the same count in the matched attack-free reference run with the same seed, layout and mobile nodes (`analysis/metrics.py`) |
| Downward Recovery Time (DRT) | time from the first minute after 300 s in which the 3-minute trailing mean of completed round trips falls below 90% of its pre-attack level to the start of five consecutive minutes back above it; censored at the end of the run |

---

## Part I. Statistics (proposal: Data Analysis Methods 3; RQ5)

* Every cell of the main campaign has 10 seeds. Tables report mean and standard
  deviation; CSV files and figures also give 95% confidence intervals
  (t distribution).
* Wilcoxon signed-rank test, paired by seed:
  * RQ2: combined attack against DIS-only and against DAO-only, no defense,
    one-sided (combined is worse).
  * RQ3: AEF-RPL (defense 7) against DIS-FDM, Secure-RPL, RPL-MRC and Li-MSD,
    two-sided, for every attack type, malicious ratio and topology.
  * RQ4: AEF-RPL against AEF fixed (defense 4), two-sided.
* Effect size: matched-pairs rank-biserial correlation.
* Multiple comparisons: Holm correction within each family of tests (one
  comparison and one metric across its six attacker-fraction and topology
  conditions).
* Second campaign (fresh seeds): paired mean differences with 95% bootstrap
  intervals (10 000 resamples) and exact sign-flip tests, Holm-adjusted within
  each study (`analysis/analyze_journal_extension.py`).

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
| 13 | 11 runs failed overnight and the matrix stalled | The laptop suspended itself from 04:15 to 07:42; Docker Desktop's virtual machine did not recover | Docker Desktop restarted, incomplete runs deleted and re-run, matrix relaunched under `systemd-inhibit` so the machine cannot sleep while simulations run |
| 14 | Docker stopped responding again after the restart and the same runs failed | Docker Desktop's file-sharing layer stalled ("unable to inject events") under 12 parallel simulations after the suspend | The exact same image was exported from Docker Desktop and loaded into the native Docker Engine (identical layers). One finished simulation was re-run on the native engine and gave identical results. The rest of the matrix ran on the native engine, about five times faster |
| 15 | No test was significant | The Holm correction was applied across all 418 tests at once. With 10 seeds the smallest possible Wilcoxon p is 0.00195, so multiplying by up to 418 removed every result | Holm applied within each family of related tests: one comparison and one metric across its 6 conditions (3 malicious levels x 2 topologies), the usual definition of a family |
| 16 | Verification reported 6 of 10 runs as different | Defenses that do not detect (none, RPL-MRC) have empty detection fields, and an empty value never equals another empty value in Python | Two empty values now count as equal; all 10 re-runs identical |

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
* `scale_checks/`: the first 500- and 1000-node pilots (Part D2).
* `learning_fp_extension/`: the 20 benign mobile runs on fresh seeds 11 to 20
  (learning on and off) used for the false-isolation comparison of H4; these
  are reported results, kept here because they were run outside the plan files
  of the main campaign.

---

## Part L. Results

The study comprises 2720 simulation runs in three groups:

* the main campaign, 1960 runs on seeds 1 to 10 in `output/runs/`: 1280 unique
  runs from the calibration (20), reproduction (320) and main (1000) plans,
  where runs shared between plans were executed once, 50 sensitivity runs
  (Part E2), 200 Li-MSD runs, 200 runs of the first learning version (defense
  6), 200 runs of the final AEF-RPL (defense 7) and 30 exact reference runs for
  the ARI in mobile networks;
* 20 benign mobile runs on fresh seeds 11 to 20 (learning on and off) in
  `output/preliminary/learning_fp_extension/`;
* the second campaign, 740 runs on fresh seeds 21 to 45 in
  `output/experiments/journal_extension/`: attack-rate robustness (240),
  component ablations (240), matched attack-free references (70), reception
  loss (120), host callback cost (60), two 10-minute injection-trace runs and
  the eight attack-free 500- and 1000-node pilots of Part D2 (seeds 1 and 2).

All runs except the eight pilots are 30-node networks, and all except the pilots
and the two trace runs last 60 simulated minutes. Every run is complete and has
the planned number of attackers and mobile nodes. Ten published runs drawn at
random were re-run from scratch and all ten gave identical metrics. Full
tables: `output/results/summary.md`; every number below comes from
`output/results/summary_by_condition.csv`, `resilience.csv`, the `stats_*.csv`
files and `output/hypotheses/evidence.json`. Values are means over 10 seeds.
AEF-RPL below is defense 7; AEF fixed is defense 4.

A note on mobility. With 30% of nodes moving, even the attack-free network
delivers only about 70% of the packets nodes would send if always connected
(static: 100%), because a node that walks out of range has no route for a
while. This affects every defense equally, so comparisons inside the same
topology remain fair.

### L.1 RQ1 and H1: reproduction of DIS-FDM

| Setting (static) | Paper | This study |
|---|---|---|
| DIO, no attack | 590 | 1245 |
| DIO, 5 attackers at 3 s, no defense | 4080 (6.9 x no attack) | 10451 (8.4 x) |
| DIS-FDM reduction of that overhead | 83.5% (673) | 77.5% (2348) |
| RPL-MRC reduction | 83.0% (692) | 65.6% (3597) |
| DIS-FDM below RPL-MRC, 2 / 5 / 10 attackers | 6.9% / 21.1% / 36.3% | 35.0% / 34.7% / 20.7% |
| Upward delivery under attack | falls to 67% to 83% | stays at 100% |
| Delay under attack | rises to 304 to 362 ms | stays at about 70 ms |

* Reproduced: the attack multiplies control overhead several times; DIS-FDM
  removes most of it and does better than RPL-MRC at every attacker count.
* Not reproduced: the loss of delivery and the rise in delay (Part B.8: with the
  default CSMA MAC the network absorbs the DIO storm); absolute DIO counts are
  about twice the paper's, so ratios are compared, not raw counts.
* DIS-FDM with a 10 s window stops working against slow floods: at 15 s and 30 s
  intervals it detects no attacker and the overhead equals no defense. With a
  30 s window it detects 98% (15 s) and 88% (30 s) of attackers and cuts the
  overhead to 3139 and 4147 DIO (no defense: 8549 and 6665), while behaving like
  the 10 s window at 3 to 10 s. The paper's claim of success at every interval
  therefore depends on a sample size it does not report.
* H1 is partly supported: the overhead trends and the ranking of the defenses
  are reproduced; the delivery and delay effects are not.

### L.2 RQ2 and H2: combined attack against single attacks (no defense)

Static network, 25% malicious nodes:

| Attack | Downward delivery | DIO messages | Transmit power (mW) |
|---|---|---|---|
| DIS flooding | 99.8% | 11684 | 0.146 |
| DAO manipulation | 80.1% | 1901 | 0.294 |
| Combined | 79.6% | 10151 | 0.322 |

One-sided Wilcoxon, Holm-corrected within each comparison and metric:

* Combined against DIS-only: downward delivery significantly lower in 6 of 6
  conditions and transmit power significantly higher in 6 of 6.
* Combined against DAO-only: DIO overhead significantly higher in 5 of 6.
* Combined is not worse than DAO-only on downward delivery, and not worse than
  DIS-only on DIO overhead.

H2 is partly supported: the combined attack causes both kinds of damage at
once, so it is significantly worse than each single attack on the kind of
damage that attack does not cause (downward delivery and ARI against DIS-only
in 6 of 6 conditions, DIO overhead against DAO-only in 5 of 6). It does not
amplify either kind of damage beyond what the corresponding single attack
already causes.

### L.3 RQ3 and H3: AEF-RPL against DIS-FDM

| Condition | Metric | DIS-FDM | AEF fixed (4) | AEF-RPL (7) |
|---|---|---|---|---|
| Combined, 25%, static | downward delivery | 77.2% | 97.4% | 98.3% |
| Combined, 25%, static | ARI | 0.71 | 0.92 | 0.92 |
| Combined, 25%, static | transmit power | 0.284 mW | 0.153 mW | 0.154 mW |
| Combined, 25%, static | detection latency | 50.2 s | 33.0 s | 26.4 s |
| Combined, 25%, static | TPR / FPR | 97.1% / 8.6% | 97.1% / 7.7% | 97.1% / 16.8% |
| Combined, 50%, static | downward delivery | 67.5% | 88.5% | 87.5% |
| Combined, 50%, static | ARI | 0.44 | 0.73 | 0.76 |
| Combined, 25%, mobile | downward delivery | 80.8% | 98.1% | 96.4% |
| Combined, 25%, mobile | detection latency | 45.2 s | 34.9 s | 21.0 s |
| DAO only, 25%, static | TPR | 11.4% | 95.7% | 92.9% |
| DAO only, 25%, static | precision | 13.8% | 89.7% | 83.6% |
| DAO only, 25%, static | downward delivery | 81.1% | 98.4% | 97.6% |

Two-sided Wilcoxon, Holm-corrected within each comparison and metric
(6 conditions), AEF-RPL against DIS-FDM:

* Combined attack: downward delivery and ARI are higher in 6 of 6 conditions,
  all at the smallest attainable Holm-adjusted p of 0.012; ARI improved in every
  seed of every condition. Downward delivery is also higher than Li-MSD's,
  Secure-RPL's and RPL-MRC's in 6 of 6. TPR and precision are not higher in any
  condition (0 of 6), and FPR is not significantly higher in any condition (0 of
  6): DIS-FDM already catches the combined attackers through their DIS flood.
* DAO-only attack: TPR is significantly higher in 4 of 6 conditions, and
  downward delivery in 6 of 6; DIS-FDM has no DAO evidence at all.
* DIS-only attack: no significant difference in any metric, as designed: with no
  DAO evidence the evidence model makes exactly DIS-FDM's decisions.
* Detection latency is lower in 6 of 6 combined conditions (26.4 s against
  50.2 s with 7 static attackers).
* Cost: upward delivery is significantly lower in the three static combined
  conditions (Holm p <= 0.02), by 0.7 to 1.1 percentage points (98.8% against
  99.8% with 7 attackers), and not significantly in the mobile ones.
* The component ablation on fresh seeds 31 to 40 locates the service gain:
  switching off route repair while keeping detection and blacklisting lowers
  downward delivery from 97.6% to 81.8% (static) and from 98.3% to 81.5%
  (mobile), close to the unprotected level; switching off the fused DAO mass
  changes delivery by less than one point; one-window instead of two-window DAO
  evidence raises the static FPR from 11.8% to 20.5%.

H3 as pre-specified ("higher detection accuracy against the combined attack",
decided on TPR, precision and FPR) is not supported. Resilience is improved:
downward delivery and ARI are higher in every condition, detection is faster,
and detection accuracy is higher against DAO manipulation alone, which DIS-FDM
cannot see. The gain comes mainly from the selective DAO repair that follows
detection.

### L.4 RQ4 and H4: learning against the fixed rule

AEF-RPL (defense 7) against AEF fixed (defense 4), same tests:

* Mean detection latency is lower in 6 of 6 combined-attack conditions and
  significantly so in 5 of them (Holm p at most 0.023), by 20 to 27% in static
  networks (26.4 s against 33.0 s with 7 attackers) and by 31 to 49% in mobile
  networks (21.0 s against 34.9 s with 7 attackers). With 14 mobile attackers
  the 31% reduction has Holm p = 0.064.
* ARI is not lower in any condition (0 of 6).
* FPR is not lower in any of the 8 tested conditions (0 of 8); the mean FPR is
  higher with learning in 7 of the 8, but no increase is significant. In the
  20 benign mobile runs on fresh seeds, FPR is 42.41% with learning and 42.07%
  without (p = 1.0), and in 9 of 10 seeds both versions flag the same number of
  honest nodes. The blacklist lines show why: in attack-free mobile runs 74.8%
  of the falsely isolated honest nodes are first isolated by a saturated DIS
  counter and 23.6% by the DIS-FDM rule that combines the DIS and parent-change
  counters (`output/hypotheses/false_isolation_reasons.csv`). A moving honest
  node looks like a DIS flooder, and because the reward is computed from the
  same indicators, the learner is rewarded for isolating it.
* Policy stability (states whose greedy action changed per 10-minute report, in
  the last 10 minutes): 0.28 of 96 states under the combined attack and 0 with
  no attack in static networks; 1.9 and 1.7 in mobile networks.

H4 ("learning lowers FPR without lowering ARI") is not supported. The latency
reduction, significant in 5 of 6 conditions, is the one gain of the learning
layer.

### L.5 RQ5 and H5: consistency across conditions

* The service gain (downward delivery, ARI) is significant in each of the
  three static and three mobile conditions of the main campaign; with 10 seeds
  the strongest possible Wilcoxon result is p = 0.00195 before correction and
  0.012 after Holm correction over six conditions, and this gain reaches it.
  The latency gain is significant in 5 of the 6 conditions (not with 14 mobile
  attackers).
* On fresh seeds 21 to 30 at the default attack rate, AEF-RPL delivers 95.7%
  (static) and 98.0% (mobile) downward against 78.7% and 82.8% for DIS-FDM,
  paired differences of 17.0 and 15.2 points with bootstrap intervals above
  zero, and every seed favors AEF-RPL.
* Across attack rates and reception loss (12 cells), the paired difference with
  DIS-FDM is positive with a bootstrap interval above zero in 10 of 12. The two
  remaining cells use the slowest attack (DIS and DAO every 30 s), where every
  configuration, including no defense, delivers 80 to 86% downward: AEF-RPL
  still identifies the attackers, but detection no longer translates into
  restored service.
* 500 and 1000 nodes were not tested (Part D2).

H5 is partly supported: the service gain holds across seeds, attacker
fractions, mobility, attack rates up to 10 s and reception loss at 30 nodes,
and the latency gain in 5 of 6 conditions; the larger networks remain untested.

### L.6 Further findings

* DIS-FDM raises many false alarms under mobility: with no attacker at all it
  blacklists 43.4% of legitimate nodes in the mobile topology (0% when static).
  A moving node that loses its parent keeps sending DIS and looks like a slow
  flood. AEF-RPL inherits this (42.4% with the fixed rule). The paper evaluates
  mobility but reports no false-positive rate, which is Gap 3 of the proposal.
* Secure-RPL is strong against fast DIS floods: no false alarms anywhere and
  faster detection (12 to 25 s) than DIS-FDM or AEF fixed. It does
  nothing against floods slower than its 5 s gap (6 s and above) and nothing
  against DAO manipulation.
* RPL-MRC, implemented exactly as published, cuts overhead strongly, including
  under mobility (5326 against 9321 DIO with no attack), but it identifies no
  attacker and does not help against DAO manipulation.

### L.7 Limitations

* The MAC layer: results use Contiki-NG's CSMA. The paper's delivery and power
  effects need a duty-cycled MAC it does not name; TSCH with the minimal
  schedule could not form a usable baseline.
* Parameters the paper leaves open (Part F) influence DIS-FDM's absolute
  performance, as the window sensitivity test shows.
* RPL-lite non-storing mode only; 30 nodes, since the 500- and 1000-node
  condition could not be run (Part D2); 10 seeds per condition in the main
  campaign, which limits the smallest attainable p-value to 0.00195.
* The DAO-consistency check relies on the first hop being an honest node; an
  attacker whose parent is also an attacker is not caught by it.
* False isolation under mobility is inherited from DIS-FDM's DIS evidence and is
  not reduced by the learning layer (L.4).
* The host callback timings and compiled-object sizes are simulator-host
  measurements, not mote runtime, flash, RAM or energy.
