<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>jab_learning_off_m3_k7_i3_mob3_d4_s37</title>
    <randomseed>37</randomseed>
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
      <identifier>v_jab_learning_off_root</identifier>
      <description>v_jab_learning_off_root</description>
      <source>/home/user/project/build/variants/v_jab_learning_off_root/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_jab_learning_off_root.cooja</commands>
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
          <pos x="101.24" y="45.67" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>2</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="36.90" y="120.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>3</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="91.36" y="165.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>5</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="42.18" y="24.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>8</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="60.46" y="33.93" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>9</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="15.60" y="178.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>27</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="77.47" y="80.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>29</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_jab_learning_off_cli0</identifier>
      <description>v_jab_learning_off_cli0</description>
      <source>/home/user/project/build/variants/v_jab_learning_off_cli0/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_jab_learning_off_cli0.cooja</commands>
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
          <pos x="45.13" y="148.81" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>4</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="8.36" y="137.86" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>6</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="35.89" y="40.64" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>7</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.31" y="103.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>10</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="67.80" y="185.69" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>12</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="60.26" y="74.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>15</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="82.11" y="151.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>16</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="112.28" y="150.81" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>17</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="19.80" y="66.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>19</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="173.70" y="7.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>20</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="112.16" y="61.89" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>21</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="167.08" y="56.23" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>22</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="80.00" y="20.95" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>24</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="123.72" y="73.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>25</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="101.89" y="126.60" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>26</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="43.17" y="78.85" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>28</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_jab_learning_off_cli1</identifier>
      <description>v_jab_learning_off_cli1</description>
      <source>/home/user/project/build/variants/v_jab_learning_off_cli1/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_jab_learning_off_cli1.cooja</commands>
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
          <pos x="190.16" y="48.53" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>11</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="116.38" y="125.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>13</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="47.67" y="143.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>14</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="131.11" y="65.84" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>18</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="118.93" y="18.94" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>23</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="65.21" y="35.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>30</id>
        </interface_config>
      </mote>
    </motetype>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script><![CDATA[
TIMEOUT(3600000, log.testOK());
var S = {"3":[[0.0,70.67,36.9,120.27,62.64,192.86],[70.67,72.08,62.64,192.86,62.64,192.86],[72.08,155.62,62.64,192.86,13.74,147.61],[155.62,165.27,13.74,147.61,13.74,147.61],[165.27,214.32,13.74,147.61,96.15,175.9],[214.32,214.63,96.15,175.9,96.15,175.9],[214.63,367.54,96.15,175.9,56.17,48.87],[367.54,372.65,56.17,48.87,56.17,48.87],[372.65,476.73,56.17,48.87,122.39,171.52],[476.73,485.49,122.39,171.52,122.39,171.52],[485.49,542.96,122.39,171.52,100.03,104.39],[542.96,549.7,100.03,104.39,100.03,104.39],[549.7,708.52,100.03,104.39,90.21,187.09],[708.52,712.89,90.21,187.09,90.21,187.09],[712.89,807.68,90.21,187.09,53.73,28.76],[807.68,810.37,53.73,28.76,53.73,28.76],[810.37,1014.73,53.73,28.76,98.49,140.18],[1014.73,1021.04,98.49,140.18,98.49,140.18],[1021.04,1053.09,98.49,140.18,148.65,146.3],[1053.09,1058.06,148.65,146.3,148.65,146.3],[1058.06,1146.07,148.65,146.3,95.18,186.33],[1146.07,1149.12,95.18,186.33,95.18,186.33],[1149.12,1299.16,95.18,186.33,183.54,176.09],[1299.16,1303.44,183.54,176.09,183.54,176.09],[1303.44,1424.62,183.54,176.09,69.32,193.5],[1424.62,1427.81,69.32,193.5,69.32,193.5],[1427.81,1533.53,69.32,193.5,159.6,197.9],[1533.53,1541.88,159.6,197.9,159.6,197.9],[1541.88,1742.22,159.6,197.9,12.44,25.34],[1742.22,1746.74,12.44,25.34,12.44,25.34],[1746.74,1773.6,12.44,25.34,8.22,47.77],[1773.6,1773.76,8.22,47.77,8.22,47.77],[1773.76,1833.87,8.22,47.77,92.42,29.57],[1833.87,1839.12,92.42,29.57,92.42,29.57],[1839.12,2097.54,92.42,29.57,23.16,191.72],[2097.54,2097.77,23.16,191.72,23.16,191.72],[2097.77,2184.35,23.16,191.72,181.9,146.85],[2184.35,2193.07,181.9,146.85,181.9,146.85],[2193.07,2216.54,181.9,146.85,199.47,105.16],[2216.54,2224.11,199.47,105.16,199.47,105.16],[2224.11,2323.9,199.47,105.16,112.59,126.75],[2323.9,2325.12,112.59,126.75,112.59,126.75],[2325.12,2338.61,112.59,126.75,109.48,138.2],[2338.61,2343.19,109.48,138.2,109.48,138.2],[2343.19,2407.71,109.48,138.2,47.72,172.14],[2407.71,2410.65,47.72,172.14,47.72,172.14],[2410.65,2630.52,47.72,172.14,150.2,23.09],[2630.52,2634.11,150.2,23.09,150.2,23.09],[2634.11,2771.92,150.2,23.09,18.55,125.57],[2771.92,2776.23,18.55,125.57,18.55,125.57],[2776.23,2951.99,18.55,125.57,129.5,76.5],[2951.99,2953.56,129.5,76.5,129.5,76.5],[2953.56,3004.44,129.5,76.5,183.42,97.16],[3004.44,3008.01,183.42,97.16,183.42,97.16],[3008.01,3154.51,183.42,97.16,96.44,150.03],[3154.51,3156.31,96.44,150.03,96.44,150.03],[3156.31,3205.19,96.44,150.03,179.8,147.61],[3205.19,3207.11,179.8,147.61,179.8,147.61],[3207.11,3303.13,179.8,147.61,60.74,72.55],[3303.13,3306.54,60.74,72.55,60.74,72.55],[3306.54,3404.45,60.74,72.55,139.19,135.03],[3404.45,3407.96,139.19,135.03,139.19,135.03],[3407.96,3465.9,139.19,135.03,110.28,172.97],[3465.9,3468.57,110.28,172.97,110.28,172.97],[3468.57,3579.58,110.28,172.97,119.14,29.54],[3579.58,3580.49,119.14,29.54,119.14,29.54],[3580.49,3678.25,119.14,29.54,93.74,146.68],[3678.25,3687.13,93.74,146.68,93.74,146.68]],"9":[[0.0,33.77,60.46,33.93,89.35,56.13],[33.77,38.02,89.35,56.13,89.35,56.13],[38.02,132.16,89.35,56.13,48.48,11.28],[132.16,138.27,48.48,11.28,48.48,11.28],[138.27,170.8,48.48,11.28,20.07,57.49],[170.8,179.9,20.07,57.49,20.07,57.49],[179.9,398.92,20.07,57.49,153.27,190.73],[398.92,405.01,153.27,190.73,153.27,190.73],[405.01,473.78,153.27,190.73,124.32,63.15],[473.78,483.31,124.32,63.15,124.32,63.15],[483.31,506.27,124.32,63.15,88.66,35.06],[506.27,510.71,88.66,35.06,88.66,35.06],[510.71,530.75,88.66,35.06,59.03,40.99],[530.75,536.58,59.03,40.99,59.03,40.99],[536.58,650.02,59.03,40.99,138.69,195.43],[650.02,657.31,138.69,195.43,138.69,195.43],[657.31,748.56,138.69,195.43,28.24,135.95],[748.56,751.83,28.24,135.95,28.24,135.95],[751.83,756.47,28.24,135.95,20.58,137.45],[756.47,764.9,20.58,137.45,20.58,137.45],[764.9,929.3,20.58,137.45,90.71,84.97],[929.3,931.06,90.71,84.97,90.71,84.97],[931.06,985.07,90.71,84.97,1.26,47.32],[985.07,992.58,1.26,47.32,1.26,47.32],[992.58,1071.88,1.26,47.32,149.15,70.54],[1071.88,1075.03,149.15,70.54,149.15,70.54],[1075.03,1196.62,149.15,70.54,49.99,2.29],[1196.62,1198.01,49.99,2.29,49.99,2.29],[1198.01,1296.76,49.99,2.29,87.2,136.39],[1296.76,1300.54,87.2,136.39,87.2,136.39],[1300.54,1327.63,87.2,136.39,103.78,143.85],[1327.63,1336.56,103.78,143.85,103.78,143.85],[1336.56,1406.09,103.78,143.85,20.76,184.6],[1406.09,1414.52,20.76,184.6,20.76,184.6],[1414.52,1618.02,20.76,184.6,100.53,96.53],[1618.02,1618.29,100.53,96.53,100.53,96.53],[1618.29,1640.25,100.53,96.53,103.98,76.63],[1640.25,1645.65,103.98,76.63,103.98,76.63],[1645.65,1683.14,103.98,76.63,155.82,99.5],[1683.14,1692.14,155.82,99.5,155.82,99.5],[1692.14,1745.29,155.82,99.5,193.47,47.72],[1745.29,1749.97,193.47,47.72,193.47,47.72],[1749.97,1836.01,193.47,47.72,100.02,141.88],[1836.01,1844.67,100.02,141.88,100.02,141.88],[1844.67,1883.75,100.02,141.88,32.46,138.72],[1883.75,1889.14,32.46,138.72,32.46,138.72],[1889.14,1895.59,32.46,138.72,27.65,130.83],[1895.59,1895.99,27.65,130.83,27.65,130.83],[1895.99,1966.86,27.65,130.83,9.4,16.61],[1966.86,1967.4,9.4,16.61,9.4,16.61],[1967.4,2272.49,9.4,16.61,42.93,183.75],[2272.49,2280.66,42.93,183.75,42.93,183.75],[2280.66,2439.66,42.93,183.75,166.33,5.33],[2439.66,2440.12,166.33,5.33,166.33,5.33],[2440.12,2508.73,166.33,5.33,131.93,52.56],[2508.73,2511.68,131.93,52.56,131.93,52.56],[2511.68,2604.78,131.93,52.56,130.11,142.47],[2604.78,2612.89,130.11,142.47,130.11,142.47],[2612.89,2698.12,130.11,142.47,103.74,197.77],[2698.12,2700.5,103.74,197.77,103.74,197.77],[2700.5,2794.16,103.74,197.77,141.2,46.61],[2794.16,2802.77,141.2,46.61,141.2,46.61],[2802.77,2822.91,141.2,46.61,150.57,19.02],[2822.91,2831.48,150.57,19.02,150.57,19.02],[2831.48,3095.97,150.57,19.02,50.88,170.4],[3095.97,3104.71,50.88,170.4,50.88,170.4],[3104.71,3146.22,50.88,170.4,42.58,111.14],[3146.22,3153.11,42.58,111.14,42.58,111.14],[3153.11,3269.49,42.58,111.14,49.78,20.24],[3269.49,3269.5,49.78,20.24,49.78,20.24],[3269.5,3396.79,49.78,20.24,13.36,120.37],[3396.79,3405.94,13.36,120.37,13.36,120.37],[3405.94,3435.9,13.36,120.37,55.51,99.88],[3435.9,3443.16,55.51,99.88,55.51,99.88],[3443.16,3464.39,55.51,99.88,44.64,139.14],[3464.39,3468.07,44.64,139.14,44.64,139.14],[3468.07,3690.84,44.64,139.14,129.25,15.38],[3690.84,3696.65,129.25,15.38,129.25,15.38]],"11":[[0.0,96.28,190.16,48.53,48.49,81.73],[96.28,105.69,48.49,81.73,48.49,81.73],[105.69,154.48,48.49,81.73,105.37,157.92],[154.48,157.96,105.37,157.92,105.37,157.92],[157.96,380.0,105.37,157.92,30.0,1.85],[380.0,385.41,30.0,1.85,30.0,1.85],[385.41,476.1,30.0,1.85,18.95,175.94],[476.1,483.56,18.95,175.94,18.95,175.94],[483.56,628.53,18.95,175.94,155.14,16.74],[628.53,635.9,155.14,16.74,155.14,16.74],[635.9,714.13,155.14,16.74,178.48,95.75],[714.13,715.65,178.48,95.75,178.48,95.75],[715.65,776.92,178.48,95.75,170.87,186.01],[776.92,778.37,170.87,186.01,170.87,186.01],[778.37,819.19,170.87,186.01,114.14,189.02],[819.19,828.04,114.14,189.02,114.14,189.02],[828.04,893.58,114.14,189.02,65.49,113.2],[893.58,897.56,65.49,113.2,65.49,113.2],[897.56,952.57,65.49,113.2,65.38,13.11],[952.57,957.08,65.38,13.11,65.38,13.11],[957.08,1108.24,65.38,13.11,199.17,165.26],[1108.24,1110.06,199.17,165.26,199.17,165.26],[1110.06,1170.71,199.17,165.26,157.3,130.34],[1170.71,1179.34,157.3,130.34,157.3,130.34],[1179.34,1356.58,157.3,130.34,34.44,195.1],[1356.58,1357.2,34.44,195.1,34.44,195.1],[1357.2,1499.53,34.44,195.1,191.06,43.76],[1499.53,1502.04,191.06,43.76,191.06,43.76],[1502.04,1589.67,191.06,43.76,130.35,34.55],[1589.67,1598.02,130.35,34.55,130.35,34.55],[1598.02,1616.0,130.35,34.55,137.59,65.78],[1616.0,1620.87,137.59,65.78,137.59,65.78],[1620.87,1633.86,137.59,65.78,133.9,90.8],[1633.86,1643.54,133.9,90.8,133.9,90.8],[1643.54,1687.49,133.9,90.8,141.41,154.74],[1687.49,1690.49,141.41,154.74,141.41,154.74],[1690.49,1694.26,141.41,154.74,143.82,157.96],[1694.26,1696.47,143.82,157.96,143.82,157.96],[1696.47,1974.04,143.82,157.96,31.07,12.43],[1974.04,1981.22,31.07,12.43,31.07,12.43],[1981.22,2053.24,31.07,12.43,168.55,36.81],[2053.24,2057.33,168.55,36.81,168.55,36.81],[2057.33,2149.31,168.55,36.81,26.48,123.39],[2149.31,2156.04,26.48,123.39,26.48,123.39],[2156.04,2236.25,26.48,123.39,165.33,188.37],[2236.25,2244.23,165.33,188.37,165.33,188.37],[2244.23,2284.63,165.33,188.37,127.46,124.74],[2284.63,2292.56,127.46,124.74,127.46,124.74],[2292.56,2318.72,127.46,124.74,114.72,95.16],[2318.72,2322.0,114.72,95.16,114.72,95.16],[2322.0,2357.11,114.72,95.16,155.77,126.33],[2357.11,2363.44,155.77,126.33,155.77,126.33],[2363.44,2634.22,155.77,126.33,18.28,176.19],[2634.22,2640.74,18.28,176.19,18.28,176.19],[2640.74,2944.06,18.28,176.19,144.77,44.98],[2944.06,2953.87,144.77,44.98,144.77,44.98],[2953.87,2984.48,144.77,44.98,117.76,70.5],[2984.48,2991.55,117.76,70.5,117.76,70.5],[2991.55,3067.0,117.76,70.5,37.53,83.47],[3067.0,3074.61,37.53,83.47,37.53,83.47],[3074.61,3105.19,37.53,83.47,82.81,66.48],[3105.19,3110.36,82.81,66.48,82.81,66.48],[3110.36,3368.02,82.81,66.48,179.34,170.67],[3368.02,3374.64,179.34,170.67,179.34,170.67],[3374.64,3508.9,179.34,170.67,83.8,21.79],[3508.9,3513.07,83.8,21.79,83.8,21.79],[3513.07,3635.91,83.8,21.79,37.89,184.16],[3635.91,3636.78,37.89,184.16,37.89,184.16]],"13":[[0.0,153.43,116.38,125.17,29.47,59.29],[153.43,156.17,29.47,59.29,29.47,59.29],[156.17,216.79,29.47,59.29,119.75,108.01],[216.79,225.66,119.75,108.01,119.75,108.01],[225.66,280.92,119.75,108.01,128.38,31.59],[280.92,285.96,128.38,31.59,128.38,31.59],[285.96,440.1,128.38,31.59,66.48,129.83],[440.1,444.82,66.48,129.83,66.48,129.83],[444.82,595.48,66.48,129.83,178.11,36.23],[595.48,602.2,178.11,36.23,178.11,36.23],[602.2,685.37,178.11,36.23,194.71,183.95],[685.37,694.48,194.71,183.95,194.71,183.95],[694.48,786.32,194.71,183.95,80.74,56.97],[786.32,793.44,80.74,56.97,80.74,56.97],[793.44,860.25,80.74,56.97,158.92,56.06],[860.25,862.34,158.92,56.06,158.92,56.06],[862.34,905.13,158.92,56.06,116.13,66.58],[905.13,915.06,116.13,66.58,116.13,66.58],[915.06,1062.09,116.13,66.58,65.27,121.35],[1062.09,1065.56,65.27,121.35,65.27,121.35],[1065.56,1145.35,65.27,121.35,117.72,182.53],[1145.35,1151.14,117.72,182.53,117.72,182.53],[1151.14,1235.06,117.72,182.53,180.64,74.94],[1235.06,1237.8,180.64,74.94,180.64,74.94],[1237.8,1423.04,180.64,74.94,51.02,181.59],[1423.04,1430.87,51.02,181.59,51.02,181.59],[1430.87,1532.43,51.02,181.59,34.47,43.65],[1532.43,1540.22,34.47,43.65,34.47,43.65],[1540.22,1727.35,34.47,43.65,172.6,107.47],[1727.35,1731.8,172.6,107.47,172.6,107.47],[1731.8,1831.67,172.6,107.47,85.85,160.82],[1831.67,1832.57,85.85,160.82,85.85,160.82],[1832.57,1925.12,85.85,160.82,32.42,48.11],[1925.12,1931.35,32.42,48.11,32.42,48.11],[1931.35,2059.06,32.42,48.11,197.2,62.99],[2059.06,2068.79,197.2,62.99,197.2,62.99],[2068.79,2173.0,197.2,62.99,138.81,112.24],[2173.0,2173.07,138.81,112.24,138.81,112.24],[2173.07,2280.3,138.81,112.24,157.17,10.07],[2280.3,2284.92,157.17,10.07,157.17,10.07],[2284.92,2421.27,157.17,10.07,31.04,160.77],[2421.27,2431.01,31.04,160.77,31.04,160.77],[2431.01,2554.07,31.04,160.77,95.87,66.9],[2554.07,2554.41,95.87,66.9,95.87,66.9],[2554.41,2597.66,95.87,66.9,55.28,102.72],[2597.66,2600.82,55.28,102.72,55.28,102.72],[2600.82,2888.58,55.28,102.72,194.4,23.19],[2888.58,2891.92,194.4,23.19,194.4,23.19],[2891.92,2979.18,194.4,23.19,175.39,118.29],[2979.18,2986.33,175.39,118.29,175.39,118.29],[2986.33,3108.14,175.39,118.29,90.57,34.4],[3108.14,3108.84,90.57,34.4,90.57,34.4],[3108.84,3216.09,90.57,34.4,169.93,85.45],[3216.09,3218.16,169.93,85.45,169.93,85.45],[3218.16,3374.75,169.93,85.45,115.6,166.18],[3374.75,3381.75,115.6,166.18,115.6,166.18],[3381.75,3531.03,115.6,166.18,46.86,23.81],[3531.03,3537.37,46.86,23.81,46.86,23.81],[3537.37,3555.77,46.86,23.81,60.18,40.3],[3555.77,3563.51,60.18,40.3,60.18,40.3],[3563.51,3719.73,60.18,40.3,57.99,160.22],[3719.73,3723.87,57.99,160.22,57.99,160.22]],"14":[[0.0,69.07,47.67,143.16,40.17,16.83],[69.07,71.6,40.17,16.83,40.17,16.83],[71.6,202.26,40.17,16.83,98.73,190.54],[202.26,208.77,98.73,190.54,98.73,190.54],[208.77,340.41,98.73,190.54,57.17,24.14],[340.41,346.76,57.17,24.14,57.17,24.14],[346.76,611.78,57.17,24.14,107.89,193.64],[611.78,612.32,107.89,193.64,107.89,193.64],[612.32,758.97,107.89,193.64,191.79,83.75],[758.97,759.28,191.79,83.75,191.79,83.75],[759.28,903.73,191.79,83.75,137.16,141.14],[903.73,906.94,137.16,141.14,137.16,141.14],[906.94,990.05,137.16,141.14,62.76,38.36],[990.05,997.26,62.76,38.36,62.76,38.36],[997.26,1042.29,62.76,38.36,137.65,78.2],[1042.29,1048.96,137.65,78.2,137.65,78.2],[1048.96,1295.24,137.65,78.2,5.62,142.26],[1295.24,1299.67,5.62,142.26,5.62,142.26],[1299.67,1457.17,5.62,142.26,112.07,118.05],[1457.17,1465.99,112.07,118.05,112.07,118.05],[1465.99,1546.06,112.07,118.05,109.45,27.67],[1546.06,1551.26,109.45,27.67,109.45,27.67],[1551.26,1765.45,109.45,27.67,4.16,78.73],[1765.45,1773.62,4.16,78.73,4.16,78.73],[1773.62,1815.94,4.16,78.73,54.0,90.46],[1815.94,1823.57,54.0,90.46,54.0,90.46],[1823.57,1900.78,54.0,90.46,26.27,197.25],[1900.78,1902.17,26.27,197.25,26.27,197.25],[1902.17,2149.83,26.27,197.25,14.12,42.07],[2149.83,2157.43,14.12,42.07,14.12,42.07],[2157.43,2237.73,14.12,42.07,55.66,156.4],[2237.73,2247.54,55.66,156.4,55.66,156.4],[2247.54,2348.51,55.66,156.4,179.14,57.96],[2348.51,2354.19,179.14,57.96,179.14,57.96],[2354.19,2385.81,179.14,57.96,135.96,55.31],[2385.81,2392.24,135.96,55.31,135.96,55.31],[2392.24,2488.93,135.96,55.31,57.56,26.18],[2488.93,2491.86,57.56,26.18,57.56,26.18],[2491.86,2608.63,57.56,26.18,52.1,186.49],[2608.63,2615.18,52.1,186.49,52.1,186.49],[2615.18,2753.58,52.1,186.49,113.14,83.78],[2753.58,2762.81,113.14,83.78,113.14,83.78],[2762.81,2858.64,113.14,83.78,67.85,195.47],[2858.64,2864.04,67.85,195.47,67.85,195.47],[2864.04,2992.79,67.85,195.47,1.44,9.49],[2992.79,2993.52,1.44,9.49,1.44,9.49],[2993.52,3119.85,1.44,9.49,198.03,160.09],[3119.85,3126.38,198.03,160.09,198.03,160.09],[3126.38,3259.91,198.03,160.09,22.54,104.74],[3259.91,3260.29,22.54,104.74,22.54,104.74],[3260.29,3317.56,22.54,104.74,66.47,101.63],[3317.56,3321.26,66.47,101.63,66.47,101.63],[3321.26,3381.4,66.47,101.63,33.59,163.86],[3381.4,3384.42,33.59,163.86,33.59,163.86],[3384.42,3570.5,33.59,163.86,34.83,4.61],[3570.5,3574.85,34.83,4.61,34.83,4.61],[3574.85,3756.39,34.83,4.61,87.61,170.0],[3756.39,3759.05,87.61,170.0,87.61,170.0]],"18":[[0.0,56.06,131.11,65.84,179.76,142.8],[56.06,56.37,179.76,142.8,179.76,142.8],[56.37,164.37,179.76,142.8,135.83,22.84],[164.37,171.33,135.83,22.84,135.83,22.84],[171.33,309.27,135.83,22.84,7.91,21.7],[309.27,311.43,7.91,21.7,7.91,21.7],[311.43,360.3,7.91,21.7,87.17,76.29],[360.3,368.66,87.17,76.29,87.17,76.29],[368.66,408.1,87.17,76.29,13.74,97.61],[408.1,410.44,13.74,97.61,13.74,97.61],[410.44,517.36,13.74,97.61,154.52,59.32],[517.36,527.25,154.52,59.32,154.52,59.32],[527.25,550.1,154.52,59.32,181.38,43.07],[550.1,553.03,181.38,43.07,181.38,43.07],[553.03,640.93,181.38,43.07,87.91,155.75],[640.93,644.41,87.91,155.75,87.91,155.75],[644.41,697.55,87.91,155.75,126.63,92.59],[697.55,706.16,126.63,92.59,126.63,92.59],[706.16,771.48,126.63,92.59,84.23,157.37],[771.48,775.9,84.23,157.37,84.23,157.37],[775.9,801.07,84.23,157.37,117.74,193.24],[801.07,803.41,117.74,193.24,117.74,193.24],[803.41,1163.36,117.74,193.24,42.33,7.5],[1163.36,1169.58,42.33,7.5,42.33,7.5],[1169.58,1207.52,42.33,7.5,39.95,59.62],[1207.52,1210.88,39.95,59.62,39.95,59.62],[1210.88,1248.53,39.95,59.62,43.06,19.28],[1248.53,1253.07,43.06,19.28,43.06,19.28],[1253.07,1328.78,43.06,19.28,123.36,13.06],[1328.78,1338.36,123.36,13.06,123.36,13.06],[1338.36,1522.84,123.36,13.06,35.61,93.51],[1522.84,1523.95,35.61,93.51,35.61,93.51],[1523.95,1691.95,35.61,93.51,144.18,143.81],[1691.95,1701.93,144.18,143.81,144.18,143.81],[1701.93,1782.95,144.18,143.81,28.62,43.47],[1782.95,1790.12,28.62,43.47,28.62,43.47],[1790.12,1829.3,28.62,43.47,20.59,112.42],[1829.3,1838.39,20.59,112.42,20.59,112.42],[1838.39,2005.87,20.59,112.42,179.89,113.01],[2005.87,2015.16,179.89,113.01,179.89,113.01],[2015.16,2079.8,179.89,113.01,125.94,26.93],[2079.8,2088.22,125.94,26.93,125.94,26.93],[2088.22,2147.43,125.94,26.93,175.56,29.83],[2147.43,2150.55,175.56,29.83,175.56,29.83],[2150.55,2231.2,175.56,29.83,72.72,32.15],[2231.2,2237.46,72.72,32.15,72.72,32.15],[2237.46,2383.59,72.72,32.15,65.21,174.59],[2383.59,2389.06,65.21,174.59,65.21,174.59],[2389.06,2530.53,65.21,174.59,198.56,36.43],[2530.53,2533.35,198.56,36.43,198.56,36.43],[2533.35,2612.32,198.56,36.43,168.84,142.35],[2612.32,2613.79,168.84,142.35,168.84,142.35],[2613.79,2749.15,168.84,142.35,130.1,69.59],[2749.15,2757.77,130.1,69.59,130.1,69.59],[2757.77,2794.88,130.1,69.59,97.53,89.73],[2794.88,2802.07,97.53,89.73,97.53,89.73],[2802.07,2921.04,97.53,89.73,0.18,167.37],[2921.04,2927.58,0.18,167.37,0.18,167.37],[2927.58,2995.0,0.18,167.37,10.36,99.84],[2995.0,2995.68,10.36,99.84,10.36,99.84],[2995.68,3031.12,10.36,99.84,16.03,60.61],[3031.12,3037.64,16.03,60.61,16.03,60.61],[3037.64,3178.17,16.03,60.61,118.69,169.62],[3178.17,3178.71,118.69,169.62,118.69,169.62],[3178.71,3227.02,118.69,169.62,37.56,163.61],[3227.02,3232.81,37.56,163.61,37.56,163.61],[3232.81,3335.36,37.56,163.61,105.32,199.06],[3335.36,3339.63,105.32,199.06,105.32,199.06],[3339.63,3499.27,105.32,199.06,87.91,96.06],[3499.27,3504.09,87.91,96.06,87.91,96.06],[3504.09,3596.67,87.91,96.06,8.05,189.5],[3596.67,3602.23,8.05,189.5,8.05,189.5]],"23":[[0.0,62.51,118.93,18.94,85.37,12.24],[62.51,63.67,85.37,12.24,85.37,12.24],[63.67,327.48,85.37,12.24,195.77,96.03],[327.48,328.59,195.77,96.03,195.77,96.03],[328.59,492.95,195.77,96.03,77.82,113.55],[492.95,493.74,77.82,113.55,77.82,113.55],[493.74,533.02,77.82,113.55,120.33,57.4],[533.02,542.58,120.33,57.4,120.33,57.4],[542.58,655.9,120.33,57.4,8.13,44.01],[655.9,656.2,8.13,44.01,8.13,44.01],[656.2,738.29,8.13,44.01,162.74,31.49],[738.29,740.38,162.74,31.49,162.74,31.49],[740.38,834.23,162.74,31.49,67.89,160.69],[834.23,838.07,67.89,160.69,67.89,160.69],[838.07,932.21,67.89,160.69,182.42,64.3],[932.21,933.18,182.42,64.3,182.42,64.3],[933.18,1023.58,182.42,64.3,148.06,96.74],[1023.58,1029.39,148.06,96.74,148.06,96.74],[1029.39,1119.88,148.06,96.74,194.25,9.24],[1119.88,1125.56,194.25,9.24,194.25,9.24],[1125.56,1206.53,194.25,9.24,164.54,46.44],[1206.53,1213.13,164.54,46.44,164.54,46.44],[1213.13,1285.43,164.54,46.44,48.3,114.24],[1285.43,1288.92,48.3,114.24,48.3,114.24],[1288.92,1340.05,48.3,114.24,75.37,125.05],[1340.05,1349.1,75.37,125.05,75.37,125.05],[1349.1,1379.72,75.37,125.05,40.07,82.81],[1379.72,1385.36,40.07,82.81,40.07,82.81],[1385.36,1418.6,40.07,82.81,98.74,87.18],[1418.6,1423.97,98.74,87.18,98.74,87.18],[1423.97,1435.95,98.74,87.18,100.32,103.66],[1435.95,1444.98,100.32,103.66,100.32,103.66],[1444.98,1532.23,100.32,103.66,69.32,14.89],[1532.23,1540.77,69.32,14.89,69.32,14.89],[1540.77,1635.62,69.32,14.89,170.01,55.95],[1635.62,1644.38,170.01,55.95,170.01,55.95],[1644.38,1681.72,170.01,55.95,197.41,107.04],[1681.72,1681.8,197.41,107.04,197.41,107.04],[1681.8,1757.52,197.41,107.04,120.6,145.67],[1757.52,1765.79,120.6,145.67,120.6,145.67],[1765.79,1798.26,120.6,145.67,89.36,165.64],[1798.26,1804.55,89.36,165.64,89.36,165.64],[1804.55,1870.59,89.36,165.64,168.09,183.46],[1870.59,1874.36,168.09,183.46,168.09,183.46],[1874.36,1984.15,168.09,183.46,129.5,8.13],[1984.15,1986.05,129.5,8.13,129.5,8.13],[1986.05,2056.65,129.5,8.13,171.58,60.85],[2056.65,2060.16,171.58,60.85,171.58,60.85],[2060.16,2147.6,171.58,60.85,31.65,80.84],[2147.6,2154.22,31.65,80.84,31.65,80.84],[2154.22,2211.4,31.65,80.84,64.69,137.72],[2211.4,2220.6,64.69,137.72,64.69,137.72],[2220.6,2316.95,64.69,137.72,128.63,43.76],[2316.95,2326.84,128.63,43.76,128.63,43.76],[2326.84,2367.33,128.63,43.76,88.61,24.84],[2367.33,2370.51,88.61,24.84,88.61,24.84],[2370.51,2442.94,88.61,24.84,118.75,85.66],[2442.94,2443.87,118.75,85.66,118.75,85.66],[2443.87,2523.8,118.75,85.66,102.62,193.41],[2523.8,2525.81,102.62,193.41,102.62,193.41],[2525.81,2725.87,102.62,193.41,33.44,113.33],[2725.87,2726.61,33.44,113.33,33.44,113.33],[2726.61,2843.55,33.44,113.33,165.15,107.81],[2843.55,2845.65,165.15,107.81,165.15,107.81],[2845.65,2963.54,165.15,107.81,20.13,82.17],[2963.54,2966.33,20.13,82.17,20.13,82.17],[2966.33,3070.7,20.13,82.17,194.31,179.3],[3070.7,3077.86,194.31,179.3,194.31,179.3],[3077.86,3150.03,194.31,179.3,198.45,94.07],[3150.03,3154.56,198.45,94.07,198.45,94.07],[3154.56,3251.59,198.45,94.07,36.64,115.75],[3251.59,3253.26,36.64,115.75,36.64,115.75],[3253.26,3324.1,36.64,115.75,152.59,181.59],[3324.1,3326.01,152.59,181.59,152.59,181.59],[3326.01,3381.03,152.59,181.59,151.05,119.25],[3381.03,3383.71,151.05,119.25,151.05,119.25],[3383.71,3427.12,151.05,119.25,98.74,107.61],[3427.12,3430.57,98.74,107.61,98.74,107.61],[3430.57,3480.27,98.74,107.61,34.86,140.68],[3480.27,3481.41,34.86,140.68,34.86,140.68],[3481.41,3532.88,34.86,140.68,2.42,50.72],[3532.88,3541.02,2.42,50.72,2.42,50.72],[3541.02,3590.7,2.42,50.72,22.37,103.38],[3590.7,3596.58,22.37,103.38,22.37,103.38],[3596.58,3622.93,22.37,103.38,44.37,114.1],[3622.93,3631.68,44.37,114.1,44.37,114.1]],"29":[[0.0,24.68,77.47,80.45,33.93,101.8],[24.68,25.72,33.93,101.8,33.93,101.8],[25.72,77.34,33.93,101.8,24.37,7.94],[77.34,86.78,24.37,7.94,24.37,7.94],[86.78,106.68,24.37,7.94,31.96,29.01],[106.68,111.34,31.96,29.01,31.96,29.01],[111.34,224.77,31.96,29.01,55.41,138.52],[224.77,228.89,55.41,138.52,55.41,138.52],[228.89,343.1,55.41,138.52,128.55,114.91],[343.1,352.28,128.55,114.91,128.55,114.91],[352.28,442.84,128.55,114.91,64.16,182.92],[442.84,442.93,64.16,182.92,64.16,182.92],[442.93,550.49,64.16,182.92,151.12,166.61],[550.49,555.98,151.12,166.61,151.12,166.61],[555.98,663.24,151.12,166.61,154.03,33.23],[663.24,665.38,154.03,33.23,154.03,33.23],[665.38,771.01,154.03,33.23,139.06,112.8],[771.01,778.28,139.06,112.8,139.06,112.8],[778.28,1003.18,139.06,112.8,10.95,141.11],[1003.18,1008.44,10.95,141.11,10.95,141.11],[1008.44,1099.26,10.95,141.11,79.56,22.06],[1099.26,1100.49,79.56,22.06,79.56,22.06],[1100.49,1115.7,79.56,22.06,56.75,34.72],[1115.7,1119.67,56.75,34.72,56.75,34.72],[1119.67,1227.01,56.75,34.72,193.33,168.43],[1227.01,1232.39,193.33,168.43,193.33,168.43],[1232.39,1282.95,193.33,168.43,159.44,90.46],[1282.95,1288.14,159.44,90.46,159.44,90.46],[1288.14,1339.1,159.44,90.46,90.42,111.29],[1339.1,1343.73,90.42,111.29,90.42,111.29],[1343.73,1420.22,90.42,111.29,95.61,196.52],[1420.22,1420.62,95.61,196.52,95.61,196.52],[1420.62,1472.76,95.61,196.52,44.32,158.74],[1472.76,1473.41,44.32,158.74,44.32,158.74],[1473.41,1546.74,44.32,158.74,123.69,96.76],[1546.74,1549.01,123.69,96.76,123.69,96.76],[1549.01,1648.27,123.69,96.76,2.0,141.75],[1648.27,1655.77,2.0,141.75,2.0,141.75],[1655.77,1751.39,2.0,141.75,135.31,18.25],[1751.39,1755.08,135.31,18.25,135.31,18.25],[1755.08,1888.9,135.31,18.25,162.06,182.28],[1888.9,1898.08,162.06,182.28,162.06,182.28],[1898.08,1989.78,162.06,182.28,179.17,27.6],[1989.78,1994.39,179.17,27.6,179.17,27.6],[1994.39,2106.95,179.17,27.6,186.63,180.4],[2106.95,2110.57,186.63,180.4,186.63,180.4],[2110.57,2165.52,186.63,180.4,152.27,189.03],[2165.52,2174.74,152.27,189.03,152.27,189.03],[2174.74,2246.24,152.27,189.03,47.51,127.17],[2246.24,2254.58,47.51,127.17,47.51,127.17],[2254.58,2319.05,47.51,127.17,127.01,51.2],[2319.05,2321.6,127.01,51.2,127.01,51.2],[2321.6,2520.45,127.01,51.2,117.02,160.7],[2520.45,2527.99,117.02,160.7,117.02,160.7],[2527.99,2598.19,117.02,160.7,187.13,170.2],[2598.19,2604.57,187.13,170.2,187.13,170.2],[2604.57,2689.14,187.13,170.2,77.09,96.8],[2689.14,2695.55,77.09,96.8,77.09,96.8],[2695.55,2737.58,77.09,96.8,63.04,166.23],[2737.58,2743.23,63.04,166.23,63.04,166.23],[2743.23,2909.61,63.04,166.23,0.15,68.02],[2909.61,2915.78,0.15,68.02,0.15,68.02],[2915.78,2977.11,0.15,68.02,104.36,91.36],[2977.11,2983.39,104.36,91.36,104.36,91.36],[2983.39,3037.28,104.36,91.36,70.16,182.0],[3037.28,3039.25,70.16,182.0,70.16,182.0],[3039.25,3128.71,70.16,182.0,99.92,97.15],[3128.71,3130.01,99.92,97.15,99.92,97.15],[3130.01,3184.29,99.92,97.15,123.7,27.32],[3184.29,3185.13,123.7,27.32,123.7,27.32],[3185.13,3276.28,123.7,27.32,46.93,192.51],[3276.28,3276.44,46.93,192.51,46.93,192.51],[3276.44,3289.75,46.93,192.51,57.72,194.37],[3289.75,3299.56,57.72,194.37,57.72,194.37],[3299.56,3541.01,57.72,194.37,10.67,20.92],[3541.01,3542.37,10.67,20.92,10.67,20.92],[3542.37,3747.49,10.67,20.92,194.97,81.95],[3747.49,3754.32,194.97,81.95,194.97,81.95]],"30":[[0.0,72.53,65.21,35.17,174.11,54.47],[72.53,79.58,174.11,54.47,174.11,54.47],[79.58,136.38,174.11,54.47,124.84,122.1],[136.38,139.87,124.84,122.1,124.84,122.1],[139.87,216.53,124.84,122.1,41.98,74.68],[216.53,217.13,41.98,74.68,41.98,74.68],[217.13,386.51,41.98,74.68,184.62,182.86],[386.51,395.8,184.62,182.86,184.62,182.86],[395.8,458.82,184.62,182.86,116.45,118.26],[458.82,463.83,116.45,118.26,116.45,118.26],[463.83,532.29,116.45,118.26,48.23,38.23],[532.29,537.11,48.23,38.23,48.23,38.23],[537.11,706.41,48.23,38.23,159.68,132.05],[706.41,713.71,159.68,132.05,159.68,132.05],[713.71,772.47,159.68,132.05,139.09,37.79],[772.47,780.75,139.09,37.79,139.09,37.79],[780.75,807.72,139.09,37.79,184.21,63.67],[807.72,811.51,184.21,63.67,184.21,63.67],[811.51,861.99,184.21,63.67,153.32,137.3],[861.99,869.0,153.32,137.3,153.32,137.3],[869.0,931.69,153.32,137.3,92.66,117.39],[931.69,938.66,92.66,117.39,92.66,117.39],[938.66,997.45,92.66,117.39,9.41,116.07],[997.45,998.53,9.41,116.07,9.41,116.07],[998.53,1089.06,9.41,116.07,65.75,30.6],[1089.06,1095.37,65.75,30.6,65.75,30.6],[1095.37,1168.46,65.75,30.6,181.11,30.87],[1168.46,1170.4,181.11,30.87,181.11,30.87],[1170.4,1348.53,181.11,30.87,130.8,195.05],[1348.53,1349.69,130.8,195.05,130.8,195.05],[1349.69,1355.51,130.8,195.05,138.54,197.07],[1355.51,1357.59,138.54,197.07,138.54,197.07],[1357.59,1425.03,138.54,197.07,161.77,104.16],[1425.03,1430.9,161.77,104.16,161.77,104.16],[1430.9,1491.9,161.77,104.16,115.87,139.67],[1491.9,1496.88,115.87,139.67,115.87,139.67],[1496.88,1607.72,115.87,139.67,170.2,26.36],[1607.72,1616.44,170.2,26.36,170.2,26.36],[1616.44,1670.03,170.2,26.36,117.62,34.35],[1670.03,1676.86,117.62,34.35,117.62,34.35],[1676.86,1697.14,117.62,34.35,132.26,38.17],[1697.14,1701.12,132.26,38.17,132.26,38.17],[1701.12,1791.08,132.26,38.17,160.88,116.65],[1791.08,1800.02,160.88,116.65,160.88,116.65],[1800.02,1829.33,160.88,116.65,134.17,72.76],[1829.33,1833.59,134.17,72.76,134.17,72.76],[1833.59,1845.94,134.17,72.76,149.58,81.65],[1845.94,1849.97,149.58,81.65,149.58,81.65],[1849.97,1927.81,149.58,81.65,18.58,93.62],[1927.81,1937.76,18.58,93.62,18.58,93.62],[1937.76,1992.28,18.58,93.62,96.41,130.13],[1992.28,1998.68,96.41,130.13,96.41,130.13],[1998.68,2041.16,96.41,130.13,123.0,174.88],[2041.16,2043.99,123.0,174.88,123.0,174.88],[2043.99,2110.07,123.0,174.88,40.61,131.02],[2110.07,2118.79,40.61,131.02,40.61,131.02],[2118.79,2223.91,40.61,131.02,191.38,156.49],[2223.91,2227.76,191.38,156.49,191.38,156.49],[2227.76,2305.79,191.38,156.49,152.13,58.15],[2305.79,2313.06,152.13,58.15,152.13,58.15],[2313.06,2343.13,152.13,58.15,169.73,111.0],[2343.13,2351.52,169.73,111.0,169.73,111.0],[2351.52,2403.56,169.73,111.0,105.12,173.76],[2403.56,2407.93,105.12,173.76,105.12,173.76],[2407.93,2494.49,105.12,173.76,52.34,191.56],[2494.49,2500.52,52.34,191.56,52.34,191.56],[2500.52,2546.78,52.34,191.56,36.38,107.44],[2546.78,2556.37,36.38,107.44,36.38,107.44],[2556.37,2601.2,36.38,107.44,11.94,162.48],[2601.2,2607.33,11.94,162.48,11.94,162.48],[2607.33,2633.83,11.94,162.48,31.83,183.7],[2633.83,2635.41,31.83,183.7,31.83,183.7],[2635.41,2807.48,31.83,183.7,191.86,50.48],[2807.48,2808.32,191.86,50.48,191.86,50.48],[2808.32,2845.13,191.86,50.48,148.58,8.31],[2845.13,2853.29,148.58,8.31,148.58,8.31],[2853.29,2877.46,148.58,8.31,152.61,48.01],[2877.46,2877.76,152.61,48.01,152.61,48.01],[2877.76,2996.46,152.61,48.01,64.44,168.51],[2996.46,2998.66,64.44,168.51,64.44,168.51],[2998.66,3184.74,64.44,168.51,160.11,59.38],[3184.74,3194.62,160.11,59.38,160.11,59.38],[3194.62,3290.29,160.11,59.38,48.32,103.92],[3290.29,3296.41,48.32,103.92,48.32,103.92],[3296.41,3385.58,48.32,103.92,154.06,193.96],[3385.58,3388.73,154.06,193.96,154.06,193.96],[3388.73,3717.97,154.06,193.96,7.88,11.44],[3717.97,3718.84,7.88,11.44,7.88,11.44]]};
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
