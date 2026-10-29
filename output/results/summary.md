# Results summary

Tables report mean ± standard deviation over 10 seeds per cell. 95% confidence intervals are in summary_by_condition.csv and in the figures.

## Main matrix: 10% malicious (3 of 29 sensor nodes), static

| Attack | Defense | Downward PDR (%) | Upward PDR (%) | Delay (ms) | DIO msgs | Tx power (mW) | TPR (%) | FPR (%) | Precision (%) | Latency (s) |
|---|---|---|---|---|---|---|---|---|---|---|
| DIS flooding | RPL (no defense) | 99.8 ± 0.0 | 100.0 ± 0.0 | 69.5 ± 5.8 | 7514 ± 1221 | 0.133 ± 0.011 | n/a | n/a | n/a | n/a |
| DIS flooding | Secure-RPL | 99.8 ± 0.1 | 100.0 ± 0.0 | 68.7 ± 5.7 | 1729 ± 571 | 0.116 ± 0.013 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 12.6 ± 0.7 |
| DIS flooding | RPL-MRC | 99.8 ± 0.0 | 100.0 ± 0.0 | 68.9 ± 6.1 | 2685 ± 545 | 0.119 ± 0.014 | n/a | n/a | n/a | n/a |
| DIS flooding | Li-MSD | 99.8 ± 0.0 | 100.0 ± 0.0 | 69.5 ± 5.8 | 7514 ± 1221 | 0.133 ± 0.011 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a | n/a |
| DIS flooding | DIS-FDM | 99.8 ± 0.0 | 100.0 ± 0.0 | 68.8 ± 6.2 | 1808 ± 564 | 0.116 ± 0.013 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 50.2 ± 0.1 |
| DIS flooding | AEF-RPL, learning off | 99.8 ± 0.0 | 100.0 ± 0.0 | 68.8 ± 6.2 | 1808 ± 564 | 0.116 ± 0.013 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 50.2 ± 0.1 |
| DIS flooding | AEF-RPL, first learning version | 99.8 ± 0.0 | 100.0 ± 0.0 | 68.9 ± 6.2 | 1804 ± 562 | 0.116 ± 0.013 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 35.8 ± 8.2 |
| DIS flooding | AEF-RPL | 99.9 ± 0.0 | 100.0 ± 0.0 | 68.8 ± 6.1 | 1803 ± 559 | 0.116 ± 0.014 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 35.8 ± 8.2 |
| DAO manipulation | RPL (no defense) | 89.4 ± 7.1 | 99.9 ± 0.1 | 71.1 ± 6.1 | 1339 ± 146 | 0.181 ± 0.028 | n/a | n/a | n/a | n/a |
| DAO manipulation | Secure-RPL | 89.4 ± 7.1 | 99.9 ± 0.1 | 71.1 ± 6.1 | 1339 ± 146 | 0.181 ± 0.028 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a | n/a |
| DAO manipulation | RPL-MRC | 89.5 ± 6.7 | 99.9 ± 0.1 | 70.7 ± 5.8 | 1376 ± 289 | 0.182 ± 0.027 | n/a | n/a | n/a | n/a |
| DAO manipulation | Li-MSD | 89.9 ± 7.3 | 99.9 ± 0.1 | 69.3 ± 4.8 | 1552 ± 253 | 0.158 ± 0.016 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 282.6 ± 197.8 |
| DAO manipulation | DIS-FDM | 89.4 ± 7.1 | 99.9 ± 0.1 | 71.1 ± 6.1 | 1340 ± 145 | 0.181 ± 0.027 | 6.7 ± 21.1 | 5.0 ± 9.3 | 7.4 ± 12.8 | 1520.4 |
| DAO manipulation | AEF-RPL, learning off | 98.8 ± 2.1 | 99.9 ± 0.1 | 70.9 ± 6.3 | 1581 ± 618 | 0.137 ± 0.021 | 96.7 ± 10.5 | 5.4 ± 12.6 | 86.6 ± 28.6 | 138.1 ± 338.2 |
| DAO manipulation | AEF-RPL, first learning version | 99.0 ± 1.1 | 99.7 ± 0.6 | 70.8 ± 7.0 | 1366 ± 217 | 0.133 ± 0.021 | 100.0 ± 0.0 | 1.9 ± 3.7 | 90.0 ± 17.5 | 149.8 ± 256.9 |
| DAO manipulation | AEF-RPL | 99.0 ± 1.8 | 99.5 ± 1.2 | 70.1 ± 6.7 | 1703 ± 928 | 0.135 ± 0.024 | 100.0 ± 0.0 | 5.8 ± 12.2 | 83.3 ± 28.3 | 185.2 ± 353.4 |
| Combined DIS + DAO | RPL (no defense) | 88.6 ± 6.8 | 99.9 ± 0.1 | 71.7 ± 5.0 | 6941 ± 1514 | 0.199 ± 0.024 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | Secure-RPL | 89.5 ± 6.7 | 100.0 ± 0.0 | 69.6 ± 6.8 | 1780 ± 523 | 0.178 ± 0.028 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 12.4 ± 0.2 |
| Combined DIS + DAO | RPL-MRC | 88.7 ± 8.0 | 99.9 ± 0.1 | 71.3 ± 5.8 | 2591 ± 573 | 0.183 ± 0.024 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | Li-MSD | 91.0 ± 6.5 | 99.9 ± 0.0 | 68.6 ± 3.1 | 6623 ± 1382 | 0.165 ± 0.015 | 96.7 ± 10.5 | 0.0 ± 0.0 | 100.0 ± 0.0 | 246.1 ± 172.6 |
| Combined DIS + DAO | DIS-FDM | 88.7 ± 7.5 | 100.0 ± 0.0 | 71.0 ± 6.1 | 1780 ± 469 | 0.182 ± 0.027 | 100.0 ± 0.0 | 5.0 ± 9.3 | 83.3 ± 27.8 | 50.2 ± 0.1 |
| Combined DIS + DAO | AEF-RPL, learning off | 99.3 ± 1.0 | 99.4 ± 0.4 | 70.5 ± 7.7 | 1688 ± 362 | 0.131 ± 0.022 | 100.0 ± 0.0 | 3.5 ± 6.4 | 85.8 ± 23.7 | 32.1 ± 2.8 |
| Combined DIS + DAO | AEF-RPL, first learning version | 99.3 ± 1.0 | 99.4 ± 0.6 | 69.6 ± 6.2 | 1660 ± 353 | 0.128 ± 0.021 | 100.0 ± 0.0 | 9.2 ± 12.8 | 70.9 ± 29.9 | 25.5 ± 4.8 |
| Combined DIS + DAO | AEF-RPL | 99.3 ± 1.0 | 99.3 ± 0.7 | 69.2 ± 5.3 | 1686 ± 367 | 0.126 ± 0.018 | 100.0 ± 0.0 | 8.1 ± 12.9 | 75.1 ± 29.8 | 25.5 ± 4.8 |

## Main matrix: 10% malicious (3 of 29 sensor nodes), 30% mobile

| Attack | Defense | Downward PDR (%) | Upward PDR (%) | Delay (ms) | DIO msgs | Tx power (mW) | TPR (%) | FPR (%) | Precision (%) | Latency (s) |
|---|---|---|---|---|---|---|---|---|---|---|
| DIS flooding | RPL (no defense) | 98.9 ± 0.5 | 89.6 ± 5.5 | 66.2 ± 9.6 | 10842 ± 1714 | 0.160 ± 0.020 | n/a | n/a | n/a | n/a |
| DIS flooding | Secure-RPL | 98.9 ± 0.5 | 88.3 ± 6.4 | 65.2 ± 11.3 | 9952 ± 1595 | 0.161 ± 0.017 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 12.0 ± 1.6 |
| DIS flooding | RPL-MRC | 99.1 ± 0.3 | 91.0 ± 3.7 | 65.5 ± 11.0 | 7602 ± 2761 | 0.164 ± 0.026 | n/a | n/a | n/a | n/a |
| DIS flooding | Li-MSD | 98.9 ± 0.5 | 89.6 ± 5.5 | 66.2 ± 9.5 | 10849 ± 1718 | 0.160 ± 0.020 | 3.3 ± 10.5 | 0.8 ± 1.6 | 25.0 ± 35.4 | 3077.3 |
| DIS flooding | DIS-FDM | 99.0 ± 0.5 | 89.8 ± 5.2 | 65.7 ± 10.7 | 7933 ± 1450 | 0.149 ± 0.019 | 100.0 ± 0.0 | 53.1 ± 14.4 | 18.7 ± 4.3 | 35.4 ± 13.9 |
| DIS flooding | AEF-RPL, learning off | 98.9 ± 0.4 | 90.1 ± 4.6 | 64.5 ± 12.0 | 7191 ± 748 | 0.141 ± 0.018 | 100.0 ± 0.0 | 53.5 ± 14.7 | 18.6 ± 4.3 | 35.4 ± 13.9 |
| DIS flooding | AEF-RPL, first learning version | 98.9 ± 0.5 | 89.6 ± 4.8 | 64.9 ± 11.1 | 8904 ± 1308 | 0.152 ± 0.018 | 100.0 ± 0.0 | 53.5 ± 14.7 | 18.6 ± 4.3 | 11.4 ± 18.6 |
| DIS flooding | AEF-RPL | 98.9 ± 0.3 | 87.0 ± 7.2 | 65.2 ± 11.4 | 7693 ± 783 | 0.150 ± 0.020 | 100.0 ± 0.0 | 53.5 ± 14.7 | 18.6 ± 4.3 | 9.7 ± 19.0 |
| DAO manipulation | RPL (no defense) | 93.4 ± 6.5 | 89.9 ± 5.8 | 69.0 ± 12.0 | 9671 ± 1130 | 0.204 ± 0.026 | n/a | n/a | n/a | n/a |
| DAO manipulation | Secure-RPL | 93.6 ± 6.6 | 89.6 ± 5.8 | 68.8 ± 12.0 | 9243 ± 1123 | 0.198 ± 0.035 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a | n/a |
| DAO manipulation | RPL-MRC | 92.8 ± 8.2 | 91.3 ± 3.1 | 68.9 ± 11.7 | 6400 ± 2277 | 0.196 ± 0.042 | n/a | n/a | n/a | n/a |
| DAO manipulation | Li-MSD | 94.7 ± 7.1 | 89.3 ± 6.3 | 66.4 ± 11.2 | 9385 ± 1814 | 0.184 ± 0.019 | 96.7 ± 10.5 | 1.9 ± 2.7 | 88.5 ± 15.5 | 607.3 ± 429.4 |
| DAO manipulation | DIS-FDM | 94.1 ± 5.6 | 90.0 ± 6.7 | 69.1 ± 11.4 | 7591 ± 1017 | 0.196 ± 0.036 | 53.3 ± 39.1 | 55.8 ± 19.8 | 8.9 ± 6.1 | 180.5 ± 120.2 |
| DAO manipulation | AEF-RPL, learning off | 99.0 ± 0.4 | 89.3 ± 5.9 | 64.0 ± 13.0 | 6823 ± 629 | 0.144 ± 0.024 | 100.0 ± 0.0 | 54.2 ± 15.0 | 18.4 ± 4.3 | 49.1 ± 57.4 |
| DAO manipulation | AEF-RPL, first learning version | 98.5 ± 0.6 | 89.1 ± 5.7 | 68.6 ± 10.6 | 8336 ± 407 | 0.161 ± 0.021 | 100.0 ± 0.0 | 53.8 ± 14.2 | 18.4 ± 4.1 | 14.1 ± 19.7 |
| DAO manipulation | AEF-RPL | 98.8 ± 0.3 | 89.6 ± 5.7 | 67.1 ± 11.1 | 7523 ± 617 | 0.156 ± 0.018 | 100.0 ± 0.0 | 54.2 ± 14.2 | 18.4 ± 4.2 | 15.1 ± 20.0 |
| Combined DIS + DAO | RPL (no defense) | 93.1 ± 7.5 | 90.3 ± 5.3 | 70.1 ± 10.5 | 11062 ± 1555 | 0.205 ± 0.036 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | Secure-RPL | 93.4 ± 7.8 | 89.5 ± 5.8 | 73.3 ± 18.4 | 9087 ± 1307 | 0.199 ± 0.041 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 13.5 ± 2.5 |
| Combined DIS + DAO | RPL-MRC | 94.1 ± 7.1 | 91.0 ± 3.7 | 70.0 ± 11.4 | 6706 ± 2306 | 0.198 ± 0.044 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | Li-MSD | 93.7 ± 6.7 | 89.1 ± 7.9 | 66.6 ± 12.5 | 10462 ± 1593 | 0.182 ± 0.030 | 83.3 ± 28.3 | 0.4 ± 1.2 | 97.5 ± 7.9 | 429.9 ± 368.0 |
| Combined DIS + DAO | DIS-FDM | 93.6 ± 7.3 | 91.6 ± 4.2 | 69.6 ± 10.8 | 8373 ± 1909 | 0.198 ± 0.035 | 100.0 ± 0.0 | 53.1 ± 14.4 | 18.7 ± 4.3 | 36.1 ± 14.2 |
| Combined DIS + DAO | AEF-RPL, learning off | 98.9 ± 0.5 | 88.7 ± 6.9 | 65.9 ± 11.6 | 7018 ± 652 | 0.143 ± 0.021 | 100.0 ± 0.0 | 52.7 ± 14.2 | 18.8 ± 4.2 | 25.7 ± 10.2 |
| Combined DIS + DAO | AEF-RPL, first learning version | 98.6 ± 0.7 | 88.7 ± 6.5 | 66.1 ± 11.8 | 8506 ± 1246 | 0.161 ± 0.022 | 100.0 ± 0.0 | 53.5 ± 14.7 | 18.6 ± 4.3 | 6.7 ± 15.6 |
| Combined DIS + DAO | AEF-RPL | 98.9 ± 0.3 | 88.4 ± 5.9 | 65.9 ± 10.9 | 8043 ± 1190 | 0.158 ± 0.020 | 100.0 ± 0.0 | 53.5 ± 14.4 | 18.6 ± 4.3 | 7.1 ± 15.8 |

## Main matrix: 25% malicious (7 of 29 sensor nodes), static

| Attack | Defense | Downward PDR (%) | Upward PDR (%) | Delay (ms) | DIO msgs | Tx power (mW) | TPR (%) | FPR (%) | Precision (%) | Latency (s) |
|---|---|---|---|---|---|---|---|---|---|---|
| DIS flooding | RPL (no defense) | 99.8 ± 0.1 | 100.0 ± 0.0 | 69.3 ± 7.5 | 11684 ± 1140 | 0.146 ± 0.019 | n/a | n/a | n/a | n/a |
| DIS flooding | Secure-RPL | 99.8 ± 0.0 | 100.0 ± 0.0 | 68.4 ± 7.4 | 3466 ± 800 | 0.117 ± 0.018 | 97.1 ± 9.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 13.0 ± 0.8 |
| DIS flooding | RPL-MRC | 99.8 ± 0.0 | 100.0 ± 0.0 | 68.4 ± 7.6 | 4822 ± 738 | 0.123 ± 0.021 | n/a | n/a | n/a | n/a |
| DIS flooding | Li-MSD | 99.8 ± 0.1 | 100.0 ± 0.0 | 69.3 ± 7.5 | 11684 ± 1140 | 0.146 ± 0.019 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a | n/a |
| DIS flooding | DIS-FDM | 99.8 ± 0.1 | 100.0 ± 0.0 | 68.5 ± 7.7 | 3577 ± 790 | 0.118 ± 0.018 | 97.1 ± 9.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 50.2 ± 0.1 |
| DIS flooding | AEF-RPL, learning off | 99.8 ± 0.1 | 100.0 ± 0.0 | 68.5 ± 7.7 | 3577 ± 790 | 0.118 ± 0.018 | 97.1 ± 9.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 50.2 ± 0.1 |
| DIS flooding | AEF-RPL, first learning version | 99.8 ± 0.1 | 100.0 ± 0.0 | 68.2 ± 7.3 | 3570 ± 792 | 0.118 ± 0.017 | 97.1 ± 9.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 34.5 ± 4.5 |
| DIS flooding | AEF-RPL | 99.8 ± 0.1 | 100.0 ± 0.0 | 68.2 ± 7.2 | 3568 ± 793 | 0.118 ± 0.017 | 97.1 ± 9.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 34.5 ± 4.5 |
| DAO manipulation | RPL (no defense) | 80.1 ± 14.1 | 99.9 ± 0.2 | 75.1 ± 9.0 | 1901 ± 1102 | 0.294 ± 0.056 | n/a | n/a | n/a | n/a |
| DAO manipulation | Secure-RPL | 80.1 ± 14.1 | 99.9 ± 0.2 | 75.1 ± 9.0 | 1901 ± 1102 | 0.294 ± 0.056 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a | n/a |
| DAO manipulation | RPL-MRC | 79.3 ± 14.9 | 99.8 ± 0.2 | 75.7 ± 5.9 | 1998 ± 1826 | 0.300 ± 0.027 | n/a | n/a | n/a | n/a |
| DAO manipulation | Li-MSD | 83.7 ± 12.6 | 99.8 ± 0.2 | 69.0 ± 5.3 | 2063 ± 923 | 0.235 ± 0.034 | 91.4 ± 10.0 | 0.9 ± 1.9 | 97.3 ± 5.7 | 328.3 ± 261.0 |
| DAO manipulation | DIS-FDM | 81.1 ± 14.0 | 99.9 ± 0.1 | 73.4 ± 6.3 | 1715 ± 638 | 0.271 ± 0.054 | 11.4 ± 25.0 | 9.5 ± 14.1 | 13.8 ± 18.9 | 397.0 ± 23.8 |
| DAO manipulation | AEF-RPL, learning off | 98.4 ± 2.5 | 99.8 ± 0.3 | 71.0 ± 5.4 | 1597 ± 685 | 0.157 ± 0.019 | 95.7 ± 9.6 | 6.8 ± 14.4 | 89.7 ± 21.8 | 219.1 ± 192.2 |
| DAO manipulation | AEF-RPL, first learning version | 97.7 ± 2.7 | 99.8 ± 0.2 | 74.4 ± 11.6 | 1793 ± 1263 | 0.171 ± 0.036 | 92.9 ± 10.1 | 9.5 ± 25.6 | 88.7 ± 23.3 | 176.9 ± 196.4 |
| DAO manipulation | AEF-RPL | 97.6 ± 4.2 | 99.7 ± 0.4 | 75.6 ± 15.8 | 1672 ± 536 | 0.176 ± 0.054 | 92.9 ± 12.1 | 9.1 ± 13.7 | 83.6 ± 20.8 | 98.1 ± 97.0 |
| Combined DIS + DAO | RPL (no defense) | 79.6 ± 12.1 | 99.8 ± 0.2 | 78.1 ± 5.4 | 10151 ± 1231 | 0.322 ± 0.026 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | Secure-RPL | 77.4 ± 16.9 | 99.9 ± 0.1 | 75.3 ± 4.6 | 3654 ± 1635 | 0.298 ± 0.031 | 97.1 ± 9.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 13.5 ± 0.9 |
| Combined DIS + DAO | RPL-MRC | 77.8 ± 13.6 | 99.9 ± 0.1 | 76.4 ± 6.7 | 4679 ± 913 | 0.301 ± 0.037 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | Li-MSD | 82.3 ± 9.2 | 99.9 ± 0.1 | 69.9 ± 4.1 | 9702 ± 1243 | 0.247 ± 0.019 | 94.3 ± 10.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 337.9 ± 165.5 |
| Combined DIS + DAO | DIS-FDM | 77.2 ± 15.5 | 99.8 ± 0.1 | 74.1 ± 4.5 | 3360 ± 880 | 0.284 ± 0.036 | 97.1 ± 9.0 | 8.6 ± 10.8 | 82.6 ± 18.5 | 50.2 ± 0.1 |
| Combined DIS + DAO | AEF-RPL, learning off | 97.4 ± 4.6 | 98.2 ± 2.8 | 70.3 ± 6.9 | 3069 ± 695 | 0.153 ± 0.025 | 97.1 ± 9.0 | 7.7 ± 13.4 | 87.0 ± 21.6 | 33.0 ± 2.5 |
| Combined DIS + DAO | AEF-RPL, first learning version | 98.0 ± 3.3 | 98.9 ± 1.0 | 70.0 ± 5.8 | 3323 ± 1117 | 0.151 ± 0.022 | 97.1 ± 9.0 | 8.6 ± 14.1 | 85.0 ± 21.8 | 26.4 ± 3.9 |
| Combined DIS + DAO | AEF-RPL | 98.3 ± 2.2 | 98.8 ± 1.2 | 71.1 ± 6.8 | 3377 ± 1230 | 0.154 ± 0.021 | 97.1 ± 9.0 | 16.8 ± 21.5 | 74.9 ± 25.9 | 26.4 ± 3.9 |

## Main matrix: 25% malicious (7 of 29 sensor nodes), 30% mobile

| Attack | Defense | Downward PDR (%) | Upward PDR (%) | Delay (ms) | DIO msgs | Tx power (mW) | TPR (%) | FPR (%) | Precision (%) | Latency (s) |
|---|---|---|---|---|---|---|---|---|---|---|
| DIS flooding | RPL (no defense) | 98.8 ± 0.4 | 91.5 ± 3.4 | 79.8 ± 30.1 | 13305 ± 1224 | 0.195 ± 0.041 | n/a | n/a | n/a | n/a |
| DIS flooding | Secure-RPL | 99.0 ± 0.4 | 91.5 ± 4.0 | 78.6 ± 33.4 | 9142 ± 1017 | 0.180 ± 0.051 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 13.8 ± 2.6 |
| DIS flooding | RPL-MRC | 98.8 ± 1.0 | 91.4 ± 3.7 | 76.4 ± 28.2 | 7754 ± 1747 | 0.170 ± 0.037 | n/a | n/a | n/a | n/a |
| DIS flooding | Li-MSD | 98.9 ± 0.4 | 91.4 ± 3.5 | 79.4 ± 30.3 | 13150 ± 1139 | 0.193 ± 0.042 | 5.7 ± 10.0 | 1.8 ± 3.2 | 45.8 ± 41.7 | 1916.3 ± 999.4 |
| DIS flooding | DIS-FDM | 99.1 ± 0.4 | 91.9 ± 3.9 | 78.2 ± 29.6 | 8303 ± 964 | 0.173 ± 0.039 | 100.0 ± 0.0 | 47.7 ± 15.6 | 41.7 ± 9.6 | 43.3 ± 6.0 |
| DIS flooding | AEF-RPL, learning off | 98.8 ± 0.8 | 92.5 ± 2.8 | 78.5 ± 31.0 | 8070 ± 915 | 0.167 ± 0.043 | 100.0 ± 0.0 | 48.2 ± 15.2 | 41.3 ± 9.3 | 43.2 ± 5.7 |
| DIS flooding | AEF-RPL, first learning version | 99.0 ± 0.3 | 91.8 ± 3.8 | 78.5 ± 33.1 | 9175 ± 813 | 0.179 ± 0.047 | 100.0 ± 0.0 | 48.2 ± 15.2 | 41.3 ± 9.3 | 15.6 ± 10.6 |
| DIS flooding | AEF-RPL | 99.1 ± 0.3 | 91.4 ± 3.6 | 77.3 ± 30.4 | 8879 ± 1228 | 0.177 ± 0.039 | 100.0 ± 0.0 | 48.2 ± 15.2 | 41.3 ± 9.3 | 15.2 ± 10.7 |
| DAO manipulation | RPL (no defense) | 83.4 ± 15.5 | 90.6 ± 6.2 | 84.3 ± 30.3 | 10434 ± 2197 | 0.286 ± 0.057 | n/a | n/a | n/a | n/a |
| DAO manipulation | Secure-RPL | 84.5 ± 15.2 | 90.6 ± 6.1 | 83.6 ± 27.9 | 10327 ± 1839 | 0.287 ± 0.053 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a | n/a |
| DAO manipulation | RPL-MRC | 84.0 ± 13.2 | 91.1 ± 5.0 | 72.8 ± 15.1 | 7783 ± 2221 | 0.257 ± 0.053 | n/a | n/a | n/a | n/a |
| DAO manipulation | Li-MSD | 85.8 ± 15.5 | 92.5 ± 4.1 | 73.0 ± 24.3 | 8860 ± 1038 | 0.236 ± 0.043 | 71.4 ± 21.3 | 1.4 ± 4.3 | 95.0 ± 15.8 | 784.3 ± 377.4 |
| DAO manipulation | DIS-FDM | 82.2 ± 17.6 | 92.3 ± 4.1 | 85.8 ± 31.4 | 10726 ± 3214 | 0.288 ± 0.049 | 82.9 ± 17.6 | 72.7 ± 22.5 | 27.3 ± 4.5 | 542.8 ± 523.5 |
| DAO manipulation | AEF-RPL, learning off | 97.6 ± 2.4 | 91.4 ± 3.7 | 75.4 ± 29.5 | 6892 ± 590 | 0.181 ± 0.049 | 94.3 ± 7.4 | 55.9 ± 16.2 | 35.9 ± 6.3 | 49.1 ± 28.9 |
| DAO manipulation | AEF-RPL, first learning version | 96.6 ± 3.7 | 92.9 ± 2.5 | 81.1 ± 35.1 | 8562 ± 1493 | 0.214 ± 0.067 | 97.1 ± 6.0 | 56.4 ± 19.4 | 37.4 ± 10.9 | 54.2 ± 74.9 |
| DAO manipulation | AEF-RPL | 96.1 ± 5.4 | 91.9 ± 2.9 | 79.8 ± 27.3 | 8395 ± 1520 | 0.207 ± 0.042 | 97.1 ± 6.0 | 59.5 ± 17.2 | 35.6 ± 9.2 | 65.3 ± 83.1 |
| Combined DIS + DAO | RPL (no defense) | 82.6 ± 16.8 | 93.3 ± 3.2 | 83.9 ± 32.6 | 12512 ± 2403 | 0.294 ± 0.061 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | Secure-RPL | 80.8 ± 15.5 | 89.7 ± 8.2 | 84.5 ± 23.6 | 12932 ± 5448 | 0.303 ± 0.055 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 17.3 ± 5.3 |
| Combined DIS + DAO | RPL-MRC | 82.1 ± 16.3 | 92.2 ± 3.9 | 82.6 ± 23.0 | 8723 ± 2971 | 0.288 ± 0.061 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | Li-MSD | 85.7 ± 15.7 | 92.5 ± 3.0 | 74.5 ± 27.8 | 11289 ± 1650 | 0.247 ± 0.048 | 65.7 ± 21.5 | 2.7 ± 3.2 | 88.4 ± 14.8 | 508.4 ± 369.0 |
| Combined DIS + DAO | DIS-FDM | 80.8 ± 15.8 | 91.5 ± 4.7 | 81.1 ± 26.9 | 10492 ± 4560 | 0.296 ± 0.050 | 100.0 ± 0.0 | 69.5 ± 24.2 | 33.1 ± 8.4 | 43.2 ± 6.0 |
| Combined DIS + DAO | AEF-RPL, learning off | 98.1 ± 1.9 | 89.9 ± 4.4 | 73.7 ± 23.6 | 7301 ± 920 | 0.178 ± 0.044 | 100.0 ± 0.0 | 54.5 ± 16.6 | 38.5 ± 9.9 | 32.9 ± 4.4 |
| Combined DIS + DAO | AEF-RPL, first learning version | 97.1 ± 3.8 | 91.8 ± 3.5 | 78.3 ± 31.8 | 9026 ± 1066 | 0.200 ± 0.054 | 100.0 ± 0.0 | 55.0 ± 21.7 | 39.0 ± 10.9 | 13.4 ± 10.8 |
| Combined DIS + DAO | AEF-RPL | 96.4 ± 5.3 | 91.4 ± 3.4 | 76.1 ± 23.5 | 8102 ± 922 | 0.187 ± 0.042 | 100.0 ± 0.0 | 55.0 ± 17.6 | 38.4 ± 10.0 | 14.0 ± 9.2 |

## Main matrix: 50% malicious (14 of 29 sensor nodes), static

| Attack | Defense | Downward PDR (%) | Upward PDR (%) | Delay (ms) | DIO msgs | Tx power (mW) | TPR (%) | FPR (%) | Precision (%) | Latency (s) |
|---|---|---|---|---|---|---|---|---|---|---|
| DIS flooding | RPL (no defense) | 99.7 ± 0.1 | 100.0 ± 0.0 | 69.0 ± 6.8 | 15658 ± 611 | 0.147 ± 0.026 | n/a | n/a | n/a | n/a |
| DIS flooding | Secure-RPL | 99.8 ± 0.0 | 100.0 ± 0.0 | 68.0 ± 6.8 | 7749 ± 420 | 0.109 ± 0.024 | 92.9 ± 8.9 | 0.0 ± 0.0 | 100.0 ± 0.0 | 13.3 ± 0.5 |
| DIS flooding | RPL-MRC | 99.8 ± 0.1 | 100.0 ± 0.0 | 68.2 ± 6.9 | 9052 ± 429 | 0.112 ± 0.025 | n/a | n/a | n/a | n/a |
| DIS flooding | Li-MSD | 99.7 ± 0.1 | 100.0 ± 0.0 | 69.0 ± 6.8 | 15658 ± 611 | 0.147 ± 0.026 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a | n/a |
| DIS flooding | DIS-FDM | 99.7 ± 0.0 | 100.0 ± 0.0 | 68.0 ± 7.0 | 7907 ± 444 | 0.111 ± 0.030 | 92.9 ± 8.9 | 0.0 ± 0.0 | 100.0 ± 0.0 | 50.4 ± 0.5 |
| DIS flooding | AEF-RPL, learning off | 99.7 ± 0.0 | 100.0 ± 0.0 | 68.0 ± 7.0 | 7907 ± 444 | 0.111 ± 0.030 | 92.9 ± 8.9 | 0.0 ± 0.0 | 100.0 ± 0.0 | 50.4 ± 0.5 |
| DIS flooding | AEF-RPL, first learning version | 99.8 ± 0.1 | 100.0 ± 0.0 | 68.0 ± 6.7 | 7940 ± 411 | 0.109 ± 0.024 | 92.9 ± 8.9 | 0.0 ± 0.0 | 100.0 ± 0.0 | 38.1 ± 4.6 |
| DIS flooding | AEF-RPL | 99.8 ± 0.1 | 100.0 ± 0.0 | 68.2 ± 6.8 | 7900 ± 438 | 0.110 ± 0.025 | 92.9 ± 8.9 | 0.0 ± 0.0 | 100.0 ± 0.0 | 38.1 ± 4.6 |
| DAO manipulation | RPL (no defense) | 67.0 ± 16.2 | 99.2 ± 0.8 | 86.5 ± 16.0 | 4100 ± 5478 | 0.469 ± 0.108 | n/a | n/a | n/a | n/a |
| DAO manipulation | Secure-RPL | 66.8 ± 16.0 | 99.1 ± 1.0 | 87.4 ± 16.3 | 4141 ± 5606 | 0.472 ± 0.112 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a | n/a |
| DAO manipulation | RPL-MRC | 68.8 ± 16.7 | 99.3 ± 0.6 | 79.7 ± 12.3 | 3233 ± 2674 | 0.430 ± 0.068 | n/a | n/a | n/a | n/a |
| DAO manipulation | Li-MSD | 70.6 ± 15.4 | 99.2 ± 0.6 | 76.2 ± 13.7 | 4544 ± 4561 | 0.369 ± 0.081 | 70.0 ± 19.6 | 2.0 ± 3.2 | 97.5 ± 4.2 | 505.2 ± 175.9 |
| DAO manipulation | DIS-FDM | 63.6 ± 15.3 | 98.9 ± 1.7 | 87.7 ± 14.8 | 3718 ± 4210 | 0.451 ± 0.082 | 37.9 ± 28.2 | 32.0 ± 23.5 | 50.2 ± 13.3 | 1043.3 ± 601.0 |
| DAO manipulation | AEF-RPL, learning off | 88.3 ± 5.7 | 97.9 ± 1.9 | 84.8 ± 15.6 | 3872 ± 3783 | 0.277 ± 0.042 | 88.6 ± 10.2 | 28.7 ± 34.6 | 79.7 ± 20.1 | 364.0 ± 183.4 |
| DAO manipulation | AEF-RPL, first learning version | 90.0 ± 6.2 | 99.1 ± 1.1 | 88.5 ± 19.4 | 5111 ± 5485 | 0.300 ± 0.072 | 86.4 ± 11.4 | 45.3 ± 39.0 | 69.6 ± 19.9 | 346.9 ± 249.4 |
| DAO manipulation | AEF-RPL | 89.1 ± 6.7 | 99.3 ± 0.8 | 88.8 ± 32.4 | 3234 ± 2560 | 0.273 ± 0.051 | 86.4 ± 9.8 | 37.3 ± 39.9 | 75.1 ± 20.7 | 369.6 ± 162.7 |
| Combined DIS + DAO | RPL (no defense) | 67.4 ± 15.0 | 99.4 ± 0.3 | 84.2 ± 14.9 | 11766 ± 2391 | 0.476 ± 0.100 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | Secure-RPL | 64.3 ± 14.4 | 99.1 ± 1.0 | 88.4 ± 18.4 | 10043 ± 7805 | 0.466 ± 0.132 | 92.9 ± 8.9 | 0.0 ± 0.0 | 100.0 ± 0.0 | 16.7 ± 2.9 |
| Combined DIS + DAO | RPL-MRC | 68.4 ± 18.1 | 99.4 ± 0.3 | 88.1 ± 13.7 | 7014 ± 1405 | 0.484 ± 0.079 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | Li-MSD | 72.8 ± 16.7 | 99.6 ± 0.3 | 73.8 ± 13.8 | 9771 ± 1171 | 0.324 ± 0.046 | 68.6 ± 14.0 | 2.0 ± 3.2 | 97.1 ± 4.8 | 336.9 ± 174.6 |
| Combined DIS + DAO | DIS-FDM | 67.5 ± 17.4 | 99.3 ± 0.9 | 81.4 ± 12.1 | 9433 ± 7083 | 0.459 ± 0.099 | 92.9 ± 8.9 | 46.0 ± 27.1 | 67.4 ± 11.5 | 51.6 ± 3.2 |
| Combined DIS + DAO | AEF-RPL, learning off | 88.5 ± 7.6 | 98.1 ± 1.7 | 75.5 ± 11.5 | 6646 ± 3446 | 0.209 ± 0.034 | 92.9 ± 8.9 | 25.3 ± 20.1 | 79.5 ± 14.7 | 41.5 ± 10.8 |
| Combined DIS + DAO | AEF-RPL, first learning version | 88.8 ± 6.9 | 98.1 ± 2.0 | 80.7 ± 15.3 | 5786 ± 1570 | 0.225 ± 0.051 | 92.9 ± 8.9 | 46.7 ± 28.5 | 67.6 ± 13.9 | 30.4 ± 3.9 |
| Combined DIS + DAO | AEF-RPL | 87.5 ± 7.0 | 98.3 ± 1.0 | 90.3 ± 20.8 | 5791 ± 830 | 0.260 ± 0.046 | 92.9 ± 8.9 | 39.3 ± 25.6 | 71.1 ± 12.1 | 30.1 ± 3.9 |

## Main matrix: 50% malicious (14 of 29 sensor nodes), 30% mobile

| Attack | Defense | Downward PDR (%) | Upward PDR (%) | Delay (ms) | DIO msgs | Tx power (mW) | TPR (%) | FPR (%) | Precision (%) | Latency (s) |
|---|---|---|---|---|---|---|---|---|---|---|
| DIS flooding | RPL (no defense) | 98.8 ± 0.6 | 89.2 ± 9.0 | 65.9 ± 11.8 | 13543 ± 1670 | 0.164 ± 0.021 | n/a | n/a | n/a | n/a |
| DIS flooding | Secure-RPL | 99.0 ± 0.4 | 89.7 ± 7.2 | 67.3 ± 13.2 | 10562 ± 833 | 0.160 ± 0.031 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 21.6 ± 17.6 |
| DIS flooding | RPL-MRC | 99.0 ± 0.5 | 91.1 ± 3.6 | 66.4 ± 12.1 | 9017 ± 934 | 0.147 ± 0.028 | n/a | n/a | n/a | n/a |
| DIS flooding | Li-MSD | 98.8 ± 0.5 | 89.2 ± 9.0 | 65.9 ± 11.8 | 13558 ± 1677 | 0.164 ± 0.021 | 0.7 ± 2.3 | 0.0 ± 0.0 | 100.0 | 1607.8 |
| DIS flooding | DIS-FDM | 99.0 ± 0.4 | 88.2 ± 10.9 | 66.3 ± 12.8 | 9298 ± 1444 | 0.147 ± 0.018 | 100.0 ± 0.0 | 47.3 ± 13.1 | 66.9 ± 6.3 | 70.3 ± 46.7 |
| DIS flooding | AEF-RPL, learning off | 99.1 ± 0.3 | 89.4 ± 6.0 | 65.0 ± 12.3 | 9196 ± 1721 | 0.138 ± 0.021 | 100.0 ± 0.0 | 46.7 ± 13.7 | 67.2 ± 6.6 | 69.6 ± 46.0 |
| DIS flooding | AEF-RPL, first learning version | 99.0 ± 0.4 | 89.0 ± 7.7 | 65.3 ± 12.5 | 10610 ± 1368 | 0.151 ± 0.021 | 100.0 ± 0.0 | 50.0 ± 14.8 | 65.8 ± 6.9 | 28.4 ± 27.7 |
| DIS flooding | AEF-RPL | 99.0 ± 0.4 | 89.3 ± 5.9 | 64.9 ± 12.4 | 9995 ± 1398 | 0.148 ± 0.015 | 100.0 ± 0.0 | 49.3 ± 13.8 | 66.0 ± 6.6 | 31.9 ± 32.8 |
| DAO manipulation | RPL (no defense) | 71.3 ± 20.9 | 93.4 ± 3.9 | 81.2 ± 21.5 | 10865 ± 5803 | 0.363 ± 0.099 | n/a | n/a | n/a | n/a |
| DAO manipulation | Secure-RPL | 72.2 ± 20.6 | 94.6 ± 1.8 | 78.2 ± 16.6 | 8929 ± 2012 | 0.355 ± 0.094 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a | n/a |
| DAO manipulation | RPL-MRC | 72.8 ± 20.7 | 93.6 ± 3.9 | 78.8 ± 16.3 | 9662 ± 5344 | 0.350 ± 0.115 | n/a | n/a | n/a | n/a |
| DAO manipulation | Li-MSD | 76.7 ± 17.0 | 94.1 ± 2.8 | 72.3 ± 16.0 | 8745 ± 1502 | 0.307 ± 0.066 | 57.9 ± 10.4 | 2.0 ± 4.5 | 97.1 ± 6.7 | 936.8 ± 388.8 |
| DAO manipulation | DIS-FDM | 73.0 ± 20.9 | 94.3 ± 3.4 | 78.9 ± 13.9 | 9991 ± 4984 | 0.366 ± 0.089 | 79.3 ± 21.4 | 80.0 ± 18.6 | 47.7 ± 5.6 | 662.9 ± 615.9 |
| DAO manipulation | AEF-RPL, learning off | 89.8 ± 14.8 | 91.8 ± 4.9 | 71.3 ± 15.6 | 6669 ± 813 | 0.201 ± 0.046 | 92.1 ± 7.1 | 60.0 ± 17.8 | 59.6 ± 6.0 | 162.4 ± 90.6 |
| DAO manipulation | AEF-RPL, first learning version | 87.6 ± 14.5 | 89.5 ± 5.9 | 76.0 ± 14.9 | 8427 ± 1267 | 0.252 ± 0.043 | 97.9 ± 3.5 | 75.3 ± 25.0 | 56.0 ± 8.7 | 156.3 ± 135.6 |
| DAO manipulation | AEF-RPL | 88.0 ± 14.6 | 89.6 ± 8.9 | 79.6 ± 14.0 | 9340 ± 2928 | 0.240 ± 0.051 | 96.4 ± 6.1 | 74.0 ± 26.4 | 56.2 ± 9.5 | 151.4 ± 125.7 |
| Combined DIS + DAO | RPL (no defense) | 71.8 ± 17.9 | 93.9 ± 3.1 | 76.0 ± 15.3 | 11142 ± 849 | 0.366 ± 0.108 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | Secure-RPL | 74.3 ± 20.4 | 91.0 ± 5.0 | 81.1 ± 14.9 | 9711 ± 2141 | 0.331 ± 0.095 | 100.0 ± 0.0 | 0.0 ± 0.0 | 100.0 ± 0.0 | 24.6 ± 17.7 |
| Combined DIS + DAO | RPL-MRC | 75.5 ± 19.6 | 95.6 ± 1.2 | 77.3 ± 19.3 | 7316 ± 1430 | 0.345 ± 0.104 | n/a | n/a | n/a | n/a |
| Combined DIS + DAO | Li-MSD | 78.3 ± 17.3 | 93.4 ± 3.4 | 72.8 ± 11.9 | 11517 ± 2057 | 0.318 ± 0.057 | 59.3 ± 13.1 | 2.0 ± 4.5 | 97.7 ± 5.1 | 972.6 ± 492.0 |
| Combined DIS + DAO | DIS-FDM | 77.6 ± 13.9 | 94.1 ± 3.6 | 72.4 ± 13.0 | 8707 ± 2004 | 0.332 ± 0.095 | 100.0 ± 0.0 | 64.7 ± 22.9 | 60.2 ± 8.4 | 69.0 ± 47.1 |
| Combined DIS + DAO | AEF-RPL, learning off | 93.2 ± 9.0 | 92.1 ± 3.8 | 71.8 ± 19.8 | 7250 ± 1039 | 0.199 ± 0.057 | 100.0 ± 0.0 | 59.3 ± 20.2 | 62.0 ± 7.7 | 58.6 ± 45.8 |
| Combined DIS + DAO | AEF-RPL, first learning version | 88.3 ± 17.6 | 91.4 ± 3.8 | 71.3 ± 13.0 | 9892 ± 1829 | 0.227 ± 0.046 | 100.0 ± 0.0 | 71.3 ± 24.8 | 57.9 ± 9.1 | 28.3 ± 29.2 |
| Combined DIS + DAO | AEF-RPL | 92.3 ± 7.3 | 91.9 ± 3.5 | 72.5 ± 12.5 | 8912 ± 1373 | 0.224 ± 0.037 | 100.0 ± 0.0 | 69.3 ± 18.9 | 58.0 ± 6.4 | 27.4 ± 29.8 |

## False positives with no attacker present

| Mobility | Defense | FPR (%) | Legit nodes flagged |
|---|---|---|---|
| static | Secure-RPL | 0.0 ± 0.0 | 0.00 ± 0.00 |
| static | Li-MSD | 0.0 ± 0.0 | 0.00 ± 0.00 |
| static | DIS-FDM | 0.0 ± 0.0 | 0.00 ± 0.00 |
| static | AEF-RPL, learning off | 0.0 ± 0.0 | 0.00 ± 0.00 |
| static | AEF-RPL, first learning version | 0.0 ± 0.0 | 0.00 ± 0.00 |
| static | AEF-RPL | 0.0 ± 0.0 | 0.00 ± 0.00 |
| 30% mobile | Secure-RPL | 0.0 ± 0.0 | 0.00 ± 0.00 |
| 30% mobile | Li-MSD | 1.4 ± 3.3 | 0.00 ± 0.00 |
| 30% mobile | DIS-FDM | 43.4 ± 12.5 | 0.70 ± 1.25 |
| 30% mobile | AEF-RPL, learning off | 42.4 ± 12.5 | 0.80 ± 1.32 |
| 30% mobile | AEF-RPL, first learning version | 43.8 ± 12.4 | 1.60 ± 2.50 |
| 30% mobile | AEF-RPL | 45.2 ± 12.8 | 1.80 ± 2.44 |

## RQ1: reproduction against the paper's published values (static)

| Experiment | x | Condition | Metric | Paper | Ours |
|---|---|---|---|---|---|
| interval | 3 | RPL | pdr_pct | 97.0 | 99.987 |
| interval | 30 | RPL | pdr_pct | 98.0 | 99.987 |
| interval | 3 | RPL-DIS | pdr_pct | 70.9 | 99.973 |
| interval | 30 | RPL-DIS | pdr_pct | 88.37 | 99.98 |
| interval | 3 | DIS-FDM | pdr_pct | 92.0 | 99.97 |
| interval | 30 | DIS-FDM | pdr_pct | 96.21 | 99.98 |
| interval | 3 | RPL | delay_ms | 120.0 | 69.776 |
| interval | 30 | RPL | delay_ms | 110.0 | 69.776 |
| interval | 3 | RPL-DIS | delay_ms | 362.0 | 69.776 |
| interval | 3 | DIS-FDM | delay_ms | 140.0 | 69.072 |
| interval | 30 | DIS-FDM | delay_ms | 120.0 | 69.536 |
| interval | 3 | RPL | dio | 590.0 | 1245.1 |
| interval | 30 | RPL | dio | 520.0 | 1245.1 |
| interval | 3 | RPL-DIS | dio | 4080.0 | 10450.7 |
| interval | 30 | RPL-DIS | dio | 2971.0 | 6664.8 |
| interval | 3 | RPL-MRC | dio | 692.0 | 3597.4 |
| interval | 30 | RPL-MRC | dio | 630.0 | 2540.7 |
| interval | 3 | DIS-FDM | dio | 673.0 | 2347.8 |
| interval | 30 | DIS-FDM | dio | 596.0 | 6664.8 |
| interval | 3 | RPL | power_mw | 1.9 | 59.976 |
| interval | 30 | RPL | power_mw | 1.5 | 59.976 |
| interval | 3 | RPL-DIS | power_mw | 5.1 | 59.973 |
| interval | 3 | DIS-FDM | power_mw | 2.6 | 59.977 |
| interval | 30 | DIS-FDM | power_mw | 1.36 | 59.975 |
| attackers | 2 | RPL | pdr_pct | 98.0 | 99.987 |
| attackers | 10 | RPL | pdr_pct | 95.0 | 99.987 |
| attackers | 2 | RPL-DIS | pdr_pct | 83.0 | 99.967 |
| attackers | 10 | RPL-DIS | pdr_pct | 67.0 | 99.962 |
| attackers | 2 | DIS-FDM | pdr_pct | 95.61 | 99.984 |
| attackers | 10 | DIS-FDM | pdr_pct | 87.45 | 99.971 |
| attackers | 2 | RPL | delay_ms | 99.0 | 69.776 |
| attackers | 10 | RPL | delay_ms | 107.0 | 69.776 |
| attackers | 10 | RPL-DIS | delay_ms | 304.0 | 69.757 |
| attackers | 2 | DIS-FDM | delay_ms | 132.0 | 69.484 |
| attackers | 10 | DIS-FDM | delay_ms | 173.0 | 68.493 |
| attackers | 2 | RPL | dio | 500.0 | 1245.1 |
| attackers | 10 | RPL | dio | 550.0 | 1245.1 |
| attackers | 10 | RPL-DIS | dio | 4627.0 | 14406.3 |
| attackers | 2 | RPL | power_mw | 1.5 | 59.976 |
| attackers | 10 | RPL | power_mw | 2.3 | 59.976 |
| attackers | 10 | RPL-DIS | power_mw | 6.05 | 59.973 |
| attackers | 2 | RPL-MRC | power_mw | 1.9 | 59.976 |
| attackers | 10 | RPL-MRC | power_mw | 2.7 | 59.977 |
| attackers | 2 | DIS-FDM | power_mw | 1.8 | 59.976 |
| attackers | 10 | DIS-FDM | power_mw | 2.64 | 59.977 |

## RQ2: combined attack vs each single attack, no defense (one-sided Wilcoxon, Holm-adjusted within each comparison and metric)

| Malicious | Mobility | Comparison | Metric | Median diff | p (Holm) | r_rb |
|---|---|---|---|---|---|---|
| 10% | static | Combined vs DIS flooding | pdr_down | -0.09202 | 0.00586 | -1.00 |
| 10% | static | Combined vs DIS flooding | pdr_up | -0.0001167 | 0.32 | -0.53 |
| 10% | static | Combined vs DIS flooding | dio_total | -463 | 1 | -1.00 |
| 10% | static | Combined vs DIS flooding | tx_power_mw | 0.0608 | 0.00586 | 1.00 |
| 10% | static | Combined vs DIS flooding | delay_up_ms | 3.466 | 0.158 | 0.60 |
| 10% | static | Combined vs DAO manipulation | pdr_down | -0.009943 | 0.111 | -0.75 |
| 10% | static | Combined vs DAO manipulation | pdr_up | 2.76e-07 | 1 | 0.09 |
| 10% | static | Combined vs DAO manipulation | dio_total | 6042 | 0.00586 | 1.00 |
| 10% | static | Combined vs DAO manipulation | tx_power_mw | 0.01643 | 0.00586 | 1.00 |
| 10% | static | Combined vs DAO manipulation | delay_up_ms | 1.049 | 0.4 | 0.53 |
| 10% | 30% mobile | Combined vs DIS flooding | pdr_down | -0.01754 | 0.00586 | -1.00 |
| 10% | 30% mobile | Combined vs DIS flooding | pdr_up | 0.00708 | 1 | 0.42 |
| 10% | 30% mobile | Combined vs DIS flooding | dio_total | -182.5 | 1 | 0.05 |
| 10% | 30% mobile | Combined vs DIS flooding | tx_power_mw | 0.04249 | 0.00586 | 1.00 |
| 10% | 30% mobile | Combined vs DIS flooding | delay_up_ms | 3.451 | 0.0488 | 0.82 |
| 10% | 30% mobile | Combined vs DAO manipulation | pdr_down | -0.004024 | 1 | -0.13 |
| 10% | 30% mobile | Combined vs DAO manipulation | pdr_up | 0.00197 | 1 | 0.27 |
| 10% | 30% mobile | Combined vs DAO manipulation | dio_total | 1828 | 0.0469 | 0.71 |
| 10% | 30% mobile | Combined vs DAO manipulation | tx_power_mw | 0.001642 | 1 | -0.09 |
| 10% | 30% mobile | Combined vs DAO manipulation | delay_up_ms | 0.6357 | 1 | 0.24 |
| 25% | static | Combined vs DIS flooding | pdr_down | -0.182 | 0.00586 | -1.00 |
| 25% | static | Combined vs DIS flooding | pdr_up | -0.001016 | 0.00586 | -1.00 |
| 25% | static | Combined vs DIS flooding | dio_total | -1434 | 1 | -1.00 |
| 25% | static | Combined vs DIS flooding | tx_power_mw | 0.1776 | 0.00586 | 1.00 |
| 25% | static | Combined vs DIS flooding | delay_up_ms | 10.14 | 0.0176 | 0.93 |
| 25% | static | Combined vs DAO manipulation | pdr_down | -0.004667 | 1 | -0.13 |
| 25% | static | Combined vs DAO manipulation | pdr_up | -0.0004629 | 0.826 | -0.42 |
| 25% | static | Combined vs DAO manipulation | dio_total | 7951 | 0.00586 | 1.00 |
| 25% | static | Combined vs DAO manipulation | tx_power_mw | 0.03076 | 0.161 | 0.67 |
| 25% | static | Combined vs DAO manipulation | delay_up_ms | 2.573 | 0.252 | 0.64 |
| 25% | 30% mobile | Combined vs DIS flooding | pdr_down | -0.1006 | 0.00586 | -1.00 |
| 25% | 30% mobile | Combined vs DIS flooding | pdr_up | 0.01488 | 1 | 0.71 |
| 25% | 30% mobile | Combined vs DIS flooding | dio_total | -1140 | 1 | -0.45 |
| 25% | 30% mobile | Combined vs DIS flooding | tx_power_mw | 0.1144 | 0.00586 | 0.96 |
| 25% | 30% mobile | Combined vs DIS flooding | delay_up_ms | 7.963 | 0.188 | 0.35 |
| 25% | 30% mobile | Combined vs DAO manipulation | pdr_down | 0.0005215 | 1 | -0.09 |
| 25% | 30% mobile | Combined vs DAO manipulation | pdr_up | 0.006813 | 1 | 0.75 |
| 25% | 30% mobile | Combined vs DAO manipulation | dio_total | 2296 | 0.0205 | 0.85 |
| 25% | 30% mobile | Combined vs DAO manipulation | tx_power_mw | 0.004755 | 0.551 | 0.42 |
| 25% | 30% mobile | Combined vs DAO manipulation | delay_up_ms | -2.38 | 1 | -0.35 |
| 50% | static | Combined vs DIS flooding | pdr_down | -0.3145 | 0.00586 | -1.00 |
| 50% | static | Combined vs DIS flooding | pdr_up | -0.005461 | 0.00586 | -1.00 |
| 50% | static | Combined vs DIS flooding | dio_total | -5150 | 1 | -0.89 |
| 50% | static | Combined vs DIS flooding | tx_power_mw | 0.3139 | 0.00586 | 1.00 |
| 50% | static | Combined vs DIS flooding | delay_up_ms | 20.4 | 0.0488 | 0.82 |
| 50% | static | Combined vs DAO manipulation | pdr_down | -0.02209 | 0.806 | -0.38 |
| 50% | static | Combined vs DAO manipulation | pdr_up | 0.00247 | 1 | 0.42 |
| 50% | static | Combined vs DAO manipulation | dio_total | 8218 | 0.00781 | 0.96 |
| 50% | static | Combined vs DAO manipulation | tx_power_mw | 0.01357 | 0.938 | 0.20 |
| 50% | static | Combined vs DAO manipulation | delay_up_ms | 1.791 | 1 | 0.13 |
| 50% | 30% mobile | Combined vs DIS flooding | pdr_down | -0.2502 | 0.00586 | -1.00 |
| 50% | 30% mobile | Combined vs DIS flooding | pdr_up | 0.02513 | 1 | 0.93 |
| 50% | 30% mobile | Combined vs DIS flooding | dio_total | -2424 | 1 | -0.89 |
| 50% | 30% mobile | Combined vs DIS flooding | tx_power_mw | 0.2117 | 0.00586 | 1.00 |
| 50% | 30% mobile | Combined vs DIS flooding | delay_up_ms | 9.743 | 0.158 | 0.56 |
| 50% | 30% mobile | Combined vs DAO manipulation | pdr_down | 0.008293 | 1 | 0.20 |
| 50% | 30% mobile | Combined vs DAO manipulation | pdr_up | 0.01007 | 1 | 0.27 |
| 50% | 30% mobile | Combined vs DAO manipulation | dio_total | 2382 | 0.138 | 0.42 |
| 50% | 30% mobile | Combined vs DAO manipulation | tx_power_mw | 0.01351 | 1 | 0.02 |
| 50% | 30% mobile | Combined vs DAO manipulation | delay_up_ms | 1.653 | 1 | -0.24 |

## RQ3/RQ4: proposed defense vs each baseline (two-sided Wilcoxon, Holm-adjusted within each baseline, attack and metric, p < 0.05)

| Baseline | Attack | Malicious | Mobility | Metric | Proposed | Baseline | Median diff | p (Holm) | r_rb |
|---|---|---|---|---|---|---|---|---|---|
| DIS-FDM | DIS flooding | 10% | static | detect_latency_s | 35.77 ± 8.2 | 50.22 ± 0.13 | -14.89 | 0.0117 | -1.00 |
| DIS-FDM | DIS flooding | 10% | static | pdr_down | 0.9987 ± 0.00033 | 0.9978 ± 0.00049 | 0.0008161 | 0.0234 | 0.96 |
| DIS-FDM | DIS flooding | 10% | 30% mobile | detect_latency_s | 9.712 ± 19 | 35.35 ± 14 | -26.52 | 0.0117 | -1.00 |
| DIS-FDM | DIS flooding | 25% | static | detect_latency_s | 34.53 ± 4.5 | 50.24 ± 0.08 | -16.98 | 0.0117 | -1.00 |
| DIS-FDM | DIS flooding | 25% | 30% mobile | detect_latency_s | 15.19 ± 11 | 43.3 ± 6 | -25.7 | 0.0117 | -1.00 |
| DIS-FDM | DIS flooding | 50% | static | detect_latency_s | 38.06 ± 4.6 | 50.42 ± 0.51 | -12.96 | 0.0117 | -1.00 |
| DIS-FDM | DIS flooding | 50% | 30% mobile | detect_latency_s | 31.95 ± 33 | 70.3 ± 47 | -25.37 | 0.0117 | -1.00 |
| DIS-FDM | DIS flooding | 50% | 30% mobile | dio_total | 9995 ± 1.4e+03 | 9298 ± 1.4e+03 | 795.5 | 0.0352 | 0.93 |
| DIS-FDM | DAO manipulation | 10% | static | tpr | 1 ± 0 | 0.06667 ± 0.21 | 1 | 0.0117 | 1.00 |
| DIS-FDM | DAO manipulation | 10% | static | pdr_down | 0.9902 ± 0.018 | 0.8943 ± 0.071 | 0.07209 | 0.0117 | 1.00 |
| DIS-FDM | DAO manipulation | 10% | static | tx_power_mw | 0.1347 ± 0.024 | 0.1813 ± 0.027 | -0.04731 | 0.0117 | -1.00 |
| DIS-FDM | DAO manipulation | 10% | 30% mobile | tpr | 1 ± 0 | 0.5333 ± 0.39 | 0.5 | 0.0469 | 1.00 |
| DIS-FDM | DAO manipulation | 10% | 30% mobile | precision | 0.1835 ± 0.042 | 0.08926 ± 0.061 | 0.06772 | 0.0391 | 1.00 |
| DIS-FDM | DAO manipulation | 10% | 30% mobile | detect_latency_s | 15.11 ± 20 | 180.5 ± 1.2e+02 | -168.1 | 0.0469 | -0.94 |
| DIS-FDM | DAO manipulation | 10% | 30% mobile | pdr_down | 0.9878 ± 0.0033 | 0.9413 ± 0.056 | 0.008714 | 0.0156 | 0.96 |
| DIS-FDM | DAO manipulation | 10% | 30% mobile | tx_power_mw | 0.1558 ± 0.018 | 0.1957 ± 0.036 | -0.03981 | 0.0117 | -0.96 |
| DIS-FDM | DAO manipulation | 25% | static | tpr | 0.9286 ± 0.12 | 0.1143 ± 0.25 | 0.9286 | 0.0117 | 1.00 |
| DIS-FDM | DAO manipulation | 25% | static | pdr_down | 0.9761 ± 0.042 | 0.8107 ± 0.14 | 0.1429 | 0.0117 | 1.00 |
| DIS-FDM | DAO manipulation | 25% | static | pdr_up | 0.9968 ± 0.004 | 0.9986 ± 0.0014 | -0.001073 | 0.0234 | -0.96 |
| DIS-FDM | DAO manipulation | 25% | 30% mobile | precision | 0.356 ± 0.092 | 0.2729 ± 0.045 | 0.07946 | 0.0117 | 1.00 |
| DIS-FDM | DAO manipulation | 25% | 30% mobile | detect_latency_s | 65.28 ± 83 | 542.8 ± 5.2e+02 | -329.2 | 0.0234 | -0.96 |
| DIS-FDM | DAO manipulation | 25% | 30% mobile | pdr_down | 0.961 ± 0.054 | 0.8224 ± 0.18 | 0.1112 | 0.0156 | 0.85 |
| DIS-FDM | DAO manipulation | 25% | 30% mobile | tx_power_mw | 0.2073 ± 0.042 | 0.2875 ± 0.049 | -0.08368 | 0.0117 | -0.96 |
| DIS-FDM | DAO manipulation | 50% | static | tpr | 0.8643 ± 0.098 | 0.3786 ± 0.28 | 0.6071 | 0.0156 | 1.00 |
| DIS-FDM | DAO manipulation | 50% | static | detect_latency_s | 369.6 ± 1.6e+02 | 1043 ± 6e+02 | -768.1 | 0.0234 | -0.93 |
| DIS-FDM | DAO manipulation | 50% | static | pdr_down | 0.8915 ± 0.067 | 0.6356 ± 0.15 | 0.269 | 0.0156 | 0.96 |
| DIS-FDM | DAO manipulation | 50% | static | tx_power_mw | 0.2729 ± 0.051 | 0.4511 ± 0.082 | -0.2157 | 0.0117 | -1.00 |
| DIS-FDM | DAO manipulation | 50% | 30% mobile | precision | 0.562 ± 0.095 | 0.4772 ± 0.056 | 0.09435 | 0.0469 | 0.91 |
| DIS-FDM | DAO manipulation | 50% | 30% mobile | detect_latency_s | 151.4 ± 1.3e+02 | 662.9 ± 6.2e+02 | -228.4 | 0.0234 | -0.96 |
| DIS-FDM | DAO manipulation | 50% | 30% mobile | pdr_down | 0.8803 ± 0.15 | 0.7297 ± 0.21 | 0.1609 | 0.0156 | 0.96 |
| DIS-FDM | DAO manipulation | 50% | 30% mobile | tx_power_mw | 0.2399 ± 0.051 | 0.3663 ± 0.089 | -0.1412 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 10% | static | detect_latency_s | 25.5 ± 4.8 | 50.22 ± 0.13 | -26.42 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 10% | static | pdr_down | 0.9928 ± 0.0095 | 0.8873 ± 0.075 | 0.1106 | 0.0117 | 1.00 |
| DIS-FDM | Combined DIS + DAO | 10% | static | pdr_up | 0.9926 ± 0.0073 | 0.9996 ± 0.00046 | -0.005116 | 0.0195 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 10% | static | tx_power_mw | 0.1263 ± 0.018 | 0.1817 ± 0.027 | -0.05641 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 10% | 30% mobile | detect_latency_s | 7.057 ± 16 | 36.06 ± 14 | -28.53 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 10% | 30% mobile | pdr_down | 0.9892 ± 0.0035 | 0.9361 ± 0.073 | 0.02507 | 0.0117 | 0.96 |
| DIS-FDM | Combined DIS + DAO | 10% | 30% mobile | tx_power_mw | 0.1583 ± 0.02 | 0.1979 ± 0.035 | -0.04264 | 0.0117 | -0.93 |
| DIS-FDM | Combined DIS + DAO | 25% | static | detect_latency_s | 26.37 ± 3.9 | 50.24 ± 0.078 | -24.7 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 25% | static | pdr_down | 0.9831 ± 0.022 | 0.7718 ± 0.16 | 0.1851 | 0.0117 | 1.00 |
| DIS-FDM | Combined DIS + DAO | 25% | static | pdr_up | 0.9879 ± 0.012 | 0.9985 ± 0.0013 | -0.007608 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 25% | static | tx_power_mw | 0.1541 ± 0.021 | 0.2837 ± 0.036 | -0.1306 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 25% | 30% mobile | detect_latency_s | 14.02 ± 9.2 | 43.18 ± 6 | -23.39 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 25% | 30% mobile | pdr_down | 0.9637 ± 0.053 | 0.8083 ± 0.16 | 0.07975 | 0.0117 | 1.00 |
| DIS-FDM | Combined DIS + DAO | 25% | 30% mobile | tx_power_mw | 0.1875 ± 0.042 | 0.2955 ± 0.05 | -0.08674 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 50% | static | detect_latency_s | 30.14 ± 3.9 | 51.59 ± 3.2 | -22.54 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 50% | static | pdr_down | 0.8752 ± 0.07 | 0.6747 ± 0.17 | 0.1409 | 0.0117 | 1.00 |
| DIS-FDM | Combined DIS + DAO | 50% | static | pdr_up | 0.9832 ± 0.0099 | 0.9926 ± 0.0091 | -0.004956 | 0.0195 | -0.96 |
| DIS-FDM | Combined DIS + DAO | 50% | static | tx_power_mw | 0.2603 ± 0.046 | 0.4594 ± 0.099 | -0.187 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 50% | 30% mobile | detect_latency_s | 27.41 ± 30 | 69.03 ± 47 | -31.67 | 0.0117 | -1.00 |
| DIS-FDM | Combined DIS + DAO | 50% | 30% mobile | pdr_down | 0.9228 ± 0.073 | 0.7756 ± 0.14 | 0.154 | 0.0117 | 0.96 |
| DIS-FDM | Combined DIS + DAO | 50% | 30% mobile | tx_power_mw | 0.2238 ± 0.037 | 0.332 ± 0.095 | -0.1021 | 0.0117 | -0.96 |
| Secure-RPL | DIS flooding | 10% | static | detect_latency_s | 35.77 ± 8.2 | 12.65 ± 0.72 | 21.81 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 10% | static | dio_total | 1803 ± 5.6e+02 | 1729 ± 5.7e+02 | 70 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 10% | 30% mobile | fpr | 0.5346 ± 0.15 | 0 ± 0 | 0.5385 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 10% | 30% mobile | precision | 0.1862 ± 0.043 | 1 ± 0 | -0.8235 | 0.0117 | -1.00 |
| Secure-RPL | DIS flooding | 10% | 30% mobile | dio_total | 7693 ± 7.8e+02 | 9952 ± 1.6e+03 | -2103 | 0.0176 | -0.93 |
| Secure-RPL | DIS flooding | 10% | 30% mobile | tx_power_mw | 0.1495 ± 0.02 | 0.1609 ± 0.017 | -0.007756 | 0.0488 | -0.89 |
| Secure-RPL | DIS flooding | 25% | static | detect_latency_s | 34.53 ± 4.5 | 13.03 ± 0.78 | 20.69 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 25% | static | dio_total | 3568 ± 7.9e+02 | 3466 ± 8e+02 | 107 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 25% | 30% mobile | fpr | 0.4818 ± 0.15 | 0 ± 0 | 0.4773 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 25% | 30% mobile | precision | 0.4132 ± 0.093 | 1 ± 0 | -0.5997 | 0.0117 | -1.00 |
| Secure-RPL | DIS flooding | 50% | static | detect_latency_s | 38.06 ± 4.6 | 13.25 ± 0.54 | 24.22 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 50% | static | dio_total | 7900 ± 4.4e+02 | 7749 ± 4.2e+02 | 102.5 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 50% | static | tx_power_mw | 0.1097 ± 0.025 | 0.1085 ± 0.024 | 0.0006922 | 0.0234 | 0.96 |
| Secure-RPL | DIS flooding | 50% | 30% mobile | fpr | 0.4933 ± 0.14 | 0 ± 0 | 0.5333 | 0.0117 | 1.00 |
| Secure-RPL | DIS flooding | 50% | 30% mobile | precision | 0.6599 ± 0.066 | 1 ± 0 | -0.3636 | 0.0117 | -1.00 |
| Secure-RPL | DAO manipulation | 10% | static | tpr | 1 ± 0 | 0 ± 0 | 1 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 10% | static | pdr_down | 0.9902 ± 0.018 | 0.8941 ± 0.071 | 0.07209 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 10% | static | tx_power_mw | 0.1347 ± 0.024 | 0.1813 ± 0.028 | -0.04731 | 0.0117 | -1.00 |
| Secure-RPL | DAO manipulation | 10% | 30% mobile | tpr | 1 ± 0 | 0 ± 0 | 1 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 10% | 30% mobile | fpr | 0.5423 ± 0.14 | 0 ± 0 | 0.5385 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 10% | 30% mobile | pdr_down | 0.9878 ± 0.0033 | 0.9356 ± 0.066 | 0.01586 | 0.0273 | 0.85 |
| Secure-RPL | DAO manipulation | 10% | 30% mobile | dio_total | 7523 ± 6.2e+02 | 9243 ± 1.1e+03 | -1514 | 0.0234 | -0.96 |
| Secure-RPL | DAO manipulation | 10% | 30% mobile | tx_power_mw | 0.1558 ± 0.018 | 0.1981 ± 0.035 | -0.04357 | 0.0117 | -1.00 |
| Secure-RPL | DAO manipulation | 25% | static | tpr | 0.9286 ± 0.12 | 0 ± 0 | 1 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 25% | static | pdr_down | 0.9761 ± 0.042 | 0.8011 ± 0.14 | 0.1613 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 25% | static | pdr_up | 0.9968 ± 0.004 | 0.9985 ± 0.0016 | -0.001034 | 0.0234 | -0.96 |
| Secure-RPL | DAO manipulation | 25% | static | tx_power_mw | 0.1758 ± 0.054 | 0.2936 ± 0.056 | -0.1344 | 0.0117 | -1.00 |
| Secure-RPL | DAO manipulation | 25% | 30% mobile | tpr | 0.9714 ± 0.06 | 0 ± 0 | 1 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 25% | 30% mobile | fpr | 0.5955 ± 0.17 | 0 ± 0 | 0.6136 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 25% | 30% mobile | pdr_down | 0.961 ± 0.054 | 0.8447 ± 0.15 | 0.07012 | 0.0273 | 0.78 |
| Secure-RPL | DAO manipulation | 25% | 30% mobile | tx_power_mw | 0.2073 ± 0.042 | 0.2873 ± 0.053 | -0.0974 | 0.0117 | -0.96 |
| Secure-RPL | DAO manipulation | 50% | static | tpr | 0.8643 ± 0.098 | 0 ± 0 | 0.8214 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 50% | static | fpr | 0.3733 ± 0.4 | 0 ± 0 | 0.2333 | 0.0234 | 1.00 |
| Secure-RPL | DAO manipulation | 50% | static | pdr_down | 0.8915 ± 0.067 | 0.668 ± 0.16 | 0.2555 | 0.0156 | 0.96 |
| Secure-RPL | DAO manipulation | 50% | static | tx_power_mw | 0.2729 ± 0.051 | 0.4717 ± 0.11 | -0.2365 | 0.0117 | -1.00 |
| Secure-RPL | DAO manipulation | 50% | 30% mobile | tpr | 0.9643 ± 0.061 | 0 ± 0 | 1 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 50% | 30% mobile | fpr | 0.74 ± 0.26 | 0 ± 0 | 0.7667 | 0.0117 | 1.00 |
| Secure-RPL | DAO manipulation | 50% | 30% mobile | pdr_down | 0.8803 ± 0.15 | 0.7223 ± 0.21 | 0.1446 | 0.0156 | 0.96 |
| Secure-RPL | DAO manipulation | 50% | 30% mobile | tx_power_mw | 0.2399 ± 0.051 | 0.3549 ± 0.094 | -0.1038 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 10% | static | detect_latency_s | 25.5 ± 4.8 | 12.45 ± 0.21 | 11.65 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 10% | static | pdr_down | 0.9928 ± 0.0095 | 0.8951 ± 0.067 | 0.08294 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 10% | static | pdr_up | 0.9926 ± 0.0073 | 0.9997 ± 0.00017 | -0.005603 | 0.0195 | -0.96 |
| Secure-RPL | Combined DIS + DAO | 10% | static | tx_power_mw | 0.1263 ± 0.018 | 0.1782 ± 0.028 | -0.05046 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 10% | 30% mobile | fpr | 0.5346 ± 0.14 | 0 ± 0 | 0.5192 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 10% | 30% mobile | precision | 0.1859 ± 0.043 | 1 ± 0 | -0.818 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 10% | 30% mobile | pdr_down | 0.9892 ± 0.0035 | 0.934 ± 0.078 | 0.0196 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 10% | 30% mobile | tx_power_mw | 0.1583 ± 0.02 | 0.1992 ± 0.041 | -0.04692 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 25% | static | detect_latency_s | 26.37 ± 3.9 | 13.49 ± 0.89 | 11.67 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 25% | static | pdr_down | 0.9831 ± 0.022 | 0.774 ± 0.17 | 0.2318 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 25% | static | pdr_up | 0.9879 ± 0.012 | 0.9986 ± 0.0013 | -0.007879 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 25% | static | tx_power_mw | 0.1541 ± 0.021 | 0.2979 ± 0.031 | -0.1395 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 25% | 30% mobile | fpr | 0.55 ± 0.18 | 0 ± 0 | 0.5909 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 25% | 30% mobile | precision | 0.3841 ± 0.1 | 1 ± 0 | -0.6491 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 25% | 30% mobile | pdr_down | 0.9637 ± 0.053 | 0.8075 ± 0.15 | 0.1237 | 0.0117 | 0.93 |
| Secure-RPL | Combined DIS + DAO | 25% | 30% mobile | tx_power_mw | 0.1875 ± 0.042 | 0.3035 ± 0.055 | -0.111 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 50% | static | fpr | 0.3933 ± 0.26 | 0 ± 0 | 0.3333 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 50% | static | precision | 0.7107 ± 0.12 | 1 ± 0 | -0.2951 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 50% | static | detect_latency_s | 30.14 ± 3.9 | 16.66 ± 2.9 | 14.21 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 50% | static | pdr_down | 0.8752 ± 0.07 | 0.6429 ± 0.14 | 0.2695 | 0.0117 | 0.96 |
| Secure-RPL | Combined DIS + DAO | 50% | static | tx_power_mw | 0.2603 ± 0.046 | 0.4659 ± 0.13 | -0.1872 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 50% | 30% mobile | fpr | 0.6933 ± 0.19 | 0 ± 0 | 0.6333 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 50% | 30% mobile | precision | 0.5804 ± 0.064 | 1 ± 0 | -0.404 | 0.0117 | -1.00 |
| Secure-RPL | Combined DIS + DAO | 50% | 30% mobile | pdr_down | 0.9228 ± 0.073 | 0.7432 ± 0.2 | 0.1743 | 0.0117 | 1.00 |
| Secure-RPL | Combined DIS + DAO | 50% | 30% mobile | tx_power_mw | 0.2238 ± 0.037 | 0.331 ± 0.095 | -0.08645 | 0.0117 | -0.96 |
| Secure-RPL | No attack | 0% | 30% mobile | fpr | 0.4517 ± 0.13 | 0 ± 0 | 0.4483 | 0.00391 | 1.00 |
| RPL-MRC | DIS flooding | 10% | static | pdr_down | 0.9987 ± 0.00033 | 0.9983 ± 0.00032 | 0.0003489 | 0.0117 | 1.00 |
| RPL-MRC | DIS flooding | 10% | static | dio_total | 1803 ± 5.6e+02 | 2685 ± 5.5e+02 | -893.5 | 0.0117 | -1.00 |
| RPL-MRC | DIS flooding | 10% | static | tx_power_mw | 0.1158 ± 0.014 | 0.1186 ± 0.014 | -0.001992 | 0.0195 | -0.96 |
| RPL-MRC | DIS flooding | 25% | static | dio_total | 3568 ± 7.9e+02 | 4822 ± 7.4e+02 | -1282 | 0.0117 | -1.00 |
| RPL-MRC | DIS flooding | 25% | static | tx_power_mw | 0.118 ± 0.017 | 0.123 ± 0.021 | -0.004017 | 0.0117 | -1.00 |
| RPL-MRC | DIS flooding | 50% | static | dio_total | 7900 ± 4.4e+02 | 9052 ± 4.3e+02 | -1192 | 0.0117 | -1.00 |
| RPL-MRC | DAO manipulation | 10% | static | pdr_down | 0.9902 ± 0.018 | 0.8949 ± 0.067 | 0.079 | 0.0117 | 1.00 |
| RPL-MRC | DAO manipulation | 10% | static | tx_power_mw | 0.1347 ± 0.024 | 0.182 ± 0.027 | -0.05081 | 0.0117 | -1.00 |
| RPL-MRC | DAO manipulation | 10% | 30% mobile | pdr_down | 0.9878 ± 0.0033 | 0.9282 ± 0.082 | 0.01326 | 0.0117 | 0.96 |
| RPL-MRC | DAO manipulation | 10% | 30% mobile | tx_power_mw | 0.1558 ± 0.018 | 0.1959 ± 0.042 | -0.03241 | 0.0156 | -0.96 |
| RPL-MRC | DAO manipulation | 25% | static | pdr_down | 0.9761 ± 0.042 | 0.7928 ± 0.15 | 0.1921 | 0.0117 | 1.00 |
| RPL-MRC | DAO manipulation | 25% | static | tx_power_mw | 0.1758 ± 0.054 | 0.2999 ± 0.027 | -0.1322 | 0.0117 | -1.00 |
| RPL-MRC | DAO manipulation | 25% | 30% mobile | pdr_down | 0.961 ± 0.054 | 0.8401 ± 0.13 | 0.05282 | 0.0117 | 1.00 |
| RPL-MRC | DAO manipulation | 25% | 30% mobile | tx_power_mw | 0.2073 ± 0.042 | 0.2571 ± 0.053 | -0.05962 | 0.0371 | -0.75 |
| RPL-MRC | DAO manipulation | 50% | static | pdr_down | 0.8915 ± 0.067 | 0.6875 ± 0.17 | 0.1933 | 0.0117 | 0.96 |
| RPL-MRC | DAO manipulation | 50% | static | tx_power_mw | 0.2729 ± 0.051 | 0.4298 ± 0.068 | -0.1563 | 0.0156 | -0.96 |
| RPL-MRC | DAO manipulation | 50% | 30% mobile | pdr_down | 0.8803 ± 0.15 | 0.728 ± 0.21 | 0.1624 | 0.0117 | 0.89 |
| RPL-MRC | DAO manipulation | 50% | 30% mobile | tx_power_mw | 0.2399 ± 0.051 | 0.3499 ± 0.11 | -0.09344 | 0.0156 | -0.96 |
| RPL-MRC | Combined DIS + DAO | 10% | static | pdr_down | 0.9928 ± 0.0095 | 0.8869 ± 0.08 | 0.08579 | 0.0117 | 1.00 |
| RPL-MRC | Combined DIS + DAO | 10% | static | pdr_up | 0.9926 ± 0.0073 | 0.9993 ± 0.0008 | -0.004449 | 0.0293 | -0.89 |
| RPL-MRC | Combined DIS + DAO | 10% | static | dio_total | 1686 ± 3.7e+02 | 2591 ± 5.7e+02 | -970.5 | 0.0117 | -1.00 |
| RPL-MRC | Combined DIS + DAO | 10% | static | tx_power_mw | 0.1263 ± 0.018 | 0.1835 ± 0.024 | -0.05638 | 0.0117 | -1.00 |
| RPL-MRC | Combined DIS + DAO | 10% | static | delay_up_ms | 69.2 ± 5.3 | 71.28 ± 5.8 | -2.221 | 0.0352 | -0.93 |
| RPL-MRC | Combined DIS + DAO | 10% | 30% mobile | pdr_down | 0.9892 ± 0.0035 | 0.9406 ± 0.071 | 0.01745 | 0.0117 | 0.96 |
| RPL-MRC | Combined DIS + DAO | 10% | 30% mobile | tx_power_mw | 0.1583 ± 0.02 | 0.1976 ± 0.044 | -0.03958 | 0.0117 | -0.93 |
| RPL-MRC | Combined DIS + DAO | 25% | static | pdr_down | 0.9831 ± 0.022 | 0.7776 ± 0.14 | 0.2451 | 0.0117 | 1.00 |
| RPL-MRC | Combined DIS + DAO | 25% | static | pdr_up | 0.9879 ± 0.012 | 0.999 ± 0.00081 | -0.008393 | 0.0195 | -0.96 |
| RPL-MRC | Combined DIS + DAO | 25% | static | dio_total | 3377 ± 1.2e+03 | 4679 ± 9.1e+02 | -1647 | 0.0488 | -0.89 |
| RPL-MRC | Combined DIS + DAO | 25% | static | tx_power_mw | 0.1541 ± 0.021 | 0.3006 ± 0.037 | -0.1437 | 0.0117 | -1.00 |
| RPL-MRC | Combined DIS + DAO | 25% | 30% mobile | pdr_down | 0.9637 ± 0.053 | 0.8214 ± 0.16 | 0.07742 | 0.0117 | 0.96 |
| RPL-MRC | Combined DIS + DAO | 25% | 30% mobile | tx_power_mw | 0.1875 ± 0.042 | 0.2884 ± 0.061 | -0.09586 | 0.0117 | -1.00 |
| RPL-MRC | Combined DIS + DAO | 50% | static | pdr_down | 0.8752 ± 0.07 | 0.6843 ± 0.18 | 0.1173 | 0.0117 | 0.93 |
| RPL-MRC | Combined DIS + DAO | 50% | static | pdr_up | 0.9832 ± 0.0099 | 0.994 ± 0.0028 | -0.009692 | 0.0234 | -0.93 |
| RPL-MRC | Combined DIS + DAO | 50% | static | tx_power_mw | 0.2603 ± 0.046 | 0.4836 ± 0.079 | -0.2282 | 0.0117 | -1.00 |
| RPL-MRC | Combined DIS + DAO | 50% | 30% mobile | pdr_down | 0.9228 ± 0.073 | 0.7547 ± 0.2 | 0.1499 | 0.0117 | 1.00 |
| RPL-MRC | Combined DIS + DAO | 50% | 30% mobile | pdr_up | 0.9189 ± 0.035 | 0.9558 ± 0.012 | -0.02036 | 0.0117 | -1.00 |
| RPL-MRC | Combined DIS + DAO | 50% | 30% mobile | dio_total | 8912 ± 1.4e+03 | 7316 ± 1.4e+03 | 2192 | 0.0488 | 0.89 |
| RPL-MRC | Combined DIS + DAO | 50% | 30% mobile | tx_power_mw | 0.2238 ± 0.037 | 0.3451 ± 0.1 | -0.14 | 0.0117 | -1.00 |
| Li-MSD | DIS flooding | 10% | static | tpr | 1 ± 0 | 0 ± 0 | 1 | 0.0117 | 1.00 |
| Li-MSD | DIS flooding | 10% | static | pdr_down | 0.9987 ± 0.00033 | 0.9982 ± 0.00037 | 0.0004094 | 0.0352 | 0.93 |
| Li-MSD | DIS flooding | 10% | static | dio_total | 1803 ± 5.6e+02 | 7514 ± 1.2e+03 | -5735 | 0.0117 | -1.00 |
| Li-MSD | DIS flooding | 10% | static | tx_power_mw | 0.1158 ± 0.014 | 0.1326 ± 0.011 | -0.0171 | 0.0117 | -1.00 |
| Li-MSD | DIS flooding | 10% | static | delay_up_ms | 68.8 ± 6.1 | 69.51 ± 5.8 | -0.6241 | 0.0117 | -1.00 |
| Li-MSD | DIS flooding | 10% | 30% mobile | tpr | 1 ± 0 | 0.03333 ± 0.11 | 1 | 0.0117 | 1.00 |
| Li-MSD | DIS flooding | 10% | 30% mobile | fpr | 0.5346 ± 0.15 | 0.007692 ± 0.016 | 0.5192 | 0.0117 | 1.00 |
| Li-MSD | DIS flooding | 10% | 30% mobile | dio_total | 7693 ± 7.8e+02 | 1.085e+04 ± 1.7e+03 | -3542 | 0.0117 | -1.00 |
| Li-MSD | DIS flooding | 25% | static | tpr | 0.9714 ± 0.09 | 0 ± 0 | 1 | 0.0117 | 1.00 |
| Li-MSD | DIS flooding | 25% | static | dio_total | 3568 ± 7.9e+02 | 1.168e+04 ± 1.1e+03 | -8328 | 0.0117 | -1.00 |
| Li-MSD | DIS flooding | 25% | static | tx_power_mw | 0.118 ± 0.017 | 0.146 ± 0.019 | -0.02849 | 0.0117 | -1.00 |
| Li-MSD | DIS flooding | 25% | static | delay_up_ms | 68.22 ± 7.2 | 69.25 ± 7.5 | -1.12 | 0.0195 | -0.96 |
| Li-MSD | DIS flooding | 25% | 30% mobile | tpr | 1 ± 0 | 0.05714 ± 0.1 | 1 | 0.0117 | 1.00 |
| Li-MSD | DIS flooding | 25% | 30% mobile | fpr | 0.4818 ± 0.15 | 0.01818 ± 0.032 | 0.4773 | 0.0117 | 1.00 |
| Li-MSD | DIS flooding | 25% | 30% mobile | dio_total | 8879 ± 1.2e+03 | 1.315e+04 ± 1.1e+03 | -4304 | 0.0117 | -1.00 |
| Li-MSD | DIS flooding | 50% | static | tpr | 0.9286 ± 0.089 | 0 ± 0 | 0.9643 | 0.0117 | 1.00 |
| Li-MSD | DIS flooding | 50% | static | dio_total | 7900 ± 4.4e+02 | 1.566e+04 ± 6.1e+02 | -7804 | 0.0117 | -1.00 |
| Li-MSD | DIS flooding | 50% | static | tx_power_mw | 0.1097 ± 0.025 | 0.1466 ± 0.026 | -0.03729 | 0.0117 | -1.00 |
| Li-MSD | DIS flooding | 50% | static | delay_up_ms | 68.15 ± 6.8 | 69.05 ± 6.8 | -1.077 | 0.0391 | -0.89 |
| Li-MSD | DIS flooding | 50% | 30% mobile | tpr | 1 ± 0 | 0.007143 ± 0.023 | 1 | 0.0117 | 1.00 |
| Li-MSD | DIS flooding | 50% | 30% mobile | fpr | 0.4933 ± 0.14 | 0 ± 0 | 0.5333 | 0.0117 | 1.00 |
| Li-MSD | DIS flooding | 50% | 30% mobile | dio_total | 9995 ± 1.4e+03 | 1.356e+04 ± 1.7e+03 | -3578 | 0.0117 | -1.00 |
| Li-MSD | DIS flooding | 50% | 30% mobile | tx_power_mw | 0.1482 ± 0.015 | 0.1642 ± 0.021 | -0.01636 | 0.0117 | -0.96 |
| Li-MSD | DAO manipulation | 10% | static | pdr_down | 0.9902 ± 0.018 | 0.8991 ± 0.073 | 0.07509 | 0.0195 | 0.96 |
| Li-MSD | DAO manipulation | 10% | static | tx_power_mw | 0.1347 ± 0.024 | 0.1584 ± 0.016 | -0.02327 | 0.0195 | -0.96 |
| Li-MSD | DAO manipulation | 10% | 30% mobile | fpr | 0.5423 ± 0.14 | 0.01923 ± 0.027 | 0.5192 | 0.0117 | 1.00 |
| Li-MSD | DAO manipulation | 10% | 30% mobile | precision | 0.1835 ± 0.042 | 0.885 ± 0.15 | -0.75 | 0.0117 | -1.00 |
| Li-MSD | DAO manipulation | 10% | 30% mobile | detect_latency_s | 15.11 ± 20 | 607.3 ± 4.3e+02 | -501.8 | 0.0117 | -1.00 |
| Li-MSD | DAO manipulation | 10% | 30% mobile | pdr_down | 0.9878 ± 0.0033 | 0.947 ± 0.071 | 0.00974 | 0.0195 | 0.93 |
| Li-MSD | DAO manipulation | 10% | 30% mobile | dio_total | 7523 ± 6.2e+02 | 9385 ± 1.8e+03 | -1492 | 0.0234 | -0.96 |
| Li-MSD | DAO manipulation | 10% | 30% mobile | tx_power_mw | 0.1558 ± 0.018 | 0.1837 ± 0.019 | -0.02651 | 0.0117 | -1.00 |
| Li-MSD | DAO manipulation | 25% | static | detect_latency_s | 98.14 ± 97 | 328.3 ± 2.6e+02 | -160.2 | 0.0293 | -0.89 |
| Li-MSD | DAO manipulation | 25% | static | pdr_down | 0.9761 ± 0.042 | 0.8365 ± 0.13 | 0.1063 | 0.0117 | 1.00 |
| Li-MSD | DAO manipulation | 25% | static | dio_total | 1672 ± 5.4e+02 | 2063 ± 9.2e+02 | -199 | 0.0293 | -0.93 |
| Li-MSD | DAO manipulation | 25% | 30% mobile | tpr | 0.9714 ± 0.06 | 0.7143 ± 0.21 | 0.1429 | 0.0195 | 1.00 |
| Li-MSD | DAO manipulation | 25% | 30% mobile | fpr | 0.5955 ± 0.17 | 0.01364 ± 0.043 | 0.5909 | 0.0117 | 1.00 |
| Li-MSD | DAO manipulation | 25% | 30% mobile | precision | 0.356 ± 0.092 | 0.95 ± 0.16 | -0.6408 | 0.0117 | -1.00 |
| Li-MSD | DAO manipulation | 25% | 30% mobile | detect_latency_s | 65.28 ± 83 | 784.3 ± 3.8e+02 | -761.3 | 0.0117 | -1.00 |
| Li-MSD | DAO manipulation | 25% | 30% mobile | pdr_down | 0.961 ± 0.054 | 0.8578 ± 0.16 | 0.05167 | 0.0273 | 0.78 |
| Li-MSD | DAO manipulation | 50% | static | fpr | 0.3733 ± 0.4 | 0.02 ± 0.032 | 0.2333 | 0.0469 | 1.00 |
| Li-MSD | DAO manipulation | 50% | static | precision | 0.7512 ± 0.21 | 0.9745 ± 0.042 | -0.2183 | 0.0469 | -0.94 |
| Li-MSD | DAO manipulation | 50% | static | pdr_down | 0.8915 ± 0.067 | 0.7056 ± 0.15 | 0.1653 | 0.0195 | 0.93 |
| Li-MSD | DAO manipulation | 50% | 30% mobile | tpr | 0.9643 ± 0.061 | 0.5786 ± 0.1 | 0.3571 | 0.0117 | 1.00 |
| Li-MSD | DAO manipulation | 50% | 30% mobile | fpr | 0.74 ± 0.26 | 0.02 ± 0.045 | 0.7333 | 0.0117 | 1.00 |
| Li-MSD | DAO manipulation | 50% | 30% mobile | precision | 0.562 ± 0.095 | 0.9709 ± 0.067 | -0.4543 | 0.0117 | -1.00 |
| Li-MSD | DAO manipulation | 50% | 30% mobile | detect_latency_s | 151.4 ± 1.3e+02 | 936.8 ± 3.9e+02 | -811.1 | 0.0156 | -0.96 |
| Li-MSD | DAO manipulation | 50% | 30% mobile | pdr_down | 0.8803 ± 0.15 | 0.7672 ± 0.17 | 0.1045 | 0.0195 | 0.96 |
| Li-MSD | DAO manipulation | 50% | 30% mobile | tx_power_mw | 0.2399 ± 0.051 | 0.3066 ± 0.066 | -0.06862 | 0.0195 | -0.96 |
| Li-MSD | Combined DIS + DAO | 10% | static | detect_latency_s | 25.5 ± 4.8 | 246.1 ± 1.7e+02 | -166 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 10% | static | pdr_down | 0.9928 ± 0.0095 | 0.9104 ± 0.065 | 0.06245 | 0.0117 | 1.00 |
| Li-MSD | Combined DIS + DAO | 10% | static | pdr_up | 0.9926 ± 0.0073 | 0.9995 ± 0.0004 | -0.005187 | 0.0234 | -0.93 |
| Li-MSD | Combined DIS + DAO | 10% | static | dio_total | 1686 ± 3.7e+02 | 6623 ± 1.4e+03 | -4838 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 10% | static | tx_power_mw | 0.1263 ± 0.018 | 0.165 ± 0.015 | -0.03962 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 10% | 30% mobile | fpr | 0.5346 ± 0.14 | 0.003846 ± 0.012 | 0.5 | 0.0117 | 1.00 |
| Li-MSD | Combined DIS + DAO | 10% | 30% mobile | precision | 0.1859 ± 0.043 | 0.975 ± 0.079 | -0.8063 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 10% | 30% mobile | detect_latency_s | 7.057 ± 16 | 429.9 ± 3.7e+02 | -269.1 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 10% | 30% mobile | pdr_down | 0.9892 ± 0.0035 | 0.9371 ± 0.067 | 0.01546 | 0.0117 | 1.00 |
| Li-MSD | Combined DIS + DAO | 10% | 30% mobile | dio_total | 8043 ± 1.2e+03 | 1.046e+04 ± 1.6e+03 | -3011 | 0.0117 | -0.96 |
| Li-MSD | Combined DIS + DAO | 10% | 30% mobile | tx_power_mw | 0.1583 ± 0.02 | 0.1821 ± 0.03 | -0.02368 | 0.0117 | -0.93 |
| Li-MSD | Combined DIS + DAO | 25% | static | detect_latency_s | 26.37 ± 3.9 | 337.9 ± 1.7e+02 | -276.3 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 25% | static | pdr_down | 0.9831 ± 0.022 | 0.8232 ± 0.092 | 0.179 | 0.0117 | 1.00 |
| Li-MSD | Combined DIS + DAO | 25% | static | pdr_up | 0.9879 ± 0.012 | 0.9986 ± 0.0011 | -0.008352 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 25% | static | dio_total | 3377 ± 1.2e+03 | 9702 ± 1.2e+03 | -6702 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 25% | static | tx_power_mw | 0.1541 ± 0.021 | 0.2475 ± 0.019 | -0.08348 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 25% | 30% mobile | tpr | 1 ± 0 | 0.6571 ± 0.22 | 0.2857 | 0.0117 | 1.00 |
| Li-MSD | Combined DIS + DAO | 25% | 30% mobile | fpr | 0.55 ± 0.18 | 0.02727 ± 0.032 | 0.5682 | 0.0117 | 1.00 |
| Li-MSD | Combined DIS + DAO | 25% | 30% mobile | precision | 0.3841 ± 0.1 | 0.8838 ± 0.15 | -0.5432 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 25% | 30% mobile | detect_latency_s | 14.02 ± 9.2 | 508.4 ± 3.7e+02 | -405.5 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 25% | 30% mobile | pdr_down | 0.9637 ± 0.053 | 0.8571 ± 0.16 | 0.04932 | 0.0117 | 1.00 |
| Li-MSD | Combined DIS + DAO | 25% | 30% mobile | dio_total | 8102 ± 9.2e+02 | 1.129e+04 ± 1.6e+03 | -2879 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 25% | 30% mobile | tx_power_mw | 0.1875 ± 0.042 | 0.2466 ± 0.048 | -0.05386 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 50% | static | tpr | 0.9286 ± 0.089 | 0.6857 ± 0.14 | 0.25 | 0.0117 | 1.00 |
| Li-MSD | Combined DIS + DAO | 50% | static | fpr | 0.3933 ± 0.26 | 0.02 ± 0.032 | 0.3 | 0.0117 | 1.00 |
| Li-MSD | Combined DIS + DAO | 50% | static | precision | 0.7107 ± 0.12 | 0.9708 ± 0.048 | -0.2722 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 50% | static | detect_latency_s | 30.14 ± 3.9 | 336.9 ± 1.7e+02 | -260 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 50% | static | pdr_down | 0.8752 ± 0.07 | 0.7282 ± 0.17 | 0.09332 | 0.0117 | 0.89 |
| Li-MSD | Combined DIS + DAO | 50% | static | pdr_up | 0.9832 ± 0.0099 | 0.9963 ± 0.0028 | -0.0112 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 50% | static | dio_total | 5791 ± 8.3e+02 | 9771 ± 1.2e+03 | -4368 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 50% | 30% mobile | tpr | 1 ± 0 | 0.5929 ± 0.13 | 0.4286 | 0.0117 | 1.00 |
| Li-MSD | Combined DIS + DAO | 50% | 30% mobile | fpr | 0.6933 ± 0.19 | 0.02 ± 0.045 | 0.6 | 0.0117 | 1.00 |
| Li-MSD | Combined DIS + DAO | 50% | 30% mobile | precision | 0.5804 ± 0.064 | 0.9766 ± 0.051 | -0.3775 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 50% | 30% mobile | detect_latency_s | 27.41 ± 30 | 972.6 ± 4.9e+02 | -904.3 | 0.0117 | -1.00 |
| Li-MSD | Combined DIS + DAO | 50% | 30% mobile | pdr_down | 0.9228 ± 0.073 | 0.7831 ± 0.17 | 0.09601 | 0.0117 | 1.00 |
| Li-MSD | Combined DIS + DAO | 50% | 30% mobile | dio_total | 8912 ± 1.4e+03 | 1.152e+04 ± 2.1e+03 | -2999 | 0.0195 | -0.82 |
| Li-MSD | Combined DIS + DAO | 50% | 30% mobile | tx_power_mw | 0.2238 ± 0.037 | 0.3181 ± 0.057 | -0.08422 | 0.0117 | -1.00 |
| Li-MSD | No attack | 0% | 30% mobile | fpr | 0.4517 ± 0.13 | 0.01379 ± 0.033 | 0.4483 | 0.00391 | 1.00 |
| AEF-RPL, learning off | DIS flooding | 10% | static | detect_latency_s | 35.77 ± 8.2 | 50.22 ± 0.13 | -14.89 | 0.0117 | -1.00 |
| AEF-RPL, learning off | DIS flooding | 10% | static | pdr_down | 0.9987 ± 0.00033 | 0.9978 ± 0.00049 | 0.0008161 | 0.0234 | 0.96 |
| AEF-RPL, learning off | DIS flooding | 10% | 30% mobile | detect_latency_s | 9.712 ± 19 | 35.35 ± 14 | -26.52 | 0.0117 | -1.00 |
| AEF-RPL, learning off | DIS flooding | 25% | static | detect_latency_s | 34.53 ± 4.5 | 50.24 ± 0.08 | -16.98 | 0.0117 | -1.00 |
| AEF-RPL, learning off | DIS flooding | 25% | 30% mobile | detect_latency_s | 15.19 ± 11 | 43.16 ± 5.7 | -25.7 | 0.0117 | -1.00 |
| AEF-RPL, learning off | DIS flooding | 25% | 30% mobile | dio_total | 8879 ± 1.2e+03 | 8070 ± 9.2e+02 | 745 | 0.0488 | 0.89 |
| AEF-RPL, learning off | DIS flooding | 25% | 30% mobile | tx_power_mw | 0.1772 ± 0.039 | 0.1672 ± 0.043 | 0.009107 | 0.0117 | 1.00 |
| AEF-RPL, learning off | DIS flooding | 50% | static | detect_latency_s | 38.06 ± 4.6 | 50.42 ± 0.51 | -12.96 | 0.0117 | -1.00 |
| AEF-RPL, learning off | DIS flooding | 50% | 30% mobile | detect_latency_s | 31.95 ± 33 | 69.6 ± 46 | -25.42 | 0.0117 | -1.00 |
| AEF-RPL, learning off | DIS flooding | 50% | 30% mobile | dio_total | 9995 ± 1.4e+03 | 9196 ± 1.7e+03 | 822.5 | 0.0234 | 0.96 |
| AEF-RPL, learning off | DIS flooding | 50% | 30% mobile | tx_power_mw | 0.1482 ± 0.015 | 0.1376 ± 0.021 | 0.007926 | 0.0195 | 0.96 |
| AEF-RPL, learning off | DAO manipulation | 25% | 30% mobile | dio_total | 8395 ± 1.5e+03 | 6892 ± 5.9e+02 | 1184 | 0.0293 | 0.93 |
| AEF-RPL, learning off | DAO manipulation | 25% | 30% mobile | tx_power_mw | 0.2073 ± 0.042 | 0.1813 ± 0.049 | 0.01859 | 0.0117 | 1.00 |
| AEF-RPL, learning off | DAO manipulation | 50% | 30% mobile | dio_total | 9340 ± 2.9e+03 | 6669 ± 8.1e+02 | 1602 | 0.0117 | 1.00 |
| AEF-RPL, learning off | DAO manipulation | 50% | 30% mobile | tx_power_mw | 0.2399 ± 0.051 | 0.2013 ± 0.046 | 0.03216 | 0.0117 | 1.00 |
| AEF-RPL, learning off | Combined DIS + DAO | 10% | static | detect_latency_s | 25.5 ± 4.8 | 32.13 ± 2.8 | -6.667 | 0.0117 | -0.91 |
| AEF-RPL, learning off | Combined DIS + DAO | 10% | 30% mobile | detect_latency_s | 7.057 ± 16 | 25.75 ± 10 | -15.04 | 0.0117 | -1.00 |
| AEF-RPL, learning off | Combined DIS + DAO | 10% | 30% mobile | tx_power_mw | 0.1583 ± 0.02 | 0.1434 ± 0.021 | 0.007537 | 0.0234 | 0.96 |
| AEF-RPL, learning off | Combined DIS + DAO | 25% | static | detect_latency_s | 26.37 ± 3.9 | 33.03 ± 2.5 | -6.48 | 0.0117 | -1.00 |
| AEF-RPL, learning off | Combined DIS + DAO | 25% | 30% mobile | detect_latency_s | 14.02 ± 9.2 | 32.86 ± 4.4 | -14.18 | 0.0117 | -1.00 |
| AEF-RPL, learning off | Combined DIS + DAO | 25% | 30% mobile | dio_total | 8102 ± 9.2e+02 | 7301 ± 9.2e+02 | 923 | 0.0488 | 0.89 |
| AEF-RPL, learning off | Combined DIS + DAO | 50% | static | detect_latency_s | 30.14 ± 3.9 | 41.47 ± 11 | -10.35 | 0.0117 | -1.00 |
| AEF-RPL, learning off | Combined DIS + DAO | 50% | 30% mobile | detect_latency_s | 27.41 ± 30 | 58.6 ± 46 | -24.94 | 0.0117 | -1.00 |
| AEF-RPL, learning off | Combined DIS + DAO | 50% | 30% mobile | dio_total | 8912 ± 1.4e+03 | 7250 ± 1e+03 | 1288 | 0.0234 | 0.96 |
| AEF-RPL, first learning version | DIS flooding | 10% | 30% mobile | dio_total | 7693 ± 7.8e+02 | 8904 ± 1.3e+03 | -959.5 | 0.0117 | -1.00 |
| AEF-RPL, first learning version | DIS flooding | 50% | 30% mobile | dio_total | 9995 ± 1.4e+03 | 1.061e+04 ± 1.4e+03 | -578 | 0.0488 | -0.89 |
| AEF-RPL, first learning version | DAO manipulation | 10% | 30% mobile | dio_total | 7523 ± 6.2e+02 | 8336 ± 4.1e+02 | -1014 | 0.0352 | -0.93 |

## Sensitivity: DIS-FDM evidence window (5 attackers, static, mean ± SD)

| Interval (s) | Condition | DIO msgs | TPR (%) | FPR (%) | Latency (s) |
|---|---|---|---|---|---|
| 3 | RPL (no defense) | 10451 ± 862 | n/a | n/a | n/a |
| 3 | DIS-FDM, 10 s window | 2348 ± 823 | 100.0 ± 0.0 | 0.0 ± 0.0 | 50.2 ± 0.1 |
| 3 | DIS-FDM, 30 s window | 2609 ± 788 | 100.0 ± 0.0 | 0.0 ± 0.0 | 150.2 ± 0.1 |
| 6 | RPL (no defense) | 10478 ± 864 | n/a | n/a | n/a |
| 6 | DIS-FDM, 10 s window | 2622 ± 1111 | 100.0 ± 0.0 | 0.0 ± 0.0 | 52.3 ± 6.3 |
| 6 | DIS-FDM, 30 s window | 2628 ± 795 | 100.0 ± 0.0 | 0.0 ± 0.0 | 150.2 ± 0.1 |
| 10 | RPL (no defense) | 9136 ± 745 | n/a | n/a | n/a |
| 10 | DIS-FDM, 10 s window | 2322 ± 780 | 100.0 ± 0.0 | 0.0 ± 0.0 | 54.5 ± 3.4 |
| 10 | DIS-FDM, 30 s window | 2658 ± 893 | 100.0 ± 0.0 | 0.0 ± 0.0 | 161.1 ± 34.1 |
| 15 | RPL (no defense) | 8549 ± 682 | n/a | n/a | n/a |
| 15 | DIS-FDM, 10 s window | 8549 ± 682 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a |
| 15 | DIS-FDM, 30 s window | 3139 ± 1153 | 98.0 ± 6.3 | 0.0 ± 0.0 | 159.3 ± 26.4 |
| 30 | RPL (no defense) | 6665 ± 511 | n/a | n/a | n/a |
| 30 | DIS-FDM, 10 s window | 6665 ± 511 | 0.0 ± 0.0 | 0.0 ± 0.0 | n/a |
| 30 | DIS-FDM, 30 s window | 4147 ± 819 | 88.0 ± 14.0 | 0.0 ± 0.0 | 192.3 ± 41.9 |
