<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.2.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="dots" multiple="1" display="yes" altdistance="0.05" altunitdist="inch" altunit="inch"/>
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
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
</layers>
<schematic>
<libraries>
<library name="AtaLib">
<packages>
<package name="DIL18">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="12.065" y1="2.54" x2="-12.065" y2="2.54" width="0.254" layer="21"/>
<wire x1="-12.065" y1="-2.54" x2="12.065" y2="-2.54" width="0.254" layer="21"/>
<wire x1="12.065" y1="2.54" x2="12.065" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-12.065" y1="2.54" x2="-12.065" y2="1.016" width="0.254" layer="21"/>
<wire x1="-12.065" y1="-2.54" x2="-12.065" y2="-1.016" width="0.254" layer="21"/>
<wire x1="-12.065" y1="1.016" x2="-12.065" y2="-1.016" width="0.254" layer="21" curve="-180"/>
<pad name="1" x="-10.16" y="-3.81" drill="1.016" diameter="1.6764" shape="square" rot="R90"/>
<pad name="2" x="-7.62" y="-3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="7" x="5.08" y="-3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="8" x="7.62" y="-3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="3" x="-5.08" y="-3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="4" x="-2.54" y="-3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="6" x="2.54" y="-3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="5" x="0" y="-3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="9" x="10.16" y="-3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="10" x="10.16" y="3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="11" x="7.62" y="3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="12" x="5.08" y="3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="13" x="2.54" y="3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="14" x="0" y="3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="15" x="-2.54" y="3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="16" x="-5.08" y="3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="17" x="-7.62" y="3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="18" x="-10.16" y="3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<text x="-7.62" y="0.635" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="-7.62" y="-1.905" size="1.27" layer="27" font="vector">&gt;VALUE</text>
</package>
<package name="C01">
<description>&lt;b&gt;Capacitor&lt;/b&gt;&lt;p&gt;66/40 sep 100</description>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-1.27" y="0" drill="1.016" diameter="1.6764"/>
<pad name="P$2" x="1.27" y="0" drill="1.016" diameter="1.6764"/>
<text x="3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="3.175" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C02">
<description>&lt;b&gt;Capacitor&lt;/b&gt;&lt;p&gt;66/40 sep 200</description>
<wire x1="-3.81" y1="-1.27" x2="3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.27" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-2.54" y="0" drill="1.016" diameter="1.6764"/>
<pad name="P$2" x="2.54" y="0" drill="1.016" diameter="1.6764"/>
<text x="4.445" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="4.445" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C03">
<description>&lt;b&gt;Capacitor&lt;/b&gt;&lt;p&gt;66/40 sep 300</description>
<wire x1="-5.08" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.254" layer="21"/>
<wire x1="5.08" y1="1.27" x2="-5.08" y2="1.27" width="0.254" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="1.016" diameter="1.6764"/>
<pad name="P$2" x="3.81" y="0" drill="1.016" diameter="1.6764"/>
<text x="-2.54" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C04">
<description>&lt;b&gt;Capacitor&lt;/b&gt;&lt;p&gt;66/40 sep 400</description>
<wire x1="-6.35" y1="-1.905" x2="6.35" y2="-1.905" width="0.254" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="1.905" width="0.254" layer="21"/>
<wire x1="6.35" y1="1.905" x2="-6.35" y2="1.905" width="0.254" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-6.35" y2="-1.905" width="0.254" layer="21"/>
<pad name="P$1" x="-5.08" y="0" drill="1.016" diameter="1.6764"/>
<pad name="P$2" x="5.08" y="0" drill="1.016" diameter="1.6764"/>
<text x="-3.175" y="0" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-1.524" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C05">
<description>&lt;b&gt;Capacitor&lt;/b&gt;&lt;p&gt;76/40 sep 500</description>
<wire x1="-7.62" y1="-2.54" x2="7.62" y2="-2.54" width="0.254" layer="21"/>
<wire x1="7.62" y1="-2.54" x2="7.62" y2="2.54" width="0.254" layer="21"/>
<wire x1="7.62" y1="2.54" x2="-7.62" y2="2.54" width="0.254" layer="21"/>
<wire x1="-7.62" y1="2.54" x2="-7.62" y2="-2.54" width="0.254" layer="21"/>
<pad name="P$1" x="-6.35" y="0" drill="1.016" diameter="1.9304"/>
<pad name="P$2" x="6.35" y="0" drill="1.016" diameter="1.9304"/>
<text x="-3.175" y="0" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C06">
<description>&lt;b&gt;Capacitor&lt;/b&gt;&lt;p&gt;86/40 sep 600</description>
<wire x1="-8.89" y1="-3.81" x2="8.89" y2="-3.81" width="0.254" layer="21"/>
<wire x1="8.89" y1="-3.81" x2="8.89" y2="3.81" width="0.254" layer="21"/>
<wire x1="8.89" y1="3.81" x2="-8.89" y2="3.81" width="0.254" layer="21"/>
<wire x1="-8.89" y1="3.81" x2="-8.89" y2="-3.81" width="0.254" layer="21"/>
<pad name="P$1" x="-7.62" y="0" drill="1.016" diameter="2.1844"/>
<pad name="P$2" x="7.62" y="0" drill="1.016" diameter="2.1844"/>
<text x="-3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C07">
<description>&lt;b&gt;Capacitor&lt;/b&gt;&lt;p&gt;86/40 sep 700</description>
<wire x1="-10.16" y1="-3.175" x2="10.16" y2="-3.175" width="0.254" layer="21"/>
<wire x1="10.16" y1="-3.175" x2="10.16" y2="3.175" width="0.254" layer="21"/>
<wire x1="10.16" y1="3.175" x2="-10.16" y2="3.175" width="0.254" layer="21"/>
<wire x1="-10.16" y1="3.175" x2="-10.16" y2="-3.175" width="0.254" layer="21"/>
<pad name="P$1" x="-8.89" y="0" drill="1.016" diameter="2.1844"/>
<pad name="P$2" x="8.89" y="0" drill="1.016" diameter="2.1844"/>
<text x="-3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C08">
<description>&lt;b&gt;Capacitor&lt;/b&gt;&lt;p&gt;86/40 sep 800</description>
<wire x1="-11.43" y1="-3.81" x2="11.43" y2="-3.81" width="0.254" layer="21"/>
<wire x1="11.43" y1="-3.81" x2="11.43" y2="3.81" width="0.254" layer="21"/>
<wire x1="11.43" y1="3.81" x2="-11.43" y2="3.81" width="0.254" layer="21"/>
<wire x1="-11.43" y1="3.81" x2="-11.43" y2="-3.81" width="0.254" layer="21"/>
<pad name="P$1" x="-10.16" y="0" drill="1.016" diameter="2.1844"/>
<pad name="P$2" x="10.16" y="0" drill="1.016" diameter="2.1844"/>
<text x="-3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C09">
<description>&lt;b&gt;Capacitor&lt;/b&gt;&lt;p&gt;100/50 sep 900</description>
<wire x1="-12.7" y1="-5.08" x2="12.7" y2="-5.08" width="0.254" layer="21"/>
<wire x1="12.7" y1="-5.08" x2="12.7" y2="5.08" width="0.254" layer="21"/>
<wire x1="12.7" y1="5.08" x2="-12.7" y2="5.08" width="0.254" layer="21"/>
<wire x1="-12.7" y1="5.08" x2="-12.7" y2="-5.08" width="0.254" layer="21"/>
<pad name="P$1" x="-11.43" y="0" drill="1.27" diameter="2.54"/>
<pad name="P$2" x="11.43" y="0" drill="1.27" diameter="2.54"/>
<text x="-5.715" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.715" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C10">
<description>&lt;b&gt;Capacitor&lt;/b&gt;&lt;p&gt;100/50 sep 1"</description>
<wire x1="-13.97" y1="-5.08" x2="13.97" y2="-5.08" width="0.254" layer="21"/>
<wire x1="13.97" y1="-5.08" x2="13.97" y2="5.08" width="0.254" layer="21"/>
<wire x1="13.97" y1="5.08" x2="-13.97" y2="5.08" width="0.254" layer="21"/>
<wire x1="-13.97" y1="5.08" x2="-13.97" y2="-5.08" width="0.254" layer="21"/>
<pad name="P$1" x="-12.7" y="0" drill="1.27" diameter="2.54"/>
<pad name="P$2" x="12.7" y="0" drill="1.27" diameter="2.54"/>
<text x="-3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C0402">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.092" y1="0.483" x2="1.092" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.092" y1="0.483" x2="1.092" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.092" y1="-0.483" x2="-1.092" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.092" y1="-0.483" x2="-1.092" y2="0.483" width="0.0508" layer="39"/>
<smd name="1" x="-0.635" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.635" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C0504">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.346" y1="0.856" x2="1.346" y2="0.856" width="0.0508" layer="39"/>
<wire x1="1.346" y1="0.856" x2="1.346" y2="-0.856" width="0.0508" layer="39"/>
<wire x1="1.346" y1="-0.856" x2="-1.346" y2="-0.856" width="0.0508" layer="39"/>
<wire x1="-1.346" y1="-0.856" x2="-1.346" y2="0.856" width="0.0508" layer="39"/>
<wire x1="-0.294" y1="0.559" x2="0.294" y2="0.559" width="0.1016" layer="51"/>
<wire x1="-0.294" y1="-0.559" x2="0.294" y2="-0.559" width="0.1016" layer="51"/>
<smd name="1" x="-0.762" y="0" dx="1" dy="1.3" layer="1"/>
<smd name="2" x="0.762" y="0" dx="1" dy="1.3" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.6604" y1="-0.6223" x2="-0.2804" y2="0.6276" layer="51"/>
<rectangle x1="0.2794" y1="-0.6223" x2="0.6594" y2="0.6276" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C0603">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.6" y1="0.729" x2="1.6" y2="0.729" width="0.0508" layer="39"/>
<wire x1="1.6" y1="0.729" x2="1.6" y2="-0.729" width="0.0508" layer="39"/>
<wire x1="1.6" y1="-0.729" x2="-1.6" y2="-0.729" width="0.0508" layer="39"/>
<wire x1="-1.6" y1="-0.729" x2="-1.6" y2="0.729" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.889" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.889" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C0805">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.719" y1="0.983" x2="1.719" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.719" y1="-0.983" x2="-1.719" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.719" y1="-0.983" x2="-1.719" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<wire x1="1.719" y1="0.983" x2="1.719" y2="-0.983" width="0.0508" layer="39"/>
<smd name="1" x="-0.889" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.889" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C1005">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.092" y1="0.61" x2="1.092" y2="0.61" width="0.0508" layer="39"/>
<wire x1="1.092" y1="0.61" x2="1.092" y2="-0.61" width="0.0508" layer="39"/>
<wire x1="1.092" y1="-0.61" x2="-1.092" y2="-0.61" width="0.0508" layer="39"/>
<wire x1="-1.092" y1="-0.61" x2="-1.092" y2="0.61" width="0.0508" layer="39"/>
<smd name="1" x="-0.635" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.635" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C1206">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="1.11" x2="2.473" y2="1.11" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.11" x2="-2.473" y2="-1.11" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.11" x2="-2.473" y2="1.11" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.11" x2="2.473" y2="-1.11" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.397" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.397" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="C1210">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="1.61" x2="2.473" y2="1.61" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.61" x2="-2.473" y2="-1.61" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.61" x2="-2.473" y2="1.61" width="0.0508" layer="39"/>
<wire x1="-0.9652" y1="1.2446" x2="0.9652" y2="1.2446" width="0.1016" layer="51"/>
<wire x1="-0.9652" y1="-1.2446" x2="0.9652" y2="-1.2446" width="0.1016" layer="51"/>
<wire x1="2.473" y1="1.61" x2="2.473" y2="-1.61" width="0.0508" layer="39"/>
<smd name="1" x="-1.397" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.397" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-1.2954" x2="-0.9517" y2="1.3045" layer="51"/>
<rectangle x1="0.9517" y1="-1.3045" x2="1.7018" y2="1.2954" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="C1310">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.346" y1="0.856" x2="1.346" y2="0.856" width="0.0508" layer="39"/>
<wire x1="1.346" y1="0.856" x2="1.346" y2="-0.856" width="0.0508" layer="39"/>
<wire x1="1.346" y1="-0.856" x2="-1.346" y2="-0.856" width="0.0508" layer="39"/>
<wire x1="-1.346" y1="-0.856" x2="-1.346" y2="0.856" width="0.0508" layer="39"/>
<wire x1="-0.294" y1="0.559" x2="0.294" y2="0.559" width="0.1016" layer="51"/>
<wire x1="-0.294" y1="-0.559" x2="0.294" y2="-0.559" width="0.1016" layer="51"/>
<smd name="1" x="-0.762" y="0" dx="1" dy="1.3" layer="1"/>
<smd name="2" x="0.762" y="0" dx="1" dy="1.3" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.6604" y1="-0.6223" x2="-0.2804" y2="0.6276" layer="51"/>
<rectangle x1="0.2794" y1="-0.6223" x2="0.6594" y2="0.6276" layer="51"/>
<rectangle x1="-0.1001" y1="-0.3" x2="0.1001" y2="0.3" layer="35"/>
</package>
<package name="C1608">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.6" y1="0.729" x2="1.6" y2="0.729" width="0.0508" layer="39"/>
<wire x1="1.6" y1="0.729" x2="1.6" y2="-0.729" width="0.0508" layer="39"/>
<wire x1="1.6" y1="-0.729" x2="-1.6" y2="-0.729" width="0.0508" layer="39"/>
<wire x1="-1.6" y1="-0.729" x2="-1.6" y2="0.729" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.889" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.889" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="C1812">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-3.1" y1="1.983" x2="3.227" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.227" y1="-1.983" x2="-3.1" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.1" y1="-1.983" x2="-3.1" y2="1.983" width="0.0508" layer="39"/>
<wire x1="-1.4732" y1="1.6002" x2="1.4732" y2="1.6002" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-1.6002" x2="1.4732" y2="-1.6002" width="0.1016" layer="51"/>
<wire x1="3.227" y1="1.983" x2="3.227" y2="-1.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.905" y="0" dx="1.9" dy="3.4" layer="1"/>
<smd name="2" x="1.905" y="0" dx="1.9" dy="3.4" layer="1"/>
<text x="-1.905" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.3876" y1="-1.651" x2="-1.4376" y2="1.649" layer="51"/>
<rectangle x1="1.4478" y1="-1.651" x2="2.3978" y2="1.649" layer="51"/>
<rectangle x1="-0.3" y1="-0.4001" x2="0.3" y2="0.4001" layer="35"/>
</package>
<package name="C1825">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-3.227" y1="3.61" x2="3.227" y2="3.61" width="0.0508" layer="39"/>
<wire x1="3.227" y1="-3.61" x2="-3.227" y2="-3.61" width="0.0508" layer="39"/>
<wire x1="-3.227" y1="-3.61" x2="-3.227" y2="3.61" width="0.0508" layer="39"/>
<wire x1="-1.4986" y1="3.2766" x2="1.4732" y2="3.2766" width="0.1016" layer="51"/>
<wire x1="-1.4732" y1="-3.2766" x2="1.4986" y2="-3.2766" width="0.1016" layer="51"/>
<wire x1="3.227" y1="3.61" x2="3.227" y2="-3.61" width="0.0508" layer="39"/>
<smd name="1" x="-1.905" y="0.127" dx="1.9" dy="6.8" layer="1"/>
<smd name="2" x="1.905" y="0" dx="1.9" dy="6.8" layer="1"/>
<text x="-1.905" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.413" y1="-3.3528" x2="-1.463" y2="3.3472" layer="51"/>
<rectangle x1="1.4478" y1="-3.3528" x2="2.3978" y2="3.3472" layer="51"/>
<rectangle x1="-0.7" y1="-0.7" x2="0.7" y2="0.7" layer="35"/>
</package>
<package name="C2012">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-1.719" y1="0.983" x2="1.719" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.719" y1="0.983" x2="1.719" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.719" y1="-0.983" x2="-1.719" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.719" y1="-0.983" x2="-1.719" y2="0.983" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<smd name="1" x="-0.889" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.889" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="C3216">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="1.11" x2="2.473" y2="1.11" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.11" x2="-2.473" y2="-1.11" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.11" x2="-2.473" y2="1.11" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.11" x2="2.473" y2="-1.11" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.397" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.397" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.3" y1="-0.5001" x2="0.3" y2="0.5001" layer="35"/>
</package>
<package name="C3225">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-2.473" y1="1.61" x2="2.473" y2="1.61" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.61" x2="-2.473" y2="-1.61" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.61" x2="-2.473" y2="1.61" width="0.0508" layer="39"/>
<wire x1="-0.9652" y1="1.2446" x2="0.9652" y2="1.2446" width="0.1016" layer="51"/>
<wire x1="-0.9652" y1="-1.2446" x2="0.9652" y2="-1.2446" width="0.1016" layer="51"/>
<wire x1="2.473" y1="1.61" x2="2.473" y2="-1.61" width="0.0508" layer="39"/>
<smd name="1" x="-1.397" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.397" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-1.2954" x2="-0.9517" y2="1.3045" layer="51"/>
<rectangle x1="0.9517" y1="-1.3045" x2="1.7018" y2="1.2954" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="C4532">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-3.227" y1="1.983" x2="3.227" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.227" y1="-1.983" x2="-3.227" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.227" y1="-1.983" x2="-3.227" y2="1.983" width="0.0508" layer="39"/>
<wire x1="-1.4732" y1="1.6002" x2="1.4732" y2="1.6002" width="0.1016" layer="51"/>
<wire x1="-1.4478" y1="-1.6002" x2="1.4732" y2="-1.6002" width="0.1016" layer="51"/>
<wire x1="3.227" y1="1.983" x2="3.227" y2="-1.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.905" y="0" dx="1.9" dy="3.4" layer="1"/>
<smd name="2" x="1.905" y="0" dx="1.9" dy="3.4" layer="1"/>
<text x="-1.905" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.3876" y1="-1.651" x2="-1.4376" y2="1.649" layer="51"/>
<rectangle x1="1.4478" y1="-1.651" x2="2.3978" y2="1.649" layer="51"/>
<rectangle x1="-0.4001" y1="-0.7" x2="0.4001" y2="0.7" layer="35"/>
</package>
<package name="C4564">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<wire x1="-3.227" y1="3.61" x2="3.227" y2="3.61" width="0.0508" layer="39"/>
<wire x1="3.227" y1="-3.61" x2="-3.227" y2="-3.61" width="0.0508" layer="39"/>
<wire x1="-3.227" y1="-3.61" x2="-3.227" y2="3.61" width="0.0508" layer="39"/>
<wire x1="-1.4986" y1="3.2766" x2="1.4732" y2="3.2766" width="0.1016" layer="51"/>
<wire x1="-1.4732" y1="-3.2766" x2="1.4986" y2="-3.2766" width="0.1016" layer="51"/>
<wire x1="3.227" y1="3.61" x2="3.227" y2="-3.61" width="0.0508" layer="39"/>
<smd name="1" x="-1.905" y="0" dx="1.9" dy="6.8" layer="1"/>
<smd name="2" x="1.905" y="0" dx="1.9" dy="6.8" layer="1"/>
<text x="-1.905" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.413" y1="-3.3528" x2="-1.463" y2="3.3472" layer="51"/>
<rectangle x1="1.4478" y1="-3.3528" x2="2.3978" y2="3.3472" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="C11">
<description>&lt;b&gt;Capacitor&lt;/b&gt;&lt;p&gt;86/50 sep 1.1"</description>
<wire x1="-15.24" y1="-7.62" x2="15.24" y2="-7.62" width="0.254" layer="21"/>
<wire x1="15.24" y1="-7.62" x2="15.24" y2="7.62" width="0.254" layer="21"/>
<wire x1="15.24" y1="7.62" x2="-15.24" y2="7.62" width="0.254" layer="21"/>
<wire x1="-15.24" y1="7.62" x2="-15.24" y2="-7.62" width="0.254" layer="21"/>
<pad name="P$1" x="-13.97" y="0" drill="1.27" diameter="2.54"/>
<pad name="P$2" x="13.97" y="0" drill="1.27" diameter="2.54"/>
<text x="-3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="C02W">
<description>&lt;b&gt;Capacitor&lt;/b&gt;&lt;p&gt;66/40 sep 200 wide pack</description>
<wire x1="-3.81" y1="-2.54" x2="3.81" y2="-2.54" width="0.254" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="3.81" y2="2.54" width="0.254" layer="21"/>
<wire x1="3.81" y1="2.54" x2="-3.81" y2="2.54" width="0.254" layer="21"/>
<wire x1="-3.81" y1="2.54" x2="-3.81" y2="-2.54" width="0.254" layer="21"/>
<pad name="P$1" x="-2.54" y="0" drill="1.016" diameter="1.6764"/>
<pad name="P$2" x="2.54" y="0" drill="1.016" diameter="1.6764"/>
<text x="4.445" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="4.445" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CP01">
<description>&lt;b&gt;Capacitor Pol.&lt;/b&gt;&lt;p&gt;66/40 sep 100</description>
<wire x1="-2.54" y1="-1.27" x2="-0.635" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="-0.635" y2="1.27" width="0.254" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-0.635" y2="0.635" width="0.254" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-0.635" y2="-0.635" width="0.254" layer="21"/>
<pad name="P$1" x="-1.27" y="0" drill="1.016" diameter="1.6764" shape="square"/>
<pad name="P$2" x="1.27" y="0" drill="1.016" diameter="1.6764"/>
<text x="3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="3.175" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CP02">
<description>&lt;b&gt;Capacitor Pol.&lt;/b&gt;&lt;p&gt;66/40 sep 200</description>
<wire x1="-3.81" y1="-1.27" x2="-1.27" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.27" x2="-1.27" y2="1.27" width="0.254" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0.635" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-0.635" width="0.254" layer="21"/>
<pad name="P$1" x="-2.54" y="0" drill="1.016" diameter="1.6764" shape="square"/>
<pad name="P$2" x="2.54" y="0" drill="1.016" diameter="1.6764"/>
<text x="4.445" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="4.445" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CP03">
<description>&lt;b&gt;Capacitor Pol.&lt;/b&gt;&lt;p&gt;66/40 sep 300</description>
<wire x1="-5.08" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.254" layer="21"/>
<wire x1="5.08" y1="1.27" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-5.08" y2="1.27" width="0.254" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="0.635" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="-0.635" width="0.254" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="1.016" diameter="1.6764" shape="square"/>
<pad name="P$2" x="3.81" y="0" drill="1.016" diameter="1.6764"/>
<text x="-0.635" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CP04">
<description>&lt;b&gt;Capacitor Pol.&lt;/b&gt;&lt;p&gt;66/40 sep 400</description>
<wire x1="-6.35" y1="-1.905" x2="-3.81" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="6.35" y2="-1.905" width="0.254" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="1.905" width="0.254" layer="21"/>
<wire x1="6.35" y1="1.905" x2="-3.81" y2="1.905" width="0.254" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-6.35" y2="1.905" width="0.254" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-6.35" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.81" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-5.08" y="0" drill="1.016" diameter="1.6764" shape="square"/>
<pad name="P$2" x="5.08" y="0" drill="1.016" diameter="1.6764"/>
<text x="-2.54" y="0.254" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-1.651" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CP05">
<description>&lt;b&gt;Capacitor Pol.&lt;/b&gt;&lt;p&gt;66/40 sep 500</description>
<wire x1="-7.62" y1="-2.54" x2="-5.08" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="7.62" y2="-2.54" width="0.254" layer="21"/>
<wire x1="7.62" y1="-2.54" x2="7.62" y2="2.54" width="0.254" layer="21"/>
<wire x1="7.62" y1="2.54" x2="-5.08" y2="2.54" width="0.254" layer="21"/>
<wire x1="-5.08" y1="2.54" x2="-7.62" y2="2.54" width="0.254" layer="21"/>
<wire x1="-7.62" y1="2.54" x2="-7.62" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="1.905" width="0.254" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="-1.905" width="0.254" layer="21"/>
<pad name="P$1" x="-6.35" y="0" drill="1.016" diameter="1.6764" shape="square"/>
<pad name="P$2" x="6.35" y="0" drill="1.016" diameter="1.6764"/>
<text x="-1.905" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CP06">
<description>&lt;b&gt;Capacitor Pol.&lt;/b&gt;&lt;p&gt;76/40 sep 600</description>
<wire x1="-8.89" y1="-2.54" x2="-6.35" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-6.35" y1="-2.54" x2="8.89" y2="-2.54" width="0.254" layer="21"/>
<wire x1="8.89" y1="-2.54" x2="8.89" y2="2.54" width="0.254" layer="21"/>
<wire x1="8.89" y1="2.54" x2="-6.35" y2="2.54" width="0.254" layer="21"/>
<wire x1="-6.35" y1="2.54" x2="-8.89" y2="2.54" width="0.254" layer="21"/>
<wire x1="-8.89" y1="2.54" x2="-8.89" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-6.35" y1="2.54" x2="-6.35" y2="1.905" width="0.254" layer="21"/>
<wire x1="-6.35" y1="-2.54" x2="-6.35" y2="-1.905" width="0.254" layer="21"/>
<pad name="P$1" x="-7.62" y="0" drill="1.016" diameter="1.9304" shape="square"/>
<pad name="P$2" x="7.62" y="0" drill="1.016" diameter="1.9304"/>
<text x="-3.175" y="0" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CP07">
<description>&lt;b&gt;Capacitor Pol.&lt;/b&gt;&lt;p&gt;76/40 sep 700</description>
<wire x1="-10.16" y1="-3.175" x2="-7.62" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-7.62" y1="-3.175" x2="10.16" y2="-3.175" width="0.254" layer="21"/>
<wire x1="10.16" y1="-3.175" x2="10.16" y2="3.175" width="0.254" layer="21"/>
<wire x1="10.16" y1="3.175" x2="-7.62" y2="3.175" width="0.254" layer="21"/>
<wire x1="-7.62" y1="3.175" x2="-10.16" y2="3.175" width="0.254" layer="21"/>
<wire x1="-10.16" y1="3.175" x2="-10.16" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-7.62" y1="3.175" x2="-7.62" y2="2.54" width="0.254" layer="21"/>
<wire x1="-7.62" y1="-3.175" x2="-7.62" y2="-2.54" width="0.254" layer="21"/>
<pad name="P$1" x="-8.89" y="0" drill="1.016" diameter="1.9304" shape="square"/>
<pad name="P$2" x="8.89" y="0" drill="1.016" diameter="1.9304"/>
<text x="-3.175" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CP08">
<description>&lt;b&gt;Capacitor Pol.&lt;/b&gt;&lt;p&gt;76/40 sep 800</description>
<wire x1="-11.43" y1="-3.81" x2="-8.89" y2="-3.81" width="0.254" layer="21"/>
<wire x1="-8.89" y1="-3.81" x2="11.43" y2="-3.81" width="0.254" layer="21"/>
<wire x1="11.43" y1="-3.81" x2="11.43" y2="3.81" width="0.254" layer="21"/>
<wire x1="11.43" y1="3.81" x2="-8.89" y2="3.81" width="0.254" layer="21"/>
<wire x1="-8.89" y1="3.81" x2="-11.43" y2="3.81" width="0.254" layer="21"/>
<wire x1="-11.43" y1="3.81" x2="-11.43" y2="-3.81" width="0.254" layer="21"/>
<wire x1="-8.89" y1="3.81" x2="-8.89" y2="2.54" width="0.254" layer="21"/>
<wire x1="-8.89" y1="-3.81" x2="-8.89" y2="-2.54" width="0.254" layer="21"/>
<pad name="P$1" x="-10.16" y="0" drill="1.016" diameter="1.9304" shape="square"/>
<pad name="P$2" x="10.16" y="0" drill="1.016" diameter="1.9304"/>
<text x="-3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CP09">
<description>&lt;b&gt;Capacitor Pol.&lt;/b&gt;&lt;p&gt;100/50 sep 900</description>
<wire x1="-12.7" y1="-3.81" x2="-10.16" y2="-3.81" width="0.254" layer="21"/>
<wire x1="-10.16" y1="-3.81" x2="12.7" y2="-3.81" width="0.254" layer="21"/>
<wire x1="12.7" y1="-3.81" x2="12.7" y2="3.81" width="0.254" layer="21"/>
<wire x1="12.7" y1="3.81" x2="-10.16" y2="3.81" width="0.254" layer="21"/>
<wire x1="-10.16" y1="3.81" x2="-12.7" y2="3.81" width="0.254" layer="21"/>
<wire x1="-12.7" y1="3.81" x2="-12.7" y2="-3.81" width="0.254" layer="21"/>
<wire x1="-10.16" y1="3.81" x2="-10.16" y2="2.54" width="0.254" layer="21"/>
<wire x1="-10.16" y1="-3.81" x2="-10.16" y2="-2.54" width="0.254" layer="21"/>
<pad name="P$1" x="-11.43" y="0" drill="1.27" diameter="2.54" shape="square"/>
<pad name="P$2" x="11.43" y="0" drill="1.27" diameter="2.54"/>
<text x="-3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CP10">
<description>&lt;b&gt;Capacitor Pol.&lt;/b&gt;&lt;p&gt;100/50 sep 1"</description>
<wire x1="-13.97" y1="-5.08" x2="-11.43" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-11.43" y1="-5.08" x2="13.97" y2="-5.08" width="0.254" layer="21"/>
<wire x1="13.97" y1="-5.08" x2="13.97" y2="5.08" width="0.254" layer="21"/>
<wire x1="13.97" y1="5.08" x2="-11.43" y2="5.08" width="0.254" layer="21"/>
<wire x1="-11.43" y1="5.08" x2="-13.97" y2="5.08" width="0.254" layer="21"/>
<wire x1="-13.97" y1="5.08" x2="-13.97" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-11.43" y1="5.08" x2="-11.43" y2="3.81" width="0.254" layer="21"/>
<wire x1="-11.43" y1="-5.08" x2="-11.43" y2="-3.81" width="0.254" layer="21"/>
<pad name="P$1" x="-12.7" y="0" drill="1.27" diameter="2.54" shape="square"/>
<pad name="P$2" x="12.7" y="0" drill="1.27" diameter="2.54"/>
<text x="-3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CPV01">
<description>&lt;b&gt;Capacitor Vert. Pol.&lt;/b&gt;&lt;p&gt;66/40 sep 100</description>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="1.27" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="-1.27" width="0.254" layer="21"/>
<circle x="0" y="0" radius="2.54" width="0.254" layer="21"/>
<pad name="P$1" x="-1.27" y="0" drill="1.016" diameter="1.6764" shape="square"/>
<pad name="P$2" x="1.27" y="0" drill="1.016" diameter="1.6764"/>
<text x="-3.175" y="-0.635" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
<package name="CPV02">
<description>&lt;b&gt;Capacitor Vert. Pol.&lt;/b&gt;&lt;p&gt;66/40 sep 200</description>
<wire x1="-2.54" y1="3.175" x2="-2.54" y2="1.905" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-3.175" x2="-2.54" y2="-1.905" width="0.254" layer="21"/>
<circle x="0" y="0" radius="4.016" width="0.254" layer="21"/>
<pad name="P$1" x="-2.54" y="0" drill="1.016" diameter="1.6764" shape="square"/>
<pad name="P$2" x="2.54" y="0" drill="1.016" diameter="1.6764"/>
<text x="1.27" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
<package name="CPV03">
<description>&lt;b&gt;Capacitor Vert. Pol.&lt;/b&gt;&lt;p&gt;76/40 sep 300</description>
<wire x1="-3.81" y1="6.35" x2="-3.81" y2="3.81" width="0.254" layer="21"/>
<wire x1="-3.81" y1="-6.35" x2="-3.81" y2="-3.81" width="0.254" layer="21"/>
<circle x="0" y="0" radius="7.62" width="0.3048" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="1.016" diameter="1.9304" shape="square"/>
<pad name="P$2" x="3.81" y="0" drill="1.016" diameter="1.9304"/>
<text x="1.27" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
<package name="CPV04">
<description>&lt;b&gt;Capacitor Vert. Pol.&lt;/b&gt;&lt;p&gt;76/40 sep 400</description>
<wire x1="-4.445" y1="7.62" x2="-4.445" y2="5.08" width="0.254" layer="21"/>
<wire x1="-4.445" y1="-7.62" x2="-4.445" y2="-5.08" width="0.254" layer="21"/>
<circle x="0" y="0" radius="8.89" width="0.3048" layer="21"/>
<pad name="P$1" x="-5.08" y="0" drill="1.016" diameter="1.9304" shape="square"/>
<pad name="P$2" x="5.08" y="0" drill="1.016" diameter="1.9304"/>
<text x="1.905" y="-1.905" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
<package name="CPV05">
<description>&lt;b&gt;Capacitor Vert. Pol.&lt;/b&gt;&lt;p&gt;76/40 sep 500</description>
<wire x1="-6.35" y1="7.62" x2="-6.35" y2="5.08" width="0.254" layer="21"/>
<wire x1="-6.35" y1="-7.62" x2="-6.35" y2="-5.08" width="0.254" layer="21"/>
<circle x="0" y="0" radius="10.16" width="0.3048" layer="21"/>
<pad name="P$1" x="-6.35" y="0" drill="1.016" diameter="1.9304" shape="square"/>
<pad name="P$2" x="6.35" y="0" drill="1.016" diameter="1.9304"/>
<text x="1.27" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
<package name="CPV06">
<description>&lt;b&gt;Capacitor Pol. Vert.&lt;/b&gt;&lt;p&gt;76/40 sep 600</description>
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="6.35" width="0.254" layer="21"/>
<wire x1="-7.62" y1="-10.16" x2="-7.62" y2="-6.35" width="0.254" layer="21"/>
<circle x="0" y="0" radius="12.7" width="0.3048" layer="21"/>
<pad name="P$1" x="-7.62" y="0" drill="1.016" diameter="1.9304" shape="square"/>
<pad name="P$2" x="7.62" y="0" drill="1.016" diameter="1.9304"/>
<text x="-3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="CPV07">
<description>&lt;b&gt;Capacitor Pol. Vert.&lt;/b&gt;&lt;p&gt;76/40 sep 700</description>
<wire x1="-8.255" y1="-11.43" x2="-8.255" y2="-6.35" width="0.254" layer="21"/>
<wire x1="-8.255" y1="11.43" x2="-8.255" y2="6.35" width="0.254" layer="21"/>
<circle x="0" y="0" radius="13.97" width="0.3048" layer="21"/>
<pad name="P$1" x="-8.89" y="0" drill="1.016" diameter="1.9304" shape="square"/>
<pad name="P$2" x="8.89" y="0" drill="1.016" diameter="1.9304"/>
<text x="-3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="CPV08">
<description>&lt;b&gt;Capacitor Pol. Vert.&lt;/b&gt;&lt;p&gt;86/40 sep 800</description>
<wire x1="-10.16" y1="11.43" x2="-10.16" y2="6.35" width="0.254" layer="21"/>
<wire x1="-10.16" y1="-11.43" x2="-10.16" y2="-6.35" width="0.254" layer="21"/>
<circle x="0" y="0" radius="15.24" width="0.3048" layer="21"/>
<pad name="P$1" x="-10.16" y="0" drill="1.016" diameter="2.1844" shape="square"/>
<pad name="P$2" x="10.16" y="0" drill="1.016" diameter="2.1844"/>
<text x="-3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="CPV09">
<description>&lt;b&gt;Capacitor Pol. Vert.&lt;/b&gt;&lt;p&gt;86/50 sep 900</description>
<wire x1="-11.43" y1="-11.43" x2="-11.43" y2="-6.35" width="0.254" layer="21"/>
<wire x1="-11.43" y1="11.43" x2="-11.43" y2="6.35" width="0.254" layer="21"/>
<circle x="0" y="0" radius="16.51" width="0.3048" layer="21"/>
<pad name="P$1" x="-11.43" y="0" drill="1.27" diameter="2.1844" shape="square"/>
<pad name="P$2" x="11.43" y="0" drill="1.27" diameter="2.1844"/>
<text x="-3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="CPV10">
<description>&lt;b&gt;Capacitor Pol. Vert.&lt;/b&gt;&lt;p&gt;86/50 sep 1"</description>
<wire x1="-12.7" y1="15.24" x2="-12.7" y2="8.89" width="0.254" layer="21"/>
<wire x1="-12.7" y1="-15.24" x2="-12.7" y2="-8.89" width="0.254" layer="21"/>
<circle x="0" y="0" radius="20.32" width="0.3048" layer="21"/>
<pad name="P$1" x="-12.7" y="0" drill="1.27" diameter="2.1844" shape="square"/>
<pad name="P$2" x="12.7" y="0" drill="1.27" diameter="2.1844"/>
<text x="-3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="PANASONIC_A">
<description>&lt;b&gt;Panasonic Aluminium Electrolytic Capacitor VS-Serie Package A&lt;/b&gt;</description>
<wire x1="-1.6" y1="0.95" x2="-1.6" y2="1.6" width="0.1016" layer="21"/>
<wire x1="-1.143" y1="0.889" x2="1.143" y2="0.889" width="0.254" layer="21" curve="-104.250033"/>
<wire x1="1.143" y1="-0.889" x2="-1.143" y2="-0.889" width="0.254" layer="21" curve="-104.250033"/>
<wire x1="-1.651" y1="0.889" x2="-1.651" y2="1.524" width="0.254" layer="21"/>
<wire x1="-1.651" y1="1.524" x2="0.889" y2="1.524" width="0.254" layer="21"/>
<wire x1="0.889" y1="1.524" x2="1.524" y2="0.889" width="0.254" layer="21"/>
<wire x1="1.524" y1="-0.889" x2="0.889" y2="-1.524" width="0.254" layer="21"/>
<wire x1="0.889" y1="-1.524" x2="-1.651" y2="-1.524" width="0.254" layer="21"/>
<wire x1="-1.651" y1="-1.524" x2="-1.651" y2="-0.889" width="0.254" layer="21"/>
<wire x1="-0.508" y1="1.27" x2="-0.508" y2="0.889" width="0.254" layer="21"/>
<wire x1="-0.508" y1="-0.889" x2="-0.508" y2="-1.27" width="0.254" layer="21"/>
<smd name="-" x="-1.27" y="0" dx="2" dy="1.5" layer="1"/>
<smd name="+" x="1.27" y="0" dx="2" dy="1.5" layer="1"/>
<text x="-1.65" y="1.75" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.65" y="-3.079" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="PANASONIC_B">
<description>&lt;b&gt;Panasonic Aluminium Electrolytic Capacitor VS-Serie Package B&lt;/b&gt;</description>
<wire x1="-1.651" y1="0.889" x2="1.651" y2="0.889" width="0.254" layer="21" curve="-123.398488"/>
<wire x1="1.651" y1="-0.889" x2="-1.651" y2="-0.889" width="0.254" layer="21" curve="-123.398488"/>
<wire x1="-2.159" y1="0.889" x2="-2.159" y2="2.032" width="0.254" layer="21"/>
<wire x1="-2.159" y1="2.032" x2="1.016" y2="2.032" width="0.254" layer="21"/>
<wire x1="1.016" y1="2.032" x2="2.032" y2="1.016" width="0.254" layer="21"/>
<wire x1="2.032" y1="-1.016" x2="1.016" y2="-2.032" width="0.254" layer="21"/>
<wire x1="-2.159" y1="-2.032" x2="1.016" y2="-2.032" width="0.254" layer="21"/>
<wire x1="-2.159" y1="-2.032" x2="-2.159" y2="-0.889" width="0.254" layer="21"/>
<wire x1="-0.889" y1="1.524" x2="-0.889" y2="0.889" width="0.254" layer="21"/>
<wire x1="-0.889" y1="-0.889" x2="-0.889" y2="-1.524" width="0.254" layer="21"/>
<smd name="-" x="-1.524" y="0" dx="2.2" dy="1.4" layer="1"/>
<smd name="+" x="1.524" y="0" dx="2.2" dy="1.4" layer="1"/>
<text x="-2.15" y="2.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.15" y="-3.656" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="PANASONIC_C">
<description>&lt;b&gt;Panasonic Aluminium Electrolytic Capacitor VS-Serie Package C&lt;/b&gt;</description>
<wire x1="-2.286" y1="0.889" x2="2.286" y2="0.889" width="0.254" layer="21" curve="-137.498989"/>
<wire x1="-2.286" y1="-0.889" x2="2.286" y2="-0.889" width="0.254" layer="21" curve="137.498989"/>
<wire x1="-2.667" y1="0.889" x2="-2.667" y2="2.54" width="0.254" layer="21"/>
<wire x1="-2.667" y1="2.54" x2="1.27" y2="2.54" width="0.254" layer="21"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="0.889" width="0.254" layer="21"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="1.27" y2="-2.54" width="0.254" layer="21"/>
<wire x1="1.27" y1="-2.54" x2="-2.667" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-2.667" y1="-2.54" x2="-2.667" y2="-0.889" width="0.254" layer="21"/>
<wire x1="-1.27" y1="2.032" x2="-1.27" y2="0.889" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-0.889" x2="-1.27" y2="-2.032" width="0.254" layer="21"/>
<smd name="-" x="-2.032" y="0" dx="2.6" dy="1.4" layer="1"/>
<smd name="+" x="2.032" y="0" dx="2.6" dy="1.4" layer="1"/>
<text x="-2.6" y="2.75" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.523" y="-4.156" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="PANASONIC_D">
<description>&lt;b&gt;Panasonic Aluminium Electrolytic Capacitor VS-Serie Package D&lt;/b&gt;</description>
<wire x1="-2.921" y1="0.889" x2="2.921" y2="1.016" width="0.254" layer="21" curve="-143.879056"/>
<wire x1="-2.921" y1="-0.889" x2="2.921" y2="-0.889" width="0.254" layer="21" curve="146.144974"/>
<wire x1="-3.302" y1="0.889" x2="-3.302" y2="3.175" width="0.254" layer="21"/>
<wire x1="-3.302" y1="3.175" x2="1.524" y2="3.175" width="0.254" layer="21"/>
<wire x1="1.524" y1="3.175" x2="3.175" y2="1.524" width="0.254" layer="21"/>
<wire x1="3.175" y1="1.524" x2="3.175" y2="1.016" width="0.254" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="-1.524" width="0.254" layer="21"/>
<wire x1="3.175" y1="-1.524" x2="1.524" y2="-3.175" width="0.254" layer="21"/>
<wire x1="1.524" y1="-3.175" x2="-3.302" y2="-3.175" width="0.254" layer="21"/>
<wire x1="-3.302" y1="-3.175" x2="-3.302" y2="-0.889" width="0.254" layer="21"/>
<wire x1="-1.778" y1="2.286" x2="-1.778" y2="0.889" width="0.254" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.778" y2="-2.413" width="0.254" layer="21"/>
<smd name="-" x="-2.413" y="0" dx="3" dy="1.4" layer="1"/>
<smd name="+" x="2.413" y="0" dx="3" dy="1.4" layer="1"/>
<text x="-1.369" y="1" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.369" y="-2.483" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="PANASONIC_E">
<description>&lt;b&gt;Panasonic Aluminium Electrolytic Capacitor VS-Serie Package E&lt;/b&gt;</description>
<wire x1="-3.81" y1="0.889" x2="3.81" y2="1.016" width="0.254" layer="21" curve="-151.927513"/>
<wire x1="-3.81" y1="-1.016" x2="3.81" y2="-1.016" width="0.254" layer="21" curve="150.137166"/>
<wire x1="-4.064" y1="0.889" x2="-4.064" y2="4.064" width="0.254" layer="21"/>
<wire x1="-4.064" y1="4.064" x2="1.778" y2="4.064" width="0.254" layer="21"/>
<wire x1="1.778" y1="4.064" x2="4.064" y2="1.778" width="0.254" layer="21"/>
<wire x1="4.064" y1="1.778" x2="4.064" y2="1.016" width="0.254" layer="21"/>
<wire x1="4.064" y1="-1.016" x2="4.064" y2="-1.778" width="0.254" layer="21"/>
<wire x1="4.064" y1="-1.778" x2="1.778" y2="-4.064" width="0.254" layer="21"/>
<wire x1="1.778" y1="-4.064" x2="-4.064" y2="-4.064" width="0.254" layer="21"/>
<wire x1="-4.064" y1="-4.064" x2="-4.064" y2="-1.016" width="0.254" layer="21"/>
<wire x1="-2.54" y1="2.921" x2="-2.54" y2="0.889" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.016" x2="-2.54" y2="-2.921" width="0.254" layer="21"/>
<smd name="-" x="-3.048" y="0" dx="3.8" dy="1.4" layer="1"/>
<smd name="+" x="3.048" y="0" dx="3.8" dy="1.4" layer="1"/>
<text x="-1.8" y="1.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.8" y="-2.225" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="PANASONIC_F">
<description>&lt;b&gt;Panasonic Aluminium Electrolytic Capacitor VS-Serie Package F&lt;/b&gt;</description>
<wire x1="-3.81" y1="1.016" x2="3.81" y2="1.143" width="0.254" layer="21" curve="-148.361612"/>
<wire x1="-3.81" y1="-1.016" x2="3.81" y2="-1.016" width="0.254" layer="21" curve="150.137166"/>
<wire x1="-4.064" y1="1.143" x2="-4.064" y2="4.064" width="0.254" layer="21"/>
<wire x1="-4.064" y1="4.064" x2="1.778" y2="4.064" width="0.254" layer="21"/>
<wire x1="1.778" y1="4.064" x2="4.064" y2="1.778" width="0.254" layer="21"/>
<wire x1="4.064" y1="1.778" x2="4.064" y2="1.143" width="0.254" layer="21"/>
<wire x1="4.064" y1="-1.016" x2="4.064" y2="-1.778" width="0.254" layer="21"/>
<wire x1="4.064" y1="-1.778" x2="1.778" y2="-4.064" width="0.254" layer="21"/>
<wire x1="1.778" y1="-4.064" x2="-4.064" y2="-4.064" width="0.254" layer="21"/>
<wire x1="-4.064" y1="-4.064" x2="-4.064" y2="-1.016" width="0.254" layer="21"/>
<wire x1="-2.54" y1="2.921" x2="-2.54" y2="1.143" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.016" x2="-2.54" y2="-2.921" width="0.254" layer="21"/>
<smd name="-" x="-3.556" y="0" dx="4" dy="1.6" layer="1"/>
<smd name="+" x="3.556" y="0" dx="4" dy="1.6" layer="1"/>
<text x="-1.75" y="1.3" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.75" y="-2.375" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="PANASONIC_G">
<description>&lt;b&gt;Panasonic Aluminium Electrolytic Capacitor VS-Serie Package G&lt;/b&gt;</description>
<wire x1="-4.699" y1="1.143" x2="4.699" y2="1.143" width="0.254" layer="21" curve="-152.657386"/>
<wire x1="-4.826" y1="-1.016" x2="4.699" y2="-1.143" width="0.254" layer="21" curve="153.008533"/>
<wire x1="-3.175" y1="3.556" x2="-3.175" y2="1.143" width="0.254" layer="21"/>
<wire x1="-3.175" y1="-1.016" x2="-3.175" y2="-3.683" width="0.254" layer="21"/>
<wire x1="-5.08" y1="1.143" x2="-5.08" y2="5.08" width="0.254" layer="21"/>
<wire x1="-5.08" y1="5.08" x2="2.794" y2="5.08" width="0.254" layer="21"/>
<wire x1="2.794" y1="5.08" x2="5.08" y2="2.794" width="0.254" layer="21"/>
<wire x1="5.08" y1="2.794" x2="5.08" y2="1.143" width="0.254" layer="21"/>
<wire x1="5.08" y1="-1.143" x2="5.08" y2="-2.794" width="0.254" layer="21"/>
<wire x1="5.08" y1="-2.794" x2="2.794" y2="-5.08" width="0.254" layer="21"/>
<wire x1="2.794" y1="-5.08" x2="-5.08" y2="-5.08" width="0.254" layer="21"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="-1.016" width="0.254" layer="21"/>
<smd name="-" x="-4.318" y="0" dx="3.9" dy="1.6" layer="1"/>
<smd name="+" x="4.318" y="0" dx="3.9" dy="1.6" layer="1"/>
<text x="-2.55" y="1.75" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.55" y="-2.675" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CP12">
<description>&lt;b&gt;Capacitor Pol.&lt;/b&gt;&lt;p&gt;100/50 sep 1.2"</description>
<wire x1="-12.7" y1="-3.81" x2="-11.43" y2="-3.81" width="0.254" layer="21"/>
<wire x1="-11.43" y1="-3.81" x2="12.7" y2="-3.81" width="0.254" layer="21"/>
<wire x1="12.7" y1="-3.81" x2="12.7" y2="3.81" width="0.254" layer="21"/>
<wire x1="12.7" y1="3.81" x2="-11.43" y2="3.81" width="0.254" layer="21"/>
<wire x1="-11.43" y1="3.81" x2="-12.7" y2="3.81" width="0.254" layer="21"/>
<wire x1="-12.7" y1="3.81" x2="-12.7" y2="-3.81" width="0.254" layer="21"/>
<wire x1="-11.43" y1="3.81" x2="-11.43" y2="2.54" width="0.254" layer="21"/>
<wire x1="-11.43" y1="-3.81" x2="-11.43" y2="-2.54" width="0.254" layer="21"/>
<pad name="P$1" x="-15.24" y="0" drill="1.27" diameter="2.54" shape="square"/>
<pad name="P$2" x="15.24" y="0" drill="1.27" diameter="2.54"/>
<text x="-6.985" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-6.985" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CP16">
<description>&lt;b&gt;Capacitor Pol.&lt;/b&gt;&lt;p&gt;100/50 sep 1.6"</description>
<wire x1="-17.78" y1="-7.62" x2="-16.51" y2="-7.62" width="0.254" layer="21"/>
<wire x1="-16.51" y1="-7.62" x2="17.78" y2="-7.62" width="0.254" layer="21"/>
<wire x1="17.78" y1="-7.62" x2="17.78" y2="7.62" width="0.254" layer="21"/>
<wire x1="17.78" y1="7.62" x2="-16.51" y2="7.62" width="0.254" layer="21"/>
<wire x1="-16.51" y1="7.62" x2="-17.78" y2="7.62" width="0.254" layer="21"/>
<wire x1="-17.78" y1="7.62" x2="-17.78" y2="-7.62" width="0.254" layer="21"/>
<wire x1="-16.51" y1="7.62" x2="-16.51" y2="6.35" width="0.254" layer="21"/>
<wire x1="-16.51" y1="-7.62" x2="-16.51" y2="-6.35" width="0.254" layer="21"/>
<pad name="P$1" x="-20.32" y="0" drill="1.27" diameter="2.54" shape="square"/>
<pad name="P$2" x="20.32" y="0" drill="1.27" diameter="2.54"/>
<text x="-12.065" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-12.065" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="CP15">
<description>&lt;b&gt;Capacitor Pol.&lt;/b&gt;&lt;p&gt;100/50 sep 1.5"</description>
<wire x1="-16.51" y1="-7.62" x2="-15.24" y2="-7.62" width="0.254" layer="21"/>
<wire x1="-15.24" y1="-7.62" x2="16.51" y2="-7.62" width="0.254" layer="21"/>
<wire x1="16.51" y1="-7.62" x2="16.51" y2="7.62" width="0.254" layer="21"/>
<wire x1="16.51" y1="7.62" x2="-15.24" y2="7.62" width="0.254" layer="21"/>
<wire x1="-15.24" y1="7.62" x2="-16.51" y2="7.62" width="0.254" layer="21"/>
<wire x1="-16.51" y1="7.62" x2="-16.51" y2="-7.62" width="0.254" layer="21"/>
<wire x1="-15.24" y1="7.62" x2="-15.24" y2="6.35" width="0.254" layer="21"/>
<wire x1="-15.24" y1="-7.62" x2="-15.24" y2="-6.35" width="0.254" layer="21"/>
<pad name="P$1" x="-19.05" y="0" drill="1.27" diameter="2.54" shape="square"/>
<pad name="P$2" x="19.05" y="0" drill="1.27" diameter="2.54"/>
<text x="-13.335" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-13.335" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="F09D">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-8.128" y1="7.239" x2="-7.62" y2="7.747" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.62" y1="7.747" x2="8.128" y2="7.239" width="0.1524" layer="21" curve="-90"/>
<wire x1="-10.414" y1="0.508" x2="-10.414" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="0.508" x2="-10.287" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="-1.905" x2="-9.652" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-10.287" y1="-1.905" x2="-10.287" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-9.671" y1="-2.54" x2="9.671" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.414" y1="0.508" x2="10.414" y2="1.016" width="0.1524" layer="21"/>
<wire x1="10.287" y1="-1.905" x2="10.287" y2="0.508" width="0.1524" layer="21"/>
<wire x1="10.287" y1="0.508" x2="10.414" y2="0.508" width="0.1524" layer="21"/>
<wire x1="9.652" y1="-2.54" x2="10.287" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="-8.128" y1="1.959" x2="-8.128" y2="7.239" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="1.324" x2="-8.128" y2="1.959" width="0.1524" layer="21" curve="90" cap="flat"/>
<wire x1="8.128" y1="1.959" x2="8.128" y2="7.239" width="0.1524" layer="21"/>
<wire x1="8.128" y1="1.959" x2="8.763" y2="1.324" width="0.1524" layer="21" curve="90" cap="flat"/>
<wire x1="-7.62" y1="7.747" x2="7.62" y2="7.747" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="1.27" x2="15.24" y2="1.27" width="0.254" layer="21"/>
<smd name="1" x="-5.4862" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="2" x="-2.7434" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="3" x="0" y="-6.045" dx="1.7" dy="3.5" layer="1"/>
<smd name="4" x="2.7434" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="5" x="5.4862" y="-6.0448" dx="1.7" dy="3.5" layer="1"/>
<smd name="6" x="-4.1148" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="7" x="-1.3716" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="8" x="1.3716" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<smd name="9" x="4.1148" y="-6.0452" dx="1.7" dy="3.5" layer="16"/>
<text x="-8.89" y="-10.16" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="1.27" y="-10.16" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-5.92" y="-2.1786" size="1.27" layer="21" ratio="10">1</text>
<text x="5.085" y="-2.1786" size="1.27" layer="21" ratio="10">5</text>
<text x="4.5418" y="-2.1966" size="1.27" layer="22" ratio="10" rot="MR0">9</text>
<text x="-3.5768" y="-2.1966" size="1.27" layer="22" ratio="10" rot="MR0">6</text>
<text x="-7.62" y="5.969" size="1.27" layer="51" ratio="10">F09D</text>
</package>
<package name="TO220B">
<description>&lt;b&gt;TO220B package&lt;/b&gt;</description>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="1.905" width="0.254" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="-5.08" y2="2.54" width="0.254" layer="21"/>
<wire x1="-5.08" y1="2.54" x2="5.08" y2="2.54" width="0.254" layer="21"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="1.905" width="0.254" layer="21"/>
<wire x1="5.08" y1="1.905" x2="5.08" y2="-1.905" width="0.254" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="-5.08" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-5.08" y1="1.905" x2="5.08" y2="1.905" width="0.254" layer="21"/>
<pad name="3" x="2.54" y="0" drill="1.2" diameter="2.1844" shape="square"/>
<pad name="2" x="0" y="0" drill="1.2" diameter="2.1844"/>
<pad name="1" x="-2.54" y="0" drill="1.2" diameter="2.1844"/>
<text x="-5.08" y="3.175" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="TO220A">
<description>&lt;b&gt;TO220A package&lt;/b&gt;</description>
<wire x1="-5.08" y1="-4.318" x2="5.08" y2="-4.318" width="0.254" layer="21"/>
<wire x1="5.08" y1="-4.318" x2="5.08" y2="4.445" width="0.254" layer="21"/>
<wire x1="5.08" y1="4.445" x2="5.08" y2="11.176" width="0.254" layer="21"/>
<wire x1="5.08" y1="11.176" x2="-5.08" y2="11.176" width="0.254" layer="21"/>
<wire x1="-5.08" y1="11.176" x2="-5.08" y2="4.445" width="0.254" layer="21"/>
<wire x1="-5.08" y1="4.445" x2="-5.08" y2="-4.318" width="0.254" layer="21"/>
<wire x1="5.08" y1="4.445" x2="-5.08" y2="4.445" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-5.08" x2="-2.54" y2="-4.445" width="0.254" layer="25"/>
<wire x1="0" y1="-5.08" x2="0" y2="-4.445" width="0.254" layer="25"/>
<wire x1="2.54" y1="-5.08" x2="2.54" y2="-4.445" width="0.254" layer="25"/>
<pad name="3" x="2.54" y="-6.35" drill="1.2" diameter="2.1844" shape="square"/>
<pad name="2" x="0" y="-6.35" drill="1.2" diameter="2.1844"/>
<pad name="1" x="-2.54" y="-6.35" drill="1.2" diameter="2.1844"/>
<pad name="T" x="0" y="8.382" drill="3.175" diameter="5.08"/>
<text x="-2.54" y="1.27" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="TO92A">
<description>&lt;b&gt;TO92 EBC package&lt;/b&gt;</description>
<wire x1="-1.905" y1="-1.905" x2="3.175" y2="-1.905" width="0.254" layer="21" curve="-253.739795"/>
<wire x1="-1.905" y1="-1.905" x2="3.175" y2="-1.905" width="0.254" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1.016" diameter="1.6764" shape="square"/>
<pad name="2" x="0.635" y="1.905" drill="1.016" diameter="1.6764"/>
<pad name="3" x="2.54" y="0" drill="1.016" diameter="1.6764"/>
<text x="3.81" y="2.54" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="T03">
<description>&lt;b&gt;TO3 package&lt;/b&gt;</description>
<wire x1="-5.08" y1="10.668" x2="-15.875" y2="3.81" width="0.254" layer="21"/>
<wire x1="8.509" y1="10.668" x2="19.304" y2="3.81" width="0.254" layer="21"/>
<wire x1="8.636" y1="-10.668" x2="19.304" y2="-3.81" width="0.254" layer="21"/>
<wire x1="-15.875" y1="-3.81" x2="-5.08" y2="-10.668" width="0.254" layer="21"/>
<wire x1="-15.875" y1="3.81" x2="-15.875" y2="-3.81" width="0.254" layer="21" curve="113.952265"/>
<wire x1="19.304" y1="3.81" x2="19.304" y2="-3.81" width="0.254" layer="21" curve="-118.072487"/>
<wire x1="-5.08" y1="10.668" x2="8.509" y2="10.668" width="0.254" layer="21" curve="-64.986509"/>
<wire x1="-5.08" y1="-10.668" x2="8.636" y2="-10.668" width="0.254" layer="21" curve="65.470453"/>
<circle x="-13.335" y="0" radius="2.008" width="0.254" layer="21"/>
<circle x="16.891" y="0" radius="2.008" width="0.254" layer="21"/>
<circle x="1.905" y="0" radius="10.795" width="0.254" layer="21"/>
<pad name="1" x="0" y="5.461" drill="1.27" diameter="3.81"/>
<pad name="3" x="0" y="-5.461" drill="1.27" diameter="3.81"/>
<pad name="2" x="16.891" y="0" drill="3.175" diameter="5.08"/>
<pad name="4" x="-13.335" y="0" drill="3.175" diameter="5.08"/>
<text x="3.81" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="5.715" y="-2.54" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
<package name="TEC1L">
<description>&lt;b&gt;TECLA mod1 con label&lt;/b&gt;</description>
<wire x1="8.89" y1="-8.89" x2="8.89" y2="3.81" width="0.254" layer="21"/>
<wire x1="8.89" y1="3.81" x2="8.89" y2="8.89" width="0.254" layer="21"/>
<wire x1="8.89" y1="8.89" x2="-8.89" y2="8.89" width="0.254" layer="21"/>
<wire x1="-8.89" y1="8.89" x2="-8.89" y2="3.81" width="0.254" layer="21"/>
<wire x1="-8.89" y1="3.81" x2="-8.89" y2="-8.89" width="0.254" layer="21"/>
<wire x1="-8.89" y1="-8.89" x2="8.89" y2="-8.89" width="0.254" layer="21"/>
<wire x1="-8.89" y1="3.81" x2="8.89" y2="3.81" width="0.254" layer="21"/>
<pad name="NC" x="5.08" y="1.27" drill="1.016" diameter="1.6764"/>
<pad name="NO" x="5.08" y="-6.35" drill="1.016" diameter="1.6764"/>
<pad name="C" x="-5.08" y="-1.27" drill="1.016" diameter="1.6764"/>
<text x="-3.175" y="-1.905" size="1.27" layer="21">C</text>
<text x="2.54" y="-5.08" size="1.27" layer="21">NO</text>
<text x="2.54" y="-1.27" size="1.27" layer="21">NC</text>
<text x="-6.35" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<hole x="0" y="6.35" drill="1.016"/>
<hole x="0" y="-6.35" drill="1.016"/>
</package>
<package name="TEC2L">
<description>&lt;b&gt;TECLA mod2&lt;/b&gt;</description>
<wire x1="-6.35" y1="-6.35" x2="-6.35" y2="6.35" width="0.254" layer="21"/>
<wire x1="-6.35" y1="6.35" x2="6.35" y2="6.35" width="0.254" layer="21"/>
<wire x1="6.35" y1="6.35" x2="6.35" y2="-6.35" width="0.254" layer="21"/>
<wire x1="6.35" y1="-6.35" x2="-6.35" y2="-6.35" width="0.254" layer="21"/>
<pad name="1" x="3.81" y="3.81" drill="1.27" diameter="2.1844"/>
<pad name="2" x="-1.27" y="-1.27" drill="1.27" diameter="2.1844"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<hole x="-3.81" y="3.81" drill="1.016"/>
<hole x="1.27" y="-3.81" drill="1.016"/>
</package>
<package name="TEC4L">
<description>&lt;b&gt;TECLA mod4&lt;/b&gt;</description>
<wire x1="9.525" y1="-9.525" x2="9.525" y2="9.525" width="0.254" layer="21"/>
<wire x1="9.525" y1="9.525" x2="-9.525" y2="9.525" width="0.254" layer="21"/>
<wire x1="-9.525" y1="9.525" x2="-9.525" y2="-9.525" width="0.254" layer="21"/>
<wire x1="-9.525" y1="-9.525" x2="9.525" y2="-9.525" width="0.254" layer="21"/>
<pad name="NO" x="4.064" y="-4.064" drill="1.016" diameter="1.9304"/>
<pad name="C" x="-4.064" y="-5.334" drill="1.016" diameter="1.9304"/>
<text x="-4.445" y="-2.54" size="1.27" layer="21">C</text>
<text x="3.175" y="-2.54" size="1.27" layer="21">NO</text>
<text x="-7.62" y="6.35" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="R01">
<description>&lt;b&gt;Resistor&lt;/b&gt;&lt;p&gt;66/40 sep 100</description>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-1.27" y="0" drill="1.016" diameter="1.6764"/>
<pad name="P$2" x="1.27" y="0" drill="1.016" diameter="1.6764"/>
<text x="3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="R02">
<description>&lt;b&gt;Resistor&lt;/b&gt;&lt;p&gt;66/40 sep 200</description>
<wire x1="-3.81" y1="-1.27" x2="3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.27" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-2.54" y="0" drill="1.016" diameter="1.6764"/>
<pad name="P$2" x="2.54" y="0" drill="1.016" diameter="1.6764"/>
<text x="4.445" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="R03">
<description>&lt;b&gt;Resistor&lt;/b&gt;&lt;p&gt; 66/40 sep 300</description>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="1.016" diameter="1.6764"/>
<pad name="P$2" x="3.81" y="0" drill="1.016" diameter="1.6764"/>
<text x="-1.905" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="R04">
<description>&lt;b&gt;Resistor&lt;/b&gt;&lt;p&gt;66/40 sep 400</description>
<wire x1="-3.81" y1="-1.27" x2="3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.27" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-5.08" y="0" drill="1.016" diameter="1.6764"/>
<pad name="P$2" x="5.08" y="0" drill="1.016" diameter="1.6764"/>
<text x="-3.556" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="0.381" y="-0.635" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R05">
<description>&lt;b&gt;Resistor&lt;/b&gt;&lt;p&gt;76/40 sep 500</description>
<wire x1="-5.08" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.254" layer="21"/>
<wire x1="5.08" y1="1.27" x2="-5.08" y2="1.27" width="0.254" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-6.35" y="0" drill="1.016" diameter="1.9304"/>
<pad name="P$2" x="6.35" y="0" drill="1.016" diameter="1.9304"/>
<text x="-4.445" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="0.635" y="-0.635" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R06">
<description>&lt;b&gt;Resistor&lt;/b&gt;&lt;p&gt;76/40 sep 600</description>
<wire x1="-6.35" y1="-1.905" x2="6.35" y2="-1.905" width="0.254" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="1.905" width="0.254" layer="21"/>
<wire x1="6.35" y1="1.905" x2="-6.35" y2="1.905" width="0.254" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-6.35" y2="-1.905" width="0.254" layer="21"/>
<pad name="P$1" x="-7.62" y="0" drill="1.016" diameter="1.9304"/>
<pad name="P$2" x="7.62" y="0" drill="1.016" diameter="1.9304"/>
<text x="-5.715" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="1.27" y="-0.635" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R07">
<description>&lt;b&gt;Resistor&lt;/b&gt;&lt;p&gt;76/40 sep 700</description>
<wire x1="-6.35" y1="-1.905" x2="6.35" y2="-1.905" width="0.254" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="1.905" width="0.254" layer="21"/>
<wire x1="6.35" y1="1.905" x2="-6.35" y2="1.905" width="0.254" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-6.35" y2="-1.905" width="0.254" layer="21"/>
<pad name="P$1" x="-8.89" y="0" drill="1.016" diameter="1.9304"/>
<pad name="P$2" x="8.89" y="0" drill="1.016" diameter="1.9304"/>
<text x="-5.715" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="1.27" y="-0.635" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R08">
<description>&lt;b&gt;Resistor&lt;/b&gt;&lt;p&gt;86/40 sep 800</description>
<wire x1="-7.62" y1="-1.905" x2="7.62" y2="-1.905" width="0.254" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="1.905" width="0.254" layer="21"/>
<wire x1="7.62" y1="1.905" x2="-7.62" y2="1.905" width="0.254" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="-1.905" width="0.254" layer="21"/>
<pad name="P$1" x="-10.16" y="0" drill="1.016" diameter="2.1844"/>
<pad name="P$2" x="10.16" y="0" drill="1.016" diameter="2.1844"/>
<text x="-6.35" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="1.27" y="-0.635" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R09">
<description>&lt;b&gt;Resistor&lt;/b&gt;&lt;p&gt;100/50 sep 900</description>
<wire x1="-8.89" y1="-2.54" x2="8.89" y2="-2.54" width="0.254" layer="21"/>
<wire x1="8.89" y1="-2.54" x2="8.89" y2="2.54" width="0.254" layer="21"/>
<wire x1="8.89" y1="2.54" x2="-8.89" y2="2.54" width="0.254" layer="21"/>
<wire x1="-8.89" y1="2.54" x2="-8.89" y2="-2.54" width="0.254" layer="21"/>
<pad name="P$1" x="-11.43" y="0" drill="1.27" diameter="2.54"/>
<pad name="P$2" x="11.43" y="0" drill="1.27" diameter="2.54"/>
<text x="-6.985" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="2.54" y="-0.635" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R10">
<description>&lt;b&gt;Resistor&lt;/b&gt;&lt;p&gt;100/50 sep 1"</description>
<wire x1="-10.16" y1="-2.54" x2="10.16" y2="-2.54" width="0.254" layer="21"/>
<wire x1="10.16" y1="-2.54" x2="10.16" y2="2.54" width="0.254" layer="21"/>
<wire x1="10.16" y1="2.54" x2="-10.16" y2="2.54" width="0.254" layer="21"/>
<wire x1="-10.16" y1="2.54" x2="-10.16" y2="-2.54" width="0.254" layer="21"/>
<pad name="P$1" x="-12.7" y="0" drill="1.27" diameter="2.54"/>
<pad name="P$2" x="12.7" y="0" drill="1.27" diameter="2.54"/>
<text x="-8.255" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="1.905" y="-0.635" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R02V">
<description>&lt;b&gt;Resistor Vertical&lt;/b&gt;&lt;p&gt;76/40 sep 200</description>
<circle x="-2.54" y="0" radius="3.81" width="0.254" layer="21"/>
<pad name="P$1" x="-2.54" y="0" drill="1.016" diameter="1.9304"/>
<pad name="P$2" x="2.54" y="0" drill="1.016" diameter="1.9304"/>
<text x="-4.445" y="-2.54" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="R03V">
<description>&lt;b&gt;Resistor Vertical&lt;/b&gt;&lt;p&gt;76/40 sep 300</description>
<circle x="-3.81" y="0" radius="5.715" width="0.254" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="1.016" diameter="1.9304"/>
<pad name="P$2" x="3.81" y="0" drill="1.016" diameter="1.9304"/>
<text x="-5.715" y="-2.54" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="R0402">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.245" y1="0.214" x2="0.245" y2="0.214" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.113" y1="0.533" x2="1.113" y2="0.533" width="0.0508" layer="39"/>
<wire x1="1.113" y1="0.533" x2="1.113" y2="-0.533" width="0.0508" layer="39"/>
<wire x1="1.113" y1="-0.533" x2="-1.113" y2="-0.533" width="0.0508" layer="39"/>
<wire x1="-1.113" y1="-0.533" x2="-1.113" y2="0.533" width="0.0508" layer="39"/>
<smd name="1" x="-0.635" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.635" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.762" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.032" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="R0603">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.683" x2="1.473" y2="0.683" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.683" x2="1.473" y2="-0.683" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.683" x2="-1.473" y2="-0.683" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.683" x2="-1.473" y2="0.683" width="0.0508" layer="39"/>
<smd name="1" x="-0.889" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.889" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.889" y="0.889" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.889" y="-2.032" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="R0805">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.41" y1="0.625" x2="0.41" y2="0.625" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.625" x2="0.41" y2="-0.625" width="0.1524" layer="51"/>
<wire x1="-1.673" y1="0.883" x2="1.673" y2="0.883" width="0.0508" layer="39"/>
<wire x1="1.673" y1="0.883" x2="1.673" y2="-0.883" width="0.0508" layer="39"/>
<wire x1="1.673" y1="-0.883" x2="-1.673" y2="-0.883" width="0.0508" layer="39"/>
<wire x1="-1.673" y1="-0.883" x2="-1.673" y2="0.883" width="0.0508" layer="39"/>
<smd name="1" x="-0.889" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.889" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.762" y="1.016" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-2.286" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R0805W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip, wave soldering</description>
<wire x1="-0.41" y1="0.625" x2="0.41" y2="0.625" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.625" x2="0.41" y2="-0.625" width="0.1524" layer="51"/>
<wire x1="-1.863" y1="0.883" x2="1.873" y2="0.883" width="0.0508" layer="39"/>
<wire x1="1.873" y1="0.883" x2="1.873" y2="-0.873" width="0.0508" layer="39"/>
<wire x1="1.873" y1="-0.873" x2="-1.863" y2="-0.873" width="0.0508" layer="39"/>
<wire x1="-1.863" y1="-0.873" x2="-1.863" y2="0.883" width="0.0508" layer="39"/>
<smd name="1" x="-1.016" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="1.016" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.016" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.159" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="R1206">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="0.9525" y1="-0.8028" x2="-0.9652" y2="-0.8028" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.8028" x2="-0.9652" y2="0.8028" width="0.1524" layer="51"/>
<wire x1="-2.373" y1="1.013" x2="2.363" y2="1.013" width="0.0508" layer="39"/>
<wire x1="2.363" y1="1.013" x2="2.363" y2="-1.003" width="0.0508" layer="39"/>
<wire x1="2.363" y1="-1.003" x2="-2.373" y2="-1.003" width="0.0508" layer="39"/>
<wire x1="-2.373" y1="-1.003" x2="-2.373" y2="1.013" width="0.0508" layer="39"/>
<smd name="2" x="1.397" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="1" x="-1.397" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.397" y="1.143" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.397" y="-2.413" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R1206W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip, wave soldering</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="1" x="-1.524" y="0" dx="1.8" dy="1.2" layer="1"/>
<smd name="2" x="1.524" y="0" dx="1.8" dy="1.2" layer="1"/>
<text x="-1.651" y="1.143" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.651" y="-2.413" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
</package>
<package name="R1210">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.229" x2="0.939" y2="-1.229" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.397" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.397" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-1.27" y="1.651" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.921" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8999" x2="0.3" y2="0.8999" layer="35"/>
</package>
<package name="R1210W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip, wave soldering</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.229" x2="0.939" y2="-1.229" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-1.524" y="0" dx="1.8" dy="1.8" layer="1"/>
<smd name="2" x="1.524" y="0" dx="1.8" dy="1.8" layer="1"/>
<text x="-1.651" y="1.524" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.651" y="-2.794" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="R2010">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-1.662" y1="1.255" x2="1.662" y2="1.255" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.159" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.159" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-2.159" y="1.651" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.159" y="-2.921" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R2010W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip, wave soldering</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<smd name="1" x="-2.286" y="0" dx="2" dy="1.8" layer="1"/>
<smd name="2" x="2.286" y="0" dx="2" dy="1.8" layer="1"/>
<text x="-2.286" y="1.524" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.286" y="-2.921" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="R2012">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.41" y1="0.625" x2="0.41" y2="0.625" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.625" x2="0.41" y2="-0.625" width="0.1524" layer="51"/>
<wire x1="-1.673" y1="0.873" x2="1.673" y2="0.873" width="0.0508" layer="39"/>
<wire x1="1.673" y1="0.873" x2="1.673" y2="-0.883" width="0.0508" layer="39"/>
<wire x1="1.673" y1="-0.883" x2="-1.673" y2="-0.883" width="0.0508" layer="39"/>
<wire x1="-1.673" y1="-0.883" x2="-1.673" y2="0.873" width="0.0508" layer="39"/>
<smd name="1" x="-0.889" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.889" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.762" y="1.016" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.762" y="-2.286" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R2012W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip, wave soldering</description>
<wire x1="-0.41" y1="0.625" x2="0.41" y2="0.625" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.625" x2="0.41" y2="-0.625" width="0.1524" layer="51"/>
<wire x1="-1.823" y1="0.783" x2="1.823" y2="0.783" width="0.0508" layer="39"/>
<wire x1="1.823" y1="0.783" x2="1.823" y2="-0.783" width="0.0508" layer="39"/>
<wire x1="1.823" y1="-0.783" x2="-1.823" y2="-0.783" width="0.0508" layer="39"/>
<wire x1="-1.823" y1="-0.783" x2="-1.823" y2="0.783" width="0.0508" layer="39"/>
<smd name="1" x="-1.016" y="0" dx="1.5" dy="1" layer="1"/>
<smd name="2" x="1.016" y="0" dx="1.5" dy="1" layer="1"/>
<text x="-0.635" y="1.016" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.286" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
</package>
<package name="R2512">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.783" x2="3.973" y2="1.783" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.783" x2="3.973" y2="-1.763" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.763" x2="-3.973" y2="-1.763" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.763" x2="-3.973" y2="1.783" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="1.473" x2="1.498" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="-1.473" x2="1.498" y2="-1.473" width="0.1524" layer="51"/>
<smd name="1" x="-2.921" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.921" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.667" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.667" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R2512W">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip, wave soldering</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.921" y="0" dx="2" dy="2.1" layer="1"/>
<smd name="2" x="2.921" y="0" dx="2" dy="2.1" layer="1"/>
<text x="-2.794" y="1.778" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.794" y="-3.048" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="R11">
<description>&lt;b&gt;Resistor&lt;/b&gt;&lt;p&gt;100/50 sep 1.1"</description>
<wire x1="-11.43" y1="-5.08" x2="11.43" y2="-5.08" width="0.254" layer="21"/>
<wire x1="11.43" y1="-5.08" x2="11.43" y2="5.08" width="0.254" layer="21"/>
<wire x1="11.43" y1="5.08" x2="-11.43" y2="5.08" width="0.254" layer="21"/>
<wire x1="-11.43" y1="5.08" x2="-11.43" y2="-5.08" width="0.254" layer="21"/>
<pad name="P$1" x="-13.97" y="0" drill="1.27" diameter="2.54"/>
<pad name="P$2" x="13.97" y="0" drill="1.27" diameter="2.54"/>
<text x="-8.89" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-8.89" y="-1.27" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R01A">
<description>&lt;b&gt;Resistor&lt;/b&gt;&lt;p&gt;76/40 sep 100</description>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-1.27" y="0" drill="1.016" diameter="1.9304"/>
<pad name="P$2" x="1.27" y="0" drill="1.016" diameter="1.9304"/>
<text x="3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="R02A">
<description>&lt;b&gt;Resistor&lt;/b&gt;&lt;p&gt;76/40 sep 200</description>
<wire x1="-3.81" y1="-1.27" x2="3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.27" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-2.54" y="0" drill="1.016" diameter="1.9304"/>
<pad name="P$2" x="2.54" y="0" drill="1.016" diameter="1.9304"/>
<text x="4.445" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="R03A">
<description>&lt;b&gt;Resistor&lt;/b&gt;&lt;p&gt; 76/40 sep 300</description>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="1.016" diameter="1.9304"/>
<pad name="P$2" x="3.81" y="0" drill="1.016" diameter="1.9304"/>
<text x="-1.905" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="R04A">
<description>&lt;b&gt;Resistor&lt;/b&gt;&lt;p&gt;76/40 sep 400</description>
<wire x1="-3.81" y1="-1.27" x2="3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.27" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-5.08" y="0" drill="1.016" diameter="1.9304"/>
<pad name="P$2" x="5.08" y="0" drill="1.016" diameter="1.9304"/>
<text x="-3.556" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="0.381" y="-0.635" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="SMA">
<description>&lt;b&gt;SMALL OUTLINE DIODE&lt;/b&gt; SMA</description>
<wire x1="-3.4142" y1="1.3988" x2="3.3888" y2="1.3988" width="0.0508" layer="39"/>
<wire x1="3.3888" y1="-1.3988" x2="-3.4142" y2="-1.3988" width="0.0508" layer="39"/>
<wire x1="-3.4142" y1="-1.3988" x2="-3.4142" y2="1.3988" width="0.0508" layer="39"/>
<wire x1="3.3888" y1="1.3988" x2="3.3888" y2="-1.3988" width="0.0508" layer="39"/>
<wire x1="-2.2606" y1="1.2954" x2="2.2606" y2="1.2954" width="0.1016" layer="51"/>
<wire x1="-2.2606" y1="-1.2954" x2="2.2606" y2="-1.2954" width="0.1016" layer="51"/>
<wire x1="-2.261" y1="-1.2954" x2="-2.261" y2="1.2954" width="0.1016" layer="51"/>
<wire x1="2.261" y1="-1.2954" x2="2.261" y2="1.2954" width="0.1016" layer="51"/>
<wire x1="0.643" y1="1" x2="-0.73" y2="0" width="0.254" layer="51"/>
<wire x1="-0.73" y1="0" x2="0.643" y2="-1" width="0.254" layer="51"/>
<wire x1="0.643" y1="-1" x2="0.643" y2="1" width="0.254" layer="51"/>
<wire x1="-0.73" y1="1" x2="-0.73" y2="-1" width="0.254" layer="51"/>
<smd name="1" x="-2.032" y="0" dx="2.5" dy="1.7" layer="1"/>
<smd name="2" x="2.032" y="0" dx="2.5" dy="1.7" layer="1"/>
<text x="-1.905" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.3" y1="-0.8001" x2="0.3" y2="0.8001" layer="35"/>
</package>
<package name="SMB">
<description>&lt;b&gt;SMALL OUTLINE DIODE&lt;/b&gt; SMB</description>
<wire x1="-3.592" y1="1.983" x2="3.592" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.592" y1="-1.983" x2="-3.592" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.592" y1="-1.983" x2="-3.592" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.592" y1="1.983" x2="3.592" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-2.2606" y1="1.905" x2="2.2606" y2="1.905" width="0.1016" layer="51"/>
<wire x1="-2.2606" y1="-1.905" x2="2.2606" y2="-1.905" width="0.1016" layer="51"/>
<wire x1="-2.261" y1="-1.905" x2="-2.261" y2="1.905" width="0.1016" layer="51"/>
<wire x1="2.261" y1="-1.905" x2="2.261" y2="1.905" width="0.1016" layer="51"/>
<wire x1="0.643" y1="1" x2="-0.73" y2="0" width="0.254" layer="51"/>
<wire x1="-0.73" y1="0" x2="0.643" y2="-1" width="0.254" layer="51"/>
<wire x1="0.643" y1="-1" x2="0.643" y2="1" width="0.254" layer="51"/>
<wire x1="-0.73" y1="1" x2="-0.73" y2="-1" width="0.254" layer="51"/>
<smd name="1" x="-2.159" y="0" dx="2.4" dy="2.4" layer="1"/>
<smd name="2" x="2.159" y="0" dx="2.4" dy="2.4" layer="1"/>
<text x="-1.905" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="SMC">
<description>&lt;b&gt;SMALL OUTLINE DIODE&lt;/b&gt; SMC</description>
<wire x1="-4.7858" y1="3.1514" x2="4.7858" y2="3.1514" width="0.0508" layer="39"/>
<wire x1="4.7858" y1="-3.126" x2="-4.7858" y2="-3.126" width="0.0508" layer="39"/>
<wire x1="-4.7858" y1="-3.126" x2="-4.7858" y2="3.1514" width="0.0508" layer="39"/>
<wire x1="4.7858" y1="3.1514" x2="4.7858" y2="-3.126" width="0.0508" layer="39"/>
<wire x1="-3.429" y1="2.9464" x2="3.429" y2="2.9464" width="0.1016" layer="51"/>
<wire x1="-3.429" y1="-2.921" x2="3.429" y2="-2.921" width="0.1016" layer="51"/>
<wire x1="-3.4294" y1="-2.921" x2="-3.4294" y2="2.9464" width="0.1016" layer="51"/>
<wire x1="3.4294" y1="-2.921" x2="3.4294" y2="2.9464" width="0.1016" layer="51"/>
<wire x1="0.643" y1="1" x2="-0.73" y2="0" width="0.254" layer="51"/>
<wire x1="-0.73" y1="0" x2="0.643" y2="-1" width="0.254" layer="51"/>
<wire x1="0.643" y1="-1" x2="0.643" y2="1" width="0.254" layer="51"/>
<wire x1="-0.73" y1="1" x2="-0.73" y2="-1" width="0.254" layer="51"/>
<smd name="1" x="-3.429" y="0" dx="2.5018" dy="3.302" layer="1"/>
<smd name="2" x="3.429" y="0" dx="2.5018" dy="3.302" layer="1"/>
<text x="-3.175" y="3.175" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-4.445" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="SOD123">
<description>&lt;b&gt;Small Outline Diode&lt;/b&gt; SOD123</description>
<wire x1="-1.3588" y1="0.575" x2="1.3842" y2="0.575" width="0.254" layer="51"/>
<wire x1="1.3842" y1="0.575" x2="1.3842" y2="-0.575" width="0.254" layer="51"/>
<wire x1="1.3842" y1="-0.575" x2="-1.3588" y2="-0.575" width="0.254" layer="51"/>
<wire x1="-1.3588" y1="-0.575" x2="-1.3588" y2="0.575" width="0.254" layer="51"/>
<smd name="1" x="-1.905" y="0" dx="1.2192" dy="0.7112" layer="1"/>
<smd name="2" x="1.905" y="0" dx="1.2192" dy="0.7112" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.9088" y1="-0.2" x2="-1.4588" y2="0.2" layer="51"/>
<rectangle x1="1.4842" y1="-0.2" x2="1.9342" y2="0.2" layer="51"/>
<rectangle x1="-1.3088" y1="-0.575" x2="-0.9338" y2="0.575" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="SOD323">
<description>&lt;b&gt;Small Outline Diode&lt;/b&gt; SOD323</description>
<wire x1="-0.8" y1="0.575" x2="0.8" y2="0.575" width="0.254" layer="51"/>
<wire x1="0.8" y1="0.575" x2="0.8" y2="-0.575" width="0.254" layer="51"/>
<wire x1="0.8" y1="-0.575" x2="-0.8" y2="-0.575" width="0.254" layer="51"/>
<wire x1="-0.8" y1="-0.575" x2="-0.8" y2="0.575" width="0.254" layer="51"/>
<smd name="1" x="-1.27" y="0" dx="1.3462" dy="0.6604" layer="1"/>
<smd name="2" x="1.27" y="0" dx="1.3462" dy="0.6604" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.35" y1="-0.2" x2="-0.9" y2="0.2" layer="51"/>
<rectangle x1="0.9" y1="-0.2" x2="1.35" y2="0.2" layer="51"/>
<rectangle x1="-0.75" y1="-0.575" x2="-0.375" y2="0.575" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="SOD523">
<description>&lt;b&gt;Small Outline Diode&lt;/b&gt; SOD523</description>
<wire x1="-0.419" y1="0.575" x2="0.4444" y2="0.575" width="0.254" layer="51"/>
<wire x1="0.4444" y1="0.575" x2="0.4444" y2="-0.575" width="0.254" layer="51"/>
<wire x1="0.4444" y1="-0.575" x2="-0.419" y2="-0.575" width="0.254" layer="51"/>
<wire x1="-0.419" y1="-0.575" x2="-0.419" y2="0.575" width="0.254" layer="51"/>
<smd name="1" x="-0.889" y="0" dx="0.6096" dy="0.8128" layer="1"/>
<smd name="2" x="0.889" y="0" dx="0.6096" dy="0.8128" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.969" y1="-0.2" x2="-0.519" y2="0.2" layer="51"/>
<rectangle x1="0.5444" y1="-0.2" x2="0.9944" y2="0.2" layer="51"/>
<rectangle x1="-0.369" y1="-0.575" x2="0.006" y2="0.575" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="HC49V">
<description>&lt;b&gt;Cristal Vert 200 mils&lt;/b&gt;</description>
<wire x1="-2.921" y1="-2.286" x2="2.921" y2="-2.286" width="0.254" layer="21"/>
<wire x1="-2.921" y1="2.286" x2="2.921" y2="2.286" width="0.254" layer="21"/>
<wire x1="2.921" y1="2.286" x2="2.921" y2="-2.286" width="0.254" layer="21" curve="-180"/>
<wire x1="-2.921" y1="2.286" x2="-2.921" y2="-2.286" width="0.254" layer="21" curve="180"/>
<pad name="1" x="-2.54" y="0" drill="1.016" diameter="1.6764"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.6764"/>
<text x="-5.08" y="2.921" size="1.27" layer="25" font="vector">&gt;NAME</text>
</package>
<package name="D01">
<description>&lt;b&gt;Diode&lt;/b&gt;&lt;p&gt;66/40 sep 100</description>
<wire x1="-2.54" y1="-1.27" x2="1.905" y2="-1.27" width="0.254" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="1.905" y2="1.27" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.27" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.27" x2="1.905" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-1.27" y="0" drill="1.016" diameter="1.6764"/>
<pad name="P$2" x="1.27" y="0" drill="1.016" diameter="1.6764" shape="square"/>
<text x="3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="3.175" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="D02">
<description>&lt;b&gt;Diode&lt;/b&gt;&lt;p&gt;66/40 sep 200</description>
<wire x1="-3.81" y1="-1.27" x2="3.175" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.175" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.175" y1="1.27" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.175" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-2.54" y="0" drill="1.016" diameter="1.6764"/>
<pad name="P$2" x="2.54" y="0" drill="1.016" diameter="1.6764" shape="square"/>
<text x="4.445" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="4.445" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="D03">
<description>&lt;b&gt;Diode&lt;/b&gt;&lt;p&gt;66/40 sep 300</description>
<wire x1="-2.54" y1="-1.27" x2="1.905" y2="-1.27" width="0.254" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="1.905" y2="1.27" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.27" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="1.905" y1="1.27" x2="1.905" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="1.016" diameter="1.6764"/>
<pad name="P$2" x="3.81" y="0" drill="1.016" diameter="1.6764" shape="square"/>
<text x="-1.905" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="D04">
<description>&lt;b&gt;Diode&lt;/b&gt;&lt;p&gt;66/40 sep 400</description>
<wire x1="-3.81" y1="-1.27" x2="3.175" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.175" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.175" y1="1.27" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.175" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-5.08" y="0" drill="1.016" diameter="1.6764"/>
<pad name="P$2" x="5.08" y="0" drill="1.016" diameter="1.6764" shape="square"/>
<text x="-3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="D05">
<description>&lt;b&gt;Diode&lt;/b&gt;&lt;p&gt;76/40 sep 500</description>
<wire x1="-5.08" y1="-1.27" x2="4.445" y2="-1.27" width="0.254" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.254" layer="21"/>
<wire x1="5.08" y1="1.27" x2="4.445" y2="1.27" width="0.254" layer="21"/>
<wire x1="4.445" y1="1.27" x2="-5.08" y2="1.27" width="0.254" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.254" layer="21"/>
<wire x1="4.445" y1="1.27" x2="4.445" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-6.35" y="0" drill="1.016" diameter="1.9304"/>
<pad name="P$2" x="6.35" y="0" drill="1.016" diameter="1.9304" shape="square"/>
<text x="-3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="D07">
<description>&lt;b&gt;Diode&lt;/b&gt;&lt;p&gt;76/40 sep 600</description>
<wire x1="-5.715" y1="-2.54" x2="5.08" y2="-2.54" width="0.254" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="5.715" y2="-2.54" width="0.254" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="5.715" y2="2.54" width="0.254" layer="21"/>
<wire x1="5.715" y1="2.54" x2="5.08" y2="2.54" width="0.254" layer="21"/>
<wire x1="5.08" y1="2.54" x2="-5.715" y2="2.54" width="0.254" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-5.715" y2="-2.54" width="0.254" layer="21"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.254" layer="21"/>
<pad name="P$1" x="-8.89" y="0" drill="1.5" diameter="2.54"/>
<pad name="P$2" x="8.89" y="0" drill="1.5" diameter="2.54" shape="square"/>
<text x="-3.175" y="-1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="0.635" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="D04A">
<description>&lt;b&gt;Diode&lt;/b&gt;&lt;p&gt;76/40 sep 400</description>
<wire x1="-3.81" y1="-1.27" x2="3.175" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="-1.27" x2="3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.175" y2="1.27" width="0.254" layer="21"/>
<wire x1="3.175" y1="1.27" x2="-3.81" y2="1.27" width="0.254" layer="21"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-1.27" width="0.254" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.175" y2="-1.27" width="0.254" layer="21"/>
<pad name="P$1" x="-5.08" y="0" drill="1.016" diameter="1.9304"/>
<pad name="P$2" x="5.08" y="0" drill="1.016" diameter="1.9304" shape="square"/>
<text x="-3.175" y="-0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="DIL08">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="5.08" y1="2.54" x2="-5.08" y2="2.54" width="0.254" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="5.08" y2="-2.54" width="0.254" layer="21"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="1.016" width="0.254" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="-1.016" width="0.254" layer="21"/>
<wire x1="-5.08" y1="1.016" x2="-5.08" y2="-1.016" width="0.254" layer="21" curve="-180"/>
<pad name="1" x="-3.81" y="-3.81" drill="1.016" diameter="1.6764" shape="square" rot="R90"/>
<pad name="2" x="-1.27" y="-3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="7" x="-1.27" y="3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="8" x="-3.81" y="3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="3" x="1.27" y="-3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="4" x="3.81" y="-3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="6" x="1.27" y="3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<pad name="5" x="3.81" y="3.81" drill="1.016" diameter="1.6764" rot="R90"/>
<text x="-3.175" y="0" size="1.27" layer="25" font="vector">&gt;NAME</text>
<text x="-3.175" y="-1.905" size="1.27" layer="27" font="vector">&gt;VALUE</text>
</package>
<package name="TO92C">
<description>&lt;b&gt;TO92 EBC package mirror&lt;/b&gt;</description>
<wire x1="-1.905" y1="-3.175" x2="3.175" y2="-3.175" width="0.254" layer="21" curve="-253.739795"/>
<wire x1="-1.905" y1="-3.175" x2="3.175" y2="-3.175" width="0.254" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1.016" diameter="1.6764" shape="square"/>
<pad name="2" x="0.635" y="-1.905" drill="1.016" diameter="1.6764"/>
<pad name="3" x="2.54" y="0" drill="1.016" diameter="1.6764"/>
<text x="3.81" y="1.27" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="TEC3L">
<description>&lt;b&gt;TECLA mod3&lt;/b&gt;</description>
<wire x1="-3.175" y1="-2.54" x2="-3.175" y2="3.175" width="0.254" layer="21"/>
<wire x1="-3.175" y1="3.175" x2="4.445" y2="3.175" width="0.254" layer="21"/>
<wire x1="4.445" y1="3.175" x2="4.445" y2="-2.54" width="0.254" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="-3.175" y2="-2.54" width="0.254" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="2.54" y2="-1.905" width="0.254" layer="21"/>
<wire x1="-1.27" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="21"/>
<pad name="1" x="-2.54" y="2.54" drill="1.016" diameter="1.6764"/>
<pad name="2" x="3.81" y="2.54" drill="1.016" diameter="1.6764"/>
<pad name="3" x="3.81" y="-1.905" drill="1.016" diameter="1.6764"/>
<pad name="4" x="-2.54" y="-1.905" drill="1.016" diameter="1.6764"/>
<text x="-2.54" y="3.81" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="TEC5L">
<description>&lt;b&gt;TECLA mod5&lt;/b&gt;</description>
<wire x1="-3.5" y1="-1" x2="-3.5" y2="3" width="0.254" layer="21"/>
<wire x1="-3.5" y1="3" x2="-1.5" y2="3" width="0.254" layer="21"/>
<wire x1="-1.5" y1="3" x2="1.5" y2="3" width="0.254" layer="21"/>
<wire x1="1.5" y1="3" x2="3.5" y2="3" width="0.254" layer="21"/>
<wire x1="3.5" y1="3" x2="3.5" y2="-1" width="0.254" layer="21"/>
<wire x1="3.5" y1="-4" x2="3.5" y2="-4.5" width="0.254" layer="21"/>
<wire x1="3.5" y1="-4.5" x2="-3.5" y2="-4.5" width="0.254" layer="21"/>
<wire x1="-3.5" y1="-4.5" x2="-3.5" y2="-4" width="0.254" layer="21"/>
<wire x1="-1.5" y1="3" x2="-1.5" y2="6" width="0.254" layer="21"/>
<wire x1="-1.5" y1="6" x2="1.5" y2="6" width="0.254" layer="21"/>
<wire x1="1.5" y1="6" x2="1.5" y2="3" width="0.254" layer="21"/>
<pad name="1" x="-2.25" y="0" drill="1.016" diameter="1.778"/>
<pad name="2" x="2.25" y="0" drill="1.016" diameter="1.778"/>
<pad name="3" x="3.5" y="-2.5" drill="1.5" diameter="2.54"/>
<pad name="4" x="-3.5" y="-2.5" drill="1.5" diameter="2.54"/>
<text x="-3.04" y="-6.19" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="D06">
<description>&lt;b&gt;Diode&lt;/b&gt;&lt;p&gt;76/40 sep 600</description>
<wire x1="-5.715" y1="-1.905" x2="5.08" y2="-1.905" width="0.254" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.715" y2="-1.905" width="0.254" layer="21"/>
<wire x1="5.715" y1="-1.905" x2="5.715" y2="1.905" width="0.254" layer="21"/>
<wire x1="5.715" y1="1.905" x2="5.08" y2="1.905" width="0.254" layer="21"/>
<wire x1="5.08" y1="1.905" x2="-5.715" y2="1.905" width="0.254" layer="21"/>
<wire x1="-5.715" y1="1.905" x2="-5.715" y2="-1.905" width="0.254" layer="21"/>
<wire x1="5.08" y1="1.905" x2="5.08" y2="-1.905" width="0.254" layer="21"/>
<pad name="P$1" x="-7.62" y="0" drill="1.5" diameter="2.54"/>
<pad name="P$2" x="7.62" y="0" drill="1.5" diameter="2.54" shape="square"/>
<text x="-3.175" y="-1.397" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="0.254" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="F09H">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-8.128" y1="17.399" x2="-7.62" y2="17.907" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.62" y1="17.907" x2="8.128" y2="17.399" width="0.1524" layer="21" curve="-90"/>
<wire x1="-15.494" y1="7.62" x2="-15.494" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="11.176" x2="-15.494" y2="11.684" width="0.1524" layer="21"/>
<wire x1="15.494" y1="11.684" x2="15.494" y2="11.176" width="0.1524" layer="21"/>
<wire x1="15.494" y1="11.176" x2="15.494" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="11.176" x2="-10.414" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="10.668" x2="-10.414" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="10.668" x2="-10.287" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="8.255" x2="-9.652" y2="7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.494" y1="7.62" x2="-9.525" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="7.62" x2="-9.271" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="8.255" x2="-10.287" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="7.62" x2="-9.271" y2="6.858" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="7.62" x2="9.271" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="6.858" x2="9.271" y2="6.858" width="0.1524" layer="21"/>
<wire x1="9.271" y1="7.62" x2="9.271" y2="6.858" width="0.1524" layer="21"/>
<wire x1="9.271" y1="7.62" x2="9.525" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="11.176" x2="10.414" y2="11.176" width="0.1524" layer="21"/>
<wire x1="10.414" y1="11.176" x2="15.494" y2="11.176" width="0.1524" layer="21"/>
<wire x1="10.414" y1="10.668" x2="10.414" y2="11.176" width="0.1524" layer="21"/>
<wire x1="10.287" y1="8.255" x2="10.287" y2="10.668" width="0.1524" layer="21"/>
<wire x1="10.287" y1="10.668" x2="10.414" y2="10.668" width="0.1524" layer="21"/>
<wire x1="9.652" y1="7.62" x2="10.287" y2="8.255" width="0.1524" layer="21" curve="90"/>
<wire x1="-14.859" y1="-3.175" x2="-15.494" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="-2.54" x2="-15.494" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-10.033" y1="-3.175" x2="-14.859" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-10.033" y1="-3.175" x2="-9.525" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-2.667" x2="-9.525" y2="7.62" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-2.667" x2="9.525" y2="7.62" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-2.667" x2="10.033" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="10.033" y1="-3.175" x2="14.986" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="14.986" y1="-3.175" x2="15.494" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="15.494" y1="-2.667" x2="15.494" y2="7.62" width="0.1524" layer="21"/>
<wire x1="9.525" y1="7.62" x2="15.494" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="12.319" x2="-8.128" y2="17.399" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="11.684" x2="-8.128" y2="12.319" width="0.1524" layer="21" curve="90"/>
<wire x1="8.128" y1="12.319" x2="8.128" y2="17.399" width="0.1524" layer="21"/>
<wire x1="8.128" y1="12.319" x2="8.763" y2="11.684" width="0.1524" layer="21" curve="90"/>
<wire x1="15.494" y1="11.684" x2="-15.494" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="17.907" x2="7.62" y2="17.907" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-1.27" x2="-5.461" y2="7.112" width="0.3048" layer="21"/>
<wire x1="-2.794" y1="-1.27" x2="-2.794" y2="7.112" width="0.3048" layer="21"/>
<wire x1="0" y1="-1.27" x2="0" y2="7.112" width="0.3048" layer="21"/>
<wire x1="2.794" y1="-1.27" x2="2.794" y2="7.112" width="0.3048" layer="21"/>
<wire x1="5.461" y1="-1.27" x2="5.461" y2="7.112" width="0.3048" layer="21"/>
<wire x1="-4.064" y1="1.27" x2="-4.064" y2="7.112" width="0.3048" layer="21"/>
<wire x1="-1.397" y1="1.27" x2="-1.397" y2="7.112" width="0.3048" layer="21"/>
<wire x1="1.397" y1="1.27" x2="1.397" y2="7.112" width="0.3048" layer="21"/>
<wire x1="4.064" y1="1.27" x2="4.064" y2="7.112" width="0.3048" layer="21"/>
<circle x="-12.5222" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="-12.5222" y="0" radius="2.667" width="0" layer="42"/>
<circle x="-12.5222" y="0" radius="2.667" width="0" layer="43"/>
<circle x="12.5222" y="0" radius="2.667" width="0" layer="42"/>
<circle x="12.5222" y="0" radius="2.667" width="0" layer="43"/>
<circle x="12.5222" y="0" radius="1.651" width="0.1524" layer="21"/>
<pad name="1" x="-5.4864" y="-1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="2" x="-2.7432" y="-1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="3" x="0" y="-1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="4" x="2.7432" y="-1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="5" x="5.4864" y="-1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="6" x="-4.1148" y="1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="7" x="-1.3716" y="1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="8" x="1.3716" y="1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="9" x="4.1148" y="1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<text x="-15.24" y="-6.35" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="13.97" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-7.62" y="-1.905" size="1.27" layer="21" ratio="10">1</text>
<text x="6.985" y="-1.905" size="1.27" layer="21" ratio="10">5</text>
<text x="6.985" y="0.635" size="1.27" layer="21" ratio="10">9</text>
<text x="-7.62" y="0.635" size="1.27" layer="21" ratio="10">6</text>
<text x="-7.62" y="8.509" size="1.27" layer="21" ratio="10">F09</text>
<hole x="-12.5222" y="0" drill="3.302"/>
<hole x="12.5222" y="0" drill="3.302"/>
</package>
<package name="F09HP">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-7.62" y1="17.907" x2="-7.366" y2="17.907" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="17.399" x2="-7.62" y2="17.907" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.62" y1="17.907" x2="8.128" y2="17.399" width="0.1524" layer="21" curve="-90"/>
<wire x1="-7.747" y1="11.684" x2="7.747" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="7.62" x2="-10.414" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="7.62" x2="-15.494" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="7.62" x2="-15.494" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="10.668" x2="-15.494" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="11.176" x2="-15.494" y2="11.684" width="0.1524" layer="21"/>
<wire x1="15.494" y1="11.684" x2="15.494" y2="11.176" width="0.1524" layer="21"/>
<wire x1="15.494" y1="11.176" x2="15.494" y2="10.668" width="0.1524" layer="21"/>
<wire x1="15.494" y1="10.668" x2="15.494" y2="7.62" width="0.1524" layer="21"/>
<wire x1="15.494" y1="7.62" x2="15.494" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="11.176" x2="-12.954" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-12.954" y1="11.176" x2="-10.414" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="10.668" x2="-10.414" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="10.668" x2="-10.287" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="8.255" x2="-9.652" y2="7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-10.414" y1="7.62" x2="-9.525" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="7.62" x2="-9.271" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="8.255" x2="-10.287" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="7.62" x2="-9.271" y2="6.858" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="7.62" x2="9.271" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="6.858" x2="9.271" y2="6.858" width="0.1524" layer="21"/>
<wire x1="9.271" y1="7.62" x2="9.271" y2="6.858" width="0.1524" layer="21"/>
<wire x1="9.271" y1="7.62" x2="9.525" y2="7.62" width="0.1524" layer="21"/>
<wire x1="9.525" y1="7.62" x2="10.414" y2="7.62" width="0.1524" layer="21"/>
<wire x1="12.954" y1="11.176" x2="15.494" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="11.176" x2="10.414" y2="11.176" width="0.1524" layer="21"/>
<wire x1="10.414" y1="11.176" x2="12.954" y2="11.176" width="0.1524" layer="21"/>
<wire x1="10.414" y1="10.668" x2="10.414" y2="11.176" width="0.1524" layer="21"/>
<wire x1="10.287" y1="8.255" x2="10.287" y2="10.668" width="0.1524" layer="21"/>
<wire x1="10.287" y1="10.668" x2="10.414" y2="10.668" width="0.1524" layer="21"/>
<wire x1="9.652" y1="7.62" x2="10.287" y2="8.255" width="0.1524" layer="21" curve="90"/>
<wire x1="-14.859" y1="-3.175" x2="-15.494" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="-2.54" x2="-15.494" y2="7.493" width="0.1524" layer="21"/>
<wire x1="-10.033" y1="-3.175" x2="-14.859" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-10.033" y1="-3.175" x2="-9.525" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-2.667" x2="-9.525" y2="7.62" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-2.667" x2="9.525" y2="7.62" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-2.667" x2="10.033" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="10.033" y1="-3.175" x2="14.986" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="14.986" y1="-3.175" x2="15.494" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="15.494" y1="-2.667" x2="15.494" y2="7.493" width="0.1524" layer="21"/>
<wire x1="10.414" y1="7.62" x2="15.494" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="11.684" x2="-7.747" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="12.319" x2="-8.128" y2="17.399" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="11.684" x2="-8.128" y2="12.319" width="0.1524" layer="21" curve="90"/>
<wire x1="7.747" y1="11.684" x2="15.494" y2="11.684" width="0.1524" layer="21"/>
<wire x1="8.128" y1="12.319" x2="8.128" y2="17.399" width="0.1524" layer="21"/>
<wire x1="8.128" y1="12.319" x2="8.763" y2="11.684" width="0.1524" layer="21" curve="90"/>
<wire x1="-7.366" y1="17.907" x2="7.366" y2="17.907" width="0.1524" layer="21"/>
<wire x1="7.366" y1="17.907" x2="7.62" y2="17.907" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-1.27" x2="-5.461" y2="7.112" width="0.3048" layer="21"/>
<wire x1="-2.794" y1="-1.27" x2="-2.794" y2="7.112" width="0.3048" layer="21"/>
<wire x1="0" y1="-1.27" x2="0" y2="7.112" width="0.3048" layer="21"/>
<wire x1="2.794" y1="-1.27" x2="2.794" y2="7.112" width="0.3048" layer="21"/>
<wire x1="5.461" y1="-1.27" x2="5.461" y2="7.112" width="0.3048" layer="21"/>
<wire x1="-4.064" y1="1.27" x2="-4.064" y2="7.112" width="0.3048" layer="21"/>
<wire x1="-1.397" y1="1.27" x2="-1.397" y2="7.112" width="0.3048" layer="21"/>
<wire x1="1.397" y1="1.27" x2="1.397" y2="7.112" width="0.3048" layer="21"/>
<wire x1="4.064" y1="1.27" x2="4.064" y2="7.112" width="0.3048" layer="21"/>
<circle x="-12.5222" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="12.5222" y="0" radius="1.651" width="0.1524" layer="21"/>
<pad name="1" x="-5.4864" y="-1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="2" x="-2.7432" y="-1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="3" x="0" y="-1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="4" x="2.7432" y="-1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="5" x="5.4864" y="-1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="6" x="-4.1148" y="1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="7" x="-1.3716" y="1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="8" x="1.3716" y="1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="9" x="4.1148" y="1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="G1" x="-12.5222" y="0" drill="3.302" diameter="5.08"/>
<pad name="G2" x="12.5222" y="0" drill="3.302" diameter="5.08"/>
<text x="-15.24" y="-6.35" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="13.97" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-7.62" y="-1.905" size="1.27" layer="21" ratio="10">1</text>
<text x="6.985" y="-1.905" size="1.27" layer="21" ratio="10">5</text>
<text x="6.985" y="0.635" size="1.27" layer="21" ratio="10">9</text>
<text x="-7.62" y="0.635" size="1.27" layer="21" ratio="10">6</text>
<text x="-7.62" y="8.509" size="1.27" layer="21" ratio="10">F09</text>
</package>
<package name="F09V">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-7.5184" y1="-2.9464" x2="-8.3058" y2="2.3368" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-3.937" x2="7.5317" y2="-2.905" width="0.1524" layer="21" curve="76.489196" cap="flat"/>
<wire x1="6.985" y1="3.937" x2="8.3005" y2="2.3038" width="0.1524" layer="21" curve="-102.298925" cap="flat"/>
<wire x1="8.3058" y1="2.3114" x2="7.5184" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="3.937" x2="6.985" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.3051" y1="2.3268" x2="-6.985" y2="3.937" width="0.1524" layer="21" curve="-101.30773" cap="flat"/>
<wire x1="-7.5259" y1="-2.9295" x2="-6.223" y2="-3.937" width="0.1524" layer="21" curve="75.428151" cap="flat"/>
<wire x1="-6.223" y1="-3.937" x2="6.223" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-6.223" x2="-12.7" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-6.223" x2="-10.16" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-6.096" x2="-10.16" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-6.096" x2="-10.16" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-6.223" x2="10.16" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="-6.223" x2="-12.7" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="-5.588" x2="-14.859" y2="-6.223" width="0.1524" layer="21" curve="90"/>
<wire x1="14.859" y1="-6.223" x2="15.494" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="14.859" y1="6.223" x2="12.7" y2="6.223" width="0.1524" layer="21"/>
<wire x1="15.494" y1="5.588" x2="15.494" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="14.859" y1="6.223" x2="15.494" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-15.494" y1="5.588" x2="-15.494" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="5.588" x2="-14.859" y2="6.223" width="0.1524" layer="21" curve="-90"/>
<wire x1="10.16" y1="-6.223" x2="10.16" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-6.223" x2="12.7" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-6.096" x2="12.7" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-6.096" x2="12.7" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-6.223" x2="14.859" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="10.16" y1="6.223" x2="10.16" y2="6.096" width="0.1524" layer="21"/>
<wire x1="10.16" y1="6.223" x2="-10.16" y2="6.223" width="0.1524" layer="21"/>
<wire x1="10.16" y1="6.096" x2="12.7" y2="6.096" width="0.1524" layer="21"/>
<wire x1="12.7" y1="6.096" x2="12.7" y2="6.223" width="0.1524" layer="21"/>
<wire x1="12.7" y1="6.223" x2="10.16" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="6.223" x2="-12.7" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="6.223" x2="-14.859" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="6.096" x2="-10.16" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="6.096" x2="-10.16" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="6.223" x2="-12.7" y2="6.223" width="0.1524" layer="21"/>
<circle x="-12.5222" y="0" radius="2.667" width="0" layer="42"/>
<circle x="-12.5222" y="0" radius="2.667" width="0" layer="43"/>
<circle x="12.5222" y="0" radius="2.667" width="0" layer="42"/>
<circle x="12.5222" y="0" radius="2.667" width="0" layer="43"/>
<circle x="1.3716" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="2.7432" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="4.1148" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="5.4864" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="0" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-1.3716" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-2.7432" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-4.1148" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-5.4864" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-12.5222" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="12.5222" y="0" radius="1.651" width="0.1524" layer="21"/>
<pad name="1" x="5.4864" y="1.4224" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="2" x="2.7432" y="1.4224" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="3" x="0" y="1.4224" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="4" x="-2.7432" y="1.4224" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="5" x="-5.4864" y="1.4224" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="6" x="4.1148" y="-1.4224" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="7" x="1.3716" y="-1.4224" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="8" x="-1.3716" y="-1.4224" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="9" x="-4.1148" y="-1.4224" drill="1.1" diameter="1.778" shape="octagon"/>
<text x="5.08" y="2.54" size="0.9906" layer="21" ratio="12">1</text>
<text x="2.286" y="2.54" size="0.9906" layer="21" ratio="12">2</text>
<text x="-0.508" y="2.54" size="0.9906" layer="21" ratio="12">3</text>
<text x="-3.175" y="2.54" size="0.9906" layer="21" ratio="12">4</text>
<text x="-5.969" y="2.54" size="0.9906" layer="21" ratio="12">5</text>
<text x="3.81" y="-3.556" size="0.9906" layer="21" ratio="12">6</text>
<text x="1.016" y="-3.556" size="0.9906" layer="21" ratio="12">7</text>
<text x="-1.778" y="-3.556" size="0.9906" layer="21" ratio="12">8</text>
<text x="-4.572" y="-3.556" size="0.9906" layer="21" ratio="12">9</text>
<text x="-15.367" y="6.985" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="6.985" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<hole x="-12.5222" y="0" drill="3.302"/>
<hole x="12.5222" y="0" drill="3.302"/>
</package>
<package name="F09VP">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-7.5184" y1="-2.9464" x2="-8.3058" y2="2.3368" width="0.1524" layer="21"/>
<wire x1="6.223" y1="-3.937" x2="7.5317" y2="-2.905" width="0.1524" layer="21" curve="76.489196" cap="flat"/>
<wire x1="6.985" y1="3.937" x2="8.3005" y2="2.3038" width="0.1524" layer="21" curve="-102.298925" cap="flat"/>
<wire x1="8.3058" y1="2.3114" x2="7.5184" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="3.937" x2="6.985" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.3051" y1="2.3268" x2="-6.985" y2="3.937" width="0.1524" layer="21" curve="-101.30773" cap="flat"/>
<wire x1="-7.5259" y1="-2.9295" x2="-6.223" y2="-3.937" width="0.1524" layer="21" curve="75.428151" cap="flat"/>
<wire x1="-6.223" y1="-3.937" x2="6.223" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-6.223" x2="-12.7" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-6.223" x2="-10.16" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-6.096" x2="-10.16" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-6.096" x2="-10.16" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-6.223" x2="10.16" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-14.859" y1="-6.223" x2="-12.7" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="-5.588" x2="-14.859" y2="-6.223" width="0.1524" layer="21" curve="90"/>
<wire x1="14.859" y1="-6.223" x2="15.494" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="14.859" y1="6.223" x2="12.7" y2="6.223" width="0.1524" layer="21"/>
<wire x1="15.494" y1="5.588" x2="15.494" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="14.859" y1="6.223" x2="15.494" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-15.494" y1="5.588" x2="-15.494" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="5.588" x2="-14.859" y2="6.223" width="0.1524" layer="21" curve="-90"/>
<wire x1="10.16" y1="-6.223" x2="10.16" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-6.223" x2="12.7" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-6.096" x2="12.7" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-6.096" x2="12.7" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-6.223" x2="14.859" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="10.16" y1="6.223" x2="10.16" y2="6.096" width="0.1524" layer="21"/>
<wire x1="10.16" y1="6.223" x2="-10.16" y2="6.223" width="0.1524" layer="21"/>
<wire x1="10.16" y1="6.096" x2="12.7" y2="6.096" width="0.1524" layer="21"/>
<wire x1="12.7" y1="6.096" x2="12.7" y2="6.223" width="0.1524" layer="21"/>
<wire x1="12.7" y1="6.223" x2="10.16" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="6.223" x2="-12.7" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="6.223" x2="-14.859" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="6.096" x2="-10.16" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="6.096" x2="-10.16" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="6.223" x2="-12.7" y2="6.223" width="0.1524" layer="21"/>
<circle x="1.3716" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="2.7432" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="4.1148" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="5.4864" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="0" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-1.3716" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-2.7432" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-4.1148" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-5.4864" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-12.5222" y="0" radius="1.651" width="0.1524" layer="21"/>
<circle x="12.5222" y="0" radius="1.651" width="0.1524" layer="21"/>
<pad name="1" x="5.4864" y="1.4224" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="2" x="2.7432" y="1.4224" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="3" x="0" y="1.4224" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="4" x="-2.7432" y="1.4224" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="5" x="-5.4864" y="1.4224" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="6" x="4.1148" y="-1.4224" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="7" x="1.3716" y="-1.4224" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="8" x="-1.3716" y="-1.4224" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="9" x="-4.1148" y="-1.4224" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="G1" x="-12.5222" y="0" drill="3.302" diameter="5.08"/>
<pad name="G2" x="12.5222" y="0" drill="3.302" diameter="5.08"/>
<text x="5.08" y="2.54" size="0.9906" layer="21" ratio="12">1</text>
<text x="2.286" y="2.54" size="0.9906" layer="21" ratio="12">2</text>
<text x="-0.508" y="2.54" size="0.9906" layer="21" ratio="12">3</text>
<text x="-3.175" y="2.54" size="0.9906" layer="21" ratio="12">4</text>
<text x="-5.969" y="2.54" size="0.9906" layer="21" ratio="12">5</text>
<text x="3.81" y="-3.556" size="0.9906" layer="21" ratio="12">6</text>
<text x="1.016" y="-3.556" size="0.9906" layer="21" ratio="12">7</text>
<text x="-1.778" y="-3.556" size="0.9906" layer="21" ratio="12">8</text>
<text x="-4.572" y="-3.556" size="0.9906" layer="21" ratio="12">9</text>
<text x="-15.367" y="6.985" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="6.985" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="F09VB">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="7.5184" y1="2.9464" x2="8.3058" y2="-2.3368" width="0.1524" layer="21"/>
<wire x1="-7.5317" y1="2.905" x2="-6.223" y2="3.937" width="0.1524" layer="21" curve="-76.489196" cap="flat"/>
<wire x1="-8.3005" y1="-2.3038" x2="-6.985" y2="-3.937" width="0.1524" layer="21" curve="102.298925" cap="flat"/>
<wire x1="-8.3058" y1="-2.3114" x2="-7.5184" y2="2.921" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-3.937" x2="-6.985" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-3.937" x2="8.3051" y2="-2.3268" width="0.1524" layer="21" curve="101.30773" cap="flat"/>
<wire x1="6.223" y1="3.937" x2="7.5259" y2="2.9295" width="0.1524" layer="21" curve="-75.428151" cap="flat"/>
<wire x1="6.223" y1="3.937" x2="-6.223" y2="3.937" width="0.1524" layer="21"/>
<wire x1="12.7" y1="6.223" x2="12.7" y2="6.096" width="0.1524" layer="21"/>
<wire x1="12.7" y1="6.223" x2="10.16" y2="6.223" width="0.1524" layer="21"/>
<wire x1="12.7" y1="6.096" x2="10.16" y2="6.096" width="0.1524" layer="21"/>
<wire x1="10.16" y1="6.096" x2="10.16" y2="6.223" width="0.1524" layer="21"/>
<wire x1="10.16" y1="6.223" x2="-10.16" y2="6.223" width="0.1524" layer="21"/>
<wire x1="14.859" y1="6.223" x2="12.7" y2="6.223" width="0.1524" layer="21"/>
<wire x1="14.859" y1="6.223" x2="15.494" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-15.494" y1="5.588" x2="-14.859" y2="6.223" width="0.1524" layer="21" curve="-90"/>
<wire x1="-14.859" y1="-6.223" x2="-12.7" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="-5.588" x2="-15.494" y2="5.588" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="-5.588" x2="-14.859" y2="-6.223" width="0.1524" layer="21" curve="90"/>
<wire x1="15.494" y1="-5.588" x2="15.494" y2="5.588" width="0.1524" layer="21"/>
<wire x1="14.859" y1="-6.223" x2="15.494" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-10.16" y1="6.223" x2="-10.16" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="6.223" x2="-12.7" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="6.096" x2="-12.7" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="6.096" x2="-12.7" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="6.223" x2="-14.859" y2="6.223" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-6.223" x2="-10.16" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-6.223" x2="10.16" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-6.096" x2="-12.7" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-6.096" x2="-12.7" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-6.223" x2="-10.16" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-6.223" x2="12.7" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-6.223" x2="14.859" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-6.096" x2="10.16" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-6.096" x2="10.16" y2="-6.223" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-6.223" x2="12.7" y2="-6.223" width="0.1524" layer="21"/>
<circle x="-1.3716" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-2.7432" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-4.1148" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="-5.4864" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="0" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="1.3716" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="2.7432" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="4.1148" y="1.4224" radius="0.762" width="0.254" layer="51"/>
<circle x="5.4864" y="-1.4224" radius="0.762" width="0.254" layer="51"/>
<pad name="1" x="-5.4864" y="-1.4224" drill="1.6" diameter="2.286" shape="octagon"/>
<pad name="2" x="-2.7432" y="-1.4224" drill="1.6" diameter="2.286" shape="octagon"/>
<pad name="3" x="0" y="-1.4224" drill="1.6" diameter="2.286" shape="octagon"/>
<pad name="4" x="2.7432" y="-1.4224" drill="1.6" diameter="2.286" shape="octagon"/>
<pad name="5" x="5.4864" y="-1.4224" drill="1.6" diameter="2.286" shape="octagon"/>
<pad name="6" x="-4.1148" y="1.4224" drill="1.6" diameter="2.286" shape="octagon"/>
<pad name="7" x="-1.3716" y="1.4224" drill="1.6" diameter="2.286" shape="octagon"/>
<pad name="8" x="1.3716" y="1.4224" drill="1.6" diameter="2.286" shape="octagon"/>
<pad name="9" x="4.1148" y="1.4224" drill="1.6" diameter="2.286" shape="octagon"/>
<text x="-5.08" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">1</text>
<text x="-2.286" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">2</text>
<text x="0.508" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">3</text>
<text x="3.175" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">4</text>
<text x="5.969" y="-2.54" size="0.9906" layer="21" ratio="12" rot="R180">5</text>
<text x="-3.81" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">6</text>
<text x="-1.016" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">7</text>
<text x="1.778" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">8</text>
<text x="4.572" y="3.556" size="0.9906" layer="21" ratio="12" rot="R180">9</text>
<text x="-15.367" y="8.255" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="8.255" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="F09">
<description>&lt;b&gt;SUB-D&lt;/b&gt;</description>
<wire x1="-8.128" y1="17.399" x2="-7.62" y2="17.907" width="0.1524" layer="21" curve="-90"/>
<wire x1="7.62" y1="17.907" x2="8.128" y2="17.399" width="0.1524" layer="21" curve="-90"/>
<wire x1="-15.494" y1="7.62" x2="-15.494" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="11.176" x2="-15.494" y2="11.684" width="0.1524" layer="21"/>
<wire x1="15.494" y1="11.684" x2="15.494" y2="11.176" width="0.1524" layer="21"/>
<wire x1="15.494" y1="11.176" x2="15.494" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="11.176" x2="-10.414" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="10.668" x2="-10.414" y2="11.176" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="10.668" x2="-10.287" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="8.255" x2="-9.652" y2="7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.494" y1="7.62" x2="-9.525" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="7.62" x2="-9.271" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-10.287" y1="8.255" x2="-10.287" y2="10.668" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="7.62" x2="-9.271" y2="6.858" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="7.62" x2="9.271" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-9.271" y1="6.858" x2="9.271" y2="6.858" width="0.1524" layer="21"/>
<wire x1="9.271" y1="7.62" x2="9.271" y2="6.858" width="0.1524" layer="21"/>
<wire x1="9.271" y1="7.62" x2="9.525" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="11.176" x2="10.414" y2="11.176" width="0.1524" layer="21"/>
<wire x1="10.414" y1="11.176" x2="15.494" y2="11.176" width="0.1524" layer="21"/>
<wire x1="10.414" y1="10.668" x2="10.414" y2="11.176" width="0.1524" layer="21"/>
<wire x1="10.287" y1="8.255" x2="10.287" y2="10.668" width="0.1524" layer="21"/>
<wire x1="10.287" y1="10.668" x2="10.414" y2="10.668" width="0.1524" layer="21"/>
<wire x1="9.652" y1="7.62" x2="10.287" y2="8.255" width="0.1524" layer="21" curve="90"/>
<wire x1="-14.859" y1="-3.175" x2="-15.494" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-15.494" y1="-2.54" x2="-15.494" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-10.033" y1="-3.175" x2="-14.859" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-10.033" y1="-3.175" x2="-9.525" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-2.667" x2="-9.525" y2="7.62" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-2.667" x2="9.525" y2="7.62" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-2.667" x2="10.033" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="10.033" y1="-3.175" x2="14.986" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="14.986" y1="-3.175" x2="15.494" y2="-2.667" width="0.1524" layer="21"/>
<wire x1="15.494" y1="-2.667" x2="15.494" y2="7.62" width="0.1524" layer="21"/>
<wire x1="9.525" y1="7.62" x2="15.494" y2="7.62" width="0.1524" layer="21"/>
<wire x1="-8.128" y1="12.319" x2="-8.128" y2="17.399" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="11.684" x2="-8.128" y2="12.319" width="0.1524" layer="21" curve="90"/>
<wire x1="8.128" y1="12.319" x2="8.128" y2="17.399" width="0.1524" layer="21"/>
<wire x1="8.128" y1="12.319" x2="8.763" y2="11.684" width="0.1524" layer="21" curve="90"/>
<wire x1="15.494" y1="11.684" x2="-15.494" y2="11.684" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="17.907" x2="7.62" y2="17.907" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-1.27" x2="-5.461" y2="7.112" width="0.3048" layer="21"/>
<wire x1="-2.794" y1="-1.27" x2="-2.794" y2="7.112" width="0.3048" layer="21"/>
<wire x1="0" y1="-1.27" x2="0" y2="7.112" width="0.3048" layer="21"/>
<wire x1="2.794" y1="-1.27" x2="2.794" y2="7.112" width="0.3048" layer="21"/>
<wire x1="5.461" y1="-1.27" x2="5.461" y2="7.112" width="0.3048" layer="21"/>
<wire x1="-4.064" y1="1.27" x2="-4.064" y2="7.112" width="0.3048" layer="21"/>
<wire x1="-1.397" y1="1.27" x2="-1.397" y2="7.112" width="0.3048" layer="21"/>
<wire x1="1.397" y1="1.27" x2="1.397" y2="7.112" width="0.3048" layer="21"/>
<wire x1="4.064" y1="1.27" x2="4.064" y2="7.112" width="0.3048" layer="21"/>
<pad name="1" x="-5.4864" y="-1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="2" x="-2.7432" y="-1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="3" x="0" y="-1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="4" x="2.7432" y="-1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="5" x="5.4864" y="-1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="6" x="-4.1148" y="1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="7" x="-1.3716" y="1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="8" x="1.3716" y="1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<pad name="9" x="4.1148" y="1.27" drill="1.1" diameter="1.778" shape="octagon"/>
<text x="-15.24" y="-6.35" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="13.97" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-7.62" y="-1.905" size="1.27" layer="21" ratio="10">1</text>
<text x="6.985" y="-1.905" size="1.27" layer="21" ratio="10">5</text>
<text x="6.985" y="0.635" size="1.27" layer="21" ratio="10">9</text>
<text x="-7.62" y="0.635" size="1.27" layer="21" ratio="10">6</text>
<text x="-7.62" y="8.509" size="1.27" layer="21" ratio="10">F09</text>
</package>
<package name="JP2">
<description>&lt;b&gt;Jumper 2xPin&lt;/b&gt;</description>
<wire x1="-1.27" y1="-2.54" x2="-1.27" y2="1.905" width="0.254" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-0.635" y2="2.54" width="0.254" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="1.27" y2="2.54" width="0.254" layer="21"/>
<wire x1="1.27" y1="2.54" x2="1.27" y2="-2.54" width="0.254" layer="21"/>
<wire x1="1.27" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="21"/>
<pad name="1" x="0" y="1.27" drill="1.1" diameter="1.6764" shape="square"/>
<pad name="2" x="0" y="-1.27" drill="1.1" diameter="1.6764"/>
<text x="-1.27" y="-4.445" size="1.27" layer="25">&gt;NAME</text>
</package>
<package name="LEDBKC">
<description>&lt;b&gt;LED BIcolor KC&lt;/b&gt; 5mm</description>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="-1.27" width="0.254" layer="21" curve="-299.06891"/>
<wire x1="-2.159" y1="-1.27" x2="-2.159" y2="1.27" width="0.254" layer="21"/>
<pad name="R" x="-2.54" y="0" drill="1.016" diameter="1.6764"/>
<pad name="K" x="0" y="0" drill="1.016" diameter="1.6764" shape="square"/>
<pad name="G" x="2.54" y="0" drill="1.016" diameter="1.6764"/>
<text x="-4.445" y="-0.635" size="1.27" layer="21" font="vector">R</text>
<text x="3.81" y="-0.635" size="1.27" layer="21" font="vector">G</text>
<text x="-1.905" y="3.175" size="1.27" layer="25" font="vector">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="LETTER_L">
<wire x1="0" y1="0" x2="261.62" y2="0" width="0.254" layer="94"/>
<wire x1="261.62" y1="0" x2="261.62" y2="200.66" width="0.254" layer="94"/>
<wire x1="261.62" y1="200.66" x2="0" y2="200.66" width="0.254" layer="94"/>
<wire x1="0" y1="200.66" x2="0" y2="0" width="0.254" layer="94"/>
</symbol>
<symbol name="DOCFIELD">
<wire x1="0" y1="0" x2="50.8" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="7.62" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="50.8" y2="7.62" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="0" y2="15.24" width="0.254" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="7.62" width="0.254" layer="94"/>
<wire x1="50.8" y1="7.62" x2="50.8" y2="5.08" width="0.254" layer="94"/>
<wire x1="50.8" y1="5.08" x2="50.8" y2="0" width="0.254" layer="94"/>
<wire x1="50.8" y1="0" x2="83.82" y2="0" width="0.254" layer="94"/>
<wire x1="83.82" y1="0" x2="91.44" y2="0" width="0.254" layer="94"/>
<wire x1="91.44" y1="0" x2="101.6" y2="0" width="0.254" layer="94"/>
<wire x1="101.6" y1="15.24" x2="64.77" y2="15.24" width="0.254" layer="94"/>
<wire x1="64.77" y1="15.24" x2="0" y2="15.24" width="0.254" layer="94"/>
<wire x1="50.8" y1="7.62" x2="83.82" y2="7.62" width="0.254" layer="94"/>
<wire x1="83.82" y1="7.62" x2="91.44" y2="7.62" width="0.254" layer="94"/>
<wire x1="91.44" y1="7.62" x2="101.6" y2="7.62" width="0.254" layer="94"/>
<wire x1="101.6" y1="7.62" x2="101.6" y2="5.08" width="0.254" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.254" layer="94"/>
<wire x1="101.6" y1="25.4" x2="64.77" y2="25.4" width="0.254" layer="94"/>
<wire x1="64.77" y1="25.4" x2="0" y2="25.4" width="0.254" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="25.4" width="0.254" layer="94"/>
<wire x1="101.6" y1="25.4" x2="101.6" y2="15.24" width="0.254" layer="94"/>
<wire x1="50.8" y1="5.08" x2="101.6" y2="5.08" width="0.254" layer="94"/>
<wire x1="91.44" y1="0" x2="91.44" y2="7.62" width="0.254" layer="94"/>
<wire x1="83.82" y1="0" x2="83.82" y2="7.62" width="0.254" layer="94"/>
<wire x1="64.77" y1="15.24" x2="64.77" y2="25.4" width="0.254" layer="94"/>
<text x="52.07" y="1.905" size="1.778" layer="94" font="vector">&gt;LAST_DATE_TIME</text>
<text x="92.71" y="1.905" size="1.778" layer="94" font="vector">&gt;SHEET</text>
<text x="17.78" y="2.54" size="2.1844" layer="94" font="vector">&gt;DRAWING_NAME</text>
<text x="1.27" y="2.54" size="2.1844" layer="94" font="vector">ARCHIVO:</text>
<text x="92.71" y="5.588" size="1.27" layer="94" font="vector">PAG:</text>
<text x="52.07" y="5.588" size="1.27" layer="94" font="vector">FECHA:</text>
<text x="85.09" y="5.588" size="1.27" layer="94" font="vector">REV:</text>
<text x="1.27" y="11.938" size="2.54" layer="94" font="vector">PROYECTO:</text>
<text x="66.04" y="22.86" size="1.27" layer="94" font="vector">INGENIERO:</text>
</symbol>
<symbol name="16F62X">
<wire x1="-17.78" y1="-22.86" x2="-17.78" y2="22.86" width="0.4064" layer="94"/>
<wire x1="-17.78" y1="22.86" x2="12.7" y2="22.86" width="0.4064" layer="94"/>
<wire x1="12.7" y1="22.86" x2="12.7" y2="-22.86" width="0.4064" layer="94"/>
<wire x1="12.7" y1="-22.86" x2="-17.78" y2="-22.86" width="0.4064" layer="94"/>
<text x="-17.78" y="24.13" size="1.778" layer="95">&gt;NAME</text>
<text x="-17.78" y="-25.4" size="1.778" layer="96">&gt;VALUE</text>
<pin name="AN0/RA0" x="17.78" y="20.32" length="middle" swaplevel="1" rot="R180"/>
<pin name="AN1/RA1" x="17.78" y="17.78" length="middle" swaplevel="1" rot="R180"/>
<pin name="VREF/AN2/RA2" x="17.78" y="15.24" length="middle" swaplevel="1" rot="R180"/>
<pin name="CMP1/AN3/RA3" x="17.78" y="12.7" length="middle" swaplevel="1" rot="R180"/>
<pin name="CMP2/T0CKI/RA4" x="17.78" y="10.16" length="middle" swaplevel="1" rot="R180"/>
<pin name="VPP/MCLR/RA5" x="17.78" y="7.62" length="middle" direction="in" swaplevel="1" rot="R180"/>
<pin name="CLKOUT/OSC2/RA6" x="17.78" y="5.08" length="middle" swaplevel="1" rot="R180"/>
<pin name="CLKIN/OSC1/RA7" x="17.78" y="2.54" length="middle" swaplevel="1" rot="R180"/>
<pin name="INT/RB0" x="17.78" y="-2.54" length="middle" swaplevel="1" rot="R180"/>
<pin name="DT/RX/RB1" x="17.78" y="-5.08" length="middle" swaplevel="1" rot="R180"/>
<pin name="CK/TX/RB2" x="17.78" y="-7.62" length="middle" swaplevel="1" rot="R180"/>
<pin name="CCP1/RB3" x="17.78" y="-10.16" length="middle" swaplevel="1" rot="R180"/>
<pin name="PGM/RB4" x="17.78" y="-12.7" length="middle" swaplevel="1" rot="R180"/>
<pin name="RB5" x="17.78" y="-15.24" length="middle" swaplevel="1" rot="R180"/>
<pin name="PGC/T1CKI/T1OSO/RB6" x="17.78" y="-17.78" length="middle" swaplevel="1" rot="R180"/>
<pin name="PGD/T1OSI/RB7" x="17.78" y="-20.32" length="middle" swaplevel="1" rot="R180"/>
<pin name="VDD" x="-22.86" y="20.32" length="middle" direction="pwr"/>
<pin name="VSS" x="-22.86" y="-2.54" length="middle" direction="pwr"/>
</symbol>
<symbol name="CAP">
<wire x1="2.032" y1="0" x2="2.032" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="2.032" y1="-0.508" x2="-2.032" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-0.508" x2="-2.032" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="0" x2="2.032" y2="0" width="0.1524" layer="94"/>
<wire x1="2.032" y1="-2.54" x2="2.032" y2="-2.032" width="0.1524" layer="94"/>
<wire x1="2.032" y1="-2.032" x2="-2.032" y2="-2.032" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-2.032" x2="-2.032" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-2.54" x2="2.032" y2="-2.54" width="0.1524" layer="94"/>
<text x="2.54" y="-2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="1.27" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="CAPE">
<wire x1="2.032" y1="-2.54" x2="2.032" y2="-2.032" width="0.1524" layer="94"/>
<wire x1="2.032" y1="-2.032" x2="-2.032" y2="-2.032" width="0.1524" layer="94" curve="82.224994"/>
<wire x1="-2.032" y1="-2.032" x2="-2.032" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-2.54" x2="0" y2="-1.778" width="0.1524" layer="94" curve="-41.112554"/>
<wire x1="0" y1="-1.778" x2="2.032" y2="-2.54" width="0.1524" layer="94" curve="-41.112554"/>
<wire x1="2.032" y1="0" x2="2.032" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="2.032" y1="-0.508" x2="-2.032" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-0.508" x2="-2.032" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="0" x2="2.032" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.778" width="0.1524" layer="94"/>
<text x="2.54" y="-2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="1.27" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="F09">
<wire x1="-1.651" y1="3.429" x2="-1.651" y2="1.651" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="1.651" x2="1.524" y2="3.429" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="5.969" x2="-1.651" y2="4.191" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-3.429" x2="1.524" y2="-1.651" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="0.889" x2="-1.651" y2="-0.889" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-0.889" x2="1.524" y2="0.889" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-1.651" x2="-1.651" y2="-3.429" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="1.524" y1="-5.969" x2="1.524" y2="-4.191" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-1.651" y1="-4.191" x2="-1.651" y2="-5.969" width="0.254" layer="94" curve="180" cap="flat"/>
<wire x1="-4.064" y1="6.9312" x2="-2.5226" y2="8.172" width="0.4064" layer="94" curve="-102.324066" cap="flat"/>
<wire x1="-2.5226" y1="8.1718" x2="3.0654" y2="6.9494" width="0.4064" layer="94"/>
<wire x1="3.0654" y1="6.9495" x2="4.0642" y2="5.7088" width="0.4064" layer="94" curve="-77.655139" cap="flat"/>
<wire x1="4.064" y1="-5.7088" x2="4.064" y2="5.7088" width="0.4064" layer="94"/>
<wire x1="3.0654" y1="-6.9494" x2="4.064" y2="-5.7088" width="0.4064" layer="94" curve="77.657889"/>
<wire x1="-4.064" y1="-6.9312" x2="-4.064" y2="6.9312" width="0.4064" layer="94"/>
<wire x1="-2.5226" y1="-8.1718" x2="3.0654" y2="-6.9494" width="0.4064" layer="94"/>
<wire x1="-4.064" y1="-6.9312" x2="-2.5226" y2="-8.1719" width="0.4064" layer="94" curve="102.337599" cap="flat"/>
<text x="-3.81" y="-10.795" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="8.89" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="6" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="7" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="8" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="9" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="REGF">
<wire x1="-7.62" y1="-5.08" x2="7.62" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="1.905" width="0.4064" layer="94"/>
<wire x1="7.62" y1="1.905" x2="-7.62" y2="1.905" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="-5.08" width="0.4064" layer="94"/>
<text x="-7.62" y="5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="2.54" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.905" y="-3.81" size="1.4224" layer="95">GND</text>
<pin name="IN" x="-12.7" y="0" length="middle" direction="in"/>
<pin name="GND" x="0" y="-10.16" visible="pad" length="middle" direction="in" rot="R90"/>
<pin name="OUT" x="12.7" y="0" length="middle" direction="pas" rot="R180"/>
</symbol>
<symbol name="TECLA">
<wire x1="-3.556" y1="1.016" x2="-1.016" y2="3.556" width="0.254" layer="94"/>
<wire x1="-1.016" y1="3.556" x2="-1.27" y2="3.81" width="0.254" layer="94"/>
<wire x1="-1.27" y1="3.81" x2="-3.81" y2="1.27" width="0.254" layer="94"/>
<wire x1="-3.81" y1="1.27" x2="-3.556" y2="1.016" width="0.254" layer="94"/>
<circle x="-2.54" y="0" radius="0.508" width="0.254" layer="94"/>
<circle x="0" y="2.54" radius="0.508" width="0.254" layer="94"/>
<text x="-7.62" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<pin name="P$1" x="-2.54" y="0" visible="off" length="point" direction="pas" swaplevel="1"/>
<pin name="P$2" x="0" y="2.54" visible="off" length="point" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="RES">
<wire x1="2.54" y1="0" x2="1.905" y2="1.016" width="0.254" layer="94"/>
<wire x1="1.905" y1="1.016" x2="0.635" y2="-1.016" width="0.254" layer="94"/>
<wire x1="0.635" y1="-1.016" x2="-0.635" y2="1.016" width="0.254" layer="94"/>
<wire x1="-0.635" y1="1.016" x2="-1.905" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-1.016" x2="-2.54" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-3.81" size="1.778" layer="95">&gt;NAME</text>
<text x="3.81" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="GND">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="VCC">
<wire x1="1.27" y1="-1.27" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<text x="-2.54" y="1.27" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="DIODE">
<wire x1="1.905" y1="0" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-1.905" y2="0" width="0.254" layer="94"/>
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<wire x1="-1.905" y1="2.667" x2="1.905" y2="2.667" width="0.254" layer="94"/>
<text x="2.54" y="0" size="1.778" layer="95">&gt;NAME</text>
<text x="1.27" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="0" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="K" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
</symbol>
<symbol name="XTAL">
<wire x1="-2.54" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.286" y1="1.778" x2="2.286" y2="0.762" width="0.254" layer="94"/>
<wire x1="2.286" y1="0.762" x2="-2.286" y2="0.762" width="0.254" layer="94"/>
<wire x1="-2.286" y1="0.762" x2="-2.286" y2="1.778" width="0.254" layer="94"/>
<wire x1="-2.286" y1="1.778" x2="2.286" y2="1.778" width="0.254" layer="94"/>
<text x="3.81" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="3.81" y="0" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P$1" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="P$2" x="0" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="OPTC1A">
<wire x1="0" y1="-2.54" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0.508" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0.508" y1="2.54" x2="0.508" y2="0.508" width="0.1524" layer="94"/>
<wire x1="0.508" y1="0.508" x2="0.508" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="0.508" y1="-0.508" x2="0.508" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0.508" y1="-2.54" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="0.508" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="0.508" y2="0.508" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-1.27" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="1.27" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-5.715" y1="1.524" x2="-3.81" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-3.81" y1="-1.016" x2="-1.905" y2="1.524" width="0.254" layer="94"/>
<wire x1="-1.905" y1="1.524" x2="-3.81" y2="1.524" width="0.254" layer="94"/>
<wire x1="-3.81" y1="1.524" x2="-5.715" y2="1.524" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-1.143" x2="-5.715" y2="-1.143" width="0.254" layer="94"/>
<wire x1="-3.81" y1="1.524" x2="-3.81" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="2.54" x2="-5.08" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-1.27" x2="-3.81" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-2.54" x2="-5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-6.35" y1="-3.81" x2="-6.35" y2="3.81" width="0.254" layer="94"/>
<wire x1="-6.35" y1="3.81" x2="3.81" y2="3.81" width="0.254" layer="94"/>
<wire x1="3.81" y1="3.81" x2="3.81" y2="-3.81" width="0.254" layer="94"/>
<wire x1="3.81" y1="-3.81" x2="-6.35" y2="-3.81" width="0.254" layer="94"/>
<text x="-6.35" y="4.445" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-6.35" size="1.778" layer="95">&gt;VALUE</text>
<pin name="A" x="-10.16" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="K" x="-10.16" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="E" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="C" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="JMP2">
<wire x1="2.54" y1="2.54" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="3.81" x2="1.27" y2="3.81" width="0.4064" layer="94"/>
<wire x1="1.27" y1="3.81" x2="1.27" y2="-1.27" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-1.27" x2="-1.27" y2="-1.27" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="3.81" width="0.4064" layer="94"/>
<circle x="0" y="2.54" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="0" radius="0.635" width="0.254" layer="94"/>
<text x="-1.27" y="5.08" size="1.778" layer="95">&gt;NAME</text>
<pin name="P$1" x="5.08" y="2.54" visible="pad" length="short" swaplevel="1" rot="R180"/>
<pin name="P$2" x="5.08" y="0" visible="pad" length="short" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="LEDBIKC">
<wire x1="0.635" y1="0" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="4.445" y2="0" width="0.254" layer="94"/>
<wire x1="4.445" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="0.635" y2="0" width="0.254" layer="94"/>
<wire x1="4.445" y1="-2.667" x2="0.635" y2="-2.667" width="0.254" layer="94"/>
<wire x1="3.175" y1="0.635" x2="4.445" y2="1.905" width="0.254" layer="94"/>
<wire x1="4.445" y1="1.905" x2="3.175" y2="1.905" width="0.254" layer="94"/>
<wire x1="4.445" y1="1.905" x2="4.445" y2="0.635" width="0.254" layer="94"/>
<wire x1="-4.445" y1="0" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-0.635" y2="0" width="0.254" layer="94"/>
<wire x1="-0.635" y1="0" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-4.445" y2="0" width="0.254" layer="94"/>
<wire x1="-0.635" y1="-2.667" x2="-4.445" y2="-2.667" width="0.254" layer="94"/>
<wire x1="-1.905" y1="0.635" x2="-0.635" y2="1.905" width="0.254" layer="94"/>
<wire x1="-0.635" y1="1.905" x2="-1.905" y2="1.905" width="0.254" layer="94"/>
<wire x1="-0.635" y1="1.905" x2="-0.635" y2="0.635" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="2.54" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-5.08" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<circle x="0" y="-5.08" radius="0.254" width="0.1524" layer="94"/>
<text x="-3.81" y="1.27" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="2.159" y="-1.524" size="1.27" layer="94" font="vector">R</text>
<text x="-2.921" y="-1.524" size="1.27" layer="94" font="vector">G</text>
<pin name="K" x="0" y="-7.62" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
<pin name="A1" x="2.54" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="A2" x="-2.54" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LETTER_L">
<description>Hoja Carta</description>
<gates>
<gate name="G$1" symbol="LETTER_L" x="0" y="0"/>
<gate name="G$2" symbol="DOCFIELD" x="160.02" y="0" addlevel="must"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PIC16F6*" prefix="IC">
<description>&lt;B&gt;PIC 16F627 - 628 - 648&lt;/B&gt; family</description>
<gates>
<gate name="G$1" symbol="16F62X" x="0" y="0"/>
</gates>
<devices>
<device name="P" package="DIL18">
<connects>
<connect gate="G$1" pin="AN0/RA0" pad="17"/>
<connect gate="G$1" pin="AN1/RA1" pad="18"/>
<connect gate="G$1" pin="CCP1/RB3" pad="9"/>
<connect gate="G$1" pin="CK/TX/RB2" pad="8"/>
<connect gate="G$1" pin="CLKIN/OSC1/RA7" pad="16"/>
<connect gate="G$1" pin="CLKOUT/OSC2/RA6" pad="15"/>
<connect gate="G$1" pin="CMP1/AN3/RA3" pad="2"/>
<connect gate="G$1" pin="CMP2/T0CKI/RA4" pad="3"/>
<connect gate="G$1" pin="DT/RX/RB1" pad="7"/>
<connect gate="G$1" pin="INT/RB0" pad="6"/>
<connect gate="G$1" pin="PGC/T1CKI/T1OSO/RB6" pad="12"/>
<connect gate="G$1" pin="PGD/T1OSI/RB7" pad="13"/>
<connect gate="G$1" pin="PGM/RB4" pad="10"/>
<connect gate="G$1" pin="RB5" pad="11"/>
<connect gate="G$1" pin="VDD" pad="14"/>
<connect gate="G$1" pin="VPP/MCLR/RA5" pad="4"/>
<connect gate="G$1" pin="VREF/AN2/RA2" pad="1"/>
<connect gate="G$1" pin="VSS" pad="5"/>
</connects>
<technologies>
<technology name="27"/>
<technology name="27A"/>
<technology name="28"/>
<technology name="28A"/>
<technology name="48A"/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAP" prefix="C" uservalue="yes">
<description>&lt;b&gt; Capacitor&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="CAP" x="5.08" y="0"/>
</gates>
<devices>
<device name="01" package="C01">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="02" package="C02">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="03" package="C03">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="04" package="C04">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="05" package="C05">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="06" package="C06">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="07" package="C07">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="08" package="C08">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="09" package="C09">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10" package="C10">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0402" package="C0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0504" package="C0504">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603" package="C0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="C0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1005" package="C1005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1206" package="C1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1210" package="C1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1310" package="C1310">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1608" package="C1608">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1812" package="C1812">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1825" package="C1825">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2012" package="C2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3216" package="C3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3225" package="C3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4532" package="C4532">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4564" package="C4564">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="11" package="C11">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="02W" package="C02W">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAPE" prefix="C" uservalue="yes">
<description>&lt;b&gt;Capacitor Pol. Elect.&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="CAPE" x="0" y="-2.54"/>
</gates>
<devices>
<device name="01" package="CP01">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="02" package="CP02">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="03" package="CP03">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="04" package="CP04">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="05" package="CP05">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="06" package="CP06">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="07" package="CP07">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="08" package="CP08">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="09" package="CP09">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10" package="CP10">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V01" package="CPV01">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V02" package="CPV02">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V03" package="CPV03">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V04" package="CPV04">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V05" package="CPV05">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V06" package="CPV06">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V07" package="CPV07">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V08" package="CPV08">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V09" package="CPV09">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="V10" package="CPV10">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SA" package="PANASONIC_A">
<connects>
<connect gate="G$1" pin="1" pad="+"/>
<connect gate="G$1" pin="2" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SB" package="PANASONIC_B">
<connects>
<connect gate="G$1" pin="1" pad="+"/>
<connect gate="G$1" pin="2" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SC" package="PANASONIC_C">
<connects>
<connect gate="G$1" pin="1" pad="+"/>
<connect gate="G$1" pin="2" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SD" package="PANASONIC_D">
<connects>
<connect gate="G$1" pin="1" pad="+"/>
<connect gate="G$1" pin="2" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SE" package="PANASONIC_E">
<connects>
<connect gate="G$1" pin="1" pad="+"/>
<connect gate="G$1" pin="2" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SF" package="PANASONIC_F">
<connects>
<connect gate="G$1" pin="1" pad="+"/>
<connect gate="G$1" pin="2" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SG" package="PANASONIC_G">
<connects>
<connect gate="G$1" pin="1" pad="+"/>
<connect gate="G$1" pin="2" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="12" package="CP12">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="16" package="CP16">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="15" package="CP15">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RES" prefix="R" uservalue="yes">
<description>&lt;b&gt;Resistor&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="RES" x="0" y="0"/>
</gates>
<devices>
<device name="01" package="R01">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="02" package="R02">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="03" package="R03">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="04" package="R04">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="05" package="R05">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="06" package="R06">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="07" package="R07">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="08" package="R08">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="09" package="R09">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10" package="R10">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="02V" package="R02V">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="03V" package="R03V">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0402" package="R0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603" package="R0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="R0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805W" package="R0805W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1206" package="R1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1206W" package="R1206W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1210" package="R1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1210W" package="R1210W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2010W" package="R2010W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2012" package="R2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2012W" package="R2012W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2512W" package="R2512W">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="11" package="R11">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="01A" package="R01A">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="02A" package="R02A">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="03A" package="R03A">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="04A" package="R04A">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY GND&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="GND" x="0" y="0"/>
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
<description>&lt;b&gt;SUPPLY VCC&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="XTALV300" prefix="XTAL" uservalue="yes">
<description>&lt;b&gt;Xtal Vert 300 mils&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="XTAL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HC49V">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="78XX" prefix="REG" uservalue="yes">
<description>&lt;b&gt;Positive Voltage Regulator&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="REGF" x="0" y="0"/>
</gates>
<devices>
<device name="S1" package="TO220B">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="OUT" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S2" package="TO220A">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="OUT" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="L" package="TO92A">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="3"/>
<connect gate="G$1" pin="OUT" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="T" package="T03">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="1"/>
<connect gate="G$1" pin="OUT" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LM" package="TO92C">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="IN" pad="3"/>
<connect gate="G$1" pin="OUT" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TEC" prefix="T" uservalue="yes">
<description>&lt;b&gt;TECLAS INDIVIDUALES&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="TECLA" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="1" package="TEC1L">
<connects>
<connect gate="G$1" pin="P$1" pad="C"/>
<connect gate="G$1" pin="P$2" pad="NO"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2" package="TEC2L">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3" package="TEC3L">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4" package="TEC4L">
<connects>
<connect gate="G$1" pin="P$1" pad="C"/>
<connect gate="G$1" pin="P$2" pad="NO"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5" package="TEC5L">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DIODE" prefix="D" uservalue="yes">
<description>&lt;b&gt;DIODES&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="DIODE" x="0" y="0"/>
</gates>
<devices>
<device name="01" package="D01">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="K" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="02" package="D02">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="K" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="03" package="D03">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="K" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="04" package="D04">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="K" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="05" package="D05">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="K" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SA" package="SMA">
<connects>
<connect gate="G$1" pin="A" pad="2"/>
<connect gate="G$1" pin="K" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SB" package="SMB">
<connects>
<connect gate="G$1" pin="A" pad="2"/>
<connect gate="G$1" pin="K" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SC" package="SMC">
<connects>
<connect gate="G$1" pin="A" pad="2"/>
<connect gate="G$1" pin="K" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S123" package="SOD123">
<connects>
<connect gate="G$1" pin="A" pad="2"/>
<connect gate="G$1" pin="K" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S323" package="SOD323">
<connects>
<connect gate="G$1" pin="A" pad="2"/>
<connect gate="G$1" pin="K" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="S523" package="SOD523">
<connects>
<connect gate="G$1" pin="A" pad="2"/>
<connect gate="G$1" pin="K" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="06" package="D06">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="K" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="07" package="D07">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="K" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="04A" package="D04A">
<connects>
<connect gate="G$1" pin="A" pad="P$1"/>
<connect gate="G$1" pin="K" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="OPTO2G" prefix="OC" uservalue="yes">
<description>&lt;b&gt;OPTOCOUPLER dual unit&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="OPTC1A" x="2.54" y="10.16" swaplevel="1"/>
<gate name="B" symbol="OPTC1A" x="2.54" y="-10.16" swaplevel="1"/>
</gates>
<devices>
<device name="" package="DIL08">
<connects>
<connect gate="A" pin="A" pad="1"/>
<connect gate="A" pin="C" pad="7"/>
<connect gate="A" pin="E" pad="8"/>
<connect gate="A" pin="K" pad="2"/>
<connect gate="B" pin="A" pad="4"/>
<connect gate="B" pin="C" pad="6"/>
<connect gate="B" pin="E" pad="5"/>
<connect gate="B" pin="K" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="F09" prefix="X" uservalue="yes">
<description>&lt;b&gt;D-SUB 9&lt;/b&gt; FEMALE</description>
<gates>
<gate name="G$1" symbol="F09" x="0" y="0"/>
</gates>
<devices>
<device name="D" package="F09D">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
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
<device name="H" package="F09H">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
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
<device name="HP" package="F09HP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
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
<device name="V" package="F09V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
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
<device name="VP" package="F09VP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
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
<device name="VB" package="F09VB">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
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
<device name="" package="F09">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
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
<deviceset name="JMP2" prefix="J" uservalue="yes">
<description>&lt;b&gt;Jumper 2xPin&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="JMP2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="JP2">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LEDBIKC" prefix="LB" uservalue="yes">
<description>&lt;b&gt;LED BIcolor KC&lt;/b&gt; 5mm</description>
<gates>
<gate name="G$1" symbol="LEDBIKC" x="0" y="2.54"/>
</gates>
<devices>
<device name="" package="LEDBKC">
<connects>
<connect gate="G$1" pin="A1" pad="R"/>
<connect gate="G$1" pin="A2" pad="G"/>
<connect gate="G$1" pin="K" pad="K"/>
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
<part name="U$1" library="AtaLib" deviceset="LETTER_L" device=""/>
<part name="IC1" library="AtaLib" deviceset="PIC16F6*" device="P" technology="28A"/>
<part name="C1" library="AtaLib" deviceset="CAP" device="02" value="22P"/>
<part name="C2" library="AtaLib" deviceset="CAP" device="02" value="22P"/>
<part name="X1" library="AtaLib" deviceset="F09" device="D"/>
<part name="REG1" library="AtaLib" deviceset="78XX" device="L" value="LM2936Z-5"/>
<part name="C4" library="AtaLib" deviceset="CAPE" device="01" value="1uF"/>
<part name="T1" library="AtaLib" deviceset="TEC" device="3"/>
<part name="R4" library="AtaLib" deviceset="RES" device="03" value="10"/>
<part name="R6" library="AtaLib" deviceset="RES" device="03" value="100"/>
<part name="GND1" library="AtaLib" deviceset="GND" device=""/>
<part name="P+1" library="AtaLib" deviceset="VCC" device=""/>
<part name="GND3" library="AtaLib" deviceset="GND" device=""/>
<part name="P+3" library="AtaLib" deviceset="VCC" device=""/>
<part name="GND4" library="AtaLib" deviceset="GND" device=""/>
<part name="GND5" library="AtaLib" deviceset="GND" device=""/>
<part name="C5" library="AtaLib" deviceset="CAPE" device="01" value="1uF"/>
<part name="R5" library="AtaLib" deviceset="RES" device="03" value="1K"/>
<part name="D1" library="AtaLib" deviceset="DIODE" device="03" value="1N4148"/>
<part name="GND6" library="AtaLib" deviceset="GND" device=""/>
<part name="P+4" library="AtaLib" deviceset="VCC" device=""/>
<part name="R2" library="AtaLib" deviceset="RES" device="03" value="4K7"/>
<part name="R1" library="AtaLib" deviceset="RES" device="03" value="4K7"/>
<part name="R3" library="AtaLib" deviceset="RES" device="03" value="10K"/>
<part name="XTAL1" library="AtaLib" deviceset="XTALV300" device="" value="20MHz"/>
<part name="P+6" library="AtaLib" deviceset="VCC" device=""/>
<part name="C3" library="AtaLib" deviceset="CAPE" device="01" value="10uF"/>
<part name="OC1" library="AtaLib" deviceset="OPTO2G" device="" value="MCT6"/>
<part name="R9" library="AtaLib" deviceset="RES" device="03" value="750"/>
<part name="R7" library="AtaLib" deviceset="RES" device="03" value="1K5"/>
<part name="R10" library="AtaLib" deviceset="RES" device="03" value="1K"/>
<part name="R8" library="AtaLib" deviceset="RES" device="03" value="1K5"/>
<part name="GND2" library="AtaLib" deviceset="GND" device=""/>
<part name="J1" library="AtaLib" deviceset="JMP2" device=""/>
<part name="J2" library="AtaLib" deviceset="JMP2" device=""/>
<part name="J3" library="AtaLib" deviceset="JMP2" device=""/>
<part name="LB1" library="AtaLib" deviceset="LEDBIKC" device=""/>
<part name="GND7" library="AtaLib" deviceset="GND" device=""/>
<part name="D2" library="AtaLib" deviceset="DIODE" device="03" value="1N4148"/>
<part name="D3" library="AtaLib" deviceset="DIODE" device="03" value="1N4148"/>
<part name="P+2" library="AtaLib" deviceset="VCC" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="223.52" y1="114.3" x2="223.52" y2="106.68" width="0.1524" layer="94"/>
<wire x1="223.52" y1="106.68" x2="238.76" y2="106.68" width="0.1524" layer="94"/>
<wire x1="238.76" y1="110.49" x2="236.22" y2="110.49" width="0.1524" layer="94"/>
<wire x1="236.22" y1="110.49" x2="236.22" y2="114.3" width="0.1524" layer="94"/>
<wire x1="222.25" y1="113.03" x2="223.52" y2="114.3" width="0.1524" layer="94"/>
<wire x1="223.52" y1="114.3" x2="224.79" y2="113.03" width="0.1524" layer="94"/>
<wire x1="234.95" y1="113.03" x2="236.22" y2="114.3" width="0.1524" layer="94"/>
<wire x1="236.22" y1="114.3" x2="237.49" y2="113.03" width="0.1524" layer="94"/>
<wire x1="240.03" y1="110.49" x2="242.57" y2="110.49" width="0.1524" layer="94"/>
<wire x1="240.03" y1="106.68" x2="242.57" y2="106.68" width="0.1524" layer="94"/>
<wire x1="241.3" y1="107.95" x2="241.3" y2="105.41" width="0.1524" layer="94"/>
<wire x1="109.22" y1="144.78" x2="104.14" y2="144.78" width="0.1524" layer="94"/>
<wire x1="109.22" y1="142.24" x2="104.14" y2="142.24" width="0.1524" layer="94"/>
<wire x1="104.775" y1="142.875" x2="104.14" y2="142.24" width="0.1524" layer="94"/>
<wire x1="104.14" y1="142.24" x2="104.775" y2="141.605" width="0.1524" layer="94"/>
<wire x1="104.775" y1="145.415" x2="104.14" y2="144.78" width="0.1524" layer="94"/>
<wire x1="104.14" y1="144.78" x2="104.775" y2="144.145" width="0.1524" layer="94"/>
<text x="167.64" y="182.88" size="1.778" layer="94">EXTERNAL</text>
<text x="167.64" y="180.34" size="1.778" layer="94">RST</text>
<text x="191.77" y="10.16" size="2.54" layer="94">PIC-INSIDER</text>
<text x="226.06" y="20.32" size="1.6764" layer="94">ATANASIOS MELIMOPOULOS</text>
<text x="243.84" y="107.95" size="1.778" layer="94">9VBAT</text>
<text x="111.76" y="142.24" size="1.778" layer="94">GND EXT</text>
<text x="111.76" y="144.78" size="1.778" layer="94">INS PROBE</text>
<text x="132.08" y="127" size="1.778" layer="94">PC ISOLATION:</text>
<text x="154.94" y="127" size="1.778" layer="94">J2-J3 -&gt; OFF</text>
<text x="132.08" y="123.19" size="1.778" layer="94">POWER INPUT:</text>
<text x="154.94" y="123.19" size="1.778" layer="94">VIA 9V BATTERY J2-2 (+)   J3-2 (-)</text>
<text x="132.08" y="115.57" size="1.778" layer="94">PC POWERED:</text>
<text x="154.94" y="115.57" size="1.778" layer="94">J2-J3 -&gt; ON</text>
<text x="111.76" y="148.59" size="1.778" layer="94">TARGET</text>
<text x="160.02" y="78.74" size="1.778" layer="94">R3:    10K  1/4W  5%</text>
<text x="160.02" y="71.12" size="1.778" layer="94">R6:    100  1/4W  5%</text>
<text x="160.02" y="81.28" size="1.778" layer="94">R1-2:  4K7  1/4W  5% (DEPENDS ON LED INTENSITY)</text>
<text x="160.02" y="73.66" size="1.778" layer="94">R5:     1K  1/4W  5%</text>
<text x="160.02" y="66.04" size="1.778" layer="94">R9:    750  1/4W  5%</text>
<text x="160.02" y="68.58" size="1.778" layer="94">R7-8:   1K5 1/4W  5%</text>
<text x="160.02" y="63.5" size="1.778" layer="94">R10:    1K  1/4W  5%</text>
<text x="160.02" y="58.42" size="1.778" layer="94">C1-2:   22pF CERAMIC</text>
<text x="160.02" y="55.88" size="1.778" layer="94">C3-4:   10uF/16V TANTALUM</text>
<text x="160.02" y="45.72" size="1.778" layer="94">REG1:   LM2936Z-5 (TO-92)</text>
<text x="200.66" y="45.72" size="1.778" layer="94">OR 78L05</text>
<text x="160.02" y="43.18" size="1.778" layer="94">OC1: MCT6 DUAL OPTOCOUPLER (DIP8)</text>
<text x="160.02" y="50.8" size="1.778" layer="94">IC1:    16F628(A) DIP 18 MPU</text>
<text x="160.02" y="48.26" size="1.778" layer="94">XTAL1:  XTAL 20MHz</text>
<text x="160.02" y="34.29" size="1.778" layer="94">J1-2-3:  2 PIN JUMPER PIN HEADER</text>
<text x="160.02" y="31.75" size="1.778" layer="94">1X 9-VOLT BATTERY HOLDER (DIGIKEY 1294K-ND)</text>
<text x="160.02" y="26.67" size="1.778" layer="94">LB1: COMMON CATHODE GREEN/RED BICOLOR LED OR 2 SINGLE LEDS</text>
<text x="160.02" y="36.83" size="1.778" layer="94">X1:  FEMALE DB9 CONNECTOR</text>
<text x="200.66" y="185.42" size="1.778" layer="94">(2) -------------&gt; (2) RXD</text>
<text x="200.66" y="182.88" size="1.778" layer="94">(3) &lt;------------- (3) TXD</text>
<text x="200.66" y="180.34" size="1.778" layer="94">(4) &lt;------------- (4) DTR</text>
<text x="200.66" y="177.8" size="1.778" layer="94">(5) -------------- (5) GND</text>
<text x="198.12" y="193.04" size="1.778" layer="94">INSIDER ----------- PC COMM</text>
<text x="201.93" y="189.23" size="1.778" layer="94">DB9M ---CABLE--- DB9F</text>
<text x="238.76" y="137.16" size="1.778" layer="94">DB9F</text>
<text x="166.37" y="20.32" size="2.54" layer="94">pic.insider@gmail.com</text>
<text x="160.02" y="29.21" size="1.778" layer="94">T1:  PCB N.O PUSH BUTTON (DIGIKEY EG4369-ND)</text>
<text x="160.02" y="60.96" size="1.778" layer="94">D1-3:   1N4148</text>
<text x="160.02" y="53.34" size="1.778" layer="94">C5:      1uF/16V TANTALUM</text>
<text x="160.02" y="76.2" size="1.778" layer="94">R4:     10  1/4W  5%</text>
<text x="201.93" y="140.97" size="1.778" layer="94">(MT62)</text>
<text x="215.9" y="142.24" size="1.778" layer="94">(2K7)</text>
<text x="196.85" y="167.64" size="1.778" layer="94">(1K5)</text>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="0" y="0"/>
<instance part="U$1" gate="G$2" x="160.02" y="0"/>
<instance part="IC1" gate="G$1" x="48.26" y="165.1"/>
<instance part="C1" gate="G$1" x="114.3" y="162.56" smashed="yes" rot="R90">
<attribute name="NAME" x="114.3" y="172.72" size="1.778" layer="95"/>
<attribute name="VALUE" x="118.11" y="172.72" size="1.778" layer="96"/>
</instance>
<instance part="C2" gate="G$1" x="114.3" y="170.18" smashed="yes" rot="R90">
<attribute name="NAME" x="114.3" y="175.26" size="1.778" layer="95"/>
<attribute name="VALUE" x="118.11" y="175.26" size="1.778" layer="96"/>
</instance>
<instance part="X1" gate="G$1" x="241.3" y="149.86"/>
<instance part="REG1" gate="G$1" x="200.66" y="104.14" rot="MR0"/>
<instance part="C4" gate="G$1" x="17.78" y="175.26"/>
<instance part="T1" gate="G$1" x="162.56" y="172.72" smashed="yes" rot="R270">
<attribute name="NAME" x="167.64" y="175.26" size="1.778" layer="95"/>
</instance>
<instance part="R4" gate="G$1" x="81.28" y="144.78" smashed="yes" rot="R180">
<attribute name="NAME" x="76.2" y="147.32" size="1.778" layer="95"/>
<attribute name="VALUE" x="81.28" y="147.32" size="1.778" layer="96"/>
</instance>
<instance part="R6" gate="G$1" x="139.7" y="180.34" smashed="yes" rot="R180">
<attribute name="NAME" x="135.89" y="176.53" size="1.778" layer="95"/>
<attribute name="VALUE" x="140.97" y="176.53" size="1.778" layer="96"/>
</instance>
<instance part="GND1" gate="G$1" x="17.78" y="160.02"/>
<instance part="P+1" gate="G$1" x="17.78" y="187.96"/>
<instance part="GND3" gate="G$1" x="91.44" y="134.62"/>
<instance part="P+3" gate="G$1" x="182.88" y="109.22" rot="MR0"/>
<instance part="GND4" gate="G$1" x="223.52" y="91.44" rot="MR0"/>
<instance part="GND5" gate="G$1" x="121.92" y="160.02"/>
<instance part="C5" gate="G$1" x="154.94" y="175.26" smashed="yes">
<attribute name="NAME" x="147.32" y="172.72" size="1.778" layer="95"/>
<attribute name="VALUE" x="147.32" y="170.18" size="1.778" layer="96"/>
</instance>
<instance part="R5" gate="G$1" x="154.94" y="185.42" smashed="yes" rot="R90">
<attribute name="NAME" x="157.48" y="185.42" size="1.778" layer="95"/>
<attribute name="VALUE" x="157.48" y="182.88" size="1.778" layer="96"/>
</instance>
<instance part="D1" gate="G$1" x="149.86" y="185.42" smashed="yes" rot="MR0">
<attribute name="NAME" x="143.51" y="185.42" size="1.778" layer="95"/>
</instance>
<instance part="GND6" gate="G$1" x="154.94" y="167.64"/>
<instance part="P+4" gate="G$1" x="154.94" y="193.04"/>
<instance part="R2" gate="G$1" x="73.66" y="185.42" smashed="yes">
<attribute name="NAME" x="69.85" y="187.96" size="1.778" layer="95"/>
<attribute name="VALUE" x="74.93" y="187.96" size="1.778" layer="96"/>
</instance>
<instance part="R1" gate="G$1" x="73.66" y="182.88" smashed="yes">
<attribute name="NAME" x="69.85" y="179.07" size="1.778" layer="95"/>
<attribute name="VALUE" x="74.93" y="179.07" size="1.778" layer="96"/>
</instance>
<instance part="R3" gate="G$1" x="182.88" y="99.06" smashed="yes" rot="MR90">
<attribute name="NAME" x="185.42" y="99.06" size="1.778" layer="95"/>
<attribute name="VALUE" x="185.42" y="96.52" size="1.778" layer="96"/>
</instance>
<instance part="XTAL1" gate="G$1" x="106.68" y="165.1" smashed="yes">
<attribute name="NAME" x="102.87" y="175.26" size="1.778" layer="95"/>
<attribute name="VALUE" x="102.87" y="172.72" size="1.778" layer="96"/>
</instance>
<instance part="P+6" gate="G$1" x="187.96" y="182.88" rot="MR0"/>
<instance part="C3" gate="G$1" x="223.52" y="99.06" smashed="yes">
<attribute name="NAME" x="214.63" y="99.06" size="1.778" layer="95"/>
<attribute name="VALUE" x="214.63" y="96.52" size="1.778" layer="96"/>
</instance>
<instance part="OC1" gate="A" x="200.66" y="160.02" smashed="yes">
<attribute name="NAME" x="194.31" y="164.465" size="1.778" layer="95"/>
</instance>
<instance part="OC1" gate="B" x="198.12" y="147.32" smashed="yes" rot="MR0">
<attribute name="NAME" x="194.31" y="151.765" size="1.778" layer="95"/>
<attribute name="VALUE" x="194.31" y="140.97" size="1.778" layer="95"/>
</instance>
<instance part="R9" gate="G$1" x="187.96" y="170.18" smashed="yes" rot="R270">
<attribute name="NAME" x="190.5" y="170.18" size="1.778" layer="95"/>
<attribute name="VALUE" x="190.5" y="167.64" size="1.778" layer="96"/>
</instance>
<instance part="R7" gate="G$1" x="218.44" y="152.4" smashed="yes">
<attribute name="NAME" x="213.36" y="154.305" size="1.778" layer="95"/>
<attribute name="VALUE" x="219.71" y="154.305" size="1.778" layer="96"/>
</instance>
<instance part="R10" gate="G$1" x="182.88" y="170.18" smashed="yes" rot="R270">
<attribute name="NAME" x="175.26" y="170.18" size="1.778" layer="95"/>
<attribute name="VALUE" x="175.26" y="167.64" size="1.778" layer="96"/>
</instance>
<instance part="R8" gate="G$1" x="218.44" y="149.86" smashed="yes">
<attribute name="NAME" x="213.36" y="146.05" size="1.778" layer="95"/>
<attribute name="VALUE" x="219.71" y="146.05" size="1.778" layer="96"/>
</instance>
<instance part="GND2" gate="G$1" x="182.88" y="142.24"/>
<instance part="J1" gate="G$1" x="101.6" y="142.24" rot="MR0"/>
<instance part="J2" gate="G$1" x="223.52" y="116.84"/>
<instance part="J3" gate="G$1" x="236.22" y="116.84" rot="MR0"/>
<instance part="LB1" gate="G$1" x="86.36" y="185.42" smashed="yes" rot="MR270">
<attribute name="NAME" x="85.09" y="191.77" size="1.778" layer="95"/>
</instance>
<instance part="GND7" gate="G$1" x="93.98" y="177.8"/>
<instance part="D2" gate="G$1" x="91.44" y="149.86" smashed="yes" rot="MR0">
<attribute name="NAME" x="85.09" y="152.4" size="1.778" layer="95"/>
</instance>
<instance part="D3" gate="G$1" x="91.44" y="139.7" smashed="yes" rot="MR0">
<attribute name="NAME" x="85.09" y="137.16" size="1.778" layer="95"/>
</instance>
<instance part="P+2" gate="G$1" x="91.44" y="160.02"/>
</instances>
<busses>
</busses>
<nets>
<net name="RXD" class="0">
<segment>
<wire x1="66.04" y1="160.02" x2="73.66" y2="160.02" width="0.1524" layer="91"/>
<label x="76.2" y="160.02" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="DT/RX/RB1"/>
</segment>
<segment>
<wire x1="160.02" y1="149.86" x2="182.88" y2="149.86" width="0.1524" layer="91"/>
<wire x1="182.88" y1="149.86" x2="190.5" y2="149.86" width="0.1524" layer="91"/>
<wire x1="182.88" y1="165.1" x2="182.88" y2="149.86" width="0.1524" layer="91"/>
<junction x="182.88" y="149.86"/>
<label x="154.94" y="149.86" size="1.778" layer="95"/>
<pinref part="OC1" gate="B" pin="C"/>
<pinref part="R10" gate="G$1" pin="1"/>
</segment>
</net>
<net name="TXD" class="0">
<segment>
<wire x1="66.04" y1="157.48" x2="73.66" y2="157.48" width="0.1524" layer="91"/>
<label x="76.2" y="157.48" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="CK/TX/RB2"/>
</segment>
<segment>
<wire x1="160.02" y1="157.48" x2="190.5" y2="157.48" width="0.1524" layer="91"/>
<label x="154.94" y="157.48" size="1.778" layer="95"/>
<pinref part="OC1" gate="A" pin="K"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<wire x1="17.78" y1="162.56" x2="25.4" y2="162.56" width="0.1524" layer="91"/>
<wire x1="17.78" y1="162.56" x2="17.78" y2="170.18" width="0.1524" layer="91"/>
<junction x="17.78" y="162.56"/>
<pinref part="IC1" gate="G$1" pin="VSS"/>
<pinref part="GND1" gate="G$1" pin="GND"/>
<pinref part="C4" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="96.52" y1="142.24" x2="96.52" y2="137.16" width="0.1524" layer="91"/>
<wire x1="96.52" y1="137.16" x2="91.44" y2="137.16" width="0.1524" layer="91"/>
<junction x="91.44" y="137.16"/>
<pinref part="GND3" gate="G$1" pin="GND"/>
<pinref part="J1" gate="G$1" pin="P$2"/>
<pinref part="D3" gate="G$1" pin="A"/>
</segment>
<segment>
<wire x1="121.92" y1="162.56" x2="121.92" y2="170.18" width="0.1524" layer="91"/>
<wire x1="121.92" y1="170.18" x2="119.38" y2="170.18" width="0.1524" layer="91"/>
<wire x1="119.38" y1="162.56" x2="121.92" y2="162.56" width="0.1524" layer="91"/>
<junction x="121.92" y="162.56"/>
<pinref part="GND5" gate="G$1" pin="GND"/>
<pinref part="C2" gate="G$1" pin="2"/>
<pinref part="C1" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="165.1" y1="172.72" x2="165.1" y2="170.18" width="0.1524" layer="91"/>
<wire x1="165.1" y1="170.18" x2="154.94" y2="170.18" width="0.1524" layer="91"/>
<junction x="154.94" y="170.18"/>
<pinref part="T1" gate="G$1" pin="P$2"/>
<pinref part="GND6" gate="G$1" pin="GND"/>
<pinref part="C5" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="223.52" y1="93.98" x2="200.66" y2="93.98" width="0.1524" layer="91"/>
<wire x1="200.66" y1="93.98" x2="182.88" y2="93.98" width="0.1524" layer="91"/>
<wire x1="231.14" y1="93.98" x2="223.52" y2="93.98" width="0.1524" layer="91"/>
<wire x1="231.14" y1="93.98" x2="231.14" y2="116.84" width="0.1524" layer="91"/>
<junction x="223.52" y="93.98"/>
<junction x="200.66" y="93.98"/>
<pinref part="GND4" gate="G$1" pin="GND"/>
<pinref part="C3" gate="G$1" pin="2"/>
<pinref part="REG1" gate="G$1" pin="GND"/>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="J3" gate="G$1" pin="P$2"/>
</segment>
<segment>
<wire x1="190.5" y1="144.78" x2="182.88" y2="144.78" width="0.1524" layer="91"/>
<pinref part="OC1" gate="B" pin="E"/>
<pinref part="GND2" gate="G$1" pin="GND"/>
</segment>
<segment>
<wire x1="93.98" y1="180.34" x2="93.98" y2="185.42" width="0.1524" layer="91"/>
<pinref part="GND7" gate="G$1" pin="GND"/>
<pinref part="LB1" gate="G$1" pin="K"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<wire x1="17.78" y1="185.42" x2="25.4" y2="185.42" width="0.1524" layer="91"/>
<wire x1="17.78" y1="185.42" x2="17.78" y2="177.8" width="0.1524" layer="91"/>
<junction x="17.78" y="185.42"/>
<pinref part="IC1" gate="G$1" pin="VDD"/>
<pinref part="P+1" gate="G$1" pin="VCC"/>
<pinref part="C4" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="154.94" y1="190.5" x2="149.86" y2="190.5" width="0.1524" layer="91"/>
<junction x="154.94" y="190.5"/>
<pinref part="R5" gate="G$1" pin="1"/>
<pinref part="P+4" gate="G$1" pin="VCC"/>
<pinref part="D1" gate="G$1" pin="K"/>
</segment>
<segment>
<wire x1="182.88" y1="106.68" x2="182.88" y2="104.14" width="0.1524" layer="91"/>
<wire x1="187.96" y1="104.14" x2="182.88" y2="104.14" width="0.1524" layer="91"/>
<junction x="182.88" y="104.14"/>
<pinref part="P+3" gate="G$1" pin="VCC"/>
<pinref part="R3" gate="G$1" pin="1"/>
<pinref part="REG1" gate="G$1" pin="OUT"/>
</segment>
<segment>
<wire x1="187.96" y1="175.26" x2="187.96" y2="177.8" width="0.1524" layer="91"/>
<wire x1="187.96" y1="177.8" x2="187.96" y2="180.34" width="0.1524" layer="91"/>
<wire x1="187.96" y1="177.8" x2="182.88" y2="177.8" width="0.1524" layer="91"/>
<wire x1="182.88" y1="177.8" x2="182.88" y2="175.26" width="0.1524" layer="91"/>
<junction x="187.96" y="177.8"/>
<pinref part="R9" gate="G$1" pin="2"/>
<pinref part="P+6" gate="G$1" pin="VCC"/>
<pinref part="R10" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="91.44" y1="154.94" x2="91.44" y2="157.48" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="K"/>
<pinref part="P+2" gate="G$1" pin="VCC"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<wire x1="91.44" y1="144.78" x2="86.36" y2="144.78" width="0.1524" layer="91"/>
<wire x1="96.52" y1="144.78" x2="91.44" y2="144.78" width="0.1524" layer="91"/>
<wire x1="91.44" y1="144.78" x2="91.44" y2="147.32" width="0.1524" layer="91"/>
<junction x="91.44" y="144.78"/>
<pinref part="R4" gate="G$1" pin="2"/>
<pinref part="J1" gate="G$1" pin="P$1"/>
<pinref part="D2" gate="G$1" pin="A"/>
<pinref part="D3" gate="G$1" pin="K"/>
</segment>
</net>
<net name="INS" class="0">
<segment>
<wire x1="66.04" y1="144.78" x2="71.12" y2="144.78" width="0.1524" layer="91"/>
<wire x1="71.12" y1="144.78" x2="76.2" y2="144.78" width="0.1524" layer="91"/>
<wire x1="66.04" y1="147.32" x2="71.12" y2="147.32" width="0.1524" layer="91"/>
<wire x1="71.12" y1="147.32" x2="71.12" y2="144.78" width="0.1524" layer="91"/>
<junction x="71.12" y="144.78"/>
<label x="68.58" y="140.97" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="PGD/T1OSI/RB7"/>
<pinref part="R4" gate="G$1" pin="1"/>
<pinref part="IC1" gate="G$1" pin="PGC/T1CKI/T1OSO/RB6"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<wire x1="66.04" y1="170.18" x2="106.68" y2="170.18" width="0.1524" layer="91"/>
<wire x1="106.68" y1="170.18" x2="111.76" y2="170.18" width="0.1524" layer="91"/>
<junction x="106.68" y="170.18"/>
<pinref part="IC1" gate="G$1" pin="CLKOUT/OSC2/RA6"/>
<pinref part="C2" gate="G$1" pin="1"/>
<pinref part="XTAL1" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<wire x1="66.04" y1="167.64" x2="99.06" y2="167.64" width="0.1524" layer="91"/>
<wire x1="99.06" y1="167.64" x2="99.06" y2="162.56" width="0.1524" layer="91"/>
<wire x1="99.06" y1="162.56" x2="106.68" y2="162.56" width="0.1524" layer="91"/>
<wire x1="106.68" y1="162.56" x2="111.76" y2="162.56" width="0.1524" layer="91"/>
<junction x="106.68" y="162.56"/>
<pinref part="IC1" gate="G$1" pin="CLKIN/OSC1/RA7"/>
<pinref part="C1" gate="G$1" pin="1"/>
<pinref part="XTAL1" gate="G$1" pin="P$2"/>
</segment>
</net>
<net name="RST" class="0">
<segment>
<wire x1="99.06" y1="180.34" x2="134.62" y2="180.34" width="0.1524" layer="91"/>
<wire x1="66.04" y1="172.72" x2="99.06" y2="172.72" width="0.1524" layer="91"/>
<wire x1="99.06" y1="172.72" x2="99.06" y2="180.34" width="0.1524" layer="91"/>
<label x="69.85" y="173.99" size="1.778" layer="95"/>
<pinref part="R6" gate="G$1" pin="1"/>
<pinref part="IC1" gate="G$1" pin="VPP/MCLR/RA5"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<wire x1="66.04" y1="185.42" x2="68.58" y2="185.42" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="AN0/RA0"/>
<pinref part="R2" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<wire x1="68.58" y1="182.88" x2="66.04" y2="182.88" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
<pinref part="IC1" gate="G$1" pin="AN1/RA1"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<wire x1="213.36" y1="104.14" x2="223.52" y2="104.14" width="0.1524" layer="91"/>
<wire x1="223.52" y1="101.6" x2="223.52" y2="104.14" width="0.1524" layer="91"/>
<wire x1="228.6" y1="104.14" x2="223.52" y2="104.14" width="0.1524" layer="91"/>
<wire x1="228.6" y1="104.14" x2="228.6" y2="116.84" width="0.1524" layer="91"/>
<junction x="223.52" y="104.14"/>
<pinref part="REG1" gate="G$1" pin="IN"/>
<pinref part="C3" gate="G$1" pin="1"/>
<pinref part="J2" gate="G$1" pin="P$2"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<wire x1="233.68" y1="144.78" x2="231.14" y2="144.78" width="0.1524" layer="91"/>
<wire x1="231.14" y1="144.78" x2="210.82" y2="144.78" width="0.1524" layer="91"/>
<wire x1="210.82" y1="144.78" x2="208.28" y2="144.78" width="0.1524" layer="91"/>
<wire x1="210.82" y1="144.78" x2="210.82" y2="152.4" width="0.1524" layer="91"/>
<wire x1="210.82" y1="152.4" x2="213.36" y2="152.4" width="0.1524" layer="91"/>
<wire x1="231.14" y1="119.38" x2="231.14" y2="144.78" width="0.1524" layer="91"/>
<junction x="210.82" y="144.78"/>
<junction x="231.14" y="144.78"/>
<pinref part="X1" gate="G$1" pin="5"/>
<pinref part="OC1" gate="B" pin="K"/>
<pinref part="R7" gate="G$1" pin="2"/>
<pinref part="J3" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<wire x1="223.52" y1="152.4" x2="226.06" y2="152.4" width="0.1524" layer="91"/>
<wire x1="226.06" y1="152.4" x2="226.06" y2="157.48" width="0.1524" layer="91"/>
<wire x1="226.06" y1="157.48" x2="208.28" y2="157.48" width="0.1524" layer="91"/>
<wire x1="233.68" y1="152.4" x2="226.06" y2="152.4" width="0.1524" layer="91"/>
<junction x="226.06" y="152.4"/>
<pinref part="R7" gate="G$1" pin="1"/>
<pinref part="OC1" gate="A" pin="E"/>
<pinref part="X1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="233.68" y1="147.32" x2="228.6" y2="147.32" width="0.1524" layer="91"/>
<wire x1="228.6" y1="147.32" x2="228.6" y2="162.56" width="0.1524" layer="91"/>
<wire x1="228.6" y1="162.56" x2="208.28" y2="162.56" width="0.1524" layer="91"/>
<wire x1="228.6" y1="147.32" x2="228.6" y2="119.38" width="0.1524" layer="91"/>
<junction x="228.6" y="147.32"/>
<pinref part="X1" gate="G$1" pin="4"/>
<pinref part="OC1" gate="A" pin="C"/>
<pinref part="J2" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="213.36" y1="149.86" x2="208.28" y2="149.86" width="0.1524" layer="91"/>
<pinref part="R8" gate="G$1" pin="2"/>
<pinref part="OC1" gate="B" pin="A"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="190.5" y1="162.56" x2="187.96" y2="162.56" width="0.1524" layer="91"/>
<wire x1="187.96" y1="162.56" x2="187.96" y2="165.1" width="0.1524" layer="91"/>
<pinref part="OC1" gate="A" pin="A"/>
<pinref part="R9" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="233.68" y1="149.86" x2="223.52" y2="149.86" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="3"/>
<pinref part="R8" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<wire x1="162.56" y1="180.34" x2="162.56" y2="175.26" width="0.1524" layer="91"/>
<wire x1="154.94" y1="177.8" x2="154.94" y2="180.34" width="0.1524" layer="91"/>
<wire x1="154.94" y1="180.34" x2="162.56" y2="180.34" width="0.1524" layer="91"/>
<wire x1="149.86" y1="180.34" x2="154.94" y2="180.34" width="0.1524" layer="91"/>
<wire x1="149.86" y1="180.34" x2="149.86" y2="182.88" width="0.1524" layer="91"/>
<wire x1="144.78" y1="180.34" x2="149.86" y2="180.34" width="0.1524" layer="91"/>
<junction x="154.94" y="180.34"/>
<junction x="149.86" y="180.34"/>
<pinref part="D1" gate="G$1" pin="A"/>
<pinref part="T1" gate="G$1" pin="P$1"/>
<pinref part="C5" gate="G$1" pin="1"/>
<pinref part="R5" gate="G$1" pin="2"/>
<pinref part="R6" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<wire x1="78.74" y1="182.88" x2="81.28" y2="182.88" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<pinref part="LB1" gate="G$1" pin="A1"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<wire x1="78.74" y1="185.42" x2="81.28" y2="185.42" width="0.1524" layer="91"/>
<wire x1="81.28" y1="185.42" x2="81.28" y2="187.96" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<pinref part="LB1" gate="G$1" pin="A2"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
