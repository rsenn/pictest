<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="50" unitdist="mil" unit="inch" style="dots" multiple="2" display="yes" altdistance="10" altunitdist="mil" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="trash" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<description>RS232 Adapter using NPN and PNP Transistors</description>
<libraries>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinconn">
<packages>
<package name="CONN-4P">
<pad name="4" x="7.62" y="0" drill="0.9" diameter="1.6764" shape="octagon" rot="R180"/>
<pad name="3" x="5.08" y="0" drill="0.9" diameter="1.6764" shape="octagon" rot="R180"/>
<pad name="2" x="2.54" y="0" drill="0.9" diameter="1.6764" shape="octagon" rot="R180"/>
<pad name="1" x="0" y="0" drill="0.9" diameter="1.6764" shape="square" rot="R180"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="8.89" y2="-1.27" width="0.127" layer="21"/>
<wire x1="8.89" y1="-1.27" x2="8.89" y2="1.27" width="0.127" layer="21"/>
<wire x1="8.89" y1="1.27" x2="-1.27" y2="1.27" width="0.127" layer="21"/>
<text x="-1.524" y="1.27" size="0.8128" layer="23" rot="R180">1</text>
<text x="8.89" y="-1.524" size="0.8128" layer="25" align="top-right">&gt;NAME</text>
<text x="-1.27" y="-1.524" size="0.8128" layer="27" align="top-left">&gt;VALUE</text>
</package>
<package name="PIC-UART-X">
<pad name="20" x="0" y="3.81" drill="1" shape="octagon" rot="R270"/>
<pad name="19" x="0" y="1.27" drill="1" shape="square" rot="R270"/>
<pad name="18" x="0" y="-1.27" drill="1" shape="octagon" rot="R270"/>
<pad name="17" x="0" y="-3.81" drill="1" shape="octagon" rot="R270"/>
<wire x1="1.27" y1="-5.08" x2="-1.27" y2="-5.08" width="0.127" layer="22"/>
<wire x1="-1.27" y1="-5.08" x2="-1.27" y2="5.08" width="0.127" layer="22"/>
<wire x1="-1.27" y1="5.08" x2="1.27" y2="5.08" width="0.127" layer="22"/>
<wire x1="1.27" y1="5.08" x2="1.27" y2="-5.08" width="0.127" layer="22"/>
<text x="0.6985" y="-4.445" size="0.3048" layer="23" rot="R270">17</text>
<text x="1.651" y="-4.826" size="0.6096" layer="27" rot="R90" align="top-left">&gt;VALUE</text>
<text x="-1.905" y="-3.81" size="0.6096" layer="21" font="vector" rot="R90" align="center">TX</text>
<text x="-1.905" y="-1.27" size="0.6096" layer="21" font="vector" rot="R270" align="center">RX</text>
<text x="-1.905" y="1.27" size="0.6096" layer="21" font="vector" rot="R270" align="center">VSS</text>
<text x="-1.905" y="3.81" size="0.6096" layer="21" font="vector" rot="R270" align="center">VDD</text>
<text x="2.54" y="-4.826" size="0.8128" layer="25" rot="R90" align="top-left">&gt;NAME</text>
</package>
<package name="RS232-4PIN-NEW">
<pad name="3" x="0" y="1.27" drill="0.9" diameter="1.778" shape="octagon" rot="R270"/>
<pad name="1" x="0" y="-3.81" drill="0.9" diameter="1.778" shape="square" rot="R270"/>
<pad name="2" x="0" y="-1.27" drill="0.9" diameter="1.778" shape="octagon" rot="R270"/>
<pad name="4" x="0" y="3.81" drill="0.9" diameter="1.778" shape="octagon" rot="R270"/>
<wire x1="-1.27" y1="5.08" x2="1.27" y2="5.08" width="0.127" layer="21"/>
<wire x1="1.27" y1="5.08" x2="1.27" y2="-5.08" width="0.127" layer="21"/>
<wire x1="1.27" y1="-5.08" x2="-1.27" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-5.08" x2="-1.27" y2="5.08" width="0.127" layer="21"/>
<text x="1.524" y="-5.08" size="1.016" layer="25" rot="R180" align="top-right">&gt;NAME</text>
<text x="1.524" y="6.35" size="1.016" layer="27" rot="R180" align="bottom-right">&gt;VALUE</text>
<text x="0" y="5.334" size="0.6096" layer="23" font="fixed" align="bottom-center">4</text>
<text x="-2.032" y="-1.27" size="0.6096" layer="48" font="vector" rot="R270" align="center">TXD</text>
<text x="-2.032" y="3.81" size="0.6096" layer="48" font="vector" rot="R90" align="center">GND</text>
<text x="-2.032" y="-3.81" size="0.6096" layer="48" font="vector" rot="R270" align="center">RXD</text>
<text x="-2.032" y="1.27" size="0.6096" layer="48" font="vector" rot="R270" align="center">DTR</text>
</package>
<package name="PIC-UART">
<pad name="20" x="0" y="7.62" drill="1" shape="octagon" rot="R270"/>
<pad name="19" x="0" y="5.08" drill="1" shape="square" rot="R270"/>
<pad name="18" x="0" y="2.54" drill="1" shape="octagon" rot="R270"/>
<pad name="17" x="0" y="0" drill="1" shape="octagon" rot="R270"/>
<wire x1="1.27" y1="-1.27" x2="-1.27" y2="-1.27" width="0.127" layer="22"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="8.89" width="0.127" layer="22"/>
<wire x1="-1.27" y1="8.89" x2="1.27" y2="8.89" width="0.127" layer="22"/>
<wire x1="1.27" y1="8.89" x2="1.27" y2="-1.27" width="0.127" layer="22"/>
<text x="0.6985" y="-0.635" size="0.3048" layer="23" rot="R270">17</text>
<text x="0" y="9.271" size="0.6096" layer="27" align="bottom-center">&gt;VALUE</text>
<text x="1.905" y="0" size="0.6096" layer="21" font="vector" rot="R90" align="center">TX</text>
<text x="1.905" y="2.54" size="0.6096" layer="21" font="vector" rot="R90" align="center">RX</text>
<text x="1.905" y="5.08" size="0.6096" layer="21" font="vector" rot="R90" align="center">VSS</text>
<text x="1.905" y="7.62" size="0.6096" layer="21" font="vector" rot="R90" align="center">VDD</text>
<text x="1.016" y="-1.905" size="0.8128" layer="25" align="top-right">&gt;NAME</text>
</package>
<package name="PIC-UART-L">
<pad name="20" x="0" y="3.81" drill="1" shape="octagon" rot="R270"/>
<pad name="19" x="0" y="1.27" drill="1" shape="square" rot="R270"/>
<pad name="18" x="0" y="-1.27" drill="1" shape="octagon" rot="R270"/>
<pad name="17" x="0" y="-3.81" drill="1" shape="octagon" rot="R270"/>
<wire x1="1.27" y1="-5.08" x2="-1.27" y2="-5.08" width="0.127" layer="22"/>
<wire x1="-1.27" y1="-5.08" x2="-1.27" y2="5.08" width="0.127" layer="22"/>
<wire x1="-1.27" y1="5.08" x2="1.27" y2="5.08" width="0.127" layer="22"/>
<wire x1="1.27" y1="5.08" x2="1.27" y2="-5.08" width="0.127" layer="22"/>
<text x="0.6985" y="-4.445" size="0.3048" layer="23" rot="R270">17</text>
<text x="0" y="-5.461" size="0.6096" layer="27" rot="R180" align="bottom-center">&gt;VALUE</text>
<text x="-1.905" y="-3.81" size="0.6096" layer="21" font="vector" rot="R90" align="center">TX</text>
<text x="-1.905" y="-1.27" size="0.6096" layer="21" font="vector" rot="R90" align="center">RX</text>
<text x="-1.905" y="1.27" size="0.6096" layer="21" font="vector" rot="R90" align="center">VSS</text>
<text x="-1.905" y="3.81" size="0.6096" layer="21" font="vector" rot="R90" align="center">VDD</text>
<text x="-1.016" y="5.715" size="0.8128" layer="25" rot="R180" align="top-right">&gt;NAME</text>
</package>
<package name="RS232-4PIN-NEW-L">
<pad name="3" x="0" y="1.27" drill="0.9" diameter="1.778" shape="octagon" rot="R270"/>
<pad name="1" x="0" y="-3.81" drill="0.9" diameter="1.778" shape="square" rot="R270"/>
<pad name="2" x="0" y="-1.27" drill="0.9" diameter="1.778" shape="octagon" rot="R270"/>
<pad name="4" x="0" y="3.81" drill="0.9" diameter="1.778" shape="octagon" rot="R270"/>
<wire x1="-1.27" y1="5.08" x2="1.27" y2="5.08" width="0.127" layer="21"/>
<wire x1="1.27" y1="5.08" x2="1.27" y2="-5.08" width="0.127" layer="21"/>
<wire x1="1.27" y1="-5.08" x2="-1.27" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-5.08" x2="-1.27" y2="5.08" width="0.127" layer="21"/>
<text x="-1.524" y="5.08" size="1.016" layer="25" align="top-right">&gt;NAME</text>
<text x="-1.524" y="-6.35" size="1.016" layer="27" align="bottom-right">&gt;VALUE</text>
<text x="0" y="5.334" size="0.6096" layer="23" font="fixed" align="bottom-center">4</text>
<text x="1.778" y="-1.27" size="0.6096" layer="48" font="vector" rot="R270" align="center">TXD</text>
<text x="1.778" y="3.81" size="0.6096" layer="48" font="vector" rot="R90" align="center">GND</text>
<text x="1.778" y="-3.81" size="0.6096" layer="48" font="vector" rot="R270" align="center">RXD</text>
<text x="1.778" y="1.27" size="0.6096" layer="48" font="vector" rot="R270" align="center">DTR</text>
</package>
</packages>
<symbols>
<symbol name="PIC-UART">
<pin name="VDD" x="-7.62" y="3.81" length="short" direction="pas"/>
<pin name="VSS" x="-7.62" y="1.27" length="short" direction="pas"/>
<pin name="RX" x="-7.62" y="-1.27" length="short" direction="pas"/>
<pin name="TX" x="-7.62" y="-3.81" length="short" direction="pas"/>
<wire x1="5.08" y1="6.35" x2="-5.08" y2="6.35" width="0.254" layer="94"/>
<wire x1="-5.08" y1="6.35" x2="-5.08" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-6.35" x2="5.08" y2="-6.35" width="0.254" layer="94"/>
<wire x1="5.08" y1="-6.35" x2="5.08" y2="6.35" width="0.254" layer="94"/>
<text x="-5.08" y="8.89" size="1.778" layer="95" align="top-left">&gt;NAME</text>
<text x="-5.08" y="-8.89" size="1.778" layer="96">&gt;VALUE</text>
<text x="3.048" y="0" size="1.27" layer="97" font="fixed" rot="R270" align="center">PIC UART</text>
</symbol>
<symbol name="RS232-4PIN-NEW">
<pin name="DTR" x="10.16" y="-2.54" length="short" direction="pas" rot="R180"/>
<pin name="RXD" x="10.16" y="2.54" length="short" direction="pas" rot="R180"/>
<pin name="TXD" x="10.16" y="0" length="short" direction="pas" rot="R180"/>
<pin name="GND" x="10.16" y="-5.08" length="short" direction="pas" rot="R180"/>
<wire x1="7.62" y1="-7.62" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<text x="7.62" y="7.62" size="1.778" layer="95" rot="MR0" align="top-left">&gt;NAME</text>
<text x="7.62" y="-10.16" size="1.778" layer="96" rot="MR0">&gt;VALUE</text>
<text x="-6.096" y="-4.953" size="1.27" layer="94" font="fixed" ratio="10" distance="100" rot="MR180" align="center-left">Blue</text>
<text x="-6.096" y="-2.413" size="1.27" layer="94" font="fixed" ratio="10" distance="100" rot="MR180" align="center-left">Orange</text>
<text x="-6.096" y="0.127" size="1.27" layer="94" font="fixed" ratio="10" distance="100" rot="MR180" align="center-left">Yellow</text>
<text x="-6.096" y="2.667" size="1.27" layer="94" font="fixed" ratio="10" distance="100" rot="MR180" align="center-left">Red</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="PIC-UART" prefix="J">
<gates>
<gate name="1" symbol="PIC-UART" x="1.27" y="-5.08"/>
</gates>
<devices>
<device name="" package="PIC-UART">
<connects>
<connect gate="1" pin="RX" pad="18"/>
<connect gate="1" pin="TX" pad="17"/>
<connect gate="1" pin="VDD" pad="20"/>
<connect gate="1" pin="VSS" pad="19"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-4P" package="CONN-4P">
<connects>
<connect gate="1" pin="RX" pad="2"/>
<connect gate="1" pin="TX" pad="1"/>
<connect gate="1" pin="VDD" pad="4"/>
<connect gate="1" pin="VSS" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-X" package="PIC-UART-X">
<connects>
<connect gate="1" pin="RX" pad="18"/>
<connect gate="1" pin="TX" pad="17"/>
<connect gate="1" pin="VDD" pad="20"/>
<connect gate="1" pin="VSS" pad="19"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-L" package="PIC-UART-L">
<connects>
<connect gate="1" pin="RX" pad="18"/>
<connect gate="1" pin="TX" pad="17"/>
<connect gate="1" pin="VDD" pad="20"/>
<connect gate="1" pin="VSS" pad="19"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="COMPORT-4PIN-NEW">
<gates>
<gate name="1" symbol="RS232-4PIN-NEW" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RS232-4PIN-NEW">
<connects>
<connect gate="1" pin="DTR" pad="3"/>
<connect gate="1" pin="GND" pad="4"/>
<connect gate="1" pin="RXD" pad="1"/>
<connect gate="1" pin="TXD" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-4P" package="CONN-4P">
<connects>
<connect gate="1" pin="DTR" pad="3"/>
<connect gate="1" pin="GND" pad="4"/>
<connect gate="1" pin="RXD" pad="1"/>
<connect gate="1" pin="TXD" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-L" package="RS232-4PIN-NEW-L">
<connects>
<connect gate="1" pin="DTR" pad="3"/>
<connect gate="1" pin="GND" pad="4"/>
<connect gate="1" pin="RXD" pad="1"/>
<connect gate="1" pin="TXD" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="t">
<description>&lt;b&gt;Resistors, Capacitors, Inductors&lt;/b&gt;&lt;p&gt;
 Based on the previous libraries:
 &lt;ul&gt;
 &lt;li&gt;r.lbr
 &lt;li&gt;cap.lbr 
 &lt;li&gt;cap-fe.lbr
 &lt;li&gt;captant.lbr
 &lt;li&gt;polcap.lbr
 &lt;li&gt;ipc-smd.lbr
 &lt;/ul&gt;
 All SMD packages are defined according to the IPC specifications and  CECC&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;p&gt;
 &lt;p&gt;
 for Electrolyt Capacitors see also :&lt;p&gt;
 www.bccomponents.com &lt;p&gt;
 www.panasonic.com&lt;p&gt;
 www.kemet.com&lt;p&gt;
 &lt;p&gt;
 for trimmer refence see : &lt;u&gt;www.electrospec-inc.com/cross_references/trimpotcrossref.asp&lt;/u&gt;&lt;p&gt;
 
 &lt;map name="nav_main"&gt;
 &lt;area shape="rect" coords="0,1,140,23" href="../military_specs.asp" title=""&gt;
 &lt;area shape="rect" coords="0,24,140,51" href="../about.asp" title=""&gt;
 &lt;area shape="rect" coords="1,52,140,77" href="../rfq.asp" title=""&gt;
 &lt;area shape="rect" coords="0,78,139,103" href="../products.asp" title=""&gt;
 &lt;area shape="rect" coords="1,102,138,128" href="../excess_inventory.asp" title=""&gt;
 &lt;area shape="rect" coords="1,129,138,150" href="../edge.asp" title=""&gt;
 &lt;area shape="rect" coords="1,151,139,178" href="../industry_links.asp" title=""&gt;
 &lt;area shape="rect" coords="0,179,139,201" href="../comments.asp" title=""&gt;
 &lt;area shape="rect" coords="1,203,138,231" href="../directory.asp" title=""&gt;
 &lt;area shape="default" nohref&gt;
 &lt;/map&gt;
 
 &lt;html&gt;
 
 &lt;title&gt;&lt;/title&gt;
 
 &lt;LINK REL="StyleSheet" TYPE="text/css" HREF="style-sheet.css"&gt;
 
 &lt;body bgcolor="#ffffff" text="#000000" marginwidth="0" marginheight="0" topmargin="0" leftmargin="0"&gt;
 &lt;table border=0 cellspacing=0 cellpadding=0 width="100%" cellpaddding=0 height="55%"&gt;
 &lt;tr valign="top"&gt;
 
 &lt;/td&gt;
 &lt;! &lt;td width="10"&gt;&amp;nbsp;&lt;/td&gt;
 &lt;td width="90%"&gt;
 
 &lt;b&gt;&lt;font color="#0000FF" size="4"&gt;TRIM-POT CROSS REFERENCE&lt;/font&gt;&lt;/b&gt;
 &lt;P&gt;
 &lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;RECTANGULAR MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BOURNS&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BI&amp;nbsp;TECH&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;DALE-VISHAY&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PHILIPS/MEPCO&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MURATA&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PANASONIC&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;SPECTROL&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MILSPEC&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;&lt;TD&gt;&amp;nbsp;&lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3 &gt;
 3005P&lt;BR&gt;
 3006P&lt;BR&gt;
 3006W&lt;BR&gt;
 3006Y&lt;BR&gt;
 3009P&lt;BR&gt;
 3009W&lt;BR&gt;
 3009Y&lt;BR&gt;
 3057J&lt;BR&gt;
 3057L&lt;BR&gt;
 3057P&lt;BR&gt;
 3057Y&lt;BR&gt;
 3059J&lt;BR&gt;
 3059L&lt;BR&gt;
 3059P&lt;BR&gt;
 3059Y&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 89P&lt;BR&gt;
 89W&lt;BR&gt;
 89X&lt;BR&gt;
 89PH&lt;BR&gt;
 76P&lt;BR&gt;
 89XH&lt;BR&gt;
 78SLT&lt;BR&gt;
 78L&amp;nbsp;ALT&lt;BR&gt;
 56P&amp;nbsp;ALT&lt;BR&gt;
 78P&amp;nbsp;ALT&lt;BR&gt;
 T8S&lt;BR&gt;
 78L&lt;BR&gt;
 56P&lt;BR&gt;
 78P&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 T18/784&lt;BR&gt;
 783&lt;BR&gt;
 781&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 2199&lt;BR&gt;
 1697/1897&lt;BR&gt;
 1680/1880&lt;BR&gt;
 2187&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 8035EKP/CT20/RJ-20P&lt;BR&gt;
 -&lt;BR&gt;
 RJ-20X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 1211L&lt;BR&gt;
 8012EKQ&amp;nbsp;ALT&lt;BR&gt;
 8012EKR&amp;nbsp;ALT&lt;BR&gt;
 1211P&lt;BR&gt;
 8012EKJ&lt;BR&gt;
 8012EKL&lt;BR&gt;
 8012EKQ&lt;BR&gt;
 8012EKR&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 2101P&lt;BR&gt;
 2101W&lt;BR&gt;
 2101Y&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 2102L&lt;BR&gt;
 2102S&lt;BR&gt;
 2102Y&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 EVMCOG&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 43P&lt;BR&gt;
 43W&lt;BR&gt;
 43Y&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 40L&lt;BR&gt;
 40P&lt;BR&gt;
 40Y&lt;BR&gt;
 70Y-T602&lt;BR&gt;
 70L&lt;BR&gt;
 70P&lt;BR&gt;
 70Y&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 RT/RTR12&lt;BR&gt;
 RT/RTR12&lt;BR&gt;
 RT/RTR12&lt;BR&gt;
 -&lt;BR&gt;
 RJ/RJR12&lt;BR&gt;
 RJ/RJR12&lt;BR&gt;
 RJ/RJR12&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;&amp;nbsp;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SQUARE MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3250L&lt;BR&gt;
 3250P&lt;BR&gt;
 3250W&lt;BR&gt;
 3250X&lt;BR&gt;
 3252P&lt;BR&gt;
 3252W&lt;BR&gt;
 3252X&lt;BR&gt;
 3260P&lt;BR&gt;
 3260W&lt;BR&gt;
 3260X&lt;BR&gt;
 3262P&lt;BR&gt;
 3262W&lt;BR&gt;
 3262X&lt;BR&gt;
 3266P&lt;BR&gt;
 3266W&lt;BR&gt;
 3266X&lt;BR&gt;
 3290H&lt;BR&gt;
 3290P&lt;BR&gt;
 3290W&lt;BR&gt;
 3292P&lt;BR&gt;
 3292W&lt;BR&gt;
 3292X&lt;BR&gt;
 3296P&lt;BR&gt;
 3296W&lt;BR&gt;
 3296X&lt;BR&gt;
 3296Y&lt;BR&gt;
 3296Z&lt;BR&gt;
 3299P&lt;BR&gt;
 3299W&lt;BR&gt;
 3299X&lt;BR&gt;
 3299Y&lt;BR&gt;
 3299Z&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 66P&amp;nbsp;ALT&lt;BR&gt;
 66W&amp;nbsp;ALT&lt;BR&gt;
 66X&amp;nbsp;ALT&lt;BR&gt;
 66P&amp;nbsp;ALT&lt;BR&gt;
 66W&amp;nbsp;ALT&lt;BR&gt;
 66X&amp;nbsp;ALT&lt;BR&gt;
 -&lt;BR&gt;
 64W&amp;nbsp;ALT&lt;BR&gt;
 -&lt;BR&gt;
 64P&amp;nbsp;ALT&lt;BR&gt;
 64W&amp;nbsp;ALT&lt;BR&gt;
 64X&amp;nbsp;ALT&lt;BR&gt;
 64P&lt;BR&gt;
 64W&lt;BR&gt;
 64X&lt;BR&gt;
 66X&amp;nbsp;ALT&lt;BR&gt;
 66P&amp;nbsp;ALT&lt;BR&gt;
 66W&amp;nbsp;ALT&lt;BR&gt;
 66P&lt;BR&gt;
 66W&lt;BR&gt;
 66X&lt;BR&gt;
 67P&lt;BR&gt;
 67W&lt;BR&gt;
 67X&lt;BR&gt;
 67Y&lt;BR&gt;
 67Z&lt;BR&gt;
 68P&lt;BR&gt;
 68W&lt;BR&gt;
 68X&lt;BR&gt;
 67Y&amp;nbsp;ALT&lt;BR&gt;
 67Z&amp;nbsp;ALT&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 5050&lt;BR&gt;
 5091&lt;BR&gt;
 5080&lt;BR&gt;
 5087&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 T63YB&lt;BR&gt;
 T63XB&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 5887&lt;BR&gt;
 5891&lt;BR&gt;
 5880&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 T93Z&lt;BR&gt;
 T93YA&lt;BR&gt;
 T93XA&lt;BR&gt;
 T93YB&lt;BR&gt;
 T93XB&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 8026EKP&lt;BR&gt;
 8026EKW&lt;BR&gt;
 8026EKM&lt;BR&gt;
 8026EKP&lt;BR&gt;
 8026EKB&lt;BR&gt;
 8026EKM&lt;BR&gt;
 1309X&lt;BR&gt;
 1309P&lt;BR&gt;
 1309W&lt;BR&gt;
 8024EKP&lt;BR&gt;
 8024EKW&lt;BR&gt;
 8024EKN&lt;BR&gt;
 RJ-9P/CT9P&lt;BR&gt;
 RJ-9W&lt;BR&gt;
 RJ-9X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3103P&lt;BR&gt;
 3103Y&lt;BR&gt;
 3103Z&lt;BR&gt;
 3103P&lt;BR&gt;
 3103Y&lt;BR&gt;
 3103Z&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3105P/3106P&lt;BR&gt;
 3105W/3106W&lt;BR&gt;
 3105X/3106X&lt;BR&gt;
 3105Y/3106Y&lt;BR&gt;
 3105Z/3105Z&lt;BR&gt;
 3102P&lt;BR&gt;
 3102W&lt;BR&gt;
 3102X&lt;BR&gt;
 3102Y&lt;BR&gt;
 3102Z&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMCBG&lt;BR&gt;
 EVMCCG&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 55-1-X&lt;BR&gt;
 55-4-X&lt;BR&gt;
 55-3-X&lt;BR&gt;
 55-2-X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 50-2-X&lt;BR&gt;
 50-4-X&lt;BR&gt;
 50-3-X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 64P&lt;BR&gt;
 64W&lt;BR&gt;
 64X&lt;BR&gt;
 64Y&lt;BR&gt;
 64Z&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 RT/RTR22&lt;BR&gt;
 RT/RTR22&lt;BR&gt;
 RT/RTR22&lt;BR&gt;
 RT/RTR22&lt;BR&gt;
 RJ/RJR22&lt;BR&gt;
 RJ/RJR22&lt;BR&gt;
 RJ/RJR22&lt;BR&gt;
 RT/RTR26&lt;BR&gt;
 RT/RTR26&lt;BR&gt;
 RT/RTR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RT/RTR24&lt;BR&gt;
 RT/RTR24&lt;BR&gt;
 RT/RTR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;&amp;nbsp;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3323P&lt;BR&gt;
 3323S&lt;BR&gt;
 3323W&lt;BR&gt;
 3329H&lt;BR&gt;
 3329P&lt;BR&gt;
 3329W&lt;BR&gt;
 3339H&lt;BR&gt;
 3339P&lt;BR&gt;
 3339W&lt;BR&gt;
 3352E&lt;BR&gt;
 3352H&lt;BR&gt;
 3352K&lt;BR&gt;
 3352P&lt;BR&gt;
 3352T&lt;BR&gt;
 3352V&lt;BR&gt;
 3352W&lt;BR&gt;
 3362H&lt;BR&gt;
 3362M&lt;BR&gt;
 3362P&lt;BR&gt;
 3362R&lt;BR&gt;
 3362S&lt;BR&gt;
 3362U&lt;BR&gt;
 3362W&lt;BR&gt;
 3362X&lt;BR&gt;
 3386B&lt;BR&gt;
 3386C&lt;BR&gt;
 3386F&lt;BR&gt;
 3386H&lt;BR&gt;
 3386K&lt;BR&gt;
 3386M&lt;BR&gt;
 3386P&lt;BR&gt;
 3386S&lt;BR&gt;
 3386W&lt;BR&gt;
 3386X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 25P&lt;BR&gt;
 25S&lt;BR&gt;
 25RX&lt;BR&gt;
 82P&lt;BR&gt;
 82M&lt;BR&gt;
 82PA&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 91E&lt;BR&gt;
 91X&lt;BR&gt;
 91T&lt;BR&gt;
 91B&lt;BR&gt;
 91A&lt;BR&gt;
 91V&lt;BR&gt;
 91W&lt;BR&gt;
 25W&lt;BR&gt;
 25V&lt;BR&gt;
 25P&lt;BR&gt;
 -&lt;BR&gt;
 25S&lt;BR&gt;
 25U&lt;BR&gt;
 25RX&lt;BR&gt;
 25X&lt;BR&gt;
 72XW&lt;BR&gt;
 72XL&lt;BR&gt;
 72PM&lt;BR&gt;
 72RX&lt;BR&gt;
 -&lt;BR&gt;
 72PX&lt;BR&gt;
 72P&lt;BR&gt;
 72RXW&lt;BR&gt;
 72RXL&lt;BR&gt;
 72X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 T7YB&lt;BR&gt;
 T7YA&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 TXD&lt;BR&gt;
 TYA&lt;BR&gt;
 TYP&lt;BR&gt;
 -&lt;BR&gt;
 TYD&lt;BR&gt;
 TX&lt;BR&gt;
 -&lt;BR&gt;
 150SX&lt;BR&gt;
 100SX&lt;BR&gt;
 102T&lt;BR&gt;
 101S&lt;BR&gt;
 190T&lt;BR&gt;
 150TX&lt;BR&gt;
 101&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 101SX&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 ET6P&lt;BR&gt;
 ET6S&lt;BR&gt;
 ET6X&lt;BR&gt;
 RJ-6W/8014EMW&lt;BR&gt;
 RJ-6P/8014EMP&lt;BR&gt;
 RJ-6X/8014EMX&lt;BR&gt;
 TM7W&lt;BR&gt;
 TM7P&lt;BR&gt;
 TM7X&lt;BR&gt;
 -&lt;BR&gt;
 8017SMS&lt;BR&gt;
 -&lt;BR&gt;
 8017SMB&lt;BR&gt;
 8017SMA&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 CT-6W&lt;BR&gt;
 CT-6H&lt;BR&gt;
 CT-6P&lt;BR&gt;
 CT-6R&lt;BR&gt;
 -&lt;BR&gt;
 CT-6V&lt;BR&gt;
 CT-6X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 8038EKV&lt;BR&gt;
 -&lt;BR&gt;
 8038EKX&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 8038EKP&lt;BR&gt;
 8038EKZ&lt;BR&gt;
 8038EKW&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3321H&lt;BR&gt;
 3321P&lt;BR&gt;
 3321N&lt;BR&gt;
 1102H&lt;BR&gt;
 1102P&lt;BR&gt;
 1102T&lt;BR&gt;
 RVA0911V304A&lt;BR&gt;
 -&lt;BR&gt;
 RVA0911H413A&lt;BR&gt;
 RVG0707V100A&lt;BR&gt;
 RVA0607V(H)306A&lt;BR&gt;
 RVA1214H213A&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3104B&lt;BR&gt;
 3104C&lt;BR&gt;
 3104F&lt;BR&gt;
 3104H&lt;BR&gt;
 -&lt;BR&gt;
 3104M&lt;BR&gt;
 3104P&lt;BR&gt;
 3104S&lt;BR&gt;
 3104W&lt;BR&gt;
 3104X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 EVMQ0G&lt;BR&gt;
 EVMQIG&lt;BR&gt;
 EVMQ3G&lt;BR&gt;
 EVMS0G&lt;BR&gt;
 EVMQ0G&lt;BR&gt;
 EVMG0G&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMK4GA00B&lt;BR&gt;
 EVM30GA00B&lt;BR&gt;
 EVMK0GA00B&lt;BR&gt;
 EVM38GA00B&lt;BR&gt;
 EVMB6&lt;BR&gt;
 EVLQ0&lt;BR&gt;
 -&lt;BR&gt;
 EVMMSG&lt;BR&gt;
 EVMMBG&lt;BR&gt;
 EVMMAG&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMMCS&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMM1&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMM0&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMM3&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 62-3-1&lt;BR&gt;
 62-1-2&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 67R&lt;BR&gt;
 -&lt;BR&gt;
 67P&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 67X&lt;BR&gt;
 63V&lt;BR&gt;
 63S&lt;BR&gt;
 63M&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 63H&lt;BR&gt;
 63P&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 63X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 RJ/RJR50&lt;BR&gt;
 RJ/RJR50&lt;BR&gt;
 RJ/RJR50&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;/TABLE&gt;
 &lt;P&gt;&amp;nbsp;&lt;P&gt;
 &lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=3&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=7&gt;
 &lt;FONT color="#0000FF" SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SMD TRIM-POT CROSS REFERENCE&lt;/B&gt;&lt;/FONT&gt;
 &lt;P&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3224G&lt;BR&gt;
 3224J&lt;BR&gt;
 3224W&lt;BR&gt;
 3269P&lt;BR&gt;
 3269W&lt;BR&gt;
 3269X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 44G&lt;BR&gt;
 44J&lt;BR&gt;
 44W&lt;BR&gt;
 84P&lt;BR&gt;
 84W&lt;BR&gt;
 84X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 ST63Z&lt;BR&gt;
 ST63Y&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 ST5P&lt;BR&gt;
 ST5W&lt;BR&gt;
 ST5X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=7&gt;&amp;nbsp;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=7&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3314G&lt;BR&gt;
 3314J&lt;BR&gt;
 3364A/B&lt;BR&gt;
 3364C/D&lt;BR&gt;
 3364W/X&lt;BR&gt;
 3313G&lt;BR&gt;
 3313J&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 23B&lt;BR&gt;
 23A&lt;BR&gt;
 21X&lt;BR&gt;
 21W&lt;BR&gt;
 -&lt;BR&gt;
 22B&lt;BR&gt;
 22A&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 ST5YL/ST53YL&lt;BR&gt;
 ST5YJ/5T53YJ&lt;BR&gt;
 ST-23A&lt;BR&gt;
 ST-22B&lt;BR&gt;
 ST-22&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 ST-4B&lt;BR&gt;
 ST-4A&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 ST-3B&lt;BR&gt;
 ST-3A&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 EVM-6YS&lt;BR&gt;
 EVM-1E&lt;BR&gt;
 EVM-1G&lt;BR&gt;
 EVM-1D&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 G4B&lt;BR&gt;
 G4A&lt;BR&gt;
 TR04-3S1&lt;BR&gt;
 TRG04-2S1&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 DVR-43A&lt;BR&gt;
 CVR-42C&lt;BR&gt;
 CVR-42A/C&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;/TABLE&gt;
 &lt;P&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;ALT =&amp;nbsp;ALTERNATE&lt;/B&gt;&lt;/FONT&gt;
 &lt;P&gt;
 
 &amp;nbsp;
 &lt;P&gt;
 &lt;/td&gt;
 &lt;/tr&gt;
 &lt;/table&gt;
 &lt;/BODY&gt;&lt;/HTML&gt;</description>
<packages>
<package name="TO92-CBE">
<description>&lt;b&gt;TO-92&lt;/b&gt; Pads In Line  C B E from top&lt;p&gt;</description>
<pad name="C" x="0" y="2.54" drill="0.7" diameter="1.4224"/>
<pad name="E" x="0" y="-2.54" drill="0.7" diameter="1.4224"/>
<pad name="B" x="0" y="0" drill="0.7" diameter="1.4224"/>
<wire x1="-1.651" y1="2.095" x2="-1.651" y2="-2.095" width="0.127" layer="21"/>
<wire x1="1.1359" y1="2.413" x2="1.1359" y2="-2.413" width="0.127" layer="21" curve="-129.583"/>
<wire x1="0" y1="-2.664" x2="0" y2="2.664" width="0.127" layer="21"/>
<wire x1="1.1359" y1="2.413" x2="0" y2="2.664" width="0.127" layer="21" curve="27.9376"/>
<wire x1="0" y1="2.664" x2="-1.1359" y2="2.413" width="0.127" layer="21" curve="22.4788"/>
<wire x1="-1.1359" y1="2.4135" x2="-1.651" y2="2.095" width="0.127" layer="21" curve="13.0385"/>
<wire x1="-1.1359" y1="-2.413" x2="0" y2="-2.664" width="0.127" layer="21" curve="22.4788"/>
<wire x1="0" y1="-2.664" x2="1.1359" y2="-2.413" width="0.127" layer="21" curve="27.9376"/>
<wire x1="-1.651" y1="-2.095" x2="-1.1118" y2="-2.4247" width="0.127" layer="21" curve="13.6094"/>
<text x="1.016" y="0" size="0.8128" layer="25" ratio="10" align="center">&gt;NAME</text>
<text x="-0.8255" y="0" size="0.6096" layer="27" ratio="10" rot="R90" align="center">&gt;VALUE</text>
</package>
<package name="TO92-CBE-A">
<wire x1="-1.651" y1="2.095" x2="-1.651" y2="-2.095" width="0.127" layer="21"/>
<wire x1="1.1359" y1="2.413" x2="1.1359" y2="-2.413" width="0.127" layer="21" curve="-129.583"/>
<wire x1="0" y1="-2.664" x2="0" y2="2.664" width="0.127" layer="21"/>
<wire x1="1.1359" y1="2.413" x2="0" y2="2.664" width="0.127" layer="21" curve="27.9376"/>
<wire x1="0" y1="2.664" x2="-1.1359" y2="2.413" width="0.127" layer="21" curve="22.4788"/>
<wire x1="-1.1359" y1="2.4135" x2="-1.651" y2="2.095" width="0.127" layer="21" curve="13.0385"/>
<wire x1="-1.1359" y1="-2.413" x2="0" y2="-2.664" width="0.127" layer="21" curve="22.4788"/>
<wire x1="0" y1="-2.664" x2="1.1359" y2="-2.413" width="0.127" layer="21" curve="27.9376"/>
<wire x1="-1.651" y1="-2.095" x2="-1.1118" y2="-2.4247" width="0.127" layer="21" curve="13.6094"/>
<pad name="C" x="0" y="2.54" drill="0.7" diameter="1.4224"/>
<pad name="E" x="0" y="-2.54" drill="0.7" diameter="1.4224"/>
<pad name="B" x="2.54" y="0" drill="0.7" diameter="1.4224"/>
<text x="1.016" y="0" size="0.6096" layer="25" ratio="10" align="center">&gt;NAME</text>
<text x="-0.8255" y="0" size="0.6096" layer="27" ratio="10" rot="R90" align="center">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="PNP">
<wire x1="2.0861" y1="1.6779" x2="1.5781" y2="2.5941" width="0.1524" layer="94"/>
<wire x1="1.5781" y1="2.5941" x2="0.5159" y2="1.478" width="0.1524" layer="94"/>
<wire x1="0.5159" y1="1.478" x2="2.0861" y2="1.6779" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="1.808" y2="2.1239" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="0.508" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="1.905" y1="1.778" x2="1.524" y2="2.413" width="0.254" layer="94"/>
<wire x1="1.524" y1="2.413" x2="0.762" y2="1.651" width="0.254" layer="94"/>
<wire x1="0.762" y1="1.651" x2="1.778" y2="1.778" width="0.254" layer="94"/>
<wire x1="1.778" y1="1.778" x2="1.524" y2="2.159" width="0.254" layer="94"/>
<wire x1="1.524" y1="2.159" x2="1.143" y2="1.905" width="0.254" layer="94"/>
<wire x1="1.143" y1="1.905" x2="1.524" y2="1.905" width="0.254" layer="94"/>
<text x="-10.16" y="7.62" size="1.778" layer="95" ratio="10">&gt;NAME</text>
<text x="-10.16" y="5.08" size="1.778" layer="96" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-2.54" x2="0.508" y2="2.54" layer="94"/>
<pin name="B" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="E" x="2.54" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="C" x="2.54" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<circle x="1.27" y="0" radius="3.5921" width="0.254" layer="94"/>
</symbol>
<symbol name="NPN">
<wire x1="2.54" y1="2.54" x2="0.0635" y2="1.30175" width="0.1524" layer="94"/>
<wire x1="1.4605" y1="-1.36525" x2="1.9685" y2="-2.25425" width="0.1524" layer="94"/>
<wire x1="1.9685" y1="-2.25425" x2="0.9525" y2="-2.38125" width="0.1524" layer="94"/>
<wire x1="0.9525" y1="-2.38125" x2="1.4605" y2="-1.36525" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="1.9685" y2="-2.25425" width="0.1524" layer="94"/>
<wire x1="1.9685" y1="-2.25425" x2="0.308" y2="-1.424" width="0.1524" layer="94"/>
<wire x1="1.2065" y1="-2.25425" x2="1.778" y2="-2.19075" width="0.3048" layer="94"/>
<wire x1="1.778" y1="-2.19075" x2="1.4605" y2="-1.61925" width="0.3048" layer="94"/>
<wire x1="1.4605" y1="-1.61925" x2="1.2065" y2="-2.12725" width="0.254" layer="94"/>
<wire x1="1.2065" y1="-2.12725" x2="1.5875" y2="-2.12725" width="0.254" layer="94"/>
<wire x1="1.5875" y1="-2.12725" x2="1.4605" y2="-1.87325" width="0.254" layer="94"/>
<text x="-1.524" y="2.54" size="1.778" layer="95" ratio="10" align="bottom-right">&gt;NAME</text>
<text x="4.064" y="2.54" size="1.778" layer="96" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.508" y1="-2.54" x2="0.254" y2="2.54" layer="94"/>
<pin name="B" x="-2.54" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="E" x="2.54" y="-5.08" visible="off" length="short" direction="pas" swaplevel="3" rot="R90"/>
<pin name="C" x="2.54" y="5.08" visible="off" length="short" direction="pas" swaplevel="2" rot="R270"/>
<circle x="1.27" y="0" radius="3.5921" width="0.381" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BC557">
<gates>
<gate name="G$1" symbol="PNP" x="0" y="0"/>
</gates>
<devices>
<device name="CBE" package="TO92-CBE">
<connects>
<connect gate="G$1" pin="B" pad="B"/>
<connect gate="G$1" pin="C" pad="C"/>
<connect gate="G$1" pin="E" pad="E"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CBE-A" package="TO92-CBE-A">
<connects>
<connect gate="G$1" pin="B" pad="B"/>
<connect gate="G$1" pin="C" pad="C"/>
<connect gate="G$1" pin="E" pad="E"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="BC547" prefix="T">
<gates>
<gate name="G$1" symbol="NPN" x="0" y="0"/>
</gates>
<devices>
<device name="CBE" package="TO92-CBE">
<connects>
<connect gate="G$1" pin="B" pad="B"/>
<connect gate="G$1" pin="C" pad="C"/>
<connect gate="G$1" pin="E" pad="E"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CBE-A" package="TO92-CBE-A">
<connects>
<connect gate="G$1" pin="B" pad="B"/>
<connect gate="G$1" pin="C" pad="C"/>
<connect gate="G$1" pin="E" pad="E"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="r">
<description>&lt;b&gt;Resistors, Capacitors, Inductors&lt;/b&gt;&lt;p&gt;
 Based on the previous libraries:
 &lt;ul&gt;
 &lt;li&gt;r.lbr
 &lt;li&gt;cap.lbr 
 &lt;li&gt;cap-fe.lbr
 &lt;li&gt;captant.lbr
 &lt;li&gt;polcap.lbr
 &lt;li&gt;ipc-smd.lbr
 &lt;/ul&gt;
 All SMD packages are defined according to the IPC specifications and  CECC&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;p&gt;
 &lt;p&gt;
 for Electrolyt Capacitors see also :&lt;p&gt;
 www.bccomponents.com &lt;p&gt;
 www.panasonic.com&lt;p&gt;
 www.kemet.com&lt;p&gt;
 &lt;p&gt;
 for trimmer refence see : &lt;u&gt;www.electrospec-inc.com/cross_references/trimpotcrossref.asp&lt;/u&gt;&lt;p&gt;
 
 &lt;map name="nav_main"&gt;
 &lt;area shape="rect" coords="0,1,140,23" href="../military_specs.asp" title=""&gt;
 &lt;area shape="rect" coords="0,24,140,51" href="../about.asp" title=""&gt;
 &lt;area shape="rect" coords="1,52,140,77" href="../rfq.asp" title=""&gt;
 &lt;area shape="rect" coords="0,78,139,103" href="../products.asp" title=""&gt;
 &lt;area shape="rect" coords="1,102,138,128" href="../excess_inventory.asp" title=""&gt;
 &lt;area shape="rect" coords="1,129,138,150" href="../edge.asp" title=""&gt;
 &lt;area shape="rect" coords="1,151,139,178" href="../industry_links.asp" title=""&gt;
 &lt;area shape="rect" coords="0,179,139,201" href="../comments.asp" title=""&gt;
 &lt;area shape="rect" coords="1,203,138,231" href="../directory.asp" title=""&gt;
 &lt;area shape="default" nohref&gt;
 &lt;/map&gt;
 
 &lt;html&gt;
 
 &lt;title&gt;&lt;/title&gt;
 
 &lt;LINK REL="StyleSheet" TYPE="text/css" HREF="style-sheet.css"&gt;
 
 &lt;body bgcolor="#ffffff" text="#000000" marginwidth="0" marginheight="0" topmargin="0" leftmargin="0"&gt;
 &lt;table border=0 cellspacing=0 cellpadding=0 width="100%" cellpaddding=0 height="55%"&gt;
 &lt;tr valign="top"&gt;
 
 &lt;/td&gt;
 &lt;! &lt;td width="10"&gt;&amp;nbsp;&lt;/td&gt;
 &lt;td width="90%"&gt;
 
 &lt;b&gt;&lt;font color="#0000FF" size="4"&gt;TRIM-POT CROSS REFERENCE&lt;/font&gt;&lt;/b&gt;
 &lt;P&gt;
 &lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;RECTANGULAR MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BOURNS&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BI&amp;nbsp;TECH&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;DALE-VISHAY&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PHILIPS/MEPCO&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MURATA&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PANASONIC&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;SPECTROL&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MILSPEC&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;&lt;TD&gt;&amp;nbsp;&lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3 &gt;
 3005P&lt;BR&gt;
 3006P&lt;BR&gt;
 3006W&lt;BR&gt;
 3006Y&lt;BR&gt;
 3009P&lt;BR&gt;
 3009W&lt;BR&gt;
 3009Y&lt;BR&gt;
 3057J&lt;BR&gt;
 3057L&lt;BR&gt;
 3057P&lt;BR&gt;
 3057Y&lt;BR&gt;
 3059J&lt;BR&gt;
 3059L&lt;BR&gt;
 3059P&lt;BR&gt;
 3059Y&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 89P&lt;BR&gt;
 89W&lt;BR&gt;
 89X&lt;BR&gt;
 89PH&lt;BR&gt;
 76P&lt;BR&gt;
 89XH&lt;BR&gt;
 78SLT&lt;BR&gt;
 78L&amp;nbsp;ALT&lt;BR&gt;
 56P&amp;nbsp;ALT&lt;BR&gt;
 78P&amp;nbsp;ALT&lt;BR&gt;
 T8S&lt;BR&gt;
 78L&lt;BR&gt;
 56P&lt;BR&gt;
 78P&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 T18/784&lt;BR&gt;
 783&lt;BR&gt;
 781&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 2199&lt;BR&gt;
 1697/1897&lt;BR&gt;
 1680/1880&lt;BR&gt;
 2187&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 8035EKP/CT20/RJ-20P&lt;BR&gt;
 -&lt;BR&gt;
 RJ-20X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 1211L&lt;BR&gt;
 8012EKQ&amp;nbsp;ALT&lt;BR&gt;
 8012EKR&amp;nbsp;ALT&lt;BR&gt;
 1211P&lt;BR&gt;
 8012EKJ&lt;BR&gt;
 8012EKL&lt;BR&gt;
 8012EKQ&lt;BR&gt;
 8012EKR&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 2101P&lt;BR&gt;
 2101W&lt;BR&gt;
 2101Y&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 2102L&lt;BR&gt;
 2102S&lt;BR&gt;
 2102Y&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 EVMCOG&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 43P&lt;BR&gt;
 43W&lt;BR&gt;
 43Y&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 40L&lt;BR&gt;
 40P&lt;BR&gt;
 40Y&lt;BR&gt;
 70Y-T602&lt;BR&gt;
 70L&lt;BR&gt;
 70P&lt;BR&gt;
 70Y&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 RT/RTR12&lt;BR&gt;
 RT/RTR12&lt;BR&gt;
 RT/RTR12&lt;BR&gt;
 -&lt;BR&gt;
 RJ/RJR12&lt;BR&gt;
 RJ/RJR12&lt;BR&gt;
 RJ/RJR12&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;&amp;nbsp;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SQUARE MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3250L&lt;BR&gt;
 3250P&lt;BR&gt;
 3250W&lt;BR&gt;
 3250X&lt;BR&gt;
 3252P&lt;BR&gt;
 3252W&lt;BR&gt;
 3252X&lt;BR&gt;
 3260P&lt;BR&gt;
 3260W&lt;BR&gt;
 3260X&lt;BR&gt;
 3262P&lt;BR&gt;
 3262W&lt;BR&gt;
 3262X&lt;BR&gt;
 3266P&lt;BR&gt;
 3266W&lt;BR&gt;
 3266X&lt;BR&gt;
 3290H&lt;BR&gt;
 3290P&lt;BR&gt;
 3290W&lt;BR&gt;
 3292P&lt;BR&gt;
 3292W&lt;BR&gt;
 3292X&lt;BR&gt;
 3296P&lt;BR&gt;
 3296W&lt;BR&gt;
 3296X&lt;BR&gt;
 3296Y&lt;BR&gt;
 3296Z&lt;BR&gt;
 3299P&lt;BR&gt;
 3299W&lt;BR&gt;
 3299X&lt;BR&gt;
 3299Y&lt;BR&gt;
 3299Z&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 66P&amp;nbsp;ALT&lt;BR&gt;
 66W&amp;nbsp;ALT&lt;BR&gt;
 66X&amp;nbsp;ALT&lt;BR&gt;
 66P&amp;nbsp;ALT&lt;BR&gt;
 66W&amp;nbsp;ALT&lt;BR&gt;
 66X&amp;nbsp;ALT&lt;BR&gt;
 -&lt;BR&gt;
 64W&amp;nbsp;ALT&lt;BR&gt;
 -&lt;BR&gt;
 64P&amp;nbsp;ALT&lt;BR&gt;
 64W&amp;nbsp;ALT&lt;BR&gt;
 64X&amp;nbsp;ALT&lt;BR&gt;
 64P&lt;BR&gt;
 64W&lt;BR&gt;
 64X&lt;BR&gt;
 66X&amp;nbsp;ALT&lt;BR&gt;
 66P&amp;nbsp;ALT&lt;BR&gt;
 66W&amp;nbsp;ALT&lt;BR&gt;
 66P&lt;BR&gt;
 66W&lt;BR&gt;
 66X&lt;BR&gt;
 67P&lt;BR&gt;
 67W&lt;BR&gt;
 67X&lt;BR&gt;
 67Y&lt;BR&gt;
 67Z&lt;BR&gt;
 68P&lt;BR&gt;
 68W&lt;BR&gt;
 68X&lt;BR&gt;
 67Y&amp;nbsp;ALT&lt;BR&gt;
 67Z&amp;nbsp;ALT&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 5050&lt;BR&gt;
 5091&lt;BR&gt;
 5080&lt;BR&gt;
 5087&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 T63YB&lt;BR&gt;
 T63XB&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 5887&lt;BR&gt;
 5891&lt;BR&gt;
 5880&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 T93Z&lt;BR&gt;
 T93YA&lt;BR&gt;
 T93XA&lt;BR&gt;
 T93YB&lt;BR&gt;
 T93XB&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 8026EKP&lt;BR&gt;
 8026EKW&lt;BR&gt;
 8026EKM&lt;BR&gt;
 8026EKP&lt;BR&gt;
 8026EKB&lt;BR&gt;
 8026EKM&lt;BR&gt;
 1309X&lt;BR&gt;
 1309P&lt;BR&gt;
 1309W&lt;BR&gt;
 8024EKP&lt;BR&gt;
 8024EKW&lt;BR&gt;
 8024EKN&lt;BR&gt;
 RJ-9P/CT9P&lt;BR&gt;
 RJ-9W&lt;BR&gt;
 RJ-9X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3103P&lt;BR&gt;
 3103Y&lt;BR&gt;
 3103Z&lt;BR&gt;
 3103P&lt;BR&gt;
 3103Y&lt;BR&gt;
 3103Z&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3105P/3106P&lt;BR&gt;
 3105W/3106W&lt;BR&gt;
 3105X/3106X&lt;BR&gt;
 3105Y/3106Y&lt;BR&gt;
 3105Z/3105Z&lt;BR&gt;
 3102P&lt;BR&gt;
 3102W&lt;BR&gt;
 3102X&lt;BR&gt;
 3102Y&lt;BR&gt;
 3102Z&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMCBG&lt;BR&gt;
 EVMCCG&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 55-1-X&lt;BR&gt;
 55-4-X&lt;BR&gt;
 55-3-X&lt;BR&gt;
 55-2-X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 50-2-X&lt;BR&gt;
 50-4-X&lt;BR&gt;
 50-3-X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 64P&lt;BR&gt;
 64W&lt;BR&gt;
 64X&lt;BR&gt;
 64Y&lt;BR&gt;
 64Z&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 RT/RTR22&lt;BR&gt;
 RT/RTR22&lt;BR&gt;
 RT/RTR22&lt;BR&gt;
 RT/RTR22&lt;BR&gt;
 RJ/RJR22&lt;BR&gt;
 RJ/RJR22&lt;BR&gt;
 RJ/RJR22&lt;BR&gt;
 RT/RTR26&lt;BR&gt;
 RT/RTR26&lt;BR&gt;
 RT/RTR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RT/RTR24&lt;BR&gt;
 RT/RTR24&lt;BR&gt;
 RT/RTR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;&amp;nbsp;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3323P&lt;BR&gt;
 3323S&lt;BR&gt;
 3323W&lt;BR&gt;
 3329H&lt;BR&gt;
 3329P&lt;BR&gt;
 3329W&lt;BR&gt;
 3339H&lt;BR&gt;
 3339P&lt;BR&gt;
 3339W&lt;BR&gt;
 3352E&lt;BR&gt;
 3352H&lt;BR&gt;
 3352K&lt;BR&gt;
 3352P&lt;BR&gt;
 3352T&lt;BR&gt;
 3352V&lt;BR&gt;
 3352W&lt;BR&gt;
 3362H&lt;BR&gt;
 3362M&lt;BR&gt;
 3362P&lt;BR&gt;
 3362R&lt;BR&gt;
 3362S&lt;BR&gt;
 3362U&lt;BR&gt;
 3362W&lt;BR&gt;
 3362X&lt;BR&gt;
 3386B&lt;BR&gt;
 3386C&lt;BR&gt;
 3386F&lt;BR&gt;
 3386H&lt;BR&gt;
 3386K&lt;BR&gt;
 3386M&lt;BR&gt;
 3386P&lt;BR&gt;
 3386S&lt;BR&gt;
 3386W&lt;BR&gt;
 3386X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 25P&lt;BR&gt;
 25S&lt;BR&gt;
 25RX&lt;BR&gt;
 82P&lt;BR&gt;
 82M&lt;BR&gt;
 82PA&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 91E&lt;BR&gt;
 91X&lt;BR&gt;
 91T&lt;BR&gt;
 91B&lt;BR&gt;
 91A&lt;BR&gt;
 91V&lt;BR&gt;
 91W&lt;BR&gt;
 25W&lt;BR&gt;
 25V&lt;BR&gt;
 25P&lt;BR&gt;
 -&lt;BR&gt;
 25S&lt;BR&gt;
 25U&lt;BR&gt;
 25RX&lt;BR&gt;
 25X&lt;BR&gt;
 72XW&lt;BR&gt;
 72XL&lt;BR&gt;
 72PM&lt;BR&gt;
 72RX&lt;BR&gt;
 -&lt;BR&gt;
 72PX&lt;BR&gt;
 72P&lt;BR&gt;
 72RXW&lt;BR&gt;
 72RXL&lt;BR&gt;
 72X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 T7YB&lt;BR&gt;
 T7YA&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 TXD&lt;BR&gt;
 TYA&lt;BR&gt;
 TYP&lt;BR&gt;
 -&lt;BR&gt;
 TYD&lt;BR&gt;
 TX&lt;BR&gt;
 -&lt;BR&gt;
 150SX&lt;BR&gt;
 100SX&lt;BR&gt;
 102T&lt;BR&gt;
 101S&lt;BR&gt;
 190T&lt;BR&gt;
 150TX&lt;BR&gt;
 101&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 101SX&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 ET6P&lt;BR&gt;
 ET6S&lt;BR&gt;
 ET6X&lt;BR&gt;
 RJ-6W/8014EMW&lt;BR&gt;
 RJ-6P/8014EMP&lt;BR&gt;
 RJ-6X/8014EMX&lt;BR&gt;
 TM7W&lt;BR&gt;
 TM7P&lt;BR&gt;
 TM7X&lt;BR&gt;
 -&lt;BR&gt;
 8017SMS&lt;BR&gt;
 -&lt;BR&gt;
 8017SMB&lt;BR&gt;
 8017SMA&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 CT-6W&lt;BR&gt;
 CT-6H&lt;BR&gt;
 CT-6P&lt;BR&gt;
 CT-6R&lt;BR&gt;
 -&lt;BR&gt;
 CT-6V&lt;BR&gt;
 CT-6X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 8038EKV&lt;BR&gt;
 -&lt;BR&gt;
 8038EKX&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 8038EKP&lt;BR&gt;
 8038EKZ&lt;BR&gt;
 8038EKW&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3321H&lt;BR&gt;
 3321P&lt;BR&gt;
 3321N&lt;BR&gt;
 1102H&lt;BR&gt;
 1102P&lt;BR&gt;
 1102T&lt;BR&gt;
 RVA0911V304A&lt;BR&gt;
 -&lt;BR&gt;
 RVA0911H413A&lt;BR&gt;
 RVG0707V100A&lt;BR&gt;
 RVA0607V(H)306A&lt;BR&gt;
 RVA1214H213A&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3104B&lt;BR&gt;
 3104C&lt;BR&gt;
 3104F&lt;BR&gt;
 3104H&lt;BR&gt;
 -&lt;BR&gt;
 3104M&lt;BR&gt;
 3104P&lt;BR&gt;
 3104S&lt;BR&gt;
 3104W&lt;BR&gt;
 3104X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 EVMQ0G&lt;BR&gt;
 EVMQIG&lt;BR&gt;
 EVMQ3G&lt;BR&gt;
 EVMS0G&lt;BR&gt;
 EVMQ0G&lt;BR&gt;
 EVMG0G&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMK4GA00B&lt;BR&gt;
 EVM30GA00B&lt;BR&gt;
 EVMK0GA00B&lt;BR&gt;
 EVM38GA00B&lt;BR&gt;
 EVMB6&lt;BR&gt;
 EVLQ0&lt;BR&gt;
 -&lt;BR&gt;
 EVMMSG&lt;BR&gt;
 EVMMBG&lt;BR&gt;
 EVMMAG&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMMCS&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMM1&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMM0&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMM3&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 62-3-1&lt;BR&gt;
 62-1-2&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 67R&lt;BR&gt;
 -&lt;BR&gt;
 67P&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 67X&lt;BR&gt;
 63V&lt;BR&gt;
 63S&lt;BR&gt;
 63M&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 63H&lt;BR&gt;
 63P&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 63X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 RJ/RJR50&lt;BR&gt;
 RJ/RJR50&lt;BR&gt;
 RJ/RJR50&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;/TABLE&gt;
 &lt;P&gt;&amp;nbsp;&lt;P&gt;
 &lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=3&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=7&gt;
 &lt;FONT color="#0000FF" SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SMD TRIM-POT CROSS REFERENCE&lt;/B&gt;&lt;/FONT&gt;
 &lt;P&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3224G&lt;BR&gt;
 3224J&lt;BR&gt;
 3224W&lt;BR&gt;
 3269P&lt;BR&gt;
 3269W&lt;BR&gt;
 3269X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 44G&lt;BR&gt;
 44J&lt;BR&gt;
 44W&lt;BR&gt;
 84P&lt;BR&gt;
 84W&lt;BR&gt;
 84X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 ST63Z&lt;BR&gt;
 ST63Y&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 ST5P&lt;BR&gt;
 ST5W&lt;BR&gt;
 ST5X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=7&gt;&amp;nbsp;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=7&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3314G&lt;BR&gt;
 3314J&lt;BR&gt;
 3364A/B&lt;BR&gt;
 3364C/D&lt;BR&gt;
 3364W/X&lt;BR&gt;
 3313G&lt;BR&gt;
 3313J&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 23B&lt;BR&gt;
 23A&lt;BR&gt;
 21X&lt;BR&gt;
 21W&lt;BR&gt;
 -&lt;BR&gt;
 22B&lt;BR&gt;
 22A&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 ST5YL/ST53YL&lt;BR&gt;
 ST5YJ/5T53YJ&lt;BR&gt;
 ST-23A&lt;BR&gt;
 ST-22B&lt;BR&gt;
 ST-22&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 ST-4B&lt;BR&gt;
 ST-4A&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 ST-3B&lt;BR&gt;
 ST-3A&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 EVM-6YS&lt;BR&gt;
 EVM-1E&lt;BR&gt;
 EVM-1G&lt;BR&gt;
 EVM-1D&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 G4B&lt;BR&gt;
 G4A&lt;BR&gt;
 TR04-3S1&lt;BR&gt;
 TRG04-2S1&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 DVR-43A&lt;BR&gt;
 CVR-42C&lt;BR&gt;
 CVR-42A/C&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;/TABLE&gt;
 &lt;P&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;ALT =&amp;nbsp;ALTERNATE&lt;/B&gt;&lt;/FONT&gt;
 &lt;P&gt;
 
 &amp;nbsp;
 &lt;P&gt;
 &lt;/td&gt;
 &lt;/tr&gt;
 &lt;/table&gt;
 &lt;/BODY&gt;&lt;/HTML&gt;</description>
<packages>
<package name="0204/5">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
 type 0204, grid 5 mm</description>
<wire x1="-1.778" y1="0.635" x2="-1.524" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.524" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="-0.889" x2="1.778" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="0.889" x2="1.778" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.0066" y="1.1684" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-0.254" x2="-1.778" y2="0.254" layer="51"/>
<rectangle x1="1.778" y1="-0.254" x2="2.032" y2="0.254" layer="51"/>
<wire x1="2.54" y1="0" x2="2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0" x2="-2.032" y2="0" width="0.508" layer="51"/>
<wire x1="-1.778" y1="0.635" x2="-1.524" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.524" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="-0.889" x2="1.778" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.524" y1="0.889" x2="1.778" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.778" y1="-0.635" x2="-1.778" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.889" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0.762" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-0.889" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.762" x2="-1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="-1.143" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.762" x2="-1.143" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="1.524" y1="0.889" x2="1.27" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-0.889" x2="1.27" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.635" x2="1.778" y2="0.635" width="0.1524" layer="51"/>
<text x="-2.0066" y="1.1684" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-0.254" x2="-1.778" y2="0.254" layer="51"/>
<rectangle x1="1.778" y1="-0.254" x2="2.032" y2="0.254" layer="51"/>
</package>
<package name="0204/7">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
 type 0204, grid 7.5 mm</description>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
</package>
<package name="0204V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
 type 0204, grid 2.5 mm</description>
<circle x="-1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="0" radius="0.635" width="0.0508" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.1336" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.508" layer="51"/>
<wire x1="-0.127" y1="0" x2="0.127" y2="0" width="0.508" layer="21"/>
<circle x="-1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="0" radius="0.635" width="0.0508" layer="51"/>
<text x="-2.1336" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
 type 0207, grid 10 mm</description>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
</package>
<package name="0207/12">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
 type 0207, grid 12 mm</description>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.3086" y2="0.3048" layer="21"/>
<rectangle x1="-5.3086" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
<wire x1="6.35" y1="0" x2="5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.334" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="4.445" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-4.445" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="4.445" y1="-0.3048" x2="5.3086" y2="0.3048" layer="21"/>
<rectangle x1="-5.3086" y1="-0.3048" x2="-4.445" y2="0.3048" layer="21"/>
</package>
<package name="0207/15">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
 type 0207, grid 15mm</description>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.62" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="5.715" y1="-0.3048" x2="6.5786" y2="0.3048" layer="21"/>
<rectangle x1="-6.5786" y1="-0.3048" x2="-5.715" y2="0.3048" layer="21"/>
<wire x1="7.62" y1="0" x2="6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.604" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="5.715" y1="0" x2="4.064" y2="0" width="0.6096" layer="21"/>
<wire x1="-5.715" y1="0" x2="-4.064" y2="0" width="0.6096" layer="21"/>
<text x="-3.175" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.6858" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<rectangle x1="5.715" y1="-0.3048" x2="6.5786" y2="0.3048" layer="21"/>
<rectangle x1="-6.5786" y1="-0.3048" x2="-5.715" y2="0.3048" layer="21"/>
</package>
<package name="0207/2V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
 type 0207, grid 2.5 mm</description>
<circle x="-1.27" y="0" radius="1.27" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="-0.0508" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.0508" y="-2.2352" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<wire x1="-1.27" y1="0" x2="-0.381" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.6096" layer="21"/>
<wire x1="0.381" y1="0" x2="1.27" y2="0" width="0.6096" layer="51"/>
<circle x="-1.27" y="0" radius="1.27" width="0.1524" layer="21"/>
<circle x="-1.27" y="0" radius="1.016" width="0.1524" layer="51"/>
<text x="-0.0508" y="1.016" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.0508" y="-2.2352" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/5V">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
 type 0207, grid 5 mm</description>
<circle x="-2.54" y="0" radius="1.27" width="0.1016" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.143" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.143" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<wire x1="-2.54" y1="0" x2="-0.889" y2="0" width="0.6096" layer="51"/>
<wire x1="-0.762" y1="0" x2="0.762" y2="0" width="0.6096" layer="21"/>
<wire x1="0.889" y1="0" x2="2.54" y2="0" width="0.6096" layer="51"/>
<circle x="-2.54" y="0" radius="1.27" width="0.1016" layer="21"/>
<circle x="-2.54" y="0" radius="1.016" width="0.1524" layer="51"/>
<text x="-1.143" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.143" y="-2.159" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/7">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
 type 0207, grid 7.5 mm</description>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.5588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-0.3048" x2="-3.175" y2="0.3048" layer="51"/>
<rectangle x1="3.175" y1="-0.3048" x2="3.429" y2="0.3048" layer="51"/>
<wire x1="-3.81" y1="0" x2="-3.429" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.429" y1="0" x2="3.81" y2="0" width="0.6096" layer="51"/>
<text x="-2.54" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-0.5588" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-0.3048" x2="-3.175" y2="0.3048" layer="51"/>
<rectangle x1="3.175" y1="-0.3048" x2="3.429" y2="0.3048" layer="51"/>
</package>
<package name="0204/10">
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
<wire x1="5.08" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-5.08" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
</package>
<package name="0204/12">
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
<wire x1="6.35" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-6.35" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
</package>
<package name="0204/15">
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.62" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
<wire x1="7.62" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-7.62" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
</package>
<package name="0204/2V">
<circle x="1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="1.27" y="0" radius="0.635" width="0.0508" layer="51"/>
<pad name="2" x="1.27" y="0" drill="0.8128" shape="octagon" rot="R180"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon" rot="R180"/>
<text x="-2.1336" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<wire x1="1.27" y1="0" x2="-1.27" y2="0" width="0.508" layer="51"/>
<wire x1="0.127" y1="0" x2="-0.127" y2="0" width="0.508" layer="21"/>
<circle x="1.27" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="1.27" y="0" radius="0.635" width="0.0508" layer="51"/>
<text x="-2.1336" y="1.1684" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.1336" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0202/2V">
<pad name="1" x="0" y="-1.27" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="2" x="0" y="1.27" drill="0.8128" shape="octagon" rot="R90"/>
<text x="-0.254" y="0.508" size="0.9906" layer="25" ratio="10" rot="R180">&gt;NAME</text>
<text x="0.254" y="-0.508" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
<circle x="0" y="-0.762" radius="0.762" width="0.127" layer="21"/>
<wire x1="0" y1="-0.762" x2="0" y2="1.27" width="0.254" layer="51"/>
<wire x1="0" y1="-0.127" x2="0" y2="0.127" width="0.254" layer="21"/>
<circle x="0" y="-0.762" radius="0.5588" width="0.1524" layer="51"/>
<circle x="0" y="-0.762" radius="0.6858" width="0.0508" layer="51"/>
</package>
<package name="0202/7">
<wire x1="-1.27" y1="0.381" x2="-1.016" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.381" x2="-1.016" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.016" y1="-0.635" x2="1.27" y2="-0.381" width="0.1524" layer="21" curve="90"/>
<wire x1="1.016" y1="0.635" x2="1.27" y2="0.381" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="0" y="-0.889" size="0.6096" layer="25" ratio="10" align="top-center">&gt;NAME</text>
<text x="0" y="0" size="0.6096" layer="27" ratio="10" align="center">&gt;VALUE</text>
<wire x1="3.81" y1="0" x2="1.651" y2="0" width="0.254" layer="51"/>
<wire x1="-3.81" y1="0" x2="-1.651" y2="0" width="0.254" layer="51"/>
<wire x1="-1.27" y1="0.381" x2="-1.016" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.381" x2="-1.016" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.016" y1="-0.635" x2="1.27" y2="-0.381" width="0.1524" layer="21" curve="90"/>
<wire x1="1.016" y1="0.635" x2="1.27" y2="0.381" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.381" x2="-1.27" y2="0.381" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.635" x2="-1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.635" x2="-1.016" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.381" x2="1.27" y2="0.381" width="0.1524" layer="21"/>
<rectangle x1="1.27" y1="-0.127" x2="1.651" y2="0.127" layer="21"/>
<rectangle x1="-1.651" y1="-0.127" x2="-1.27" y2="0.127" layer="21"/>
</package>
<package name="0202/10">
<wire x1="-1.27" y1="0.381" x2="-1.016" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.381" x2="-1.016" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.016" y1="-0.635" x2="1.27" y2="-0.381" width="0.1524" layer="21" curve="90"/>
<wire x1="1.016" y1="0.635" x2="1.27" y2="0.381" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="0" y="1.27" size="0.8128" layer="25" ratio="10" rot="R180" align="center">&gt;NAME</text>
<text x="0" y="0" size="0.6096" layer="27" ratio="10" align="center">&gt;VALUE</text>
<wire x1="5.08" y1="0" x2="1.651" y2="0" width="0.254" layer="51"/>
<wire x1="-5.08" y1="0" x2="-1.651" y2="0" width="0.254" layer="51"/>
<wire x1="-1.27" y1="0.381" x2="-1.016" y2="0.635" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.381" x2="-1.016" y2="-0.635" width="0.1524" layer="21" curve="90"/>
<wire x1="1.016" y1="-0.635" x2="1.27" y2="-0.381" width="0.1524" layer="21" curve="90"/>
<wire x1="1.016" y1="0.635" x2="1.27" y2="0.381" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.381" x2="-1.27" y2="0.381" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.635" x2="-1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.635" x2="-1.016" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.381" x2="1.27" y2="0.381" width="0.1524" layer="21"/>
<rectangle x1="1.27" y1="-0.127" x2="1.651" y2="0.127" layer="21"/>
<rectangle x1="-1.651" y1="-0.127" x2="-1.27" y2="0.127" layer="21"/>
</package>
<package name="0202V">
<pad name="2" x="0" y="1.27" drill="0.8128" shape="octagon" rot="R270"/>
<pad name="1" x="0" y="-1.27" drill="0.8128" shape="octagon" rot="R270"/>
<text x="-1.016" y="0.508" size="0.6096" layer="25" ratio="10" align="center-right">&gt;NAME</text>
<text x="-1.016" y="-0.508" size="0.6096" layer="27" ratio="10" align="center-right">&gt;VALUE</text>
<circle x="0" y="0.762" radius="0.762" width="0.127" layer="21"/>
<wire x1="0" y1="0.762" x2="0" y2="-1.27" width="0.254" layer="51"/>
<wire x1="0" y1="0.127" x2="0" y2="-0.127" width="0.254" layer="21"/>
<circle x="0" y="0.762" radius="0.508" width="0.0508" layer="51"/>
</package>
<package name="0202/12">
<wire x1="-0.381" y1="-1.27" x2="-0.635" y2="-1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="0.635" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="0.635" y1="1.016" x2="0.381" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.635" y1="1.016" x2="-0.381" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="0" y="-6.35" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="2" x="0" y="6.35" drill="0.8128" shape="octagon" rot="R90"/>
<text x="-1.27" y="0" size="0.8128" layer="25" ratio="10" rot="R270" align="center">&gt;NAME</text>
<text x="0" y="0" size="0.6096" layer="27" ratio="10" rot="R90" align="center">&gt;VALUE</text>
<wire x1="0" y1="6.35" x2="0" y2="1.651" width="0.127" layer="51"/>
<wire x1="0" y1="-6.35" x2="0" y2="-1.651" width="0.127" layer="51"/>
<wire x1="-0.381" y1="-1.27" x2="-0.635" y2="-1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="0.635" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="0.635" y1="1.016" x2="0.381" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.635" y1="1.016" x2="-0.381" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="-0.381" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.016" x2="-0.635" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.016" x2="0.635" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="0.381" y1="1.27" x2="-0.381" y2="1.27" width="0.1524" layer="21"/>
<rectangle x1="-0.1905" y1="1.3335" x2="0.1905" y2="1.5875" layer="21" rot="R90"/>
<rectangle x1="-0.1905" y1="-1.5875" x2="0.1905" y2="-1.3335" layer="21" rot="R90"/>
</package>
<package name="0202/15">
<wire x1="-0.381" y1="-1.27" x2="-0.635" y2="-1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="0.635" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="0.635" y1="1.016" x2="0.381" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.635" y1="1.016" x2="-0.381" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="0" y="-7.62" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="2" x="0" y="7.62" drill="0.8128" shape="octagon" rot="R90"/>
<text x="-1.27" y="0" size="0.8128" layer="25" ratio="10" rot="R270" align="center">&gt;NAME</text>
<text x="0" y="0" size="0.6096" layer="27" ratio="10" rot="R90" align="center">&gt;VALUE</text>
<wire x1="0" y1="7.62" x2="0" y2="1.651" width="0.127" layer="51"/>
<wire x1="0" y1="-7.62" x2="0" y2="-1.651" width="0.127" layer="51"/>
<wire x1="-0.381" y1="-1.27" x2="-0.635" y2="-1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="0.635" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="0.635" y1="1.016" x2="0.381" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.635" y1="1.016" x2="-0.381" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="-0.381" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.016" x2="-0.635" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.016" x2="0.635" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="0.381" y1="1.27" x2="-0.381" y2="1.27" width="0.1524" layer="21"/>
<rectangle x1="-0.1905" y1="1.3335" x2="0.1905" y2="1.5875" layer="21" rot="R90"/>
<rectangle x1="-0.1905" y1="-1.5875" x2="0.1905" y2="-1.3335" layer="21" rot="R90"/>
</package>
<package name="0202/7-V">
<wire x1="-0.381" y1="-1.27" x2="-0.635" y2="-1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="0.635" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="0.635" y1="1.016" x2="0.381" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.635" y1="1.016" x2="-0.381" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="0" y="-3.81" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="2" x="0" y="3.81" drill="0.8128" shape="octagon" rot="R90"/>
<text x="0.4064" y="-1.6256" size="0.8128" layer="25" ratio="10" align="top-left">&gt;NAME</text>
<text x="0" y="0" size="0.4064" layer="27" ratio="10" align="center">&gt;VALUE</text>
<wire x1="0" y1="3.81" x2="0" y2="1.651" width="0.254" layer="51"/>
<wire x1="0" y1="-3.81" x2="0" y2="-1.651" width="0.254" layer="51"/>
<wire x1="-0.381" y1="-1.27" x2="-0.635" y2="-1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="0.635" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="0.635" y1="1.016" x2="0.381" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.635" y1="1.016" x2="-0.381" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="-0.381" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.016" x2="-0.635" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.016" x2="0.635" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="0.381" y1="1.27" x2="-0.381" y2="1.27" width="0.1524" layer="21"/>
<rectangle x1="-0.1905" y1="1.3335" x2="0.1905" y2="1.5875" layer="21" rot="R90"/>
<rectangle x1="-0.1905" y1="-1.5875" x2="0.1905" y2="-1.3335" layer="21" rot="R90"/>
</package>
<package name="0202/10-V">
<wire x1="-0.381" y1="-1.27" x2="-0.635" y2="-1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="0.635" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="0.635" y1="1.016" x2="0.381" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.635" y1="1.016" x2="-0.381" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="0" y="-5.08" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="2" x="0" y="5.08" drill="0.8128" shape="octagon" rot="R90"/>
<text x="0" y="0" size="0.6096" layer="25" ratio="10" align="center">&gt;NAME</text>
<text x="0.254" y="-1.524" size="0.6096" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
<wire x1="0" y1="5.08" x2="0" y2="1.651" width="0.254" layer="51"/>
<wire x1="0" y1="-5.08" x2="0" y2="-1.651" width="0.254" layer="51"/>
<wire x1="-0.381" y1="-1.27" x2="-0.635" y2="-1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="0.635" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="0.635" y1="1.016" x2="0.381" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.635" y1="1.016" x2="-0.381" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="-0.381" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.016" x2="-0.635" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.016" x2="0.635" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="0.381" y1="1.27" x2="-0.381" y2="1.27" width="0.1524" layer="21"/>
<rectangle x1="-0.1905" y1="1.3335" x2="0.1905" y2="1.5875" layer="21" rot="R90"/>
<rectangle x1="-0.1905" y1="-1.5875" x2="0.1905" y2="-1.3335" layer="21" rot="R90"/>
</package>
<package name="0202/5">
<pad name="1" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<text x="0" y="0" size="0.6096" layer="27" ratio="10" align="center">&gt;VALUE</text>
<wire x1="2.54" y1="0" x2="1.651" y2="0" width="0.254" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.651" y2="0" width="0.254" layer="51"/>
<wire x1="-1.27" y1="-0.381" x2="-1.016" y2="-0.635" width="0.127" layer="21" curve="90"/>
<wire x1="1.016" y1="-0.635" x2="1.27" y2="-0.381" width="0.127" layer="21" curve="90"/>
<text x="-1.397" y="0.762" size="0.6096" layer="25" ratio="10" align="bottom-right">&gt;NAME</text>
<wire x1="-1.27" y1="0.381" x2="-1.016" y2="0.635" width="0.127" layer="21" curve="-90"/>
<wire x1="1.016" y1="0.635" x2="1.27" y2="0.381" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.381" x2="-1.27" y2="0.381" width="0.127" layer="21"/>
<wire x1="1.016" y1="0.635" x2="-1.016" y2="0.635" width="0.127" layer="21"/>
<wire x1="1.016" y1="-0.635" x2="-1.016" y2="-0.635" width="0.127" layer="21"/>
<wire x1="1.27" y1="-0.381" x2="1.27" y2="0.381" width="0.127" layer="21"/>
<rectangle x1="1.27" y1="-0.127" x2="1.651" y2="0.127" layer="21"/>
<rectangle x1="-1.651" y1="-0.127" x2="-1.27" y2="0.127" layer="21"/>
</package>
<package name="0202/5-V">
<pad name="1" x="0" y="2.54" drill="0.8128" shape="octagon" rot="R270"/>
<pad name="2" x="0" y="-2.54" drill="0.8128" shape="octagon" rot="R270"/>
<text x="0" y="0" size="0.6096" layer="27" ratio="10" align="center">&gt;VALUE</text>
<wire x1="0" y1="-2.54" x2="0" y2="-1.651" width="0.254" layer="51"/>
<wire x1="0" y1="2.54" x2="0" y2="1.651" width="0.254" layer="51"/>
<wire x1="-0.381" y1="1.27" x2="-0.635" y2="1.016" width="0.127" layer="21" curve="90"/>
<wire x1="-0.635" y1="-1.016" x2="-0.381" y2="-1.27" width="0.127" layer="21" curve="90"/>
<text x="-0.5715" y="1.143" size="0.6096" layer="25" ratio="10" align="bottom-right">&gt;NAME</text>
<wire x1="0.381" y1="1.27" x2="0.635" y2="1.016" width="0.127" layer="21" curve="-90"/>
<wire x1="0.635" y1="-1.016" x2="0.381" y2="-1.27" width="0.127" layer="21" curve="-90"/>
<wire x1="-0.381" y1="1.27" x2="0.381" y2="1.27" width="0.127" layer="21"/>
<wire x1="0.635" y1="-1.016" x2="0.635" y2="1.016" width="0.127" layer="21"/>
<wire x1="-0.635" y1="-1.016" x2="-0.635" y2="1.016" width="0.127" layer="21"/>
<wire x1="-0.381" y1="-1.27" x2="0.381" y2="-1.27" width="0.127" layer="21"/>
<rectangle x1="-0.1905" y1="-1.5875" x2="0.1905" y2="-1.3335" layer="21" rot="R270"/>
<rectangle x1="-0.1905" y1="1.3335" x2="0.1905" y2="1.5875" layer="21" rot="R270"/>
</package>
</packages>
<symbols>
<symbol name="R">
<pin name="2" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="1" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<wire x1="0.889" y1="-2.54" x2="0.889" y2="2.54" width="0.254" layer="94"/>
<wire x1="-0.889" y1="2.54" x2="-0.889" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0.889" y1="2.54" x2="-0.889" y2="2.54" width="0.254" layer="94"/>
<wire x1="0.889" y1="-2.54" x2="-0.889" y2="-2.54" width="0.254" layer="94"/>
<text x="-1.524" y="-4.064" size="1.778" layer="95" ratio="10" rot="R90">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="96" ratio="10" rot="R90" align="center">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="R" prefix="R" uservalue="yes">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
</gates>
<devices>
<device name="0204/5" package="0204/5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/7" package="0204/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204V" package="0204V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/10" package="0207/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/12" package="0207/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/15" package="0207/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/2V" package="0207/2V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/5V" package="0207/5V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0207/7" package="0207/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/10" package="0204/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/12" package="0204/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/15" package="0204/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0204/2V" package="0204/2V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0202/2V" package="0202/2V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0202/5" package="0202/5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0202/7" package="0202/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0202/10" package="0202/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0202V" package="0202V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0202/12" package="0202/12">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0202/15" package="0202/15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0202/7-V" package="0202/7-V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0202/5-V" package="0202/5-V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0202/10-V" package="0202/10-V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="d">
<description>&lt;b&gt;Resistors, Capacitors, Inductors&lt;/b&gt;&lt;p&gt;
 Based on the previous libraries:
 &lt;ul&gt;
 &lt;li&gt;r.lbr
 &lt;li&gt;cap.lbr 
 &lt;li&gt;cap-fe.lbr
 &lt;li&gt;captant.lbr
 &lt;li&gt;polcap.lbr
 &lt;li&gt;ipc-smd.lbr
 &lt;/ul&gt;
 All SMD packages are defined according to the IPC specifications and  CECC&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;p&gt;
 &lt;p&gt;
 for Electrolyt Capacitors see also :&lt;p&gt;
 www.bccomponents.com &lt;p&gt;
 www.panasonic.com&lt;p&gt;
 www.kemet.com&lt;p&gt;
 &lt;p&gt;
 for trimmer refence see : &lt;u&gt;www.electrospec-inc.com/cross_references/trimpotcrossref.asp&lt;/u&gt;&lt;p&gt;
 
 &lt;map name="nav_main"&gt;
 &lt;area shape="rect" coords="0,1,140,23" href="../military_specs.asp" title=""&gt;
 &lt;area shape="rect" coords="0,24,140,51" href="../about.asp" title=""&gt;
 &lt;area shape="rect" coords="1,52,140,77" href="../rfq.asp" title=""&gt;
 &lt;area shape="rect" coords="0,78,139,103" href="../products.asp" title=""&gt;
 &lt;area shape="rect" coords="1,102,138,128" href="../excess_inventory.asp" title=""&gt;
 &lt;area shape="rect" coords="1,129,138,150" href="../edge.asp" title=""&gt;
 &lt;area shape="rect" coords="1,151,139,178" href="../industry_links.asp" title=""&gt;
 &lt;area shape="rect" coords="0,179,139,201" href="../comments.asp" title=""&gt;
 &lt;area shape="rect" coords="1,203,138,231" href="../directory.asp" title=""&gt;
 &lt;area shape="default" nohref&gt;
 &lt;/map&gt;
 
 &lt;html&gt;
 
 &lt;title&gt;&lt;/title&gt;
 
 &lt;LINK REL="StyleSheet" TYPE="text/css" HREF="style-sheet.css"&gt;
 
 &lt;body bgcolor="#ffffff" text="#000000" marginwidth="0" marginheight="0" topmargin="0" leftmargin="0"&gt;
 &lt;table border=0 cellspacing=0 cellpadding=0 width="100%" cellpaddding=0 height="55%"&gt;
 &lt;tr valign="top"&gt;
 
 &lt;/td&gt;
 &lt;! &lt;td width="10"&gt;&amp;nbsp;&lt;/td&gt;
 &lt;td width="90%"&gt;
 
 &lt;b&gt;&lt;font color="#0000FF" size="4"&gt;TRIM-POT CROSS REFERENCE&lt;/font&gt;&lt;/b&gt;
 &lt;P&gt;
 &lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=2&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;RECTANGULAR MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BOURNS&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;BI&amp;nbsp;TECH&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;DALE-VISHAY&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PHILIPS/MEPCO&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MURATA&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;PANASONIC&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;SPECTROL&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;B&gt;
 &lt;FONT SIZE=3 FACE=ARIAL color="#FF0000"&gt;MILSPEC&lt;/FONT&gt;
 &lt;/B&gt;
 &lt;/TD&gt;&lt;TD&gt;&amp;nbsp;&lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3 &gt;
 3005P&lt;BR&gt;
 3006P&lt;BR&gt;
 3006W&lt;BR&gt;
 3006Y&lt;BR&gt;
 3009P&lt;BR&gt;
 3009W&lt;BR&gt;
 3009Y&lt;BR&gt;
 3057J&lt;BR&gt;
 3057L&lt;BR&gt;
 3057P&lt;BR&gt;
 3057Y&lt;BR&gt;
 3059J&lt;BR&gt;
 3059L&lt;BR&gt;
 3059P&lt;BR&gt;
 3059Y&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 89P&lt;BR&gt;
 89W&lt;BR&gt;
 89X&lt;BR&gt;
 89PH&lt;BR&gt;
 76P&lt;BR&gt;
 89XH&lt;BR&gt;
 78SLT&lt;BR&gt;
 78L&amp;nbsp;ALT&lt;BR&gt;
 56P&amp;nbsp;ALT&lt;BR&gt;
 78P&amp;nbsp;ALT&lt;BR&gt;
 T8S&lt;BR&gt;
 78L&lt;BR&gt;
 56P&lt;BR&gt;
 78P&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 T18/784&lt;BR&gt;
 783&lt;BR&gt;
 781&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 2199&lt;BR&gt;
 1697/1897&lt;BR&gt;
 1680/1880&lt;BR&gt;
 2187&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 8035EKP/CT20/RJ-20P&lt;BR&gt;
 -&lt;BR&gt;
 RJ-20X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 1211L&lt;BR&gt;
 8012EKQ&amp;nbsp;ALT&lt;BR&gt;
 8012EKR&amp;nbsp;ALT&lt;BR&gt;
 1211P&lt;BR&gt;
 8012EKJ&lt;BR&gt;
 8012EKL&lt;BR&gt;
 8012EKQ&lt;BR&gt;
 8012EKR&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 2101P&lt;BR&gt;
 2101W&lt;BR&gt;
 2101Y&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 2102L&lt;BR&gt;
 2102S&lt;BR&gt;
 2102Y&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 EVMCOG&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 43P&lt;BR&gt;
 43W&lt;BR&gt;
 43Y&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 40L&lt;BR&gt;
 40P&lt;BR&gt;
 40Y&lt;BR&gt;
 70Y-T602&lt;BR&gt;
 70L&lt;BR&gt;
 70P&lt;BR&gt;
 70Y&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 RT/RTR12&lt;BR&gt;
 RT/RTR12&lt;BR&gt;
 RT/RTR12&lt;BR&gt;
 -&lt;BR&gt;
 RJ/RJR12&lt;BR&gt;
 RJ/RJR12&lt;BR&gt;
 RJ/RJR12&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;&amp;nbsp;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SQUARE MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3250L&lt;BR&gt;
 3250P&lt;BR&gt;
 3250W&lt;BR&gt;
 3250X&lt;BR&gt;
 3252P&lt;BR&gt;
 3252W&lt;BR&gt;
 3252X&lt;BR&gt;
 3260P&lt;BR&gt;
 3260W&lt;BR&gt;
 3260X&lt;BR&gt;
 3262P&lt;BR&gt;
 3262W&lt;BR&gt;
 3262X&lt;BR&gt;
 3266P&lt;BR&gt;
 3266W&lt;BR&gt;
 3266X&lt;BR&gt;
 3290H&lt;BR&gt;
 3290P&lt;BR&gt;
 3290W&lt;BR&gt;
 3292P&lt;BR&gt;
 3292W&lt;BR&gt;
 3292X&lt;BR&gt;
 3296P&lt;BR&gt;
 3296W&lt;BR&gt;
 3296X&lt;BR&gt;
 3296Y&lt;BR&gt;
 3296Z&lt;BR&gt;
 3299P&lt;BR&gt;
 3299W&lt;BR&gt;
 3299X&lt;BR&gt;
 3299Y&lt;BR&gt;
 3299Z&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 66P&amp;nbsp;ALT&lt;BR&gt;
 66W&amp;nbsp;ALT&lt;BR&gt;
 66X&amp;nbsp;ALT&lt;BR&gt;
 66P&amp;nbsp;ALT&lt;BR&gt;
 66W&amp;nbsp;ALT&lt;BR&gt;
 66X&amp;nbsp;ALT&lt;BR&gt;
 -&lt;BR&gt;
 64W&amp;nbsp;ALT&lt;BR&gt;
 -&lt;BR&gt;
 64P&amp;nbsp;ALT&lt;BR&gt;
 64W&amp;nbsp;ALT&lt;BR&gt;
 64X&amp;nbsp;ALT&lt;BR&gt;
 64P&lt;BR&gt;
 64W&lt;BR&gt;
 64X&lt;BR&gt;
 66X&amp;nbsp;ALT&lt;BR&gt;
 66P&amp;nbsp;ALT&lt;BR&gt;
 66W&amp;nbsp;ALT&lt;BR&gt;
 66P&lt;BR&gt;
 66W&lt;BR&gt;
 66X&lt;BR&gt;
 67P&lt;BR&gt;
 67W&lt;BR&gt;
 67X&lt;BR&gt;
 67Y&lt;BR&gt;
 67Z&lt;BR&gt;
 68P&lt;BR&gt;
 68W&lt;BR&gt;
 68X&lt;BR&gt;
 67Y&amp;nbsp;ALT&lt;BR&gt;
 67Z&amp;nbsp;ALT&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 5050&lt;BR&gt;
 5091&lt;BR&gt;
 5080&lt;BR&gt;
 5087&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 T63YB&lt;BR&gt;
 T63XB&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 5887&lt;BR&gt;
 5891&lt;BR&gt;
 5880&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 T93Z&lt;BR&gt;
 T93YA&lt;BR&gt;
 T93XA&lt;BR&gt;
 T93YB&lt;BR&gt;
 T93XB&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 8026EKP&lt;BR&gt;
 8026EKW&lt;BR&gt;
 8026EKM&lt;BR&gt;
 8026EKP&lt;BR&gt;
 8026EKB&lt;BR&gt;
 8026EKM&lt;BR&gt;
 1309X&lt;BR&gt;
 1309P&lt;BR&gt;
 1309W&lt;BR&gt;
 8024EKP&lt;BR&gt;
 8024EKW&lt;BR&gt;
 8024EKN&lt;BR&gt;
 RJ-9P/CT9P&lt;BR&gt;
 RJ-9W&lt;BR&gt;
 RJ-9X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3103P&lt;BR&gt;
 3103Y&lt;BR&gt;
 3103Z&lt;BR&gt;
 3103P&lt;BR&gt;
 3103Y&lt;BR&gt;
 3103Z&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3105P/3106P&lt;BR&gt;
 3105W/3106W&lt;BR&gt;
 3105X/3106X&lt;BR&gt;
 3105Y/3106Y&lt;BR&gt;
 3105Z/3105Z&lt;BR&gt;
 3102P&lt;BR&gt;
 3102W&lt;BR&gt;
 3102X&lt;BR&gt;
 3102Y&lt;BR&gt;
 3102Z&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMCBG&lt;BR&gt;
 EVMCCG&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 55-1-X&lt;BR&gt;
 55-4-X&lt;BR&gt;
 55-3-X&lt;BR&gt;
 55-2-X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 50-2-X&lt;BR&gt;
 50-4-X&lt;BR&gt;
 50-3-X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 64P&lt;BR&gt;
 64W&lt;BR&gt;
 64X&lt;BR&gt;
 64Y&lt;BR&gt;
 64Z&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 RT/RTR22&lt;BR&gt;
 RT/RTR22&lt;BR&gt;
 RT/RTR22&lt;BR&gt;
 RT/RTR22&lt;BR&gt;
 RJ/RJR22&lt;BR&gt;
 RJ/RJR22&lt;BR&gt;
 RJ/RJR22&lt;BR&gt;
 RT/RTR26&lt;BR&gt;
 RT/RTR26&lt;BR&gt;
 RT/RTR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RJ/RJR26&lt;BR&gt;
 RT/RTR24&lt;BR&gt;
 RT/RTR24&lt;BR&gt;
 RT/RTR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 RJ/RJR24&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;&amp;nbsp;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=8&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MURATA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;SPECTROL&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD ALIGN=CENTER&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;MILSPEC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3323P&lt;BR&gt;
 3323S&lt;BR&gt;
 3323W&lt;BR&gt;
 3329H&lt;BR&gt;
 3329P&lt;BR&gt;
 3329W&lt;BR&gt;
 3339H&lt;BR&gt;
 3339P&lt;BR&gt;
 3339W&lt;BR&gt;
 3352E&lt;BR&gt;
 3352H&lt;BR&gt;
 3352K&lt;BR&gt;
 3352P&lt;BR&gt;
 3352T&lt;BR&gt;
 3352V&lt;BR&gt;
 3352W&lt;BR&gt;
 3362H&lt;BR&gt;
 3362M&lt;BR&gt;
 3362P&lt;BR&gt;
 3362R&lt;BR&gt;
 3362S&lt;BR&gt;
 3362U&lt;BR&gt;
 3362W&lt;BR&gt;
 3362X&lt;BR&gt;
 3386B&lt;BR&gt;
 3386C&lt;BR&gt;
 3386F&lt;BR&gt;
 3386H&lt;BR&gt;
 3386K&lt;BR&gt;
 3386M&lt;BR&gt;
 3386P&lt;BR&gt;
 3386S&lt;BR&gt;
 3386W&lt;BR&gt;
 3386X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 25P&lt;BR&gt;
 25S&lt;BR&gt;
 25RX&lt;BR&gt;
 82P&lt;BR&gt;
 82M&lt;BR&gt;
 82PA&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 91E&lt;BR&gt;
 91X&lt;BR&gt;
 91T&lt;BR&gt;
 91B&lt;BR&gt;
 91A&lt;BR&gt;
 91V&lt;BR&gt;
 91W&lt;BR&gt;
 25W&lt;BR&gt;
 25V&lt;BR&gt;
 25P&lt;BR&gt;
 -&lt;BR&gt;
 25S&lt;BR&gt;
 25U&lt;BR&gt;
 25RX&lt;BR&gt;
 25X&lt;BR&gt;
 72XW&lt;BR&gt;
 72XL&lt;BR&gt;
 72PM&lt;BR&gt;
 72RX&lt;BR&gt;
 -&lt;BR&gt;
 72PX&lt;BR&gt;
 72P&lt;BR&gt;
 72RXW&lt;BR&gt;
 72RXL&lt;BR&gt;
 72X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 T7YB&lt;BR&gt;
 T7YA&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 TXD&lt;BR&gt;
 TYA&lt;BR&gt;
 TYP&lt;BR&gt;
 -&lt;BR&gt;
 TYD&lt;BR&gt;
 TX&lt;BR&gt;
 -&lt;BR&gt;
 150SX&lt;BR&gt;
 100SX&lt;BR&gt;
 102T&lt;BR&gt;
 101S&lt;BR&gt;
 190T&lt;BR&gt;
 150TX&lt;BR&gt;
 101&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 101SX&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 ET6P&lt;BR&gt;
 ET6S&lt;BR&gt;
 ET6X&lt;BR&gt;
 RJ-6W/8014EMW&lt;BR&gt;
 RJ-6P/8014EMP&lt;BR&gt;
 RJ-6X/8014EMX&lt;BR&gt;
 TM7W&lt;BR&gt;
 TM7P&lt;BR&gt;
 TM7X&lt;BR&gt;
 -&lt;BR&gt;
 8017SMS&lt;BR&gt;
 -&lt;BR&gt;
 8017SMB&lt;BR&gt;
 8017SMA&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 CT-6W&lt;BR&gt;
 CT-6H&lt;BR&gt;
 CT-6P&lt;BR&gt;
 CT-6R&lt;BR&gt;
 -&lt;BR&gt;
 CT-6V&lt;BR&gt;
 CT-6X&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 8038EKV&lt;BR&gt;
 -&lt;BR&gt;
 8038EKX&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 8038EKP&lt;BR&gt;
 8038EKZ&lt;BR&gt;
 8038EKW&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3321H&lt;BR&gt;
 3321P&lt;BR&gt;
 3321N&lt;BR&gt;
 1102H&lt;BR&gt;
 1102P&lt;BR&gt;
 1102T&lt;BR&gt;
 RVA0911V304A&lt;BR&gt;
 -&lt;BR&gt;
 RVA0911H413A&lt;BR&gt;
 RVG0707V100A&lt;BR&gt;
 RVA0607V(H)306A&lt;BR&gt;
 RVA1214H213A&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 3104B&lt;BR&gt;
 3104C&lt;BR&gt;
 3104F&lt;BR&gt;
 3104H&lt;BR&gt;
 -&lt;BR&gt;
 3104M&lt;BR&gt;
 3104P&lt;BR&gt;
 3104S&lt;BR&gt;
 3104W&lt;BR&gt;
 3104X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 EVMQ0G&lt;BR&gt;
 EVMQIG&lt;BR&gt;
 EVMQ3G&lt;BR&gt;
 EVMS0G&lt;BR&gt;
 EVMQ0G&lt;BR&gt;
 EVMG0G&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMK4GA00B&lt;BR&gt;
 EVM30GA00B&lt;BR&gt;
 EVMK0GA00B&lt;BR&gt;
 EVM38GA00B&lt;BR&gt;
 EVMB6&lt;BR&gt;
 EVLQ0&lt;BR&gt;
 -&lt;BR&gt;
 EVMMSG&lt;BR&gt;
 EVMMBG&lt;BR&gt;
 EVMMAG&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMMCS&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMM1&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMM0&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 EVMM3&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 62-3-1&lt;BR&gt;
 62-1-2&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 67R&lt;BR&gt;
 -&lt;BR&gt;
 67P&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 67X&lt;BR&gt;
 63V&lt;BR&gt;
 63S&lt;BR&gt;
 63M&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 63H&lt;BR&gt;
 63P&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 63X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 RJ/RJR50&lt;BR&gt;
 RJ/RJR50&lt;BR&gt;
 RJ/RJR50&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;/TABLE&gt;
 &lt;P&gt;&amp;nbsp;&lt;P&gt;
 &lt;TABLE BORDER=0 CELLSPACING=1 CELLPADDING=3&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=7&gt;
 &lt;FONT color="#0000FF" SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SMD TRIM-POT CROSS REFERENCE&lt;/B&gt;&lt;/FONT&gt;
 &lt;P&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;MULTI-TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3224G&lt;BR&gt;
 3224J&lt;BR&gt;
 3224W&lt;BR&gt;
 3269P&lt;BR&gt;
 3269W&lt;BR&gt;
 3269X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 44G&lt;BR&gt;
 44J&lt;BR&gt;
 44W&lt;BR&gt;
 84P&lt;BR&gt;
 84W&lt;BR&gt;
 84X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 ST63Z&lt;BR&gt;
 ST63Y&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 ST5P&lt;BR&gt;
 ST5W&lt;BR&gt;
 ST5X&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=7&gt;&amp;nbsp;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD COLSPAN=7&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;SINGLE TURN&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BOURNS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;BI&amp;nbsp;TECH&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;DALE-VISHAY&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PHILIPS/MEPCO&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;PANASONIC&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;TOCOS&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD&gt;
 &lt;FONT SIZE=3 FACE=ARIAL&gt;&lt;B&gt;AUX/KYOCERA&lt;/B&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;TR&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 3314G&lt;BR&gt;
 3314J&lt;BR&gt;
 3364A/B&lt;BR&gt;
 3364C/D&lt;BR&gt;
 3364W/X&lt;BR&gt;
 3313G&lt;BR&gt;
 3313J&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 23B&lt;BR&gt;
 23A&lt;BR&gt;
 21X&lt;BR&gt;
 21W&lt;BR&gt;
 -&lt;BR&gt;
 22B&lt;BR&gt;
 22A&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 ST5YL/ST53YL&lt;BR&gt;
 ST5YJ/5T53YJ&lt;BR&gt;
 ST-23A&lt;BR&gt;
 ST-22B&lt;BR&gt;
 ST-22&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 ST-4B&lt;BR&gt;
 ST-4A&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 ST-3B&lt;BR&gt;
 ST-3A&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 EVM-6YS&lt;BR&gt;
 EVM-1E&lt;BR&gt;
 EVM-1G&lt;BR&gt;
 EVM-1D&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 G4B&lt;BR&gt;
 G4A&lt;BR&gt;
 TR04-3S1&lt;BR&gt;
 TRG04-2S1&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;TD BGCOLOR="#cccccc" ALIGN=CENTER&gt;&lt;FONT FACE=ARIAL SIZE=3&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;
 DVR-43A&lt;BR&gt;
 CVR-42C&lt;BR&gt;
 CVR-42A/C&lt;BR&gt;
 -&lt;BR&gt;
 -&lt;BR&gt;&lt;/FONT&gt;
 &lt;/TD&gt;
 &lt;/TR&gt;
 &lt;/TABLE&gt;
 &lt;P&gt;
 &lt;FONT SIZE=4 FACE=ARIAL&gt;&lt;B&gt;ALT =&amp;nbsp;ALTERNATE&lt;/B&gt;&lt;/FONT&gt;
 &lt;P&gt;
 
 &amp;nbsp;
 &lt;P&gt;
 &lt;/td&gt;
 &lt;/tr&gt;
 &lt;/table&gt;
 &lt;/BODY&gt;&lt;/HTML&gt;</description>
<packages>
<package name="DO35-2_54A">
<wire x1="-2.286" y1="0" x2="-1.651" y2="0" width="0.1524" layer="22"/>
<wire x1="-0.762" y1="-0.635" x2="-0.762" y2="0.635" width="0.1524" layer="22"/>
<wire x1="-0.762" y1="0.635" x2="-1.651" y2="0" width="0.1524" layer="22"/>
<wire x1="-1.651" y1="0" x2="-0.381" y2="0" width="0.1524" layer="22"/>
<wire x1="-1.651" y1="0" x2="-0.762" y2="-0.635" width="0.1524" layer="22"/>
<wire x1="-1.651" y1="0" x2="-1.651" y2="0.635" width="0.1524" layer="22"/>
<wire x1="-1.651" y1="-0.635" x2="-1.651" y2="0" width="0.1524" layer="22"/>
<pad name="C" x="-1.27" y="0" drill="0.6" diameter="1.4224" rot="R180"/>
<text x="-2.159" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<pad name="A" x="1.27" y="0" drill="0.6" diameter="1.4224" rot="R180"/>
<circle x="-1.27" y="0" radius="1.27" width="0.254" layer="22"/>
<wire x1="0.0635" y1="0" x2="1.27" y2="0" width="0.4064" layer="22"/>
</package>
<package name="DO34-7">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
 diameter 1.8 mm, horizontal, grid 7.62 mm</description>
<pad name="C" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="A" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<wire x1="3.81" y1="0" x2="3.175" y2="0" width="0.127" layer="51"/>
<text x="0" y="1.0795" size="0.6096" layer="25" ratio="10" align="bottom-center">&gt;NAME</text>
<text x="1.27" y="-0.73025" size="0.4064" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
<rectangle x1="1.3208" y1="-0.1016" x2="3.1496" y2="0.1016" layer="21" rot="R180"/>
<wire x1="-1.27" y1="0.127" x2="-0.762" y2="0.635" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.127" x2="-0.762" y2="-0.635" width="0.1016" layer="21" curve="90"/>
<wire x1="0.762" y1="-0.635" x2="1.27" y2="-0.127" width="0.1016" layer="21" curve="90"/>
<wire x1="0.762" y1="0.635" x2="1.27" y2="0.127" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="0.127" width="0.1016" layer="21"/>
<wire x1="0.762" y1="0.635" x2="-0.762" y2="0.635" width="0.1016" layer="21"/>
<wire x1="0.762" y1="-0.635" x2="-0.762" y2="-0.635" width="0.1016" layer="21"/>
<wire x1="1.27" y1="-0.127" x2="1.27" y2="0.127" width="0.1016" layer="21"/>
<wire x1="0.635" y1="0.381" x2="0.635" y2="-0.381" width="0.0762" layer="21"/>
<wire x1="0.635" y1="-0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.3175" y1="0" x2="0.889" y2="0" width="0.0762" layer="51"/>
<wire x1="-0.0635" y1="0" x2="0.635" y2="0.381" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="-0.0635" y2="-0.381" width="0.0762" layer="21"/>
<rectangle x1="-1.3335" y1="-0.127" x2="-0.0635" y2="0.127" layer="21" rot="R270"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.127" layer="51"/>
<rectangle x1="-3.1496" y1="-0.1016" x2="-1.3208" y2="0.1016" layer="21"/>
</package>
<package name="DO35-7">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
 diameter 2 mm, horizontal, grid 7.62 mm</description>
<wire x1="2.286" y1="0.762" x2="2.032" y2="1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.032" y1="-1.016" x2="2.286" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.032" y1="1.016" x2="-2.286" y2="0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.286" y1="-0.762" x2="-2.032" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<rectangle x1="-1.905" y1="-1.016" x2="-1.397" y2="1.016" layer="21"/>
<rectangle x1="2.286" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.286" y2="0.254" layer="21"/>
<pad name="A" x="3.81" y="0" drill="0.7"/>
<pad name="C" x="-3.81" y="0" drill="0.7"/>
<text x="-2.286" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-0.635" y1="0" x2="0" y2="0" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.635" x2="1.016" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.524" y2="0" width="0.1524" layer="51"/>
<wire x1="0" y1="0" x2="1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.1524" layer="51"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="2.032" y1="1.016" x2="2.286" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.286" y1="0.762" x2="2.286" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-1.016" x2="2.286" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.286" y1="0.762" x2="-2.032" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.286" y1="-0.762" x2="-2.032" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.032" y1="-1.016" x2="2.032" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0.762" x2="-2.286" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="1.016" x2="2.032" y2="1.016" width="0.1524" layer="21"/>
<text x="-2.286" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.905" y1="-1.016" x2="-1.397" y2="1.016" layer="21"/>
<rectangle x1="2.286" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.286" y2="0.254" layer="21"/>
</package>
<package name="DO35-10">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
 diameter 2 mm, horizontal, grid 10.16 mm</description>
<wire x1="2.286" y1="0.762" x2="2.032" y2="1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.032" y1="1.016" x2="-2.286" y2="0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.286" y1="-0.762" x2="-2.032" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.032" y1="-1.016" x2="2.286" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<rectangle x1="-1.905" y1="-1.016" x2="-1.397" y2="1.016" layer="21"/>
<rectangle x1="2.286" y1="-0.254" x2="4.191" y2="0.254" layer="21"/>
<rectangle x1="-4.191" y1="-0.254" x2="-2.286" y2="0.254" layer="21"/>
<pad name="A" x="5.08" y="0" drill="0.8128" shape="long"/>
<pad name="C" x="-5.08" y="0" drill="0.8128" shape="long"/>
<text x="-2.159" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<wire x1="5.08" y1="0" x2="4.191" y2="0" width="0.508" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.191" y2="0" width="0.508" layer="51"/>
<wire x1="-0.635" y1="0" x2="0" y2="0" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.635" x2="1.016" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.524" y2="0" width="0.1524" layer="51"/>
<wire x1="0" y1="0" x2="1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.1524" layer="51"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="2.032" y1="1.016" x2="2.286" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.286" y1="0.762" x2="-2.032" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.286" y1="-0.762" x2="-2.032" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.032" y1="-1.016" x2="2.286" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-0.762" x2="2.286" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0.762" x2="-2.286" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="1.016" x2="2.032" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-1.016" x2="2.032" y2="-1.016" width="0.1524" layer="21"/>
<text x="-2.159" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.905" y1="-1.016" x2="-1.397" y2="1.016" layer="21"/>
<rectangle x1="2.286" y1="-0.254" x2="4.191" y2="0.254" layer="21"/>
<rectangle x1="-4.191" y1="-0.254" x2="-2.286" y2="0.254" layer="21"/>
</package>
<package name="DO35-2_54">
<description>DO35-2_54</description>
<wire x1="-0.1905" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="1.143" y1="0.508" x2="1.143" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.508" x2="0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="1.7145" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="1.143" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="0.381" y2="-0.4445" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0.508" x2="0.381" y2="0" width="0.1524" layer="21"/>
<pad name="C" x="-1.27" y="0" drill="0.6" diameter="1.4224"/>
<text x="-2.159" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<pad name="A" x="1.27" y="0" drill="0.6" diameter="1.4224"/>
<circle x="0.8255" y="0" radius="1.016" width="0.2032" layer="21"/>
<wire x1="-0.3175" y1="0" x2="-1.27" y2="0" width="0.4064" layer="51"/>
</package>
<package name="DO34-12">
<pad name="C" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="A" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<wire x1="6.35" y1="0" x2="5.715" y2="0" width="0.127" layer="51"/>
<text x="1.651" y="-0.762" size="0.6096" layer="25" ratio="10" rot="R180" align="bottom-right">&gt;NAME</text>
<text x="0" y="0.73025" size="0.4064" layer="27" ratio="10" rot="R180" align="top-center">&gt;VALUE</text>
<wire x1="-1.27" y1="0.127" x2="-0.762" y2="0.635" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.127" x2="-0.762" y2="-0.635" width="0.1016" layer="21" curve="90"/>
<wire x1="0.762" y1="-0.635" x2="1.27" y2="-0.127" width="0.1016" layer="21" curve="90"/>
<wire x1="0.762" y1="0.635" x2="1.27" y2="0.127" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="0.127" width="0.1016" layer="21"/>
<wire x1="0.762" y1="0.635" x2="-0.762" y2="0.635" width="0.1016" layer="21"/>
<wire x1="0.762" y1="-0.635" x2="-0.762" y2="-0.635" width="0.1016" layer="21"/>
<wire x1="1.27" y1="-0.127" x2="1.27" y2="0.127" width="0.1016" layer="21"/>
<wire x1="-0.3175" y1="0" x2="-0.0635" y2="0" width="0.0762" layer="51"/>
<wire x1="0.635" y1="0.381" x2="0.635" y2="-0.381" width="0.0762" layer="21"/>
<wire x1="0.635" y1="-0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="0.889" y2="0" width="0.0762" layer="51"/>
<wire x1="-0.0635" y1="0" x2="0.635" y2="0.381" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="-0.0635" y2="-0.381" width="0.0762" layer="21"/>
<rectangle x1="-1.3335" y1="-0.127" x2="-0.0635" y2="0.127" layer="21" rot="R270"/>
<wire x1="-6.35" y1="0" x2="-5.715" y2="0" width="0.127" layer="51"/>
<rectangle x1="-5.6896" y1="-0.1016" x2="-1.3208" y2="0.1016" layer="21"/>
<rectangle x1="1.3208" y1="-0.1016" x2="5.6896" y2="0.1016" layer="21" rot="R180"/>
</package>
<package name="DO34-5">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
 diameter 1.8 mm, horizontal, grid 5.08 mm</description>
<pad name="C" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="A" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<wire x1="2.54" y1="0" x2="1.905" y2="0" width="0.127" layer="51"/>
<text x="1.651" y="-0.762" size="0.6096" layer="25" ratio="10" rot="R180" align="bottom-right">&gt;NAME</text>
<text x="0" y="0.73025" size="0.4064" layer="27" ratio="10" rot="R180" align="top-center">&gt;VALUE</text>
<wire x1="-1.27" y1="0.127" x2="-0.762" y2="0.635" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.127" x2="-0.762" y2="-0.635" width="0.1016" layer="21" curve="90"/>
<wire x1="0.762" y1="-0.635" x2="1.27" y2="-0.127" width="0.1016" layer="21" curve="90"/>
<wire x1="0.762" y1="0.635" x2="1.27" y2="0.127" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="0.127" width="0.1016" layer="21"/>
<wire x1="0.762" y1="0.635" x2="-0.762" y2="0.635" width="0.1016" layer="21"/>
<wire x1="0.762" y1="-0.635" x2="-0.762" y2="-0.635" width="0.1016" layer="21"/>
<wire x1="1.27" y1="-0.127" x2="1.27" y2="0.127" width="0.1016" layer="21"/>
<wire x1="-0.3175" y1="0" x2="-0.0635" y2="0" width="0.0762" layer="51"/>
<wire x1="0.635" y1="0.381" x2="0.635" y2="-0.381" width="0.0762" layer="21"/>
<wire x1="0.635" y1="-0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="0.889" y2="0" width="0.0762" layer="51"/>
<wire x1="-0.0635" y1="0" x2="0.635" y2="0.381" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="-0.0635" y2="-0.381" width="0.0762" layer="21"/>
<rectangle x1="-1.3335" y1="-0.127" x2="-0.0635" y2="0.127" layer="21" rot="R270"/>
<wire x1="-2.54" y1="0" x2="-1.905" y2="0" width="0.127" layer="51"/>
<rectangle x1="-1.8796" y1="-0.1016" x2="-1.3208" y2="0.1016" layer="21"/>
<rectangle x1="1.3208" y1="-0.1016" x2="1.8796" y2="0.1016" layer="21" rot="R180"/>
</package>
<package name="DO34-2,5">
<wire x1="-0.1905" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="1.143" y1="0.508" x2="1.143" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.508" x2="0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="1.7145" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="1.143" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="0.381" y2="-0.4445" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0.508" x2="0.381" y2="0" width="0.1524" layer="21"/>
<pad name="C" x="-1.27" y="0" drill="0.6" diameter="1.4224"/>
<text x="-2.159" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<pad name="A" x="1.27" y="0" drill="0.6" diameter="1.4224"/>
<circle x="0.8255" y="0" radius="1.016" width="0.2032" layer="21"/>
<wire x1="-0.3175" y1="0" x2="-1.27" y2="0" width="0.4064" layer="51"/>
</package>
<package name="DO34-2,5-A">
<wire x1="0.5715" y1="0" x2="-0.889" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.127" y1="0.508" x2="-0.127" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="-0.508" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="0" x2="-0.127" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-0.889" y2="-0.4445" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0.508" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<pad name="A" x="1.27" y="0" drill="0.6" diameter="1.4224" rot="R180"/>
<text x="0" y="1.397" size="0.8128" layer="25" ratio="10" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.397" size="0.6096" layer="27" ratio="10" align="top-center">&gt;VALUE</text>
<pad name="C" x="-1.27" y="0" drill="0.6" diameter="1.4224"/>
<circle x="-0.4445" y="0" radius="1.016" width="0.1524" layer="21"/>
<wire x1="0.6985" y1="0" x2="1.27" y2="0" width="0.3048" layer="51"/>
</package>
<package name="DO34-10">
<pad name="C" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="A" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<wire x1="5.08" y1="0" x2="4.445" y2="0" width="0.127" layer="51"/>
<text x="1.651" y="-0.762" size="0.6096" layer="25" ratio="10" rot="R180" align="bottom-right">&gt;NAME</text>
<text x="0" y="0.73025" size="0.4064" layer="27" ratio="10" rot="R180" align="top-center">&gt;VALUE</text>
<rectangle x1="1.3208" y1="-0.1016" x2="4.4196" y2="0.1016" layer="21" rot="R180"/>
<wire x1="-1.27" y1="0.127" x2="-0.762" y2="0.635" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.127" x2="-0.762" y2="-0.635" width="0.1016" layer="21" curve="90"/>
<wire x1="0.762" y1="-0.635" x2="1.27" y2="-0.127" width="0.1016" layer="21" curve="90"/>
<wire x1="0.762" y1="0.635" x2="1.27" y2="0.127" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="0.127" width="0.1016" layer="21"/>
<wire x1="0.762" y1="0.635" x2="-0.762" y2="0.635" width="0.1016" layer="21"/>
<wire x1="0.762" y1="-0.635" x2="-0.762" y2="-0.635" width="0.1016" layer="21"/>
<wire x1="1.27" y1="-0.127" x2="1.27" y2="0.127" width="0.1016" layer="21"/>
<wire x1="-0.3175" y1="0" x2="-0.0635" y2="0" width="0.0762" layer="51"/>
<wire x1="0.635" y1="0.381" x2="0.635" y2="-0.381" width="0.0762" layer="21"/>
<wire x1="0.635" y1="-0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="0.889" y2="0" width="0.0762" layer="51"/>
<wire x1="-0.0635" y1="0" x2="0.635" y2="0.381" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="-0.0635" y2="-0.381" width="0.0762" layer="21"/>
<rectangle x1="-1.3335" y1="-0.127" x2="-0.0635" y2="0.127" layer="21" rot="R270"/>
<wire x1="-5.08" y1="0" x2="-4.445" y2="0" width="0.127" layer="51"/>
<rectangle x1="-4.4196" y1="-0.1016" x2="-1.3208" y2="0.1016" layer="21"/>
</package>
<package name="DO34-7V">
<pad name="C" x="0" y="-3.81" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="A" x="0" y="3.81" drill="0.8128" shape="octagon" rot="R90"/>
<wire x1="0" y1="3.81" x2="0" y2="3.175" width="0.127" layer="51"/>
<text x="0.254" y="1.905" size="0.6096" layer="25" ratio="10">&gt;NAME</text>
<text x="0.254" y="-1.905" size="0.4064" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
<rectangle x1="-0.9144" y1="2.1336" x2="0.9144" y2="2.3368" layer="21" rot="R270"/>
<wire x1="-0.127" y1="-1.27" x2="-0.635" y2="-0.762" width="0.1016" layer="21" curve="-90"/>
<wire x1="0.127" y1="-1.27" x2="0.635" y2="-0.762" width="0.1016" layer="21" curve="90"/>
<wire x1="0.635" y1="0.762" x2="0.127" y2="1.27" width="0.1016" layer="21" curve="90"/>
<wire x1="-0.635" y1="0.762" x2="-0.127" y2="1.27" width="0.1016" layer="21" curve="-90"/>
<wire x1="0.127" y1="-1.27" x2="-0.127" y2="-1.27" width="0.1016" layer="21"/>
<wire x1="-0.635" y1="0.762" x2="-0.635" y2="-0.762" width="0.1016" layer="21"/>
<wire x1="0.635" y1="0.762" x2="0.635" y2="-0.762" width="0.1016" layer="21"/>
<wire x1="0.127" y1="1.27" x2="-0.127" y2="1.27" width="0.1016" layer="21"/>
<wire x1="0" y1="-0.3175" x2="0" y2="-0.0635" width="0.0762" layer="51"/>
<wire x1="-0.381" y1="0.635" x2="0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="0.381" y1="0.635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0" y2="0.889" width="0.0762" layer="51"/>
<wire x1="0" y1="-0.0635" x2="-0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="-0.0635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0.381" y2="-0.0635" width="0.0762" layer="21"/>
<rectangle x1="-0.635" y1="-0.8255" x2="0.635" y2="-0.5715" layer="21"/>
<wire x1="0" y1="-3.81" x2="0" y2="-3.175" width="0.127" layer="51"/>
<rectangle x1="-0.9144" y1="-2.3368" x2="0.9144" y2="-2.1336" layer="21" rot="R90"/>
</package>
<package name="DO34-5V">
<pad name="C" x="0" y="-2.54" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="A" x="0" y="2.54" drill="0.8128" shape="octagon" rot="R90"/>
<wire x1="0" y1="2.54" x2="0" y2="1.905" width="0.127" layer="51"/>
<text x="0.381" y="1.524" size="0.6096" layer="25" ratio="10">&gt;NAME</text>
<text x="0.508" y="-1.524" size="0.4064" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
<wire x1="-0.127" y1="-1.27" x2="-0.635" y2="-0.762" width="0.1016" layer="21" curve="-90"/>
<wire x1="0.127" y1="-1.27" x2="0.635" y2="-0.762" width="0.1016" layer="21" curve="90"/>
<wire x1="0.635" y1="0.762" x2="0.127" y2="1.27" width="0.1016" layer="21" curve="90"/>
<wire x1="-0.635" y1="0.762" x2="-0.127" y2="1.27" width="0.1016" layer="21" curve="-90"/>
<wire x1="0.127" y1="-1.27" x2="-0.127" y2="-1.27" width="0.1016" layer="21"/>
<wire x1="-0.635" y1="0.762" x2="-0.635" y2="-0.762" width="0.1016" layer="21"/>
<wire x1="0.635" y1="0.762" x2="0.635" y2="-0.762" width="0.1016" layer="21"/>
<wire x1="0.127" y1="1.27" x2="-0.127" y2="1.27" width="0.1016" layer="21"/>
<wire x1="0" y1="-0.3175" x2="0" y2="-0.0635" width="0.0762" layer="51"/>
<wire x1="-0.381" y1="0.635" x2="0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="0.381" y1="0.635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0" y2="0.889" width="0.0762" layer="51"/>
<wire x1="0" y1="-0.0635" x2="-0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="-0.0635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0.381" y2="-0.0635" width="0.0762" layer="21"/>
<rectangle x1="-0.635" y1="-0.8255" x2="0.635" y2="-0.5715" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.905" width="0.127" layer="51"/>
<rectangle x1="-0.2794" y1="-1.7018" x2="0.2794" y2="-1.4986" layer="21" rot="R90"/>
<rectangle x1="-0.2794" y1="1.4986" x2="0.2794" y2="1.7018" layer="21" rot="R270"/>
</package>
<package name="DO34-10V">
<pad name="C" x="0" y="-5.08" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="A" x="0" y="5.08" drill="0.8128" shape="octagon" rot="R90"/>
<wire x1="0" y1="5.08" x2="0" y2="4.445" width="0.127" layer="51"/>
<text x="0.254" y="1.524" size="0.6096" layer="25" ratio="10">&gt;NAME</text>
<text x="0.508" y="-1.524" size="0.4064" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
<rectangle x1="-1.5494" y1="2.7686" x2="1.5494" y2="2.9718" layer="21" rot="R270"/>
<wire x1="-0.127" y1="-1.27" x2="-0.635" y2="-0.762" width="0.1016" layer="21" curve="-90"/>
<wire x1="0.127" y1="-1.27" x2="0.635" y2="-0.762" width="0.1016" layer="21" curve="90"/>
<wire x1="0.635" y1="0.762" x2="0.127" y2="1.27" width="0.1016" layer="21" curve="90"/>
<wire x1="-0.635" y1="0.762" x2="-0.127" y2="1.27" width="0.1016" layer="21" curve="-90"/>
<wire x1="0.127" y1="-1.27" x2="-0.127" y2="-1.27" width="0.1016" layer="21"/>
<wire x1="-0.635" y1="0.762" x2="-0.635" y2="-0.762" width="0.1016" layer="21"/>
<wire x1="0.635" y1="0.762" x2="0.635" y2="-0.762" width="0.1016" layer="21"/>
<wire x1="0.127" y1="1.27" x2="-0.127" y2="1.27" width="0.1016" layer="21"/>
<wire x1="0" y1="-0.3175" x2="0" y2="-0.0635" width="0.0762" layer="51"/>
<wire x1="-0.381" y1="0.635" x2="0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="0.381" y1="0.635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0" y2="0.889" width="0.0762" layer="51"/>
<wire x1="0" y1="-0.0635" x2="-0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="-0.0635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0.381" y2="-0.0635" width="0.0762" layer="21"/>
<rectangle x1="-0.635" y1="-0.8255" x2="0.635" y2="-0.5715" layer="21"/>
<wire x1="0" y1="-5.08" x2="0" y2="-4.445" width="0.127" layer="51"/>
<rectangle x1="-1.5494" y1="-2.9718" x2="1.5494" y2="-2.7686" layer="21" rot="R90"/>
</package>
<package name="DO34-12V">
<pad name="C" x="0" y="-6.35" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="A" x="0" y="6.35" drill="0.8128" shape="octagon" rot="R90"/>
<wire x1="0" y1="6.35" x2="0" y2="5.715" width="0.127" layer="51"/>
<text x="0.254" y="1.524" size="0.6096" layer="25" ratio="10">&gt;NAME</text>
<text x="0.508" y="-1.524" size="0.4064" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
<wire x1="-0.127" y1="-1.27" x2="-0.635" y2="-0.762" width="0.1016" layer="21" curve="-90"/>
<wire x1="0.127" y1="-1.27" x2="0.635" y2="-0.762" width="0.1016" layer="21" curve="90"/>
<wire x1="0.635" y1="0.762" x2="0.127" y2="1.27" width="0.1016" layer="21" curve="90"/>
<wire x1="-0.635" y1="0.762" x2="-0.127" y2="1.27" width="0.1016" layer="21" curve="-90"/>
<wire x1="0.127" y1="-1.27" x2="-0.127" y2="-1.27" width="0.1016" layer="21"/>
<wire x1="-0.635" y1="0.762" x2="-0.635" y2="-0.762" width="0.1016" layer="21"/>
<wire x1="0.635" y1="0.762" x2="0.635" y2="-0.762" width="0.1016" layer="21"/>
<wire x1="0.127" y1="1.27" x2="-0.127" y2="1.27" width="0.1016" layer="21"/>
<wire x1="0" y1="-0.3175" x2="0" y2="-0.0635" width="0.0762" layer="51"/>
<wire x1="-0.381" y1="0.635" x2="0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="0.381" y1="0.635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0" y2="0.889" width="0.0762" layer="51"/>
<wire x1="0" y1="-0.0635" x2="-0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="-0.0635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0.381" y2="-0.0635" width="0.0762" layer="21"/>
<rectangle x1="-0.635" y1="-0.8255" x2="0.635" y2="-0.5715" layer="21"/>
<wire x1="0" y1="-6.35" x2="0" y2="-5.715" width="0.127" layer="51"/>
<rectangle x1="-0.0762" y1="-5.715" x2="0.0762" y2="-1.2192" layer="21"/>
<rectangle x1="-0.0762" y1="1.2192" x2="0.0762" y2="5.715" layer="21" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="D">
<pin name="A" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="C" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<text x="-2.54" y="0" size="1.778" layer="95" align="bottom-right">&gt;NAME</text>
<text x="-2.54" y="-2.286" size="1.778" layer="96" align="bottom-right">&gt;VALUE</text>
<wire x1="1.27" y1="-1.27" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="1.27" y2="1.27" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="1N4148" prefix="D">
<gates>
<gate name="G$1" symbol="D" x="0" y="0"/>
</gates>
<devices>
<device name="35-7" package="DO35-7">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="35-10" package="DO35-10">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="35-2.54" package="DO35-2_54">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="35-2.54A" package="DO35-2_54A">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34-12" package="DO34-12">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34-5" package="DO34-5">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34-7" package="DO34-7">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34-2,5" package="DO34-2,5">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34-2,5-A" package="DO34-2,5-A">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34-10" package="DO34-10">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34-7V" package="DO34-7V">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34-5V" package="DO34-5V">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34-10V" package="DO34-10V">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34-12V" package="DO34-12V">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="T2" library="t" deviceset="BC557" device="CBE" value="BC557"/>
<part name="D1" library="d" deviceset="1N4148" device="34-7" value="1N414834-7"/>
<part name="R1" library="r" deviceset="R" device="0202/7" value="10k"/>
<part name="T1" library="t" deviceset="BC547" device="CBE" value="BC547"/>
<part name="R2" library="r" deviceset="R" device="0202/7" value="1k"/>
<part name="R3" library="r" deviceset="R" device="0202/7" value="4.7k"/>
<part name="R4" library="r" deviceset="R" device="0202/7-V" value="10k"/>
<part name="R5" library="r" deviceset="R" device="0202/7-V" value="1k"/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="P+1" library="supply1" deviceset="+5V" device=""/>
<part name="P+2" library="supply1" deviceset="+5V" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="P+3" library="supply1" deviceset="+5V" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="J2" library="pinconn" deviceset="PIC-UART" device="-X"/>
<part name="J1" library="pinconn" deviceset="COMPORT-4PIN-NEW" device=""/>
</parts>
<sheets>
<sheet>
<description>RS232 Adapter using NPN and PNP Transistors</description>
<plain>
</plain>
<instances>
<instance part="T2" gate="G$1" x="55.88" y="60.96" rot="MR0"/>
<instance part="D1" gate="G$1" x="68.58" y="10.16" rot="MR0"/>
<instance part="R1" gate="G$1" x="60.96" y="15.24" rot="MR270"/>
<instance part="T1" gate="G$1" x="76.2" y="15.24"/>
<instance part="R2" gate="G$1" x="45.72" y="53.34" rot="MR270"/>
<instance part="R3" gate="G$1" x="53.34" y="45.72"/>
<instance part="R4" gate="G$1" x="66.04" y="60.96" rot="MR270"/>
<instance part="R5" gate="G$1" x="78.74" y="30.48" rot="MR0"/>
<instance part="GND1" gate="1" x="68.58" y="0" rot="MR0"/>
<instance part="P+1" gate="1" x="53.34" y="71.12" smashed="yes" rot="MR0">
<attribute name="VALUE" x="55.88" y="72.39" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="P+2" gate="1" x="78.74" y="40.64" smashed="yes" rot="MR0">
<attribute name="VALUE" x="81.28" y="41.91" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="GND2" gate="1" x="78.74" y="50.8" rot="MR0"/>
<instance part="P+3" gate="1" x="83.82" y="73.66" smashed="yes" rot="MR0">
<attribute name="VALUE" x="86.36" y="74.93" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="GND3" gate="1" x="53.34" y="0" rot="MR0"/>
<instance part="J2" gate="1" x="101.6" y="57.15" rot="MR180"/>
<instance part="J1" gate="1" x="15.24" y="40.64"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="R5" gate="G$1" pin="1"/>
<pinref part="T1" gate="G$1" pin="C"/>
<wire x1="78.74" y1="20.32" x2="78.74" y2="22.86" width="0.1524" layer="91"/>
<wire x1="78.74" y1="22.86" x2="78.74" y2="25.4" width="0.1524" layer="91"/>
<wire x1="78.74" y1="22.86" x2="88.9" y2="22.86" width="0.1524" layer="91"/>
<wire x1="88.9" y1="22.86" x2="88.9" y2="58.42" width="0.1524" layer="91"/>
<junction x="78.74" y="22.86"/>
<wire x1="88.9" y1="58.42" x2="93.98" y2="58.42" width="0.1524" layer="91"/>
<pinref part="J2" gate="1" pin="RX"/>
<wire x1="93.98" y1="58.42" x2="91.44" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="T1" gate="G$1" pin="B"/>
<pinref part="D1" gate="G$1" pin="C"/>
<wire x1="68.58" y1="12.7" x2="68.58" y2="15.24" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="66.04" y1="15.24" x2="68.58" y2="15.24" width="0.1524" layer="91"/>
<junction x="68.58" y="15.24"/>
<wire x1="68.58" y1="15.24" x2="73.66" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="A"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="68.58" y1="2.54" x2="68.58" y2="5.08" width="0.1524" layer="91"/>
<pinref part="T1" gate="G$1" pin="E"/>
<wire x1="68.58" y1="5.08" x2="68.58" y2="7.62" width="0.1524" layer="91"/>
<wire x1="68.58" y1="5.08" x2="78.74" y2="5.08" width="0.1524" layer="91"/>
<wire x1="78.74" y1="5.08" x2="78.74" y2="10.16" width="0.1524" layer="91"/>
<junction x="68.58" y="5.08"/>
</segment>
<segment>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="91.44" y1="55.88" x2="93.98" y2="55.88" width="0.1524" layer="91"/>
<wire x1="93.98" y1="55.88" x2="78.74" y2="55.88" width="0.1524" layer="91"/>
<wire x1="78.74" y1="55.88" x2="78.74" y2="53.34" width="0.1524" layer="91"/>
<pinref part="J2" gate="1" pin="VSS"/>
</segment>
<segment>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="53.34" y1="40.64" x2="53.34" y2="35.56" width="0.1524" layer="91"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="53.34" y1="35.56" x2="53.34" y2="2.54" width="0.1524" layer="91"/>
<junction x="53.34" y="35.56"/>
<wire x1="25.4" y1="35.56" x2="53.34" y2="35.56" width="0.1524" layer="91"/>
<pinref part="J1" gate="1" pin="GND"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="R5" gate="G$1" pin="2"/>
<pinref part="P+2" gate="1" pin="+5V"/>
<wire x1="78.74" y1="38.1" x2="78.74" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="T2" gate="G$1" pin="E"/>
<pinref part="P+1" gate="1" pin="+5V"/>
<wire x1="53.34" y1="66.04" x2="53.34" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+3" gate="1" pin="+5V"/>
<wire x1="91.44" y1="53.34" x2="93.98" y2="53.34" width="0.1524" layer="91"/>
<wire x1="93.98" y1="53.34" x2="83.82" y2="53.34" width="0.1524" layer="91"/>
<wire x1="83.82" y1="53.34" x2="83.82" y2="71.12" width="0.1524" layer="91"/>
<pinref part="J2" gate="1" pin="VDD"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="71.12" y1="60.96" x2="93.98" y2="60.96" width="0.1524" layer="91"/>
<pinref part="J2" gate="1" pin="TX"/>
<wire x1="93.98" y1="60.96" x2="91.44" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<pinref part="T2" gate="G$1" pin="B"/>
<wire x1="58.42" y1="60.96" x2="60.96" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="T2" gate="G$1" pin="C"/>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="53.34" y1="55.88" x2="53.34" y2="53.34" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="53.34" y1="53.34" x2="53.34" y2="50.8" width="0.1524" layer="91"/>
<wire x1="53.34" y1="53.34" x2="50.8" y2="53.34" width="0.1524" layer="91"/>
<junction x="53.34" y="53.34"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="25.4" y1="43.18" x2="33.02" y2="43.18" width="0.1524" layer="91"/>
<wire x1="33.02" y1="43.18" x2="33.02" y2="53.34" width="0.1524" layer="91"/>
<wire x1="33.02" y1="53.34" x2="40.64" y2="53.34" width="0.1524" layer="91"/>
<pinref part="J1" gate="1" pin="RXD"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="55.88" y1="15.24" x2="33.02" y2="15.24" width="0.1524" layer="91"/>
<wire x1="25.4" y1="40.64" x2="33.02" y2="40.64" width="0.1524" layer="91"/>
<wire x1="25.4" y1="40.64" x2="33.02" y2="40.64" width="0.1524" layer="91"/>
<wire x1="33.02" y1="40.64" x2="33.02" y2="15.24" width="0.1524" layer="91"/>
<pinref part="J1" gate="1" pin="TXD"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
