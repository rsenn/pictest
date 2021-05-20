<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.2.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="12" fill="1" visible="no" active="no"/>
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
<layer number="53" name="tGND_GNDA" color="7" fill="1" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="7" fill="1" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
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
<layer number="100" name="Muster" color="7" fill="1" visible="yes" active="yes"/>
<layer number="101" name="Patch_Top" color="7" fill="1" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="7" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="fp8" color="7" fill="1" visible="yes" active="yes"/>
<layer number="109" name="fp9" color="7" fill="1" visible="yes" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="CC430_Restrict" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="IDFDebug" color="7" fill="1" visible="no" active="yes"/>
<layer number="114" name="FRNTMAAT1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="115" name="FRNTMAAT2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="7" fill="1" visible="yes" active="yes"/>
<layer number="117" name="BACKMAAT1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="no" active="no"/>
<layer number="119" name="KAP_TEKEN" color="7" fill="1" visible="yes" active="yes"/>
<layer number="120" name="KAP_MAAT1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="128" name="128bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="129bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="130" name="130bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="no" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="153" name="FabDoc1" color="6" fill="1" visible="no" active="no"/>
<layer number="154" name="FabDoc2" color="2" fill="1" visible="no" active="no"/>
<layer number="155" name="FabDoc3" color="7" fill="15" visible="no" active="no"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="218" name="218bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="219" name="219bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="220" name="220bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="221" name="221bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="222" name="222bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="223" name="223bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="224" name="224bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="no" active="yes"/>
<layer number="231" name="Eagle3D_PG1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="232" name="Eagle3D_PG2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="233" name="Eagle3D_PG3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="248" name="Housing" color="7" fill="1" visible="no" active="no"/>
<layer number="249" name="Edge" color="7" fill="1" visible="no" active="no"/>
<layer number="250" name="Descript" color="7" fill="1" visible="yes" active="yes"/>
<layer number="251" name="SMDround" color="7" fill="1" visible="yes" active="yes"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="Accent" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<description>pickstick - open source hardware</description>
<libraries>
<library name="LeoStick">
<description>Generated from &lt;b&gt;LeoStick.sch&lt;/b&gt;&lt;p&gt;
by exp-project-lbr.ulp</description>
<packages>
</packages>
<symbols>
<symbol name="SUPPLY1_GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="SUPPLY1_GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="SUPPLY1_GND" x="0" y="0"/>
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
<library name="alps">
<packages>
<package name="SKHLAAA010">
<wire x1="-2.746" y1="1.75" x2="-3" y2="1.496" width="0.127" layer="21" curve="90"/>
<wire x1="-3" y1="1.496" x2="-3" y2="-1.496" width="0.127" layer="21"/>
<wire x1="-3" y1="-1.496" x2="-2.746" y2="-1.75" width="0.127" layer="21" curve="90"/>
<wire x1="-2.746" y1="-1.75" x2="2.746" y2="-1.75" width="0.127" layer="21"/>
<wire x1="2.746" y1="-1.75" x2="3" y2="-1.496" width="0.127" layer="21" curve="90"/>
<wire x1="3" y1="-1.496" x2="3" y2="1.496" width="0.127" layer="21"/>
<wire x1="3" y1="1.496" x2="2.746" y2="1.75" width="0.127" layer="21" curve="90"/>
<wire x1="2.746" y1="1.75" x2="-2.746" y2="1.75" width="0.127" layer="21"/>
<wire x1="-1.5" y1="0.496" x2="-1.246" y2="0.75" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.246" y1="0.75" x2="1.246" y2="0.75" width="0.127" layer="21"/>
<wire x1="1.246" y1="0.75" x2="1.5" y2="0.496" width="0.127" layer="21" curve="-90"/>
<wire x1="1.5" y1="0.496" x2="1.5" y2="-0.496" width="0.127" layer="21"/>
<wire x1="1.5" y1="-0.496" x2="1.246" y2="-0.75" width="0.127" layer="21" curve="-90"/>
<wire x1="1.246" y1="-0.75" x2="-1.246" y2="-0.75" width="0.127" layer="21"/>
<wire x1="-1.246" y1="-0.75" x2="-1.5" y2="-0.496" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.5" y1="-0.496" x2="-1.5" y2="0.496" width="0.127" layer="21"/>
<pad name="1" x="-3.25" y="0" drill="1.25"/>
<pad name="2" x="3.25" y="0" drill="1.25"/>
</package>
</packages>
<symbols>
<symbol name="SPST">
<wire x1="-1.27" y1="0.889" x2="0" y2="0.889" width="0.254" layer="94"/>
<wire x1="0" y1="0.889" x2="1.27" y2="0.889" width="0.254" layer="94"/>
<wire x1="0" y1="0.889" x2="0" y2="1.524" width="0.254" layer="94"/>
<text x="-2.54" y="2.54" size="1.016" layer="95" font="vector">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.016" layer="96" font="vector">&gt;VALUE</text>
<pin name="1" x="-2.54" y="0" visible="off" length="point"/>
<pin name="2" x="2.54" y="0" visible="off" length="point" rot="R180"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<circle x="-1.27" y="0" radius="0.254" width="0.254" layer="94"/>
<circle x="1.27" y="0" radius="0.254" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SKHLAAA010" prefix="B">
<gates>
<gate name="G$1" symbol="SPST" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SKHLAAA010">
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
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A4L-LOC">
<wire x1="256.54" y1="3.81" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="256.54" y1="8.89" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="256.54" y1="13.97" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="256.54" y1="19.05" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="3.81" x2="161.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="24.13" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="215.265" y1="24.13" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="246.38" y1="3.81" x2="246.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="215.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="215.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<text x="217.17" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="217.17" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="230.505" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="216.916" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="260.35" y2="179.07" columns="6" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4L-LOC" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A4L-LOC" x="0" y="0"/>
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
<library name="BaseApp">
<packages>
<package name="PINHEAD-1X14">
<wire x1="-17.78" y1="-1.27" x2="-17.78" y2="1.27" width="0.127" layer="21"/>
<pad name="1" x="-16.51" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="2" x="-13.97" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="3" x="-11.43" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="4" x="-8.89" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="5" x="-6.35" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="6" x="-3.81" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="7" x="-1.27" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="8" x="1.27" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<text x="-17.8562" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-17.78" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="-14.224" y1="-0.254" x2="-13.716" y2="0.254" layer="51"/>
<rectangle x1="-16.764" y1="-0.254" x2="-16.256" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<pad name="9" x="3.81" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="10" x="6.35" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="11" x="8.89" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="12" x="11.43" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="13" x="13.97" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<pad name="14" x="16.51" y="0" drill="1.016" diameter="1.778" shape="octagon" rot="R90"/>
<rectangle x1="16.256" y1="-0.254" x2="16.764" y2="0.254" layer="51"/>
<rectangle x1="13.716" y1="-0.254" x2="14.224" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<wire x1="-17.78" y1="1.27" x2="17.78" y2="1.27" width="0.127" layer="21"/>
<wire x1="17.78" y1="1.27" x2="17.78" y2="-1.27" width="0.127" layer="21"/>
<wire x1="17.78" y1="-1.27" x2="-17.78" y2="-1.27" width="0.127" layer="21"/>
</package>
<package name="PINHEAD-1X14-SQUARE">
<wire x1="-17.78" y1="-1.27" x2="-17.78" y2="1.27" width="0.127" layer="21"/>
<pad name="1" x="-16.51" y="0" drill="1.016" diameter="1.778" shape="square" rot="R90"/>
<pad name="2" x="-13.97" y="0" drill="1.016" diameter="1.778" shape="square" rot="R90"/>
<pad name="3" x="-11.43" y="0" drill="1.016" diameter="1.778" shape="square" rot="R90"/>
<pad name="4" x="-8.89" y="0" drill="1.016" diameter="1.778" shape="square" rot="R90"/>
<pad name="5" x="-6.35" y="0" drill="1.016" diameter="1.778" shape="square" rot="R90"/>
<pad name="6" x="-3.81" y="0" drill="1.016" diameter="1.778" shape="square" rot="R90"/>
<pad name="7" x="-1.27" y="0" drill="1.016" diameter="1.778" shape="square" rot="R90"/>
<pad name="8" x="1.27" y="0" drill="1.016" diameter="1.778" shape="square" rot="R90"/>
<text x="-17.8562" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-17.78" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="-14.224" y1="-0.254" x2="-13.716" y2="0.254" layer="51"/>
<rectangle x1="-16.764" y1="-0.254" x2="-16.256" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<pad name="9" x="3.81" y="0" drill="1.016" diameter="1.778" shape="square" rot="R90"/>
<pad name="10" x="6.35" y="0" drill="1.016" diameter="1.778" shape="square" rot="R90"/>
<pad name="11" x="8.89" y="0" drill="1.016" diameter="1.778" shape="square" rot="R90"/>
<pad name="12" x="11.43" y="0" drill="1.016" diameter="1.778" shape="square" rot="R90"/>
<pad name="13" x="13.97" y="0" drill="1.016" diameter="1.778" shape="square" rot="R90"/>
<pad name="14" x="16.51" y="0" drill="1.016" diameter="1.778" shape="square" rot="R90"/>
<rectangle x1="16.256" y1="-0.254" x2="16.764" y2="0.254" layer="51"/>
<rectangle x1="13.716" y1="-0.254" x2="14.224" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<wire x1="-17.78" y1="1.27" x2="17.78" y2="1.27" width="0.127" layer="21"/>
<wire x1="17.78" y1="1.27" x2="17.78" y2="-1.27" width="0.127" layer="21"/>
<wire x1="17.78" y1="-1.27" x2="-17.78" y2="-1.27" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PINHEAD-1X14">
<wire x1="1.27" y1="17.78" x2="-6.35" y2="17.78" width="0.4064" layer="94"/>
<text x="-6.35" y="18.415" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-22.86" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="9" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="11" x="-2.54" y="-10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="12" x="-2.54" y="-12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="13" x="-2.54" y="-15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="14" x="-2.54" y="-17.78" visible="pad" length="short" direction="pas" function="dot"/>
<wire x1="-6.35" y1="17.78" x2="-6.35" y2="-20.32" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="-20.32" x2="1.27" y2="-20.32" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-20.32" x2="1.27" y2="17.78" width="0.4064" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHEAD-1X14">
<gates>
<gate name="G$1" symbol="PINHEAD-1X14" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PINHEAD-1X14">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="'" package="PINHEAD-1X14-SQUARE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
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
<part name="GND6" library="LeoStick" deviceset="SUPPLY1_GND" device="" value=""/>
<part name="SW1" library="alps" deviceset="SKHLAAA010" device="" value="Reset"/>
<part name="FRAME1" library="frames" deviceset="A4L-LOC" device=""/>
<part name="JP1" library="BaseApp" deviceset="PINHEAD-1X14" device=""/>
<part name="JP2" library="BaseApp" deviceset="PINHEAD-1X14" device=""/>
<part name="JP4" library="BaseApp" deviceset="PINHEAD-1X14" device=""/>
<part name="JP3" library="BaseApp" deviceset="PINHEAD-1X14" device=""/>
</parts>
<sheets>
<sheet>
<description>picstick</description>
<plain>
<text x="220.98" y="20.32" size="1.778" layer="97">https://github.com/kaza007</text>
<text x="10.16" y="10.16" size="2.54" layer="97">Work by kaza007,
https://github.com/kaza007

This work is licensed under a 
Creative Commons Attribution-ShareAlike 4.0
International License,
http://creativecommons.org/licenses/by-sa/4.0</text>
</plain>
<instances>
<instance part="GND6" gate="1" x="66.04" y="73.66" rot="MR0"/>
<instance part="SW1" gate="G$1" x="66.04" y="83.82" rot="MR90"/>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="JP1" gate="G$1" x="210.82" y="134.62" smashed="yes">
<attribute name="NAME" x="204.47" y="153.035" size="1.778" layer="95"/>
<attribute name="VALUE" x="198.12" y="109.22" size="1.778" layer="96"/>
</instance>
<instance part="JP2" gate="G$1" x="45.72" y="134.62" smashed="yes" rot="MR0">
<attribute name="NAME" x="52.07" y="153.035" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="58.42" y="111.76" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="JP4" gate="G$1" x="55.88" y="134.62" smashed="yes" rot="MR0">
<attribute name="NAME" x="62.23" y="153.035" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="66.04" y="109.22" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="JP3" gate="G$1" x="200.66" y="134.62" smashed="yes">
<attribute name="NAME" x="194.31" y="153.035" size="1.778" layer="95"/>
<attribute name="VALUE" x="190.5" y="111.76" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="66.04" y1="81.28" x2="66.04" y2="76.2" width="0.1524" layer="91"/>
<pinref part="SW1" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="JP1" gate="G$1" pin="1"/>
<pinref part="JP3" gate="G$1" pin="1"/>
<wire x1="208.28" y1="149.86" x2="198.12" y2="149.86" width="0.1524" layer="91"/>
<wire x1="198.12" y1="149.86" x2="182.88" y2="149.86" width="0.1524" layer="91"/>
<junction x="198.12" y="149.86"/>
<label x="177.8" y="149.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="RESET_SW" class="0">
<segment>
<wire x1="66.04" y1="86.36" x2="66.04" y2="91.44" width="0.1524" layer="91"/>
<pinref part="SW1" gate="G$1" pin="2"/>
<wire x1="66.04" y1="91.44" x2="58.42" y2="91.44" width="0.1524" layer="91"/>
<label x="58.42" y="91.44" size="1.778" layer="95" rot="MR0"/>
</segment>
<segment>
<wire x1="71.12" y1="149.86" x2="58.42" y2="149.86" width="0.1524" layer="91"/>
<pinref part="JP2" gate="G$1" pin="1"/>
<wire x1="58.42" y1="149.86" x2="48.26" y2="149.86" width="0.1524" layer="91"/>
<pinref part="JP4" gate="G$1" pin="1"/>
<junction x="58.42" y="149.86"/>
<label x="71.12" y="149.86" size="1.778" layer="95"/>
</segment>
</net>
<net name="RB6" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="2"/>
<wire x1="58.42" y1="147.32" x2="48.26" y2="147.32" width="0.1524" layer="91"/>
<pinref part="JP4" gate="G$1" pin="2"/>
</segment>
</net>
<net name="RB5" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="3"/>
<wire x1="58.42" y1="144.78" x2="48.26" y2="144.78" width="0.1524" layer="91"/>
<pinref part="JP4" gate="G$1" pin="3"/>
</segment>
</net>
<net name="RB4" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="4"/>
<wire x1="58.42" y1="142.24" x2="48.26" y2="142.24" width="0.1524" layer="91"/>
<pinref part="JP4" gate="G$1" pin="4"/>
</segment>
</net>
<net name="RB3" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="5"/>
<wire x1="58.42" y1="139.7" x2="48.26" y2="139.7" width="0.1524" layer="91"/>
<pinref part="JP4" gate="G$1" pin="5"/>
</segment>
</net>
<net name="RB2" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="6"/>
<wire x1="58.42" y1="137.16" x2="48.26" y2="137.16" width="0.1524" layer="91"/>
<pinref part="JP4" gate="G$1" pin="6"/>
</segment>
</net>
<net name="N$87" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="7"/>
<wire x1="58.42" y1="134.62" x2="48.26" y2="134.62" width="0.1524" layer="91"/>
<pinref part="JP4" gate="G$1" pin="7"/>
</segment>
</net>
<net name="N$88" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="8"/>
<wire x1="58.42" y1="132.08" x2="48.26" y2="132.08" width="0.1524" layer="91"/>
<pinref part="JP4" gate="G$1" pin="8"/>
</segment>
</net>
<net name="N$89" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="9"/>
<wire x1="58.42" y1="129.54" x2="48.26" y2="129.54" width="0.1524" layer="91"/>
<pinref part="JP4" gate="G$1" pin="9"/>
</segment>
</net>
<net name="N$90" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="10"/>
<wire x1="58.42" y1="127" x2="48.26" y2="127" width="0.1524" layer="91"/>
<pinref part="JP4" gate="G$1" pin="10"/>
</segment>
</net>
<net name="N$91" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="11"/>
<wire x1="58.42" y1="124.46" x2="48.26" y2="124.46" width="0.1524" layer="91"/>
<pinref part="JP4" gate="G$1" pin="11"/>
</segment>
</net>
<net name="N$92" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="12"/>
<wire x1="48.26" y1="121.92" x2="58.42" y2="121.92" width="0.1524" layer="91"/>
<pinref part="JP4" gate="G$1" pin="12"/>
</segment>
</net>
<net name="N$93" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="13"/>
<wire x1="48.26" y1="119.38" x2="58.42" y2="119.38" width="0.1524" layer="91"/>
<pinref part="JP4" gate="G$1" pin="13"/>
</segment>
</net>
<net name="N$94" class="0">
<segment>
<pinref part="JP2" gate="G$1" pin="14"/>
<wire x1="48.26" y1="116.84" x2="58.42" y2="116.84" width="0.1524" layer="91"/>
<pinref part="JP4" gate="G$1" pin="14"/>
</segment>
</net>
<net name="N$95" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="3"/>
<wire x1="208.28" y1="144.78" x2="198.12" y2="144.78" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="3"/>
</segment>
</net>
<net name="N$96" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="4"/>
<wire x1="208.28" y1="142.24" x2="198.12" y2="142.24" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="4"/>
</segment>
</net>
<net name="N$97" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="5"/>
<wire x1="208.28" y1="139.7" x2="198.12" y2="139.7" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="5"/>
</segment>
</net>
<net name="N$98" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="6"/>
<wire x1="208.28" y1="137.16" x2="198.12" y2="137.16" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="6"/>
</segment>
</net>
<net name="N$99" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="7"/>
<wire x1="208.28" y1="134.62" x2="198.12" y2="134.62" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="7"/>
</segment>
</net>
<net name="N$100" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="8"/>
<wire x1="208.28" y1="132.08" x2="198.12" y2="132.08" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="8"/>
</segment>
</net>
<net name="N$101" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="9"/>
<wire x1="208.28" y1="129.54" x2="198.12" y2="129.54" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="9"/>
</segment>
</net>
<net name="N$102" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="10"/>
<wire x1="208.28" y1="127" x2="198.12" y2="127" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="10"/>
</segment>
</net>
<net name="N$103" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="11"/>
<wire x1="208.28" y1="124.46" x2="198.12" y2="124.46" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="11"/>
</segment>
</net>
<net name="N$104" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="12"/>
<wire x1="208.28" y1="121.92" x2="198.12" y2="121.92" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="12"/>
</segment>
</net>
<net name="N$105" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="13"/>
<wire x1="208.28" y1="119.38" x2="198.12" y2="119.38" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="13"/>
</segment>
</net>
<net name="N$106" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="14"/>
<wire x1="208.28" y1="116.84" x2="198.12" y2="116.84" width="0.1524" layer="91"/>
<pinref part="JP3" gate="G$1" pin="14"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="JP3" gate="G$1" pin="2"/>
<pinref part="JP1" gate="G$1" pin="2"/>
<wire x1="198.12" y1="147.32" x2="208.28" y2="147.32" width="0.1524" layer="91"/>
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
