#!/usr/bin/env python3
"""Export scientific figures for completed cells; label campaign progress."""
import csv,json,math
from pathlib import Path
from collections import defaultdict
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from scipy.stats import t
ROOT=Path(__file__).resolve().parents[1];OUT=ROOT/'output/experiments/journal_extension'
RESULT=OUT/'analysis';FIG=OUT/'figures';FIG.mkdir(exist_ok=True)
rows=list(csv.DictReader((RESULT/'per_run.csv').open()))
for r in rows:
 for k,v in list(r.items()):
    if k not in ('run_id','experiment','variant'):
        try:r[k]=float(v)
        except (ValueError,TypeError):pass
status=list(csv.DictReader((RESULT/'completion.csv').open()))
complete=all(r['completed']=='1' for r in status)
plt.rcParams.update({'font.size':9,'axes.spines.top':False,'axes.spines.right':False,'pdf.fonttype':42})
def save(fig,name):
    if not complete:fig.suptitle('Preliminary: campaign incomplete',fontsize=9,color='darkred')
    fig.tight_layout();fig.savefig(FIG/(name+'.pdf'),bbox_inches='tight');fig.savefig(FIG/(name+'.png'),dpi=200,bbox_inches='tight');plt.close(fig)
def mean_ci(values):
    x=np.array([v for v in values if isinstance(v,(int,float)) and math.isfinite(v)])
    if not len(x):return float('nan'),float('nan')
    return float(x.mean()),float(t.ppf(.975,len(x)-1)*x.std(ddof=1)/np.sqrt(len(x))) if len(x)>1 else float('nan')
rate=[r for r in rows if r['experiment']=='rate_robustness']
if rate:
 fig,axes=plt.subplots(2,2,figsize=(7,5))
 for col,mob in enumerate((0,.3)):
  for method in ('RPL','DIS-FDM','Li-MSD','AEF learning'):
   for idx,metric in enumerate(('pdr_down','fpr')):
    values=[];errors=[];rates=[]
    for dis,dao in ((3,2),(10,10),(30,30)):
     cell=[r for r in rate if r['mobile_frac']==mob and r['variant']==method and r['dis_interval']==dis and r['dao_interval']==dao]
     if len(cell)!=10:continue
     mean,error=mean_ci([r[metric] for r in cell])
     if not math.isfinite(mean):continue
     rates.append(f'{dis}/{dao}');values.append(mean);errors.append(error)
    if rates:axes[idx,col].errorbar(rates,values,yerr=errors,marker='o',capsize=2,label=method)
  axes[0,col].set_title(f'{int(mob*100)}% mobile');axes[0,col].set_ylabel('Downward PDR');axes[1,col].set_ylabel('False-positive rate');axes[1,col].set_xlabel('DIS / DAO interval (s)')
 axes[0,0].legend(fontsize=7);save(fig,'rate_robustness')
ablation=[r for r in rows if r['experiment']=='ablation']
if ablation:
 fig,axes=plt.subplots(1,2,figsize=(7,3.5))
 for ax,mob in zip(axes,(0,.3)):
  labels=[];values=[];errors=[]
  for variant in sorted({r['variant'] for r in ablation}):
   cell=[r for r in ablation if r['mobile_frac']==mob and r['attack_mode']==3 and r['variant']==variant]
   if len(cell)!=10:continue
   mean,error=mean_ci([r['macro_f1'] for r in cell]);labels.append(variant.replace('_',' '));values.append(mean);errors.append(error)
  ax.barh(labels,values,xerr=errors);ax.set_xlabel('Binary macro-F1');ax.set_title(f'{int(mob*100)}% mobile')
 save(fig,'component_ablation')
# Latency always appears with a missed-event panel.
events=list(csv.DictReader((RESULT/'attacker_events.csv').open())) if (RESULT/'attacker_events.csv').exists() else []
selected={r['run_id']:r for r in rate if r['dis_interval']==3 and r['mobile_frac']==.3 and r['defense']!=0}
if selected:
 fig,axes=plt.subplots(1,2,figsize=(7,3))
 labels=[];samples=[];misses=[];totals=[]
 for method in ('DIS-FDM','Li-MSD','AEF learning'):
  ids={k for k,v in selected.items() if v['variant']==method}
  ev=[e for e in events if e['run_id'] in ids]
  if not ev:continue
  labels.append(method);samples.append([float(e['detection_delay_s']) for e in ev if e['detected_by_new_post_onset_alert']=='1'])
  misses.append(sum(e['detected_by_new_post_onset_alert']=='0' for e in ev));totals.append(len(ev))
 if labels:
  axes[0].boxplot([x if x else [float('nan')] for x in samples],tick_labels=labels);axes[0].set_ylabel('New-alert delay (s)');axes[0].tick_params(axis='x',labelrotation=15)
  axes[1].bar(labels,[m/n for m,n in zip(misses,totals)]);axes[1].set_ylabel('Fraction without a new attack alert');axes[1].tick_params(axis='x',labelrotation=15)
  for i,(miss,total) in enumerate(zip(misses,totals)):axes[1].text(i,miss/total,f'{miss}/{total}',ha='center',va='bottom',fontsize=8)
  save(fig,'detection_delay_and_missed_events')
prof=[r for r in rows if r['experiment']=='host_callback_cost']
if prof:
 fig,ax=plt.subplots(figsize=(5,3))
 labels=[];med=[];p95=[]
 for label in sorted({r['variant'] for r in prof}):
  cell=[r for r in prof if r['variant']==label]
  if len(cell)!=20:continue
  labels.append(label);med.append(mean_ci([r['callback_cpu_median_us'] for r in cell])[0]);p95.append(mean_ci([r['callback_cpu_p95_us'] for r in cell])[0])
 x=np.arange(len(labels));ax.bar(x-.18,med,width=.36,label='Mean of run medians');ax.bar(x+.18,p95,width=.36,label='Mean of run 95th percentiles');ax.set_xticks(x,labels,rotation=15);ax.set_ylabel('Native host callback CPU time (µs)');ax.legend(fontsize=7)
 save(fig,'native_callback_cost')
print(f'Figures exported to {FIG}')
