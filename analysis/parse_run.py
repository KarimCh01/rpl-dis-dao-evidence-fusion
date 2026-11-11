#!/usr/bin/env python3
import gzip
import json
import sys
from pathlib import Path

ATTACK_START_S = 300
V = 3.0
I_TX_MA = 17.7
I_RX_MA = 20.0


def open_log(run_dir):
    p = run_dir / "COOJA.testlog"
    if p.exists():
        return open(p, errors="replace")
    return gzip.open(run_dir / "COOJA.testlog.gz", "rt", errors="replace")


def parse(run_dir):
    run_dir = Path(run_dir)
    meta = json.loads((run_dir / "meta.json").read_text())
    attackers = set(meta["attacker_ids"])
    n = meta["nodes"]
    duration_s = meta["duration_min"] * 60
    legit = [i for i in range(2, n + 1) if i not in attackers]

    tx = {}
    rx = {}
    echo = {}
    stats_first = {}
    stats_last = {}
    stats_at_attack = {}
    flags = {}
    psw_times = {}
    calib = {}
    releases = {}
    policy = []
    energest_second = 1000000

    with open_log(run_dir) as f:
        for line in f:
            parts = line.split()
            if len(parts) < 3 or not parts[2].startswith("#"):
                continue
            try:
                t = int(parts[0]) / 1e6
                nid = int(parts[1])
            except ValueError:
                continue
            tag = parts[2]
            args = parts[3:]
            if tag == "#T":
                tx[(nid, int(args[0]))] = t
            elif tag == "#R":
                rx.setdefault((int(args[0]), int(args[1])), t)
            elif tag == "#E":
                echo.setdefault((nid, int(args[0])), t)
            elif tag == "#S":
                vals = [int(x) for x in args]
                stats_first.setdefault(nid, (t, vals))
                stats_last[nid] = (t, vals)
                if t <= ATTACK_START_S + 1:
                    stats_at_attack[nid] = (t, vals)
            elif tag == "#D":
                suspect = int(args[0])
                if nid == suspect:
                    continue
                rec = flags.setdefault(suspect, [])
                rec.append((t, nid, int(args[1])))
            elif tag == "#U":
                releases.setdefault(int(args[0]), []).append((t, nid))
            elif tag == "#G":
                policy.append((t, nid, int(args[0]), int(args[1])))
            elif tag == "#P":
                psw_times.setdefault(nid, []).append(t)
            elif tag == "#K":
                calib[nid] = [int(x) for x in args]
            elif tag == "#B":
                energest_second = int(args[4])

    res = {
        k: meta[k]
        for k in (
            "run_id",
            "seed",
            "nodes",
            "attackers",
            "attack_mode",
            "dis_interval",
            "defense",
            "mobile_frac",
            "duration_min",
        )
    }
    res["fdm_window"] = meta.get("fdm_window", 10)

    def pdr_window(t_from):
        sent = [(k, v) for k, v in tx.items() if k[0] in legit and v >= t_from]
        got = sum(1 for k, _ in sent if k in rx)
        return sent, got

    sent, got = pdr_window(ATTACK_START_S)
    res["pdr_up"] = got / len(sent) if sent else float("nan")
    delays = [rx[k] - v for k, v in sent if k in rx]
    res["delay_up_ms"] = 1000 * sum(delays) / len(delays) if delays else float("nan")
    reached = [k for k, _ in sent if k in rx]
    res["pdr_down"] = (
        (sum(1 for k in reached if k in echo) / len(reached))
        if reached
        else float("nan")
    )
    expected = len(legit) * (duration_s - ATTACK_START_S) / meta.get("send_s", 10)
    res["delivery_up"] = got / expected if expected else float("nan")
    rtt = [echo[k] - tx[k] for k in reached if k in echo]
    res["rtt_ms"] = 1000 * sum(rtt) / len(rtt) if rtt else float("nan")

    def total(idx, source):
        return sum(v[1][idx] for v in source.values())

    def total_phase(idx):
        s = 0
        for nid, (_, v) in stats_last.items():
            base = stats_at_attack.get(nid, (0, [0] * len(v)))[1]
            s += v[idx] - base[idx]
        return s

    res["dio_total"] = total(0, stats_last)
    res["dis_total"] = total(1, stats_last)
    res["dao_total"] = total(2, stats_last) + total(9, stats_last)
    res["dio_attack_phase"] = total_phase(0)
    res["dis_attack_phase"] = total_phase(1)
    res["dao_attack_phase"] = total_phase(2) + total_phase(9)
    res["parent_switches"] = total(7, stats_last)
    res["parent_switches_legit"] = sum(
        stats_last[i][1][7] for i in legit if i in stats_last
    )

    tx_s = []
    rx_s = []
    for i in legit:
        if i in stats_last:
            t_end, v = stats_last[i]
            tx_s.append(v[12] / energest_second / t_end)
            rx_s.append(v[13] / energest_second / t_end)
    if tx_s:
        dtx = sum(tx_s) / len(tx_s)
        drx = sum(rx_s) / len(rx_s)
        res["tx_duty_pct"] = 100 * dtx
        res["radio_power_mw"] = V * (I_TX_MA * dtx + I_RX_MA * drx)
        res["tx_power_mw"] = V * I_TX_MA * dtx
    else:
        res["tx_duty_pct"] = res["radio_power_mw"] = res["tx_power_mw"] = float("nan")

    res["legit_joined"] = sum(1 for i in legit if any(k[0] == i for k in tx))
    res["legit_total"] = len(legit)

    if meta["defense"] in (1, 3, 4, 5, 6, 7):
        flagged = set(flags)
        tp = len(attackers & flagged)
        fp = len(set(legit) & flagged)
        res["tp"] = tp
        res["fn"] = len(attackers) - tp
        res["fp"] = fp
        res["tn"] = len(legit) - fp
        res["tpr"] = tp / len(attackers) if attackers else float("nan")
        res["fpr"] = fp / len(legit) if legit else float("nan")
        res["precision"] = tp / (tp + fp) if (tp + fp) else float("nan")
        firsts = []
        for a in attackers:
            after = [r[0] for r in flags.get(a, ()) if r[0] >= ATTACK_START_S]
            if after:
                firsts.append(min(after))
        res["detect_latency_s"] = (
            (sum(firsts) / len(firsts) - ATTACK_START_S) if firsts else float("nan")
        )
        res["fp_before_attack"] = sum(
            1
            for i in legit
            if i in flags and min(r[0] for r in flags[i]) < ATTACK_START_S
        )
        res["blacklist_entries_legit"] = sum(len(flags[i]) for i in legit if i in flags)
        res["blacklist_entries_attacker"] = sum(
            len(flags[a]) for a in attackers if a in flags
        )
    else:
        for k in (
            "tp",
            "fn",
            "fp",
            "tn",
            "tpr",
            "fpr",
            "precision",
            "detect_latency_s",
            "fp_before_attack",
            "blacklist_entries_legit",
            "blacklist_entries_attacker",
        ):
            res[k] = float("nan")

    def isolated_frac(node):
        start = 240.0
        span = duration_s - start
        if span <= 0:
            return 0.0
        events = sorted(
            [(t, d, 1) for t, d, _ in flags.get(node, [])]
            + [(t, d, -1) for t, d in releases.get(node, [])]
        )
        holders = set()
        since = None
        total = 0.0
        for t, d, kind in events:
            if kind == 1:
                if not holders:
                    since = t
                holders.add(d)
            elif d in holders:
                holders.discard(d)
                if not holders:
                    total += max(0.0, t - max(since, start))
        if holders:
            total += max(0.0, duration_s - max(since, start))
        return total / span

    if meta["defense"] in (1, 3, 4, 5, 6, 7):
        res["legit_isolated_frac"] = (
            sum(isolated_frac(i) for i in legit) / len(legit) if legit else float("nan")
        )
        res["attacker_isolated_frac"] = (
            sum(isolated_frac(a) for a in attackers) / len(attackers)
            if attackers
            else float("nan")
        )
    else:
        res["legit_isolated_frac"] = res["attacker_isolated_frac"] = float("nan")
    if policy:
        by_report = {}
        for t, nid, iso, changed in policy:
            by_report.setdefault(round(t / 600), []).append(changed)
        res["policy_changes_last"] = sum(by_report[max(by_report)]) / len(
            by_report[max(by_report)]
        )
    res["_psw"] = {str(k): v for k, v in psw_times.items()}
    res["_calib"] = {str(k): v for k, v in calib.items()}
    res["_flags"] = {str(k): v for k, v in flags.items()}
    return res


if __name__ == "__main__":
    r = parse(sys.argv[1])
    print(json.dumps({k: v for k, v in r.items() if not k.startswith("_")}, indent=1))
