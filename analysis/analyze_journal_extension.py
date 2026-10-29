#!/usr/bin/env python3
"""Analyze completed journal-extension runs without touching the main results.

Experimental unit: paired simulation seed. A detection event is a persistent
attack by one attacker during the configured attack interval, not each packet.
Post-onset alerts and isolation already present at onset are reported separately.
"""
import argparse,csv,gzip,hashlib,itertools,json,math,sys
from collections import defaultdict
from pathlib import Path
import numpy as np
from scipy.stats import t
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'analysis'))
from parse_run import open_log
from metrics import recovery
OUT=ROOT/'output/experiments/journal_extension'
DETECTORS={0:'RPL',1:'Secure-RPL',2:'RPL-MRC',3:'DIS-FDM',4:'AEF fixed rule',5:'Li-MSD',7:'AEF learning'}
METRICS=['pdr_up','pdr_down','delivery_up','fpr','tpr','precision','macro_f1',
         'event_recall_new_alert','detected_delay_mean_s','missed_new_alerts',
         'false_blacklists_per_hour','legit_isolated_frac','radio_power_mw']
METRICS += ['legit_join_fraction']
METRICS += ['ari','drt_s']

def write_csv(path,rows):
    if not rows:return
    with path.open('w',newline='') as f:
        w=csv.DictWriter(f,fieldnames=list(rows[0]));w.writeheader();w.writerows(rows)

def summarize(values):
    a=np.array([float(x) for x in values if isinstance(x,(int,float)) and math.isfinite(x)])
    n=len(a)
    if not n:return (0,float('nan'),float('nan'),float('nan'))
    mean=float(a.mean());half=float(t.ppf(.975,n-1)*a.std(ddof=1)/math.sqrt(n)) if n>1 else float('nan')
    return n,mean,mean-half,mean+half

def enrich(folder,meta,result):
    row={k:result.get(k,float('nan')) for k in METRICS}
    row.update(run_id=meta['run_id'],experiment=meta.get('experiment','unknown'),
        variant=meta.get('ablation',DETECTORS.get(meta['defense'],str(meta['defense']))),
        seed=meta['seed'],attack_mode=meta['attack_mode'],mobile_frac=meta['mobile_frac'],
        dis_interval=meta['dis_interval'],dao_interval=meta.get('dao_interval',2),
        rx_ratio=meta.get('rx_ratio',1),nodes=meta['nodes'],duration_min=meta['duration_min'],
        defense=meta['defense'],completed=1)
    row['native_dis_interval_s'] = meta.get('native_dis_interval_s',10)
    row['legit_join_fraction'] = result.get('legit_joined',0)/result['legit_total'] if result.get('legit_total') else float('nan')
    has_detector=meta['defense'] in (1,3,4,5,6,7)
    tp,tn,fp,fn=[result.get(k,float('nan')) for k in ('tp','tn','fp','fn')]
    if meta['attack_mode'] and has_detector:
        pos=2*tp/(2*tp+fp+fn) if 2*tp+fp+fn else float('nan')
        neg=2*tn/(2*tn+fp+fn) if 2*tn+fp+fn else float('nan')
        row['macro_f1']=(pos+neg)/2
    else:row['macro_f1']=float('nan')
    start=float(meta.get('attack_start_s',300));end=meta['duration_min']*60
    attackers=set(meta['attacker_ids']);legit=set(range(2,meta['nodes']+1))-attackers
    service_nodes=legit-set(meta.get('honest_chosen_ids',[])) if meta.get('experiment')=='resilience_reference' else legit
    row['layout_sha256']=hashlib.sha256(json.dumps(meta['positions'],sort_keys=True).encode()).hexdigest()
    row['mobile_node_ids']=','.join(map(str,sorted(meta['mobile_ids'])))
    row['service_node_ids']=','.join(map(str,sorted(service_nodes)))
    tx={};echoed=set()
    flags=defaultdict(list);holders=defaultdict(set);false_events=0;cpu=[];events=[]
    with open_log(folder) as f:
        for line in f:
            p=line.split()
            if len(p)<4:continue
            try:tm=int(p[0])/1e6; observer=int(p[1])
            except ValueError:continue
            if p[2] in ('#D','#U'):
                suspect=int(p[3])
                if observer==suspect:continue
                if tm<start:
                    if p[2]=='#D':holders[suspect].add(observer)
                    else:holders[suspect].discard(observer)
                if p[2]=='#D' and start<=tm<=end:
                    flags[suspect].append(tm)
                    false_events+=suspect in legit
            elif p[2]=='#W' and tm>=start and observer in legit:
                cpu.append(int(p[3]))
            elif p[2]=='#T' and observer in service_nodes:
                tx[(observer,int(p[3]))]=tm
            elif p[2]=='#E' and observer in service_nodes:
                echoed.add((observer,int(p[3])))
    delays=[]
    for attacker in sorted(attackers):
        delay=min(flags[attacker])-start if flags[attacker] else float('nan')
        if math.isfinite(delay):delays.append(delay)
        events.append(dict(run_id=meta['run_id'],attacker=attacker,
            already_isolated_at_onset=int(bool(holders[attacker])),
            detected_by_new_post_onset_alert=int(bool(flags[attacker])),
            detection_delay_s=delay,observation_horizon_s=end-start))
    row.update(attacker_events=len(attackers),newly_alerted_events=len(delays),
        already_isolated_at_onset=sum(bool(holders[a]) for a in attackers),
        missed_new_alerts=len(attackers)-len(delays) if has_detector else float('nan'),
        event_recall_new_alert=len(delays)/len(attackers) if attackers and has_detector else float('nan'),
        detected_delay_mean_s=float(np.mean(delays)) if delays else float('nan'),
        false_blacklists_per_hour=false_events/((end-start)/3600) if has_detector else float('nan'),
        callback_cpu_samples=len(cpu),callback_cpu_median_us=float(np.median(cpu)/1000) if cpu else float('nan'),
        callback_cpu_p95_us=float(np.quantile(cpu,.95)/1000) if cpu else float('nan'))
    row['service_round_trips']=sum(tm>=start and key in echoed for key,tm in tx.items())
    pre,drt,censored=recovery(tx,echoed,service_nodes,end,meta.get('send_s',10))
    row.update(pre_level=pre,drt_s=drt,drt_censored=int(censored),ari=float('nan'),reference_run_id='',reference_exact=0)
    return row,events

def paired_p(d):
    # Exact paired sign-flip test of the absolute mean difference; no normality assumption.
    observed=abs(float(np.mean(d)))
    if observed==0:return 1.0
    scores=[abs(float(np.mean(np.array(signs)*d))) for signs in itertools.product((-1,1),repeat=len(d))]
    return sum(x>=observed-1e-12 for x in scores)/len(scores)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--require-complete',action='store_true')
    ap.add_argument('--runs-dir',type=Path,default=OUT/'runs')
    ap.add_argument('--out-dir',type=Path,default=OUT/'analysis')
    a=ap.parse_args()
    plans=[]
    for name in ('robustness','ablations','robservation','profiling','scale_diagnostics','timing_validation','references','scale_full'):
        p=OUT/f'{name}.jsonl'
        if p.exists():plans.extend(json.loads(x) for x in p.read_text().splitlines() if x.strip())
    rows=[];events=[];status=[]
    for meta in plans:
        folder=a.runs_dir/meta['run_id'];result=folder/'result.json'
        done=result.exists();status.append({'run_id':meta['run_id'],'experiment':meta.get('experiment','unknown'),'completed':int(done)})
        if done:
            r,e=enrich(folder,json.loads((folder/'meta.json').read_text()),json.loads(result.read_text()));rows.append(r);events+=e
    dest=a.out_dir;dest.mkdir(parents=True,exist_ok=True)
    ref_key=lambda r:(r['seed'],r['mobile_frac'],r['rx_ratio'],r['nodes'],r['duration_min'])
    refs={ref_key(r):r for r in rows if r['experiment']=='resilience_reference'}
    for r in rows:
        reference=refs.get(ref_key(r))
        if r['attack_mode']==3 and reference:
            r['reference_run_id']=reference['run_id']
            r['reference_exact']=int(all(r[k]==reference[k] for k in ('layout_sha256','mobile_node_ids','service_node_ids')))
            if r['reference_exact'] and reference['service_round_trips']:
                r['ari']=r['service_round_trips']/reference['service_round_trips']
    write_csv(dest/'completion.csv',status);write_csv(dest/'per_run.csv',rows);write_csv(dest/'attacker_events.csv',events)
    groups=defaultdict(list)
    fields=['experiment','attack_mode','mobile_frac','dis_interval','dao_interval','rx_ratio','nodes','duration_min','native_dis_interval_s']
    for r in rows:groups[tuple(r[k] for k in fields)+(r['variant'],)].append(r)
    stats=[]
    for key,group in sorted(groups.items()):
        for metric in METRICS+['callback_cpu_median_us','callback_cpu_p95_us']:
            n,mean,lo,hi=summarize([r.get(metric) for r in group])
            stats.append(dict(zip(fields+['variant'],key),metric=metric,n=n,mean=mean,ci95_low=lo,ci95_high=hi))
    write_csv(dest/'summary.csv',stats)
    cells=defaultdict(dict)
    for r in rows:cells[tuple(r[k] for k in fields)].setdefault(r['variant'],{})[r['seed']]=r
    tests=[];rng=np.random.default_rng(20261020)
    for key,variants in sorted(cells.items()):
        ref='full' if key[0]=='ablation' else 'AEF learning'
        if ref not in variants:continue
        for other,comp in sorted(variants.items()):
            if other==ref:continue
            for metric in ['pdr_down','delivery_up','fpr','event_recall_new_alert','detected_delay_mean_s','ari']:
                seeds=sorted(set(variants[ref])&set(comp))
                diffs=np.array([variants[ref][seed][metric]-comp[seed][metric] for seed in seeds
                    if math.isfinite(variants[ref][seed].get(metric,float('nan'))) and math.isfinite(comp[seed].get(metric,float('nan')))])
                if len(diffs)<2:continue
                boot=rng.choice(diffs,(10000,len(diffs)),replace=True).mean(axis=1)
                tests.append(dict(zip(fields,key),reference=ref,comparison=other,metric=metric,n_pairs=len(diffs),
                    difference_reference_minus_comparison=float(diffs.mean()),
                    paired_bootstrap_ci95_low=float(np.quantile(boot,.025)),paired_bootstrap_ci95_high=float(np.quantile(boot,.975)),
                    exact_signflip_two_sided_p=paired_p(diffs),holm_p=float('nan')))
    # One Holm family per experiment over all reported paired tests, not a selected subset.
    for experiment in {r['experiment'] for r in tests}:
        family=sorted([r for r in tests if r['experiment']==experiment],key=lambda x:x['exact_signflip_two_sided_p'])
        maximum=0
        for i,row in enumerate(family):
            maximum=max(maximum,min(1,(len(family)-i)*row['exact_signflip_two_sided_p']));row['holm_p']=maximum
    write_csv(dest/'paired_comparisons.csv',tests)
    counts=defaultdict(lambda:[0,0])
    for r in status:counts[r['experiment']][0]+=r['completed'];counts[r['experiment']][1]+=1
    report=['# Journal-extension experiment status','', 'Only completed runs contribute to numerical summaries. Partial cells are preliminary.','', '| Experiment | Completed | Planned |','|---|---:|---:|']
    report += [f'| {k} | {v[0]} | {v[1]} |' for k,v in sorted(counts.items())]
    report += ['', '## Interpretation rules','',
        '- The independent unit is the simulation seed. Means use Student-t 95% intervals; paired differences use 10,000 paired bootstrap resamples.',
        '- Paired p-values use an exact sign-flip test and Holm correction over all reported tests within each experiment. This test assumes pairwise exchangeability under its null.',
        '- Node-level TP/FP counts retain the existing parser definition. Event recall counts a new alert after attack onset; already-isolated attackers are reported separately.',
        '- Delay summaries include detected events only; attacker_events.csv and missed_new_alerts expose missing detections and the observation horizon.',
        '- False-blacklist operations/hour include re-blacklisting and are not a count of independent false-alarm incidents.',
        '- Macro-F1 is binary normal/attacker F1 averaged across the two classes, computed only when attackers are present. No-attack runs use FPR.',
        '- No PR-AUC or unseen-class accuracy is claimed without a suitable score or protocol.',
        '- Callback CPU timings measure native host thread execution in Cooja, excluding firmware scheduling, radio, and JVM/mote-copy overhead. They are not target-mote timings.',
        '- A completed simulation does not pass scale feasibility automatically; join coverage and network-wide expected delivery require separate review.',
        '']
    (dest/'STATUS.md').write_text('\n'.join(report))
    print('\n'.join(report[:len(counts)+6]))
    if a.require_complete and any(v[0]!=v[1] for v in counts.values()):raise SystemExit('Campaign not yet complete')
if __name__=='__main__':main()
