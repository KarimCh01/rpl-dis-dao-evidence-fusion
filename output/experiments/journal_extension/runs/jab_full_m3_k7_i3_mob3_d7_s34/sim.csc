<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>jab_full_m3_k7_i3_mob3_d7_s34</title>
    <randomseed>34</randomseed>
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
      <identifier>v_jab_full_root</identifier>
      <description>v_jab_full_root</description>
      <source>/home/user/project/build/variants/v_jab_full_root/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_jab_full_root.cooja</commands>
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
      <identifier>v_jab_full_cli1</identifier>
      <description>v_jab_full_cli1</description>
      <source>/home/user/project/build/variants/v_jab_full_cli1/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_jab_full_cli1.cooja</commands>
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
          <pos x="187.02" y="39.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>2</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="4.84" y="158.91" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>5</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="139.28" y="114.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>19</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="83.33" y="154.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>21</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="161.19" y="79.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>22</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="146.65" y="53.78" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>30</id>
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
          <pos x="160.76" y="64.85" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>3</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="63.47" y="113.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>7</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="101.44" y="143.88" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>11</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="154.81" y="113.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>17</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="199.95" y="54.73" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>18</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="176.17" y="48.54" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>23</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="98.79" y="195.95" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>29</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_jab_full_cli0</identifier>
      <description>v_jab_full_cli0</description>
      <source>/home/user/project/build/variants/v_jab_full_cli0/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_jab_full_cli0.cooja</commands>
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
          <pos x="76.13" y="135.63" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>4</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="114.17" y="50.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>6</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="178.28" y="43.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>8</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="19.44" y="139.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>9</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="21.47" y="191.93" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>10</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="142.60" y="150.05" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>12</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="3.20" y="146.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>13</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="33.76" y="131.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>14</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="74.06" y="173.69" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>15</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="103.23" y="153.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>16</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="154.80" y="44.05" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>20</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="48.44" y="125.63" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>24</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="27.32" y="133.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>25</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="24.55" y="59.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>26</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="43.48" y="36.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>27</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="53.74" y="84.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>28</id>
        </interface_config>
      </mote>
    </motetype>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script><![CDATA[
TIMEOUT(3600000, log.testOK());
var S = {"2":[[0.0,195.01,187.02,39.14,28.78,33.48],[195.01,197.72,28.78,33.48,28.78,33.48],[197.72,289.31,28.78,33.48,74.51,142.86],[289.31,289.9,74.51,142.86,74.51,142.86],[289.9,382.72,74.51,142.86,142.62,59.12],[382.72,384.87,142.62,59.12,142.62,59.12],[384.87,503.59,142.62,59.12,54.05,146.13],[503.59,506.95,54.05,146.13,54.05,146.13],[506.95,615.84,54.05,146.13,53.17,22.58],[615.84,617.43,53.17,22.58,53.17,22.58],[617.43,712.01,53.17,22.58,29.4,187.04],[712.01,717.02,29.4,187.04,29.4,187.04],[717.02,820.21,29.4,187.04,117.2,35.38],[820.21,821.56,117.2,35.38,117.2,35.38],[821.56,956.94,117.2,35.38,49.96,172.07],[956.94,960.83,49.96,172.07,49.96,172.07],[960.83,991.51,49.96,172.07,43.16,124.04],[991.51,1000.8,43.16,124.04,43.16,124.04],[1000.8,1071.64,43.16,124.04,176.24,134.27],[1071.64,1080.01,176.24,134.27,176.24,134.27],[1080.01,1091.78,176.24,134.27,167.22,129.25],[1091.78,1094.19,167.22,129.25,167.22,129.25],[1094.19,1112.04,167.22,129.25,140.68,117.15],[1112.04,1118.9,140.68,117.15,140.68,117.15],[1118.9,1230.98,140.68,117.15,116.84,0.67],[1230.98,1234.84,116.84,0.67,116.84,0.67],[1234.84,1330.99,116.84,0.67,98.23,76.27],[1330.99,1331.18,98.23,76.27,98.23,76.27],[1331.18,1372.2,98.23,76.27,165.47,119.85],[1372.2,1373.45,165.47,119.85,165.47,119.85],[1373.45,1468.46,165.47,119.85,148.7,166.79],[1468.46,1477.75,148.7,166.79,148.7,166.79],[1477.75,1591.66,148.7,166.79,91.59,75.31],[1591.66,1595.57,91.59,75.31,91.59,75.31],[1595.57,1637.7,91.59,75.31,116.08,135.59],[1637.7,1647.29,116.08,135.59,116.08,135.59],[1647.29,1687.3,116.08,135.59,61.82,192.49],[1687.3,1689.23,61.82,192.49,61.82,192.49],[1689.23,1754.2,61.82,192.49,159.6,121.33],[1754.2,1757.17,159.6,121.33,159.6,121.33],[1757.17,1840.96,159.6,121.33,3.66,107.47],[1840.96,1848.69,3.66,107.47,3.66,107.47],[1848.69,1926.64,3.66,107.47,87.23,193.44],[1926.64,1931.73,87.23,193.44,87.23,193.44],[1931.73,1986.56,87.23,193.44,131.24,156.72],[1986.56,1993.95,131.24,156.72,131.24,156.72],[1993.95,2030.27,131.24,156.72,186.37,156.32],[2030.27,2036.18,186.37,156.32,186.37,156.32],[2036.18,2291.82,186.37,156.32,57.47,145.47],[2291.82,2299.61,57.47,145.47,57.47,145.47],[2299.61,2340.48,57.47,145.47,55.16,193.73],[2340.48,2345.33,55.16,193.73,55.16,193.73],[2345.33,2410.06,55.16,193.73,148.23,182.68],[2410.06,2411.07,148.23,182.68,148.23,182.68],[2411.07,2513.95,148.23,182.68,79.07,166.71],[2513.95,2514.22,79.07,166.71,79.07,166.71],[2514.22,2555.2,79.07,166.71,129.05,109.48],[2555.2,2564.26,129.05,109.48,129.05,109.48],[2564.26,2654.74,129.05,109.48,187.59,197.51],[2654.74,2662.02,187.59,197.51,187.59,197.51],[2662.02,2852.86,187.59,197.51,0.75,13.03],[2852.86,2861.47,0.75,13.03,0.75,13.03],[2861.47,3014.06,0.75,13.03,138.87,147.21],[3014.06,3017.0,138.87,147.21,138.87,147.21],[3017.0,3084.82,138.87,147.21,193.14,39.71],[3084.82,3092.5,193.14,39.71,193.14,39.71],[3092.5,3299.09,193.14,39.71,198.87,151.8],[3299.09,3306.85,198.87,151.8,198.87,151.8],[3306.85,3332.77,198.87,151.8,181.08,158.18],[3332.77,3337.29,181.08,158.18,181.08,158.18],[3337.29,3418.55,181.08,158.18,79.56,93.99],[3418.55,3419.01,79.56,93.99,79.56,93.99],[3419.01,3489.4,79.56,93.99,72.37,39.29],[3489.4,3496.87,72.37,39.29,72.37,39.29],[3496.87,3588.49,72.37,39.29,161.68,155.3],[3588.49,3597.97,161.68,155.3,161.68,155.3],[3597.97,3636.68,161.68,155.3,177.88,198.38],[3636.68,3643.03,177.88,198.38,177.88,198.38]],"5":[[0.0,107.09,4.84,158.91,164.62,84.49],[107.09,114.74,164.62,84.49,164.62,84.49],[114.74,165.73,164.62,84.49,100.67,135.42],[165.73,174.03,100.67,135.42,100.67,135.42],[174.03,246.74,100.67,135.42,20.95,188.13],[246.74,248.22,20.95,188.13,20.95,188.13],[248.22,370.6,20.95,188.13,2.53,29.42],[370.6,375.93,2.53,29.42,2.53,29.42],[375.93,545.65,2.53,29.42,151.53,29.35],[545.65,554.2,151.53,29.35,151.53,29.35],[554.2,774.17,151.53,29.35,42.0,6.26],[774.17,782.85,42.0,6.26,42.0,6.26],[782.85,837.99,42.0,6.26,27.54,86.28],[837.99,838.22,27.54,86.28,27.54,86.28],[838.22,1018.92,27.54,86.28,114.66,160.67],[1018.92,1019.55,114.66,160.67,114.66,160.67],[1019.55,1077.71,114.66,160.67,22.88,101.06],[1077.71,1080.92,22.88,101.06,22.88,101.06],[1080.92,1151.83,22.88,101.06,109.36,22.17],[1151.83,1157.32,109.36,22.17,109.36,22.17],[1157.32,1198.09,109.36,22.17,56.4,68.49],[1198.09,1200.51,56.4,68.49,56.4,68.49],[1200.51,1233.92,56.4,68.49,98.68,94.13],[1233.92,1240.0,98.68,94.13,98.68,94.13],[1240.0,1266.27,98.68,94.13,128.29,105.75],[1266.27,1269.03,128.29,105.75,128.29,105.75],[1269.03,1345.06,128.29,105.75,184.74,46.15],[1345.06,1350.06,184.74,46.15,184.74,46.15],[1350.06,1458.12,184.74,46.15,183.64,192.77],[1458.12,1458.66,183.64,192.77,183.64,192.77],[1458.66,1533.61,183.64,192.77,108.14,113.66],[1533.61,1540.44,108.14,113.66,108.14,113.66],[1540.44,1630.46,108.14,113.66,39.07,22.76],[1630.46,1636.18,39.07,22.76,39.07,22.76],[1636.18,1758.18,39.07,22.76,172.86,28.88],[1758.18,1767.4,172.86,28.88,172.86,28.88],[1767.4,1886.71,172.86,28.88,54.62,10.02],[1886.71,1890.5,54.62,10.02,54.62,10.02],[1890.5,2177.94,54.62,10.02,73.71,152.62],[2177.94,2187.07,73.71,152.62,73.71,152.62],[2187.07,2330.53,73.71,152.62,198.66,54.55],[2330.53,2340.53,198.66,54.55,198.66,54.55],[2340.53,2454.83,198.66,54.55,92.15,100.66],[2454.83,2463.28,92.15,100.66,92.15,100.66],[2463.28,2490.88,92.15,100.66,78.83,54.9],[2490.88,2491.6,78.83,54.9,78.83,54.9],[2491.6,2507.94,78.83,54.9,74.13,75.17],[2507.94,2510.8,74.13,75.17,74.13,75.17],[2510.8,2562.94,74.13,75.17,56.97,163.57],[2562.94,2567.0,56.97,163.57,56.97,163.57],[2567.0,2628.59,56.97,163.57,164.66,158.11],[2628.59,2635.83,164.66,158.11,164.66,158.11],[2635.83,2789.3,164.66,158.11,18.52,180.73],[2789.3,2798.85,18.52,180.73,18.52,180.73],[2798.85,2938.84,18.52,180.73,137.75,69.21],[2938.84,2945.95,137.75,69.21,137.75,69.21],[2945.95,3044.11,137.75,69.21,60.66,171.06],[3044.11,3049.88,60.66,171.06,60.66,171.06],[3049.88,3105.25,60.66,171.06,111.31,85.87],[3105.25,3114.43,111.31,85.87,111.31,85.87],[3114.43,3240.97,111.31,85.87,7.53,19.52],[3240.97,3244.82,7.53,19.52,7.53,19.52],[3244.82,3296.67,7.53,19.52,51.12,98.28],[3296.67,3299.94,51.12,98.28,51.12,98.28],[3299.94,3320.94,51.12,98.28,89.43,94.8],[3320.94,3326.46,89.43,94.8,89.43,94.8],[3326.46,3478.77,89.43,94.8,131.28,7.51],[3478.77,3484.43,131.28,7.51,131.28,7.51],[3484.43,3556.32,131.28,7.51,197.41,9.62],[3556.32,3558.84,197.41,9.62,197.41,9.62],[3558.84,3682.3,197.41,9.62,91.48,161.34],[3682.3,3684.92,91.48,161.34,91.48,161.34]],"17":[[0.0,217.35,154.81,113.0,18.72,192.62],[217.35,222.45,18.72,192.62,18.72,192.62],[222.45,558.86,18.72,192.62,48.92,24.82],[558.86,567.65,48.92,24.82,48.92,24.82],[567.65,829.7,48.92,24.82,158.89,165.11],[829.7,838.32,158.89,165.11,158.89,165.11],[838.32,854.18,158.89,165.11,185.46,160.11],[854.18,863.45,185.46,160.11,185.46,160.11],[863.45,1012.22,185.46,160.11,63.57,13.16],[1012.22,1021.25,63.57,13.16,63.57,13.16],[1021.25,1129.41,63.57,13.16,196.98,1.39],[1129.41,1131.87,196.98,1.39,196.98,1.39],[1131.87,1299.82,196.98,1.39,73.5,80.87],[1299.82,1309.07,73.5,80.87,73.5,80.87],[1309.07,1427.33,73.5,80.87,168.95,35.65],[1427.33,1433.45,168.95,35.65,168.95,35.65],[1433.45,1478.19,168.95,35.65,100.78,89.79],[1478.19,1485.91,100.78,89.79,100.78,89.79],[1485.91,1535.87,100.78,89.79,164.02,122.37],[1535.87,1535.97,164.02,122.37,164.02,122.37],[1535.97,1669.47,164.02,122.37,30.16,10.15],[1669.47,1673.59,30.16,10.15,30.16,10.15],[1673.59,1729.87,30.16,10.15,22.64,84.08],[1729.87,1736.49,22.64,84.08,22.64,84.08],[1736.49,1800.49,22.64,84.08,90.62,176.92],[1800.49,1804.48,90.62,176.92,90.62,176.92],[1804.48,1832.68,90.62,176.92,54.53,186.65],[1832.68,1842.22,54.53,186.65,54.53,186.65],[1842.22,1935.47,54.53,186.65,151.0,76.48],[1935.47,1944.85,151.0,76.48,151.0,76.48],[1944.85,2079.0,151.0,76.48,120.58,155.3],[2079.0,2086.24,120.58,155.3,120.58,155.3],[2086.24,2207.74,120.58,155.3,34.89,7.37],[2207.74,2211.25,34.89,7.37,34.89,7.37],[2211.25,2297.66,34.89,7.37,161.91,70.81],[2297.66,2306.06,161.91,70.81,161.91,70.81],[2306.06,2527.78,161.91,70.81,0.07,8.14],[2527.78,2528.91,0.07,8.14,0.07,8.14],[2528.91,2571.27,0.07,8.14,29.38,12.04],[2571.27,2573.93,29.38,12.04,29.38,12.04],[2573.93,2661.42,29.38,12.04,45.44,131.57],[2661.42,2670.17,45.44,131.57,45.44,131.57],[2670.17,2750.6,45.44,131.57,131.92,172.35],[2750.6,2753.75,131.92,172.35,131.92,172.35],[2753.75,2776.47,131.92,172.35,157.37,175.61],[2776.47,2781.44,157.37,175.61,157.37,175.61],[2781.44,2826.16,157.37,175.61,127.7,130.99],[2826.16,2834.11,127.7,130.99,127.7,130.99],[2834.11,3017.32,127.7,130.99,17.2,147.82],[3017.32,3026.26,17.2,147.82,17.2,147.82],[3026.26,3080.13,17.2,147.82,83.16,176.86],[3080.13,3089.02,83.16,176.86,83.16,176.86],[3089.02,3156.26,83.16,176.86,50.53,198.46],[3156.26,3156.93,50.53,198.46,50.53,198.46],[3156.93,3437.62,50.53,198.46,30.86,58.63],[3437.62,3445.7,30.86,58.63,30.86,58.63],[3445.7,3488.85,30.86,58.63,9.32,7.74],[3488.85,3495.48,9.32,7.74,9.32,7.74],[3495.48,3700.45,9.32,7.74,111.35,178.78],[3700.45,3703.1,111.35,178.78,111.35,178.78]],"18":[[0.0,66.29,199.95,54.73,152.56,172.92],[66.29,72.62,152.56,172.92,152.56,172.92],[72.62,131.81,152.56,172.92,178.29,70.88],[131.81,141.4,178.29,70.88,178.29,70.88],[141.4,289.71,178.29,70.88,57.23,76.37],[289.71,297.91,57.23,76.37,57.23,76.37],[297.91,324.36,57.23,76.37,60.41,121.66],[324.36,324.94,60.41,121.66,60.41,121.66],[324.94,372.89,60.41,121.66,84.37,70.88],[372.89,377.51,84.37,70.88,84.37,70.88],[377.51,456.36,84.37,70.88,72.09,144.4],[456.36,458.4,72.09,144.4,72.09,144.4],[458.4,631.96,72.09,144.4,159.32,75.77],[631.96,633.66,159.32,75.77,159.32,75.77],[633.66,800.79,159.32,75.77,81.61,42.57],[800.79,808.48,81.61,42.57,81.61,42.57],[808.48,932.74,81.61,42.57,15.42,90.64],[932.74,938.91,15.42,90.64,15.42,90.64],[938.91,1110.37,15.42,90.64,173.47,18.63],[1110.37,1114.98,173.47,18.63,173.47,18.63],[1114.98,1147.78,173.47,18.63,126.75,31.95],[1147.78,1154.71,126.75,31.95,126.75,31.95],[1154.71,1202.96,126.75,31.95,134.58,59.24],[1202.96,1209.74,134.58,59.24,134.58,59.24],[1209.74,1263.69,134.58,59.24,40.61,52.38],[1263.69,1265.14,40.61,52.38,40.61,52.38],[1265.14,1417.4,40.61,52.38,179.57,177.91],[1417.4,1418.93,179.57,177.91,179.57,177.91],[1418.93,1511.52,179.57,177.91,40.13,106.49],[1511.52,1512.86,40.13,106.49,40.13,106.49],[1512.86,1552.39,40.13,106.49,24.47,77.12],[1552.39,1559.65,24.47,77.12,24.47,77.12],[1559.65,1617.81,24.47,77.12,45.23,154.23],[1617.81,1627.03,45.23,154.23,45.23,154.23],[1627.03,1672.56,45.23,154.23,8.54,100.69],[1672.56,1678.77,8.54,100.69,8.54,100.69],[1678.77,1747.4,8.54,100.69,32.96,26.8],[1747.4,1753.7,32.96,26.8,32.96,26.8],[1753.7,1939.58,32.96,26.8,77.31,134.03],[1939.58,1940.07,77.31,134.03,77.31,134.03],[1940.07,1978.53,77.31,134.03,152.67,146.16],[1978.53,1979.17,152.67,146.16,152.67,146.16],[1979.17,2039.61,152.67,146.16,111.78,177.91],[2039.61,2041.8,111.78,177.91,111.78,177.91],[2041.8,2080.91,111.78,177.91,175.29,183.79],[2080.91,2080.93,175.29,183.79,175.29,183.79],[2080.93,2228.21,175.29,183.79,101.88,4.43],[2228.21,2228.6,101.88,4.43,101.88,4.43],[2228.6,2427.83,101.88,4.43,1.81,95.19],[2427.83,2437.77,1.81,95.19,1.81,95.19],[2437.77,2496.72,1.81,95.19,48.34,31.87],[2496.72,2501.83,48.34,31.87,48.34,31.87],[2501.83,2589.79,48.34,31.87,164.5,107.13],[2589.79,2597.3,164.5,107.13,164.5,107.13],[2597.3,2690.27,164.5,107.13,170.63,165.5],[2690.27,2695.78,170.63,165.5,170.63,165.5],[2695.78,2993.28,170.63,165.5,75.04,12.94],[2993.28,3000.01,75.04,12.94,75.04,12.94],[3000.01,3074.28,75.04,12.94,135.56,58.74],[3074.28,3075.32,135.56,58.74,135.56,58.74],[3075.32,3115.99,135.56,58.74,127.17,89.52],[3115.99,3125.31,127.17,89.52,127.17,89.52],[3125.31,3172.47,127.17,89.52,158.35,23.32],[3172.47,3176.84,158.35,23.32,158.35,23.32],[3176.84,3319.29,158.35,23.32,153.58,118.2],[3319.29,3323.39,153.58,118.2,153.58,118.2],[3323.39,3367.99,153.58,118.2,87.33,106.83],[3367.99,3375.29,87.33,106.83,87.33,106.83],[3375.29,3469.61,87.33,106.83,102.34,162.77],[3469.61,3470.17,102.34,162.77,102.34,162.77],[3470.17,3524.62,102.34,162.77,74.01,166.08],[3524.62,3533.58,74.01,166.08,74.01,166.08],[3533.58,3590.27,74.01,166.08,80.61,120.61],[3590.27,3594.01,80.61,120.61,80.61,120.61],[3594.01,3676.5,80.61,120.61,191.28,177.26],[3676.5,3678.78,191.28,177.26,191.28,177.26]],"19":[[0.0,91.16,139.28,114.08,64.0,85.2],[91.16,94.0,64.0,85.2,64.0,85.2],[94.0,149.01,64.0,85.2,133.98,53.35],[149.01,149.47,133.98,53.35,133.98,53.35],[149.47,293.74,133.98,53.35,170.47,180.32],[293.74,295.63,170.47,180.32,170.47,180.32],[295.63,364.03,170.47,180.32,104.95,63.63],[364.03,364.77,104.95,63.63,104.95,63.63],[364.77,418.77,104.95,63.63,22.08,47.43],[418.77,426.51,22.08,47.43,22.08,47.43],[426.51,595.74,22.08,47.43,190.12,59.42],[595.74,599.47,190.12,59.42,190.12,59.42],[599.47,794.68,190.12,59.42,84.38,38.71],[794.68,804.02,84.38,38.71,84.38,38.71],[804.02,898.64,84.38,38.71,143.42,141.52],[898.64,906.79,143.42,141.52,143.42,141.52],[906.79,985.36,143.42,141.52,4.69,195.83],[985.36,987.99,4.69,195.83,4.69,195.83],[987.99,1056.65,4.69,195.83,96.89,102.47],[1056.65,1057.09,96.89,102.47,96.89,102.47],[1057.09,1105.94,96.89,102.47,105.4,177.67],[1105.94,1114.64,105.4,177.67,105.4,177.67],[1114.64,1246.33,105.4,177.67,137.99,55.26],[1246.33,1254.45,137.99,55.26,137.99,55.26],[1254.45,1289.9,137.99,55.26,131.01,115.68],[1289.9,1297.79,131.01,115.68,131.01,115.68],[1297.79,1424.55,131.01,115.68,195.07,35.09],[1424.55,1430.79,195.07,35.09,195.07,35.09],[1430.79,1491.74,195.07,35.09,84.58,2.37],[1491.74,1493.67,84.58,2.37,84.58,2.37],[1493.67,1549.25,84.58,2.37,120.83,32.94],[1549.25,1558.85,120.83,32.94,120.83,32.94],[1558.85,1643.45,120.83,32.94,174.0,63.39],[1643.45,1649.3,174.0,63.39,174.0,63.39],[1649.3,1680.95,174.0,63.39,163.87,9.75],[1680.95,1682.69,163.87,9.75,163.87,9.75],[1682.69,1764.18,163.87,9.75,76.11,126.42],[1764.18,1769.02,76.11,126.42,76.11,126.42],[1769.02,1806.61,76.11,126.42,26.07,123.98],[1806.61,1815.0,26.07,123.98,26.07,123.98],[1815.0,1888.91,26.07,123.98,153.55,49.81],[1888.91,1897.08,153.55,49.81,153.55,49.81],[1897.08,1936.21,153.55,49.81,159.43,86.19],[1936.21,1944.05,159.43,86.19,159.43,86.19],[1944.05,2002.84,159.43,86.19,78.1,139.65],[2002.84,2004.98,78.1,139.65,78.1,139.65],[2004.98,2158.99,78.1,139.65,134.39,62.74],[2158.99,2160.76,134.39,62.74,134.39,62.74],[2160.76,2267.96,134.39,62.74,56.89,96.72],[2267.96,2270.27,56.89,96.72,56.89,96.72],[2270.27,2419.62,56.89,96.72,163.47,126.81],[2419.62,2421.76,163.47,126.81,163.47,126.81],[2421.76,2520.0,163.47,126.81,67.79,156.34],[2520.0,2521.99,67.79,156.34,67.79,156.34],[2521.99,2602.52,67.79,156.34,135.21,16.45],[2602.52,2605.67,135.21,16.45,135.21,16.45],[2605.67,2716.89,135.21,16.45,139.84,195.88],[2716.89,2718.2,139.84,195.88,139.84,195.88],[2718.2,2805.25,139.84,195.88,59.64,120.87],[2805.25,2809.19,59.64,120.87,59.64,120.87],[2809.19,2848.04,59.64,120.87,114.35,69.65],[2848.04,2857.33,114.35,69.65,114.35,69.65],[2857.33,2885.51,114.35,69.65,105.82,19.5],[2885.51,2887.0,105.82,19.5,105.82,19.5],[2887.0,2947.82,105.82,19.5,192.94,92.55],[2947.82,2957.07,192.94,92.55,192.94,92.55],[2957.07,3193.69,192.94,92.55,90.87,12.56],[3193.69,3198.77,90.87,12.56,90.87,12.56],[3198.77,3417.21,90.87,12.56,129.02,137.6],[3417.21,3423.79,129.02,137.6,129.02,137.6],[3423.79,3536.96,129.02,137.6,19.78,138.47],[3536.96,3544.35,19.78,138.47,19.78,138.47],[3544.35,3642.89,19.78,138.47,147.24,140.24],[3642.89,3643.51,147.24,140.24,147.24,140.24]],"21":[[0.0,43.74,83.33,154.44,79.38,97.03],[43.74,52.17,79.38,97.03,79.38,97.03],[52.17,83.79,79.38,97.03,114.87,54.73],[83.79,89.79,114.87,54.73,114.87,54.73],[89.79,171.91,114.87,54.73,161.43,109.89],[171.91,175.18,161.43,109.89,161.43,109.89],[175.18,334.6,161.43,109.89,21.32,132.35],[334.6,335.04,21.32,132.35,21.32,132.35],[335.04,369.61,21.32,132.35,70.16,98.9],[369.61,372.62,70.16,98.9,70.16,98.9],[372.62,400.4,70.16,98.9,63.66,136.83],[400.4,400.95,63.66,136.83,63.66,136.83],[400.95,425.61,63.66,136.83,93.66,99.44],[425.61,428.09,93.66,99.44,93.66,99.44],[428.09,469.13,93.66,99.44,140.53,163.94],[469.13,475.44,140.53,163.94,140.53,163.94],[475.44,565.93,140.53,163.94,46.26,24.62],[565.93,573.85,46.26,24.62,46.26,24.62],[573.85,720.33,46.26,24.62,162.88,138.9],[720.33,721.92,162.88,138.9,162.88,138.9],[721.92,742.71,162.88,138.9,147.8,132.58],[742.71,751.97,147.8,132.58,147.8,132.58],[751.97,831.52,147.8,132.58,109.98,65.52],[831.52,839.19,109.98,65.52,109.98,65.52],[839.19,914.91,109.98,65.52,182.11,15.98],[914.91,922.77,182.11,15.98,182.11,15.98],[922.77,1063.18,182.11,15.98,1.12,87.21],[1063.18,1064.61,1.12,87.21,1.12,87.21],[1064.61,1093.2,1.12,87.21,13.96,64.72],[1093.2,1093.77,13.96,64.72,13.96,64.72],[1093.77,1106.63,13.96,64.72,24.54,42.69],[1106.63,1108.26,24.54,42.69,24.54,42.69],[1108.26,1327.33,24.54,42.69,131.54,183.97],[1327.33,1331.24,131.54,183.97,131.54,183.97],[1331.24,1421.09,131.54,183.97,166.82,68.15],[1421.09,1430.91,166.82,68.15,166.82,68.15],[1430.91,1499.54,166.82,68.15,68.07,101.55],[1499.54,1508.21,68.07,101.55,68.07,101.55],[1508.21,1612.98,68.07,101.55,171.51,195.2],[1612.98,1615.76,171.51,195.2,171.51,195.2],[1615.76,1689.75,171.51,195.2,97.5,83.12],[1689.75,1695.15,97.5,83.12,97.5,83.12],[1695.15,1877.8,97.5,83.12,179.35,150.3],[1877.8,1887.51,179.35,150.3,179.35,150.3],[1887.51,2005.71,179.35,150.3,32.29,134.28],[2005.71,2011.42,32.29,134.28,32.29,134.28],[2011.42,2095.27,32.29,134.28,34.48,51.74],[2095.27,2105.25,34.48,51.74,34.48,51.74],[2105.25,2124.38,34.48,51.74,48.61,48.34],[2124.38,2129.96,48.61,48.34,48.61,48.34],[2129.96,2235.95,48.61,48.34,179.0,96.71],[2235.95,2241.72,179.0,96.71,179.0,96.71],[2241.72,2276.91,179.0,96.71,118.23,125.64],[2276.91,2283.05,118.23,125.64,118.23,125.64],[2283.05,2404.91,118.23,125.64,173.98,156.82],[2404.91,2409.75,173.98,156.82,173.98,156.82],[2409.75,2543.78,173.98,156.82,53.32,22.04],[2543.78,2546.73,53.32,22.04,53.32,22.04],[2546.73,2798.4,53.32,22.04,161.95,135.26],[2798.4,2801.65,161.95,135.26,161.95,135.26],[2801.65,2839.81,161.95,135.26,190.16,67.62],[2839.81,2845.83,190.16,67.62,190.16,67.62],[2845.83,2949.58,190.16,67.62,21.23,4.51],[2949.58,2956.4,21.23,4.51,21.23,4.51],[2956.4,3042.9,21.23,4.51,39.65,137.62],[3042.9,3044.48,39.65,137.62,39.65,137.62],[3044.48,3109.27,39.65,137.62,149.44,86.49],[3109.27,3114.76,149.44,86.49,149.44,86.49],[3114.76,3128.51,149.44,86.49,155.97,101.1],[3128.51,3129.11,155.97,101.1,155.97,101.1],[3129.11,3182.6,155.97,101.1,158.53,177.98],[3182.6,3190.02,158.53,177.98,158.53,177.98],[3190.02,3294.52,158.53,177.98,150.61,29.33],[3294.52,3297.69,150.61,29.33,150.61,29.33],[3297.69,3405.52,150.61,29.33,170.98,189.02],[3405.52,3414.89,170.98,189.02,170.98,189.02],[3414.89,3531.49,170.98,189.02,114.47,20.91],[3531.49,3533.85,114.47,20.91,114.47,20.91],[3533.85,3567.45,114.47,20.91,72.95,50.66],[3567.45,3569.01,72.95,50.66,72.95,50.66],[3569.01,3602.07,72.95,50.66,48.28,106.87],[3602.07,3603.39,48.28,106.87,48.28,106.87]],"22":[[0.0,71.79,161.19,79.01,18.04,78.99],[71.79,75.03,18.04,78.99,18.04,78.99],[75.03,94.72,18.04,78.99,0.17,71.93],[94.72,100.03,0.17,71.93,0.17,71.93],[100.03,188.49,0.17,71.93,161.38,136.11],[188.49,196.99,161.38,136.11,161.38,136.11],[196.99,362.03,161.38,136.11,35.72,136.4],[362.03,367.75,35.72,136.4,35.72,136.4],[367.75,507.11,35.72,136.4,37.08,30.51],[507.11,508.39,37.08,30.51,37.08,30.51],[508.39,658.34,37.08,30.51,151.35,199.9],[658.34,664.0,151.35,199.9,151.35,199.9],[664.0,682.19,151.35,199.9,117.08,198.47],[682.19,687.08,117.08,198.47,117.08,198.47],[687.08,947.07,117.08,198.47,43.1,49.41],[947.07,951.34,43.1,49.41,43.1,49.41],[951.34,1124.94,43.1,49.41,85.8,162.85],[1124.94,1130.33,85.8,162.85,85.8,162.85],[1130.33,1188.76,85.8,162.85,180.44,189.54],[1188.76,1193.95,180.44,189.54,180.44,189.54],[1193.95,1316.11,180.44,189.54,162.66,18.78],[1316.11,1323.57,162.66,18.78,162.66,18.78],[1323.57,1415.7,162.66,18.78,193.98,99.15],[1415.7,1422.15,193.98,99.15,193.98,99.15],[1422.15,1560.71,193.98,99.15,166.89,176.0],[1560.71,1568.0,166.89,176.0,166.89,176.0],[1568.0,1699.79,166.89,176.0,53.03,6.18],[1699.79,1704.36,53.03,6.18,53.03,6.18],[1704.36,1825.04,53.03,6.18,166.2,48.35],[1825.04,1829.5,166.2,48.35,166.2,48.35],[1829.5,1866.9,166.2,48.35,193.7,18.28],[1866.9,1867.2,193.7,18.28,193.7,18.28],[1867.2,2036.02,193.7,18.28,142.83,185.37],[2036.02,2041.71,142.83,185.37,142.83,185.37],[2041.71,2208.49,142.83,185.37,122.76,38.24],[2208.49,2213.97,122.76,38.24,122.76,38.24],[2213.97,2277.08,122.76,38.24,144.6,72.15],[2277.08,2279.48,144.6,72.15,144.6,72.15],[2279.48,2362.78,144.6,72.15,32.95,68.32],[2362.78,2363.2,32.95,68.32,32.95,68.32],[2363.2,2399.02,32.95,68.32,95.12,46.7],[2399.02,2406.38,95.12,46.7,95.12,46.7],[2406.38,2442.82,95.12,46.7,166.63,45.4],[2442.82,2447.98,166.63,45.4,166.63,45.4],[2447.98,2483.94,166.63,45.4,95.78,34.56],[2483.94,2485.84,95.78,34.56,95.78,34.56],[2485.84,2605.65,95.78,34.56,44.2,187.79],[2605.65,2608.7,44.2,187.79,44.2,187.79],[2608.7,2611.88,44.2,187.79,48.72,185.19],[2611.88,2612.95,48.72,185.19,48.72,185.19],[2612.95,2760.38,48.72,185.19,127.77,6.87],[2760.38,2760.61,127.77,6.87,127.77,6.87],[2760.61,2854.04,127.77,6.87,34.92,126.95],[2854.04,2862.56,34.92,126.95,34.92,126.95],[2862.56,2997.67,34.92,126.95,85.35,59.54],[2997.67,3002.8,85.35,59.54,85.35,59.54],[3002.8,3104.21,85.35,59.54,103.7,153.05],[3104.21,3107.81,103.7,153.05,103.7,153.05],[3107.81,3173.1,103.7,153.05,86.99,62.82],[3173.1,3179.45,86.99,62.82,86.99,62.82],[3179.45,3202.98,86.99,62.82,61.77,35.78],[3202.98,3203.59,61.77,35.78,61.77,35.78],[3203.59,3243.15,61.77,35.78,95.2,106.54],[3243.15,3249.93,95.2,106.54,95.2,106.54],[3249.93,3313.66,95.2,106.54,123.87,72.75],[3313.66,3313.83,123.87,72.75,123.87,72.75],[3313.83,3380.08,123.87,72.75,123.59,21.31],[3380.08,3384.23,123.59,21.31,123.59,21.31],[3384.23,3529.85,123.59,21.31,54.59,144.77],[3529.85,3530.12,54.59,144.77,54.59,144.77],[3530.12,3537.25,54.59,144.77,59.81,134.15],[3537.25,3538.39,59.81,134.15,59.81,134.15],[3538.39,3650.65,59.81,134.15,183.59,5.52],[3650.65,3660.45,183.59,5.52,183.59,5.52]],"23":[[0.0,187.8,176.17,48.54,48.1,152.39],[187.8,189.32,48.1,152.39,48.1,152.39],[189.32,366.92,48.1,152.39,41.38,0.41],[366.92,373.3,41.38,0.41,41.38,0.41],[373.3,622.14,41.38,0.41,150.22,91.57],[622.14,630.26,150.22,91.57,150.22,91.57],[630.26,739.76,150.22,91.57,105.41,188.0],[739.76,739.95,105.41,188.0,105.41,188.0],[739.95,898.41,105.41,188.0,42.05,7.02],[898.41,902.88,42.05,7.02,42.05,7.02],[902.88,1066.07,42.05,7.02,68.3,173.19],[1066.07,1075.97,68.3,173.19,68.3,173.19],[1075.97,1132.59,68.3,173.19,140.04,107.61],[1132.59,1142.01,140.04,107.61,140.04,107.61],[1142.01,1202.79,140.04,107.61,37.09,145.84],[1202.79,1204.86,37.09,145.84,37.09,145.84],[1204.86,1330.36,37.09,145.84,179.34,85.01],[1330.36,1339.12,179.34,85.01,179.34,85.01],[1339.12,1434.08,179.34,85.01,87.16,48.32],[1434.08,1441.15,87.16,48.32,87.16,48.32],[1441.15,1508.81,87.16,48.32,32.91,116.35],[1508.81,1517.78,32.91,116.35,32.91,116.35],[1517.78,1541.18,32.91,116.35,40.01,84.25],[1541.18,1550.69,40.01,84.25,40.01,84.25],[1550.69,1722.55,40.01,84.25,175.98,184.71],[1722.55,1730.58,175.98,184.71,175.98,184.71],[1730.58,1842.61,175.98,184.71,97.88,48.75],[1842.61,1848.23,97.88,48.75,97.88,48.75],[1848.23,1895.16,97.88,48.75,22.44,90.69],[1895.16,1897.55,22.44,90.69,22.44,90.69],[1897.55,1915.5,22.44,90.69,46.74,85.47],[1915.5,1921.12,46.74,85.47,46.74,85.47],[1921.12,2044.06,46.74,85.47,140.07,35.28],[2044.06,2048.48,140.07,35.28,140.07,35.28],[2048.48,2071.11,140.07,35.28,110.45,46.56],[2071.11,2079.44,110.45,46.56,110.45,46.56],[2079.44,2152.75,110.45,46.56,88.1,181.54],[2152.75,2154.5,88.1,181.54,88.1,181.54],[2154.5,2189.46,88.1,181.54,34.48,149.56],[2189.46,2198.37,34.48,149.56,34.48,149.56],[2198.37,2296.1,34.48,149.56,157.95,149.8],[2296.1,2306.1,157.95,149.8,157.95,149.8],[2306.1,2425.87,157.95,149.8,185.26,7.71],[2425.87,2430.95,185.26,7.71,185.26,7.71],[2430.95,2492.74,185.26,7.71,181.14,99.4],[2492.74,2493.17,181.14,99.4,181.14,99.4],[2493.17,2585.07,181.14,99.4,183.31,160.89],[2585.07,2587.7,183.31,160.89,183.31,160.89],[2587.7,2627.05,183.31,160.89,140.0,113.18],[2627.05,2630.23,140.0,113.18,140.0,113.18],[2630.23,2666.81,140.0,113.18,163.92,71.9],[2666.81,2669.81,163.92,71.9,163.92,71.9],[2669.81,2747.53,163.92,71.9,81.27,102.35],[2747.53,2748.53,81.27,102.35,81.27,102.35],[2748.53,2808.36,81.27,102.35,191.85,83.28],[2808.36,2809.7,191.85,83.28,191.85,83.28],[2809.7,2859.21,191.85,83.28,192.39,10.77],[2859.21,2859.87,192.39,10.77,192.39,10.77],[2859.87,2875.91,192.39,10.77,171.91,24.78],[2875.91,2883.94,171.91,24.78,171.91,24.78],[2883.94,2949.17,171.91,24.78,115.87,130.73],[2949.17,2956.02,115.87,130.73,115.87,130.73],[2956.02,3017.97,115.87,130.73,61.53,49.3],[3017.97,3019.21,61.53,49.3,61.53,49.3],[3019.21,3041.82,61.53,49.3,96.83,54.28],[3041.82,3044.06,96.83,54.28,96.83,54.28],[3044.06,3090.31,96.83,54.28,19.65,90.48],[3090.31,3096.04,19.65,90.48,19.65,90.48],[3096.04,3215.68,19.65,90.48,128.68,79.31],[3215.68,3223.06,128.68,79.31,128.68,79.31],[3223.06,3299.86,128.68,79.31,9.62,88.65],[3299.86,3308.58,9.62,88.65,9.62,88.65],[3308.58,3352.49,9.62,88.65,18.53,26.54],[3352.49,3356.55,18.53,26.54,18.53,26.54],[3356.55,3508.17,18.53,26.54,72.69,194.17],[3508.17,3514.94,72.69,194.17,72.69,194.17],[3514.94,3519.72,72.69,194.17,77.35,188.34],[3519.72,3525.3,77.35,188.34,77.35,188.34],[3525.3,3635.09,77.35,188.34,90.42,57.12],[3635.09,3635.11,90.42,57.12,90.42,57.12]],"30":[[0.0,24.84,146.65,53.78,159.43,7.23],[24.84,25.27,159.43,7.23,159.43,7.23],[25.27,116.58,159.43,7.23,186.94,160.72],[116.58,118.77,186.94,160.72,186.94,160.72],[118.77,236.42,186.94,160.72,38.41,37.32],[236.42,239.35,38.41,37.32,38.41,37.32],[239.35,336.7,38.41,37.32,184.76,97.88],[336.7,339.81,184.76,97.88,184.76,97.88],[339.81,429.33,184.76,97.88,86.74,126.67],[429.33,438.78,86.74,126.67,86.74,126.67],[438.78,521.1,86.74,126.67,125.52,45.16],[521.1,529.99,125.52,45.16,125.52,45.16],[529.99,672.93,125.52,45.16,131.88,184.82],[672.93,674.3,131.88,184.82,131.88,184.82],[674.3,816.72,131.88,184.82,32.42,76.2],[816.72,819.66,32.42,76.2,32.42,76.2],[819.66,973.71,32.42,76.2,93.62,170.25],[973.71,974.74,93.62,170.25,93.62,170.25],[974.74,1070.49,93.62,170.25,9.6,59.41],[1070.49,1078.74,9.6,59.41,9.6,59.41],[1078.74,1149.42,9.6,59.41,133.23,69.99],[1149.42,1151.12,133.23,69.99,133.23,69.99],[1151.12,1184.75,133.23,69.99,106.89,25.89],[1184.75,1190.07,106.89,25.89,106.89,25.89],[1190.07,1283.0,106.89,25.89,91.45,173.66],[1283.0,1292.79,91.45,173.66,91.45,173.66],[1292.79,1388.33,91.45,173.66,179.27,115.66],[1388.33,1391.95,179.27,115.66,179.27,115.66],[1391.95,1477.16,179.27,115.66,25.32,142.17],[1477.16,1484.73,25.32,142.17,25.32,142.17],[1484.73,1682.45,25.32,142.17,127.15,84.69],[1682.45,1691.9,127.15,84.69,127.15,84.69],[1691.9,1791.11,127.15,84.69,9.55,186.12],[1791.11,1798.89,9.55,186.12,9.55,186.12],[1798.89,2055.58,9.55,186.12,128.54,119.67],[2055.58,2056.99,128.54,119.67,128.54,119.67],[2056.99,2141.44,128.54,119.67,3.81,175.53],[2141.44,2149.31,3.81,175.53,3.81,175.53],[2149.31,2216.98,3.81,175.53,16.15,64.92],[2216.98,2222.33,16.15,64.92,16.15,64.92],[2222.33,2321.38,16.15,64.92,159.04,164.79],[2321.38,2330.32,159.04,164.79,159.04,164.79],[2330.32,2381.69,159.04,164.79,113.18,106.79],[2381.69,2386.37,113.18,106.79,113.18,106.79],[2386.37,2501.64,113.18,106.79,193.07,82.5],[2501.64,2509.3,193.07,82.5,193.07,82.5],[2509.3,2544.91,193.07,82.5,188.84,123.36],[2544.91,2545.6,188.84,123.36,188.84,123.36],[2545.6,2597.13,188.84,123.36,126.07,164.94],[2597.13,2602.84,126.07,164.94,126.07,164.94],[2602.84,2684.99,126.07,164.94,177.65,124.3],[2684.99,2687.73,177.65,124.3,177.65,124.3],[2687.73,2728.99,177.65,124.3,119.55,140.81],[2728.99,2732.85,119.55,140.81,119.55,140.81],[2732.85,2875.64,119.55,140.81,0.79,34.39],[2875.64,2880.33,0.79,34.39,0.79,34.39],[2880.33,3074.97,0.79,34.39,124.8,82.81],[3074.97,3081.5,124.8,82.81,124.8,82.81],[3081.5,3121.75,124.8,82.81,144.02,51.23],[3121.75,3130.67,144.02,51.23,144.02,51.23],[3130.67,3214.98,144.02,51.23,63.73,113.24],[3214.98,3219.73,63.73,113.24,63.73,113.24],[3219.73,3318.51,63.73,113.24,192.25,139.64],[3318.51,3319.89,192.25,139.64,192.25,139.64],[3319.89,3372.96,192.25,139.64,154.45,178.22],[3372.96,3374.79,154.45,178.22,154.45,178.22],[3374.79,3549.01,154.45,178.22,161.97,3.74],[3549.01,3556.46,161.97,3.74,161.97,3.74],[3556.46,3643.64,161.97,3.74,16.84,4.14],[3643.64,3652.87,16.84,4.14,16.84,4.14]]};
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
