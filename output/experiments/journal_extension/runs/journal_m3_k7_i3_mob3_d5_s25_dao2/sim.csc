<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>journal_m3_k7_i3_mob3_d5_s25_dao2</title>
    <randomseed>25</randomseed>
    <motedelay_us>1000000</motedelay_us>
    <radiomedium>
      org.contikios.cooja.radiomediums.UDGM
      <transmitting_range>50.0</transmitting_range>
      <interference_range>100.0</interference_range>
      <success_ratio_tx>1.0</success_ratio_tx>
      <success_ratio_rx>1.0</success_ratio_rx>
    </radiomedium>
    <events>
      <logoutput>40000</logoutput>
    </events>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_root_d5</identifier>
      <description>v_root_d5</description>
      <source>/home/user/project/build/variants/v_root_d5/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_root_d5.cooja</commands>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Battery</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiVib</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRS232</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiBeeper</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiIPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRadio</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiButton</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiPIR</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiClock</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiLED</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiCFS</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiEEPROM</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="100.00" y="100.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>1</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_journal_atk_dis3_dao2</identifier>
      <description>v_journal_atk_dis3_dao2</description>
      <source>/home/user/project/build/variants/v_journal_atk_dis3_dao2/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_journal_atk_dis3_dao2.cooja</commands>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Battery</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiVib</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRS232</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiBeeper</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiIPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRadio</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiButton</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiPIR</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiClock</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiLED</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiCFS</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiEEPROM</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="112.23" y="113.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>2</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="142.93" y="20.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>3</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="39.63" y="64.39" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>10</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="41.83" y="7.53" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>20</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="76.80" y="97.55" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>26</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="16.10" y="42.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>27</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="66.64" y="89.81" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>29</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_cli_d5_m0</identifier>
      <description>v_cli_d5_m0</description>
      <source>/home/user/project/build/variants/v_cli_d5_m0/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_cli_d5_m0.cooja</commands>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Battery</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiVib</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRS232</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiBeeper</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiIPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRadio</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiButton</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiPIR</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiClock</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiLED</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiCFS</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiEEPROM</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="12.37" y="87.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>4</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="60.22" y="95.81" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>6</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="98.72" y="113.57" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>8</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="109.09" y="34.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>11</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="29.51" y="199.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>12</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="107.22" y="171.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>13</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="115.84" y="179.99" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>14</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="128.28" y="8.95" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>19</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="175.19" y="19.84" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>21</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="138.12" y="93.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>22</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="162.54" y="8.76" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>25</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="167.41" y="57.65" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>28</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="8.04" y="32.83" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>30</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_cli_d5_m1</identifier>
      <description>v_cli_d5_m1</description>
      <source>/home/user/project/build/variants/v_cli_d5_m1/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_cli_d5_m1.cooja</commands>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Battery</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiVib</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRS232</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiBeeper</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiIPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRadio</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiButton</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiPIR</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiClock</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiLED</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiCFS</moteinterface>
      <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiEEPROM</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.92" y="5.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>5</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="8.41" y="128.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>7</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="65.86" y="66.59" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>9</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="130.01" y="185.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>15</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="62.82" y="9.90" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>16</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="75.56" y="17.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>17</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="122.16" y="61.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>18</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="133.71" y="142.98" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>23</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="20.49" y="160.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>24</id>
        </interface_config>
      </mote>
    </motetype>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script><![CDATA[
TIMEOUT(3600000, log.testOK());
var S = {"5":[[0.0,34.61,170.92,5.24,111.9,40.27],[34.61,42.32,111.9,40.27,111.9,40.27],[42.32,88.65,111.9,40.27,185.89,90.22],[88.65,89.92,185.89,90.22,185.89,90.22],[89.92,103.44,185.89,90.22,182.75,73.56],[103.44,105.17,182.75,73.56,182.75,73.56],[105.17,249.25,182.75,73.56,73.47,60.78],[249.25,255.38,73.47,60.78,73.47,60.78],[255.38,393.94,73.47,60.78,159.22,121.92],[393.94,396.53,159.22,121.92,159.22,121.92],[396.53,520.15,159.22,121.92,57.4,91.05],[520.15,522.51,57.4,91.05,57.4,91.05],[522.51,647.69,57.4,91.05,175.95,17.99],[647.69,655.15,175.95,17.99,175.95,17.99],[655.15,674.03,175.95,17.99,145.34,4.58],[674.03,674.1,145.34,4.58,145.34,4.58],[674.1,775.36,145.34,4.58,99.62,156.63],[775.36,783.59,99.62,156.63,99.62,156.63],[783.59,875.96,99.62,156.63,164.19,86.23],[875.96,876.37,164.19,86.23,164.19,86.23],[876.37,902.67,164.19,86.23,189.51,112.36],[902.67,906.88,189.51,112.36,189.51,112.36],[906.88,994.87,189.51,112.36,134.88,72.6],[994.87,997.13,134.88,72.6,134.88,72.6],[997.13,1046.52,134.88,72.6,171.19,140.7],[1046.52,1054.45,171.19,140.7,171.19,140.7],[1054.45,1170.5,171.19,140.7,89.11,193.04],[1170.5,1174.26,89.11,193.04,89.11,193.04],[1174.26,1273.88,89.11,193.04,19.71,119.9],[1273.88,1283.57,19.71,119.9,19.71,119.9],[1283.57,1400.45,19.71,119.9,169.11,163.06],[1400.45,1409.29,169.11,163.06,169.11,163.06],[1409.29,1451.96,169.11,163.06,102.4,146.89],[1451.96,1453.19,102.4,146.89,102.4,146.89],[1453.19,1520.16,102.4,146.89,174.68,109.88],[1520.16,1530.05,174.68,109.88,174.68,109.88],[1530.05,1603.16,174.68,109.88,46.7,161.5],[1603.16,1609.05,46.7,161.5,46.7,161.5],[1609.05,1803.25,46.7,161.5,182.88,171.35],[1803.25,1810.09,182.88,171.35,182.88,171.35],[1810.09,1836.78,182.88,171.35,173.33,139.67],[1836.78,1839.77,173.33,139.67,173.33,139.67],[1839.77,1881.34,173.33,139.67,111.4,148.49],[1881.34,1883.36,111.4,148.49,111.4,148.49],[1883.36,1906.27,111.4,148.49,123.41,110.49],[1906.27,1906.88,123.41,110.49,123.41,110.49],[1906.88,1981.52,123.41,110.49,32.61,155.83],[1981.52,1983.51,32.61,155.83,32.61,155.83],[1983.51,2189.11,32.61,155.83,54.87,53.79],[2189.11,2191.94,54.87,53.79,54.87,53.79],[2191.94,2333.91,54.87,53.79,192.66,118.8],[2333.91,2337.35,192.66,118.8,192.66,118.8],[2337.35,2453.08,192.66,118.8,45.82,22.95],[2453.08,2455.18,45.82,22.95,45.82,22.95],[2455.18,2479.99,45.82,22.95,54.53,7.42],[2479.99,2480.23,54.53,7.42,54.53,7.42],[2480.23,2663.41,54.53,7.42,6.37,184.14],[2663.41,2665.71,6.37,184.14,6.37,184.14],[2665.71,2742.81,6.37,184.14,58.21,151.36],[2742.81,2744.86,58.21,151.36,58.21,151.36],[2744.86,2920.1,58.21,151.36,199.93,113.1],[2920.1,2924.23,199.93,113.1,199.93,113.1],[2924.23,2988.11,199.93,113.1,114.86,46.26],[2988.11,2994.41,114.86,46.26,114.86,46.26],[2994.41,3185.6,114.86,46.26,111.87,154.25],[3185.6,3187.31,111.87,154.25,111.87,154.25],[3187.31,3317.65,111.87,154.25,65.02,86.25],[3317.65,3318.34,65.02,86.25,65.02,86.25],[3318.34,3422.92,65.02,86.25,181.02,194.55],[3422.92,3422.98,181.02,194.55,181.02,194.55],[3422.98,3534.75,181.02,194.55,99.97,47.64],[3534.75,3541.81,99.97,47.64,99.97,47.64],[3541.81,3564.9,99.97,47.64,96.71,82.95],[3564.9,3569.5,96.71,82.95,96.71,82.95],[3569.5,3583.46,96.71,82.95,97.57,106.28],[3583.46,3592.18,97.57,106.28,97.57,106.28],[3592.18,3665.83,97.57,106.28,105.17,145.97],[3665.83,3667.62,105.17,145.97,105.17,145.97]],"7":[[0.0,66.58,8.41,128.14,128.46,76.78],[66.58,71.64,128.46,76.78,128.46,76.78],[71.64,134.03,128.46,76.78,109.92,169.77],[134.03,141.03,109.92,169.77,109.92,169.77],[141.03,252.06,109.92,169.77,112.96,16.02],[252.06,252.35,112.96,16.02,112.96,16.02],[252.35,278.18,112.96,16.02,126.54,8.27],[278.18,281.27,126.54,8.27,126.54,8.27],[281.27,518.81,126.54,8.27,152.35,141.25],[518.81,526.89,152.35,141.25,152.35,141.25],[526.89,550.94,152.35,141.25,127.02,114.06],[550.94,556.63,127.02,114.06,127.02,114.06],[556.63,615.1,127.02,114.06,148.52,134.06],[615.1,623.38,148.52,134.06,148.52,134.06],[623.38,757.77,148.52,134.06,55.69,64.35],[757.77,758.04,55.69,64.35,55.69,64.35],[758.04,805.99,55.69,64.35,100.11,113.61],[805.99,809.92,100.11,113.61,100.11,113.61],[809.92,860.99,100.11,113.61,46.98,84.79],[860.99,861.13,46.98,84.79,46.98,84.79],[861.13,924.51,46.98,84.79,159.31,43.73],[924.51,933.0,159.31,43.73,159.31,43.73],[933.0,1042.11,159.31,43.73,147.06,186.07],[1042.11,1042.81,147.06,186.07,147.06,186.07],[1042.81,1162.2,147.06,186.07,74.78,61.71],[1162.2,1168.04,74.78,61.71,74.78,61.71],[1168.04,1222.83,74.78,61.71,138.88,89.85],[1222.83,1229.26,138.88,89.85,138.88,89.85],[1229.26,1311.41,138.88,89.85,122.84,192.84],[1311.41,1314.85,122.84,192.84,122.84,192.84],[1314.85,1476.43,122.84,192.84,100.57,25.02],[1476.43,1483.5,100.57,25.02,100.57,25.02],[1483.5,1587.01,100.57,25.02,152.61,181.34],[1587.01,1588.2,152.61,181.34,152.61,181.34],[1588.2,1800.81,152.61,181.34,46.55,153.16],[1800.81,1807.16,46.55,153.16,46.55,153.16],[1807.16,1846.78,46.55,153.16,105.55,117.8],[1846.78,1851.02,105.55,117.8,105.55,117.8],[1851.02,1899.21,105.55,117.8,53.29,191.52],[1899.21,1905.15,53.29,191.52,53.29,191.52],[1905.15,1982.86,53.29,191.52,164.47,124.61],[1982.86,1988.96,164.47,124.61,164.47,124.61],[1988.96,2009.76,164.47,124.61,178.01,85.34],[2009.76,2018.47,178.01,85.34,178.01,85.34],[2018.47,2259.03,178.01,85.34,8.47,57.38],[2259.03,2264.92,8.47,57.38,8.47,57.38],[2264.92,2345.74,8.47,57.38,154.84,91.02],[2345.74,2348.4,154.84,91.02,154.84,91.02],[2348.4,2369.88,154.84,91.02,159.38,57.78],[2369.88,2377.17,159.38,57.78,159.38,57.78],[2377.17,2431.1,159.38,57.78,160.26,142.8],[2431.1,2433.09,160.26,142.8,160.26,142.8],[2433.09,2596.1,160.26,142.8,64.4,14.95],[2596.1,2603.18,64.4,14.95,64.4,14.95],[2603.18,2706.39,64.4,14.95,185.37,141.79],[2706.39,2710.25,185.37,141.79,185.37,141.79],[2710.25,2886.6,185.37,141.79,68.28,64.87],[2886.6,2889.43,68.28,64.87,68.28,64.87],[2889.43,2952.61,68.28,64.87,155.82,26.73],[2952.61,2960.09,155.82,26.73,155.82,26.73],[2960.09,3176.29,155.82,26.73,51.1,94.61],[3176.29,3184.03,51.1,94.61,51.1,94.61],[3184.03,3202.85,51.1,94.61,19.93,105.99],[3202.85,3209.34,19.93,105.99,19.93,105.99],[3209.34,3321.81,19.93,105.99,128.1,190.68],[3321.81,3324.64,128.1,190.68,128.1,190.68],[3324.64,3405.7,128.1,190.68,45.76,54.46],[3405.7,3414.81,45.76,54.46,45.76,54.46],[3414.81,3463.42,45.76,54.46,6.93,135.54],[3463.42,3469.78,6.93,135.54,6.93,135.54],[3469.78,3613.74,6.93,135.54,191.31,41.45],[3613.74,3620.67,191.31,41.45,191.31,41.45]],"9":[[0.0,30.62,65.86,66.59,48.17,9.66],[30.62,30.8,48.17,9.66,48.17,9.66],[30.8,98.4,48.17,9.66,125.05,106.23],[98.4,106.34,125.05,106.23,125.05,106.23],[106.34,161.44,125.05,106.23,45.69,168.07],[161.44,169.02,45.69,168.07,45.69,168.07],[169.02,387.61,45.69,168.07,143.0,51.29],[387.61,397.19,143.0,51.29,143.0,51.29],[397.19,433.93,143.0,51.29,176.99,112.91],[433.93,437.85,176.99,112.91,176.99,112.91],[437.85,542.33,176.99,112.91,17.8,18.87],[542.33,547.99,17.8,18.87,17.8,18.87],[547.99,695.49,17.8,18.87,187.61,177.46],[695.49,701.26,187.61,177.46,187.61,177.46],[701.26,706.73,187.61,177.46,184.05,173.37],[706.73,708.62,184.05,173.37,184.05,173.37],[708.62,923.53,184.05,173.37,132.36,12.11],[923.53,930.72,132.36,12.11,132.36,12.11],[930.72,1050.26,132.36,12.11,49.76,119.57],[1050.26,1050.36,49.76,119.57,49.76,119.57],[1050.36,1139.44,49.76,119.57,179.37,184.73],[1139.44,1148.4,179.37,184.73,179.37,184.73],[1148.4,1225.52,179.37,184.73,162.06,114.38],[1225.52,1234.13,162.06,114.38,162.06,114.38],[1234.13,1305.99,162.06,114.38,166.35,158.19],[1305.99,1314.69,166.35,158.19,166.35,158.19],[1314.69,1431.7,166.35,158.19,2.56,9.26],[1431.7,1433.64,2.56,9.26,2.56,9.26],[1433.64,1534.21,2.56,9.26,92.17,73.45],[1534.21,1538.42,92.17,73.45,92.17,73.45],[1538.42,1719.68,92.17,73.45,51.51,193.23],[1719.68,1723.75,51.51,193.23,51.51,193.23],[1723.75,1787.85,51.51,193.23,12.88,143.37],[1787.85,1797.22,12.88,143.37,12.88,143.37],[1797.22,1879.64,12.88,143.37,54.22,96.99],[1879.64,1884.29,54.22,96.99,54.22,96.99],[1884.29,2040.38,54.22,96.99,159.2,24.46],[2040.38,2041.52,159.2,24.46,159.2,24.46],[2041.52,2094.92,159.2,24.46,130.07,7.37],[2094.92,2096.33,130.07,7.37,130.07,7.37],[2096.33,2192.84,130.07,7.37,177.28,135.74],[2192.84,2195.69,177.28,135.74,177.28,135.74],[2195.69,2237.71,177.28,135.74,176.58,90.56],[2237.71,2242.35,176.58,90.56,176.58,90.56],[2242.35,2361.48,176.58,90.56,29.15,184.5],[2361.48,2367.99,29.15,184.5,29.15,184.5],[2367.99,2467.69,29.15,184.5,92.1,39.89],[2467.69,2470.25,92.1,39.89,92.1,39.89],[2470.25,2678.62,92.1,39.89,47.13,175.16],[2678.62,2681.05,47.13,175.16,47.13,175.16],[2681.05,2817.78,47.13,175.16,98.85,83.24],[2817.78,2823.11,98.85,83.24,98.85,83.24],[2823.11,2860.99,98.85,83.24,51.65,130.93],[2860.99,2863.24,51.65,130.93,51.65,130.93],[2863.24,2894.84,51.65,130.93,43.08,183.43],[2894.84,2896.3,43.08,183.43,43.08,183.43],[2896.3,2932.28,43.08,183.43,31.46,140.82],[2932.28,2940.11,31.46,140.82,31.46,140.82],[2940.11,2994.38,31.46,140.82,73.28,56.61],[2994.38,3003.17,73.28,56.61,73.28,56.61],[3003.17,3165.11,73.28,56.61,6.37,123.6],[3165.11,3173.28,6.37,123.6,6.37,123.6],[3173.28,3404.48,6.37,123.6,164.95,69.06],[3404.48,3414.25,164.95,69.06,164.95,69.06],[3414.25,3467.22,164.95,69.06,64.08,54.36],[3467.22,3471.74,64.08,54.36,64.08,54.36],[3471.74,3543.04,64.08,54.36,135.02,93.41],[3543.04,3549.13,135.02,93.41,135.02,93.41],[3549.13,3567.03,135.02,93.41,107.62,86.54],[3567.03,3573.6,107.62,86.54,107.62,86.54],[3573.6,3612.03,107.62,86.54,168.26,62.66],[3612.03,3616.53,168.26,62.66,168.26,62.66]],"15":[[0.0,42.6,130.01,185.38,69.91,195.48],[42.6,46.16,69.91,195.48,69.91,195.48],[46.16,90.22,69.91,195.48,141.45,184.3],[90.22,92.21,141.45,184.3,141.45,184.3],[92.21,170.5,141.45,184.3,33.19,186.25],[170.5,177.95,33.19,186.25,33.19,186.25],[177.95,382.69,33.19,186.25,179.98,101.29],[382.69,392.06,179.98,101.29,179.98,101.29],[392.06,401.0,179.98,101.29,176.35,106.23],[401.0,407.37,176.35,106.23,176.35,106.23],[407.37,521.33,176.35,106.23,11.81,46.36],[521.33,527.39,11.81,46.36,11.81,46.36],[527.39,547.61,11.81,46.36,42.72,21.7],[547.61,553.83,42.72,21.7,42.72,21.7],[553.83,668.38,42.72,21.7,155.94,51.86],[668.38,678.27,155.94,51.86,155.94,51.86],[678.27,776.62,155.94,51.86,88.44,129.77],[776.62,784.66,88.44,129.77,88.44,129.77],[784.66,948.63,88.44,129.77,25.33,12.3],[948.63,948.7,25.33,12.3,25.33,12.3],[948.7,995.9,25.33,12.3,39.23,45.4],[995.9,1002.8,39.23,45.4,39.23,45.4],[1002.8,1052.63,39.23,45.4,126.87,28.26],[1052.63,1058.11,126.87,28.26,126.87,28.26],[1058.11,1231.95,126.87,28.26,19.72,167.74],[1231.95,1234.48,19.72,167.74,19.72,167.74],[1234.48,1368.4,19.72,167.74,185.55,27.75],[1368.4,1376.74,185.55,27.75,185.55,27.75],[1376.74,1422.6,185.55,27.75,124.6,82.13],[1422.6,1430.35,124.6,82.13,124.6,82.13],[1430.35,1512.06,124.6,82.13,150.92,184.59],[1512.06,1517.54,150.92,184.59,150.92,184.59],[1517.54,1606.75,150.92,184.59,166.63,76.34],[1606.75,1608.36,166.63,76.34,166.63,76.34],[1608.36,1719.97,166.63,76.34,50.13,187.97],[1719.97,1720.72,50.13,187.97,50.13,187.97],[1720.72,1971.22,50.13,187.97,125.51,11.7],[1971.22,1978.5,125.51,11.7,125.51,11.7],[1978.5,2041.02,125.51,11.7,186.35,84.64],[2041.02,2044.88,186.35,84.64,186.35,84.64],[2044.88,2185.01,186.35,84.64,165.59,13.3],[2185.01,2189.46,165.59,13.3,165.59,13.3],[2189.46,2284.51,165.59,13.3,97.05,88.74],[2284.51,2290.1,97.05,88.74,97.05,88.74],[2290.1,2321.12,97.05,88.74,128.09,105.57],[2321.12,2322.92,128.09,105.57,128.09,105.57],[2322.92,2341.78,128.09,105.57,105.07,91.64],[2341.78,2347.91,105.07,91.64,105.07,91.64],[2347.91,2435.81,105.07,91.64,87.24,173.11],[2435.81,2445.28,87.24,173.11,87.24,173.11],[2445.28,2517.1,87.24,173.11,39.55,74.78],[2517.1,2522.24,39.55,74.78,39.55,74.78],[2522.24,2546.16,39.55,74.78,26.99,84.24],[2546.16,2551.11,26.99,84.24,26.99,84.24],[2551.11,2626.03,26.99,84.24,117.01,87.39],[2626.03,2631.46,117.01,87.39,117.01,87.39],[2631.46,2665.12,117.01,87.39,67.76,81.86],[2665.12,2673.26,67.76,81.86,67.76,81.86],[2673.26,2804.06,67.76,81.86,63.32,7.28],[2804.06,2806.68,63.32,7.28,63.32,7.28],[2806.68,3078.65,63.32,7.28,120.76,160.5],[3078.65,3083.73,120.76,160.5,120.76,160.5],[3083.73,3166.17,120.76,160.5,119.52,14.16],[3166.17,3173.65,119.52,14.16,119.52,14.16],[3173.65,3249.27,119.52,14.16,136.41,160.16],[3249.27,3258.59,136.41,160.16,136.41,160.16],[3258.59,3303.77,136.41,160.16,92.74,132.92],[3303.77,3312.96,92.74,132.92,92.74,132.92],[3312.96,3334.32,92.74,132.92,132.35,130.43],[3334.32,3340.95,132.35,130.43,132.35,130.43],[3340.95,3419.62,132.35,130.43,54.09,117.13],[3419.62,3426.26,54.09,117.13,54.09,117.13],[3426.26,3539.75,54.09,117.13,19.04,49.06],[3539.75,3546.37,19.04,49.06,19.04,49.06],[3546.37,3567.88,19.04,49.06,5.11,71.16],[3567.88,3573.36,5.11,71.16,5.11,71.16],[3573.36,3664.62,5.11,71.16,81.7,190.58],[3664.62,3672.13,81.7,190.58,81.7,190.58]],"16":[[0.0,126.0,62.82,9.9,184.68,42.24],[126.0,126.41,184.68,42.24,184.68,42.24],[126.41,132.26,184.68,42.24,193.7,36.47],[132.26,136.81,193.7,36.47,193.7,36.47],[136.81,251.07,193.7,36.47,42.42,50.39],[251.07,252.69,42.42,50.39,42.42,50.39],[252.69,292.65,42.42,50.39,113.07,62.52],[292.65,298.28,113.07,62.52,113.07,62.52],[298.28,394.46,113.07,62.52,30.42,0.19],[394.46,401.7,30.42,0.19,30.42,0.19],[401.7,536.93,30.42,0.19,70.7,147.73],[536.93,539.77,70.7,147.73,70.7,147.73],[539.77,568.59,70.7,147.73,17.87,149.48],[568.59,571.99,17.87,149.48,17.87,149.48],[571.99,597.23,17.87,149.48,11.98,177.71],[597.23,602.58,11.98,177.71,11.98,177.71],[602.58,814.32,11.98,177.71,98.07,31.1],[814.32,818.21,98.07,31.1,98.07,31.1],[818.21,910.23,98.07,31.1,184.69,190.54],[910.23,916.03,184.69,190.54,184.69,190.54],[916.03,950.67,184.69,190.54,152.06,135.5],[950.67,956.76,152.06,135.5,152.06,135.5],[956.76,993.87,152.06,135.5,88.54,137.91],[993.87,998.19,88.54,137.91,88.54,137.91],[998.19,1156.38,88.54,137.91,170.76,180.03],[1156.38,1158.3,170.76,180.03,170.76,180.03],[1158.3,1176.24,170.76,180.03,140.1,164.6],[1176.24,1179.65,140.1,164.6,140.1,164.6],[1179.65,1202.35,140.1,164.6,168.35,151.97],[1202.35,1208.89,168.35,151.97,168.35,151.97],[1208.89,1418.81,168.35,151.97,6.78,144.35],[1418.81,1428.2,6.78,144.35,6.78,144.35],[1428.2,1725.16,6.78,144.35,93.89,18.83],[1725.16,1734.57,93.89,18.83,93.89,18.83],[1734.57,1831.83,93.89,18.83,142.64,126.12],[1831.83,1837.98,142.64,126.12,142.64,126.12],[1837.98,1925.61,142.64,126.12,93.72,46.37],[1925.61,1932.3,93.72,46.37,93.72,46.37],[1932.3,1982.31,93.72,46.37,153.05,119.05],[1982.31,1988.52,153.05,119.05,153.05,119.05],[1988.52,2091.75,153.05,119.05,197.28,51.16],[2091.75,2096.98,197.28,51.16,197.28,51.16],[2096.98,2194.73,197.28,51.16,120.79,3.48],[2194.73,2201.49,120.79,3.48,120.79,3.48],[2201.49,2340.03,120.79,3.48,144.62,101.12],[2340.03,2346.9,144.62,101.12,144.62,101.12],[2346.9,2399.44,144.62,101.12,118.0,34.11],[2399.44,2402.63,118.0,34.11,118.0,34.11],[2402.63,2492.94,118.0,34.11,40.21,135.32],[2492.94,2497.42,40.21,135.32,40.21,135.32],[2497.42,2667.31,40.21,135.32,148.1,174.26],[2667.31,2668.22,148.1,174.26,148.1,174.26],[2668.22,2846.74,148.1,174.26,157.12,61.41],[2846.74,2856.7,157.12,61.41,157.12,61.41],[2856.7,2903.41,157.12,61.41,79.38,34.25],[2903.41,2909.51,79.38,34.25,79.38,34.25],[2909.51,3005.8,79.38,34.25,22.63,117.8],[3005.8,3006.29,22.63,117.8,22.63,117.8],[3006.29,3063.93,22.63,117.8,73.23,143.99],[3063.93,3064.54,73.23,143.99,73.23,143.99],[3064.54,3160.98,73.23,143.99,167.17,155.16],[3160.98,3163.61,167.17,155.16,167.17,155.16],[3163.61,3289.75,167.17,155.16,13.31,139.16],[3289.75,3299.61,13.31,139.16,13.31,139.16],[3299.61,3358.13,13.31,139.16,86.65,159.96],[3358.13,3361.5,86.65,159.96,86.65,159.96],[3361.5,3444.6,86.65,159.96,35.77,29.32],[3444.6,3452.63,35.77,29.32,35.77,29.32],[3452.63,3528.2,35.77,29.32,120.86,137.94],[3528.2,3533.25,120.86,137.94,120.86,137.94],[3533.25,3586.9,120.86,137.94,196.63,145.02],[3586.9,3589.0,196.63,145.02,196.63,145.02],[3589.0,3689.65,196.63,145.02,0.6,135.91],[3689.65,3689.67,0.6,135.91,0.6,135.91]],"17":[[0.0,178.52,75.56,17.0,23.27,145.08],[178.52,181.23,23.27,145.08,23.27,145.08],[181.23,321.65,23.27,145.08,15.76,42.2],[321.65,330.1,15.76,42.2,15.76,42.2],[330.1,462.26,15.76,42.2,156.91,156.33],[462.26,470.65,156.91,156.33,156.91,156.33],[470.65,551.89,156.91,156.33,9.25,122.74],[551.89,556.96,9.25,122.74,9.25,122.74],[556.96,653.21,9.25,122.74,146.52,177.92],[653.21,655.54,146.52,177.92,146.52,177.92],[655.54,780.15,146.52,177.92,6.01,152.53],[780.15,784.93,6.01,152.53,6.01,152.53],[784.93,975.58,6.01,152.53,100.93,132.76],[975.58,981.19,100.93,132.76,100.93,132.76],[981.19,1049.06,100.93,132.76,138.85,176.28],[1049.06,1056.86,138.85,176.28,138.85,176.28],[1056.86,1137.33,138.85,176.28,156.68,91.74],[1137.33,1139.8,156.68,91.74,156.68,91.74],[1139.8,1157.01,156.68,91.74,125.19,96.92],[1157.01,1160.49,125.19,96.92,125.19,96.92],[1160.49,1208.69,125.19,96.92,86.13,21.42],[1208.69,1212.44,86.13,21.42,86.13,21.42],[1212.44,1246.93,86.13,21.42,129.27,11.74],[1246.93,1250.7,129.27,11.74,129.27,11.74],[1250.7,1335.28,129.27,11.74,63.7,142.45],[1335.28,1343.22,63.7,142.45,63.7,142.45],[1343.22,1547.56,63.7,142.45,24.64,2.68],[1547.56,1554.18,24.64,2.68,24.64,2.68],[1554.18,1672.68,24.64,2.68,158.88,145.49],[1672.68,1682.57,158.88,145.49,158.88,145.49],[1682.57,1705.36,158.88,145.49,123.08,120.81],[1705.36,1714.86,123.08,120.81,123.08,120.81],[1714.86,1797.36,123.08,120.81,12.47,98.44],[1797.36,1799.53,12.47,98.44,12.47,98.44],[1799.53,1900.2,12.47,98.44,199.49,30.7],[1900.2,1903.98,199.49,30.7,199.49,30.7],[1903.98,1969.21,199.49,30.7,71.23,11.15],[1969.21,1972.24,71.23,11.15,71.23,11.15],[1972.24,1991.98,71.23,11.15,85.6,2.43],[1991.98,2000.79,85.6,2.43,85.6,2.43],[2000.79,2074.86,85.6,2.43,88.12,41.94],[2074.86,2077.74,88.12,41.94,88.12,41.94],[2077.74,2159.95,88.12,41.94,168.5,105.31],[2159.95,2167.51,168.5,105.31,168.5,105.31],[2167.51,2349.63,168.5,105.31,77.35,3.51],[2349.63,2355.22,77.35,3.51,77.35,3.51],[2355.22,2526.6,77.35,3.51,175.07,126.95],[2526.6,2536.21,175.07,126.95,175.07,126.95],[2536.21,2601.88,175.07,126.95,162.73,60.32],[2601.88,2609.27,162.73,60.32,162.73,60.32],[2609.27,2654.77,162.73,60.32,153.92,91.79],[2654.77,2655.96,153.92,91.79,153.92,91.79],[2655.96,2744.02,153.92,91.79,27.87,176.35],[2744.02,2746.94,27.87,176.35,27.87,176.35],[2746.94,2960.49,27.87,176.35,146.77,34.51],[2960.49,2968.47,146.77,34.51,146.77,34.51],[2968.47,3101.18,146.77,34.51,65.14,185.26],[3101.18,3109.58,65.14,185.26,65.14,185.26],[3109.58,3214.05,65.14,185.26,120.73,86.56],[3214.05,3220.86,120.73,86.56,120.73,86.56],[3220.86,3250.13,120.73,86.56,146.48,103.23],[3250.13,3252.64,146.48,103.23,146.48,103.23],[3252.64,3306.66,146.48,103.23,71.59,179.06],[3306.66,3316.04,71.59,179.06,71.59,179.06],[3316.04,3353.29,71.59,179.06,94.55,123.45],[3353.29,3354.95,94.55,123.45,94.55,123.45],[3354.95,3425.1,94.55,123.45,30.78,109.27],[3425.1,3430.71,30.78,109.27,30.78,109.27],[3430.71,3463.67,30.78,109.27,64.57,149.11],[3463.67,3466.6,64.57,149.11,64.57,149.11],[3466.6,3533.86,64.57,149.11,194.01,168.05],[3533.86,3534.83,194.01,168.05,194.01,168.05],[3534.83,3635.41,194.01,168.05,157.79,49.59],[3635.41,3642.06,157.79,49.59,157.79,49.59]],"18":[[0.0,20.42,122.16,61.04,140.26,64.12],[20.42,24.33,140.26,64.12,140.26,64.12],[24.33,146.95,140.26,64.12,185.19,12.54],[146.95,156.69,185.19,12.54,185.19,12.54],[156.69,294.18,185.19,12.54,54.06,81.81],[294.18,298.36,54.06,81.81,54.06,81.81],[298.36,323.2,54.06,81.81,96.08,106.68],[323.2,326.92,96.08,106.68,96.08,106.68],[326.92,340.13,96.08,106.68,85.46,124.4],[340.13,342.67,85.46,124.4,85.46,124.4],[342.67,385.15,85.46,124.4,12.77,146.77],[385.15,390.99,12.77,146.77,12.77,146.77],[390.99,695.81,12.77,146.77,147.23,48.47],[695.81,700.29,147.23,48.47,147.23,48.47],[700.29,725.0,147.23,48.47,122.25,78.46],[725.0,729.6,122.25,78.46,122.25,78.46],[729.6,865.05,122.25,78.46,164.44,195.87],[865.05,875.03,164.44,195.87,164.44,195.87],[875.03,1021.86,164.44,195.87,136.4,64.82],[1021.86,1025.16,136.4,64.82,136.4,64.82],[1025.16,1173.7,136.4,64.82,131.82,147.32],[1173.7,1177.01,131.82,147.32,131.82,147.32],[1177.01,1282.6,131.82,147.32,171.24,47.34],[1282.6,1284.78,171.24,47.34,171.24,47.34],[1284.78,1391.0,171.24,47.34,70.06,102.12],[1391.0,1397.01,70.06,102.12,70.06,102.12],[1397.01,1553.29,70.06,102.12,170.49,30.27],[1553.29,1554.17,170.49,30.27,170.49,30.27],[1554.17,1767.6,170.49,30.27,193.06,173.51],[1767.6,1770.26,193.06,173.51,193.06,173.51],[1770.26,1988.84,193.06,173.51,158.96,54.86],[1988.84,1994.6,158.96,54.86,158.96,54.86],[1994.6,2182.91,158.96,54.86,39.5,74.33],[2182.91,2184.58,39.5,74.33,39.5,74.33],[2184.58,2297.78,39.5,74.33,75.72,138.61],[2297.78,2298.81,75.72,138.61,75.72,138.61],[2298.81,2452.45,75.72,138.61,134.0,197.81],[2452.45,2456.21,134.0,197.81,134.0,197.81],[2456.21,2524.28,134.0,197.81,61.2,98.69],[2524.28,2533.77,61.2,98.69,61.2,98.69],[2533.77,2567.89,61.2,98.69,100.3,136.81],[2567.89,2573.67,100.3,136.81,100.3,136.81],[2573.67,2795.48,100.3,136.81,18.82,7.03],[2795.48,2798.96,18.82,7.03,18.82,7.03],[2798.96,2869.56,18.82,7.03,106.65,30.96],[2869.56,2879.34,106.65,30.96,106.65,30.96],[2879.34,2947.55,106.65,30.96,186.16,80.24],[2947.55,2949.72,186.16,80.24,186.16,80.24],[2949.72,3060.79,186.16,80.24,52.27,143.79],[3060.79,3069.92,52.27,143.79,52.27,143.79],[3069.92,3180.15,52.27,143.79,173.64,73.05],[3180.15,3183.45,173.64,73.05,173.64,73.05],[3183.45,3299.94,173.64,73.05,16.88,49.35],[3299.94,3307.85,16.88,49.35,16.88,49.35],[3307.85,3370.52,16.88,49.35,58.64,119.94],[3370.52,3380.31,58.64,119.94,58.64,119.94],[3380.31,3501.76,58.64,119.94,138.47,168.88],[3501.76,3508.96,138.47,168.88,138.47,168.88],[3508.96,3634.96,138.47,168.88,20.5,51.55],[3634.96,3635.91,20.5,51.55,20.5,51.55]],"23":[[0.0,84.3,133.71,142.98,29.89,198.76],[84.3,87.07,29.89,198.76,29.89,198.76],[87.07,183.65,29.89,198.76,52.49,11.71],[183.65,187.11,52.49,11.71,52.49,11.71],[187.11,288.13,52.49,11.71,104.6,157.11],[288.13,293.2,104.6,157.11,104.6,157.11],[293.2,412.63,104.6,157.11,192.08,96.73],[412.63,417.45,192.08,96.73,192.08,96.73],[417.45,507.23,192.08,96.73,129.25,153.55],[507.23,508.87,129.25,153.55,129.25,153.55],[508.87,627.33,129.25,153.55,61.68,44.6],[627.33,632.1,61.68,44.6,61.68,44.6],[632.1,668.9,61.68,44.6,21.04,78.98],[668.9,670.31,21.04,78.98,21.04,78.98],[670.31,826.71,21.04,78.98,93.08,182.89],[826.71,831.37,93.08,182.89,93.08,182.89],[831.37,951.54,93.08,182.89,64.52,58.84],[951.54,953.56,64.52,58.84,64.52,58.84],[953.56,998.64,64.52,58.84,17.54,99.59],[998.64,999.36,17.54,99.59,17.54,99.59],[999.36,1199.34,17.54,99.59,106.66,157.47],[1199.34,1205.25,106.66,157.47,106.66,157.47],[1205.25,1349.39,106.66,157.47,16.56,8.74],[1349.39,1353.28,16.56,8.74,16.56,8.74],[1353.28,1433.68,16.56,8.74,17.82,64.97],[1433.68,1434.66,17.82,64.97,17.82,64.97],[1434.66,1487.27,17.82,64.97,89.43,128.8],[1487.27,1491.91,89.43,128.8,89.43,128.8],[1491.91,1498.13,89.43,128.8,96.43,138.27],[1498.13,1503.19,96.43,138.27,96.43,138.27],[1503.19,1670.15,96.43,138.27,41.61,15.78],[1670.15,1670.59,41.61,15.78,41.61,15.78],[1670.59,1795.25,41.61,15.78,183.99,121.95],[1795.25,1799.56,183.99,121.95,183.99,121.95],[1799.56,1842.7,183.99,121.95,139.64,147.45],[1842.7,1849.06,139.64,147.45,139.64,147.45],[1849.06,1891.57,139.64,147.45,76.59,102.6],[1891.57,1896.88,76.59,102.6,76.59,102.6],[1896.88,1939.95,76.59,102.6,94.84,149.29],[1939.95,1947.16,94.84,149.29,94.84,149.29],[1947.16,2068.42,94.84,149.29,176.61,35.0],[2068.42,2073.46,176.61,35.0,176.61,35.0],[2073.46,2286.84,176.61,35.0,199.77,146.35],[2286.84,2288.02,199.77,146.35,199.77,146.35],[2288.02,2353.96,199.77,146.35,199.25,27.79],[2353.96,2361.58,199.25,27.79,199.25,27.79],[2361.58,2490.56,199.25,27.79,35.68,95.45],[2490.56,2495.6,35.68,95.45,35.68,95.45],[2495.6,2688.51,35.68,95.45,174.63,110.38],[2688.51,2697.29,174.63,110.38,174.63,110.38],[2697.29,2800.49,174.63,110.38,84.71,198.87],[2800.49,2809.1,84.71,198.87,84.71,198.87],[2809.1,3022.76,84.71,198.87,88.76,3.99],[3022.76,3030.26,88.76,3.99,88.76,3.99],[3030.26,3102.75,88.76,3.99,122.05,96.59],[3102.75,3103.66,122.05,96.59,122.05,96.59],[3103.66,3203.87,122.05,96.59,2.43,184.77],[3203.87,3207.5,2.43,184.77,2.43,184.77],[3207.5,3330.01,2.43,184.77,187.58,109.06],[3330.01,3338.37,187.58,109.06,187.58,109.06],[3338.37,3450.47,187.58,109.06,53.94,20.75],[3450.47,3452.83,53.94,20.75,53.94,20.75],[3452.83,3519.3,53.94,20.75,102.06,124.62],[3519.3,3528.44,102.06,124.62,102.06,124.62],[3528.44,3654.71,102.06,124.62,5.75,137.89],[3654.71,3657.8,5.75,137.89,5.75,137.89]],"24":[[0.0,159.95,20.49,160.48,173.96,173.7],[159.95,164.51,173.96,173.7,173.96,173.7],[164.51,249.82,173.96,173.7,127.34,129.0],[249.82,252.58,127.34,129.0,127.34,129.0],[252.58,340.21,127.34,129.0,134.67,49.17],[340.21,345.58,134.67,49.17,134.67,49.17],[345.58,525.22,134.67,49.17,19.61,167.43],[525.22,529.24,19.61,167.43,19.61,167.43],[529.24,594.08,19.61,167.43,5.3,99.31],[594.08,594.17,5.3,99.31,5.3,99.31],[594.17,665.89,5.3,99.31,144.22,115.72],[665.89,674.9,144.22,115.72,144.22,115.72],[674.9,701.35,144.22,115.72,162.39,66.55],[701.35,704.05,162.39,66.55,162.39,66.55],[704.05,774.37,162.39,66.55,141.75,183.44],[774.37,782.05,141.75,183.44,141.75,183.44],[782.05,898.2,141.75,183.44,99.84,30.94],[898.2,898.42,99.84,30.94,99.84,30.94],[898.42,919.4,99.84,30.94,132.04,40.49],[919.4,924.09,132.04,40.49,132.04,40.49],[924.09,1010.47,132.04,40.49,177.43,136.67],[1010.47,1014.34,177.43,136.67,177.43,136.67],[1014.34,1073.46,177.43,136.67,64.28,152.31],[1073.46,1076.67,64.28,152.31,64.28,152.31],[1076.67,1171.22,64.28,152.31,153.45,186.96],[1171.22,1173.51,153.45,186.96,153.45,186.96],[1173.51,1256.63,153.45,186.96,95.92,98.68],[1256.63,1266.62,95.92,98.68,95.92,98.68],[1266.62,1407.93,95.92,98.68,121.88,165.31],[1407.93,1416.72,121.88,165.31,121.88,165.31],[1416.72,1475.96,121.88,165.31,33.57,87.79],[1475.96,1479.48,33.57,87.79,33.57,87.79],[1479.48,1526.01,33.57,87.79,24.74,173.65],[1526.01,1531.87,24.74,173.65,24.74,173.65],[1531.87,1550.27,24.74,173.65,5.86,172.73],[1550.27,1555.84,5.86,172.73,5.86,172.73],[1555.84,1567.57,5.86,172.73,14.76,178.24],[1567.57,1576.49,14.76,178.24,14.76,178.24],[1576.49,1609.79,14.76,178.24,51.12,168.85],[1609.79,1616.21,51.12,168.85,51.12,168.85],[1616.21,1655.08,51.12,168.85,48.7,122.72],[1655.08,1660.89,48.7,122.72,48.7,122.72],[1660.89,1731.56,48.7,122.72,143.99,106.28],[1731.56,1734.77,143.99,106.28,143.99,106.28],[1734.77,1822.19,143.99,106.28,8.41,4.83],[1822.19,1827.99,8.41,4.83,8.41,4.83],[1827.99,1887.09,8.41,4.83,65.19,16.44],[1887.09,1888.91,65.19,16.44,65.19,16.44],[1888.91,1928.85,65.19,16.44,14.07,20.58],[1928.85,1934.23,14.07,20.58,14.07,20.58],[1934.23,2024.89,14.07,20.58,34.62,182.7],[2024.89,2031.03,34.62,182.7,34.62,182.7],[2031.03,2116.8,34.62,182.7,153.0,153.06],[2116.8,2120.78,153.0,153.06,153.0,153.06],[2120.78,2131.75,153.0,153.06,134.95,164.09],[2131.75,2133.74,134.95,164.09,134.95,164.09],[2133.74,2251.87,134.95,164.09,179.74,12.88],[2251.87,2258.39,179.74,12.88,179.74,12.88],[2258.39,2502.77,179.74,12.88,38.96,26.8],[2502.77,2503.29,38.96,26.8,38.96,26.8],[2503.29,2536.86,38.96,26.8,3.36,24.04],[2536.86,2538.99,3.36,24.04,3.36,24.04],[2538.99,2647.39,3.36,24.04,97.37,117.39],[2647.39,2649.44,97.37,117.39,97.37,117.39],[2649.44,2719.43,97.37,117.39,53.52,30.82],[2719.43,2726.98,53.52,30.82,53.52,30.82],[2726.98,2834.69,53.52,30.82,72.52,134.16],[2834.69,2843.29,72.52,134.16,72.52,134.16],[2843.29,2867.57,72.52,134.16,33.37,143.18],[2867.57,2871.75,33.37,143.18,33.37,143.18],[2871.75,2930.74,33.37,143.18,127.95,116.67],[2930.74,2935.36,127.95,116.67,127.95,116.67],[2935.36,3013.1,127.95,116.67,11.24,185.36],[3013.1,3021.1,11.24,185.36,11.24,185.36],[3021.1,3124.83,11.24,185.36,92.13,177.42],[3124.83,3126.97,92.13,177.42,92.13,177.42],[3126.97,3442.13,92.13,177.42,91.5,6.03],[3442.13,3442.59,91.5,6.03,91.5,6.03],[3442.59,3550.98,91.5,6.03,91.57,133.07],[3550.98,3556.48,91.57,133.07,91.57,133.07],[3556.48,3677.48,91.57,133.07,50.24,15.29],[3677.48,3685.89,50.24,15.29,50.24,15.29]]};
var K = {};
for (var i in S) { K[i] = 0; }
function place(t) {
  for (var i in S) {
    var s = S[i];
    var j = K[i];
    while (j < s.length - 1 && t > s[j][1]) { j++; }
    K[i] = j;
    var g = s[j];
    var f = g[1] > g[0] ? Math.min(1, Math.max(0, (t - g[0]) / (g[1] - g[0]))) : 1;
    sim.getMoteWithID(parseInt(i)).getInterfaces().getPosition()
       .setCoordinates(g[2] + f * (g[4] - g[2]), g[3] + f * (g[5] - g[3]), 0);
  }
}
var mobile = Object.keys(S).length > 0;
if (mobile) { GENERATE_MSG(1000, "mv"); }
while (true) {
  YIELD();
  if (msg.equals("mv")) {
    place(time / 1000000.0);
    GENERATE_MSG(1000, "mv");
  } else if (msg.startsWith("#")) {
    log.log(time + " " + id + " " + msg + "\n");
  }
}
]]></script>
      <active>true</active>
    </plugin_config>
    <width>600</width>
    <z>0</z>
    <height>700</height>
    <location_x>0</location_x>
    <location_y>0</location_y>
  </plugin>
</simconf>
