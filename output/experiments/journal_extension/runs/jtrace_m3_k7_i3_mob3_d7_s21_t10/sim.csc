<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>jtrace_m3_k7_i3_mob3_d7_s21_t10</title>
    <randomseed>21</randomseed>
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
          <pos x="182.92" y="85.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>2</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="131.32" y="69.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>3</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="64.40" y="94.94" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>7</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="109.51" y="70.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>9</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="57.19" y="89.90" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>10</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="111.70" y="58.71" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>11</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="146.61" y="31.61" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>13</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="110.92" y="152.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>14</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="65.91" y="38.99" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>17</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="3.12" y="26.81" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>19</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="58.30" y="48.23" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>20</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="50.27" y="18.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>23</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="58.21" y="149.53" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>26</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="119.10" y="89.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>28</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="150.74" y="159.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>29</id>
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
          <pos x="8.89" y="186.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>4</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="73.83" y="89.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>5</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="171.13" y="141.97" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>6</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="27.59" y="61.63" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>12</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="137.94" y="100.98" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>18</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="171.06" y="112.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>21</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.34" y="11.87" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>30</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_journal_atk_trace</identifier>
      <description>v_journal_atk_trace</description>
      <source>/home/user/project/build/variants/v_journal_atk_trace/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_journal_atk_trace.cooja</commands>
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
          <pos x="39.57" y="109.59" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>8</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="4.76" y="157.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>15</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="9.17" y="131.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>16</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="115.16" y="179.65" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>22</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="161.01" y="142.70" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>24</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="29.04" y="155.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>25</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="112.08" y="79.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>27</id>
        </interface_config>
      </mote>
    </motetype>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script><![CDATA[
TIMEOUT(600000, log.testOK());
var S = {"4":[[0.0,166.32,8.89,186.29,189.59,35.13],[166.32,167.88,189.59,35.13,189.59,35.13],[167.88,197.71,189.59,35.13,186.48,73.0],[197.71,200.08,186.48,73.0,186.48,73.0],[200.08,291.66,186.48,73.0,32.81,86.2],[291.66,292.75,32.81,86.2,32.81,86.2],[292.75,361.19,32.81,86.2,49.19,184.9],[361.19,364.64,49.19,184.9,49.19,184.9],[364.64,440.33,49.19,184.9,159.13,180.43],[440.33,446.15,159.13,180.43,159.13,180.43],[446.15,520.81,159.13,180.43,94.21,125.36],[520.81,526.57,94.21,125.36,94.21,125.36],[526.57,570.14,94.21,125.36,120.18,161.86],[570.14,570.68,120.18,161.86,120.18,161.86],[570.68,676.45,120.18,161.86,33.26,7.2],[676.45,681.95,33.26,7.2,33.26,7.2]],"5":[[0.0,90.42,73.83,89.01,16.33,151.65],[90.42,96.82,16.33,151.65,16.33,151.65],[96.82,138.44,16.33,151.65,22.67,182.52],[138.44,148.06,22.67,182.52,22.67,182.52],[148.06,212.54,22.67,182.52,16.73,94.96],[212.54,220.4,16.73,94.96,16.73,94.96],[220.4,346.16,16.73,94.96,119.69,150.77],[346.16,348.2,119.69,150.77,119.69,150.77],[348.2,411.4,119.69,150.77,199.29,110.36],[411.4,417.78,199.29,110.36,199.29,110.36],[417.78,461.53,199.29,110.36,142.96,124.85],[461.53,461.73,142.96,124.85,142.96,124.85],[461.73,484.77,142.96,124.85,120.45,93.31],[484.77,487.38,120.45,93.31,120.45,93.31],[487.38,595.8,120.45,93.31,121.53,26.46],[595.8,602.55,121.53,26.46,121.53,26.46]],"6":[[0.0,58.08,171.13,141.97,82.97,193.16],[58.08,58.57,82.97,193.16,82.97,193.16],[58.57,146.38,82.97,193.16,147.04,164.5],[146.38,154.74,147.04,164.5,147.04,164.5],[154.74,202.51,147.04,164.5,76.56,149.82],[202.51,206.26,76.56,149.82,76.56,149.82],[206.26,278.38,76.56,149.82,6.06,127.93],[278.38,281.64,6.06,127.93,6.06,127.93],[281.64,347.99,6.06,127.93,102.04,143.51],[347.99,350.86,102.04,143.51,102.04,143.51],[350.86,559.11,102.04,143.51,52.31,46.08],[559.11,564.52,52.31,46.08,52.31,46.08],[564.52,707.2,52.31,46.08,152.45,195.59],[707.2,711.11,152.45,195.59,152.45,195.59]],"12":[[0.0,78.02,27.59,61.63,25.62,128.39],[78.02,81.52,25.62,128.39,25.62,128.39],[81.52,263.3,25.62,128.39,174.74,150.79],[263.3,272.94,174.74,150.79,174.74,150.79],[272.94,299.28,174.74,150.79,137.21,182.25],[299.28,299.3,137.21,182.25,137.21,182.25],[299.3,398.65,137.21,182.25,188.98,20.97],[398.65,408.27,188.98,20.97,188.98,20.97],[408.27,591.26,188.98,20.97,4.31,105.13],[591.26,599.0,4.31,105.13,4.31,105.13],[599.0,627.12,4.31,105.13,31.09,67.0],[627.12,636.6,31.09,67.0,31.09,67.0]],"16":[[0.0,141.21,9.17,131.34,181.74,49.53],[141.21,141.39,181.74,49.53,181.74,49.53],[141.39,278.95,181.74,49.53,7.85,170.07],[278.95,279.37,7.85,170.07,7.85,170.07],[279.37,380.45,7.85,170.07,61.35,51.37],[380.45,382.56,61.35,51.37,61.35,51.37],[382.56,509.74,61.35,51.37,169.95,109.29],[509.74,511.28,169.95,109.29,169.95,109.29],[511.28,538.62,169.95,109.29,135.08,69.39],[538.62,540.29,135.08,69.39,135.08,69.39],[540.29,545.32,135.08,69.39,137.68,77.36],[545.32,548.38,137.68,77.36,137.68,77.36],[548.38,611.03,137.68,77.36,60.34,43.77],[611.03,619.13,60.34,43.77,60.34,43.77]],"18":[[0.0,76.48,137.94,100.98,48.4,20.09],[76.48,83.08,48.4,20.09,48.4,20.09],[83.08,224.53,48.4,20.09,176.31,118.89],[224.53,227.29,176.31,118.89,176.31,118.89],[227.29,270.39,176.31,118.89,158.66,199.88],[270.39,276.8,158.66,199.88,158.66,199.88],[276.8,345.88,158.66,199.88,111.75,183.81],[345.88,347.08,111.75,183.81,111.75,183.81],[347.08,509.96,111.75,183.81,159.08,6.3],[509.96,516.43,159.08,6.3,159.08,6.3],[516.43,677.86,159.08,6.3,2.35,162.87],[677.86,686.5,2.35,162.87,2.35,162.87]],"21":[[0.0,100.07,171.06,112.35,137.75,165.7],[100.07,107.01,137.75,165.7,137.75,165.7],[107.01,166.86,137.75,165.7,123.98,78.19],[166.86,176.53,123.98,78.19,123.98,78.19],[176.53,291.32,123.98,78.19,40.08,59.48],[291.32,301.31,40.08,59.48,40.08,59.48],[301.31,369.26,40.08,59.48,4.45,38.38],[369.26,371.97,4.45,38.38,4.45,38.38],[371.97,483.9,4.45,38.38,112.57,42.51],[483.9,486.32,112.57,42.51,112.57,42.51],[486.32,603.49,112.57,42.51,111.59,167.18],[603.49,603.85,111.59,167.18,111.59,167.18]],"22":[[0.0,221.07,115.16,179.65,22.67,9.35],[221.07,229.56,22.67,9.35,22.67,9.35],[229.56,321.07,22.67,9.35,109.32,106.29],[321.07,323.88,109.32,106.29,109.32,106.29],[323.88,369.91,109.32,106.29,64.95,114.0],[369.91,370.03,64.95,114.0,64.95,114.0],[370.03,525.28,64.95,114.0,190.79,138.85],[525.28,525.63,190.79,138.85,190.79,138.85],[525.63,641.16,190.79,138.85,1.93,168.9],[641.16,650.9,1.93,168.9,1.93,168.9]],"30":[[0.0,176.84,34.34,11.87,189.04,32.55],[176.84,179.78,189.04,32.55,189.04,32.55],[179.78,393.03,189.04,32.55,9.29,113.98],[393.03,396.99,9.29,113.98,9.29,113.98],[396.99,470.24,9.29,113.98,106.21,176.12],[470.24,476.46,106.21,176.12,106.21,176.12],[476.46,571.34,106.21,176.12,18.78,157.42],[571.34,578.05,18.78,157.42,18.78,157.42],[578.05,616.34,18.78,157.42,6.68,122.16],[616.34,617.08,6.68,122.16,6.68,122.16]]};
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
