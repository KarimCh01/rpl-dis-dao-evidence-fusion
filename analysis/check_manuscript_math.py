#!/usr/bin/env python3
"""Reproducible numerical checks of the paper's conditional derivations.

The written algebra supplies the proofs. These finite checks neither establish
the assumptions in the network nor certify the complete detection policy.
"""

import itertools
import json
import math
from pathlib import Path
import numpy as np
import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "output/theory/manuscript_derivations"


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    accumulation = []
    for eps in (0.1, 0.25, 0.5, 0.75, 0.9):
        k = math.ceil(math.log(0.05) / math.log(eps))
        u = 1.0
        for _ in range(k):
            u *= eps
        assert abs(u - eps**k) < 1e-12
        assert 1 - u >= 0.95 - 1e-12
        assert k == 1 or 1 - eps ** (k - 1) < 0.95
        accumulation.append(
            dict(
                epsilon=eps,
                contributions=k,
                hit_windows=k + 1,
                delay_lower_s=10 * k,
                delay_upper_s=10 * (k + 1),
            )
        )
    rng = np.random.default_rng(20261021)
    for _ in range(10000):
        a, b, u = rng.dirichlet(np.ones(3))
        eps = rng.uniform(0.001, 0.999)
        k = int(rng.integers(1, 40))
        x = eps**k
        denominator = 1 - b + b * x
        lhs = (a + u * (1 - x)) / denominator
        rhs = (1 - b - u * x) / denominator
        assert abs(lhs - rhs) < 1e-10
        cutoff = (1 - b) * 0.05 / (u + 0.95 * b)
        assert (lhs >= 0.95) == (x <= cutoff)
    false = []
    L = 12
    r = 6
    sequences = list(itertools.product((0, 1), repeat=L))
    alarm = []
    for sequence in sequences:
        streak = 0
        hit = False
        for value in sequence:
            streak = streak + 1 if value else 0
            hit |= streak >= r
        alarm.append(hit)
    for q in (0.05, 0.1, 0.2, 0.3):
        probability = sum(
            q ** sum(s) * (1 - q) ** (L - sum(s)) for s, h in zip(sequences, alarm) if h
        )
        bound = min(1, (L - r + 1) * q**r)
        assert probability <= bound + 1e-12
        false.append(
            dict(
                windows=L,
                required_run=r,
                q=q,
                exact_probability=probability,
                union_bound=bound,
            )
        )
    qvalues = np.zeros((96, 2), dtype=np.int64)
    for _ in range(100000):
        s = int(rng.integers(96))
        a = int(rng.integers(2))
        n = int(rng.integers(1, 17))
        reward = int(rng.choice([-512, -256, 0, 256]))
        next_state = int(rng.integers(96))
        target = reward + int(int(qvalues[next_state].max()) / 2)
        qvalues[s, a] += int(int(target - qvalues[s, a]) / n)
        assert -1024 <= qvalues[s, a] <= 512
    for pi in np.linspace(0, 1, 101):
        assert abs((3 * pi - 2) - (-pi) - (4 * pi - 2)) < 1e-12
    report = dict(
        accumulation=accumulation,
        conflicting_mass_checks=10000,
        false_alarm_exact_enumeration=false,
        fixed_point_updates=100000,
        all_checks_pass=True,
        scope="Conditional mathematical properties; not whole-detector accuracy or convergence.",
    )
    (OUT / "checks.json").write_text(json.dumps(report, indent=2))
    plt.rcParams.update(
        {
            "font.size": 8,
            "pdf.fonttype": 42,
            "axes.spines.top": False,
            "axes.spines.right": False,
        }
    )
    fig, axes = plt.subplots(1, 2, figsize=(7, 2.65))
    xs = np.linspace(0.05, 0.95, 100)
    ks = np.ceil(np.log(0.05) / np.log(xs))
    axes[0].step(xs, 10 * ks, where="mid", label="Lower envelope", color="#32638e")
    axes[0].step(
        xs, 10 * (ks + 1), where="mid", label="Upper envelope", color="#bc342d"
    )
    axes[0].set(
        xlabel="Fixed DAO uncertainty ε",
        ylabel="Conditional channel delay (s)",
        title="Persistent observed inconsistencies",
    )
    axes[0].legend(fontsize=7)
    q = np.linspace(0.005, 0.4, 100)
    bound = np.minimum(1, 332 * q**6)
    axes[1].semilogy(q, bound, color="#32638e")
    axes[1].set(
        xlabel="Independent benign hit probability q",
        ylabel="DAO-channel union bound",
        title="337 windows; required hit run = 6",
    )
    fig.tight_layout()
    for suffix in ("pdf", "png"):
        fig.savefig(
            ROOT / "full_paper/generated" / ("conditional_math_bounds." + suffix),
            dpi=220,
            bbox_inches="tight",
        )
    plt.close(fig)
    print(
        "Conditional formula checks passed; no network-level accuracy/convergence guarantee."
    )


if __name__ == "__main__":
    main()
