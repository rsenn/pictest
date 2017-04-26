<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.05" unitdist="inch" unit="inch" style="lines" multiple="2" display="yes" altdistance="0.025" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="yes" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="yes" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="yes" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="yes" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="yes" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="yes" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="yes" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="yes" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="yes" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="yes" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="yes" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="yes" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="yes" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="yes" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="yes" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="yes" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="yes" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="yes" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="yes" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="yes" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="yes" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="yes" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="yes" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="yes" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="yes" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="yes" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="yes" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="yes" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="yes" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="yes" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="yes" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="yes" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="yes" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="yes" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="yes" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="yes" active="no"/>
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
<layer number="100" name="LCD" color="13" fill="1" visible="no" active="yes"/>
<layer number="250" name="trash" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="lcd">
<packages>
<package name="TDSX1150">
<wire x1="-3.61156875" y1="4.845771875" x2="3.611571875" y2="4.845771875" width="0.127" layer="21"/>
<wire x1="3.611571875" y1="4.845771875" x2="3.611571875" y2="-4.84576875" width="0.127" layer="21"/>
<wire x1="3.611571875" y1="-4.84576875" x2="-3.61156875" y2="-4.84576875" width="0.127" layer="21"/>
<wire x1="-3.61156875" y1="-4.84576875" x2="-3.61156875" y2="4.845771875" width="0.127" layer="21"/>
<wire x1="-1.6152875" y1="-0.489996875" x2="-2.34120625" y2="-0.0907375" width="0.127" layer="21"/>
<wire x1="-2.34120625" y1="-0.0907375" x2="-2.77675625" y2="-2.631478125" width="0.127" layer="21"/>
<wire x1="-2.77675625" y1="-2.631478125" x2="-2.5589875" y2="-2.921846875" width="0.127" layer="21"/>
<wire x1="-2.5589875" y1="-2.921846875" x2="-1.941946875" y2="-2.41391875" width="0.127" layer="21"/>
<wire x1="-1.941946875" y1="-2.41391875" x2="-1.6152875" y2="-0.489996875" width="0.127" layer="21"/>
<wire x1="2.55898125" y1="2.922071875" x2="1.97824375" y2="2.413921875" width="0.127" layer="21"/>
<wire x1="1.97824375" y1="2.413921875" x2="1.6513625" y2="0.490221875" width="0.127" layer="21"/>
<wire x1="1.6513625" y1="0.490221875" x2="2.341203125" y2="0.09074375" width="0.127" layer="21"/>
<wire x1="2.341203125" y1="0.09074375" x2="2.813053125" y2="2.631703125" width="0.127" layer="21"/>
<wire x1="2.813053125" y1="2.631703125" x2="2.55898125" y2="2.922071875" width="0.127" layer="21"/>
<wire x1="2.3049125" y1="-2.667778125" x2="2.195803125" y2="-2.77666875" width="0.127" layer="21"/>
<wire x1="2.195803125" y1="-2.77666875" x2="2.12343125" y2="-2.88555625" width="0.127" layer="21"/>
<wire x1="2.12343125" y1="-2.88555625" x2="2.12343125" y2="-3.175928125" width="0.127" layer="21"/>
<wire x1="2.12343125" y1="-3.175928125" x2="2.195803125" y2="-3.28481875" width="0.127" layer="21"/>
<wire x1="2.195803125" y1="-3.28481875" x2="2.3049125" y2="-3.39391875" width="0.127" layer="21"/>
<wire x1="2.3049125" y1="-3.39391875" x2="2.41379375" y2="-3.43021875" width="0.127" layer="21"/>
<wire x1="2.41379375" y1="-3.43021875" x2="2.55898125" y2="-3.46650625" width="0.127" layer="21"/>
<wire x1="2.55898125" y1="-3.46650625" x2="2.667871875" y2="-3.43021875" width="0.127" layer="21"/>
<wire x1="2.667871875" y1="-3.43021875" x2="2.813053125" y2="-3.39391875" width="0.127" layer="21"/>
<wire x1="2.813053125" y1="-3.39391875" x2="2.95823125" y2="-3.175928125" width="0.127" layer="21"/>
<wire x1="2.95823125" y1="-3.175928125" x2="2.99453125" y2="-3.0307375" width="0.127" layer="21"/>
<wire x1="2.99453125" y1="-3.0307375" x2="2.95823125" y2="-2.88555625" width="0.127" layer="21"/>
<wire x1="2.95823125" y1="-2.88555625" x2="2.813053125" y2="-2.667778125" width="0.127" layer="21"/>
<wire x1="2.813053125" y1="-2.667778125" x2="2.667871875" y2="-2.59496875" width="0.127" layer="21"/>
<wire x1="2.667871875" y1="-2.59496875" x2="2.41379375" y2="-2.59496875" width="0.127" layer="21"/>
<wire x1="2.41379375" y1="-2.59496875" x2="2.3049125" y2="-2.667778125" width="0.127" layer="21"/>
<wire x1="1.10714375" y1="-2.45021875" x2="1.433803125" y2="-0.526296875" width="0.127" layer="21"/>
<wire x1="1.433803125" y1="-0.526296875" x2="2.3049125" y2="-0.1270375" width="0.127" layer="21"/>
<wire x1="2.3049125" y1="-0.1270375" x2="1.8693625" y2="-2.631478125" width="0.127" layer="21"/>
<wire x1="1.8693625" y1="-2.631478125" x2="1.542471875" y2="-2.921846875" width="0.127" layer="21"/>
<wire x1="1.542471875" y1="-2.921846875" x2="1.10714375" y2="-2.45021875" width="0.127" layer="21"/>
<wire x1="-1.76046875" y1="-2.631478125" x2="0.88914375" y2="-2.631478125" width="0.127" layer="21"/>
<wire x1="0.88914375" y1="-2.631478125" x2="1.288621875" y2="-3.103328125" width="0.127" layer="21"/>
<wire x1="1.288621875" y1="-3.103328125" x2="0.96173125" y2="-3.43021875" width="0.127" layer="21"/>
<wire x1="0.96173125" y1="-3.43021875" x2="-2.123428125" y2="-3.43021875" width="0.127" layer="21"/>
<wire x1="-2.123428125" y1="-3.43021875" x2="-2.377496875" y2="-3.139628125" width="0.127" layer="21"/>
<wire x1="-2.377496875" y1="-3.139628125" x2="-1.76046875" y2="-2.631478125" width="0.127" layer="21"/>
<wire x1="-1.070846875" y1="0.38133125" x2="-1.90565625" y2="0.018153125" width="0.127" layer="21"/>
<wire x1="-1.90565625" y1="0.018153125" x2="-1.216028125" y2="-0.38110625" width="0.127" layer="21"/>
<wire x1="-1.216028125" y1="-0.38110625" x2="1.070621875" y2="-0.38110625" width="0.127" layer="21"/>
<wire x1="1.070621875" y1="-0.38110625" x2="1.905653125" y2="0.018153125" width="0.127" layer="21"/>
<wire x1="1.905653125" y1="0.018153125" x2="1.252321875" y2="0.38133125" width="0.127" layer="21"/>
<wire x1="1.252321875" y1="0.38133125" x2="-1.070846875" y2="0.38133125" width="0.127" layer="21"/>
<wire x1="-0.85306875" y1="2.631703125" x2="1.7967625" y2="2.631703125" width="0.127" layer="21"/>
<wire x1="1.7967625" y1="2.631703125" x2="2.377503125" y2="3.139853125" width="0.127" layer="21"/>
<wire x1="2.377503125" y1="3.139853125" x2="2.159721875" y2="3.430003125" width="0.127" layer="21"/>
<wire x1="2.159721875" y1="3.430003125" x2="-0.92565625" y2="3.430003125" width="0.127" layer="21"/>
<wire x1="-0.92565625" y1="3.430003125" x2="-1.28861875" y2="3.103553125" width="0.127" layer="21"/>
<wire x1="-1.28861875" y1="3.103553125" x2="-0.85306875" y2="2.631703125" width="0.127" layer="21"/>
<wire x1="-1.83306875" y1="2.631703125" x2="-1.506396875" y2="2.922071875" width="0.127" layer="21"/>
<wire x1="-1.506396875" y1="2.922071875" x2="-1.070846875" y2="2.450221875" width="0.127" layer="21"/>
<wire x1="-1.070846875" y1="2.450221875" x2="-1.43380625" y2="0.5265125" width="0.127" layer="21"/>
<wire x1="-1.43380625" y1="0.5265125" x2="-2.30490625" y2="0.127253125" width="0.127" layer="21"/>
<wire x1="-2.30490625" y1="0.127253125" x2="-1.83306875" y2="2.631703125" width="0.127" layer="21"/>
<pad name="1" x="-2.54" y="-3.81" drill="0.5"/>
<pad name="2" x="-1.27" y="-1.27" drill="0.5"/>
<pad name="3" x="0" y="-3.81" drill="0.5"/>
<pad name="4" x="1.27" y="-1.27" drill="0.5"/>
<pad name="5" x="2.54" y="-3.81" drill="0.5"/>
<pad name="6" x="2.54" y="3.81" drill="0.5"/>
<pad name="7" x="1.27" y="1.27" drill="0.5"/>
<pad name="8" x="0" y="3.81" drill="0.5"/>
<pad name="9" x="-1.27" y="1.27" drill="0.5"/>
<pad name="10" x="-2.54" y="3.81" drill="0.5"/>
</package>
<package name="TDSX1150-2.54">
<wire x1="-3.61156875" y1="4.845771875" x2="3.611571875" y2="4.845771875" width="0.127" layer="21"/>
<wire x1="3.611571875" y1="4.845771875" x2="3.611571875" y2="-4.84576875" width="0.127" layer="21"/>
<wire x1="3.611571875" y1="-4.84576875" x2="-3.61156875" y2="-4.84576875" width="0.127" layer="21"/>
<wire x1="-3.61156875" y1="-4.84576875" x2="-3.61156875" y2="4.845771875" width="0.127" layer="21"/>
<wire x1="-1.6152875" y1="-0.489996875" x2="-2.34120625" y2="-0.0907375" width="0.127" layer="21"/>
<wire x1="-2.34120625" y1="-0.0907375" x2="-2.77675625" y2="-2.631478125" width="0.127" layer="21"/>
<wire x1="-2.77675625" y1="-2.631478125" x2="-2.5589875" y2="-2.921846875" width="0.127" layer="21"/>
<wire x1="-2.5589875" y1="-2.921846875" x2="-1.941946875" y2="-2.41391875" width="0.127" layer="21"/>
<wire x1="-1.941946875" y1="-2.41391875" x2="-1.6152875" y2="-0.489996875" width="0.127" layer="21"/>
<wire x1="2.55898125" y1="2.922071875" x2="1.97824375" y2="2.413921875" width="0.127" layer="21"/>
<wire x1="1.97824375" y1="2.413921875" x2="1.6513625" y2="0.490221875" width="0.127" layer="21"/>
<wire x1="1.6513625" y1="0.490221875" x2="2.341203125" y2="0.09074375" width="0.127" layer="21"/>
<wire x1="2.341203125" y1="0.09074375" x2="2.813053125" y2="2.631703125" width="0.127" layer="21"/>
<wire x1="2.813053125" y1="2.631703125" x2="2.55898125" y2="2.922071875" width="0.127" layer="21"/>
<wire x1="2.3049125" y1="-2.667778125" x2="2.195803125" y2="-2.77666875" width="0.127" layer="21"/>
<wire x1="2.195803125" y1="-2.77666875" x2="2.12343125" y2="-2.88555625" width="0.127" layer="21"/>
<wire x1="2.12343125" y1="-2.88555625" x2="2.12343125" y2="-3.175928125" width="0.127" layer="21"/>
<wire x1="2.12343125" y1="-3.175928125" x2="2.195803125" y2="-3.28481875" width="0.127" layer="21"/>
<wire x1="2.195803125" y1="-3.28481875" x2="2.3049125" y2="-3.39391875" width="0.127" layer="21"/>
<wire x1="2.3049125" y1="-3.39391875" x2="2.41379375" y2="-3.43021875" width="0.127" layer="21"/>
<wire x1="2.41379375" y1="-3.43021875" x2="2.55898125" y2="-3.46650625" width="0.127" layer="21"/>
<wire x1="2.55898125" y1="-3.46650625" x2="2.667871875" y2="-3.43021875" width="0.127" layer="21"/>
<wire x1="2.667871875" y1="-3.43021875" x2="2.813053125" y2="-3.39391875" width="0.127" layer="21"/>
<wire x1="2.813053125" y1="-3.39391875" x2="2.95823125" y2="-3.175928125" width="0.127" layer="21"/>
<wire x1="2.95823125" y1="-3.175928125" x2="2.99453125" y2="-3.0307375" width="0.127" layer="21"/>
<wire x1="2.99453125" y1="-3.0307375" x2="2.95823125" y2="-2.88555625" width="0.127" layer="21"/>
<wire x1="2.95823125" y1="-2.88555625" x2="2.813053125" y2="-2.667778125" width="0.127" layer="21"/>
<wire x1="2.813053125" y1="-2.667778125" x2="2.667871875" y2="-2.59496875" width="0.127" layer="21"/>
<wire x1="2.667871875" y1="-2.59496875" x2="2.41379375" y2="-2.59496875" width="0.127" layer="21"/>
<wire x1="2.41379375" y1="-2.59496875" x2="2.3049125" y2="-2.667778125" width="0.127" layer="21"/>
<wire x1="1.10714375" y1="-2.45021875" x2="1.433803125" y2="-0.526296875" width="0.127" layer="21"/>
<wire x1="1.433803125" y1="-0.526296875" x2="2.3049125" y2="-0.1270375" width="0.127" layer="21"/>
<wire x1="2.3049125" y1="-0.1270375" x2="1.8693625" y2="-2.631478125" width="0.127" layer="21"/>
<wire x1="1.8693625" y1="-2.631478125" x2="1.542471875" y2="-2.921846875" width="0.127" layer="21"/>
<wire x1="1.542471875" y1="-2.921846875" x2="1.10714375" y2="-2.45021875" width="0.127" layer="21"/>
<wire x1="-1.76046875" y1="-2.631478125" x2="0.88914375" y2="-2.631478125" width="0.127" layer="21"/>
<wire x1="0.88914375" y1="-2.631478125" x2="1.288621875" y2="-3.103328125" width="0.127" layer="21"/>
<wire x1="1.288621875" y1="-3.103328125" x2="0.96173125" y2="-3.43021875" width="0.127" layer="21"/>
<wire x1="0.96173125" y1="-3.43021875" x2="-2.123428125" y2="-3.43021875" width="0.127" layer="21"/>
<wire x1="-2.123428125" y1="-3.43021875" x2="-2.377496875" y2="-3.139628125" width="0.127" layer="21"/>
<wire x1="-2.377496875" y1="-3.139628125" x2="-1.76046875" y2="-2.631478125" width="0.127" layer="21"/>
<wire x1="-1.070846875" y1="0.38133125" x2="-1.90565625" y2="0.018153125" width="0.127" layer="21"/>
<wire x1="-1.90565625" y1="0.018153125" x2="-1.216028125" y2="-0.38110625" width="0.127" layer="21"/>
<wire x1="-1.216028125" y1="-0.38110625" x2="1.070621875" y2="-0.38110625" width="0.127" layer="21"/>
<wire x1="1.070621875" y1="-0.38110625" x2="1.905653125" y2="0.018153125" width="0.127" layer="21"/>
<wire x1="1.905653125" y1="0.018153125" x2="1.252321875" y2="0.38133125" width="0.127" layer="21"/>
<wire x1="1.252321875" y1="0.38133125" x2="-1.070846875" y2="0.38133125" width="0.127" layer="21"/>
<wire x1="-0.85306875" y1="2.631703125" x2="1.7967625" y2="2.631703125" width="0.127" layer="21"/>
<wire x1="1.7967625" y1="2.631703125" x2="2.377503125" y2="3.139853125" width="0.127" layer="21"/>
<wire x1="2.377503125" y1="3.139853125" x2="2.159721875" y2="3.430003125" width="0.127" layer="21"/>
<wire x1="2.159721875" y1="3.430003125" x2="-0.92565625" y2="3.430003125" width="0.127" layer="21"/>
<wire x1="-0.92565625" y1="3.430003125" x2="-1.28861875" y2="3.103553125" width="0.127" layer="21"/>
<wire x1="-1.28861875" y1="3.103553125" x2="-0.85306875" y2="2.631703125" width="0.127" layer="21"/>
<wire x1="-1.83306875" y1="2.631703125" x2="-1.506396875" y2="2.922071875" width="0.127" layer="21"/>
<wire x1="-1.506396875" y1="2.922071875" x2="-1.070846875" y2="2.450221875" width="0.127" layer="21"/>
<wire x1="-1.070846875" y1="2.450221875" x2="-1.43380625" y2="0.5265125" width="0.127" layer="21"/>
<wire x1="-1.43380625" y1="0.5265125" x2="-2.30490625" y2="0.127253125" width="0.127" layer="21"/>
<wire x1="-2.30490625" y1="0.127253125" x2="-1.83306875" y2="2.631703125" width="0.127" layer="21"/>
<pad name="1" x="-2.54" y="-3.81" drill="0.5"/>
<pad name="2" x="-2.54" y="-1.27" drill="0.5"/>
<pad name="3" x="0" y="-3.81" drill="0.5"/>
<pad name="4" x="2.54" y="-1.27" drill="0.5"/>
<pad name="5" x="2.54" y="-3.81" drill="0.5"/>
<pad name="6" x="2.54" y="3.81" drill="0.5"/>
<pad name="7" x="2.54" y="1.27" drill="0.5"/>
<pad name="8" x="0" y="3.81" drill="0.5"/>
<pad name="9" x="-2.54" y="1.27" drill="0.5"/>
<pad name="10" x="-2.54" y="3.81" drill="0.5"/>
<text x="0.5588" y="3.048" size="0.4064" layer="100" align="center">a</text>
<text x="0" y="0.0762" size="0.4064" layer="100" align="center">g</text>
<text x="-0.5588" y="-3.048" size="0.4064" layer="100" align="center">d</text>
<text x="-1.6256" y="1.524" size="0.4064" layer="100" align="center">f</text>
<text x="-2.1336" y="-1.397" size="0.4064" layer="100" align="center">e</text>
<text x="2.2352" y="1.524" size="0.4064" layer="100" align="center">b</text>
<text x="1.6764" y="-1.4732" size="0.4064" layer="100" align="center">c</text>
<text x="2.5654" y="-2.9718" size="0.4064" layer="100" align="center">dp</text>
</package>
</packages>
<symbols>
<symbol name="7SEG-LED-CC">
<wire x1="5.08" y1="8.89" x2="5.08" y2="7.62" width="0.4064" layer="94"/>
<wire x1="5.08" y1="7.62" x2="5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="5.08" y1="-7.62" x2="5.08" y2="-8.89" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-8.89" x2="5.08" y2="-8.89" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-8.89" x2="-5.08" y2="8.89" width="0.4064" layer="94"/>
<wire x1="5.08" y1="8.89" x2="-5.08" y2="8.89" width="0.4064" layer="94"/>
<wire x1="7.62" y1="7.62" x2="5.08" y2="7.62" width="0.1524" layer="94"/>
<wire x1="7.62" y1="5.08" x2="5.08" y2="5.08" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="5.08" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="4.191" y1="7.62" x2="1.524" y2="7.62" width="0.1524" layer="94"/>
<wire x1="1.651" y1="7.62" x2="0" y2="7.62" width="0.1524" layer="94"/>
<wire x1="1.524" y1="7.239" x2="1.524" y2="7.62" width="0.1524" layer="94"/>
<wire x1="1.524" y1="7.62" x2="1.524" y2="8.001" width="0.1524" layer="94"/>
<wire x1="3.302" y1="7.493" x2="3.302" y2="5.08" width="0.1524" layer="94"/>
<wire x1="3.302" y1="5.08" x2="4.318" y2="5.08" width="0.1524" layer="94"/>
<circle x="3.302" y="7.62" radius="0.2839" width="0" layer="94"/>
<text x="-5.08" y="9.525" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08" y="-11.43" size="1.778" layer="96">&gt;VALUE</text>
<text x="-6.477" y="7.874" size="1.27" layer="95">a</text>
<text x="-6.477" y="5.334" size="1.27" layer="95">b</text>
<text x="-6.477" y="2.794" size="1.27" layer="95">c</text>
<text x="-6.477" y="0.254" size="1.27" layer="95">d</text>
<text x="-6.477" y="-2.286" size="1.27" layer="95">e</text>
<text x="-6.477" y="-4.826" size="1.27" layer="95">f</text>
<text x="-6.477" y="-7.366" size="1.27" layer="95">g</text>
<text x="5.588" y="-7.366" size="1.27" layer="95">DP</text>
<text x="5.588" y="7.874" size="1.27" layer="95">C</text>
<text x="5.588" y="5.334" size="1.27" layer="95">C</text>
<pin name="DP" x="10.16" y="-7.62" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="F" x="-10.16" y="-5.08" visible="pad" length="middle" direction="pas"/>
<pin name="D" x="-10.16" y="0" visible="pad" length="middle" direction="pas"/>
<pin name="B" x="-10.16" y="5.08" visible="pad" length="middle" direction="pas"/>
<pin name="A" x="-10.16" y="7.62" visible="pad" length="middle" direction="pas"/>
<pin name="C@1" x="10.16" y="7.62" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="C" x="-10.16" y="2.54" visible="pad" length="middle" direction="pas"/>
<pin name="E" x="-10.16" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="G" x="-10.16" y="-7.62" visible="pad" length="middle" direction="pas"/>
<pin name="C@2" x="10.16" y="5.08" visible="pad" length="short" direction="pas" rot="R180"/>
<polygon width="0.1524" layer="94">
<vertex x="1.524" y="7.62"/>
<vertex x="1.143" y="7.239"/>
<vertex x="1.143" y="8.001"/>
</polygon>
<wire x1="-2.371140625" y1="-0.69486875" x2="-3.38743125" y2="-0.1359" width="0.012" layer="94"/>
<wire x1="-3.38743125" y1="-0.1359" x2="-3.9972" y2="-3.692940625" width="0.012" layer="94"/>
<wire x1="-3.9972" y1="-3.692940625" x2="-3.69231875" y2="-4.099459375" width="0.012" layer="94"/>
<wire x1="-3.69231875" y1="-4.099459375" x2="-2.82846875" y2="-3.38835" width="0.012" layer="94"/>
<wire x1="-2.82846875" y1="-3.38835" x2="-2.371140625" y2="-0.69486875" width="0.012" layer="94"/>
<wire x1="3.472840625" y1="4.08203125" x2="2.659809375" y2="3.37063125" width="0.012" layer="94"/>
<wire x1="2.659809375" y1="3.37063125" x2="2.20216875" y2="0.677440625" width="0.012" layer="94"/>
<wire x1="2.20216875" y1="0.677440625" x2="3.16795" y2="0.11816875" width="0.012" layer="94"/>
<wire x1="3.16795" y1="0.11816875" x2="3.828540625" y2="3.675509375" width="0.012" layer="94"/>
<wire x1="3.828540625" y1="3.675509375" x2="3.472840625" y2="4.08203125" width="0.012" layer="94"/>
<wire x1="3.11713125" y1="-3.74375" x2="2.964390625" y2="-3.8962" width="0.012" layer="94"/>
<wire x1="2.964390625" y1="-3.8962" x2="2.863059375" y2="-4.048640625" width="0.012" layer="94"/>
<wire x1="2.863059375" y1="-4.048640625" x2="2.863059375" y2="-4.455159375" width="0.012" layer="94"/>
<wire x1="2.863059375" y1="-4.455159375" x2="2.964390625" y2="-4.607609375" width="0.012" layer="94"/>
<wire x1="2.964390625" y1="-4.607609375" x2="3.11713125" y2="-4.76035" width="0.012" layer="94"/>
<wire x1="3.11713125" y1="-4.76035" x2="3.26958125" y2="-4.81116875" width="0.012" layer="94"/>
<wire x1="3.26958125" y1="-4.81116875" x2="3.472840625" y2="-4.86198125" width="0.012" layer="94"/>
<wire x1="3.472840625" y1="-4.86198125" x2="3.62528125" y2="-4.81116875" width="0.012" layer="94"/>
<wire x1="3.62528125" y1="-4.81116875" x2="3.828540625" y2="-4.76035" width="0.012" layer="94"/>
<wire x1="3.828540625" y1="-4.76035" x2="4.0318" y2="-4.455159375" width="0.012" layer="94"/>
<wire x1="4.0318" y1="-4.455159375" x2="4.082609375" y2="-4.2519" width="0.012" layer="94"/>
<wire x1="4.082609375" y1="-4.2519" x2="4.0318" y2="-4.048640625" width="0.012" layer="94"/>
<wire x1="4.0318" y1="-4.048640625" x2="3.828540625" y2="-3.74375" width="0.012" layer="94"/>
<wire x1="3.828540625" y1="-3.74375" x2="3.62528125" y2="-3.64181875" width="0.012" layer="94"/>
<wire x1="3.62528125" y1="-3.64181875" x2="3.26958125" y2="-3.64181875" width="0.012" layer="94"/>
<wire x1="3.26958125" y1="-3.64181875" x2="3.11713125" y2="-3.74375" width="0.012" layer="94"/>
<wire x1="1.440259375" y1="-3.43916875" x2="1.897590625" y2="-0.74568125" width="0.012" layer="94"/>
<wire x1="1.897590625" y1="-0.74568125" x2="3.11713125" y2="-0.18671875" width="0.012" layer="94"/>
<wire x1="3.11713125" y1="-0.18671875" x2="2.507359375" y2="-3.692940625" width="0.012" layer="94"/>
<wire x1="2.507359375" y1="-3.692940625" x2="2.04973125" y2="-4.099459375" width="0.012" layer="94"/>
<wire x1="2.04973125" y1="-4.099459375" x2="1.440259375" y2="-3.43916875" width="0.012" layer="94"/>
<wire x1="-2.574390625" y1="-3.692940625" x2="1.13506875" y2="-3.692940625" width="0.012" layer="94"/>
<wire x1="1.13506875" y1="-3.692940625" x2="1.69433125" y2="-4.35353125" width="0.012" layer="94"/>
<wire x1="1.69433125" y1="-4.35353125" x2="1.236690625" y2="-4.81116875" width="0.012" layer="94"/>
<wire x1="1.236690625" y1="-4.81116875" x2="-3.082540625" y2="-4.81116875" width="0.012" layer="94"/>
<wire x1="-3.082540625" y1="-4.81116875" x2="-3.438240625" y2="-4.40435" width="0.012" layer="94"/>
<wire x1="-3.438240625" y1="-4.40435" x2="-2.574390625" y2="-3.692940625" width="0.012" layer="94"/>
<wire x1="-1.60891875" y1="0.525" x2="-2.77765" y2="0.016540625" width="0.012" layer="94"/>
<wire x1="-2.77765" y1="0.016540625" x2="-1.81216875" y2="-0.54241875" width="0.012" layer="94"/>
<wire x1="-1.81216875" y1="-0.54241875" x2="1.389140625" y2="-0.54241875" width="0.012" layer="94"/>
<wire x1="1.389140625" y1="-0.54241875" x2="2.55816875" y2="0.016540625" width="0.012" layer="94"/>
<wire x1="2.55816875" y1="0.016540625" x2="1.643509375" y2="0.525" width="0.012" layer="94"/>
<wire x1="1.643509375" y1="0.525" x2="-1.60891875" y2="0.525" width="0.012" layer="94"/>
<wire x1="-1.30403125" y1="3.675509375" x2="2.40573125" y2="3.675509375" width="0.012" layer="94"/>
<wire x1="2.40573125" y1="3.675509375" x2="3.21876875" y2="4.38691875" width="0.012" layer="94"/>
<wire x1="3.21876875" y1="4.38691875" x2="2.91388125" y2="4.79313125" width="0.012" layer="94"/>
<wire x1="2.91388125" y1="4.79313125" x2="-1.405659375" y2="4.79313125" width="0.012" layer="94"/>
<wire x1="-1.405659375" y1="4.79313125" x2="-1.913809375" y2="4.3361" width="0.012" layer="94"/>
<wire x1="-1.913809375" y1="4.3361" x2="-1.30403125" y2="3.675509375" width="0.012" layer="94"/>
<wire x1="-2.67601875" y1="3.675509375" x2="-2.218690625" y2="4.08203125" width="0.012" layer="94"/>
<wire x1="-2.218690625" y1="4.08203125" x2="-1.60891875" y2="3.421440625" width="0.012" layer="94"/>
<wire x1="-1.60891875" y1="3.421440625" x2="-2.117059375" y2="0.72825" width="0.012" layer="94"/>
<wire x1="-2.117059375" y1="0.72825" x2="-3.336609375" y2="0.169290625" width="0.012" layer="94"/>
<wire x1="-3.336609375" y1="0.169290625" x2="-2.67601875" y2="3.675509375" width="0.012" layer="94"/>
<text x="0.5588" y="4.2418" size="0.6096" layer="100" align="center">a</text>
<text x="0" y="0" size="0.6096" layer="100" align="center">g</text>
<text x="-0.5588" y="-4.2418" size="0.6096" layer="100" align="center">d</text>
<text x="-2.3876" y="2.032" size="0.6096" layer="100" align="center">f</text>
<text x="-3.1496" y="-2.032" size="0.6096" layer="100" align="center">e</text>
<text x="2.9972" y="2.032" size="0.6096" layer="100" align="center">b</text>
<text x="2.2352" y="-2.032" size="0.6096" layer="100" align="center">c</text>
<text x="3.4544" y="-4.2418" size="0.6096" layer="100" align="center">dp</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="TDSO1160">
<gates>
<gate name="G$1" symbol="7SEG-LED-CC" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TDSX1150">
<connects>
<connect gate="G$1" pin="A" pad="7"/>
<connect gate="G$1" pin="B" pad="6"/>
<connect gate="G$1" pin="C" pad="4"/>
<connect gate="G$1" pin="C@1" pad="3"/>
<connect gate="G$1" pin="C@2" pad="8"/>
<connect gate="G$1" pin="D" pad="2"/>
<connect gate="G$1" pin="DP" pad="5"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="F" pad="10"/>
<connect gate="G$1" pin="G" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-2.54" package="TDSX1150-2.54">
<connects>
<connect gate="G$1" pin="A" pad="7"/>
<connect gate="G$1" pin="B" pad="6"/>
<connect gate="G$1" pin="C" pad="4"/>
<connect gate="G$1" pin="C@1" pad="3"/>
<connect gate="G$1" pin="C@2" pad="8"/>
<connect gate="G$1" pin="D" pad="2"/>
<connect gate="G$1" pin="DP" pad="5"/>
<connect gate="G$1" pin="E" pad="1"/>
<connect gate="G$1" pin="F" pad="10"/>
<connect gate="G$1" pin="G" pad="9"/>
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
<description>&lt;b&gt;Resistors &amp; Inductors&lt;/b&gt;&lt;p&gt;
</description>
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
<text x="0" y="0" size="0.6096" layer="27" ratio="10" align="center">&gt;VALUE</text>
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
<package name="0204/7-V">
<wire x1="-0.762" y1="-2.54" x2="-1.016" y2="-2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.762" y1="-2.54" x2="1.016" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="1.016" y1="2.286" x2="0.762" y2="2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.016" y1="2.286" x2="-0.762" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="0" y="-3.81" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="2" x="0" y="3.81" drill="0.8128" shape="octagon" rot="R90"/>
<text x="0" y="0" size="0.6096" layer="27" ratio="10" align="center">&gt;VALUE</text>
<rectangle x1="-0.1905" y1="2.4765" x2="0.1905" y2="2.9845" layer="21" rot="R90"/>
<rectangle x1="-0.1905" y1="-2.9845" x2="0.1905" y2="-2.4765" layer="21" rot="R90"/>
<wire x1="0" y1="3.81" x2="0" y2="2.921" width="0.508" layer="51"/>
<wire x1="0" y1="-3.81" x2="0" y2="-2.921" width="0.508" layer="51"/>
<wire x1="-0.762" y1="-2.54" x2="-1.016" y2="-2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.762" y1="-2.54" x2="1.016" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="1.016" y1="2.286" x2="0.762" y2="2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.016" y1="2.286" x2="-0.762" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.762" y1="-2.54" x2="-0.762" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-2.286" x2="-1.016" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="-1.778" x2="-1.016" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-2.286" x2="1.016" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-1.778" x2="1.016" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.778" x2="-1.016" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-0.889" y1="1.778" x2="-0.889" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="0.889" y1="1.778" x2="1.016" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0.889" y1="1.778" x2="0.889" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="2.286" x2="-1.016" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.016" y1="2.286" x2="1.016" y2="1.905" width="0.1524" layer="21"/>
<wire x1="0.762" y1="2.54" x2="-0.762" y2="2.54" width="0.1524" layer="21"/>
<text x="-1.27" y="2.5146" size="0.9906" layer="25" ratio="10" rot="R180">&gt;NAME</text>
<rectangle x1="-0.1905" y1="2.4765" x2="0.1905" y2="2.9845" layer="21" rot="R90"/>
<rectangle x1="-0.1905" y1="-2.9845" x2="0.1905" y2="-2.4765" layer="21" rot="R90"/>
</package>
<package name="0202/12-V">
<wire x1="-0.381" y1="-1.27" x2="-0.635" y2="-1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="0.635" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="0.635" y1="1.016" x2="0.381" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.635" y1="1.016" x2="-0.381" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="0" y="-6.35" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="2" x="0" y="6.35" drill="0.8128" shape="octagon" rot="R90"/>
<text x="0" y="0" size="0.6096" layer="25" ratio="10" align="center">&gt;NAME</text>
<text x="0.254" y="-1.524" size="0.6096" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
<wire x1="0" y1="6.35" x2="0" y2="1.651" width="0.254" layer="51"/>
<wire x1="0" y1="-6.35" x2="0" y2="-1.651" width="0.254" layer="51"/>
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
<package name="0202/15-V">
<wire x1="-0.381" y1="-1.27" x2="-0.635" y2="-1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.381" y1="-1.27" x2="0.635" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="0.635" y1="1.016" x2="0.381" y2="1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-0.635" y1="1.016" x2="-0.381" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="0" y="-7.62" drill="0.8128" shape="octagon" rot="R90"/>
<pad name="2" x="0" y="7.62" drill="0.8128" shape="octagon" rot="R90"/>
<text x="0" y="0" size="0.6096" layer="25" ratio="10" align="center">&gt;NAME</text>
<text x="0.254" y="-1.524" size="0.6096" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
<wire x1="0" y1="7.62" x2="0" y2="1.651" width="0.254" layer="51"/>
<wire x1="0" y1="-7.62" x2="0" y2="-1.651" width="0.254" layer="51"/>
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
<device name="0204/7-V" package="0204/7-V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0202/12-V" package="0202/12-V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0202/15-V" package="0202/15-V">
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
<library name="pinconn">
<description>&lt;b&gt;Pin connectors&lt;/b&gt;&lt;p&gt;
</description>
<packages>
<package name="CONN-8P">
<pad name="6" x="3.81" y="0" drill="0.9" diameter="1.4224" shape="octagon" rot="R180"/>
<pad name="5" x="1.27" y="0" drill="0.9" diameter="1.4224" shape="octagon" rot="R180"/>
<pad name="4" x="-1.27" y="0" drill="0.9" diameter="1.4224" shape="octagon" rot="R180"/>
<pad name="3" x="-3.81" y="0" drill="0.9" diameter="1.4224" shape="octagon" rot="R180"/>
<pad name="2" x="-6.35" y="0" drill="0.9" diameter="1.4224" shape="octagon" rot="R180"/>
<pad name="1" x="-8.89" y="0" drill="0.9" diameter="1.4224" shape="square" rot="R180"/>
<wire x1="-9.906" y1="1.27" x2="-9.906" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-9.906" y1="-1.27" x2="9.906" y2="-1.27" width="0.127" layer="21"/>
<wire x1="9.906" y1="-1.27" x2="9.906" y2="1.27" width="0.127" layer="21"/>
<wire x1="9.906" y1="1.27" x2="-9.906" y2="1.27" width="0.127" layer="21"/>
<text x="-10.414" y="-1.27" size="0.8128" layer="20" rot="R90">1</text>
<text x="-9.906" y="-1.524" size="0.8128" layer="25" align="top-left">&gt;NAME</text>
<text x="9.906" y="-1.524" size="0.8128" layer="27" align="top-right">&gt;VALUE</text>
<pad name="7" x="6.35" y="0" drill="0.9" diameter="1.4224" shape="octagon" rot="R180"/>
<pad name="8" x="8.89" y="0" drill="0.9" diameter="1.4224" shape="octagon" rot="R180"/>
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
</packages>
<symbols>
<symbol name="PINCONN-8P">
<wire x1="0" y1="10.16" x2="0" y2="8.89" width="0.254" layer="94"/>
<wire x1="0" y1="8.89" x2="0" y2="6.35" width="0.254" layer="94"/>
<wire x1="0" y1="6.35" x2="0" y2="3.81" width="0.254" layer="94"/>
<wire x1="0" y1="3.81" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="0" y2="-3.81" width="0.254" layer="94"/>
<wire x1="0" y1="-3.81" x2="0" y2="-6.35" width="0.254" layer="94"/>
<wire x1="0" y1="-6.35" x2="0" y2="-8.89" width="0.254" layer="94"/>
<wire x1="0" y1="-8.89" x2="0" y2="-10.16" width="0.254" layer="94"/>
<wire x1="0" y1="-10.16" x2="3.81" y2="-10.16" width="0.254" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="10.16" width="0.254" layer="94"/>
<wire x1="3.81" y1="10.16" x2="0" y2="10.16" width="0.254" layer="94"/>
<pin name="2" x="-1.27" y="-6.35" length="point" direction="pas"/>
<pin name="1" x="-1.27" y="-8.89" length="point" direction="pas"/>
<wire x1="-1.27" y1="-6.35" x2="0" y2="-6.35" width="0.127" layer="94"/>
<wire x1="-1.27" y1="-8.89" x2="0" y2="-8.89" width="0.127" layer="94"/>
<pin name="3" x="-1.27" y="-3.81" length="point" direction="pas"/>
<wire x1="-1.27" y1="-3.81" x2="0" y2="-3.81" width="0.127" layer="94"/>
<text x="0" y="-10.795" size="0.8128" layer="95" align="top-left">&gt;NAME</text>
<pin name="4" x="-1.27" y="-1.27" length="point" direction="pas"/>
<wire x1="-1.27" y1="-1.27" x2="0" y2="-1.27" width="0.127" layer="94"/>
<pin name="5" x="-1.27" y="1.27" length="point" direction="pas"/>
<wire x1="-1.27" y1="1.27" x2="0" y2="1.27" width="0.127" layer="94"/>
<text x="0" y="-12.065" size="0.8128" layer="96" align="top-left">&gt;VALUE</text>
<pin name="6" x="-1.27" y="3.81" length="point" direction="pas"/>
<pin name="7" x="-1.27" y="6.35" length="point" direction="pas"/>
<wire x1="-1.27" y1="3.81" x2="0" y2="3.81" width="0.127" layer="94"/>
<wire x1="-1.27" y1="6.35" x2="0" y2="6.35" width="0.127" layer="94"/>
<pin name="8" x="-1.27" y="8.89" length="point" direction="pas"/>
<wire x1="-1.27" y1="8.89" x2="0" y2="8.89" width="0.127" layer="94"/>
</symbol>
<symbol name="PINCONN-4P">
<wire x1="-1.27" y1="6.35" x2="-1.27" y2="5.08" width="0.254" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="-1.27" y2="-3.81" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-3.81" x2="2.54" y2="-3.81" width="0.254" layer="94"/>
<wire x1="2.54" y1="-3.81" x2="2.54" y2="6.35" width="0.254" layer="94"/>
<wire x1="2.54" y1="6.35" x2="-1.27" y2="6.35" width="0.254" layer="94"/>
<pin name="2" x="-2.54" y="0" length="point"/>
<pin name="1" x="-2.54" y="-2.54" length="point"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.127" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="94"/>
<pin name="3" x="-2.54" y="2.54" length="point"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.127" layer="94"/>
<text x="-1.27" y="-4.445" size="0.8128" layer="95" align="top-left">&gt;NAME</text>
<pin name="4" x="-2.54" y="5.08" length="point"/>
<wire x1="-2.54" y1="5.08" x2="-1.27" y2="5.08" width="0.127" layer="94"/>
</symbol>
<symbol name="PINCONN-6P">
<wire x1="-1.27" y1="7.62" x2="-1.27" y2="6.35" width="0.254" layer="94"/>
<wire x1="-1.27" y1="6.35" x2="-1.27" y2="3.81" width="0.254" layer="94"/>
<wire x1="-1.27" y1="3.81" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-1.27" x2="-1.27" y2="-3.81" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-3.81" x2="-1.27" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-6.35" x2="-1.27" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="-7.62" x2="2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="7.62" x2="-1.27" y2="7.62" width="0.254" layer="94"/>
<pin name="2" x="-2.54" y="-3.81" length="point" direction="pas"/>
<pin name="1" x="-2.54" y="-6.35" length="point" direction="pas"/>
<wire x1="-2.54" y1="-3.81" x2="-1.27" y2="-3.81" width="0.127" layer="94"/>
<wire x1="-2.54" y1="-6.35" x2="-1.27" y2="-6.35" width="0.127" layer="94"/>
<pin name="3" x="-2.54" y="-1.27" length="point" direction="pas"/>
<wire x1="-2.54" y1="-1.27" x2="-1.27" y2="-1.27" width="0.127" layer="94"/>
<text x="-1.27" y="-8.255" size="0.8128" layer="95" align="top-left">&gt;NAME</text>
<pin name="4" x="-2.54" y="1.27" length="point" direction="pas"/>
<wire x1="-2.54" y1="1.27" x2="-1.27" y2="1.27" width="0.127" layer="94"/>
<pin name="5" x="-2.54" y="3.81" length="point" direction="pas"/>
<wire x1="-2.54" y1="3.81" x2="-1.27" y2="3.81" width="0.127" layer="94"/>
<text x="-1.27" y="-9.525" size="0.8128" layer="96" align="top-left">&gt;VALUE</text>
<pin name="6" x="-2.54" y="6.35" length="point" direction="pas"/>
<wire x1="-2.54" y1="6.35" x2="-1.27" y2="6.35" width="0.127" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CONN-8P" prefix="J">
<gates>
<gate name="G$1" symbol="PINCONN-8P" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CONN-8P">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CONN-4P" prefix="J">
<gates>
<gate name="G$1" symbol="PINCONN-4P" x="0" y="0"/>
</gates>
<devices>
<device name="-4P" package="CONN-4P">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CONN-6P" prefix="J">
<gates>
<gate name="G$1" symbol="PINCONN-6P" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CONN-6P">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
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
<description>&lt;b&gt;Switches, Buttons &amp; Jumpers&lt;/b&gt;&lt;p&gt;
</description>
<packages>
<package name="PB-1P1T">
<wire x1="-3.4925" y1="1.5875" x2="-3.4925" y2="0.9525" width="0.127" layer="21"/>
<wire x1="-3.4925" y1="0.9525" x2="-4.1275" y2="0.9525" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="0.9525" x2="-4.1275" y2="-0.9525" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="-0.9525" x2="-3.4925" y2="-0.9525" width="0.127" layer="21"/>
<wire x1="-3.4925" y1="-0.9525" x2="-3.4925" y2="-1.5875" width="0.127" layer="21"/>
<wire x1="-3.4925" y1="-1.5875" x2="3.4925" y2="-1.5875" width="0.127" layer="21"/>
<wire x1="3.4925" y1="-1.5875" x2="3.4925" y2="-0.9525" width="0.127" layer="21"/>
<wire x1="3.4925" y1="-0.9525" x2="4.1275" y2="-0.9525" width="0.127" layer="21"/>
<wire x1="4.1275" y1="-0.9525" x2="4.1275" y2="0.9525" width="0.127" layer="21"/>
<wire x1="4.1275" y1="0.9525" x2="3.4925" y2="0.9525" width="0.127" layer="21"/>
<wire x1="3.4925" y1="0.9525" x2="3.4925" y2="1.5875" width="0.127" layer="21"/>
<wire x1="3.4925" y1="1.5875" x2="-3.4925" y2="1.5875" width="0.127" layer="21"/>
<wire x1="-2.84988125" y1="-0.47625" x2="-2.8575" y2="0.47625" width="0.127" layer="21"/>
<wire x1="-2.8575" y1="0.47625" x2="-0.889" y2="0.47625" width="0.127" layer="21"/>
<wire x1="-0.889" y1="0.47625" x2="-0.889" y2="-0.47625" width="0.127" layer="21"/>
<wire x1="-0.889" y1="-0.47625" x2="-0.889" y2="-0.889" width="0.127" layer="21"/>
<wire x1="-0.889" y1="-0.889" x2="0.889" y2="-0.889" width="0.127" layer="21"/>
<wire x1="0.889" y1="-0.889" x2="0.889" y2="-0.47625" width="0.127" layer="21"/>
<wire x1="0.889" y1="0.47625" x2="2.8575" y2="0.47625" width="0.127" layer="21"/>
<wire x1="2.8575" y1="0.47625" x2="2.8575" y2="-0.48386875" width="0.127" layer="21"/>
<wire x1="2.84988125" y1="-0.47625" x2="0.889" y2="-0.47625" width="0.127" layer="21"/>
<wire x1="0.889" y1="-0.47625" x2="0.889" y2="0.47625" width="0.127" layer="21"/>
<wire x1="0.889" y1="0.47625" x2="0.889" y2="0.889" width="0.127" layer="21"/>
<wire x1="0.889" y1="0.889" x2="-0.889" y2="0.889" width="0.127" layer="21"/>
<wire x1="-0.889" y1="0.889" x2="-0.889" y2="0.47625" width="0.127" layer="21"/>
<wire x1="-0.889" y1="-0.47625" x2="-2.84988125" y2="-0.47625" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="0.9525" x2="-4.1275" y2="1.5875" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="1.5875" x2="-3.4925" y2="1.5875" width="0.127" layer="21"/>
<wire x1="3.4925" y1="1.5875" x2="4.1275" y2="1.5875" width="0.127" layer="21"/>
<wire x1="4.1275" y1="1.5875" x2="4.1275" y2="0.9525" width="0.127" layer="21"/>
<wire x1="4.1275" y1="-0.9525" x2="4.1275" y2="-1.5875" width="0.127" layer="21"/>
<wire x1="4.1275" y1="-1.5875" x2="3.4925" y2="-1.5875" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="-0.9525" x2="-4.1275" y2="-1.5875" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="-1.5875" x2="-3.4925" y2="-1.5875" width="0.127" layer="21"/>
<pad name="1" x="2.54" y="0" drill="0.7" diameter="1.6764" rot="R180"/>
<pad name="2" x="-2.54" y="0" drill="0.7" diameter="1.6764" rot="R180"/>
<text x="-4.1275" y="1.8415" size="1.27" layer="21">&gt;NAME</text>
</package>
<package name="PB-2P1T">
<circle x="0" y="0" radius="1.27" width="0.127" layer="21"/>
<wire x1="-3.4925" y1="4.1275" x2="-3.4925" y2="3.4925" width="0.127" layer="21"/>
<wire x1="-3.4925" y1="3.4925" x2="-4.1275" y2="3.4925" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="3.4925" x2="-4.1275" y2="-3.4925" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="-3.4925" x2="-3.4925" y2="-3.4925" width="0.127" layer="21"/>
<wire x1="-3.4925" y1="-3.4925" x2="-3.4925" y2="-4.1275" width="0.127" layer="21"/>
<wire x1="-3.4925" y1="-4.1275" x2="3.4925" y2="-4.1275" width="0.127" layer="21"/>
<wire x1="3.4925" y1="-4.1275" x2="3.4925" y2="-3.4925" width="0.127" layer="21"/>
<wire x1="3.4925" y1="-3.4925" x2="4.1275" y2="-3.4925" width="0.127" layer="21"/>
<wire x1="4.1275" y1="-3.4925" x2="4.1275" y2="3.4925" width="0.127" layer="21"/>
<wire x1="4.1275" y1="3.4925" x2="3.4925" y2="3.4925" width="0.127" layer="21"/>
<wire x1="3.4925" y1="3.4925" x2="3.4925" y2="4.1275" width="0.127" layer="21"/>
<wire x1="3.4925" y1="4.1275" x2="-3.4925" y2="4.1275" width="0.127" layer="21"/>
<wire x1="-2.84988125" y1="1.42875" x2="-2.8575" y2="-1.42875" width="0.127" layer="21"/>
<wire x1="-2.8575" y1="-1.42875" x2="-1.42875" y2="-1.42875" width="0.127" layer="21"/>
<wire x1="-1.42875" y1="-1.42875" x2="-1.42875" y2="-2.8575" width="0.127" layer="21"/>
<wire x1="-1.42113125" y1="-2.849878125" x2="1.42113125" y2="-2.849878125" width="0.127" layer="21"/>
<wire x1="1.42875" y1="-2.8575" x2="1.42875" y2="-1.42875" width="0.127" layer="21"/>
<wire x1="1.42875" y1="-1.42875" x2="2.8575" y2="-1.42875" width="0.127" layer="21"/>
<wire x1="2.8575" y1="-1.42875" x2="2.8575" y2="1.42113125" width="0.127" layer="21"/>
<wire x1="2.84988125" y1="1.42875" x2="1.42875" y2="1.42875" width="0.127" layer="21"/>
<wire x1="1.42875" y1="1.42875" x2="1.42875" y2="2.8575" width="0.127" layer="21"/>
<wire x1="1.42875" y1="2.8575" x2="-1.42875" y2="2.8575" width="0.127" layer="21"/>
<wire x1="-1.42875" y1="2.8575" x2="-1.42875" y2="1.42875" width="0.127" layer="21"/>
<wire x1="-1.42875" y1="1.42875" x2="-2.84988125" y2="1.42875" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="3.4925" x2="-4.1275" y2="4.1275" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="4.1275" x2="-3.4925" y2="4.1275" width="0.127" layer="21"/>
<wire x1="3.4925" y1="4.1275" x2="4.1275" y2="4.1275" width="0.127" layer="21"/>
<wire x1="4.1275" y1="4.1275" x2="4.1275" y2="3.4925" width="0.127" layer="21"/>
<wire x1="4.1275" y1="-3.4925" x2="4.1275" y2="-4.1275" width="0.127" layer="21"/>
<wire x1="4.1275" y1="-4.1275" x2="3.4925" y2="-4.1275" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="-3.4925" x2="-4.1275" y2="-4.1275" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="-4.1275" x2="-3.4925" y2="-4.1275" width="0.127" layer="21"/>
<pad name="1" x="2.54" y="-2.54" drill="0.7" diameter="1.6764" rot="R180"/>
<pad name="2" x="-2.54" y="-2.54" drill="0.7" diameter="1.6764" rot="R180"/>
<pad name="3" x="2.54" y="2.54" drill="0.7" diameter="1.6764" rot="R180"/>
<pad name="4" x="-2.54" y="2.54" drill="0.7" diameter="1.6764" rot="R180"/>
<text x="-4.1275" y="4.3815" size="1.27" layer="21">&gt;NAME</text>
</package>
<package name="PB-2P1T-2X3">
<circle x="0" y="0" radius="1.27" width="0.127" layer="21"/>
<wire x1="-3.4925" y1="4.1275" x2="-3.4925" y2="3.4925" width="0.127" layer="21"/>
<wire x1="-3.4925" y1="3.4925" x2="-4.1275" y2="3.4925" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="3.4925" x2="-4.1275" y2="-3.4925" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="-3.4925" x2="-3.4925" y2="-3.4925" width="0.127" layer="21"/>
<wire x1="-3.4925" y1="-3.4925" x2="-3.4925" y2="-4.1275" width="0.127" layer="21"/>
<wire x1="-3.4925" y1="-4.1275" x2="3.4925" y2="-4.1275" width="0.127" layer="21"/>
<wire x1="3.4925" y1="-4.1275" x2="3.4925" y2="-3.4925" width="0.127" layer="21"/>
<wire x1="3.4925" y1="-3.4925" x2="4.1275" y2="-3.4925" width="0.127" layer="21"/>
<wire x1="4.1275" y1="-3.4925" x2="4.1275" y2="3.4925" width="0.127" layer="21"/>
<wire x1="4.1275" y1="3.4925" x2="3.4925" y2="3.4925" width="0.127" layer="21"/>
<wire x1="3.4925" y1="3.4925" x2="3.4925" y2="4.1275" width="0.127" layer="21"/>
<wire x1="3.4925" y1="4.1275" x2="-3.4925" y2="4.1275" width="0.127" layer="21"/>
<wire x1="-2.84988125" y1="1.42875" x2="-2.8575" y2="-1.42875" width="0.127" layer="21"/>
<wire x1="-2.8575" y1="-1.42875" x2="-1.42875" y2="-1.42875" width="0.127" layer="21"/>
<wire x1="-1.42875" y1="-1.42875" x2="-1.42875" y2="-2.8575" width="0.127" layer="21"/>
<wire x1="-1.42113125" y1="-2.849878125" x2="1.42113125" y2="-2.849878125" width="0.127" layer="21"/>
<wire x1="1.42875" y1="-2.8575" x2="1.42875" y2="-1.42875" width="0.127" layer="21"/>
<wire x1="1.42875" y1="-1.42875" x2="2.8575" y2="-1.42875" width="0.127" layer="21"/>
<wire x1="2.8575" y1="-1.42875" x2="2.8575" y2="1.42113125" width="0.127" layer="21"/>
<wire x1="2.84988125" y1="1.42875" x2="1.42875" y2="1.42875" width="0.127" layer="21"/>
<wire x1="1.42875" y1="1.42875" x2="1.42875" y2="2.8575" width="0.127" layer="21"/>
<wire x1="1.42875" y1="2.8575" x2="-1.42875" y2="2.8575" width="0.127" layer="21"/>
<wire x1="-1.42875" y1="2.8575" x2="-1.42875" y2="1.42875" width="0.127" layer="21"/>
<wire x1="-1.42875" y1="1.42875" x2="-2.84988125" y2="1.42875" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="3.4925" x2="-4.1275" y2="4.1275" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="4.1275" x2="-3.4925" y2="4.1275" width="0.127" layer="21"/>
<wire x1="3.4925" y1="4.1275" x2="4.1275" y2="4.1275" width="0.127" layer="21"/>
<wire x1="4.1275" y1="4.1275" x2="4.1275" y2="3.4925" width="0.127" layer="21"/>
<wire x1="4.1275" y1="-3.4925" x2="4.1275" y2="-4.1275" width="0.127" layer="21"/>
<wire x1="4.1275" y1="-4.1275" x2="3.4925" y2="-4.1275" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="-3.4925" x2="-4.1275" y2="-4.1275" width="0.127" layer="21"/>
<wire x1="-4.1275" y1="-4.1275" x2="-3.4925" y2="-4.1275" width="0.127" layer="21"/>
<pad name="1" x="2.54" y="-3.81" drill="0.7" diameter="1.6764" rot="R180"/>
<pad name="2" x="-2.54" y="-3.81" drill="0.7" diameter="1.6764" rot="R180"/>
<pad name="3" x="2.54" y="3.81" drill="0.7" diameter="1.6764" rot="R180"/>
<pad name="4" x="-2.54" y="3.81" drill="0.7" diameter="1.6764" rot="R180"/>
<text x="-4.1275" y="5.6515" size="1.27" layer="21">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="SW-1P1T">
<wire x1="-6.35" y1="1.905" x2="-6.35" y2="0" width="0.254" layer="94"/>
<wire x1="-6.35" y1="0" x2="-4.445" y2="0" width="0.1524" layer="94"/>
<wire x1="-6.35" y1="0" x2="-6.35" y2="-1.905" width="0.254" layer="94"/>
<wire x1="-3.81" y1="0" x2="-3.302" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.286" y1="0" x2="-1.905" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="-3.175" x2="0" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0" y1="-1.905" x2="-1.905" y2="2.667" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="3.175" width="0.254" layer="94"/>
<wire x1="-3.302" y1="0" x2="-2.794" y2="-0.762" width="0.1524" layer="94"/>
<wire x1="-2.794" y1="-0.762" x2="-2.286" y2="0" width="0.1524" layer="94"/>
<text x="-7.62" y="0" size="1.778" layer="95" rot="R90" align="bottom-center">&gt;NAME</text>
<pin name="P" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="S" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<wire x1="-1.27" y1="0" x2="-0.762" y2="0" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PB-1P-1T" prefix="SW">
<gates>
<gate name="G$1" symbol="SW-1P1T" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PB-1P1T">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2P1T" package="PB-2P1T">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
<connect gate="G$1" pin="S" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2P1T-2X3" package="PB-2P1T-2X3">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
<connect gate="G$1" pin="S" pad="4"/>
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
<description>&lt;b&gt;Small signal &amp; Zener-Diodes&lt;/b&gt;&lt;p&gt;
</description>
<packages>
<package name="DO35-7">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
 diameter 2 mm, horizontal, grid 7.62 mm</description>
<wire x1="2.286" y1="0.127" x2="1.397" y2="1.016" width="0.127" layer="21" curve="90"/>
<wire x1="1.397" y1="-1.016" x2="2.286" y2="-0.127" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.397" y1="1.016" x2="-2.286" y2="0.127" width="0.127" layer="21" curve="90"/>
<wire x1="-2.286" y1="-0.127" x2="-1.397" y2="-1.016" width="0.127" layer="21" curve="90"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.286" y2="0.254" layer="21"/>
<pad name="A" x="3.81" y="0" drill="0.7"/>
<pad name="C" x="-3.81" y="0" drill="0.7"/>
<text x="-0.0635" y="1.27" size="0.8128" layer="25" ratio="10" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.27" size="0.8128" layer="27" ratio="10" align="top-center">&gt;VALUE</text>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.3048" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.3048" layer="51"/>
<wire x1="-0.635" y1="0" x2="0" y2="0" width="0.127" layer="51"/>
<wire x1="1.016" y1="0.635" x2="1.016" y2="-0.635" width="0.127" layer="21"/>
<wire x1="1.016" y1="-0.635" x2="0" y2="0" width="0.127" layer="21"/>
<wire x1="0" y1="0" x2="1.524" y2="0" width="0.127" layer="51"/>
<wire x1="0" y1="0" x2="1.016" y2="0.635" width="0.127" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.127" layer="51"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.127" layer="51"/>
<wire x1="1.397" y1="1.016" x2="2.286" y2="0.127" width="0.127" layer="21" curve="-90"/>
<wire x1="2.286" y1="0.127" x2="2.286" y2="-0.127" width="0.127" layer="21"/>
<wire x1="1.397" y1="-1.016" x2="2.286" y2="-0.127" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.286" y1="0.127" x2="-1.397" y2="1.016" width="0.127" layer="21" curve="-90"/>
<wire x1="-2.286" y1="-0.127" x2="-1.397" y2="-1.016" width="0.127" layer="21" curve="90"/>
<wire x1="-1.397" y1="-1.016" x2="1.397" y2="-1.016" width="0.127" layer="21"/>
<wire x1="-2.286" y1="0.127" x2="-2.286" y2="-0.127" width="0.127" layer="21"/>
<wire x1="-1.397" y1="1.016" x2="1.397" y2="1.016" width="0.127" layer="21"/>
<rectangle x1="-1.5875" y1="-1.016" x2="-1.0795" y2="1.016" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.286" y2="0.254" layer="21"/>
<rectangle x1="2.286" y1="-0.254" x2="2.921" y2="0.254" layer="21" rot="R180"/>
</package>
<package name="DO35-10">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
 diameter 2 mm, horizontal, grid 10.16 mm</description>
<rectangle x1="2.286" y1="-0.254" x2="4.191" y2="0.254" layer="21"/>
<pad name="A" x="5.08" y="0" drill="0.8"/>
<pad name="C" x="-5.08" y="0" drill="0.8"/>
<wire x1="5.08" y1="0" x2="4.191" y2="0" width="0.508" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.191" y2="0" width="0.508" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="4.191" y2="0.254" layer="21"/>
<rectangle x1="-4.191" y1="-0.254" x2="-2.286" y2="0.254" layer="21"/>
<wire x1="2.286" y1="0.127" x2="1.397" y2="1.016" width="0.127" layer="21" curve="90"/>
<wire x1="1.397" y1="-1.016" x2="2.286" y2="-0.127" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.397" y1="1.016" x2="-2.286" y2="0.127" width="0.127" layer="21" curve="90"/>
<wire x1="-2.286" y1="-0.127" x2="-1.397" y2="-1.016" width="0.127" layer="21" curve="90"/>
<text x="-0.0635" y="1.27" size="0.8128" layer="25" ratio="10" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.27" size="0.8128" layer="27" ratio="10" align="top-center">&gt;VALUE</text>
<wire x1="-0.635" y1="0" x2="0" y2="0" width="0.127" layer="51"/>
<wire x1="1.016" y1="0.635" x2="1.016" y2="-0.635" width="0.127" layer="21"/>
<wire x1="1.016" y1="-0.635" x2="0" y2="0" width="0.127" layer="21"/>
<wire x1="0" y1="0" x2="1.524" y2="0" width="0.127" layer="51"/>
<wire x1="0" y1="0" x2="1.016" y2="0.635" width="0.127" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.127" layer="51"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.127" layer="51"/>
<wire x1="1.397" y1="1.016" x2="2.286" y2="0.127" width="0.127" layer="21" curve="-90"/>
<wire x1="1.397" y1="-1.016" x2="2.286" y2="-0.127" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.286" y1="0.127" x2="-1.397" y2="1.016" width="0.127" layer="21" curve="-90"/>
<wire x1="-2.286" y1="-0.127" x2="-1.397" y2="-1.016" width="0.127" layer="21" curve="90"/>
<wire x1="-1.397" y1="-1.016" x2="1.397" y2="-1.016" width="0.127" layer="21"/>
<wire x1="-1.397" y1="1.016" x2="1.397" y2="1.016" width="0.127" layer="21"/>
<rectangle x1="-1.5875" y1="-1.016" x2="-1.0795" y2="1.016" layer="21"/>
<wire x1="-2.286" y1="-0.127" x2="-2.286" y2="0.127" width="0.127" layer="21"/>
<wire x1="2.286" y1="0.127" x2="2.286" y2="-0.127" width="0.127" layer="21"/>
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
<pad name="C" x="-1.27" y="0" drill="0.7" diameter="1.4224"/>
<text x="-2.159" y="1.397" size="0.8128" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<pad name="A" x="1.27" y="0" drill="0.7" diameter="1.4224"/>
<circle x="0.8255" y="0" radius="1.016" width="0.2032" layer="21"/>
<wire x1="-0.3175" y1="0" x2="-1.27" y2="0" width="0.4064" layer="51"/>
</package>
<package name="DO35-2_54A">
<wire x1="-2.286" y1="0" x2="-1.651" y2="0" width="0.1524" layer="22"/>
<wire x1="-0.762" y1="-0.635" x2="-0.762" y2="0.635" width="0.1524" layer="22"/>
<wire x1="-0.762" y1="0.635" x2="-1.651" y2="0" width="0.1524" layer="22"/>
<wire x1="-1.651" y1="0" x2="-0.381" y2="0" width="0.1524" layer="22"/>
<wire x1="-1.651" y1="0" x2="-0.762" y2="-0.635" width="0.1524" layer="22"/>
<wire x1="-1.651" y1="0" x2="-1.651" y2="0.635" width="0.1524" layer="22"/>
<wire x1="-1.651" y1="-0.635" x2="-1.651" y2="0" width="0.1524" layer="22"/>
<pad name="C" x="-1.27" y="0" drill="0.7" diameter="1.4224" rot="R180"/>
<text x="-2.159" y="1.397" size="0.8128" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<pad name="A" x="1.27" y="0" drill="0.7" diameter="1.4224" rot="R180"/>
<circle x="-1.27" y="0" radius="1.27" width="0.254" layer="22"/>
<wire x1="0.0635" y1="0" x2="1.27" y2="0" width="0.4064" layer="22"/>
</package>
<package name="DO34-12">
<pad name="C" x="-6.35" y="0" drill="0.8"/>
<pad name="A" x="6.35" y="0" drill="0.8"/>
<wire x1="6.35" y1="0" x2="5.715" y2="0" width="0.127" layer="51"/>
<text x="1.651" y="-0.762" size="0.8128" layer="25" ratio="10" rot="R180" align="bottom-right">&gt;NAME</text>
<text x="0" y="0.73025" size="0.8128" layer="27" ratio="10" rot="R180" align="top-center">&gt;VALUE</text>
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
<pad name="C" x="-2.54" y="0" drill="0.8"/>
<pad name="A" x="2.54" y="0" drill="0.8"/>
<wire x1="2.54" y1="0" x2="1.905" y2="0" width="0.127" layer="51"/>
<text x="1.651" y="-0.762" size="0.8128" layer="25" ratio="10" rot="R180" align="bottom-right">&gt;NAME</text>
<text x="0" y="0.73025" size="0.8128" layer="27" ratio="10" rot="R180" align="top-center">&gt;VALUE</text>
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
<package name="DO34-7">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
 diameter 1.8 mm, horizontal, grid 7.62 mm</description>
<pad name="C" x="-3.81" y="0" drill="0.8"/>
<pad name="A" x="3.81" y="0" drill="0.8"/>
<wire x1="3.81" y1="0" x2="3.175" y2="0" width="0.127" layer="51"/>
<text x="1.651" y="-0.762" size="0.8128" layer="25" ratio="10" rot="R180" align="bottom-right">&gt;NAME</text>
<text x="0" y="0.73025" size="0.8128" layer="27" ratio="10" rot="R180" align="top-center">&gt;VALUE</text>
<rectangle x1="1.3208" y1="-0.1016" x2="3.1496" y2="0.1016" layer="21" rot="R180"/>
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
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.127" layer="51"/>
<rectangle x1="-3.1496" y1="-0.1016" x2="-1.3208" y2="0.1016" layer="21"/>
</package>
<package name="DO34-2,5">
<wire x1="-0.1905" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="1.143" y1="0.508" x2="1.143" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-0.508" x2="0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="1.7145" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="1.143" y2="0.508" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0" x2="0.381" y2="-0.4445" width="0.1524" layer="21"/>
<wire x1="0.381" y1="0.508" x2="0.381" y2="0" width="0.1524" layer="21"/>
<pad name="C" x="-1.27" y="0" drill="0.7" diameter="1.4224"/>
<text x="-2.159" y="1.397" size="0.8128" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.159" y="-2.667" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<pad name="A" x="1.27" y="0" drill="0.7" diameter="1.4224"/>
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
<pad name="A" x="1.27" y="0" drill="0.7" diameter="1.4224" rot="R180"/>
<text x="0" y="1.397" size="0.8128" layer="25" ratio="10" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.397" size="0.8128" layer="27" ratio="10" align="top-center">&gt;VALUE</text>
<pad name="C" x="-1.27" y="0" drill="0.7" diameter="1.4224"/>
<circle x="-0.4445" y="0" radius="1.016" width="0.1524" layer="21"/>
<wire x1="0.6985" y1="0" x2="1.27" y2="0" width="0.3048" layer="51"/>
</package>
<package name="DO34-10">
<pad name="C" x="-5.08" y="0" drill="0.8"/>
<pad name="A" x="5.08" y="0" drill="0.8"/>
<wire x1="5.08" y1="0" x2="4.445" y2="0" width="0.127" layer="51"/>
<text x="1.651" y="-0.762" size="0.8128" layer="25" ratio="10" rot="R180" align="bottom-right">&gt;NAME</text>
<text x="0" y="0.73025" size="0.8128" layer="27" ratio="10" rot="R180" align="top-center">&gt;VALUE</text>
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
<pad name="C" x="0" y="3.81" drill="0.8" rot="R270"/>
<pad name="A" x="0" y="-3.81" drill="0.8" rot="R270"/>
<wire x1="0" y1="-3.81" x2="0" y2="-2.921" width="0.127" layer="51"/>
<text x="-1.016" y="1.905" size="0.8128" layer="25" ratio="10" align="bottom-right">&gt;NAME</text>
<text x="-1.016" y="-1.905" size="0.8128" layer="27" ratio="10" align="top-right">&gt;VALUE</text>
<wire x1="0.127" y1="1.27" x2="0.635" y2="0.762" width="0.1016" layer="21" curve="-90"/>
<wire x1="-0.127" y1="1.27" x2="-0.635" y2="0.762" width="0.1016" layer="21" curve="90"/>
<wire x1="-0.635" y1="-0.762" x2="-0.127" y2="-1.27" width="0.1016" layer="21" curve="90"/>
<wire x1="0.635" y1="-0.762" x2="0.127" y2="-1.27" width="0.1016" layer="21" curve="-90"/>
<wire x1="-0.127" y1="1.27" x2="0.127" y2="1.27" width="0.1016" layer="21"/>
<wire x1="0.635" y1="-0.762" x2="0.635" y2="0.762" width="0.1016" layer="21"/>
<wire x1="-0.635" y1="-0.762" x2="-0.635" y2="0.762" width="0.1016" layer="21"/>
<wire x1="-0.127" y1="-1.27" x2="0.127" y2="-1.27" width="0.1016" layer="21"/>
<wire x1="0.381" y1="-0.635" x2="-0.381" y2="-0.635" width="0.0762" layer="21"/>
<wire x1="-0.381" y1="-0.635" x2="0" y2="0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="0.3175" x2="0" y2="-0.889" width="0.0762" layer="51"/>
<wire x1="0" y1="0.0635" x2="0.381" y2="-0.635" width="0.0762" layer="21"/>
<wire x1="0.381" y1="0.0635" x2="0" y2="0.0635" width="0.0762" layer="21"/>
<wire x1="0" y1="0.0635" x2="-0.381" y2="0.0635" width="0.0762" layer="21"/>
<rectangle x1="-0.635" y1="0.5715" x2="0.635" y2="0.8255" layer="21" rot="R180"/>
<rectangle x1="-0.1016" y1="-2.8702" x2="0.1016" y2="-1.3208" layer="21" rot="R180"/>
<wire x1="0" y1="3.81" x2="0" y2="2.921" width="0.127" layer="51"/>
<rectangle x1="-0.1016" y1="1.3208" x2="0.1016" y2="2.8702" layer="21"/>
</package>
<package name="DO34-5V">
<pad name="C" x="0" y="-2.54" drill="0.8" rot="R90"/>
<pad name="A" x="0" y="2.54" drill="0.8" rot="R90"/>
<wire x1="0" y1="2.54" x2="0" y2="1.905" width="0.127" layer="51"/>
<text x="0.381" y="1.524" size="0.8128" layer="25" ratio="10">&gt;NAME</text>
<text x="0.508" y="-1.524" size="0.8128" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
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
<pad name="C" x="0" y="-5.08" drill="0.8" rot="R90"/>
<pad name="A" x="0" y="5.08" drill="0.8" rot="R90"/>
<wire x1="0" y1="5.08" x2="0" y2="4.445" width="0.127" layer="51"/>
<text x="0.254" y="1.524" size="0.8128" layer="25" ratio="10">&gt;NAME</text>
<text x="0.508" y="-1.524" size="0.8128" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
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
<pad name="C" x="0" y="-6.35" drill="0.8" rot="R90"/>
<pad name="A" x="0" y="6.35" drill="0.8" rot="R90"/>
<wire x1="0" y1="6.35" x2="0" y2="5.715" width="0.127" layer="51"/>
<text x="0.254" y="1.524" size="0.8128" layer="25" ratio="10">&gt;NAME</text>
<text x="0.508" y="-1.524" size="0.8128" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
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
<package name="OA79-18">
<wire x1="-5.85" y1="0" x2="-3.81" y2="2.04" width="0.127" layer="21" curve="-90"/>
<wire x1="-5.85" y1="0" x2="-3.81" y2="-2.04" width="0.127" layer="21" curve="90"/>
<wire x1="5.85" y1="0" x2="3.81" y2="-2.04" width="0.127" layer="21" curve="-90"/>
<wire x1="5.85" y1="0" x2="3.81" y2="2.04" width="0.127" layer="21" curve="90"/>
<wire x1="-3.81" y1="2.04" x2="3.81" y2="2.04" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-2.04" x2="3.81" y2="-2.04" width="0.127" layer="21"/>
<rectangle x1="-3.81" y1="-2.04" x2="-2.54" y2="2.04" layer="21"/>
<pad name="C" x="-8.89" y="0" drill="0.9" diameter="1.9304"/>
<text x="-1.6764" y="0.2286" size="0.8128" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6764" y="-0.2286" size="0.8128" layer="27" ratio="10" align="top-left">&gt;VALUE</text>
<wire x1="-8.89" y1="0" x2="-7.5946" y2="0" width="0.4064" layer="51"/>
<pad name="A" x="8.89" y="0" drill="0.9" diameter="1.9304"/>
<rectangle x1="-7.9248" y1="-0.2032" x2="-5.85" y2="0.2032" layer="21"/>
<rectangle x1="5.85" y1="-0.2032" x2="7.9248" y2="0.2032" layer="21" rot="R180"/>
<wire x1="8.89" y1="0" x2="7.5946" y2="0" width="0.4064" layer="51"/>
</package>
<package name="DO7-10">
<pad name="C" x="-5.08" y="0" drill="0.8"/>
<pad name="A" x="5.08" y="0" drill="0.8"/>
<wire x1="-5.08" y1="0" x2="-4.445" y2="0" width="0.127" layer="51"/>
<rectangle x1="-4.445" y1="-0.125" x2="-1.905" y2="0.125" layer="21"/>
<wire x1="5.08" y1="0" x2="4.445" y2="0" width="0.127" layer="51"/>
<rectangle x1="1.905" y1="-0.125" x2="4.445" y2="0.125" layer="21" rot="R180"/>
<text x="0" y="-1.27" size="0.8128" layer="25" ratio="10" align="top-center">&gt;NAME</text>
<text x="0" y="1.27" size="0.8128" layer="27" ratio="10" rot="R180" align="top-center">&gt;VALUE</text>
<wire x1="0.9825" y1="0.6985" x2="0.9825" y2="-0.631" width="0.1524" layer="21"/>
<wire x1="0.9825" y1="-0.631" x2="-0.08125" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.5" y1="0" x2="1.4765" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.08125" y1="0" x2="0.9825" y2="0.6985" width="0.1524" layer="21"/>
<rectangle x1="-1.17475" y1="-0.9525" x2="-0.79375" y2="0.9525" layer="21"/>
<wire x1="-0.10875" y1="0.6985" x2="-0.10875" y2="-0.631" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0.3175" x2="-1.27" y2="0.9525" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0.9525" x2="0.9525" y2="0.9525" width="0.1016" layer="21"/>
<wire x1="0.92075" y1="-0.9525" x2="-1.23825" y2="-0.9525" width="0.1016" layer="21"/>
<wire x1="-1.27" y1="-0.9525" x2="-1.905" y2="-0.3175" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.905" y1="0.3175" x2="-1.905" y2="-0.3175" width="0.1016" layer="21"/>
<wire x1="1.905" y1="-0.3175" x2="1.27" y2="-0.9525" width="0.1016" layer="21" curve="-90"/>
<wire x1="1.27" y1="-0.9525" x2="-0.9525" y2="-0.9525" width="0.1016" layer="21"/>
<wire x1="-0.92075" y1="0.9525" x2="1.23825" y2="0.9525" width="0.1016" layer="21"/>
<wire x1="1.27" y1="0.9525" x2="1.905" y2="0.3175" width="0.1016" layer="21" curve="-90"/>
<wire x1="1.905" y1="-0.3175" x2="1.905" y2="0.3175" width="0.1016" layer="21"/>
</package>
<package name="DO7-7">
<pad name="C" x="-3.81" y="0" drill="0.8"/>
<pad name="A" x="3.81" y="0" drill="0.8"/>
<text x="0" y="-1.27" size="0.8128" layer="25" ratio="10" align="top-center">&gt;NAME</text>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.127" layer="51"/>
<rectangle x1="-3.175" y1="-0.1016" x2="-1.94945" y2="0.1016" layer="21"/>
<text x="0" y="1.27" size="0.8128" layer="27" ratio="10" rot="R180" align="top-center">&gt;VALUE</text>
<wire x1="0.9825" y1="0.6985" x2="0.9825" y2="-0.631" width="0.1524" layer="21"/>
<wire x1="0.9825" y1="-0.631" x2="-0.08125" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.5" y1="0" x2="1.4765" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.08125" y1="0" x2="0.9825" y2="0.6985" width="0.1524" layer="21"/>
<rectangle x1="-1.17475" y1="-0.9525" x2="-0.79375" y2="0.9525" layer="21"/>
<wire x1="-0.10875" y1="0.6985" x2="-0.10875" y2="-0.631" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0.3175" x2="-1.27" y2="0.9525" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0.9525" x2="0.9525" y2="0.9525" width="0.1016" layer="21"/>
<wire x1="0.92075" y1="-0.9525" x2="-1.23825" y2="-0.9525" width="0.1016" layer="21"/>
<wire x1="3.96875" y1="0" x2="3.175" y2="0" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-0.9525" x2="-1.905" y2="-0.3175" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.905" y1="0.3175" x2="-1.905" y2="-0.3175" width="0.1016" layer="21"/>
<wire x1="1.905" y1="-0.3175" x2="1.27" y2="-0.9525" width="0.1016" layer="21" curve="-90"/>
<wire x1="1.27" y1="-0.9525" x2="-0.9525" y2="-0.9525" width="0.1016" layer="21"/>
<wire x1="-0.92075" y1="0.9525" x2="1.23825" y2="0.9525" width="0.1016" layer="21"/>
<wire x1="1.27" y1="0.9525" x2="1.905" y2="0.3175" width="0.1016" layer="21" curve="-90"/>
<wire x1="1.905" y1="-0.3175" x2="1.905" y2="0.3175" width="0.1016" layer="21"/>
<rectangle x1="1.94945" y1="-0.1016" x2="3.175" y2="0.1016" layer="21" rot="R180"/>
</package>
<package name="DO7-5">
<pad name="C" x="-2.529840625" y="0.00203125" drill="0.8"/>
<pad name="A" x="2.54203125" y="0.00203125" drill="0.8"/>
<wire x1="-2.849371875" y1="0.00203125" x2="-2.214371875" y2="0.00203125" width="0.127" layer="51"/>
<rectangle x1="-2.2225" y1="-0.15875" x2="-1.83546875" y2="0.15875" layer="21"/>
<rectangle x1="1.83546875" y1="-0.15875" x2="2.2225" y2="0.15875" layer="21" rot="R180"/>
<wire x1="2.849371875" y1="-0.00203125" x2="2.214371875" y2="-0.00203125" width="0.127" layer="51"/>
<text x="0" y="-1.27" size="0.8128" layer="25" ratio="10" align="top-center">&gt;NAME</text>
<text x="0" y="1.27" size="0.8128" layer="27" ratio="10" rot="R180" align="top-center">&gt;VALUE</text>
<wire x1="0.9825" y1="0.6985" x2="0.9825" y2="-0.631" width="0.1524" layer="21"/>
<wire x1="0.9825" y1="-0.631" x2="-0.08125" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.5" y1="0" x2="1.4765" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.08125" y1="0" x2="0.9825" y2="0.6985" width="0.1524" layer="21"/>
<rectangle x1="-1.17475" y1="-0.9525" x2="-0.79375" y2="0.9525" layer="21"/>
<wire x1="-0.10875" y1="0.6985" x2="-0.10875" y2="-0.631" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="0.3175" x2="-1.27" y2="0.9525" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0.9525" x2="0.9525" y2="0.9525" width="0.1016" layer="21"/>
<wire x1="0.92075" y1="-0.9525" x2="-1.23825" y2="-0.9525" width="0.1016" layer="21"/>
<wire x1="-1.27" y1="-0.9525" x2="-1.905" y2="-0.3175" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.905" y1="0.3175" x2="-1.905" y2="-0.3175" width="0.1016" layer="21"/>
<wire x1="1.905" y1="-0.3175" x2="1.27" y2="-0.9525" width="0.1016" layer="21" curve="-90"/>
<wire x1="1.27" y1="-0.9525" x2="-0.9525" y2="-0.9525" width="0.1016" layer="21"/>
<wire x1="-0.92075" y1="0.9525" x2="1.23825" y2="0.9525" width="0.1016" layer="21"/>
<wire x1="1.27" y1="0.9525" x2="1.905" y2="0.3175" width="0.1016" layer="21" curve="-90"/>
<wire x1="1.905" y1="-0.3175" x2="1.905" y2="0.3175" width="0.1016" layer="21"/>
</package>
<package name="DO34-18">
<wire x1="-1.524" y1="-0.889" x2="1.524" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="1.524" y1="0.889" x2="-1.524" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.524" y1="-0.889" x2="1.524" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="0.889" x2="-1.524" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="0" x2="-0.127" y2="0" width="0.1524" layer="51"/>
<wire x1="0.889" y1="0.508" x2="0.889" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="0.889" y1="-0.508" x2="-0.127" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="0" x2="1.27" y2="0" width="0.1524" layer="51"/>
<wire x1="-0.127" y1="0" x2="0.889" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="0.508" x2="-0.127" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="0" x2="-0.127" y2="-0.508" width="0.1524" layer="21"/>
<pad name="C" x="-8.89" y="0" drill="0.8"/>
<pad name="A" x="8.89" y="0" drill="0.8"/>
<text x="-2.794" y="1.143" size="0.8128" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.794" y="-2.413" size="0.8128" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.143" y1="-0.889" x2="-0.762" y2="0.889" layer="21"/>
<wire x1="-7.62" y1="0" x2="-1.6002" y2="0" width="0.254" layer="51"/>
<wire x1="7.62" y1="0" x2="1.6002" y2="0" width="0.254" layer="51"/>
</package>
<package name="DO34-15">
<pad name="C" x="-7.62" y="0" drill="0.8"/>
<pad name="A" x="7.62" y="0" drill="0.8"/>
<text x="0" y="1.27" size="0.8128" layer="25" ratio="10" rot="R180" align="top-center">&gt;NAME</text>
<text x="0" y="-1.27" size="0.8128" layer="27" ratio="10" align="top-center">&gt;VALUE</text>
<wire x1="-7.62" y1="0" x2="-6.731" y2="0" width="0.1016" layer="51"/>
<wire x1="-0.508" y1="-0.635" x2="0.60325" y2="-0.635" width="0.1016" layer="21"/>
<wire x1="0.60325" y1="-0.635" x2="0.635" y2="-0.635" width="0.1016" layer="21"/>
<wire x1="0.4445" y1="0.381" x2="0.4445" y2="-0.381" width="0.1016" layer="21"/>
<wire x1="0.4445" y1="-0.381" x2="-0.254" y2="0" width="0.1016" layer="21"/>
<wire x1="-0.508" y1="0" x2="0.8255" y2="0" width="0.1016" layer="51"/>
<wire x1="-0.254" y1="0" x2="0.4445" y2="0.381" width="0.1016" layer="21"/>
<wire x1="-0.254" y1="0.381" x2="-0.254" y2="0" width="0.1016" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.381" width="0.1016" layer="21"/>
<rectangle x1="-0.8255" y1="-0.635" x2="-0.635" y2="0.635" layer="21"/>
<wire x1="0.60325" y1="-0.635" x2="0.84455" y2="-0.6223" width="0.1016" layer="21"/>
<wire x1="0.84455" y1="-0.6223" x2="1.04775" y2="-0.508" width="0.1016" layer="21"/>
<wire x1="1.04775" y1="-0.508" x2="1.17475" y2="-0.381" width="0.1016" layer="21"/>
<wire x1="1.17475" y1="-0.381" x2="1.23825" y2="-0.1905" width="0.1016" layer="21"/>
<wire x1="1.23825" y1="-0.1905" x2="1.23825" y2="0.254" width="0.1016" layer="21"/>
<wire x1="-0.66675" y1="0.635" x2="0.60325" y2="0.635" width="0.1016" layer="21"/>
<wire x1="0.60325" y1="0.635" x2="0.635" y2="0.635" width="0.1016" layer="21"/>
<wire x1="0.60325" y1="0.635" x2="0.84455" y2="0.6223" width="0.1016" layer="21"/>
<wire x1="0.84455" y1="0.6223" x2="1.04775" y2="0.508" width="0.1016" layer="21"/>
<wire x1="1.04775" y1="0.508" x2="1.17475" y2="0.381" width="0.1016" layer="21"/>
<wire x1="1.17475" y1="0.381" x2="1.23825" y2="0.1905" width="0.1016" layer="21"/>
<wire x1="-0.60325" y1="0.635" x2="-0.635" y2="0.635" width="0.1016" layer="21"/>
<wire x1="-0.60325" y1="0.635" x2="-0.84455" y2="0.6223" width="0.1016" layer="21"/>
<wire x1="-0.84455" y1="0.6223" x2="-1.04775" y2="0.508" width="0.1016" layer="21"/>
<wire x1="-1.04775" y1="0.508" x2="-1.17475" y2="0.381" width="0.1016" layer="21"/>
<wire x1="-1.17475" y1="0.381" x2="-1.23825" y2="0.1905" width="0.1016" layer="21"/>
<wire x1="-1.23825" y1="0.1905" x2="-1.23825" y2="-0.1905" width="0.1016" layer="21"/>
<wire x1="-0.47625" y1="-0.635" x2="-0.635" y2="-0.635" width="0.1016" layer="21"/>
<wire x1="-0.60325" y1="-0.635" x2="-0.84455" y2="-0.6223" width="0.1016" layer="21"/>
<wire x1="-0.84455" y1="-0.6223" x2="-1.04775" y2="-0.508" width="0.1016" layer="21"/>
<wire x1="-1.04775" y1="-0.508" x2="-1.17475" y2="-0.381" width="0.1016" layer="21"/>
<wire x1="-1.17475" y1="-0.381" x2="-1.23825" y2="-0.1905" width="0.1016" layer="21"/>
<rectangle x1="-7.239" y1="-0.0762" x2="-1.27" y2="0.0762" layer="21"/>
<wire x1="7.62" y1="0" x2="6.731" y2="0" width="0.1016" layer="51"/>
<rectangle x1="1.27" y1="-0.0762" x2="7.239" y2="0.0762" layer="21" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="D">
<pin name="A" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="C" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<text x="-2.54" y="0" size="1.27" layer="95" align="bottom-right">&gt;NAME</text>
<text x="-2.54" y="-2.286" size="1.27" layer="96" align="bottom-right">&gt;VALUE</text>
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
<device name="OA79" package="OA79-18">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-7-10" package="DO7-10">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-7-7" package="DO7-7">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-7-5" package="DO7-5">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="-34-18" package="DO34-18">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="34-20" package="DO34-15">
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
<library name="pad">
<packages>
<package name="SPAD">
<pad name="1" x="0" y="0" drill="1" diameter="1.778" stop="no"/>
<text x="-1.143" y="0" size="0.6096" layer="21" font="vector" ratio="9" distance="5" rot="R270" align="top-center">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="SPAD">
<pin name="P$1" x="0" y="0" visible="off" length="point" direction="pas" function="dot"/>
<wire x1="0" y1="0" x2="-2.54" y2="0" width="0.254" layer="94"/>
<circle x="-3.81" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="-6.35" y="0" size="1.27" layer="95" align="center-right">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="SPAD" prefix="J">
<gates>
<gate name="1" symbol="SPAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SPAD">
<connects>
<connect gate="1" pin="P$1" pad="1"/>
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
<part name="U$2" library="lcd" deviceset="TDSO1160" device="-2.54" value="TDSO1160-2.54"/>
<part name="U$3" library="lcd" deviceset="TDSO1160" device="-2.54" value="TDSO1160-2.54"/>
<part name="U$4" library="lcd" deviceset="TDSO1160" device="-2.54" value="TDSO1160-2.54"/>
<part name="R1" library="r" deviceset="R" device="0202/5-V"/>
<part name="R2" library="r" deviceset="R" device="0202/5-V"/>
<part name="R3" library="r" deviceset="R" device="0202/5-V"/>
<part name="R4" library="r" deviceset="R" device="0202/5-V"/>
<part name="R5" library="r" deviceset="R" device="0202/5-V"/>
<part name="R6" library="r" deviceset="R" device="0202/5-V"/>
<part name="R7" library="r" deviceset="R" device="0202/5-V"/>
<part name="R8" library="r" deviceset="R" device="0202/5-V"/>
<part name="J1" library="pinconn" deviceset="CONN-8P" device=""/>
<part name="J2" library="pinconn" deviceset="CONN-4P" device="-4P"/>
<part name="U$1" library="lcd" deviceset="TDSO1160" device="-2.54" value="TDSO1160-2.54"/>
<part name="SW1" library="sw" deviceset="PB-1P-1T" device="2P1T-2X3" value="PB-1P-1T2P1T-2X3"/>
<part name="SW2" library="sw" deviceset="PB-1P-1T" device="2P1T-2X3" value="PB-1P-1T2P1T-2X3"/>
<part name="SW3" library="sw" deviceset="PB-1P-1T" device="2P1T-2X3" value="PB-1P-1T2P1T-2X3"/>
<part name="SW4" library="sw" deviceset="PB-1P-1T" device="2P1T-2X3" value="PB-1P-1T2P1T-2X3"/>
<part name="J3" library="pinconn" deviceset="CONN-6P" device=""/>
<part name="D4" library="d" deviceset="1N4148" device="34-2,5" value=""/>
<part name="D3" library="d" deviceset="1N4148" device="34-2,5" value=""/>
<part name="D2" library="d" deviceset="1N4148" device="34-2,5" value=""/>
<part name="D1" library="d" deviceset="1N4148" device="34-2,5" value=""/>
<part name="VCC" library="pad" deviceset="SPAD" device=""/>
<part name="R9" library="r" deviceset="R" device="0202/5-V" value="10k"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$2" gate="G$1" x="50.8" y="25.4"/>
<instance part="U$3" gate="G$1" x="81.28" y="25.4"/>
<instance part="U$4" gate="G$1" x="111.76" y="25.4"/>
<instance part="R1" gate="G$1" x="55.88" y="-30.48"/>
<instance part="R2" gate="G$1" x="60.96" y="-30.48"/>
<instance part="R3" gate="G$1" x="66.04" y="-30.48"/>
<instance part="R4" gate="G$1" x="71.12" y="-30.48"/>
<instance part="R5" gate="G$1" x="76.2" y="-30.48"/>
<instance part="R6" gate="G$1" x="81.28" y="-30.48"/>
<instance part="R7" gate="G$1" x="86.36" y="-30.48"/>
<instance part="R8" gate="G$1" x="91.44" y="-30.48"/>
<instance part="J1" gate="G$1" x="134.62" y="-54.61"/>
<instance part="J2" gate="G$1" x="135.89" y="-35.56"/>
<instance part="U$1" gate="G$1" x="20.32" y="25.4"/>
<instance part="SW1" gate="G$1" x="2.54" y="-15.24"/>
<instance part="SW2" gate="G$1" x="15.24" y="-13.97"/>
<instance part="SW3" gate="G$1" x="27.94" y="-15.24"/>
<instance part="SW4" gate="G$1" x="40.64" y="-15.24"/>
<instance part="J3" gate="G$1" x="-13.97" y="-39.37" rot="MR0"/>
<instance part="D4" gate="G$1" x="114.3" y="-16.51" rot="R180"/>
<instance part="D3" gate="G$1" x="109.22" y="-16.51" rot="R180"/>
<instance part="D2" gate="G$1" x="104.14" y="-16.51" rot="R180"/>
<instance part="D1" gate="G$1" x="99.06" y="-16.51" rot="R180"/>
<instance part="VCC" gate="1" x="-10.16" y="-60.96"/>
<instance part="R9" gate="G$1" x="2.54" y="-53.34"/>
</instances>
<busses>
<bus name="C[1..4],A,B,C,D,E,F,G,P">
<segment>
<wire x1="5.08" y1="0" x2="35.56" y2="0" width="0.762" layer="92"/>
<wire x1="35.56" y1="0" x2="35.56" y2="30.48" width="0.762" layer="92"/>
<wire x1="35.56" y1="0" x2="53.34" y2="0" width="0.762" layer="92"/>
<wire x1="53.34" y1="0" x2="66.04" y2="0" width="0.762" layer="92"/>
<wire x1="66.04" y1="0" x2="66.04" y2="30.48" width="0.762" layer="92"/>
<wire x1="66.04" y1="0" x2="81.28" y2="0" width="0.762" layer="92"/>
<wire x1="96.52" y1="0" x2="96.52" y2="30.48" width="0.762" layer="92"/>
<wire x1="96.52" y1="0" x2="127" y2="0" width="0.762" layer="92"/>
<wire x1="127" y1="0" x2="127" y2="30.48" width="0.762" layer="92"/>
<label x="41.91" y="-2.54" size="1.778" layer="95"/>
<wire x1="5.08" y1="0" x2="5.08" y2="30.48" width="0.762" layer="92"/>
<wire x1="53.34" y1="0" x2="53.34" y2="-15.24" width="0.762" layer="92"/>
<wire x1="53.34" y1="-15.24" x2="88.9" y2="-15.24" width="0.762" layer="92"/>
<wire x1="96.52" y1="0" x2="81.28" y2="0" width="0.762" layer="92"/>
<wire x1="81.28" y1="0" x2="81.28" y2="-7.62" width="0.762" layer="92"/>
<wire x1="111.76" y1="-7.62" x2="81.28" y2="-7.62" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="C1" class="0">
<segment>
<wire x1="96.52" y1="-7.62" x2="99.06" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="A"/>
<wire x1="99.06" y1="-10.16" x2="99.06" y2="-13.97" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="C@1"/>
<wire x1="35.56" y1="30.48" x2="33.02" y2="33.02" width="0.1524" layer="91"/>
<wire x1="33.02" y1="33.02" x2="30.48" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="C@2"/>
<wire x1="35.56" y1="27.94" x2="33.02" y2="30.48" width="0.1524" layer="91"/>
<wire x1="33.02" y1="30.48" x2="30.48" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SW1" gate="G$1" pin="S"/>
<wire x1="5.08" y1="0" x2="2.54" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C2" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="C@1"/>
<wire x1="60.96" y1="33.02" x2="63.5" y2="33.02" width="0.1524" layer="91"/>
<wire x1="63.5" y1="33.02" x2="66.04" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="C@2"/>
<wire x1="60.96" y1="30.48" x2="62.23" y2="30.48" width="0.1524" layer="91"/>
<wire x1="62.23" y1="30.48" x2="66.04" y2="26.67" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="101.6" y1="-7.62" x2="104.14" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="A"/>
<wire x1="104.14" y1="-10.16" x2="104.14" y2="-13.97" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SW2" gate="G$1" pin="S"/>
<wire x1="17.78" y1="0" x2="15.24" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-2.54" x2="15.24" y2="-8.89" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C3" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="C@1"/>
<wire x1="91.44" y1="33.02" x2="93.98" y2="33.02" width="0.1524" layer="91"/>
<wire x1="93.98" y1="33.02" x2="96.52" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="C@2"/>
<wire x1="91.44" y1="30.48" x2="92.71" y2="30.48" width="0.1524" layer="91"/>
<wire x1="92.71" y1="30.48" x2="96.52" y2="26.67" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="106.68" y1="-7.62" x2="109.22" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="D3" gate="G$1" pin="A"/>
<wire x1="109.22" y1="-10.16" x2="109.22" y2="-13.97" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SW3" gate="G$1" pin="S"/>
<wire x1="30.48" y1="0" x2="27.94" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-2.54" x2="27.94" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C4" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="C@1"/>
<wire x1="121.92" y1="33.02" x2="124.46" y2="33.02" width="0.1524" layer="91"/>
<wire x1="124.46" y1="33.02" x2="127" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="C@2"/>
<wire x1="121.92" y1="30.48" x2="124.46" y2="30.48" width="0.1524" layer="91"/>
<wire x1="124.46" y1="30.48" x2="127" y2="27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="111.76" y1="-7.62" x2="114.3" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="D4" gate="G$1" pin="A"/>
<wire x1="114.3" y1="-10.16" x2="114.3" y2="-13.97" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SW4" gate="G$1" pin="S"/>
<wire x1="40.64" y1="-10.16" x2="40.64" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-2.54" x2="43.18" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DP_" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="DP"/>
<wire x1="121.92" y1="17.78" x2="124.46" y2="17.78" width="0.1524" layer="91"/>
<wire x1="124.46" y1="17.78" x2="127" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="DP"/>
<wire x1="91.44" y1="17.78" x2="93.98" y2="17.78" width="0.1524" layer="91"/>
<wire x1="93.98" y1="17.78" x2="96.52" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="DP"/>
<wire x1="60.96" y1="17.78" x2="63.5" y2="17.78" width="0.1524" layer="91"/>
<wire x1="63.5" y1="17.78" x2="66.04" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="88.9" y1="-15.24" x2="91.44" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-17.78" x2="91.44" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="R8" gate="G$1" pin="2"/>
<label x="91.44" y="-22.86" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="DP"/>
<wire x1="35.56" y1="15.24" x2="33.02" y2="17.78" width="0.1524" layer="91"/>
<wire x1="33.02" y1="17.78" x2="30.48" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="A_" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="A"/>
<wire x1="101.6" y1="33.02" x2="99.06" y2="33.02" width="0.1524" layer="91"/>
<wire x1="99.06" y1="33.02" x2="96.52" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="A"/>
<wire x1="71.12" y1="33.02" x2="68.58" y2="33.02" width="0.1524" layer="91"/>
<wire x1="68.58" y1="33.02" x2="66.04" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="A"/>
<wire x1="40.64" y1="33.02" x2="38.1" y2="33.02" width="0.1524" layer="91"/>
<wire x1="38.1" y1="33.02" x2="35.56" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="53.34" y1="-15.24" x2="55.88" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="55.88" y1="-17.78" x2="55.88" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
<label x="55.88" y="-22.86" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="A"/>
<wire x1="5.08" y1="30.48" x2="7.62" y2="33.02" width="0.1524" layer="91"/>
<wire x1="7.62" y1="33.02" x2="10.16" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B_" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="B"/>
<wire x1="101.6" y1="30.48" x2="99.06" y2="30.48" width="0.1524" layer="91"/>
<wire x1="99.06" y1="30.48" x2="96.52" y2="27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="B"/>
<wire x1="71.12" y1="30.48" x2="68.58" y2="30.48" width="0.1524" layer="91"/>
<wire x1="68.58" y1="30.48" x2="66.04" y2="27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="B"/>
<wire x1="40.64" y1="30.48" x2="38.1" y2="30.48" width="0.1524" layer="91"/>
<wire x1="38.1" y1="30.48" x2="35.56" y2="27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="58.42" y1="-15.24" x2="60.96" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-17.78" x2="60.96" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="2"/>
<label x="60.96" y="-22.86" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="B"/>
<wire x1="5.08" y1="27.94" x2="7.62" y2="30.48" width="0.1524" layer="91"/>
<wire x1="7.62" y1="30.48" x2="10.16" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="C_" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="C"/>
<wire x1="101.6" y1="27.94" x2="99.06" y2="27.94" width="0.1524" layer="91"/>
<wire x1="99.06" y1="27.94" x2="96.52" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="C"/>
<wire x1="71.12" y1="27.94" x2="68.58" y2="27.94" width="0.1524" layer="91"/>
<wire x1="68.58" y1="27.94" x2="66.04" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="C"/>
<wire x1="40.64" y1="27.94" x2="38.1" y2="27.94" width="0.1524" layer="91"/>
<wire x1="38.1" y1="27.94" x2="35.56" y2="25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="63.5" y1="-15.24" x2="66.04" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-17.78" x2="66.04" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="2"/>
<label x="66.04" y="-22.86" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="C"/>
<wire x1="5.08" y1="25.4" x2="7.62" y2="27.94" width="0.1524" layer="91"/>
<wire x1="7.62" y1="27.94" x2="10.16" y2="27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D_" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="D"/>
<wire x1="101.6" y1="25.4" x2="99.06" y2="25.4" width="0.1524" layer="91"/>
<wire x1="99.06" y1="25.4" x2="96.52" y2="22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="D"/>
<wire x1="71.12" y1="25.4" x2="68.58" y2="25.4" width="0.1524" layer="91"/>
<wire x1="68.58" y1="25.4" x2="66.04" y2="22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="D"/>
<wire x1="40.64" y1="25.4" x2="38.1" y2="25.4" width="0.1524" layer="91"/>
<wire x1="38.1" y1="25.4" x2="35.56" y2="22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="68.58" y1="-15.24" x2="71.12" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-17.78" x2="71.12" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="2"/>
<label x="71.12" y="-22.86" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="D"/>
<wire x1="5.08" y1="22.86" x2="7.62" y2="25.4" width="0.1524" layer="91"/>
<wire x1="7.62" y1="25.4" x2="10.16" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="E_" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="E"/>
<wire x1="101.6" y1="22.86" x2="99.06" y2="22.86" width="0.1524" layer="91"/>
<wire x1="99.06" y1="22.86" x2="96.52" y2="20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="E"/>
<wire x1="71.12" y1="22.86" x2="68.58" y2="22.86" width="0.1524" layer="91"/>
<wire x1="68.58" y1="22.86" x2="66.04" y2="20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="E"/>
<wire x1="40.64" y1="22.86" x2="38.1" y2="22.86" width="0.1524" layer="91"/>
<wire x1="38.1" y1="22.86" x2="35.56" y2="20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="73.66" y1="-15.24" x2="76.2" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-17.78" x2="76.2" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="2"/>
<label x="76.2" y="-22.86" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="E"/>
<wire x1="5.08" y1="20.32" x2="7.62" y2="22.86" width="0.1524" layer="91"/>
<wire x1="7.62" y1="22.86" x2="10.16" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="F_" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="F"/>
<wire x1="101.6" y1="20.32" x2="99.06" y2="20.32" width="0.1524" layer="91"/>
<wire x1="99.06" y1="20.32" x2="96.52" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="F"/>
<wire x1="71.12" y1="20.32" x2="68.58" y2="20.32" width="0.1524" layer="91"/>
<wire x1="68.58" y1="20.32" x2="66.04" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="F"/>
<wire x1="40.64" y1="20.32" x2="38.1" y2="20.32" width="0.1524" layer="91"/>
<wire x1="38.1" y1="20.32" x2="35.56" y2="17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="78.74" y1="-15.24" x2="81.28" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-17.78" x2="81.28" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="2"/>
<label x="81.28" y="-22.86" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="F"/>
<wire x1="5.08" y1="17.78" x2="7.62" y2="20.32" width="0.1524" layer="91"/>
<wire x1="7.62" y1="20.32" x2="10.16" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="G_" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="G"/>
<wire x1="101.6" y1="17.78" x2="99.06" y2="17.78" width="0.1524" layer="91"/>
<wire x1="99.06" y1="17.78" x2="96.52" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="G"/>
<wire x1="71.12" y1="17.78" x2="68.58" y2="17.78" width="0.1524" layer="91"/>
<wire x1="68.58" y1="17.78" x2="66.04" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="G"/>
<wire x1="40.64" y1="17.78" x2="38.1" y2="17.78" width="0.1524" layer="91"/>
<wire x1="38.1" y1="17.78" x2="35.56" y2="15.24" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="83.82" y1="-15.24" x2="86.36" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-17.78" x2="86.36" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="2"/>
<label x="86.36" y="-22.86" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="G"/>
<wire x1="5.08" y1="15.24" x2="7.62" y2="17.78" width="0.1524" layer="91"/>
<wire x1="7.62" y1="17.78" x2="10.16" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RB0" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="1"/>
<pinref part="J1" gate="G$1" pin="1"/>
<wire x1="133.35" y1="-63.5" x2="81.28" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-63.5" x2="81.28" y2="-35.56" width="0.1524" layer="91"/>
<label x="106.68" y="-63.5" size="1.27" layer="95"/>
</segment>
</net>
<net name="RB7" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="60.96" y1="-35.56" x2="60.96" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-45.72" x2="133.35" y2="-45.72" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="8"/>
<label x="106.68" y="-45.72" size="1.27" layer="95"/>
</segment>
</net>
<net name="RB6" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="7"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="133.35" y1="-48.26" x2="55.88" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="55.88" y1="-48.26" x2="55.88" y2="-35.56" width="0.1524" layer="91"/>
<label x="106.68" y="-48.26" size="1.27" layer="95"/>
</segment>
</net>
<net name="RB5" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="6"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="133.35" y1="-50.8" x2="66.04" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="66.04" y1="-50.8" x2="66.04" y2="-35.56" width="0.1524" layer="91"/>
<label x="106.68" y="-50.8" size="1.27" layer="95"/>
</segment>
</net>
<net name="RB4" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="5"/>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="133.35" y1="-53.34" x2="91.44" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-53.34" x2="91.44" y2="-35.56" width="0.1524" layer="91"/>
<label x="106.68" y="-53.34" size="1.27" layer="95"/>
</segment>
</net>
<net name="RB3" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="4"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="133.35" y1="-55.88" x2="76.2" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-55.88" x2="76.2" y2="-35.56" width="0.1524" layer="91"/>
<label x="106.68" y="-55.88" size="1.27" layer="95"/>
</segment>
</net>
<net name="RB2" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="3"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="133.35" y1="-58.42" x2="71.12" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-58.42" x2="71.12" y2="-35.56" width="0.1524" layer="91"/>
<label x="106.68" y="-58.42" size="1.27" layer="95"/>
</segment>
</net>
<net name="RB1" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="2"/>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="133.35" y1="-60.96" x2="86.36" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-60.96" x2="86.36" y2="-35.56" width="0.1524" layer="91"/>
<label x="106.68" y="-60.96" size="1.27" layer="95"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<wire x1="39.37" y1="-10.16" x2="38.1" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RA0" class="0">
<segment>
<pinref part="SW1" gate="G$1" pin="P"/>
<wire x1="2.54" y1="-20.32" x2="2.54" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="J3" gate="G$1" pin="1"/>
<wire x1="2.54" y1="-45.72" x2="-11.43" y2="-45.72" width="0.1524" layer="91"/>
<junction x="2.54" y="-45.72"/>
<wire x1="2.54" y1="-25.4" x2="2.54" y2="-45.72" width="0.1524" layer="91"/>
<pinref part="R9" gate="G$1" pin="2"/>
<wire x1="2.54" y1="-48.26" x2="2.54" y2="-45.72" width="0.1524" layer="91"/>
<label x="-7.62" y="-45.72" size="1.27" layer="95"/>
<pinref part="SW2" gate="G$1" pin="P"/>
<wire x1="15.24" y1="-19.05" x2="15.24" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="SW3" gate="G$1" pin="P"/>
<wire x1="27.94" y1="-20.32" x2="27.94" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="SW4" gate="G$1" pin="P"/>
<wire x1="40.64" y1="-20.32" x2="40.64" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-25.4" x2="27.94" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="27.94" y1="-25.4" x2="15.24" y2="-25.4" width="0.1524" layer="91"/>
<junction x="27.94" y="-25.4"/>
<wire x1="15.24" y1="-25.4" x2="2.54" y2="-25.4" width="0.1524" layer="91"/>
<junction x="15.24" y="-25.4"/>
<junction x="2.54" y="-25.4"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="4"/>
<pinref part="D4" gate="G$1" pin="C"/>
<wire x1="133.35" y1="-30.48" x2="114.3" y2="-30.48" width="0.1524" layer="91"/>
<wire x1="114.3" y1="-30.48" x2="114.3" y2="-19.05" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="3"/>
<pinref part="D3" gate="G$1" pin="C"/>
<wire x1="133.35" y1="-33.02" x2="109.22" y2="-33.02" width="0.1524" layer="91"/>
<wire x1="109.22" y1="-33.02" x2="109.22" y2="-19.05" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="2"/>
<pinref part="D2" gate="G$1" pin="C"/>
<wire x1="133.35" y1="-35.56" x2="104.14" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-35.56" x2="104.14" y2="-19.05" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="J2" gate="G$1" pin="1"/>
<pinref part="D1" gate="G$1" pin="C"/>
<wire x1="133.35" y1="-38.1" x2="99.06" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-38.1" x2="99.06" y2="-19.05" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="VCC" gate="1" pin="P$1"/>
<wire x1="-10.16" y1="-60.96" x2="2.54" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="R9" gate="G$1" pin="1"/>
<wire x1="2.54" y1="-60.96" x2="2.54" y2="-58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RA1" class="0">
<segment>
<pinref part="J3" gate="G$1" pin="2"/>
<wire x1="-11.43" y1="-43.18" x2="-5.08" y2="-43.18" width="0.1524" layer="91"/>
<label x="-7.62" y="-43.18" size="1.27" layer="95"/>
</segment>
</net>
<net name="RA2" class="0">
<segment>
<pinref part="J3" gate="G$1" pin="3"/>
<wire x1="-11.43" y1="-40.64" x2="-5.08" y2="-40.64" width="0.1524" layer="91"/>
<label x="-7.62" y="-40.64" size="1.27" layer="95"/>
</segment>
</net>
<net name="RA3" class="0">
<segment>
<pinref part="J3" gate="G$1" pin="4"/>
<wire x1="-11.43" y1="-38.1" x2="-5.08" y2="-38.1" width="0.1524" layer="91"/>
<label x="-7.62" y="-38.1" size="1.27" layer="95"/>
</segment>
</net>
<net name="RA4" class="0">
<segment>
<pinref part="J3" gate="G$1" pin="5"/>
<wire x1="-11.43" y1="-35.56" x2="-5.08" y2="-35.56" width="0.1524" layer="91"/>
<label x="-7.62" y="-35.56" size="1.27" layer="95"/>
</segment>
</net>
<net name="RA5" class="0">
<segment>
<pinref part="J3" gate="G$1" pin="6"/>
<wire x1="-11.43" y1="-33.02" x2="-5.08" y2="-33.02" width="0.1524" layer="91"/>
<label x="-7.62" y="-33.02" size="1.27" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
