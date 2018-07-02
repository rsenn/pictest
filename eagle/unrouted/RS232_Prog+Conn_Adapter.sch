<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
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
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<description>RS232 Adapter for Programmer and Communication</description>
<libraries>
<library name="pinconn">
<description>&lt;b&gt;Pin connectors&lt;/b&gt;&lt;p&gt;
</description>
<packages>
<package name="RS232-6PIN-NEW">
<pad name="3" x="0" y="-1.27" drill="0.9" diameter="1.778" shape="octagon" rot="R270"/>
<pad name="1" x="0" y="-6.35" drill="0.9" diameter="1.778" shape="square" rot="R270"/>
<pad name="2" x="0" y="-3.81" drill="0.9" diameter="1.778" shape="octagon" rot="R270"/>
<pad name="5" x="0" y="3.81" drill="0.9" diameter="1.778" shape="octagon" rot="R270"/>
<pad name="6" x="0" y="6.35" drill="0.9" diameter="1.778" shape="octagon" rot="R270"/>
<pad name="4" x="0" y="1.27" drill="0.9" diameter="1.778" shape="octagon" rot="R270"/>
<wire x1="-1.27" y1="7.62" x2="1.27" y2="7.62" width="0.127" layer="21"/>
<wire x1="1.27" y1="7.62" x2="1.27" y2="-7.62" width="0.127" layer="21"/>
<wire x1="1.27" y1="-7.62" x2="-1.27" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-7.62" x2="-1.27" y2="7.62" width="0.127" layer="21"/>
<text x="1.524" y="-7.62" size="1.016" layer="25" rot="R180" align="top-right">&gt;NAME</text>
<text x="1.524" y="7.62" size="1.016" layer="27" rot="R180" align="bottom-right">&gt;VALUE</text>
<text x="-0.127" y="8.382" size="0.8128" layer="23" align="bottom-center">6</text>
<text x="-2.032" y="-3.81" size="0.6096" layer="48" font="vector" rot="R270" align="center">TXD</text>
<text x="-2.032" y="1.27" size="0.6096" layer="48" font="vector" rot="R90" align="center">GND</text>
<text x="-2.032" y="3.81" size="0.6096" layer="48" font="vector" rot="R90" align="center">RTS</text>
<text x="-2.032" y="6.35" size="0.6096" layer="48" font="vector" rot="R90" align="center">CTS</text>
<text x="-2.032" y="-6.35" size="0.6096" layer="48" font="vector" rot="R270" align="center">RXD</text>
<text x="-2.032" y="-1.27" size="0.6096" layer="48" font="vector" rot="R270" align="center">DTR</text>
</package>
<package name="RS232-6PIN-NEW-L">
<pad name="3" x="0" y="1.27" drill="0.9" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="1" x="0" y="6.35" drill="0.9" diameter="1.778" shape="square" rot="R90"/>
<pad name="2" x="0" y="3.81" drill="0.9" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="5" x="0" y="-3.81" drill="0.9" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="6" x="0" y="-6.35" drill="0.9" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="4" x="0" y="-1.27" drill="0.9" diameter="1.778" shape="octagon" rot="R90"/>
<wire x1="1.27" y1="-7.62" x2="-1.27" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-7.62" x2="-1.27" y2="7.62" width="0.127" layer="21"/>
<wire x1="-1.27" y1="7.62" x2="1.27" y2="7.62" width="0.127" layer="21"/>
<wire x1="1.27" y1="7.62" x2="1.27" y2="-7.62" width="0.127" layer="21"/>
<text x="2.794" y="-7.62" size="1.016" layer="25" rot="R180" align="top-right">&gt;NAME</text>
<text x="2.794" y="7.62" size="1.016" layer="27" rot="R180" align="bottom-right">&gt;VALUE</text>
<text x="0.127" y="-8.382" size="0.8128" layer="23" rot="R180" align="bottom-center">6</text>
<text x="-1.778" y="3.81" size="0.6096" layer="48" font="vector" rot="R90" align="center">TXD</text>
<text x="-1.778" y="-1.27" size="0.6096" layer="48" font="vector" rot="R270" align="center">GND</text>
<text x="-1.778" y="-3.81" size="0.6096" layer="48" font="vector" rot="R270" align="center">RTS</text>
<text x="-1.778" y="-6.35" size="0.6096" layer="48" font="vector" rot="R270" align="center">CTS</text>
<text x="-1.778" y="6.35" size="0.6096" layer="48" font="vector" rot="R90" align="center">RXD</text>
<text x="-1.778" y="1.27" size="0.6096" layer="48" font="vector" rot="R90" align="center">DTR</text>
</package>
<package name="RS232-6PIN-NEW-90">
<wire x1="-1.905" y1="-7.62" x2="-1.905" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-5.08" x2="-4.445" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-5.08" x2="-4.445" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-7.62" x2="-1.905" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-6.35" x2="-5.08" y2="-6.35" width="0.762" layer="21"/>
<wire x1="-1.905" y1="-5.08" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-4.445" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-3.81" x2="-5.08" y2="-3.81" width="0.762" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-1.905" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0" x2="-4.445" y2="0" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="0" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-1.27" x2="-5.08" y2="-1.27" width="0.762" layer="21"/>
<wire x1="-1.905" y1="0" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-4.445" y2="0" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="1.27" x2="-5.08" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-1.905" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="5.08" x2="-4.445" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="5.08" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="3.81" x2="-5.08" y2="3.81" width="0.762" layer="21"/>
<wire x1="-1.905" y1="5.08" x2="-1.905" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="7.62" x2="-4.445" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="7.62" x2="-4.445" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="6.35" x2="-5.08" y2="6.35" width="0.762" layer="21"/>
<pad name="RXD" x="0" y="-6.35" drill="0.9" diameter="1.778" shape="square" rot="R180"/>
<pad name="TXD" x="0" y="-3.81" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="DTR" x="0" y="-1.27" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="GND" x="0" y="1.27" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="RTS" x="0" y="3.81" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="CTS" x="0" y="6.35" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<text x="0" y="-8.255" size="1.27" layer="25" ratio="10" rot="R180">&gt;NAME</text>
<text x="0" y="9.525" size="1.27" layer="27" rot="R180">&gt;VALUE</text>
<rectangle x1="-5.08" y1="-6.604" x2="-4.318" y2="-6.096" layer="21" rot="R90"/>
<rectangle x1="-5.08" y1="-4.064" x2="-4.318" y2="-3.556" layer="21" rot="R90"/>
<rectangle x1="-5.08" y1="-1.524" x2="-4.318" y2="-1.016" layer="21" rot="R90"/>
<rectangle x1="-5.08" y1="1.016" x2="-4.318" y2="1.524" layer="21" rot="R90"/>
<rectangle x1="-5.08" y1="3.556" x2="-4.318" y2="4.064" layer="21" rot="R90"/>
<rectangle x1="-5.08" y1="6.096" x2="-4.318" y2="6.604" layer="21" rot="R90"/>
<rectangle x1="-1.778" y1="-6.858" x2="-1.016" y2="-5.842" layer="21" rot="R90"/>
<rectangle x1="-1.778" y1="-4.318" x2="-1.016" y2="-3.302" layer="21" rot="R90"/>
<rectangle x1="-1.778" y1="-1.778" x2="-1.016" y2="-0.762" layer="21" rot="R90"/>
<rectangle x1="-1.778" y1="0.762" x2="-1.016" y2="1.778" layer="21" rot="R90"/>
<rectangle x1="-1.778" y1="3.302" x2="-1.016" y2="4.318" layer="21" rot="R90"/>
<rectangle x1="-1.778" y1="5.842" x2="-1.016" y2="6.858" layer="21" rot="R90"/>
<text x="-12.192" y="-3.81" size="0.6096" layer="48" font="vector" rot="R270" align="center">TXD</text>
<text x="-12.192" y="1.27" size="0.6096" layer="48" font="vector" rot="R90" align="center">GND</text>
<text x="-12.192" y="3.81" size="0.6096" layer="48" font="vector" rot="R90" align="center">RTS</text>
<text x="-12.192" y="6.35" size="0.6096" layer="48" font="vector" rot="R90" align="center">CTS</text>
<text x="-12.192" y="-6.35" size="0.6096" layer="48" font="vector" rot="R270" align="center">RXD</text>
<text x="-12.192" y="-1.27" size="0.6096" layer="48" font="vector" rot="R270" align="center">DTR</text>
</package>
<package name="RS232-6PIN-NEW-90-L">
<wire x1="-1.905" y1="7.62" x2="-1.905" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="5.08" x2="-4.445" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="5.08" x2="-4.445" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="7.62" x2="-1.905" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="6.35" x2="-5.08" y2="6.35" width="0.762" layer="21"/>
<wire x1="-1.905" y1="5.08" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-4.445" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="3.81" x2="-5.08" y2="3.81" width="0.762" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-1.905" y2="0" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0" x2="-4.445" y2="0" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="0" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="1.27" x2="-5.08" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.905" y1="0" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-4.445" y2="0" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-1.27" x2="-5.08" y2="-1.27" width="0.762" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-1.905" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-5.08" x2="-4.445" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-5.08" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-3.81" x2="-5.08" y2="-3.81" width="0.762" layer="21"/>
<wire x1="-1.905" y1="-5.08" x2="-1.905" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-7.62" x2="-4.445" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-7.62" x2="-4.445" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-6.35" x2="-5.08" y2="-6.35" width="0.762" layer="21"/>
<pad name="RXD" x="0" y="6.35" drill="0.9" diameter="1.778" shape="square" rot="R180"/>
<pad name="TXD" x="0" y="3.81" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="DTR" x="0" y="1.27" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="GND" x="0" y="-1.27" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="RTS" x="0" y="-3.81" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="CTS" x="0" y="-6.35" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<text x="0" y="-8.255" size="1.27" layer="25" ratio="10" rot="R180">&gt;NAME</text>
<text x="0" y="9.525" size="1.27" layer="27" rot="R180">&gt;VALUE</text>
<rectangle x1="-5.08" y1="6.096" x2="-4.318" y2="6.604" layer="21" rot="R270"/>
<rectangle x1="-5.08" y1="3.556" x2="-4.318" y2="4.064" layer="21" rot="R270"/>
<rectangle x1="-5.08" y1="1.016" x2="-4.318" y2="1.524" layer="21" rot="R270"/>
<rectangle x1="-5.08" y1="-1.524" x2="-4.318" y2="-1.016" layer="21" rot="R270"/>
<rectangle x1="-5.08" y1="-4.064" x2="-4.318" y2="-3.556" layer="21" rot="R270"/>
<rectangle x1="-5.08" y1="-6.604" x2="-4.318" y2="-6.096" layer="21" rot="R270"/>
<rectangle x1="-1.778" y1="5.842" x2="-1.016" y2="6.858" layer="21" rot="R270"/>
<rectangle x1="-1.778" y1="3.302" x2="-1.016" y2="4.318" layer="21" rot="R270"/>
<rectangle x1="-1.778" y1="0.762" x2="-1.016" y2="1.778" layer="21" rot="R270"/>
<rectangle x1="-1.778" y1="-1.778" x2="-1.016" y2="-0.762" layer="21" rot="R270"/>
<rectangle x1="-1.778" y1="-4.318" x2="-1.016" y2="-3.302" layer="21" rot="R270"/>
<rectangle x1="-1.778" y1="-6.858" x2="-1.016" y2="-5.842" layer="21" rot="R270"/>
<text x="-12.192" y="3.81" size="0.6096" layer="48" font="vector" rot="R270" align="center">TXD</text>
<text x="-12.192" y="-1.27" size="0.6096" layer="48" font="vector" rot="R90" align="center">GND</text>
<text x="-12.192" y="-3.81" size="0.6096" layer="48" font="vector" rot="R90" align="center">RTS</text>
<text x="-12.192" y="-6.35" size="0.6096" layer="48" font="vector" rot="R90" align="center">CTS</text>
<text x="-12.192" y="6.35" size="0.6096" layer="48" font="vector" rot="R270" align="center">RXD</text>
<text x="-12.192" y="1.27" size="0.6096" layer="48" font="vector" rot="R270" align="center">DTR</text>
</package>
<package name="RS232-4PIN-NEW">
<pad name="3" x="0" y="1.27" drill="1" shape="octagon" rot="R270"/>
<pad name="1" x="0" y="-3.81" drill="1" shape="square" rot="R270"/>
<pad name="2" x="0" y="-1.27" drill="1" shape="octagon" rot="R270"/>
<pad name="4" x="0" y="3.81" drill="1" shape="octagon" rot="R270"/>
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
<package name="RS232-4PIN-NEW-L">
<pad name="3" x="0" y="1.27" drill="1" diameter="1.778" shape="octagon" rot="R270"/>
<pad name="1" x="0" y="-3.81" drill="1" diameter="1.778" shape="square" rot="R270"/>
<pad name="2" x="0" y="-1.27" drill="1" diameter="1.778" shape="octagon" rot="R270"/>
<pad name="4" x="0" y="3.81" drill="1" diameter="1.778" shape="octagon" rot="R270"/>
<wire x1="-1.27" y1="5.08" x2="1.27" y2="5.08" width="0.127" layer="21"/>
<wire x1="1.27" y1="5.08" x2="1.27" y2="-5.08" width="0.127" layer="21"/>
<wire x1="1.27" y1="-5.08" x2="-1.27" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-5.08" x2="-1.27" y2="5.08" width="0.127" layer="21"/>
<text x="-1.524" y="5.08" size="1.016" layer="25" align="top-right">&gt;NAME</text>
<text x="-1.524" y="-6.35" size="1.016" layer="27" align="bottom-right">&gt;VALUE</text>
<text x="1.778" y="-1.27" size="0.6096" layer="48" font="vector" rot="R270" align="center">TXD</text>
<text x="1.778" y="3.81" size="0.6096" layer="48" font="vector" rot="R90" align="center">GND</text>
<text x="1.778" y="-3.81" size="0.6096" layer="48" font="vector" rot="R270" align="center">RXD</text>
<text x="1.778" y="1.27" size="0.6096" layer="48" font="vector" rot="R270" align="center">DTR</text>
</package>
<package name="CONN-6P-FEM">
<wire x1="-7.62" y1="1.27" x2="-7.62" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.27" x2="-5.334" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="-1.27" x2="-5.08" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.016" x2="-4.826" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-1.27" x2="-2.794" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="-1.27" x2="-2.54" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.016" x2="-2.286" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.27" x2="-0.254" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-1.27" x2="0" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.016" x2="0.254" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-1.27" x2="2.286" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.27" x2="2.54" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.016" x2="2.794" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.794" y1="-1.27" x2="4.826" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.334" y1="-1.27" x2="7.62" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.27" x2="7.62" y2="1.27" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.27" x2="5.334" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.826" y1="1.27" x2="2.794" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.794" y1="1.27" x2="2.54" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.016" x2="2.286" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.27" x2="0.254" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.254" y1="1.27" x2="0" y2="1.016" width="0.1524" layer="21"/>
<wire x1="0" y1="1.016" x2="-0.254" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="1.27" x2="-2.286" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.54" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.016" x2="-2.794" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="1.27" x2="-4.826" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="1.27" x2="-5.08" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.016" x2="-5.334" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="1.27" x2="-7.62" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="0.762" x2="-6.604" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="0.508" x2="-6.858" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-6.858" y1="0.508" x2="-6.858" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-6.858" y1="-0.508" x2="-6.604" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-0.508" x2="-6.604" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-0.762" x2="-6.096" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-6.096" y1="-0.762" x2="-6.096" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-6.096" y1="-0.508" x2="-5.842" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-5.842" y1="-0.508" x2="-5.842" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-5.842" y1="0.508" x2="-6.096" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-6.096" y1="0.508" x2="-6.096" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-6.096" y1="0.762" x2="-6.604" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="0.762" x2="-4.064" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="0.508" x2="-4.318" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-4.318" y1="0.508" x2="-4.318" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-4.318" y1="-0.508" x2="-4.064" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="-0.508" x2="-4.064" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="-0.762" x2="-3.556" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="-0.762" x2="-3.556" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="-0.508" x2="-3.302" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-0.508" x2="-3.302" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="0.508" x2="-3.556" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="0.508" x2="-3.556" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="0.762" x2="-4.064" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.762" x2="-1.524" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.508" x2="-1.778" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="0.508" x2="-1.778" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="-0.508" x2="-1.524" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-0.508" x2="-1.524" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-0.762" x2="-1.016" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-0.762" x2="-1.016" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-0.508" x2="-0.762" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="-0.508" x2="-0.762" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="0.508" x2="-1.016" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="0.508" x2="-1.016" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="0.762" x2="-1.524" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.762" x2="1.016" y2="0.508" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.508" x2="0.762" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0.762" y1="0.508" x2="0.762" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0.762" y1="-0.508" x2="1.016" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-0.508" x2="1.016" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-0.762" x2="1.524" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.762" x2="1.524" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.508" x2="1.778" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.778" y1="-0.508" x2="1.778" y2="0.508" width="0.1524" layer="51"/>
<wire x1="1.778" y1="0.508" x2="1.524" y2="0.508" width="0.1524" layer="51"/>
<wire x1="1.524" y1="0.508" x2="1.524" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.524" y1="0.762" x2="1.016" y2="0.762" width="0.1524" layer="51"/>
<wire x1="3.556" y1="0.762" x2="3.556" y2="0.508" width="0.1524" layer="51"/>
<wire x1="3.556" y1="0.508" x2="3.302" y2="0.508" width="0.1524" layer="51"/>
<wire x1="3.302" y1="0.508" x2="3.302" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="3.302" y1="-0.508" x2="3.556" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="3.556" y1="-0.508" x2="3.556" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="3.556" y1="-0.762" x2="4.064" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-0.762" x2="4.064" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-0.508" x2="4.318" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="4.318" y1="-0.508" x2="4.318" y2="0.508" width="0.1524" layer="51"/>
<wire x1="4.318" y1="0.508" x2="4.064" y2="0.508" width="0.1524" layer="51"/>
<wire x1="4.064" y1="0.508" x2="4.064" y2="0.762" width="0.1524" layer="51"/>
<wire x1="4.064" y1="0.762" x2="3.556" y2="0.762" width="0.1524" layer="51"/>
<wire x1="5.334" y1="1.27" x2="5.08" y2="1.016" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.016" x2="4.826" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.016" x2="5.334" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-1.27" x2="5.08" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="6.096" y1="0.762" x2="6.096" y2="0.508" width="0.1524" layer="51"/>
<wire x1="6.096" y1="0.508" x2="5.842" y2="0.508" width="0.1524" layer="51"/>
<wire x1="5.842" y1="0.508" x2="5.842" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="5.842" y1="-0.508" x2="6.096" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="6.096" y1="-0.508" x2="6.096" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="6.096" y1="-0.762" x2="6.604" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="6.604" y1="-0.762" x2="6.604" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="6.604" y1="-0.508" x2="6.858" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="6.858" y1="-0.508" x2="6.858" y2="0.508" width="0.1524" layer="51"/>
<wire x1="6.858" y1="0.508" x2="6.604" y2="0.508" width="0.1524" layer="51"/>
<wire x1="6.604" y1="0.508" x2="6.604" y2="0.762" width="0.1524" layer="51"/>
<wire x1="6.604" y1="0.762" x2="6.096" y2="0.762" width="0.1524" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-3.81" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="6.35" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-2.54" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.858" y="1.524" size="1.27" layer="21" ratio="10">1</text>
<text x="-7.62" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="5.842" y="1.524" size="1.27" layer="21" ratio="10">6</text>
<rectangle x1="-6.477" y1="0.254" x2="-6.223" y2="0.762" layer="51"/>
<rectangle x1="-6.477" y1="-0.762" x2="-6.223" y2="-0.254" layer="51"/>
<rectangle x1="-3.937" y1="0.254" x2="-3.683" y2="0.762" layer="51"/>
<rectangle x1="-3.937" y1="-0.762" x2="-3.683" y2="-0.254" layer="51"/>
<rectangle x1="-1.397" y1="0.254" x2="-1.143" y2="0.762" layer="51"/>
<rectangle x1="-1.397" y1="-0.762" x2="-1.143" y2="-0.254" layer="51"/>
<rectangle x1="1.143" y1="0.254" x2="1.397" y2="0.762" layer="51"/>
<rectangle x1="1.143" y1="-0.762" x2="1.397" y2="-0.254" layer="51"/>
<rectangle x1="3.683" y1="0.254" x2="3.937" y2="0.762" layer="51"/>
<rectangle x1="3.683" y1="-0.762" x2="3.937" y2="-0.254" layer="51"/>
<rectangle x1="6.223" y1="0.254" x2="6.477" y2="0.762" layer="51"/>
<rectangle x1="6.223" y1="-0.762" x2="6.477" y2="-0.254" layer="51"/>
</package>
<package name="CONN-6P-FEM-90">
<wire x1="-7.62" y1="1.016" x2="-7.62" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="1.524" x2="-7.62" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="8.89" x2="-5.461" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="8.89" x2="-5.08" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="8.89" x2="-4.699" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="8.89" x2="-2.921" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="8.89" x2="-2.54" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="8.89" x2="-2.159" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="8.89" x2="-0.381" y2="8.89" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="8.89" x2="0" y2="8.89" width="0.1524" layer="21"/>
<wire x1="0" y1="8.89" x2="0.381" y2="8.89" width="0.1524" layer="21"/>
<wire x1="0.381" y1="8.89" x2="2.159" y2="8.89" width="0.1524" layer="21"/>
<wire x1="2.159" y1="8.89" x2="2.54" y2="8.89" width="0.1524" layer="21"/>
<wire x1="2.54" y1="8.89" x2="2.921" y2="8.89" width="0.1524" layer="21"/>
<wire x1="2.921" y1="8.89" x2="4.699" y2="8.89" width="0.1524" layer="21"/>
<wire x1="5.08" y1="8.89" x2="5.08" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="1.524" x2="-5.461" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="1.524" x2="-5.08" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.524" x2="-4.699" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="1.524" x2="-2.921" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.524" x2="-2.54" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="1.524" x2="-2.159" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.524" x2="-0.381" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="1.524" x2="0" y2="1.524" width="0.1524" layer="21"/>
<wire x1="0" y1="1.524" x2="0.381" y2="1.524" width="0.1524" layer="21"/>
<wire x1="0.381" y1="1.524" x2="2.159" y2="1.524" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.524" x2="2.54" y2="1.524" width="0.1524" layer="21"/>
<wire x1="2.54" y1="1.524" x2="2.921" y2="1.524" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.524" x2="4.699" y2="1.524" width="0.1524" layer="21"/>
<wire x1="4.699" y1="1.524" x2="5.08" y2="1.524" width="0.1524" layer="21"/>
<wire x1="2.54" y1="8.89" x2="2.54" y2="1.524" width="0.1524" layer="21"/>
<wire x1="0" y1="8.89" x2="0" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="8.89" x2="-2.54" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="8.89" x2="-5.08" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="8.89" x2="-5.461" y2="1.524" width="0.0508" layer="21"/>
<wire x1="-4.699" y1="8.89" x2="-4.699" y2="1.524" width="0.0508" layer="21"/>
<wire x1="-2.921" y1="8.89" x2="-2.921" y2="1.524" width="0.0508" layer="21"/>
<wire x1="-2.159" y1="8.89" x2="-2.159" y2="1.524" width="0.0508" layer="21"/>
<wire x1="-0.381" y1="8.89" x2="-0.381" y2="1.524" width="0.0508" layer="21"/>
<wire x1="0.381" y1="8.89" x2="0.381" y2="1.524" width="0.0508" layer="21"/>
<wire x1="2.159" y1="8.89" x2="2.159" y2="1.524" width="0.1524" layer="21"/>
<wire x1="2.921" y1="8.89" x2="2.921" y2="1.524" width="0.0508" layer="21"/>
<wire x1="4.699" y1="8.89" x2="4.699" y2="1.524" width="0.0508" layer="21"/>
<wire x1="4.699" y1="8.89" x2="5.08" y2="8.89" width="0.1524" layer="21"/>
<wire x1="5.08" y1="8.89" x2="5.461" y2="8.89" width="0.1524" layer="21"/>
<wire x1="5.461" y1="8.89" x2="7.62" y2="8.89" width="0.1524" layer="21"/>
<wire x1="5.461" y1="8.89" x2="5.461" y2="1.524" width="0.0508" layer="21"/>
<wire x1="7.62" y1="8.89" x2="7.62" y2="1.524" width="0.1524" layer="21"/>
<wire x1="7.62" y1="1.524" x2="7.62" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="1.016" x2="7.62" y2="1.016" width="0.1524" layer="21"/>
<wire x1="5.08" y1="1.524" x2="5.461" y2="1.524" width="0.1524" layer="21"/>
<wire x1="5.461" y1="1.524" x2="7.62" y2="1.524" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="0.9" diameter="1.778" shape="square" rot="R90"/>
<pad name="2" x="-3.81" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="3" x="-1.27" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="4" x="1.27" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="5" x="3.81" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="6" x="6.35" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R90"/>
<text x="-7.62" y="-2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="2.54" size="1.27" layer="21" ratio="10" rot="R90">2</text>
<text x="6.985" y="2.54" size="1.27" layer="21" ratio="10" rot="R90">6</text>
<text x="-0.635" y="2.54" size="1.27" layer="21" ratio="10" rot="R90">3</text>
<text x="1.905" y="2.54" size="1.27" layer="21" ratio="10" rot="R90">4</text>
<text x="4.445" y="2.54" size="1.27" layer="21" ratio="10" rot="R90">5</text>
<rectangle x1="-6.604" y1="0" x2="-6.096" y2="1.016" layer="51"/>
<rectangle x1="-4.064" y1="0" x2="-3.556" y2="1.016" layer="51"/>
<rectangle x1="-1.524" y1="0" x2="-1.016" y2="1.016" layer="51"/>
<rectangle x1="1.016" y1="0" x2="1.524" y2="1.016" layer="51"/>
<rectangle x1="3.556" y1="0" x2="4.064" y2="1.016" layer="51"/>
<rectangle x1="6.096" y1="0" x2="6.604" y2="1.016" layer="51"/>
<text x="-5.715" y="2.54" size="1.27" layer="21" ratio="10" rot="R90">1</text>
</package>
<package name="CONN-5P-N">
<pad name="5" x="5.08" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="4" x="2.54" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="3" x="0" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="2" x="-2.54" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="1" x="-5.08" y="0" drill="0.9" diameter="1.778" shape="square" rot="R180"/>
<wire x1="-6.35" y1="1.27" x2="-6.35" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-1.27" x2="6.35" y2="-1.27" width="0.127" layer="21"/>
<wire x1="6.35" y1="-1.27" x2="6.35" y2="1.27" width="0.127" layer="21"/>
<wire x1="6.35" y1="1.27" x2="-6.35" y2="1.27" width="0.127" layer="21"/>
<text x="-6.604" y="-1.27" size="0.8128" layer="20" rot="R90">1</text>
<text x="-6.35" y="-1.524" size="0.8128" layer="25" align="top-left">&gt;NAME</text>
<text x="6.35" y="-1.524" size="0.8128" layer="27" align="top-right">&gt;VALUE</text>
</package>
<package name="CONN-6P">
<pad name="6" x="6.35" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="5" x="3.81" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="4" x="1.27" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="3" x="-1.27" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="2" x="-3.81" y="0" drill="0.9" diameter="1.778" shape="octagon" rot="R180"/>
<pad name="1" x="-6.35" y="0" drill="0.9" diameter="1.778" shape="square" rot="R180"/>
<wire x1="-7.62" y1="1.27" x2="-7.62" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-1.27" x2="7.62" y2="-1.27" width="0.127" layer="21"/>
<wire x1="7.62" y1="-1.27" x2="7.62" y2="1.27" width="0.127" layer="21"/>
<wire x1="7.62" y1="1.27" x2="-7.62" y2="1.27" width="0.127" layer="21"/>
<text x="-7.874" y="-1.27" size="0.8128" layer="20" rot="R90">1</text>
<text x="-7.62" y="-1.524" size="0.8128" layer="25" align="top-left">&gt;NAME</text>
<text x="7.62" y="-1.524" size="0.8128" layer="27" align="top-right">&gt;VALUE</text>
</package>
<package name="CONN-4P">
<pad name="4" x="3.81" y="0" drill="0.9" diameter="1.6764" shape="octagon" rot="R180"/>
<pad name="3" x="1.27" y="0" drill="0.9" diameter="1.6764" shape="octagon" rot="R180"/>
<pad name="2" x="-1.27" y="0" drill="0.9" diameter="1.6764" shape="octagon" rot="R180"/>
<pad name="1" x="-3.81" y="0" drill="0.9" diameter="1.6764" shape="square" rot="R180"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-1.27" x2="5.08" y2="-1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="1.27" x2="-5.08" y2="1.27" width="0.127" layer="21"/>
<text x="-5.334" y="1.27" size="0.8128" layer="23" rot="R180">1</text>
<text x="5.08" y="-1.524" size="0.8128" layer="25" align="top-right">&gt;NAME</text>
<text x="-5.08" y="-1.524" size="0.8128" layer="27" align="top-left">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="RS232-6PIN-NEW">
<pin name="DTR" x="7.62" y="2.54" length="short" direction="pas" rot="R180"/>
<pin name="RXD" x="7.62" y="7.62" length="short" direction="pas" rot="R180"/>
<pin name="TXD" x="7.62" y="5.08" length="short" direction="pas" rot="R180"/>
<pin name="RTS" x="7.62" y="-2.54" length="short" direction="pas" rot="R180"/>
<pin name="CTS" x="7.62" y="-5.08" length="short" direction="pas" rot="R180"/>
<pin name="GND" x="7.62" y="0" length="short" direction="pas" rot="R180"/>
<wire x1="5.08" y1="-7.62" x2="5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="-10.16" y2="10.16" width="0.254" layer="94"/>
<wire x1="-10.16" y1="10.16" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="5.08" y="12.7" size="1.778" layer="95" rot="MR0" align="top-left">&gt;NAME</text>
<text x="5.08" y="-10.16" size="1.778" layer="96" rot="MR0">&gt;VALUE</text>
<text x="-8.636" y="-4.953" size="1.27" layer="94" font="fixed" ratio="10" distance="100" rot="MR180" align="center-left">Brown</text>
<text x="-8.636" y="-2.413" size="1.27" layer="94" font="fixed" ratio="10" distance="100" rot="MR180" align="center-left">Gray</text>
<text x="-8.636" y="0.127" size="1.27" layer="94" font="fixed" ratio="10" distance="100" rot="MR180" align="center-left">Blue</text>
<text x="-8.636" y="2.667" size="1.27" layer="94" font="fixed" ratio="10" distance="100" rot="MR180" align="center-left">Orange</text>
<text x="-8.636" y="5.207" size="1.27" layer="94" font="fixed" ratio="10" distance="100" rot="MR180" align="center-left">Yellow</text>
<text x="-8.636" y="7.747" size="1.27" layer="94" font="fixed" ratio="10" distance="100" rot="MR180" align="center-left">Red</text>
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
<symbol name="PINCONN-5P">
<wire x1="-1.27" y1="6.35" x2="-1.27" y2="5.08" width="0.254" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="-1.27" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-5.08" x2="-1.27" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-6.35" x2="2.54" y2="-6.35" width="0.254" layer="94"/>
<wire x1="2.54" y1="-6.35" x2="2.54" y2="6.35" width="0.254" layer="94"/>
<wire x1="2.54" y1="6.35" x2="-1.27" y2="6.35" width="0.254" layer="94"/>
<pin name="2" x="-2.54" y="-2.54" length="point" direction="pas"/>
<pin name="1" x="-2.54" y="-5.08" length="point" direction="pas"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-1.27" y2="-5.08" width="0.127" layer="94"/>
<pin name="3" x="-2.54" y="0" length="point" direction="pas"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.127" layer="94"/>
<text x="-1.27" y="-6.985" size="0.8128" layer="95" align="top-left">&gt;NAME</text>
<pin name="4" x="-2.54" y="2.54" length="point" direction="pas"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.127" layer="94"/>
<pin name="5" x="-2.54" y="5.08" length="point" direction="pas"/>
<wire x1="-2.54" y1="5.08" x2="-1.27" y2="5.08" width="0.127" layer="94"/>
<text x="-1.27" y="-8.255" size="0.8128" layer="96" align="top-left">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="COMPORT-6PIN-NEW" prefix="J">
<gates>
<gate name="G$1" symbol="RS232-6PIN-NEW" x="2.54" y="2.54"/>
</gates>
<devices>
<device name="" package="RS232-6PIN-NEW">
<connects>
<connect gate="G$1" pin="CTS" pad="6"/>
<connect gate="G$1" pin="DTR" pad="3"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="RTS" pad="5"/>
<connect gate="G$1" pin="RXD" pad="1"/>
<connect gate="G$1" pin="TXD" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-6P" package="CONN-6P">
<connects>
<connect gate="G$1" pin="CTS" pad="6"/>
<connect gate="G$1" pin="DTR" pad="3"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="RTS" pad="5"/>
<connect gate="G$1" pin="RXD" pad="1"/>
<connect gate="G$1" pin="TXD" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-L" package="RS232-6PIN-NEW-L">
<connects>
<connect gate="G$1" pin="CTS" pad="6"/>
<connect gate="G$1" pin="DTR" pad="3"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="RTS" pad="5"/>
<connect gate="G$1" pin="RXD" pad="1"/>
<connect gate="G$1" pin="TXD" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-6P-NEW-90" package="RS232-6PIN-NEW-90">
<connects>
<connect gate="G$1" pin="CTS" pad="CTS"/>
<connect gate="G$1" pin="DTR" pad="DTR"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="RTS" pad="RTS"/>
<connect gate="G$1" pin="RXD" pad="RXD"/>
<connect gate="G$1" pin="TXD" pad="TXD"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-6P-NEW-90-L" package="RS232-6PIN-NEW-90-L">
<connects>
<connect gate="G$1" pin="CTS" pad="CTS"/>
<connect gate="G$1" pin="DTR" pad="DTR"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="RTS" pad="RTS"/>
<connect gate="G$1" pin="RXD" pad="RXD"/>
<connect gate="G$1" pin="TXD" pad="TXD"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-6P-FEM" package="CONN-6P-FEM">
<connects>
<connect gate="G$1" pin="CTS" pad="6"/>
<connect gate="G$1" pin="DTR" pad="3"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="RTS" pad="5"/>
<connect gate="G$1" pin="RXD" pad="1"/>
<connect gate="G$1" pin="TXD" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-6P-FEM-90" package="CONN-6P-FEM-90">
<connects>
<connect gate="G$1" pin="CTS" pad="6"/>
<connect gate="G$1" pin="DTR" pad="3"/>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="RTS" pad="5"/>
<connect gate="G$1" pin="RXD" pad="1"/>
<connect gate="G$1" pin="TXD" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="COMPORT-4PIN-NEW" prefix="J">
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
<deviceset name="CONN-5P" prefix="J">
<gates>
<gate name="G$1" symbol="PINCONN-5P" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CONN-5P-N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
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
<class number="0" name="default" width="0.6096" drill="0">
</class>
</classes>
<parts>
<part name="J1" library="pinconn" deviceset="COMPORT-6PIN-NEW" device="-6P-NEW-90-L" value="COMPORT-6PIN-NEW-6P-NEW-90-L"/>
<part name="J2" library="pinconn" deviceset="COMPORT-4PIN-NEW" device="-L"/>
<part name="J4" library="pinconn" deviceset="COMPORT-6PIN-NEW" device="-6P-FEM-90"/>
<part name="J3" library="pinconn" deviceset="CONN-5P" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="J1" gate="G$1" x="17.78" y="33.02"/>
<instance part="J2" gate="1" x="66.04" y="68.58" rot="MR0"/>
<instance part="J4" gate="G$1" x="114.3" y="33.02" rot="MR0"/>
<instance part="J3" gate="G$1" x="106.68" y="66.04" rot="MR180"/>
</instances>
<busses>
<bus name="RS232:RXD,TXD,DTR,GND,RTS,CTS">
<segment>
<wire x1="35.56" y1="30.48" x2="35.56" y2="45.72" width="0.762" layer="92"/>
<label x="33.02" y="52.07" size="1.778" layer="95" rot="R90"/>
<wire x1="35.56" y1="45.72" x2="40.64" y2="45.72" width="0.762" layer="92"/>
<wire x1="40.64" y1="45.72" x2="40.64" y2="68.58" width="0.762" layer="92"/>
<wire x1="40.64" y1="45.72" x2="86.36" y2="45.72" width="0.762" layer="92"/>
<wire x1="86.36" y1="45.72" x2="93.98" y2="45.72" width="0.762" layer="92"/>
<wire x1="93.98" y1="45.72" x2="93.98" y2="30.48" width="0.762" layer="92"/>
<wire x1="86.36" y1="45.72" x2="86.36" y2="68.58" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="RXD" class="0">
<segment>
<pinref part="J2" gate="1" pin="RXD"/>
<wire x1="55.88" y1="71.12" x2="43.18" y2="71.12" width="0.1524" layer="91"/>
<wire x1="43.18" y1="71.12" x2="40.64" y2="68.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="RXD"/>
<wire x1="25.4" y1="40.64" x2="33.02" y2="40.64" width="0.1524" layer="91"/>
<wire x1="33.02" y1="40.64" x2="35.56" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="RXD"/>
<wire x1="106.68" y1="40.64" x2="96.52" y2="40.64" width="0.1524" layer="91"/>
<wire x1="96.52" y1="40.64" x2="93.98" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="104.14" y1="71.12" x2="88.9" y2="71.12" width="0.1524" layer="91"/>
<wire x1="88.9" y1="71.12" x2="86.36" y2="68.58" width="0.1524" layer="91"/>
<label x="91.44" y="71.12" size="1.778" layer="95"/>
<pinref part="J3" gate="G$1" pin="1"/>
</segment>
</net>
<net name="TXD" class="0">
<segment>
<pinref part="J2" gate="1" pin="TXD"/>
<wire x1="55.88" y1="68.58" x2="43.18" y2="68.58" width="0.1524" layer="91"/>
<wire x1="43.18" y1="68.58" x2="40.64" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="TXD"/>
<wire x1="25.4" y1="38.1" x2="33.02" y2="38.1" width="0.1524" layer="91"/>
<wire x1="33.02" y1="38.1" x2="35.56" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="TXD"/>
<wire x1="106.68" y1="38.1" x2="96.52" y2="38.1" width="0.1524" layer="91"/>
<wire x1="96.52" y1="38.1" x2="93.98" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="86.36" y1="66.04" x2="88.9" y2="68.58" width="0.1524" layer="91"/>
<wire x1="88.9" y1="68.58" x2="104.14" y2="68.58" width="0.1524" layer="91"/>
<label x="91.44" y="68.58" size="1.778" layer="95"/>
<pinref part="J3" gate="G$1" pin="2"/>
</segment>
</net>
<net name="DTR" class="0">
<segment>
<pinref part="J2" gate="1" pin="DTR"/>
<wire x1="55.88" y1="66.04" x2="43.18" y2="66.04" width="0.1524" layer="91"/>
<wire x1="43.18" y1="66.04" x2="40.64" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="DTR"/>
<wire x1="25.4" y1="35.56" x2="33.02" y2="35.56" width="0.1524" layer="91"/>
<wire x1="33.02" y1="35.56" x2="35.56" y2="38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="DTR"/>
<wire x1="106.68" y1="35.56" x2="96.52" y2="35.56" width="0.1524" layer="91"/>
<wire x1="96.52" y1="35.56" x2="93.98" y2="38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="86.36" y1="63.5" x2="88.9" y2="66.04" width="0.1524" layer="91"/>
<wire x1="88.9" y1="66.04" x2="104.14" y2="66.04" width="0.1524" layer="91"/>
<label x="91.44" y="66.04" size="1.778" layer="95"/>
<pinref part="J3" gate="G$1" pin="3"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="J2" gate="1" pin="GND"/>
<wire x1="55.88" y1="63.5" x2="43.18" y2="63.5" width="0.1524" layer="91"/>
<wire x1="43.18" y1="63.5" x2="40.64" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="GND"/>
<wire x1="25.4" y1="33.02" x2="33.02" y2="33.02" width="0.1524" layer="91"/>
<wire x1="33.02" y1="33.02" x2="35.56" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="GND"/>
<wire x1="106.68" y1="33.02" x2="96.52" y2="33.02" width="0.1524" layer="91"/>
<wire x1="96.52" y1="33.02" x2="93.98" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="86.36" y1="60.96" x2="88.9" y2="63.5" width="0.1524" layer="91"/>
<wire x1="88.9" y1="63.5" x2="104.14" y2="63.5" width="0.1524" layer="91"/>
<label x="91.44" y="63.5" size="1.778" layer="95"/>
<pinref part="J3" gate="G$1" pin="4"/>
</segment>
</net>
<net name="RTS" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="RTS"/>
<wire x1="25.4" y1="30.48" x2="33.02" y2="30.48" width="0.1524" layer="91"/>
<wire x1="33.02" y1="30.48" x2="35.56" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="RTS"/>
<wire x1="106.68" y1="30.48" x2="96.52" y2="30.48" width="0.1524" layer="91"/>
<wire x1="96.52" y1="30.48" x2="93.98" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="86.36" y1="58.42" x2="88.9" y2="60.96" width="0.1524" layer="91"/>
<wire x1="88.9" y1="60.96" x2="104.14" y2="60.96" width="0.1524" layer="91"/>
<label x="91.44" y="60.96" size="1.778" layer="95"/>
<pinref part="J3" gate="G$1" pin="5"/>
</segment>
</net>
<net name="CTS" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="CTS"/>
<wire x1="25.4" y1="27.94" x2="33.02" y2="27.94" width="0.1524" layer="91"/>
<wire x1="33.02" y1="27.94" x2="35.56" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="CTS"/>
<wire x1="106.68" y1="27.94" x2="96.52" y2="27.94" width="0.1524" layer="91"/>
<wire x1="96.52" y1="27.94" x2="93.98" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
