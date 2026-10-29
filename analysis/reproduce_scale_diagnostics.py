#!/usr/bin/env python3
"""Independently check completed scale-diagnostic results against their logs."""
import csv
import hashlib
import json
from pathlib import Path
import parse_run

ROOT=Path(__file__).resolve().parents[1]
BASE=ROOT/'output/diagnostics'
OUT=BASE/'scale_audit'
CAMPAIGNS=['scale_transport_fix','scale_routing_fix','chain','scale_ack_trace','structured_grid_scale','scale_loop_handling']

def canonical(value):
    return json.dumps({k:v for k,v in value.items() if k!='wall_s'},sort_keys=True)

def main():
    OUT.mkdir(exist_ok=True)
    checks=[];rows=[]
    for campaign in CAMPAIGNS:
        for result in sorted((BASE/campaign).glob('**/result.json')):
            folder=result.parent
            if not (folder/'COOJA.testlog.gz').exists():continue
            saved=json.loads(result.read_text());fresh=parse_run.parse(folder)
            meta=json.loads((folder/'meta.json').read_text())
            match=canonical(saved)==canonical(fresh)
            checks.append(dict(run_id=saved['run_id'],matches=match,
                raw_log_sha256=hashlib.sha256((folder/'COOJA.testlog.gz').read_bytes()).hexdigest()))
            coverage=fresh['legit_joined']/fresh['legit_total']
            rows.append(dict(campaign=campaign,run_id=saved['run_id'],nodes=meta['nodes'],seed=meta['seed'],
                mobility=meta['mobile_frac'],duration_min=meta['duration_min'],
                topology=meta.get('topology','chain' if campaign=='chain' else 'random_connected'),
                coverage=coverage,delivery_up=fresh['delivery_up'],pdr_down=fresh['pdr_down'],
                passes_gate=int(coverage>=.95 and fresh['delivery_up']>=.8 and fresh['pdr_down']>=.9)))
    (OUT/'log_reproduction.json').write_text(json.dumps(checks,indent=2))
    if rows:
        with (OUT/'summary.csv').open('w',newline='') as f:
            w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)
    failures=[r['run_id'] for r in checks if not r['matches']]
    print(f'Reparsed {len(checks)} completed diagnostic logs; mismatches: {len(failures)}',flush=True)
    if failures:raise SystemExit(str(failures))

if __name__=='__main__':main()
