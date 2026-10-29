# DOI audit for the manuscript draft

Checked 2026-10-20. The manuscript currently cites 23 works (22 research publications and RFC 6550). DOI strings were resolved against Crossref metadata where available and cross-checked against the linked publisher, IETF, or scholarly repository record. Each manuscript bibliography entry links directly to its DOI resolver record. For journal and conference papers, the registered title and author record were checked against the cited item; RFC 6550 is an IETF standards document with an assigned DOI.

| Key | DOI | Cross-check |
|---|---|---|
| `rfc6550` | [10.17487/RFC6550](https://doi.org/10.17487/RFC6550) | IETF RFC / Crossref metadata |
| `albinali2024` | [10.1109/TNSM.2024.3386468](https://doi.org/10.1109/TNSM.2024.3386468) | Publisher DOI and KFUPM research record |
| `prajisha2025` | [10.1016/j.adhoc.2025.104002](https://doi.org/10.1016/j.adhoc.2025.104002) | Crossref metadata and publisher DOI record |
| `rajasekar2022` | [10.1016/j.micpro.2022.104675](https://doi.org/10.1016/j.micpro.2022.104675) | Crossref metadata |
| `vermaranga2020` | [10.1002/ett.3802](https://doi.org/10.1002/ett.3802) | Crossref metadata |
| `medjek2021` | [10.1016/j.jisa.2021.102939](https://doi.org/10.1016/j.jisa.2021.102939) | Crossref metadata and repository record |
| `pu2018` | [10.1109/CCWC.2018.8301614](https://doi.org/10.1109/CCWC.2018.8301614) | Crossref metadata |
| `limsd2024` | [10.1016/j.future.2024.05.032](https://doi.org/10.1016/j.future.2024.05.032) | Crossref metadata and Elsevier article record |
| `garciaribera2022` | [10.3390/electronics11234041](https://doi.org/10.3390/electronics11234041) | MDPI publisher article record |
| `panda2026` | [10.3390/fi18010035](https://doi.org/10.3390/fi18010035) | Crossref metadata and MDPI publisher record |
| `qsecrpl2023` | [10.1016/j.adhoc.2023.103118](https://doi.org/10.1016/j.adhoc.2023.103118) | Crossref metadata and Elsevier article record |
| `itrpl2024` | [10.1016/j.adhoc.2024.103586](https://doi.org/10.1016/j.adhoc.2024.103586) | Elsevier article record |
| `watkins1992` | [10.1007/BF00992698](https://doi.org/10.1007/BF00992698) | Crossref metadata and Springer record |
| `alsukayti2023` | [10.3390/app13084878](https://doi.org/10.3390/app13084878) | Crossref metadata |
| `de2rarpl2024` | [10.1007/s11227-024-06256-w](https://doi.org/10.1007/s11227-024-06256-w) | Crossref metadata |
| `abdulkareem2024` | [10.58496/MJCS/2024/026](https://doi.org/10.58496/MJCS/2024/026) | Crossref metadata |
| `rouissat2023` | [10.3390/app131810366](https://doi.org/10.3390/app131810366) | Crossref metadata |

The audit applies to the references included in `manuscript.tex`, not every item in the proposal's larger working bibliography. Bibliographic formatting may need adjustment to the final journal template; DOI identities have been checked separately from formatting.

## Manuscript refinement and claim checks (20 October 2026)

A new machine-readable Crossref metadata capture is in
`docs/DOI_METADATA_CHECK.json`. Bibliography numbering follows first citation
order. The Watkins--Dayan issue range was corrected to 3--4.

The following claim checks informed the revised prose:

- DIS-FDM: the supplied full paper (`../MAIN_PAPER.pdf`) and publisher record
  support distributed fusion of DIS-load and preferred-parent-change evidence.
- Garcia Ribera et al.: the publisher full text, Section 5 flooding experiment
  and Figure 9, explicitly describes concurrent Hello, DIS, and DAO attacks
  from separate nodes. The revised manuscript acknowledges this prior experiment.
- QSec-RPL: publisher abstract supports Q-learning for version-number attack
  detection under mobility; it is cited as a precedent, not a directly equivalent baseline.
- iTRPL: publisher framework description supports a trust/MARL architecture
  with root-level decisions; it is distinguished from local accept/isolate decisions.
- Panda and Muthuraman: publisher abstract supports a simulation-derived
  multiclass dataset and supervised classifier evaluation. Its scores are not
  presented as directly comparable with the current node-level detection results.
- Project claims were checked against `firmware/attack.c`, `firmware/defense.c`,
  `firmware/rl.c`, the main result summary, and the completed fresh-seed extension.

DOI metadata confirms bibliographic identity; it does not by itself verify every
claim in a cited work. Earlier entries labeled Crossref-only remain identity
checks; their use in this draft is restricted to broad study/topic descriptions.

Primary links reviewed:

- [DIS-FDM publisher record](https://www.sciencedirect.com/science/article/abs/pii/S1570870525002501)
- [Hybrid IDS publisher full text](https://www.mdpi.com/2079-9292/11/23/4041)
- [Li-MSD author manuscript](https://arxiv.org/html/2409.10020v1)
- [QSec-RPL publisher record](https://www.sciencedirect.com/science/article/pii/S1570870523000380)
- [iTRPL publisher record](https://www.sciencedirect.com/science/article/pii/S1570870524001975)
- [Multiclass dataset publisher full text](https://www.mdpi.com/1999-5903/18/1/35)

Venue scope was rechecked against the official special-issue listing. The
proposal's IIoT-CNets issue is listed with a 31 March 2027 deadline:
https://ieee-iotj.org/special-issues/ . The manuscript frames IIoT relevance as
routing resilience and explicitly limits deployment claims to the simulation evidence.

## Expanded LR audit (20 October 2026)

The six additional references below are present in the approved proposal and
now cited substantively in the manuscript LR. All six DOI identities, titles,
authors, and available volume/page details were checked against Crossref.

| Reference | DOI | Claim evidence consulted |
|---|---|---|
| IMDRPL | 10.1007/s12083-023-01539-0 | Springer publisher abstract: DIO/DAO security, encrypted certificate attestation, Contiki/Cooja evaluation |
| FLSec-RPL | 10.1186/s42400-024-00223-x | Publisher full text/abstract: fuzzy detection, validation/blocking, static and mobile evaluation |
| DSAT-IDS | 10.1007/s10586-024-04564-7 | Publisher abstract: selective forwarding, group/subtree monitoring, adaptive thresholds |
| CRRDS | 10.1109/JIOT.2025.3596097 | IEEE publisher abstract/search record: deep RL at resource-rich root for decreased-rank detection |
| Gyawali et al. | 10.1109/TVT.2021.3079379 | Author manuscript at NSF repository: Dempster--Shafer aggregation at edge servers and deep RL reputation policy |
| Jasti et al. | 10.1109/CCNC51664.2024.10454856 | Registered title and conference proceedings record; draft uses only its stated DS/RL reputation topic, without unverifiable architectural or numerical claims |

CRRDS's registered author list includes Daehan Kwak, omitted in the proposal's
working bibliography. The manuscript uses the complete checked list; the
proposal has not been edited. The machine-readable capture retains provenance.

Additional primary links:

- https://link.springer.com/article/10.1007/s12083-023-01539-0
- https://link.springer.com/article/10.1186/s42400-024-00223-x
- https://link.springer.com/article/10.1007/s10586-024-04564-7
- https://ieeexplore.ieee.org/document/11114426/
- https://par.nsf.gov/servlets/purl/10295357
- https://www.proceedings.com/content/073/073598webtoc.pdf

The focused narrative-review description does not claim an exhaustive search,
PRISMA screening, or inclusion criteria that were never executed. DOI checking
and source-content checking remain separate activities.
