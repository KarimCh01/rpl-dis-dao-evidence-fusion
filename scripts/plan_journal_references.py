#!/usr/bin/env python3
"""Matched attack-free counterfactuals retain RNG choices for attacker positions."""
import json
from pathlib import Path
from plan import cfg
ROOT=Path(__file__).resolve().parents[1];OUT=ROOT/'output/experiments/journal_extension'
keys=set()
for name in ('robustness','ablations','profiling','robservation'):
 for line in (OUT/(name+'.jsonl')).read_text().splitlines():
  c=json.loads(line)
  if c['attack_mode']==3:keys.add((c['seed'],c['mobile_frac'],c.get('rx_ratio',1.0)))
rows=[]
for seed,mobile,ratio in sorted(keys):
 r=cfg(0,7,3,mobile,0,seed)
 r['run_id']='jref_'+r['run_id']+f'_rx{int(ratio*100)}'
 r.update(experiment='resilience_reference',rx_ratio=ratio,dao_interval=2)
 rows.append(r)
(OUT/'references.jsonl').write_text(''.join(json.dumps(r)+'\n' for r in rows))
print('Matched attack-free references:',len(rows))
