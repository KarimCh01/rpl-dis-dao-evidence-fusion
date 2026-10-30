#!/usr/bin/env python3
"""Record actual binaries, scenario definitions, tool versions, and source hashes."""

import datetime, hashlib, json, platform, subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "output/experiments/journal_extension"


def digest(p):
    return hashlib.sha256(p.read_bytes()).hexdigest()


registry = json.loads((ROOT / "build/variants.json").read_text())["variants"]
names = set()
import sys

sys.path.insert(0, str(ROOT / "scenarios"))
from gen_csc import variant_names

for plan in (
    "robustness",
    "references",
    "ablations",
    "profiling",
    "robservation",
    "scale_diagnostics",
    "timing_validation",
    "scale_full",
):
    if not (OUT / (plan + ".jsonl")).exists():
        continue
    for line in (OUT / (plan + ".jsonl")).read_text().splitlines():
        c = json.loads(line)
        v = variant_names(
            c["defense"],
            c["attack_mode"],
            c["dis_interval"],
            c.get("fdm_window", 10),
            c["nodes"],
            c.get("send_s", 10),
        )
        v.update(c.get("variant_overrides", {}))
        names.add(v["root"])
        names.add(v["cli0"])
        if c["mobile_frac"]:
            names.add(v["cli1"])
        if c["attack_mode"]:
            names.add(v["atk"])
records = []
for name in sorted(names):
    p = ROOT / "build/variants" / name / "build/cooja" / (name + ".cooja")
    if not p.exists():
        raise SystemExit(f"Missing prebuilt library: {p}")
    records.append(
        {
            "variant": name,
            "definitions": registry.get(name),
            "path": str(p.relative_to(ROOT)),
            "sha256": digest(p),
            "bytes": p.stat().st_size,
        }
    )
contiki = ROOT.parent / "contiki-ng-work/contiki-ng"
rev = subprocess.check_output(
    ["git", "-C", str(contiki), "rev-parse", "HEAD"], text=True
).strip()
engine_file = OUT / "execution_engine.json"
engine = json.loads(engine_file.read_text()) if engine_file.exists() else {}
docker = ["docker"] + (
    ["--context", engine["docker_context"]] if engine.get("docker_context") else []
)
try:
    image = json.loads(
        subprocess.check_output(
            docker
            + ["image", "inspect", engine.get("docker_image", "contiker/contiki-ng")],
            text=True,
        )
    )[0]
except Exception:
    image = {}
files = list((ROOT / "firmware").glob("*.[ch]")) + [
    ROOT / "firmware/Makefile",
    ROOT / "scenarios/gen_csc.py",
    ROOT / "scripts/run_matrix.py",
    ROOT / "patches/contiki-ng-hooks.patch",
]
record = {
    "recorded_utc": datetime.datetime.now(datetime.timezone.utc).isoformat(),
    "python": platform.python_version(),
    "execution_engine": engine,
    "platform": platform.platform(),
    "contiki_git_commit": rev,
    "docker_image_id": image.get("Id"),
    "docker_repo_digests": image.get("RepoDigests"),
    "variants": records,
    "current_source_sha256": {str(p.relative_to(ROOT)): digest(p) for p in files},
}
(OUT / "PROVENANCE.json").write_text(json.dumps(record, indent=2))
print(f"Recorded {len(records)} actually selected binary variants")
