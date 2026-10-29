#!/usr/bin/env python3
"""Freeze fresh-seed rate-robustness scenarios without changing the main matrix."""
import json
from pathlib import Path
from plan import cfg
ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'output/experiments/journal_extension'
OUT.mkdir(parents=True, exist_ok=True)
variants = {}
rows = []
for dis, dao in ((3, 2), (10, 10), (30, 30)):
    name = f'v_journal_atk_dis{dis}_dao{dao}'
    variants[name] = f'ROLE=2,ATTACK_MODE=3,ATTACK_DIS_INTERVAL={dis},ATTACK_DAO_INTERVAL={dao}'
    for mobile in (0.0, 0.3):
        for seed in range(21, 31):
            for defense in (0, 3, 5, 7):
                row = cfg(3, 7, dis, mobile, defense, seed)
                row['run_id'] = 'journal_' + row['run_id'] + f'_dao{dao}'
                row.update(dao_interval=dao, experiment='rate_robustness',
                           variant_overrides={'atk': name})
                rows.append(row)
(OUT/'variants.json').write_text(json.dumps(variants, indent=2))
(OUT/'robustness.jsonl').write_text(''.join(json.dumps(r)+'\n' for r in rows))
print(f'Frozen {len(rows)} paired robustness runs, seeds 21–30; 60 minutes each')
