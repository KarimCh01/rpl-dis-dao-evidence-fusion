<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <simulation>
    <title>grid_n500_mob30_s1_t15</title>
    <randomseed>1</randomseed>
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
      <identifier>v_scale_fix_paced_ack_root</identifier>
      <description>v_scale_fix_paced_ack_root</description>
      <source>/home/user/project/build/variants/v_scale_fix_paced_ack_root/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_scale_fix_paced_ack_root.cooja</commands>
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
          <pos x="408.25" y="408.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>1</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_scale_fix_paced_ack_cli1</identifier>
      <description>v_scale_fix_paced_ack_cli1</description>
      <source>/home/user/project/build/variants/v_scale_fix_paced_ack_cli1/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_scale_fix_paced_ack_cli1.cooja</commands>
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
          <pos x="374.01" y="34.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>2</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.34" y="782.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>3</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.18" y="238.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>4</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.21" y="544.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>7</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.23" y="782.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>14</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.49" y="442.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>19</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.38" y="578.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>22</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.04" y="204.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>25</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.44" y="442.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>27</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.07" y="340.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>33</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.36" y="408.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>37</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.04" y="0.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>47</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="816.22" y="510.23" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>51</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.03" y="510.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>53</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.34" y="340.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>55</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.27" y="714.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>59</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.10" y="136.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>63</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.18" y="136.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>64</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.01" y="612.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>65</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.07" y="544.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>67</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.35" y="476.42" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>69</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.37" y="646.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>76</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.03" y="136.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>88</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.19" y="374.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>89</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.30" y="442.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>94</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.09" y="204.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>97</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.49" y="238.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>99</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.17" y="680.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>104</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.17" y="544.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>105</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.20" y="306.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>106</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.06" y="204.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>109</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.16" y="714.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>114</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.41" y="748.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>120</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.38" y="272.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>122</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.43" y="136.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>125</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.03" y="374.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>127</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.45" y="612.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>128</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.35" y="204.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>129</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.29" y="782.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>131</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.45" y="136.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>133</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.45" y="782.19" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>137</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.49" y="408.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>140</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.23" y="238.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>141</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.13" y="306.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>143</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.05" y="272.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>148</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.43" y="0.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>150</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.11" y="714.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>151</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.42" y="306.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>157</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.33" y="238.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>159</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.31" y="374.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>161</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.33" y="578.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>162</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.40" y="34.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>163</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.38" y="238.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>170</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.29" y="680.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>173</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.43" y="442.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>175</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.29" y="476.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>176</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.17" y="578.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>177</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.13" y="476.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>178</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.26" y="238.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>183</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.35" y="170.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>189</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.49" y="578.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>191</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.49" y="136.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>192</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.38" y="544.39" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>199</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.14" y="204.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>204</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.20" y="238.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>205</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.30" y="374.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>206</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.07" y="442.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>217</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.01" y="476.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>219</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.19" y="544.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>221</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.34" y="340.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>223</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.39" y="68.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>228</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.39" y="544.23" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>231</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.13" y="408.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>242</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.39" y="748.39" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>243</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.33" y="476.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>246</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.20" y="578.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>247</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.50" y="680.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>251</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.16" y="306.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>253</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.09" y="102.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>254</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.36" y="748.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>255</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.39" y="408.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>258</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.12" y="238.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>266</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.41" y="612.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>267</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.05" y="340.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>271</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.38" y="170.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>273</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.35" y="170.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>277</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.17" y="170.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>283</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.10" y="612.05" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>284</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.14" y="544.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>288</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="816.06" y="340.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>295</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.10" y="204.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>300</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.12" y="102.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>303</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.00" y="782.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>306</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.35" y="578.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>308</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.16" y="238.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>313</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.47" y="510.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>314</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.35" y="238.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>315</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.03" y="646.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>317</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.22" y="646.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>319</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.27" y="34.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>322</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.37" y="374.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>329</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.33" y="374.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>336</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.26" y="68.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>340</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.48" y="204.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>346</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.09" y="306.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>347</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.05" y="102.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>348</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.35" y="136.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>350</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.04" y="714.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>355</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.26" y="34.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>365</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.10" y="340.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>368</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.00" y="510.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>372</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.42" y="510.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>374</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.17" y="578.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>376</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.42" y="544.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>380</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.04" y="238.50" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>381</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.11" y="510.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>388</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.42" y="340.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>389</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.41" y="578.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>391</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.09" y="578.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>392</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.43" y="68.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>393</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.18" y="510.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>394</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.33" y="340.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>398</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.11" y="340.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>402</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.24" y="544.50" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>405</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.41" y="680.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>413</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.02" y="680.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>417</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.29" y="510.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>419</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.47" y="612.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>420</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.13" y="544.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>422</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.15" y="340.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>426</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.23" y="816.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>435</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.34" y="204.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>438</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.14" y="102.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>439</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.35" y="442.42" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>441</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.05" y="340.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>445</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.18" y="646.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>450</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.07" y="816.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>466</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.24" y="238.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>468</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.14" y="442.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>471</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.17" y="0.19" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>473</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.06" y="170.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>478</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.09" y="408.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>479</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.45" y="306.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>487</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.37" y="374.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>489</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.42" y="170.50" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>492</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.30" y="646.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>494</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.28" y="408.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>495</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.11" y="238.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>497</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.23" y="612.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>498</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.20" y="136.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>499</id>
        </interface_config>
      </mote>
    </motetype>
    <motetype>
      org.contikios.cooja.contikimote.ContikiMoteType
      <identifier>v_scale_fix_paced_ack_cli0</identifier>
      <description>v_scale_fix_paced_ack_cli0</description>
      <source>/home/user/project/build/variants/v_scale_fix_paced_ack_cli0/node.c</source>
      <commands>make -s -f /home/user/project/firmware/install.mk PREBUILT=v_scale_fix_paced_ack_cli0.cooja</commands>
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
          <pos x="476.48" y="680.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>5</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.31" y="170.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>6</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.10" y="102.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>8</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.04" y="646.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>9</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.30" y="510.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>10</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.29" y="102.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>11</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.07" y="102.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>12</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.32" y="612.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>13</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.22" y="680.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>15</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.26" y="102.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>16</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.34" y="204.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>17</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.45" y="374.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>18</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.37" y="340.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>20</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.45" y="136.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>21</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.09" y="102.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>23</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.21" y="476.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>24</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.08" y="306.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>26</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.02" y="374.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>28</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.47" y="510.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>29</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.22" y="612.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>30</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.45" y="374.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>31</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.12" y="714.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>32</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.10" y="306.05" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>34</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.15" y="646.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>35</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.33" y="272.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>36</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.29" y="578.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>38</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="816.29" y="442.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>39</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.20" y="408.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>40</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.46" y="612.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>41</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.21" y="374.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>42</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.06" y="170.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>43</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.25" y="238.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>44</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.33" y="306.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>45</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.26" y="680.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>46</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.38" y="408.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>48</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.36" y="272.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>49</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.35" y="510.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>50</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.13" y="306.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>52</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.22" y="170.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>54</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.48" y="238.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>56</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.06" y="272.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>57</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.27" y="476.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>58</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.05" y="510.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>60</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.29" y="782.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>61</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.40" y="204.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>62</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.34" y="544.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>66</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.03" y="306.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>68</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.17" y="340.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>70</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.37" y="306.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>71</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.21" y="306.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>72</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.11" y="238.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>73</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.02" y="646.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>74</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.50" y="408.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>75</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.11" y="714.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>77</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.41" y="204.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>78</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.18" y="68.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>79</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.24" y="646.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>80</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.38" y="238.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>81</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.15" y="272.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>82</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.45" y="612.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>83</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.06" y="612.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>84</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.44" y="0.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>85</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.31" y="408.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>86</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.05" y="646.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>87</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.10" y="510.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>90</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.15" y="204.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>91</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.22" y="680.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>92</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.50" y="306.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>93</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.28" y="272.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>95</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.38" y="680.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>96</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.20" y="374.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>98</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.38" y="476.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>100</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.03" y="0.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>101</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.34" y="238.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>102</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.39" y="34.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>103</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.22" y="578.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>107</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.41" y="510.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>108</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.07" y="714.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>110</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.22" y="102.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>111</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.27" y="578.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>112</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.35" y="748.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>113</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.38" y="510.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>115</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.35" y="170.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>116</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.19" y="408.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>117</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.04" y="340.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>118</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.02" y="782.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>119</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.19" y="408.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>121</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.12" y="238.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>123</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.21" y="136.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>124</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.20" y="748.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>126</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.34" y="578.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>130</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.30" y="340.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>132</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.41" y="442.39" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>134</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.10" y="34.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>135</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.10" y="816.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>136</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.01" y="714.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>138</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.23" y="476.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>139</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.09" y="442.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>142</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.37" y="646.42" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>144</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.44" y="204.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>145</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.14" y="68.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>146</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.39" y="544.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>147</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.47" y="34.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>149</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.03" y="782.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>152</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.07" y="476.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>153</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.20" y="374.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>154</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.45" y="578.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>155</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.12" y="510.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>156</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.15" y="578.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>158</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.17" y="408.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>160</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.34" y="544.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>164</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.04" y="510.42" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>165</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.28" y="306.39" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>166</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.12" y="136.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>167</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.48" y="442.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>168</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.09" y="680.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>169</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.32" y="272.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>171</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.21" y="510.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>172</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.35" y="646.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>174</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.17" y="68.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>179</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.17" y="374.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>180</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.36" y="782.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>181</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.15" y="272.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>182</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.30" y="510.50" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>184</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.10" y="680.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>185</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.47" y="612.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>186</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.35" y="816.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>187</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.40" y="170.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>188</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.27" y="340.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>190</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.25" y="748.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>193</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.19" y="136.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>194</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.09" y="374.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>195</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.05" y="272.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>196</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.49" y="34.36" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>197</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.49" y="748.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>198</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.28" y="714.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>200</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.12" y="748.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>201</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.10" y="204.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>202</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.08" y="442.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>203</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.17" y="102.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>207</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.05" y="646.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>208</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="816.50" y="476.19" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>209</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.23" y="102.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>210</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.34" y="782.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>211</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.27" y="136.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>212</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.26" y="714.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>213</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.29" y="544.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>214</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.25" y="476.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>215</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.36" y="238.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>216</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.38" y="646.42" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>218</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.24" y="476.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>220</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.36" y="476.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>222</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.39" y="340.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>224</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.18" y="136.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>225</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.34" y="442.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>226</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.44" y="272.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>227</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.36" y="272.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>229</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.45" y="646.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>230</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.09" y="408.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>232</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.29" y="442.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>233</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.06" y="68.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>234</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.32" y="68.42" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>235</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.39" y="272.19" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>236</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.45" y="68.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>237</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.23" y="578.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>238</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.06" y="748.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>239</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.02" y="238.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>240</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.15" y="68.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>241</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.21" y="204.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>244</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.21" y="340.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>245</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.23" y="646.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>248</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.07" y="272.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>249</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.27" y="782.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>250</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.18" y="476.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>252</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.41" y="442.42" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>256</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.28" y="204.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>257</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.49" y="680.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>259</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.06" y="714.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>260</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.33" y="204.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>261</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.13" y="442.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>262</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.03" y="408.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>263</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.00" y="34.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>264</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.46" y="136.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>265</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.38" y="714.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>268</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.17" y="442.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>269</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.48" y="68.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>270</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.24" y="102.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>272</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.01" y="782.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>274</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.11" y="544.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>275</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.01" y="374.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>276</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.01" y="102.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>278</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.05" y="136.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>279</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.20" y="442.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>280</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.35" y="136.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>281</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.09" y="680.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>282</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.35" y="204.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>285</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.41" y="272.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>286</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.07" y="306.50" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>287</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.16" y="170.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>289</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.09" y="748.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>290</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="816.47" y="306.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>291</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.35" y="544.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>292</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.45" y="272.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>293</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.18" y="816.42" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>294</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.28" y="408.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>296</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.26" y="0.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>297</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.37" y="782.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>298</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.49" y="748.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>299</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.39" y="68.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>301</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.42" y="340.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>302</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.01" y="204.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>304</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.44" y="170.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>305</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.39" y="34.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>307</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.48" y="510.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>309</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.40" y="714.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>310</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.27" y="170.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>311</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.44" y="306.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>312</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.46" y="544.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>316</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.22" y="476.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>318</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.42" y="612.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>320</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.31" y="510.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>321</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.43" y="306.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>323</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.17" y="442.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>324</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.10" y="408.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>325</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.25" y="136.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>326</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.25" y="510.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>327</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.31" y="272.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>328</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.08" y="170.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>330</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.34" y="34.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>331</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.40" y="578.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>332</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.48" y="272.41" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>333</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.07" y="238.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>334</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.21" y="646.20" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>335</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.01" y="578.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>337</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.09" y="612.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>338</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.46" y="34.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>339</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.35" y="374.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>341</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.08" y="204.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>342</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.06" y="340.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>343</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.20" y="136.46" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>344</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.29" y="544.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>345</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="782.47" y="272.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>349</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.14" y="816.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>351</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.06" y="612.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>352</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.12" y="680.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>353</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.25" y="680.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>354</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.08" y="476.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>356</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.02" y="442.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>357</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.19" y="306.09" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>358</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.25" y="408.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>359</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.11" y="680.45" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>360</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.20" y="544.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>361</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.27" y="374.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>362</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.42" y="476.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>363</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.21" y="714.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>364</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.36" y="612.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>366</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.33" y="170.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>367</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.42" y="578.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>369</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.33" y="612.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>370</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.49" y="578.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>371</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.20" y="170.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>373</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.23" y="34.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>375</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.06" y="408.23" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>377</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.40" y="272.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>378</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="816.46" y="374.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>379</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.17" y="68.39" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>382</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.25" y="578.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>383</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.04" y="272.26" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>384</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.27" y="374.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>385</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.18" y="272.14" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>386</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.18" y="374.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>387</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.13" y="476.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>390</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.21" y="170.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>395</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.47" y="340.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>396</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.01" y="714.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>397</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.06" y="68.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>399</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.31" y="340.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>400</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.38" y="612.33" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>401</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.07" y="374.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>403</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.33" y="204.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>404</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.49" y="442.25" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>406</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="748.24" y="578.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>407</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.39" y="68.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>408</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.39" y="238.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>409</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.04" y="714.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>410</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.32" y="612.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>411</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.15" y="612.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>412</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.40" y="374.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>414</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.21" y="510.48" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>415</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="714.07" y="408.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>416</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.06" y="612.08" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>418</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.20" y="748.30" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>421</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.35" y="578.07" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>423</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.16" y="408.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>424</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.48" y="442.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>425</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="136.26" y="102.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>427</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.28" y="476.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>428</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.01" y="340.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>429</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.43" y="442.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>430</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="408.04" y="544.18" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>431</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.27" y="306.10" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>432</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.09" y="748.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>433</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.21" y="510.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>434</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.05" y="272.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>436</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.03" y="340.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>437</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.36" y="646.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>440</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.28" y="306.19" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>442</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.42" y="170.02" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>443</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.39" y="680.37" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>444</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="612.46" y="544.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>446</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.25" y="204.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>447</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="102.37" y="680.12" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>448</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.22" y="816.49" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>449</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="646.44" y="442.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>451</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="0.23" y="306.31" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>452</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.46" y="714.28" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>453</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.42" y="544.35" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>454</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.45" y="340.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>455</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.11" y="408.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>456</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.41" y="646.24" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>457</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.09" y="612.01" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>458</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="34.15" y="476.44" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>459</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.38" y="748.21" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>460</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.33" y="476.32" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>461</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="340.11" y="544.39" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>462</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="680.30" y="272.27" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>463</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.12" y="374.16" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>464</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="170.11" y="408.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>465</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.14" y="476.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>467</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.01" y="102.13" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>469</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.19" y="374.04" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>470</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="544.03" y="612.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>472</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.10" y="476.17" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>474</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.47" y="646.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>475</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.11" y="646.15" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>476</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.19" y="170.43" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>477</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="442.28" y="748.34" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>480</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.34" y="0.05" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>481</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="476.25" y="306.11" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>482</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="68.43" y="170.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>483</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="306.14" y="510.00" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>484</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.16" y="102.38" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>485</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="816.16" y="408.22" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>486</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="238.35" y="442.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>488</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="374.00" y="306.03" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>490</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="272.35" y="476.40" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>491</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="578.37" y="204.47" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>493</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="204.15" y="544.06" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>496</id>
        </interface_config>
      </mote>
      <mote>
        <interface_config>
          org.contikios.cooja.interfaces.Position
          <pos x="510.49" y="0.29" />
        </interface_config>
        <interface_config>
          org.contikios.cooja.contikimote.interfaces.ContikiMoteID
          <id>500</id>
        </interface_config>
      </mote>
    </motetype>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script><![CDATA[
TIMEOUT(900000, log.testOK());
var S = {"2":[[0.0,517.01,374.01,34.08,607.05,541.35],[517.01,521.17,607.05,541.35,607.05,541.35],[521.17,774.91,607.05,541.35,428.52,203.88],[774.91,777.85,428.52,203.88,428.52,203.88],[777.85,978.22,428.52,203.88,251.92,64.27],[978.22,979.32,251.92,64.27,251.92,64.27]],"3":[[0.0,523.02,306.34,782.21,428.76,358.81],[523.02,530.61,428.76,358.81,428.76,358.81],[530.61,753.8,428.76,358.81,300.35,311.14],[753.8,757.77,300.35,311.14,300.35,311.14],[757.77,1636.69,300.35,311.14,624.55,630.37],[1636.69,1645.46,624.55,630.37,624.55,630.37]],"4":[[0.0,778.83,680.18,238.17,53.66,698.74],[778.83,783.31,53.66,698.74,53.66,698.74],[783.31,1088.09,53.66,698.74,607.43,626.08],[1088.09,1096.21,607.43,626.08,607.43,626.08]],"7":[[0.0,115.22,136.21,544.34,232.19,680.29],[115.22,123.46,232.19,680.29,232.19,680.29],[123.46,259.06,232.19,680.29,424.98,756.17],[259.06,267.49,424.98,756.17,424.98,756.17],[267.49,476.81,424.98,756.17,593.97,546.04],[476.81,484.67,593.97,546.04,593.97,546.04],[484.67,715.32,593.97,546.04,450.84,139.78],[715.32,722.32,450.84,139.78,450.84,139.78],[722.32,873.15,450.84,139.78,202.72,78.54],[873.15,881.48,202.72,78.54,202.72,78.54],[881.48,1107.39,202.72,78.54,463.57,397.66],[1107.39,1111.93,463.57,397.66,463.57,397.66]],"14":[[0.0,133.54,476.23,782.06,336.4,738.31],[133.54,136.63,336.4,738.31,336.4,738.31],[136.63,898.12,336.4,738.31,519.35,9.09],[898.12,906.85,519.35,9.09,519.35,9.09]],"19":[[0.0,494.29,544.49,442.04,13.98,665.6],[494.29,495.48,13.98,665.6,13.98,665.6],[495.48,1191.16,13.98,665.6,319.41,428.53],[1191.16,1200.57,319.41,428.53,319.41,428.53]],"22":[[0.0,1278.21,136.38,578.35,720.2,229.46],[1278.21,1281.27,720.2,229.46,720.2,229.46]],"25":[[0.0,246.69,442.04,204.09,463.74,464.86],[246.69,254.5,463.74,464.86,463.74,464.86],[254.5,305.1,463.74,464.86,491.04,547.31],[305.1,314.46,491.04,547.31,491.04,547.31],[314.46,1237.6,491.04,547.31,423.6,24.59],[1237.6,1245.04,423.6,24.59,423.6,24.59]],"27":[[0.0,1109.25,34.44,442.15,513.48,15.6],[1109.25,1114.52,513.48,15.6,513.48,15.6]],"33":[[0.0,756.85,374.07,340.41,747.52,84.36],[756.85,761.74,747.52,84.36,747.52,84.36],[761.74,890.9,747.52,84.36,683.74,253.87],[890.9,895.38,683.74,253.87,683.74,253.87],[895.38,1248.68,683.74,253.87,180.47,707.68],[1248.68,1255.71,180.47,707.68,180.47,707.68]],"37":[[0.0,736.36,102.36,408.4,751.67,429.27],[736.36,741.01,751.67,429.27,751.67,429.27],[741.01,890.49,751.67,429.27,462.13,361.65],[890.49,899.17,462.13,361.65,462.13,361.65],[899.17,1220.64,462.13,361.65,277.05,25.25],[1220.64,1224.99,277.05,25.25,277.05,25.25]],"47":[[0.0,1544.85,476.04,0.49,799.12,750.46],[1544.85,1546.07,799.12,750.46,799.12,750.46]],"51":[[0.0,354.6,816.22,510.23,435.91,802.91],[354.6,362.32,435.91,802.91,435.91,802.91],[362.32,854.7,435.91,802.91,449.65,426.87],[854.7,864.57,449.65,426.87,449.65,426.87],[864.57,1016.68,449.65,426.87,554.49,611.83],[1016.68,1024.05,554.49,611.83,554.49,611.83]],"53":[[0.0,219.23,0.03,510.12,293.53,770.07],[219.23,221.18,293.53,770.07,293.53,770.07],[221.18,558.93,293.53,770.07,108.5,407.94],[558.93,564.41,108.5,407.94,108.5,407.94],[564.41,1307.19,108.5,407.94,532.02,499.49],[1307.19,1314.34,532.02,499.49,532.02,499.49]],"55":[[0.0,379.48,340.34,340.18,280.77,14.64],[379.48,386.23,280.77,14.64,280.77,14.64],[386.23,891.11,280.77,14.64,635.84,308.56],[891.11,891.31,635.84,308.56,635.84,308.56],[891.31,922.24,635.84,308.56,609.52,348.54],[922.24,930.34,609.52,348.54,609.52,348.54]],"59":[[0.0,408.21,578.27,714.08,595.05,120.8],[408.21,410.69,595.05,120.8,595.05,120.8],[410.69,509.7,595.05,120.8,734.1,164.58],[509.7,509.94,734.1,164.58,734.1,164.58],[509.94,1267.8,734.1,164.58,473.52,599.18],[1267.8,1270.19,473.52,599.18,473.52,599.18]],"63":[[0.0,413.23,306.1,136.13,548.89,188.47],[413.23,421.65,548.89,188.47,548.89,188.47],[421.65,703.46,548.89,188.47,785.82,509.4],[703.46,712.77,785.82,509.4,785.82,509.4],[712.77,1102.75,785.82,509.4,577.52,554.39],[1102.75,1110.36,577.52,554.39,577.52,554.39]],"64":[[0.0,402.26,714.18,136.26,75.1,546.81],[402.26,411.28,75.1,546.81,75.1,546.81],[411.28,1263.65,75.1,546.81,524.17,302.97],[1263.65,1267.66,524.17,302.97,524.17,302.97]],"65":[[0.0,806.93,714.01,612.47,111.2,218.46],[806.93,811.21,111.2,218.46,111.2,218.46],[811.21,1716.35,111.2,218.46,408.22,814.35],[1716.35,1720.48,408.22,814.35,408.22,814.35]],"67":[[0.0,235.45,306.07,544.41,562.45,813.64],[235.45,242.99,562.45,813.64,562.45,813.64],[242.99,293.75,562.45,813.64,634.07,742.32],[293.75,297.4,634.07,742.32,634.07,742.32],[297.4,743.24,634.07,742.32,341.94,680.49],[743.24,752.27,341.94,680.49,341.94,680.49],[752.27,1177.15,341.94,680.49,446.97,248.82],[1177.15,1184.82,446.97,248.82,446.97,248.82]],"69":[[0.0,250.11,204.35,476.42,361.61,77.33],[250.11,251.3,361.61,77.33,361.61,77.33],[251.3,313.43,361.61,77.33,437.54,91.13],[313.43,318.1,437.54,91.13,437.54,91.13],[318.1,532.97,437.54,91.13,489.44,445.77],[532.97,539.88,489.44,445.77,489.44,445.77],[539.88,557.05,489.44,445.77,476.62,472.72],[557.05,562.58,476.62,472.72,476.62,472.72],[562.58,1131.68,476.62,472.72,540.36,149.89],[1131.68,1134.3,540.36,149.89,540.36,149.89]],"76":[[0.0,718.61,306.37,646.46,242.68,0.0],[718.61,726.33,242.68,0.0,242.68,0.0],[726.33,1851.4,242.68,0.0,811.48,745.24],[1851.4,1853.91,811.48,745.24,811.48,745.24]],"88":[[0.0,390.58,612.03,136.47,378.51,336.79],[390.58,391.5,378.51,336.79,378.51,336.79],[391.5,855.1,378.51,336.79,768.49,27.44],[855.1,855.37,768.49,27.44,768.49,27.44],[855.37,1362.56,768.49,27.44,199.02,10.32],[1362.56,1366.9,199.02,10.32,199.02,10.32]],"89":[[0.0,341.55,272.19,374.32,776.31,330.22],[341.55,348.66,776.31,330.22,776.31,330.22],[348.66,691.73,776.31,330.22,377.45,673.19],[691.73,692.84,377.45,673.19,377.45,673.19],[692.84,1107.78,377.45,673.19,603.51,107.94],[1107.78,1116.35,603.51,107.94,603.51,107.94]],"94":[[0.0,476.14,102.3,442.07,345.57,68.46],[476.14,479.02,345.57,68.46,345.57,68.46],[479.02,599.16,345.57,68.46,118.75,21.56],[599.16,605.06,118.75,21.56,118.75,21.56],[605.06,1246.74,118.75,21.56,778.76,644.21],[1246.74,1248.61,778.76,644.21,778.76,644.21]],"97":[[0.0,76.41,136.09,204.0,16.74,222.35],[76.41,79.38,16.74,222.35,16.74,222.35],[79.38,354.87,16.74,222.35,305.17,406.9],[354.87,364.72,305.17,406.9,305.17,406.9],[364.72,445.79,305.17,406.9,238.11,425.81],[445.79,449.56,238.11,425.81,238.11,425.81],[449.56,610.11,238.11,425.81,248.8,726.14],[610.11,615.42,248.8,726.14,248.8,726.14],[615.42,672.37,248.8,726.14,275.72,781.66],[672.37,681.37,275.72,781.66,275.72,781.66],[681.37,949.18,275.72,781.66,690.7,626.53],[949.18,957.01,690.7,626.53,690.7,626.53]],"99":[[0.0,521.36,34.49,238.46,674.79,236.48],[521.36,521.9,674.79,236.48,674.79,236.48],[521.9,855.68,674.79,236.48,268.89,176.16],[855.68,860.09,268.89,176.16,268.89,176.16],[860.09,1242.24,268.89,176.16,610.04,333.56],[1242.24,1248.87,610.04,333.56,610.04,333.56]],"104":[[0.0,395.5,374.17,680.2,642.71,230.08],[395.5,397.4,642.71,230.08,642.71,230.08],[397.4,775.75,642.71,230.08,802.52,18.61],[775.75,783.15,802.52,18.61,802.52,18.61],[783.15,889.37,802.52,18.61,797.03,118.12],[889.37,896.01,797.03,118.12,797.03,118.12],[896.01,1033.25,797.03,118.12,675.04,203.16],[1033.25,1035.63,675.04,203.16,675.04,203.16]],"105":[[0.0,383.87,272.17,544.13,32.88,6.22],[383.87,386.92,32.88,6.22,32.88,6.22],[386.92,788.11,32.88,6.22,476.79,243.54],[788.11,794.17,476.79,243.54,476.79,243.54],[794.17,1022.88,476.79,243.54,153.5,41.57],[1022.88,1027.06,153.5,41.57,153.5,41.57]],"106":[[0.0,531.24,306.2,306.22,717.8,95.24],[531.24,533.39,717.8,95.24,717.8,95.24],[533.39,1313.74,717.8,95.24,2.47,43.45],[1313.74,1318.6,2.47,43.45,2.47,43.45]],"109":[[0.0,558.15,68.06,204.28,513.68,631.22],[558.15,566.99,513.68,631.22,513.68,631.22],[566.99,1238.31,513.68,631.22,455.61,9.12],[1238.31,1239.79,455.61,9.12,455.61,9.12]],"114":[[0.0,416.36,272.16,714.2,528.84,143.46],[416.36,420.95,528.84,143.46,528.84,143.46],[420.95,848.73,528.84,143.46,790.92,186.56],[848.73,854.57,790.92,186.56,790.92,186.56],[854.57,1521.09,790.92,186.56,783.75,651.05],[1521.09,1530.87,783.75,651.05,783.75,651.05]],"120":[[0.0,894.7,306.41,748.47,756.64,571.6],[894.7,896.85,756.64,571.6,756.64,571.6],[896.85,1095.94,756.64,571.6,792.16,286.04],[1095.94,1103.57,792.16,286.04,792.16,286.04]],"122":[[0.0,176.02,340.38,272.18,11.56,241.87],[176.02,183.56,11.56,241.87,11.56,241.87],[183.56,429.33,11.56,241.87,481.32,230.35],[429.33,435.42,481.32,230.35,481.32,230.35],[435.42,775.48,481.32,230.35,333.65,541.28],[775.48,784.78,333.65,541.28,333.65,541.28],[784.78,947.85,333.65,541.28,640.76,630.62],[947.85,952.31,640.76,630.62,640.76,630.62]],"125":[[0.0,704.17,646.43,136.15,467.71,694.28],[704.17,705.67,467.71,694.28,467.71,694.28],[705.67,1487.04,467.71,694.28,93.97,293.89],[1487.04,1487.9,93.97,293.89,93.97,293.89]],"127":[[0.0,182.24,408.03,374.45,221.91,107.55],[182.24,184.27,221.91,107.55,221.91,107.55],[184.27,362.14,221.91,107.55,536.61,195.14],[362.14,365.55,536.61,195.14,536.61,195.14],[365.55,422.6,536.61,195.14,461.92,160.58],[422.6,423.69,461.92,160.58,461.92,160.58],[423.69,695.19,461.92,160.58,322.23,472.06],[695.19,702.79,322.23,472.06,322.23,472.06],[702.79,855.88,322.23,472.06,598.68,547.1],[855.88,856.34,598.68,547.1,598.68,547.1],[856.34,1466.48,598.68,547.1,243.7,18.72],[1466.48,1468.8,243.7,18.72,243.7,18.72]],"128":[[0.0,326.81,408.45,612.28,291.79,434.97],[326.81,333.8,291.79,434.97,291.79,434.97],[333.8,505.28,291.79,434.97,129.65,147.89],[505.28,514.95,129.65,147.89,129.65,147.89],[514.95,701.38,129.65,147.89,385.23,187.08],[701.38,705.61,385.23,187.08,385.23,187.08],[705.61,917.56,385.23,187.08,497.81,433.89],[917.56,924.83,497.81,433.89,497.81,433.89]],"129":[[0.0,218.33,34.35,204.09,298.59,437.67],[218.33,226.71,298.59,437.67,298.59,437.67],[226.71,556.7,298.59,437.67,647.58,237.81],[556.7,562.42,647.58,237.81,647.58,237.81],[562.42,800.89,647.58,237.81,550.38,436.35],[800.89,807.44,550.38,436.35,550.38,436.35],[807.44,1174.12,550.38,436.35,354.0,403.7],[1174.12,1177.08,354.0,403.7,354.0,403.7]],"131":[[0.0,236.45,408.29,782.09,773.07,799.44],[236.45,239.68,773.07,799.44,773.07,799.44],[239.68,524.61,773.07,799.44,604.73,494.18],[524.61,528.4,604.73,494.18,604.73,494.18],[528.4,1063.71,604.73,494.18,107.28,681.09],[1063.71,1064.31,107.28,681.09,107.28,681.09]],"133":[[0.0,121.96,374.45,136.41,155.16,87.44],[121.96,126.97,155.16,87.44,155.16,87.44],[126.97,453.39,155.16,87.44,256.95,653.7],[453.39,462.27,256.95,653.7,256.95,653.7],[462.27,1392.46,256.95,653.7,96.33,207.23],[1392.46,1394.95,96.33,207.23,96.33,207.23]],"137":[[0.0,1225.92,204.45,782.19,526.36,41.19],[1225.92,1233.58,526.36,41.19,526.36,41.19]],"140":[[0.0,281.11,748.49,408.38,285.2,217.58],[281.11,289.61,285.2,217.58,285.2,217.58],[289.61,670.24,285.2,217.58,178.4,777.61],[670.24,675.9,178.4,777.61,178.4,777.61],[675.9,1037.27,178.4,777.61,603.77,528.67],[1037.27,1041.29,603.77,528.67,603.77,528.67]],"141":[[0.0,528.34,136.23,238.3,565.65,47.09],[528.34,532.17,565.65,47.09,565.65,47.09],[532.17,1729.62,565.65,47.09,380.39,616.79],[1729.62,1735.13,380.39,616.79,380.39,616.79]],"143":[[0.0,85.83,612.13,306.48,558.59,149.68],[85.83,90.47,558.59,149.68,558.59,149.68],[90.47,618.58,558.59,149.68,451.35,758.06],[618.58,625.99,451.35,758.06,451.35,758.06],[625.99,1375.01,451.35,758.06,758.13,28.71],[1375.01,1383.5,758.13,28.71,758.13,28.71]],"148":[[0.0,440.56,646.05,272.22,600.49,706.26],[440.56,445.31,600.49,706.26,600.49,706.26],[445.31,834.42,600.49,706.26,114.08,341.43],[834.42,836.53,114.08,341.43,114.08,341.43],[836.53,1153.75,114.08,341.43,258.04,715.22],[1153.75,1156.07,258.04,715.22,258.04,715.22]],"150":[[0.0,128.07,272.43,0.03,205.29,223.23],[128.07,132.66,205.29,223.23,205.29,223.23],[132.66,340.43,205.29,223.23,536.5,50.4],[340.43,341.25,536.5,50.4,536.5,50.4],[341.25,654.01,536.5,50.4,781.45,433.36],[654.01,658.96,781.45,433.36,781.45,433.36],[658.96,1282.58,781.45,433.36,252.75,361.37],[1282.58,1282.92,252.75,361.37,252.75,361.37]],"151":[[0.0,367.47,510.11,714.17,665.43,211.96],[367.47,373.85,665.43,211.96,665.43,211.96],[373.85,874.74,665.43,211.96,612.38,556.82],[874.74,882.2,612.38,556.82,612.38,556.82],[882.2,1219.73,612.38,556.82,603.78,255.75],[1219.73,1225.23,603.78,255.75,603.78,255.75]],"157":[[0.0,166.83,102.42,306.46,245.94,212.26],[166.83,171.97,245.94,212.26,245.94,212.26],[171.97,555.1,245.94,212.26,58.32,81.64],[555.1,556.35,58.32,81.64,58.32,81.64],[556.35,1461.17,58.32,81.64,632.13,649.58],[1461.17,1468.91,632.13,649.58,632.13,649.58]],"159":[[0.0,486.0,306.33,238.43,579.88,552.42],[486.0,487.26,579.88,552.42,579.88,552.42],[487.26,737.73,579.88,552.42,762.13,402.02],[737.73,740.62,762.13,402.02,762.13,402.02],[740.62,805.09,762.13,402.02,688.78,315.3],[805.09,808.95,688.78,315.3,688.78,315.3],[808.95,1071.09,688.78,315.3,541.17,533.57],[1071.09,1077.38,541.17,533.57,541.17,533.57]],"161":[[0.0,468.06,0.31,374.11,762.11,639.52],[468.06,473.15,762.11,639.52,762.11,639.52],[473.15,578.6,762.11,639.52,788.95,499.84],[578.6,578.63,788.95,499.84,788.95,499.84],[578.63,1475.33,788.95,499.84,75.45,553.76],[1475.33,1480.74,75.45,553.76,75.45,553.76]],"162":[[0.0,585.66,612.33,578.0,258.65,221.36],[585.66,587.7,258.65,221.36,258.65,221.36],[587.7,838.09,258.65,221.36,419.82,531.46],[838.09,844.62,419.82,531.46,419.82,531.46],[844.62,999.19,419.82,531.46,443.79,307.2],[999.19,1001.31,443.79,307.2,443.79,307.2]],"163":[[0.0,653.87,238.4,34.07,775.04,691.85],[653.87,655.6,775.04,691.85,775.04,691.85],[655.6,1291.64,775.04,691.85,139.5,349.13],[1291.64,1299.55,139.5,349.13,139.5,349.13]],"170":[[0.0,137.95,646.38,238.02,730.35,2.0],[137.95,139.82,730.35,2.0,730.35,2.0],[139.82,1037.07,730.35,2.0,478.32,811.56],[1037.07,1045.36,478.32,811.56,478.32,811.56]],"173":[[0.0,391.89,238.29,680.24,713.2,451.83],[391.89,391.97,713.2,451.83,713.2,451.83],[391.97,418.61,713.2,451.83,718.89,491.82],[418.61,427.94,718.89,491.82,718.89,491.82],[427.94,651.6,718.89,491.82,563.61,675.77],[651.6,653.48,563.61,675.77,563.61,675.77],[653.48,989.67,563.61,675.77,290.64,196.87],[989.67,998.25,290.64,196.87,290.64,196.87]],"175":[[0.0,360.5,136.43,442.49,273.8,160.82],[360.5,364.66,273.8,160.82,273.8,160.82],[364.66,962.74,273.8,160.82,387.12,604.56],[962.74,968.99,387.12,604.56,387.12,604.56]],"176":[[0.0,426.79,102.29,476.0,417.37,723.35],[426.79,432.94,417.37,723.35,417.37,723.35],[432.94,924.16,417.37,723.35,242.47,246.81],[924.16,930.08,242.47,246.81,242.47,246.81]],"177":[[0.0,120.26,102.17,578.13,223.29,483.57],[120.26,127.04,223.29,483.57,223.29,483.57],[127.04,1224.08,223.29,483.57,792.53,211.58],[1224.08,1230.43,792.53,211.58,792.53,211.58]],"178":[[0.0,250.36,476.13,476.09,137.37,372.24],[250.36,258.9,137.37,372.24,137.37,372.24],[258.9,744.41,137.37,372.24,681.65,57.0],[744.41,753.84,681.65,57.0,681.65,57.0],[753.84,771.81,681.65,57.0,662.36,29.66],[771.81,775.14,662.36,29.66,662.36,29.66],[775.14,1062.15,662.36,29.66,190.08,259.86],[1062.15,1066.64,190.08,259.86,190.08,259.86]],"183":[[0.0,496.35,408.26,238.43,656.37,574.57],[496.35,504.75,656.37,574.57,656.37,574.57],[504.75,818.04,656.37,574.57,361.04,25.81],[818.04,822.14,361.04,25.81,361.04,25.81],[822.14,1205.93,361.04,25.81,491.15,511.74],[1205.93,1211.34,491.15,511.74,491.15,511.74]],"189":[[0.0,341.72,544.35,170.36,39.68,300.66],[341.72,343.27,39.68,300.66,39.68,300.66],[343.27,809.29,39.68,300.66,731.84,522.53],[809.29,818.77,731.84,522.53,731.84,522.53],[818.77,912.11,731.84,522.53,633.25,505.63],[912.11,918.57,633.25,505.63,633.25,505.63]],"191":[[0.0,522.32,714.49,578.28,374.45,399.18],[522.32,527.69,374.45,399.18,374.45,399.18],[527.69,931.05,374.45,399.18,688.37,135.26],[931.05,940.63,688.37,135.26,688.37,135.26]],"192":[[0.0,464.67,442.49,136.37,185.07,443.99],[464.67,464.67,185.07,443.99,185.07,443.99],[464.67,790.43,185.07,443.99,769.11,536.38],[790.43,791.96,769.11,536.38,769.11,536.38],[791.96,926.29,769.11,536.38,767.18,770.27],[926.29,930.86,767.18,770.27,767.18,770.27]],"199":[[0.0,1357.31,714.38,544.39,60.11,21.46],[1357.31,1366.99,60.11,21.46,60.11,21.46]],"204":[[0.0,876.3,510.14,204.09,670.64,796.11],[876.3,884.08,670.64,796.11,670.64,796.11],[884.08,1108.06,670.64,796.11,358.15,672.75],[1108.06,1112.92,358.15,672.75,358.15,672.75]],"205":[[0.0,313.05,204.2,238.18,416.57,750.82],[313.05,321.03,416.57,750.82,416.57,750.82],[321.03,626.52,416.57,750.82,569.87,312.17],[626.52,630.53,569.87,312.17,569.87,312.17],[630.53,806.05,569.87,312.17,748.69,64.1],[806.05,812.92,748.69,64.1,748.69,64.1],[812.92,907.76,748.69,64.1,725.05,150.14],[907.76,913.88,725.05,150.14,725.05,150.14]],"206":[[0.0,231.46,34.3,374.46,127.93,804.46],[231.46,233.54,127.93,804.46,127.93,804.46],[233.54,666.91,127.93,804.46,677.03,781.89],[666.91,674.83,677.03,781.89,677.03,781.89],[674.83,1163.05,677.03,781.89,314.23,41.76],[1163.05,1165.99,314.23,41.76,314.23,41.76]],"217":[[0.0,160.08,476.07,442.24,723.18,275.75],[160.08,168.08,723.18,275.75,723.18,275.75],[168.08,634.5,723.18,275.75,324.97,489.38],[634.5,642.2,324.97,489.38,324.97,489.38],[642.2,749.76,324.97,489.38,162.71,473.67],[749.76,753.92,162.71,473.67,162.71,473.67],[753.92,1422.03,162.71,473.67,809.88,256.71],[1422.03,1428.14,809.88,256.71,809.88,256.71]],"219":[[0.0,571.93,136.01,476.13,88.26,4.08],[571.93,576.74,88.26,4.08,88.26,4.08],[576.74,1229.6,88.26,4.08,546.73,808.49],[1229.6,1230.16,546.73,808.49,546.73,808.49]],"221":[[0.0,112.28,680.19,544.02,778.13,613.73],[112.28,114.09,778.13,613.73,778.13,613.73],[114.09,350.24,778.13,613.73,762.93,761.99],[350.24,359.26,762.93,761.99,762.93,761.99],[359.26,843.11,762.93,761.99,126.86,395.67],[843.11,845.7,126.86,395.67,126.86,395.67],[845.7,993.15,126.86,395.67,91.2,584.84],[993.15,995.82,91.2,584.84,91.2,584.84]],"223":[[0.0,115.77,544.34,340.01,688.69,270.46],[115.77,125.06,688.69,270.46,688.69,270.46],[125.06,567.48,688.69,270.46,451.23,660.27],[567.48,568.05,451.23,660.27,451.23,660.27],[568.05,733.13,451.23,660.27,645.97,433.1],[733.13,734.63,645.97,433.1,645.97,433.1],[734.63,1474.75,645.97,433.1,55.31,727.67],[1474.75,1475.04,55.31,727.67,55.31,727.67]],"228":[[0.0,176.95,544.39,68.49,423.78,349.48],[176.95,184.46,423.78,349.48,423.78,349.48],[184.46,442.22,423.78,349.48,606.04,798.54],[442.22,447.53,606.04,798.54,606.04,798.54],[447.53,551.49,606.04,798.54,750.6,674.84],[551.49,558.17,750.6,674.84,750.6,674.84],[558.17,1842.51,750.6,674.84,53.72,580.07],[1842.51,1845.91,53.72,580.07,53.72,580.07]],"231":[[0.0,372.85,68.39,544.23,171.78,26.12],[372.85,375.07,171.78,26.12,171.78,26.12],[375.07,564.24,171.78,26.12,425.11,59.01],[564.24,569.93,425.11,59.01,425.11,59.01],[569.93,665.14,425.11,59.01,411.47,145.95],[665.14,665.25,411.47,145.95,411.47,145.95],[665.25,867.73,411.47,145.95,650.53,25.24],[867.73,875.86,650.53,25.24,650.53,25.24],[875.86,1264.82,650.53,25.24,198.11,118.04],[1264.82,1273.29,198.11,118.04,198.11,118.04]],"242":[[0.0,134.27,544.13,408.47,642.66,579.14],[134.27,135.14,642.66,579.14,642.66,579.14],[135.14,473.72,642.66,579.14,528.46,33.34],[473.72,481.88,528.46,33.34,528.46,33.34],[481.88,1343.5,528.46,33.34,755.5,612.77],[1343.5,1352.72,755.5,612.77,755.5,612.77]],"243":[[0.0,282.16,646.39,748.39,781.9,306.0],[282.16,285.23,781.9,306.0,781.9,306.0],[285.23,735.73,781.9,306.0,27.21,489.28],[735.73,744.68,27.21,489.28,27.21,489.28],[744.68,1402.26,27.21,489.28,519.4,786.9],[1402.26,1411.86,519.4,786.9,519.4,786.9]],"246":[[0.0,325.79,612.33,476.03,595.42,658.96],[325.79,333.68,595.42,658.96,595.42,658.96],[333.68,622.45,595.42,658.96,63.02,489.81],[622.45,628.11,63.02,489.81,63.02,489.81],[628.11,1146.29,63.02,489.81,639.63,294.18],[1146.29,1151.99,639.63,294.18,639.63,294.18]],"247":[[0.0,253.25,680.2,578.24,781.69,344.46],[253.25,256.03,781.69,344.46,781.69,344.46],[256.03,1055.76,781.69,344.46,470.27,787.12],[1055.76,1061.24,470.27,787.12,470.27,787.12]],"251":[[0.0,73.48,442.5,680.25,523.38,650.72],[73.48,83.24,523.38,650.72,523.38,650.72],[83.24,108.24,523.38,650.72,568.3,649.78],[108.24,115.68,568.3,649.78,568.3,649.78],[115.68,549.4,568.3,649.78,489.94,33.95],[549.4,553.28,489.94,33.95,489.94,33.95],[553.28,789.07,489.94,33.95,650.83,182.41],[789.07,792.31,650.83,182.41,650.83,182.41],[792.31,1483.52,650.83,182.41,152.17,100.96],[1483.52,1484.32,152.17,100.96,152.17,100.96]],"253":[[0.0,452.72,272.16,306.32,641.13,654.52],[452.72,462.21,641.13,654.52,641.13,654.52],[462.21,788.61,641.13,654.52,800.95,35.32],[788.61,798.19,800.95,35.32,800.95,35.32],[798.19,1208.85,800.95,35.32,190.03,219.35],[1208.85,1209.64,190.03,219.35,190.03,219.35]],"254":[[0.0,551.19,340.09,102.49,774.83,661.25],[551.19,561.19,774.83,661.25,774.83,661.25],[561.19,713.52,774.83,661.25,501.56,724.81],[713.52,716.54,501.56,724.81,501.56,724.81],[716.54,776.3,501.56,724.81,443.95,805.49],[776.3,780.13,443.95,805.49,443.95,805.49],[780.13,1021.51,443.95,805.49,661.38,491.66],[1021.51,1030.87,661.38,491.66,661.38,491.66]],"255":[[0.0,578.14,272.36,748.12,719.46,92.82],[578.14,580.96,719.46,92.82,719.46,92.82],[580.96,859.35,719.46,92.82,454.97,436.92],[859.35,866.21,454.97,436.92,454.97,436.92],[866.21,1108.75,454.97,436.92,643.04,588.35],[1108.75,1116.81,643.04,588.35,643.04,588.35]],"258":[[0.0,583.91,340.39,408.29,529.64,97.43],[583.91,584.91,529.64,97.43,529.64,97.43],[584.91,1485.92,529.64,97.43,673.71,655.77],[1485.92,1487.38,673.71,655.77,673.71,655.77]],"266":[[0.0,648.75,782.12,238.06,139.01,729.42],[648.75,655.37,139.01,729.42,139.01,729.42],[655.37,752.35,139.01,729.42,207.31,618.35],[752.35,756.73,207.31,618.35,207.31,618.35],[756.73,871.51,207.31,618.35,373.97,674.24],[871.51,872.03,373.97,674.24,373.97,674.24],[872.03,1228.32,373.97,674.24,674.93,96.4],[1228.32,1232.55,674.93,96.4,674.93,96.4]],"267":[[0.0,348.18,102.41,612.3,142.84,231.78],[348.18,351.79,142.84,231.78,142.84,231.78],[351.79,381.51,142.84,231.78,98.07,242.75],[381.51,384.17,98.07,242.75,98.07,242.75],[384.17,729.53,98.07,242.75,657.64,3.22],[729.53,737.26,657.64,3.22,657.64,3.22],[737.26,1463.56,657.64,3.22,606.97,725.48],[1463.56,1471.75,606.97,725.48,606.97,725.48]],"271":[[0.0,265.16,612.05,340.09,261.71,645.55],[265.16,265.59,261.71,645.55,261.71,645.55],[265.59,401.28,261.71,645.55,98.99,731.37],[401.28,407.85,98.99,731.37,98.99,731.37],[407.85,951.45,98.99,731.37,763.14,601.93],[951.45,952.68,763.14,601.93,763.14,601.93]],"273":[[0.0,412.92,170.38,170.25,476.88,738.69],[412.92,418.32,476.88,738.69,476.88,738.69],[418.32,667.71,476.88,738.69,69.5,779.75],[667.71,672.05,69.5,779.75,69.5,779.75],[672.05,1641.48,69.5,779.75,372.63,62.68],[1641.48,1642.58,372.63,62.68,372.63,62.68]],"277":[[0.0,57.8,442.35,170.04,412.7,143.39],[57.8,61.21,412.7,143.39,412.7,143.39],[61.21,687.19,412.7,143.39,6.96,776.05],[687.19,695.93,6.96,776.05,6.96,776.05],[695.93,1185.77,6.96,776.05,133.7,254.23],[1185.77,1191.28,133.7,254.23,133.7,254.23]],"283":[[0.0,45.07,612.17,170.0,573.93,239.91],[45.07,53.84,573.93,239.91,573.93,239.91],[53.84,829.36,573.93,239.91,47.93,388.06],[829.36,831.68,47.93,388.06,47.93,388.06],[831.68,922.95,47.93,388.06,15.64,302.65],[922.95,927.13,15.64,302.65,15.64,302.65]],"284":[[0.0,391.82,476.1,612.05,18.76,105.62],[391.82,393.32,18.76,105.62,18.76,105.62],[393.32,905.03,18.76,105.62,366.32,343.59],[905.03,914.31,366.32,343.59,366.32,343.59]],"288":[[0.0,20.64,34.14,544.07,0.08,540.18],[20.64,22.62,0.08,540.18,0.08,540.18],[22.62,254.42,0.08,540.18,307.72,390.53],[254.42,256.81,307.72,390.53,307.72,390.53],[256.81,1094.95,307.72,390.53,717.74,597.83],[1094.95,1097.83,717.74,597.83,717.74,597.83]],"295":[[0.0,773.14,816.06,340.15,18.53,421.69],[773.14,774.69,18.53,421.69,18.53,421.69],[774.69,1094.19,18.53,421.69,298.76,259.91],[1094.19,1095.45,298.76,259.91,298.76,259.91]],"300":[[0.0,130.96,544.1,204.02,341.82,297.44],[130.96,136.51,341.82,297.44,341.82,297.44],[136.51,258.24,341.82,297.44,227.98,172.36],[258.24,264.07,227.98,172.36,227.98,172.36],[264.07,366.14,227.98,172.36,359.1,142.79],[366.14,374.84,359.1,142.79,359.1,142.79],[374.84,825.23,359.1,142.79,293.71,560.59],[825.23,825.52,293.71,560.59,293.71,560.59],[825.52,1381.35,293.71,560.59,503.21,30.01],[1381.35,1384.49,503.21,30.01,503.21,30.01]],"303":[[0.0,52.93,306.12,102.33,268.47,183.71],[52.93,57.95,268.47,183.71,268.47,183.71],[57.95,450.74,268.47,183.71,744.38,624.38],[450.74,452.44,744.38,624.38,744.38,624.38],[452.44,1265.07,744.38,624.38,30.46,368.05],[1265.07,1273.47,30.46,368.05,30.46,368.05]],"306":[[0.0,459.35,612.0,782.3,286.99,82.3],[459.35,467.99,286.99,82.3,286.99,82.3],[467.99,702.37,286.99,82.3,688.34,66.19],[702.37,708.82,688.34,66.19,688.34,66.19],[708.82,1173.63,688.34,66.19,327.29,651.52],[1173.63,1176.41,327.29,651.52,327.29,651.52]],"308":[[0.0,125.03,442.35,578.09,261.82,716.89],[125.03,130.82,261.82,716.89,261.82,716.89],[130.82,458.07,261.82,716.89,197.68,164.09],[458.07,462.9,197.68,164.09,197.68,164.09],[462.9,771.87,197.68,164.09,436.84,566.04],[771.87,780.35,436.84,566.04,436.84,566.04],[780.35,1339.45,436.84,566.04,156.2,360.26],[1339.45,1343.22,156.2,360.26,156.2,360.26]],"313":[[0.0,661.84,374.16,238.16,531.3,569.11],[661.84,663.39,531.3,569.11,531.3,569.11],[663.39,938.52,531.3,569.11,137.38,379.2],[938.52,944.27,137.38,379.2,137.38,379.2]],"314":[[0.0,128.82,714.47,510.48,590.44,423.37],[128.82,136.4,590.44,423.37,590.44,423.37],[136.4,257.15,590.44,423.37,415.31,286.27],[257.15,259.51,415.31,286.27,415.31,286.27],[259.51,453.27,415.31,286.27,706.31,377.2],[453.27,457.2,706.31,377.2,706.31,377.2],[457.2,753.02,706.31,377.2,220.23,704.15],[753.02,754.56,220.23,704.15,220.23,704.15],[754.56,837.47,220.23,704.15,303.34,812.35],[837.47,845.15,303.34,812.35,303.34,812.35],[845.15,1224.74,303.34,812.35,199.46,321.83],[1224.74,1227.71,199.46,321.83,199.46,321.83]],"315":[[0.0,93.59,476.35,238.46,414.97,192.83],[93.59,103.55,414.97,192.83,414.97,192.83],[103.55,298.8,414.97,192.83,153.29,463.12],[298.8,303.55,153.29,463.12,153.29,463.12],[303.55,649.53,153.29,463.12,624.5,588.22],[649.53,651.53,624.5,588.22,624.5,588.22],[651.53,1092.2,624.5,588.22,230.64,146.5],[1092.2,1092.36,230.64,146.5,230.64,146.5]],"317":[[0.0,255.76,442.03,646.14,213.76,552.36],[255.76,256.66,213.76,552.36,213.76,552.36],[256.66,401.64,213.76,552.36,286.82,758.15],[401.64,410.5,286.82,758.15,286.82,758.15],[410.5,733.19,286.82,758.15,772.98,365.8],[733.19,736.54,772.98,365.8,772.98,365.8],[736.54,1180.61,772.98,365.8,189.67,239.08],[1180.61,1188.86,189.67,239.08,189.67,239.08]],"319":[[0.0,302.21,136.22,646.2,307.44,336.96],[302.21,309.28,307.44,336.96,307.44,336.96],[309.28,378.47,307.44,336.96,326.85,213.09],[378.47,384.32,326.85,213.09,326.85,213.09],[384.32,667.08,326.85,213.09,444.45,632.77],[667.08,668.76,444.45,632.77,444.45,632.77],[668.76,1345.93,444.45,632.77,166.94,77.52],[1345.93,1349.08,166.94,77.52,166.94,77.52]],"322":[[0.0,618.86,306.27,34.13,71.99,758.87],[618.86,623.05,71.99,758.87,71.99,758.87],[623.05,881.73,71.99,758.87,459.33,642.27],[881.73,886.0,459.33,642.27,459.33,642.27],[886.0,1449.43,459.33,642.27,296.47,310.71],[1449.43,1452.42,296.47,310.71,296.47,310.71]],"329":[[0.0,330.74,714.37,374.33,580.26,535.59],[330.74,337.16,580.26,535.59,580.26,535.59],[337.16,488.84,580.26,535.59,757.45,497.93],[488.84,491.89,757.45,497.93,757.45,497.93],[491.89,1038.49,757.45,497.93,76.73,194.68],[1038.49,1042.55,76.73,194.68,76.73,194.68]],"336":[[0.0,835.46,612.33,374.29,58.43,666.6],[835.46,837.4,58.43,666.6,58.43,666.6],[837.4,1137.41,58.43,666.6,399.45,196.56],[1137.41,1147.33,399.45,196.56,399.45,196.56]],"340":[[0.0,98.04,510.26,68.43,601.86,164.24],[98.04,103.02,601.86,164.24,601.86,164.24],[103.02,478.16,601.86,164.24,389.39,492.55],[478.16,484.7,389.39,492.55,389.39,492.55],[484.7,777.27,389.39,492.55,808.57,131.5],[777.27,780.44,808.57,131.5,808.57,131.5],[780.44,879.31,808.57,131.5,761.98,228.99],[879.31,882.6,761.98,228.99,761.98,228.99],[882.6,1179.19,761.98,228.99,511.76,75.07],[1179.19,1180.82,511.76,75.07,511.76,75.07]],"346":[[0.0,596.99,238.48,204.0,496.34,51.69],[596.99,602.77,496.34,51.69,496.34,51.69],[602.77,762.37,496.34,51.69,562.54,141.33],[762.37,767.85,562.54,141.33,562.54,141.33],[767.85,1019.07,562.54,141.33,426.98,393.33],[1019.07,1028.49,426.98,393.33,426.98,393.33]],"347":[[0.0,338.42,68.09,306.29,328.63,313.79],[338.42,347.42,328.63,313.79,328.63,313.79],[347.42,593.57,328.63,313.79,490.35,353.15],[593.57,600.82,490.35,353.15,490.35,353.15],[600.82,914.18,490.35,353.15,53.37,193.73],[914.18,919.46,53.37,193.73,53.37,193.73]],"348":[[0.0,777.95,544.05,102.32,657.27,742.99],[777.95,785.3,657.27,742.99,657.27,742.99],[785.3,1107.6,657.27,742.99,182.28,327.35],[1107.6,1109.33,182.28,327.35,182.28,327.35]],"350":[[0.0,106.47,204.35,136.02,179.92,312.05],[106.47,107.24,179.92,312.05,179.92,312.05],[107.24,611.81,179.92,312.05,51.14,810.48],[611.81,615.45,51.14,810.48,51.14,810.48],[615.45,1184.94,51.14,810.48,405.74,436.27],[1184.94,1185.63,405.74,436.27,405.74,436.27]],"355":[[0.0,894.53,204.04,714.11,793.19,519.4],[894.53,898.37,793.19,519.4,793.19,519.4],[898.37,1211.21,793.19,519.4,606.45,151.41],[1211.21,1213.78,606.45,151.41,606.45,151.41]],"365":[[0.0,1597.32,510.26,34.08,232.33,815.06],[1597.32,1606.61,232.33,815.06,232.33,815.06]],"368":[[0.0,122.05,170.1,340.43,318.34,244.35],[122.05,125.38,318.34,244.35,318.34,244.35],[125.38,411.61,318.34,244.35,84.17,709.22],[411.61,417.68,84.17,709.22,84.17,709.22],[417.68,871.09,84.17,709.22,592.23,537.4],[871.09,875.52,592.23,537.4,592.23,537.4],[875.52,1208.64,592.23,537.4,250.45,358.88],[1208.64,1217.69,250.45,358.88,250.45,358.88]],"372":[[0.0,55.44,238.0,510.37,288.27,547.7],[55.44,56.46,288.27,547.7,288.27,547.7],[56.46,754.9,288.27,547.7,767.06,245.04],[754.9,762.19,767.06,245.04,767.06,245.04],[762.19,1289.41,767.06,245.04,489.15,699.85],[1289.41,1293.14,489.15,699.85,489.15,699.85]],"374":[[0.0,381.48,476.42,510.07,810.51,638.15],[381.48,385.99,810.51,638.15,810.51,638.15],[385.99,602.72,810.51,638.15,615.78,343.99],[602.72,603.63,615.78,343.99,615.78,343.99],[603.63,1220.72,615.78,343.99,304.9,703.08],[1220.72,1224.32,304.9,703.08,304.9,703.08]],"376":[[0.0,885.5,68.17,578.1,748.74,521.25],[885.5,891.85,748.74,521.25,748.74,521.25],[891.85,1344.55,748.74,521.25,729.67,233.39],[1344.55,1347.29,729.67,233.39,729.67,233.39]],"380":[[0.0,235.0,646.42,544.43,763.42,804.66],[235.0,237.21,763.42,804.66,763.42,804.66],[237.21,548.26,763.42,804.66,504.14,386.09],[548.26,556.02,504.14,386.09,504.14,386.09],[556.02,730.31,504.14,386.09,606.97,629.47],[730.31,733.27,606.97,629.47,606.97,629.47],[733.27,1081.46,606.97,629.47,231.67,112.43],[1081.46,1083.0,231.67,112.43,231.67,112.43]],"381":[[0.0,247.16,544.04,238.5,751.36,178.65],[247.16,248.99,751.36,178.65,751.36,178.65],[248.99,267.62,751.36,178.65,770.68,187.73],[267.62,276.19,770.68,187.73,770.68,187.73],[276.19,541.85,770.68,187.73,319.02,229.18],[541.85,547.0,319.02,229.18,319.02,229.18],[547.0,665.09,319.02,229.18,523.72,226.71],[665.09,669.32,523.72,226.71,523.72,226.71],[669.32,830.31,523.72,226.71,281.58,311.43],[830.31,839.72,281.58,311.43,281.58,311.43],[839.72,912.53,281.58,311.43,276.36,266.09],[912.53,915.84,276.36,266.09,276.36,266.09]],"388":[[0.0,249.4,170.11,510.0,330.34,613.8],[249.4,252.98,330.34,613.8,330.34,613.8],[252.98,362.12,330.34,613.8,359.47,399.33],[362.12,366.91,359.47,399.33,359.47,399.33],[366.91,877.71,359.47,399.33,795.67,650.61],[877.71,887.45,795.67,650.61,795.67,650.61],[887.45,1745.69,795.67,650.61,218.73,94.49],[1745.69,1749.49,218.73,94.49,218.73,94.49]],"389":[[0.0,363.07,34.42,340.09,34.84,529.47],[363.07,367.16,34.84,529.47,34.84,529.47],[367.16,503.4,34.84,529.47,83.65,770.68],[503.4,505.68,83.65,770.68,83.65,770.68],[505.68,819.12,83.65,770.68,589.08,438.93],[819.12,825.48,589.08,438.93,589.08,438.93],[825.48,1205.28,589.08,438.93,27.49,172.17],[1205.28,1206.69,27.49,172.17,27.49,172.17]],"391":[[0.0,160.08,306.41,578.12,553.28,778.63],[160.08,162.66,553.28,778.63,553.28,778.63],[162.66,344.55,553.28,778.63,346.11,658.74],[344.55,348.92,346.11,658.74,346.11,658.74],[348.92,716.03,346.11,658.74,274.08,140.73],[716.03,724.78,274.08,140.73,274.08,140.73],[724.78,1105.21,274.08,140.73,652.03,523.52],[1105.21,1108.17,652.03,523.52,652.03,523.52]],"392":[[0.0,465.02,782.09,578.33,183.39,472.76],[465.02,473.42,183.39,472.76,183.39,472.76],[473.42,743.04,183.39,472.76,569.99,239.81],[743.04,750.45,569.99,239.81,569.99,239.81],[750.45,1036.17,569.99,239.81,362.24,317.09],[1036.17,1040.8,362.24,317.09,362.24,317.09]],"393":[[0.0,320.7,646.43,68.41,264.25,415.54],[320.7,327.11,264.25,415.54,264.25,415.54],[327.11,623.77,264.25,415.54,751.34,207.95],[623.77,632.08,751.34,207.95,751.34,207.95],[632.08,660.7,751.34,207.95,769.13,237.81],[660.7,665.97,769.13,237.81,769.13,237.81],[665.97,1298.38,769.13,237.81,395.44,180.4],[1298.38,1298.83,395.44,180.4,395.44,180.4]],"394":[[0.0,717.23,510.18,510.35,247.8,788.33],[717.23,721.94,247.8,788.33,247.8,788.33],[721.94,1428.33,247.8,788.33,79.97,321.54],[1428.33,1437.06,79.97,321.54,79.97,321.54]],"398":[[0.0,213.66,136.33,340.41,279.44,647.83],[213.66,217.32,279.44,647.83,279.44,647.83],[217.32,633.51,279.44,647.83,646.74,510.87],[633.51,635.45,646.74,510.87,646.74,510.87],[635.45,776.29,646.74,510.87,427.85,677.51],[776.29,782.32,427.85,677.51,427.85,677.51],[782.32,1549.72,427.85,677.51,814.44,553.56],[1549.72,1550.59,814.44,553.56,814.44,553.56]],"402":[[0.0,57.64,748.11,340.33,779.95,296.75],[57.64,67.34,779.95,296.75,779.95,296.75],[67.34,428.0,779.95,296.75,542.73,17.91],[428.0,436.64,542.73,17.91,542.73,17.91],[436.64,1011.04,542.73,17.91,35.64,351.35],[1011.04,1012.7,35.64,351.35,35.64,351.35]],"405":[[0.0,284.41,544.24,544.5,617.63,401.44],[284.41,288.2,617.63,401.44,617.63,401.44],[288.2,456.0,617.63,401.44,623.08,89.95],[456.0,460.72,623.08,89.95,623.08,89.95],[460.72,836.94,623.08,89.95,207.77,590.49],[836.94,839.11,207.77,590.49,207.77,590.49],[839.11,1040.24,207.77,590.49,25.72,493.91],[1040.24,1043.52,25.72,493.91,25.72,493.91]],"413":[[0.0,608.98,272.41,680.07,682.39,141.56],[608.98,618.94,682.39,141.56,682.39,141.56],[618.94,724.69,682.39,141.56,532.65,22.85],[724.69,733.55,532.65,22.85,532.65,22.85],[733.55,1076.11,532.65,22.85,663.14,145.08],[1076.11,1076.32,663.14,145.08,663.14,145.08]],"417":[[0.0,602.51,306.02,680.16,760.24,230.57],[602.51,604.57,760.24,230.57,760.24,230.57],[604.57,1488.96,760.24,230.57,640.11,711.59],[1488.96,1490.24,640.11,711.59,640.11,711.59]],"419":[[0.0,292.91,102.29,510.48,408.55,201.45],[292.91,299.7,408.55,201.45,408.55,201.45],[299.7,889.06,408.55,201.45,179.94,641.93],[889.06,890.54,179.94,641.93,179.94,641.93],[890.54,1613.01,179.94,641.93,404.11,170.64],[1613.01,1616.38,404.11,170.64,404.11,170.64]],"420":[[0.0,46.05,272.47,612.1,217.32,639.96],[46.05,51.46,217.32,639.96,217.32,639.96],[51.46,170.9,217.32,639.96,144.4,526.26],[170.9,171.23,144.4,526.26,144.4,526.26],[171.23,477.61,144.4,526.26,523.71,357.79],[477.61,480.99,523.71,357.79,523.71,357.79],[480.99,707.03,523.71,357.79,121.6,236.91],[707.03,710.72,121.6,236.91,121.6,236.91],[710.72,812.61,121.6,236.91,91.26,376.7],[812.61,813.07,91.26,376.7,91.26,376.7],[813.07,902.66,91.26,376.7,183.05,476.58],[902.66,906.32,183.05,476.58,183.05,476.58]],"422":[[0.0,498.89,442.13,544.29,85.06,47.02],[498.89,502.0,85.06,47.02,85.06,47.02],[502.0,761.98,85.06,47.02,580.33,80.37],[761.98,767.92,580.33,80.37,580.33,80.37],[767.92,1221.88,580.33,80.37,273.3,103.52],[1221.88,1230.99,273.3,103.52,273.3,103.52]],"426":[[0.0,297.83,476.15,340.36,805.82,707.57],[297.83,298.83,805.82,707.57,805.82,707.57],[298.83,604.15,805.82,707.57,485.78,396.58],[604.15,605.39,485.78,396.58,485.78,396.58],[605.39,1271.04,485.78,396.58,788.49,608.97],[1271.04,1273.83,788.49,608.97,788.49,608.97]],"435":[[0.0,129.11,442.23,816.49,234.08,738.37],[129.11,133.05,234.08,738.37,234.08,738.37],[133.05,486.77,234.08,738.37,482.31,129.73],[486.77,494.95,482.31,129.73,482.31,129.73],[494.95,717.47,482.31,129.73,606.23,158.7],[717.47,718.14,606.23,158.7,606.23,158.7],[718.14,1114.1,606.23,158.7,367.05,360.67],[1114.1,1122.49,367.05,360.67,367.05,360.67]],"438":[[0.0,1078.62,102.34,204.13,792.23,771.27],[1078.62,1087.68,792.23,771.27,792.23,771.27]],"439":[[0.0,154.16,238.14,102.02,358.5,372.18],[154.16,158.7,358.5,372.18,358.5,372.18],[158.7,423.2,358.5,372.18,527.98,732.08],[423.2,423.43,527.98,732.08,527.98,732.08],[423.43,786.86,527.98,732.08,229.68,108.06],[786.86,789.25,229.68,108.06,229.68,108.06],[789.25,1398.39,229.68,108.06,693.11,30.26],[1398.39,1398.93,693.11,30.26,693.11,30.26]],"441":[[0.0,183.61,374.35,442.42,230.26,733.87],[183.61,192.81,230.26,733.87,230.26,733.87],[192.81,549.31,230.26,733.87,314.73,499.48],[549.31,550.46,314.73,499.48,314.73,499.48],[550.46,837.18,314.73,499.48,174.16,59.1],[837.18,841.29,174.16,59.1,174.16,59.1],[841.29,1125.6,174.16,59.1,167.67,565.34],[1125.6,1129.97,167.67,565.34,167.67,565.34]],"445":[[0.0,357.33,680.05,340.1,373.43,796.79],[357.33,361.18,373.43,796.79,373.43,796.79],[361.18,519.57,373.43,796.79,669.18,688.27],[519.57,521.97,669.18,688.27,669.18,688.27],[521.97,1021.11,669.18,688.27,86.62,262.66],[1021.11,1021.42,86.62,262.66,86.62,262.66]],"450":[[0.0,273.12,238.18,646.41,388.83,528.63],[273.12,277.18,388.83,528.63,388.83,528.63],[277.18,546.56,388.83,528.63,317.0,323.7],[546.56,548.69,317.0,323.7,317.0,323.7],[548.69,1060.23,317.0,323.7,699.31,132.02],[1060.23,1064.8,699.31,132.02,699.31,132.02]],"466":[[0.0,785.17,340.07,816.37,178.94,296.99],[785.17,791.54,178.94,296.99,178.94,296.99],[791.54,981.6,178.94,296.99,123.73,559.91],[981.6,987.69,123.73,559.91,123.73,559.91]],"468":[[0.0,153.16,510.24,238.16,750.24,378.61],[153.16,162.61,750.24,378.61,750.24,378.61],[162.61,1101.4,750.24,378.61,10.8,661.16],[1101.4,1103.78,10.8,661.16,10.8,661.16]],"471":[[0.0,221.56,0.14,442.35,226.6,760.39],[221.56,226.29,226.6,760.39,226.6,760.39],[226.29,287.03,226.6,760.39,312.25,815.91],[287.03,296.42,312.25,815.91,312.25,815.91],[296.42,654.51,312.25,815.91,461.7,530.37],[654.51,664.2,461.7,530.37,461.7,530.37],[664.2,718.84,461.7,530.37,512.32,537.83],[718.84,722.37,512.32,537.83,512.32,537.83],[722.37,1203.93,512.32,537.83,499.74,202.69],[1203.93,1209.51,499.74,202.69,499.74,202.69]],"473":[[0.0,803.41,408.17,0.19,94.39,509.25],[803.41,807.01,94.39,509.25,94.39,509.25],[807.01,1159.55,94.39,509.25,436.17,266.61],[1159.55,1166.97,436.17,266.61,436.17,266.61]],"478":[[0.0,18.36,136.06,170.44,160.65,165.42],[18.36,26.94,160.65,165.42,160.65,165.42],[26.94,271.25,160.65,165.42,549.35,370.21],[271.25,277.3,549.35,370.21,549.35,370.21],[277.3,752.84,549.35,370.21,163.95,486.66],[752.84,760.88,163.95,486.66,163.95,486.66],[760.88,1046.86,163.95,486.66,640.01,231.17],[1046.86,1055.03,640.01,231.17,640.01,231.17]],"479":[[0.0,451.34,510.09,408.3,276.58,659.72],[451.34,459.94,276.58,659.72,276.58,659.72],[459.94,740.72,276.58,659.72,55.08,201.09],[740.72,744.09,55.08,201.09,55.08,201.09],[744.09,1070.78,55.08,201.09,215.56,733.73],[1070.78,1075.11,215.56,733.73,215.56,733.73]],"487":[[0.0,151.54,748.45,306.27,809.88,141.94],[151.54,152.01,809.88,141.94,809.88,141.94],[152.01,680.22,809.88,141.94,440.91,665.83],[680.22,680.58,440.91,665.83,440.91,665.83],[680.58,942.8,440.91,665.83,76.95,737.36],[942.8,944.2,76.95,737.36,76.95,737.36]],"489":[[0.0,474.63,102.37,374.25,414.19,263.78],[474.63,477.74,414.19,263.78,414.19,263.78],[477.74,1078.63,414.19,263.78,26.46,714.28],[1078.63,1078.72,26.46,714.28,26.46,714.28]],"492":[[0.0,219.21,646.42,170.5,367.62,267.41],[219.21,222.74,367.62,267.41,367.62,267.41],[222.74,293.12,367.62,267.41,391.45,135.15],[293.12,294.56,391.45,135.15,391.45,135.15],[294.56,616.76,391.45,135.15,203.19,505.85],[616.76,626.24,203.19,505.85,203.19,505.85],[626.24,1028.8,203.19,505.85,533.1,238.09],[1028.8,1036.12,533.1,238.09,533.1,238.09]],"494":[[0.0,388.28,408.3,646.03,361.93,46.37],[388.28,395.87,361.93,46.37,361.93,46.37],[395.87,1041.2,361.93,46.37,807.91,734.99],[1041.2,1042.15,807.91,734.99,807.91,734.99]],"495":[[0.0,170.32,0.28,408.37,137.08,249.97],[170.32,172.67,137.08,249.97,137.08,249.97],[172.67,299.64,137.08,249.97,94.41,400.12],[299.64,307.92,94.41,400.12,94.41,400.12],[307.92,708.31,94.41,400.12,520.32,770.29],[708.31,712.73,520.32,770.29,520.32,770.29],[712.73,908.35,520.32,770.29,265.1,814.94],[908.35,910.44,265.1,814.94,265.1,814.94]],"497":[[0.0,47.38,170.11,238.29,166.8,315.86],[47.38,50.55,166.8,315.86,166.8,315.86],[50.55,441.35,166.8,315.86,496.13,650.56],[441.35,447.6,496.13,650.56,496.13,650.56],[447.6,724.98,496.13,650.56,86.91,615.93],[724.98,728.23,86.91,615.93,86.91,615.93],[728.23,912.32,86.91,615.93,317.66,648.56],[912.32,918.77,317.66,648.56,317.66,648.56]],"498":[[0.0,716.14,748.23,612.4,594.95,77.82],[716.14,722.51,594.95,77.82,594.95,77.82],[722.51,1349.3,594.95,77.82,240.52,680.26],[1349.3,1352.45,240.52,680.26,240.52,680.26]],"499":[[0.0,242.62,136.2,136.1,307.51,58.49],[242.62,244.82,307.51,58.49,307.51,58.49],[244.82,472.7,307.51,58.49,648.23,158.77],[472.7,473.25,648.23,158.77,648.23,158.77],[473.25,911.75,648.23,158.77,72.67,655.19],[911.75,920.09,72.67,655.19,72.67,655.19]]};
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
