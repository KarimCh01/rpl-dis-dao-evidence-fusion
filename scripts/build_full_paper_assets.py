#!/usr/bin/env python3
"""Generate full-paper figures and tables from existing numerical artifacts."""
import hashlib
import json
from pathlib import Path

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from scipy.stats import t

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'full_paper/generated'
EXT = ROOT / 'output/experiments/journal_extension/analysis'
OUT.mkdir(parents=True, exist_ok=True)
plt.rcParams.update({'font.size': 8, 'axes.spines.top': False,
                     'axes.spines.right': False, 'pdf.fonttype': 42})
NAMES = {0: 'RPL', 1: 'Secure-RPL', 2: 'RPL-MRC', 3: 'DIS-FDM',
         4: 'AEF fixed', 5: 'Li-MSD', 7: 'AEF learning'}


def save(fig, name):
    fig.tight_layout()
    fig.savefig(OUT / (name + '.pdf'), bbox_inches='tight')
    fig.savefig(OUT / (name + '.png'), dpi=220, bbox_inches='tight')
    plt.close(fig)


def ci(values):
    a = np.asarray(values, dtype=float)
    a = a[np.isfinite(a)]
    if len(a) < 2:
        return (float(a[0]) if len(a) else float('nan')), float('nan')
    return a.mean(), t.ppf(.975, len(a)-1)*a.std(ddof=1)/np.sqrt(len(a))


def table(name, headers, rows, widths=None):
    columns = widths or ('l' + 'r' * (len(headers)-1))
    text = '\\begin{tabular}{@{}' + columns + '@{}}\n\\toprule\n'
    text += ' & '.join(headers) + ' \\\\\n\\midrule\n'
    text += ''.join(' & '.join(map(str, row)) + ' \\\\\n' for row in rows)
    text += '\\bottomrule\n\\end{tabular}\n'
    (OUT / (name + '.tex')).write_text(text)


def main():
    main_data = pd.read_csv(ROOT / 'output/results/all_runs.csv')
    ext = pd.read_csv(EXT / 'per_run.csv')
    summary = pd.read_csv(EXT / 'summary.csv')
    # Representative primary main-matrix cell: all seeds, no selected trace.
    selected = main_data[(main_data.attack_mode == 3) & (main_data.attackers == 7)
                         & main_data.defense.isin([0, 1, 3, 4, 5, 7])]
    rows = []
    for mob in (0, .3):
        for d in (0, 1, 3, 5, 4, 7):
            c = selected[(selected.mobile_frac == mob) & (selected.defense == d)]
            assert len(c) == 10, (mob, d, len(c))
            def fmt(metric):
                m, e = ci(c[metric] * 100)
                return '--' if not np.isfinite(m) else f'{m:.1f}$\\pm${e:.1f}'
            rows.append([str(int(mob*100)), NAMES[d], fmt('pdr_down'), fmt('tpr'), fmt('fpr')])
    table('main_table', ['Mobile (\\%)', 'Method', 'Down PDR (\\%)', 'TPR (\\%)', 'FPR (\\%)'], rows)
    fig, axes = plt.subplots(1, 2, figsize=(7, 2.65))
    for ax, mob in zip(axes, (0, .3)):
        for d in (0, 3, 5, 4, 7):
            means, errs = [], []
            for k in (3, 7, 14):
                c = main_data[(main_data.attack_mode == 3) & (main_data.attackers == k)
                              & (main_data.mobile_frac == mob) & (main_data.defense == d)]
                m, e = ci(c.pdr_down*100); means.append(m); errs.append(e)
            ax.errorbar([3, 7, 14], means, yerr=errs, marker='o', capsize=2, label=NAMES[d])
        ax.set(title=f'{int(mob*100)}% mobile', xlabel='Malicious nodes (of 29)', ylabel='Downward PDR (%)', xticks=[3,7,14])
    axes[0].legend(fontsize=6, ncol=2); save(fig, 'main_service')
    fig, axes = plt.subplots(1, 2, figsize=(7, 2.5))
    for ax, metric in zip(axes, ('pdr_down', 'dio_total')):
        for mode, label in ((1,'DIS'),(2,'DAO'),(3,'Combined')):
            means, errs = [], []
            for k in (3,7,14):
                c=main_data[(main_data.attack_mode==mode)&(main_data.attackers==k)&(main_data.mobile_frac==0)&(main_data.defense==0)]
                m,e=ci(c[metric]*(100 if metric=='pdr_down' else 1));means.append(m);errs.append(e)
            ax.errorbar([3,7,14],means,yerr=errs,marker='o',capsize=2,label=label)
        ax.set(xlabel='Malicious nodes',xticks=[3,7,14],ylabel='Downward PDR (%)' if metric=='pdr_down' else 'DIO transmissions')
    axes[0].legend(fontsize=7);save(fig,'attack_damage')
    # Rate comparisons and effect sizes are exported unchanged from analyses.
    rows=[]
    for mob in (0,.3):
        for method in ('DIS-FDM','Li-MSD','AEF learning'):
            c=ext[(ext.experiment=='rate_robustness')&(ext.mobile_frac==mob)&(ext.dis_interval==3)&(ext.variant==method)]
            rows.append([str(int(mob*100)),method]+[f'{c[x].mean():.3f}' for x in ('macro_f1','ari','event_recall_new_alert')])
    table('extension_table',['Mobile (\\%)','Method','Macro-F1','ARI','New recall'],rows)
    tests=pd.read_csv(EXT/'paired_comparisons.csv')
    rows=[]
    for mob in (0,.3):
        for other in ('DIS-FDM','Li-MSD'):
            r=tests[(tests.experiment=='rate_robustness')&(tests.dis_interval==3)&(tests.mobile_frac==mob)&(tests.comparison==other)&(tests.metric=='pdr_down')].iloc[0]
            rows.append([str(int(mob*100)),other,f'{100*r.difference_reference_minus_comparison:.2f}',f'[{100*r.paired_bootstrap_ci95_low:.2f}, {100*r.paired_bootstrap_ci95_high:.2f}]',f'{r.holm_p:.3f}'])
    table('effects_table',['Mobile (\\%)','Comparator','$\\Delta$ (pp)','95\\% paired CI','$p_H$'],rows)
    fig,axes=plt.subplots(1,2,figsize=(7,2.7))
    for ax,mob in zip(axes,(0,.3)):
        for method in ('DIS-FDM','AEF learning'):
            for metric,style in [('pdr_down','-'),('fpr','--')]:
                means=[];errs=[]
                for rx in (1,.95,.8):
                    c=ext[(ext.experiment=='radio_loss')&(ext.attack_mode==3)&(ext.mobile_frac==mob)&(ext.rx_ratio==rx)&(ext.variant==method)]
                    m,e=ci(c[metric]*100);means.append(m);errs.append(e)
                ax.errorbar([0,5,20],means,yerr=errs,linestyle=style,marker='o',capsize=2,label=method+(' PDR' if metric=='pdr_down' else ' FPR'))
        ax.set(title=f'{int(mob*100)}% mobile',xlabel='Configured reception loss (%)',ylabel='Metric (%)',xticks=[0,5,20])
    axes[0].legend(fontsize=6);save(fig,'radio_loss')
    # Actual node layouts, not a schematic deployment.
    fig,axes=plt.subplots(1,2,figsize=(7,3))
    for ax,n in zip(axes,(500,1000)):
        folder=ROOT/f'output/experiments/journal_extension/runs/jscale_dis10_m0_k0_i3_mob0_d0_s1_n{n}_t15_p60_r20'
        meta=json.loads((folder/'meta.json').read_text());pos=np.array(list(meta['positions'].values()))
        ax.scatter(pos[1:,0],pos[1:,1],s=3,color='#32638e',rasterized=True)
        ax.scatter(*meta['positions']['1'],s=55,marker='*',color='#bc342d',label='Root (node 1)')
        ax.set(title=f'{n} nodes; seed 1',xlabel='x (m)',ylabel='y (m)',aspect='equal')
        ax.legend(fontsize=6,loc='upper right')
    save(fig,'scale_layouts')
    # Method diagram distinguishes the online detector from offline truth.
    fig,ax=plt.subplots(figsize=(7,2));ax.axis('off')
    labels=['Local RPL / MAC\nobservations','240 s calibration\n10 s windows','DIS + parent +\nenergy + DAO masses','Fixed rule or\n96-state Q-learning','DIS filtering /\nselective DAO repair']
    for i,label in enumerate(labels):
        x=.10+i*.20
        ax.text(x,.62,label,ha='center',va='center',fontsize=7,bbox=dict(boxstyle='round,pad=.45',facecolor='#edf3f7',edgecolor='#32638e'),transform=ax.transAxes)
        if i<4:ax.annotate('',xy=(x+.125,.62),xytext=(x+.075,.62),xycoords='axes fraction',arrowprops=dict(arrowstyle='->',color='#32638e'))
    ax.text(.5,.17,'Offline only: scenario labels + raw logs → paired metrics, uncertainty, and audit',ha='center',fontsize=8,transform=ax.transAxes)
    save(fig,'method_pipeline')
    fig,axes=plt.subplots(1,2,figsize=(7,2.8))
    ax=axes[0];ax.set(xlim=(0,1),ylim=(0,1));ax.axis('off')
    nodes={'Root':(.50,.86),'Observer':(.50,.53),'Attacker':(.19,.15),'Honest client':(.81,.15)}
    for label,xy in nodes.items():
        ax.text(*xy,label,ha='center',va='center',fontsize=8,bbox=dict(boxstyle='round,pad=.45',facecolor='#fceae6' if label=='Attacker' else '#edf3f7',edgecolor='#bc342d' if label=='Attacker' else '#32638e'))
    for start,end in [((.5,.60),(.5,.79)),((.74,.21),(.56,.47))]:
        ax.annotate('',xy=end,xytext=start,arrowprops=dict(arrowstyle='->',color='#32638e',lw=1.5))
    ax.annotate('',xy=(.44,.46),xytext=(.23,.22),arrowprops=dict(arrowstyle='->',color='#bc342d',lw=1.5))
    ax.text(.02,.39,'DIS flood + DAO\nwith false parent',fontsize=7,color='#9e2d27')
    ax.text(.56,.68,'DAO forwarding / repair',fontsize=6)
    ax.set_title('(a) Threat model (schematic)')
    ax=axes[1];ax.set(xlim=(0,3600),ylim=(0,1));ax.set_yticks([])
    ax.axvspan(0,240,color='#d5e5f0',label='Local calibration')
    ax.axvspan(240,300,color='#d8ead7')
    ax.axvspan(300,3600,color='#f4e1dc',label='Attack/service evaluation')
    ax.axvline(300,color='#bc342d',lw=1)
    ax.text(380,.74,'Scheduled attack activation: 300 s',fontsize=7)
    ax.text(380,.53,'First attempts follow timers + boot offset',fontsize=6)
    ax.text(380,.30,'10 s decisions; no ground-truth feedback',fontsize=7)
    ax.set(xticks=[0,300,1800,3600],xlabel='Simulation time (s)',title='(b) Chronological protocol')
    ax.legend(fontsize=6,loc='lower right')
    save(fig,'threat_timeline')
    # Preserve the exact source artifacts that determine this paper's numbers.
    sources=[ROOT/'output/results/all_runs.csv',ROOT/'output/results/summary_by_condition.csv',EXT/'per_run.csv',EXT/'paired_comparisons.csv',EXT/'attacker_events.csv',EXT/'summary.csv']
    (OUT/'SOURCE_HASHES.json').write_text(json.dumps({str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sources},indent=2))
    print('Full-paper assets generated from stored results.')


if __name__=='__main__':
    main()
