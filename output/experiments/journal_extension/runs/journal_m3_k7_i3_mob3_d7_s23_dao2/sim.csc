<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>journal_m3_k7_i3_mob3_d7_s23_dao2</title>
    <randomseed>23</randomseed>
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
      <identifier>v_root_d7</identifier>
      <description>v_root_d7</description>
      <source>/home/user/project/build/variants/v_root_d7/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_root_d7.cooja</commands>
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
      <identifier>v_cli_d7_m0</identifier>
      <description>v_cli_d7_m0</description>
      <source>/home/user/project/build/variants/v_cli_d7_m0/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_cli_d7_m0.cooja</commands>
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
          <pos x="116.99" y="185.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>2</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="48.26" y="22.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>7</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="11.76" y="106.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>9</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="140.93" y="152.89" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>11</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="19.45" y="61.23" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>12</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="105.38" y="131.42" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>18</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="23.38" y="68.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>21</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="162.64" y="42.52" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>22</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="127.00" y="159.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>23</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.65" y="154.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>24</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="190.68" y="9.05" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>25</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="10.42" y="133.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>26</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="109.91" y="195.86" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>29</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="86.57" y="110.25" />
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
          <pos x="80.89" y="146.99" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>3</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="94.62" y="46.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>6</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="167.51" y="27.95" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>8</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="154.53" y="168.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>13</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="18.98" y="169.89" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>14</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="69.66" y="157.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>16</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="30.94" y="23.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>20</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_cli_d7_m1</identifier>
      <description>v_cli_d7_m1</description>
      <source>/home/user/project/build/variants/v_cli_d7_m1/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_cli_d7_m1.cooja</commands>
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
          <pos x="52.88" y="127.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>4</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="155.81" y="81.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>5</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="111.67" y="83.62" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>10</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="13.26" y="196.19" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>15</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.32" y="177.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>17</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="197.99" y="41.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>19</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="127.03" y="102.42" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>27</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="179.67" y="170.35" />
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
var S = {"4":[[0.0,40.33,52.88,127.47,3.72,186.11],[40.33,46.96,3.72,186.11,3.72,186.11],[46.96,89.69,3.72,186.11,52.17,190.12],[89.69,92.96,52.17,190.12,52.17,190.12],[92.96,186.89,52.17,190.12,134.52,52.66],[186.89,194.15,134.52,52.66,134.52,52.66],[194.15,250.78,134.52,52.66,55.71,121.58],[250.78,258.38,55.71,121.58,55.71,121.58],[258.38,321.16,55.71,121.58,138.18,73.93],[321.16,323.98,138.18,73.93,138.18,73.93],[323.98,395.89,138.18,73.93,98.33,62.38],[395.89,401.96,98.33,62.38,98.33,62.38],[401.96,461.45,98.33,62.38,160.42,23.81],[461.45,462.18,160.42,23.81,160.42,23.81],[462.18,601.31,160.42,23.81,17.79,120.67],[601.31,604.82,17.79,120.67,17.79,120.67],[604.82,682.11,17.79,120.67,101.9,19.08],[682.11,691.41,101.9,19.08,101.9,19.08],[691.41,906.8,101.9,19.08,11.04,130.87],[906.8,913.25,11.04,130.87,11.04,130.87],[913.25,1056.2,11.04,130.87,198.34,15.68],[1056.2,1061.79,198.34,15.68,198.34,15.68],[1061.79,1182.86,198.34,15.68,188.96,176.04],[1182.86,1187.47,188.96,176.04,188.96,176.04],[1187.47,1202.46,188.96,176.04,197.25,159.83],[1202.46,1206.29,197.25,159.83,197.25,159.83],[1206.29,1291.1,197.25,159.83,96.98,173.54],[1291.1,1297.45,96.98,173.54,96.98,173.54],[1297.45,1362.01,96.98,173.54,109.91,99.08],[1362.01,1369.33,109.91,99.08,109.91,99.08],[1369.33,1501.01,109.91,99.08,179.8,197.25],[1501.01,1503.35,179.8,197.25,179.8,197.25],[1503.35,1521.48,179.8,197.25,163.48,189.66],[1521.48,1523.66,163.48,189.66,163.48,189.66],[1523.66,1599.45,163.48,189.66,180.9,79.78],[1599.45,1607.86,180.9,79.78,180.9,79.78],[1607.86,1760.18,180.9,79.78,11.68,38.96],[1760.18,1764.12,11.68,38.96,11.68,38.96],[1764.12,1856.25,11.68,38.96,51.32,170.89],[1856.25,1860.95,51.32,170.89,51.32,170.89],[1860.95,1878.52,51.32,170.89,30.98,160.85],[1878.52,1885.87,30.98,160.85,30.98,160.85],[1885.87,1965.61,30.98,160.85,160.82,173.34],[1965.61,1973.62,160.82,173.34,160.82,173.34],[1973.62,2127.34,160.82,173.34,158.66,62.22],[2127.34,2128.67,158.66,62.22,158.66,62.22],[2128.67,2167.1,158.66,62.22,101.4,61.56],[2167.1,2173.39,101.4,61.56,101.4,61.56],[2173.39,2254.47,101.4,61.56,22.89,126.41],[2254.47,2264.41,22.89,126.41,22.89,126.41],[2264.41,2335.49,22.89,126.41,138.91,149.58],[2335.49,2339.14,138.91,149.58,138.91,149.58],[2339.14,2390.12,138.91,149.58,123.46,52.93],[2390.12,2395.62,123.46,52.93,123.46,52.93],[2395.62,2449.16,123.46,52.93,199.37,109.45],[2449.16,2454.9,199.37,109.45,199.37,109.45],[2454.9,2478.05,199.37,109.45,174.15,76.22],[2478.05,2481.06,174.15,76.22,174.15,76.22],[2481.06,2510.01,174.15,76.22,121.59,67.89],[2510.01,2510.2,121.59,67.89,121.59,67.89],[2510.2,2578.39,121.59,67.89,191.42,163.61],[2578.39,2582.85,191.42,163.61,191.42,163.61],[2582.85,2863.75,191.42,163.61,90.84,42.47],[2863.75,2872.73,90.84,42.47,90.84,42.47],[2872.73,2948.53,90.84,42.47,177.76,77.22],[2948.53,2954.66,177.76,77.22,177.76,77.22],[2954.66,3025.44,177.76,77.22,51.68,38.11],[3025.44,3031.54,51.68,38.11,51.68,38.11],[3031.54,3176.35,51.68,38.11,122.55,135.76],[3176.35,3183.7,122.55,135.76,122.55,135.76],[3183.7,3278.55,122.55,135.76,47.04,7.65],[3278.55,3285.95,47.04,7.65,47.04,7.65],[3285.95,3332.64,47.04,7.65,114.79,71.66],[3332.64,3333.9,114.79,71.66,114.79,71.66],[3333.9,3415.6,114.79,71.66,160.63,66.68],[3415.6,3421.43,160.63,66.68,160.63,66.68],[3421.43,3520.83,160.63,66.68,194.23,142.08],[3520.83,3526.58,194.23,142.08,194.23,142.08],[3526.58,3628.04,194.23,142.08,58.44,111.0],[3628.04,3634.7,58.44,111.0,58.44,111.0]],"5":[[0.0,77.76,155.81,81.26,65.4,72.97],[77.76,80.73,65.4,72.97,65.4,72.97],[80.73,123.01,65.4,72.97,56.57,97.76],[123.01,123.94,56.57,97.76,56.57,97.76],[123.94,189.83,56.57,97.76,161.88,166.86],[189.83,198.71,161.88,166.86,161.88,166.86],[198.71,236.53,161.88,166.86,189.55,119.19],[236.53,244.37,189.55,119.19,189.55,119.19],[244.37,343.91,189.55,119.19,36.5,72.99],[343.91,344.06,36.5,72.99,36.5,72.99],[344.06,380.15,36.5,72.99,65.98,78.88],[380.15,381.69,65.98,78.88,65.98,78.88],[381.69,413.14,65.98,78.88,14.39,102.96],[413.14,419.29,14.39,102.96,14.39,102.96],[419.29,541.78,14.39,102.96,170.51,102.6],[541.78,549.83,170.51,102.6,170.51,102.6],[549.83,653.77,170.51,102.6,0.3,63.94],[653.77,663.64,0.3,63.94,0.3,63.94],[663.64,819.93,0.3,63.94,157.67,153.2],[819.93,822.52,157.67,153.2,157.67,153.2],[822.52,847.71,157.67,153.2,181.32,182.81],[847.71,849.46,181.32,182.81,181.32,182.81],[849.46,887.03,181.32,182.81,175.07,147.5],[887.03,895.59,175.07,147.5,175.07,147.5],[895.59,970.43,175.07,147.5,44.6,91.33],[970.43,974.97,44.6,91.33,44.6,91.33],[974.97,1055.58,44.6,91.33,157.01,19.78],[1055.58,1061.45,157.01,19.78,157.01,19.78],[1061.45,1202.2,157.01,19.78,16.59,35.38],[1202.2,1202.98,16.59,35.38,16.59,35.38],[1202.98,1222.6,16.59,35.38,0.88,66.14],[1222.6,1224.11,0.88,66.14,0.88,66.14],[1224.11,1279.35,0.88,66.14,57.42,128.24],[1279.35,1285.52,57.42,128.24,57.42,128.24],[1285.52,1375.38,57.42,128.24,177.59,46.33],[1375.38,1379.56,177.59,46.33,177.59,46.33],[1379.56,1646.98,177.59,46.33,24.41,107.74],[1646.98,1649.38,24.41,107.74,24.41,107.74],[1649.38,1727.25,24.41,107.74,79.32,94.18],[1727.25,1735.18,79.32,94.18,79.32,94.18],[1735.18,1875.43,79.32,94.18,167.85,118.33],[1875.43,1882.25,167.85,118.33,167.85,118.33],[1882.25,1900.87,167.85,118.33,185.37,148.85],[1900.87,1906.25,185.37,148.85,185.37,148.85],[1906.25,1990.78,185.37,148.85,118.66,11.87],[1990.78,1997.53,118.66,11.87,118.66,11.87],[1997.53,2110.43,118.66,11.87,190.91,186.93],[2110.43,2116.77,190.91,186.93,190.91,186.93],[2116.77,2154.85,190.91,186.93,117.24,197.34],[2154.85,2164.64,117.24,197.34,117.24,197.34],[2164.64,2419.81,117.24,197.34,42.13,63.27],[2419.81,2421.7,42.13,63.27,42.13,63.27],[2421.7,2438.22,42.13,63.27,64.17,48.73],[2438.22,2439.98,64.17,48.73,64.17,48.73],[2439.98,2546.78,64.17,48.73,164.01,123.63],[2546.78,2548.44,164.01,123.63,164.01,123.63],[2548.44,2652.44,164.01,123.63,8.55,56.62],[2652.44,2659.14,8.55,56.62,8.55,56.62],[2659.14,2684.01,8.55,56.62,40.08,31.5],[2684.01,2687.45,40.08,31.5,40.08,31.5],[2687.45,2721.57,40.08,31.5,14.94,41.57],[2721.57,2731.41,14.94,41.57,14.94,41.57],[2731.41,2814.41,14.94,41.57,74.86,20.35],[2814.41,2816.43,74.86,20.35,74.86,20.35],[2816.43,2950.78,74.86,20.35,101.37,151.69],[2950.78,2958.36,101.37,151.69,101.37,151.69],[2958.36,2994.85,101.37,151.69,136.45,88.78],[2994.85,2996.34,136.45,88.78,136.45,88.78],[2996.34,3112.93,136.45,88.78,72.75,64.28],[3112.93,3116.75,72.75,64.28,72.75,64.28],[3116.75,3161.13,72.75,64.28,58.95,93.95],[3161.13,3165.0,58.95,93.95,58.95,93.95],[3165.0,3231.9,58.95,93.95,95.47,194.55],[3231.9,3231.99,95.47,194.55,95.47,194.55],[3231.99,3321.47,95.47,194.55,139.29,44.63],[3321.47,3329.56,139.29,44.63,139.29,44.63],[3329.56,3519.76,139.29,44.63,33.07,172.43],[3519.76,3527.06,33.07,172.43,33.07,172.43],[3527.06,3624.8,33.07,172.43,50.12,44.02],[3624.8,3630.09,50.12,44.02,50.12,44.02]],"10":[[0.0,59.72,111.67,83.62,6.08,48.03],[59.72,67.75,6.08,48.03,6.08,48.03],[67.75,279.39,6.08,48.03,192.76,95.44],[279.39,283.59,192.76,95.44,192.76,95.44],[283.59,315.55,192.76,95.44,132.42,82.06],[315.55,315.74,132.42,82.06,132.42,82.06],[315.74,329.42,132.42,82.06,154.4,97.26],[329.42,334.9,154.4,97.26,154.4,97.26],[334.9,398.55,154.4,97.26,72.28,1.02],[398.55,403.77,72.28,1.02,72.28,1.02],[403.77,659.44,72.28,1.02,166.31,131.98],[659.44,664.24,166.31,131.98,166.31,131.98],[664.24,745.74,166.31,131.98,61.19,163.5],[745.74,750.04,61.19,163.5,61.19,163.5],[750.04,809.62,61.19,163.5,86.24,144.87],[809.62,814.3,86.24,144.87,86.24,144.87],[814.3,883.36,86.24,144.87,17.69,140.24],[883.36,888.62,17.69,140.24,17.69,140.24],[888.62,1024.62,17.69,140.24,41.85,60.65],[1024.62,1029.02,41.85,60.65,41.85,60.65],[1029.02,1125.58,41.85,60.65,187.07,123.68],[1125.58,1128.92,187.07,123.68,187.07,123.68],[1128.92,1187.59,187.07,123.68,177.4,197.17],[1187.59,1196.62,177.4,197.17,177.4,197.17],[1196.62,1237.3,177.4,197.17,167.61,141.13],[1237.3,1238.05,167.61,141.13,167.61,141.13],[1238.05,1248.08,167.61,141.13,177.07,125.39],[1248.08,1248.9,177.07,125.39,177.07,125.39],[1248.9,1261.56,177.07,125.39,182.21,119.22],[1261.56,1264.35,182.21,119.22,182.21,119.22],[1264.35,1291.19,182.21,119.22,170.27,150.75],[1291.19,1293.91,170.27,150.75,170.27,150.75],[1293.91,1473.81,170.27,150.75,85.27,102.51],[1473.81,1477.94,85.27,102.51,85.27,102.51],[1477.94,1599.34,85.27,102.51,87.99,27.87],[1599.34,1603.71,87.99,27.87,87.99,27.87],[1603.71,1766.24,87.99,27.87,104.45,110.51],[1766.24,1772.65,104.45,110.51,104.45,110.51],[1772.65,1854.9,104.45,110.51,7.42,50.23],[1854.9,1864.8,7.42,50.23,7.42,50.23],[1864.8,1909.27,7.42,50.23,40.78,58.69],[1909.27,1910.53,40.78,58.69,40.78,58.69],[1910.53,2072.05,40.78,58.69,189.36,144.89],[2072.05,2080.18,189.36,144.89,189.36,144.89],[2080.18,2121.65,189.36,144.89,178.81,174.95],[2121.65,2122.0,178.81,174.95,178.81,174.95],[2122.0,2188.01,178.81,174.95,75.69,169.42],[2188.01,2192.86,75.69,169.42,75.69,169.42],[2192.86,2211.93,75.69,169.42,62.11,194.86],[2211.93,2215.28,62.11,194.86,62.11,194.86],[2215.28,2351.27,62.11,194.86,163.94,125.33],[2351.27,2352.58,163.94,125.33,163.94,125.33],[2352.58,2396.69,163.94,125.33,97.29,70.86],[2396.69,2399.45,97.29,70.86,97.29,70.86],[2399.45,2424.7,97.29,70.86,88.63,89.91],[2424.7,2431.15,88.63,89.91,88.63,89.91],[2431.15,2480.05,88.63,89.91,153.32,20.91],[2480.05,2481.24,153.32,20.91,153.32,20.91],[2481.24,2522.92,153.32,20.91,120.91,5.15],[2522.92,2527.18,120.91,5.15,120.91,5.15],[2527.18,2680.92,120.91,5.15,56.69,100.79],[2680.92,2685.05,56.69,100.79,56.69,100.79],[2685.05,2711.28,56.69,100.79,37.52,69.29],[2711.28,2712.49,37.52,69.29,37.52,69.29],[2712.49,2789.61,37.52,69.29,165.42,22.27],[2789.61,2793.94,165.42,22.27,165.42,22.27],[2793.94,3123.33,165.42,22.27,1.33,169.63],[3123.33,3129.83,1.33,169.63,1.33,169.63],[3129.83,3250.71,1.33,169.63,61.83,23.25],[3250.71,3258.01,61.83,23.25,61.83,23.25],[3258.01,3386.18,61.83,23.25,35.41,161.41],[3386.18,3394.37,35.41,161.41,35.41,161.41],[3394.37,3454.02,35.41,161.41,90.49,65.98],[3454.02,3455.19,90.49,65.98,90.49,65.98],[3455.19,3512.7,90.49,65.98,86.99,178.53],[3512.7,3517.62,86.99,178.53,86.99,178.53],[3517.62,3651.38,86.99,178.53,172.85,70.02],[3651.38,3660.72,172.85,70.02,172.85,70.02]],"15":[[0.0,32.57,13.26,196.19,1.42,153.82],[32.57,37.19,1.42,153.82,1.42,153.82],[37.19,87.7,1.42,153.82,56.89,84.46],[87.7,87.8,56.89,84.46,56.89,84.46],[87.8,99.5,56.89,84.46,38.18,87.59],[99.5,102.53,38.18,87.59,38.18,87.59],[102.53,166.64,38.18,87.59,156.17,86.38],[166.64,171.07,156.17,86.38,156.17,86.38],[171.07,271.36,156.17,86.38,53.25,96.03],[271.36,276.8,53.25,96.03,53.25,96.03],[276.8,321.83,53.25,96.03,119.83,92.1],[321.83,324.58,119.83,92.1,119.83,92.1],[324.58,421.11,119.83,92.1,3.83,92.14],[421.11,421.87,3.83,92.14,3.83,92.14],[421.87,663.93,3.83,92.14,82.63,191.25],[663.93,671.45,82.63,191.25,82.63,191.25],[671.45,823.76,82.63,191.25,20.91,26.34],[823.76,832.94,20.91,26.34,20.91,26.34],[832.94,934.85,20.91,26.34,146.43,58.46],[934.85,940.06,146.43,58.46,146.43,58.46],[940.06,1015.55,146.43,58.46,121.29,134.68],[1015.55,1017.19,121.29,134.68,121.29,134.68],[1017.19,1105.46,121.29,134.68,37.75,81.88],[1105.46,1108.13,37.75,81.88,37.75,81.88],[1108.13,1331.27,37.75,81.88,195.08,25.51],[1331.27,1334.26,195.08,25.51,195.08,25.51],[1334.26,1514.65,195.08,25.51,95.55,183.4],[1514.65,1520.13,95.55,183.4,95.55,183.4],[1520.13,1557.28,95.55,183.4,71.37,183.4],[1557.28,1563.08,71.37,183.4,71.37,183.4],[1563.08,1616.29,71.37,183.4,39.66,194.96],[1616.29,1619.19,39.66,194.96,39.66,194.96],[1619.19,1739.1,39.66,194.96,102.75,90.39],[1739.1,1739.17,102.75,90.39,102.75,90.39],[1739.17,1792.54,102.75,90.39,137.8,142.54],[1792.54,1793.9,137.8,142.54,137.8,142.54],[1793.9,1833.07,137.8,142.54,125.54,105.82],[1833.07,1842.31,125.54,105.82,125.54,105.82],[1842.31,1935.1,125.54,105.82,171.97,2.56],[1935.1,1935.87,171.97,2.56,171.97,2.56],[1935.87,1963.09,171.97,2.56,171.78,23.53],[1963.09,1965.88,171.78,23.53,171.78,23.53],[1965.88,2029.84,171.78,23.53,83.75,45.36],[2029.84,2039.39,83.75,45.36,83.75,45.36],[2039.39,2147.18,83.75,45.36,61.68,107.72],[2147.18,2152.26,61.68,107.72,61.68,107.72],[2152.26,2172.05,61.68,107.72,97.68,123.68],[2172.05,2172.15,97.68,123.68,97.68,123.68],[2172.15,2192.65,97.68,123.68,112.07,102.76],[2192.65,2194.16,112.07,102.76,112.07,102.76],[2194.16,2243.95,112.07,102.76,138.52,79.83],[2243.95,2247.74,138.52,79.83,138.52,79.83],[2247.74,2295.0,138.52,79.83,191.24,116.25],[2295.0,2296.63,191.24,116.25,191.24,116.25],[2296.63,2463.19,191.24,116.25,51.74,49.97],[2463.19,2463.61,51.74,49.97,51.74,49.97],[2463.61,2488.92,51.74,49.97,42.03,81.94],[2488.92,2490.63,42.03,81.94,42.03,81.94],[2490.63,2616.0,42.03,81.94,85.73,192.91],[2616.0,2623.89,85.73,192.91,85.73,192.91],[2623.89,2642.42,85.73,192.91,57.13,172.11],[2642.42,2647.51,57.13,172.11,57.13,172.11],[2647.51,2706.09,57.13,172.11,81.31,59.57],[2706.09,2707.79,81.31,59.57,81.31,59.57],[2707.79,2945.14,81.31,59.57,194.63,139.2],[2945.14,2954.61,194.63,139.2,194.63,139.2],[2954.61,3064.23,194.63,139.2,60.82,191.29],[3064.23,3067.04,60.82,191.29,60.82,191.29],[3067.04,3163.05,60.82,191.29,73.68,0.31],[3163.05,3172.33,73.68,0.31,73.68,0.31],[3172.33,3245.92,73.68,0.31,164.61,79.53],[3245.92,3248.17,164.61,79.53,164.61,79.53],[3248.17,3283.62,164.61,79.53,166.07,143.47],[3283.62,3290.8,166.07,143.47,166.07,143.47],[3290.8,3315.62,166.07,143.47,159.31,110.71],[3315.62,3319.71,159.31,110.71,159.31,110.71],[3319.71,3519.61,159.31,110.71,17.72,41.95],[3519.61,3523.49,17.72,41.95,17.72,41.95],[3523.49,3733.77,17.72,41.95,102.68,135.93],[3733.77,3738.13,102.68,135.93,102.68,135.93]],"17":[[0.0,275.22,68.32,177.08,177.37,11.2],[275.22,282.71,177.37,11.2,177.37,11.2],[282.71,352.04,177.37,11.2,91.5,60.78],[352.04,355.02,91.5,60.78,91.5,60.78],[355.02,415.75,91.5,60.78,168.64,60.69],[415.75,417.8,168.64,60.69,168.64,60.69],[417.8,439.46,168.64,60.69,190.54,91.29],[439.46,448.97,190.54,91.29,190.54,91.29],[448.97,593.69,190.54,91.29,78.24,127.07],[593.69,600.12,78.24,127.07,78.24,127.07],[600.12,617.13,78.24,127.07,94.45,101.68],[617.13,621.56,94.45,101.68,94.45,101.68],[621.56,736.54,94.45,101.68,189.66,192.35],[736.54,743.11,189.66,192.35,189.66,192.35],[743.11,992.57,189.66,192.35,97.59,32.07],[992.57,994.68,97.59,32.07,97.59,32.07],[994.68,1112.93,97.59,32.07,139.14,98.47],[1112.93,1114.51,139.14,98.47,139.14,98.47],[1114.51,1199.05,139.14,98.47,198.78,68.57],[1199.05,1201.89,198.78,68.57,198.78,68.57],[1201.89,1422.08,198.78,68.57,70.42,115.61],[1422.08,1426.5,70.42,115.61,70.42,115.61],[1426.5,1459.12,70.42,115.61,16.17,142.32],[1459.12,1459.99,16.17,142.32,16.17,142.32],[1459.99,1482.33,16.17,142.32,38.79,119.44],[1482.33,1484.2,38.79,119.44,38.79,119.44],[1484.2,1622.08,38.79,119.44,88.17,11.82],[1622.08,1626.5,88.17,11.82,88.17,11.82],[1626.5,1761.19,88.17,11.82,183.45,41.98],[1761.19,1767.14,183.45,41.98,183.45,41.98],[1767.14,1878.89,183.45,41.98,144.57,190.58],[1878.89,1881.18,144.57,190.58,144.57,190.58],[1881.18,1911.82,144.57,190.58,101.31,154.97],[1911.82,1913.49,101.31,154.97,101.31,154.97],[1913.49,1945.49,101.31,154.97,59.65,130.22],[1945.49,1945.72,59.65,130.22,59.65,130.22],[1945.72,2159.68,59.65,130.22,186.19,125.74],[2159.68,2159.84,186.19,125.74,186.19,125.74],[2159.84,2174.5,186.19,125.74,189.33,148.12],[2174.5,2179.77,189.33,148.12,189.33,148.12],[2179.77,2200.09,189.33,148.12,158.86,160.24],[2200.09,2204.59,158.86,160.24,158.86,160.24],[2204.59,2282.52,158.86,160.24,48.82,56.81],[2282.52,2283.67,48.82,56.81,48.82,56.81],[2283.67,2321.09,48.82,56.81,76.84,110.7],[2321.09,2324.85,76.84,110.7,76.84,110.7],[2324.85,2360.14,76.84,110.7,52.67,45.92],[2360.14,2364.69,52.67,45.92,52.67,45.92],[2364.69,2456.86,52.67,45.92,192.79,135.98],[2456.86,2462.63,192.79,135.98,192.79,135.98],[2462.63,2502.3,192.79,135.98,139.01,99.2],[2502.3,2503.57,139.01,99.2,139.01,99.2],[2503.57,2675.89,139.01,99.2,3.91,198.44],[2675.89,2682.04,3.91,198.44,3.91,198.44],[2682.04,2813.98,3.91,198.44,22.01,17.96],[2813.98,2820.11,22.01,17.96,22.01,17.96],[2820.11,2949.16,22.01,17.96,55.58,199.78],[2949.16,2949.4,55.58,199.78,55.58,199.78],[2949.4,3043.29,55.58,199.78,75.29,37.77],[3043.29,3048.72,75.29,37.77,75.29,37.77],[3048.72,3108.47,75.29,37.77,124.99,141.52],[3108.47,3115.1,124.99,141.52,124.99,141.52],[3115.1,3154.22,124.99,141.52,68.27,139.22],[3154.22,3156.5,68.27,139.22,68.27,139.22],[3156.5,3281.05,68.27,139.22,172.97,68.48],[3281.05,3286.4,172.97,68.48,172.97,68.48],[3286.4,3392.91,172.97,68.48,112.03,158.53],[3392.91,3402.39,112.03,158.53,112.03,158.53],[3402.39,3576.04,112.03,158.53,130.95,12.22],[3576.04,3576.5,130.95,12.22,130.95,12.22],[3576.5,3716.49,130.95,12.22,147.42,199.02],[3716.49,3718.96,147.42,199.02,147.42,199.02]],"19":[[0.0,238.6,197.99,41.17,31.17,81.04],[238.6,242.9,31.17,81.04,31.17,81.04],[242.9,305.97,31.17,81.04,104.79,143.4],[305.97,315.53,104.79,143.4,104.79,143.4],[315.53,382.12,104.79,143.4,28.05,50.66],[382.12,388.78,28.05,50.66,28.05,50.66],[388.78,494.31,28.05,50.66,66.95,86.75],[494.31,499.91,66.95,86.75,66.95,86.75],[499.91,711.11,66.95,86.75,160.39,148.63],[711.11,714.84,160.39,148.63,160.39,148.63],[714.84,806.83,160.39,148.63,12.4,187.89],[806.83,811.71,12.4,187.89,12.4,187.89],[811.71,926.08,12.4,187.89,199.42,84.69],[926.08,934.8,199.42,84.69,199.42,84.69],[934.8,965.36,199.42,84.69,142.51,70.2],[965.36,972.81,142.51,70.2,142.51,70.2],[972.81,1035.11,142.51,70.2,21.57,47.07],[1035.11,1043.73,21.57,47.07,21.57,47.07],[1043.73,1128.32,21.57,47.07,9.72,147.42],[1128.32,1133.62,9.72,147.42,9.72,147.42],[1133.62,1163.12,9.72,147.42,3.16,89.11],[1163.12,1169.65,3.16,89.11,3.16,89.11],[1169.65,1396.3,3.16,89.11,172.32,128.47],[1396.3,1402.44,172.32,128.47,172.32,128.47],[1402.44,1546.98,172.32,128.47,10.69,166.89],[1546.98,1548.2,10.69,166.89,10.69,166.89],[1548.2,1565.03,10.69,166.89,0.57,194.41],[1565.03,1574.9,0.57,194.41,0.57,194.41],[1574.9,1692.01,0.57,194.41,44.14,52.05],[1692.01,1696.09,44.14,52.05,44.14,52.05],[1696.09,1820.87,44.14,52.05,144.56,22.4],[1820.87,1829.64,144.56,22.4,144.56,22.4],[1829.64,1883.12,144.56,22.4,91.45,96.33],[1883.12,1892.84,91.45,96.33,91.45,96.33],[1892.84,1931.4,91.45,96.33,30.66,72.55],[1931.4,1932.84,30.66,72.55,30.66,72.55],[1932.84,1959.16,30.66,72.55,33.63,94.91],[1959.16,1960.43,33.63,94.91,33.63,94.91],[1960.43,2039.07,33.63,94.91,105.46,22.82],[2039.07,2047.86,105.46,22.82,105.46,22.82],[2047.86,2095.46,105.46,22.82,14.35,41.32],[2095.46,2104.95,14.35,41.32,14.35,41.32],[2104.95,2264.04,14.35,41.32,155.39,142.99],[2264.04,2273.32,155.39,142.99,155.39,142.99],[2273.32,2376.34,155.39,142.99,108.28,198.38],[2376.34,2383.95,108.28,198.38,108.28,198.38],[2383.95,2598.99,108.28,198.38,162.67,31.92],[2598.99,2607.36,162.67,31.92,162.67,31.92],[2607.36,2677.63,162.67,31.92,103.32,84.03],[2677.63,2686.34,103.32,84.03,103.32,84.03],[2686.34,2779.26,103.32,84.03,78.97,178.71],[2779.26,2784.9,78.97,178.71,78.97,178.71],[2784.9,3051.0,78.97,178.71,8.96,40.82],[3051.0,3057.06,8.96,40.82,8.96,40.82],[3057.06,3124.24,8.96,40.82,83.98,117.76],[3124.24,3131.7,83.98,117.76,83.98,117.76],[3131.7,3249.53,83.98,117.76,78.99,194.6],[3249.53,3253.56,78.99,194.6,78.99,194.6],[3253.56,3329.6,78.99,194.6,182.23,103.45],[3329.6,3331.46,182.23,103.45,182.23,103.45],[3331.46,3391.35,182.23,103.45,87.02,47.64],[3391.35,3399.56,87.02,47.64,87.02,47.64],[3399.56,3536.07,87.02,47.64,170.76,151.82],[3536.07,3538.0,170.76,151.82,170.76,151.82],[3538.0,3738.33,170.76,151.82,16.15,122.48],[3738.33,3738.97,16.15,122.48,16.15,122.48]],"20":[[0.0,72.4,30.94,23.22,135.98,22.63],[72.4,79.39,135.98,22.63,135.98,22.63],[79.39,158.49,135.98,22.63,170.96,156.87],[158.49,160.91,170.96,156.87,170.96,156.87],[160.91,333.34,170.96,156.87,171.88,14.25],[333.34,338.66,171.88,14.25,171.88,14.25],[338.66,540.64,171.88,14.25,197.45,178.43],[540.64,548.62,197.45,178.43,197.45,178.43],[548.62,651.8,197.45,178.43,8.28,119.15],[651.8,654.32,8.28,119.15,8.28,119.15],[654.32,678.0,8.28,119.15,44.34,129.33],[678.0,683.18,44.34,129.33,44.34,129.33],[683.18,757.18,44.34,129.33,147.11,127.39],[757.18,758.91,147.11,127.39,147.11,127.39],[758.91,917.68,147.11,127.39,152.73,6.76],[917.68,925.81,152.73,6.76,152.73,6.76],[925.81,1303.59,152.73,6.76,6.26,138.09],[1303.59,1308.83,6.26,138.09,6.26,138.09],[1308.83,1426.37,6.26,138.09,182.94,154.42],[1426.37,1435.1,182.94,154.42,182.94,154.42],[1435.1,1563.32,182.94,154.42,111.63,120.09],[1563.32,1572.86,111.63,120.09,111.63,120.09],[1572.86,1705.77,111.63,120.09,185.84,46.84],[1705.77,1711.52,185.84,46.84,185.84,46.84],[1711.52,1793.44,185.84,46.84,175.67,167.27],[1793.44,1794.38,175.67,167.27,175.67,167.27],[1794.38,1937.59,175.67,167.27,78.12,198.01],[1937.59,1947.18,78.12,198.01,78.12,198.01],[1947.18,2200.74,78.12,198.01,178.98,29.97],[2200.74,2206.18,178.98,29.97,178.98,29.97],[2206.18,2266.79,178.98,29.97,187.29,116.35],[2266.79,2269.64,187.29,116.35,187.29,116.35],[2269.64,2350.18,187.29,116.35,199.52,2.58],[2350.18,2357.68,199.52,2.58,199.52,2.58],[2357.68,2507.08,199.52,2.58,47.86,116.97],[2507.08,2514.86,47.86,116.97,47.86,116.97],[2514.86,2560.47,47.86,116.97,83.76,144.1],[2560.47,2565.24,83.76,144.1,83.76,144.1],[2565.24,2684.22,83.76,144.1,22.52,27.84],[2684.22,2691.27,22.52,27.84,22.52,27.84],[2691.27,2891.34,22.52,27.84,156.12,128.65],[2891.34,2899.77,156.12,128.65,156.12,128.65],[2899.77,2905.08,156.12,128.65,157.39,135.73],[2905.08,2910.06,157.39,135.73,157.39,135.73],[2910.06,3019.84,157.39,135.73,18.04,131.13],[3019.84,3023.36,18.04,131.13,18.04,131.13],[3023.36,3125.09,18.04,131.13,140.34,11.55],[3125.09,3126.66,140.34,11.55,140.34,11.55],[3126.66,3230.85,140.34,11.55,1.66,33.74],[3230.85,3232.71,1.66,33.74,1.66,33.74],[3232.71,3279.7,1.66,33.74,6.05,82.92],[3279.7,3287.69,6.05,82.92,6.05,82.92],[3287.69,3312.15,6.05,82.92,26.53,99.03],[3312.15,3317.22,26.53,99.03,26.53,99.03],[3317.22,3396.77,26.53,99.03,6.39,15.7],[3396.77,3401.92,6.39,15.7,6.39,15.7],[3401.92,3425.78,6.39,15.7,47.83,36.19],[3425.78,3425.86,47.83,36.19,47.83,36.19],[3425.86,3457.24,47.83,36.19,16.54,5.5],[3457.24,3466.54,16.54,5.5,16.54,5.5],[3466.54,3775.26,16.54,5.5,173.55,58.66],[3775.26,3776.97,173.55,58.66,173.55,58.66]],"27":[[0.0,140.82,127.03,102.42,107.38,172.93],[140.82,145.82,107.38,172.93,107.38,172.93],[145.82,153.94,107.38,172.93,105.2,159.97],[153.94,161.24,105.2,159.97,105.2,159.97],[161.24,207.21,105.2,159.97,155.55,155.79],[207.21,215.85,155.55,155.79,155.55,155.79],[215.85,324.83,155.55,155.79,6.62,149.62],[324.83,333.49,6.62,149.62,6.62,149.62],[333.49,426.67,6.62,149.62,63.22,21.49],[426.67,434.22,63.22,21.49,63.22,21.49],[434.22,626.91,63.22,21.49,85.39,122.19],[626.91,628.25,85.39,122.19,85.39,122.19],[628.25,704.1,85.39,122.19,4.7,17.82],[704.1,706.88,4.7,17.82,4.7,17.82],[706.88,852.28,4.7,17.82,196.67,146.08],[852.28,854.35,196.67,146.08,196.67,146.08],[854.35,992.14,196.67,146.08,25.16,150.39],[992.14,993.17,25.16,150.39,25.16,150.39],[993.17,1210.57,25.16,150.39,149.73,190.43],[1210.57,1220.18,149.73,190.43,149.73,190.43],[1220.18,1312.04,149.73,190.43,143.28,8.62],[1312.04,1319.0,143.28,8.62,143.28,8.62],[1319.0,1360.08,143.28,8.62,148.59,47.16],[1360.08,1366.88,148.59,47.16,148.59,47.16],[1366.88,1412.04,148.59,47.16,97.85,17.18],[1412.04,1419.07,97.85,17.18,97.85,17.18],[1419.07,1665.54,97.85,17.18,39.69,162.82],[1665.54,1670.86,39.69,162.82,39.69,162.82],[1670.86,1770.17,39.69,162.82,189.42,41.78],[1770.17,1779.35,189.42,41.78,189.42,41.78],[1779.35,1885.55,189.42,41.78,7.26,89.37],[1885.55,1888.98,7.26,89.37,7.26,89.37],[1888.98,1916.11,7.26,89.37,7.0,39.36],[1916.11,1924.63,7.0,39.36,7.0,39.36],[1924.63,2046.95,7.0,39.36,25.13,150.99],[2046.95,2050.34,25.13,150.99,25.13,150.99],[2050.34,2134.78,25.13,150.99,141.32,189.64],[2134.78,2142.92,141.32,189.64,141.32,189.64],[2142.92,2256.15,141.32,189.64,128.21,52.34],[2256.15,2260.79,128.21,52.34,128.21,52.34],[2260.79,2298.24,128.21,52.34,108.28,27.54],[2298.24,2300.44,108.28,27.54,108.28,27.54],[2300.44,2435.1,108.28,27.54,105.63,179.18],[2435.1,2444.34,105.63,179.18,105.63,179.18],[2444.34,2646.83,105.63,179.18,86.16,11.86],[2646.83,2649.61,86.16,11.86,86.16,11.86],[2649.61,3000.63,86.16,11.86,17.37,184.36],[3000.63,3009.43,17.37,184.36,17.37,184.36],[3009.43,3099.16,17.37,184.36,167.01,171.5],[3099.16,3105.16,167.01,171.5,167.01,171.5],[3105.16,3324.17,167.01,171.5,86.36,30.35],[3324.17,3332.18,86.36,30.35,86.36,30.35],[3332.18,3403.32,86.36,30.35,171.53,122.11],[3403.32,3412.14,171.53,122.11,171.53,122.11],[3412.14,3502.98,171.53,122.11,58.58,35.43],[3502.98,3504.37,58.58,35.43,58.58,35.43],[3504.37,3674.55,58.58,35.43,168.66,62.19],[3674.55,3684.43,168.66,62.19,168.66,62.19]],"28":[[0.0,208.02,179.67,170.35,17.63,2.41],[208.02,216.85,17.63,2.41,17.63,2.41],[216.85,453.0,17.63,2.41,155.29,49.1],[453.0,458.54,155.29,49.1,155.29,49.1],[458.54,534.54,155.29,49.1,180.17,172.33],[534.54,541.64,180.17,172.33,180.17,172.33],[541.64,583.17,180.17,172.33,132.73,196.23],[583.17,587.04,132.73,196.23,132.73,196.23],[587.04,699.33,132.73,196.23,61.01,42.75],[699.33,705.85,61.01,42.75,61.01,42.75],[705.85,901.97,61.01,42.75,172.74,21.57],[901.97,906.7,172.74,21.57,172.74,21.57],[906.7,1082.93,172.74,21.57,80.39,15.25],[1082.93,1090.88,80.39,15.25,80.39,15.25],[1090.88,1236.71,80.39,15.25,136.61,192.64],[1236.71,1241.4,136.61,192.64,136.61,192.64],[1241.4,1454.55,136.61,192.64,30.93,128.17],[1454.55,1458.17,30.93,128.17,30.93,128.17],[1458.17,1516.26,30.93,128.17,122.1,178.67],[1516.26,1525.57,122.1,178.67,122.1,178.67],[1525.57,1553.53,122.1,178.67,94.43,130.45],[1553.53,1553.92,94.43,130.45,94.43,130.45],[1553.92,1624.78,94.43,130.45,154.74,101.04],[1624.78,1629.64,154.74,101.04,154.74,101.04],[1629.64,1794.56,154.74,101.04,67.28,56.31],[1794.56,1803.78,67.28,56.31,67.28,56.31],[1803.78,1863.07,67.28,56.31,100.03,72.31],[1863.07,1869.28,100.03,72.31,100.03,72.31],[1869.28,1945.93,100.03,72.31,60.54,95.69],[1945.93,1952.16,60.54,95.69,60.54,95.69],[1952.16,2206.59,60.54,95.69,189.81,57.78],[2206.59,2216.4,189.81,57.78,189.81,57.78],[2216.4,2302.65,189.81,57.78,42.77,32.99],[2302.65,2303.94,42.77,32.99,42.77,32.99],[2303.94,2318.01,42.77,32.99,57.6,54.55],[2318.01,2327.12,57.6,54.55,57.6,54.55],[2327.12,2382.45,57.6,54.55,24.32,98.25],[2382.45,2386.37,24.32,98.25,24.32,98.25],[2386.37,2634.67,24.32,98.25,166.43,141.24],[2634.67,2635.91,166.43,141.24,166.43,141.24],[2635.91,2774.87,166.43,141.24,158.25,3.34],[2774.87,2776.03,158.25,3.34,158.25,3.34],[2776.03,2799.28,158.25,3.34,133.7,5.79],[2799.28,2808.93,133.7,5.79,133.7,5.79],[2808.93,2895.52,133.7,5.79,6.43,88.95],[2895.52,2904.6,6.43,88.95,6.43,88.95],[2904.6,2965.09,6.43,88.95,101.95,141.08],[2965.09,2968.18,101.95,141.08,101.95,141.08],[2968.18,3070.94,101.95,141.08,181.35,115.68],[3070.94,3073.62,181.35,115.68,181.35,115.68],[3073.62,3199.72,181.35,115.68,191.17,32.07],[3199.72,3207.66,191.17,32.07,191.17,32.07],[3207.66,3281.57,191.17,32.07,171.72,109.14],[3281.57,3284.99,171.72,109.14,171.72,109.14],[3284.99,3356.41,171.72,109.14,51.2,174.62],[3356.41,3365.86,51.2,174.62,51.2,174.62],[3365.86,3380.24,51.2,174.62,72.71,161.81],[3380.24,3383.53,72.71,161.81,72.71,161.81],[3383.53,3392.19,72.71,161.81,72.28,174.79],[3392.19,3398.64,72.28,174.79,72.28,174.79],[3398.64,3432.47,72.28,174.79,134.0,156.57],[3432.47,3437.61,134.0,156.57,134.0,156.57],[3437.61,3468.82,134.0,156.57,136.58,194.14],[3468.82,3476.9,136.58,194.14,136.58,194.14],[3476.9,3559.14,136.58,194.14,88.77,99.4],[3559.14,3562.26,88.77,99.4,88.77,99.4],[3562.26,3594.38,88.77,99.4,104.3,79.39],[3594.38,3602.19,104.3,79.39,104.3,79.39]]};
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
