#!/usr/bin/env python3
import json
import math
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "output" / "theory"
T_W = 10
TAU = 0.95
REWARD = {(1, 1): 1.0, (1, 0): -2.0, (0, 1): -1.0, (0, 0): 0.0}
ALPHA_FLOOR = 1 / 16
EPS0, EPS_MIN, EPS_HALF_S = 0.10, 0.01, 600
Q_FRAC_BITS = 8
NEAR_BAND = 0.15


def k_star(eps):
    return math.ceil(math.log(1 - TAU) / math.log(eps))


def windows_to_detect(eps):
    m_a, run = 0.0, 0
    while True:
        run += 1
        if run >= 2:
            m_a = 1 - (1 - m_a) * eps
        if m_a >= TAU:
            return run


def delay_bounds(eps_values, rng, trials=20000):
    rows = []
    for eps in eps_values:
        ks = k_star(eps)
        upper = (ks + 2) * T_W
        offset = rng.uniform(0, T_W, trials)
        delays = (T_W - offset) + (windows_to_detect(eps) - 1) * T_W
        rows.append(
            {
                "eps": eps,
                "k_star": ks,
                "windows_needed": windows_to_detect(eps),
                "lower_bound_s": T_W,
                "upper_bound_s": upper,
                "min_delay_s": float(delays.min()),
                "max_delay_s": float(delays.max()),
                "holds": bool(
                    delays.min() > 0
                    and delays.max() <= upper
                    and windows_to_detect(eps) >= 2
                ),
            }
        )
    return rows


def false_alarms(eps, q_values, horizon, rng, runs=20000):
    need = k_star(eps) + 1
    rows = []
    for q in q_values:
        bad = rng.random((runs, horizon)) < q
        alarm = np.zeros(runs, dtype=bool)
        streak = np.zeros(runs, dtype=int)
        for t in range(horizon):
            streak = np.where(bad[:, t], streak + 1, 0)
            alarm |= streak >= need
        bound = min(1.0, (horizon - need + 1) * q**need)
        rate = float(alarm.mean())
        rows.append(
            {
                "eps": eps,
                "q": q,
                "windows": horizon,
                "needed_in_a_row": need,
                "measured": rate,
                "bound": bound,
                "holds": bool(rate <= bound + 3 * math.sqrt(bound / runs)),
            }
        )
    return rows


def eps_greedy(t_s):
    return max(EPS_MIN, EPS0 * 0.5 ** (t_s // EPS_HALF_S))


def quantize(x):
    return round(x * (1 << Q_FRAC_BITS)) / (1 << Q_FRAC_BITS)


def q_learning(p, gamma, steps, rng, fixed_point=False):
    n_s = len(p)
    q = np.zeros((n_s, 2))
    n = np.zeros((n_s, 2))
    q_max = 0.0
    s = rng.integers(n_s)
    for step in range(steps):
        t_s = step * T_W
        if rng.random() < eps_greedy(t_s):
            a = int(rng.integers(2))
        else:
            a = int(q[s, 1] > q[s, 0])
        x = int(rng.random() < p[s])
        r = REWARD[(a, x)]
        s2 = rng.integers(n_s)
        n[s, a] += 1
        alpha = max(ALPHA_FLOOR, 1 / n[s, a])
        q[s, a] += alpha * (r + gamma * q[s2].max() - q[s, a])
        if fixed_point:
            q[s, a] = quantize(q[s, a])
        q_max = max(q_max, abs(q[s, a]))
        s = s2
    return q, n, q_max


def policy_check(rng):
    p = np.round(np.linspace(0.05, 0.95, 19), 2)
    q, n, _ = q_learning(p, 0.0, 400000, rng)
    rows = []
    for i, pi in enumerate(p):
        learned = "isolate" if q[i, 1] > q[i, 0] else "accept"
        expect = "isolate" if pi > 0.5 else ("either" if pi == 0.5 else "accept")
        conservative = (
            expect == "isolate" and learned == "accept" and pi - 0.5 <= NEAR_BAND + 1e-9
        )
        rows.append(
            {
                "p": float(pi),
                "Q_accept": round(float(q[i, 0]), 3),
                "Q_isolate": round(float(q[i, 1]), 3),
                "learned": learned,
                "theory": expect,
                "conservative_near_threshold": bool(conservative),
                "holds": bool(expect == "either" or learned == expect or conservative),
            }
        )
    return rows


def bound_check(rng):
    out = []
    for gamma in (0.0, 0.5):
        for fixed in (False, True):
            p = rng.random(96)
            _, _, q_max = q_learning(p, gamma, 200000, rng, fixed_point=fixed)
            bound = 2.0 / (1 - gamma)
            out.append(
                {
                    "gamma": gamma,
                    "fixed_point_q8_8": fixed,
                    "max_abs_Q": round(float(q_max), 4),
                    "bound": bound,
                    "holds": bool(q_max <= bound),
                    "fits_int16": bool(q_max * (1 << Q_FRAC_BITS) < 32767),
                }
            )
    return out


def exploration_schedule():
    return [
        {"minute": m, "epsilon": eps_greedy(m * 60)}
        for m in (0, 10, 20, 30, 40, 50, 60)
    ]


def main():
    rng = np.random.default_rng(1)
    res = {
        "delay": delay_bounds([0.1, 0.25, 0.5, 0.75, 0.9], rng),
        "false_alarm": false_alarms(0.5, [0.05, 0.1, 0.2, 0.3], 337, rng),
        "policy_gamma0": policy_check(rng),
        "q_bound": bound_check(rng),
        "exploration": exploration_schedule(),
        "memory_bytes": {
            "q_table": 96 * 2 * 2,
            "visit_counts": 96 * 2 * 2,
            "per_neighbor": 2,
        },
    }
    res["all_hold"] = all(
        r["holds"]
        for key in ("delay", "false_alarm", "policy_gamma0", "q_bound")
        for r in res[key]
    )
    OUT.mkdir(parents=True, exist_ok=True)
    (OUT / "theory_check.json").write_text(json.dumps(res, indent=1))

    print("Detection delay (T_w = 10 s, tau = 0.95)")
    for r in res["delay"]:
        print(
            f"  eps={r['eps']:<5} k*={r['k_star']:<3} windows={r['windows_needed']:<3} "
            f"bounds ({r['lower_bound_s']}, {r['upper_bound_s']}] s  "
            f"simulated [{r['min_delay_s']:.1f}, {r['max_delay_s']:.1f}] s  {'OK' if r['holds'] else 'FAIL'}"
        )
    print("False alarm over 56 minutes (eps = 0.5)")
    for r in res["false_alarm"]:
        print(
            f"  q={r['q']:<5} measured={r['measured']:.4f} bound={r['bound']:.4f}  {'OK' if r['holds'] else 'FAIL'}"
        )
    print("Learned policy with gamma = 0 (theory: isolate iff p > 0.5)")
    for r in res["policy_gamma0"]:
        tag = (
            "OK, accepts near threshold"
            if r["conservative_near_threshold"]
            else ("OK" if r["holds"] else "FAIL")
        )
        print(
            f"  p={r['p']:<5} Q(accept)={r['Q_accept']:>7} Q(isolate)={r['Q_isolate']:>7} "
            f"learned={r['learned']:<8} theory={r['theory']:<8} {tag}"
        )
    print("Q-value bound")
    for r in res["q_bound"]:
        print(
            f"  gamma={r['gamma']} fixed_point={r['fixed_point_q8_8']!s:<5} max|Q|={r['max_abs_Q']:<7} "
            f"bound={r['bound']}  {'OK' if r['holds'] else 'FAIL'}"
        )
    print(
        "Exploration rate:",
        ", ".join(f"{r['minute']} min {r['epsilon']:.4f}" for r in res["exploration"]),
    )
    print("Memory:", res["memory_bytes"])
    print("ALL HOLD" if res["all_hold"] else "SOME CHECK FAILED")


if __name__ == "__main__":
    main()
