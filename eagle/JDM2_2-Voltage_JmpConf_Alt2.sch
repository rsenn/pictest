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
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
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
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
</layers>
<schematic>
<description>JDM2 with selectable Dual-Voltage</description>
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
<symbol name="VCC">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
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
<deviceset name="VCC" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
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
<library name="supply2">
<packages>
</packages>
<symbols>
<symbol name="VPP">
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VPP" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VPP" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VPP" x="0" y="0"/>
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
<package name="CONN-6P">
<pad name="6" x="12.7" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="5" x="10.16" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="4" x="7.62" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="3" x="5.08" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="2" x="2.54" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="1" x="0" y="0" drill="0.9" diameter="1.778" shape="square" rot="R180"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="13.97" y2="-1.27" width="0.127" layer="21"/>
<wire x1="13.97" y1="-1.27" x2="13.97" y2="1.27" width="0.127" layer="21"/>
<wire x1="13.97" y1="1.27" x2="-1.27" y2="1.27" width="0.127" layer="21"/>
<text x="-1.524" y="-1.27" size="0.8128" layer="20" rot="R90">1</text>
<text x="13.97" y="-1.524" size="0.8128" layer="25" align="top-right">&gt;NAME</text>
<text x="-1.27" y="-1.524" size="0.8128" layer="27" align="top-left">&gt;VALUE</text>
</package>
<package name="RS232-6PIN">
<pad name="2" x="2.54" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="6" x="12.7" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="1" x="0" y="0" drill="0.9" diameter="1.778" shape="square" rot="R180"/>
<pad name="4" x="7.62" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="5" x="10.16" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="3" x="5.08" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<wire x1="13.97" y1="1.27" x2="13.97" y2="-1.27" width="0.127" layer="22"/>
<wire x1="13.97" y1="-1.27" x2="-1.27" y2="-1.27" width="0.127" layer="22"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="1.27" width="0.127" layer="22"/>
<wire x1="-1.27" y1="1.27" x2="13.97" y2="1.27" width="0.127" layer="22"/>
<text x="-1.905" y="0" size="0.8128" layer="23" rot="R180" align="bottom-center">1</text>
<text x="-1.27" y="2.54" size="1.016" layer="25" align="top-left">&gt;NAME</text>
<text x="13.97" y="2.54" size="1.016" layer="27" rot="R180">&gt;VALUE</text>
<text x="14.605" y="0" size="0.8128" layer="23" align="bottom-center">6</text>
<text x="0" y="-1.905" size="0.6096" layer="48" font="vector" align="center">TXD</text>
<text x="5.08" y="-1.905" size="0.6096" layer="48" font="vector" rot="R180" align="center">GND</text>
<text x="7.62" y="-1.905" size="0.6096" layer="48" font="vector" rot="R180" align="center">RTS</text>
<text x="10.16" y="-1.905" size="0.6096" layer="48" font="vector" rot="R180" align="center">CTS</text>
<text x="12.7" y="-1.905" size="0.6096" layer="48" font="vector" rot="R180" align="center">RXD</text>
<text x="2.54" y="-1.905" size="0.6096" layer="48" font="vector" align="center">DTR</text>
</package>
<package name="CONN-5P">
<pad name="5" x="10.16" y="0" drill="0.9" diameter="1.6764" shape="octagon" rot="R180"/>
<pad name="4" x="7.62" y="0" drill="0.9" diameter="1.6764" shape="octagon" rot="R180"/>
<pad name="3" x="5.08" y="0" drill="0.9" diameter="1.6764" shape="octagon" rot="R180"/>
<pad name="2" x="2.54" y="0" drill="0.9" diameter="1.6764" shape="octagon" rot="R180"/>
<pad name="1" x="0" y="0" drill="0.9" diameter="1.6764" shape="square" rot="R180"/>
<wire x1="-1.397" y1="1.397" x2="-1.397" y2="-1.397" width="0.127" layer="21"/>
<wire x1="-1.397" y1="-1.397" x2="11.557" y2="-1.397" width="0.127" layer="21"/>
<wire x1="11.557" y1="-1.397" x2="11.557" y2="1.397" width="0.127" layer="21"/>
<wire x1="11.557" y1="1.397" x2="-1.397" y2="1.397" width="0.127" layer="21"/>
<text x="-1.524" y="-1.524" size="1.27" layer="20" rot="R180">1</text>
<text x="-1.397" y="1.778" size="1.27" layer="25">&gt;NAME</text>
<text x="11.557" y="-1.778" size="1.27" layer="27" rot="R180">&gt;VALUE</text>
</package>
<package name="PIC-ICSP">
<pad name="4" x="2.54" y="0" drill="0.8" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="1" x="-5.08" y="0" drill="0.8" diameter="1.778" shape="square" rot="R180"/>
<pad name="2" x="-2.54" y="0" drill="0.8" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="3" x="0" y="0" drill="0.8" diameter="1.778" shape="octagon" rot="R180"/>
<wire x1="6.35" y1="1.27" x2="6.35" y2="-1.27" width="0.127" layer="22"/>
<wire x1="6.35" y1="-1.27" x2="-6.35" y2="-1.27" width="0.127" layer="22"/>
<wire x1="-6.35" y1="-1.27" x2="-6.35" y2="1.27" width="0.127" layer="22"/>
<wire x1="-6.35" y1="1.27" x2="6.35" y2="1.27" width="0.127" layer="22"/>
<text x="-7.62" y="0" size="0.6096" layer="23" align="top-left">1</text>
<text x="-6.35" y="-2.54" size="0.8128" layer="27">&gt;VALUE</text>
<text x="5.08" y="1.905" size="0.6096" layer="51" font="vector" align="center">PGD</text>
<text x="2.54" y="1.905" size="0.6096" layer="51" font="vector" align="center">PGC</text>
<text x="-5.08" y="1.905" size="0.6096" layer="51" font="vector" align="center">VSS</text>
<text x="-2.54" y="1.905" size="0.6096" layer="51" font="vector" align="center">VDD</text>
<pad name="5" x="5.08" y="0" drill="0.8" diameter="1.778" shape="octagon" rot="R180"/>
<text x="0" y="1.905" size="0.6096" layer="51" font="vector" align="center">VPP</text>
<text x="6.35" y="-2.54" size="0.8128" layer="25" rot="R180" align="top-left">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="RS232-6PIN">
<pin name="DTR" x="-10.16" y="2.54" length="short" direction="pas"/>
<pin name="RXD" x="-10.16" y="-7.62" length="short" direction="pas"/>
<pin name="TXD" x="-10.16" y="5.08" length="short" direction="pas"/>
<pin name="RTS" x="-10.16" y="-2.54" length="short" direction="pas"/>
<pin name="CTS" x="-10.16" y="-5.08" length="short" direction="pas"/>
<pin name="GND" x="-10.16" y="0" length="short" direction="pas"/>
<wire x1="-7.62" y1="-10.16" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="7.62" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="-7.62" y2="-10.16" width="0.254" layer="94"/>
<text x="0" y="5.715" size="1.27" layer="94" font="fixed" ratio="10" distance="100" align="top-left">Brown
Gray
Blue
Orange
Yellow
Red</text>
<text x="-7.62" y="10.16" size="1.778" layer="95" align="top-left">&gt;NAME</text>
<text x="-7.62" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="PIC-ICSP">
<pin name="VDD" x="-7.62" y="2.54" length="short" direction="pas"/>
<pin name="VSS" x="-7.62" y="5.08" length="short" direction="pas"/>
<pin name="PGC" x="-7.62" y="-2.54" length="short" direction="pas"/>
<pin name="PGD" x="-7.62" y="-5.08" length="short" direction="pas"/>
<wire x1="5.08" y1="7.62" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="-7.62" x2="5.08" y2="7.62" width="0.254" layer="94"/>
<text x="-5.08" y="10.16" size="1.778" layer="95" align="top-left">&gt;NAME</text>
<text x="-5.08" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="3.048" y="0" size="1.27" layer="97" font="fixed" rot="R270" align="center">PIC ICSP</text>
<pin name="MCLR" x="-7.62" y="0" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="COMPORT-6PIN" prefix="J">
<gates>
<gate name="1" symbol="RS232-6PIN" x="-6.35" y="-8.89"/>
</gates>
<devices>
<device name="-6P" package="CONN-6P">
<connects>
<connect gate="1" pin="CTS" pad="5"/>
<connect gate="1" pin="DTR" pad="2"/>
<connect gate="1" pin="GND" pad="3"/>
<connect gate="1" pin="RTS" pad="4"/>
<connect gate="1" pin="RXD" pad="6"/>
<connect gate="1" pin="TXD" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="" package="RS232-6PIN">
<connects>
<connect gate="1" pin="CTS" pad="5"/>
<connect gate="1" pin="DTR" pad="2"/>
<connect gate="1" pin="GND" pad="3"/>
<connect gate="1" pin="RTS" pad="4"/>
<connect gate="1" pin="RXD" pad="6"/>
<connect gate="1" pin="TXD" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PIC-ICSP">
<gates>
<gate name="G$1" symbol="PIC-ICSP" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="CONN-5P">
<connects>
<connect gate="G$1" pin="MCLR" pad="3"/>
<connect gate="G$1" pin="PGC" pad="4"/>
<connect gate="G$1" pin="PGD" pad="5"/>
<connect gate="G$1" pin="VDD" pad="2"/>
<connect gate="G$1" pin="VSS" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="ICSP" package="PIC-ICSP">
<connects>
<connect gate="G$1" pin="MCLR" pad="3"/>
<connect gate="G$1" pin="PGC" pad="4"/>
<connect gate="G$1" pin="PGD" pad="5"/>
<connect gate="G$1" pin="VDD" pad="2"/>
<connect gate="G$1" pin="VSS" pad="1"/>
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
<package name="DO34-7">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
 diameter 1.8 mm, horizontal, grid 7.62 mm</description>
<pad name="C" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="A" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<wire x1="3.81" y1="0" x2="3.175" y2="0" width="0.127" layer="21"/>
<text x="1.651" y="-0.762" size="0.6096" layer="25" ratio="10" rot="R180" align="bottom-right">&gt;NAME</text>
<text x="0" y="0.73025" size="0.4064" layer="27" ratio="10" rot="R180" align="top-center">&gt;VALUE</text>
<rectangle x1="1.3208" y1="-0.1016" x2="3.1496" y2="0.1016" layer="21" rot="R180"/>
<wire x1="-1.27" y1="0.127" x2="-0.762" y2="0.635" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.127" x2="-0.762" y2="-0.635" width="0.1016" layer="21" curve="90"/>
<wire x1="0.762" y1="-0.635" x2="1.27" y2="-0.127" width="0.1016" layer="21" curve="90"/>
<wire x1="0.762" y1="0.635" x2="1.27" y2="0.127" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="0.127" width="0.1016" layer="21"/>
<wire x1="0.762" y1="0.635" x2="-0.762" y2="0.635" width="0.1016" layer="21"/>
<wire x1="0.762" y1="-0.635" x2="-0.762" y2="-0.635" width="0.1016" layer="21"/>
<wire x1="1.27" y1="-0.127" x2="1.27" y2="0.127" width="0.1016" layer="21"/>
<wire x1="-0.3175" y1="0" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="0.635" y1="0.381" x2="0.635" y2="-0.381" width="0.0762" layer="21"/>
<wire x1="0.635" y1="-0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="0.889" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="0.635" y2="0.381" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="-0.0635" y2="-0.381" width="0.0762" layer="21"/>
<rectangle x1="-1.3335" y1="-0.127" x2="-0.0635" y2="0.127" layer="21" rot="R270"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.127" layer="21"/>
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
<wire x1="-0.635" y1="0" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.635" x2="1.016" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.1524" layer="21"/>
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
<wire x1="-0.635" y1="0" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.635" x2="1.016" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.1524" layer="21"/>
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
<wire x1="-0.1905" y1="0" x2="0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.508" x2="1.143" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.508" x2="0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="1.7145" y2="0" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="1.143" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="0.381" y2="-0.4445" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0.508" x2="0.381" y2="0" width="0.1524" layer="21"/>
<pad name="C" x="-1.27" y="0" drill="0.6" diameter="1.4224"/>
<text x="-2.159" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<pad name="A" x="1.27" y="0" drill="0.6" diameter="1.4224"/>
<circle x="0.8255" y="0" radius="1.016" width="0.2032" layer="21"/>
<wire x1="-0.3175" y1="0" x2="-1.27" y2="0" width="0.4064" layer="21"/>
</package>
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
<package name="DO34-5">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
 diameter 1.8 mm, horizontal, grid 5.08 mm</description>
<pad name="C" x="-2.54" y="0" drill="0.8128" shape="octagon"/>
<pad name="A" x="2.54" y="0" drill="0.8128" shape="octagon"/>
<wire x1="2.54" y1="0" x2="1.905" y2="0" width="0.127" layer="21"/>
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
<wire x1="-0.3175" y1="0" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="0.635" y1="0.381" x2="0.635" y2="-0.381" width="0.0762" layer="21"/>
<wire x1="0.635" y1="-0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="0.889" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="0.635" y2="0.381" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="-0.0635" y2="-0.381" width="0.0762" layer="21"/>
<rectangle x1="-1.3335" y1="-0.127" x2="-0.0635" y2="0.127" layer="21" rot="R270"/>
<wire x1="-2.54" y1="0" x2="-1.905" y2="0" width="0.127" layer="21"/>
<rectangle x1="-1.8796" y1="-0.1016" x2="-1.3208" y2="0.1016" layer="21"/>
<rectangle x1="1.3208" y1="-0.1016" x2="1.8796" y2="0.1016" layer="21" rot="R180"/>
</package>
<package name="DO34-2,5">
<wire x1="-0.1905" y1="0" x2="0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.508" x2="1.143" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.508" x2="0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="1.7145" y2="0" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="1.143" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="0.381" y2="-0.4445" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0.508" x2="0.381" y2="0" width="0.1524" layer="21"/>
<pad name="C" x="-1.27" y="0" drill="0.6" diameter="1.4224"/>
<text x="-2.159" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<pad name="A" x="1.27" y="0" drill="0.6" diameter="1.4224"/>
<circle x="0.8255" y="0" radius="1.016" width="0.2032" layer="21"/>
<wire x1="-0.3175" y1="0" x2="-1.27" y2="0" width="0.4064" layer="21"/>
</package>
<package name="DO34-2,5-A">
<wire x1="0.5715" y1="0" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="0.508" x2="-0.127" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="-0.508" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-0.127" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-0.889" y2="-0.4445" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0.508" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<pad name="A" x="1.27" y="0" drill="0.6" diameter="1.4224" rot="R180"/>
<text x="0" y="1.397" size="0.8128" layer="25" ratio="10" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.397" size="0.8128" layer="27" ratio="10" align="top-center">&gt;VALUE</text>
<pad name="C" x="-1.27" y="0" drill="0.6" diameter="1.4224"/>
<circle x="-0.4445" y="0" radius="1.016" width="0.1524" layer="21"/>
<wire x1="0.6985" y1="0" x2="1.27" y2="0" width="0.3048" layer="21"/>
</package>
<package name="DO35Z10">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
 diameter 2 mm, horizontal, grid 10.16mm</description>
<wire x1="5.08" y1="0" x2="4.191" y2="0" width="0.508" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.191" y2="0" width="0.508" layer="51"/>
<wire x1="-0.635" y1="0" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.635" x2="1.016" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="2.032" y1="1.016" x2="2.286" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.286" y1="0.762" x2="-2.032" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.286" y1="-0.762" x2="-2.032" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.032" y1="-1.016" x2="2.286" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="0.762" x2="2.286" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0.762" x2="-2.286" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="1.016" x2="2.032" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-1.016" x2="2.032" y2="-1.016" width="0.1524" layer="21"/>
<pad name="C" x="-5.08" y="0" drill="0.7" diameter="1.4224"/>
<pad name="A" x="5.08" y="0" drill="0.7" diameter="1.4224"/>
<text x="-2.286" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-2.54" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.905" y1="-1.016" x2="-1.397" y2="1.016" layer="21"/>
<rectangle x1="2.286" y1="-0.254" x2="4.191" y2="0.254" layer="21"/>
<rectangle x1="-4.191" y1="-0.254" x2="-2.286" y2="0.254" layer="21"/>
</package>
<package name="DO35Z7">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
 diameter 2 mm, horizontal, grid 7.62 mm</description>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-0.635" y1="0" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.635" x2="1.016" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="2.032" y1="1.016" x2="2.286" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.286" y1="0.762" x2="-2.032" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.286" y1="-0.762" x2="-2.032" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.032" y1="-1.016" x2="2.286" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="0.762" x2="2.286" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0.762" x2="-2.286" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="1.016" x2="2.032" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-1.016" x2="2.032" y2="-1.016" width="0.1524" layer="21"/>
<pad name="C" x="-3.81" y="0" drill="0.7" diameter="1.4224"/>
<pad name="A" x="3.81" y="0" drill="0.7" diameter="1.4224"/>
<text x="-2.159" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.905" y1="-1.016" x2="-1.397" y2="1.016" layer="21"/>
<rectangle x1="2.286" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.286" y2="0.254" layer="21"/>
</package>
<package name="DO35Z5">
<wire x1="-0.635" y1="0" x2="-0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.508" y1="0.381" x2="0.508" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="0.508" y1="-0.381" x2="-0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="0" x2="1.016" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="0" x2="0.508" y2="0.381" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="0" y1="0.381" x2="-0.254" y2="0.381" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="0.381" x2="-0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.762" x2="1.397" y2="0.508" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.397" y1="0.508" x2="-1.143" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.397" y1="-0.508" x2="-1.143" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="1.143" y1="-0.762" x2="1.397" y2="-0.508" width="0.1524" layer="21" curve="90"/>
<wire x1="1.397" y1="0.508" x2="1.397" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="0.508" x2="-1.397" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0.762" x2="1.143" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.762" x2="1.143" y2="-0.762" width="0.1524" layer="21"/>
<pad name="C" x="-2.54" y="0" drill="0.6" diameter="1.4224"/>
<text x="-2.159" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.016" y1="-0.762" x2="-0.762" y2="0.762" layer="21"/>
<pad name="A" x="2.54" y="0" drill="0.6" diameter="1.4224"/>
<wire x1="-2.54" y1="0" x2="-1.524" y2="0" width="0.4064" layer="21"/>
<wire x1="2.54" y1="0" x2="1.524" y2="0" width="0.4064" layer="21"/>
</package>
<package name="DO35Z2_54">
<wire x1="-0.635" y1="0" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.635" x2="1.016" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<pad name="C" x="-1.27" y="0" drill="0.6" diameter="1.4224"/>
<text x="-2.159" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<pad name="A" x="1.27" y="0" drill="0.6" diameter="1.4224"/>
<circle x="0.635" y="0" radius="1.27" width="0.254" layer="21"/>
</package>
<package name="DO35Z2_54A">
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
<wire x1="-1.397" y1="0.635" x2="-1.651" y2="0.635" width="0.1524" layer="22"/>
</package>
<package name="DO34Z2,5">
<wire x1="-0.1905" y1="0" x2="0.254" y2="0" width="0.127" layer="21"/>
<wire x1="1.143" y1="0.508" x2="1.143" y2="-0.508" width="0.127" layer="21"/>
<wire x1="1.143" y1="-0.508" x2="0.254" y2="0" width="0.127" layer="21"/>
<wire x1="0.254" y1="0" x2="1.7145" y2="0" width="0.127" layer="21"/>
<wire x1="0.254" y1="0" x2="1.143" y2="0.508" width="0.127" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.4445" width="0.127" layer="21"/>
<wire x1="0.254" y1="0.4445" x2="0.254" y2="0" width="0.127" layer="21"/>
<pad name="C" x="-1.27" y="0" drill="0.6" diameter="1.4224"/>
<text x="-2.159" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<pad name="A" x="1.27" y="0" drill="0.6" diameter="1.4224"/>
<circle x="0.8255" y="0" radius="1.016" width="0.127" layer="21"/>
<wire x1="-0.3175" y1="0" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="0.254" y1="0.4445" x2="0.5715" y2="0.635" width="0.127" layer="21"/>
</package>
<package name="DO34Z2,5-A">
<wire x1="-0.889" y1="0" x2="-1.27" y2="0" width="0.1524" layer="21"/>
<pad name="A" x="1.27" y="0" drill="0.6" diameter="1.4224" rot="R180"/>
<text x="0" y="1.397" size="0.8128" layer="25" ratio="10" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.397" size="0.8128" layer="27" ratio="10" align="top-center">&gt;VALUE</text>
<pad name="C" x="-1.27" y="0" drill="0.6" diameter="1.4224"/>
<wire x1="0.6985" y1="0" x2="1.27" y2="0" width="0.3048" layer="21"/>
<wire x1="-1.4605" y1="0" x2="-1.016" y2="0" width="0.127" layer="21"/>
<wire x1="-0.127" y1="0.508" x2="-0.127" y2="-0.508" width="0.127" layer="21"/>
<wire x1="-0.127" y1="-0.508" x2="-1.016" y2="0" width="0.127" layer="21"/>
<wire x1="-1.016" y1="0" x2="0.4445" y2="0" width="0.127" layer="21"/>
<wire x1="-1.016" y1="0" x2="-0.127" y2="0.508" width="0.127" layer="21"/>
<wire x1="-1.016" y1="0" x2="-1.016" y2="-0.4445" width="0.127" layer="21"/>
<wire x1="-1.016" y1="0.4445" x2="-1.016" y2="0" width="0.127" layer="21"/>
<circle x="-0.4445" y="0" radius="1.016" width="0.127" layer="21"/>
<wire x1="-1.016" y1="0.4445" x2="-0.6985" y2="0.635" width="0.127" layer="21"/>
</package>
<package name="DO34-12">
<pad name="C" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="A" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<wire x1="6.35" y1="0" x2="5.715" y2="0" width="0.127" layer="21"/>
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
<wire x1="-0.3175" y1="0" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="0.635" y1="0.381" x2="0.635" y2="-0.381" width="0.0762" layer="21"/>
<wire x1="0.635" y1="-0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="0.889" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="0.635" y2="0.381" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="-0.0635" y2="-0.381" width="0.0762" layer="21"/>
<rectangle x1="-1.3335" y1="-0.127" x2="-0.0635" y2="0.127" layer="21" rot="R270"/>
<wire x1="-6.35" y1="0" x2="-5.715" y2="0" width="0.127" layer="21"/>
<rectangle x1="-5.6896" y1="-0.1016" x2="-1.3208" y2="0.1016" layer="21"/>
<rectangle x1="1.3208" y1="-0.1016" x2="5.6896" y2="0.1016" layer="21" rot="R180"/>
</package>
<package name="DO34-10">
<pad name="C" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="A" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<wire x1="5.08" y1="0" x2="4.445" y2="0" width="0.127" layer="21"/>
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
<wire x1="-0.3175" y1="0" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="0.635" y1="0.381" x2="0.635" y2="-0.381" width="0.0762" layer="21"/>
<wire x1="0.635" y1="-0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="0.889" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="0.635" y2="0.381" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="-0.0635" y2="-0.381" width="0.0762" layer="21"/>
<rectangle x1="-1.3335" y1="-0.127" x2="-0.0635" y2="0.127" layer="21" rot="R270"/>
<wire x1="-5.08" y1="0" x2="-4.445" y2="0" width="0.127" layer="21"/>
<rectangle x1="-4.4196" y1="-0.1016" x2="-1.3208" y2="0.1016" layer="21"/>
</package>
<package name="DO34Z12">
<pad name="C1" x="-6.35" y="0" drill="0.8128" shape="octagon"/>
<pad name="A1" x="6.35" y="0" drill="0.8128" shape="octagon"/>
<wire x1="6.35" y1="0" x2="5.715" y2="0" width="0.127" layer="21"/>
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
<wire x1="-0.3175" y1="0" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="0.635" y1="0.381" x2="0.635" y2="-0.381" width="0.0762" layer="21"/>
<wire x1="0.635" y1="-0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="0.889" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="0.635" y2="0.381" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="-0.0635" y2="-0.381" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0.381" x2="0.254" y2="0.381" width="0.0762" layer="21"/>
<rectangle x1="-1.3335" y1="-0.127" x2="-0.0635" y2="0.127" layer="21" rot="R270"/>
<wire x1="-6.35" y1="0" x2="-5.715" y2="0" width="0.127" layer="21"/>
<rectangle x1="-5.6896" y1="-0.1016" x2="-1.3208" y2="0.1016" layer="21"/>
<rectangle x1="1.3208" y1="-0.1016" x2="5.6896" y2="0.1016" layer="21" rot="R180"/>
</package>
<package name="DO34Z5">
<wire x1="-2.54" y1="0" x2="-1.651" y2="0" width="0.127" layer="21"/>
<wire x1="2.54" y1="0" x2="1.651" y2="0" width="0.127" layer="21"/>
<pad name="C" x="2.54" y="0" drill="0.8128" shape="octagon" rot="R180"/>
<pad name="A" x="-2.54" y="0" drill="0.8128" shape="octagon" rot="R180"/>
<text x="-1.651" y="0.762" size="0.6096" layer="25" ratio="10" align="bottom-right">&gt;NAME</text>
<text x="0" y="-0.73025" size="0.4064" layer="27" ratio="10" align="top-center">&gt;VALUE</text>
<rectangle x1="-1.7145" y1="-0.1016" x2="-1.3208" y2="0.1016" layer="21"/>
<wire x1="1.27" y1="-0.127" x2="0.762" y2="-0.635" width="0.1016" layer="21" curve="-90"/>
<wire x1="1.27" y1="0.127" x2="0.762" y2="0.635" width="0.1016" layer="21" curve="90"/>
<wire x1="-0.762" y1="0.635" x2="-1.27" y2="0.127" width="0.1016" layer="21" curve="90"/>
<wire x1="-0.762" y1="-0.635" x2="-1.27" y2="-0.127" width="0.1016" layer="21" curve="-90"/>
<wire x1="1.27" y1="0.127" x2="1.27" y2="-0.127" width="0.1016" layer="21"/>
<wire x1="-0.762" y1="-0.635" x2="0.762" y2="-0.635" width="0.1016" layer="21"/>
<wire x1="-0.762" y1="0.635" x2="0.762" y2="0.635" width="0.1016" layer="21"/>
<wire x1="-1.27" y1="0.127" x2="-1.27" y2="-0.127" width="0.1016" layer="21"/>
<wire x1="0.3175" y1="0" x2="0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.635" y1="-0.381" x2="-0.635" y2="0.381" width="0.0762" layer="21"/>
<wire x1="-0.635" y1="0.381" x2="0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="0.0635" y1="0" x2="-0.889" y2="0" width="0.0762" layer="21"/>
<wire x1="0.0635" y1="0" x2="-0.635" y2="-0.381" width="0.0762" layer="21"/>
<wire x1="0.0635" y1="-0.381" x2="0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="0.0635" y1="0" x2="0.0635" y2="0.381" width="0.0762" layer="21"/>
<wire x1="0.0635" y1="-0.381" x2="-0.254" y2="-0.381" width="0.0762" layer="21"/>
<rectangle x1="0.0635" y1="-0.127" x2="1.3335" y2="0.127" layer="21" rot="R90"/>
<rectangle x1="1.3208" y1="-0.1016" x2="1.7145" y2="0.1016" layer="21" rot="R180"/>
</package>
<package name="DO34Z10">
<wire x1="-5.08" y1="0" x2="-4.445" y2="0" width="0.127" layer="21"/>
<pad name="C" x="5.08" y="0" drill="0.8128" shape="octagon" rot="R180"/>
<pad name="A" x="-5.08" y="0" drill="0.8128" shape="octagon" rot="R180"/>
<text x="-1.651" y="0.762" size="0.6096" layer="25" ratio="10" align="bottom-right">&gt;NAME</text>
<text x="0" y="-0.73025" size="0.4064" layer="27" ratio="10" align="top-center">&gt;VALUE</text>
<rectangle x1="-4.4196" y1="-0.1016" x2="-1.3208" y2="0.1016" layer="21"/>
<wire x1="1.27" y1="-0.127" x2="0.762" y2="-0.635" width="0.1016" layer="21" curve="-90"/>
<wire x1="1.27" y1="0.127" x2="0.762" y2="0.635" width="0.1016" layer="21" curve="90"/>
<wire x1="-0.762" y1="0.635" x2="-1.27" y2="0.127" width="0.1016" layer="21" curve="90"/>
<wire x1="-0.762" y1="-0.635" x2="-1.27" y2="-0.127" width="0.1016" layer="21" curve="-90"/>
<wire x1="1.27" y1="0.127" x2="1.27" y2="-0.127" width="0.1016" layer="21"/>
<wire x1="-0.762" y1="-0.635" x2="0.762" y2="-0.635" width="0.1016" layer="21"/>
<wire x1="-0.762" y1="0.635" x2="0.762" y2="0.635" width="0.1016" layer="21"/>
<wire x1="-1.27" y1="0.127" x2="-1.27" y2="-0.127" width="0.1016" layer="21"/>
<wire x1="0.3175" y1="0" x2="0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.635" y1="-0.381" x2="-0.635" y2="0.381" width="0.0762" layer="21"/>
<wire x1="-0.635" y1="0.381" x2="0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="0.0635" y1="0" x2="-0.889" y2="0" width="0.0762" layer="21"/>
<wire x1="0.0635" y1="0" x2="-0.635" y2="-0.381" width="0.0762" layer="21"/>
<wire x1="0.0635" y1="-0.381" x2="0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="0.0635" y1="0" x2="0.0635" y2="0.381" width="0.0762" layer="21"/>
<wire x1="0.0635" y1="-0.381" x2="-0.254" y2="-0.381" width="0.0762" layer="21"/>
<rectangle x1="0.0635" y1="-0.127" x2="1.3335" y2="0.127" layer="21" rot="R90"/>
<wire x1="5.08" y1="0" x2="4.445" y2="0" width="0.127" layer="21"/>
<rectangle x1="1.3208" y1="-0.1016" x2="4.4196" y2="0.1016" layer="21" rot="R180"/>
</package>
<package name="DO34-7V">
<pad name="C" x="0" y="-3.81" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="A" x="0" y="3.81" drill="0.8128" shape="octagon" rot="R90"/>
<wire x1="0" y1="3.81" x2="0" y2="3.175" width="0.127" layer="21"/>
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
<wire x1="0" y1="-0.3175" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="0.635" x2="0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="0.381" y1="0.635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0" y2="0.889" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="-0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="-0.0635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0.381" y2="-0.0635" width="0.0762" layer="21"/>
<rectangle x1="-0.635" y1="-0.8255" x2="0.635" y2="-0.5715" layer="21"/>
<wire x1="0" y1="-3.81" x2="0" y2="-3.175" width="0.127" layer="21"/>
<rectangle x1="-0.9144" y1="-2.3368" x2="0.9144" y2="-2.1336" layer="21" rot="R90"/>
</package>
<package name="DO34-5V">
<pad name="C" x="0" y="-2.54" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="A" x="0" y="2.54" drill="0.8128" shape="octagon" rot="R90"/>
<wire x1="0" y1="2.54" x2="0" y2="1.905" width="0.127" layer="21"/>
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
<wire x1="0" y1="-0.3175" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="0.635" x2="0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="0.381" y1="0.635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0" y2="0.889" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="-0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="-0.0635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0.381" y2="-0.0635" width="0.0762" layer="21"/>
<rectangle x1="-0.635" y1="-0.8255" x2="0.635" y2="-0.5715" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.905" width="0.127" layer="21"/>
<rectangle x1="-0.2794" y1="-1.7018" x2="0.2794" y2="-1.4986" layer="21" rot="R90"/>
<rectangle x1="-0.2794" y1="1.4986" x2="0.2794" y2="1.7018" layer="21" rot="R270"/>
</package>
<package name="DO34-10V">
<pad name="C" x="0" y="-5.08" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="A" x="0" y="5.08" drill="0.8128" shape="octagon" rot="R90"/>
<wire x1="0" y1="5.08" x2="0" y2="4.445" width="0.127" layer="21"/>
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
<wire x1="0" y1="-0.3175" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="0.635" x2="0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="0.381" y1="0.635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0" y2="0.889" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="-0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="-0.0635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0.381" y2="-0.0635" width="0.0762" layer="21"/>
<rectangle x1="-0.635" y1="-0.8255" x2="0.635" y2="-0.5715" layer="21"/>
<wire x1="0" y1="-5.08" x2="0" y2="-4.445" width="0.127" layer="21"/>
<rectangle x1="-1.5494" y1="-2.9718" x2="1.5494" y2="-2.7686" layer="21" rot="R90"/>
</package>
<package name="DO34Z7V">
<wire x1="0" y1="3.81" x2="0" y2="2.921" width="0.127" layer="51"/>
<wire x1="0" y1="-3.81" x2="0" y2="-2.921" width="0.127" layer="51"/>
<pad name="C" x="0" y="-3.81" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="A" x="0" y="3.81" drill="0.8128" shape="octagon" rot="R90"/>
<text x="0.254" y="1.778" size="0.6096" layer="25" ratio="10">&gt;NAME</text>
<text x="0.254" y="-1.905" size="0.4064" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
<rectangle x1="-0.92075" y1="-2.35585" x2="0.92075" y2="-2.15265" layer="21" rot="R90"/>
<wire x1="-0.127" y1="-1.27" x2="-0.635" y2="-0.762" width="0.1016" layer="21" curve="-90"/>
<wire x1="0.127" y1="-1.27" x2="0.635" y2="-0.762" width="0.1016" layer="21" curve="90"/>
<wire x1="0.635" y1="0.762" x2="0.127" y2="1.27" width="0.1016" layer="21" curve="90"/>
<wire x1="-0.635" y1="0.762" x2="-0.127" y2="1.27" width="0.1016" layer="21" curve="-90"/>
<wire x1="0.127" y1="-1.27" x2="-0.127" y2="-1.27" width="0.1016" layer="21"/>
<wire x1="-0.635" y1="0.762" x2="-0.635" y2="-0.762" width="0.1016" layer="21"/>
<wire x1="0.635" y1="0.762" x2="0.635" y2="-0.762" width="0.1016" layer="21"/>
<wire x1="0.127" y1="1.27" x2="-0.127" y2="1.27" width="0.1016" layer="21"/>
<wire x1="0" y1="-0.3175" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="0.635" x2="0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="0.381" y1="0.635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0" y2="0.889" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="-0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="-0.0635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0.381" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="-0.0635" x2="-0.381" y2="0.254" width="0.0762" layer="21"/>
<rectangle x1="-0.635" y1="-0.8255" x2="0.635" y2="-0.5715" layer="21"/>
<rectangle x1="-0.92075" y1="2.15265" x2="0.92075" y2="2.35585" layer="21" rot="R270"/>
</package>
<package name="DO34Z10V">
<wire x1="0" y1="5.08" x2="0" y2="4.191" width="0.127" layer="51"/>
<wire x1="0" y1="-5.08" x2="0" y2="-4.191" width="0.127" layer="51"/>
<pad name="C" x="0" y="-5.08" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="A" x="0" y="5.08" drill="0.8128" shape="octagon" rot="R90"/>
<text x="0.254" y="1.778" size="0.8128" layer="25" ratio="10">&gt;NAME</text>
<text x="0.254" y="-1.905" size="0.6096" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
<wire x1="-0.127" y1="-1.27" x2="-0.635" y2="-0.762" width="0.1016" layer="21" curve="-90"/>
<wire x1="0.127" y1="-1.27" x2="0.635" y2="-0.762" width="0.1016" layer="21" curve="90"/>
<wire x1="0.635" y1="0.762" x2="0.127" y2="1.27" width="0.1016" layer="21" curve="90"/>
<wire x1="-0.635" y1="0.762" x2="-0.127" y2="1.27" width="0.1016" layer="21" curve="-90"/>
<wire x1="0.127" y1="-1.27" x2="-0.127" y2="-1.27" width="0.1016" layer="21"/>
<wire x1="-0.635" y1="0.762" x2="-0.635" y2="-0.762" width="0.1016" layer="21"/>
<wire x1="0.635" y1="0.762" x2="0.635" y2="-0.762" width="0.1016" layer="21"/>
<wire x1="0.127" y1="1.27" x2="-0.127" y2="1.27" width="0.1016" layer="21"/>
<wire x1="0" y1="-0.3175" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="0.635" x2="0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="0.381" y1="0.635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0" y2="0.889" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="-0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="-0.0635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0.381" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="-0.0635" x2="-0.381" y2="0.254" width="0.0762" layer="21"/>
<rectangle x1="-0.635" y1="-0.8255" x2="0.635" y2="-0.5715" layer="21"/>
<rectangle x1="-0.127" y1="1.27" x2="0.0762" y2="4.6736" layer="21"/>
<rectangle x1="-0.0762" y1="-4.6736" x2="0.127" y2="-1.27" layer="21" rot="R180"/>
</package>
<package name="DO34Z12V">
<wire x1="0" y1="6.35" x2="0" y2="5.461" width="0.127" layer="51"/>
<wire x1="0" y1="-6.35" x2="0" y2="-5.461" width="0.127" layer="51"/>
<pad name="C" x="0" y="-6.35" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="A" x="0" y="6.35" drill="0.8128" shape="octagon" rot="R90"/>
<text x="0.254" y="1.778" size="0.8128" layer="25" ratio="10">&gt;NAME</text>
<text x="0.254" y="-1.905" size="0.6096" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
<wire x1="-0.127" y1="-1.27" x2="-0.635" y2="-0.762" width="0.1016" layer="21" curve="-90"/>
<wire x1="0.127" y1="-1.27" x2="0.635" y2="-0.762" width="0.1016" layer="21" curve="90"/>
<wire x1="0.635" y1="0.762" x2="0.127" y2="1.27" width="0.1016" layer="21" curve="90"/>
<wire x1="-0.635" y1="0.762" x2="-0.127" y2="1.27" width="0.1016" layer="21" curve="-90"/>
<wire x1="0.127" y1="-1.27" x2="-0.127" y2="-1.27" width="0.1016" layer="21"/>
<wire x1="-0.635" y1="0.762" x2="-0.635" y2="-0.762" width="0.1016" layer="21"/>
<wire x1="0.635" y1="0.762" x2="0.635" y2="-0.762" width="0.1016" layer="21"/>
<wire x1="0.127" y1="1.27" x2="-0.127" y2="1.27" width="0.1016" layer="21"/>
<wire x1="0" y1="-0.3175" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="0.635" x2="0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="0.381" y1="0.635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0" y2="0.889" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="-0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="-0.0635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0.381" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="-0.0635" x2="-0.381" y2="0.254" width="0.0762" layer="21"/>
<rectangle x1="-0.635" y1="-0.8255" x2="0.635" y2="-0.5715" layer="21"/>
<rectangle x1="-0.127" y1="1.27" x2="0.0762" y2="5.9436" layer="21"/>
<rectangle x1="-0.0762" y1="-5.9436" x2="0.127" y2="-1.27" layer="21" rot="R180"/>
</package>
<package name="DO34-12V">
<pad name="C" x="0" y="-6.35" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="A" x="0" y="6.35" drill="0.8128" shape="octagon" rot="R90"/>
<wire x1="0" y1="6.35" x2="0" y2="5.715" width="0.127" layer="21"/>
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
<wire x1="0" y1="-0.3175" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="0.635" x2="0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="0.381" y1="0.635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0" y2="0.889" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="-0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="-0.0635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0.381" y2="-0.0635" width="0.0762" layer="21"/>
<rectangle x1="-0.635" y1="-0.8255" x2="0.635" y2="-0.5715" layer="21"/>
<wire x1="0" y1="-6.35" x2="0" y2="-5.715" width="0.127" layer="21"/>
<rectangle x1="-0.0762" y1="-5.715" x2="0.0762" y2="-1.2192" layer="21"/>
<rectangle x1="-0.0762" y1="1.2192" x2="0.0762" y2="5.715" layer="21" rot="R180"/>
</package>
<package name="DO34Z7">
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.127" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.127" layer="51"/>
<pad name="C" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="A" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-1.397" y="0.3937" size="0.6096" layer="25" ratio="10" align="bottom-right">&gt;NAME</text>
<text x="0.3175" y="-0.8382" size="0.6096" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
<rectangle x1="-3.175" y1="-0.1016" x2="-1.3335" y2="0.1016" layer="21"/>
<wire x1="-1.27" y1="0.127" x2="-0.762" y2="0.635" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.127" x2="-0.762" y2="-0.635" width="0.1016" layer="21" curve="90"/>
<wire x1="0.762" y1="-0.635" x2="1.27" y2="-0.127" width="0.1016" layer="21" curve="90"/>
<wire x1="0.762" y1="0.635" x2="1.27" y2="0.127" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="0.127" width="0.1016" layer="21"/>
<wire x1="0.762" y1="0.635" x2="-0.762" y2="0.635" width="0.1016" layer="21"/>
<wire x1="0.762" y1="-0.635" x2="-0.762" y2="-0.635" width="0.1016" layer="21"/>
<wire x1="1.27" y1="-0.127" x2="1.27" y2="0.127" width="0.1016" layer="21"/>
<wire x1="-0.3175" y1="0" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="0.635" y1="0.381" x2="0.635" y2="-0.381" width="0.0762" layer="21"/>
<wire x1="0.635" y1="-0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="0.889" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="0.635" y2="0.381" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0.381" x2="-0.0635" y2="0" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0" x2="-0.0635" y2="-0.381" width="0.0762" layer="21"/>
<wire x1="-0.0635" y1="0.381" x2="0.254" y2="0.381" width="0.0762" layer="21"/>
<rectangle x1="-1.3335" y1="-0.127" x2="-0.0635" y2="0.127" layer="21" rot="R270"/>
<rectangle x1="1.3335" y1="-0.1016" x2="3.175" y2="0.1016" layer="21" rot="R180"/>
</package>
<package name="DO34Z5V">
<wire x1="0" y1="2.54" x2="0" y2="1.905" width="0.127" layer="51"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.905" width="0.127" layer="51"/>
<pad name="C" x="0" y="-2.54" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="A" x="0" y="2.54" drill="0.8128" shape="octagon" rot="R90"/>
<text x="0.381" y="1.3335" size="0.8128" layer="25" ratio="10">&gt;NAME</text>
<text x="0.381" y="-1.3335" size="0.6096" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
<wire x1="-0.127" y1="-1.27" x2="-0.635" y2="-0.762" width="0.1016" layer="21" curve="-90"/>
<wire x1="0.127" y1="-1.27" x2="0.635" y2="-0.762" width="0.1016" layer="21" curve="90"/>
<wire x1="0.635" y1="0.762" x2="0.127" y2="1.27" width="0.1016" layer="21" curve="90"/>
<wire x1="-0.635" y1="0.762" x2="-0.127" y2="1.27" width="0.1016" layer="21" curve="-90"/>
<wire x1="0.127" y1="-1.27" x2="-0.127" y2="-1.27" width="0.1016" layer="21"/>
<wire x1="-0.635" y1="0.762" x2="-0.635" y2="-0.762" width="0.1016" layer="21"/>
<wire x1="0.635" y1="0.762" x2="0.635" y2="-0.762" width="0.1016" layer="21"/>
<wire x1="0.127" y1="1.27" x2="-0.127" y2="1.27" width="0.1016" layer="21"/>
<wire x1="0" y1="-0.3175" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="0.635" x2="0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="0.381" y1="0.635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0" y2="0.889" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="-0.381" y2="0.635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="-0.0635" x2="0" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="-0.0635" x2="0.381" y2="-0.0635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="-0.0635" x2="-0.381" y2="0.254" width="0.0762" layer="21"/>
<rectangle x1="-0.635" y1="-0.8255" x2="0.635" y2="-0.5715" layer="21"/>
<rectangle x1="-0.127" y1="1.27" x2="0.127" y2="1.905" layer="21"/>
<rectangle x1="-0.127" y1="-1.905" x2="0.127" y2="-1.27" layer="21" rot="R180"/>
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
<symbol name="ZD">
<pin name="A" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="C" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<text x="-2.54" y="0" size="1.778" layer="95" align="bottom-right">&gt;NAME</text>
<text x="-2.54" y="-2.286" size="1.778" layer="96" align="bottom-right">&gt;VALUE</text>
<wire x1="1.27" y1="-1.27" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="0.508" x2="1.27" y2="1.27" width="0.254" layer="94"/>
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
<deviceset name="Z-DIODE" prefix="D">
<gates>
<gate name="G$1" symbol="ZD" x="0" y="0"/>
</gates>
<devices>
<device name="Z10" package="DO35Z10">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="Z7" package="DO35Z7">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="Z5" package="DO35Z5">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="Z2_54" package="DO35Z2_54">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="Z2_54A" package="DO35Z2_54A">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="Z12" package="DO34Z12">
<connects>
<connect gate="G$1" pin="A" pad="A1"/>
<connect gate="G$1" pin="C" pad="C1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34Z7" package="DO34Z7">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34Z5" package="DO34Z5">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34Z2,5" package="DO34Z2,5">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34Z2,5-A" package="DO34Z2,5-A">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34Z10" package="DO34Z10">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34Z7V" package="DO34Z7V">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34Z10V" package="DO34Z10V">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34Z12V" package="DO34Z12V">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34Z5V" package="DO34Z5V">
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
<library name="c">
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
 http://www.secc.co.jp/pdf/os_e/2004/e_os_all.pdf &lt;b&gt;(SANYO)&lt;/b&gt;
 &lt;p&gt;
 for trimmer refence see : &lt;u&gt;www.electrospec-inc.com/cross_references/trimpotcrossref.asp&lt;/u&gt;&lt;p&gt;
 
 &lt;table border=0 cellspacing=0 cellpadding=0 width="100%" cellpaddding=0&gt;
 &lt;tr valign="top"&gt;
 
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
 &lt;/table&gt;</description>
<packages>
<package name="E2,5-4">
<wire x1="2.4765" y1="1.27" x2="2.286" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.4605" x2="2.286" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.27" x2="2.0955" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.27" x2="2.286" y2="1.0795" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0" x2="1.8542" y2="0" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="0" x2="1.8542" y2="0.889" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="0.889" x2="1.4732" y2="0.889" width="0.1524" layer="51"/>
<wire x1="1.4732" y1="0.889" x2="1.4732" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.4732" y1="-0.889" x2="1.8542" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="-0.889" x2="1.8542" y2="0" width="0.1524" layer="51"/>
<circle x="1.27" y="0" radius="2.032" width="0.1524" layer="21"/>
<pad name="-" x="0" y="0" drill="0.8128" diameter="1.6002" shape="octagon" rot="R180"/>
<pad name="+" x="2.54" y="0" drill="0.8128" diameter="1.6002" rot="R180"/>
<text x="-0.381" y="1.524" size="0.8128" layer="25" align="bottom-right">&gt;NAME</text>
<text x="1.905" y="-2.0955" size="0.6096" layer="27" align="top-left">&gt;VALUE</text>
<wire x1="0" y1="0" x2="0.6858" y2="0" width="0.1524" layer="51"/>
<wire x1="0.6858" y1="0" x2="0.6858" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="0.6858" y1="-0.889" x2="1.0668" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.0668" y1="-0.889" x2="1.0668" y2="0.889" width="0.1524" layer="51"/>
<wire x1="1.0668" y1="0.889" x2="0.6858" y2="0.889" width="0.1524" layer="51"/>
<wire x1="0.6858" y1="0.889" x2="0.6858" y2="0" width="0.1524" layer="51"/>
<rectangle x1="0.762" y1="-0.8128" x2="1.016" y2="0.8128" layer="21"/>
</package>
<package name="E15-5">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 15.24 mm, diameter 5 mm</description>
<wire x1="-4.064" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-2.667" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="-1.27" x2="-2.667" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0" x2="5.207" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.143" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="0.889" x2="-3.556" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.286" x2="-5.715" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="2.54" x2="5.461" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.286" x2="5.461" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.286" x2="-4.191" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="2.54" x2="-5.715" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="2.54" x2="-4.826" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="2.413" x2="-5.08" y2="2.413" width="0.3048" layer="21"/>
<wire x1="-5.461" y1="2.54" x2="-5.08" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.286" x2="-4.826" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.286" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.286" x2="-4.445" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="2.413" x2="5.461" y2="2.413" width="0.3048" layer="21"/>
<wire x1="-4.445" y1="2.286" x2="5.715" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.032" x2="-4.445" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.286" x2="-4.445" y2="2.286" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="-2.54" x2="5.461" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.032" x2="-4.826" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.159" x2="-4.826" y2="-2.2352" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.032" x2="-4.445" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.159" x2="-4.445" y2="-2.2352" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.286" x2="-4.445" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.159" x2="-4.445" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.286" x2="5.715" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.286" x2="5.588" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.286" x2="-5.588" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="-2.413" x2="-5.461" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="-4.953" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.413" x2="-4.826" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-2.54" x2="-5.08" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="-2.413" x2="-4.953" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.286" x2="-4.318" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="-2.413" x2="-4.191" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="-2.413" x2="5.588" y2="-2.413" width="0.1524" layer="21"/>
<wire x1="5.588" y1="-2.413" x2="5.461" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.461" y1="-2.4892" x2="-4.191" y2="-2.4892" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="-2.4892" x2="-4.191" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.4892" x2="-5.461" y2="-2.4892" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-2.4892" x2="-5.461" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.2352" x2="-4.826" y2="-2.2352" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.2352" x2="-4.445" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.2352" x2="-4.826" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.159" x2="-4.572" y2="2.159" width="0.3048" layer="21"/>
<wire x1="7.62" y1="0" x2="6.477" y2="0" width="0.508" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.477" y2="0" width="0.508" layer="51"/>
<pad name="+" x="-7.62" y="0" drill="0.8128" diameter="2.159"/>
<pad name="-" x="7.62" y="0" drill="0.8128" diameter="2.159" shape="octagon"/>
<text x="-5.461" y="2.794" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.461" y="-4.1402" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.286" y1="-1.27" x2="-1.778" y2="1.27" layer="21"/>
<rectangle x1="-6.477" y1="-0.254" x2="-5.715" y2="0.254" layer="21"/>
<rectangle x1="5.715" y1="-0.254" x2="6.477" y2="0.254" layer="21"/>
</package>
<package name="E15-6">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 15.24 mm, diameter 6 mm</description>
<wire x1="-4.064" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-2.667" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="-1.27" x2="-2.667" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0" x2="5.207" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.143" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="0.889" x2="-3.556" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.921" x2="-5.715" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="3.175" x2="5.461" y2="3.175" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.921" x2="5.461" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.921" x2="-4.191" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="3.175" x2="-5.715" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="3.175" x2="-4.826" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="3.048" x2="-5.08" y2="3.048" width="0.3048" layer="21"/>
<wire x1="-5.461" y1="3.175" x2="-5.08" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.921" x2="-4.826" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.921" x2="-4.826" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.921" x2="-4.445" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="3.048" x2="5.461" y2="3.048" width="0.3048" layer="21"/>
<wire x1="-4.445" y1="2.921" x2="5.715" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.667" x2="-4.445" y2="2.667" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.921" x2="-4.445" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="-3.175" x2="5.461" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.667" x2="-4.826" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.794" x2="-4.826" y2="-2.8702" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.667" x2="-4.445" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.794" x2="-4.445" y2="-2.8702" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.921" x2="-4.445" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.794" x2="-4.445" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.921" x2="5.715" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.921" x2="5.588" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-2.921" x2="-5.588" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="-3.048" x2="-5.461" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.175" x2="-4.953" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-3.048" x2="-4.826" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-3.175" x2="-5.08" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="-3.048" x2="-4.953" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.921" x2="-4.318" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="-3.048" x2="-4.191" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="-3.048" x2="5.588" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="5.588" y1="-3.048" x2="5.461" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="5.461" y1="-3.1242" x2="-4.191" y2="-3.1242" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="-3.1242" x2="-4.191" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-3.1242" x2="-5.461" y2="-3.1242" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-3.1242" x2="-5.461" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.8702" x2="-4.826" y2="-2.8702" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.8702" x2="-4.445" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.8702" x2="-4.826" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="2.794" x2="-4.572" y2="2.794" width="0.3048" layer="21"/>
<wire x1="7.62" y1="0" x2="6.477" y2="0" width="0.508" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.477" y2="0" width="0.508" layer="51"/>
<pad name="+" x="-7.62" y="0" drill="0.8128" diameter="2.159"/>
<pad name="-" x="7.62" y="0" drill="0.8128" diameter="2.159" shape="octagon"/>
<text x="-5.461" y="3.429" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.8542" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.286" y1="-1.27" x2="-1.778" y2="1.27" layer="21"/>
<rectangle x1="-6.477" y1="-0.254" x2="-5.715" y2="0.254" layer="21"/>
<rectangle x1="5.715" y1="-0.254" x2="6.477" y2="0.254" layer="21"/>
</package>
<package name="E15-9">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 15.24 mm, diameter 9 mm</description>
<wire x1="-4.445" y1="0" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0" x2="-3.556" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.27" x2="-3.048" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-1.27" x2="-3.048" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="1.27" x2="-3.556" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.27" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="5.588" y2="0" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="1.143" x2="-4.191" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="0.889" x2="-3.937" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-4.318" x2="-6.096" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-4.572" y1="4.572" x2="5.842" y2="4.572" width="0.1524" layer="21"/>
<wire x1="6.096" y1="4.318" x2="5.842" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="4.318" x2="-4.572" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="4.572" x2="-6.096" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="4.572" x2="-5.207" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="4.445" x2="-5.461" y2="4.445" width="0.3048" layer="21"/>
<wire x1="-5.842" y1="4.572" x2="-5.461" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="4.318" x2="-5.207" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="4.318" x2="-5.207" y2="4.064" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="4.318" x2="-4.826" y2="4.064" width="0.1524" layer="21"/>
<wire x1="-4.572" y1="4.445" x2="5.842" y2="4.445" width="0.3048" layer="21"/>
<wire x1="-4.826" y1="4.318" x2="6.096" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="4.064" x2="-4.826" y2="4.064" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="4.318" x2="-4.826" y2="4.318" width="0.1524" layer="21"/>
<wire x1="-4.572" y1="-4.572" x2="5.842" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="4.064" x2="-5.207" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-4.191" x2="-5.207" y2="-4.2672" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="4.064" x2="-4.826" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-4.191" x2="-4.826" y2="-4.2672" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-4.318" x2="-4.826" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-4.191" x2="-4.826" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="6.096" y1="4.318" x2="6.096" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-4.318" x2="5.969" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-4.318" x2="-5.969" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-5.969" y1="-4.445" x2="-5.842" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-4.572" x2="-5.334" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="-4.445" x2="-5.207" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-4.572" x2="-5.461" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-5.969" y1="-4.445" x2="-5.334" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-4.318" x2="-4.699" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-4.445" x2="-4.572" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-4.445" x2="5.969" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="5.969" y1="-4.445" x2="5.842" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="5.842" y1="-4.5212" x2="-4.572" y2="-4.5212" width="0.1524" layer="21"/>
<wire x1="-4.572" y1="-4.5212" x2="-4.572" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-4.5212" x2="-5.842" y2="-4.5212" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-4.5212" x2="-5.842" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-4.2672" x2="-5.207" y2="-4.2672" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-4.2672" x2="-4.826" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="-4.2672" x2="-5.207" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="4.191" x2="-4.953" y2="4.191" width="0.3048" layer="21"/>
<wire x1="7.62" y1="0" x2="6.477" y2="0" width="0.508" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.477" y2="0" width="0.508" layer="51"/>
<pad name="+" x="-7.62" y="0" drill="0.8128" diameter="2.159"/>
<pad name="-" x="7.62" y="0" drill="0.8128" diameter="2.159" shape="octagon"/>
<text x="-5.842" y="4.826" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.651" y="-1.9812" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.667" y1="-1.27" x2="-2.159" y2="1.27" layer="21"/>
<rectangle x1="6.096" y1="-0.254" x2="6.477" y2="0.254" layer="21"/>
<rectangle x1="-6.477" y1="-0.254" x2="-6.096" y2="0.254" layer="21"/>
</package>
<package name="E2,5-4R">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 2.54 mm, diameter 4 mm</description>
<wire x1="-0.127" y1="0" x2="0.0762" y2="0" width="0.6096" layer="21"/>
<wire x1="-2.794" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.254" x2="-2.54" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="0" width="0.6096" layer="51"/>
<wire x1="0.508" y1="0.635" x2="0.5403" y2="-0.6456" width="0.1524" layer="21" curve="320.719"/>
<wire x1="0.508" y1="0.635" x2="0.5403" y2="-0.6456" width="0.1524" layer="51" curve="-39.2811"/>
<pad name="+" x="-1.27" y="0" drill="0.8128" diameter="1.6002"/>
<pad name="-" x="1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="0.762" y="1.016" size="1.27" layer="25">&gt;NAME</text>
<text x="0.762" y="-2.286" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="E2,5-6">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 2.54 mm, diameter 6 mm</description>
<wire x1="-2.032" y1="1.27" x2="-1.651" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="0.889" x2="-1.651" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="1.27" x2="-1.27" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="1.27" x2="-1.651" y2="1.651" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="-1.27" x2="-0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-1.27" x2="-0.254" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="1.27" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="0.635" y1="0" x2="1.651" y2="0" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="2.794" width="0.1524" layer="21"/>
<pad name="-" x="1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="+" x="-1.27" y="0" drill="0.8128" diameter="1.6002"/>
<text x="2.667" y="1.524" size="1.27" layer="25">&gt;NAME</text>
<text x="2.667" y="-2.667" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.27" x2="0.762" y2="1.27" layer="51"/>
</package>
<package name="E2,5-7">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 2.54 mm, diameter 7 mm</description>
<wire x1="-3.048" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="-0.381" x2="-2.667" y2="0.381" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="-1.27" x2="-0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-1.27" x2="-0.254" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="1.27" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="0.635" y1="0" x2="1.651" y2="0" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="3.429" width="0.1524" layer="21"/>
<pad name="-" x="1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="+" x="-1.27" y="0" drill="0.8128" diameter="1.6002"/>
<text x="3.048" y="2.032" size="1.27" layer="25">&gt;NAME</text>
<text x="3.048" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.27" x2="0.762" y2="1.27" layer="51"/>
</package>
<package name="E2,5RE">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 2.54 mm, diameter 4 mm,</description>
<wire x1="-0.127" y1="0" x2="0.0762" y2="0" width="0.6096" layer="21"/>
<wire x1="-2.794" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.254" x2="-2.54" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="0" width="0.6096" layer="51"/>
<wire x1="0.254" y1="1.143" x2="0.254" y2="-1.143" width="0.1524" layer="21" curve="286.26"/>
<wire x1="0.254" y1="-1.143" x2="0.254" y2="1.143" width="0.1524" layer="51" curve="73.7398"/>
<pad name="+" x="-1.27" y="0" drill="0.8128" diameter="1.5748"/>
<pad name="-" x="1.27" y="0" drill="0.8128" diameter="1.5748" shape="octagon"/>
<text x="0.635" y="1.143" size="1.27" layer="25">&gt;NAME</text>
<text x="0.635" y="-2.286" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="E25-10">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 25.4 mm, diameter 10 mm</description>
<wire x1="-10.16" y1="4.826" x2="-9.906" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="5.08" x2="-9.017" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="5.08" x2="-8.763" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="5.08" x2="9.906" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-5.08" x2="-9.017" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="-5.08" x2="9.906" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="4.826" x2="-10.16" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="9.906" y1="5.08" x2="10.16" y2="4.826" width="0.1524" layer="21"/>
<wire x1="9.906" y1="-5.08" x2="10.033" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-4.826" x2="10.16" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="5.08" x2="-8.001" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="4.826" x2="-8.763" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="4.826" x2="-8.001" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="4.826" x2="10.16" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="4.826" x2="-8.763" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="4.826" x2="-8.763" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="4.572" x2="-8.001" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="4.953" x2="9.906" y2="4.953" width="0.3048" layer="21"/>
<wire x1="-9.906" y1="4.953" x2="-9.017" y2="4.953" width="0.3048" layer="21"/>
<wire x1="-8.763" y1="-4.826" x2="-8.763" y2="-4.7752" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-4.826" x2="-8.001" y2="-4.7752" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-4.699" x2="-8.763" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-4.699" x2="-8.001" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-4.826" x2="-8.763" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-4.699" x2="-8.001" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.524" x2="-5.842" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-1.524" x2="-5.842" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="1.524" x2="-6.35" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-7.112" y1="1.27" x2="-7.112" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-7.493" y1="0.889" x2="-6.731" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.524" x2="-6.35" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0" x2="-6.35" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<wire x1="-7.493" y1="0" x2="-6.35" y2="0" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-4.826" x2="-10.033" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-10.033" y1="-4.953" x2="-9.906" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-5.08" x2="-8.89" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-4.953" x2="-8.763" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-10.033" y1="-4.953" x2="-8.89" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-5.0292" x2="-9.017" y2="-5.0292" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-5.0292" x2="-9.017" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-4.7752" x2="-8.001" y2="-4.7752" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-4.7752" x2="-8.763" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-4.7752" x2="-8.001" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="-5.08" x2="-7.874" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-4.953" x2="-8.001" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="-5.08" x2="-7.747" y2="-5.0292" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="-5.0292" x2="9.906" y2="-5.0292" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-4.953" x2="10.033" y2="-4.953" width="0.1524" layer="21"/>
<wire x1="10.033" y1="-4.953" x2="10.16" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="4.699" x2="-8.128" y2="4.699" width="0.3048" layer="21"/>
<wire x1="12.7" y1="0" x2="11.049" y2="0" width="0.762" layer="51"/>
<wire x1="-12.7" y1="0" x2="-11.049" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-12.7" y="0" drill="1.1176" diameter="3.1496"/>
<pad name="-" x="12.7" y="0" drill="1.1176" diameter="3.1496" shape="octagon"/>
<text x="-9.906" y="5.334" size="1.778" layer="25">&gt;NAME</text>
<text x="-4.0386" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="1.524" layer="21"/>
<rectangle x1="-11.049" y1="-0.381" x2="-10.16" y2="0.381" layer="21"/>
<rectangle x1="10.16" y1="-0.381" x2="11.049" y2="0.381" layer="21"/>
</package>
<package name="E25-9">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 25.4 mm, diameter 9 mm</description>
<wire x1="-10.16" y1="4.191" x2="-9.906" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="4.445" x2="-9.017" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="4.445" x2="-8.763" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="4.445" x2="9.906" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-4.445" x2="-9.017" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="-4.445" x2="9.906" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="4.191" x2="-10.16" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="9.906" y1="4.445" x2="10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="9.906" y1="-4.445" x2="10.033" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-4.191" x2="10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="4.445" x2="-8.001" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="4.191" x2="-8.763" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="4.191" x2="-8.001" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="4.191" x2="10.16" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="4.191" x2="-8.763" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="4.191" x2="-8.763" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="3.937" x2="-8.001" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="4.318" x2="9.906" y2="4.318" width="0.3048" layer="21"/>
<wire x1="-9.906" y1="4.318" x2="-9.017" y2="4.318" width="0.3048" layer="21"/>
<wire x1="-8.763" y1="-4.191" x2="-8.763" y2="-4.1402" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-4.191" x2="-8.001" y2="-4.1402" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-4.064" x2="-8.763" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-4.064" x2="-8.001" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-4.191" x2="-8.763" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-4.064" x2="-8.001" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.524" x2="-5.842" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-1.524" x2="-5.842" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="1.524" x2="-6.35" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-7.112" y1="1.27" x2="-7.112" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-7.493" y1="0.889" x2="-6.731" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.524" x2="-6.35" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0" x2="-6.35" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<wire x1="-7.493" y1="0" x2="-6.35" y2="0" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-4.191" x2="-10.033" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-10.033" y1="-4.318" x2="-9.906" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-4.445" x2="-8.89" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-4.318" x2="-8.763" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="-10.033" y1="-4.318" x2="-8.89" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-4.3942" x2="-9.017" y2="-4.3942" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-4.3942" x2="-9.017" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-4.1402" x2="-8.001" y2="-4.1402" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="-4.1402" x2="-8.763" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-4.1402" x2="-8.001" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="-4.445" x2="-7.874" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-4.318" x2="-8.001" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="-4.445" x2="-7.747" y2="-4.3942" width="0.1524" layer="21"/>
<wire x1="-7.747" y1="-4.3942" x2="9.906" y2="-4.3942" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-4.318" x2="10.033" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="10.033" y1="-4.318" x2="10.16" y2="-4.191" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="4.064" x2="-8.128" y2="4.064" width="0.3048" layer="21"/>
<wire x1="12.7" y1="0" x2="11.049" y2="0" width="0.762" layer="51"/>
<wire x1="-12.7" y1="0" x2="-11.049" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-12.7" y="0" drill="1.1176" diameter="3.1496"/>
<pad name="-" x="12.7" y="0" drill="1.1176" diameter="3.1496" shape="octagon"/>
<text x="-9.779" y="4.826" size="1.778" layer="25">&gt;NAME</text>
<text x="-4.0386" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="1.524" layer="21"/>
<rectangle x1="-11.049" y1="-0.381" x2="-10.16" y2="0.381" layer="21"/>
<rectangle x1="10.16" y1="-0.381" x2="11.049" y2="0.381" layer="21"/>
</package>
<package name="E30-10">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 30.48 mm, diameter 10 mm</description>
<wire x1="12.7" y1="4.699" x2="12.7" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="4.699" x2="-12.7" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="4.699" x2="-12.319" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="5.08" x2="-11.811" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="4.699" x2="-11.811" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="4.699" x2="-10.541" y2="4.699" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="4.699" x2="-10.16" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="4.699" x2="-11.43" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="4.699" x2="-10.541" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="4.699" x2="-11.43" y2="4.699" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="4.699" x2="12.7" y2="4.699" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="4.191" x2="-10.541" y2="4.191" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="4.953" x2="-11.811" y2="4.953" width="0.3048" layer="21"/>
<wire x1="-12.446" y1="4.826" x2="-11.684" y2="4.826" width="0.3048" layer="21"/>
<wire x1="-11.303" y1="4.572" x2="-10.668" y2="4.572" width="0.3048" layer="21"/>
<wire x1="-11.303" y1="4.318" x2="-10.668" y2="4.318" width="0.3048" layer="21"/>
<wire x1="-10.16" y1="4.953" x2="12.319" y2="4.953" width="0.3048" layer="21"/>
<wire x1="-10.287" y1="4.826" x2="12.446" y2="4.826" width="0.3048" layer="21"/>
<wire x1="-12.7" y1="-4.699" x2="-12.573" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-5.08" x2="-11.811" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-4.699" x2="-11.557" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-4.699" x2="-10.541" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-5.08" x2="-10.414" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-12.573" y1="-4.826" x2="-11.557" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-12.573" y1="-4.826" x2="-12.319" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-11.557" y1="-4.826" x2="-11.811" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-4.826" x2="12.573" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-4.826" x2="-10.541" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="4.191" x2="-11.43" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="4.191" x2="-10.541" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-4.445" x2="-10.541" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-4.445" x2="-11.43" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="-4.445" x2="-10.541" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-4.953" x2="12.319" y2="-4.953" width="0.3048" layer="21"/>
<wire x1="-12.319" y1="-4.953" x2="-11.811" y2="-4.953" width="0.3048" layer="21"/>
<wire x1="-11.303" y1="-4.572" x2="-10.668" y2="-4.572" width="0.3048" layer="21"/>
<wire x1="12.7" y1="-4.699" x2="12.573" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="12.319" y1="-5.08" x2="-10.16" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="12.573" y1="-4.826" x2="12.319" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="12.7" y1="4.699" x2="12.319" y2="5.08" width="0.1524" layer="21"/>
<wire x1="12.319" y1="5.08" x2="-10.16" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="-1.524" x2="-7.874" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-1.524" x2="-7.874" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="1.524" x2="-8.382" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-9.144" y1="1.27" x2="-9.144" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="0.889" x2="-8.763" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="1.524" x2="-8.382" y2="0" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="0" x2="-8.382" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="0" x2="-8.382" y2="0" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0" x2="13.462" y2="0" width="0.762" layer="51"/>
<wire x1="-15.24" y1="0" x2="-13.462" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-15.24" y="0" drill="1.1176" diameter="3.1496"/>
<pad name="-" x="15.24" y="0" drill="1.1176" diameter="3.1496" shape="octagon"/>
<text x="-12.319" y="5.334" size="1.778" layer="25">&gt;NAME</text>
<text x="-6.0706" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-7.366" y1="-1.524" x2="-6.858" y2="1.524" layer="21"/>
<rectangle x1="-13.462" y1="-0.381" x2="-12.7" y2="0.381" layer="21"/>
<rectangle x1="12.7" y1="-0.381" x2="13.462" y2="0.381" layer="21"/>
</package>
<package name="E30-12">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 30.48 mm, diameter 12 mm</description>
<wire x1="12.7" y1="5.969" x2="12.7" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="5.969" x2="-12.7" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="5.969" x2="-12.319" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="6.35" x2="-11.811" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="5.969" x2="-11.811" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="5.969" x2="-10.541" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="5.969" x2="-10.16" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="5.969" x2="-11.43" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="5.969" x2="-10.541" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="5.969" x2="-11.43" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="5.969" x2="12.7" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="5.461" x2="-10.541" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="6.223" x2="-11.811" y2="6.223" width="0.3048" layer="21"/>
<wire x1="-12.446" y1="6.096" x2="-11.684" y2="6.096" width="0.3048" layer="21"/>
<wire x1="-11.303" y1="5.842" x2="-10.668" y2="5.842" width="0.3048" layer="21"/>
<wire x1="-11.303" y1="5.588" x2="-10.668" y2="5.588" width="0.3048" layer="21"/>
<wire x1="-10.16" y1="6.223" x2="12.319" y2="6.223" width="0.3048" layer="21"/>
<wire x1="-10.287" y1="6.096" x2="12.446" y2="6.096" width="0.3048" layer="21"/>
<wire x1="-12.7" y1="-5.969" x2="-12.573" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-6.35" x2="-11.811" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-5.969" x2="-11.557" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-5.969" x2="-10.541" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-6.35" x2="-10.414" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-12.573" y1="-6.096" x2="-11.557" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-12.573" y1="-6.096" x2="-12.319" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-11.557" y1="-6.096" x2="-11.811" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-6.096" x2="12.573" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-6.096" x2="-10.541" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="5.461" x2="-11.43" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="5.461" x2="-10.541" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-5.715" x2="-10.541" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-5.715" x2="-11.43" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="-5.715" x2="-10.541" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-6.223" x2="12.319" y2="-6.223" width="0.3048" layer="21"/>
<wire x1="-12.319" y1="-6.223" x2="-11.811" y2="-6.223" width="0.3048" layer="21"/>
<wire x1="-11.303" y1="-5.842" x2="-10.668" y2="-5.842" width="0.3048" layer="21"/>
<wire x1="12.7" y1="-5.969" x2="12.573" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="12.319" y1="-6.35" x2="-10.16" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="12.573" y1="-6.096" x2="12.319" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="12.7" y1="5.969" x2="12.319" y2="6.35" width="0.1524" layer="21"/>
<wire x1="12.319" y1="6.35" x2="-10.16" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="-1.524" x2="-7.874" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-1.524" x2="-7.874" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="1.524" x2="-8.382" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-9.144" y1="1.27" x2="-9.144" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="0.889" x2="-8.763" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="1.524" x2="-8.382" y2="0" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="0" x2="-8.382" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="0" x2="-8.382" y2="0" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0" x2="13.462" y2="0" width="0.762" layer="51"/>
<wire x1="-15.24" y1="0" x2="-13.462" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-15.24" y="0" drill="1.1176" diameter="3.1496"/>
<pad name="-" x="15.24" y="0" drill="1.1176" diameter="3.1496" shape="octagon"/>
<text x="-12.192" y="6.731" size="1.778" layer="25">&gt;NAME</text>
<text x="-6.0706" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-7.366" y1="-1.524" x2="-6.858" y2="1.524" layer="21"/>
<rectangle x1="-13.462" y1="-0.381" x2="-12.7" y2="0.381" layer="21"/>
<rectangle x1="12.7" y1="-0.381" x2="13.462" y2="0.381" layer="21"/>
</package>
<package name="E30-16">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 30.48 mm, diameter 16 mm</description>
<wire x1="12.7" y1="7.747" x2="12.7" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="7.747" x2="-12.7" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="7.747" x2="-12.319" y2="8.128" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="8.128" x2="-11.811" y2="8.128" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="7.747" x2="-11.811" y2="8.128" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="7.747" x2="-10.541" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="7.747" x2="-10.16" y2="8.128" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="7.747" x2="-11.43" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="7.747" x2="-10.541" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="7.747" x2="-11.43" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="7.747" x2="12.7" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="7.239" x2="-10.541" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="8.001" x2="-11.811" y2="8.001" width="0.3048" layer="21"/>
<wire x1="-12.446" y1="7.874" x2="-11.684" y2="7.874" width="0.3048" layer="21"/>
<wire x1="-11.303" y1="7.62" x2="-10.668" y2="7.62" width="0.3048" layer="21"/>
<wire x1="-11.303" y1="7.366" x2="-10.668" y2="7.366" width="0.3048" layer="21"/>
<wire x1="-10.16" y1="8.001" x2="12.319" y2="8.001" width="0.3048" layer="21"/>
<wire x1="-10.287" y1="7.874" x2="12.446" y2="7.874" width="0.3048" layer="21"/>
<wire x1="-12.7" y1="-7.62" x2="-12.573" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-8.001" x2="-11.811" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-7.62" x2="-11.557" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-7.62" x2="-10.541" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-8.001" x2="-10.414" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-12.573" y1="-7.747" x2="-11.557" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-12.573" y1="-7.747" x2="-12.319" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-11.557" y1="-7.747" x2="-11.811" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-7.747" x2="12.573" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-7.747" x2="-10.541" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="7.239" x2="-11.43" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="7.239" x2="-10.541" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-7.366" x2="-10.541" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-7.366" x2="-11.43" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-10.541" y1="-7.366" x2="-10.541" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-7.874" x2="12.319" y2="-7.874" width="0.3048" layer="21"/>
<wire x1="-12.319" y1="-7.874" x2="-11.811" y2="-7.874" width="0.3048" layer="21"/>
<wire x1="-11.303" y1="-7.493" x2="-10.668" y2="-7.493" width="0.3048" layer="21"/>
<wire x1="12.7" y1="-7.62" x2="12.573" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="12.319" y1="-8.001" x2="-10.16" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="12.573" y1="-7.747" x2="12.319" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="12.7" y1="7.747" x2="12.319" y2="8.128" width="0.1524" layer="21"/>
<wire x1="12.319" y1="8.128" x2="-10.16" y2="8.128" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="-1.524" x2="-7.874" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-1.524" x2="-7.874" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="1.524" x2="-8.382" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-9.144" y1="1.27" x2="-9.144" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="0.889" x2="-8.763" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="1.524" x2="-8.382" y2="0" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="0" x2="-8.382" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="0" x2="-8.382" y2="0" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0" x2="13.462" y2="0" width="0.762" layer="51"/>
<wire x1="-15.24" y1="0" x2="-13.462" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-15.24" y="0" drill="1.1176" diameter="3.1496"/>
<pad name="-" x="15.24" y="0" drill="1.1176" diameter="3.1496" shape="octagon"/>
<text x="-12.319" y="8.382" size="1.778" layer="25">&gt;NAME</text>
<text x="-6.0706" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-7.366" y1="-1.524" x2="-6.858" y2="1.524" layer="21"/>
<rectangle x1="-13.462" y1="-0.381" x2="-12.7" y2="0.381" layer="21"/>
<rectangle x1="12.7" y1="-0.381" x2="13.462" y2="0.381" layer="21"/>
</package>
<package name="E35-12">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 35.56 mm, diameter 12 mm</description>
<wire x1="15.24" y1="5.969" x2="15.24" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="5.969" x2="-15.24" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="5.969" x2="-14.859" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="6.35" x2="-13.716" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="5.969" x2="-13.716" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="5.969" x2="-12.446" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="5.969" x2="-12.065" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="5.969" x2="-13.335" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="5.969" x2="-12.446" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="5.969" x2="-13.335" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="5.969" x2="15.24" y2="5.969" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="5.461" x2="-12.446" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="6.223" x2="-13.716" y2="6.223" width="0.3048" layer="21"/>
<wire x1="-14.986" y1="6.096" x2="-13.589" y2="6.096" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="5.842" x2="-12.573" y2="5.842" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="5.588" x2="-12.573" y2="5.588" width="0.3048" layer="21"/>
<wire x1="-12.065" y1="6.223" x2="14.859" y2="6.223" width="0.3048" layer="21"/>
<wire x1="-12.192" y1="6.096" x2="14.986" y2="6.096" width="0.3048" layer="21"/>
<wire x1="-15.24" y1="-5.969" x2="-15.113" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="-6.35" x2="-13.716" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-5.969" x2="-13.462" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-5.969" x2="-12.446" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-6.35" x2="-12.319" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="-6.096" x2="-13.462" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="-6.096" x2="-14.859" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-13.462" y1="-6.096" x2="-13.716" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-6.096" x2="15.113" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-6.096" x2="-12.446" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="5.461" x2="-13.335" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="5.461" x2="-12.446" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-5.715" x2="-12.446" y2="-5.715" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-5.715" x2="-13.335" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="-5.715" x2="-12.446" y2="-5.969" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-6.223" x2="14.859" y2="-6.223" width="0.3048" layer="21"/>
<wire x1="-14.859" y1="-6.223" x2="-13.716" y2="-6.223" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="-5.842" x2="-12.573" y2="-5.842" width="0.3048" layer="21"/>
<wire x1="15.24" y1="-5.969" x2="15.113" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="14.859" y1="-6.35" x2="-12.065" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="15.113" y1="-6.096" x2="14.859" y2="-6.35" width="0.1524" layer="21"/>
<wire x1="15.24" y1="5.969" x2="14.859" y2="6.35" width="0.1524" layer="21"/>
<wire x1="14.859" y1="6.35" x2="-12.065" y2="6.35" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="-1.524" x2="-9.779" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="-1.524" x2="-9.779" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="1.524" x2="-10.287" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-11.049" y1="1.27" x2="-11.049" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0.889" x2="-10.668" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="1.524" x2="-10.287" y2="0" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="0" x2="-10.287" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="0" x2="14.097" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0" x2="-10.287" y2="0" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0" x2="16.002" y2="0" width="0.762" layer="51"/>
<wire x1="-17.78" y1="0" x2="-16.002" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-17.78" y="0" drill="1.1176" diameter="3.1496"/>
<pad name="-" x="17.78" y="0" drill="1.1176" diameter="3.1496" shape="octagon"/>
<text x="-14.732" y="6.731" size="1.778" layer="25">&gt;NAME</text>
<text x="-7.9756" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-9.271" y1="-1.524" x2="-8.763" y2="1.524" layer="21"/>
<rectangle x1="-16.129" y1="-0.381" x2="-15.24" y2="0.381" layer="21"/>
<rectangle x1="15.24" y1="-0.381" x2="16.129" y2="0.381" layer="21"/>
</package>
<package name="E35-14">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 30.48 mm, diameter 14 mm</description>
<wire x1="15.24" y1="7.239" x2="15.24" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="7.239" x2="-15.24" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="7.239" x2="-14.859" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="7.62" x2="-13.716" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="7.239" x2="-13.716" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="7.239" x2="-12.446" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="7.239" x2="-12.065" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="7.239" x2="-13.335" y2="6.731" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="7.239" x2="-12.446" y2="6.731" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="7.239" x2="-13.335" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="7.239" x2="15.24" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="6.731" x2="-12.446" y2="6.731" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="7.493" x2="-13.716" y2="7.493" width="0.3048" layer="21"/>
<wire x1="-14.986" y1="7.366" x2="-13.589" y2="7.366" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="7.112" x2="-12.573" y2="7.112" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="6.858" x2="-12.573" y2="6.858" width="0.3048" layer="21"/>
<wire x1="-12.065" y1="7.493" x2="14.859" y2="7.493" width="0.3048" layer="21"/>
<wire x1="-12.192" y1="7.366" x2="14.986" y2="7.366" width="0.3048" layer="21"/>
<wire x1="-15.24" y1="-7.239" x2="-15.113" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="-7.62" x2="-13.716" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-7.239" x2="-13.462" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-7.239" x2="-12.446" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-7.62" x2="-12.319" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="-7.366" x2="-13.462" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="-7.366" x2="-14.859" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-13.462" y1="-7.366" x2="-13.716" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-7.366" x2="15.113" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-7.366" x2="-12.446" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="6.731" x2="-13.335" y2="-6.985" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="6.731" x2="-12.446" y2="-6.985" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-6.985" x2="-12.446" y2="-6.985" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-6.985" x2="-13.335" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="-6.985" x2="-12.446" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-7.493" x2="14.859" y2="-7.493" width="0.3048" layer="21"/>
<wire x1="-14.859" y1="-7.493" x2="-13.716" y2="-7.493" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="-7.112" x2="-12.573" y2="-7.112" width="0.3048" layer="21"/>
<wire x1="15.24" y1="-7.239" x2="15.113" y2="-7.366" width="0.1524" layer="21"/>
<wire x1="14.859" y1="-7.62" x2="-12.065" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="15.113" y1="-7.366" x2="14.859" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="15.24" y1="7.239" x2="14.859" y2="7.62" width="0.1524" layer="21"/>
<wire x1="14.859" y1="7.62" x2="-12.065" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="-1.524" x2="-9.779" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="-1.524" x2="-9.779" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="1.524" x2="-10.287" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-11.049" y1="1.27" x2="-11.049" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0.889" x2="-10.668" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="1.524" x2="-10.287" y2="0" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="0" x2="-10.287" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="0" x2="14.097" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0" x2="-10.287" y2="0" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0" x2="16.002" y2="0" width="0.762" layer="51"/>
<wire x1="-17.78" y1="0" x2="-16.002" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-17.78" y="0" drill="1.1176" diameter="3.1496"/>
<pad name="-" x="17.78" y="0" drill="1.1176" diameter="3.1496" shape="octagon"/>
<text x="-14.859" y="8.001" size="1.778" layer="25">&gt;NAME</text>
<text x="-7.9756" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-9.271" y1="-1.524" x2="-8.763" y2="1.524" layer="21"/>
<rectangle x1="-16.129" y1="-0.381" x2="-15.24" y2="0.381" layer="21"/>
<rectangle x1="15.24" y1="-0.381" x2="16.129" y2="0.381" layer="21"/>
</package>
<package name="E35-16">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 30.48 mm, diameter 16 mm</description>
<wire x1="15.24" y1="7.874" x2="15.24" y2="-7.874" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="7.874" x2="-15.24" y2="-7.874" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="7.874" x2="-14.859" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="8.255" x2="-13.716" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="7.874" x2="-13.716" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="7.874" x2="-12.446" y2="7.874" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="7.874" x2="-12.065" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="7.874" x2="-13.335" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="7.874" x2="-12.446" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="7.874" x2="-13.335" y2="7.874" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="7.874" x2="15.24" y2="7.874" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="7.366" x2="-12.446" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="8.128" x2="-13.716" y2="8.128" width="0.3048" layer="21"/>
<wire x1="-14.986" y1="8.001" x2="-13.589" y2="8.001" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="7.747" x2="-12.573" y2="7.747" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="7.493" x2="-12.573" y2="7.493" width="0.3048" layer="21"/>
<wire x1="-12.065" y1="8.128" x2="14.859" y2="8.128" width="0.3048" layer="21"/>
<wire x1="-12.192" y1="8.001" x2="14.986" y2="8.001" width="0.3048" layer="21"/>
<wire x1="-15.24" y1="-7.874" x2="-15.113" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="-8.255" x2="-13.716" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-7.874" x2="-13.462" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-7.874" x2="-12.446" y2="-7.874" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-8.255" x2="-12.319" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="-8.001" x2="-13.462" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="-8.001" x2="-14.859" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-13.462" y1="-8.001" x2="-13.716" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-8.001" x2="15.113" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-8.001" x2="-12.446" y2="-7.874" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="7.366" x2="-13.335" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="7.366" x2="-12.446" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-7.62" x2="-12.446" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-7.62" x2="-13.335" y2="-7.874" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="-7.62" x2="-12.446" y2="-7.874" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-8.128" x2="14.859" y2="-8.128" width="0.3048" layer="21"/>
<wire x1="-14.859" y1="-8.128" x2="-13.716" y2="-8.128" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="-7.747" x2="-12.573" y2="-7.747" width="0.3048" layer="21"/>
<wire x1="15.24" y1="-7.874" x2="15.113" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="14.859" y1="-8.255" x2="-12.065" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="15.113" y1="-8.001" x2="14.859" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="15.24" y1="7.874" x2="14.859" y2="8.255" width="0.1524" layer="21"/>
<wire x1="14.859" y1="8.255" x2="-12.065" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="-1.524" x2="-9.779" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="-1.524" x2="-9.779" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="1.524" x2="-10.287" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-11.049" y1="1.27" x2="-11.049" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0.889" x2="-10.668" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="1.524" x2="-10.287" y2="0" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="0" x2="-10.287" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="0" x2="14.097" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0" x2="-10.287" y2="0" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0" x2="16.002" y2="0" width="0.762" layer="51"/>
<wire x1="-17.78" y1="0" x2="-16.002" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-17.78" y="0" drill="1.1176" diameter="3.1496"/>
<pad name="-" x="17.78" y="0" drill="1.1176" diameter="3.1496" shape="octagon"/>
<text x="-14.859" y="8.636" size="1.778" layer="25">&gt;NAME</text>
<text x="-7.9756" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-9.271" y1="-1.524" x2="-8.763" y2="1.524" layer="21"/>
<rectangle x1="-16.129" y1="-0.381" x2="-15.24" y2="0.381" layer="21"/>
<rectangle x1="15.24" y1="-0.381" x2="16.129" y2="0.381" layer="21"/>
</package>
<package name="E35-18">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 30.48 mm, diameter 18 mm</description>
<wire x1="15.24" y1="9.779" x2="15.24" y2="-9.779" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="9.779" x2="-15.24" y2="-9.779" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="9.779" x2="-14.859" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="10.16" x2="-13.716" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="9.779" x2="-13.716" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="9.779" x2="-12.446" y2="9.779" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="9.779" x2="-12.065" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="9.779" x2="-13.335" y2="9.271" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="9.779" x2="-12.446" y2="9.271" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="9.779" x2="-13.335" y2="9.779" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="9.779" x2="15.24" y2="9.779" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="9.271" x2="-12.446" y2="9.271" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="10.033" x2="-13.716" y2="10.033" width="0.3048" layer="21"/>
<wire x1="-14.986" y1="9.906" x2="-13.589" y2="9.906" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="9.652" x2="-12.573" y2="9.652" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="9.398" x2="-12.573" y2="9.398" width="0.3048" layer="21"/>
<wire x1="-12.065" y1="10.033" x2="14.859" y2="10.033" width="0.3048" layer="21"/>
<wire x1="-12.192" y1="9.906" x2="14.986" y2="9.906" width="0.3048" layer="21"/>
<wire x1="-15.24" y1="-9.779" x2="-15.113" y2="-9.906" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="-10.16" x2="-13.716" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-9.779" x2="-13.462" y2="-9.906" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-9.779" x2="-12.446" y2="-9.779" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-10.16" x2="-12.319" y2="-9.906" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="-9.906" x2="-13.462" y2="-9.906" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="-9.906" x2="-14.859" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-13.462" y1="-9.906" x2="-13.716" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-9.906" x2="15.113" y2="-9.906" width="0.1524" layer="21"/>
<wire x1="-12.319" y1="-9.906" x2="-12.446" y2="-9.779" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="9.271" x2="-13.335" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="9.271" x2="-12.446" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-9.525" x2="-12.446" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-9.525" x2="-13.335" y2="-9.779" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="-9.525" x2="-12.446" y2="-9.779" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-10.033" x2="14.859" y2="-10.033" width="0.3048" layer="21"/>
<wire x1="-14.859" y1="-10.033" x2="-13.716" y2="-10.033" width="0.3048" layer="21"/>
<wire x1="-13.208" y1="-9.652" x2="-12.573" y2="-9.652" width="0.3048" layer="21"/>
<wire x1="15.24" y1="-9.779" x2="15.113" y2="-9.906" width="0.1524" layer="21"/>
<wire x1="14.859" y1="-10.16" x2="-12.065" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="15.113" y1="-9.906" x2="14.859" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="15.24" y1="9.779" x2="14.859" y2="10.16" width="0.1524" layer="21"/>
<wire x1="14.859" y1="10.16" x2="-12.065" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="-1.524" x2="-9.779" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="-1.524" x2="-9.779" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="1.524" x2="-10.287" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-11.049" y1="1.27" x2="-11.049" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0.889" x2="-10.668" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="1.524" x2="-10.287" y2="0" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="0" x2="-10.287" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="0" x2="14.097" y2="0" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0" x2="-10.287" y2="0" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0" x2="16.002" y2="0" width="0.762" layer="51"/>
<wire x1="-17.78" y1="0" x2="-16.002" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-17.78" y="0" drill="1.1176" diameter="3.1496"/>
<pad name="-" x="17.78" y="0" drill="1.1176" diameter="3.1496" shape="octagon"/>
<text x="-14.859" y="10.541" size="1.778" layer="25">&gt;NAME</text>
<text x="-7.9756" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-9.271" y1="-1.524" x2="-8.763" y2="1.524" layer="21"/>
<rectangle x1="-16.002" y1="-0.381" x2="-15.24" y2="0.381" layer="21"/>
<rectangle x1="15.24" y1="-0.381" x2="16.002" y2="0.381" layer="21"/>
</package>
<package name="E45-16">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 45.72 mm, diameter 16 mm</description>
<wire x1="-20.32" y1="7.747" x2="-19.812" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="8.255" x2="-18.288" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="8.255" x2="-17.78" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-7.747" x2="-19.939" y2="-8.128" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-8.255" x2="-18.288" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="-8.255" x2="-18.161" y2="-8.128" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="7.747" x2="-20.32" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-7.747" x2="-16.51" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-8.255" x2="19.812" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-7.747" x2="-17.78" y2="-7.6962" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-7.747" x2="-16.51" y2="-7.6962" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-8.128" x2="-18.161" y2="-8.128" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-8.128" x2="-19.812" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-18.161" y1="-8.128" x2="-17.78" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-7.747" x2="-16.129" y2="-8.128" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-8.128" x2="-16.002" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-8.255" x2="-19.812" y2="-8.2042" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-8.2042" x2="-18.288" y2="-8.2042" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-8.255" x2="-16.002" y2="-8.2042" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-7.62" x2="-16.51" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-7.6962" x2="-16.51" y2="-7.6962" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-7.6962" x2="-17.78" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-7.6962" x2="-16.51" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-8.2042" x2="19.812" y2="-8.2042" width="0.1524" layer="21"/>
<wire x1="19.812" y1="-8.255" x2="19.939" y2="-8.128" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-8.128" x2="19.939" y2="-8.128" width="0.1524" layer="21"/>
<wire x1="19.939" y1="-8.128" x2="20.32" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="7.747" x2="-16.002" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="8.255" x2="19.812" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="7.747" x2="-17.78" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="7.747" x2="20.32" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-7.62" x2="-17.78" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="7.239" x2="-17.78" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-7.62" x2="-16.51" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="7.239" x2="-16.51" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="7.747" x2="-16.51" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="7.239" x2="-16.51" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="8.128" x2="-18.288" y2="8.128" width="0.3048" layer="21"/>
<wire x1="-16.002" y1="8.128" x2="19.812" y2="8.128" width="0.3048" layer="21"/>
<wire x1="19.812" y1="8.255" x2="20.32" y2="7.747" width="0.1524" layer="21"/>
<wire x1="20.32" y1="7.747" x2="20.32" y2="-7.747" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.524" x2="-3.048" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-1.524" x2="-3.048" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="1.524" x2="-3.556" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="1.27" x2="-4.318" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0.889" x2="-3.937" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.524" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0" x2="-3.556" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0" x2="19.05" y2="0" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-17.653" y1="7.62" x2="-16.637" y2="7.62" width="0.3048" layer="21"/>
<wire x1="-20.066" y1="7.874" x2="-18.034" y2="7.874" width="0.3048" layer="21"/>
<wire x1="-17.653" y1="7.366" x2="-16.637" y2="7.366" width="0.3048" layer="21"/>
<wire x1="-16.256" y1="7.874" x2="20.066" y2="7.874" width="0.3048" layer="21"/>
<wire x1="22.86" y1="0" x2="20.955" y2="0" width="0.762" layer="51"/>
<wire x1="-22.86" y1="0" x2="-20.955" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-22.86" y="0" drill="1.1176" diameter="3.81"/>
<pad name="-" x="22.86" y="0" drill="1.1176" diameter="3.81" shape="octagon"/>
<text x="-19.812" y="8.763" size="1.778" layer="25">&gt;NAME</text>
<text x="-1.2446" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-2.54" y1="-1.524" x2="-2.032" y2="1.524" layer="21"/>
<rectangle x1="20.32" y1="-0.381" x2="20.828" y2="0.381" layer="21"/>
<rectangle x1="-20.828" y1="-0.381" x2="-20.32" y2="0.381" layer="21"/>
</package>
<package name="E45-18">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 45.72 mm, diameter 18 mm</description>
<wire x1="-20.32" y1="8.382" x2="-19.812" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="8.89" x2="-18.288" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="8.89" x2="-17.78" y2="8.382" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-8.382" x2="-19.939" y2="-8.763" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-8.89" x2="-18.288" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="-8.89" x2="-18.161" y2="-8.763" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="8.382" x2="-20.32" y2="-8.382" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-8.382" x2="-16.51" y2="-8.382" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-8.89" x2="19.812" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-8.382" x2="-17.78" y2="-8.3312" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-8.382" x2="-16.51" y2="-8.3312" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-8.763" x2="-18.161" y2="-8.763" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-8.763" x2="-19.812" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="-18.161" y1="-8.763" x2="-17.78" y2="-8.382" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-8.382" x2="-16.129" y2="-8.763" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-8.763" x2="-16.002" y2="-8.89" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-8.89" x2="-19.812" y2="-8.8392" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-8.8392" x2="-18.288" y2="-8.8392" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-8.89" x2="-16.002" y2="-8.8392" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-8.255" x2="-16.51" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-8.3312" x2="-16.51" y2="-8.3312" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-8.3312" x2="-17.78" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-8.3312" x2="-16.51" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-8.8392" x2="19.812" y2="-8.8392" width="0.1524" layer="21"/>
<wire x1="19.812" y1="-8.89" x2="19.939" y2="-8.763" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-8.763" x2="19.939" y2="-8.763" width="0.1524" layer="21"/>
<wire x1="19.939" y1="-8.763" x2="20.32" y2="-8.382" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="8.382" x2="-16.002" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="8.89" x2="19.812" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="8.382" x2="-17.78" y2="8.382" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="8.382" x2="20.32" y2="8.382" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-8.255" x2="-17.78" y2="7.874" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="7.874" x2="-17.78" y2="8.382" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-8.255" x2="-16.51" y2="7.874" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="7.874" x2="-16.51" y2="8.382" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="8.382" x2="-16.51" y2="8.382" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="7.874" x2="-16.51" y2="7.874" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="8.763" x2="-18.288" y2="8.763" width="0.3048" layer="21"/>
<wire x1="-16.002" y1="8.763" x2="19.812" y2="8.763" width="0.3048" layer="21"/>
<wire x1="19.812" y1="8.89" x2="20.32" y2="8.382" width="0.1524" layer="21"/>
<wire x1="20.32" y1="8.382" x2="20.32" y2="-8.382" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.524" x2="-3.048" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-1.524" x2="-3.048" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="1.524" x2="-3.556" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="1.27" x2="-4.318" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0.889" x2="-3.937" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.524" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0" x2="-3.556" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0" x2="19.05" y2="0" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-17.653" y1="8.255" x2="-16.637" y2="8.255" width="0.3048" layer="21"/>
<wire x1="-20.066" y1="8.509" x2="-18.034" y2="8.509" width="0.3048" layer="21"/>
<wire x1="-17.653" y1="8.001" x2="-16.637" y2="8.001" width="0.3048" layer="21"/>
<wire x1="-16.256" y1="8.509" x2="20.066" y2="8.509" width="0.3048" layer="21"/>
<wire x1="22.86" y1="0" x2="20.955" y2="0" width="0.762" layer="51"/>
<wire x1="-22.86" y1="0" x2="-20.955" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-22.86" y="0" drill="1.1176" diameter="3.81"/>
<pad name="-" x="22.86" y="0" drill="1.1176" diameter="3.81" shape="octagon"/>
<text x="-19.558" y="9.271" size="1.778" layer="25">&gt;NAME</text>
<text x="-1.2446" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-2.54" y1="-1.524" x2="-2.032" y2="1.524" layer="21"/>
<rectangle x1="20.32" y1="-0.381" x2="20.828" y2="0.381" layer="21"/>
<rectangle x1="-20.828" y1="-0.381" x2="-20.32" y2="0.381" layer="21"/>
</package>
<package name="E45-21">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 45.72 mm, diameter 21 mm</description>
<wire x1="-20.32" y1="10.287" x2="-19.812" y2="10.795" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="10.795" x2="-18.288" y2="10.795" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="10.795" x2="-17.78" y2="10.287" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-10.287" x2="-19.939" y2="-10.668" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-10.795" x2="-18.288" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="-10.795" x2="-18.161" y2="-10.668" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="10.287" x2="-20.32" y2="-10.287" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.287" x2="-16.51" y2="-10.287" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-10.795" x2="19.812" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.287" x2="-17.78" y2="-10.2362" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-10.287" x2="-16.51" y2="-10.2362" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-10.668" x2="-18.161" y2="-10.668" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-10.668" x2="-19.812" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-18.161" y1="-10.668" x2="-17.78" y2="-10.287" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-10.287" x2="-16.129" y2="-10.668" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-10.668" x2="-16.002" y2="-10.795" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-10.795" x2="-19.812" y2="-10.7442" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-10.7442" x2="-18.288" y2="-10.7442" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-10.795" x2="-16.002" y2="-10.7442" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.16" x2="-16.51" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.2362" x2="-16.51" y2="-10.2362" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.2362" x2="-17.78" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-10.2362" x2="-16.51" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-10.7442" x2="19.812" y2="-10.7442" width="0.1524" layer="21"/>
<wire x1="19.812" y1="-10.795" x2="19.939" y2="-10.668" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-10.668" x2="19.939" y2="-10.668" width="0.1524" layer="21"/>
<wire x1="19.939" y1="-10.668" x2="20.32" y2="-10.287" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="10.287" x2="-16.002" y2="10.795" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="10.795" x2="19.812" y2="10.795" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="10.287" x2="-17.78" y2="10.287" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="10.287" x2="20.32" y2="10.287" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.16" x2="-17.78" y2="9.779" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="9.779" x2="-17.78" y2="10.287" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-10.16" x2="-16.51" y2="9.779" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="9.779" x2="-16.51" y2="10.287" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="10.287" x2="-16.51" y2="10.287" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="9.779" x2="-16.51" y2="9.779" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="10.668" x2="-18.288" y2="10.668" width="0.3048" layer="21"/>
<wire x1="-16.002" y1="10.668" x2="19.812" y2="10.668" width="0.3048" layer="21"/>
<wire x1="19.812" y1="10.795" x2="20.32" y2="10.287" width="0.1524" layer="21"/>
<wire x1="20.32" y1="10.287" x2="20.32" y2="-10.287" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.524" x2="-3.048" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-1.524" x2="-3.048" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="1.524" x2="-3.556" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="1.27" x2="-4.318" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0.889" x2="-3.937" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.524" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0" x2="-3.556" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0" x2="19.05" y2="0" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-17.653" y1="10.16" x2="-16.637" y2="10.16" width="0.3048" layer="21"/>
<wire x1="-20.066" y1="10.414" x2="-18.034" y2="10.414" width="0.3048" layer="21"/>
<wire x1="-17.653" y1="9.906" x2="-16.637" y2="9.906" width="0.3048" layer="21"/>
<wire x1="-16.256" y1="10.414" x2="20.066" y2="10.414" width="0.3048" layer="21"/>
<wire x1="22.86" y1="0" x2="20.955" y2="0" width="0.762" layer="51"/>
<wire x1="-22.86" y1="0" x2="-20.955" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-22.86" y="0" drill="1.1176" diameter="3.81"/>
<pad name="-" x="22.86" y="0" drill="1.1176" diameter="3.81" shape="octagon"/>
<text x="-19.685" y="11.176" size="1.778" layer="25">&gt;NAME</text>
<text x="-1.2446" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-2.54" y1="-1.524" x2="-2.032" y2="1.524" layer="21"/>
<rectangle x1="20.32" y1="-0.381" x2="20.828" y2="0.381" layer="21"/>
<rectangle x1="-20.828" y1="-0.381" x2="-20.32" y2="0.381" layer="21"/>
</package>
<package name="E45-22">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 45.72 mm, diameter 22 mm</description>
<wire x1="-20.32" y1="10.541" x2="-19.812" y2="11.049" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="11.049" x2="-18.288" y2="11.049" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="11.049" x2="-17.78" y2="10.541" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-10.541" x2="-19.939" y2="-10.922" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-11.049" x2="-18.288" y2="-11.049" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="-11.049" x2="-18.161" y2="-10.922" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="10.541" x2="-20.32" y2="-10.541" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.541" x2="-16.51" y2="-10.541" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-11.049" x2="19.812" y2="-11.049" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.541" x2="-17.78" y2="-10.4902" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-10.541" x2="-16.51" y2="-10.4902" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-10.922" x2="-18.161" y2="-10.922" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-10.922" x2="-19.812" y2="-11.049" width="0.1524" layer="21"/>
<wire x1="-18.161" y1="-10.922" x2="-17.78" y2="-10.541" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-10.541" x2="-16.129" y2="-10.922" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-10.922" x2="-16.002" y2="-11.049" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-11.049" x2="-19.812" y2="-10.9982" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-10.9982" x2="-18.288" y2="-10.9982" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-11.049" x2="-16.002" y2="-10.9982" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.414" x2="-16.51" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.4902" x2="-16.51" y2="-10.4902" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.4902" x2="-17.78" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-10.4902" x2="-16.51" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-10.9982" x2="19.812" y2="-10.9982" width="0.1524" layer="21"/>
<wire x1="19.812" y1="-11.049" x2="19.939" y2="-10.922" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-10.922" x2="19.939" y2="-10.922" width="0.1524" layer="21"/>
<wire x1="19.939" y1="-10.922" x2="20.32" y2="-10.541" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="10.541" x2="-16.002" y2="11.049" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="11.049" x2="19.812" y2="11.049" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="10.541" x2="-17.78" y2="10.541" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="10.541" x2="20.32" y2="10.541" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-10.414" x2="-17.78" y2="10.033" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="10.033" x2="-17.78" y2="10.541" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-10.414" x2="-16.51" y2="10.033" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="10.033" x2="-16.51" y2="10.541" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="10.541" x2="-16.51" y2="10.541" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="10.033" x2="-16.51" y2="10.033" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="10.922" x2="-18.288" y2="10.922" width="0.3048" layer="21"/>
<wire x1="-16.002" y1="10.922" x2="19.812" y2="10.922" width="0.3048" layer="21"/>
<wire x1="19.812" y1="11.049" x2="20.32" y2="10.541" width="0.1524" layer="21"/>
<wire x1="20.32" y1="10.541" x2="20.32" y2="-10.541" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.524" x2="-3.048" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-1.524" x2="-3.048" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="1.524" x2="-3.556" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="1.27" x2="-4.318" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0.889" x2="-3.937" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.524" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0" x2="-3.556" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0" x2="19.05" y2="0" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-17.653" y1="10.414" x2="-16.637" y2="10.414" width="0.3048" layer="21"/>
<wire x1="-20.066" y1="10.668" x2="-18.034" y2="10.668" width="0.3048" layer="21"/>
<wire x1="-17.653" y1="10.16" x2="-16.637" y2="10.16" width="0.3048" layer="21"/>
<wire x1="-16.256" y1="10.668" x2="20.066" y2="10.668" width="0.3048" layer="21"/>
<wire x1="22.86" y1="0" x2="20.955" y2="0" width="0.762" layer="51"/>
<wire x1="-22.86" y1="0" x2="-20.955" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-22.86" y="0" drill="1.1176" diameter="3.81"/>
<pad name="-" x="22.86" y="0" drill="1.1176" diameter="3.81" shape="octagon"/>
<text x="-19.685" y="11.43" size="1.778" layer="25">&gt;NAME</text>
<text x="-1.2446" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-2.54" y1="-1.524" x2="-2.032" y2="1.524" layer="21"/>
<rectangle x1="20.32" y1="-0.381" x2="20.828" y2="0.381" layer="21"/>
<rectangle x1="-20.828" y1="-0.381" x2="-20.32" y2="0.381" layer="21"/>
</package>
<package name="E45-25">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 45.72 mm, diameter 25 mm</description>
<wire x1="-20.32" y1="12.192" x2="-19.812" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="12.7" x2="-18.288" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="12.7" x2="-17.78" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-12.192" x2="-19.939" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-12.7" x2="-18.288" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-18.288" y1="-12.7" x2="-18.161" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="12.192" x2="-20.32" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-12.192" x2="-16.51" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-12.7" x2="19.812" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-12.192" x2="-17.78" y2="-12.1412" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-12.192" x2="-16.51" y2="-12.1412" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-12.573" x2="-18.161" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-19.939" y1="-12.573" x2="-19.812" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-18.161" y1="-12.573" x2="-17.78" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-12.192" x2="-16.129" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-12.573" x2="-16.002" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-12.7" x2="-19.812" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="-12.6492" x2="-18.288" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-12.7" x2="-16.002" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-12.065" x2="-16.51" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-12.1412" x2="-16.51" y2="-12.1412" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-12.1412" x2="-17.78" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-12.1412" x2="-16.51" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="-12.6492" x2="19.812" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="19.812" y1="-12.7" x2="19.939" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-16.129" y1="-12.573" x2="19.939" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="19.939" y1="-12.573" x2="20.32" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="12.192" x2="-16.002" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-16.002" y1="12.7" x2="19.812" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="12.192" x2="-17.78" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="12.192" x2="20.32" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-12.065" x2="-17.78" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="11.684" x2="-17.78" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-12.065" x2="-16.51" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="11.684" x2="-16.51" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="12.192" x2="-16.51" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="11.684" x2="-16.51" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-19.812" y1="12.573" x2="-18.288" y2="12.573" width="0.3048" layer="21"/>
<wire x1="-16.002" y1="12.573" x2="19.812" y2="12.573" width="0.3048" layer="21"/>
<wire x1="19.812" y1="12.7" x2="20.32" y2="12.192" width="0.1524" layer="21"/>
<wire x1="20.32" y1="12.192" x2="20.32" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.524" x2="-3.048" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-1.524" x2="-3.048" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="1.524" x2="-3.556" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="1.27" x2="-4.318" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0.889" x2="-3.937" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.524" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0" x2="-3.556" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0" x2="19.05" y2="0" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-17.653" y1="12.065" x2="-16.637" y2="12.065" width="0.3048" layer="21"/>
<wire x1="-20.066" y1="12.319" x2="-18.034" y2="12.319" width="0.3048" layer="21"/>
<wire x1="-17.653" y1="11.811" x2="-16.637" y2="11.811" width="0.3048" layer="21"/>
<wire x1="-16.256" y1="12.319" x2="20.066" y2="12.319" width="0.3048" layer="21"/>
<wire x1="22.86" y1="0" x2="20.955" y2="0" width="0.762" layer="51"/>
<wire x1="-22.86" y1="0" x2="-20.955" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-22.86" y="0" drill="1.1176" diameter="3.81"/>
<pad name="-" x="22.86" y="0" drill="1.1176" diameter="3.81" shape="octagon"/>
<text x="-19.558" y="13.208" size="1.778" layer="25">&gt;NAME</text>
<text x="-1.2446" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-2.54" y1="-1.524" x2="-2.032" y2="1.524" layer="21"/>
<rectangle x1="20.32" y1="-0.381" x2="20.828" y2="0.381" layer="21"/>
<rectangle x1="-20.828" y1="-0.381" x2="-20.32" y2="0.381" layer="21"/>
</package>
<package name="E5-10,5">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5.08 mm, diameter 10.5 mm</description>
<wire x1="-1.143" y1="0" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-0.889" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-1.143" x2="-0.254" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-1.143" x2="-0.254" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.143" x2="-0.889" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.143" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.143" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.651" x2="-3.81" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="1.27" x2="-4.191" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0" x2="1.651" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="0" x2="-1.143" y2="0" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="5.08" width="0.1524" layer="21"/>
<pad name="+" x="-2.54" y="0" drill="1.016" diameter="2.54"/>
<pad name="-" x="2.54" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="4.699" y="2.7432" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.1242" y="-3.2258" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.143" x2="0.889" y2="1.143" layer="21"/>
</package>
<package name="E5-13">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5.08 mm, diameter 13 mm</description>
<wire x1="-1.143" y1="0" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-0.889" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-1.27" x2="-0.254" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-1.27" x2="-0.254" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.27" x2="-0.889" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.27" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.143" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="0" x2="-4.445" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0" x2="1.524" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="0" x2="-1.143" y2="0" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="6.985" width="0.1524" layer="21"/>
<pad name="+" x="-2.54" y="0" drill="1.016" diameter="2.54"/>
<pad name="-" x="2.54" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="6.3754" y="4.1148" size="1.778" layer="25">&gt;NAME</text>
<text x="-4.572" y="-3.937" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.27" x2="0.889" y2="1.27" layer="21"/>
</package>
<package name="E5-4">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5.05 mm, diameter 4 mm</description>
<wire x1="1.1153" y1="1.6985" x2="1.1153" y2="-1.6985" width="0.1524" layer="21" curve="-113.419"/>
<wire x1="-1.1153" y1="1.6985" x2="-1.1153" y2="-1.6985" width="0.1524" layer="21" curve="113.419"/>
<wire x1="1.1153" y1="1.6985" x2="-1.1153" y2="1.6985" width="0.1524" layer="21" curve="66.5809"/>
<wire x1="-1.1153" y1="-1.6985" x2="1.1153" y2="-1.6985" width="0.1524" layer="21" curve="66.5809"/>
<wire x1="0" y1="1.397" x2="0" y2="0.762" width="0.1524" layer="21"/>
<wire x1="0" y1="0.762" x2="-1.016" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="0.762" x2="-1.016" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="0.254" x2="1.016" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.254" x2="1.016" y2="0.762" width="0.1524" layer="21"/>
<wire x1="1.016" y1="0.762" x2="0" y2="0.762" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0" y2="-1.397" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.524" x2="0.635" y2="1.016" width="0.1524" layer="21"/>
<wire x1="0.381" y1="1.27" x2="0.889" y2="1.27" width="0.1524" layer="21"/>
<pad name="+" x="0" y="2.54" drill="0.8128" shape="octagon" rot="R270" stop="no"/>
<pad name="-" x="0" y="-2.54" drill="0.8128" shape="octagon" rot="R270" stop="no"/>
<text x="-1.397" y="2.032" size="1.016" layer="25" align="bottom-right">&gt;NAME</text>
<text x="1.524" y="-1.778" size="0.6096" layer="27" align="top-left">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="0.508" layer="21" rot="R270"/>
</package>
<package name="E5-6">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5.08 mm, diameter 6 mm</description>
<wire x1="-2.8702" y1="1.3574" x2="2.8702" y2="1.3574" width="0.1524" layer="21" curve="-129.378"/>
<wire x1="-2.8702" y1="-1.3574" x2="2.8702" y2="-1.3574" width="0.1524" layer="21" curve="129.378"/>
<wire x1="-2.8702" y1="1.3574" x2="-2.8702" y2="-1.3574" width="0.1524" layer="51" curve="50.6216"/>
<wire x1="2.8702" y1="-1.3574" x2="2.8702" y2="1.3574" width="0.1524" layer="51" curve="50.6216"/>
<wire x1="-1.397" y1="0" x2="-0.762" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-1.016" x2="-0.254" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.016" x2="-0.762" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="1.016" x2="-0.762" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.397" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="0.635" x2="-1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.381" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<pad name="+" x="-2.54" y="0" drill="0.8128" diameter="1.905"/>
<pad name="-" x="2.54" y="0" drill="0.8128" diameter="1.905" shape="octagon"/>
<text x="3.048" y="1.778" size="1.27" layer="25">&gt;NAME</text>
<text x="3.048" y="-2.921" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.016" x2="0.762" y2="1.016" layer="21"/>
</package>
<package name="E5-8,5">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5.08 mm, diameter 8.5 mm</description>
<wire x1="-1.143" y1="0" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-0.889" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-1.143" x2="-0.254" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-1.143" x2="-0.254" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.143" x2="-0.889" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.143" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.143" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="2.032" x2="-3.302" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.651" x2="-2.921" y2="1.651" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0" x2="1.651" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="0" x2="-1.143" y2="0" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="4.445" width="0.1524" layer="21"/>
<pad name="+" x="-2.54" y="0" drill="1.016" diameter="2.54"/>
<pad name="-" x="2.54" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="4.1402" y="2.286" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.5146" y="-3.0226" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.143" x2="0.889" y2="1.143" layer="21"/>
</package>
<package name="E50-25">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 50 mm, diameter 25 mm</description>
<wire x1="22.225" y1="-12.192" x2="21.844" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="21.717" y1="-12.7" x2="-18.542" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="21.717" y1="12.7" x2="22.225" y2="12.192" width="0.1524" layer="21"/>
<wire x1="22.225" y1="12.192" x2="22.225" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="12.192" x2="-22.352" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="12.192" x2="-22.86" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-22.352" y1="12.7" x2="-20.828" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="12.192" x2="-20.828" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="12.192" x2="-19.05" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="12.7" x2="-19.05" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="12.7" x2="21.717" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="12.192" x2="-20.32" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="12.192" x2="-19.05" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="12.192" x2="-20.32" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="11.684" x2="-19.05" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="12.192" x2="22.225" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-20.193" y1="12.065" x2="-19.177" y2="12.065" width="0.3048" layer="21"/>
<wire x1="-20.193" y1="11.811" x2="-19.177" y2="11.811" width="0.3048" layer="21"/>
<wire x1="-22.352" y1="12.573" x2="-20.828" y2="12.573" width="0.3048" layer="21"/>
<wire x1="-22.606" y1="12.319" x2="-22.479" y2="12.319" width="0.3048" layer="21"/>
<wire x1="-22.479" y1="12.319" x2="-22.479" y2="12.446" width="0.3048" layer="21"/>
<wire x1="-22.479" y1="12.319" x2="-20.701" y2="12.319" width="0.3048" layer="21"/>
<wire x1="-20.701" y1="12.319" x2="-20.701" y2="12.446" width="0.3048" layer="21"/>
<wire x1="-20.701" y1="12.319" x2="-20.574" y2="12.319" width="0.3048" layer="21"/>
<wire x1="-18.542" y1="12.573" x2="21.717" y2="12.573" width="0.3048" layer="21"/>
<wire x1="-18.796" y1="12.319" x2="-18.669" y2="12.319" width="0.3048" layer="21"/>
<wire x1="-18.669" y1="12.319" x2="-18.669" y2="12.446" width="0.3048" layer="21"/>
<wire x1="-18.669" y1="12.319" x2="21.971" y2="12.319" width="0.3048" layer="21"/>
<wire x1="-22.86" y1="-12.192" x2="-22.479" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-22.352" y1="-12.7" x2="-20.828" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-12.192" x2="-20.701" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-12.192" x2="-19.05" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-12.192" x2="-18.669" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="11.684" x2="-20.32" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="11.684" x2="-19.05" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-22.479" y1="-12.573" x2="-20.701" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-22.479" y1="-12.573" x2="-22.352" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-20.701" y1="-12.573" x2="-20.828" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-12.065" x2="-19.05" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-12.065" x2="-20.32" y2="-12.1412" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-12.065" x2="-19.05" y2="-12.1412" width="0.1524" layer="21"/>
<wire x1="-18.669" y1="-12.573" x2="21.844" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-18.669" y1="-12.573" x2="-18.542" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-22.352" y1="-12.7" x2="-22.352" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="-22.352" y1="-12.6492" x2="-20.828" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-12.1412" x2="-19.05" y2="-12.1412" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-12.1412" x2="-20.32" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-12.1412" x2="-19.05" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-12.7" x2="-18.542" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-12.6492" x2="21.717" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="21.844" y1="-12.573" x2="21.717" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-1.524" x2="-5.588" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="-1.524" x2="-5.588" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="1.524" x2="-6.096" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-6.858" y1="1.27" x2="-6.858" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-7.239" y1="0.889" x2="-6.477" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="1.524" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="0" x2="-6.096" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0" x2="20.955" y2="0" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="24.765" y1="0" x2="22.86" y2="0" width="0.762" layer="51"/>
<wire x1="-25.4" y1="0" x2="-23.495" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-25.4" y="0" drill="1.1176" diameter="3.81"/>
<pad name="-" x="24.765" y="0" drill="1.1176" diameter="3.81" shape="octagon"/>
<text x="-22.098" y="13.208" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.7846" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-5.08" y1="-1.524" x2="-4.572" y2="1.524" layer="21"/>
<rectangle x1="22.225" y1="-0.381" x2="22.733" y2="0.381" layer="21"/>
<rectangle x1="-23.368" y1="-0.381" x2="-22.86" y2="0.381" layer="21"/>
</package>
<package name="E50-30">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 50 mm, diameter 30 mm</description>
<wire x1="22.225" y1="-14.732" x2="21.844" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="21.717" y1="-15.24" x2="-18.542" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="21.717" y1="15.24" x2="22.225" y2="14.732" width="0.1524" layer="21"/>
<wire x1="22.225" y1="14.732" x2="22.225" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="14.732" x2="-22.352" y2="15.24" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="14.732" x2="-22.86" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-22.352" y1="15.24" x2="-20.828" y2="15.24" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="14.732" x2="-20.828" y2="15.24" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="14.732" x2="-19.05" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="15.24" x2="-19.05" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="15.24" x2="21.717" y2="15.24" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="14.732" x2="-20.32" y2="14.224" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="14.732" x2="-19.05" y2="14.224" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="14.732" x2="-20.32" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="14.224" x2="-19.05" y2="14.224" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="14.732" x2="22.225" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-20.193" y1="14.605" x2="-19.177" y2="14.605" width="0.3048" layer="21"/>
<wire x1="-20.193" y1="14.351" x2="-19.177" y2="14.351" width="0.3048" layer="21"/>
<wire x1="-22.352" y1="15.113" x2="-20.828" y2="15.113" width="0.3048" layer="21"/>
<wire x1="-22.606" y1="14.859" x2="-22.479" y2="14.859" width="0.3048" layer="21"/>
<wire x1="-22.479" y1="14.859" x2="-22.479" y2="14.986" width="0.3048" layer="21"/>
<wire x1="-22.479" y1="14.859" x2="-20.701" y2="14.859" width="0.3048" layer="21"/>
<wire x1="-20.701" y1="14.859" x2="-20.701" y2="14.986" width="0.3048" layer="21"/>
<wire x1="-20.701" y1="14.859" x2="-20.574" y2="14.859" width="0.3048" layer="21"/>
<wire x1="-18.542" y1="15.113" x2="21.717" y2="15.113" width="0.3048" layer="21"/>
<wire x1="-18.796" y1="14.859" x2="-18.669" y2="14.859" width="0.3048" layer="21"/>
<wire x1="-18.669" y1="14.859" x2="-18.669" y2="14.986" width="0.3048" layer="21"/>
<wire x1="-18.669" y1="14.859" x2="21.971" y2="14.859" width="0.3048" layer="21"/>
<wire x1="-22.86" y1="-14.732" x2="-22.479" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-22.352" y1="-15.24" x2="-20.828" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-14.732" x2="-20.701" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-14.732" x2="-19.05" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-14.732" x2="-18.669" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="14.224" x2="-20.32" y2="-14.605" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="14.224" x2="-19.05" y2="-14.605" width="0.1524" layer="21"/>
<wire x1="-22.479" y1="-15.113" x2="-20.701" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-22.479" y1="-15.113" x2="-22.352" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="-20.701" y1="-15.113" x2="-20.828" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-14.605" x2="-19.05" y2="-14.605" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-14.605" x2="-20.32" y2="-14.6812" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-14.605" x2="-19.05" y2="-14.6812" width="0.1524" layer="21"/>
<wire x1="-18.669" y1="-15.113" x2="21.844" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-18.669" y1="-15.113" x2="-18.542" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="-22.352" y1="-15.24" x2="-22.352" y2="-15.1892" width="0.1524" layer="21"/>
<wire x1="-22.352" y1="-15.1892" x2="-20.828" y2="-15.1892" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-14.6812" x2="-19.05" y2="-14.6812" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-14.6812" x2="-20.32" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-14.6812" x2="-19.05" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-15.24" x2="-18.542" y2="-15.1892" width="0.1524" layer="21"/>
<wire x1="-18.542" y1="-15.1892" x2="21.717" y2="-15.1892" width="0.1524" layer="21"/>
<wire x1="21.844" y1="-15.113" x2="21.717" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="-1.524" x2="-5.588" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="-1.524" x2="-5.588" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="1.524" x2="-6.096" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-6.858" y1="1.27" x2="-6.858" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-7.239" y1="0.889" x2="-6.477" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="1.524" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="0" x2="-6.096" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0" x2="20.955" y2="0" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="24.765" y1="0" x2="22.86" y2="0" width="0.762" layer="51"/>
<wire x1="-25.4" y1="0" x2="-23.495" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-25.4" y="0" drill="1.1938" diameter="3.81"/>
<pad name="-" x="24.765" y="0" drill="1.1938" diameter="3.81" shape="octagon"/>
<text x="-21.971" y="15.748" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.7846" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-5.08" y1="-1.524" x2="-4.572" y2="1.524" layer="21"/>
<rectangle x1="22.225" y1="-0.381" x2="22.733" y2="0.381" layer="21"/>
<rectangle x1="-23.368" y1="-0.381" x2="-22.86" y2="0.381" layer="21"/>
</package>
<package name="E55-25">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 55 mm, diameter 25 mm</description>
<wire x1="-25.4" y1="12.192" x2="-24.892" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="12.7" x2="-23.368" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-23.368" y1="12.7" x2="-22.86" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-12.192" x2="-25.019" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="-12.7" x2="-23.368" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-23.368" y1="-12.7" x2="-23.241" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="12.192" x2="-25.4" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-12.192" x2="-21.59" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-21.082" y1="-12.7" x2="24.892" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-12.192" x2="-22.86" y2="-12.1412" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-12.192" x2="-21.59" y2="-12.1412" width="0.1524" layer="21"/>
<wire x1="-25.019" y1="-12.573" x2="-23.241" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-25.019" y1="-12.573" x2="-24.892" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-23.241" y1="-12.573" x2="-22.86" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-12.192" x2="-21.209" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-21.209" y1="-12.573" x2="-21.082" y2="-12.7" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="-12.7" x2="-24.892" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="-12.6492" x2="-23.368" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="-21.082" y1="-12.7" x2="-21.082" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-12.065" x2="-21.59" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-12.1412" x2="-21.59" y2="-12.1412" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-12.1412" x2="-22.86" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-12.1412" x2="-21.59" y2="-12.065" width="0.1524" layer="21"/>
<wire x1="-21.082" y1="-12.6492" x2="24.892" y2="-12.6492" width="0.1524" layer="21"/>
<wire x1="24.892" y1="-12.7" x2="25.019" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="-21.209" y1="-12.573" x2="25.019" y2="-12.573" width="0.1524" layer="21"/>
<wire x1="25.019" y1="-12.573" x2="25.4" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="12.192" x2="-21.082" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-21.082" y1="12.7" x2="24.892" y2="12.7" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="12.192" x2="-22.86" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="12.192" x2="25.4" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-12.065" x2="-22.86" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="11.684" x2="-22.86" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-12.065" x2="-21.59" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="11.684" x2="-21.59" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="12.192" x2="-21.59" y2="12.192" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="11.684" x2="-21.59" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="12.573" x2="-23.368" y2="12.573" width="0.3048" layer="21"/>
<wire x1="-21.082" y1="12.573" x2="24.892" y2="12.573" width="0.3048" layer="21"/>
<wire x1="24.892" y1="12.7" x2="25.4" y2="12.192" width="0.1524" layer="21"/>
<wire x1="25.4" y1="12.192" x2="25.4" y2="-12.192" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.524" x2="-3.048" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-1.524" x2="-3.048" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="1.524" x2="-3.556" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="1.27" x2="-4.318" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0.889" x2="-3.937" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.524" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0" x2="-3.556" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0" x2="24.13" y2="0" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="0" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-22.733" y1="12.065" x2="-21.717" y2="12.065" width="0.3048" layer="21"/>
<wire x1="-25.146" y1="12.319" x2="-23.114" y2="12.319" width="0.3048" layer="21"/>
<wire x1="-22.733" y1="11.811" x2="-21.717" y2="11.811" width="0.3048" layer="21"/>
<wire x1="-21.336" y1="12.319" x2="25.146" y2="12.319" width="0.3048" layer="21"/>
<wire x1="27.94" y1="0" x2="26.035" y2="0" width="0.762" layer="51"/>
<wire x1="-27.94" y1="0" x2="-26.035" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-27.94" y="0" drill="1.1176" diameter="3.81"/>
<pad name="-" x="27.94" y="0" drill="1.1176" diameter="3.81" shape="octagon"/>
<text x="-24.638" y="13.208" size="1.778" layer="25">&gt;NAME</text>
<text x="-1.2446" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-2.54" y1="-1.524" x2="-2.032" y2="1.524" layer="21"/>
<rectangle x1="25.4" y1="-0.381" x2="25.908" y2="0.381" layer="21"/>
<rectangle x1="-25.908" y1="-0.381" x2="-25.4" y2="0.381" layer="21"/>
</package>
<package name="E55-30">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 55 mm, diameter 30 mm</description>
<wire x1="-25.4" y1="14.732" x2="-24.892" y2="15.24" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="15.24" x2="-23.368" y2="15.24" width="0.1524" layer="21"/>
<wire x1="-23.368" y1="15.24" x2="-22.86" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-14.732" x2="-25.019" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="-15.24" x2="-23.368" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="-23.368" y1="-15.24" x2="-23.241" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="14.732" x2="-25.4" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-14.732" x2="-21.59" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-21.082" y1="-15.24" x2="24.892" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-14.732" x2="-22.86" y2="-14.6812" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-14.732" x2="-21.59" y2="-14.6812" width="0.1524" layer="21"/>
<wire x1="-25.019" y1="-15.113" x2="-23.241" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-25.019" y1="-15.113" x2="-24.892" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="-23.241" y1="-15.113" x2="-22.86" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-14.732" x2="-21.209" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-21.209" y1="-15.113" x2="-21.082" y2="-15.24" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="-15.24" x2="-24.892" y2="-15.1892" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="-15.1892" x2="-23.368" y2="-15.1892" width="0.1524" layer="21"/>
<wire x1="-21.082" y1="-15.24" x2="-21.082" y2="-15.1892" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-14.605" x2="-21.59" y2="-14.605" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-14.6812" x2="-21.59" y2="-14.6812" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-14.6812" x2="-22.86" y2="-14.605" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-14.6812" x2="-21.59" y2="-14.605" width="0.1524" layer="21"/>
<wire x1="-21.082" y1="-15.1892" x2="24.892" y2="-15.1892" width="0.1524" layer="21"/>
<wire x1="24.892" y1="-15.24" x2="25.019" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="-21.209" y1="-15.113" x2="25.019" y2="-15.113" width="0.1524" layer="21"/>
<wire x1="25.019" y1="-15.113" x2="25.4" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="14.732" x2="-21.082" y2="15.24" width="0.1524" layer="21"/>
<wire x1="-21.082" y1="15.24" x2="24.892" y2="15.24" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="14.732" x2="-22.86" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="14.732" x2="25.4" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-14.605" x2="-22.86" y2="14.224" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="14.224" x2="-22.86" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-14.605" x2="-21.59" y2="14.224" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="14.224" x2="-21.59" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="14.732" x2="-21.59" y2="14.732" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="14.224" x2="-21.59" y2="14.224" width="0.1524" layer="21"/>
<wire x1="-24.892" y1="15.113" x2="-23.368" y2="15.113" width="0.3048" layer="21"/>
<wire x1="-21.082" y1="15.113" x2="24.892" y2="15.113" width="0.3048" layer="21"/>
<wire x1="24.892" y1="15.24" x2="25.4" y2="14.732" width="0.1524" layer="21"/>
<wire x1="25.4" y1="14.732" x2="25.4" y2="-14.732" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="-1.524" x2="-3.048" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-1.524" x2="-3.048" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="1.524" x2="-3.556" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="1.27" x2="-4.318" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0.889" x2="-3.937" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="1.524" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="0" x2="-3.556" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0" x2="24.13" y2="0" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="0" x2="-3.556" y2="0" width="0.1524" layer="21"/>
<wire x1="-22.733" y1="14.605" x2="-21.717" y2="14.605" width="0.3048" layer="21"/>
<wire x1="-25.146" y1="14.859" x2="-23.114" y2="14.859" width="0.3048" layer="21"/>
<wire x1="-22.733" y1="14.351" x2="-21.717" y2="14.351" width="0.3048" layer="21"/>
<wire x1="-21.336" y1="14.859" x2="25.146" y2="14.859" width="0.3048" layer="21"/>
<wire x1="27.94" y1="0" x2="26.035" y2="0" width="0.762" layer="51"/>
<wire x1="-27.94" y1="0" x2="-26.035" y2="0" width="0.762" layer="51"/>
<pad name="+" x="-27.94" y="0" drill="1.1938" diameter="3.81"/>
<pad name="-" x="27.94" y="0" drill="1.1938" diameter="3.81" shape="octagon"/>
<text x="-24.511" y="15.748" size="1.778" layer="25">&gt;NAME</text>
<text x="-1.2446" y="-2.4892" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-2.54" y1="-1.524" x2="-2.032" y2="1.524" layer="21"/>
<rectangle x1="25.4" y1="-0.381" x2="25.908" y2="0.381" layer="21"/>
<rectangle x1="-25.908" y1="-0.381" x2="-25.4" y2="0.381" layer="21"/>
</package>
<package name="E5R">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5.08 mm, diameter 9 mm</description>
<wire x1="-0.889" y1="0" x2="0.9398" y2="0" width="0.6096" layer="21"/>
<wire x1="-5.588" y1="0" x2="-4.572" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.508" x2="-5.08" y2="0.508" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0" x2="1.143" y2="0" width="0.6096" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.016" y2="0" width="0.6096" layer="51"/>
<wire x1="1.778" y1="-1.143" x2="1.7821" y2="1.1275" width="0.1524" layer="21" curve="-330.553"/>
<wire x1="1.7732" y1="1.1613" x2="1.7781" y2="-1.143" width="0.1524" layer="51" curve="-29.8953"/>
<pad name="+" x="-2.54" y="0" drill="0.8128" diameter="2.54"/>
<pad name="-" x="2.54" y="0" drill="0.8128" diameter="2.54" shape="octagon"/>
<text x="1.651" y="2.4638" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.08" y="-3.048" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="E7,5-16">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 7.62 mm, diameter 16 mm</description>
<wire x1="0.635" y1="0" x2="2.032" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-2.032" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.905" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-1.905" x2="-0.254" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-1.905" x2="-0.254" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.905" x2="-0.889" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-0.889" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.493" y1="0" x2="-5.969" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-0.762" x2="-6.731" y2="0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="8.255" width="0.1524" layer="21"/>
<pad name="-" x="3.81" y="0" drill="1.016" diameter="3.1496" shape="octagon"/>
<pad name="+" x="-3.81" y="0" drill="1.016" diameter="3.1496"/>
<text x="7.874" y="3.81" size="1.778" layer="25">&gt;NAME</text>
<text x="-5.08" y="-4.2926" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.905" x2="0.889" y2="1.905" layer="21"/>
</package>
<package name="E7,5-18">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 7.62 mm, diameter 18 mm</description>
<wire x1="0.635" y1="0" x2="2.032" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-2.032" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.905" x2="-0.889" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-1.905" x2="-0.254" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-1.905" x2="-0.254" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.905" x2="-0.889" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="0" x2="-0.889" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.493" y1="0" x2="-5.969" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-0.762" x2="-6.731" y2="0.762" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="8.89" width="0.1524" layer="21"/>
<pad name="-" x="3.81" y="0" drill="1.016" diameter="3.1496" shape="octagon"/>
<pad name="+" x="-3.81" y="0" drill="1.016" diameter="3.1496"/>
<text x="8.001" y="5.08" size="1.778" layer="25">&gt;NAME</text>
<text x="-5.08" y="-4.2926" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.905" x2="0.889" y2="1.905" layer="21"/>
</package>
<package name="E2,5-6E">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 2.54 mm, diameter 6 mm</description>
<wire x1="-2.159" y1="0" x2="-2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-0.254" x2="-2.413" y2="0.254" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="0" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="-1.27" x2="-0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-1.27" x2="-0.254" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="1.27" x2="-0.762" y2="1.27" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="1.27" x2="-0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="0.635" y1="0" x2="1.651" y2="0" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="2.794" width="0.1524" layer="21"/>
<pad name="-" x="1.27" y="0" drill="0.8128" diameter="1.5748" shape="octagon"/>
<pad name="+" x="-1.27" y="0" drill="0.8128" diameter="1.5748"/>
<text x="2.667" y="1.524" size="1.27" layer="25">&gt;NAME</text>
<text x="2.667" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.27" x2="0.762" y2="1.27" layer="51"/>
</package>
<package name="E2,5-3">
<wire x1="0.762" y1="-0.9525" x2="0.635" y2="-0.9525" width="0.0762" layer="21"/>
<wire x1="0.635" y1="-0.8255" x2="0.635" y2="-0.9525" width="0.0762" layer="21"/>
<wire x1="0.635" y1="-0.9525" x2="0.508" y2="-0.9525" width="0.0762" layer="21"/>
<wire x1="0.635" y1="-0.9525" x2="0.635" y2="-1.0795" width="0.0762" layer="21"/>
<wire x1="1.27" y1="0" x2="0.4445" y2="0" width="0.0762" layer="51"/>
<wire x1="0.4445" y1="0" x2="0.4445" y2="0.6985" width="0.0762" layer="51"/>
<wire x1="0.4445" y1="0.6985" x2="0.1397" y2="0.6985" width="0.0762" layer="51"/>
<wire x1="0.1397" y1="0.6985" x2="0.1397" y2="-0.6985" width="0.0762" layer="51"/>
<wire x1="0.1397" y1="-0.6985" x2="0.4445" y2="-0.6985" width="0.0762" layer="51"/>
<wire x1="0.4445" y1="-0.6985" x2="0.4445" y2="0" width="0.0762" layer="51"/>
<circle x="0" y="0" radius="1.524" width="0.127" layer="21"/>
<pad name="-" x="-1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon" rot="R180"/>
<pad name="+" x="1.27" y="0" drill="0.8128" diameter="1.6002" rot="R180"/>
<text x="-1.2065" y="0.8255" size="1.016" layer="25" align="bottom-right">&gt;NAME</text>
<text x="1.2065" y="1.016" size="0.8128" layer="27">&gt;VALUE</text>
<wire x1="-1.27" y1="0" x2="-0.4445" y2="0" width="0.0762" layer="51"/>
<wire x1="-0.4445" y1="0" x2="-0.4445" y2="-0.6985" width="0.0762" layer="51"/>
<wire x1="-0.4445" y1="-0.6985" x2="-0.1397" y2="-0.6985" width="0.0762" layer="51"/>
<wire x1="-0.1397" y1="-0.6985" x2="-0.1397" y2="0.6985" width="0.0762" layer="51"/>
<wire x1="-0.1397" y1="0.6985" x2="-0.4445" y2="0.6985" width="0.0762" layer="51"/>
<wire x1="-0.4445" y1="0.6985" x2="-0.4445" y2="0" width="0.0762" layer="51"/>
<rectangle x1="-0.4064" y1="-0.6858" x2="-0.1778" y2="0.6858" layer="21"/>
</package>
<package name="E2,5-5">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 2.54 mm, diameter 5 mm</description>
<wire x1="1.651" y1="-1.27" x2="1.397" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.397" y1="-1.016" x2="1.397" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.397" y1="-1.27" x2="1.143" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.397" y1="-1.27" x2="1.397" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.651" y1="0" x2="0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="0.762" y1="0" x2="0.762" y2="1.27" width="0.1524" layer="51"/>
<wire x1="0.762" y1="1.27" x2="0.254" y2="1.27" width="0.1524" layer="51"/>
<wire x1="0.254" y1="1.27" x2="0.254" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-1.27" x2="0.762" y2="-1.27" width="0.1524" layer="51"/>
<wire x1="0.762" y1="-1.27" x2="0.762" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="0" x2="-1.651" y2="0" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<pad name="-" x="-1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon" rot="R180"/>
<pad name="+" x="1.27" y="0" drill="0.8128" diameter="1.6002" rot="R180"/>
<text x="-1.397" y="2.286" size="1.016" layer="25" align="bottom-right">&gt;NAME</text>
<text x="1.143" y="-2.413" size="0.8128" layer="27" align="top-left">&gt;VALUE</text>
<rectangle x1="-0.762" y1="-1.27" x2="-0.254" y2="1.27" layer="51" rot="R180"/>
</package>
<package name="E5-5">
<description>&lt;b&gt;ELECTROLYTIC CAPACITOR&lt;/b&gt;&lt;p&gt;
 grid 5.08 mm, diameter 5 mm</description>
<wire x1="-2.1557" y1="1.3432" x2="2.1557" y2="1.3432" width="0.1524" layer="21" curve="-116.147"/>
<wire x1="-2.1557" y1="-1.3432" x2="2.1557" y2="-1.3432" width="0.1524" layer="21" curve="116.147"/>
<wire x1="-2.1557" y1="1.3432" x2="-2.1557" y2="-1.3432" width="0.1524" layer="51" curve="63.8534"/>
<wire x1="2.1557" y1="-1.3432" x2="2.1557" y2="1.3432" width="0.1524" layer="51" curve="63.8534"/>
<wire x1="-1.397" y1="0" x2="-0.762" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="0" x2="-0.762" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-1.016" x2="-0.254" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.016" x2="-0.762" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="1.016" x2="-0.762" y2="0" width="0.1524" layer="21"/>
<wire x1="0.635" y1="0" x2="1.397" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="0.635" x2="-1.016" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.381" x2="-1.27" y2="0.889" width="0.1524" layer="21"/>
<pad name="+" x="-2.54" y="0" drill="0.8128" diameter="1.905"/>
<pad name="-" x="2.54" y="0" drill="0.8128" diameter="1.905" shape="octagon"/>
<text x="2.54" y="1.27" size="0.8128" layer="25">&gt;NAME</text>
<text x="2.54" y="-2.54" size="0.6096" layer="27">&gt;VALUE</text>
<rectangle x1="0.254" y1="-1.016" x2="0.762" y2="1.016" layer="21"/>
</package>
<package name="E2.5-4/V">
<wire x1="1.27" y1="2.4765" x2="1.27" y2="2.286" width="0.1524" layer="21"/>
<wire x1="1.0795" y1="2.286" x2="1.27" y2="2.286" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.286" x2="1.27" y2="2.0955" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.286" x2="1.4605" y2="2.286" width="0.1524" layer="21"/>
<wire x1="0" y1="2.54" x2="0" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="0" y1="1.8542" x2="-0.889" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="1.8542" x2="-0.889" y2="1.4732" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="1.4732" x2="0.889" y2="1.4732" width="0.1524" layer="51"/>
<wire x1="0.889" y1="1.4732" x2="0.889" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="0.889" y1="1.8542" x2="0" y2="1.8542" width="0.1524" layer="51"/>
<circle x="0" y="1.27" radius="2.032" width="0.1524" layer="21"/>
<pad name="-" x="0" y="0" drill="0.8128" diameter="1.6002" shape="octagon" rot="R270"/>
<pad name="+" x="0" y="2.54" drill="0.8128" diameter="1.6002" rot="R270"/>
<text x="-1.651" y="2.794" size="0.8128" layer="25" align="bottom-right">&gt;NAME</text>
<text x="0.635" y="-0.8255" size="0.6096" layer="27" align="top-left">&gt;VALUE</text>
<wire x1="0" y1="0" x2="0" y2="0.6858" width="0.1524" layer="51"/>
<wire x1="0" y1="0.6858" x2="0.889" y2="0.6858" width="0.1524" layer="51"/>
<wire x1="0.889" y1="0.6858" x2="0.889" y2="1.0668" width="0.1524" layer="51"/>
<wire x1="0.889" y1="1.0668" x2="-0.889" y2="1.0668" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="1.0668" x2="-0.889" y2="0.6858" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="0.6858" x2="0" y2="0.6858" width="0.1524" layer="51"/>
<rectangle x1="-0.127" y1="0.0762" x2="0.127" y2="1.7018" layer="21" rot="R90"/>
</package>
<package name="E2,5-5/V">
<wire x1="1.27" y1="2.921" x2="1.27" y2="2.667" width="0.1524" layer="21"/>
<wire x1="1.016" y1="2.667" x2="1.27" y2="2.667" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.667" x2="1.27" y2="2.413" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.667" x2="1.524" y2="2.667" width="0.1524" layer="21"/>
<wire x1="0" y1="2.921" x2="0" y2="2.032" width="0.1524" layer="51"/>
<wire x1="0" y1="2.032" x2="-1.27" y2="2.032" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="2.032" x2="-1.27" y2="1.524" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.524" x2="1.27" y2="1.524" width="0.1524" layer="51"/>
<wire x1="1.27" y1="1.524" x2="1.27" y2="2.032" width="0.1524" layer="51"/>
<wire x1="1.27" y1="2.032" x2="0" y2="2.032" width="0.1524" layer="51"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.381" width="0.1524" layer="51"/>
<circle x="0" y="1.27" radius="2.54" width="0.1524" layer="21"/>
<pad name="-" x="0" y="0" drill="0.8128" diameter="1.6002" shape="octagon" rot="R270"/>
<pad name="+" x="0" y="2.54" drill="0.8128" diameter="1.6002" rot="R270"/>
<text x="-1.397" y="3.556" size="1.016" layer="25" align="bottom-right">&gt;NAME</text>
<text x="1.143" y="-1.143" size="0.8128" layer="27" align="top-left">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.508" x2="0.254" y2="2.032" layer="51" rot="R270"/>
</package>
</packages>
<symbols>
<symbol name="CPOL">
<wire x1="-1.524" y1="0.381" x2="1.524" y2="0.381" width="0.254" layer="94"/>
<wire x1="1.524" y1="0.381" x2="1.524" y2="1.27" width="0.254" layer="94"/>
<wire x1="-1.524" y1="1.27" x2="-1.524" y2="0.381" width="0.254" layer="94"/>
<wire x1="-1.524" y1="1.27" x2="1.524" y2="1.27" width="0.254" layer="94"/>
<text x="1.143" y="1.7526" size="1.778" layer="95">&gt;NAME</text>
<text x="-0.5842" y="1.6764" size="1.27" layer="94" rot="R90">+</text>
<text x="1.143" y="-3.3274" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.27" x2="1.651" y2="-0.381" layer="94"/>
<pin name="-" x="0" y="-3.81" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="+" x="0" y="3.81" visible="off" length="short" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CPOL" prefix="C" uservalue="yes">
<description>&lt;B&gt;POLARIZED CAPACITOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="CPOL" x="0" y="0"/>
</gates>
<devices>
<device name="E15-5AXIAL" package="E15-5">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E15-6AXIAL" package="E15-6">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E15-9AXIAL" package="E15-9">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E2.5-4R" package="E2,5-4R">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E2.5-5" package="E2,5-5">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E2.5-6" package="E2,5-6">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E2.5-7" package="E2,5-7">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E2.5-4V" package="E2,5RE">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E25-10AXIAL" package="E25-10">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E25-9AXIAL" package="E25-9">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E30-10AXIAL" package="E30-10">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E30-12AXIAL" package="E30-12">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E30-16AXIAL" package="E30-16">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E35-12AXIAL" package="E35-12">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E35-14AXIAL" package="E35-14">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E35-16AXIAL" package="E35-16">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E35-18AXIAL" package="E35-18">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E45-16AXIAL" package="E45-16">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E45-18AXIAL" package="E45-18">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E45-21AXIAL" package="E45-21">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E45-22AXIAL" package="E45-22">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E45-25AXIAL" package="E45-25">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E5-10.5" package="E5-10,5">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E5-13" package="E5-13">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E5-4" package="E5-4">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E5-5" package="E5-5">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E5-6" package="E5-6">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E5-8.5" package="E5-8,5">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E50-25AXIAL" package="E50-25">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E50-30AXIAL" package="E50-30">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E55-25AXIAL" package="E55-25">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E55-30AXIAL" package="E55-30">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E5-9VAXIAL" package="E5R">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E7.5-16" package="E7,5-16">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E7.5-18" package="E7,5-18">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E2,5-6E" package="E2,5-6E">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E2,5-4" package="E2,5-4">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E2,5-3" package="E2,5-3">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E2,5-4/V" package="E2.5-4/V">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="E2,5-5/V" package="E2,5-5/V">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
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
<packages>
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
<text x="1.016" y="0" size="0.6096" layer="25" ratio="10" align="center">&gt;NAME</text>
<text x="-0.8255" y="0" size="0.6096" layer="27" ratio="10" rot="R90" align="center">&gt;VALUE</text>
</package>
</packages>
<symbols>
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
<deviceset name="BC547">
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
<package name="0202/5">
<pad name="1" x="0" y="-2.54" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="2" x="0" y="2.54" drill="0.8128" shape="octagon" rot="R90"/>
<text x="0" y="0" size="0.6096" layer="27" ratio="10" rot="R90" align="center">&gt;VALUE</text>
<wire x1="0" y1="2.54" x2="0" y2="1.651" width="0.254" layer="51"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.651" width="0.254" layer="51"/>
<wire x1="0.381" y1="-1.27" x2="0.635" y2="-1.016" width="0.127" layer="21" curve="90"/>
<wire x1="0.635" y1="1.016" x2="0.381" y2="1.27" width="0.127" layer="21" curve="90"/>
<text x="0.889" y="0" size="0.8128" layer="25" ratio="10" rot="R270" align="bottom-center">&gt;NAME</text>
<wire x1="-0.381" y1="-1.27" x2="-0.635" y2="-1.016" width="0.127" layer="21" curve="-90"/>
<wire x1="-0.635" y1="1.016" x2="-0.381" y2="1.27" width="0.127" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="-0.381" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-0.635" y1="1.016" x2="-0.635" y2="-1.016" width="0.127" layer="21"/>
<wire x1="0.635" y1="1.016" x2="0.635" y2="-1.016" width="0.127" layer="21"/>
<wire x1="0.381" y1="1.27" x2="-0.381" y2="1.27" width="0.127" layer="21"/>
<rectangle x1="-0.1905" y1="1.3335" x2="0.1905" y2="1.5875" layer="21" rot="R90"/>
<rectangle x1="-0.1905" y1="-1.5875" x2="0.1905" y2="-1.3335" layer="21" rot="R90"/>
</package>
<package name="0202/10">
<wire x1="-0.381" y1="-1.27" x2="-0.635" y2="-1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="0.635" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="0.635" y1="1.016" x2="0.381" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.635" y1="1.016" x2="-0.381" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="0" y="-5.08" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="2" x="0" y="5.08" drill="0.8128" shape="octagon" rot="R90"/>
<text x="-1.27" y="0" size="0.8128" layer="25" ratio="10" rot="R270" align="center">&gt;NAME</text>
<text x="0" y="0" size="0.6096" layer="27" ratio="10" rot="R90" align="center">&gt;VALUE</text>
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
<text x="0.254" y="1.905" size="0.6096" layer="25" ratio="10">&gt;NAME</text>
<text x="0.254" y="-1.905" size="0.4064" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
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
</devices>
</deviceset>
</devicesets>
</library>
<library name="sw">
<packages>
<package name="SLSW-1P2T-V">
<wire x1="1.27" y1="4.572" x2="-2.54" y2="4.572" width="0.1524" layer="21"/>
<wire x1="1.27" y1="4.572" x2="1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.016" x2="1.27" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-4.572" x2="1.27" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="1.524" y1="0" x2="3.302" y2="0" width="0.1524" layer="51"/>
<wire x1="1.27" y1="-0.508" x2="3.302" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.016" x2="3.302" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.016" x2="1.27" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.016" x2="3.302" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.524" x2="3.302" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.524" x2="1.27" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-1.524" x2="3.302" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-2.032" x2="3.302" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.302" y1="0" x2="3.302" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-0.508" x2="3.302" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-2.032" x2="1.27" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.508" x2="1.27" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="-2.54" drill="1.1176" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="2" x="-5.08" y="0" drill="1.1176" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="3" x="-5.08" y="2.54" drill="1.1176" diameter="1.778" shape="octagon" rot="R180"/>
<text x="-5.08" y="4.191" size="0.8128" layer="21" ratio="10" rot="R270">1</text>
<text x="-5.08" y="5.588" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-5.588" size="1.27" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
<wire x1="-2.54" y1="4.572" x2="-2.54" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-2.032" x2="3.302" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-2.54" x2="3.302" y2="-2.54" width="0.1524" layer="21"/>
<rectangle x1="-4.572" y1="2.286" x2="-2.54" y2="2.794" layer="21"/>
<wire x1="-5.08" y1="2.54" x2="-4.318" y2="2.54" width="0.3048" layer="21"/>
<rectangle x1="-4.572" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
<wire x1="-5.08" y1="0" x2="-4.318" y2="0" width="0.3048" layer="21"/>
<rectangle x1="-4.572" y1="-2.794" x2="-2.54" y2="-2.286" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="-4.318" y2="-2.54" width="0.3048" layer="21"/>
<wire x1="1.27" y1="0" x2="3.302" y2="0" width="0.1524" layer="21"/>
</package>
<package name="SLSW-1P2T-3D">
<pad name="1" x="-2.54" y="-2.54" drill="1.1176" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="2" x="-2.54" y="0" drill="1.1176" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="3" x="-2.54" y="2.54" drill="1.1176" diameter="1.778" shape="octagon" rot="R180"/>
<text x="-2.54" y="4.191" size="0.8128" layer="21" ratio="10" rot="R270">1</text>
<rectangle x1="-2.032" y1="-2.794" x2="0" y2="-2.286" layer="22"/>
<wire x1="-2.54" y1="2.54" x2="-1.778" y2="2.54" width="0.3048" layer="21"/>
<rectangle x1="-2.032" y1="-0.254" x2="0" y2="0.254" layer="22"/>
<wire x1="-2.54" y1="0" x2="-1.778" y2="0" width="0.3048" layer="21"/>
<rectangle x1="-2.032" y1="2.286" x2="0" y2="2.794" layer="22"/>
<wire x1="-2.54" y1="-2.54" x2="-1.778" y2="-2.54" width="0.3048" layer="21"/>
<wire x1="3.81" y1="-3.048" x2="0.508" y2="-3.048" width="0.1524" layer="22"/>
<wire x1="3.81" y1="-3.048" x2="3.81" y2="-1.27" width="0.1524" layer="22"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="4.318" width="0.1524" layer="22"/>
<wire x1="0.508" y1="4.318" x2="3.81" y2="4.318" width="0.1524" layer="22"/>
<wire x1="3.81" y1="-0.762" x2="5.842" y2="-0.762" width="0.1524" layer="22"/>
<wire x1="3.81" y1="-0.254" x2="5.842" y2="-0.254" width="0.1524" layer="22"/>
<wire x1="3.81" y1="-0.254" x2="3.81" y2="-0.762" width="0.1524" layer="22"/>
<wire x1="5.842" y1="-0.254" x2="5.842" y2="0.254" width="0.1524" layer="22"/>
<wire x1="3.81" y1="0.254" x2="5.842" y2="0.254" width="0.1524" layer="22"/>
<wire x1="3.81" y1="0.254" x2="3.81" y2="-0.254" width="0.1524" layer="22"/>
<wire x1="5.842" y1="0.254" x2="5.842" y2="0.762" width="0.1524" layer="22"/>
<wire x1="5.842" y1="0.762" x2="5.842" y2="1.27" width="0.1524" layer="22"/>
<wire x1="5.842" y1="-1.27" x2="5.842" y2="-0.762" width="0.1524" layer="22"/>
<wire x1="5.842" y1="-0.762" x2="5.842" y2="-0.254" width="0.1524" layer="22"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="0.762" width="0.1524" layer="22"/>
<wire x1="3.81" y1="0.762" x2="3.81" y2="0.254" width="0.1524" layer="22"/>
<wire x1="3.81" y1="-0.762" x2="3.81" y2="-1.27" width="0.1524" layer="22"/>
<wire x1="0.508" y1="-3.048" x2="0.508" y2="4.318" width="0.1524" layer="22"/>
<wire x1="3.81" y1="0.762" x2="5.842" y2="0.762" width="0.1524" layer="22"/>
<wire x1="3.81" y1="1.27" x2="5.842" y2="1.27" width="0.1524" layer="22"/>
<wire x1="-0.508" y1="-4.318" x2="-0.508" y2="2.794" width="0.1524" layer="22"/>
<wire x1="-0.508" y1="-4.318" x2="0.508" y2="-3.048" width="0.127" layer="22"/>
<wire x1="-0.508" y1="2.794" x2="0.508" y2="4.318" width="0.127" layer="22"/>
<wire x1="3.81" y1="-1.27" x2="5.842" y2="-1.27" width="0.1524" layer="22"/>
<wire x1="2.54" y1="-4.318" x2="3.81" y2="-3.048" width="0.127" layer="22"/>
<wire x1="2.54" y1="-4.318" x2="-0.508" y2="-4.318" width="0.1524" layer="22"/>
</package>
<package name="SLSW-1P2T">
<wire x1="-2.54" y1="-5.08" x2="2.54" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-5.08" x2="-2.54" y2="5.08" width="0.1524" layer="21"/>
<wire x1="2.54" y1="5.08" x2="-2.54" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.81" x2="1.27" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-3.81" x2="-1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.016" x2="-1.27" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.016" x2="-1.27" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.016" x2="1.27" y2="0.508" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.524" x2="-1.27" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.524" x2="-1.27" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.032" x2="-1.27" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="3.81" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.032" x2="-1.27" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.508" x2="1.27" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.508" x2="-1.27" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.81" x2="-1.27" y2="3.81" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.81" x2="1.27" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.54" x2="1.27" y2="2.032" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.032" x2="1.27" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.016" x2="1.27" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.508" x2="1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-5.08" x2="2.54" y2="5.08" width="0.1524" layer="21"/>
<pad name="1" x="0" y="2.54" drill="1.1176" diameter="1.778" shape="octagon"/>
<pad name="2" x="0" y="0" drill="1.1176" diameter="1.778" shape="octagon"/>
<pad name="3" x="0" y="-2.54" drill="1.1176" diameter="1.778" shape="octagon"/>
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.1524" layer="21"/>
<wire x1="1.27" y1="2.54" x2="-1.27" y2="2.54" width="0.1524" layer="21"/>
</package>
<package name="SLSW-1P2T-H">
<wire x1="-4.318" y1="1.524" x2="-4.318" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-1.524" x2="4.318" y2="1.524" width="0.1524" layer="21"/>
<wire x1="0.254" y1="3.556" x2="0.762" y2="3.556" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.556" x2="1.778" y2="3.556" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.524" x2="1.27" y2="3.556" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.524" x2="0.762" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.778" y1="1.524" x2="1.778" y2="3.556" width="0.1524" layer="21"/>
<wire x1="1.778" y1="3.556" x2="2.286" y2="3.556" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.524" x2="2.286" y2="3.556" width="0.1524" layer="21"/>
<wire x1="0.762" y1="3.556" x2="0.762" y2="1.524" width="0.1524" layer="21"/>
<wire x1="0.762" y1="3.556" x2="1.27" y2="3.556" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.524" x2="1.778" y2="1.524" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.524" x2="1.778" y2="1.524" width="0.1524" layer="21"/>
<wire x1="0.762" y1="1.524" x2="0.254" y2="1.524" width="0.1524" layer="21"/>
<pad name="1" x="2.54" y="0" drill="1.1176" diameter="1.524" shape="octagon" rot="R270" stop="no"/>
<pad name="2" x="0" y="0" drill="1.1176" diameter="1.524" shape="octagon" rot="R270" stop="no"/>
<pad name="3" x="-2.54" y="0" drill="1.1176" diameter="1.524" shape="octagon" rot="R270" stop="no"/>
<wire x1="0.254" y1="3.556" x2="0.254" y2="1.524" width="0.1524" layer="21"/>
<text x="5.08" y="-1.778" size="1.016" layer="25" rot="SR270" align="center-right">&gt;NAME</text>
<wire x1="-4.318" y1="-1.524" x2="4.318" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="1.524" x2="4.318" y2="1.524" width="0.1524" layer="21"/>
</package>
<package name="SLSW-1P2T-H5">
<wire x1="-7.366" y1="3.81" x2="-7.366" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="7.366" y1="-2.54" x2="7.366" y2="3.81" width="0.1524" layer="21"/>
<wire x1="0.254" y1="11.176" x2="0.762" y2="11.176" width="0.1524" layer="21"/>
<wire x1="1.27" y1="11.176" x2="1.778" y2="11.176" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.81" x2="1.27" y2="11.176" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.81" x2="0.762" y2="3.81" width="0.1524" layer="21"/>
<wire x1="1.778" y1="3.81" x2="1.778" y2="11.176" width="0.1524" layer="21"/>
<wire x1="1.778" y1="11.176" x2="2.286" y2="11.176" width="0.1524" layer="21"/>
<wire x1="2.286" y1="3.81" x2="2.286" y2="11.176" width="0.1524" layer="21"/>
<wire x1="0.762" y1="11.176" x2="0.762" y2="3.81" width="0.1524" layer="21"/>
<wire x1="0.762" y1="11.176" x2="1.27" y2="11.176" width="0.1524" layer="21"/>
<wire x1="2.286" y1="3.81" x2="1.778" y2="3.81" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.81" x2="1.778" y2="3.81" width="0.1524" layer="21"/>
<wire x1="0.762" y1="3.81" x2="0.254" y2="3.81" width="0.1524" layer="21"/>
<pad name="1" x="5.08" y="-5.08" drill="1.1176" diameter="1.524" shape="octagon" rot="R270" stop="no"/>
<pad name="2" x="0" y="-5.08" drill="1.1176" diameter="1.524" shape="octagon" rot="R270" stop="no"/>
<pad name="3" x="-5.08" y="-5.08" drill="1.1176" diameter="1.524" shape="octagon" rot="R270" stop="no"/>
<wire x1="0.254" y1="11.176" x2="0.254" y2="3.81" width="0.1524" layer="21"/>
<text x="8.128" y="-1.27" size="1.016" layer="25" rot="SR270" align="center-right">&gt;NAME</text>
<wire x1="-7.366" y1="-2.54" x2="7.366" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="3.81" x2="-0.254" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="3.81" x2="2.794" y2="3.81" width="0.1524" layer="21"/>
<wire x1="2.794" y1="3.81" x2="7.366" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="11.176" x2="-0.254" y2="3.81" width="0.1524" layer="21"/>
<wire x1="2.794" y1="3.81" x2="2.794" y2="11.176" width="0.1524" layer="21"/>
<wire x1="2.286" y1="11.176" x2="2.794" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="11.176" x2="0.254" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="-3.81" width="0.4064" layer="21"/>
<rectangle x1="-5.588" y1="-3.81" x2="-4.572" y2="-2.54" layer="21"/>
<rectangle x1="-0.508" y1="-3.81" x2="0.508" y2="-2.54" layer="21"/>
<rectangle x1="4.572" y1="-3.81" x2="5.588" y2="-2.54" layer="21"/>
<wire x1="0" y1="-5.08" x2="0" y2="-3.81" width="0.4064" layer="21"/>
<wire x1="5.08" y1="-5.08" x2="5.08" y2="-3.81" width="0.4064" layer="21"/>
</package>
<package name="JPSW-1P2T">
<pad name="S" x="2.54" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="O" x="-2.54" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="P" x="0" y="0" drill="0.9" diameter="1.778" shape="square" rot="R180"/>
<wire x1="-4.191" y1="1.397" x2="-4.191" y2="-1.397" width="0.127" layer="21"/>
<wire x1="-4.191" y1="-1.397" x2="4.445" y2="-1.397" width="0.127" layer="21"/>
<wire x1="4.445" y1="-1.397" x2="4.445" y2="1.397" width="0.127" layer="21"/>
<wire x1="4.445" y1="1.397" x2="-4.191" y2="1.397" width="0.127" layer="21"/>
<text x="-4.572" y="1.27" size="0.4064" layer="21" font="vector" align="top-right">1</text>
<text x="-4.572" y="-1.27" size="0.6096" layer="25" align="bottom-right">&gt;NAME</text>
<wire x1="-3.81" y1="1.143" x2="-3.81" y2="-1.143" width="0.4064" layer="47"/>
<wire x1="-3.81" y1="-1.143" x2="1.27" y2="-1.143" width="0.4064" layer="47"/>
<wire x1="1.27" y1="-1.143" x2="1.27" y2="1.143" width="0.4064" layer="47"/>
<wire x1="1.27" y1="1.143" x2="-3.81" y2="1.143" width="0.4064" layer="47"/>
<wire x1="0.8255" y1="-0.0635" x2="0.127" y2="0.635" width="0.127" layer="47" curve="90"/>
<wire x1="0.127" y1="0.635" x2="-0.254" y2="0.635" width="0.127" layer="47"/>
<wire x1="-0.254" y1="0.635" x2="-0.8255" y2="0.0635" width="0.127" layer="47" curve="90"/>
<wire x1="-0.8255" y1="0.0635" x2="-0.8255" y2="-0.0635" width="0.127" layer="47"/>
<wire x1="-0.762" y1="0.3175" x2="-1.8415" y2="0.3175" width="0.127" layer="47"/>
<wire x1="-3.429" y1="0" x2="-2.7305" y2="-0.6985" width="0.127" layer="47" curve="90"/>
<wire x1="-2.7305" y1="-0.6985" x2="-2.3495" y2="-0.6985" width="0.127" layer="47"/>
<wire x1="-2.3495" y1="-0.6985" x2="-1.778" y2="-0.127" width="0.127" layer="47" curve="90"/>
<wire x1="-1.778" y1="-0.127" x2="-1.778" y2="0" width="0.127" layer="47"/>
<wire x1="-1.778" y1="0" x2="-2.4765" y2="0.6985" width="0.127" layer="47" curve="90"/>
<wire x1="-2.4765" y1="0.6985" x2="-2.8575" y2="0.6985" width="0.127" layer="47"/>
<wire x1="-2.8575" y1="0.6985" x2="-3.429" y2="0.127" width="0.127" layer="47" curve="90"/>
<wire x1="-3.429" y1="0.127" x2="-3.429" y2="0" width="0.127" layer="47"/>
<wire x1="-0.8255" y1="-0.0635" x2="-0.127" y2="-0.762" width="0.127" layer="47" curve="90"/>
<wire x1="-0.127" y1="-0.762" x2="0.254" y2="-0.762" width="0.127" layer="47"/>
<wire x1="0.254" y1="-0.762" x2="0.8255" y2="-0.1905" width="0.127" layer="47" curve="90"/>
<wire x1="0.8255" y1="-0.1905" x2="0.8255" y2="-0.0635" width="0.127" layer="47"/>
<wire x1="-1.778" y1="-0.3175" x2="-0.8255" y2="-0.3175" width="0.127" layer="47"/>
</package>
</packages>
<symbols>
<symbol name="SW-1P2T">
<wire x1="-6.604" y1="1.651" x2="-6.604" y2="0" width="0.254" layer="94"/>
<wire x1="-6.604" y1="0" x2="-4.699" y2="0" width="0.1524" layer="94"/>
<wire x1="-6.604" y1="0" x2="-6.604" y2="-1.651" width="0.254" layer="94"/>
<wire x1="-4.064" y1="0" x2="-3.556" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.667" x2="0" y2="-1.651" width="0.254" layer="94"/>
<wire x1="0" y1="-1.651" x2="-1.651" y2="1.651" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.778" x2="1.27" y2="2.413" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.778" x2="-1.27" y2="2.413" width="0.254" layer="94"/>
<wire x1="-3.556" y1="0" x2="-3.048" y2="-0.762" width="0.1524" layer="94"/>
<wire x1="-3.048" y1="-0.762" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<text x="-7.112" y="0" size="1.778" layer="95" rot="R90" align="bottom-center">&gt;NAME</text>
<pin name="P" x="0" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="S" x="5.08" y="2.54" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="O" x="-5.08" y="2.54" visible="pad" length="short" direction="pas" swaplevel="1"/>
<wire x1="-1.524" y1="0" x2="-0.889" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SL-SW-1P-2T" prefix="SW">
<gates>
<gate name="1" symbol="SW-1P2T" x="0" y="0"/>
</gates>
<devices>
<device name="-V" package="SLSW-1P2T-V">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-V-3D" package="SLSW-1P2T-3D">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="" package="SLSW-1P2T">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-H" package="SLSW-1P2T-H">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-H5" package="SLSW-1P2T-H5">
<connects>
<connect gate="1" pin="O" pad="1"/>
<connect gate="1" pin="P" pad="2"/>
<connect gate="1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-JPSW" package="JPSW-1P2T">
<connects>
<connect gate="1" pin="O" pad="O"/>
<connect gate="1" pin="P" pad="P"/>
<connect gate="1" pin="S" pad="S"/>
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
<class number="0" name="default" width="0.5588" drill="0">
</class>
<class number="1" name="power" width="0.5588" drill="0">
</class>
</classes>
<parts>
<part name="D4B" library="d" deviceset="Z-DIODE" device="34Z5" value="Z=13.8V"/>
<part name="D1" library="d" deviceset="1N4148" device="34-5V" value="1N4148"/>
<part name="D2" library="d" deviceset="1N4148" device="34-5" value="1N4148"/>
<part name="D6" library="d" deviceset="1N4148" device="34-5V" value="1N4148"/>
<part name="D7" library="d" deviceset="1N4148" device="34-7V" value="1N4148"/>
<part name="R2" library="r" deviceset="R" device="0202/7-V" value="1.5k"/>
<part name="R1" library="r" deviceset="R" device="0202/7-V" value="10k"/>
<part name="T1" library="t" deviceset="BC547" device="CBE" value="BC547"/>
<part name="T2" library="t" deviceset="BC547" device="CBE" value="BC547"/>
<part name="C1" library="c" deviceset="CPOL" device="E2,5-5/V" value="100uF"/>
<part name="C2" library="c" deviceset="CPOL" device="E2,5-4/V" value="22uF"/>
<part name="D6B" library="d" deviceset="Z-DIODE" device="34Z7V" value="Z=5.1V"/>
<part name="SUPPLY1" library="supply2" deviceset="VPP" device=""/>
<part name="R3" library="r" deviceset="R" device="0202/7" value="100"/>
<part name="J1" library="pinconn" deviceset="COMPORT-6PIN" device=""/>
<part name="J2" library="pinconn" deviceset="PIC-ICSP" device="ICSP" value="PIC-ICSPICSP"/>
<part name="SUPPLY2" library="supply2" deviceset="VPP" device=""/>
<part name="D6A" library="d" deviceset="Z-DIODE" device="34Z7V" value="Z=3.3V"/>
<part name="D4A" library="d" deviceset="Z-DIODE" device="34Z5" value="Z=8.1V"/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="P+2" library="supply1" deviceset="VCC" device=""/>
<part name="P+1" library="supply1" deviceset="VCC" device=""/>
<part name="SW1" library="sw" deviceset="SL-SW-1P-2T" device="-JPSW"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="60.96" y="33.02" size="1.4224" layer="97" font="fixed" align="top-left">RS232 pinouts

Name  DB25   DB9   HDR5
-----------------------
 TX     2     3     1
 DTR   20     4     2
 GND    7     5     3
 RTS    4     7     4
 CTS    5     8     5
</text>
<text x="116.84" y="5.08" size="1.27" layer="97" font="fixed" align="top-left">1: D4A    (Z8.1)      -&gt; Vpp= 8.1V, D6A(Z3.3) -&gt; Vdd=3.3V
2: D4A+D4B(Z8.1+Z5.1) -&gt; Vpp=13.2V, D6B(Z5.1) -&gt; Vdd=5.1V</text>
</plain>
<instances>
<instance part="D4B" gate="G$1" x="132.08" y="20.32" smashed="yes" rot="MR270">
<attribute name="NAME" x="134.62" y="18.542" size="1.778" layer="95" rot="MR180" align="bottom-right"/>
<attribute name="VALUE" x="128.27" y="21.844" size="1.778" layer="96" rot="MR0" align="bottom-right"/>
</instance>
<instance part="D1" gate="G$1" x="93.98" y="17.78" rot="MR0"/>
<instance part="D2" gate="G$1" x="101.6" y="40.64" smashed="yes" rot="MR270">
<attribute name="NAME" x="100.33" y="44.45" size="1.778" layer="95" rot="MR180" align="bottom-right"/>
<attribute name="VALUE" x="105.41" y="39.116" size="1.778" layer="96" rot="MR180" align="bottom-right"/>
</instance>
<instance part="D6" gate="G$1" x="170.18" y="25.4" smashed="yes" rot="MR270">
<attribute name="NAME" x="165.1" y="26.67" size="1.778" layer="95" rot="MR0" align="bottom-right"/>
<attribute name="VALUE" x="166.37" y="21.844" size="1.778" layer="96" rot="MR0" align="bottom-right"/>
</instance>
<instance part="D7" gate="G$1" x="177.8" y="16.51"/>
<instance part="R2" gate="G$1" x="86.36" y="43.18" rot="MR270"/>
<instance part="R1" gate="G$1" x="162.56" y="55.88" rot="R180"/>
<instance part="T1" gate="G$1" x="106.68" y="30.48" rot="MR180"/>
<instance part="T2" gate="G$1" x="162.56" y="66.04" smashed="yes" rot="R90">
<attribute name="NAME" x="158.496" y="69.85" size="1.778" layer="95" ratio="10" align="bottom-right"/>
<attribute name="VALUE" x="159.766" y="63.5" size="1.778" layer="96" ratio="10" rot="R180"/>
</instance>
<instance part="C1" gate="G$1" x="109.22" y="13.97"/>
<instance part="C2" gate="G$1" x="162.56" y="16.51" rot="MR0"/>
<instance part="D6B" gate="G$1" x="152.4" y="35.56"/>
<instance part="SUPPLY1" gate="G$1" x="109.22" y="73.66"/>
<instance part="R3" gate="G$1" x="177.8" y="68.58" rot="R90"/>
<instance part="J1" gate="1" x="63.5" y="45.72" rot="R180"/>
<instance part="J2" gate="G$1" x="220.98" y="45.72" rot="MR180"/>
<instance part="SUPPLY2" gate="G$1" x="210.82" y="73.66"/>
<instance part="D6A" gate="G$1" x="142.24" y="35.56"/>
<instance part="D4A" gate="G$1" x="127" y="30.48" smashed="yes" rot="MR270">
<attribute name="NAME" x="129.54" y="26.162" size="1.778" layer="95" rot="MR180" align="bottom-right"/>
<attribute name="VALUE" x="124.46" y="32.004" size="1.778" layer="96" rot="MR0" align="bottom-right"/>
</instance>
<instance part="GND1" gate="1" x="208.28" y="30.48"/>
<instance part="GND2" gate="1" x="109.22" y="2.54"/>
<instance part="P+2" gate="VCC" x="78.74" y="76.2" smashed="yes">
<attribute name="VALUE" x="78.74" y="76.835" size="1.778" layer="96" align="bottom-center"/>
</instance>
<instance part="P+1" gate="VCC" x="205.74" y="76.2" smashed="yes">
<attribute name="VALUE" x="205.74" y="76.835" size="1.778" layer="96" align="bottom-center"/>
</instance>
<instance part="SW1" gate="1" x="147.32" y="13.97"/>
</instances>
<busses>
</busses>
<nets>
<net name="CTS" class="0">
<segment>
<wire x1="93.98" y1="43.18" x2="93.98" y2="50.8" width="0.1524" layer="91"/>
<wire x1="157.48" y1="68.58" x2="93.98" y2="68.58" width="0.1524" layer="91"/>
<wire x1="93.98" y1="68.58" x2="93.98" y2="50.8" width="0.1524" layer="91"/>
<wire x1="93.98" y1="50.8" x2="73.66" y2="50.8" width="0.1524" layer="91"/>
<pinref part="T2" gate="G$1" pin="C"/>
<label x="83.82" y="40.64" size="1.4224" layer="95" rot="MR0"/>
<junction x="93.98" y="50.8"/>
<pinref part="J1" gate="1" pin="CTS"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="91.44" y1="43.18" x2="93.98" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="/MCLR" class="0">
<segment>
<pinref part="T1" gate="G$1" pin="E"/>
<pinref part="SUPPLY1" gate="G$1" pin="VPP"/>
<pinref part="D2" gate="G$1" pin="A"/>
<wire x1="109.22" y1="35.56" x2="109.22" y2="40.64" width="0.1524" layer="91"/>
<wire x1="109.22" y1="40.64" x2="109.22" y2="71.12" width="0.1524" layer="91"/>
<wire x1="104.14" y1="40.64" x2="109.22" y2="40.64" width="0.1524" layer="91"/>
<junction x="109.22" y="40.64"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="MCLR"/>
<pinref part="SUPPLY2" gate="G$1" pin="VPP"/>
<wire x1="213.36" y1="45.72" x2="210.82" y2="45.72" width="0.1524" layer="91"/>
<wire x1="210.82" y1="45.72" x2="210.82" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PGD" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="213.36" y1="50.8" x2="187.96" y2="50.8" width="0.1524" layer="91"/>
<wire x1="187.96" y1="50.8" x2="187.96" y2="68.58" width="0.1524" layer="91"/>
<wire x1="187.96" y1="68.58" x2="182.88" y2="68.58" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="PGD"/>
</segment>
</net>
<net name="TXD" class="0">
<segment>
<wire x1="93.98" y1="40.64" x2="73.66" y2="40.64" width="0.1524" layer="91"/>
<wire x1="93.98" y1="20.32" x2="93.98" y2="30.48" width="0.1524" layer="91"/>
<wire x1="99.06" y1="40.64" x2="93.98" y2="40.64" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="C"/>
<pinref part="D2" gate="G$1" pin="C"/>
<pinref part="T1" gate="G$1" pin="B"/>
<label x="83.82" y="40.64" size="1.4224" layer="95" rot="R180"/>
<junction x="93.98" y="40.64"/>
<wire x1="93.98" y1="40.64" x2="93.98" y2="30.48" width="0.1524" layer="91"/>
<wire x1="93.98" y1="30.48" x2="104.14" y2="30.48" width="0.1524" layer="91"/>
<junction x="93.98" y="40.64"/>
<junction x="93.98" y="30.48"/>
<pinref part="J1" gate="1" pin="TXD"/>
</segment>
</net>
<net name="VPP" class="0">
<segment>
<pinref part="T1" gate="G$1" pin="C"/>
<pinref part="C1" gate="G$1" pin="+"/>
<wire x1="109.22" y1="25.4" x2="109.22" y2="20.32" width="0.1524" layer="91"/>
<wire x1="109.22" y1="20.32" x2="109.22" y2="17.78" width="0.1524" layer="91"/>
<pinref part="D4A" gate="G$1" pin="C"/>
<wire x1="109.22" y1="20.32" x2="119.38" y2="20.32" width="0.1524" layer="91"/>
<wire x1="119.38" y1="20.32" x2="119.38" y2="30.48" width="0.1524" layer="91"/>
<wire x1="119.38" y1="30.48" x2="124.46" y2="30.48" width="0.1524" layer="91"/>
<junction x="109.22" y="20.32"/>
<pinref part="D4B" gate="G$1" pin="C"/>
<wire x1="129.54" y1="20.32" x2="119.38" y2="20.32" width="0.1524" layer="91"/>
<junction x="119.38" y="20.32"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="T2" gate="G$1" pin="B"/>
<wire x1="162.56" y1="63.5" x2="162.56" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DATA" class="0">
<segment>
<wire x1="167.64" y1="68.58" x2="172.72" y2="68.58" width="0.1524" layer="91"/>
<pinref part="T2" gate="G$1" pin="E"/>
<pinref part="R3" gate="G$1" pin="2"/>
</segment>
</net>
<net name="CLK" class="0">
<segment>
<wire x1="73.66" y1="48.26" x2="177.8" y2="48.26" width="0.1524" layer="91"/>
<pinref part="D6" gate="G$1" pin="A"/>
<pinref part="D7" gate="G$1" pin="C"/>
<wire x1="177.8" y1="19.05" x2="177.8" y2="25.4" width="0.1524" layer="91"/>
<junction x="177.8" y="25.4"/>
<wire x1="177.8" y1="25.4" x2="172.72" y2="25.4" width="0.1524" layer="91"/>
<wire x1="213.36" y1="48.26" x2="177.8" y2="48.26" width="0.1524" layer="91"/>
<wire x1="177.8" y1="48.26" x2="177.8" y2="25.4" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="PGC"/>
<pinref part="J1" gate="1" pin="RTS"/>
<junction x="177.8" y="48.26"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="J1" gate="1" pin="DTR"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="73.66" y1="43.18" x2="81.28" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="J1" gate="1" pin="GND"/>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<wire x1="73.66" y1="45.72" x2="78.74" y2="45.72" width="0.1524" layer="91"/>
<wire x1="78.74" y1="45.72" x2="78.74" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D6" gate="G$1" pin="C"/>
<junction x="162.56" y="25.4"/>
<wire x1="162.56" y1="25.4" x2="162.56" y2="20.32" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="+"/>
<junction x="162.56" y="25.4"/>
<wire x1="167.64" y1="25.4" x2="162.56" y2="25.4" width="0.1524" layer="91"/>
<junction x="162.56" y="25.4"/>
<wire x1="162.56" y1="50.8" x2="162.56" y2="43.18" width="0.1524" layer="91"/>
<junction x="162.56" y="43.18"/>
<pinref part="R1" gate="G$1" pin="2"/>
<junction x="162.56" y="43.18"/>
<wire x1="162.56" y1="43.18" x2="205.74" y2="43.18" width="0.1524" layer="91"/>
<wire x1="205.74" y1="43.18" x2="213.36" y2="43.18" width="0.1524" layer="91"/>
<wire x1="162.56" y1="43.18" x2="162.56" y2="25.4" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="VDD"/>
<junction x="205.74" y="43.18"/>
<junction x="205.74" y="43.18"/>
<wire x1="205.74" y1="73.66" x2="205.74" y2="43.18" width="0.1524" layer="91"/>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<pinref part="D6A" gate="G$1" pin="C"/>
<wire x1="142.24" y1="38.1" x2="142.24" y2="43.18" width="0.1524" layer="91"/>
<wire x1="142.24" y1="43.18" x2="152.4" y2="43.18" width="0.1524" layer="91"/>
<pinref part="D6B" gate="G$1" pin="C"/>
<wire x1="152.4" y1="43.18" x2="162.56" y2="43.18" width="0.1524" layer="91"/>
<wire x1="152.4" y1="38.1" x2="152.4" y2="43.18" width="0.1524" layer="91"/>
<junction x="152.4" y="43.18"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<wire x1="213.36" y1="40.64" x2="208.28" y2="40.64" width="0.1524" layer="91"/>
<pinref part="J2" gate="G$1" pin="VSS"/>
<wire x1="208.28" y1="40.64" x2="208.28" y2="33.02" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
<segment>
<wire x1="109.22" y1="10.16" x2="109.22" y2="7.62" width="0.1524" layer="91"/>
<wire x1="177.8" y1="7.62" x2="177.8" y2="13.97" width="0.1524" layer="91"/>
<wire x1="162.56" y1="12.7" x2="162.56" y2="7.62" width="0.1524" layer="91"/>
<junction x="162.56" y="7.62"/>
<pinref part="D7" gate="G$1" pin="A"/>
<pinref part="C1" gate="G$1" pin="-"/>
<pinref part="C2" gate="G$1" pin="-"/>
<pinref part="D1" gate="G$1" pin="A"/>
<wire x1="109.22" y1="7.62" x2="147.32" y2="7.62" width="0.1524" layer="91"/>
<wire x1="147.32" y1="7.62" x2="162.56" y2="7.62" width="0.1524" layer="91"/>
<wire x1="93.98" y1="15.24" x2="93.98" y2="7.62" width="0.1524" layer="91"/>
<junction x="109.22" y="7.62"/>
<wire x1="93.98" y1="7.62" x2="109.22" y2="7.62" width="0.1524" layer="91"/>
<junction x="162.56" y="7.62"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="162.56" y1="7.62" x2="177.8" y2="7.62" width="0.1524" layer="91"/>
<wire x1="109.22" y1="5.08" x2="109.22" y2="7.62" width="0.1524" layer="91"/>
<pinref part="SW1" gate="1" pin="P"/>
<wire x1="147.32" y1="8.89" x2="147.32" y2="7.62" width="0.1524" layer="91"/>
<junction x="147.32" y="7.62"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="D6B" gate="G$1" pin="A"/>
<wire x1="152.4" y1="33.02" x2="152.4" y2="20.32" width="0.1524" layer="91"/>
<pinref part="SW1" gate="1" pin="S"/>
<wire x1="152.4" y1="20.32" x2="152.4" y2="16.51" width="0.1524" layer="91"/>
<wire x1="134.62" y1="20.32" x2="152.4" y2="20.32" width="0.1524" layer="91"/>
<junction x="152.4" y="20.32"/>
<pinref part="D4B" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="D4A" gate="G$1" pin="A"/>
<pinref part="D6A" gate="G$1" pin="A"/>
<wire x1="142.24" y1="16.51" x2="142.24" y2="30.48" width="0.1524" layer="91"/>
<wire x1="142.24" y1="30.48" x2="142.24" y2="33.02" width="0.1524" layer="91"/>
<junction x="142.24" y="30.48"/>
<pinref part="SW1" gate="1" pin="O"/>
<wire x1="129.54" y1="30.48" x2="142.24" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
