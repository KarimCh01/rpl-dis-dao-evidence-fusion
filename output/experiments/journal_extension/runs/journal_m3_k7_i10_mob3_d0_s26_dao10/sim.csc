<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>journal_m3_k7_i10_mob3_d0_s26_dao10</title>
    <randomseed>26</randomseed>
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
      <identifier>v_root_d0</identifier>
      <description>v_root_d0</description>
      <source>/home/user/project/build/variants/v_root_d0/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_root_d0.cooja</commands>
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
      <identifier>v_cli_d0_m0</identifier>
      <description>v_cli_d0_m0</description>
      <source>/home/user/project/build/variants/v_cli_d0_m0/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_cli_d0_m0.cooja</commands>
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
          <pos x="181.51" y="64.70" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>2</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="41.93" y="92.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>3</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="66.36" y="39.90" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>5</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="178.18" y="132.55" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>7</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="101.26" y="197.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>8</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="38.05" y="123.89" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>12</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="199.76" y="39.95" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>14</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="164.13" y="28.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>16</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="73.79" y="47.81" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>17</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="54.87" y="176.76" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>18</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="77.93" y="74.81" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>20</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="131.70" y="147.84" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>22</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="119.64" y="182.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>23</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="77.53" y="120.60" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>25</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="192.49" y="162.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>27</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="194.58" y="53.84" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>29</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_journal_atk_dis10_dao10</identifier>
      <description>v_journal_atk_dis10_dao10</description>
      <source>/home/user/project/build/variants/v_journal_atk_dis10_dao10/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_journal_atk_dis10_dao10.cooja</commands>
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
          <pos x="9.66" y="86.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>4</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="61.86" y="197.70" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>10</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="186.03" y="0.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>11</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="72.49" y="92.80" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>19</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="197.93" y="105.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>21</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="60.10" y="95.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>28</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="10.47" y="99.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>30</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_cli_d0_m1</identifier>
      <description>v_cli_d0_m1</description>
      <source>/home/user/project/build/variants/v_cli_d0_m1/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_cli_d0_m1.cooja</commands>
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
          <pos x="141.90" y="53.75" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>6</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="100.23" y="150.92" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>9</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="160.02" y="185.84" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>13</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="159.18" y="45.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>15</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="185.05" y="189.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>24</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="184.07" y="7.67" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>26</id>
        </interface_config>
      </mote>
    </motetype>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script><![CDATA[
TIMEOUT(3600000, log.testOK());
var S = {"6":[[0.0,125.56,141.9,53.75,160.2,192.76],[125.56,132.0,160.2,192.76,160.2,192.76],[132.0,206.84,160.2,192.76,199.4,76.8],[206.84,210.99,199.4,76.8,199.4,76.8],[210.99,265.02,199.4,76.8,126.68,14.21],[265.02,268.52,126.68,14.21,126.68,14.21],[268.52,343.4,126.68,14.21,196.29,85.92],[343.4,346.03,196.29,85.92,196.29,85.92],[346.03,410.15,196.29,85.92,105.14,175.48],[410.15,417.21,105.14,175.48,105.14,175.48],[417.21,531.47,105.14,175.48,58.56,49.6],[531.47,532.43,58.56,49.6,58.56,49.6],[532.43,607.8,58.56,49.6,176.64,80.8],[607.8,611.62,176.64,80.8,176.64,80.8],[611.62,731.62,176.64,80.8,199.03,193.8],[731.62,732.51,199.03,193.8,199.03,193.8],[732.51,817.49,199.03,193.8,112.11,110.49],[817.49,821.0,112.11,110.49,112.11,110.49],[821.0,893.67,112.11,110.49,20.36,54.3],[893.67,896.08,20.36,54.3,20.36,54.3],[896.08,964.71,20.36,54.3,138.22,34.47],[964.71,974.31,138.22,34.47,138.22,34.47],[974.31,1177.21,138.22,34.47,7.4,169.73],[1177.21,1177.32,7.4,169.73,7.4,169.73],[1177.32,1232.06,7.4,169.73,50.19,149.56],[1232.06,1241.42,50.19,149.56,50.19,149.56],[1241.42,1284.33,50.19,149.56,114.97,126.33],[1284.33,1285.66,114.97,126.33,114.97,126.33],[1285.66,1327.92,114.97,126.33,158.43,170.54],[1327.92,1335.19,158.43,170.54,158.43,170.54],[1335.19,1430.37,158.43,170.54,174.8,87.8],[1430.37,1434.98,174.8,87.8,174.8,87.8],[1434.98,1538.47,174.8,87.8,93.25,131.14],[1538.47,1547.49,93.25,131.14,93.25,131.14],[1547.49,1624.94,93.25,131.14,66.71,51.34],[1624.94,1626.04,66.71,51.34,66.71,51.34],[1626.04,1736.0,66.71,51.34,136.7,179.3],[1736.0,1736.6,136.7,179.3,136.7,179.3],[1736.6,1919.27,136.7,179.3,171.52,0.59],[1919.27,1919.94,171.52,0.59,171.52,0.59],[1919.94,2054.44,171.52,0.59,60.75,127.09],[2054.44,2058.67,60.75,127.09,60.75,127.09],[2058.67,2151.11,60.75,127.09,5.59,176.28],[2151.11,2159.0,5.59,176.28,5.59,176.28],[2159.0,2172.28,5.59,176.28,26.98,181.94],[2172.28,2179.96,26.98,181.94,26.98,181.94],[2179.96,2312.52,26.98,181.94,196.43,7.91],[2312.52,2316.36,196.43,7.91,196.43,7.91],[2316.36,2441.44,196.43,7.91,113.67,190.81],[2441.44,2447.46,113.67,190.81,113.67,190.81],[2447.46,2642.84,113.67,190.81,27.65,10.72],[2642.84,2647.24,27.65,10.72,27.65,10.72],[2647.24,2714.72,27.65,10.72,81.84,79.21],[2714.72,2720.58,81.84,79.21,81.84,79.21],[2720.58,2766.16,81.84,79.21,125.23,134.67],[2766.16,2773.2,125.23,134.67,125.23,134.67],[2773.2,2898.86,125.23,134.67,194.36,127.91],[2898.86,2904.01,194.36,127.91,194.36,127.91],[2904.01,2909.34,194.36,127.91,195.44,135.92],[2909.34,2915.98,195.44,135.92,195.44,135.92],[2915.98,3027.36,195.44,135.92,115.52,46.71],[3027.36,3027.61,115.52,46.71,115.52,46.71],[3027.61,3051.92,115.52,46.71,77.25,75.24],[3051.92,3059.71,77.25,75.24,77.25,75.24],[3059.71,3092.44,77.25,75.24,127.98,45.62],[3092.44,3095.45,127.98,45.62,127.98,45.62],[3095.45,3131.54,127.98,45.62,128.97,78.14],[3131.54,3135.75,128.97,78.14,128.97,78.14],[3135.75,3237.72,128.97,78.14,140.45,131.55],[3237.72,3244.8,140.45,131.55,140.45,131.55],[3244.8,3287.38,140.45,131.55,165.51,124.51],[3287.38,3293.3,165.51,124.51,165.51,124.51],[3293.3,3299.72,165.51,124.51,165.16,113.69],[3299.72,3301.15,165.16,113.69,165.16,113.69],[3301.15,3373.9,165.16,113.69,76.16,33.75],[3373.9,3381.72,76.16,33.75,76.16,33.75],[3381.72,3440.37,76.16,33.75,18.78,75.17],[3440.37,3443.73,18.78,75.17,18.78,75.17],[3443.73,3550.3,18.78,75.17,140.82,176.95],[3550.3,3555.14,140.82,176.95,140.82,176.95],[3555.14,3904.61,140.82,176.95,78.96,7.99],[3904.61,3908.81,78.96,7.99,78.96,7.99]],"9":[[0.0,36.49,100.23,150.92,133.92,118.37],[36.49,39.63,133.92,118.37,133.92,118.37],[39.63,67.69,133.92,118.37,149.99,154.32],[67.69,71.6,149.99,154.32,149.99,154.32],[71.6,169.04,149.99,154.32,35.53,13.85],[169.04,173.24,35.53,13.85,35.53,13.85],[173.24,251.81,35.53,13.85,179.51,29.96],[251.81,259.61,179.51,29.96,179.51,29.96],[259.61,378.49,179.51,29.96,191.71,147.84],[378.49,379.88,191.71,147.84,191.71,147.84],[379.88,421.14,191.71,147.84,159.97,173.09],[421.14,427.79,159.97,173.09,159.97,173.09],[427.79,466.12,159.97,173.09,121.72,134.75],[466.12,468.64,121.72,134.75,121.72,134.75],[468.64,497.68,121.72,134.75,129.32,83.14],[497.68,502.35,129.32,83.14,129.32,83.14],[502.35,532.72,129.32,83.14,102.01,126.69],[532.72,542.19,102.01,126.69,102.01,126.69],[542.19,570.18,102.01,126.69,64.03,146.43],[570.18,575.27,64.03,146.43,64.03,146.43],[575.27,704.99,64.03,146.43,176.89,17.06],[704.99,710.59,176.89,17.06,176.89,17.06],[710.59,779.12,176.89,17.06,169.54,93.19],[779.12,784.36,169.54,93.19,169.54,93.19],[784.36,903.6,169.54,93.19,7.2,185.75],[903.6,912.41,7.2,185.75,7.2,185.75],[912.41,1034.44,7.2,185.75,37.53,46.26],[1034.44,1037.86,37.53,46.26,37.53,46.26],[1037.86,1133.69,37.53,46.26,52.13,169.83],[1133.69,1143.46,52.13,169.83,52.13,169.83],[1143.46,1290.91,52.13,169.83,139.46,22.25],[1290.91,1296.18,139.46,22.25,139.46,22.25],[1296.18,1346.24,139.46,22.25,171.87,116.38],[1346.24,1348.29,171.87,116.38,171.87,116.38],[1348.29,1358.31,171.87,116.38,181.11,103.5],[1358.31,1362.86,181.11,103.5,181.11,103.5],[1362.86,1407.4,181.11,103.5,189.43,26.79],[1407.4,1409.03,189.43,26.79,189.43,26.79],[1409.03,1542.11,189.43,26.79,86.86,182.15],[1542.11,1544.28,86.86,182.15,86.86,182.15],[1544.28,1705.55,86.86,182.15,190.79,5.03],[1705.55,1709.53,190.79,5.03,190.79,5.03],[1709.53,1866.48,190.79,5.03,18.84,4.64],[1866.48,1866.87,18.84,4.64,18.84,4.64],[1866.87,1930.97,18.84,4.64,6.24,105.92],[1930.97,1938.65,6.24,105.92,6.24,105.92],[1938.65,2018.51,6.24,105.92,115.92,157.49],[2018.51,2019.05,115.92,157.49,115.92,157.49],[2019.05,2288.62,115.92,157.49,32.44,49.9],[2288.62,2294.96,32.44,49.9,32.44,49.9],[2294.96,2411.96,32.44,49.9,144.33,141.31],[2411.96,2421.57,144.33,141.31,144.33,141.31],[2421.57,2486.68,144.33,141.31,194.98,64.24],[2486.68,2494.34,194.98,64.24,194.98,64.24],[2494.34,2575.09,194.98,64.24,106.81,35.21],[2575.09,2582.3,106.81,35.21,106.81,35.21],[2582.3,2724.53,106.81,35.21,68.68,174.35],[2724.53,2727.29,68.68,174.35,68.68,174.35],[2727.29,2851.84,68.68,174.35,96.98,81.58],[2851.84,2853.16,96.98,81.58,96.98,81.58],[2853.16,2875.75,96.98,81.58,79.61,97.58],[2875.75,2881.42,79.61,97.58,79.61,97.58],[2881.42,2934.89,79.61,97.58,57.64,196.05],[2934.89,2935.31,57.64,196.05,57.64,196.05],[2935.31,2956.88,57.64,196.05,53.49,153.49],[2956.88,2959.71,53.49,153.49,53.49,153.49],[2959.71,3067.27,53.49,153.49,198.09,84.81],[3067.27,3067.99,198.09,84.81,198.09,84.81],[3067.99,3085.38,198.09,84.81,178.85,96.99],[3085.38,3094.41,178.85,96.99,178.85,96.99],[3094.41,3158.8,178.85,96.99,93.14,12.57],[3158.8,3163.85,93.14,12.57,93.14,12.57],[3163.85,3258.2,93.14,12.57,170.64,40.9],[3258.2,3263.65,170.64,40.9,170.64,40.9],[3263.65,3443.55,170.64,40.9,8.2,1.31],[3443.55,3446.29,8.2,1.31,8.2,1.31],[3446.29,3564.26,8.2,1.31,48.45,166.12],[3564.26,3566.59,48.45,166.12,48.45,166.12],[3566.59,3764.32,48.45,166.12,166.09,124.14],[3764.32,3764.55,166.09,124.14,166.09,124.14]],"10":[[0.0,23.71,61.86,197.7,29.26,196.44],[23.71,30.82,29.26,196.44,29.26,196.44],[30.82,89.8,29.26,196.44,80.38,159.11],[89.8,93.16,80.38,159.11,80.38,159.11],[93.16,164.51,80.38,159.11,35.23,140.32],[164.51,170.83,35.23,140.32,35.23,140.32],[170.83,230.12,35.23,140.32,50.85,53.09],[230.12,237.7,50.85,53.09,50.85,53.09],[237.7,342.42,50.85,53.09,82.12,176.62],[342.42,344.95,82.12,176.62,82.12,176.62],[344.95,377.53,82.12,176.62,55.71,195.32],[377.53,382.44,55.71,195.32,55.71,195.32],[382.44,389.06,55.71,195.32,64.51,191.55],[389.06,395.58,64.51,191.55,64.51,191.55],[395.58,461.35,64.51,191.55,81.73,63.11],[461.35,464.97,81.73,63.11,81.73,63.11],[464.97,504.25,81.73,63.11,140.71,60.68],[504.25,510.27,140.71,60.68,140.71,60.68],[510.27,560.98,140.71,60.68,60.66,66.87],[560.98,568.12,60.66,66.87,60.66,66.87],[568.12,609.46,60.66,66.87,87.2,0.58],[609.46,618.09,87.2,0.58,87.2,0.58],[618.09,740.63,87.2,0.58,167.59,107.13],[740.63,743.9,167.59,107.13,167.59,107.13],[743.9,922.69,167.59,107.13,69.09,157.42],[922.69,931.4,69.09,157.42,69.09,157.42],[931.4,1015.93,69.09,157.42,196.55,128.17],[1015.93,1024.38,196.55,128.17,196.55,128.17],[1024.38,1071.22,196.55,128.17,182.19,60.35],[1071.22,1071.23,182.19,60.35,182.19,60.35],[1071.23,1205.85,182.19,60.35,70.67,99.39],[1205.85,1206.22,70.67,99.39,70.67,99.39],[1206.22,1227.78,70.67,99.39,60.56,90.14],[1227.78,1233.01,60.56,90.14,60.56,90.14],[1233.01,1259.85,60.56,90.14,7.58,89.02],[1259.85,1262.29,7.58,89.02,7.58,89.02],[1262.29,1562.97,7.58,89.02,194.37,139.08],[1562.97,1569.45,194.37,139.08,194.37,139.08],[1569.45,1702.74,194.37,139.08,21.09,73.42],[1702.74,1703.47,21.09,73.42,21.09,73.42],[1703.47,1887.57,21.09,73.42,95.64,167.86],[1887.57,1895.5,95.64,167.86,95.64,167.86],[1895.5,1965.79,95.64,167.86,9.48,198.39],[1965.79,1966.71,9.48,198.39,9.48,198.39],[1966.71,2093.95,9.48,198.39,40.11,50.12],[2093.95,2103.1,40.11,50.12,40.11,50.12],[2103.1,2213.99,40.11,50.12,174.84,85.43],[2213.99,2221.72,174.84,85.43,174.84,85.43],[2221.72,2301.26,174.84,85.43,65.85,125.08],[2301.26,2306.74,65.85,125.08,65.85,125.08],[2306.74,2408.32,65.85,125.08,140.04,108.83],[2408.32,2409.0,140.04,108.83,140.04,108.83],[2409.0,2543.94,140.04,108.83,59.19,142.64],[2543.94,2545.23,59.19,142.64,59.19,142.64],[2545.23,2597.78,59.19,142.64,35.34,120.08],[2597.78,2601.03,35.34,120.08,35.34,120.08],[2601.03,2623.85,35.34,120.08,41.68,141.52],[2623.85,2624.45,41.68,141.52,41.68,141.52],[2624.45,2670.06,41.68,141.52,120.58,159.64],[2670.06,2672.65,120.58,159.64,120.58,159.64],[2672.65,2701.99,120.58,159.64,119.26,101.22],[2701.99,2709.09,119.26,101.22,119.26,101.22],[2709.09,2752.1,119.26,101.22,128.3,79.6],[2752.1,2760.39,128.3,79.6,128.3,79.6],[2760.39,2870.7,128.3,79.6,117.37,171.99],[2870.7,2871.73,117.37,171.99,117.37,171.99],[2871.73,3046.92,117.37,171.99,108.82,44.26],[3046.92,3047.76,108.82,44.26,108.82,44.26],[3047.76,3080.9,108.82,44.26,157.03,4.72],[3080.9,3082.01,157.03,4.72,157.03,4.72],[3082.01,3169.49,157.03,4.72,7.87,34.76],[3169.49,3171.97,7.87,34.76,7.87,34.76],[3171.97,3195.11,7.87,34.76,51.83,48.2],[3195.11,3200.75,51.83,48.2,51.83,48.2],[3200.75,3322.45,51.83,48.2,111.58,24.73],[3322.45,3322.91,111.58,24.73,111.58,24.73],[3322.91,3447.32,111.58,24.73,164.86,161.41],[3447.32,3450.99,164.86,161.41,164.86,161.41],[3450.99,3499.31,164.86,161.41,143.33,173.0],[3499.31,3506.75,143.33,173.0,143.33,173.0],[3506.75,3742.65,143.33,173.0,40.65,39.24],[3742.65,3749.15,40.65,39.24,40.65,39.24]],"13":[[0.0,21.02,160.02,185.84,194.86,186.54],[21.02,22.41,194.86,186.54,194.86,186.54],[22.41,118.29,194.86,186.54,28.19,174.91],[118.29,127.24,28.19,174.91,28.19,174.91],[127.24,278.74,28.19,174.91,196.79,178.37],[278.74,283.12,196.79,178.37,196.79,178.37],[283.12,394.52,196.79,178.37,25.77,44.49],[394.52,398.41,25.77,44.49,25.77,44.49],[398.41,409.31,25.77,44.49,22.04,58.94],[409.31,414.78,22.04,58.94,22.04,58.94],[414.78,546.31,22.04,58.94,158.19,136.38],[546.31,548.29,158.19,136.38,158.19,136.38],[548.29,624.04,158.19,136.38,79.46,112.35],[624.04,632.84,79.46,112.35,79.46,112.35],[632.84,670.19,79.46,112.35,35.31,150.58],[670.19,671.3,35.31,150.58,35.31,150.58],[671.3,761.57,35.31,150.58,60.38,43.89],[761.57,765.87,60.38,43.89,60.38,43.89],[765.87,864.45,60.38,43.89,96.87,190.6],[864.45,866.38,96.87,190.6,96.87,190.6],[866.38,961.19,96.87,190.6,12.41,125.16],[961.19,966.74,12.41,125.16,12.41,125.16],[966.74,1014.74,12.41,125.16,55.4,60.99],[1014.74,1024.04,55.4,60.99,55.4,60.99],[1024.04,1108.7,55.4,60.99,178.7,35.55],[1108.7,1117.09,178.7,35.55,178.7,35.55],[1117.09,1386.17,178.7,35.55,59.91,186.54],[1386.17,1390.37,59.91,186.54,59.91,186.54],[1390.37,1543.94,59.91,186.54,140.89,20.58],[1543.94,1548.05,140.89,20.58,140.89,20.58],[1548.05,1736.91,140.89,20.58,115.31,122.28],[1736.91,1739.45,115.31,122.28,115.31,122.28],[1739.45,1741.43,115.31,122.28,113.16,119.44],[1741.43,1750.64,113.16,119.44,113.16,119.44],[1750.64,1847.51,113.16,119.44,117.74,57.13],[1847.51,1850.72,117.74,57.13,117.74,57.13],[1850.72,1978.19,117.74,57.13,20.83,84.11],[1978.19,1984.26,20.83,84.11,20.83,84.11],[1984.26,2019.19,20.83,84.11,46.84,46.58],[2019.19,2020.27,46.84,46.58,46.84,46.58],[2020.27,2143.27,46.84,46.58,187.71,195.69],[2143.27,2150.02,187.71,195.69,187.71,195.69],[2150.02,2297.82,187.71,195.69,80.15,127.52],[2297.82,2298.31,80.15,127.52,80.15,127.52],[2298.31,2351.55,80.15,127.52,116.21,193.5],[2351.55,2354.39,116.21,193.5,116.21,193.5],[2354.39,2383.09,116.21,193.5,73.96,161.03],[2383.09,2392.09,73.96,161.03,73.96,161.03],[2392.09,2403.88,73.96,161.03,82.33,176.15],[2403.88,2413.54,82.33,176.15,82.33,176.15],[2413.54,2439.65,82.33,176.15,126.88,181.85],[2439.65,2448.16,126.88,181.85,126.88,181.85],[2448.16,2543.35,126.88,181.85,169.76,70.35],[2543.35,2550.27,169.76,70.35,169.76,70.35],[2550.27,2637.87,169.76,70.35,124.88,15.47],[2637.87,2638.3,124.88,15.47,124.88,15.47],[2638.3,2706.09,124.88,15.47,57.29,111.19],[2706.09,2712.96,57.29,111.19,57.29,111.19],[2712.96,2769.15,57.29,111.19,71.35,39.9],[2769.15,2775.81,71.35,39.9,71.35,39.9],[2775.81,2854.01,71.35,39.9,152.05,111.53],[2854.01,2858.0,152.05,111.53,152.05,111.53],[2858.0,2897.86,152.05,111.53,97.27,54.27],[2897.86,2900.0,97.27,54.27,97.27,54.27],[2900.0,2964.55,97.27,54.27,119.71,141.39],[2964.55,2968.23,119.71,141.39,119.71,141.39],[2968.23,3003.19,119.71,141.39,158.62,176.82],[3003.19,3004.86,158.62,176.82,158.62,176.82],[3004.86,3159.75,158.62,176.82,60.77,58.18],[3159.75,3164.25,60.77,58.18,60.77,58.18],[3164.25,3237.42,60.77,58.18,32.47,183.26],[3237.42,3246.89,32.47,183.26,32.47,183.26],[3246.89,3271.92,32.47,183.26,53.61,146.47],[3271.92,3280.84,53.61,146.47,53.61,146.47],[3280.84,3450.68,53.61,146.47,108.03,1.0],[3450.68,3453.6,108.03,1.0,108.03,1.0],[3453.6,3473.81,108.03,1.0,143.32,18.59],[3473.81,3476.88,143.32,18.59,143.32,18.59],[3476.88,3503.74,143.32,18.59,178.79,24.03],[3503.74,3513.33,178.79,24.03,178.79,24.03],[3513.33,3705.68,178.79,24.03,37.11,187.77],[3705.68,3711.21,37.11,187.77,37.11,187.77]],"15":[[0.0,64.72,159.18,45.04,183.96,127.41],[64.72,67.58,183.96,127.41,183.96,127.41],[67.58,183.41,183.96,127.41,81.67,75.56],[183.41,188.5,81.67,75.56,81.67,75.56],[188.5,248.5,81.67,75.56,150.01,61.05],[248.5,257.72,150.01,61.05,150.01,61.05],[257.72,393.17,150.01,61.05,31.65,12.35],[393.17,394.08,31.65,12.35,31.65,12.35],[394.08,444.29,31.65,12.35,76.88,83.1],[444.29,445.08,76.88,83.1,76.88,83.1],[445.08,533.1,76.88,83.1,178.48,36.58],[533.1,541.38,178.48,36.58,178.48,36.58],[541.38,572.64,178.48,36.58,162.65,2.03],[572.64,579.2,162.65,2.03,162.65,2.03],[579.2,652.35,162.65,2.03,183.84,56.96],[652.35,660.68,183.84,56.96,183.84,56.96],[660.68,730.82,183.84,56.96,87.19,136.57],[730.82,738.84,87.19,136.57,87.19,136.57],[738.84,868.4,87.19,136.57,64.61,68.55],[868.4,876.52,64.61,68.55,64.61,68.55],[876.52,898.98,64.61,68.55,51.41,104.0],[898.98,900.32,51.41,104.0,51.41,104.0],[900.32,1089.7,51.41,104.0,177.61,82.96],[1089.7,1090.87,177.61,82.96,177.61,82.96],[1090.87,1228.02,177.61,82.96,73.15,170.64],[1228.02,1231.69,73.15,170.64,73.15,170.64],[1231.69,1397.38,73.15,170.64,191.37,10.4],[1397.38,1400.89,191.37,10.4,191.37,10.4],[1400.89,1584.81,191.37,10.4,22.36,117.47],[1584.81,1592.78,22.36,117.47,22.36,117.47],[1592.78,1763.94,22.36,117.47,183.76,22.91],[1763.94,1769.7,183.76,22.91,183.76,22.91],[1769.7,1809.46,183.76,22.91,150.45,47.27],[1809.46,1810.99,150.45,47.27,150.45,47.27],[1810.99,1844.92,150.45,47.27,138.58,24.48],[1844.92,1853.62,138.58,24.48,138.58,24.48],[1853.62,1895.34,138.58,24.48,124.03,5.46],[1895.34,1902.77,124.03,5.46,124.03,5.46],[1902.77,2052.55,124.03,5.46,74.52,177.27],[2052.55,2056.12,74.52,177.27,74.52,177.27],[2056.12,2090.19,74.52,177.27,63.27,120.15],[2090.19,2096.65,63.27,120.15,63.27,120.15],[2096.65,2132.17,63.27,120.15,48.58,56.61],[2132.17,2137.56,48.58,56.61,48.58,56.61],[2137.56,2248.77,48.58,56.61,62.73,150.46],[2248.77,2250.82,62.73,150.46,62.73,150.46],[2250.82,2448.19,62.73,150.46,70.27,48.43],[2448.19,2449.37,70.27,48.43,70.27,48.43],[2449.37,2461.22,70.27,48.43,67.04,62.88],[2461.22,2463.41,67.04,62.88,67.04,62.88],[2463.41,2498.48,67.04,62.88,62.11,80.69],[2498.48,2507.87,62.11,80.69,62.11,80.69],[2507.87,2514.25,62.11,80.69,73.72,78.32],[2514.25,2523.99,73.72,78.32,73.72,78.32],[2523.99,2698.02,73.72,78.32,150.64,156.61],[2698.02,2707.94,150.64,156.61,150.64,156.61],[2707.94,2934.92,150.64,156.61,46.16,62.31],[2934.92,2940.6,46.16,62.31,46.16,62.31],[2940.6,3031.02,46.16,62.31,148.64,18.09],[3031.02,3032.01,148.64,18.09,148.64,18.09],[3032.01,3262.73,148.64,18.09,25.47,182.87],[3262.73,3263.04,25.47,182.87,25.47,182.87],[3263.04,3358.43,25.47,182.87,14.36,15.54],[3358.43,3360.04,14.36,15.54,14.36,15.54],[3360.04,3400.04,14.36,15.54,46.63,7.53],[3400.04,3406.07,46.63,7.53,46.63,7.53],[3406.07,3538.94,46.63,7.53,82.71,150.9],[3538.94,3541.7,82.71,150.9,82.71,150.9],[3541.7,3683.53,82.71,150.9,120.44,84.6],[3683.53,3691.55,120.44,84.6,120.44,84.6]],"24":[[0.0,104.19,185.05,189.35,46.38,166.85],[104.19,109.99,46.38,166.85,46.38,166.85],[109.99,168.24,46.38,166.85,151.18,157.75],[168.24,175.72,151.18,157.75,151.18,157.75],[175.72,248.26,151.18,157.75,189.01,40.41],[248.26,258.22,189.01,40.41,189.01,40.41],[258.22,300.8,189.01,40.41,159.2,93.07],[300.8,304.8,159.2,93.07,159.2,93.07],[304.8,563.21,159.2,93.07,68.9,187.19],[563.21,568.1,68.9,187.19,68.9,187.19],[568.1,830.44,68.9,187.19,6.93,43.43],[830.44,838.88,6.93,43.43,6.93,43.43],[838.88,948.3,6.93,43.43,133.69,173.96],[948.3,948.87,133.69,173.96,133.69,173.96],[948.87,1037.42,133.69,173.96,169.0,54.97],[1037.42,1040.79,169.0,54.97,169.0,54.97],[1040.79,1340.95,169.0,54.97,10.67,70.92],[1340.95,1345.79,10.67,70.92,10.67,70.92],[1345.79,1439.88,10.67,70.92,183.48,69.74],[1439.88,1440.56,183.48,69.74,183.48,69.74],[1440.56,1464.63,183.48,69.74,172.53,52.14],[1464.63,1469.51,172.53,52.14,172.53,52.14],[1469.51,1688.51,172.53,52.14,161.6,187.59],[1688.51,1691.33,161.6,187.59,161.6,187.59],[1691.33,1923.96,161.6,187.59,66.5,5.24],[1923.96,1928.8,66.5,5.24,66.5,5.24],[1928.8,2175.49,66.5,5.24,159.3,117.52],[2175.49,2175.72,159.3,117.52,159.3,117.52],[2175.72,2187.76,159.3,117.52,161.56,135.4],[2187.76,2193.67,161.56,135.4,161.56,135.4],[2193.67,2264.04,161.56,135.4,67.0,178.44],[2264.04,2265.91,67.0,178.44,67.0,178.44],[2265.91,2333.53,67.0,178.44,178.16,178.57],[2333.53,2340.22,178.16,178.57,178.16,178.57],[2340.22,2380.63,178.16,178.57,141.76,118.7],[2380.63,2380.78,141.76,118.7,141.76,118.7],[2380.78,2410.21,141.76,118.7,150.19,70.01],[2410.21,2412.01,150.19,70.01,150.19,70.01],[2412.01,2488.37,150.19,70.01,91.73,28.76],[2488.37,2492.75,91.73,28.76,91.73,28.76],[2492.75,2582.92,91.73,28.76,54.77,195.76],[2582.92,2589.11,54.77,195.76,54.77,195.76],[2589.11,2628.09,54.77,195.76,2.71,160.41],[2628.09,2634.45,2.71,160.41,2.71,160.41],[2634.45,2747.24,2.71,160.41,102.61,134.47],[2747.24,2755.52,102.61,134.47,102.61,134.47],[2755.52,2793.7,102.61,134.47,130.11,166.73],[2793.7,2795.72,130.11,166.73,130.11,166.73],[2795.72,2876.72,130.11,166.73,30.7,86.14],[2876.72,2884.51,30.7,86.14,30.7,86.14],[2884.51,2957.31,30.7,86.14,36.95,10.39],[2957.31,2965.13,36.95,10.39,36.95,10.39],[2965.13,3065.43,36.95,10.39,163.26,63.65],[3065.43,3065.69,163.26,63.65,163.26,63.65],[3065.69,3139.81,163.26,63.65,103.43,191.48],[3139.81,3146.62,103.43,191.48,103.43,191.48],[3146.62,3231.09,103.43,191.48,146.58,46.08],[3231.09,3234.57,146.58,46.08,146.58,46.08],[3234.57,3268.94,146.58,46.08,188.78,10.74],[3268.94,3277.11,188.78,10.74,188.78,10.74],[3277.11,3470.2,188.78,10.74,9.8,82.91],[3470.2,3479.23,9.8,82.91,9.8,82.91],[3479.23,3626.61,9.8,82.91,144.18,109.71],[3626.61,3634.49,144.18,109.71,144.18,109.71]],"26":[[0.0,91.81,184.07,7.67,77.98,104.79],[91.81,92.8,77.98,104.79,77.98,104.79],[92.8,128.02,77.98,104.79,108.89,92.2],[128.02,135.43,108.89,92.2,108.89,92.2],[135.43,207.01,108.89,92.2,134.68,2.26],[207.01,209.56,134.68,2.26,134.68,2.26],[209.56,444.79,134.68,2.26,163.86,146.23],[444.79,447.55,163.86,146.23,163.86,146.23],[447.55,508.94,163.86,146.23,151.16,63.37],[508.94,515.77,151.16,63.37,151.16,63.37],[515.77,612.96,151.16,63.37,70.17,71.7],[612.96,614.13,70.17,71.7,70.17,71.7],[614.13,695.68,70.17,71.7,185.06,107.23],[695.68,700.86,185.06,107.23,185.06,107.23],[700.86,775.04,185.06,107.23,68.35,121.59],[775.04,782.77,68.35,121.59,68.35,121.59],[782.77,797.01,68.35,121.59,48.06,112.71],[797.01,800.1,48.06,112.71,48.06,112.71],[800.1,833.83,48.06,112.71,83.6,151.98],[833.83,838.78,83.6,151.98,83.6,151.98],[838.78,881.65,83.6,151.98,6.14,183.52],[881.65,883.37,6.14,183.52,6.14,183.52],[883.37,1013.59,6.14,183.52,109.01,111.86],[1013.59,1020.36,109.01,111.86,109.01,111.86],[1020.36,1179.39,109.01,111.86,102.94,4.53],[1179.39,1184.13,102.94,4.53,102.94,4.53],[1184.13,1237.84,102.94,4.53,82.27,88.43],[1237.84,1247.23,82.27,88.43,82.27,88.43],[1247.23,1303.27,82.27,88.43,64.64,184.85],[1303.27,1308.38,64.64,184.85,64.64,184.85],[1308.38,1353.24,64.64,184.85,58.07,103.73],[1353.24,1361.05,58.07,103.73,58.07,103.73],[1361.05,1422.11,58.07,103.73,127.21,152.19],[1422.11,1425.61,127.21,152.19,127.21,152.19],[1425.61,1437.62,127.21,152.19,121.45,168.29],[1437.62,1444.55,121.45,168.29,121.45,168.29],[1444.55,1522.86,121.45,168.29,57.07,65.44],[1522.86,1530.23,57.07,65.44,57.07,65.44],[1530.23,1691.32,57.07,65.44,178.04,98.22],[1691.32,1696.76,178.04,98.22,178.04,98.22],[1696.76,1850.63,178.04,98.22,42.84,91.23],[1850.63,1858.95,42.84,91.23,42.84,91.23],[1858.95,1884.46,42.84,91.23,60.03,43.93],[1884.46,1889.07,60.03,43.93,60.03,43.93],[1889.07,2044.84,60.03,43.93,82.22,173.06],[2044.84,2047.6,82.22,173.06,82.22,173.06],[2047.6,2128.83,82.22,173.06,12.06,156.27],[2128.83,2134.76,12.06,156.27,12.06,156.27],[2134.76,2221.02,12.06,156.27,159.46,167.92],[2221.02,2226.49,159.46,167.92,159.46,167.92],[2226.49,2465.71,159.46,167.92,169.98,13.8],[2465.71,2475.27,169.98,13.8,169.98,13.8],[2475.27,2570.17,169.98,13.8,42.56,8.84],[2570.17,2575.64,42.56,8.84,42.56,8.84],[2575.64,2625.88,42.56,8.84,109.21,27.67],[2625.88,2635.08,109.21,27.67,109.21,27.67],[2635.08,2658.59,109.21,27.67,135.88,65.37],[2658.59,2668.36,135.88,65.37,135.88,65.37],[2668.36,2743.14,135.88,65.37,197.23,4.76],[2743.14,2746.98,197.23,4.76,197.23,4.76],[2746.98,2881.09,197.23,4.76,38.38,139.3],[2881.09,2886.5,38.38,139.3,38.38,139.3],[2886.5,2935.35,38.38,139.3,78.34,145.9],[2935.35,2940.19,78.34,145.9,78.34,145.9],[2940.19,3094.1,78.34,145.9,46.01,15.64],[3094.1,3102.66,46.01,15.64,46.01,15.64],[3102.66,3191.47,46.01,15.64,55.88,156.08],[3191.47,3196.26,55.88,156.08,55.88,156.08],[3196.26,3234.12,55.88,156.08,73.77,85.11],[3234.12,3238.45,73.77,85.11,73.77,85.11],[3238.45,3313.65,73.77,85.11,85.82,143.55],[3313.65,3323.36,85.82,143.55,85.82,143.55],[3323.36,3481.82,85.82,143.55,6.22,127.41],[3481.82,3488.39,6.22,127.41,6.22,127.41],[3488.39,3580.07,6.22,127.41,121.39,168.71],[3580.07,3583.87,121.39,168.71,121.39,168.71],[3583.87,3657.8,121.39,168.71,32.73,147.73],[3657.8,3658.6,32.73,147.73,32.73,147.73]],"28":[[0.0,127.56,60.1,95.27,25.2,5.22],[127.56,130.4,25.2,5.22,25.2,5.22],[130.4,207.91,25.2,5.22,24.03,58.09],[207.91,216.13,24.03,58.09,24.03,58.09],[216.13,308.17,24.03,58.09,44.57,193.83],[308.17,317.86,44.57,193.83,44.57,193.83],[317.86,454.33,44.57,193.83,128.5,96.99],[454.33,460.3,128.5,96.99,128.5,96.99],[460.3,491.63,128.5,96.99,85.58,142.53],[491.63,500.13,85.58,142.53,85.58,142.53],[500.13,582.33,85.58,142.53,186.51,50.89],[582.33,588.64,186.51,50.89,186.51,50.89],[588.64,680.94,186.51,50.89,35.52,124.37],[680.94,682.69,35.52,124.37,35.52,124.37],[682.69,932.14,35.52,124.37,150.69,4.47],[932.14,938.96,150.69,4.47,150.69,4.47],[938.96,1116.05,150.69,4.47,101.35,107.99],[1116.05,1124.7,101.35,107.99,101.35,107.99],[1124.7,1184.79,101.35,107.99,199.54,75.66],[1184.79,1194.3,199.54,75.66,199.54,75.66],[1194.3,1271.1,199.54,75.66,133.5,196.88],[1271.1,1275.53,133.5,196.88,133.5,196.88],[1275.53,1337.62,133.5,196.88,28.56,133.14],[1337.62,1340.87,28.56,133.14,28.56,133.14],[1340.87,1422.53,28.56,133.14,80.32,88.44],[1422.53,1423.0,80.32,88.44,80.32,88.44],[1423.0,1452.43,80.32,88.44,115.09,50.94],[1452.43,1457.38,115.09,50.94,115.09,50.94],[1457.38,1499.66,115.09,50.94,70.45,45.72],[1499.66,1507.05,70.45,45.72,70.45,45.72],[1507.05,1678.23,70.45,45.72,48.49,142.03],[1678.23,1684.83,48.49,142.03,48.49,142.03],[1684.83,1764.73,48.49,142.03,177.73,183.48],[1764.73,1770.38,177.73,183.48,177.73,183.48],[1770.38,1860.75,177.73,183.48,134.93,143.15],[1860.75,1869.95,134.93,143.15,134.93,143.15],[1869.95,2005.41,134.93,143.15,140.58,49.02],[2005.41,2012.13,140.58,49.02,140.58,49.02],[2012.13,2082.85,140.58,49.02,87.04,101.29],[2082.85,2083.28,87.04,101.29,87.04,101.29],[2083.28,2115.58,87.04,101.29,46.68,60.69],[2115.58,2121.37,46.68,60.69,46.68,60.69],[2121.37,2177.83,46.68,60.69,107.02,55.21],[2177.83,2179.15,107.02,55.21,107.02,55.21],[2179.15,2381.7,107.02,55.21,54.14,192.4],[2381.7,2389.76,54.14,192.4,54.14,192.4],[2389.76,2755.92,54.14,192.4,153.97,11.8],[2755.92,2764.47,153.97,11.8,153.97,11.8],[2764.47,2799.34,153.97,11.8,107.94,27.14],[2799.34,2806.53,107.94,27.14,107.94,27.14],[2806.53,2874.33,107.94,27.14,171.01,134.41],[2874.33,2882.85,171.01,134.41,171.01,134.41],[2882.85,3056.51,171.01,134.41,88.02,22.06],[3056.51,3062.57,88.02,22.06,88.02,22.06],[3062.57,3185.8,88.02,22.06,173.68,138.24],[3185.8,3191.68,173.68,138.24,173.68,138.24],[3191.68,3409.9,173.68,138.24,127.74,14.84],[3409.9,3414.01,127.74,14.84,127.74,14.84],[3414.01,3655.98,127.74,14.84,2.97,109.82],[3655.98,3659.4,2.97,109.82,2.97,109.82]],"30":[[0.0,43.73,10.47,99.48,29.27,179.92],[43.73,53.22,29.27,179.92,29.27,179.92],[53.22,262.07,29.27,179.92,177.15,114.91],[262.07,271.75,177.15,114.91,177.15,114.91],[271.75,330.14,177.15,114.91,163.02,25.1],[330.14,334.73,163.02,25.1,163.02,25.1],[334.73,416.24,163.02,25.1,67.95,99.51],[416.24,424.1,67.95,99.51,67.95,99.51],[424.1,465.35,67.95,99.51,33.54,128.17],[465.35,467.64,33.54,128.17,33.54,128.17],[467.64,564.16,33.54,128.17,97.33,28.0],[564.16,565.26,97.33,28.0,97.33,28.0],[565.26,697.28,97.33,28.0,190.24,192.29],[697.28,701.44,190.24,192.29,190.24,192.29],[701.44,780.07,190.24,192.29,104.31,194.6],[780.07,785.16,104.31,194.6,104.31,194.6],[785.16,823.46,104.31,194.6,79.54,140.31],[823.46,829.35,79.54,140.31,79.54,140.31],[829.35,885.95,79.54,140.31,133.57,120.96],[885.95,890.38,133.57,120.96,133.57,120.96],[890.38,920.81,133.57,120.96,186.34,145.82],[920.81,920.88,186.34,145.82,186.34,145.82],[920.88,1001.16,186.34,145.82,66.42,72.75],[1001.16,1005.63,66.42,72.75,66.42,72.75],[1005.63,1049.9,66.42,72.75,56.11,3.57],[1049.9,1055.95,56.11,3.57,56.11,3.57],[1055.95,1185.7,56.11,3.57,173.82,117.59],[1185.7,1187.33,173.82,117.59,173.82,117.59],[1187.33,1207.61,173.82,117.59,198.67,108.06],[1207.61,1214.27,198.67,108.06,198.67,108.06],[1214.27,1377.13,198.67,108.06,111.05,171.96],[1377.13,1377.73,111.05,171.96,111.05,171.96],[1377.73,1553.24,111.05,171.96,21.57,192.08],[1553.24,1560.96,21.57,192.08,21.57,192.08],[1560.96,1582.95,21.57,192.08,14.93,161.15],[1582.95,1589.28,14.93,161.15,14.93,161.15],[1589.28,1680.35,14.93,161.15,175.83,97.77],[1680.35,1680.82,175.83,97.77,175.83,97.77],[1680.82,1871.83,175.83,97.77,44.57,106.5],[1871.83,1877.33,44.57,106.5,44.57,106.5],[1877.33,1999.52,44.57,106.5,95.72,188.01],[1999.52,2007.18,95.72,188.01,95.72,188.01],[2007.18,2194.24,95.72,188.01,32.04,20.21],[2194.24,2197.89,32.04,20.21,32.04,20.21],[2197.89,2318.73,32.04,20.21,104.42,80.26],[2318.73,2328.62,104.42,80.26,104.42,80.26],[2328.62,2404.83,104.42,80.26,166.5,18.54],[2404.83,2406.9,166.5,18.54,166.5,18.54],[2406.9,2508.0,166.5,18.54,37.71,92.12],[2508.0,2517.86,37.71,92.12,37.71,92.12],[2517.86,2600.01,37.71,92.12,154.83,156.49],[2600.01,2603.17,154.83,156.49,154.83,156.49],[2603.17,2635.59,154.83,156.49,148.22,102.34],[2635.59,2637.05,148.22,102.34,148.22,102.34],[2637.05,2741.23,148.22,102.34,69.33,66.84],[2741.23,2746.24,69.33,66.84,69.33,66.84],[2746.24,2796.82,69.33,66.84,43.44,143.48],[2796.82,2806.02,43.44,143.48,43.44,143.48],[2806.02,2867.27,43.44,143.48,101.09,82.28],[2867.27,2872.32,101.09,82.28,101.09,82.28],[2872.32,2927.57,101.09,82.28,166.57,165.5],[2927.57,2930.15,166.57,165.5,166.57,165.5],[2930.15,3043.5,166.57,165.5,16.71,180.67],[3043.5,3048.89,16.71,180.67,16.71,180.67],[3048.89,3154.43,16.71,180.67,138.59,140.8],[3154.43,3164.09,138.59,140.8,138.59,140.8],[3164.09,3193.13,138.59,140.8,124.4,180.85],[3193.13,3193.68,124.4,180.85,124.4,180.85],[3193.68,3361.12,124.4,180.85,13.66,172.54],[3361.12,3368.05,13.66,172.54,13.66,172.54],[3368.05,3408.87,13.66,172.54,79.83,166.51],[3408.87,3417.73,79.83,166.51,79.83,166.51],[3417.73,3450.89,79.83,166.51,86.09,110.21],[3450.89,3457.48,86.09,110.21,86.09,110.21],[3457.48,3499.01,86.09,110.21,16.87,137.17],[3499.01,3504.56,16.87,137.17,16.87,137.17],[3504.56,3591.69,16.87,137.17,49.73,9.29],[3591.69,3598.5,49.73,9.29,49.73,9.29],[3598.5,3706.49,49.73,9.29,119.91,177.24],[3706.49,3715.72,119.91,177.24,119.91,177.24]]};
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
