<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>journal_m3_k7_i10_mob3_d3_s21_dao10</title>
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
      <identifier>v_root_d3</identifier>
      <description>v_root_d3</description>
      <source>/home/user/project/build/variants/v_root_d3/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_root_d3.cooja</commands>
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
      <identifier>v_cli_d3_m0</identifier>
      <description>v_cli_d3_m0</description>
      <source>/home/user/project/build/variants/v_cli_d3_m0/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_cli_d3_m0.cooja</commands>
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
      <identifier>v_cli_d3_m1</identifier>
      <description>v_cli_d3_m1</description>
      <source>/home/user/project/build/variants/v_cli_d3_m1/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_cli_d3_m1.cooja</commands>
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
TIMEOUT(3600000, log.testOK());
var S = {"4":[[0.0,166.32,8.89,186.29,189.59,35.13],[166.32,167.88,189.59,35.13,189.59,35.13],[167.88,197.71,189.59,35.13,186.48,73.0],[197.71,200.08,186.48,73.0,186.48,73.0],[200.08,291.66,186.48,73.0,32.81,86.2],[291.66,292.75,32.81,86.2,32.81,86.2],[292.75,361.19,32.81,86.2,49.19,184.9],[361.19,364.64,49.19,184.9,49.19,184.9],[364.64,440.33,49.19,184.9,159.13,180.43],[440.33,446.15,159.13,180.43,159.13,180.43],[446.15,520.81,159.13,180.43,94.21,125.36],[520.81,526.57,94.21,125.36,94.21,125.36],[526.57,570.14,94.21,125.36,120.18,161.86],[570.14,570.68,120.18,161.86,120.18,161.86],[570.68,676.45,120.18,161.86,33.26,7.2],[676.45,681.95,33.26,7.2,33.26,7.2],[681.95,836.62,33.26,7.2,16.33,151.65],[836.62,843.02,16.33,151.65,16.33,151.65],[843.02,884.63,16.33,151.65,22.67,182.52],[884.63,894.25,22.67,182.52,22.67,182.52],[894.25,958.73,22.67,182.52,16.73,94.96],[958.73,966.59,16.73,94.96,16.73,94.96],[966.59,1092.36,16.73,94.96,119.69,150.77],[1092.36,1094.39,119.69,150.77,119.69,150.77],[1094.39,1157.59,119.69,150.77,199.29,110.36],[1157.59,1163.97,199.29,110.36,199.29,110.36],[1163.97,1207.72,199.29,110.36,142.96,124.85],[1207.72,1207.92,142.96,124.85,142.96,124.85],[1207.92,1230.96,142.96,124.85,120.45,93.31],[1230.96,1233.57,120.45,93.31,120.45,93.31],[1233.57,1341.99,120.45,93.31,121.53,26.46],[1341.99,1348.75,121.53,26.46,121.53,26.46],[1348.75,1446.22,121.53,26.46,82.97,193.16],[1446.22,1446.71,82.97,193.16,82.97,193.16],[1446.71,1534.52,82.97,193.16,147.04,164.5],[1534.52,1542.88,147.04,164.5,147.04,164.5],[1542.88,1590.65,147.04,164.5,76.56,149.82],[1590.65,1594.41,76.56,149.82,76.56,149.82],[1594.41,1666.52,76.56,149.82,6.06,127.93],[1666.52,1669.78,6.06,127.93,6.06,127.93],[1669.78,1736.13,6.06,127.93,102.04,143.51],[1736.13,1739.0,102.04,143.51,102.04,143.51],[1739.0,1947.25,102.04,143.51,52.31,46.08],[1947.25,1952.66,52.31,46.08,52.31,46.08],[1952.66,2095.35,52.31,46.08,152.45,195.59],[2095.35,2099.26,152.45,195.59,152.45,195.59],[2099.26,2266.92,152.45,195.59,25.62,128.39],[2266.92,2270.42,25.62,128.39,25.62,128.39],[2270.42,2452.2,25.62,128.39,174.74,150.79],[2452.2,2461.84,174.74,150.79,174.74,150.79],[2461.84,2488.18,174.74,150.79,137.21,182.25],[2488.18,2488.2,137.21,182.25,137.21,182.25],[2488.2,2587.55,137.21,182.25,188.98,20.97],[2587.55,2597.17,188.98,20.97,188.98,20.97],[2597.17,2780.17,188.98,20.97,4.31,105.13],[2780.17,2787.9,4.31,105.13,4.31,105.13],[2787.9,2816.02,4.31,105.13,31.09,67.0],[2816.02,2825.51,31.09,67.0,31.09,67.0],[2825.51,2937.65,31.09,67.0,181.74,49.53],[2937.65,2937.82,181.74,49.53,181.74,49.53],[2937.82,3075.38,181.74,49.53,7.85,170.07],[3075.38,3075.8,7.85,170.07,7.85,170.07],[3075.8,3176.89,7.85,170.07,61.35,51.37],[3176.89,3179.0,61.35,51.37,61.35,51.37],[3179.0,3306.18,61.35,51.37,169.95,109.29],[3306.18,3307.71,169.95,109.29,169.95,109.29],[3307.71,3335.06,169.95,109.29,135.08,69.39],[3335.06,3336.72,135.08,69.39,135.08,69.39],[3336.72,3341.76,135.08,69.39,137.68,77.36],[3341.76,3344.81,137.68,77.36,137.68,77.36],[3344.81,3407.47,137.68,77.36,60.34,43.77],[3407.47,3415.56,60.34,43.77,60.34,43.77],[3415.56,3432.37,60.34,43.77,48.4,20.09],[3432.37,3438.97,48.4,20.09,48.4,20.09],[3438.97,3580.42,48.4,20.09,176.31,118.89],[3580.42,3583.18,176.31,118.89,176.31,118.89],[3583.18,3626.28,176.31,118.89,158.66,199.88],[3626.28,3632.69,158.66,199.88,158.66,199.88]],"5":[[0.0,142.23,73.83,89.01,111.75,183.81],[142.23,143.44,111.75,183.81,111.75,183.81],[143.44,306.31,111.75,183.81,159.08,6.3],[306.31,312.79,159.08,6.3,159.08,6.3],[312.79,474.21,159.08,6.3,2.35,162.87],[474.21,482.86,2.35,162.87,2.35,162.87],[482.86,698.31,2.35,162.87,137.75,165.7],[698.31,705.25,137.75,165.7,137.75,165.7],[705.25,765.1,137.75,165.7,123.98,78.19],[765.1,774.77,123.98,78.19,123.98,78.19],[774.77,889.56,123.98,78.19,40.08,59.48],[889.56,899.55,40.08,59.48,40.08,59.48],[899.55,967.5,40.08,59.48,4.45,38.38],[967.5,970.21,4.45,38.38,4.45,38.38],[970.21,1082.14,4.45,38.38,112.57,42.51],[1082.14,1084.56,112.57,42.51,112.57,42.51],[1084.56,1201.73,112.57,42.51,111.59,167.18],[1201.73,1202.09,111.59,167.18,111.59,167.18],[1202.09,1408.74,111.59,167.18,22.67,9.35],[1408.74,1417.23,22.67,9.35,22.67,9.35],[1417.23,1508.75,22.67,9.35,109.32,106.29],[1508.75,1511.55,109.32,106.29,109.32,106.29],[1511.55,1557.58,109.32,106.29,64.95,114.0],[1557.58,1557.7,64.95,114.0,64.95,114.0],[1557.7,1712.95,64.95,114.0,190.79,138.85],[1712.95,1713.3,190.79,138.85,190.79,138.85],[1713.3,1828.83,190.79,138.85,1.93,168.9],[1828.83,1838.57,1.93,168.9,1.93,168.9],[1838.57,2100.9,1.93,168.9,189.04,32.55],[2100.9,2103.84,189.04,32.55,189.04,32.55],[2103.84,2317.09,189.04,32.55,9.29,113.98],[2317.09,2321.06,9.29,113.98,9.29,113.98],[2321.06,2394.3,9.29,113.98,106.21,176.12],[2394.3,2400.53,106.21,176.12,106.21,176.12],[2400.53,2495.4,106.21,176.12,18.78,157.42],[2495.4,2502.11,18.78,157.42,18.78,157.42],[2502.11,2540.41,18.78,157.42,6.68,122.16],[2540.41,2541.15,6.68,122.16,6.68,122.16],[2541.15,2639.01,6.68,122.16,46.86,19.84],[2639.01,2639.33,46.86,19.84,46.86,19.84],[2639.33,2906.29,46.86,19.84,163.81,182.89],[2906.29,2916.07,163.81,182.89,163.81,182.89],[2916.07,3032.26,163.81,182.89,80.18,194.28],[3032.26,3033.3,80.18,194.28,80.18,194.28],[3033.3,3161.93,80.18,194.28,5.13,48.14],[3161.93,3171.49,5.13,48.14,5.13,48.14],[3171.49,3300.84,5.13,48.14,79.81,139.49],[3300.84,3303.56,79.81,139.49,79.81,139.49],[3303.56,3335.17,79.81,139.49,93.25,119.82],[3335.17,3336.11,93.25,119.82,93.25,119.82],[3336.11,3422.23,93.25,119.82,197.23,176.96],[3422.23,3426.14,197.23,176.96,197.23,176.96],[3426.14,3538.23,197.23,176.96,9.09,104.23],[3538.23,3542.14,9.09,104.23,9.09,104.23],[3542.14,3608.77,9.09,104.23,115.92,57.77],[3608.77,3614.38,115.92,57.77,115.92,57.77]],"6":[[0.0,197.39,171.13,141.97,57.88,0.11],[197.39,199.7,57.88,0.11,57.88,0.11],[199.7,215.75,57.88,0.11,88.18,1.31],[215.75,222.84,88.18,1.31,88.18,1.31],[222.84,352.07,88.18,1.31,43.92,57.23],[352.07,354.88,43.92,57.23,43.92,57.23],[354.88,462.62,43.92,57.23,170.08,28.8],[462.62,464.31,170.08,28.8,170.08,28.8],[464.31,583.56,170.08,28.8,133.71,152.43],[583.56,589.21,133.71,152.43,133.71,152.43],[589.21,779.33,133.71,152.43,11.24,14.1],[779.33,780.35,11.24,14.1,11.24,14.1],[780.35,809.74,11.24,14.1,65.9,32.01],[809.74,816.08,65.9,32.01,65.9,32.01],[816.08,1059.38,65.9,32.01,139.49,153.16],[1059.38,1060.95,139.49,153.16,139.49,153.16],[1060.95,1117.22,139.49,153.16,89.66,82.87],[1117.22,1118.65,89.66,82.87,89.66,82.87],[1118.65,1142.48,89.66,82.87,131.93,76.46],[1142.48,1143.09,131.93,76.46,131.93,76.46],[1143.09,1190.93,131.93,76.46,86.67,55.84],[1190.93,1200.36,86.67,55.84,86.67,55.84],[1200.36,1239.17,86.67,55.84,83.62,130.48],[1239.17,1241.39,83.62,130.48,83.62,130.48],[1241.39,1311.74,83.62,130.48,196.67,63.29],[1311.74,1314.69,196.67,63.29,196.67,63.29],[1314.69,1482.89,196.67,63.29,84.71,147.93],[1482.89,1490.28,84.71,147.93,84.71,147.93],[1490.28,1507.27,84.71,147.93,107.14,144.76],[1507.27,1514.67,107.14,144.76,107.14,144.76],[1514.67,1573.95,107.14,144.76,28.78,74.96],[1573.95,1579.61,28.78,74.96,28.78,74.96],[1579.61,1745.02,28.78,74.96,5.54,193.65],[1745.02,1752.21,5.54,193.65,5.54,193.65],[1752.21,1881.93,5.54,193.65,134.77,199.92],[1881.93,1888.08,134.77,199.92,134.77,199.92],[1888.08,2015.65,134.77,199.92,68.16,111.37],[2015.65,2020.83,68.16,111.37,68.16,111.37],[2020.83,2066.18,68.16,111.37,133.82,61.8],[2066.18,2069.2,133.82,61.8,133.82,61.8],[2069.2,2101.15,133.82,61.8,136.38,29.06],[2101.15,2106.34,136.38,29.06,136.38,29.06],[2106.34,2152.01,136.38,29.06,103.64,9.27],[2152.01,2157.19,103.64,9.27,103.64,9.27],[2157.19,2229.24,103.64,9.27,71.94,75.99],[2229.24,2232.62,71.94,75.99,71.94,75.99],[2232.62,2269.21,71.94,75.99,25.44,112.21],[2269.21,2274.07,25.44,112.21,25.44,112.21],[2274.07,2350.64,25.44,112.21,14.81,185.9],[2350.64,2359.64,14.81,185.9,14.81,185.9],[2359.64,2615.07,14.81,185.9,166.75,153.72],[2615.07,2617.05,166.75,153.72,166.75,153.72],[2617.05,2648.97,166.75,153.72,196.29,134.49],[2648.97,2657.28,196.29,134.49,196.29,134.49],[2657.28,2813.83,196.29,134.49,12.13,115.62],[2813.83,2820.35,12.13,115.62,12.13,115.62],[2820.35,3191.09,12.13,115.62,197.55,175.91],[3191.09,3196.12,197.55,175.91,197.55,175.91],[3196.12,3205.71,197.55,175.91,185.67,168.7],[3205.71,3213.7,185.67,168.7,185.67,168.7],[3213.7,3259.46,185.67,168.7,173.41,91.65],[3259.46,3260.24,173.41,91.65,173.41,91.65],[3260.24,3360.65,173.41,91.65,117.15,77.82],[3360.65,3363.19,117.15,77.82,117.15,77.82],[3363.19,3479.78,117.15,77.82,80.71,148.36],[3479.78,3480.21,80.71,148.36,80.71,148.36],[3480.21,3567.12,80.71,148.36,148.45,154.61],[3567.12,3577.07,148.45,154.61,148.45,154.61],[3577.07,3657.45,148.45,154.61,85.2,152.91],[3657.45,3658.54,85.2,152.91,85.2,152.91]],"12":[[0.0,114.56,27.59,61.63,111.48,125.95],[114.56,123.07,111.48,125.95,111.48,125.95],[123.07,168.91,111.48,125.95,52.86,93.0],[168.91,172.25,52.86,93.0,52.86,93.0],[172.25,245.7,52.86,93.0,82.6,19.39],[245.7,254.85,82.6,19.39,82.6,19.39],[254.85,406.86,82.6,19.39,192.08,189.4],[406.86,415.01,192.08,189.4,192.08,189.4],[415.01,820.17,192.08,189.4,45.78,21.62],[820.17,827.27,45.78,21.62,45.78,21.62],[827.27,900.31,45.78,21.62,92.83,140.9],[900.31,901.59,92.83,140.9,92.83,140.9],[901.59,975.25,92.83,140.9,122.73,50.83],[975.25,978.76,122.73,50.83,122.73,50.83],[978.76,1092.08,122.73,50.83,79.18,14.51],[1092.08,1099.87,79.18,14.51,79.18,14.51],[1099.87,1212.24,79.18,14.51,49.89,98.71],[1212.24,1213.28,49.89,98.71,49.89,98.71],[1213.28,1251.01,49.89,98.71,4.76,128.67],[1251.01,1254.91,4.76,128.67,4.76,128.67],[1254.91,1340.01,4.76,128.67,159.97,130.48],[1340.01,1340.58,159.97,130.48,159.97,130.48],[1340.58,1402.32,159.97,130.48,119.07,184.77],[1402.32,1404.94,119.07,184.77,119.07,184.77],[1404.94,1530.75,119.07,184.77,26.46,26.99],[1530.75,1535.0,26.46,26.99,26.46,26.99],[1535.0,1576.41,26.46,26.99,47.56,64.86],[1576.41,1586.3,47.56,64.86,47.56,64.86],[1586.3,1638.71,47.56,64.86,122.6,41.24],[1638.71,1646.81,122.6,41.24,122.6,41.24],[1646.81,1671.2,122.6,41.24,142.65,78.61],[1671.2,1673.38,142.65,78.61,142.65,78.61],[1673.38,1727.71,142.65,78.61,111.88,176.09],[1727.71,1731.75,111.88,176.09,111.88,176.09],[1731.75,1756.27,111.88,176.09,67.65,183.08],[1756.27,1761.21,67.65,183.08,67.65,183.08],[1761.21,1839.77,67.65,183.08,188.27,157.48],[1839.77,1842.88,188.27,157.48,188.27,157.48],[1842.88,2002.44,188.27,157.48,117.11,45.67],[2002.44,2007.84,117.11,45.67,117.11,45.67],[2007.84,2035.85,117.11,45.67,64.36,62.85],[2035.85,2037.64,64.36,62.85,64.36,62.85],[2037.64,2127.97,64.36,62.85,179.61,40.53],[2127.97,2131.96,179.61,40.53,179.61,40.53],[2131.96,2332.82,179.61,40.53,185.72,175.14],[2332.82,2341.37,185.72,175.14,185.72,175.14],[2341.37,2356.96,185.72,175.14,156.89,168.55],[2356.96,2358.04,156.89,168.55,156.89,168.55],[2358.04,2647.34,156.89,168.55,8.78,35.49],[2647.34,2652.16,8.78,35.49,8.78,35.49],[2652.16,2682.97,8.78,35.49,27.34,89.33],[2682.97,2689.66,27.34,89.33,27.34,89.33],[2689.66,2794.39,27.34,89.33,83.67,58.69],[2794.39,2801.39,83.67,58.69,83.67,58.69],[2801.39,2864.99,83.67,58.69,122.19,148.01],[2864.99,2866.4,122.19,148.01,122.19,148.01],[2866.4,2938.82,122.19,148.01,120.86,43.57],[2938.82,2942.03,120.86,43.57,120.86,43.57],[2942.03,2997.37,120.86,43.57,138.93,132.44],[2997.37,3001.95,138.93,132.44,138.93,132.44],[3001.95,3095.47,138.93,132.44,41.85,183.17],[3095.47,3102.9,41.85,183.17,41.85,183.17],[3102.9,3116.49,41.85,183.17,21.16,174.77],[3116.49,3124.29,21.16,174.77,21.16,174.77],[3124.29,3226.46,21.16,174.77,132.06,117.09],[3226.46,3226.52,132.06,117.09,132.06,117.09],[3226.52,3284.81,132.06,117.09,33.09,78.17],[3284.81,3290.64,33.09,78.17,33.09,78.17],[3290.64,3465.53,33.09,78.17,129.31,104.79],[3465.53,3465.81,129.31,104.79,129.31,104.79],[3465.81,3509.89,129.31,104.79,116.22,20.99],[3509.89,3515.6,116.22,20.99,116.22,20.99],[3515.6,3567.99,116.22,20.99,74.71,113.18],[3567.99,3573.65,74.71,113.18,74.71,113.18],[3573.65,3623.56,74.71,113.18,6.99,104.88],[3623.56,3627.96,6.99,104.88,6.99,104.88]],"16":[[0.0,110.43,9.17,131.34,170.59,64.79],[110.43,116.67,170.59,64.79,170.59,64.79],[116.67,194.1,170.59,64.79,114.49,120.52],[194.1,196.06,114.49,120.52,114.49,120.52],[196.06,339.91,114.49,120.52,23.62,42.17],[339.91,340.6,23.62,42.17,23.62,42.17],[340.6,470.76,23.62,42.17,46.69,112.31],[470.76,478.23,46.69,112.31,46.69,112.31],[478.23,512.75,46.69,112.31,103.35,108.06],[512.75,516.51,103.35,108.06,103.35,108.06],[516.51,602.68,103.35,108.06,141.12,196.48],[602.68,610.21,141.12,196.48,141.12,196.48],[610.21,646.41,141.12,196.48,188.17,143.9],[646.41,652.46,188.17,143.9,188.17,143.9],[652.46,681.18,188.17,143.9,159.11,153.26],[681.18,688.79,159.11,153.26,159.11,153.26],[688.79,776.06,159.11,153.26,172.14,30.17],[776.06,783.34,172.14,30.17,172.14,30.17],[783.34,913.92,172.14,30.17,1.74,20.21],[913.92,915.23,1.74,20.21,1.74,20.21],[915.23,960.19,1.74,20.21,83.22,16.76],[960.19,965.06,83.22,16.76,83.22,16.76],[965.06,1174.88,83.22,16.76,189.4,118.12],[1174.88,1182.65,189.4,118.12,189.4,118.12],[1182.65,1464.85,189.4,118.12,18.73,196.25],[1464.85,1473.49,18.73,196.25,18.73,196.25],[1473.49,1504.95,18.73,196.25,45.8,172.37],[1504.95,1510.15,45.8,172.37,45.8,172.37],[1510.15,1600.15,45.8,172.37,134.36,127.87],[1600.15,1604.24,134.36,127.87,134.36,127.87],[1604.24,1818.78,134.36,127.87,6.86,52.33],[1818.78,1824.89,6.86,52.33,6.86,52.33],[1824.89,1989.36,6.86,52.33,161.32,62.05],[1989.36,1994.99,161.32,62.05,161.32,62.05],[1994.99,2209.23,161.32,62.05,47.15,100.3],[2209.23,2217.45,47.15,100.3,47.15,100.3],[2217.45,2239.12,47.15,100.3,14.87,73.71],[2239.12,2240.03,14.87,73.71,14.87,73.71],[2240.03,2400.18,14.87,73.71,194.59,90.28],[2400.18,2410.15,194.59,90.28,194.59,90.28],[2410.15,2492.06,194.59,90.28,92.09,21.41],[2492.06,2495.96,92.09,21.41,92.09,21.41],[2495.96,2633.24,92.09,21.41,16.98,18.97],[2633.24,2634.15,16.98,18.97,16.98,18.97],[2634.15,2667.65,16.98,18.97,64.48,60.11],[2667.65,2675.3,64.48,60.11,64.48,60.11],[2675.3,2757.04,64.48,60.11,138.26,41.61],[2757.04,2757.14,138.26,41.61,138.26,41.61],[2757.14,2847.35,138.26,41.61,38.07,140.36],[2847.35,2855.72,38.07,140.36,38.07,140.36],[2855.72,2908.86,38.07,140.36,99.1,180.56],[2908.86,2917.97,99.1,180.56,99.1,180.56],[2917.97,3026.45,99.1,180.56,156.15,75.26],[3026.45,3031.47,156.15,75.26,156.15,75.26],[3031.47,3106.56,156.15,75.26,170.6,121.7],[3106.56,3107.65,170.6,121.7,170.6,121.7],[3107.65,3176.53,170.6,121.7,113.96,192.58],[3176.53,3185.16,113.96,192.58,113.96,192.58],[3185.16,3437.71,113.96,192.58,0.4,88.93],[3437.71,3446.55,0.4,88.93,0.4,88.93],[3446.55,3508.87,0.4,88.93,65.46,191.24],[3508.87,3512.5,65.46,191.24,65.46,191.24],[3512.5,3791.44,65.46,191.24,119.54,10.78],[3791.44,3799.28,119.54,10.78,119.54,10.78]],"18":[[0.0,91.28,137.94,100.98,61.24,163.67],[91.28,98.77,61.24,163.67,61.24,163.67],[98.77,217.9,61.24,163.67,158.94,64.45],[217.9,221.04,158.94,64.45,158.94,64.45],[221.04,529.58,158.94,64.45,22.47,190.52],[529.58,531.34,22.47,190.52,22.47,190.52],[531.34,617.27,22.47,190.52,39.6,24.65],[617.27,626.98,39.6,24.65,39.6,24.65],[626.98,740.38,39.6,24.65,124.93,133.0],[740.38,750.02,124.93,133.0,124.93,133.0],[750.02,787.55,124.93,133.0,131.03,197.26],[787.55,793.25,131.03,197.26,131.03,197.26],[793.25,813.59,131.03,197.26,97.48,176.53],[813.59,818.95,97.48,176.53,97.48,176.53],[818.95,904.93,97.48,176.53,127.46,48.77],[904.93,912.28,127.46,48.77,127.46,48.77],[912.28,994.28,127.46,48.77,138.88,169.27],[994.28,998.02,138.88,169.27,138.88,169.27],[998.02,1044.38,138.88,169.27,76.73,195.08],[1044.38,1046.65,76.73,195.08,76.73,195.08],[1046.65,1071.22,76.73,195.08,73.91,178.29],[1071.22,1076.06,73.91,178.29,73.91,178.29],[1076.06,1280.42,73.91,178.29,110.3,70.32],[1280.42,1286.49,110.3,70.32,110.3,70.32],[1286.49,1331.0,110.3,70.32,166.65,119.96],[1331.0,1336.36,166.65,119.96,166.65,119.96],[1336.36,1526.09,166.65,119.96,6.11,49.88],[1526.09,1530.54,6.11,49.88,6.11,49.88],[1530.54,1684.81,6.11,49.88,112.91,7.06],[1684.81,1686.43,112.91,7.06,112.91,7.06],[1686.43,1946.45,112.91,7.06,193.27,116.35],[1946.45,1952.07,193.27,116.35,193.27,116.35],[1952.07,2026.54,193.27,116.35,96.23,74.17],[2026.54,2028.1,96.23,74.17,96.23,74.17],[2028.1,2133.48,96.23,74.17,24.89,131.06],[2133.48,2142.85,24.89,131.06,24.89,131.06],[2142.85,2145.35,24.89,131.06,26.73,129.86],[2145.35,2154.73,26.73,129.86,26.73,129.86],[2154.73,2292.05,26.73,129.86,164.14,30.58],[2292.05,2295.81,164.14,30.58,164.14,30.58],[2295.81,2423.18,164.14,30.58,32.32,90.16],[2423.18,2423.18,32.32,90.16,32.32,90.16],[2423.18,2499.02,32.32,90.16,178.85,64.05],[2499.02,2507.08,178.85,64.05,178.85,64.05],[2507.08,2600.73,178.85,64.05,67.16,9.23],[2600.73,2602.16,67.16,9.23,67.16,9.23],[2602.16,2645.3,67.16,9.23,90.83,52.76],[2645.3,2653.86,90.83,52.76,90.83,52.76],[2653.86,2670.05,90.83,52.76,80.94,34.44],[2670.05,2677.03,80.94,34.44,80.94,34.44],[2677.03,2845.93,80.94,34.44,101.71,185.48],[2845.93,2849.77,101.71,185.48,101.71,185.48],[2849.77,2916.98,101.71,185.48,187.42,175.4],[2916.98,2924.13,187.42,175.4,187.42,175.4],[2924.13,2951.84,187.42,175.4,137.94,162.37],[2951.84,2954.86,137.94,162.37,137.94,162.37],[2954.86,2989.94,137.94,162.37,107.44,136.47],[2989.94,2998.47,107.44,136.47,107.44,136.47],[2998.47,3059.15,107.44,136.47,179.65,40.61],[3059.15,3061.17,179.65,40.61,179.65,40.61],[3061.17,3225.5,179.65,40.61,1.63,63.01],[3225.5,3235.41,1.63,63.01,1.63,63.01],[3235.41,3407.06,1.63,63.01,81.91,196.93],[3407.06,3413.14,81.91,196.93,81.91,196.93],[3413.14,3450.32,81.91,196.93,39.88,152.8],[3450.32,3455.89,39.88,152.8,39.88,152.8],[3455.89,3534.52,39.88,152.8,56.76,7.69],[3534.52,3541.73,56.76,7.69,56.76,7.69],[3541.73,3663.71,56.76,7.69,61.11,197.89],[3663.71,3666.93,61.11,197.89,61.11,197.89]],"21":[[0.0,81.72,171.06,112.35,96.48,95.17],[81.72,84.8,96.48,95.17,96.48,95.17],[84.8,121.62,96.48,95.17,116.87,138.76],[121.62,131.49,116.87,138.76,116.87,138.76],[131.49,160.46,116.87,138.76,138.76,176.15],[160.46,170.32,138.76,176.15,138.76,176.15],[170.32,216.48,138.76,176.15,199.74,188.21],[216.48,224.73,199.74,188.21,199.74,188.21],[224.73,262.19,199.74,188.21,144.08,197.51],[262.19,272.13,144.08,197.51,144.08,197.51],[272.13,669.15,144.08,197.51,24.26,12.78],[669.15,672.07,24.26,12.78,24.26,12.78],[672.07,732.89,24.26,12.78,82.08,112.34],[732.89,736.16,82.08,112.34,82.08,112.34],[736.16,793.07,82.08,112.34,31.16,198.88],[793.07,802.21,31.16,198.88,31.16,198.88],[802.21,839.01,31.16,198.88,68.43,139.89],[839.01,844.46,68.43,139.89,68.43,139.89],[844.46,1050.12,68.43,139.89,52.2,37.38],[1050.12,1050.7,52.2,37.38,52.2,37.38],[1050.7,1134.33,52.2,37.38,0.34,40.07],[1134.33,1134.39,0.34,40.07,0.34,40.07],[1134.39,1186.89,0.34,40.07,19.03,82.7],[1186.89,1192.35,19.03,82.7,19.03,82.7],[1192.35,1197.61,19.03,82.7,23.23,87.75],[1197.61,1207.14,23.23,87.75,23.23,87.75],[1207.14,1384.03,23.23,87.75,174.91,191.04],[1384.03,1393.5,174.91,191.04,174.91,191.04],[1393.5,1435.88,174.91,191.04,133.19,148.33],[1435.88,1443.46,133.19,148.33,133.19,148.33],[1443.46,1513.08,133.19,148.33,140.22,12.99],[1513.08,1522.52,140.22,12.99,140.22,12.99],[1522.52,1675.67,140.22,12.99,183.24,104.18],[1675.67,1677.73,183.24,104.18,183.24,104.18],[1677.73,1831.19,183.24,104.18,52.62,22.96],[1831.19,1841.1,52.62,22.96,52.62,22.96],[1841.1,1919.15,52.62,22.96,38.5,67.04],[1919.15,1928.85,38.5,67.04,38.5,67.04],[1928.85,2091.96,38.5,67.04,167.04,199.77],[2091.96,2094.96,167.04,199.77,167.04,199.77],[2094.96,2317.41,167.04,199.77,96.07,86.46],[2317.41,2323.27,96.07,86.46,96.07,86.46],[2323.27,2351.17,96.07,86.46,43.86,85.2],[2351.17,2356.22,43.86,85.2,43.86,85.2],[2356.22,2455.35,43.86,85.2,164.74,146.61],[2455.35,2464.07,164.74,146.61,164.74,146.61],[2464.07,2555.64,164.74,146.61,43.22,153.35],[2555.64,2558.85,43.22,153.35,43.22,153.35],[2558.85,2758.3,43.22,153.35,154.71,56.95],[2758.3,2758.75,154.71,56.95,154.71,56.95],[2758.75,2837.48,154.71,56.95,71.65,131.88],[2837.48,2840.08,71.65,131.88,71.65,131.88],[2840.08,2864.09,71.65,131.88,80.77,164.49],[2864.09,2865.18,80.77,164.49,80.77,164.49],[2865.18,2906.25,80.77,164.49,82.23,100.87],[2906.25,2915.75,82.23,100.87,82.23,100.87],[2915.75,2956.27,82.23,100.87,155.16,100.36],[2956.27,2960.87,155.16,100.36,155.16,100.36],[2960.87,3144.11,155.16,100.36,62.27,32.9],[3144.11,3152.97,62.27,32.9,62.27,32.9],[3152.97,3203.87,62.27,32.9,126.4,88.65],[3203.87,3203.94,126.4,88.65,126.4,88.65],[3203.94,3249.53,126.4,88.65,99.58,125.32],[3249.53,3252.32,99.58,125.32,99.58,125.32],[3252.32,3320.9,99.58,125.32,114.46,29.69],[3320.9,3322.9,114.46,29.69,114.46,29.69],[3322.9,3470.1,114.46,29.69,43.09,195.26],[3470.1,3476.39,43.09,195.26,43.09,195.26],[3476.39,3645.31,43.09,195.26,116.07,16.09],[3645.31,3652.14,116.07,16.09,116.07,16.09]],"22":[[0.0,298.73,115.16,179.65,24.08,38.26],[298.73,299.17,24.08,38.26,24.08,38.26],[299.17,490.65,24.08,38.26,146.95,92.31],[490.65,498.55,146.95,92.31,146.95,92.31],[498.55,593.83,146.95,92.31,27.97,130.12],[593.83,600.77,27.97,130.12,27.97,130.12],[600.77,911.27,27.97,130.12,195.78,45.84],[911.27,917.43,195.78,45.84,195.78,45.84],[917.43,1005.57,195.78,45.84,60.94,109.57],[1005.57,1013.79,60.94,109.57,60.94,109.57],[1013.79,1077.63,60.94,109.57,86.5,149.64],[1077.63,1077.77,86.5,149.64,86.5,149.64],[1077.77,1140.36,86.5,149.64,97.81,99.66],[1140.36,1141.74,97.81,99.66,97.81,99.66],[1141.74,1230.44,97.81,99.66,179.36,168.45],[1230.44,1231.85,179.36,168.45,179.36,168.45],[1231.85,1280.1,179.36,168.45,179.98,99.82],[1280.1,1285.2,179.98,99.82,179.98,99.82],[1285.2,1452.75,179.98,99.82,2.57,147.77],[1452.75,1461.84,2.57,147.77,2.57,147.77],[1461.84,1503.62,2.57,147.77,41.6,197.16],[1503.62,1506.6,41.6,197.16,41.6,197.16],[1506.6,1565.85,41.6,197.16,115.19,133.64],[1565.85,1569.28,115.19,133.64,115.19,133.64],[1569.28,1661.64,115.19,133.64,193.68,146.73],[1661.64,1665.97,193.68,146.73,193.68,146.73],[1665.97,1717.67,193.68,146.73,147.6,143.48],[1717.67,1727.01,147.6,143.48,147.6,143.48],[1727.01,1913.85,147.6,143.48,80.0,48.91],[1913.85,1921.69,80.0,48.91,80.0,48.91],[1921.69,1941.83,80.0,48.91,84.48,29.76],[1941.83,1946.55,84.48,29.76,84.48,29.76],[1946.55,2065.28,84.48,29.76,164.48,13.71],[2065.28,2071.31,164.48,13.71,164.48,13.71],[2071.31,2082.76,164.48,13.71,173.34,4.08],[2082.76,2089.3,173.34,4.08,173.34,4.08],[2089.3,2165.01,173.34,4.08,87.51,21.92],[2165.01,2171.28,87.51,21.92,87.51,21.92],[2171.28,2298.67,87.51,21.92,151.59,137.82],[2298.67,2301.15,151.59,137.82,151.59,137.82],[2301.15,2381.63,151.59,137.82,73.52,147.26],[2381.63,2384.1,73.52,147.26,73.52,147.26],[2384.1,2435.84,73.52,147.26,11.68,87.12],[2435.84,2440.74,11.68,87.12,11.68,87.12],[2440.74,2484.54,11.68,87.12,49.8,148.63],[2484.54,2493.88,49.8,148.63,49.8,148.63],[2493.88,2538.1,49.8,148.63,37.41,69.68],[2538.1,2538.52,37.41,69.68,37.41,69.68],[2538.52,2572.75,37.41,69.68,53.33,20.42],[2572.75,2576.58,53.33,20.42,53.33,20.42],[2576.58,2673.0,53.33,20.42,101.95,50.75],[2673.0,2678.73,101.95,50.75,101.95,50.75],[2678.73,2757.69,101.95,50.75,143.74,67.89],[2757.69,2767.14,143.74,67.89,143.74,67.89],[2767.14,2966.25,143.74,67.89,14.86,158.11],[2966.25,2972.0,14.86,158.11,14.86,158.11],[2972.0,3091.87,14.86,158.11,160.45,105.07],[3091.87,3092.5,160.45,105.07,160.45,105.07],[3092.5,3120.44,160.45,105.07,191.19,110.83],[3120.44,3129.29,191.19,110.83,191.19,110.83],[3129.29,3289.29,191.19,110.83,8.8,159.81],[3289.29,3294.02,8.8,159.81,8.8,159.81],[3294.02,3311.75,8.8,159.81,27.04,179.42],[3311.75,3318.82,27.04,179.42,27.04,179.42],[3318.82,3352.67,27.04,179.42,80.55,180.13],[3352.67,3358.44,80.55,180.13,80.55,180.13],[3358.44,3574.87,80.55,180.13,103.38,10.5],[3574.87,3579.08,103.38,10.5,103.38,10.5],[3579.08,3751.12,103.38,10.5,11.83,170.5],[3751.12,3759.64,11.83,170.5,11.83,170.5]],"30":[[0.0,41.02,34.34,11.87,0.17,49.34],[41.02,44.67,0.17,49.34,0.17,49.34],[44.67,158.3,0.17,49.34,113.51,101.59],[158.3,163.43,113.51,101.59,113.51,101.59],[163.43,187.38,113.51,101.59,92.25,102.24],[187.38,194.93,92.25,102.24,92.25,102.24],[194.93,409.61,92.25,102.24,191.9,154.17],[409.61,411.62,191.9,154.17,191.9,154.17],[411.62,786.33,191.9,154.17,1.17,31.17],[786.33,794.19,1.17,31.17,1.17,31.17],[794.19,839.18,1.17,31.17,17.07,116.0],[839.18,845.21,17.07,116.0,17.07,116.0],[845.21,960.07,17.07,116.0,166.08,94.05],[960.07,969.58,166.08,94.05,166.08,94.05],[969.58,1062.22,166.08,94.05,33.63,13.15],[1062.22,1067.74,33.63,13.15,33.63,13.15],[1067.74,1184.97,33.63,13.15,88.97,159.79],[1184.97,1186.5,88.97,159.79,88.97,159.79],[1186.5,1318.33,88.97,159.79,4.49,103.56],[1318.33,1322.34,4.49,103.56,4.49,103.56],[1322.34,1511.43,4.49,103.56,144.35,112.34],[1511.43,1517.13,144.35,112.34,144.35,112.34],[1517.13,1536.46,144.35,112.34,179.98,105.67],[1536.46,1544.55,179.98,105.67,179.98,105.67],[1544.55,1596.2,179.98,105.67,144.77,15.2],[1596.2,1600.43,144.77,15.2,144.77,15.2],[1600.43,1761.48,144.77,15.2,52.1,178.76],[1761.48,1761.87,52.1,178.76,52.1,178.76],[1761.87,1839.81,52.1,178.76,135.5,131.83],[1839.81,1846.8,135.5,131.83,135.5,131.83],[1846.8,1981.61,135.5,131.83,67.05,72.6],[1981.61,1985.7,67.05,72.6,67.05,72.6],[1985.7,2069.22,67.05,72.6,186.88,23.81],[2069.22,2075.43,186.88,23.81,186.88,23.81],[2075.43,2278.0,186.88,23.81,75.57,6.45],[2278.0,2278.21,75.57,6.45,75.57,6.45],[2278.21,2298.49,75.57,6.45,60.72,30.64],[2298.49,2300.73,60.72,30.64,60.72,30.64],[2300.73,2453.02,60.72,30.64,167.52,176.21],[2453.02,2455.74,167.52,176.21,167.52,176.21],[2455.74,2497.79,167.52,176.21,109.06,120.28],[2497.79,2501.04,109.06,120.28,109.06,120.28],[2501.04,2560.7,109.06,120.28,143.67,67.59],[2560.7,2565.31,143.67,67.59,143.67,67.59],[2565.31,2797.43,143.67,67.59,91.6,174.06],[2797.43,2805.84,91.6,174.06,91.6,174.06],[2805.84,2849.48,91.6,174.06,39.55,158.07],[2849.48,2858.31,39.55,158.07,39.55,158.07],[2858.31,2930.58,39.55,158.07,109.4,161.12],[2930.58,2933.47,109.4,161.12,109.4,161.12],[2933.47,3044.44,109.4,161.12,69.31,92.75],[3044.44,3044.91,69.31,92.75,69.31,92.75],[3044.91,3048.98,69.31,92.75,75.96,90.91],[3048.98,3054.27,75.96,90.91,75.96,90.91],[3054.27,3104.72,75.96,90.91,3.56,22.42],[3104.72,3112.57,3.56,22.42,3.56,22.42],[3112.57,3208.95,3.56,22.42,75.89,81.93],[3208.95,3212.14,75.89,81.93,75.89,81.93],[3212.14,3237.54,75.89,81.93,71.59,129.44],[3237.54,3241.62,71.59,129.44,71.59,129.44],[3241.62,3272.27,71.59,129.44,43.86,115.16],[3272.27,3280.18,43.86,115.16,43.86,115.16],[3280.18,3362.21,43.86,115.16,182.23,196.39],[3362.21,3369.52,182.23,196.39,182.23,196.39],[3369.52,3483.57,182.23,196.39,118.69,151.66],[3483.57,3486.93,118.69,151.66,118.69,151.66],[3486.93,3575.46,118.69,151.66,185.01,176.36],[3575.46,3581.96,185.01,176.36,185.01,176.36],[3581.96,3817.77,185.01,176.36,113.38,22.42],[3817.77,3824.33,113.38,22.42,113.38,22.42]]};
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
