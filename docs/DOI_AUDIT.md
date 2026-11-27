# DOI audit of the paper bibliography

Checked 2026-10-30 and again on 2026-11-26 and 2026-11-27 against `full_paper/sections/references.tex`, the bibliography of `manuscript_full.tex`. The bibliography has 45 entries and every entry carries a DOI (4 of them IETF RFCs with their registered RFC DOIs). Every DOI was resolved through the Crossref REST API. For each resolved record the registered title was compared with the cited title (word overlap, 1.00 = every word of the registered title appears in the entry), and the registered year, volume, issue, pages and author list were compared with the entry. All 45 DOIs resolved and every registered title matched the cited one. The machine-readable capture is `DOI_METADATA_CHECK.json` (one record per entry with the Crossref title, authors, container, volume, issue, pages and dates).

Status values: `checked` means the DOI resolved and the registered title matches the entry; `RFC` means the same for an IETF RFC.

| # | Key | DOI | Status | Title match | Year |
|---|---|---|---|---|---|
| 1 | `rfc6550` | [10.17487/RFC6550](https://doi.org/10.17487/RFC6550) | RFC | 1.00 | 2012 |
| 2 | `albinali2024` | [10.1109/TNSM.2024.3386468](https://doi.org/10.1109/TNSM.2024.3386468) | checked | 1.00 | 2024 |
| 3 | `raoof2019` | [10.1109/COMST.2018.2885894](https://doi.org/10.1109/COMST.2018.2885894) | checked | 1.00 | 2019 |
| 4 | `rfc6206` | [10.17487/RFC6206](https://doi.org/10.17487/RFC6206) | RFC | 1.00 | 2011 |
| 5 | `rajasekar2022` | [10.1016/j.micpro.2022.104675](https://doi.org/10.1016/j.micpro.2022.104675) | checked | 1.00 | 2022 |
| 6 | `vermaranga2020` | [10.1002/ett.3802](https://doi.org/10.1002/ett.3802) | checked | 1.00 | 2020 (first online 2019) |
| 7 | `medjek2021` | [10.1016/j.jisa.2021.102939](https://doi.org/10.1016/j.jisa.2021.102939) | checked | 1.00 | 2021 |
| 8 | `rfc6554` | [10.17487/RFC6554](https://doi.org/10.17487/RFC6554) | RFC | 1.00 | 2012 |
| 9 | `pu2018` | [10.1109/CCWC.2018.8301614](https://doi.org/10.1109/CCWC.2018.8301614) | checked | 1.00 | 2018 |
| 10 | `ghaleb2019` | [10.1109/LCOMM.2018.2878151](https://doi.org/10.1109/LCOMM.2018.2878151) | checked | 1.00 | 2019 |
| 11 | `limsd2024` | [10.1016/j.future.2024.05.032](https://doi.org/10.1016/j.future.2024.05.032) | checked | 1.00 | 2024 |
| 12 | `prajisha2025` | [10.1016/j.adhoc.2025.104002](https://doi.org/10.1016/j.adhoc.2025.104002) | checked | 1.00 | 2025 |
| 13 | `ganeriwal2008` | [10.1145/1362542.1362546](https://doi.org/10.1145/1362542.1362546) | checked | 1.00 | 2008 |
| 14 | `watkins1992` | [10.1007/BF00992698](https://doi.org/10.1007/BF00992698) | checked | 1.00 | 1992 |
| 15 | `khan2023` | [10.32604/cmc.2023.040756](https://doi.org/10.32604/cmc.2023.040756) | checked | 1.00 | 2023 |
| 16 | `sharma2022` | [10.1016/j.comcom.2022.04.003](https://doi.org/10.1016/j.comcom.2022.04.003) | checked | 1.00 | 2022 |
| 17 | `ankam2023` | [10.1016/j.tcs.2022.08.018](https://doi.org/10.1016/j.tcs.2022.08.018) | checked | 0.93 | 2023 |
| 18 | `abhinaya2021` | [10.1007/s12652-020-02804-3](https://doi.org/10.1007/s12652-020-02804-3) | checked | 1.00 | 2021 |
| 19 | `nishanth2021` | [10.1109/TCCN.2021.3055503](https://doi.org/10.1109/TCCN.2021.3055503) | checked | 1.00 | 2021 |
| 20 | `rouissat2023` | [10.3390/app131810366](https://doi.org/10.3390/app131810366) | checked | 1.00 | 2023 |
| 21 | `imdrpl2023` | [10.1007/s12083-023-01539-0](https://doi.org/10.1007/s12083-023-01539-0) | checked | 1.00 | 2023 |
| 22 | `alsukayti2023` | [10.3390/app13084878](https://doi.org/10.3390/app13084878) | checked | 1.00 | 2023 |
| 23 | `de2rarpl2024` | [10.1007/s11227-024-06256-w](https://doi.org/10.1007/s11227-024-06256-w) | checked | 1.00 | 2024 |
| 24 | `abdulkareem2024` | [10.58496/MJCS/2024/026](https://doi.org/10.58496/MJCS/2024/026) | checked | 1.00 | 2024 |
| 25 | `garciaribera2022` | [10.3390/electronics11234041](https://doi.org/10.3390/electronics11234041) | checked | 1.00 | 2022 |
| 26 | `flsecrpl2024` | [10.1186/s42400-024-00223-x](https://doi.org/10.1186/s42400-024-00223-x) | checked | 1.00 | 2024 |
| 27 | `dsatids2024` | [10.1007/s10586-024-04564-7](https://doi.org/10.1007/s10586-024-04564-7) | checked | 1.00 | 2024 |
| 28 | `azzaoui2024` | [10.1007/s11277-024-11009-2](https://doi.org/10.1007/s11277-024-11009-2) | checked | 1.00 | 2024 |
| 29 | `monteiro2026` | [10.3390/iot7010004](https://doi.org/10.3390/iot7010004) | checked | 1.00 | 2026 (first online 2025) |
| 30 | `qsecrpl2023` | [10.1016/j.adhoc.2023.103118](https://doi.org/10.1016/j.adhoc.2023.103118) | checked | 1.00 | 2023 |
| 31 | `itrpl2024` | [10.1016/j.adhoc.2024.103586](https://doi.org/10.1016/j.adhoc.2024.103586) | checked | 1.00 | 2024 |
| 32 | `haqdad2026` | [10.1109/JIOT.2025.3596097](https://doi.org/10.1109/JIOT.2025.3596097) | checked | 1.00 | 2026 |
| 33 | `ahmadi2026` | [10.1007/s11276-026-04207-2](https://doi.org/10.1007/s11276-026-04207-2) | checked | 1.00 | 2026 |
| 34 | `panda2026` | [10.3390/fi18010035](https://doi.org/10.3390/fi18010035) | checked | 1.00 | 2026 |
| 35 | `gyawali2021` | [10.1109/TVT.2021.3079379](https://doi.org/10.1109/TVT.2021.3079379) | checked | 1.00 | 2021 |
| 36 | `jasti2024` | [10.1109/CCNC51664.2024.10454856](https://doi.org/10.1109/CCNC51664.2024.10454856) | checked | 1.00 | 2024 |
| 37 | `sentz2002` | [10.2172/800792](https://doi.org/10.2172/800792) | checked | 1.00 | 2002 |
| 38 | `sterbenz2013` | [10.1007/s11235-011-9573-6](https://doi.org/10.1007/s11235-011-9573-6) | checked | 1.00 | 2013 (first online 2011) |
| 39 | `contiking2022` | [10.1016/j.softx.2022.101089](https://doi.org/10.1016/j.softx.2022.101089) | checked | 1.00 | 2022 |
| 40 | `cooja2006` | [10.1109/LCN.2006.322172](https://doi.org/10.1109/LCN.2006.322172) | checked | 1.00 | 2006 |
| 41 | `rfc6719` | [10.17487/RFC6719](https://doi.org/10.17487/RFC6719) | RFC | 1.00 | 2012 |
| 42 | `camp2002` | [10.1002/wcm.72](https://doi.org/10.1002/wcm.72) | checked | 1.00 | 2002 |
| 43 | `wilcoxon1945` | [10.2307/3001968](https://doi.org/10.2307/3001968) | checked | 1.00 | 1945 |
| 44 | `aickin1996` | [10.2105/AJPH.86.5.726](https://doi.org/10.2105/AJPH.86.5.726) | checked | 1.00 | 1996 |
| 45 | `efron1994` | [10.1201/9780429246593](https://doi.org/10.1201/9780429246593) | checked | 1.00 | 1994 |

## Notes

* Three entries cite the year of the volume and issue while Crossref dates the record by its first online appearance: `vermaranga2020` (online December 2019, printed in vol. 31, no. 2, February 2020), `sterbenz2013` (Crossref dates the record December 2011, its first online appearance, and lists no volume; the entry cites the 2013 issue, vol. 52, no. 2) and `monteiro2026` (online 30 December 2025, vol. 7, no. 1, 2026). The entries follow the issue year.
* `de2rarpl2024`: Crossref registers the authors as "Deepavathi Paganraj" and "Mala Chelliah", while the entry (and the Crossref record of the same authors' `imdrpl2023`) gives them as "P. Deepavathi" and "C. Mala". The two records name the same two people with the name order swapped; the entry keeps the form used in `imdrpl2023`.
* `watkins1992`: Crossref registers the issue as 3-4, which the entry gives as "nos. 3--4".
* `haqdad2026`: the registered author list has seven names, ending with D. Kwak, and the entry lists all seven.

DOI resolution confirms the bibliographic identity of each cited work. It does not by itself verify the claims attributed to a work in the text; those rest on the cited publications themselves.
