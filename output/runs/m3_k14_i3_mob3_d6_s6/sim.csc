<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>m3_k14_i3_mob3_d6_s6</title>
    <randomseed>6</randomseed>
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
      <identifier>v_root_d6</identifier>
      <description>v_root_d6</description>
      <source>/home/user/project/build/variants/v_root_d6/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_root_d6.cooja</commands>
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
      <identifier>v_cli_d6_m0</identifier>
      <description>v_cli_d6_m0</description>
      <source>/home/user/project/build/variants/v_cli_d6_m0/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_cli_d6_m0.cooja</commands>
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
          <pos x="33.47" y="127.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>2</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="47.88" y="141.76" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>9</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="28.04" y="78.83" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>10</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="65.35" y="188.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>12</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="122.10" y="191.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>14</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="140.66" y="123.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>15</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="54.58" y="127.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>16</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="161.48" y="120.99" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>17</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="181.12" y="161.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>19</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="162.08" y="59.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>20</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="137.90" y="84.05" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>22</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="159.11" y="43.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>24</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_atk_a3_i3</identifier>
      <description>v_atk_a3_i3</description>
      <source>/home/user/project/build/variants/v_atk_a3_i3/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_atk_a3_i3.cooja</commands>
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
          <pos x="3.98" y="108.84" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>3</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.54" y="35.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>4</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="20.72" y="198.67" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>6</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="198.72" y="177.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>7</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="79.17" y="103.85" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>8</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="146.16" y="139.72" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>11</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="61.73" y="129.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>13</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.96" y="62.39" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>18</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="124.36" y="48.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>23</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="13.31" y="166.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>25</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="130.11" y="169.90" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>26</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="144.01" y="179.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>27</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="42.27" y="142.55" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>29</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="82.54" y="45.63" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>30</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_cli_d6_m1</identifier>
      <description>v_cli_d6_m1</description>
      <source>/home/user/project/build/variants/v_cli_d6_m1/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_cli_d6_m1.cooja</commands>
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
          <pos x="166.70" y="171.73" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>5</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="47.89" y="172.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>21</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="36.19" y="47.27" />
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
var S = {"4":[[0.0,92.64,0.54,35.25,133.22,36.06],[92.64,94.17,133.22,36.06,133.22,36.06],[94.17,310.84,133.22,36.06,48.04,180.07],[310.84,320.69,48.04,180.07,48.04,180.07],[320.69,394.14,48.04,180.07,80.42,107.77],[394.14,394.18,80.42,107.77,80.42,107.77],[394.18,437.26,80.42,107.77,40.09,107.5],[437.26,444.31,40.09,107.5,40.09,107.5],[444.31,487.07,40.09,107.5,42.13,70.89],[487.07,493.14,42.13,70.89,42.13,70.89],[493.14,556.73,42.13,70.89,120.92,68.25],[556.73,566.51,120.92,68.25,120.92,68.25],[566.51,683.2,120.92,68.25,174.61,157.82],[683.2,691.2,174.61,157.82,174.61,157.82],[691.2,792.93,174.61,157.82,6.65,159.23],[792.93,795.1,6.65,159.23,6.65,159.23],[795.1,940.03,6.65,159.23,47.26,26.62],[940.03,942.33,47.26,26.62,47.26,26.62],[942.33,1047.88,47.26,26.62,92.74,88.58],[1047.88,1056.36,92.74,88.58,92.74,88.58],[1056.36,1108.97,92.74,88.58,36.24,118.52],[1108.97,1116.82,36.24,118.52,36.24,118.52],[1116.82,1190.85,36.24,118.52,34.73,19.2],[1190.85,1198.33,34.73,19.2,34.73,19.2],[1198.33,1293.33,34.73,19.2,19.14,185.25],[1293.33,1302.33,19.14,185.25,19.14,185.25],[1302.33,1427.57,19.14,185.25,154.19,115.43],[1427.57,1430.74,154.19,115.43,154.19,115.43],[1430.74,1441.34,154.19,115.43,149.45,131.96],[1441.34,1446.84,149.45,131.96,149.45,131.96],[1446.84,1469.21,149.45,131.96,117.56,137.57],[1469.21,1476.35,117.56,137.57,117.56,137.57],[1476.35,1521.66,117.56,137.57,103.07,193.95],[1521.66,1529.86,103.07,193.95,103.07,193.95],[1529.86,1651.35,103.07,193.95,188.82,119.76],[1651.35,1661.27,188.82,119.76,188.82,119.76],[1661.27,1766.7,188.82,119.76,4.03,35.23],[1766.7,1774.22,4.03,35.23,4.03,35.23],[1774.22,1884.31,4.03,35.23,79.93,100.63],[1884.31,1888.67,79.93,100.63,79.93,100.63],[1888.67,1905.5,79.93,100.63,82.78,129.33],[1905.5,1913.03,82.78,129.33,82.78,129.33],[1913.03,1982.34,82.78,129.33,92.5,42.59],[1982.34,1983.77,92.5,42.59,92.5,42.59],[1983.77,2033.26,92.5,42.59,92.72,72.62],[2033.26,2036.91,92.72,72.62,92.72,72.62],[2036.91,2057.8,92.72,72.62,77.13,85.48],[2057.8,2059.47,77.13,85.48,77.13,85.48],[2059.47,2104.48,77.13,85.48,157.29,123.99],[2104.48,2107.84,157.29,123.99,157.29,123.99],[2107.84,2172.17,157.29,123.99,109.17,195.87],[2172.17,2176.51,109.17,195.87,109.17,195.87],[2176.51,2264.94,109.17,195.87,24.73,78.29],[2264.94,2270.88,24.73,78.29,24.73,78.29],[2270.88,2404.21,24.73,78.29,189.75,163.76],[2404.21,2412.54,189.75,163.76,189.75,163.76],[2412.54,2675.75,189.75,163.76,52.93,152.1],[2675.75,2682.22,52.93,152.1,52.93,152.1],[2682.22,2744.39,52.93,152.1,15.72,197.11],[2744.39,2752.91,15.72,197.11,15.72,197.11],[2752.91,2830.98,15.72,197.11,92.46,148.19],[2830.98,2832.88,92.46,148.19,92.46,148.19],[2832.88,2929.57,92.46,148.19,168.85,175.89],[2929.57,2931.57,168.85,175.89,168.85,175.89],[2931.57,2960.49,168.85,175.89,116.64,187.46],[2960.49,2962.09,116.64,187.46,116.64,187.46],[2962.09,3026.53,116.64,187.46,25.89,143.14],[3026.53,3031.93,25.89,143.14,25.89,143.14],[3031.93,3065.87,25.89,143.14,47.45,89.35],[3065.87,3075.86,47.45,89.35,47.45,89.35],[3075.86,3161.09,47.45,89.35,135.51,59.95],[3161.09,3165.65,135.51,59.95,135.51,59.95],[3165.65,3203.87,135.51,59.95,122.17,77.74],[3203.87,3208.91,122.17,77.74,122.17,77.74],[3208.91,3271.45,122.17,77.74,57.3,164.83],[3271.45,3271.79,57.3,164.83,57.3,164.83],[3271.79,3359.14,57.3,164.83,114.61,37.37],[3359.14,3368.72,114.61,37.37,114.61,37.37],[3368.72,3423.82,114.61,37.37,37.44,36.39],[3423.82,3430.56,37.44,36.39,37.44,36.39],[3430.56,3480.45,37.44,36.39,71.56,100.23],[3480.45,3480.97,71.56,100.23,71.56,100.23],[3480.97,3532.93,71.56,100.23,46.35,8.63],[3532.93,3536.39,46.35,8.63,46.35,8.63],[3536.39,3608.0,46.35,8.63,59.19,60.91],[3608.0,3614.64,59.19,60.91,59.19,60.91]],"5":[[0.0,104.04,166.7,171.73,130.56,38.24],[104.04,109.14,130.56,38.24,130.56,38.24],[109.14,240.86,130.56,38.24,4.63,163.44],[240.86,250.56,4.63,163.44,4.63,163.44],[250.56,435.05,4.63,163.44,197.52,59.01],[435.05,436.41,197.52,59.01,197.52,59.01],[436.41,566.4,197.52,59.01,112.16,112.36],[566.4,573.57,112.16,112.36,112.16,112.36],[573.57,622.46,112.16,112.36,53.27,148.33],[622.46,628.39,53.27,148.33,53.27,148.33],[628.39,719.32,53.27,148.33,144.13,191.29],[719.32,722.64,144.13,191.29,144.13,191.29],[722.64,753.17,144.13,191.29,102.97,194.72],[753.17,754.31,102.97,194.72,102.97,194.72],[754.31,852.72,102.97,194.72,65.49,105.5],[852.72,855.6,65.49,105.5,65.49,105.5],[855.6,936.88,65.49,105.5,172.81,19.18],[936.88,940.87,172.81,19.18,172.81,19.18],[940.87,1049.16,172.81,19.18,104.89,35.61],[1049.16,1058.55,104.89,35.61,104.89,35.61],[1058.55,1102.89,104.89,35.61,177.6,77.61],[1102.89,1106.66,177.6,77.61,177.6,77.61],[1106.66,1171.97,177.6,77.61,167.56,174.31],[1171.97,1173.24,167.56,174.31,167.56,174.31],[1173.24,1282.76,167.56,174.31,105.64,173.85],[1282.76,1290.09,105.64,173.85,105.64,173.85],[1290.09,1367.09,105.64,173.85,27.2,123.54],[1367.09,1375.01,27.2,123.54,27.2,123.54],[1375.01,1523.48,27.2,123.54,148.13,115.58],[1523.48,1525.01,148.13,115.58,148.13,115.58],[1525.01,1577.42,148.13,115.58,186.3,182.56],[1577.42,1584.36,186.3,182.56,186.3,182.56],[1584.36,1658.45,186.3,182.56,107.23,124.35],[1658.45,1660.34,107.23,124.35,107.23,124.35],[1660.34,1706.12,107.23,124.35,145.53,193.72],[1706.12,1713.55,145.53,193.72,145.53,193.72],[1713.55,1881.17,145.53,193.72,139.27,24.25],[1881.17,1882.35,139.27,24.25,139.27,24.25],[1882.35,1922.12,139.27,24.25,149.91,95.72],[1922.12,1927.7,149.91,95.72,149.91,95.72],[1927.7,1958.02,149.91,95.72,172.29,147.07],[1958.02,1959.29,172.29,147.07,172.29,147.07],[1959.29,2017.61,172.29,147.07,104.54,112.55],[2017.61,2026.24,104.54,112.55,104.54,112.55],[2026.24,2159.09,104.54,112.55,9.46,2.85],[2159.09,2163.65,9.46,2.85,9.46,2.85],[2163.65,2382.44,9.46,2.85,163.81,96.05],[2382.44,2385.06,163.81,96.05,163.81,96.05],[2385.06,2462.2,163.81,96.05,196.41,3.87],[2462.2,2468.07,196.41,3.87,196.41,3.87],[2468.07,2713.86,196.41,3.87,8.06,154.76],[2713.86,2715.54,8.06,154.76,8.06,154.76],[2715.54,3050.14,8.06,154.76,176.42,167.41],[3050.14,3052.12,176.42,167.41,176.42,167.41],[3052.12,3178.94,176.42,167.41,83.0,144.9],[3178.94,3182.81,83.0,144.9,83.0,144.9],[3182.81,3221.82,83.0,144.9,124.47,83.45],[3221.82,3225.74,124.47,83.45,124.47,83.45],[3225.74,3260.38,124.47,83.45,67.23,110.74],[3260.38,3261.13,67.23,110.74,67.23,110.74],[3261.13,3382.9,67.23,110.74,177.61,198.32],[3382.9,3390.67,177.61,198.32,177.61,198.32],[3390.67,3494.21,177.61,198.32,113.92,134.77],[3494.21,3504.15,113.92,134.77,113.92,134.77],[3504.15,3637.31,113.92,134.77,41.88,41.06],[3637.31,3641.82,41.88,41.06,41.88,41.06]],"7":[[0.0,195.16,198.72,177.27,72.2,61.44],[195.16,203.48,72.2,61.44,72.2,61.44],[203.48,254.84,72.2,61.44,87.15,104.81],[254.84,261.19,87.15,104.81,87.15,104.81],[261.19,325.23,87.15,104.81,8.57,193.46],[325.23,330.42,8.57,193.46,8.57,193.46],[330.42,554.48,8.57,193.46,165.27,125.97],[554.48,563.15,165.27,125.97,165.27,125.97],[563.15,637.03,165.27,125.97,102.77,111.88],[637.03,641.98,102.77,111.88,102.77,111.88],[641.98,707.41,102.77,111.88,184.12,24.31],[707.41,711.6,184.12,24.31,184.12,24.31],[711.6,792.61,184.12,24.31,120.4,17.11],[792.61,798.7,120.4,17.11,120.4,17.11],[798.7,861.52,120.4,17.11,52.99,89.53],[861.52,866.47,52.99,89.53,52.99,89.53],[866.47,927.77,52.99,89.53,72.03,184.87],[927.77,931.3,72.03,184.87,72.03,184.87],[931.3,1012.48,72.03,184.87,85.78,26.28],[1012.48,1014.25,85.78,26.28,85.78,26.28],[1014.25,1035.59,85.78,26.28,97.04,56.84],[1035.59,1035.9,97.04,56.84,97.04,56.84],[1035.9,1163.01,97.04,56.84,9.31,89.44],[1163.01,1167.62,9.31,89.44,9.31,89.44],[1167.62,1316.21,9.31,89.44,123.35,178.34],[1316.21,1325.97,123.35,178.34,123.35,178.34],[1325.97,1406.04,123.35,178.34,77.08,163.1],[1406.04,1411.47,77.08,163.1,77.08,163.1],[1411.47,1450.63,77.08,163.1,8.13,128.33],[1450.63,1458.39,8.13,128.33,8.13,128.33],[1458.39,1492.67,8.13,128.33,72.41,111.16],[1492.67,1499.25,72.41,111.16,72.41,111.16],[1499.25,1532.73,72.41,111.16,87.82,62.16],[1532.73,1540.35,87.82,62.16,87.82,62.16],[1540.35,1661.39,87.82,62.16,146.4,135.02],[1661.39,1663.06,146.4,135.02,146.4,135.02],[1663.06,1744.23,146.4,135.02,79.25,150.19],[1744.23,1749.81,79.25,150.19,79.25,150.19],[1749.81,1776.04,79.25,150.19,65.21,129.39],[1776.04,1785.42,65.21,129.39,65.21,129.39],[1785.42,1826.25,65.21,129.39,103.79,88.3],[1826.25,1828.01,103.79,88.3,103.79,88.3],[1828.01,1873.57,103.79,88.3,72.97,76.38],[1873.57,1877.57,72.97,76.38,72.97,76.38],[1877.57,2028.51,72.97,76.38,153.3,156.81],[2028.51,2038.07,153.3,156.81,153.3,156.81],[2038.07,2173.49,153.3,156.81,167.13,70.52],[2173.49,2180.16,167.13,70.52,167.13,70.52],[2180.16,2267.37,167.13,70.52,75.75,6.96],[2267.37,2269.35,75.75,6.96,75.75,6.96],[2269.35,2373.82,75.75,6.96,3.71,96.06],[2373.82,2375.41,3.71,96.06,3.71,96.06],[2375.41,2591.33,3.71,96.06,172.6,73.83],[2591.33,2595.3,172.6,73.83,172.6,73.83],[2595.3,2649.75,172.6,73.83,184.59,14.77],[2649.75,2654.8,184.59,14.77,184.59,14.77],[2654.8,2812.76,184.59,14.77,1.99,24.65],[2812.76,2814.83,1.99,24.65,1.99,24.65],[2814.83,2980.2,1.99,24.65,73.55,97.4],[2980.2,2981.33,73.55,97.4,73.55,97.4],[2981.33,3053.38,73.55,97.4,62.7,134.79],[3053.38,3054.22,62.7,134.79,62.7,134.79],[3054.22,3101.64,62.7,134.79,122.37,85.85],[3101.64,3110.18,122.37,85.85,122.37,85.85],[3110.18,3233.99,122.37,85.85,171.87,8.28],[3233.99,3237.76,171.87,8.28,171.87,8.28],[3237.76,3388.78,171.87,8.28,158.42,173.07],[3388.78,3389.76,158.42,173.07,158.42,173.07],[3389.76,3394.87,158.42,173.07,162.1,178.56],[3394.87,3396.22,162.1,178.56,162.1,178.56],[3396.22,3553.93,162.1,178.56,57.29,152.03],[3553.93,3557.83,57.29,152.03,57.29,152.03],[3557.83,3588.03,57.29,152.03,99.06,141.31],[3588.03,3594.61,99.06,141.31,99.06,141.31],[3594.61,3636.6,99.06,141.31,92.91,65.15],[3636.6,3643.31,92.91,65.15,92.91,65.15]],"8":[[0.0,96.17,79.17,103.85,167.88,128.94],[96.17,96.25,167.88,128.94,167.88,128.94],[96.25,106.56,167.88,128.94,175.69,144.84],[106.56,113.91,175.69,144.84,175.69,144.84],[113.91,139.87,175.69,144.84,185.79,108.58],[139.87,142.56,185.79,108.58,185.79,108.58],[142.56,348.29,185.79,108.58,88.06,46.57],[348.29,352.96,88.06,46.57,88.06,46.57],[352.96,423.6,88.06,46.57,116.24,168.18],[423.6,432.14,116.24,168.18,116.24,168.18],[432.14,496.93,116.24,168.18,74.53,60.27],[496.93,504.3,74.53,60.27,74.53,60.27],[504.3,536.57,74.53,60.27,121.49,42.1],[536.57,542.25,121.49,42.1,121.49,42.1],[542.25,630.95,121.49,42.1,93.58,90.43],[630.95,638.33,93.58,90.43,93.58,90.43],[638.33,719.43,93.58,90.43,12.08,45.13],[719.43,725.4,12.08,45.13,12.08,45.13],[725.4,759.97,12.08,45.13,80.1,54.3],[759.97,762.71,80.1,54.3,80.1,54.3],[762.71,943.25,80.1,54.3,199.56,65.0],[943.25,950.75,199.56,65.0,199.56,65.0],[950.75,1007.73,199.56,65.0,112.07,16.06],[1007.73,1017.31,112.07,16.06,112.07,16.06],[1017.31,1129.84,112.07,16.06,14.65,191.34],[1129.84,1131.85,14.65,191.34,14.65,191.34],[1131.85,1259.0,14.65,191.34,90.4,93.55],[1259.0,1261.56,90.4,93.55,90.4,93.55],[1261.56,1308.1,90.4,93.55,171.28,87.88],[1308.1,1310.69,171.28,87.88,171.28,87.88],[1310.69,1422.33,171.28,87.88,35.02,17.81],[1422.33,1423.38,35.02,17.81,35.02,17.81],[1423.38,1573.65,35.02,17.81,165.18,80.53],[1573.65,1574.7,165.18,80.53,165.18,80.53],[1574.7,1600.0,165.18,80.53,150.21,38.49],[1600.0,1601.64,150.21,38.49,150.21,38.49],[1601.64,1667.41,150.21,38.49,172.42,10.77],[1667.41,1669.84,172.42,10.77,172.42,10.77],[1669.84,1753.01,172.42,10.77,66.57,14.93],[1753.01,1757.9,66.57,14.93,66.57,14.93],[1757.9,1821.4,66.57,14.93,120.87,64.42],[1821.4,1821.44,120.87,64.42,120.87,64.42],[1821.44,1911.73,120.87,64.42,51.04,176.84],[1911.73,1912.06,51.04,176.84,51.04,176.84],[1912.06,1980.29,51.04,176.84,82.6,51.58],[1980.29,1986.87,82.6,51.58,82.6,51.58],[1986.87,2014.46,82.6,51.58,117.05,87.98],[2014.46,2017.05,117.05,87.98,117.05,87.98],[2017.05,2037.72,117.05,87.98,150.59,97.26],[2037.72,2040.53,150.59,97.26,150.59,97.26],[2040.53,2060.18,150.59,97.26,150.24,82.11],[2060.18,2069.73,150.24,82.11,150.24,82.11],[2069.73,2088.09,150.24,82.11,126.27,57.61],[2088.09,2090.93,126.27,57.61,126.27,57.61],[2090.93,2295.56,126.27,57.61,26.97,188.47],[2295.56,2302.58,26.97,188.47,26.97,188.47],[2302.58,2422.28,26.97,188.47,34.68,126.84],[2422.28,2428.12,34.68,126.84,34.68,126.84],[2428.12,2504.45,34.68,126.84,120.26,151.54],[2504.45,2513.63,120.26,151.54,120.26,151.54],[2513.63,2544.87,120.26,151.54,65.67,140.66],[2544.87,2554.79,65.67,140.66,65.67,140.66],[2554.79,2794.34,65.67,140.66,199.79,153.32],[2794.34,2795.99,199.79,153.32,199.79,153.32],[2795.99,2920.43,199.79,153.32,39.14,3.09],[2920.43,2921.46,39.14,3.09,39.14,3.09],[2921.46,3084.58,39.14,3.09,5.63,108.26],[3084.58,3087.44,5.63,108.26,5.63,108.26],[3087.44,3182.26,5.63,108.26,14.15,179.83],[3182.26,3186.97,14.15,179.83,14.15,179.83],[3186.97,3278.75,14.15,179.83,70.79,24.23],[3278.75,3278.82,70.79,24.23,70.79,24.23],[3278.82,3490.92,70.79,24.23,199.12,144.15],[3490.92,3497.77,199.12,144.15,199.12,144.15],[3497.77,3564.1,199.12,144.15,152.0,22.56],[3564.1,3569.09,152.0,22.56,152.0,22.56],[3569.09,3652.09,152.0,22.56,150.2,151.92],[3652.09,3660.99,150.2,151.92,150.2,151.92]],"13":[[0.0,47.19,61.73,129.2,116.83,76.82],[47.19,52.01,116.83,76.82,116.83,76.82],[52.01,182.82,116.83,76.82,120.68,196.56],[182.82,187.12,120.68,196.56,120.68,196.56],[187.12,287.61,120.68,196.56,109.35,14.89],[287.61,293.45,109.35,14.89,109.35,14.89],[293.45,372.22,109.35,14.89,197.81,57.13],[372.22,382.05,197.81,57.13,197.81,57.13],[382.05,559.66,197.81,57.13,75.34,97.67],[559.66,568.92,75.34,97.67,75.34,97.67],[568.92,612.47,75.34,97.67,133.27,34.72],[612.47,615.99,133.27,34.72,133.27,34.72],[615.99,720.28,133.27,34.72,35.08,180.11],[720.28,723.02,35.08,180.11,35.08,180.11],[723.02,792.61,35.08,180.11,123.29,93.51],[792.61,800.49,123.29,93.51,123.29,93.51],[800.49,872.6,123.29,93.51,28.0,154.01],[872.6,878.73,28.0,154.01,28.0,154.01],[878.73,897.4,28.0,154.01,49.24,136.73],[897.4,900.35,49.24,136.73,49.24,136.73],[900.35,963.79,49.24,136.73,94.08,20.68],[963.79,970.03,94.08,20.68,94.08,20.68],[970.03,1161.89,94.08,20.68,46.76,115.74],[1161.89,1164.03,46.76,115.74,46.76,115.74],[1164.03,1218.79,46.76,115.74,99.54,60.99],[1218.79,1225.41,99.54,60.99,99.54,60.99],[1225.41,1320.49,99.54,60.99,77.21,191.46],[1320.49,1327.34,77.21,191.46,77.21,191.46],[1327.34,1462.31,77.21,191.46,75.04,21.09],[1462.31,1466.65,75.04,21.09,75.04,21.09],[1466.65,1650.13,75.04,21.09,158.48,135.97],[1650.13,1658.71,158.48,135.97,158.48,135.97],[1658.71,1749.03,158.48,135.97,45.06,7.67],[1749.03,1756.43,45.06,7.67,45.06,7.67],[1756.43,1794.23,45.06,7.67,1.62,8.29],[1794.23,1803.06,1.62,8.29,1.62,8.29],[1803.06,1908.23,1.62,8.29,73.67,190.47],[1908.23,1912.63,73.67,190.47,73.67,190.47],[1912.63,2113.9,73.67,190.47,143.28,10.61],[2113.9,2116.5,143.28,10.61,143.28,10.61],[2116.5,2236.72,143.28,10.61,48.4,176.64],[2236.72,2242.88,48.4,176.64,48.4,176.64],[2242.88,2364.51,48.4,176.64,110.69,27.62],[2364.51,2369.5,110.69,27.62,110.69,27.62],[2369.5,2390.34,110.69,27.62,78.36,9.03],[2390.34,2391.88,78.36,9.03,78.36,9.03],[2391.88,2451.61,78.36,9.03,88.98,81.36],[2451.61,2454.15,88.98,81.36,88.98,81.36],[2454.15,2495.43,88.98,81.36,152.54,107.57],[2495.43,2495.87,152.54,107.57,152.54,107.57],[2495.87,2535.62,152.54,107.57,111.91,153.83],[2535.62,2543.61,111.91,153.83,111.91,153.83],[2543.61,2581.79,111.91,153.83,66.93,135.86],[2581.79,2588.82,66.93,135.86,66.93,135.86],[2588.82,2650.78,66.93,135.86,54.64,55.21],[2650.78,2652.23,54.64,55.21,54.64,55.21],[2652.23,2654.72,54.64,55.21,51.98,52.9],[2654.72,2658.55,51.98,52.9,51.98,52.9],[2658.55,2764.76,51.98,52.9,109.41,90.18],[2764.76,2767.31,109.41,90.18,109.41,90.18],[2767.31,2817.95,109.41,90.18,139.07,41.77],[2817.95,2825.28,139.07,41.77,139.07,41.77],[2825.28,2933.86,139.07,41.77,42.26,182.57],[2933.86,2941.39,42.26,182.57,42.26,182.57],[2941.39,2982.81,42.26,182.57,17.33,184.7],[2982.81,2987.77,17.33,184.7,17.33,184.7],[2987.77,3096.77,17.33,184.7,133.74,117.73],[3096.77,3101.18,133.74,117.73,133.74,117.73],[3101.18,3109.72,133.74,117.73,129.9,132.07],[3109.72,3115.08,129.9,132.07,129.9,132.07],[3115.08,3138.84,129.9,132.07,110.69,175.12],[3138.84,3143.27,110.69,175.12,110.69,175.12],[3143.27,3342.1,110.69,175.12,177.94,3.34],[3342.1,3344.62,177.94,3.34,177.94,3.34],[3344.62,3431.32,177.94,3.34,199.41,153.13],[3431.32,3439.47,199.41,153.13,199.41,153.13],[3439.47,3456.72,199.41,153.13,167.26,141.48],[3456.72,3465.74,167.26,141.48,167.26,141.48],[3465.74,3500.88,167.26,141.48,131.82,153.96],[3500.88,3509.36,131.82,153.96,131.82,153.96],[3509.36,3582.55,131.82,153.96,40.72,83.21],[3582.55,3589.91,40.72,83.21,40.72,83.21],[3589.91,3795.16,40.72,83.21,189.99,113.99],[3795.16,3797.72,189.99,113.99,189.99,113.99]],"21":[[0.0,63.47,47.89,172.18,47.58,133.64],[63.47,68.13,47.58,133.64,47.58,133.64],[68.13,140.78,47.58,133.64,154.44,139.39],[140.78,143.35,154.44,139.39,154.44,139.39],[143.35,327.11,154.44,139.39,55.09,99.43],[327.11,331.69,55.09,99.43,55.09,99.43],[331.69,445.66,55.09,99.43,122.9,98.95],[445.66,451.66,122.9,98.95,122.9,98.95],[451.66,635.81,122.9,98.95,20.38,6.64],[635.81,639.52,20.38,6.64,20.38,6.64],[639.52,744.9,20.38,6.64,175.76,137.32],[744.9,753.41,175.76,137.32,175.76,137.32],[753.41,944.14,175.76,137.32,15.84,95.75],[944.14,946.49,15.84,95.75,15.84,95.75],[946.49,992.54,15.84,95.75,41.58,168.27],[992.54,996.82,41.58,168.27,41.58,168.27],[996.82,1080.13,41.58,168.27,75.79,39.16],[1080.13,1083.19,75.79,39.16,75.79,39.16],[1083.19,1125.45,75.79,39.16,45.74,83.18],[1125.45,1128.96,45.74,83.18,45.74,83.18],[1128.96,1263.45,45.74,83.18,152.98,93.33],[1263.45,1271.09,152.98,93.33,152.98,93.33],[1271.09,1307.1,152.98,93.33,104.36,84.94],[1307.1,1315.75,104.36,84.94,104.36,84.94],[1315.75,1346.83,104.36,84.94,124.55,52.5],[1346.83,1349.53,124.55,52.5,124.55,52.5],[1349.53,1406.52,124.55,52.5,187.96,94.56],[1406.52,1407.01,187.96,94.56,187.96,94.56],[1407.01,1518.77,187.96,94.56,36.22,146.88],[1518.77,1520.69,36.22,146.88,36.22,146.88],[1520.69,1723.21,36.22,146.88,130.66,76.73],[1723.21,1726.4,130.66,76.73,130.66,76.73],[1726.4,1759.28,130.66,76.73,115.65,140.71],[1759.28,1764.4,115.65,140.71,115.65,140.71],[1764.4,1817.09,115.65,140.71,158.88,73.01],[1817.09,1825.63,158.88,73.01,158.88,73.01],[1825.63,1996.26,158.88,73.01,42.06,169.32],[1996.26,2003.8,42.06,169.32,42.06,169.32],[2003.8,2114.23,42.06,169.32,126.76,126.07],[2114.23,2115.55,126.76,126.07,126.76,126.07],[2115.55,2144.41,126.76,126.07,160.91,168.62],[2144.41,2146.57,160.91,168.62,160.91,168.62],[2146.57,2235.85,160.91,168.62,23.38,190.8],[2235.85,2243.2,23.38,190.8,23.38,190.8],[2243.2,2358.44,23.38,190.8,197.31,155.31],[2358.44,2359.59,197.31,155.31,197.31,155.31],[2359.59,2431.28,197.31,155.31,132.94,28.73],[2431.28,2432.08,132.94,28.73,132.94,28.73],[2432.08,2500.96,132.94,28.73,135.6,99.95],[2500.96,2509.58,135.6,99.95,135.6,99.95],[2509.58,2561.4,135.6,99.95,141.04,196.2],[2561.4,2570.99,141.04,196.2,141.04,196.2],[2570.99,2732.89,141.04,196.2,1.78,177.85],[2732.89,2740.24,1.78,177.85,1.78,177.85],[2740.24,2846.78,1.78,177.85,137.57,74.23],[2846.78,2855.32,137.57,74.23,137.57,74.23],[2855.32,2889.2,137.57,74.23,80.03,73.42],[2889.2,2897.05,80.03,73.42,80.03,73.42],[2897.05,2990.18,80.03,73.42,111.29,143.76],[2990.18,2993.12,111.29,143.76,111.29,143.76],[2993.12,3058.73,111.29,143.76,54.98,73.82],[3058.73,3061.71,54.98,73.82,54.98,73.82],[3061.71,3133.78,54.98,73.82,99.82,164.42],[3133.78,3142.23,99.82,164.42,99.82,164.42],[3142.23,3246.16,99.82,164.42,195.56,33.99],[3246.16,3247.93,195.56,33.99,195.56,33.99],[3247.93,3306.66,195.56,33.99,94.0,83.44],[3306.66,3310.62,94.0,83.44,94.0,83.44],[3310.62,3412.0,94.0,83.44,19.44,198.87],[3412.0,3415.37,19.44,198.87,19.44,198.87],[3415.37,3600.68,19.44,198.87,153.55,154.21],[3600.68,3601.75,153.55,154.21,153.55,154.21]],"27":[[0.0,118.61,144.01,179.48,121.38,88.96],[118.61,120.72,121.38,88.96,121.38,88.96],[120.72,151.46,121.38,88.96,125.38,130.07],[151.46,154.08,125.38,130.07,125.38,130.07],[154.08,256.76,125.38,130.07,33.51,147.02],[256.76,262.48,33.51,147.02,33.51,147.02],[262.48,330.08,33.51,147.02,33.75,29.86],[330.08,339.16,33.75,29.86,33.75,29.86],[339.16,379.85,33.75,29.86,105.36,23.96],[379.85,386.0,105.36,23.96,105.36,23.96],[386.0,405.38,105.36,23.96,86.06,36.76],[405.38,405.83,86.06,36.76,86.06,36.76],[405.83,540.58,86.06,36.76,173.22,124.63],[540.58,550.52,173.22,124.63,173.22,124.63],[550.52,560.62,173.22,124.63,181.68,129.16],[560.62,562.47,181.68,129.16,181.68,129.16],[562.47,742.46,181.68,129.16,5.75,145.09],[742.46,745.58,5.75,145.09,5.75,145.09],[745.58,872.76,5.75,145.09,186.98,117.08],[872.76,879.57,186.98,117.08,186.98,117.08],[879.57,909.33,186.98,117.08,150.04,74.09],[909.33,918.73,150.04,74.09,150.04,74.09],[918.73,1015.97,150.04,74.09,14.55,191.28],[1015.97,1019.53,14.55,191.28,14.55,191.28],[1019.53,1139.14,14.55,191.28,149.9,102.43],[1139.14,1139.37,149.9,102.43,149.9,102.43],[1139.37,1177.98,149.9,102.43,197.64,77.29],[1177.98,1186.67,197.64,77.29,197.64,77.29],[1186.67,1237.61,197.64,77.29,126.48,17.53],[1237.61,1247.47,126.48,17.53,126.48,17.53],[1247.47,1372.67,126.48,17.53,68.45,71.19],[1372.67,1381.65,68.45,71.19,68.45,71.19],[1381.65,1426.7,68.45,71.19,149.69,76.33],[1426.7,1436.23,149.69,76.33,149.69,76.33],[1436.23,1453.87,149.69,76.33,127.91,55.51],[1453.87,1462.46,127.91,55.51,127.91,55.51],[1462.46,1576.7,127.91,55.51,52.55,186.89],[1576.7,1579.38,52.55,186.89,52.55,186.89],[1579.38,1698.39,52.55,186.89,184.22,60.98],[1698.39,1702.83,184.22,60.98,184.22,60.98],[1702.83,1790.99,184.22,60.98,139.25,23.95],[1790.99,1792.22,139.25,23.95,139.25,23.95],[1792.22,1939.18,139.25,23.95,27.66,46.64],[1939.18,1943.39,27.66,46.64,27.66,46.64],[1943.39,2053.44,27.66,46.64,69.82,187.03],[2053.44,2056.41,69.82,187.03,69.82,187.03],[2056.41,2123.95,69.82,187.03,120.16,68.26],[2123.95,2124.39,120.16,68.26,120.16,68.26],[2124.39,2277.59,120.16,68.26,24.37,77.43],[2277.59,2284.72,24.37,77.43,24.37,77.43],[2284.72,2406.69,24.37,77.43,165.52,34.52],[2406.69,2407.16,165.52,34.52,165.52,34.52],[2407.16,2498.38,165.52,34.52,114.47,126.0],[2498.38,2506.92,114.47,126.0,114.47,126.0],[2506.92,2522.96,114.47,126.0,130.34,105.78],[2522.96,2525.48,130.34,105.78,130.34,105.78],[2525.48,2626.91,130.34,105.78,36.51,154.79],[2626.91,2628.8,36.51,154.79,36.51,154.79],[2628.8,2773.07,36.51,154.79,131.9,73.39],[2773.07,2782.8,131.9,73.39,131.9,73.39],[2782.8,2879.91,131.9,73.39,188.34,193.84],[2879.91,2889.37,188.34,193.84,188.34,193.84],[2889.37,3122.22,188.34,193.84,99.49,24.03],[3122.22,3122.46,99.49,24.03,99.49,24.03],[3122.46,3156.8,99.49,24.03,38.38,31.67],[3156.8,3160.07,38.38,31.67,38.38,31.67],[3160.07,3251.95,38.38,31.67,120.75,55.18],[3251.95,3259.83,120.75,55.18,120.75,55.18],[3259.83,3334.36,120.75,55.18,167.06,133.88],[3334.36,3339.39,167.06,133.88,167.06,133.88],[3339.39,3543.44,167.06,133.88,73.31,24.84],[3543.44,3548.56,73.31,24.84,73.31,24.84],[3548.56,3602.74,73.31,24.84,68.33,113.01],[3602.74,3604.63,68.33,113.01,68.33,113.01]],"28":[[0.0,62.98,36.19,47.27,33.16,84.06],[62.98,64.89,33.16,84.06,33.16,84.06],[64.89,229.71,33.16,84.06,196.38,188.62],[229.71,236.16,196.38,188.62,196.38,188.62],[236.16,584.36,196.38,188.62,71.62,20.36],[584.36,592.37,71.62,20.36,71.62,20.36],[592.37,684.85,71.62,20.36,133.36,141.96],[684.85,694.54,133.36,141.96,133.36,141.96],[694.54,817.02,133.36,141.96,156.45,16.92],[817.02,821.39,156.45,16.92,156.45,16.92],[821.39,990.61,156.45,16.92,32.98,196.41],[990.61,995.3,32.98,196.41,32.98,196.41],[995.3,1058.22,32.98,196.41,109.35,141.25],[1058.22,1061.94,109.35,141.25,109.35,141.25],[1061.94,1094.81,109.35,141.25,86.71,189.06],[1094.81,1098.41,86.71,189.06,86.71,189.06],[1098.41,1185.58,86.71,189.06,57.53,60.31],[1185.58,1191.81,57.53,60.31,57.53,60.31],[1191.81,1339.95,57.53,60.31,140.48,150.03],[1339.95,1349.07,140.48,150.03,140.48,150.03],[1349.07,1438.08,140.48,150.03,29.59,61.65],[1438.08,1442.33,29.59,61.65,29.59,61.65],[1442.33,1571.89,29.59,61.65,110.95,38.93],[1571.89,1573.13,110.95,38.93,110.95,38.93],[1573.13,1674.88,110.95,38.93,113.7,110.06],[1674.88,1681.33,113.7,110.06,113.7,110.06],[1681.33,1729.11,113.7,110.06,126.74,43.53],[1729.11,1735.37,126.74,43.53,126.74,43.53],[1735.37,1817.23,126.74,43.53,50.07,120.08],[1817.23,1821.9,50.07,120.08,50.07,120.08],[1821.9,1899.02,50.07,120.08,170.98,151.99],[1899.02,1899.87,170.98,151.99,170.98,151.99],[1899.87,2033.43,170.98,151.99,194.59,51.43],[2033.43,2037.32,194.59,51.43,194.59,51.43],[2037.32,2088.27,194.59,51.43,124.44,99.3],[2088.27,2089.22,124.44,99.3,124.44,99.3],[2089.22,2104.43,124.44,99.3,137.4,86.91],[2104.43,2113.74,137.4,86.91,137.4,86.91],[2113.74,2173.14,137.4,86.91,125.48,12.09],[2173.14,2183.13,125.48,12.09,125.48,12.09],[2183.13,2404.28,125.48,12.09,10.69,183.38],[2404.28,2411.5,10.69,183.38,10.69,183.38],[2411.5,2560.03,10.69,183.38,94.38,110.33],[2560.03,2564.38,94.38,110.33,94.38,110.33],[2564.38,2602.53,94.38,110.33,63.43,51.19],[2602.53,2603.38,63.43,51.19,63.43,51.19],[2603.38,2665.38,63.43,51.19,144.49,100.8],[2665.38,2665.7,144.49,100.8,144.49,100.8],[2665.7,2725.26,144.49,100.8,107.14,20.47],[2725.26,2731.43,107.14,20.47,107.14,20.47],[2731.43,2936.04,107.14,20.47,75.11,188.69],[2936.04,2939.98,75.11,188.69,75.11,188.69],[2939.98,3028.16,75.11,188.69,5.01,98.02],[3028.16,3033.69,5.01,98.02,5.01,98.02],[3033.69,3269.33,5.01,98.02,139.59,196.13],[3269.33,3276.41,139.59,196.13,139.59,196.13],[3276.41,3341.85,139.59,196.13,195.75,137.86],[3341.85,3348.86,195.75,137.86,195.75,137.86],[3348.86,3611.94,195.75,137.86,24.59,169.03],[3611.94,3614.47,24.59,169.03,24.59,169.03]],"29":[[0.0,113.24,42.27,142.55,10.99,57.25],[113.24,114.62,10.99,57.25,10.99,57.25],[114.62,155.92,10.99,57.25,38.65,56.92],[155.92,161.56,38.65,56.92,38.65,56.92],[161.56,276.34,38.65,56.92,139.76,156.35],[276.34,285.03,139.76,156.35,139.76,156.35],[285.03,376.49,139.76,156.35,111.69,15.32],[376.49,379.15,111.69,15.32,111.69,15.32],[379.15,394.32,111.69,15.32,141.35,19.54],[394.32,401.7,141.35,19.54,141.35,19.54],[401.7,584.87,141.35,19.54,30.8,2.57],[584.87,586.77,30.8,2.57,30.8,2.57],[586.77,617.72,30.8,2.57,51.39,52.23],[617.72,624.65,51.39,52.23,51.39,52.23],[624.65,689.72,51.39,52.23,132.61,2.12],[689.72,690.62,132.61,2.12,132.61,2.12],[690.62,758.55,132.61,2.12,185.06,101.95],[758.55,761.59,185.06,101.95,185.06,101.95],[761.59,905.9,185.06,101.95,119.27,43.7],[905.9,910.23,119.27,43.7,119.27,43.7],[910.23,992.42,119.27,43.7,25.88,125.75],[992.42,999.96,25.88,125.75,25.88,125.75],[999.96,1024.66,25.88,125.75,45.35,137.51],[1024.66,1027.43,45.35,137.51,45.35,137.51],[1027.43,1112.25,45.35,137.51,150.14,108.28],[1112.25,1114.55,150.14,108.28,150.14,108.28],[1114.55,1182.1,150.14,108.28,178.49,131.98],[1182.1,1190.75,178.49,131.98,178.49,131.98],[1190.75,1450.73,178.49,131.98,49.03,172.06],[1450.73,1453.98,49.03,172.06,49.03,172.06],[1453.98,1497.96,49.03,172.06,5.97,114.45],[1497.96,1503.95,5.97,114.45,5.97,114.45],[1503.95,1602.41,5.97,114.45,171.8,161.37],[1602.41,1605.08,171.8,161.37,171.8,161.37],[1605.08,1844.83,171.8,161.37,3.5,67.37],[1844.83,1848.39,3.5,67.37,3.5,67.37],[1848.39,1955.4,3.5,67.37,123.46,198.54],[1955.4,1962.61,123.46,198.54,123.46,198.54],[1962.61,2085.02,123.46,198.54,7.7,91.51],[2085.02,2092.82,7.7,91.51,7.7,91.51],[2092.82,2207.27,7.7,91.51,40.04,198.79],[2207.27,2211.06,40.04,198.79,40.04,198.79],[2211.06,2227.83,40.04,198.79,53.79,174.15],[2227.83,2232.52,53.79,174.15,53.79,174.15],[2232.52,2256.68,53.79,174.15,91.11,185.56],[2256.68,2260.64,91.11,185.56,91.11,185.56],[2260.64,2319.29,91.11,185.56,114.26,83.99],[2319.29,2327.75,114.26,83.99,114.26,83.99],[2327.75,2345.61,114.26,83.99,94.47,104.59],[2345.61,2352.14,94.47,104.59,94.47,104.59],[2352.14,2431.54,94.47,104.59,122.58,181.76],[2431.54,2438.23,122.58,181.76,122.58,181.76],[2438.23,2542.72,122.58,181.76,196.69,59.64],[2542.72,2543.9,196.69,59.64,196.69,59.64],[2543.9,2568.46,196.69,59.64,163.19,32.64],[2568.46,2574.19,163.19,32.64,163.19,32.64],[2574.19,2662.49,163.19,32.64,132.5,188.18],[2662.49,2671.02,132.5,188.18,132.5,188.18],[2671.02,2783.35,132.5,188.18,114.08,47.22],[2783.35,2783.7,114.08,47.22,114.08,47.22],[2783.7,2813.39,114.08,47.22,69.75,78.98],[2813.39,2814.86,69.75,78.98,69.75,78.98],[2814.86,2877.37,69.75,78.98,100.66,181.39],[2877.37,2883.81,100.66,181.39,100.66,181.39],[2883.81,2890.97,100.66,181.39,103.27,167.43],[2890.97,2893.06,103.27,167.43,103.27,167.43],[2893.06,3035.03,103.27,167.43,140.14,32.1],[3035.03,3041.86,140.14,32.1,140.14,32.1],[3041.86,3198.22,140.14,32.1,81.7,161.92],[3198.22,3206.56,81.7,161.92,81.7,161.92],[3206.56,3414.91,81.7,161.92,48.43,23.67],[3414.91,3418.69,48.43,23.67,48.43,23.67],[3418.69,3707.82,48.43,23.67,173.7,122.74],[3707.82,3715.01,173.7,122.74,173.7,122.74]]};
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
