#!/usr/bin/env python3
"""Release the full scale matrix only after all matched feasibility gates pass."""
import json
from pathlib import Path
from plan import scale
ROOT=Path(__file__).resolve().parents[1];OUT=ROOT/'output/experiments/journal_extension'
gate=json.loads((OUT/'analysis/scale_gate.json').read_text())
if not gate['full_scale_matrix_authorized_by_evidence']:
 print('Full scale comparison remains gated: route feasibility not established.')
 raise SystemExit(0)
period=next(p for p in (10,60) if all(r['passes_gate'] for r in gate['pilots'] if r['native_dis_interval_s']==p))
tr=json.loads((ROOT/'output/calibration/tr.json').read_text());beta=json.loads((ROOT/'output/calibration/limsd.json').read_text())['beta']
variants={};mapping={}
for defense in (0,3,4,5,7):
 group={}
 for key,role,mob in [('root',0,0),('cli0',1,0),('cli1',1,1)]:
  name=f'v_jscalefull_d{defense}_{key}'
  variants[name]=(f'ROLE={role},DEFENSE={defense},NODE_MOBILE={mob},SEND_INTERVAL_SEC=60,BIG_NET=1,'
   f'ROOT_ROUTES=1100,ROOT_QUEUEBUF=128,SCALE_DIAGNOSTICS=1,APP_RPL_DIS_INTERVAL_SEC={period},'
   f'TR_STATIC_MS={tr["tr_static_ms"]},TR_MOBILE_MS={tr["tr_mobile_ms"]},LIMSD_BETA={beta}')
  group[key]=name
 mapping[defense]=group
for nodes in (500,1000):
 name=f'v_jscalefull_atk_n{nodes}'
 variants[name]=(f'ROLE=2,ATTACK_MODE=3,ATTACK_DIS_INTERVAL=3,ATTACK_DAO_INTERVAL=2,NUM_NODES={nodes},'
  f'SEND_INTERVAL_SEC=60,BIG_NET=1,ROOT_ROUTES=1100,ROOT_QUEUEBUF=128,APP_RPL_DIS_INTERVAL_SEC={period}')
rows=scale(list(range(51,59)),list(range(51,57)))
for r in rows:
 r['run_id']='jscalefull_'+r['run_id']+f'_disnative{period}'
 r.update(experiment='scale_comparison' if r['attack_mode'] else 'resilience_reference',
   native_dis_interval_s=period,dao_interval=2,
   variant_overrides=dict(mapping[r['defense']],atk=f'v_jscalefull_atk_n{r["nodes"]}'))
(OUT/'scale_full.jsonl').write_text(''.join(json.dumps(r)+'\n' for r in rows))
(OUT/'scale_full_variants.json').write_text(json.dumps(variants,indent=2))
print('Released',len(rows),'scale runs using validated native DIS period',period)
