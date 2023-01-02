<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="16" fill="1" visible="no" active="no"/>
<layer number="3" name="Route3" color="17" fill="1" visible="no" active="no"/>
<layer number="4" name="Route4" color="18" fill="1" visible="no" active="no"/>
<layer number="5" name="Route5" color="19" fill="1" visible="no" active="no"/>
<layer number="6" name="Route6" color="25" fill="1" visible="no" active="no"/>
<layer number="7" name="Route7" color="26" fill="1" visible="no" active="no"/>
<layer number="8" name="Route8" color="27" fill="1" visible="no" active="no"/>
<layer number="9" name="Route9" color="28" fill="1" visible="no" active="no"/>
<layer number="10" name="Route10" color="29" fill="1" visible="no" active="no"/>
<layer number="11" name="Route11" color="30" fill="1" visible="no" active="no"/>
<layer number="12" name="Route12" color="20" fill="1" visible="no" active="no"/>
<layer number="13" name="Route13" color="21" fill="1" visible="no" active="no"/>
<layer number="14" name="Route14" color="22" fill="1" visible="no" active="no"/>
<layer number="15" name="Route15" color="23" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
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
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="RS485-TTL">
<packages>
<package name="RS485-TTL">
<wire x1="0" y1="0" x2="42.8" y2="0" width="0.127" layer="21"/>
<wire x1="42.8" y1="0" x2="42.8" y2="15.22" width="0.127" layer="21"/>
<wire x1="42.8" y1="15.22" x2="0" y2="15.22" width="0.127" layer="21"/>
<wire x1="0" y1="15.22" x2="0" y2="0" width="0.127" layer="21"/>
<pad name="GND@1" x="0" y="3.56" drill="0.6" shape="long"/>
<pad name="RXD@1" x="0" y="6.1" drill="0.6" shape="long"/>
<pad name="TXD@1" x="0" y="8.64" drill="0.6" shape="long"/>
<pad name="VCC@1" x="0" y="11.18" drill="0.6" shape="long"/>
<pad name="GND@2" x="1.27" y="3.56" drill="0.6"/>
<pad name="RXD@2" x="1.27" y="6.1" drill="0.6"/>
<pad name="TXD@2" x="1.27" y="8.64" drill="0.6"/>
<pad name="VCC@2" x="1.27" y="11.18" drill="0.6"/>
<pad name="GND_OUT@1" x="41.53" y="2.54" drill="1"/>
<pad name="B-@2" x="41.53" y="7.62" drill="1"/>
<pad name="A+@2" x="41.53" y="12.7" drill="1"/>
<pad name="GND_OUT@2" x="42.8" y="2.54" drill="1"/>
<pad name="B-@1" x="42.8" y="7.62" drill="1"/>
<pad name="A+@1" x="42.8" y="12.7" drill="1"/>
<text x="16.51" y="7.62" size="1.27" layer="21">RS485-TTL</text>
<text x="2.54" y="3.048" size="1.27" layer="21">GND</text>
<text x="2.54" y="5.588" size="1.27" layer="21">RXD</text>
<text x="2.54" y="8.128" size="1.27" layer="21">TXD</text>
<text x="2.54" y="10.668" size="1.27" layer="21">VCC</text>
<text x="40.386" y="3.302" size="1.27" layer="21" rot="R180">GND_OUT</text>
<text x="40.386" y="8.382" size="1.27" layer="21" rot="R180">B-</text>
<text x="40.386" y="13.462" size="1.27" layer="21" rot="R180">A+</text>
<text x="24.384" y="3.048" size="0.8128" layer="21">&gt;name</text>
<text x="24.384" y="1.778" size="0.8128" layer="21">&gt;value</text>
<text x="10.16" y="6.35" size="1.27" layer="21" rot="R90">TTL</text>
<text x="35.56" y="5.08" size="1.27" layer="21" rot="R90">RS485</text>
</package>
</packages>
<symbols>
<symbol name="RS485-TTL">
<pin name="GND" x="-15.24" y="-7.62" length="middle"/>
<pin name="RXD" x="-15.24" y="-2.54" length="middle"/>
<pin name="TXD" x="-15.24" y="2.54" length="middle"/>
<pin name="VCC" x="-15.24" y="7.62" length="middle"/>
<pin name="A+" x="10.16" y="5.08" length="middle" rot="R180"/>
<pin name="B-" x="10.16" y="0" length="middle" rot="R180"/>
<pin name="GND_OUT" x="10.16" y="-5.08" length="middle" rot="R180"/>
<wire x1="-10.16" y1="-12.7" x2="-10.16" y2="12.7" width="0.254" layer="94"/>
<wire x1="-10.16" y1="12.7" x2="5.08" y2="12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="12.7" x2="5.08" y2="-12.7" width="0.254" layer="94"/>
<wire x1="5.08" y1="-12.7" x2="-10.16" y2="-12.7" width="0.254" layer="94"/>
<text x="-1.27" y="13.97" size="1.27" layer="94">&gt;name</text>
<text x="-1.27" y="-15.24" size="1.27" layer="94">&gt;value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="RS485-TTL">
<gates>
<gate name="G$1" symbol="RS485-TTL" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="RS485-TTL">
<connects>
<connect gate="G$1" pin="A+" pad="A+@1 A+@2"/>
<connect gate="G$1" pin="B-" pad="B-@1 B-@2"/>
<connect gate="G$1" pin="GND" pad="GND@1 GND@2"/>
<connect gate="G$1" pin="GND_OUT" pad="GND_OUT@1 GND_OUT@2"/>
<connect gate="G$1" pin="RXD" pad="RXD@1 RXD@2"/>
<connect gate="G$1" pin="TXD" pad="TXD@1 TXD@2"/>
<connect gate="G$1" pin="VCC" pad="VCC@1 VCC@2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="openShotClockLogo">
<packages>
<package name="OPEN-SHOT-CLOCK-LOGO">
<wire x1="16.51" y1="29.21" x2="12.7" y2="33.02" width="0.127" layer="21"/>
<wire x1="12.7" y1="33.02" x2="12.7" y2="50.8" width="0.127" layer="21"/>
<wire x1="12.7" y1="50.8" x2="16.51" y2="54.61" width="0.127" layer="21"/>
<wire x1="20.32" y1="50.8" x2="20.32" y2="33.02" width="0.127" layer="21"/>
<wire x1="16.51" y1="54.61" x2="12.7" y2="58.42" width="0.127" layer="21"/>
<wire x1="12.7" y1="58.42" x2="12.7" y2="76.2" width="0.127" layer="21"/>
<wire x1="12.7" y1="76.2" x2="16.51" y2="80.01" width="0.127" layer="21"/>
<wire x1="20.32" y1="76.2" x2="20.32" y2="58.42" width="0.127" layer="21"/>
<wire x1="38.1" y1="76.2" x2="20.32" y2="76.2" width="0.127" layer="21"/>
<wire x1="20.32" y1="76.2" x2="16.51" y2="80.01" width="0.127" layer="21"/>
<wire x1="16.51" y1="80.01" x2="20.32" y2="83.82" width="0.127" layer="21"/>
<wire x1="20.32" y1="83.82" x2="38.1" y2="83.82" width="0.127" layer="21"/>
<wire x1="38.1" y1="83.82" x2="41.91" y2="80.01" width="0.127" layer="21"/>
<wire x1="78.74" y1="50.8" x2="60.96" y2="50.8" width="0.127" layer="21"/>
<wire x1="60.96" y1="58.42" x2="78.74" y2="58.42" width="0.127" layer="21"/>
<polygon width="0.127" layer="21">
<vertex x="16.51" y="80.01"/>
<vertex x="20.32" y="83.82"/>
<vertex x="38.1" y="83.82"/>
<vertex x="41.91" y="80.01"/>
<vertex x="38.1" y="76.2"/>
<vertex x="20.32" y="76.2"/>
</polygon>
<wire x1="78.74" y1="76.2" x2="60.96" y2="76.2" width="0.127" layer="21"/>
<wire x1="57.15" y1="80.01" x2="60.96" y2="83.82" width="0.127" layer="21"/>
<wire x1="60.96" y1="83.82" x2="78.74" y2="83.82" width="0.127" layer="21"/>
<wire x1="78.74" y1="83.82" x2="82.55" y2="80.01" width="0.127" layer="21"/>
<polygon width="0.127" layer="21">
<vertex x="57.15" y="80.01"/>
<vertex x="60.96" y="83.82"/>
<vertex x="78.74" y="83.82"/>
<vertex x="82.55" y="80.01"/>
<vertex x="78.74" y="76.2"/>
<vertex x="60.96" y="76.2"/>
</polygon>
<wire x1="60.96" y1="76.2" x2="60.96" y2="58.42" width="0.127" layer="21"/>
<wire x1="60.96" y1="58.42" x2="57.15" y2="54.61" width="0.127" layer="21"/>
<wire x1="57.15" y1="54.61" x2="53.34" y2="58.42" width="0.127" layer="21"/>
<wire x1="53.34" y1="58.42" x2="53.34" y2="76.2" width="0.127" layer="21"/>
<wire x1="53.34" y1="76.2" x2="57.15" y2="80.01" width="0.127" layer="21"/>
<wire x1="60.96" y1="76.2" x2="57.15" y2="80.01" width="0.127" layer="21"/>
<polygon width="0.127" layer="21">
<vertex x="57.15" y="54.61"/>
<vertex x="53.34" y="58.42"/>
<vertex x="53.34" y="76.2"/>
<vertex x="57.15" y="80.01"/>
<vertex x="60.96" y="76.2"/>
<vertex x="60.96" y="58.42"/>
</polygon>
<wire x1="86.36" y1="76.2" x2="86.36" y2="58.42" width="0.127" layer="21"/>
<wire x1="86.36" y1="58.42" x2="82.55" y2="54.61" width="0.127" layer="21"/>
<wire x1="82.55" y1="54.61" x2="78.74" y2="58.42" width="0.127" layer="21"/>
<wire x1="78.74" y1="58.42" x2="78.74" y2="76.2" width="0.127" layer="21"/>
<wire x1="78.74" y1="76.2" x2="82.55" y2="80.01" width="0.127" layer="21"/>
<wire x1="86.36" y1="76.2" x2="82.55" y2="80.01" width="0.127" layer="21"/>
<polygon width="0.127" layer="21">
<vertex x="82.55" y="54.61"/>
<vertex x="78.74" y="58.42"/>
<vertex x="78.74" y="76.2"/>
<vertex x="82.55" y="80.01"/>
<vertex x="86.36" y="76.2"/>
<vertex x="86.36" y="58.42"/>
</polygon>
<wire x1="86.36" y1="50.8" x2="86.36" y2="33.02" width="0.127" layer="21"/>
<wire x1="86.36" y1="33.02" x2="82.55" y2="29.21" width="0.127" layer="21"/>
<wire x1="78.74" y1="33.02" x2="78.74" y2="50.8" width="0.127" layer="21"/>
<wire x1="78.74" y1="50.8" x2="82.55" y2="54.61" width="0.127" layer="21"/>
<wire x1="86.36" y1="50.8" x2="82.55" y2="54.61" width="0.127" layer="21"/>
<polygon width="0.127" layer="21">
<vertex x="82.55" y="29.21"/>
<vertex x="78.74" y="33.02"/>
<vertex x="78.74" y="50.8"/>
<vertex x="82.55" y="54.61"/>
<vertex x="86.36" y="50.8"/>
<vertex x="86.36" y="33.02"/>
</polygon>
<wire x1="53.34" y1="33.02" x2="53.34" y2="50.8" width="0.127" layer="21"/>
<wire x1="53.34" y1="50.8" x2="57.15" y2="54.61" width="0.127" layer="21"/>
<wire x1="57.15" y1="54.61" x2="60.96" y2="50.8" width="0.127" layer="21"/>
<wire x1="60.96" y1="50.8" x2="60.96" y2="33.02" width="0.127" layer="21"/>
<wire x1="53.34" y1="33.02" x2="57.15" y2="29.21" width="0.127" layer="21"/>
<polygon width="0.127" layer="21">
<vertex x="57.15" y="54.61"/>
<vertex x="60.96" y="50.8"/>
<vertex x="60.96" y="33.02"/>
<vertex x="57.15" y="29.21"/>
<vertex x="53.34" y="33.02"/>
<vertex x="53.34" y="50.8"/>
</polygon>
<wire x1="78.74" y1="25.4" x2="60.96" y2="25.4" width="0.127" layer="21"/>
<wire x1="60.96" y1="25.4" x2="57.15" y2="29.21" width="0.127" layer="21"/>
<wire x1="57.15" y1="29.21" x2="60.96" y2="33.02" width="0.127" layer="21"/>
<wire x1="60.96" y1="33.02" x2="78.74" y2="33.02" width="0.127" layer="21"/>
<wire x1="78.74" y1="33.02" x2="82.55" y2="29.21" width="0.127" layer="21"/>
<wire x1="78.74" y1="25.4" x2="82.55" y2="29.21" width="0.127" layer="21"/>
<polygon width="0.127" layer="21">
<vertex x="57.15" y="29.21"/>
<vertex x="60.96" y="33.02"/>
<vertex x="78.74" y="33.02"/>
<vertex x="82.55" y="29.21"/>
<vertex x="78.74" y="25.4"/>
<vertex x="60.96" y="25.4"/>
</polygon>
<wire x1="45.72" y1="76.2" x2="45.72" y2="58.42" width="0.127" layer="21"/>
<wire x1="45.72" y1="58.42" x2="41.91" y2="54.61" width="0.127" layer="21"/>
<wire x1="38.1" y1="58.42" x2="38.1" y2="76.2" width="0.127" layer="21"/>
<wire x1="38.1" y1="76.2" x2="41.91" y2="80.01" width="0.127" layer="21"/>
<wire x1="45.72" y1="76.2" x2="41.91" y2="80.01" width="0.127" layer="21"/>
<polygon width="0.127" layer="21">
<vertex x="41.91" y="54.61"/>
<vertex x="38.1" y="58.42"/>
<vertex x="38.1" y="76.2"/>
<vertex x="41.91" y="80.01"/>
<vertex x="45.72" y="76.2"/>
<vertex x="45.72" y="58.42"/>
</polygon>
<wire x1="38.1" y1="50.8" x2="20.32" y2="50.8" width="0.127" layer="21"/>
<wire x1="20.32" y1="50.8" x2="16.51" y2="54.61" width="0.127" layer="21"/>
<wire x1="16.51" y1="54.61" x2="20.32" y2="58.42" width="0.127" layer="21"/>
<wire x1="20.32" y1="58.42" x2="38.1" y2="58.42" width="0.127" layer="21"/>
<wire x1="38.1" y1="58.42" x2="41.91" y2="54.61" width="0.127" layer="21"/>
<polygon width="0.127" layer="21">
<vertex x="16.51" y="54.61"/>
<vertex x="20.32" y="58.42"/>
<vertex x="38.1" y="58.42"/>
<vertex x="41.91" y="54.61"/>
<vertex x="38.1" y="50.8"/>
<vertex x="20.32" y="50.8"/>
</polygon>
<wire x1="45.72" y1="50.8" x2="45.72" y2="33.02" width="0.127" layer="21"/>
<wire x1="45.72" y1="33.02" x2="41.91" y2="29.21" width="0.127" layer="21"/>
<wire x1="38.1" y1="33.02" x2="38.1" y2="50.8" width="0.127" layer="21"/>
<wire x1="38.1" y1="50.8" x2="41.91" y2="54.61" width="0.127" layer="21"/>
<wire x1="45.72" y1="50.8" x2="41.91" y2="54.61" width="0.127" layer="21"/>
<polygon width="0.127" layer="21">
<vertex x="41.91" y="29.21"/>
<vertex x="38.1" y="33.02"/>
<vertex x="38.1" y="50.8"/>
<vertex x="41.91" y="54.61"/>
<vertex x="45.72" y="50.8"/>
<vertex x="45.72" y="33.02"/>
</polygon>
<wire x1="38.1" y1="25.4" x2="20.32" y2="25.4" width="0.127" layer="21"/>
<wire x1="20.32" y1="25.4" x2="16.51" y2="29.21" width="0.127" layer="21"/>
<wire x1="16.51" y1="29.21" x2="20.32" y2="33.02" width="0.127" layer="21"/>
<wire x1="20.32" y1="33.02" x2="38.1" y2="33.02" width="0.127" layer="21"/>
<wire x1="38.1" y1="33.02" x2="41.91" y2="29.21" width="0.127" layer="21"/>
<wire x1="38.1" y1="25.4" x2="41.91" y2="29.21" width="0.127" layer="21"/>
<polygon width="0.127" layer="21">
<vertex x="16.51" y="29.21"/>
<vertex x="20.32" y="33.02"/>
<vertex x="38.1" y="33.02"/>
<vertex x="41.91" y="29.21"/>
<vertex x="38.1" y="25.4"/>
<vertex x="20.32" y="25.4"/>
</polygon>
<text x="16.51" y="2.54" size="6.4516" layer="21">Open Shot Clock</text>
<polygon width="0.127" layer="25">
<vertex x="88.9" y="63.5"/>
<vertex x="93.98" y="54.61"/>
<vertex x="99.06" y="63.5"/>
<vertex x="96.52" y="63.5"/>
<vertex x="96.52" y="93.98"/>
<vertex x="53.34" y="93.98"/>
<vertex x="53.34" y="88.9"/>
<vertex x="91.44" y="88.9"/>
<vertex x="91.44" y="63.5"/>
</polygon>
<polygon width="0.127" layer="25">
<vertex x="36.83" y="86.36"/>
<vertex x="45.72" y="91.44"/>
<vertex x="36.83" y="96.52"/>
<vertex x="36.83" y="93.98"/>
<vertex x="2.54" y="93.98"/>
<vertex x="2.54" y="58.42"/>
<vertex x="7.62" y="58.42"/>
<vertex x="7.62" y="88.9"/>
<vertex x="36.83" y="88.9"/>
</polygon>
<polygon width="0.127" layer="25">
<vertex x="62.23" y="22.86"/>
<vertex x="53.34" y="17.78"/>
<vertex x="62.23" y="12.7"/>
<vertex x="62.23" y="15.24"/>
<vertex x="96.52" y="15.24"/>
<vertex x="96.52" y="50.8"/>
<vertex x="91.44" y="50.8"/>
<vertex x="91.44" y="20.32"/>
<vertex x="62.23" y="20.32"/>
</polygon>
<polygon width="0.127" layer="25">
<vertex x="10.16" y="45.72"/>
<vertex x="5.08" y="54.61"/>
<vertex x="0" y="45.72"/>
<vertex x="2.54" y="45.72"/>
<vertex x="2.54" y="15.24"/>
<vertex x="45.72" y="15.24"/>
<vertex x="45.72" y="20.32"/>
<vertex x="7.62" y="20.32"/>
<vertex x="7.62" y="45.72"/>
</polygon>
</package>
<package name="OPEN-SHOT-CLOCK-LOGO-SMALL">
<rectangle x1="2.512" y1="-0.016" x2="2.608" y2="0.016" layer="21"/>
<rectangle x1="2.512" y1="0.016" x2="2.608" y2="0.048" layer="21"/>
<rectangle x1="2.512" y1="0.048" x2="2.608" y2="0.08" layer="21"/>
<rectangle x1="2.512" y1="0.08" x2="2.64" y2="0.112" layer="21"/>
<rectangle x1="2.512" y1="0.112" x2="2.64" y2="0.144" layer="21"/>
<rectangle x1="2.512" y1="0.144" x2="2.64" y2="0.176" layer="21"/>
<rectangle x1="4.592" y1="0.144" x2="4.624" y2="0.176" layer="21"/>
<rectangle x1="1.904" y1="0.176" x2="2.192" y2="0.208" layer="21"/>
<rectangle x1="2.512" y1="0.176" x2="2.864" y2="0.208" layer="21"/>
<rectangle x1="3.088" y1="0.176" x2="3.344" y2="0.208" layer="21"/>
<rectangle x1="3.568" y1="0.176" x2="3.664" y2="0.208" layer="21"/>
<rectangle x1="3.888" y1="0.176" x2="3.984" y2="0.208" layer="21"/>
<rectangle x1="4.464" y1="0.176" x2="4.784" y2="0.208" layer="21"/>
<rectangle x1="5.008" y1="0.176" x2="5.104" y2="0.208" layer="21"/>
<rectangle x1="5.328" y1="0.176" x2="5.424" y2="0.208" layer="21"/>
<rectangle x1="5.648" y1="0.176" x2="5.872" y2="0.208" layer="21"/>
<rectangle x1="6.096" y1="0.176" x2="6.288" y2="0.208" layer="21"/>
<rectangle x1="6.768" y1="0.176" x2="7.056" y2="0.208" layer="21"/>
<rectangle x1="7.312" y1="0.176" x2="7.408" y2="0.208" layer="21"/>
<rectangle x1="7.6" y1="0.176" x2="7.824" y2="0.208" layer="21"/>
<rectangle x1="8.112" y1="0.176" x2="8.336" y2="0.208" layer="21"/>
<rectangle x1="8.528" y1="0.176" x2="8.624" y2="0.208" layer="21"/>
<rectangle x1="8.816" y1="0.176" x2="8.944" y2="0.208" layer="21"/>
<rectangle x1="1.84" y1="0.208" x2="2.224" y2="0.24" layer="21"/>
<rectangle x1="2.512" y1="0.208" x2="2.896" y2="0.24" layer="21"/>
<rectangle x1="3.056" y1="0.208" x2="3.408" y2="0.24" layer="21"/>
<rectangle x1="3.568" y1="0.208" x2="3.664" y2="0.24" layer="21"/>
<rectangle x1="3.888" y1="0.208" x2="3.984" y2="0.24" layer="21"/>
<rectangle x1="4.4" y1="0.208" x2="4.848" y2="0.24" layer="21"/>
<rectangle x1="5.008" y1="0.208" x2="5.104" y2="0.24" layer="21"/>
<rectangle x1="5.328" y1="0.208" x2="5.424" y2="0.24" layer="21"/>
<rectangle x1="5.584" y1="0.208" x2="5.904" y2="0.24" layer="21"/>
<rectangle x1="6.064" y1="0.208" x2="6.288" y2="0.24" layer="21"/>
<rectangle x1="6.736" y1="0.208" x2="7.12" y2="0.24" layer="21"/>
<rectangle x1="7.312" y1="0.208" x2="7.408" y2="0.24" layer="21"/>
<rectangle x1="7.536" y1="0.208" x2="7.856" y2="0.24" layer="21"/>
<rectangle x1="8.08" y1="0.208" x2="8.4" y2="0.24" layer="21"/>
<rectangle x1="8.528" y1="0.208" x2="8.624" y2="0.24" layer="21"/>
<rectangle x1="8.784" y1="0.208" x2="8.944" y2="0.24" layer="21"/>
<rectangle x1="1.808" y1="0.24" x2="2.288" y2="0.272" layer="21"/>
<rectangle x1="2.512" y1="0.24" x2="2.928" y2="0.272" layer="21"/>
<rectangle x1="3.024" y1="0.24" x2="3.408" y2="0.272" layer="21"/>
<rectangle x1="3.568" y1="0.24" x2="3.664" y2="0.272" layer="21"/>
<rectangle x1="3.888" y1="0.24" x2="3.984" y2="0.272" layer="21"/>
<rectangle x1="4.368" y1="0.24" x2="4.88" y2="0.272" layer="21"/>
<rectangle x1="5.008" y1="0.24" x2="5.104" y2="0.272" layer="21"/>
<rectangle x1="5.328" y1="0.24" x2="5.424" y2="0.272" layer="21"/>
<rectangle x1="5.552" y1="0.24" x2="5.936" y2="0.272" layer="21"/>
<rectangle x1="6.064" y1="0.24" x2="6.224" y2="0.272" layer="21"/>
<rectangle x1="6.672" y1="0.24" x2="7.152" y2="0.272" layer="21"/>
<rectangle x1="7.312" y1="0.24" x2="7.408" y2="0.272" layer="21"/>
<rectangle x1="7.504" y1="0.24" x2="7.888" y2="0.272" layer="21"/>
<rectangle x1="8.048" y1="0.24" x2="8.432" y2="0.272" layer="21"/>
<rectangle x1="8.528" y1="0.24" x2="8.656" y2="0.272" layer="21"/>
<rectangle x1="8.752" y1="0.24" x2="8.912" y2="0.272" layer="21"/>
<rectangle x1="1.776" y1="0.272" x2="1.968" y2="0.304" layer="21"/>
<rectangle x1="2.128" y1="0.272" x2="2.32" y2="0.304" layer="21"/>
<rectangle x1="2.512" y1="0.272" x2="2.672" y2="0.304" layer="21"/>
<rectangle x1="2.8" y1="0.272" x2="2.928" y2="0.304" layer="21"/>
<rectangle x1="3.024" y1="0.272" x2="3.152" y2="0.304" layer="21"/>
<rectangle x1="3.312" y1="0.272" x2="3.408" y2="0.304" layer="21"/>
<rectangle x1="3.568" y1="0.272" x2="3.696" y2="0.304" layer="21"/>
<rectangle x1="3.888" y1="0.272" x2="3.984" y2="0.304" layer="21"/>
<rectangle x1="4.368" y1="0.272" x2="4.528" y2="0.304" layer="21"/>
<rectangle x1="4.72" y1="0.272" x2="4.88" y2="0.304" layer="21"/>
<rectangle x1="5.008" y1="0.272" x2="5.136" y2="0.304" layer="21"/>
<rectangle x1="5.328" y1="0.272" x2="5.424" y2="0.304" layer="21"/>
<rectangle x1="5.552" y1="0.272" x2="5.68" y2="0.304" layer="21"/>
<rectangle x1="5.808" y1="0.272" x2="5.936" y2="0.304" layer="21"/>
<rectangle x1="6.064" y1="0.272" x2="6.192" y2="0.304" layer="21"/>
<rectangle x1="6.672" y1="0.272" x2="6.864" y2="0.304" layer="21"/>
<rectangle x1="6.992" y1="0.272" x2="7.184" y2="0.304" layer="21"/>
<rectangle x1="7.312" y1="0.272" x2="7.408" y2="0.304" layer="21"/>
<rectangle x1="7.504" y1="0.272" x2="7.632" y2="0.304" layer="21"/>
<rectangle x1="7.76" y1="0.272" x2="7.888" y2="0.304" layer="21"/>
<rectangle x1="8.048" y1="0.272" x2="8.176" y2="0.304" layer="21"/>
<rectangle x1="8.304" y1="0.272" x2="8.432" y2="0.304" layer="21"/>
<rectangle x1="8.528" y1="0.272" x2="8.656" y2="0.304" layer="21"/>
<rectangle x1="8.752" y1="0.272" x2="8.88" y2="0.304" layer="21"/>
<rectangle x1="1.744" y1="0.304" x2="1.904" y2="0.336" layer="21"/>
<rectangle x1="2.192" y1="0.304" x2="2.352" y2="0.336" layer="21"/>
<rectangle x1="2.512" y1="0.304" x2="2.64" y2="0.336" layer="21"/>
<rectangle x1="2.832" y1="0.304" x2="2.96" y2="0.336" layer="21"/>
<rectangle x1="2.992" y1="0.304" x2="3.12" y2="0.336" layer="21"/>
<rectangle x1="3.568" y1="0.304" x2="3.696" y2="0.336" layer="21"/>
<rectangle x1="3.888" y1="0.304" x2="3.984" y2="0.336" layer="21"/>
<rectangle x1="4.368" y1="0.304" x2="4.496" y2="0.336" layer="21"/>
<rectangle x1="4.784" y1="0.304" x2="4.912" y2="0.336" layer="21"/>
<rectangle x1="5.008" y1="0.304" x2="5.136" y2="0.336" layer="21"/>
<rectangle x1="5.328" y1="0.304" x2="5.424" y2="0.336" layer="21"/>
<rectangle x1="5.52" y1="0.304" x2="5.648" y2="0.336" layer="21"/>
<rectangle x1="5.84" y1="0.304" x2="5.968" y2="0.336" layer="21"/>
<rectangle x1="6.064" y1="0.304" x2="6.192" y2="0.336" layer="21"/>
<rectangle x1="6.64" y1="0.304" x2="6.8" y2="0.336" layer="21"/>
<rectangle x1="7.056" y1="0.304" x2="7.216" y2="0.336" layer="21"/>
<rectangle x1="7.312" y1="0.304" x2="7.408" y2="0.336" layer="21"/>
<rectangle x1="7.472" y1="0.304" x2="7.6" y2="0.336" layer="21"/>
<rectangle x1="7.792" y1="0.304" x2="7.92" y2="0.336" layer="21"/>
<rectangle x1="8.016" y1="0.304" x2="8.176" y2="0.336" layer="21"/>
<rectangle x1="8.336" y1="0.304" x2="8.464" y2="0.336" layer="21"/>
<rectangle x1="8.528" y1="0.304" x2="8.656" y2="0.336" layer="21"/>
<rectangle x1="8.72" y1="0.304" x2="8.88" y2="0.336" layer="21"/>
<rectangle x1="1.744" y1="0.336" x2="1.904" y2="0.368" layer="21"/>
<rectangle x1="2.224" y1="0.336" x2="2.352" y2="0.368" layer="21"/>
<rectangle x1="2.512" y1="0.336" x2="2.64" y2="0.368" layer="21"/>
<rectangle x1="2.832" y1="0.336" x2="2.96" y2="0.368" layer="21"/>
<rectangle x1="2.992" y1="0.336" x2="3.12" y2="0.368" layer="21"/>
<rectangle x1="3.568" y1="0.336" x2="3.696" y2="0.368" layer="21"/>
<rectangle x1="3.888" y1="0.336" x2="3.984" y2="0.368" layer="21"/>
<rectangle x1="4.368" y1="0.336" x2="4.464" y2="0.368" layer="21"/>
<rectangle x1="4.784" y1="0.336" x2="4.912" y2="0.368" layer="21"/>
<rectangle x1="5.008" y1="0.336" x2="5.136" y2="0.368" layer="21"/>
<rectangle x1="5.328" y1="0.336" x2="5.456" y2="0.368" layer="21"/>
<rectangle x1="5.52" y1="0.336" x2="5.648" y2="0.368" layer="21"/>
<rectangle x1="5.84" y1="0.336" x2="5.968" y2="0.368" layer="21"/>
<rectangle x1="6.064" y1="0.336" x2="6.192" y2="0.368" layer="21"/>
<rectangle x1="6.608" y1="0.336" x2="6.768" y2="0.368" layer="21"/>
<rectangle x1="7.088" y1="0.336" x2="7.216" y2="0.368" layer="21"/>
<rectangle x1="7.312" y1="0.336" x2="7.408" y2="0.368" layer="21"/>
<rectangle x1="7.472" y1="0.336" x2="7.6" y2="0.368" layer="21"/>
<rectangle x1="7.792" y1="0.336" x2="7.92" y2="0.368" layer="21"/>
<rectangle x1="8.016" y1="0.336" x2="8.144" y2="0.368" layer="21"/>
<rectangle x1="8.528" y1="0.336" x2="8.656" y2="0.368" layer="21"/>
<rectangle x1="8.688" y1="0.336" x2="8.848" y2="0.368" layer="21"/>
<rectangle x1="1.744" y1="0.368" x2="1.872" y2="0.4" layer="21"/>
<rectangle x1="2.224" y1="0.368" x2="2.384" y2="0.4" layer="21"/>
<rectangle x1="2.512" y1="0.368" x2="2.64" y2="0.4" layer="21"/>
<rectangle x1="2.832" y1="0.368" x2="2.96" y2="0.4" layer="21"/>
<rectangle x1="2.992" y1="0.368" x2="3.248" y2="0.4" layer="21"/>
<rectangle x1="3.568" y1="0.368" x2="3.696" y2="0.4" layer="21"/>
<rectangle x1="3.888" y1="0.368" x2="4.016" y2="0.4" layer="21"/>
<rectangle x1="4.784" y1="0.368" x2="4.912" y2="0.4" layer="21"/>
<rectangle x1="5.008" y1="0.368" x2="5.136" y2="0.4" layer="21"/>
<rectangle x1="5.328" y1="0.368" x2="5.456" y2="0.4" layer="21"/>
<rectangle x1="5.52" y1="0.368" x2="5.648" y2="0.4" layer="21"/>
<rectangle x1="5.84" y1="0.368" x2="5.968" y2="0.4" layer="21"/>
<rectangle x1="6.064" y1="0.368" x2="6.192" y2="0.4" layer="21"/>
<rectangle x1="6.608" y1="0.368" x2="6.736" y2="0.4" layer="21"/>
<rectangle x1="7.152" y1="0.368" x2="7.184" y2="0.4" layer="21"/>
<rectangle x1="7.312" y1="0.368" x2="7.408" y2="0.4" layer="21"/>
<rectangle x1="7.472" y1="0.368" x2="7.6" y2="0.4" layer="21"/>
<rectangle x1="7.792" y1="0.368" x2="7.92" y2="0.4" layer="21"/>
<rectangle x1="8.016" y1="0.368" x2="8.144" y2="0.4" layer="21"/>
<rectangle x1="8.528" y1="0.368" x2="8.816" y2="0.4" layer="21"/>
<rectangle x1="1.712" y1="0.4" x2="1.872" y2="0.432" layer="21"/>
<rectangle x1="2.256" y1="0.4" x2="2.384" y2="0.432" layer="21"/>
<rectangle x1="2.512" y1="0.4" x2="2.64" y2="0.432" layer="21"/>
<rectangle x1="2.832" y1="0.4" x2="2.96" y2="0.432" layer="21"/>
<rectangle x1="2.992" y1="0.4" x2="3.472" y2="0.432" layer="21"/>
<rectangle x1="3.568" y1="0.4" x2="3.696" y2="0.432" layer="21"/>
<rectangle x1="3.888" y1="0.4" x2="4.016" y2="0.432" layer="21"/>
<rectangle x1="4.72" y1="0.4" x2="4.912" y2="0.432" layer="21"/>
<rectangle x1="5.008" y1="0.4" x2="5.136" y2="0.432" layer="21"/>
<rectangle x1="5.328" y1="0.4" x2="5.456" y2="0.432" layer="21"/>
<rectangle x1="5.52" y1="0.4" x2="5.648" y2="0.432" layer="21"/>
<rectangle x1="5.84" y1="0.4" x2="5.968" y2="0.432" layer="21"/>
<rectangle x1="6.064" y1="0.4" x2="6.192" y2="0.432" layer="21"/>
<rectangle x1="6.608" y1="0.4" x2="6.736" y2="0.432" layer="21"/>
<rectangle x1="7.312" y1="0.4" x2="7.44" y2="0.432" layer="21"/>
<rectangle x1="7.472" y1="0.4" x2="7.6" y2="0.432" layer="21"/>
<rectangle x1="7.792" y1="0.4" x2="7.92" y2="0.432" layer="21"/>
<rectangle x1="8.016" y1="0.4" x2="8.144" y2="0.432" layer="21"/>
<rectangle x1="8.528" y1="0.4" x2="8.784" y2="0.432" layer="21"/>
<rectangle x1="1.712" y1="0.432" x2="1.84" y2="0.464" layer="21"/>
<rectangle x1="2.256" y1="0.432" x2="2.384" y2="0.464" layer="21"/>
<rectangle x1="2.512" y1="0.432" x2="2.64" y2="0.464" layer="21"/>
<rectangle x1="2.832" y1="0.432" x2="2.96" y2="0.464" layer="21"/>
<rectangle x1="2.992" y1="0.432" x2="3.44" y2="0.464" layer="21"/>
<rectangle x1="3.568" y1="0.432" x2="3.696" y2="0.464" layer="21"/>
<rectangle x1="3.856" y1="0.432" x2="3.984" y2="0.464" layer="21"/>
<rectangle x1="4.656" y1="0.432" x2="4.88" y2="0.464" layer="21"/>
<rectangle x1="5.008" y1="0.432" x2="5.136" y2="0.464" layer="21"/>
<rectangle x1="5.296" y1="0.432" x2="5.424" y2="0.464" layer="21"/>
<rectangle x1="5.52" y1="0.432" x2="5.648" y2="0.464" layer="21"/>
<rectangle x1="5.84" y1="0.432" x2="5.968" y2="0.464" layer="21"/>
<rectangle x1="6.064" y1="0.432" x2="6.192" y2="0.464" layer="21"/>
<rectangle x1="6.608" y1="0.432" x2="6.704" y2="0.464" layer="21"/>
<rectangle x1="7.312" y1="0.432" x2="7.44" y2="0.464" layer="21"/>
<rectangle x1="7.472" y1="0.432" x2="7.6" y2="0.464" layer="21"/>
<rectangle x1="7.792" y1="0.432" x2="7.92" y2="0.464" layer="21"/>
<rectangle x1="8.016" y1="0.432" x2="8.144" y2="0.464" layer="21"/>
<rectangle x1="8.528" y1="0.432" x2="8.784" y2="0.464" layer="21"/>
<rectangle x1="1.712" y1="0.464" x2="1.84" y2="0.496" layer="21"/>
<rectangle x1="2.256" y1="0.464" x2="2.384" y2="0.496" layer="21"/>
<rectangle x1="2.512" y1="0.464" x2="2.64" y2="0.496" layer="21"/>
<rectangle x1="2.832" y1="0.464" x2="2.96" y2="0.496" layer="21"/>
<rectangle x1="2.992" y1="0.464" x2="3.44" y2="0.496" layer="21"/>
<rectangle x1="3.568" y1="0.464" x2="3.696" y2="0.496" layer="21"/>
<rectangle x1="3.856" y1="0.464" x2="3.984" y2="0.496" layer="21"/>
<rectangle x1="4.56" y1="0.464" x2="4.88" y2="0.496" layer="21"/>
<rectangle x1="5.008" y1="0.464" x2="5.136" y2="0.496" layer="21"/>
<rectangle x1="5.296" y1="0.464" x2="5.424" y2="0.496" layer="21"/>
<rectangle x1="5.52" y1="0.464" x2="5.648" y2="0.496" layer="21"/>
<rectangle x1="5.84" y1="0.464" x2="5.968" y2="0.496" layer="21"/>
<rectangle x1="6.032" y1="0.464" x2="6.192" y2="0.496" layer="21"/>
<rectangle x1="6.608" y1="0.464" x2="6.704" y2="0.496" layer="21"/>
<rectangle x1="7.312" y1="0.464" x2="7.44" y2="0.496" layer="21"/>
<rectangle x1="7.472" y1="0.464" x2="7.6" y2="0.496" layer="21"/>
<rectangle x1="7.792" y1="0.464" x2="7.92" y2="0.496" layer="21"/>
<rectangle x1="8.016" y1="0.464" x2="8.144" y2="0.496" layer="21"/>
<rectangle x1="8.528" y1="0.464" x2="8.784" y2="0.496" layer="21"/>
<rectangle x1="1.712" y1="0.496" x2="1.84" y2="0.528" layer="21"/>
<rectangle x1="2.256" y1="0.496" x2="2.384" y2="0.528" layer="21"/>
<rectangle x1="2.512" y1="0.496" x2="2.64" y2="0.528" layer="21"/>
<rectangle x1="2.832" y1="0.496" x2="2.96" y2="0.528" layer="21"/>
<rectangle x1="2.992" y1="0.496" x2="3.12" y2="0.528" layer="21"/>
<rectangle x1="3.312" y1="0.496" x2="3.44" y2="0.528" layer="21"/>
<rectangle x1="3.568" y1="0.496" x2="3.696" y2="0.528" layer="21"/>
<rectangle x1="3.856" y1="0.496" x2="3.984" y2="0.528" layer="21"/>
<rectangle x1="4.496" y1="0.496" x2="4.816" y2="0.528" layer="21"/>
<rectangle x1="5.008" y1="0.496" x2="5.136" y2="0.528" layer="21"/>
<rectangle x1="5.296" y1="0.496" x2="5.424" y2="0.528" layer="21"/>
<rectangle x1="5.52" y1="0.496" x2="5.648" y2="0.528" layer="21"/>
<rectangle x1="5.84" y1="0.496" x2="5.968" y2="0.528" layer="21"/>
<rectangle x1="6.032" y1="0.496" x2="6.192" y2="0.528" layer="21"/>
<rectangle x1="6.608" y1="0.496" x2="6.704" y2="0.528" layer="21"/>
<rectangle x1="7.312" y1="0.496" x2="7.44" y2="0.528" layer="21"/>
<rectangle x1="7.472" y1="0.496" x2="7.6" y2="0.528" layer="21"/>
<rectangle x1="7.792" y1="0.496" x2="7.92" y2="0.528" layer="21"/>
<rectangle x1="8.016" y1="0.496" x2="8.144" y2="0.528" layer="21"/>
<rectangle x1="8.528" y1="0.496" x2="8.816" y2="0.528" layer="21"/>
<rectangle x1="1.712" y1="0.528" x2="1.84" y2="0.56" layer="21"/>
<rectangle x1="2.256" y1="0.528" x2="2.384" y2="0.56" layer="21"/>
<rectangle x1="2.512" y1="0.528" x2="2.672" y2="0.56" layer="21"/>
<rectangle x1="2.8" y1="0.528" x2="2.96" y2="0.56" layer="21"/>
<rectangle x1="2.992" y1="0.528" x2="3.12" y2="0.56" layer="21"/>
<rectangle x1="3.312" y1="0.528" x2="3.44" y2="0.56" layer="21"/>
<rectangle x1="3.568" y1="0.528" x2="3.728" y2="0.56" layer="21"/>
<rectangle x1="3.856" y1="0.528" x2="3.984" y2="0.56" layer="21"/>
<rectangle x1="4.432" y1="0.528" x2="4.752" y2="0.56" layer="21"/>
<rectangle x1="5.008" y1="0.528" x2="5.168" y2="0.56" layer="21"/>
<rectangle x1="5.296" y1="0.528" x2="5.424" y2="0.56" layer="21"/>
<rectangle x1="5.52" y1="0.528" x2="5.68" y2="0.56" layer="21"/>
<rectangle x1="5.808" y1="0.528" x2="5.968" y2="0.56" layer="21"/>
<rectangle x1="6.032" y1="0.528" x2="6.192" y2="0.56" layer="21"/>
<rectangle x1="6.608" y1="0.528" x2="6.704" y2="0.56" layer="21"/>
<rectangle x1="7.312" y1="0.528" x2="7.44" y2="0.56" layer="21"/>
<rectangle x1="7.472" y1="0.528" x2="7.632" y2="0.56" layer="21"/>
<rectangle x1="7.76" y1="0.528" x2="7.92" y2="0.56" layer="21"/>
<rectangle x1="8.048" y1="0.528" x2="8.144" y2="0.56" layer="21"/>
<rectangle x1="8.336" y1="0.528" x2="8.464" y2="0.56" layer="21"/>
<rectangle x1="8.528" y1="0.528" x2="8.656" y2="0.56" layer="21"/>
<rectangle x1="8.688" y1="0.528" x2="8.848" y2="0.56" layer="21"/>
<rectangle x1="1.712" y1="0.56" x2="1.84" y2="0.592" layer="21"/>
<rectangle x1="2.256" y1="0.56" x2="2.384" y2="0.592" layer="21"/>
<rectangle x1="2.512" y1="0.56" x2="2.672" y2="0.592" layer="21"/>
<rectangle x1="2.8" y1="0.56" x2="2.928" y2="0.592" layer="21"/>
<rectangle x1="3.024" y1="0.56" x2="3.152" y2="0.592" layer="21"/>
<rectangle x1="3.28" y1="0.56" x2="3.408" y2="0.592" layer="21"/>
<rectangle x1="3.568" y1="0.56" x2="3.728" y2="0.592" layer="21"/>
<rectangle x1="3.856" y1="0.56" x2="3.984" y2="0.592" layer="21"/>
<rectangle x1="4.4" y1="0.56" x2="4.656" y2="0.592" layer="21"/>
<rectangle x1="5.008" y1="0.56" x2="5.168" y2="0.592" layer="21"/>
<rectangle x1="5.296" y1="0.56" x2="5.424" y2="0.592" layer="21"/>
<rectangle x1="5.52" y1="0.56" x2="5.68" y2="0.592" layer="21"/>
<rectangle x1="5.808" y1="0.56" x2="5.968" y2="0.592" layer="21"/>
<rectangle x1="6.032" y1="0.56" x2="6.192" y2="0.592" layer="21"/>
<rectangle x1="6.608" y1="0.56" x2="6.704" y2="0.592" layer="21"/>
<rectangle x1="7.312" y1="0.56" x2="7.44" y2="0.592" layer="21"/>
<rectangle x1="7.472" y1="0.56" x2="7.632" y2="0.592" layer="21"/>
<rectangle x1="7.76" y1="0.56" x2="7.92" y2="0.592" layer="21"/>
<rectangle x1="8.048" y1="0.56" x2="8.176" y2="0.592" layer="21"/>
<rectangle x1="8.304" y1="0.56" x2="8.432" y2="0.592" layer="21"/>
<rectangle x1="8.528" y1="0.56" x2="8.656" y2="0.592" layer="21"/>
<rectangle x1="8.72" y1="0.56" x2="8.848" y2="0.592" layer="21"/>
<rectangle x1="1.712" y1="0.592" x2="1.84" y2="0.624" layer="21"/>
<rectangle x1="2.256" y1="0.592" x2="2.384" y2="0.624" layer="21"/>
<rectangle x1="2.512" y1="0.592" x2="2.928" y2="0.624" layer="21"/>
<rectangle x1="3.024" y1="0.592" x2="3.408" y2="0.624" layer="21"/>
<rectangle x1="3.568" y1="0.592" x2="3.984" y2="0.624" layer="21"/>
<rectangle x1="4.368" y1="0.592" x2="4.56" y2="0.624" layer="21"/>
<rectangle x1="5.008" y1="0.592" x2="5.424" y2="0.624" layer="21"/>
<rectangle x1="5.552" y1="0.592" x2="5.936" y2="0.624" layer="21"/>
<rectangle x1="6.032" y1="0.592" x2="6.224" y2="0.624" layer="21"/>
<rectangle x1="6.608" y1="0.592" x2="6.736" y2="0.624" layer="21"/>
<rectangle x1="7.312" y1="0.592" x2="7.44" y2="0.624" layer="21"/>
<rectangle x1="7.504" y1="0.592" x2="7.888" y2="0.624" layer="21"/>
<rectangle x1="8.08" y1="0.592" x2="8.432" y2="0.624" layer="21"/>
<rectangle x1="8.528" y1="0.592" x2="8.656" y2="0.624" layer="21"/>
<rectangle x1="8.72" y1="0.592" x2="8.88" y2="0.624" layer="21"/>
<rectangle x1="1.712" y1="0.624" x2="1.872" y2="0.656" layer="21"/>
<rectangle x1="2.224" y1="0.624" x2="2.384" y2="0.656" layer="21"/>
<rectangle x1="2.512" y1="0.624" x2="2.896" y2="0.656" layer="21"/>
<rectangle x1="3.056" y1="0.624" x2="3.376" y2="0.656" layer="21"/>
<rectangle x1="3.568" y1="0.624" x2="3.984" y2="0.656" layer="21"/>
<rectangle x1="4.368" y1="0.624" x2="4.496" y2="0.656" layer="21"/>
<rectangle x1="5.008" y1="0.624" x2="5.424" y2="0.656" layer="21"/>
<rectangle x1="5.584" y1="0.624" x2="5.904" y2="0.656" layer="21"/>
<rectangle x1="6" y1="0.624" x2="6.288" y2="0.656" layer="21"/>
<rectangle x1="6.608" y1="0.624" x2="6.736" y2="0.656" layer="21"/>
<rectangle x1="7.312" y1="0.624" x2="7.44" y2="0.656" layer="21"/>
<rectangle x1="7.536" y1="0.624" x2="7.856" y2="0.656" layer="21"/>
<rectangle x1="8.08" y1="0.624" x2="8.4" y2="0.656" layer="21"/>
<rectangle x1="8.528" y1="0.624" x2="8.656" y2="0.656" layer="21"/>
<rectangle x1="8.752" y1="0.624" x2="8.88" y2="0.656" layer="21"/>
<rectangle x1="1.744" y1="0.656" x2="1.872" y2="0.688" layer="21"/>
<rectangle x1="2.192" y1="0.656" x2="2.352" y2="0.688" layer="21"/>
<rectangle x1="2.512" y1="0.656" x2="2.608" y2="0.688" layer="21"/>
<rectangle x1="2.64" y1="0.656" x2="2.864" y2="0.688" layer="21"/>
<rectangle x1="3.12" y1="0.656" x2="3.344" y2="0.688" layer="21"/>
<rectangle x1="3.568" y1="0.656" x2="3.664" y2="0.688" layer="21"/>
<rectangle x1="3.696" y1="0.656" x2="3.952" y2="0.688" layer="21"/>
<rectangle x1="4.368" y1="0.656" x2="4.496" y2="0.688" layer="21"/>
<rectangle x1="5.008" y1="0.656" x2="5.392" y2="0.688" layer="21"/>
<rectangle x1="5.616" y1="0.656" x2="5.872" y2="0.688" layer="21"/>
<rectangle x1="6" y1="0.656" x2="6.288" y2="0.688" layer="21"/>
<rectangle x1="6.608" y1="0.656" x2="6.768" y2="0.688" layer="21"/>
<rectangle x1="7.088" y1="0.656" x2="7.216" y2="0.688" layer="21"/>
<rectangle x1="7.312" y1="0.656" x2="7.408" y2="0.688" layer="21"/>
<rectangle x1="7.568" y1="0.656" x2="7.824" y2="0.688" layer="21"/>
<rectangle x1="8.144" y1="0.656" x2="8.336" y2="0.688" layer="21"/>
<rectangle x1="8.528" y1="0.656" x2="8.656" y2="0.688" layer="21"/>
<rectangle x1="8.784" y1="0.656" x2="8.912" y2="0.688" layer="21"/>
<rectangle x1="1.744" y1="0.688" x2="1.904" y2="0.72" layer="21"/>
<rectangle x1="2.16" y1="0.688" x2="2.352" y2="0.72" layer="21"/>
<rectangle x1="4.368" y1="0.688" x2="4.496" y2="0.72" layer="21"/>
<rectangle x1="4.752" y1="0.688" x2="4.912" y2="0.72" layer="21"/>
<rectangle x1="5.008" y1="0.688" x2="5.136" y2="0.72" layer="21"/>
<rectangle x1="6.032" y1="0.688" x2="6.224" y2="0.72" layer="21"/>
<rectangle x1="6.64" y1="0.688" x2="6.8" y2="0.72" layer="21"/>
<rectangle x1="7.056" y1="0.688" x2="7.216" y2="0.72" layer="21"/>
<rectangle x1="7.312" y1="0.688" x2="7.408" y2="0.72" layer="21"/>
<rectangle x1="8.528" y1="0.688" x2="8.656" y2="0.72" layer="21"/>
<rectangle x1="8.848" y1="0.688" x2="8.88" y2="0.72" layer="21"/>
<rectangle x1="1.776" y1="0.72" x2="1.968" y2="0.752" layer="21"/>
<rectangle x1="2.128" y1="0.72" x2="2.32" y2="0.752" layer="21"/>
<rectangle x1="4.368" y1="0.72" x2="4.528" y2="0.752" layer="21"/>
<rectangle x1="4.72" y1="0.72" x2="4.88" y2="0.752" layer="21"/>
<rectangle x1="5.008" y1="0.72" x2="5.136" y2="0.752" layer="21"/>
<rectangle x1="6.064" y1="0.72" x2="6.192" y2="0.752" layer="21"/>
<rectangle x1="6.64" y1="0.72" x2="6.832" y2="0.752" layer="21"/>
<rectangle x1="6.992" y1="0.72" x2="7.184" y2="0.752" layer="21"/>
<rectangle x1="7.312" y1="0.72" x2="7.408" y2="0.752" layer="21"/>
<rectangle x1="8.528" y1="0.72" x2="8.656" y2="0.752" layer="21"/>
<rectangle x1="1.808" y1="0.752" x2="2.288" y2="0.784" layer="21"/>
<rectangle x1="4.4" y1="0.752" x2="4.88" y2="0.784" layer="21"/>
<rectangle x1="5.008" y1="0.752" x2="5.136" y2="0.784" layer="21"/>
<rectangle x1="6.064" y1="0.752" x2="6.192" y2="0.784" layer="21"/>
<rectangle x1="6.672" y1="0.752" x2="7.184" y2="0.784" layer="21"/>
<rectangle x1="7.312" y1="0.752" x2="7.408" y2="0.784" layer="21"/>
<rectangle x1="8.528" y1="0.752" x2="8.656" y2="0.784" layer="21"/>
<rectangle x1="1.84" y1="0.784" x2="2.256" y2="0.816" layer="21"/>
<rectangle x1="4.432" y1="0.784" x2="4.848" y2="0.816" layer="21"/>
<rectangle x1="5.008" y1="0.784" x2="5.104" y2="0.816" layer="21"/>
<rectangle x1="6.096" y1="0.784" x2="6.16" y2="0.816" layer="21"/>
<rectangle x1="6.704" y1="0.784" x2="7.152" y2="0.816" layer="21"/>
<rectangle x1="7.312" y1="0.784" x2="7.408" y2="0.816" layer="21"/>
<rectangle x1="8.528" y1="0.784" x2="8.624" y2="0.816" layer="21"/>
<rectangle x1="1.904" y1="0.816" x2="2.192" y2="0.848" layer="21"/>
<rectangle x1="4.464" y1="0.816" x2="4.784" y2="0.848" layer="21"/>
<rectangle x1="5.008" y1="0.816" x2="5.104" y2="0.848" layer="21"/>
<rectangle x1="6.768" y1="0.816" x2="7.088" y2="0.848" layer="21"/>
<rectangle x1="7.312" y1="0.816" x2="7.408" y2="0.848" layer="21"/>
<rectangle x1="8.528" y1="0.816" x2="8.624" y2="0.848" layer="21"/>
<rectangle x1="5.008" y1="0.848" x2="5.104" y2="0.88" layer="21"/>
<rectangle x1="7.312" y1="0.848" x2="7.408" y2="0.88" layer="21"/>
<rectangle x1="8.528" y1="0.848" x2="8.624" y2="0.88" layer="21"/>
<rectangle x1="6.512" y1="1.2" x2="6.576" y2="1.232" layer="21"/>
<rectangle x1="6.448" y1="1.232" x2="6.576" y2="1.264" layer="21"/>
<rectangle x1="6.384" y1="1.264" x2="6.576" y2="1.296" layer="21"/>
<rectangle x1="6.352" y1="1.296" x2="6.576" y2="1.328" layer="21"/>
<rectangle x1="6.288" y1="1.328" x2="6.576" y2="1.36" layer="21"/>
<rectangle x1="6.224" y1="1.36" x2="6.576" y2="1.392" layer="21"/>
<rectangle x1="6.192" y1="1.392" x2="6.576" y2="1.424" layer="21"/>
<rectangle x1="6.128" y1="1.424" x2="6.544" y2="1.456" layer="21"/>
<rectangle x1="6.064" y1="1.456" x2="6.544" y2="1.488" layer="21"/>
<rectangle x1="0.24" y1="1.488" x2="4.848" y2="1.52" layer="21"/>
<rectangle x1="6" y1="1.488" x2="10.192" y2="1.52" layer="21"/>
<rectangle x1="0.24" y1="1.52" x2="4.848" y2="1.552" layer="21"/>
<rectangle x1="5.936" y1="1.52" x2="10.192" y2="1.552" layer="21"/>
<rectangle x1="0.24" y1="1.552" x2="4.848" y2="1.584" layer="21"/>
<rectangle x1="5.904" y1="1.552" x2="10.192" y2="1.584" layer="21"/>
<rectangle x1="0.24" y1="1.584" x2="4.848" y2="1.616" layer="21"/>
<rectangle x1="5.84" y1="1.584" x2="10.192" y2="1.616" layer="21"/>
<rectangle x1="0.24" y1="1.616" x2="4.848" y2="1.648" layer="21"/>
<rectangle x1="5.776" y1="1.616" x2="10.192" y2="1.648" layer="21"/>
<rectangle x1="0.24" y1="1.648" x2="4.848" y2="1.68" layer="21"/>
<rectangle x1="5.712" y1="1.648" x2="10.192" y2="1.68" layer="21"/>
<rectangle x1="0.24" y1="1.68" x2="4.848" y2="1.712" layer="21"/>
<rectangle x1="5.68" y1="1.68" x2="10.192" y2="1.712" layer="21"/>
<rectangle x1="0.24" y1="1.712" x2="4.848" y2="1.744" layer="21"/>
<rectangle x1="5.616" y1="1.712" x2="10.192" y2="1.744" layer="21"/>
<rectangle x1="0.24" y1="1.744" x2="4.848" y2="1.776" layer="21"/>
<rectangle x1="5.584" y1="1.744" x2="10.192" y2="1.776" layer="21"/>
<rectangle x1="0.24" y1="1.776" x2="4.848" y2="1.808" layer="21"/>
<rectangle x1="5.584" y1="1.776" x2="10.192" y2="1.808" layer="21"/>
<rectangle x1="0.24" y1="1.808" x2="4.848" y2="1.84" layer="21"/>
<rectangle x1="5.616" y1="1.808" x2="10.192" y2="1.84" layer="21"/>
<rectangle x1="0.24" y1="1.84" x2="4.848" y2="1.872" layer="21"/>
<rectangle x1="5.68" y1="1.84" x2="10.192" y2="1.872" layer="21"/>
<rectangle x1="0.24" y1="1.872" x2="4.848" y2="1.904" layer="21"/>
<rectangle x1="5.712" y1="1.872" x2="10.192" y2="1.904" layer="21"/>
<rectangle x1="0.24" y1="1.904" x2="4.848" y2="1.936" layer="21"/>
<rectangle x1="5.776" y1="1.904" x2="10.192" y2="1.936" layer="21"/>
<rectangle x1="0.24" y1="1.936" x2="4.848" y2="1.968" layer="21"/>
<rectangle x1="5.84" y1="1.936" x2="10.192" y2="1.968" layer="21"/>
<rectangle x1="0.24" y1="1.968" x2="4.848" y2="2" layer="21"/>
<rectangle x1="5.904" y1="1.968" x2="10.192" y2="2" layer="21"/>
<rectangle x1="0.24" y1="2" x2="4.848" y2="2.032" layer="21"/>
<rectangle x1="5.936" y1="2" x2="10.192" y2="2.032" layer="21"/>
<rectangle x1="0.24" y1="2.032" x2="4.848" y2="2.064" layer="21"/>
<rectangle x1="6" y1="2.032" x2="10.192" y2="2.064" layer="21"/>
<rectangle x1="0.24" y1="2.064" x2="0.848" y2="2.096" layer="21"/>
<rectangle x1="6.064" y1="2.064" x2="6.544" y2="2.096" layer="21"/>
<rectangle x1="9.584" y1="2.064" x2="10.192" y2="2.096" layer="21"/>
<rectangle x1="0.24" y1="2.096" x2="0.848" y2="2.128" layer="21"/>
<rectangle x1="6.128" y1="2.096" x2="6.576" y2="2.128" layer="21"/>
<rectangle x1="9.584" y1="2.096" x2="10.192" y2="2.128" layer="21"/>
<rectangle x1="0.24" y1="2.128" x2="0.848" y2="2.16" layer="21"/>
<rectangle x1="6.16" y1="2.128" x2="6.576" y2="2.16" layer="21"/>
<rectangle x1="9.584" y1="2.128" x2="10.192" y2="2.16" layer="21"/>
<rectangle x1="0.24" y1="2.16" x2="0.848" y2="2.192" layer="21"/>
<rectangle x1="6.224" y1="2.16" x2="6.576" y2="2.192" layer="21"/>
<rectangle x1="9.584" y1="2.16" x2="10.192" y2="2.192" layer="21"/>
<rectangle x1="0.24" y1="2.192" x2="0.848" y2="2.224" layer="21"/>
<rectangle x1="6.288" y1="2.192" x2="6.576" y2="2.224" layer="21"/>
<rectangle x1="9.584" y1="2.192" x2="10.192" y2="2.224" layer="21"/>
<rectangle x1="0.24" y1="2.224" x2="0.848" y2="2.256" layer="21"/>
<rectangle x1="6.352" y1="2.224" x2="6.576" y2="2.256" layer="21"/>
<rectangle x1="9.584" y1="2.224" x2="10.192" y2="2.256" layer="21"/>
<rectangle x1="0.24" y1="2.256" x2="0.848" y2="2.288" layer="21"/>
<rectangle x1="6.416" y1="2.256" x2="6.576" y2="2.288" layer="21"/>
<rectangle x1="9.584" y1="2.256" x2="10.192" y2="2.288" layer="21"/>
<rectangle x1="0.24" y1="2.288" x2="0.848" y2="2.32" layer="21"/>
<rectangle x1="6.48" y1="2.288" x2="6.576" y2="2.32" layer="21"/>
<rectangle x1="9.584" y1="2.288" x2="10.192" y2="2.32" layer="21"/>
<rectangle x1="0.24" y1="2.32" x2="0.848" y2="2.352" layer="21"/>
<rectangle x1="9.584" y1="2.32" x2="10.192" y2="2.352" layer="21"/>
<rectangle x1="0.24" y1="2.352" x2="0.848" y2="2.384" layer="21"/>
<rectangle x1="9.584" y1="2.352" x2="10.192" y2="2.384" layer="21"/>
<rectangle x1="0.24" y1="2.384" x2="0.848" y2="2.416" layer="21"/>
<rectangle x1="9.584" y1="2.384" x2="10.192" y2="2.416" layer="21"/>
<rectangle x1="0.24" y1="2.416" x2="0.848" y2="2.448" layer="21"/>
<rectangle x1="9.584" y1="2.416" x2="10.192" y2="2.448" layer="21"/>
<rectangle x1="0.24" y1="2.448" x2="0.848" y2="2.48" layer="21"/>
<rectangle x1="9.584" y1="2.448" x2="10.192" y2="2.48" layer="21"/>
<rectangle x1="0.24" y1="2.48" x2="0.848" y2="2.512" layer="21"/>
<rectangle x1="9.584" y1="2.48" x2="10.192" y2="2.512" layer="21"/>
<rectangle x1="0.24" y1="2.512" x2="0.848" y2="2.544" layer="21"/>
<rectangle x1="9.584" y1="2.512" x2="10.192" y2="2.544" layer="21"/>
<rectangle x1="0.24" y1="2.544" x2="0.848" y2="2.576" layer="21"/>
<rectangle x1="2.064" y1="2.544" x2="4.048" y2="2.576" layer="21"/>
<rectangle x1="6.352" y1="2.544" x2="8.304" y2="2.576" layer="21"/>
<rectangle x1="9.584" y1="2.544" x2="10.192" y2="2.576" layer="21"/>
<rectangle x1="0.24" y1="2.576" x2="0.848" y2="2.608" layer="21"/>
<rectangle x1="2.032" y1="2.576" x2="4.08" y2="2.608" layer="21"/>
<rectangle x1="6.32" y1="2.576" x2="8.336" y2="2.608" layer="21"/>
<rectangle x1="9.584" y1="2.576" x2="10.192" y2="2.608" layer="21"/>
<rectangle x1="0.24" y1="2.608" x2="0.848" y2="2.64" layer="21"/>
<rectangle x1="2" y1="2.608" x2="4.112" y2="2.64" layer="21"/>
<rectangle x1="6.288" y1="2.608" x2="8.368" y2="2.64" layer="21"/>
<rectangle x1="9.584" y1="2.608" x2="10.192" y2="2.64" layer="21"/>
<rectangle x1="0.24" y1="2.64" x2="0.848" y2="2.672" layer="21"/>
<rectangle x1="1.968" y1="2.64" x2="4.144" y2="2.672" layer="21"/>
<rectangle x1="6.256" y1="2.64" x2="8.4" y2="2.672" layer="21"/>
<rectangle x1="9.584" y1="2.64" x2="10.192" y2="2.672" layer="21"/>
<rectangle x1="0.24" y1="2.672" x2="0.848" y2="2.704" layer="21"/>
<rectangle x1="1.936" y1="2.672" x2="4.176" y2="2.704" layer="21"/>
<rectangle x1="6.224" y1="2.672" x2="8.432" y2="2.704" layer="21"/>
<rectangle x1="9.584" y1="2.672" x2="10.192" y2="2.704" layer="21"/>
<rectangle x1="0.24" y1="2.704" x2="0.848" y2="2.736" layer="21"/>
<rectangle x1="1.904" y1="2.704" x2="4.208" y2="2.736" layer="21"/>
<rectangle x1="6.192" y1="2.704" x2="8.464" y2="2.736" layer="21"/>
<rectangle x1="9.584" y1="2.704" x2="10.192" y2="2.736" layer="21"/>
<rectangle x1="0.24" y1="2.736" x2="0.848" y2="2.768" layer="21"/>
<rectangle x1="1.872" y1="2.736" x2="4.24" y2="2.768" layer="21"/>
<rectangle x1="6.16" y1="2.736" x2="8.496" y2="2.768" layer="21"/>
<rectangle x1="9.584" y1="2.736" x2="10.192" y2="2.768" layer="21"/>
<rectangle x1="0.24" y1="2.768" x2="0.848" y2="2.8" layer="21"/>
<rectangle x1="1.84" y1="2.768" x2="4.272" y2="2.8" layer="21"/>
<rectangle x1="6.128" y1="2.768" x2="8.528" y2="2.8" layer="21"/>
<rectangle x1="9.584" y1="2.768" x2="10.192" y2="2.8" layer="21"/>
<rectangle x1="0.24" y1="2.8" x2="0.848" y2="2.832" layer="21"/>
<rectangle x1="1.808" y1="2.8" x2="4.304" y2="2.832" layer="21"/>
<rectangle x1="6.096" y1="2.8" x2="8.56" y2="2.832" layer="21"/>
<rectangle x1="9.584" y1="2.8" x2="10.192" y2="2.832" layer="21"/>
<rectangle x1="0.24" y1="2.832" x2="0.848" y2="2.864" layer="21"/>
<rectangle x1="1.776" y1="2.832" x2="4.336" y2="2.864" layer="21"/>
<rectangle x1="6.064" y1="2.832" x2="8.592" y2="2.864" layer="21"/>
<rectangle x1="9.584" y1="2.832" x2="10.192" y2="2.864" layer="21"/>
<rectangle x1="0.24" y1="2.864" x2="0.848" y2="2.896" layer="21"/>
<rectangle x1="1.744" y1="2.864" x2="4.368" y2="2.896" layer="21"/>
<rectangle x1="6.032" y1="2.864" x2="8.624" y2="2.896" layer="21"/>
<rectangle x1="9.584" y1="2.864" x2="10.192" y2="2.896" layer="21"/>
<rectangle x1="0.24" y1="2.896" x2="0.848" y2="2.928" layer="21"/>
<rectangle x1="1.712" y1="2.896" x2="4.4" y2="2.928" layer="21"/>
<rectangle x1="6" y1="2.896" x2="8.656" y2="2.928" layer="21"/>
<rectangle x1="9.584" y1="2.896" x2="10.192" y2="2.928" layer="21"/>
<rectangle x1="0.24" y1="2.928" x2="0.848" y2="2.96" layer="21"/>
<rectangle x1="1.68" y1="2.928" x2="4.432" y2="2.96" layer="21"/>
<rectangle x1="5.968" y1="2.928" x2="8.688" y2="2.96" layer="21"/>
<rectangle x1="9.584" y1="2.928" x2="10.192" y2="2.96" layer="21"/>
<rectangle x1="0.24" y1="2.96" x2="0.848" y2="2.992" layer="21"/>
<rectangle x1="1.648" y1="2.96" x2="4.464" y2="2.992" layer="21"/>
<rectangle x1="5.936" y1="2.96" x2="8.72" y2="2.992" layer="21"/>
<rectangle x1="9.584" y1="2.96" x2="10.192" y2="2.992" layer="21"/>
<rectangle x1="0.24" y1="2.992" x2="0.848" y2="3.024" layer="21"/>
<rectangle x1="1.616" y1="2.992" x2="4.496" y2="3.024" layer="21"/>
<rectangle x1="5.904" y1="2.992" x2="8.752" y2="3.024" layer="21"/>
<rectangle x1="9.584" y1="2.992" x2="10.192" y2="3.024" layer="21"/>
<rectangle x1="0.24" y1="3.024" x2="0.848" y2="3.056" layer="21"/>
<rectangle x1="1.584" y1="3.024" x2="1.712" y2="3.056" layer="21"/>
<rectangle x1="1.744" y1="3.024" x2="4.528" y2="3.056" layer="21"/>
<rectangle x1="5.872" y1="3.024" x2="8.784" y2="3.056" layer="21"/>
<rectangle x1="9.584" y1="3.024" x2="10.192" y2="3.056" layer="21"/>
<rectangle x1="0.24" y1="3.056" x2="0.848" y2="3.088" layer="21"/>
<rectangle x1="1.552" y1="3.056" x2="1.68" y2="3.088" layer="21"/>
<rectangle x1="1.776" y1="3.056" x2="4.56" y2="3.088" layer="21"/>
<rectangle x1="5.84" y1="3.056" x2="8.816" y2="3.088" layer="21"/>
<rectangle x1="9.584" y1="3.056" x2="10.192" y2="3.088" layer="21"/>
<rectangle x1="0.24" y1="3.088" x2="0.848" y2="3.12" layer="21"/>
<rectangle x1="1.52" y1="3.088" x2="1.648" y2="3.12" layer="21"/>
<rectangle x1="1.808" y1="3.088" x2="4.592" y2="3.12" layer="21"/>
<rectangle x1="5.808" y1="3.088" x2="8.848" y2="3.12" layer="21"/>
<rectangle x1="9.584" y1="3.088" x2="10.192" y2="3.12" layer="21"/>
<rectangle x1="0.24" y1="3.12" x2="0.848" y2="3.152" layer="21"/>
<rectangle x1="1.488" y1="3.12" x2="1.616" y2="3.152" layer="21"/>
<rectangle x1="1.84" y1="3.12" x2="4.624" y2="3.152" layer="21"/>
<rectangle x1="5.776" y1="3.12" x2="8.88" y2="3.152" layer="21"/>
<rectangle x1="9.584" y1="3.12" x2="10.192" y2="3.152" layer="21"/>
<rectangle x1="0.24" y1="3.152" x2="0.848" y2="3.184" layer="21"/>
<rectangle x1="1.488" y1="3.152" x2="1.584" y2="3.184" layer="21"/>
<rectangle x1="1.872" y1="3.152" x2="4.656" y2="3.184" layer="21"/>
<rectangle x1="5.744" y1="3.152" x2="8.912" y2="3.184" layer="21"/>
<rectangle x1="9.584" y1="3.152" x2="10.192" y2="3.184" layer="21"/>
<rectangle x1="0.24" y1="3.184" x2="0.848" y2="3.216" layer="21"/>
<rectangle x1="1.456" y1="3.184" x2="1.552" y2="3.216" layer="21"/>
<rectangle x1="1.904" y1="3.184" x2="4.688" y2="3.216" layer="21"/>
<rectangle x1="5.712" y1="3.184" x2="8.944" y2="3.216" layer="21"/>
<rectangle x1="9.584" y1="3.184" x2="10.192" y2="3.216" layer="21"/>
<rectangle x1="0.24" y1="3.216" x2="0.848" y2="3.248" layer="21"/>
<rectangle x1="1.424" y1="3.216" x2="1.488" y2="3.248" layer="21"/>
<rectangle x1="1.936" y1="3.216" x2="4.72" y2="3.248" layer="21"/>
<rectangle x1="5.68" y1="3.216" x2="8.976" y2="3.248" layer="21"/>
<rectangle x1="9.584" y1="3.216" x2="10.192" y2="3.248" layer="21"/>
<rectangle x1="0.24" y1="3.248" x2="0.848" y2="3.28" layer="21"/>
<rectangle x1="1.392" y1="3.248" x2="1.456" y2="3.28" layer="21"/>
<rectangle x1="1.968" y1="3.248" x2="4.752" y2="3.28" layer="21"/>
<rectangle x1="5.648" y1="3.248" x2="9.008" y2="3.28" layer="21"/>
<rectangle x1="9.584" y1="3.248" x2="10.192" y2="3.28" layer="21"/>
<rectangle x1="0.24" y1="3.28" x2="0.848" y2="3.312" layer="21"/>
<rectangle x1="1.36" y1="3.28" x2="1.424" y2="3.312" layer="21"/>
<rectangle x1="2" y1="3.28" x2="4.784" y2="3.312" layer="21"/>
<rectangle x1="5.616" y1="3.28" x2="9.04" y2="3.312" layer="21"/>
<rectangle x1="9.584" y1="3.28" x2="10.192" y2="3.312" layer="21"/>
<rectangle x1="0.24" y1="3.312" x2="0.848" y2="3.344" layer="21"/>
<rectangle x1="1.328" y1="3.312" x2="1.392" y2="3.344" layer="21"/>
<rectangle x1="2.032" y1="3.312" x2="4.816" y2="3.344" layer="21"/>
<rectangle x1="5.584" y1="3.312" x2="9.104" y2="3.344" layer="21"/>
<rectangle x1="9.584" y1="3.312" x2="10.192" y2="3.344" layer="21"/>
<rectangle x1="0.24" y1="3.344" x2="0.848" y2="3.376" layer="21"/>
<rectangle x1="1.296" y1="3.344" x2="1.36" y2="3.376" layer="21"/>
<rectangle x1="2.064" y1="3.344" x2="4.848" y2="3.376" layer="21"/>
<rectangle x1="5.584" y1="3.344" x2="9.136" y2="3.376" layer="21"/>
<rectangle x1="9.584" y1="3.344" x2="10.192" y2="3.376" layer="21"/>
<rectangle x1="0.24" y1="3.376" x2="0.848" y2="3.408" layer="21"/>
<rectangle x1="1.296" y1="3.376" x2="1.328" y2="3.408" layer="21"/>
<rectangle x1="2.064" y1="3.376" x2="2.16" y2="3.408" layer="21"/>
<rectangle x1="3.984" y1="3.376" x2="4.848" y2="3.408" layer="21"/>
<rectangle x1="5.584" y1="3.376" x2="6.448" y2="3.408" layer="21"/>
<rectangle x1="8.272" y1="3.376" x2="9.136" y2="3.408" layer="21"/>
<rectangle x1="9.584" y1="3.376" x2="10.192" y2="3.408" layer="21"/>
<rectangle x1="0.24" y1="3.408" x2="0.848" y2="3.44" layer="21"/>
<rectangle x1="1.296" y1="3.408" x2="1.328" y2="3.44" layer="21"/>
<rectangle x1="2.064" y1="3.408" x2="2.16" y2="3.44" layer="21"/>
<rectangle x1="3.984" y1="3.408" x2="4.848" y2="3.44" layer="21"/>
<rectangle x1="5.584" y1="3.408" x2="6.448" y2="3.44" layer="21"/>
<rectangle x1="8.272" y1="3.408" x2="9.136" y2="3.44" layer="21"/>
<rectangle x1="9.584" y1="3.408" x2="10.192" y2="3.44" layer="21"/>
<rectangle x1="0.24" y1="3.44" x2="0.848" y2="3.472" layer="21"/>
<rectangle x1="1.296" y1="3.44" x2="1.328" y2="3.472" layer="21"/>
<rectangle x1="2.064" y1="3.44" x2="2.16" y2="3.472" layer="21"/>
<rectangle x1="3.984" y1="3.44" x2="4.848" y2="3.472" layer="21"/>
<rectangle x1="5.584" y1="3.44" x2="6.448" y2="3.472" layer="21"/>
<rectangle x1="8.272" y1="3.44" x2="9.136" y2="3.472" layer="21"/>
<rectangle x1="9.584" y1="3.44" x2="10.192" y2="3.472" layer="21"/>
<rectangle x1="0.24" y1="3.472" x2="0.848" y2="3.504" layer="21"/>
<rectangle x1="1.296" y1="3.472" x2="1.328" y2="3.504" layer="21"/>
<rectangle x1="2.064" y1="3.472" x2="2.16" y2="3.504" layer="21"/>
<rectangle x1="3.984" y1="3.472" x2="4.848" y2="3.504" layer="21"/>
<rectangle x1="5.584" y1="3.472" x2="6.448" y2="3.504" layer="21"/>
<rectangle x1="8.272" y1="3.472" x2="9.136" y2="3.504" layer="21"/>
<rectangle x1="9.584" y1="3.472" x2="10.192" y2="3.504" layer="21"/>
<rectangle x1="0.24" y1="3.504" x2="0.848" y2="3.536" layer="21"/>
<rectangle x1="1.296" y1="3.504" x2="1.328" y2="3.536" layer="21"/>
<rectangle x1="2.064" y1="3.504" x2="2.16" y2="3.536" layer="21"/>
<rectangle x1="3.984" y1="3.504" x2="4.848" y2="3.536" layer="21"/>
<rectangle x1="5.584" y1="3.504" x2="6.448" y2="3.536" layer="21"/>
<rectangle x1="8.272" y1="3.504" x2="9.136" y2="3.536" layer="21"/>
<rectangle x1="9.584" y1="3.504" x2="10.192" y2="3.536" layer="21"/>
<rectangle x1="0.24" y1="3.536" x2="0.848" y2="3.568" layer="21"/>
<rectangle x1="1.296" y1="3.536" x2="1.328" y2="3.568" layer="21"/>
<rectangle x1="2.064" y1="3.536" x2="2.16" y2="3.568" layer="21"/>
<rectangle x1="3.984" y1="3.536" x2="4.848" y2="3.568" layer="21"/>
<rectangle x1="5.584" y1="3.536" x2="6.448" y2="3.568" layer="21"/>
<rectangle x1="8.272" y1="3.536" x2="9.136" y2="3.568" layer="21"/>
<rectangle x1="9.584" y1="3.536" x2="10.192" y2="3.568" layer="21"/>
<rectangle x1="0.24" y1="3.568" x2="0.848" y2="3.6" layer="21"/>
<rectangle x1="1.296" y1="3.568" x2="1.328" y2="3.6" layer="21"/>
<rectangle x1="2.064" y1="3.568" x2="2.16" y2="3.6" layer="21"/>
<rectangle x1="3.984" y1="3.568" x2="4.848" y2="3.6" layer="21"/>
<rectangle x1="5.584" y1="3.568" x2="6.448" y2="3.6" layer="21"/>
<rectangle x1="8.272" y1="3.568" x2="9.136" y2="3.6" layer="21"/>
<rectangle x1="9.584" y1="3.568" x2="10.192" y2="3.6" layer="21"/>
<rectangle x1="0.24" y1="3.6" x2="0.848" y2="3.632" layer="21"/>
<rectangle x1="1.296" y1="3.6" x2="1.328" y2="3.632" layer="21"/>
<rectangle x1="2.064" y1="3.6" x2="2.16" y2="3.632" layer="21"/>
<rectangle x1="3.984" y1="3.6" x2="4.848" y2="3.632" layer="21"/>
<rectangle x1="5.584" y1="3.6" x2="6.448" y2="3.632" layer="21"/>
<rectangle x1="8.272" y1="3.6" x2="9.136" y2="3.632" layer="21"/>
<rectangle x1="9.584" y1="3.6" x2="10.192" y2="3.632" layer="21"/>
<rectangle x1="0.24" y1="3.632" x2="0.848" y2="3.664" layer="21"/>
<rectangle x1="1.296" y1="3.632" x2="1.328" y2="3.664" layer="21"/>
<rectangle x1="2.064" y1="3.632" x2="2.16" y2="3.664" layer="21"/>
<rectangle x1="3.984" y1="3.632" x2="4.848" y2="3.664" layer="21"/>
<rectangle x1="5.584" y1="3.632" x2="6.448" y2="3.664" layer="21"/>
<rectangle x1="8.272" y1="3.632" x2="9.136" y2="3.664" layer="21"/>
<rectangle x1="9.584" y1="3.632" x2="10.192" y2="3.664" layer="21"/>
<rectangle x1="0.24" y1="3.664" x2="0.848" y2="3.696" layer="21"/>
<rectangle x1="1.296" y1="3.664" x2="1.328" y2="3.696" layer="21"/>
<rectangle x1="2.064" y1="3.664" x2="2.16" y2="3.696" layer="21"/>
<rectangle x1="3.984" y1="3.664" x2="4.848" y2="3.696" layer="21"/>
<rectangle x1="5.584" y1="3.664" x2="6.448" y2="3.696" layer="21"/>
<rectangle x1="8.272" y1="3.664" x2="9.136" y2="3.696" layer="21"/>
<rectangle x1="9.584" y1="3.664" x2="10.192" y2="3.696" layer="21"/>
<rectangle x1="0.24" y1="3.696" x2="0.848" y2="3.728" layer="21"/>
<rectangle x1="1.296" y1="3.696" x2="1.328" y2="3.728" layer="21"/>
<rectangle x1="2.064" y1="3.696" x2="2.16" y2="3.728" layer="21"/>
<rectangle x1="3.984" y1="3.696" x2="4.848" y2="3.728" layer="21"/>
<rectangle x1="5.584" y1="3.696" x2="6.448" y2="3.728" layer="21"/>
<rectangle x1="8.272" y1="3.696" x2="9.136" y2="3.728" layer="21"/>
<rectangle x1="9.584" y1="3.696" x2="10.192" y2="3.728" layer="21"/>
<rectangle x1="0.24" y1="3.728" x2="0.848" y2="3.76" layer="21"/>
<rectangle x1="1.296" y1="3.728" x2="1.328" y2="3.76" layer="21"/>
<rectangle x1="2.064" y1="3.728" x2="2.16" y2="3.76" layer="21"/>
<rectangle x1="3.984" y1="3.728" x2="4.848" y2="3.76" layer="21"/>
<rectangle x1="5.584" y1="3.728" x2="6.448" y2="3.76" layer="21"/>
<rectangle x1="8.272" y1="3.728" x2="9.136" y2="3.76" layer="21"/>
<rectangle x1="9.584" y1="3.728" x2="10.192" y2="3.76" layer="21"/>
<rectangle x1="0.24" y1="3.76" x2="0.848" y2="3.792" layer="21"/>
<rectangle x1="1.296" y1="3.76" x2="1.328" y2="3.792" layer="21"/>
<rectangle x1="2.064" y1="3.76" x2="2.16" y2="3.792" layer="21"/>
<rectangle x1="3.984" y1="3.76" x2="4.848" y2="3.792" layer="21"/>
<rectangle x1="5.584" y1="3.76" x2="6.448" y2="3.792" layer="21"/>
<rectangle x1="8.272" y1="3.76" x2="9.136" y2="3.792" layer="21"/>
<rectangle x1="9.584" y1="3.76" x2="10.192" y2="3.792" layer="21"/>
<rectangle x1="0.24" y1="3.792" x2="0.848" y2="3.824" layer="21"/>
<rectangle x1="1.296" y1="3.792" x2="1.328" y2="3.824" layer="21"/>
<rectangle x1="2.064" y1="3.792" x2="2.16" y2="3.824" layer="21"/>
<rectangle x1="3.984" y1="3.792" x2="4.848" y2="3.824" layer="21"/>
<rectangle x1="5.584" y1="3.792" x2="6.448" y2="3.824" layer="21"/>
<rectangle x1="8.272" y1="3.792" x2="9.136" y2="3.824" layer="21"/>
<rectangle x1="9.584" y1="3.792" x2="10.192" y2="3.824" layer="21"/>
<rectangle x1="0.24" y1="3.824" x2="0.848" y2="3.856" layer="21"/>
<rectangle x1="1.296" y1="3.824" x2="1.328" y2="3.856" layer="21"/>
<rectangle x1="2.096" y1="3.824" x2="2.16" y2="3.856" layer="21"/>
<rectangle x1="3.984" y1="3.824" x2="4.848" y2="3.856" layer="21"/>
<rectangle x1="5.584" y1="3.824" x2="6.448" y2="3.856" layer="21"/>
<rectangle x1="8.272" y1="3.824" x2="9.136" y2="3.856" layer="21"/>
<rectangle x1="9.584" y1="3.824" x2="10.192" y2="3.856" layer="21"/>
<rectangle x1="0.24" y1="3.856" x2="0.848" y2="3.888" layer="21"/>
<rectangle x1="1.296" y1="3.856" x2="1.328" y2="3.888" layer="21"/>
<rectangle x1="2.096" y1="3.856" x2="2.16" y2="3.888" layer="21"/>
<rectangle x1="3.984" y1="3.856" x2="4.848" y2="3.888" layer="21"/>
<rectangle x1="5.584" y1="3.856" x2="6.448" y2="3.888" layer="21"/>
<rectangle x1="8.272" y1="3.856" x2="9.136" y2="3.888" layer="21"/>
<rectangle x1="9.584" y1="3.856" x2="10.192" y2="3.888" layer="21"/>
<rectangle x1="0.24" y1="3.888" x2="0.848" y2="3.92" layer="21"/>
<rectangle x1="1.296" y1="3.888" x2="1.328" y2="3.92" layer="21"/>
<rectangle x1="2.096" y1="3.888" x2="2.16" y2="3.92" layer="21"/>
<rectangle x1="3.984" y1="3.888" x2="4.848" y2="3.92" layer="21"/>
<rectangle x1="5.584" y1="3.888" x2="6.448" y2="3.92" layer="21"/>
<rectangle x1="8.272" y1="3.888" x2="9.136" y2="3.92" layer="21"/>
<rectangle x1="9.584" y1="3.888" x2="10.192" y2="3.92" layer="21"/>
<rectangle x1="0.24" y1="3.92" x2="0.848" y2="3.952" layer="21"/>
<rectangle x1="1.296" y1="3.92" x2="1.328" y2="3.952" layer="21"/>
<rectangle x1="2.096" y1="3.92" x2="2.16" y2="3.952" layer="21"/>
<rectangle x1="3.984" y1="3.92" x2="4.848" y2="3.952" layer="21"/>
<rectangle x1="5.584" y1="3.92" x2="6.448" y2="3.952" layer="21"/>
<rectangle x1="8.272" y1="3.92" x2="9.136" y2="3.952" layer="21"/>
<rectangle x1="9.584" y1="3.92" x2="10.192" y2="3.952" layer="21"/>
<rectangle x1="0.24" y1="3.952" x2="0.848" y2="3.984" layer="21"/>
<rectangle x1="1.296" y1="3.952" x2="1.328" y2="3.984" layer="21"/>
<rectangle x1="2.096" y1="3.952" x2="2.16" y2="3.984" layer="21"/>
<rectangle x1="3.984" y1="3.952" x2="4.848" y2="3.984" layer="21"/>
<rectangle x1="5.584" y1="3.952" x2="6.448" y2="3.984" layer="21"/>
<rectangle x1="8.272" y1="3.952" x2="9.136" y2="3.984" layer="21"/>
<rectangle x1="9.584" y1="3.952" x2="10.192" y2="3.984" layer="21"/>
<rectangle x1="0.24" y1="3.984" x2="0.848" y2="4.016" layer="21"/>
<rectangle x1="1.296" y1="3.984" x2="1.328" y2="4.016" layer="21"/>
<rectangle x1="2.096" y1="3.984" x2="2.16" y2="4.016" layer="21"/>
<rectangle x1="3.984" y1="3.984" x2="4.848" y2="4.016" layer="21"/>
<rectangle x1="5.584" y1="3.984" x2="6.448" y2="4.016" layer="21"/>
<rectangle x1="8.272" y1="3.984" x2="9.136" y2="4.016" layer="21"/>
<rectangle x1="9.584" y1="3.984" x2="10.192" y2="4.016" layer="21"/>
<rectangle x1="0.24" y1="4.016" x2="0.848" y2="4.048" layer="21"/>
<rectangle x1="1.296" y1="4.016" x2="1.328" y2="4.048" layer="21"/>
<rectangle x1="2.096" y1="4.016" x2="2.16" y2="4.048" layer="21"/>
<rectangle x1="3.984" y1="4.016" x2="4.848" y2="4.048" layer="21"/>
<rectangle x1="5.584" y1="4.016" x2="6.448" y2="4.048" layer="21"/>
<rectangle x1="8.272" y1="4.016" x2="9.136" y2="4.048" layer="21"/>
<rectangle x1="9.584" y1="4.016" x2="10.192" y2="4.048" layer="21"/>
<rectangle x1="0.24" y1="4.048" x2="0.848" y2="4.08" layer="21"/>
<rectangle x1="1.296" y1="4.048" x2="1.328" y2="4.08" layer="21"/>
<rectangle x1="2.096" y1="4.048" x2="2.16" y2="4.08" layer="21"/>
<rectangle x1="3.984" y1="4.048" x2="4.848" y2="4.08" layer="21"/>
<rectangle x1="5.584" y1="4.048" x2="6.448" y2="4.08" layer="21"/>
<rectangle x1="8.272" y1="4.048" x2="9.136" y2="4.08" layer="21"/>
<rectangle x1="9.584" y1="4.048" x2="10.192" y2="4.08" layer="21"/>
<rectangle x1="0.24" y1="4.08" x2="0.848" y2="4.112" layer="21"/>
<rectangle x1="1.296" y1="4.08" x2="1.328" y2="4.112" layer="21"/>
<rectangle x1="2.096" y1="4.08" x2="2.16" y2="4.112" layer="21"/>
<rectangle x1="3.984" y1="4.08" x2="4.848" y2="4.112" layer="21"/>
<rectangle x1="5.584" y1="4.08" x2="6.448" y2="4.112" layer="21"/>
<rectangle x1="8.272" y1="4.08" x2="9.136" y2="4.112" layer="21"/>
<rectangle x1="9.584" y1="4.08" x2="10.192" y2="4.112" layer="21"/>
<rectangle x1="0.24" y1="4.112" x2="0.848" y2="4.144" layer="21"/>
<rectangle x1="1.296" y1="4.112" x2="1.328" y2="4.144" layer="21"/>
<rectangle x1="2.096" y1="4.112" x2="2.16" y2="4.144" layer="21"/>
<rectangle x1="3.984" y1="4.112" x2="4.848" y2="4.144" layer="21"/>
<rectangle x1="5.584" y1="4.112" x2="6.448" y2="4.144" layer="21"/>
<rectangle x1="8.272" y1="4.112" x2="9.136" y2="4.144" layer="21"/>
<rectangle x1="9.584" y1="4.112" x2="10.192" y2="4.144" layer="21"/>
<rectangle x1="0.24" y1="4.144" x2="0.848" y2="4.176" layer="21"/>
<rectangle x1="1.296" y1="4.144" x2="1.328" y2="4.176" layer="21"/>
<rectangle x1="2.096" y1="4.144" x2="2.16" y2="4.176" layer="21"/>
<rectangle x1="3.984" y1="4.144" x2="4.848" y2="4.176" layer="21"/>
<rectangle x1="5.584" y1="4.144" x2="6.448" y2="4.176" layer="21"/>
<rectangle x1="8.272" y1="4.144" x2="9.136" y2="4.176" layer="21"/>
<rectangle x1="9.584" y1="4.144" x2="10.192" y2="4.176" layer="21"/>
<rectangle x1="0.24" y1="4.176" x2="0.848" y2="4.208" layer="21"/>
<rectangle x1="1.296" y1="4.176" x2="1.328" y2="4.208" layer="21"/>
<rectangle x1="2.096" y1="4.176" x2="2.16" y2="4.208" layer="21"/>
<rectangle x1="3.984" y1="4.176" x2="4.848" y2="4.208" layer="21"/>
<rectangle x1="5.584" y1="4.176" x2="6.448" y2="4.208" layer="21"/>
<rectangle x1="8.272" y1="4.176" x2="9.136" y2="4.208" layer="21"/>
<rectangle x1="9.584" y1="4.176" x2="10.192" y2="4.208" layer="21"/>
<rectangle x1="0.24" y1="4.208" x2="0.848" y2="4.24" layer="21"/>
<rectangle x1="1.296" y1="4.208" x2="1.328" y2="4.24" layer="21"/>
<rectangle x1="2.096" y1="4.208" x2="2.16" y2="4.24" layer="21"/>
<rectangle x1="3.984" y1="4.208" x2="4.848" y2="4.24" layer="21"/>
<rectangle x1="5.584" y1="4.208" x2="6.448" y2="4.24" layer="21"/>
<rectangle x1="8.272" y1="4.208" x2="9.136" y2="4.24" layer="21"/>
<rectangle x1="9.584" y1="4.208" x2="10.192" y2="4.24" layer="21"/>
<rectangle x1="0.24" y1="4.24" x2="0.848" y2="4.272" layer="21"/>
<rectangle x1="1.296" y1="4.24" x2="1.328" y2="4.272" layer="21"/>
<rectangle x1="2.096" y1="4.24" x2="2.16" y2="4.272" layer="21"/>
<rectangle x1="3.984" y1="4.24" x2="4.848" y2="4.272" layer="21"/>
<rectangle x1="5.584" y1="4.24" x2="6.448" y2="4.272" layer="21"/>
<rectangle x1="8.272" y1="4.24" x2="9.136" y2="4.272" layer="21"/>
<rectangle x1="9.584" y1="4.24" x2="10.192" y2="4.272" layer="21"/>
<rectangle x1="0.24" y1="4.272" x2="0.848" y2="4.304" layer="21"/>
<rectangle x1="1.296" y1="4.272" x2="1.328" y2="4.304" layer="21"/>
<rectangle x1="2.096" y1="4.272" x2="2.16" y2="4.304" layer="21"/>
<rectangle x1="3.984" y1="4.272" x2="4.848" y2="4.304" layer="21"/>
<rectangle x1="5.584" y1="4.272" x2="6.448" y2="4.304" layer="21"/>
<rectangle x1="8.272" y1="4.272" x2="9.136" y2="4.304" layer="21"/>
<rectangle x1="9.584" y1="4.272" x2="10.192" y2="4.304" layer="21"/>
<rectangle x1="0.24" y1="4.304" x2="0.848" y2="4.336" layer="21"/>
<rectangle x1="1.296" y1="4.304" x2="1.328" y2="4.336" layer="21"/>
<rectangle x1="2.096" y1="4.304" x2="2.16" y2="4.336" layer="21"/>
<rectangle x1="3.984" y1="4.304" x2="4.848" y2="4.336" layer="21"/>
<rectangle x1="5.584" y1="4.304" x2="6.448" y2="4.336" layer="21"/>
<rectangle x1="8.272" y1="4.304" x2="9.136" y2="4.336" layer="21"/>
<rectangle x1="9.584" y1="4.304" x2="10.192" y2="4.336" layer="21"/>
<rectangle x1="0.24" y1="4.336" x2="0.848" y2="4.368" layer="21"/>
<rectangle x1="1.296" y1="4.336" x2="1.328" y2="4.368" layer="21"/>
<rectangle x1="2.096" y1="4.336" x2="2.16" y2="4.368" layer="21"/>
<rectangle x1="3.984" y1="4.336" x2="4.848" y2="4.368" layer="21"/>
<rectangle x1="5.584" y1="4.336" x2="6.448" y2="4.368" layer="21"/>
<rectangle x1="8.272" y1="4.336" x2="9.136" y2="4.368" layer="21"/>
<rectangle x1="9.584" y1="4.336" x2="10.192" y2="4.368" layer="21"/>
<rectangle x1="0.24" y1="4.368" x2="0.848" y2="4.4" layer="21"/>
<rectangle x1="1.296" y1="4.368" x2="1.328" y2="4.4" layer="21"/>
<rectangle x1="2.096" y1="4.368" x2="2.16" y2="4.4" layer="21"/>
<rectangle x1="3.984" y1="4.368" x2="4.848" y2="4.4" layer="21"/>
<rectangle x1="5.584" y1="4.368" x2="6.448" y2="4.4" layer="21"/>
<rectangle x1="8.272" y1="4.368" x2="9.136" y2="4.4" layer="21"/>
<rectangle x1="9.584" y1="4.368" x2="10.192" y2="4.4" layer="21"/>
<rectangle x1="0.24" y1="4.4" x2="0.848" y2="4.432" layer="21"/>
<rectangle x1="1.296" y1="4.4" x2="1.328" y2="4.432" layer="21"/>
<rectangle x1="2.096" y1="4.4" x2="2.16" y2="4.432" layer="21"/>
<rectangle x1="3.984" y1="4.4" x2="4.848" y2="4.432" layer="21"/>
<rectangle x1="5.584" y1="4.4" x2="6.448" y2="4.432" layer="21"/>
<rectangle x1="8.272" y1="4.4" x2="9.136" y2="4.432" layer="21"/>
<rectangle x1="9.584" y1="4.4" x2="10.192" y2="4.432" layer="21"/>
<rectangle x1="0.24" y1="4.432" x2="0.848" y2="4.464" layer="21"/>
<rectangle x1="1.296" y1="4.432" x2="1.328" y2="4.464" layer="21"/>
<rectangle x1="2.096" y1="4.432" x2="2.16" y2="4.464" layer="21"/>
<rectangle x1="3.984" y1="4.432" x2="4.848" y2="4.464" layer="21"/>
<rectangle x1="5.584" y1="4.432" x2="6.448" y2="4.464" layer="21"/>
<rectangle x1="8.272" y1="4.432" x2="9.136" y2="4.464" layer="21"/>
<rectangle x1="9.584" y1="4.432" x2="10.192" y2="4.464" layer="21"/>
<rectangle x1="0.24" y1="4.464" x2="0.848" y2="4.496" layer="21"/>
<rectangle x1="1.296" y1="4.464" x2="1.328" y2="4.496" layer="21"/>
<rectangle x1="2.096" y1="4.464" x2="2.16" y2="4.496" layer="21"/>
<rectangle x1="3.984" y1="4.464" x2="4.848" y2="4.496" layer="21"/>
<rectangle x1="5.584" y1="4.464" x2="6.448" y2="4.496" layer="21"/>
<rectangle x1="8.272" y1="4.464" x2="9.136" y2="4.496" layer="21"/>
<rectangle x1="9.584" y1="4.464" x2="10.192" y2="4.496" layer="21"/>
<rectangle x1="0.24" y1="4.496" x2="0.848" y2="4.528" layer="21"/>
<rectangle x1="1.296" y1="4.496" x2="1.328" y2="4.528" layer="21"/>
<rectangle x1="2.096" y1="4.496" x2="2.16" y2="4.528" layer="21"/>
<rectangle x1="3.984" y1="4.496" x2="4.848" y2="4.528" layer="21"/>
<rectangle x1="5.584" y1="4.496" x2="6.448" y2="4.528" layer="21"/>
<rectangle x1="8.272" y1="4.496" x2="9.136" y2="4.528" layer="21"/>
<rectangle x1="9.584" y1="4.496" x2="10.192" y2="4.528" layer="21"/>
<rectangle x1="0.24" y1="4.528" x2="0.848" y2="4.56" layer="21"/>
<rectangle x1="1.296" y1="4.528" x2="1.328" y2="4.56" layer="21"/>
<rectangle x1="2.096" y1="4.528" x2="2.16" y2="4.56" layer="21"/>
<rectangle x1="3.984" y1="4.528" x2="4.848" y2="4.56" layer="21"/>
<rectangle x1="5.584" y1="4.528" x2="6.448" y2="4.56" layer="21"/>
<rectangle x1="8.272" y1="4.528" x2="9.136" y2="4.56" layer="21"/>
<rectangle x1="9.584" y1="4.528" x2="10.192" y2="4.56" layer="21"/>
<rectangle x1="0.24" y1="4.56" x2="0.848" y2="4.592" layer="21"/>
<rectangle x1="1.296" y1="4.56" x2="1.328" y2="4.592" layer="21"/>
<rectangle x1="2.096" y1="4.56" x2="2.16" y2="4.592" layer="21"/>
<rectangle x1="3.984" y1="4.56" x2="4.848" y2="4.592" layer="21"/>
<rectangle x1="5.584" y1="4.56" x2="6.448" y2="4.592" layer="21"/>
<rectangle x1="8.272" y1="4.56" x2="9.136" y2="4.592" layer="21"/>
<rectangle x1="9.584" y1="4.56" x2="10.192" y2="4.592" layer="21"/>
<rectangle x1="0.24" y1="4.592" x2="0.848" y2="4.624" layer="21"/>
<rectangle x1="1.296" y1="4.592" x2="1.328" y2="4.624" layer="21"/>
<rectangle x1="2.096" y1="4.592" x2="2.16" y2="4.624" layer="21"/>
<rectangle x1="3.984" y1="4.592" x2="4.848" y2="4.624" layer="21"/>
<rectangle x1="5.584" y1="4.592" x2="6.448" y2="4.624" layer="21"/>
<rectangle x1="8.272" y1="4.592" x2="9.136" y2="4.624" layer="21"/>
<rectangle x1="9.584" y1="4.592" x2="10.192" y2="4.624" layer="21"/>
<rectangle x1="0.24" y1="4.624" x2="0.848" y2="4.656" layer="21"/>
<rectangle x1="1.296" y1="4.624" x2="1.328" y2="4.656" layer="21"/>
<rectangle x1="2.096" y1="4.624" x2="2.16" y2="4.656" layer="21"/>
<rectangle x1="3.984" y1="4.624" x2="4.848" y2="4.656" layer="21"/>
<rectangle x1="5.584" y1="4.624" x2="6.448" y2="4.656" layer="21"/>
<rectangle x1="8.272" y1="4.624" x2="9.136" y2="4.656" layer="21"/>
<rectangle x1="9.584" y1="4.624" x2="10.192" y2="4.656" layer="21"/>
<rectangle x1="0.24" y1="4.656" x2="0.848" y2="4.688" layer="21"/>
<rectangle x1="1.296" y1="4.656" x2="1.328" y2="4.688" layer="21"/>
<rectangle x1="2.096" y1="4.656" x2="2.16" y2="4.688" layer="21"/>
<rectangle x1="3.984" y1="4.656" x2="4.848" y2="4.688" layer="21"/>
<rectangle x1="5.584" y1="4.656" x2="6.448" y2="4.688" layer="21"/>
<rectangle x1="8.272" y1="4.656" x2="9.136" y2="4.688" layer="21"/>
<rectangle x1="9.584" y1="4.656" x2="10.192" y2="4.688" layer="21"/>
<rectangle x1="-0.016" y1="4.688" x2="1.072" y2="4.72" layer="21"/>
<rectangle x1="1.296" y1="4.688" x2="1.36" y2="4.72" layer="21"/>
<rectangle x1="2.096" y1="4.688" x2="2.16" y2="4.72" layer="21"/>
<rectangle x1="3.984" y1="4.688" x2="4.848" y2="4.72" layer="21"/>
<rectangle x1="5.584" y1="4.688" x2="6.448" y2="4.72" layer="21"/>
<rectangle x1="8.272" y1="4.688" x2="9.136" y2="4.72" layer="21"/>
<rectangle x1="9.584" y1="4.688" x2="10.192" y2="4.72" layer="21"/>
<rectangle x1="-0.016" y1="4.72" x2="1.072" y2="4.752" layer="21"/>
<rectangle x1="1.296" y1="4.72" x2="1.328" y2="4.752" layer="21"/>
<rectangle x1="2.096" y1="4.72" x2="2.16" y2="4.752" layer="21"/>
<rectangle x1="3.984" y1="4.72" x2="4.848" y2="4.752" layer="21"/>
<rectangle x1="5.584" y1="4.72" x2="6.448" y2="4.752" layer="21"/>
<rectangle x1="8.272" y1="4.72" x2="9.136" y2="4.752" layer="21"/>
<rectangle x1="9.584" y1="4.72" x2="10.192" y2="4.752" layer="21"/>
<rectangle x1="-0.016" y1="4.752" x2="1.072" y2="4.784" layer="21"/>
<rectangle x1="1.296" y1="4.752" x2="1.328" y2="4.784" layer="21"/>
<rectangle x1="2.096" y1="4.752" x2="2.16" y2="4.784" layer="21"/>
<rectangle x1="3.984" y1="4.752" x2="4.848" y2="4.784" layer="21"/>
<rectangle x1="5.584" y1="4.752" x2="6.448" y2="4.784" layer="21"/>
<rectangle x1="8.272" y1="4.752" x2="9.136" y2="4.784" layer="21"/>
<rectangle x1="9.584" y1="4.752" x2="10.192" y2="4.784" layer="21"/>
<rectangle x1="0.016" y1="4.784" x2="1.04" y2="4.816" layer="21"/>
<rectangle x1="1.296" y1="4.784" x2="1.36" y2="4.816" layer="21"/>
<rectangle x1="2.096" y1="4.784" x2="2.16" y2="4.816" layer="21"/>
<rectangle x1="3.984" y1="4.784" x2="4.848" y2="4.816" layer="21"/>
<rectangle x1="5.584" y1="4.784" x2="6.448" y2="4.816" layer="21"/>
<rectangle x1="8.272" y1="4.784" x2="9.136" y2="4.816" layer="21"/>
<rectangle x1="9.584" y1="4.784" x2="10.192" y2="4.816" layer="21"/>
<rectangle x1="0.016" y1="4.816" x2="1.008" y2="4.848" layer="21"/>
<rectangle x1="1.296" y1="4.816" x2="1.36" y2="4.848" layer="21"/>
<rectangle x1="2.096" y1="4.816" x2="2.16" y2="4.848" layer="21"/>
<rectangle x1="3.984" y1="4.816" x2="4.848" y2="4.848" layer="21"/>
<rectangle x1="5.584" y1="4.816" x2="6.448" y2="4.848" layer="21"/>
<rectangle x1="8.272" y1="4.816" x2="9.136" y2="4.848" layer="21"/>
<rectangle x1="9.584" y1="4.816" x2="10.192" y2="4.848" layer="21"/>
<rectangle x1="0.048" y1="4.848" x2="1.008" y2="4.88" layer="21"/>
<rectangle x1="1.296" y1="4.848" x2="1.36" y2="4.88" layer="21"/>
<rectangle x1="2.096" y1="4.848" x2="2.16" y2="4.88" layer="21"/>
<rectangle x1="3.984" y1="4.848" x2="4.848" y2="4.88" layer="21"/>
<rectangle x1="5.584" y1="4.848" x2="6.448" y2="4.88" layer="21"/>
<rectangle x1="8.272" y1="4.848" x2="9.136" y2="4.88" layer="21"/>
<rectangle x1="9.584" y1="4.848" x2="10.192" y2="4.88" layer="21"/>
<rectangle x1="0.048" y1="4.88" x2="0.976" y2="4.912" layer="21"/>
<rectangle x1="1.296" y1="4.88" x2="1.36" y2="4.912" layer="21"/>
<rectangle x1="2.096" y1="4.88" x2="2.16" y2="4.912" layer="21"/>
<rectangle x1="3.984" y1="4.88" x2="4.848" y2="4.912" layer="21"/>
<rectangle x1="5.584" y1="4.88" x2="6.448" y2="4.912" layer="21"/>
<rectangle x1="8.272" y1="4.88" x2="9.136" y2="4.912" layer="21"/>
<rectangle x1="9.584" y1="4.88" x2="10.192" y2="4.912" layer="21"/>
<rectangle x1="0.08" y1="4.912" x2="0.976" y2="4.944" layer="21"/>
<rectangle x1="1.296" y1="4.912" x2="1.36" y2="4.944" layer="21"/>
<rectangle x1="2.096" y1="4.912" x2="2.16" y2="4.944" layer="21"/>
<rectangle x1="3.984" y1="4.912" x2="4.848" y2="4.944" layer="21"/>
<rectangle x1="5.584" y1="4.912" x2="6.448" y2="4.944" layer="21"/>
<rectangle x1="8.272" y1="4.912" x2="9.136" y2="4.944" layer="21"/>
<rectangle x1="9.584" y1="4.912" x2="10.192" y2="4.944" layer="21"/>
<rectangle x1="0.08" y1="4.944" x2="0.944" y2="4.976" layer="21"/>
<rectangle x1="1.296" y1="4.944" x2="1.36" y2="4.976" layer="21"/>
<rectangle x1="2.096" y1="4.944" x2="2.16" y2="4.976" layer="21"/>
<rectangle x1="3.984" y1="4.944" x2="4.848" y2="4.976" layer="21"/>
<rectangle x1="5.584" y1="4.944" x2="6.448" y2="4.976" layer="21"/>
<rectangle x1="8.272" y1="4.944" x2="9.136" y2="4.976" layer="21"/>
<rectangle x1="9.584" y1="4.944" x2="10.192" y2="4.976" layer="21"/>
<rectangle x1="0.112" y1="4.976" x2="0.944" y2="5.008" layer="21"/>
<rectangle x1="1.296" y1="4.976" x2="1.36" y2="5.008" layer="21"/>
<rectangle x1="2.096" y1="4.976" x2="2.16" y2="5.008" layer="21"/>
<rectangle x1="3.984" y1="4.976" x2="4.848" y2="5.008" layer="21"/>
<rectangle x1="5.584" y1="4.976" x2="6.448" y2="5.008" layer="21"/>
<rectangle x1="8.272" y1="4.976" x2="9.136" y2="5.008" layer="21"/>
<rectangle x1="9.584" y1="4.976" x2="10.192" y2="5.008" layer="21"/>
<rectangle x1="0.112" y1="5.008" x2="0.912" y2="5.04" layer="21"/>
<rectangle x1="1.296" y1="5.008" x2="1.36" y2="5.04" layer="21"/>
<rectangle x1="2.096" y1="5.008" x2="2.16" y2="5.04" layer="21"/>
<rectangle x1="3.984" y1="5.008" x2="4.848" y2="5.04" layer="21"/>
<rectangle x1="5.584" y1="5.008" x2="6.448" y2="5.04" layer="21"/>
<rectangle x1="8.272" y1="5.008" x2="9.136" y2="5.04" layer="21"/>
<rectangle x1="9.584" y1="5.008" x2="10.192" y2="5.04" layer="21"/>
<rectangle x1="0.144" y1="5.04" x2="0.912" y2="5.072" layer="21"/>
<rectangle x1="1.296" y1="5.04" x2="1.36" y2="5.072" layer="21"/>
<rectangle x1="2.096" y1="5.04" x2="2.16" y2="5.072" layer="21"/>
<rectangle x1="3.984" y1="5.04" x2="4.848" y2="5.072" layer="21"/>
<rectangle x1="5.584" y1="5.04" x2="6.448" y2="5.072" layer="21"/>
<rectangle x1="8.272" y1="5.04" x2="9.136" y2="5.072" layer="21"/>
<rectangle x1="9.584" y1="5.04" x2="10.192" y2="5.072" layer="21"/>
<rectangle x1="0.144" y1="5.072" x2="0.88" y2="5.104" layer="21"/>
<rectangle x1="1.296" y1="5.072" x2="1.36" y2="5.104" layer="21"/>
<rectangle x1="2.096" y1="5.072" x2="2.16" y2="5.104" layer="21"/>
<rectangle x1="3.984" y1="5.072" x2="4.848" y2="5.104" layer="21"/>
<rectangle x1="5.584" y1="5.072" x2="6.448" y2="5.104" layer="21"/>
<rectangle x1="8.272" y1="5.072" x2="9.136" y2="5.104" layer="21"/>
<rectangle x1="9.584" y1="5.072" x2="10.192" y2="5.104" layer="21"/>
<rectangle x1="0.176" y1="5.104" x2="0.848" y2="5.136" layer="21"/>
<rectangle x1="1.296" y1="5.104" x2="1.36" y2="5.136" layer="21"/>
<rectangle x1="2.096" y1="5.104" x2="2.16" y2="5.136" layer="21"/>
<rectangle x1="3.984" y1="5.104" x2="4.848" y2="5.136" layer="21"/>
<rectangle x1="5.584" y1="5.104" x2="6.448" y2="5.136" layer="21"/>
<rectangle x1="8.272" y1="5.104" x2="9.136" y2="5.136" layer="21"/>
<rectangle x1="9.584" y1="5.104" x2="10.192" y2="5.136" layer="21"/>
<rectangle x1="0.176" y1="5.136" x2="0.848" y2="5.168" layer="21"/>
<rectangle x1="1.296" y1="5.136" x2="1.36" y2="5.168" layer="21"/>
<rectangle x1="2.096" y1="5.136" x2="2.16" y2="5.168" layer="21"/>
<rectangle x1="3.984" y1="5.136" x2="4.848" y2="5.168" layer="21"/>
<rectangle x1="5.584" y1="5.136" x2="6.448" y2="5.168" layer="21"/>
<rectangle x1="8.272" y1="5.136" x2="9.136" y2="5.168" layer="21"/>
<rectangle x1="9.584" y1="5.136" x2="10.192" y2="5.168" layer="21"/>
<rectangle x1="0.208" y1="5.168" x2="0.816" y2="5.2" layer="21"/>
<rectangle x1="1.296" y1="5.168" x2="1.36" y2="5.2" layer="21"/>
<rectangle x1="2.096" y1="5.168" x2="2.16" y2="5.2" layer="21"/>
<rectangle x1="3.984" y1="5.168" x2="4.848" y2="5.2" layer="21"/>
<rectangle x1="5.584" y1="5.168" x2="6.448" y2="5.2" layer="21"/>
<rectangle x1="8.272" y1="5.168" x2="9.136" y2="5.2" layer="21"/>
<rectangle x1="9.584" y1="5.168" x2="10.192" y2="5.2" layer="21"/>
<rectangle x1="0.24" y1="5.2" x2="0.816" y2="5.232" layer="21"/>
<rectangle x1="1.296" y1="5.2" x2="1.36" y2="5.232" layer="21"/>
<rectangle x1="2.096" y1="5.2" x2="2.16" y2="5.232" layer="21"/>
<rectangle x1="3.984" y1="5.2" x2="4.848" y2="5.232" layer="21"/>
<rectangle x1="5.584" y1="5.2" x2="6.448" y2="5.232" layer="21"/>
<rectangle x1="8.272" y1="5.2" x2="9.136" y2="5.232" layer="21"/>
<rectangle x1="9.584" y1="5.2" x2="10.192" y2="5.232" layer="21"/>
<rectangle x1="0.24" y1="5.232" x2="0.784" y2="5.264" layer="21"/>
<rectangle x1="1.296" y1="5.232" x2="1.36" y2="5.264" layer="21"/>
<rectangle x1="2.064" y1="5.232" x2="4.848" y2="5.264" layer="21"/>
<rectangle x1="5.584" y1="5.232" x2="9.136" y2="5.264" layer="21"/>
<rectangle x1="9.584" y1="5.232" x2="10.192" y2="5.264" layer="21"/>
<rectangle x1="0.272" y1="5.264" x2="0.784" y2="5.296" layer="21"/>
<rectangle x1="1.296" y1="5.264" x2="1.392" y2="5.296" layer="21"/>
<rectangle x1="2.032" y1="5.264" x2="4.816" y2="5.296" layer="21"/>
<rectangle x1="5.584" y1="5.264" x2="6.416" y2="5.296" layer="21"/>
<rectangle x1="8.272" y1="5.264" x2="9.104" y2="5.296" layer="21"/>
<rectangle x1="0.272" y1="5.296" x2="0.752" y2="5.328" layer="21"/>
<rectangle x1="1.328" y1="5.296" x2="1.424" y2="5.328" layer="21"/>
<rectangle x1="2" y1="5.296" x2="4.784" y2="5.328" layer="21"/>
<rectangle x1="5.616" y1="5.296" x2="6.384" y2="5.328" layer="21"/>
<rectangle x1="8.304" y1="5.296" x2="9.072" y2="5.328" layer="21"/>
<rectangle x1="0.304" y1="5.328" x2="0.752" y2="5.36" layer="21"/>
<rectangle x1="1.36" y1="5.328" x2="1.456" y2="5.36" layer="21"/>
<rectangle x1="1.968" y1="5.328" x2="4.752" y2="5.36" layer="21"/>
<rectangle x1="5.648" y1="5.328" x2="6.352" y2="5.36" layer="21"/>
<rectangle x1="8.336" y1="5.328" x2="9.04" y2="5.36" layer="21"/>
<rectangle x1="0.304" y1="5.36" x2="0.72" y2="5.392" layer="21"/>
<rectangle x1="1.392" y1="5.36" x2="1.488" y2="5.392" layer="21"/>
<rectangle x1="1.936" y1="5.36" x2="4.72" y2="5.392" layer="21"/>
<rectangle x1="5.68" y1="5.36" x2="6.32" y2="5.392" layer="21"/>
<rectangle x1="8.368" y1="5.36" x2="9.008" y2="5.392" layer="21"/>
<rectangle x1="0.336" y1="5.392" x2="0.688" y2="5.424" layer="21"/>
<rectangle x1="1.424" y1="5.392" x2="1.52" y2="5.424" layer="21"/>
<rectangle x1="1.904" y1="5.392" x2="4.688" y2="5.424" layer="21"/>
<rectangle x1="5.712" y1="5.392" x2="6.288" y2="5.424" layer="21"/>
<rectangle x1="8.4" y1="5.392" x2="8.976" y2="5.424" layer="21"/>
<rectangle x1="0.336" y1="5.424" x2="0.688" y2="5.456" layer="21"/>
<rectangle x1="1.456" y1="5.424" x2="1.552" y2="5.456" layer="21"/>
<rectangle x1="1.872" y1="5.424" x2="4.656" y2="5.456" layer="21"/>
<rectangle x1="5.744" y1="5.424" x2="6.256" y2="5.456" layer="21"/>
<rectangle x1="8.432" y1="5.424" x2="8.944" y2="5.456" layer="21"/>
<rectangle x1="0.368" y1="5.456" x2="0.656" y2="5.488" layer="21"/>
<rectangle x1="1.488" y1="5.456" x2="1.584" y2="5.488" layer="21"/>
<rectangle x1="1.84" y1="5.456" x2="4.624" y2="5.488" layer="21"/>
<rectangle x1="5.776" y1="5.456" x2="6.224" y2="5.488" layer="21"/>
<rectangle x1="8.464" y1="5.456" x2="8.912" y2="5.488" layer="21"/>
<rectangle x1="0.4" y1="5.488" x2="0.656" y2="5.52" layer="21"/>
<rectangle x1="1.52" y1="5.488" x2="1.616" y2="5.52" layer="21"/>
<rectangle x1="1.808" y1="5.488" x2="4.592" y2="5.52" layer="21"/>
<rectangle x1="5.808" y1="5.488" x2="6.192" y2="5.52" layer="21"/>
<rectangle x1="8.496" y1="5.488" x2="8.88" y2="5.52" layer="21"/>
<rectangle x1="0.4" y1="5.52" x2="0.624" y2="5.552" layer="21"/>
<rectangle x1="1.552" y1="5.52" x2="1.648" y2="5.552" layer="21"/>
<rectangle x1="1.776" y1="5.52" x2="4.56" y2="5.552" layer="21"/>
<rectangle x1="5.84" y1="5.52" x2="6.16" y2="5.552" layer="21"/>
<rectangle x1="8.528" y1="5.52" x2="8.848" y2="5.552" layer="21"/>
<rectangle x1="0.432" y1="5.552" x2="0.592" y2="5.584" layer="21"/>
<rectangle x1="1.584" y1="5.552" x2="1.68" y2="5.584" layer="21"/>
<rectangle x1="1.744" y1="5.552" x2="4.528" y2="5.584" layer="21"/>
<rectangle x1="5.872" y1="5.552" x2="6.128" y2="5.584" layer="21"/>
<rectangle x1="8.56" y1="5.552" x2="8.816" y2="5.584" layer="21"/>
<rectangle x1="0.432" y1="5.584" x2="0.592" y2="5.616" layer="21"/>
<rectangle x1="1.616" y1="5.584" x2="4.496" y2="5.616" layer="21"/>
<rectangle x1="5.904" y1="5.584" x2="6.096" y2="5.616" layer="21"/>
<rectangle x1="8.592" y1="5.584" x2="8.784" y2="5.616" layer="21"/>
<rectangle x1="0.464" y1="5.616" x2="0.56" y2="5.648" layer="21"/>
<rectangle x1="1.648" y1="5.616" x2="4.464" y2="5.648" layer="21"/>
<rectangle x1="5.936" y1="5.616" x2="6.064" y2="5.648" layer="21"/>
<rectangle x1="8.624" y1="5.616" x2="8.752" y2="5.648" layer="21"/>
<rectangle x1="9.872" y1="5.616" x2="9.936" y2="5.648" layer="21"/>
<rectangle x1="1.648" y1="5.648" x2="4.464" y2="5.68" layer="21"/>
<rectangle x1="5.936" y1="5.648" x2="6.064" y2="5.68" layer="21"/>
<rectangle x1="8.592" y1="5.648" x2="8.752" y2="5.68" layer="21"/>
<rectangle x1="9.84" y1="5.648" x2="9.936" y2="5.68" layer="21"/>
<rectangle x1="1.616" y1="5.68" x2="4.496" y2="5.712" layer="21"/>
<rectangle x1="5.904" y1="5.68" x2="6.096" y2="5.712" layer="21"/>
<rectangle x1="8.56" y1="5.68" x2="8.784" y2="5.712" layer="21"/>
<rectangle x1="9.84" y1="5.68" x2="9.968" y2="5.712" layer="21"/>
<rectangle x1="1.584" y1="5.712" x2="1.68" y2="5.744" layer="21"/>
<rectangle x1="1.744" y1="5.712" x2="4.528" y2="5.744" layer="21"/>
<rectangle x1="5.872" y1="5.712" x2="6.128" y2="5.744" layer="21"/>
<rectangle x1="8.528" y1="5.712" x2="8.816" y2="5.744" layer="21"/>
<rectangle x1="9.808" y1="5.712" x2="9.968" y2="5.744" layer="21"/>
<rectangle x1="1.552" y1="5.744" x2="1.648" y2="5.776" layer="21"/>
<rectangle x1="1.776" y1="5.744" x2="4.56" y2="5.776" layer="21"/>
<rectangle x1="5.84" y1="5.744" x2="6.16" y2="5.776" layer="21"/>
<rectangle x1="8.496" y1="5.744" x2="8.848" y2="5.776" layer="21"/>
<rectangle x1="9.776" y1="5.744" x2="10" y2="5.776" layer="21"/>
<rectangle x1="1.52" y1="5.776" x2="1.616" y2="5.808" layer="21"/>
<rectangle x1="1.808" y1="5.776" x2="4.592" y2="5.808" layer="21"/>
<rectangle x1="5.808" y1="5.776" x2="6.192" y2="5.808" layer="21"/>
<rectangle x1="8.464" y1="5.776" x2="8.88" y2="5.808" layer="21"/>
<rectangle x1="9.776" y1="5.776" x2="10" y2="5.808" layer="21"/>
<rectangle x1="1.488" y1="5.808" x2="1.584" y2="5.84" layer="21"/>
<rectangle x1="1.84" y1="5.808" x2="4.624" y2="5.84" layer="21"/>
<rectangle x1="5.776" y1="5.808" x2="6.224" y2="5.84" layer="21"/>
<rectangle x1="8.432" y1="5.808" x2="8.912" y2="5.84" layer="21"/>
<rectangle x1="9.744" y1="5.808" x2="10.032" y2="5.84" layer="21"/>
<rectangle x1="1.456" y1="5.84" x2="1.552" y2="5.872" layer="21"/>
<rectangle x1="1.872" y1="5.84" x2="4.656" y2="5.872" layer="21"/>
<rectangle x1="5.744" y1="5.84" x2="6.256" y2="5.872" layer="21"/>
<rectangle x1="8.4" y1="5.84" x2="8.944" y2="5.872" layer="21"/>
<rectangle x1="9.712" y1="5.84" x2="10.064" y2="5.872" layer="21"/>
<rectangle x1="1.424" y1="5.872" x2="1.52" y2="5.904" layer="21"/>
<rectangle x1="1.904" y1="5.872" x2="4.688" y2="5.904" layer="21"/>
<rectangle x1="5.712" y1="5.872" x2="6.288" y2="5.904" layer="21"/>
<rectangle x1="8.368" y1="5.872" x2="8.976" y2="5.904" layer="21"/>
<rectangle x1="9.712" y1="5.872" x2="10.064" y2="5.904" layer="21"/>
<rectangle x1="1.392" y1="5.904" x2="1.488" y2="5.936" layer="21"/>
<rectangle x1="1.936" y1="5.904" x2="4.72" y2="5.936" layer="21"/>
<rectangle x1="5.68" y1="5.904" x2="6.32" y2="5.936" layer="21"/>
<rectangle x1="8.368" y1="5.904" x2="9.008" y2="5.936" layer="21"/>
<rectangle x1="9.68" y1="5.904" x2="10.096" y2="5.936" layer="21"/>
<rectangle x1="1.36" y1="5.936" x2="1.456" y2="5.968" layer="21"/>
<rectangle x1="1.968" y1="5.936" x2="4.752" y2="5.968" layer="21"/>
<rectangle x1="5.648" y1="5.936" x2="6.352" y2="5.968" layer="21"/>
<rectangle x1="8.336" y1="5.936" x2="9.04" y2="5.968" layer="21"/>
<rectangle x1="9.68" y1="5.936" x2="10.096" y2="5.968" layer="21"/>
<rectangle x1="1.328" y1="5.968" x2="1.424" y2="6" layer="21"/>
<rectangle x1="2" y1="5.968" x2="4.784" y2="6" layer="21"/>
<rectangle x1="5.616" y1="5.968" x2="6.384" y2="6" layer="21"/>
<rectangle x1="8.304" y1="5.968" x2="9.072" y2="6" layer="21"/>
<rectangle x1="9.648" y1="5.968" x2="10.128" y2="6" layer="21"/>
<rectangle x1="1.296" y1="6" x2="1.392" y2="6.032" layer="21"/>
<rectangle x1="2.032" y1="6" x2="4.816" y2="6.032" layer="21"/>
<rectangle x1="5.584" y1="6" x2="6.416" y2="6.032" layer="21"/>
<rectangle x1="8.272" y1="6" x2="9.104" y2="6.032" layer="21"/>
<rectangle x1="9.616" y1="6" x2="10.128" y2="6.032" layer="21"/>
<rectangle x1="0.24" y1="6.032" x2="0.848" y2="6.064" layer="21"/>
<rectangle x1="1.296" y1="6.032" x2="1.36" y2="6.064" layer="21"/>
<rectangle x1="2.064" y1="6.032" x2="4.848" y2="6.064" layer="21"/>
<rectangle x1="5.584" y1="6.032" x2="9.136" y2="6.064" layer="21"/>
<rectangle x1="9.616" y1="6.032" x2="10.16" y2="6.064" layer="21"/>
<rectangle x1="0.24" y1="6.064" x2="0.848" y2="6.096" layer="21"/>
<rectangle x1="1.296" y1="6.064" x2="1.36" y2="6.096" layer="21"/>
<rectangle x1="2.096" y1="6.064" x2="2.16" y2="6.096" layer="21"/>
<rectangle x1="3.984" y1="6.064" x2="4.848" y2="6.096" layer="21"/>
<rectangle x1="5.584" y1="6.064" x2="6.448" y2="6.096" layer="21"/>
<rectangle x1="8.272" y1="6.064" x2="9.136" y2="6.096" layer="21"/>
<rectangle x1="9.584" y1="6.064" x2="10.192" y2="6.096" layer="21"/>
<rectangle x1="0.24" y1="6.096" x2="0.848" y2="6.128" layer="21"/>
<rectangle x1="1.296" y1="6.096" x2="1.36" y2="6.128" layer="21"/>
<rectangle x1="2.096" y1="6.096" x2="2.16" y2="6.128" layer="21"/>
<rectangle x1="3.984" y1="6.096" x2="4.848" y2="6.128" layer="21"/>
<rectangle x1="5.584" y1="6.096" x2="6.448" y2="6.128" layer="21"/>
<rectangle x1="8.272" y1="6.096" x2="9.136" y2="6.128" layer="21"/>
<rectangle x1="9.584" y1="6.096" x2="10.192" y2="6.128" layer="21"/>
<rectangle x1="0.24" y1="6.128" x2="0.848" y2="6.16" layer="21"/>
<rectangle x1="1.296" y1="6.128" x2="1.36" y2="6.16" layer="21"/>
<rectangle x1="2.096" y1="6.128" x2="2.16" y2="6.16" layer="21"/>
<rectangle x1="3.984" y1="6.128" x2="4.848" y2="6.16" layer="21"/>
<rectangle x1="5.584" y1="6.128" x2="6.448" y2="6.16" layer="21"/>
<rectangle x1="8.272" y1="6.128" x2="9.136" y2="6.16" layer="21"/>
<rectangle x1="9.552" y1="6.128" x2="10.224" y2="6.16" layer="21"/>
<rectangle x1="0.24" y1="6.16" x2="0.848" y2="6.192" layer="21"/>
<rectangle x1="1.296" y1="6.16" x2="1.36" y2="6.192" layer="21"/>
<rectangle x1="2.096" y1="6.16" x2="2.16" y2="6.192" layer="21"/>
<rectangle x1="3.984" y1="6.16" x2="4.848" y2="6.192" layer="21"/>
<rectangle x1="5.584" y1="6.16" x2="6.448" y2="6.192" layer="21"/>
<rectangle x1="8.272" y1="6.16" x2="9.136" y2="6.192" layer="21"/>
<rectangle x1="9.52" y1="6.16" x2="10.224" y2="6.192" layer="21"/>
<rectangle x1="0.24" y1="6.192" x2="0.848" y2="6.224" layer="21"/>
<rectangle x1="1.296" y1="6.192" x2="1.36" y2="6.224" layer="21"/>
<rectangle x1="2.096" y1="6.192" x2="2.16" y2="6.224" layer="21"/>
<rectangle x1="3.984" y1="6.192" x2="4.848" y2="6.224" layer="21"/>
<rectangle x1="5.584" y1="6.192" x2="6.448" y2="6.224" layer="21"/>
<rectangle x1="8.272" y1="6.192" x2="9.136" y2="6.224" layer="21"/>
<rectangle x1="9.52" y1="6.192" x2="10.256" y2="6.224" layer="21"/>
<rectangle x1="0.24" y1="6.224" x2="0.848" y2="6.256" layer="21"/>
<rectangle x1="1.296" y1="6.224" x2="1.36" y2="6.256" layer="21"/>
<rectangle x1="2.096" y1="6.224" x2="2.16" y2="6.256" layer="21"/>
<rectangle x1="3.984" y1="6.224" x2="4.848" y2="6.256" layer="21"/>
<rectangle x1="5.584" y1="6.224" x2="6.448" y2="6.256" layer="21"/>
<rectangle x1="8.272" y1="6.224" x2="9.136" y2="6.256" layer="21"/>
<rectangle x1="9.488" y1="6.224" x2="10.256" y2="6.256" layer="21"/>
<rectangle x1="0.24" y1="6.256" x2="0.848" y2="6.288" layer="21"/>
<rectangle x1="1.296" y1="6.256" x2="1.36" y2="6.288" layer="21"/>
<rectangle x1="2.096" y1="6.256" x2="2.16" y2="6.288" layer="21"/>
<rectangle x1="3.984" y1="6.256" x2="4.848" y2="6.288" layer="21"/>
<rectangle x1="5.584" y1="6.256" x2="6.448" y2="6.288" layer="21"/>
<rectangle x1="8.272" y1="6.256" x2="9.136" y2="6.288" layer="21"/>
<rectangle x1="9.488" y1="6.256" x2="10.288" y2="6.288" layer="21"/>
<rectangle x1="0.24" y1="6.288" x2="0.848" y2="6.32" layer="21"/>
<rectangle x1="1.296" y1="6.288" x2="1.36" y2="6.32" layer="21"/>
<rectangle x1="2.096" y1="6.288" x2="2.16" y2="6.32" layer="21"/>
<rectangle x1="3.984" y1="6.288" x2="4.848" y2="6.32" layer="21"/>
<rectangle x1="5.584" y1="6.288" x2="6.448" y2="6.32" layer="21"/>
<rectangle x1="8.272" y1="6.288" x2="9.136" y2="6.32" layer="21"/>
<rectangle x1="9.456" y1="6.288" x2="10.32" y2="6.32" layer="21"/>
<rectangle x1="0.24" y1="6.32" x2="0.848" y2="6.352" layer="21"/>
<rectangle x1="1.296" y1="6.32" x2="1.36" y2="6.352" layer="21"/>
<rectangle x1="2.096" y1="6.32" x2="2.16" y2="6.352" layer="21"/>
<rectangle x1="3.984" y1="6.32" x2="4.848" y2="6.352" layer="21"/>
<rectangle x1="5.584" y1="6.32" x2="6.448" y2="6.352" layer="21"/>
<rectangle x1="8.272" y1="6.32" x2="9.136" y2="6.352" layer="21"/>
<rectangle x1="9.456" y1="6.32" x2="10.32" y2="6.352" layer="21"/>
<rectangle x1="0.24" y1="6.352" x2="0.848" y2="6.384" layer="21"/>
<rectangle x1="1.296" y1="6.352" x2="1.36" y2="6.384" layer="21"/>
<rectangle x1="2.096" y1="6.352" x2="2.16" y2="6.384" layer="21"/>
<rectangle x1="3.984" y1="6.352" x2="4.848" y2="6.384" layer="21"/>
<rectangle x1="5.584" y1="6.352" x2="6.448" y2="6.384" layer="21"/>
<rectangle x1="8.272" y1="6.352" x2="9.136" y2="6.384" layer="21"/>
<rectangle x1="9.424" y1="6.352" x2="10.352" y2="6.384" layer="21"/>
<rectangle x1="0.24" y1="6.384" x2="0.848" y2="6.416" layer="21"/>
<rectangle x1="1.296" y1="6.384" x2="1.36" y2="6.416" layer="21"/>
<rectangle x1="2.096" y1="6.384" x2="2.16" y2="6.416" layer="21"/>
<rectangle x1="3.984" y1="6.384" x2="4.848" y2="6.416" layer="21"/>
<rectangle x1="5.584" y1="6.384" x2="6.448" y2="6.416" layer="21"/>
<rectangle x1="8.272" y1="6.384" x2="9.136" y2="6.416" layer="21"/>
<rectangle x1="9.424" y1="6.384" x2="10.352" y2="6.416" layer="21"/>
<rectangle x1="0.24" y1="6.416" x2="0.848" y2="6.448" layer="21"/>
<rectangle x1="1.296" y1="6.416" x2="1.36" y2="6.448" layer="21"/>
<rectangle x1="2.096" y1="6.416" x2="2.16" y2="6.448" layer="21"/>
<rectangle x1="3.984" y1="6.416" x2="4.848" y2="6.448" layer="21"/>
<rectangle x1="5.584" y1="6.416" x2="6.448" y2="6.448" layer="21"/>
<rectangle x1="8.272" y1="6.416" x2="9.136" y2="6.448" layer="21"/>
<rectangle x1="9.392" y1="6.416" x2="10.384" y2="6.448" layer="21"/>
<rectangle x1="0.24" y1="6.448" x2="0.848" y2="6.48" layer="21"/>
<rectangle x1="1.296" y1="6.448" x2="1.36" y2="6.48" layer="21"/>
<rectangle x1="2.096" y1="6.448" x2="2.16" y2="6.48" layer="21"/>
<rectangle x1="3.984" y1="6.448" x2="4.848" y2="6.48" layer="21"/>
<rectangle x1="5.584" y1="6.448" x2="6.448" y2="6.48" layer="21"/>
<rectangle x1="8.272" y1="6.448" x2="9.136" y2="6.48" layer="21"/>
<rectangle x1="9.36" y1="6.448" x2="10.384" y2="6.48" layer="21"/>
<rectangle x1="0.24" y1="6.48" x2="0.848" y2="6.512" layer="21"/>
<rectangle x1="1.296" y1="6.48" x2="1.36" y2="6.512" layer="21"/>
<rectangle x1="2.096" y1="6.48" x2="2.16" y2="6.512" layer="21"/>
<rectangle x1="3.984" y1="6.48" x2="4.848" y2="6.512" layer="21"/>
<rectangle x1="5.584" y1="6.48" x2="6.448" y2="6.512" layer="21"/>
<rectangle x1="8.272" y1="6.48" x2="9.136" y2="6.512" layer="21"/>
<rectangle x1="9.36" y1="6.48" x2="10.416" y2="6.512" layer="21"/>
<rectangle x1="0.24" y1="6.512" x2="0.848" y2="6.544" layer="21"/>
<rectangle x1="1.296" y1="6.512" x2="1.36" y2="6.544" layer="21"/>
<rectangle x1="2.096" y1="6.512" x2="2.16" y2="6.544" layer="21"/>
<rectangle x1="3.984" y1="6.512" x2="4.848" y2="6.544" layer="21"/>
<rectangle x1="5.584" y1="6.512" x2="6.448" y2="6.544" layer="21"/>
<rectangle x1="8.272" y1="6.512" x2="9.136" y2="6.544" layer="21"/>
<rectangle x1="9.328" y1="6.512" x2="10.448" y2="6.544" layer="21"/>
<rectangle x1="0.24" y1="6.544" x2="0.848" y2="6.576" layer="21"/>
<rectangle x1="1.296" y1="6.544" x2="1.36" y2="6.576" layer="21"/>
<rectangle x1="2.096" y1="6.544" x2="2.16" y2="6.576" layer="21"/>
<rectangle x1="3.984" y1="6.544" x2="4.848" y2="6.576" layer="21"/>
<rectangle x1="5.584" y1="6.544" x2="6.448" y2="6.576" layer="21"/>
<rectangle x1="8.272" y1="6.544" x2="9.136" y2="6.576" layer="21"/>
<rectangle x1="9.328" y1="6.544" x2="10.448" y2="6.576" layer="21"/>
<rectangle x1="0.24" y1="6.576" x2="0.848" y2="6.608" layer="21"/>
<rectangle x1="1.296" y1="6.576" x2="1.36" y2="6.608" layer="21"/>
<rectangle x1="2.096" y1="6.576" x2="2.16" y2="6.608" layer="21"/>
<rectangle x1="3.984" y1="6.576" x2="4.848" y2="6.608" layer="21"/>
<rectangle x1="5.584" y1="6.576" x2="6.448" y2="6.608" layer="21"/>
<rectangle x1="8.272" y1="6.576" x2="9.136" y2="6.608" layer="21"/>
<rectangle x1="9.328" y1="6.576" x2="10.448" y2="6.608" layer="21"/>
<rectangle x1="0.24" y1="6.608" x2="0.848" y2="6.64" layer="21"/>
<rectangle x1="1.296" y1="6.608" x2="1.36" y2="6.64" layer="21"/>
<rectangle x1="2.096" y1="6.608" x2="2.16" y2="6.64" layer="21"/>
<rectangle x1="3.984" y1="6.608" x2="4.848" y2="6.64" layer="21"/>
<rectangle x1="5.584" y1="6.608" x2="6.448" y2="6.64" layer="21"/>
<rectangle x1="8.272" y1="6.608" x2="9.136" y2="6.64" layer="21"/>
<rectangle x1="9.584" y1="6.608" x2="10.224" y2="6.64" layer="21"/>
<rectangle x1="0.24" y1="6.64" x2="0.848" y2="6.672" layer="21"/>
<rectangle x1="1.296" y1="6.64" x2="1.36" y2="6.672" layer="21"/>
<rectangle x1="2.064" y1="6.64" x2="2.16" y2="6.672" layer="21"/>
<rectangle x1="3.984" y1="6.64" x2="4.848" y2="6.672" layer="21"/>
<rectangle x1="5.584" y1="6.64" x2="6.448" y2="6.672" layer="21"/>
<rectangle x1="8.272" y1="6.64" x2="9.136" y2="6.672" layer="21"/>
<rectangle x1="9.584" y1="6.64" x2="10.192" y2="6.672" layer="21"/>
<rectangle x1="0.24" y1="6.672" x2="0.848" y2="6.704" layer="21"/>
<rectangle x1="1.296" y1="6.672" x2="1.36" y2="6.704" layer="21"/>
<rectangle x1="2.064" y1="6.672" x2="2.16" y2="6.704" layer="21"/>
<rectangle x1="3.984" y1="6.672" x2="4.848" y2="6.704" layer="21"/>
<rectangle x1="5.584" y1="6.672" x2="6.448" y2="6.704" layer="21"/>
<rectangle x1="8.272" y1="6.672" x2="9.136" y2="6.704" layer="21"/>
<rectangle x1="9.584" y1="6.672" x2="10.192" y2="6.704" layer="21"/>
<rectangle x1="0.24" y1="6.704" x2="0.848" y2="6.736" layer="21"/>
<rectangle x1="1.296" y1="6.704" x2="1.36" y2="6.736" layer="21"/>
<rectangle x1="2.064" y1="6.704" x2="2.16" y2="6.736" layer="21"/>
<rectangle x1="3.984" y1="6.704" x2="4.848" y2="6.736" layer="21"/>
<rectangle x1="5.584" y1="6.704" x2="6.448" y2="6.736" layer="21"/>
<rectangle x1="8.272" y1="6.704" x2="9.136" y2="6.736" layer="21"/>
<rectangle x1="9.584" y1="6.704" x2="10.192" y2="6.736" layer="21"/>
<rectangle x1="0.24" y1="6.736" x2="0.848" y2="6.768" layer="21"/>
<rectangle x1="1.296" y1="6.736" x2="1.36" y2="6.768" layer="21"/>
<rectangle x1="2.064" y1="6.736" x2="2.16" y2="6.768" layer="21"/>
<rectangle x1="3.984" y1="6.736" x2="4.848" y2="6.768" layer="21"/>
<rectangle x1="5.584" y1="6.736" x2="6.448" y2="6.768" layer="21"/>
<rectangle x1="8.272" y1="6.736" x2="9.136" y2="6.768" layer="21"/>
<rectangle x1="9.584" y1="6.736" x2="10.192" y2="6.768" layer="21"/>
<rectangle x1="0.24" y1="6.768" x2="0.848" y2="6.8" layer="21"/>
<rectangle x1="1.296" y1="6.768" x2="1.36" y2="6.8" layer="21"/>
<rectangle x1="2.064" y1="6.768" x2="2.16" y2="6.8" layer="21"/>
<rectangle x1="3.984" y1="6.768" x2="4.848" y2="6.8" layer="21"/>
<rectangle x1="5.584" y1="6.768" x2="6.448" y2="6.8" layer="21"/>
<rectangle x1="8.272" y1="6.768" x2="9.136" y2="6.8" layer="21"/>
<rectangle x1="9.584" y1="6.768" x2="10.192" y2="6.8" layer="21"/>
<rectangle x1="0.24" y1="6.8" x2="0.848" y2="6.832" layer="21"/>
<rectangle x1="1.296" y1="6.8" x2="1.36" y2="6.832" layer="21"/>
<rectangle x1="2.064" y1="6.8" x2="2.16" y2="6.832" layer="21"/>
<rectangle x1="3.984" y1="6.8" x2="4.848" y2="6.832" layer="21"/>
<rectangle x1="5.584" y1="6.8" x2="6.448" y2="6.832" layer="21"/>
<rectangle x1="8.272" y1="6.8" x2="9.136" y2="6.832" layer="21"/>
<rectangle x1="9.584" y1="6.8" x2="10.192" y2="6.832" layer="21"/>
<rectangle x1="0.24" y1="6.832" x2="0.848" y2="6.864" layer="21"/>
<rectangle x1="1.296" y1="6.832" x2="1.36" y2="6.864" layer="21"/>
<rectangle x1="2.064" y1="6.832" x2="2.16" y2="6.864" layer="21"/>
<rectangle x1="3.984" y1="6.832" x2="4.848" y2="6.864" layer="21"/>
<rectangle x1="5.584" y1="6.832" x2="6.448" y2="6.864" layer="21"/>
<rectangle x1="8.272" y1="6.832" x2="9.136" y2="6.864" layer="21"/>
<rectangle x1="9.584" y1="6.832" x2="10.192" y2="6.864" layer="21"/>
<rectangle x1="0.24" y1="6.864" x2="0.848" y2="6.896" layer="21"/>
<rectangle x1="1.296" y1="6.864" x2="1.36" y2="6.896" layer="21"/>
<rectangle x1="2.064" y1="6.864" x2="2.16" y2="6.896" layer="21"/>
<rectangle x1="3.984" y1="6.864" x2="4.848" y2="6.896" layer="21"/>
<rectangle x1="5.584" y1="6.864" x2="6.448" y2="6.896" layer="21"/>
<rectangle x1="8.272" y1="6.864" x2="9.136" y2="6.896" layer="21"/>
<rectangle x1="9.584" y1="6.864" x2="10.192" y2="6.896" layer="21"/>
<rectangle x1="0.24" y1="6.896" x2="0.848" y2="6.928" layer="21"/>
<rectangle x1="1.296" y1="6.896" x2="1.36" y2="6.928" layer="21"/>
<rectangle x1="2.064" y1="6.896" x2="2.16" y2="6.928" layer="21"/>
<rectangle x1="3.984" y1="6.896" x2="4.848" y2="6.928" layer="21"/>
<rectangle x1="5.584" y1="6.896" x2="6.448" y2="6.928" layer="21"/>
<rectangle x1="8.272" y1="6.896" x2="9.136" y2="6.928" layer="21"/>
<rectangle x1="9.584" y1="6.896" x2="10.192" y2="6.928" layer="21"/>
<rectangle x1="0.24" y1="6.928" x2="0.848" y2="6.96" layer="21"/>
<rectangle x1="1.296" y1="6.928" x2="1.36" y2="6.96" layer="21"/>
<rectangle x1="2.064" y1="6.928" x2="2.16" y2="6.96" layer="21"/>
<rectangle x1="3.984" y1="6.928" x2="4.848" y2="6.96" layer="21"/>
<rectangle x1="5.584" y1="6.928" x2="6.448" y2="6.96" layer="21"/>
<rectangle x1="8.272" y1="6.928" x2="9.136" y2="6.96" layer="21"/>
<rectangle x1="9.584" y1="6.928" x2="10.192" y2="6.96" layer="21"/>
<rectangle x1="0.24" y1="6.96" x2="0.848" y2="6.992" layer="21"/>
<rectangle x1="1.296" y1="6.96" x2="1.36" y2="6.992" layer="21"/>
<rectangle x1="2.064" y1="6.96" x2="2.16" y2="6.992" layer="21"/>
<rectangle x1="3.984" y1="6.96" x2="4.848" y2="6.992" layer="21"/>
<rectangle x1="5.584" y1="6.96" x2="6.448" y2="6.992" layer="21"/>
<rectangle x1="8.272" y1="6.96" x2="9.136" y2="6.992" layer="21"/>
<rectangle x1="9.584" y1="6.96" x2="10.192" y2="6.992" layer="21"/>
<rectangle x1="0.24" y1="6.992" x2="0.848" y2="7.024" layer="21"/>
<rectangle x1="1.296" y1="6.992" x2="1.36" y2="7.024" layer="21"/>
<rectangle x1="2.064" y1="6.992" x2="2.16" y2="7.024" layer="21"/>
<rectangle x1="3.984" y1="6.992" x2="4.848" y2="7.024" layer="21"/>
<rectangle x1="5.584" y1="6.992" x2="6.448" y2="7.024" layer="21"/>
<rectangle x1="8.272" y1="6.992" x2="9.136" y2="7.024" layer="21"/>
<rectangle x1="9.584" y1="6.992" x2="10.192" y2="7.024" layer="21"/>
<rectangle x1="0.24" y1="7.024" x2="0.848" y2="7.056" layer="21"/>
<rectangle x1="1.296" y1="7.024" x2="1.36" y2="7.056" layer="21"/>
<rectangle x1="2.064" y1="7.024" x2="2.16" y2="7.056" layer="21"/>
<rectangle x1="3.984" y1="7.024" x2="4.848" y2="7.056" layer="21"/>
<rectangle x1="5.584" y1="7.024" x2="6.448" y2="7.056" layer="21"/>
<rectangle x1="8.272" y1="7.024" x2="9.136" y2="7.056" layer="21"/>
<rectangle x1="9.584" y1="7.024" x2="10.192" y2="7.056" layer="21"/>
<rectangle x1="0.24" y1="7.056" x2="0.848" y2="7.088" layer="21"/>
<rectangle x1="1.296" y1="7.056" x2="1.36" y2="7.088" layer="21"/>
<rectangle x1="2.064" y1="7.056" x2="2.16" y2="7.088" layer="21"/>
<rectangle x1="3.984" y1="7.056" x2="4.848" y2="7.088" layer="21"/>
<rectangle x1="5.584" y1="7.056" x2="6.448" y2="7.088" layer="21"/>
<rectangle x1="8.272" y1="7.056" x2="9.136" y2="7.088" layer="21"/>
<rectangle x1="9.584" y1="7.056" x2="10.192" y2="7.088" layer="21"/>
<rectangle x1="0.24" y1="7.088" x2="0.848" y2="7.12" layer="21"/>
<rectangle x1="1.296" y1="7.088" x2="1.36" y2="7.12" layer="21"/>
<rectangle x1="2.064" y1="7.088" x2="2.16" y2="7.12" layer="21"/>
<rectangle x1="3.984" y1="7.088" x2="4.848" y2="7.12" layer="21"/>
<rectangle x1="5.584" y1="7.088" x2="6.448" y2="7.12" layer="21"/>
<rectangle x1="8.272" y1="7.088" x2="9.136" y2="7.12" layer="21"/>
<rectangle x1="9.584" y1="7.088" x2="10.192" y2="7.12" layer="21"/>
<rectangle x1="0.24" y1="7.12" x2="0.848" y2="7.152" layer="21"/>
<rectangle x1="1.296" y1="7.12" x2="1.36" y2="7.152" layer="21"/>
<rectangle x1="2.064" y1="7.12" x2="2.16" y2="7.152" layer="21"/>
<rectangle x1="3.984" y1="7.12" x2="4.848" y2="7.152" layer="21"/>
<rectangle x1="5.584" y1="7.12" x2="6.448" y2="7.152" layer="21"/>
<rectangle x1="8.272" y1="7.12" x2="9.136" y2="7.152" layer="21"/>
<rectangle x1="9.584" y1="7.12" x2="10.192" y2="7.152" layer="21"/>
<rectangle x1="0.24" y1="7.152" x2="0.848" y2="7.184" layer="21"/>
<rectangle x1="1.296" y1="7.152" x2="1.36" y2="7.184" layer="21"/>
<rectangle x1="2.064" y1="7.152" x2="2.16" y2="7.184" layer="21"/>
<rectangle x1="3.984" y1="7.152" x2="4.848" y2="7.184" layer="21"/>
<rectangle x1="5.584" y1="7.152" x2="6.448" y2="7.184" layer="21"/>
<rectangle x1="8.272" y1="7.152" x2="9.136" y2="7.184" layer="21"/>
<rectangle x1="9.584" y1="7.152" x2="10.192" y2="7.184" layer="21"/>
<rectangle x1="0.24" y1="7.184" x2="0.848" y2="7.216" layer="21"/>
<rectangle x1="1.296" y1="7.184" x2="1.36" y2="7.216" layer="21"/>
<rectangle x1="2.064" y1="7.184" x2="2.16" y2="7.216" layer="21"/>
<rectangle x1="3.984" y1="7.184" x2="4.848" y2="7.216" layer="21"/>
<rectangle x1="5.584" y1="7.184" x2="6.448" y2="7.216" layer="21"/>
<rectangle x1="8.272" y1="7.184" x2="9.136" y2="7.216" layer="21"/>
<rectangle x1="9.584" y1="7.184" x2="10.192" y2="7.216" layer="21"/>
<rectangle x1="0.24" y1="7.216" x2="0.848" y2="7.248" layer="21"/>
<rectangle x1="1.296" y1="7.216" x2="1.36" y2="7.248" layer="21"/>
<rectangle x1="2.064" y1="7.216" x2="2.16" y2="7.248" layer="21"/>
<rectangle x1="3.984" y1="7.216" x2="4.848" y2="7.248" layer="21"/>
<rectangle x1="5.584" y1="7.216" x2="6.448" y2="7.248" layer="21"/>
<rectangle x1="8.272" y1="7.216" x2="9.136" y2="7.248" layer="21"/>
<rectangle x1="9.584" y1="7.216" x2="10.192" y2="7.248" layer="21"/>
<rectangle x1="0.24" y1="7.248" x2="0.848" y2="7.28" layer="21"/>
<rectangle x1="1.296" y1="7.248" x2="1.36" y2="7.28" layer="21"/>
<rectangle x1="2.064" y1="7.248" x2="2.16" y2="7.28" layer="21"/>
<rectangle x1="3.984" y1="7.248" x2="4.848" y2="7.28" layer="21"/>
<rectangle x1="5.584" y1="7.248" x2="6.448" y2="7.28" layer="21"/>
<rectangle x1="8.272" y1="7.248" x2="9.136" y2="7.28" layer="21"/>
<rectangle x1="9.584" y1="7.248" x2="10.192" y2="7.28" layer="21"/>
<rectangle x1="0.24" y1="7.28" x2="0.848" y2="7.312" layer="21"/>
<rectangle x1="1.296" y1="7.28" x2="1.36" y2="7.312" layer="21"/>
<rectangle x1="2.064" y1="7.28" x2="2.16" y2="7.312" layer="21"/>
<rectangle x1="3.984" y1="7.28" x2="4.848" y2="7.312" layer="21"/>
<rectangle x1="5.584" y1="7.28" x2="6.448" y2="7.312" layer="21"/>
<rectangle x1="8.272" y1="7.28" x2="9.136" y2="7.312" layer="21"/>
<rectangle x1="9.584" y1="7.28" x2="10.192" y2="7.312" layer="21"/>
<rectangle x1="0.24" y1="7.312" x2="0.848" y2="7.344" layer="21"/>
<rectangle x1="1.296" y1="7.312" x2="1.36" y2="7.344" layer="21"/>
<rectangle x1="2.064" y1="7.312" x2="2.16" y2="7.344" layer="21"/>
<rectangle x1="3.984" y1="7.312" x2="4.848" y2="7.344" layer="21"/>
<rectangle x1="5.584" y1="7.312" x2="6.448" y2="7.344" layer="21"/>
<rectangle x1="8.272" y1="7.312" x2="9.136" y2="7.344" layer="21"/>
<rectangle x1="9.584" y1="7.312" x2="10.192" y2="7.344" layer="21"/>
<rectangle x1="0.24" y1="7.344" x2="0.848" y2="7.376" layer="21"/>
<rectangle x1="1.296" y1="7.344" x2="1.36" y2="7.376" layer="21"/>
<rectangle x1="2.064" y1="7.344" x2="2.16" y2="7.376" layer="21"/>
<rectangle x1="3.984" y1="7.344" x2="4.848" y2="7.376" layer="21"/>
<rectangle x1="5.584" y1="7.344" x2="6.448" y2="7.376" layer="21"/>
<rectangle x1="8.272" y1="7.344" x2="9.136" y2="7.376" layer="21"/>
<rectangle x1="9.584" y1="7.344" x2="10.192" y2="7.376" layer="21"/>
<rectangle x1="0.24" y1="7.376" x2="0.848" y2="7.408" layer="21"/>
<rectangle x1="1.296" y1="7.376" x2="1.36" y2="7.408" layer="21"/>
<rectangle x1="2.064" y1="7.376" x2="2.16" y2="7.408" layer="21"/>
<rectangle x1="3.984" y1="7.376" x2="4.848" y2="7.408" layer="21"/>
<rectangle x1="5.584" y1="7.376" x2="6.448" y2="7.408" layer="21"/>
<rectangle x1="8.272" y1="7.376" x2="9.136" y2="7.408" layer="21"/>
<rectangle x1="9.584" y1="7.376" x2="10.192" y2="7.408" layer="21"/>
<rectangle x1="0.24" y1="7.408" x2="0.848" y2="7.44" layer="21"/>
<rectangle x1="1.296" y1="7.408" x2="1.36" y2="7.44" layer="21"/>
<rectangle x1="2.064" y1="7.408" x2="2.16" y2="7.44" layer="21"/>
<rectangle x1="3.984" y1="7.408" x2="4.848" y2="7.44" layer="21"/>
<rectangle x1="5.584" y1="7.408" x2="6.448" y2="7.44" layer="21"/>
<rectangle x1="8.272" y1="7.408" x2="9.136" y2="7.44" layer="21"/>
<rectangle x1="9.584" y1="7.408" x2="10.192" y2="7.44" layer="21"/>
<rectangle x1="0.24" y1="7.44" x2="0.848" y2="7.472" layer="21"/>
<rectangle x1="1.296" y1="7.44" x2="1.36" y2="7.472" layer="21"/>
<rectangle x1="2.064" y1="7.44" x2="2.16" y2="7.472" layer="21"/>
<rectangle x1="3.984" y1="7.44" x2="4.848" y2="7.472" layer="21"/>
<rectangle x1="5.584" y1="7.44" x2="6.448" y2="7.472" layer="21"/>
<rectangle x1="8.272" y1="7.44" x2="9.136" y2="7.472" layer="21"/>
<rectangle x1="9.584" y1="7.44" x2="10.192" y2="7.472" layer="21"/>
<rectangle x1="0.24" y1="7.472" x2="0.848" y2="7.504" layer="21"/>
<rectangle x1="1.296" y1="7.472" x2="1.36" y2="7.504" layer="21"/>
<rectangle x1="2.064" y1="7.472" x2="2.16" y2="7.504" layer="21"/>
<rectangle x1="3.984" y1="7.472" x2="4.848" y2="7.504" layer="21"/>
<rectangle x1="5.584" y1="7.472" x2="6.448" y2="7.504" layer="21"/>
<rectangle x1="8.272" y1="7.472" x2="9.136" y2="7.504" layer="21"/>
<rectangle x1="9.584" y1="7.472" x2="10.192" y2="7.504" layer="21"/>
<rectangle x1="0.24" y1="7.504" x2="0.848" y2="7.536" layer="21"/>
<rectangle x1="1.296" y1="7.504" x2="1.36" y2="7.536" layer="21"/>
<rectangle x1="2.064" y1="7.504" x2="2.16" y2="7.536" layer="21"/>
<rectangle x1="3.984" y1="7.504" x2="4.848" y2="7.536" layer="21"/>
<rectangle x1="5.584" y1="7.504" x2="6.448" y2="7.536" layer="21"/>
<rectangle x1="8.272" y1="7.504" x2="9.136" y2="7.536" layer="21"/>
<rectangle x1="9.584" y1="7.504" x2="10.192" y2="7.536" layer="21"/>
<rectangle x1="0.24" y1="7.536" x2="0.848" y2="7.568" layer="21"/>
<rectangle x1="1.296" y1="7.536" x2="1.36" y2="7.568" layer="21"/>
<rectangle x1="2.064" y1="7.536" x2="2.16" y2="7.568" layer="21"/>
<rectangle x1="3.984" y1="7.536" x2="4.848" y2="7.568" layer="21"/>
<rectangle x1="5.584" y1="7.536" x2="6.448" y2="7.568" layer="21"/>
<rectangle x1="8.272" y1="7.536" x2="9.136" y2="7.568" layer="21"/>
<rectangle x1="9.584" y1="7.536" x2="10.192" y2="7.568" layer="21"/>
<rectangle x1="0.24" y1="7.568" x2="0.848" y2="7.6" layer="21"/>
<rectangle x1="1.296" y1="7.568" x2="1.36" y2="7.6" layer="21"/>
<rectangle x1="2.064" y1="7.568" x2="2.16" y2="7.6" layer="21"/>
<rectangle x1="3.984" y1="7.568" x2="4.848" y2="7.6" layer="21"/>
<rectangle x1="5.584" y1="7.568" x2="6.448" y2="7.6" layer="21"/>
<rectangle x1="8.272" y1="7.568" x2="9.136" y2="7.6" layer="21"/>
<rectangle x1="9.584" y1="7.568" x2="10.192" y2="7.6" layer="21"/>
<rectangle x1="0.24" y1="7.6" x2="0.848" y2="7.632" layer="21"/>
<rectangle x1="1.296" y1="7.6" x2="1.36" y2="7.632" layer="21"/>
<rectangle x1="2.064" y1="7.6" x2="2.16" y2="7.632" layer="21"/>
<rectangle x1="3.984" y1="7.6" x2="4.848" y2="7.632" layer="21"/>
<rectangle x1="5.584" y1="7.6" x2="6.448" y2="7.632" layer="21"/>
<rectangle x1="8.272" y1="7.6" x2="9.136" y2="7.632" layer="21"/>
<rectangle x1="9.584" y1="7.6" x2="10.192" y2="7.632" layer="21"/>
<rectangle x1="0.24" y1="7.632" x2="0.848" y2="7.664" layer="21"/>
<rectangle x1="1.296" y1="7.632" x2="1.36" y2="7.664" layer="21"/>
<rectangle x1="2.064" y1="7.632" x2="2.16" y2="7.664" layer="21"/>
<rectangle x1="3.984" y1="7.632" x2="4.848" y2="7.664" layer="21"/>
<rectangle x1="5.584" y1="7.632" x2="6.448" y2="7.664" layer="21"/>
<rectangle x1="8.272" y1="7.632" x2="9.136" y2="7.664" layer="21"/>
<rectangle x1="9.584" y1="7.632" x2="10.192" y2="7.664" layer="21"/>
<rectangle x1="0.24" y1="7.664" x2="0.848" y2="7.696" layer="21"/>
<rectangle x1="1.296" y1="7.664" x2="1.36" y2="7.696" layer="21"/>
<rectangle x1="2.064" y1="7.664" x2="2.16" y2="7.696" layer="21"/>
<rectangle x1="3.984" y1="7.664" x2="4.848" y2="7.696" layer="21"/>
<rectangle x1="5.584" y1="7.664" x2="6.448" y2="7.696" layer="21"/>
<rectangle x1="8.272" y1="7.664" x2="9.136" y2="7.696" layer="21"/>
<rectangle x1="9.584" y1="7.664" x2="10.192" y2="7.696" layer="21"/>
<rectangle x1="0.24" y1="7.696" x2="0.848" y2="7.728" layer="21"/>
<rectangle x1="1.296" y1="7.696" x2="1.36" y2="7.728" layer="21"/>
<rectangle x1="2.064" y1="7.696" x2="2.16" y2="7.728" layer="21"/>
<rectangle x1="3.984" y1="7.696" x2="4.848" y2="7.728" layer="21"/>
<rectangle x1="5.584" y1="7.696" x2="6.448" y2="7.728" layer="21"/>
<rectangle x1="8.272" y1="7.696" x2="9.136" y2="7.728" layer="21"/>
<rectangle x1="9.584" y1="7.696" x2="10.192" y2="7.728" layer="21"/>
<rectangle x1="0.24" y1="7.728" x2="0.848" y2="7.76" layer="21"/>
<rectangle x1="1.296" y1="7.728" x2="1.36" y2="7.76" layer="21"/>
<rectangle x1="2.064" y1="7.728" x2="2.16" y2="7.76" layer="21"/>
<rectangle x1="3.984" y1="7.728" x2="4.848" y2="7.76" layer="21"/>
<rectangle x1="5.584" y1="7.728" x2="6.448" y2="7.76" layer="21"/>
<rectangle x1="8.272" y1="7.728" x2="9.136" y2="7.76" layer="21"/>
<rectangle x1="9.584" y1="7.728" x2="10.192" y2="7.76" layer="21"/>
<rectangle x1="0.24" y1="7.76" x2="0.848" y2="7.792" layer="21"/>
<rectangle x1="1.296" y1="7.76" x2="1.36" y2="7.792" layer="21"/>
<rectangle x1="2.064" y1="7.76" x2="2.16" y2="7.792" layer="21"/>
<rectangle x1="3.984" y1="7.76" x2="4.848" y2="7.792" layer="21"/>
<rectangle x1="5.584" y1="7.76" x2="6.448" y2="7.792" layer="21"/>
<rectangle x1="8.272" y1="7.76" x2="9.136" y2="7.792" layer="21"/>
<rectangle x1="9.584" y1="7.76" x2="10.192" y2="7.792" layer="21"/>
<rectangle x1="0.24" y1="7.792" x2="0.848" y2="7.824" layer="21"/>
<rectangle x1="1.296" y1="7.792" x2="1.36" y2="7.824" layer="21"/>
<rectangle x1="2.064" y1="7.792" x2="2.16" y2="7.824" layer="21"/>
<rectangle x1="3.984" y1="7.792" x2="4.848" y2="7.824" layer="21"/>
<rectangle x1="5.584" y1="7.792" x2="6.448" y2="7.824" layer="21"/>
<rectangle x1="8.272" y1="7.792" x2="9.136" y2="7.824" layer="21"/>
<rectangle x1="9.584" y1="7.792" x2="10.192" y2="7.824" layer="21"/>
<rectangle x1="0.24" y1="7.824" x2="0.848" y2="7.856" layer="21"/>
<rectangle x1="1.296" y1="7.824" x2="1.36" y2="7.856" layer="21"/>
<rectangle x1="2.064" y1="7.824" x2="2.16" y2="7.856" layer="21"/>
<rectangle x1="3.984" y1="7.824" x2="4.848" y2="7.856" layer="21"/>
<rectangle x1="5.584" y1="7.824" x2="6.448" y2="7.856" layer="21"/>
<rectangle x1="8.272" y1="7.824" x2="9.136" y2="7.856" layer="21"/>
<rectangle x1="9.584" y1="7.824" x2="10.192" y2="7.856" layer="21"/>
<rectangle x1="0.24" y1="7.856" x2="0.848" y2="7.888" layer="21"/>
<rectangle x1="1.296" y1="7.856" x2="1.36" y2="7.888" layer="21"/>
<rectangle x1="2.064" y1="7.856" x2="2.16" y2="7.888" layer="21"/>
<rectangle x1="3.984" y1="7.856" x2="4.848" y2="7.888" layer="21"/>
<rectangle x1="5.584" y1="7.856" x2="6.448" y2="7.888" layer="21"/>
<rectangle x1="8.272" y1="7.856" x2="9.136" y2="7.888" layer="21"/>
<rectangle x1="9.584" y1="7.856" x2="10.192" y2="7.888" layer="21"/>
<rectangle x1="0.24" y1="7.888" x2="0.848" y2="7.92" layer="21"/>
<rectangle x1="1.296" y1="7.888" x2="1.36" y2="7.92" layer="21"/>
<rectangle x1="2.064" y1="7.888" x2="4.848" y2="7.92" layer="21"/>
<rectangle x1="5.584" y1="7.888" x2="9.136" y2="7.92" layer="21"/>
<rectangle x1="9.584" y1="7.888" x2="10.192" y2="7.92" layer="21"/>
<rectangle x1="0.24" y1="7.92" x2="0.848" y2="7.952" layer="21"/>
<rectangle x1="1.296" y1="7.92" x2="1.392" y2="7.952" layer="21"/>
<rectangle x1="2.032" y1="7.92" x2="4.816" y2="7.952" layer="21"/>
<rectangle x1="5.584" y1="7.92" x2="9.104" y2="7.952" layer="21"/>
<rectangle x1="9.584" y1="7.92" x2="10.192" y2="7.952" layer="21"/>
<rectangle x1="0.24" y1="7.952" x2="0.848" y2="7.984" layer="21"/>
<rectangle x1="1.328" y1="7.952" x2="1.424" y2="7.984" layer="21"/>
<rectangle x1="2" y1="7.952" x2="4.784" y2="7.984" layer="21"/>
<rectangle x1="5.616" y1="7.952" x2="9.072" y2="7.984" layer="21"/>
<rectangle x1="9.584" y1="7.952" x2="10.192" y2="7.984" layer="21"/>
<rectangle x1="0.24" y1="7.984" x2="0.848" y2="8.016" layer="21"/>
<rectangle x1="1.36" y1="7.984" x2="1.456" y2="8.016" layer="21"/>
<rectangle x1="1.968" y1="7.984" x2="4.752" y2="8.016" layer="21"/>
<rectangle x1="5.648" y1="7.984" x2="9.04" y2="8.016" layer="21"/>
<rectangle x1="9.584" y1="7.984" x2="10.192" y2="8.016" layer="21"/>
<rectangle x1="0.24" y1="8.016" x2="0.848" y2="8.048" layer="21"/>
<rectangle x1="1.392" y1="8.016" x2="1.488" y2="8.048" layer="21"/>
<rectangle x1="1.936" y1="8.016" x2="4.72" y2="8.048" layer="21"/>
<rectangle x1="5.68" y1="8.016" x2="9.008" y2="8.048" layer="21"/>
<rectangle x1="9.584" y1="8.016" x2="10.192" y2="8.048" layer="21"/>
<rectangle x1="0.24" y1="8.048" x2="0.848" y2="8.08" layer="21"/>
<rectangle x1="1.424" y1="8.048" x2="1.52" y2="8.08" layer="21"/>
<rectangle x1="1.904" y1="8.048" x2="4.688" y2="8.08" layer="21"/>
<rectangle x1="5.712" y1="8.048" x2="8.976" y2="8.08" layer="21"/>
<rectangle x1="9.584" y1="8.048" x2="10.192" y2="8.08" layer="21"/>
<rectangle x1="0.24" y1="8.08" x2="0.848" y2="8.112" layer="21"/>
<rectangle x1="1.456" y1="8.08" x2="1.552" y2="8.112" layer="21"/>
<rectangle x1="1.872" y1="8.08" x2="4.656" y2="8.112" layer="21"/>
<rectangle x1="5.744" y1="8.08" x2="8.944" y2="8.112" layer="21"/>
<rectangle x1="9.584" y1="8.08" x2="10.192" y2="8.112" layer="21"/>
<rectangle x1="0.24" y1="8.112" x2="0.848" y2="8.144" layer="21"/>
<rectangle x1="1.488" y1="8.112" x2="1.584" y2="8.144" layer="21"/>
<rectangle x1="1.872" y1="8.112" x2="4.624" y2="8.144" layer="21"/>
<rectangle x1="5.776" y1="8.112" x2="8.912" y2="8.144" layer="21"/>
<rectangle x1="9.584" y1="8.112" x2="10.192" y2="8.144" layer="21"/>
<rectangle x1="0.24" y1="8.144" x2="0.848" y2="8.176" layer="21"/>
<rectangle x1="1.52" y1="8.144" x2="1.616" y2="8.176" layer="21"/>
<rectangle x1="1.84" y1="8.144" x2="4.592" y2="8.176" layer="21"/>
<rectangle x1="5.808" y1="8.144" x2="8.88" y2="8.176" layer="21"/>
<rectangle x1="9.584" y1="8.144" x2="10.192" y2="8.176" layer="21"/>
<rectangle x1="0.24" y1="8.176" x2="0.848" y2="8.208" layer="21"/>
<rectangle x1="1.552" y1="8.176" x2="1.648" y2="8.208" layer="21"/>
<rectangle x1="1.808" y1="8.176" x2="4.56" y2="8.208" layer="21"/>
<rectangle x1="5.84" y1="8.176" x2="8.848" y2="8.208" layer="21"/>
<rectangle x1="9.584" y1="8.176" x2="10.192" y2="8.208" layer="21"/>
<rectangle x1="0.24" y1="8.208" x2="0.848" y2="8.24" layer="21"/>
<rectangle x1="1.584" y1="8.208" x2="1.68" y2="8.24" layer="21"/>
<rectangle x1="1.776" y1="8.208" x2="4.528" y2="8.24" layer="21"/>
<rectangle x1="5.872" y1="8.208" x2="8.816" y2="8.24" layer="21"/>
<rectangle x1="9.584" y1="8.208" x2="10.192" y2="8.24" layer="21"/>
<rectangle x1="0.24" y1="8.24" x2="0.848" y2="8.272" layer="21"/>
<rectangle x1="1.616" y1="8.24" x2="1.712" y2="8.272" layer="21"/>
<rectangle x1="1.744" y1="8.24" x2="4.496" y2="8.272" layer="21"/>
<rectangle x1="5.904" y1="8.24" x2="8.784" y2="8.272" layer="21"/>
<rectangle x1="9.584" y1="8.24" x2="10.192" y2="8.272" layer="21"/>
<rectangle x1="0.24" y1="8.272" x2="0.848" y2="8.304" layer="21"/>
<rectangle x1="1.648" y1="8.272" x2="4.464" y2="8.304" layer="21"/>
<rectangle x1="5.936" y1="8.272" x2="8.752" y2="8.304" layer="21"/>
<rectangle x1="9.584" y1="8.272" x2="10.192" y2="8.304" layer="21"/>
<rectangle x1="0.24" y1="8.304" x2="0.848" y2="8.336" layer="21"/>
<rectangle x1="1.68" y1="8.304" x2="4.432" y2="8.336" layer="21"/>
<rectangle x1="5.968" y1="8.304" x2="8.72" y2="8.336" layer="21"/>
<rectangle x1="9.584" y1="8.304" x2="10.192" y2="8.336" layer="21"/>
<rectangle x1="0.24" y1="8.336" x2="0.848" y2="8.368" layer="21"/>
<rectangle x1="1.712" y1="8.336" x2="4.4" y2="8.368" layer="21"/>
<rectangle x1="6" y1="8.336" x2="8.688" y2="8.368" layer="21"/>
<rectangle x1="9.584" y1="8.336" x2="10.192" y2="8.368" layer="21"/>
<rectangle x1="0.24" y1="8.368" x2="0.848" y2="8.4" layer="21"/>
<rectangle x1="1.744" y1="8.368" x2="4.368" y2="8.4" layer="21"/>
<rectangle x1="6.032" y1="8.368" x2="8.656" y2="8.4" layer="21"/>
<rectangle x1="9.584" y1="8.368" x2="10.192" y2="8.4" layer="21"/>
<rectangle x1="0.24" y1="8.4" x2="0.848" y2="8.432" layer="21"/>
<rectangle x1="1.776" y1="8.4" x2="4.336" y2="8.432" layer="21"/>
<rectangle x1="6.064" y1="8.4" x2="8.624" y2="8.432" layer="21"/>
<rectangle x1="9.584" y1="8.4" x2="10.192" y2="8.432" layer="21"/>
<rectangle x1="0.24" y1="8.432" x2="0.848" y2="8.464" layer="21"/>
<rectangle x1="1.808" y1="8.432" x2="4.304" y2="8.464" layer="21"/>
<rectangle x1="6.096" y1="8.432" x2="8.592" y2="8.464" layer="21"/>
<rectangle x1="9.584" y1="8.432" x2="10.192" y2="8.464" layer="21"/>
<rectangle x1="0.24" y1="8.464" x2="0.848" y2="8.496" layer="21"/>
<rectangle x1="1.84" y1="8.464" x2="4.272" y2="8.496" layer="21"/>
<rectangle x1="6.128" y1="8.464" x2="8.56" y2="8.496" layer="21"/>
<rectangle x1="9.584" y1="8.464" x2="10.192" y2="8.496" layer="21"/>
<rectangle x1="0.24" y1="8.496" x2="0.848" y2="8.528" layer="21"/>
<rectangle x1="1.872" y1="8.496" x2="4.24" y2="8.528" layer="21"/>
<rectangle x1="6.16" y1="8.496" x2="8.528" y2="8.528" layer="21"/>
<rectangle x1="9.584" y1="8.496" x2="10.192" y2="8.528" layer="21"/>
<rectangle x1="0.24" y1="8.528" x2="0.848" y2="8.56" layer="21"/>
<rectangle x1="1.904" y1="8.528" x2="4.208" y2="8.56" layer="21"/>
<rectangle x1="6.192" y1="8.528" x2="8.496" y2="8.56" layer="21"/>
<rectangle x1="9.584" y1="8.528" x2="10.192" y2="8.56" layer="21"/>
<rectangle x1="0.24" y1="8.56" x2="0.848" y2="8.592" layer="21"/>
<rectangle x1="1.936" y1="8.56" x2="4.176" y2="8.592" layer="21"/>
<rectangle x1="6.224" y1="8.56" x2="8.464" y2="8.592" layer="21"/>
<rectangle x1="9.584" y1="8.56" x2="10.192" y2="8.592" layer="21"/>
<rectangle x1="0.24" y1="8.592" x2="0.848" y2="8.624" layer="21"/>
<rectangle x1="1.968" y1="8.592" x2="4.144" y2="8.624" layer="21"/>
<rectangle x1="6.256" y1="8.592" x2="8.432" y2="8.624" layer="21"/>
<rectangle x1="9.584" y1="8.592" x2="10.192" y2="8.624" layer="21"/>
<rectangle x1="0.24" y1="8.624" x2="0.848" y2="8.656" layer="21"/>
<rectangle x1="2" y1="8.624" x2="4.112" y2="8.656" layer="21"/>
<rectangle x1="6.288" y1="8.624" x2="8.4" y2="8.656" layer="21"/>
<rectangle x1="9.584" y1="8.624" x2="10.192" y2="8.656" layer="21"/>
<rectangle x1="0.24" y1="8.656" x2="0.848" y2="8.688" layer="21"/>
<rectangle x1="2.032" y1="8.656" x2="4.08" y2="8.688" layer="21"/>
<rectangle x1="6.32" y1="8.656" x2="8.368" y2="8.688" layer="21"/>
<rectangle x1="9.584" y1="8.656" x2="10.192" y2="8.688" layer="21"/>
<rectangle x1="0.24" y1="8.688" x2="0.848" y2="8.72" layer="21"/>
<rectangle x1="2.064" y1="8.688" x2="4.048" y2="8.72" layer="21"/>
<rectangle x1="6.352" y1="8.688" x2="8.336" y2="8.72" layer="21"/>
<rectangle x1="9.584" y1="8.688" x2="10.192" y2="8.72" layer="21"/>
<rectangle x1="0.24" y1="8.72" x2="0.848" y2="8.752" layer="21"/>
<rectangle x1="9.584" y1="8.72" x2="10.192" y2="8.752" layer="21"/>
<rectangle x1="0.24" y1="8.752" x2="0.848" y2="8.784" layer="21"/>
<rectangle x1="9.584" y1="8.752" x2="10.192" y2="8.784" layer="21"/>
<rectangle x1="0.24" y1="8.784" x2="0.848" y2="8.816" layer="21"/>
<rectangle x1="9.584" y1="8.784" x2="10.192" y2="8.816" layer="21"/>
<rectangle x1="0.24" y1="8.816" x2="0.848" y2="8.848" layer="21"/>
<rectangle x1="9.584" y1="8.816" x2="10.192" y2="8.848" layer="21"/>
<rectangle x1="0.24" y1="8.848" x2="0.848" y2="8.88" layer="21"/>
<rectangle x1="9.584" y1="8.848" x2="10.192" y2="8.88" layer="21"/>
<rectangle x1="0.24" y1="8.88" x2="0.848" y2="8.912" layer="21"/>
<rectangle x1="9.584" y1="8.88" x2="10.192" y2="8.912" layer="21"/>
<rectangle x1="0.24" y1="8.912" x2="0.848" y2="8.944" layer="21"/>
<rectangle x1="9.584" y1="8.912" x2="10.192" y2="8.944" layer="21"/>
<rectangle x1="0.24" y1="8.944" x2="0.848" y2="8.976" layer="21"/>
<rectangle x1="9.584" y1="8.944" x2="10.192" y2="8.976" layer="21"/>
<rectangle x1="0.24" y1="8.976" x2="0.848" y2="9.008" layer="21"/>
<rectangle x1="3.856" y1="8.976" x2="3.952" y2="9.008" layer="21"/>
<rectangle x1="9.584" y1="8.976" x2="10.192" y2="9.008" layer="21"/>
<rectangle x1="0.24" y1="9.008" x2="0.848" y2="9.04" layer="21"/>
<rectangle x1="3.856" y1="9.008" x2="3.984" y2="9.04" layer="21"/>
<rectangle x1="9.584" y1="9.008" x2="10.192" y2="9.04" layer="21"/>
<rectangle x1="0.24" y1="9.04" x2="0.848" y2="9.072" layer="21"/>
<rectangle x1="3.856" y1="9.04" x2="4.048" y2="9.072" layer="21"/>
<rectangle x1="9.584" y1="9.04" x2="10.192" y2="9.072" layer="21"/>
<rectangle x1="0.24" y1="9.072" x2="0.848" y2="9.104" layer="21"/>
<rectangle x1="3.856" y1="9.072" x2="4.112" y2="9.104" layer="21"/>
<rectangle x1="9.584" y1="9.072" x2="10.192" y2="9.104" layer="21"/>
<rectangle x1="0.24" y1="9.104" x2="0.848" y2="9.136" layer="21"/>
<rectangle x1="3.856" y1="9.104" x2="4.144" y2="9.136" layer="21"/>
<rectangle x1="9.584" y1="9.104" x2="10.192" y2="9.136" layer="21"/>
<rectangle x1="0.24" y1="9.136" x2="0.848" y2="9.168" layer="21"/>
<rectangle x1="3.856" y1="9.136" x2="4.208" y2="9.168" layer="21"/>
<rectangle x1="9.584" y1="9.136" x2="10.192" y2="9.168" layer="21"/>
<rectangle x1="0.24" y1="9.168" x2="0.848" y2="9.2" layer="21"/>
<rectangle x1="3.856" y1="9.168" x2="4.272" y2="9.2" layer="21"/>
<rectangle x1="9.584" y1="9.168" x2="10.192" y2="9.2" layer="21"/>
<rectangle x1="0.24" y1="9.2" x2="0.848" y2="9.232" layer="21"/>
<rectangle x1="3.856" y1="9.2" x2="4.336" y2="9.232" layer="21"/>
<rectangle x1="9.584" y1="9.2" x2="10.192" y2="9.232" layer="21"/>
<rectangle x1="0.24" y1="9.232" x2="4.4" y2="9.264" layer="21"/>
<rectangle x1="5.584" y1="9.232" x2="10.192" y2="9.264" layer="21"/>
<rectangle x1="0.24" y1="9.264" x2="4.432" y2="9.296" layer="21"/>
<rectangle x1="5.584" y1="9.264" x2="10.192" y2="9.296" layer="21"/>
<rectangle x1="0.24" y1="9.296" x2="4.496" y2="9.328" layer="21"/>
<rectangle x1="5.584" y1="9.296" x2="10.192" y2="9.328" layer="21"/>
<rectangle x1="0.24" y1="9.328" x2="4.56" y2="9.36" layer="21"/>
<rectangle x1="5.584" y1="9.328" x2="10.192" y2="9.36" layer="21"/>
<rectangle x1="0.24" y1="9.36" x2="4.624" y2="9.392" layer="21"/>
<rectangle x1="5.584" y1="9.36" x2="10.192" y2="9.392" layer="21"/>
<rectangle x1="0.24" y1="9.392" x2="4.688" y2="9.424" layer="21"/>
<rectangle x1="5.584" y1="9.392" x2="10.192" y2="9.424" layer="21"/>
<rectangle x1="0.24" y1="9.424" x2="4.72" y2="9.456" layer="21"/>
<rectangle x1="5.584" y1="9.424" x2="10.192" y2="9.456" layer="21"/>
<rectangle x1="0.24" y1="9.456" x2="4.784" y2="9.488" layer="21"/>
<rectangle x1="5.584" y1="9.456" x2="10.192" y2="9.488" layer="21"/>
<rectangle x1="0.24" y1="9.488" x2="4.848" y2="9.52" layer="21"/>
<rectangle x1="5.584" y1="9.488" x2="10.192" y2="9.52" layer="21"/>
<rectangle x1="0.24" y1="9.52" x2="4.816" y2="9.552" layer="21"/>
<rectangle x1="5.584" y1="9.52" x2="10.192" y2="9.552" layer="21"/>
<rectangle x1="0.24" y1="9.552" x2="4.784" y2="9.584" layer="21"/>
<rectangle x1="5.584" y1="9.552" x2="10.192" y2="9.584" layer="21"/>
<rectangle x1="0.24" y1="9.584" x2="4.72" y2="9.616" layer="21"/>
<rectangle x1="5.584" y1="9.584" x2="10.192" y2="9.616" layer="21"/>
<rectangle x1="0.24" y1="9.616" x2="4.656" y2="9.648" layer="21"/>
<rectangle x1="5.584" y1="9.616" x2="10.192" y2="9.648" layer="21"/>
<rectangle x1="0.24" y1="9.648" x2="4.624" y2="9.68" layer="21"/>
<rectangle x1="5.584" y1="9.648" x2="10.192" y2="9.68" layer="21"/>
<rectangle x1="0.24" y1="9.68" x2="4.56" y2="9.712" layer="21"/>
<rectangle x1="5.584" y1="9.68" x2="10.192" y2="9.712" layer="21"/>
<rectangle x1="0.24" y1="9.712" x2="4.496" y2="9.744" layer="21"/>
<rectangle x1="5.584" y1="9.712" x2="10.192" y2="9.744" layer="21"/>
<rectangle x1="0.24" y1="9.744" x2="4.464" y2="9.776" layer="21"/>
<rectangle x1="5.584" y1="9.744" x2="10.192" y2="9.776" layer="21"/>
<rectangle x1="0.24" y1="9.776" x2="4.4" y2="9.808" layer="21"/>
<rectangle x1="5.584" y1="9.776" x2="10.192" y2="9.808" layer="21"/>
<rectangle x1="3.856" y1="9.808" x2="4.336" y2="9.84" layer="21"/>
<rectangle x1="3.856" y1="9.84" x2="4.272" y2="9.872" layer="21"/>
<rectangle x1="3.856" y1="9.872" x2="4.24" y2="9.904" layer="21"/>
<rectangle x1="3.856" y1="9.904" x2="4.176" y2="9.936" layer="21"/>
<rectangle x1="3.856" y1="9.936" x2="4.112" y2="9.968" layer="21"/>
<rectangle x1="3.856" y1="9.968" x2="4.048" y2="10" layer="21"/>
<rectangle x1="3.856" y1="10" x2="4.016" y2="10.032" layer="21"/>
<rectangle x1="3.856" y1="10.032" x2="3.952" y2="10.064" layer="21"/>
</package>
<package name="OPEN-SHOT-CLOCK-LOGO-H50MM">
<rectangle x1="12.0105" y1="-0.0765" x2="12.4695" y2="0.0765" layer="21"/>
<rectangle x1="12.0105" y1="0.0765" x2="12.4695" y2="0.2295" layer="21"/>
<rectangle x1="12.0105" y1="0.2295" x2="12.4695" y2="0.3825" layer="21"/>
<rectangle x1="12.0105" y1="0.3825" x2="12.6225" y2="0.5355" layer="21"/>
<rectangle x1="12.0105" y1="0.5355" x2="12.6225" y2="0.6885" layer="21"/>
<rectangle x1="12.0105" y1="0.6885" x2="12.6225" y2="0.8415" layer="21"/>
<rectangle x1="21.9555" y1="0.6885" x2="22.1085" y2="0.8415" layer="21"/>
<rectangle x1="9.1035" y1="0.8415" x2="10.4805" y2="0.9945" layer="21"/>
<rectangle x1="12.0105" y1="0.8415" x2="13.6935" y2="0.9945" layer="21"/>
<rectangle x1="14.7645" y1="0.8415" x2="15.9885" y2="0.9945" layer="21"/>
<rectangle x1="17.0595" y1="0.8415" x2="17.5185" y2="0.9945" layer="21"/>
<rectangle x1="18.5895" y1="0.8415" x2="19.0485" y2="0.9945" layer="21"/>
<rectangle x1="21.3435" y1="0.8415" x2="22.8735" y2="0.9945" layer="21"/>
<rectangle x1="23.9445" y1="0.8415" x2="24.4035" y2="0.9945" layer="21"/>
<rectangle x1="25.4745" y1="0.8415" x2="25.9335" y2="0.9945" layer="21"/>
<rectangle x1="27.0045" y1="0.8415" x2="28.0755" y2="0.9945" layer="21"/>
<rectangle x1="29.1465" y1="0.8415" x2="30.0645" y2="0.9945" layer="21"/>
<rectangle x1="32.3595" y1="0.8415" x2="33.7365" y2="0.9945" layer="21"/>
<rectangle x1="34.9605" y1="0.8415" x2="35.4195" y2="0.9945" layer="21"/>
<rectangle x1="36.3375" y1="0.8415" x2="37.4085" y2="0.9945" layer="21"/>
<rectangle x1="38.7855" y1="0.8415" x2="39.8565" y2="0.9945" layer="21"/>
<rectangle x1="40.7745" y1="0.8415" x2="41.2335" y2="0.9945" layer="21"/>
<rectangle x1="42.1515" y1="0.8415" x2="42.7635" y2="0.9945" layer="21"/>
<rectangle x1="8.7975" y1="0.9945" x2="10.6335" y2="1.1475" layer="21"/>
<rectangle x1="12.0105" y1="0.9945" x2="13.8465" y2="1.1475" layer="21"/>
<rectangle x1="14.6115" y1="0.9945" x2="16.2945" y2="1.1475" layer="21"/>
<rectangle x1="17.0595" y1="0.9945" x2="17.5185" y2="1.1475" layer="21"/>
<rectangle x1="18.5895" y1="0.9945" x2="19.0485" y2="1.1475" layer="21"/>
<rectangle x1="21.0375" y1="0.9945" x2="23.1795" y2="1.1475" layer="21"/>
<rectangle x1="23.9445" y1="0.9945" x2="24.4035" y2="1.1475" layer="21"/>
<rectangle x1="25.4745" y1="0.9945" x2="25.9335" y2="1.1475" layer="21"/>
<rectangle x1="26.6985" y1="0.9945" x2="28.2285" y2="1.1475" layer="21"/>
<rectangle x1="28.9935" y1="0.9945" x2="30.0645" y2="1.1475" layer="21"/>
<rectangle x1="32.2065" y1="0.9945" x2="34.0425" y2="1.1475" layer="21"/>
<rectangle x1="34.9605" y1="0.9945" x2="35.4195" y2="1.1475" layer="21"/>
<rectangle x1="36.0315" y1="0.9945" x2="37.5615" y2="1.1475" layer="21"/>
<rectangle x1="38.6325" y1="0.9945" x2="40.1625" y2="1.1475" layer="21"/>
<rectangle x1="40.7745" y1="0.9945" x2="41.2335" y2="1.1475" layer="21"/>
<rectangle x1="41.9985" y1="0.9945" x2="42.7635" y2="1.1475" layer="21"/>
<rectangle x1="8.6445" y1="1.1475" x2="10.9395" y2="1.3005" layer="21"/>
<rectangle x1="12.0105" y1="1.1475" x2="13.9995" y2="1.3005" layer="21"/>
<rectangle x1="14.4585" y1="1.1475" x2="16.2945" y2="1.3005" layer="21"/>
<rectangle x1="17.0595" y1="1.1475" x2="17.5185" y2="1.3005" layer="21"/>
<rectangle x1="18.5895" y1="1.1475" x2="19.0485" y2="1.3005" layer="21"/>
<rectangle x1="20.8845" y1="1.1475" x2="23.3325" y2="1.3005" layer="21"/>
<rectangle x1="23.9445" y1="1.1475" x2="24.4035" y2="1.3005" layer="21"/>
<rectangle x1="25.4745" y1="1.1475" x2="25.9335" y2="1.3005" layer="21"/>
<rectangle x1="26.5455" y1="1.1475" x2="28.3815" y2="1.3005" layer="21"/>
<rectangle x1="28.9935" y1="1.1475" x2="29.7585" y2="1.3005" layer="21"/>
<rectangle x1="31.9005" y1="1.1475" x2="34.1955" y2="1.3005" layer="21"/>
<rectangle x1="34.9605" y1="1.1475" x2="35.4195" y2="1.3005" layer="21"/>
<rectangle x1="35.8785" y1="1.1475" x2="37.7145" y2="1.3005" layer="21"/>
<rectangle x1="38.4795" y1="1.1475" x2="40.3155" y2="1.3005" layer="21"/>
<rectangle x1="40.7745" y1="1.1475" x2="41.3865" y2="1.3005" layer="21"/>
<rectangle x1="41.8455" y1="1.1475" x2="42.6105" y2="1.3005" layer="21"/>
<rectangle x1="8.4915" y1="1.3005" x2="9.4095" y2="1.4535" layer="21"/>
<rectangle x1="10.1745" y1="1.3005" x2="11.0925" y2="1.4535" layer="21"/>
<rectangle x1="12.0105" y1="1.3005" x2="12.7755" y2="1.4535" layer="21"/>
<rectangle x1="13.3875" y1="1.3005" x2="13.9995" y2="1.4535" layer="21"/>
<rectangle x1="14.4585" y1="1.3005" x2="15.0705" y2="1.4535" layer="21"/>
<rectangle x1="15.8355" y1="1.3005" x2="16.2945" y2="1.4535" layer="21"/>
<rectangle x1="17.0595" y1="1.3005" x2="17.6715" y2="1.4535" layer="21"/>
<rectangle x1="18.5895" y1="1.3005" x2="19.0485" y2="1.4535" layer="21"/>
<rectangle x1="20.8845" y1="1.3005" x2="21.6495" y2="1.4535" layer="21"/>
<rectangle x1="22.5675" y1="1.3005" x2="23.3325" y2="1.4535" layer="21"/>
<rectangle x1="23.9445" y1="1.3005" x2="24.5565" y2="1.4535" layer="21"/>
<rectangle x1="25.4745" y1="1.3005" x2="25.9335" y2="1.4535" layer="21"/>
<rectangle x1="26.5455" y1="1.3005" x2="27.1575" y2="1.4535" layer="21"/>
<rectangle x1="27.7695" y1="1.3005" x2="28.3815" y2="1.4535" layer="21"/>
<rectangle x1="28.9935" y1="1.3005" x2="29.6055" y2="1.4535" layer="21"/>
<rectangle x1="31.9005" y1="1.3005" x2="32.8185" y2="1.4535" layer="21"/>
<rectangle x1="33.4305" y1="1.3005" x2="34.3485" y2="1.4535" layer="21"/>
<rectangle x1="34.9605" y1="1.3005" x2="35.4195" y2="1.4535" layer="21"/>
<rectangle x1="35.8785" y1="1.3005" x2="36.4905" y2="1.4535" layer="21"/>
<rectangle x1="37.1025" y1="1.3005" x2="37.7145" y2="1.4535" layer="21"/>
<rectangle x1="38.4795" y1="1.3005" x2="39.0915" y2="1.4535" layer="21"/>
<rectangle x1="39.7035" y1="1.3005" x2="40.3155" y2="1.4535" layer="21"/>
<rectangle x1="40.7745" y1="1.3005" x2="41.3865" y2="1.4535" layer="21"/>
<rectangle x1="41.8455" y1="1.3005" x2="42.4575" y2="1.4535" layer="21"/>
<rectangle x1="8.3385" y1="1.4535" x2="9.1035" y2="1.6065" layer="21"/>
<rectangle x1="10.4805" y1="1.4535" x2="11.2455" y2="1.6065" layer="21"/>
<rectangle x1="12.0105" y1="1.4535" x2="12.6225" y2="1.6065" layer="21"/>
<rectangle x1="13.5405" y1="1.4535" x2="14.1525" y2="1.6065" layer="21"/>
<rectangle x1="14.3055" y1="1.4535" x2="14.9175" y2="1.6065" layer="21"/>
<rectangle x1="17.0595" y1="1.4535" x2="17.6715" y2="1.6065" layer="21"/>
<rectangle x1="18.5895" y1="1.4535" x2="19.0485" y2="1.6065" layer="21"/>
<rectangle x1="20.8845" y1="1.4535" x2="21.4965" y2="1.6065" layer="21"/>
<rectangle x1="22.8735" y1="1.4535" x2="23.4855" y2="1.6065" layer="21"/>
<rectangle x1="23.9445" y1="1.4535" x2="24.5565" y2="1.6065" layer="21"/>
<rectangle x1="25.4745" y1="1.4535" x2="25.9335" y2="1.6065" layer="21"/>
<rectangle x1="26.3925" y1="1.4535" x2="27.0045" y2="1.6065" layer="21"/>
<rectangle x1="27.9225" y1="1.4535" x2="28.5345" y2="1.6065" layer="21"/>
<rectangle x1="28.9935" y1="1.4535" x2="29.6055" y2="1.6065" layer="21"/>
<rectangle x1="31.7475" y1="1.4535" x2="32.5125" y2="1.6065" layer="21"/>
<rectangle x1="33.7365" y1="1.4535" x2="34.5015" y2="1.6065" layer="21"/>
<rectangle x1="34.9605" y1="1.4535" x2="35.4195" y2="1.6065" layer="21"/>
<rectangle x1="35.7255" y1="1.4535" x2="36.3375" y2="1.6065" layer="21"/>
<rectangle x1="37.2555" y1="1.4535" x2="37.8675" y2="1.6065" layer="21"/>
<rectangle x1="38.3265" y1="1.4535" x2="39.0915" y2="1.6065" layer="21"/>
<rectangle x1="39.8565" y1="1.4535" x2="40.4685" y2="1.6065" layer="21"/>
<rectangle x1="40.7745" y1="1.4535" x2="41.3865" y2="1.6065" layer="21"/>
<rectangle x1="41.6925" y1="1.4535" x2="42.4575" y2="1.6065" layer="21"/>
<rectangle x1="8.3385" y1="1.6065" x2="9.1035" y2="1.7595" layer="21"/>
<rectangle x1="10.6335" y1="1.6065" x2="11.2455" y2="1.7595" layer="21"/>
<rectangle x1="12.0105" y1="1.6065" x2="12.6225" y2="1.7595" layer="21"/>
<rectangle x1="13.5405" y1="1.6065" x2="14.1525" y2="1.7595" layer="21"/>
<rectangle x1="14.3055" y1="1.6065" x2="14.9175" y2="1.7595" layer="21"/>
<rectangle x1="17.0595" y1="1.6065" x2="17.6715" y2="1.7595" layer="21"/>
<rectangle x1="18.5895" y1="1.6065" x2="19.0485" y2="1.7595" layer="21"/>
<rectangle x1="20.8845" y1="1.6065" x2="21.3435" y2="1.7595" layer="21"/>
<rectangle x1="22.8735" y1="1.6065" x2="23.4855" y2="1.7595" layer="21"/>
<rectangle x1="23.9445" y1="1.6065" x2="24.5565" y2="1.7595" layer="21"/>
<rectangle x1="25.4745" y1="1.6065" x2="26.0865" y2="1.7595" layer="21"/>
<rectangle x1="26.3925" y1="1.6065" x2="27.0045" y2="1.7595" layer="21"/>
<rectangle x1="27.9225" y1="1.6065" x2="28.5345" y2="1.7595" layer="21"/>
<rectangle x1="28.9935" y1="1.6065" x2="29.6055" y2="1.7595" layer="21"/>
<rectangle x1="31.5945" y1="1.6065" x2="32.3595" y2="1.7595" layer="21"/>
<rectangle x1="33.8895" y1="1.6065" x2="34.5015" y2="1.7595" layer="21"/>
<rectangle x1="34.9605" y1="1.6065" x2="35.4195" y2="1.7595" layer="21"/>
<rectangle x1="35.7255" y1="1.6065" x2="36.3375" y2="1.7595" layer="21"/>
<rectangle x1="37.2555" y1="1.6065" x2="37.8675" y2="1.7595" layer="21"/>
<rectangle x1="38.3265" y1="1.6065" x2="38.9385" y2="1.7595" layer="21"/>
<rectangle x1="40.7745" y1="1.6065" x2="41.3865" y2="1.7595" layer="21"/>
<rectangle x1="41.5395" y1="1.6065" x2="42.3045" y2="1.7595" layer="21"/>
<rectangle x1="8.3385" y1="1.7595" x2="8.9505" y2="1.9125" layer="21"/>
<rectangle x1="10.6335" y1="1.7595" x2="11.3985" y2="1.9125" layer="21"/>
<rectangle x1="12.0105" y1="1.7595" x2="12.6225" y2="1.9125" layer="21"/>
<rectangle x1="13.5405" y1="1.7595" x2="14.1525" y2="1.9125" layer="21"/>
<rectangle x1="14.3055" y1="1.7595" x2="15.5295" y2="1.9125" layer="21"/>
<rectangle x1="17.0595" y1="1.7595" x2="17.6715" y2="1.9125" layer="21"/>
<rectangle x1="18.5895" y1="1.7595" x2="19.2015" y2="1.9125" layer="21"/>
<rectangle x1="22.8735" y1="1.7595" x2="23.4855" y2="1.9125" layer="21"/>
<rectangle x1="23.9445" y1="1.7595" x2="24.5565" y2="1.9125" layer="21"/>
<rectangle x1="25.4745" y1="1.7595" x2="26.0865" y2="1.9125" layer="21"/>
<rectangle x1="26.3925" y1="1.7595" x2="27.0045" y2="1.9125" layer="21"/>
<rectangle x1="27.9225" y1="1.7595" x2="28.5345" y2="1.9125" layer="21"/>
<rectangle x1="28.9935" y1="1.7595" x2="29.6055" y2="1.9125" layer="21"/>
<rectangle x1="31.5945" y1="1.7595" x2="32.2065" y2="1.9125" layer="21"/>
<rectangle x1="34.1955" y1="1.7595" x2="34.3485" y2="1.9125" layer="21"/>
<rectangle x1="34.9605" y1="1.7595" x2="35.4195" y2="1.9125" layer="21"/>
<rectangle x1="35.7255" y1="1.7595" x2="36.3375" y2="1.9125" layer="21"/>
<rectangle x1="37.2555" y1="1.7595" x2="37.8675" y2="1.9125" layer="21"/>
<rectangle x1="38.3265" y1="1.7595" x2="38.9385" y2="1.9125" layer="21"/>
<rectangle x1="40.7745" y1="1.7595" x2="42.1515" y2="1.9125" layer="21"/>
<rectangle x1="8.1855" y1="1.9125" x2="8.9505" y2="2.0655" layer="21"/>
<rectangle x1="10.7865" y1="1.9125" x2="11.3985" y2="2.0655" layer="21"/>
<rectangle x1="12.0105" y1="1.9125" x2="12.6225" y2="2.0655" layer="21"/>
<rectangle x1="13.5405" y1="1.9125" x2="14.1525" y2="2.0655" layer="21"/>
<rectangle x1="14.3055" y1="1.9125" x2="16.6005" y2="2.0655" layer="21"/>
<rectangle x1="17.0595" y1="1.9125" x2="17.6715" y2="2.0655" layer="21"/>
<rectangle x1="18.5895" y1="1.9125" x2="19.2015" y2="2.0655" layer="21"/>
<rectangle x1="22.5675" y1="1.9125" x2="23.4855" y2="2.0655" layer="21"/>
<rectangle x1="23.9445" y1="1.9125" x2="24.5565" y2="2.0655" layer="21"/>
<rectangle x1="25.4745" y1="1.9125" x2="26.0865" y2="2.0655" layer="21"/>
<rectangle x1="26.3925" y1="1.9125" x2="27.0045" y2="2.0655" layer="21"/>
<rectangle x1="27.9225" y1="1.9125" x2="28.5345" y2="2.0655" layer="21"/>
<rectangle x1="28.9935" y1="1.9125" x2="29.6055" y2="2.0655" layer="21"/>
<rectangle x1="31.5945" y1="1.9125" x2="32.2065" y2="2.0655" layer="21"/>
<rectangle x1="34.9605" y1="1.9125" x2="35.5725" y2="2.0655" layer="21"/>
<rectangle x1="35.7255" y1="1.9125" x2="36.3375" y2="2.0655" layer="21"/>
<rectangle x1="37.2555" y1="1.9125" x2="37.8675" y2="2.0655" layer="21"/>
<rectangle x1="38.3265" y1="1.9125" x2="38.9385" y2="2.0655" layer="21"/>
<rectangle x1="40.7745" y1="1.9125" x2="41.9985" y2="2.0655" layer="21"/>
<rectangle x1="8.1855" y1="2.0655" x2="8.7975" y2="2.2185" layer="21"/>
<rectangle x1="10.7865" y1="2.0655" x2="11.3985" y2="2.2185" layer="21"/>
<rectangle x1="12.0105" y1="2.0655" x2="12.6225" y2="2.2185" layer="21"/>
<rectangle x1="13.5405" y1="2.0655" x2="14.1525" y2="2.2185" layer="21"/>
<rectangle x1="14.3055" y1="2.0655" x2="16.4475" y2="2.2185" layer="21"/>
<rectangle x1="17.0595" y1="2.0655" x2="17.6715" y2="2.2185" layer="21"/>
<rectangle x1="18.4365" y1="2.0655" x2="19.0485" y2="2.2185" layer="21"/>
<rectangle x1="22.2615" y1="2.0655" x2="23.3325" y2="2.2185" layer="21"/>
<rectangle x1="23.9445" y1="2.0655" x2="24.5565" y2="2.2185" layer="21"/>
<rectangle x1="25.3215" y1="2.0655" x2="25.9335" y2="2.2185" layer="21"/>
<rectangle x1="26.3925" y1="2.0655" x2="27.0045" y2="2.2185" layer="21"/>
<rectangle x1="27.9225" y1="2.0655" x2="28.5345" y2="2.2185" layer="21"/>
<rectangle x1="28.9935" y1="2.0655" x2="29.6055" y2="2.2185" layer="21"/>
<rectangle x1="31.5945" y1="2.0655" x2="32.0535" y2="2.2185" layer="21"/>
<rectangle x1="34.9605" y1="2.0655" x2="35.5725" y2="2.2185" layer="21"/>
<rectangle x1="35.7255" y1="2.0655" x2="36.3375" y2="2.2185" layer="21"/>
<rectangle x1="37.2555" y1="2.0655" x2="37.8675" y2="2.2185" layer="21"/>
<rectangle x1="38.3265" y1="2.0655" x2="38.9385" y2="2.2185" layer="21"/>
<rectangle x1="40.7745" y1="2.0655" x2="41.9985" y2="2.2185" layer="21"/>
<rectangle x1="8.1855" y1="2.2185" x2="8.7975" y2="2.3715" layer="21"/>
<rectangle x1="10.7865" y1="2.2185" x2="11.3985" y2="2.3715" layer="21"/>
<rectangle x1="12.0105" y1="2.2185" x2="12.6225" y2="2.3715" layer="21"/>
<rectangle x1="13.5405" y1="2.2185" x2="14.1525" y2="2.3715" layer="21"/>
<rectangle x1="14.3055" y1="2.2185" x2="16.4475" y2="2.3715" layer="21"/>
<rectangle x1="17.0595" y1="2.2185" x2="17.6715" y2="2.3715" layer="21"/>
<rectangle x1="18.4365" y1="2.2185" x2="19.0485" y2="2.3715" layer="21"/>
<rectangle x1="21.8025" y1="2.2185" x2="23.3325" y2="2.3715" layer="21"/>
<rectangle x1="23.9445" y1="2.2185" x2="24.5565" y2="2.3715" layer="21"/>
<rectangle x1="25.3215" y1="2.2185" x2="25.9335" y2="2.3715" layer="21"/>
<rectangle x1="26.3925" y1="2.2185" x2="27.0045" y2="2.3715" layer="21"/>
<rectangle x1="27.9225" y1="2.2185" x2="28.5345" y2="2.3715" layer="21"/>
<rectangle x1="28.8405" y1="2.2185" x2="29.6055" y2="2.3715" layer="21"/>
<rectangle x1="31.5945" y1="2.2185" x2="32.0535" y2="2.3715" layer="21"/>
<rectangle x1="34.9605" y1="2.2185" x2="35.5725" y2="2.3715" layer="21"/>
<rectangle x1="35.7255" y1="2.2185" x2="36.3375" y2="2.3715" layer="21"/>
<rectangle x1="37.2555" y1="2.2185" x2="37.8675" y2="2.3715" layer="21"/>
<rectangle x1="38.3265" y1="2.2185" x2="38.9385" y2="2.3715" layer="21"/>
<rectangle x1="40.7745" y1="2.2185" x2="41.9985" y2="2.3715" layer="21"/>
<rectangle x1="8.1855" y1="2.3715" x2="8.7975" y2="2.5245" layer="21"/>
<rectangle x1="10.7865" y1="2.3715" x2="11.3985" y2="2.5245" layer="21"/>
<rectangle x1="12.0105" y1="2.3715" x2="12.6225" y2="2.5245" layer="21"/>
<rectangle x1="13.5405" y1="2.3715" x2="14.1525" y2="2.5245" layer="21"/>
<rectangle x1="14.3055" y1="2.3715" x2="14.9175" y2="2.5245" layer="21"/>
<rectangle x1="15.8355" y1="2.3715" x2="16.4475" y2="2.5245" layer="21"/>
<rectangle x1="17.0595" y1="2.3715" x2="17.6715" y2="2.5245" layer="21"/>
<rectangle x1="18.4365" y1="2.3715" x2="19.0485" y2="2.5245" layer="21"/>
<rectangle x1="21.4965" y1="2.3715" x2="23.0265" y2="2.5245" layer="21"/>
<rectangle x1="23.9445" y1="2.3715" x2="24.5565" y2="2.5245" layer="21"/>
<rectangle x1="25.3215" y1="2.3715" x2="25.9335" y2="2.5245" layer="21"/>
<rectangle x1="26.3925" y1="2.3715" x2="27.0045" y2="2.5245" layer="21"/>
<rectangle x1="27.9225" y1="2.3715" x2="28.5345" y2="2.5245" layer="21"/>
<rectangle x1="28.8405" y1="2.3715" x2="29.6055" y2="2.5245" layer="21"/>
<rectangle x1="31.5945" y1="2.3715" x2="32.0535" y2="2.5245" layer="21"/>
<rectangle x1="34.9605" y1="2.3715" x2="35.5725" y2="2.5245" layer="21"/>
<rectangle x1="35.7255" y1="2.3715" x2="36.3375" y2="2.5245" layer="21"/>
<rectangle x1="37.2555" y1="2.3715" x2="37.8675" y2="2.5245" layer="21"/>
<rectangle x1="38.3265" y1="2.3715" x2="38.9385" y2="2.5245" layer="21"/>
<rectangle x1="40.7745" y1="2.3715" x2="42.1515" y2="2.5245" layer="21"/>
<rectangle x1="8.1855" y1="2.5245" x2="8.7975" y2="2.6775" layer="21"/>
<rectangle x1="10.7865" y1="2.5245" x2="11.3985" y2="2.6775" layer="21"/>
<rectangle x1="12.0105" y1="2.5245" x2="12.7755" y2="2.6775" layer="21"/>
<rectangle x1="13.3875" y1="2.5245" x2="14.1525" y2="2.6775" layer="21"/>
<rectangle x1="14.3055" y1="2.5245" x2="14.9175" y2="2.6775" layer="21"/>
<rectangle x1="15.8355" y1="2.5245" x2="16.4475" y2="2.6775" layer="21"/>
<rectangle x1="17.0595" y1="2.5245" x2="17.8245" y2="2.6775" layer="21"/>
<rectangle x1="18.4365" y1="2.5245" x2="19.0485" y2="2.6775" layer="21"/>
<rectangle x1="21.1905" y1="2.5245" x2="22.7205" y2="2.6775" layer="21"/>
<rectangle x1="23.9445" y1="2.5245" x2="24.7095" y2="2.6775" layer="21"/>
<rectangle x1="25.3215" y1="2.5245" x2="25.9335" y2="2.6775" layer="21"/>
<rectangle x1="26.3925" y1="2.5245" x2="27.1575" y2="2.6775" layer="21"/>
<rectangle x1="27.7695" y1="2.5245" x2="28.5345" y2="2.6775" layer="21"/>
<rectangle x1="28.8405" y1="2.5245" x2="29.6055" y2="2.6775" layer="21"/>
<rectangle x1="31.5945" y1="2.5245" x2="32.0535" y2="2.6775" layer="21"/>
<rectangle x1="34.9605" y1="2.5245" x2="35.5725" y2="2.6775" layer="21"/>
<rectangle x1="35.7255" y1="2.5245" x2="36.4905" y2="2.6775" layer="21"/>
<rectangle x1="37.1025" y1="2.5245" x2="37.8675" y2="2.6775" layer="21"/>
<rectangle x1="38.4795" y1="2.5245" x2="38.9385" y2="2.6775" layer="21"/>
<rectangle x1="39.8565" y1="2.5245" x2="40.4685" y2="2.6775" layer="21"/>
<rectangle x1="40.7745" y1="2.5245" x2="41.3865" y2="2.6775" layer="21"/>
<rectangle x1="41.5395" y1="2.5245" x2="42.3045" y2="2.6775" layer="21"/>
<rectangle x1="8.1855" y1="2.6775" x2="8.7975" y2="2.8305" layer="21"/>
<rectangle x1="10.7865" y1="2.6775" x2="11.3985" y2="2.8305" layer="21"/>
<rectangle x1="12.0105" y1="2.6775" x2="12.7755" y2="2.8305" layer="21"/>
<rectangle x1="13.3875" y1="2.6775" x2="13.9995" y2="2.8305" layer="21"/>
<rectangle x1="14.4585" y1="2.6775" x2="15.0705" y2="2.8305" layer="21"/>
<rectangle x1="15.6825" y1="2.6775" x2="16.2945" y2="2.8305" layer="21"/>
<rectangle x1="17.0595" y1="2.6775" x2="17.8245" y2="2.8305" layer="21"/>
<rectangle x1="18.4365" y1="2.6775" x2="19.0485" y2="2.8305" layer="21"/>
<rectangle x1="21.0375" y1="2.6775" x2="22.2615" y2="2.8305" layer="21"/>
<rectangle x1="23.9445" y1="2.6775" x2="24.7095" y2="2.8305" layer="21"/>
<rectangle x1="25.3215" y1="2.6775" x2="25.9335" y2="2.8305" layer="21"/>
<rectangle x1="26.3925" y1="2.6775" x2="27.1575" y2="2.8305" layer="21"/>
<rectangle x1="27.7695" y1="2.6775" x2="28.5345" y2="2.8305" layer="21"/>
<rectangle x1="28.8405" y1="2.6775" x2="29.6055" y2="2.8305" layer="21"/>
<rectangle x1="31.5945" y1="2.6775" x2="32.0535" y2="2.8305" layer="21"/>
<rectangle x1="34.9605" y1="2.6775" x2="35.5725" y2="2.8305" layer="21"/>
<rectangle x1="35.7255" y1="2.6775" x2="36.4905" y2="2.8305" layer="21"/>
<rectangle x1="37.1025" y1="2.6775" x2="37.8675" y2="2.8305" layer="21"/>
<rectangle x1="38.4795" y1="2.6775" x2="39.0915" y2="2.8305" layer="21"/>
<rectangle x1="39.7035" y1="2.6775" x2="40.3155" y2="2.8305" layer="21"/>
<rectangle x1="40.7745" y1="2.6775" x2="41.3865" y2="2.8305" layer="21"/>
<rectangle x1="41.6925" y1="2.6775" x2="42.3045" y2="2.8305" layer="21"/>
<rectangle x1="8.1855" y1="2.8305" x2="8.7975" y2="2.9835" layer="21"/>
<rectangle x1="10.7865" y1="2.8305" x2="11.3985" y2="2.9835" layer="21"/>
<rectangle x1="12.0105" y1="2.8305" x2="13.9995" y2="2.9835" layer="21"/>
<rectangle x1="14.4585" y1="2.8305" x2="16.2945" y2="2.9835" layer="21"/>
<rectangle x1="17.0595" y1="2.8305" x2="19.0485" y2="2.9835" layer="21"/>
<rectangle x1="20.8845" y1="2.8305" x2="21.8025" y2="2.9835" layer="21"/>
<rectangle x1="23.9445" y1="2.8305" x2="25.9335" y2="2.9835" layer="21"/>
<rectangle x1="26.5455" y1="2.8305" x2="28.3815" y2="2.9835" layer="21"/>
<rectangle x1="28.8405" y1="2.8305" x2="29.7585" y2="2.9835" layer="21"/>
<rectangle x1="31.5945" y1="2.8305" x2="32.2065" y2="2.9835" layer="21"/>
<rectangle x1="34.9605" y1="2.8305" x2="35.5725" y2="2.9835" layer="21"/>
<rectangle x1="35.8785" y1="2.8305" x2="37.7145" y2="2.9835" layer="21"/>
<rectangle x1="38.6325" y1="2.8305" x2="40.3155" y2="2.9835" layer="21"/>
<rectangle x1="40.7745" y1="2.8305" x2="41.3865" y2="2.9835" layer="21"/>
<rectangle x1="41.6925" y1="2.8305" x2="42.4575" y2="2.9835" layer="21"/>
<rectangle x1="8.1855" y1="2.9835" x2="8.9505" y2="3.1365" layer="21"/>
<rectangle x1="10.6335" y1="2.9835" x2="11.3985" y2="3.1365" layer="21"/>
<rectangle x1="12.0105" y1="2.9835" x2="13.8465" y2="3.1365" layer="21"/>
<rectangle x1="14.6115" y1="2.9835" x2="16.1415" y2="3.1365" layer="21"/>
<rectangle x1="17.0595" y1="2.9835" x2="19.0485" y2="3.1365" layer="21"/>
<rectangle x1="20.8845" y1="2.9835" x2="21.4965" y2="3.1365" layer="21"/>
<rectangle x1="23.9445" y1="2.9835" x2="25.9335" y2="3.1365" layer="21"/>
<rectangle x1="26.6985" y1="2.9835" x2="28.2285" y2="3.1365" layer="21"/>
<rectangle x1="28.6875" y1="2.9835" x2="30.0645" y2="3.1365" layer="21"/>
<rectangle x1="31.5945" y1="2.9835" x2="32.2065" y2="3.1365" layer="21"/>
<rectangle x1="34.9605" y1="2.9835" x2="35.5725" y2="3.1365" layer="21"/>
<rectangle x1="36.0315" y1="2.9835" x2="37.5615" y2="3.1365" layer="21"/>
<rectangle x1="38.6325" y1="2.9835" x2="40.1625" y2="3.1365" layer="21"/>
<rectangle x1="40.7745" y1="2.9835" x2="41.3865" y2="3.1365" layer="21"/>
<rectangle x1="41.8455" y1="2.9835" x2="42.4575" y2="3.1365" layer="21"/>
<rectangle x1="8.3385" y1="3.1365" x2="8.9505" y2="3.2895" layer="21"/>
<rectangle x1="10.4805" y1="3.1365" x2="11.2455" y2="3.2895" layer="21"/>
<rectangle x1="12.0105" y1="3.1365" x2="12.4695" y2="3.2895" layer="21"/>
<rectangle x1="12.6225" y1="3.1365" x2="13.6935" y2="3.2895" layer="21"/>
<rectangle x1="14.9175" y1="3.1365" x2="15.9885" y2="3.2895" layer="21"/>
<rectangle x1="17.0595" y1="3.1365" x2="17.5185" y2="3.2895" layer="21"/>
<rectangle x1="17.6715" y1="3.1365" x2="18.8955" y2="3.2895" layer="21"/>
<rectangle x1="20.8845" y1="3.1365" x2="21.4965" y2="3.2895" layer="21"/>
<rectangle x1="23.9445" y1="3.1365" x2="25.7805" y2="3.2895" layer="21"/>
<rectangle x1="26.8515" y1="3.1365" x2="28.0755" y2="3.2895" layer="21"/>
<rectangle x1="28.6875" y1="3.1365" x2="30.0645" y2="3.2895" layer="21"/>
<rectangle x1="31.5945" y1="3.1365" x2="32.3595" y2="3.2895" layer="21"/>
<rectangle x1="33.8895" y1="3.1365" x2="34.5015" y2="3.2895" layer="21"/>
<rectangle x1="34.9605" y1="3.1365" x2="35.4195" y2="3.2895" layer="21"/>
<rectangle x1="36.1845" y1="3.1365" x2="37.4085" y2="3.2895" layer="21"/>
<rectangle x1="38.9385" y1="3.1365" x2="39.8565" y2="3.2895" layer="21"/>
<rectangle x1="40.7745" y1="3.1365" x2="41.3865" y2="3.2895" layer="21"/>
<rectangle x1="41.9985" y1="3.1365" x2="42.6105" y2="3.2895" layer="21"/>
<rectangle x1="8.3385" y1="3.2895" x2="9.1035" y2="3.4425" layer="21"/>
<rectangle x1="10.3275" y1="3.2895" x2="11.2455" y2="3.4425" layer="21"/>
<rectangle x1="20.8845" y1="3.2895" x2="21.4965" y2="3.4425" layer="21"/>
<rectangle x1="22.7205" y1="3.2895" x2="23.4855" y2="3.4425" layer="21"/>
<rectangle x1="23.9445" y1="3.2895" x2="24.5565" y2="3.4425" layer="21"/>
<rectangle x1="28.8405" y1="3.2895" x2="29.7585" y2="3.4425" layer="21"/>
<rectangle x1="31.7475" y1="3.2895" x2="32.5125" y2="3.4425" layer="21"/>
<rectangle x1="33.7365" y1="3.2895" x2="34.5015" y2="3.4425" layer="21"/>
<rectangle x1="34.9605" y1="3.2895" x2="35.4195" y2="3.4425" layer="21"/>
<rectangle x1="40.7745" y1="3.2895" x2="41.3865" y2="3.4425" layer="21"/>
<rectangle x1="42.3045" y1="3.2895" x2="42.4575" y2="3.4425" layer="21"/>
<rectangle x1="8.4915" y1="3.4425" x2="9.4095" y2="3.5955" layer="21"/>
<rectangle x1="10.1745" y1="3.4425" x2="11.0925" y2="3.5955" layer="21"/>
<rectangle x1="20.8845" y1="3.4425" x2="21.6495" y2="3.5955" layer="21"/>
<rectangle x1="22.5675" y1="3.4425" x2="23.3325" y2="3.5955" layer="21"/>
<rectangle x1="23.9445" y1="3.4425" x2="24.5565" y2="3.5955" layer="21"/>
<rectangle x1="28.9935" y1="3.4425" x2="29.6055" y2="3.5955" layer="21"/>
<rectangle x1="31.7475" y1="3.4425" x2="32.6655" y2="3.5955" layer="21"/>
<rectangle x1="33.4305" y1="3.4425" x2="34.3485" y2="3.5955" layer="21"/>
<rectangle x1="34.9605" y1="3.4425" x2="35.4195" y2="3.5955" layer="21"/>
<rectangle x1="40.7745" y1="3.4425" x2="41.3865" y2="3.5955" layer="21"/>
<rectangle x1="8.6445" y1="3.5955" x2="10.9395" y2="3.7485" layer="21"/>
<rectangle x1="21.0375" y1="3.5955" x2="23.3325" y2="3.7485" layer="21"/>
<rectangle x1="23.9445" y1="3.5955" x2="24.5565" y2="3.7485" layer="21"/>
<rectangle x1="28.9935" y1="3.5955" x2="29.6055" y2="3.7485" layer="21"/>
<rectangle x1="31.9005" y1="3.5955" x2="34.3485" y2="3.7485" layer="21"/>
<rectangle x1="34.9605" y1="3.5955" x2="35.4195" y2="3.7485" layer="21"/>
<rectangle x1="40.7745" y1="3.5955" x2="41.3865" y2="3.7485" layer="21"/>
<rectangle x1="8.7975" y1="3.7485" x2="10.7865" y2="3.9015" layer="21"/>
<rectangle x1="21.1905" y1="3.7485" x2="23.1795" y2="3.9015" layer="21"/>
<rectangle x1="23.9445" y1="3.7485" x2="24.4035" y2="3.9015" layer="21"/>
<rectangle x1="29.1465" y1="3.7485" x2="29.4525" y2="3.9015" layer="21"/>
<rectangle x1="32.0535" y1="3.7485" x2="34.1955" y2="3.9015" layer="21"/>
<rectangle x1="34.9605" y1="3.7485" x2="35.4195" y2="3.9015" layer="21"/>
<rectangle x1="40.7745" y1="3.7485" x2="41.2335" y2="3.9015" layer="21"/>
<rectangle x1="9.1035" y1="3.9015" x2="10.4805" y2="4.0545" layer="21"/>
<rectangle x1="21.3435" y1="3.9015" x2="22.8735" y2="4.0545" layer="21"/>
<rectangle x1="23.9445" y1="3.9015" x2="24.4035" y2="4.0545" layer="21"/>
<rectangle x1="32.3595" y1="3.9015" x2="33.8895" y2="4.0545" layer="21"/>
<rectangle x1="34.9605" y1="3.9015" x2="35.4195" y2="4.0545" layer="21"/>
<rectangle x1="40.7745" y1="3.9015" x2="41.2335" y2="4.0545" layer="21"/>
<rectangle x1="23.9445" y1="4.0545" x2="24.4035" y2="4.2075" layer="21"/>
<rectangle x1="34.9605" y1="4.0545" x2="35.4195" y2="4.2075" layer="21"/>
<rectangle x1="40.7745" y1="4.0545" x2="41.2335" y2="4.2075" layer="21"/>
<rectangle x1="31.1355" y1="5.7375" x2="31.4415" y2="5.8905" layer="21"/>
<rectangle x1="30.8295" y1="5.8905" x2="31.4415" y2="6.0435" layer="21"/>
<rectangle x1="30.5235" y1="6.0435" x2="31.4415" y2="6.1965" layer="21"/>
<rectangle x1="30.3705" y1="6.1965" x2="31.4415" y2="6.3495" layer="21"/>
<rectangle x1="30.0645" y1="6.3495" x2="31.4415" y2="6.5025" layer="21"/>
<rectangle x1="29.7585" y1="6.5025" x2="31.4415" y2="6.6555" layer="21"/>
<rectangle x1="29.6055" y1="6.6555" x2="31.4415" y2="6.8085" layer="21"/>
<rectangle x1="29.2995" y1="6.8085" x2="31.2885" y2="6.9615" layer="21"/>
<rectangle x1="28.9935" y1="6.9615" x2="31.2885" y2="7.1145" layer="21"/>
<rectangle x1="1.1475" y1="7.1145" x2="23.1795" y2="7.2675" layer="21"/>
<rectangle x1="28.6875" y1="7.1145" x2="48.7305" y2="7.2675" layer="21"/>
<rectangle x1="1.1475" y1="7.2675" x2="23.1795" y2="7.4205" layer="21"/>
<rectangle x1="28.3815" y1="7.2675" x2="48.7305" y2="7.4205" layer="21"/>
<rectangle x1="1.1475" y1="7.4205" x2="23.1795" y2="7.5735" layer="21"/>
<rectangle x1="28.2285" y1="7.4205" x2="48.7305" y2="7.5735" layer="21"/>
<rectangle x1="1.1475" y1="7.5735" x2="23.1795" y2="7.7265" layer="21"/>
<rectangle x1="27.9225" y1="7.5735" x2="48.7305" y2="7.7265" layer="21"/>
<rectangle x1="1.1475" y1="7.7265" x2="23.1795" y2="7.8795" layer="21"/>
<rectangle x1="27.6165" y1="7.7265" x2="48.7305" y2="7.8795" layer="21"/>
<rectangle x1="1.1475" y1="7.8795" x2="23.1795" y2="8.0325" layer="21"/>
<rectangle x1="27.3105" y1="7.8795" x2="48.7305" y2="8.0325" layer="21"/>
<rectangle x1="1.1475" y1="8.0325" x2="23.1795" y2="8.1855" layer="21"/>
<rectangle x1="27.1575" y1="8.0325" x2="48.7305" y2="8.1855" layer="21"/>
<rectangle x1="1.1475" y1="8.1855" x2="23.1795" y2="8.3385" layer="21"/>
<rectangle x1="26.8515" y1="8.1855" x2="48.7305" y2="8.3385" layer="21"/>
<rectangle x1="1.1475" y1="8.3385" x2="23.1795" y2="8.4915" layer="21"/>
<rectangle x1="26.6985" y1="8.3385" x2="48.7305" y2="8.4915" layer="21"/>
<rectangle x1="1.1475" y1="8.4915" x2="23.1795" y2="8.6445" layer="21"/>
<rectangle x1="26.6985" y1="8.4915" x2="48.7305" y2="8.6445" layer="21"/>
<rectangle x1="1.1475" y1="8.6445" x2="23.1795" y2="8.7975" layer="21"/>
<rectangle x1="26.8515" y1="8.6445" x2="48.7305" y2="8.7975" layer="21"/>
<rectangle x1="1.1475" y1="8.7975" x2="23.1795" y2="8.9505" layer="21"/>
<rectangle x1="27.1575" y1="8.7975" x2="48.7305" y2="8.9505" layer="21"/>
<rectangle x1="1.1475" y1="8.9505" x2="23.1795" y2="9.1035" layer="21"/>
<rectangle x1="27.3105" y1="8.9505" x2="48.7305" y2="9.1035" layer="21"/>
<rectangle x1="1.1475" y1="9.1035" x2="23.1795" y2="9.2565" layer="21"/>
<rectangle x1="27.6165" y1="9.1035" x2="48.7305" y2="9.2565" layer="21"/>
<rectangle x1="1.1475" y1="9.2565" x2="23.1795" y2="9.4095" layer="21"/>
<rectangle x1="27.9225" y1="9.2565" x2="48.7305" y2="9.4095" layer="21"/>
<rectangle x1="1.1475" y1="9.4095" x2="23.1795" y2="9.5625" layer="21"/>
<rectangle x1="28.2285" y1="9.4095" x2="48.7305" y2="9.5625" layer="21"/>
<rectangle x1="1.1475" y1="9.5625" x2="23.1795" y2="9.7155" layer="21"/>
<rectangle x1="28.3815" y1="9.5625" x2="48.7305" y2="9.7155" layer="21"/>
<rectangle x1="1.1475" y1="9.7155" x2="23.1795" y2="9.8685" layer="21"/>
<rectangle x1="28.6875" y1="9.7155" x2="48.7305" y2="9.8685" layer="21"/>
<rectangle x1="1.1475" y1="9.8685" x2="4.0545" y2="10.0215" layer="21"/>
<rectangle x1="28.9935" y1="9.8685" x2="31.2885" y2="10.0215" layer="21"/>
<rectangle x1="45.8235" y1="9.8685" x2="48.7305" y2="10.0215" layer="21"/>
<rectangle x1="1.1475" y1="10.0215" x2="4.0545" y2="10.1745" layer="21"/>
<rectangle x1="29.2995" y1="10.0215" x2="31.4415" y2="10.1745" layer="21"/>
<rectangle x1="45.8235" y1="10.0215" x2="48.7305" y2="10.1745" layer="21"/>
<rectangle x1="1.1475" y1="10.1745" x2="4.0545" y2="10.3275" layer="21"/>
<rectangle x1="29.4525" y1="10.1745" x2="31.4415" y2="10.3275" layer="21"/>
<rectangle x1="45.8235" y1="10.1745" x2="48.7305" y2="10.3275" layer="21"/>
<rectangle x1="1.1475" y1="10.3275" x2="4.0545" y2="10.4805" layer="21"/>
<rectangle x1="29.7585" y1="10.3275" x2="31.4415" y2="10.4805" layer="21"/>
<rectangle x1="45.8235" y1="10.3275" x2="48.7305" y2="10.4805" layer="21"/>
<rectangle x1="1.1475" y1="10.4805" x2="4.0545" y2="10.6335" layer="21"/>
<rectangle x1="30.0645" y1="10.4805" x2="31.4415" y2="10.6335" layer="21"/>
<rectangle x1="45.8235" y1="10.4805" x2="48.7305" y2="10.6335" layer="21"/>
<rectangle x1="1.1475" y1="10.6335" x2="4.0545" y2="10.7865" layer="21"/>
<rectangle x1="30.3705" y1="10.6335" x2="31.4415" y2="10.7865" layer="21"/>
<rectangle x1="45.8235" y1="10.6335" x2="48.7305" y2="10.7865" layer="21"/>
<rectangle x1="1.1475" y1="10.7865" x2="4.0545" y2="10.9395" layer="21"/>
<rectangle x1="30.6765" y1="10.7865" x2="31.4415" y2="10.9395" layer="21"/>
<rectangle x1="45.8235" y1="10.7865" x2="48.7305" y2="10.9395" layer="21"/>
<rectangle x1="1.1475" y1="10.9395" x2="4.0545" y2="11.0925" layer="21"/>
<rectangle x1="30.9825" y1="10.9395" x2="31.4415" y2="11.0925" layer="21"/>
<rectangle x1="45.8235" y1="10.9395" x2="48.7305" y2="11.0925" layer="21"/>
<rectangle x1="1.1475" y1="11.0925" x2="4.0545" y2="11.2455" layer="21"/>
<rectangle x1="45.8235" y1="11.0925" x2="48.7305" y2="11.2455" layer="21"/>
<rectangle x1="1.1475" y1="11.2455" x2="4.0545" y2="11.3985" layer="21"/>
<rectangle x1="45.8235" y1="11.2455" x2="48.7305" y2="11.3985" layer="21"/>
<rectangle x1="1.1475" y1="11.3985" x2="4.0545" y2="11.5515" layer="21"/>
<rectangle x1="45.8235" y1="11.3985" x2="48.7305" y2="11.5515" layer="21"/>
<rectangle x1="1.1475" y1="11.5515" x2="4.0545" y2="11.7045" layer="21"/>
<rectangle x1="45.8235" y1="11.5515" x2="48.7305" y2="11.7045" layer="21"/>
<rectangle x1="1.1475" y1="11.7045" x2="4.0545" y2="11.8575" layer="21"/>
<rectangle x1="45.8235" y1="11.7045" x2="48.7305" y2="11.8575" layer="21"/>
<rectangle x1="1.1475" y1="11.8575" x2="4.0545" y2="12.0105" layer="21"/>
<rectangle x1="45.8235" y1="11.8575" x2="48.7305" y2="12.0105" layer="21"/>
<rectangle x1="1.1475" y1="12.0105" x2="4.0545" y2="12.1635" layer="21"/>
<rectangle x1="45.8235" y1="12.0105" x2="48.7305" y2="12.1635" layer="21"/>
<rectangle x1="1.1475" y1="12.1635" x2="4.0545" y2="12.3165" layer="21"/>
<rectangle x1="9.8685" y1="12.1635" x2="19.3545" y2="12.3165" layer="21"/>
<rectangle x1="30.3705" y1="12.1635" x2="39.7035" y2="12.3165" layer="21"/>
<rectangle x1="45.8235" y1="12.1635" x2="48.7305" y2="12.3165" layer="21"/>
<rectangle x1="1.1475" y1="12.3165" x2="4.0545" y2="12.4695" layer="21"/>
<rectangle x1="9.7155" y1="12.3165" x2="19.5075" y2="12.4695" layer="21"/>
<rectangle x1="30.2175" y1="12.3165" x2="39.8565" y2="12.4695" layer="21"/>
<rectangle x1="45.8235" y1="12.3165" x2="48.7305" y2="12.4695" layer="21"/>
<rectangle x1="1.1475" y1="12.4695" x2="4.0545" y2="12.6225" layer="21"/>
<rectangle x1="9.5625" y1="12.4695" x2="19.6605" y2="12.6225" layer="21"/>
<rectangle x1="30.0645" y1="12.4695" x2="40.0095" y2="12.6225" layer="21"/>
<rectangle x1="45.8235" y1="12.4695" x2="48.7305" y2="12.6225" layer="21"/>
<rectangle x1="1.1475" y1="12.6225" x2="4.0545" y2="12.7755" layer="21"/>
<rectangle x1="9.4095" y1="12.6225" x2="19.8135" y2="12.7755" layer="21"/>
<rectangle x1="29.9115" y1="12.6225" x2="40.1625" y2="12.7755" layer="21"/>
<rectangle x1="45.8235" y1="12.6225" x2="48.7305" y2="12.7755" layer="21"/>
<rectangle x1="1.1475" y1="12.7755" x2="4.0545" y2="12.9285" layer="21"/>
<rectangle x1="9.2565" y1="12.7755" x2="19.9665" y2="12.9285" layer="21"/>
<rectangle x1="29.7585" y1="12.7755" x2="40.3155" y2="12.9285" layer="21"/>
<rectangle x1="45.8235" y1="12.7755" x2="48.7305" y2="12.9285" layer="21"/>
<rectangle x1="1.1475" y1="12.9285" x2="4.0545" y2="13.0815" layer="21"/>
<rectangle x1="9.1035" y1="12.9285" x2="20.1195" y2="13.0815" layer="21"/>
<rectangle x1="29.6055" y1="12.9285" x2="40.4685" y2="13.0815" layer="21"/>
<rectangle x1="45.8235" y1="12.9285" x2="48.7305" y2="13.0815" layer="21"/>
<rectangle x1="1.1475" y1="13.0815" x2="4.0545" y2="13.2345" layer="21"/>
<rectangle x1="8.9505" y1="13.0815" x2="20.2725" y2="13.2345" layer="21"/>
<rectangle x1="29.4525" y1="13.0815" x2="40.6215" y2="13.2345" layer="21"/>
<rectangle x1="45.8235" y1="13.0815" x2="48.7305" y2="13.2345" layer="21"/>
<rectangle x1="1.1475" y1="13.2345" x2="4.0545" y2="13.3875" layer="21"/>
<rectangle x1="8.7975" y1="13.2345" x2="20.4255" y2="13.3875" layer="21"/>
<rectangle x1="29.2995" y1="13.2345" x2="40.7745" y2="13.3875" layer="21"/>
<rectangle x1="45.8235" y1="13.2345" x2="48.7305" y2="13.3875" layer="21"/>
<rectangle x1="1.1475" y1="13.3875" x2="4.0545" y2="13.5405" layer="21"/>
<rectangle x1="8.6445" y1="13.3875" x2="20.5785" y2="13.5405" layer="21"/>
<rectangle x1="29.1465" y1="13.3875" x2="40.9275" y2="13.5405" layer="21"/>
<rectangle x1="45.8235" y1="13.3875" x2="48.7305" y2="13.5405" layer="21"/>
<rectangle x1="1.1475" y1="13.5405" x2="4.0545" y2="13.6935" layer="21"/>
<rectangle x1="8.4915" y1="13.5405" x2="20.7315" y2="13.6935" layer="21"/>
<rectangle x1="28.9935" y1="13.5405" x2="41.0805" y2="13.6935" layer="21"/>
<rectangle x1="45.8235" y1="13.5405" x2="48.7305" y2="13.6935" layer="21"/>
<rectangle x1="1.1475" y1="13.6935" x2="4.0545" y2="13.8465" layer="21"/>
<rectangle x1="8.3385" y1="13.6935" x2="20.8845" y2="13.8465" layer="21"/>
<rectangle x1="28.8405" y1="13.6935" x2="41.2335" y2="13.8465" layer="21"/>
<rectangle x1="45.8235" y1="13.6935" x2="48.7305" y2="13.8465" layer="21"/>
<rectangle x1="1.1475" y1="13.8465" x2="4.0545" y2="13.9995" layer="21"/>
<rectangle x1="8.1855" y1="13.8465" x2="21.0375" y2="13.9995" layer="21"/>
<rectangle x1="28.6875" y1="13.8465" x2="41.3865" y2="13.9995" layer="21"/>
<rectangle x1="45.8235" y1="13.8465" x2="48.7305" y2="13.9995" layer="21"/>
<rectangle x1="1.1475" y1="13.9995" x2="4.0545" y2="14.1525" layer="21"/>
<rectangle x1="8.0325" y1="13.9995" x2="21.1905" y2="14.1525" layer="21"/>
<rectangle x1="28.5345" y1="13.9995" x2="41.5395" y2="14.1525" layer="21"/>
<rectangle x1="45.8235" y1="13.9995" x2="48.7305" y2="14.1525" layer="21"/>
<rectangle x1="1.1475" y1="14.1525" x2="4.0545" y2="14.3055" layer="21"/>
<rectangle x1="7.8795" y1="14.1525" x2="21.3435" y2="14.3055" layer="21"/>
<rectangle x1="28.3815" y1="14.1525" x2="41.6925" y2="14.3055" layer="21"/>
<rectangle x1="45.8235" y1="14.1525" x2="48.7305" y2="14.3055" layer="21"/>
<rectangle x1="1.1475" y1="14.3055" x2="4.0545" y2="14.4585" layer="21"/>
<rectangle x1="7.7265" y1="14.3055" x2="21.4965" y2="14.4585" layer="21"/>
<rectangle x1="28.2285" y1="14.3055" x2="41.8455" y2="14.4585" layer="21"/>
<rectangle x1="45.8235" y1="14.3055" x2="48.7305" y2="14.4585" layer="21"/>
<rectangle x1="1.1475" y1="14.4585" x2="4.0545" y2="14.6115" layer="21"/>
<rectangle x1="7.5735" y1="14.4585" x2="8.1855" y2="14.6115" layer="21"/>
<rectangle x1="8.3385" y1="14.4585" x2="21.6495" y2="14.6115" layer="21"/>
<rectangle x1="28.0755" y1="14.4585" x2="41.9985" y2="14.6115" layer="21"/>
<rectangle x1="45.8235" y1="14.4585" x2="48.7305" y2="14.6115" layer="21"/>
<rectangle x1="1.1475" y1="14.6115" x2="4.0545" y2="14.7645" layer="21"/>
<rectangle x1="7.4205" y1="14.6115" x2="8.0325" y2="14.7645" layer="21"/>
<rectangle x1="8.4915" y1="14.6115" x2="21.8025" y2="14.7645" layer="21"/>
<rectangle x1="27.9225" y1="14.6115" x2="42.1515" y2="14.7645" layer="21"/>
<rectangle x1="45.8235" y1="14.6115" x2="48.7305" y2="14.7645" layer="21"/>
<rectangle x1="1.1475" y1="14.7645" x2="4.0545" y2="14.9175" layer="21"/>
<rectangle x1="7.2675" y1="14.7645" x2="7.8795" y2="14.9175" layer="21"/>
<rectangle x1="8.6445" y1="14.7645" x2="21.9555" y2="14.9175" layer="21"/>
<rectangle x1="27.7695" y1="14.7645" x2="42.3045" y2="14.9175" layer="21"/>
<rectangle x1="45.8235" y1="14.7645" x2="48.7305" y2="14.9175" layer="21"/>
<rectangle x1="1.1475" y1="14.9175" x2="4.0545" y2="15.0705" layer="21"/>
<rectangle x1="7.1145" y1="14.9175" x2="7.7265" y2="15.0705" layer="21"/>
<rectangle x1="8.7975" y1="14.9175" x2="22.1085" y2="15.0705" layer="21"/>
<rectangle x1="27.6165" y1="14.9175" x2="42.4575" y2="15.0705" layer="21"/>
<rectangle x1="45.8235" y1="14.9175" x2="48.7305" y2="15.0705" layer="21"/>
<rectangle x1="1.1475" y1="15.0705" x2="4.0545" y2="15.2235" layer="21"/>
<rectangle x1="7.1145" y1="15.0705" x2="7.5735" y2="15.2235" layer="21"/>
<rectangle x1="8.9505" y1="15.0705" x2="22.2615" y2="15.2235" layer="21"/>
<rectangle x1="27.4635" y1="15.0705" x2="42.6105" y2="15.2235" layer="21"/>
<rectangle x1="45.8235" y1="15.0705" x2="48.7305" y2="15.2235" layer="21"/>
<rectangle x1="1.1475" y1="15.2235" x2="4.0545" y2="15.3765" layer="21"/>
<rectangle x1="6.9615" y1="15.2235" x2="7.4205" y2="15.3765" layer="21"/>
<rectangle x1="9.1035" y1="15.2235" x2="22.4145" y2="15.3765" layer="21"/>
<rectangle x1="27.3105" y1="15.2235" x2="42.7635" y2="15.3765" layer="21"/>
<rectangle x1="45.8235" y1="15.2235" x2="48.7305" y2="15.3765" layer="21"/>
<rectangle x1="1.1475" y1="15.3765" x2="4.0545" y2="15.5295" layer="21"/>
<rectangle x1="6.8085" y1="15.3765" x2="7.1145" y2="15.5295" layer="21"/>
<rectangle x1="9.2565" y1="15.3765" x2="22.5675" y2="15.5295" layer="21"/>
<rectangle x1="27.1575" y1="15.3765" x2="42.9165" y2="15.5295" layer="21"/>
<rectangle x1="45.8235" y1="15.3765" x2="48.7305" y2="15.5295" layer="21"/>
<rectangle x1="1.1475" y1="15.5295" x2="4.0545" y2="15.6825" layer="21"/>
<rectangle x1="6.6555" y1="15.5295" x2="6.9615" y2="15.6825" layer="21"/>
<rectangle x1="9.4095" y1="15.5295" x2="22.7205" y2="15.6825" layer="21"/>
<rectangle x1="27.0045" y1="15.5295" x2="43.0695" y2="15.6825" layer="21"/>
<rectangle x1="45.8235" y1="15.5295" x2="48.7305" y2="15.6825" layer="21"/>
<rectangle x1="1.1475" y1="15.6825" x2="4.0545" y2="15.8355" layer="21"/>
<rectangle x1="6.5025" y1="15.6825" x2="6.8085" y2="15.8355" layer="21"/>
<rectangle x1="9.5625" y1="15.6825" x2="22.8735" y2="15.8355" layer="21"/>
<rectangle x1="26.8515" y1="15.6825" x2="43.2225" y2="15.8355" layer="21"/>
<rectangle x1="45.8235" y1="15.6825" x2="48.7305" y2="15.8355" layer="21"/>
<rectangle x1="1.1475" y1="15.8355" x2="4.0545" y2="15.9885" layer="21"/>
<rectangle x1="6.3495" y1="15.8355" x2="6.6555" y2="15.9885" layer="21"/>
<rectangle x1="9.7155" y1="15.8355" x2="23.0265" y2="15.9885" layer="21"/>
<rectangle x1="26.6985" y1="15.8355" x2="43.5285" y2="15.9885" layer="21"/>
<rectangle x1="45.8235" y1="15.8355" x2="48.7305" y2="15.9885" layer="21"/>
<rectangle x1="1.1475" y1="15.9885" x2="4.0545" y2="16.1415" layer="21"/>
<rectangle x1="6.1965" y1="15.9885" x2="6.5025" y2="16.1415" layer="21"/>
<rectangle x1="9.8685" y1="15.9885" x2="23.1795" y2="16.1415" layer="21"/>
<rectangle x1="26.6985" y1="15.9885" x2="43.6815" y2="16.1415" layer="21"/>
<rectangle x1="45.8235" y1="15.9885" x2="48.7305" y2="16.1415" layer="21"/>
<rectangle x1="1.1475" y1="16.1415" x2="4.0545" y2="16.2945" layer="21"/>
<rectangle x1="6.1965" y1="16.1415" x2="6.3495" y2="16.2945" layer="21"/>
<rectangle x1="9.8685" y1="16.1415" x2="10.3275" y2="16.2945" layer="21"/>
<rectangle x1="19.0485" y1="16.1415" x2="23.1795" y2="16.2945" layer="21"/>
<rectangle x1="26.6985" y1="16.1415" x2="30.8295" y2="16.2945" layer="21"/>
<rectangle x1="39.5505" y1="16.1415" x2="43.6815" y2="16.2945" layer="21"/>
<rectangle x1="45.8235" y1="16.1415" x2="48.7305" y2="16.2945" layer="21"/>
<rectangle x1="1.1475" y1="16.2945" x2="4.0545" y2="16.4475" layer="21"/>
<rectangle x1="6.1965" y1="16.2945" x2="6.3495" y2="16.4475" layer="21"/>
<rectangle x1="9.8685" y1="16.2945" x2="10.3275" y2="16.4475" layer="21"/>
<rectangle x1="19.0485" y1="16.2945" x2="23.1795" y2="16.4475" layer="21"/>
<rectangle x1="26.6985" y1="16.2945" x2="30.8295" y2="16.4475" layer="21"/>
<rectangle x1="39.5505" y1="16.2945" x2="43.6815" y2="16.4475" layer="21"/>
<rectangle x1="45.8235" y1="16.2945" x2="48.7305" y2="16.4475" layer="21"/>
<rectangle x1="1.1475" y1="16.4475" x2="4.0545" y2="16.6005" layer="21"/>
<rectangle x1="6.1965" y1="16.4475" x2="6.3495" y2="16.6005" layer="21"/>
<rectangle x1="9.8685" y1="16.4475" x2="10.3275" y2="16.6005" layer="21"/>
<rectangle x1="19.0485" y1="16.4475" x2="23.1795" y2="16.6005" layer="21"/>
<rectangle x1="26.6985" y1="16.4475" x2="30.8295" y2="16.6005" layer="21"/>
<rectangle x1="39.5505" y1="16.4475" x2="43.6815" y2="16.6005" layer="21"/>
<rectangle x1="45.8235" y1="16.4475" x2="48.7305" y2="16.6005" layer="21"/>
<rectangle x1="1.1475" y1="16.6005" x2="4.0545" y2="16.7535" layer="21"/>
<rectangle x1="6.1965" y1="16.6005" x2="6.3495" y2="16.7535" layer="21"/>
<rectangle x1="9.8685" y1="16.6005" x2="10.3275" y2="16.7535" layer="21"/>
<rectangle x1="19.0485" y1="16.6005" x2="23.1795" y2="16.7535" layer="21"/>
<rectangle x1="26.6985" y1="16.6005" x2="30.8295" y2="16.7535" layer="21"/>
<rectangle x1="39.5505" y1="16.6005" x2="43.6815" y2="16.7535" layer="21"/>
<rectangle x1="45.8235" y1="16.6005" x2="48.7305" y2="16.7535" layer="21"/>
<rectangle x1="1.1475" y1="16.7535" x2="4.0545" y2="16.9065" layer="21"/>
<rectangle x1="6.1965" y1="16.7535" x2="6.3495" y2="16.9065" layer="21"/>
<rectangle x1="9.8685" y1="16.7535" x2="10.3275" y2="16.9065" layer="21"/>
<rectangle x1="19.0485" y1="16.7535" x2="23.1795" y2="16.9065" layer="21"/>
<rectangle x1="26.6985" y1="16.7535" x2="30.8295" y2="16.9065" layer="21"/>
<rectangle x1="39.5505" y1="16.7535" x2="43.6815" y2="16.9065" layer="21"/>
<rectangle x1="45.8235" y1="16.7535" x2="48.7305" y2="16.9065" layer="21"/>
<rectangle x1="1.1475" y1="16.9065" x2="4.0545" y2="17.0595" layer="21"/>
<rectangle x1="6.1965" y1="16.9065" x2="6.3495" y2="17.0595" layer="21"/>
<rectangle x1="9.8685" y1="16.9065" x2="10.3275" y2="17.0595" layer="21"/>
<rectangle x1="19.0485" y1="16.9065" x2="23.1795" y2="17.0595" layer="21"/>
<rectangle x1="26.6985" y1="16.9065" x2="30.8295" y2="17.0595" layer="21"/>
<rectangle x1="39.5505" y1="16.9065" x2="43.6815" y2="17.0595" layer="21"/>
<rectangle x1="45.8235" y1="16.9065" x2="48.7305" y2="17.0595" layer="21"/>
<rectangle x1="1.1475" y1="17.0595" x2="4.0545" y2="17.2125" layer="21"/>
<rectangle x1="6.1965" y1="17.0595" x2="6.3495" y2="17.2125" layer="21"/>
<rectangle x1="9.8685" y1="17.0595" x2="10.3275" y2="17.2125" layer="21"/>
<rectangle x1="19.0485" y1="17.0595" x2="23.1795" y2="17.2125" layer="21"/>
<rectangle x1="26.6985" y1="17.0595" x2="30.8295" y2="17.2125" layer="21"/>
<rectangle x1="39.5505" y1="17.0595" x2="43.6815" y2="17.2125" layer="21"/>
<rectangle x1="45.8235" y1="17.0595" x2="48.7305" y2="17.2125" layer="21"/>
<rectangle x1="1.1475" y1="17.2125" x2="4.0545" y2="17.3655" layer="21"/>
<rectangle x1="6.1965" y1="17.2125" x2="6.3495" y2="17.3655" layer="21"/>
<rectangle x1="9.8685" y1="17.2125" x2="10.3275" y2="17.3655" layer="21"/>
<rectangle x1="19.0485" y1="17.2125" x2="23.1795" y2="17.3655" layer="21"/>
<rectangle x1="26.6985" y1="17.2125" x2="30.8295" y2="17.3655" layer="21"/>
<rectangle x1="39.5505" y1="17.2125" x2="43.6815" y2="17.3655" layer="21"/>
<rectangle x1="45.8235" y1="17.2125" x2="48.7305" y2="17.3655" layer="21"/>
<rectangle x1="1.1475" y1="17.3655" x2="4.0545" y2="17.5185" layer="21"/>
<rectangle x1="6.1965" y1="17.3655" x2="6.3495" y2="17.5185" layer="21"/>
<rectangle x1="9.8685" y1="17.3655" x2="10.3275" y2="17.5185" layer="21"/>
<rectangle x1="19.0485" y1="17.3655" x2="23.1795" y2="17.5185" layer="21"/>
<rectangle x1="26.6985" y1="17.3655" x2="30.8295" y2="17.5185" layer="21"/>
<rectangle x1="39.5505" y1="17.3655" x2="43.6815" y2="17.5185" layer="21"/>
<rectangle x1="45.8235" y1="17.3655" x2="48.7305" y2="17.5185" layer="21"/>
<rectangle x1="1.1475" y1="17.5185" x2="4.0545" y2="17.6715" layer="21"/>
<rectangle x1="6.1965" y1="17.5185" x2="6.3495" y2="17.6715" layer="21"/>
<rectangle x1="9.8685" y1="17.5185" x2="10.3275" y2="17.6715" layer="21"/>
<rectangle x1="19.0485" y1="17.5185" x2="23.1795" y2="17.6715" layer="21"/>
<rectangle x1="26.6985" y1="17.5185" x2="30.8295" y2="17.6715" layer="21"/>
<rectangle x1="39.5505" y1="17.5185" x2="43.6815" y2="17.6715" layer="21"/>
<rectangle x1="45.8235" y1="17.5185" x2="48.7305" y2="17.6715" layer="21"/>
<rectangle x1="1.1475" y1="17.6715" x2="4.0545" y2="17.8245" layer="21"/>
<rectangle x1="6.1965" y1="17.6715" x2="6.3495" y2="17.8245" layer="21"/>
<rectangle x1="9.8685" y1="17.6715" x2="10.3275" y2="17.8245" layer="21"/>
<rectangle x1="19.0485" y1="17.6715" x2="23.1795" y2="17.8245" layer="21"/>
<rectangle x1="26.6985" y1="17.6715" x2="30.8295" y2="17.8245" layer="21"/>
<rectangle x1="39.5505" y1="17.6715" x2="43.6815" y2="17.8245" layer="21"/>
<rectangle x1="45.8235" y1="17.6715" x2="48.7305" y2="17.8245" layer="21"/>
<rectangle x1="1.1475" y1="17.8245" x2="4.0545" y2="17.9775" layer="21"/>
<rectangle x1="6.1965" y1="17.8245" x2="6.3495" y2="17.9775" layer="21"/>
<rectangle x1="9.8685" y1="17.8245" x2="10.3275" y2="17.9775" layer="21"/>
<rectangle x1="19.0485" y1="17.8245" x2="23.1795" y2="17.9775" layer="21"/>
<rectangle x1="26.6985" y1="17.8245" x2="30.8295" y2="17.9775" layer="21"/>
<rectangle x1="39.5505" y1="17.8245" x2="43.6815" y2="17.9775" layer="21"/>
<rectangle x1="45.8235" y1="17.8245" x2="48.7305" y2="17.9775" layer="21"/>
<rectangle x1="1.1475" y1="17.9775" x2="4.0545" y2="18.1305" layer="21"/>
<rectangle x1="6.1965" y1="17.9775" x2="6.3495" y2="18.1305" layer="21"/>
<rectangle x1="9.8685" y1="17.9775" x2="10.3275" y2="18.1305" layer="21"/>
<rectangle x1="19.0485" y1="17.9775" x2="23.1795" y2="18.1305" layer="21"/>
<rectangle x1="26.6985" y1="17.9775" x2="30.8295" y2="18.1305" layer="21"/>
<rectangle x1="39.5505" y1="17.9775" x2="43.6815" y2="18.1305" layer="21"/>
<rectangle x1="45.8235" y1="17.9775" x2="48.7305" y2="18.1305" layer="21"/>
<rectangle x1="1.1475" y1="18.1305" x2="4.0545" y2="18.2835" layer="21"/>
<rectangle x1="6.1965" y1="18.1305" x2="6.3495" y2="18.2835" layer="21"/>
<rectangle x1="9.8685" y1="18.1305" x2="10.3275" y2="18.2835" layer="21"/>
<rectangle x1="19.0485" y1="18.1305" x2="23.1795" y2="18.2835" layer="21"/>
<rectangle x1="26.6985" y1="18.1305" x2="30.8295" y2="18.2835" layer="21"/>
<rectangle x1="39.5505" y1="18.1305" x2="43.6815" y2="18.2835" layer="21"/>
<rectangle x1="45.8235" y1="18.1305" x2="48.7305" y2="18.2835" layer="21"/>
<rectangle x1="1.1475" y1="18.2835" x2="4.0545" y2="18.4365" layer="21"/>
<rectangle x1="6.1965" y1="18.2835" x2="6.3495" y2="18.4365" layer="21"/>
<rectangle x1="10.0215" y1="18.2835" x2="10.3275" y2="18.4365" layer="21"/>
<rectangle x1="19.0485" y1="18.2835" x2="23.1795" y2="18.4365" layer="21"/>
<rectangle x1="26.6985" y1="18.2835" x2="30.8295" y2="18.4365" layer="21"/>
<rectangle x1="39.5505" y1="18.2835" x2="43.6815" y2="18.4365" layer="21"/>
<rectangle x1="45.8235" y1="18.2835" x2="48.7305" y2="18.4365" layer="21"/>
<rectangle x1="1.1475" y1="18.4365" x2="4.0545" y2="18.5895" layer="21"/>
<rectangle x1="6.1965" y1="18.4365" x2="6.3495" y2="18.5895" layer="21"/>
<rectangle x1="10.0215" y1="18.4365" x2="10.3275" y2="18.5895" layer="21"/>
<rectangle x1="19.0485" y1="18.4365" x2="23.1795" y2="18.5895" layer="21"/>
<rectangle x1="26.6985" y1="18.4365" x2="30.8295" y2="18.5895" layer="21"/>
<rectangle x1="39.5505" y1="18.4365" x2="43.6815" y2="18.5895" layer="21"/>
<rectangle x1="45.8235" y1="18.4365" x2="48.7305" y2="18.5895" layer="21"/>
<rectangle x1="1.1475" y1="18.5895" x2="4.0545" y2="18.7425" layer="21"/>
<rectangle x1="6.1965" y1="18.5895" x2="6.3495" y2="18.7425" layer="21"/>
<rectangle x1="10.0215" y1="18.5895" x2="10.3275" y2="18.7425" layer="21"/>
<rectangle x1="19.0485" y1="18.5895" x2="23.1795" y2="18.7425" layer="21"/>
<rectangle x1="26.6985" y1="18.5895" x2="30.8295" y2="18.7425" layer="21"/>
<rectangle x1="39.5505" y1="18.5895" x2="43.6815" y2="18.7425" layer="21"/>
<rectangle x1="45.8235" y1="18.5895" x2="48.7305" y2="18.7425" layer="21"/>
<rectangle x1="1.1475" y1="18.7425" x2="4.0545" y2="18.8955" layer="21"/>
<rectangle x1="6.1965" y1="18.7425" x2="6.3495" y2="18.8955" layer="21"/>
<rectangle x1="10.0215" y1="18.7425" x2="10.3275" y2="18.8955" layer="21"/>
<rectangle x1="19.0485" y1="18.7425" x2="23.1795" y2="18.8955" layer="21"/>
<rectangle x1="26.6985" y1="18.7425" x2="30.8295" y2="18.8955" layer="21"/>
<rectangle x1="39.5505" y1="18.7425" x2="43.6815" y2="18.8955" layer="21"/>
<rectangle x1="45.8235" y1="18.7425" x2="48.7305" y2="18.8955" layer="21"/>
<rectangle x1="1.1475" y1="18.8955" x2="4.0545" y2="19.0485" layer="21"/>
<rectangle x1="6.1965" y1="18.8955" x2="6.3495" y2="19.0485" layer="21"/>
<rectangle x1="10.0215" y1="18.8955" x2="10.3275" y2="19.0485" layer="21"/>
<rectangle x1="19.0485" y1="18.8955" x2="23.1795" y2="19.0485" layer="21"/>
<rectangle x1="26.6985" y1="18.8955" x2="30.8295" y2="19.0485" layer="21"/>
<rectangle x1="39.5505" y1="18.8955" x2="43.6815" y2="19.0485" layer="21"/>
<rectangle x1="45.8235" y1="18.8955" x2="48.7305" y2="19.0485" layer="21"/>
<rectangle x1="1.1475" y1="19.0485" x2="4.0545" y2="19.2015" layer="21"/>
<rectangle x1="6.1965" y1="19.0485" x2="6.3495" y2="19.2015" layer="21"/>
<rectangle x1="10.0215" y1="19.0485" x2="10.3275" y2="19.2015" layer="21"/>
<rectangle x1="19.0485" y1="19.0485" x2="23.1795" y2="19.2015" layer="21"/>
<rectangle x1="26.6985" y1="19.0485" x2="30.8295" y2="19.2015" layer="21"/>
<rectangle x1="39.5505" y1="19.0485" x2="43.6815" y2="19.2015" layer="21"/>
<rectangle x1="45.8235" y1="19.0485" x2="48.7305" y2="19.2015" layer="21"/>
<rectangle x1="1.1475" y1="19.2015" x2="4.0545" y2="19.3545" layer="21"/>
<rectangle x1="6.1965" y1="19.2015" x2="6.3495" y2="19.3545" layer="21"/>
<rectangle x1="10.0215" y1="19.2015" x2="10.3275" y2="19.3545" layer="21"/>
<rectangle x1="19.0485" y1="19.2015" x2="23.1795" y2="19.3545" layer="21"/>
<rectangle x1="26.6985" y1="19.2015" x2="30.8295" y2="19.3545" layer="21"/>
<rectangle x1="39.5505" y1="19.2015" x2="43.6815" y2="19.3545" layer="21"/>
<rectangle x1="45.8235" y1="19.2015" x2="48.7305" y2="19.3545" layer="21"/>
<rectangle x1="1.1475" y1="19.3545" x2="4.0545" y2="19.5075" layer="21"/>
<rectangle x1="6.1965" y1="19.3545" x2="6.3495" y2="19.5075" layer="21"/>
<rectangle x1="10.0215" y1="19.3545" x2="10.3275" y2="19.5075" layer="21"/>
<rectangle x1="19.0485" y1="19.3545" x2="23.1795" y2="19.5075" layer="21"/>
<rectangle x1="26.6985" y1="19.3545" x2="30.8295" y2="19.5075" layer="21"/>
<rectangle x1="39.5505" y1="19.3545" x2="43.6815" y2="19.5075" layer="21"/>
<rectangle x1="45.8235" y1="19.3545" x2="48.7305" y2="19.5075" layer="21"/>
<rectangle x1="1.1475" y1="19.5075" x2="4.0545" y2="19.6605" layer="21"/>
<rectangle x1="6.1965" y1="19.5075" x2="6.3495" y2="19.6605" layer="21"/>
<rectangle x1="10.0215" y1="19.5075" x2="10.3275" y2="19.6605" layer="21"/>
<rectangle x1="19.0485" y1="19.5075" x2="23.1795" y2="19.6605" layer="21"/>
<rectangle x1="26.6985" y1="19.5075" x2="30.8295" y2="19.6605" layer="21"/>
<rectangle x1="39.5505" y1="19.5075" x2="43.6815" y2="19.6605" layer="21"/>
<rectangle x1="45.8235" y1="19.5075" x2="48.7305" y2="19.6605" layer="21"/>
<rectangle x1="1.1475" y1="19.6605" x2="4.0545" y2="19.8135" layer="21"/>
<rectangle x1="6.1965" y1="19.6605" x2="6.3495" y2="19.8135" layer="21"/>
<rectangle x1="10.0215" y1="19.6605" x2="10.3275" y2="19.8135" layer="21"/>
<rectangle x1="19.0485" y1="19.6605" x2="23.1795" y2="19.8135" layer="21"/>
<rectangle x1="26.6985" y1="19.6605" x2="30.8295" y2="19.8135" layer="21"/>
<rectangle x1="39.5505" y1="19.6605" x2="43.6815" y2="19.8135" layer="21"/>
<rectangle x1="45.8235" y1="19.6605" x2="48.7305" y2="19.8135" layer="21"/>
<rectangle x1="1.1475" y1="19.8135" x2="4.0545" y2="19.9665" layer="21"/>
<rectangle x1="6.1965" y1="19.8135" x2="6.3495" y2="19.9665" layer="21"/>
<rectangle x1="10.0215" y1="19.8135" x2="10.3275" y2="19.9665" layer="21"/>
<rectangle x1="19.0485" y1="19.8135" x2="23.1795" y2="19.9665" layer="21"/>
<rectangle x1="26.6985" y1="19.8135" x2="30.8295" y2="19.9665" layer="21"/>
<rectangle x1="39.5505" y1="19.8135" x2="43.6815" y2="19.9665" layer="21"/>
<rectangle x1="45.8235" y1="19.8135" x2="48.7305" y2="19.9665" layer="21"/>
<rectangle x1="1.1475" y1="19.9665" x2="4.0545" y2="20.1195" layer="21"/>
<rectangle x1="6.1965" y1="19.9665" x2="6.3495" y2="20.1195" layer="21"/>
<rectangle x1="10.0215" y1="19.9665" x2="10.3275" y2="20.1195" layer="21"/>
<rectangle x1="19.0485" y1="19.9665" x2="23.1795" y2="20.1195" layer="21"/>
<rectangle x1="26.6985" y1="19.9665" x2="30.8295" y2="20.1195" layer="21"/>
<rectangle x1="39.5505" y1="19.9665" x2="43.6815" y2="20.1195" layer="21"/>
<rectangle x1="45.8235" y1="19.9665" x2="48.7305" y2="20.1195" layer="21"/>
<rectangle x1="1.1475" y1="20.1195" x2="4.0545" y2="20.2725" layer="21"/>
<rectangle x1="6.1965" y1="20.1195" x2="6.3495" y2="20.2725" layer="21"/>
<rectangle x1="10.0215" y1="20.1195" x2="10.3275" y2="20.2725" layer="21"/>
<rectangle x1="19.0485" y1="20.1195" x2="23.1795" y2="20.2725" layer="21"/>
<rectangle x1="26.6985" y1="20.1195" x2="30.8295" y2="20.2725" layer="21"/>
<rectangle x1="39.5505" y1="20.1195" x2="43.6815" y2="20.2725" layer="21"/>
<rectangle x1="45.8235" y1="20.1195" x2="48.7305" y2="20.2725" layer="21"/>
<rectangle x1="1.1475" y1="20.2725" x2="4.0545" y2="20.4255" layer="21"/>
<rectangle x1="6.1965" y1="20.2725" x2="6.3495" y2="20.4255" layer="21"/>
<rectangle x1="10.0215" y1="20.2725" x2="10.3275" y2="20.4255" layer="21"/>
<rectangle x1="19.0485" y1="20.2725" x2="23.1795" y2="20.4255" layer="21"/>
<rectangle x1="26.6985" y1="20.2725" x2="30.8295" y2="20.4255" layer="21"/>
<rectangle x1="39.5505" y1="20.2725" x2="43.6815" y2="20.4255" layer="21"/>
<rectangle x1="45.8235" y1="20.2725" x2="48.7305" y2="20.4255" layer="21"/>
<rectangle x1="1.1475" y1="20.4255" x2="4.0545" y2="20.5785" layer="21"/>
<rectangle x1="6.1965" y1="20.4255" x2="6.3495" y2="20.5785" layer="21"/>
<rectangle x1="10.0215" y1="20.4255" x2="10.3275" y2="20.5785" layer="21"/>
<rectangle x1="19.0485" y1="20.4255" x2="23.1795" y2="20.5785" layer="21"/>
<rectangle x1="26.6985" y1="20.4255" x2="30.8295" y2="20.5785" layer="21"/>
<rectangle x1="39.5505" y1="20.4255" x2="43.6815" y2="20.5785" layer="21"/>
<rectangle x1="45.8235" y1="20.4255" x2="48.7305" y2="20.5785" layer="21"/>
<rectangle x1="1.1475" y1="20.5785" x2="4.0545" y2="20.7315" layer="21"/>
<rectangle x1="6.1965" y1="20.5785" x2="6.3495" y2="20.7315" layer="21"/>
<rectangle x1="10.0215" y1="20.5785" x2="10.3275" y2="20.7315" layer="21"/>
<rectangle x1="19.0485" y1="20.5785" x2="23.1795" y2="20.7315" layer="21"/>
<rectangle x1="26.6985" y1="20.5785" x2="30.8295" y2="20.7315" layer="21"/>
<rectangle x1="39.5505" y1="20.5785" x2="43.6815" y2="20.7315" layer="21"/>
<rectangle x1="45.8235" y1="20.5785" x2="48.7305" y2="20.7315" layer="21"/>
<rectangle x1="1.1475" y1="20.7315" x2="4.0545" y2="20.8845" layer="21"/>
<rectangle x1="6.1965" y1="20.7315" x2="6.3495" y2="20.8845" layer="21"/>
<rectangle x1="10.0215" y1="20.7315" x2="10.3275" y2="20.8845" layer="21"/>
<rectangle x1="19.0485" y1="20.7315" x2="23.1795" y2="20.8845" layer="21"/>
<rectangle x1="26.6985" y1="20.7315" x2="30.8295" y2="20.8845" layer="21"/>
<rectangle x1="39.5505" y1="20.7315" x2="43.6815" y2="20.8845" layer="21"/>
<rectangle x1="45.8235" y1="20.7315" x2="48.7305" y2="20.8845" layer="21"/>
<rectangle x1="1.1475" y1="20.8845" x2="4.0545" y2="21.0375" layer="21"/>
<rectangle x1="6.1965" y1="20.8845" x2="6.3495" y2="21.0375" layer="21"/>
<rectangle x1="10.0215" y1="20.8845" x2="10.3275" y2="21.0375" layer="21"/>
<rectangle x1="19.0485" y1="20.8845" x2="23.1795" y2="21.0375" layer="21"/>
<rectangle x1="26.6985" y1="20.8845" x2="30.8295" y2="21.0375" layer="21"/>
<rectangle x1="39.5505" y1="20.8845" x2="43.6815" y2="21.0375" layer="21"/>
<rectangle x1="45.8235" y1="20.8845" x2="48.7305" y2="21.0375" layer="21"/>
<rectangle x1="1.1475" y1="21.0375" x2="4.0545" y2="21.1905" layer="21"/>
<rectangle x1="6.1965" y1="21.0375" x2="6.3495" y2="21.1905" layer="21"/>
<rectangle x1="10.0215" y1="21.0375" x2="10.3275" y2="21.1905" layer="21"/>
<rectangle x1="19.0485" y1="21.0375" x2="23.1795" y2="21.1905" layer="21"/>
<rectangle x1="26.6985" y1="21.0375" x2="30.8295" y2="21.1905" layer="21"/>
<rectangle x1="39.5505" y1="21.0375" x2="43.6815" y2="21.1905" layer="21"/>
<rectangle x1="45.8235" y1="21.0375" x2="48.7305" y2="21.1905" layer="21"/>
<rectangle x1="1.1475" y1="21.1905" x2="4.0545" y2="21.3435" layer="21"/>
<rectangle x1="6.1965" y1="21.1905" x2="6.3495" y2="21.3435" layer="21"/>
<rectangle x1="10.0215" y1="21.1905" x2="10.3275" y2="21.3435" layer="21"/>
<rectangle x1="19.0485" y1="21.1905" x2="23.1795" y2="21.3435" layer="21"/>
<rectangle x1="26.6985" y1="21.1905" x2="30.8295" y2="21.3435" layer="21"/>
<rectangle x1="39.5505" y1="21.1905" x2="43.6815" y2="21.3435" layer="21"/>
<rectangle x1="45.8235" y1="21.1905" x2="48.7305" y2="21.3435" layer="21"/>
<rectangle x1="1.1475" y1="21.3435" x2="4.0545" y2="21.4965" layer="21"/>
<rectangle x1="6.1965" y1="21.3435" x2="6.3495" y2="21.4965" layer="21"/>
<rectangle x1="10.0215" y1="21.3435" x2="10.3275" y2="21.4965" layer="21"/>
<rectangle x1="19.0485" y1="21.3435" x2="23.1795" y2="21.4965" layer="21"/>
<rectangle x1="26.6985" y1="21.3435" x2="30.8295" y2="21.4965" layer="21"/>
<rectangle x1="39.5505" y1="21.3435" x2="43.6815" y2="21.4965" layer="21"/>
<rectangle x1="45.8235" y1="21.3435" x2="48.7305" y2="21.4965" layer="21"/>
<rectangle x1="1.1475" y1="21.4965" x2="4.0545" y2="21.6495" layer="21"/>
<rectangle x1="6.1965" y1="21.4965" x2="6.3495" y2="21.6495" layer="21"/>
<rectangle x1="10.0215" y1="21.4965" x2="10.3275" y2="21.6495" layer="21"/>
<rectangle x1="19.0485" y1="21.4965" x2="23.1795" y2="21.6495" layer="21"/>
<rectangle x1="26.6985" y1="21.4965" x2="30.8295" y2="21.6495" layer="21"/>
<rectangle x1="39.5505" y1="21.4965" x2="43.6815" y2="21.6495" layer="21"/>
<rectangle x1="45.8235" y1="21.4965" x2="48.7305" y2="21.6495" layer="21"/>
<rectangle x1="1.1475" y1="21.6495" x2="4.0545" y2="21.8025" layer="21"/>
<rectangle x1="6.1965" y1="21.6495" x2="6.3495" y2="21.8025" layer="21"/>
<rectangle x1="10.0215" y1="21.6495" x2="10.3275" y2="21.8025" layer="21"/>
<rectangle x1="19.0485" y1="21.6495" x2="23.1795" y2="21.8025" layer="21"/>
<rectangle x1="26.6985" y1="21.6495" x2="30.8295" y2="21.8025" layer="21"/>
<rectangle x1="39.5505" y1="21.6495" x2="43.6815" y2="21.8025" layer="21"/>
<rectangle x1="45.8235" y1="21.6495" x2="48.7305" y2="21.8025" layer="21"/>
<rectangle x1="1.1475" y1="21.8025" x2="4.0545" y2="21.9555" layer="21"/>
<rectangle x1="6.1965" y1="21.8025" x2="6.3495" y2="21.9555" layer="21"/>
<rectangle x1="10.0215" y1="21.8025" x2="10.3275" y2="21.9555" layer="21"/>
<rectangle x1="19.0485" y1="21.8025" x2="23.1795" y2="21.9555" layer="21"/>
<rectangle x1="26.6985" y1="21.8025" x2="30.8295" y2="21.9555" layer="21"/>
<rectangle x1="39.5505" y1="21.8025" x2="43.6815" y2="21.9555" layer="21"/>
<rectangle x1="45.8235" y1="21.8025" x2="48.7305" y2="21.9555" layer="21"/>
<rectangle x1="1.1475" y1="21.9555" x2="4.0545" y2="22.1085" layer="21"/>
<rectangle x1="6.1965" y1="21.9555" x2="6.3495" y2="22.1085" layer="21"/>
<rectangle x1="10.0215" y1="21.9555" x2="10.3275" y2="22.1085" layer="21"/>
<rectangle x1="19.0485" y1="21.9555" x2="23.1795" y2="22.1085" layer="21"/>
<rectangle x1="26.6985" y1="21.9555" x2="30.8295" y2="22.1085" layer="21"/>
<rectangle x1="39.5505" y1="21.9555" x2="43.6815" y2="22.1085" layer="21"/>
<rectangle x1="45.8235" y1="21.9555" x2="48.7305" y2="22.1085" layer="21"/>
<rectangle x1="1.1475" y1="22.1085" x2="4.0545" y2="22.2615" layer="21"/>
<rectangle x1="6.1965" y1="22.1085" x2="6.3495" y2="22.2615" layer="21"/>
<rectangle x1="10.0215" y1="22.1085" x2="10.3275" y2="22.2615" layer="21"/>
<rectangle x1="19.0485" y1="22.1085" x2="23.1795" y2="22.2615" layer="21"/>
<rectangle x1="26.6985" y1="22.1085" x2="30.8295" y2="22.2615" layer="21"/>
<rectangle x1="39.5505" y1="22.1085" x2="43.6815" y2="22.2615" layer="21"/>
<rectangle x1="45.8235" y1="22.1085" x2="48.7305" y2="22.2615" layer="21"/>
<rectangle x1="1.1475" y1="22.2615" x2="4.0545" y2="22.4145" layer="21"/>
<rectangle x1="6.1965" y1="22.2615" x2="6.3495" y2="22.4145" layer="21"/>
<rectangle x1="10.0215" y1="22.2615" x2="10.3275" y2="22.4145" layer="21"/>
<rectangle x1="19.0485" y1="22.2615" x2="23.1795" y2="22.4145" layer="21"/>
<rectangle x1="26.6985" y1="22.2615" x2="30.8295" y2="22.4145" layer="21"/>
<rectangle x1="39.5505" y1="22.2615" x2="43.6815" y2="22.4145" layer="21"/>
<rectangle x1="45.8235" y1="22.2615" x2="48.7305" y2="22.4145" layer="21"/>
<rectangle x1="-0.0765" y1="22.4145" x2="5.1255" y2="22.5675" layer="21"/>
<rectangle x1="6.1965" y1="22.4145" x2="6.5025" y2="22.5675" layer="21"/>
<rectangle x1="10.0215" y1="22.4145" x2="10.3275" y2="22.5675" layer="21"/>
<rectangle x1="19.0485" y1="22.4145" x2="23.1795" y2="22.5675" layer="21"/>
<rectangle x1="26.6985" y1="22.4145" x2="30.8295" y2="22.5675" layer="21"/>
<rectangle x1="39.5505" y1="22.4145" x2="43.6815" y2="22.5675" layer="21"/>
<rectangle x1="45.8235" y1="22.4145" x2="48.7305" y2="22.5675" layer="21"/>
<rectangle x1="-0.0765" y1="22.5675" x2="5.1255" y2="22.7205" layer="21"/>
<rectangle x1="6.1965" y1="22.5675" x2="6.3495" y2="22.7205" layer="21"/>
<rectangle x1="10.0215" y1="22.5675" x2="10.3275" y2="22.7205" layer="21"/>
<rectangle x1="19.0485" y1="22.5675" x2="23.1795" y2="22.7205" layer="21"/>
<rectangle x1="26.6985" y1="22.5675" x2="30.8295" y2="22.7205" layer="21"/>
<rectangle x1="39.5505" y1="22.5675" x2="43.6815" y2="22.7205" layer="21"/>
<rectangle x1="45.8235" y1="22.5675" x2="48.7305" y2="22.7205" layer="21"/>
<rectangle x1="-0.0765" y1="22.7205" x2="5.1255" y2="22.8735" layer="21"/>
<rectangle x1="6.1965" y1="22.7205" x2="6.3495" y2="22.8735" layer="21"/>
<rectangle x1="10.0215" y1="22.7205" x2="10.3275" y2="22.8735" layer="21"/>
<rectangle x1="19.0485" y1="22.7205" x2="23.1795" y2="22.8735" layer="21"/>
<rectangle x1="26.6985" y1="22.7205" x2="30.8295" y2="22.8735" layer="21"/>
<rectangle x1="39.5505" y1="22.7205" x2="43.6815" y2="22.8735" layer="21"/>
<rectangle x1="45.8235" y1="22.7205" x2="48.7305" y2="22.8735" layer="21"/>
<rectangle x1="0.0765" y1="22.8735" x2="4.9725" y2="23.0265" layer="21"/>
<rectangle x1="6.1965" y1="22.8735" x2="6.5025" y2="23.0265" layer="21"/>
<rectangle x1="10.0215" y1="22.8735" x2="10.3275" y2="23.0265" layer="21"/>
<rectangle x1="19.0485" y1="22.8735" x2="23.1795" y2="23.0265" layer="21"/>
<rectangle x1="26.6985" y1="22.8735" x2="30.8295" y2="23.0265" layer="21"/>
<rectangle x1="39.5505" y1="22.8735" x2="43.6815" y2="23.0265" layer="21"/>
<rectangle x1="45.8235" y1="22.8735" x2="48.7305" y2="23.0265" layer="21"/>
<rectangle x1="0.0765" y1="23.0265" x2="4.8195" y2="23.1795" layer="21"/>
<rectangle x1="6.1965" y1="23.0265" x2="6.5025" y2="23.1795" layer="21"/>
<rectangle x1="10.0215" y1="23.0265" x2="10.3275" y2="23.1795" layer="21"/>
<rectangle x1="19.0485" y1="23.0265" x2="23.1795" y2="23.1795" layer="21"/>
<rectangle x1="26.6985" y1="23.0265" x2="30.8295" y2="23.1795" layer="21"/>
<rectangle x1="39.5505" y1="23.0265" x2="43.6815" y2="23.1795" layer="21"/>
<rectangle x1="45.8235" y1="23.0265" x2="48.7305" y2="23.1795" layer="21"/>
<rectangle x1="0.2295" y1="23.1795" x2="4.8195" y2="23.3325" layer="21"/>
<rectangle x1="6.1965" y1="23.1795" x2="6.5025" y2="23.3325" layer="21"/>
<rectangle x1="10.0215" y1="23.1795" x2="10.3275" y2="23.3325" layer="21"/>
<rectangle x1="19.0485" y1="23.1795" x2="23.1795" y2="23.3325" layer="21"/>
<rectangle x1="26.6985" y1="23.1795" x2="30.8295" y2="23.3325" layer="21"/>
<rectangle x1="39.5505" y1="23.1795" x2="43.6815" y2="23.3325" layer="21"/>
<rectangle x1="45.8235" y1="23.1795" x2="48.7305" y2="23.3325" layer="21"/>
<rectangle x1="0.2295" y1="23.3325" x2="4.6665" y2="23.4855" layer="21"/>
<rectangle x1="6.1965" y1="23.3325" x2="6.5025" y2="23.4855" layer="21"/>
<rectangle x1="10.0215" y1="23.3325" x2="10.3275" y2="23.4855" layer="21"/>
<rectangle x1="19.0485" y1="23.3325" x2="23.1795" y2="23.4855" layer="21"/>
<rectangle x1="26.6985" y1="23.3325" x2="30.8295" y2="23.4855" layer="21"/>
<rectangle x1="39.5505" y1="23.3325" x2="43.6815" y2="23.4855" layer="21"/>
<rectangle x1="45.8235" y1="23.3325" x2="48.7305" y2="23.4855" layer="21"/>
<rectangle x1="0.3825" y1="23.4855" x2="4.6665" y2="23.6385" layer="21"/>
<rectangle x1="6.1965" y1="23.4855" x2="6.5025" y2="23.6385" layer="21"/>
<rectangle x1="10.0215" y1="23.4855" x2="10.3275" y2="23.6385" layer="21"/>
<rectangle x1="19.0485" y1="23.4855" x2="23.1795" y2="23.6385" layer="21"/>
<rectangle x1="26.6985" y1="23.4855" x2="30.8295" y2="23.6385" layer="21"/>
<rectangle x1="39.5505" y1="23.4855" x2="43.6815" y2="23.6385" layer="21"/>
<rectangle x1="45.8235" y1="23.4855" x2="48.7305" y2="23.6385" layer="21"/>
<rectangle x1="0.3825" y1="23.6385" x2="4.5135" y2="23.7915" layer="21"/>
<rectangle x1="6.1965" y1="23.6385" x2="6.5025" y2="23.7915" layer="21"/>
<rectangle x1="10.0215" y1="23.6385" x2="10.3275" y2="23.7915" layer="21"/>
<rectangle x1="19.0485" y1="23.6385" x2="23.1795" y2="23.7915" layer="21"/>
<rectangle x1="26.6985" y1="23.6385" x2="30.8295" y2="23.7915" layer="21"/>
<rectangle x1="39.5505" y1="23.6385" x2="43.6815" y2="23.7915" layer="21"/>
<rectangle x1="45.8235" y1="23.6385" x2="48.7305" y2="23.7915" layer="21"/>
<rectangle x1="0.5355" y1="23.7915" x2="4.5135" y2="23.9445" layer="21"/>
<rectangle x1="6.1965" y1="23.7915" x2="6.5025" y2="23.9445" layer="21"/>
<rectangle x1="10.0215" y1="23.7915" x2="10.3275" y2="23.9445" layer="21"/>
<rectangle x1="19.0485" y1="23.7915" x2="23.1795" y2="23.9445" layer="21"/>
<rectangle x1="26.6985" y1="23.7915" x2="30.8295" y2="23.9445" layer="21"/>
<rectangle x1="39.5505" y1="23.7915" x2="43.6815" y2="23.9445" layer="21"/>
<rectangle x1="45.8235" y1="23.7915" x2="48.7305" y2="23.9445" layer="21"/>
<rectangle x1="0.5355" y1="23.9445" x2="4.3605" y2="24.0975" layer="21"/>
<rectangle x1="6.1965" y1="23.9445" x2="6.5025" y2="24.0975" layer="21"/>
<rectangle x1="10.0215" y1="23.9445" x2="10.3275" y2="24.0975" layer="21"/>
<rectangle x1="19.0485" y1="23.9445" x2="23.1795" y2="24.0975" layer="21"/>
<rectangle x1="26.6985" y1="23.9445" x2="30.8295" y2="24.0975" layer="21"/>
<rectangle x1="39.5505" y1="23.9445" x2="43.6815" y2="24.0975" layer="21"/>
<rectangle x1="45.8235" y1="23.9445" x2="48.7305" y2="24.0975" layer="21"/>
<rectangle x1="0.6885" y1="24.0975" x2="4.3605" y2="24.2505" layer="21"/>
<rectangle x1="6.1965" y1="24.0975" x2="6.5025" y2="24.2505" layer="21"/>
<rectangle x1="10.0215" y1="24.0975" x2="10.3275" y2="24.2505" layer="21"/>
<rectangle x1="19.0485" y1="24.0975" x2="23.1795" y2="24.2505" layer="21"/>
<rectangle x1="26.6985" y1="24.0975" x2="30.8295" y2="24.2505" layer="21"/>
<rectangle x1="39.5505" y1="24.0975" x2="43.6815" y2="24.2505" layer="21"/>
<rectangle x1="45.8235" y1="24.0975" x2="48.7305" y2="24.2505" layer="21"/>
<rectangle x1="0.6885" y1="24.2505" x2="4.2075" y2="24.4035" layer="21"/>
<rectangle x1="6.1965" y1="24.2505" x2="6.5025" y2="24.4035" layer="21"/>
<rectangle x1="10.0215" y1="24.2505" x2="10.3275" y2="24.4035" layer="21"/>
<rectangle x1="19.0485" y1="24.2505" x2="23.1795" y2="24.4035" layer="21"/>
<rectangle x1="26.6985" y1="24.2505" x2="30.8295" y2="24.4035" layer="21"/>
<rectangle x1="39.5505" y1="24.2505" x2="43.6815" y2="24.4035" layer="21"/>
<rectangle x1="45.8235" y1="24.2505" x2="48.7305" y2="24.4035" layer="21"/>
<rectangle x1="0.8415" y1="24.4035" x2="4.0545" y2="24.5565" layer="21"/>
<rectangle x1="6.1965" y1="24.4035" x2="6.5025" y2="24.5565" layer="21"/>
<rectangle x1="10.0215" y1="24.4035" x2="10.3275" y2="24.5565" layer="21"/>
<rectangle x1="19.0485" y1="24.4035" x2="23.1795" y2="24.5565" layer="21"/>
<rectangle x1="26.6985" y1="24.4035" x2="30.8295" y2="24.5565" layer="21"/>
<rectangle x1="39.5505" y1="24.4035" x2="43.6815" y2="24.5565" layer="21"/>
<rectangle x1="45.8235" y1="24.4035" x2="48.7305" y2="24.5565" layer="21"/>
<rectangle x1="0.8415" y1="24.5565" x2="4.0545" y2="24.7095" layer="21"/>
<rectangle x1="6.1965" y1="24.5565" x2="6.5025" y2="24.7095" layer="21"/>
<rectangle x1="10.0215" y1="24.5565" x2="10.3275" y2="24.7095" layer="21"/>
<rectangle x1="19.0485" y1="24.5565" x2="23.1795" y2="24.7095" layer="21"/>
<rectangle x1="26.6985" y1="24.5565" x2="30.8295" y2="24.7095" layer="21"/>
<rectangle x1="39.5505" y1="24.5565" x2="43.6815" y2="24.7095" layer="21"/>
<rectangle x1="45.8235" y1="24.5565" x2="48.7305" y2="24.7095" layer="21"/>
<rectangle x1="0.9945" y1="24.7095" x2="3.9015" y2="24.8625" layer="21"/>
<rectangle x1="6.1965" y1="24.7095" x2="6.5025" y2="24.8625" layer="21"/>
<rectangle x1="10.0215" y1="24.7095" x2="10.3275" y2="24.8625" layer="21"/>
<rectangle x1="19.0485" y1="24.7095" x2="23.1795" y2="24.8625" layer="21"/>
<rectangle x1="26.6985" y1="24.7095" x2="30.8295" y2="24.8625" layer="21"/>
<rectangle x1="39.5505" y1="24.7095" x2="43.6815" y2="24.8625" layer="21"/>
<rectangle x1="45.8235" y1="24.7095" x2="48.7305" y2="24.8625" layer="21"/>
<rectangle x1="1.1475" y1="24.8625" x2="3.9015" y2="25.0155" layer="21"/>
<rectangle x1="6.1965" y1="24.8625" x2="6.5025" y2="25.0155" layer="21"/>
<rectangle x1="10.0215" y1="24.8625" x2="10.3275" y2="25.0155" layer="21"/>
<rectangle x1="19.0485" y1="24.8625" x2="23.1795" y2="25.0155" layer="21"/>
<rectangle x1="26.6985" y1="24.8625" x2="30.8295" y2="25.0155" layer="21"/>
<rectangle x1="39.5505" y1="24.8625" x2="43.6815" y2="25.0155" layer="21"/>
<rectangle x1="45.8235" y1="24.8625" x2="48.7305" y2="25.0155" layer="21"/>
<rectangle x1="1.1475" y1="25.0155" x2="3.7485" y2="25.1685" layer="21"/>
<rectangle x1="6.1965" y1="25.0155" x2="6.5025" y2="25.1685" layer="21"/>
<rectangle x1="9.8685" y1="25.0155" x2="23.1795" y2="25.1685" layer="21"/>
<rectangle x1="26.6985" y1="25.0155" x2="43.6815" y2="25.1685" layer="21"/>
<rectangle x1="45.8235" y1="25.0155" x2="48.7305" y2="25.1685" layer="21"/>
<rectangle x1="1.3005" y1="25.1685" x2="3.7485" y2="25.3215" layer="21"/>
<rectangle x1="6.1965" y1="25.1685" x2="6.6555" y2="25.3215" layer="21"/>
<rectangle x1="9.7155" y1="25.1685" x2="23.0265" y2="25.3215" layer="21"/>
<rectangle x1="26.6985" y1="25.1685" x2="30.6765" y2="25.3215" layer="21"/>
<rectangle x1="39.5505" y1="25.1685" x2="43.5285" y2="25.3215" layer="21"/>
<rectangle x1="1.3005" y1="25.3215" x2="3.5955" y2="25.4745" layer="21"/>
<rectangle x1="6.3495" y1="25.3215" x2="6.8085" y2="25.4745" layer="21"/>
<rectangle x1="9.5625" y1="25.3215" x2="22.8735" y2="25.4745" layer="21"/>
<rectangle x1="26.8515" y1="25.3215" x2="30.5235" y2="25.4745" layer="21"/>
<rectangle x1="39.7035" y1="25.3215" x2="43.3755" y2="25.4745" layer="21"/>
<rectangle x1="1.4535" y1="25.4745" x2="3.5955" y2="25.6275" layer="21"/>
<rectangle x1="6.5025" y1="25.4745" x2="6.9615" y2="25.6275" layer="21"/>
<rectangle x1="9.4095" y1="25.4745" x2="22.7205" y2="25.6275" layer="21"/>
<rectangle x1="27.0045" y1="25.4745" x2="30.3705" y2="25.6275" layer="21"/>
<rectangle x1="39.8565" y1="25.4745" x2="43.2225" y2="25.6275" layer="21"/>
<rectangle x1="1.4535" y1="25.6275" x2="3.4425" y2="25.7805" layer="21"/>
<rectangle x1="6.6555" y1="25.6275" x2="7.1145" y2="25.7805" layer="21"/>
<rectangle x1="9.2565" y1="25.6275" x2="22.5675" y2="25.7805" layer="21"/>
<rectangle x1="27.1575" y1="25.6275" x2="30.2175" y2="25.7805" layer="21"/>
<rectangle x1="40.0095" y1="25.6275" x2="43.0695" y2="25.7805" layer="21"/>
<rectangle x1="1.6065" y1="25.7805" x2="3.2895" y2="25.9335" layer="21"/>
<rectangle x1="6.8085" y1="25.7805" x2="7.2675" y2="25.9335" layer="21"/>
<rectangle x1="9.1035" y1="25.7805" x2="22.4145" y2="25.9335" layer="21"/>
<rectangle x1="27.3105" y1="25.7805" x2="30.0645" y2="25.9335" layer="21"/>
<rectangle x1="40.1625" y1="25.7805" x2="42.9165" y2="25.9335" layer="21"/>
<rectangle x1="1.6065" y1="25.9335" x2="3.2895" y2="26.0865" layer="21"/>
<rectangle x1="6.9615" y1="25.9335" x2="7.4205" y2="26.0865" layer="21"/>
<rectangle x1="8.9505" y1="25.9335" x2="22.2615" y2="26.0865" layer="21"/>
<rectangle x1="27.4635" y1="25.9335" x2="29.9115" y2="26.0865" layer="21"/>
<rectangle x1="40.3155" y1="25.9335" x2="42.7635" y2="26.0865" layer="21"/>
<rectangle x1="1.7595" y1="26.0865" x2="3.1365" y2="26.2395" layer="21"/>
<rectangle x1="7.1145" y1="26.0865" x2="7.5735" y2="26.2395" layer="21"/>
<rectangle x1="8.7975" y1="26.0865" x2="22.1085" y2="26.2395" layer="21"/>
<rectangle x1="27.6165" y1="26.0865" x2="29.7585" y2="26.2395" layer="21"/>
<rectangle x1="40.4685" y1="26.0865" x2="42.6105" y2="26.2395" layer="21"/>
<rectangle x1="1.9125" y1="26.2395" x2="3.1365" y2="26.3925" layer="21"/>
<rectangle x1="7.2675" y1="26.2395" x2="7.7265" y2="26.3925" layer="21"/>
<rectangle x1="8.6445" y1="26.2395" x2="21.9555" y2="26.3925" layer="21"/>
<rectangle x1="27.7695" y1="26.2395" x2="29.6055" y2="26.3925" layer="21"/>
<rectangle x1="40.6215" y1="26.2395" x2="42.4575" y2="26.3925" layer="21"/>
<rectangle x1="1.9125" y1="26.3925" x2="2.9835" y2="26.5455" layer="21"/>
<rectangle x1="7.4205" y1="26.3925" x2="7.8795" y2="26.5455" layer="21"/>
<rectangle x1="8.4915" y1="26.3925" x2="21.8025" y2="26.5455" layer="21"/>
<rectangle x1="27.9225" y1="26.3925" x2="29.4525" y2="26.5455" layer="21"/>
<rectangle x1="40.7745" y1="26.3925" x2="42.3045" y2="26.5455" layer="21"/>
<rectangle x1="2.0655" y1="26.5455" x2="2.8305" y2="26.6985" layer="21"/>
<rectangle x1="7.5735" y1="26.5455" x2="8.0325" y2="26.6985" layer="21"/>
<rectangle x1="8.3385" y1="26.5455" x2="21.6495" y2="26.6985" layer="21"/>
<rectangle x1="28.0755" y1="26.5455" x2="29.2995" y2="26.6985" layer="21"/>
<rectangle x1="40.9275" y1="26.5455" x2="42.1515" y2="26.6985" layer="21"/>
<rectangle x1="2.0655" y1="26.6985" x2="2.8305" y2="26.8515" layer="21"/>
<rectangle x1="7.7265" y1="26.6985" x2="21.4965" y2="26.8515" layer="21"/>
<rectangle x1="28.2285" y1="26.6985" x2="29.1465" y2="26.8515" layer="21"/>
<rectangle x1="41.0805" y1="26.6985" x2="41.9985" y2="26.8515" layer="21"/>
<rectangle x1="2.2185" y1="26.8515" x2="2.6775" y2="27.0045" layer="21"/>
<rectangle x1="7.8795" y1="26.8515" x2="21.3435" y2="27.0045" layer="21"/>
<rectangle x1="28.3815" y1="26.8515" x2="28.9935" y2="27.0045" layer="21"/>
<rectangle x1="41.2335" y1="26.8515" x2="41.8455" y2="27.0045" layer="21"/>
<rectangle x1="47.2005" y1="26.8515" x2="47.5065" y2="27.0045" layer="21"/>
<rectangle x1="7.8795" y1="27.0045" x2="21.3435" y2="27.1575" layer="21"/>
<rectangle x1="28.3815" y1="27.0045" x2="28.9935" y2="27.1575" layer="21"/>
<rectangle x1="41.0805" y1="27.0045" x2="41.8455" y2="27.1575" layer="21"/>
<rectangle x1="47.0475" y1="27.0045" x2="47.5065" y2="27.1575" layer="21"/>
<rectangle x1="7.7265" y1="27.1575" x2="21.4965" y2="27.3105" layer="21"/>
<rectangle x1="28.2285" y1="27.1575" x2="29.1465" y2="27.3105" layer="21"/>
<rectangle x1="40.9275" y1="27.1575" x2="41.9985" y2="27.3105" layer="21"/>
<rectangle x1="47.0475" y1="27.1575" x2="47.6595" y2="27.3105" layer="21"/>
<rectangle x1="7.5735" y1="27.3105" x2="8.0325" y2="27.4635" layer="21"/>
<rectangle x1="8.3385" y1="27.3105" x2="21.6495" y2="27.4635" layer="21"/>
<rectangle x1="28.0755" y1="27.3105" x2="29.2995" y2="27.4635" layer="21"/>
<rectangle x1="40.7745" y1="27.3105" x2="42.1515" y2="27.4635" layer="21"/>
<rectangle x1="46.8945" y1="27.3105" x2="47.6595" y2="27.4635" layer="21"/>
<rectangle x1="7.4205" y1="27.4635" x2="7.8795" y2="27.6165" layer="21"/>
<rectangle x1="8.4915" y1="27.4635" x2="21.8025" y2="27.6165" layer="21"/>
<rectangle x1="27.9225" y1="27.4635" x2="29.4525" y2="27.6165" layer="21"/>
<rectangle x1="40.6215" y1="27.4635" x2="42.3045" y2="27.6165" layer="21"/>
<rectangle x1="46.7415" y1="27.4635" x2="47.8125" y2="27.6165" layer="21"/>
<rectangle x1="7.2675" y1="27.6165" x2="7.7265" y2="27.7695" layer="21"/>
<rectangle x1="8.6445" y1="27.6165" x2="21.9555" y2="27.7695" layer="21"/>
<rectangle x1="27.7695" y1="27.6165" x2="29.6055" y2="27.7695" layer="21"/>
<rectangle x1="40.4685" y1="27.6165" x2="42.4575" y2="27.7695" layer="21"/>
<rectangle x1="46.7415" y1="27.6165" x2="47.8125" y2="27.7695" layer="21"/>
<rectangle x1="7.1145" y1="27.7695" x2="7.5735" y2="27.9225" layer="21"/>
<rectangle x1="8.7975" y1="27.7695" x2="22.1085" y2="27.9225" layer="21"/>
<rectangle x1="27.6165" y1="27.7695" x2="29.7585" y2="27.9225" layer="21"/>
<rectangle x1="40.3155" y1="27.7695" x2="42.6105" y2="27.9225" layer="21"/>
<rectangle x1="46.5885" y1="27.7695" x2="47.9655" y2="27.9225" layer="21"/>
<rectangle x1="6.9615" y1="27.9225" x2="7.4205" y2="28.0755" layer="21"/>
<rectangle x1="8.9505" y1="27.9225" x2="22.2615" y2="28.0755" layer="21"/>
<rectangle x1="27.4635" y1="27.9225" x2="29.9115" y2="28.0755" layer="21"/>
<rectangle x1="40.1625" y1="27.9225" x2="42.7635" y2="28.0755" layer="21"/>
<rectangle x1="46.4355" y1="27.9225" x2="48.1185" y2="28.0755" layer="21"/>
<rectangle x1="6.8085" y1="28.0755" x2="7.2675" y2="28.2285" layer="21"/>
<rectangle x1="9.1035" y1="28.0755" x2="22.4145" y2="28.2285" layer="21"/>
<rectangle x1="27.3105" y1="28.0755" x2="30.0645" y2="28.2285" layer="21"/>
<rectangle x1="40.0095" y1="28.0755" x2="42.9165" y2="28.2285" layer="21"/>
<rectangle x1="46.4355" y1="28.0755" x2="48.1185" y2="28.2285" layer="21"/>
<rectangle x1="6.6555" y1="28.2285" x2="7.1145" y2="28.3815" layer="21"/>
<rectangle x1="9.2565" y1="28.2285" x2="22.5675" y2="28.3815" layer="21"/>
<rectangle x1="27.1575" y1="28.2285" x2="30.2175" y2="28.3815" layer="21"/>
<rectangle x1="40.0095" y1="28.2285" x2="43.0695" y2="28.3815" layer="21"/>
<rectangle x1="46.2825" y1="28.2285" x2="48.2715" y2="28.3815" layer="21"/>
<rectangle x1="6.5025" y1="28.3815" x2="6.9615" y2="28.5345" layer="21"/>
<rectangle x1="9.4095" y1="28.3815" x2="22.7205" y2="28.5345" layer="21"/>
<rectangle x1="27.0045" y1="28.3815" x2="30.3705" y2="28.5345" layer="21"/>
<rectangle x1="39.8565" y1="28.3815" x2="43.2225" y2="28.5345" layer="21"/>
<rectangle x1="46.2825" y1="28.3815" x2="48.2715" y2="28.5345" layer="21"/>
<rectangle x1="6.3495" y1="28.5345" x2="6.8085" y2="28.6875" layer="21"/>
<rectangle x1="9.5625" y1="28.5345" x2="22.8735" y2="28.6875" layer="21"/>
<rectangle x1="26.8515" y1="28.5345" x2="30.5235" y2="28.6875" layer="21"/>
<rectangle x1="39.7035" y1="28.5345" x2="43.3755" y2="28.6875" layer="21"/>
<rectangle x1="46.1295" y1="28.5345" x2="48.4245" y2="28.6875" layer="21"/>
<rectangle x1="6.1965" y1="28.6875" x2="6.6555" y2="28.8405" layer="21"/>
<rectangle x1="9.7155" y1="28.6875" x2="23.0265" y2="28.8405" layer="21"/>
<rectangle x1="26.6985" y1="28.6875" x2="30.6765" y2="28.8405" layer="21"/>
<rectangle x1="39.5505" y1="28.6875" x2="43.5285" y2="28.8405" layer="21"/>
<rectangle x1="45.9765" y1="28.6875" x2="48.4245" y2="28.8405" layer="21"/>
<rectangle x1="1.1475" y1="28.8405" x2="4.0545" y2="28.9935" layer="21"/>
<rectangle x1="6.1965" y1="28.8405" x2="6.5025" y2="28.9935" layer="21"/>
<rectangle x1="9.8685" y1="28.8405" x2="23.1795" y2="28.9935" layer="21"/>
<rectangle x1="26.6985" y1="28.8405" x2="43.6815" y2="28.9935" layer="21"/>
<rectangle x1="45.9765" y1="28.8405" x2="48.5775" y2="28.9935" layer="21"/>
<rectangle x1="1.1475" y1="28.9935" x2="4.0545" y2="29.1465" layer="21"/>
<rectangle x1="6.1965" y1="28.9935" x2="6.5025" y2="29.1465" layer="21"/>
<rectangle x1="10.0215" y1="28.9935" x2="10.3275" y2="29.1465" layer="21"/>
<rectangle x1="19.0485" y1="28.9935" x2="23.1795" y2="29.1465" layer="21"/>
<rectangle x1="26.6985" y1="28.9935" x2="30.8295" y2="29.1465" layer="21"/>
<rectangle x1="39.5505" y1="28.9935" x2="43.6815" y2="29.1465" layer="21"/>
<rectangle x1="45.8235" y1="28.9935" x2="48.7305" y2="29.1465" layer="21"/>
<rectangle x1="1.1475" y1="29.1465" x2="4.0545" y2="29.2995" layer="21"/>
<rectangle x1="6.1965" y1="29.1465" x2="6.5025" y2="29.2995" layer="21"/>
<rectangle x1="10.0215" y1="29.1465" x2="10.3275" y2="29.2995" layer="21"/>
<rectangle x1="19.0485" y1="29.1465" x2="23.1795" y2="29.2995" layer="21"/>
<rectangle x1="26.6985" y1="29.1465" x2="30.8295" y2="29.2995" layer="21"/>
<rectangle x1="39.5505" y1="29.1465" x2="43.6815" y2="29.2995" layer="21"/>
<rectangle x1="45.8235" y1="29.1465" x2="48.7305" y2="29.2995" layer="21"/>
<rectangle x1="1.1475" y1="29.2995" x2="4.0545" y2="29.4525" layer="21"/>
<rectangle x1="6.1965" y1="29.2995" x2="6.5025" y2="29.4525" layer="21"/>
<rectangle x1="10.0215" y1="29.2995" x2="10.3275" y2="29.4525" layer="21"/>
<rectangle x1="19.0485" y1="29.2995" x2="23.1795" y2="29.4525" layer="21"/>
<rectangle x1="26.6985" y1="29.2995" x2="30.8295" y2="29.4525" layer="21"/>
<rectangle x1="39.5505" y1="29.2995" x2="43.6815" y2="29.4525" layer="21"/>
<rectangle x1="45.6705" y1="29.2995" x2="48.8835" y2="29.4525" layer="21"/>
<rectangle x1="1.1475" y1="29.4525" x2="4.0545" y2="29.6055" layer="21"/>
<rectangle x1="6.1965" y1="29.4525" x2="6.5025" y2="29.6055" layer="21"/>
<rectangle x1="10.0215" y1="29.4525" x2="10.3275" y2="29.6055" layer="21"/>
<rectangle x1="19.0485" y1="29.4525" x2="23.1795" y2="29.6055" layer="21"/>
<rectangle x1="26.6985" y1="29.4525" x2="30.8295" y2="29.6055" layer="21"/>
<rectangle x1="39.5505" y1="29.4525" x2="43.6815" y2="29.6055" layer="21"/>
<rectangle x1="45.5175" y1="29.4525" x2="48.8835" y2="29.6055" layer="21"/>
<rectangle x1="1.1475" y1="29.6055" x2="4.0545" y2="29.7585" layer="21"/>
<rectangle x1="6.1965" y1="29.6055" x2="6.5025" y2="29.7585" layer="21"/>
<rectangle x1="10.0215" y1="29.6055" x2="10.3275" y2="29.7585" layer="21"/>
<rectangle x1="19.0485" y1="29.6055" x2="23.1795" y2="29.7585" layer="21"/>
<rectangle x1="26.6985" y1="29.6055" x2="30.8295" y2="29.7585" layer="21"/>
<rectangle x1="39.5505" y1="29.6055" x2="43.6815" y2="29.7585" layer="21"/>
<rectangle x1="45.5175" y1="29.6055" x2="49.0365" y2="29.7585" layer="21"/>
<rectangle x1="1.1475" y1="29.7585" x2="4.0545" y2="29.9115" layer="21"/>
<rectangle x1="6.1965" y1="29.7585" x2="6.5025" y2="29.9115" layer="21"/>
<rectangle x1="10.0215" y1="29.7585" x2="10.3275" y2="29.9115" layer="21"/>
<rectangle x1="19.0485" y1="29.7585" x2="23.1795" y2="29.9115" layer="21"/>
<rectangle x1="26.6985" y1="29.7585" x2="30.8295" y2="29.9115" layer="21"/>
<rectangle x1="39.5505" y1="29.7585" x2="43.6815" y2="29.9115" layer="21"/>
<rectangle x1="45.3645" y1="29.7585" x2="49.0365" y2="29.9115" layer="21"/>
<rectangle x1="1.1475" y1="29.9115" x2="4.0545" y2="30.0645" layer="21"/>
<rectangle x1="6.1965" y1="29.9115" x2="6.5025" y2="30.0645" layer="21"/>
<rectangle x1="10.0215" y1="29.9115" x2="10.3275" y2="30.0645" layer="21"/>
<rectangle x1="19.0485" y1="29.9115" x2="23.1795" y2="30.0645" layer="21"/>
<rectangle x1="26.6985" y1="29.9115" x2="30.8295" y2="30.0645" layer="21"/>
<rectangle x1="39.5505" y1="29.9115" x2="43.6815" y2="30.0645" layer="21"/>
<rectangle x1="45.3645" y1="29.9115" x2="49.1895" y2="30.0645" layer="21"/>
<rectangle x1="1.1475" y1="30.0645" x2="4.0545" y2="30.2175" layer="21"/>
<rectangle x1="6.1965" y1="30.0645" x2="6.5025" y2="30.2175" layer="21"/>
<rectangle x1="10.0215" y1="30.0645" x2="10.3275" y2="30.2175" layer="21"/>
<rectangle x1="19.0485" y1="30.0645" x2="23.1795" y2="30.2175" layer="21"/>
<rectangle x1="26.6985" y1="30.0645" x2="30.8295" y2="30.2175" layer="21"/>
<rectangle x1="39.5505" y1="30.0645" x2="43.6815" y2="30.2175" layer="21"/>
<rectangle x1="45.2115" y1="30.0645" x2="49.3425" y2="30.2175" layer="21"/>
<rectangle x1="1.1475" y1="30.2175" x2="4.0545" y2="30.3705" layer="21"/>
<rectangle x1="6.1965" y1="30.2175" x2="6.5025" y2="30.3705" layer="21"/>
<rectangle x1="10.0215" y1="30.2175" x2="10.3275" y2="30.3705" layer="21"/>
<rectangle x1="19.0485" y1="30.2175" x2="23.1795" y2="30.3705" layer="21"/>
<rectangle x1="26.6985" y1="30.2175" x2="30.8295" y2="30.3705" layer="21"/>
<rectangle x1="39.5505" y1="30.2175" x2="43.6815" y2="30.3705" layer="21"/>
<rectangle x1="45.2115" y1="30.2175" x2="49.3425" y2="30.3705" layer="21"/>
<rectangle x1="1.1475" y1="30.3705" x2="4.0545" y2="30.5235" layer="21"/>
<rectangle x1="6.1965" y1="30.3705" x2="6.5025" y2="30.5235" layer="21"/>
<rectangle x1="10.0215" y1="30.3705" x2="10.3275" y2="30.5235" layer="21"/>
<rectangle x1="19.0485" y1="30.3705" x2="23.1795" y2="30.5235" layer="21"/>
<rectangle x1="26.6985" y1="30.3705" x2="30.8295" y2="30.5235" layer="21"/>
<rectangle x1="39.5505" y1="30.3705" x2="43.6815" y2="30.5235" layer="21"/>
<rectangle x1="45.0585" y1="30.3705" x2="49.4955" y2="30.5235" layer="21"/>
<rectangle x1="1.1475" y1="30.5235" x2="4.0545" y2="30.6765" layer="21"/>
<rectangle x1="6.1965" y1="30.5235" x2="6.5025" y2="30.6765" layer="21"/>
<rectangle x1="10.0215" y1="30.5235" x2="10.3275" y2="30.6765" layer="21"/>
<rectangle x1="19.0485" y1="30.5235" x2="23.1795" y2="30.6765" layer="21"/>
<rectangle x1="26.6985" y1="30.5235" x2="30.8295" y2="30.6765" layer="21"/>
<rectangle x1="39.5505" y1="30.5235" x2="43.6815" y2="30.6765" layer="21"/>
<rectangle x1="45.0585" y1="30.5235" x2="49.4955" y2="30.6765" layer="21"/>
<rectangle x1="1.1475" y1="30.6765" x2="4.0545" y2="30.8295" layer="21"/>
<rectangle x1="6.1965" y1="30.6765" x2="6.5025" y2="30.8295" layer="21"/>
<rectangle x1="10.0215" y1="30.6765" x2="10.3275" y2="30.8295" layer="21"/>
<rectangle x1="19.0485" y1="30.6765" x2="23.1795" y2="30.8295" layer="21"/>
<rectangle x1="26.6985" y1="30.6765" x2="30.8295" y2="30.8295" layer="21"/>
<rectangle x1="39.5505" y1="30.6765" x2="43.6815" y2="30.8295" layer="21"/>
<rectangle x1="44.9055" y1="30.6765" x2="49.6485" y2="30.8295" layer="21"/>
<rectangle x1="1.1475" y1="30.8295" x2="4.0545" y2="30.9825" layer="21"/>
<rectangle x1="6.1965" y1="30.8295" x2="6.5025" y2="30.9825" layer="21"/>
<rectangle x1="10.0215" y1="30.8295" x2="10.3275" y2="30.9825" layer="21"/>
<rectangle x1="19.0485" y1="30.8295" x2="23.1795" y2="30.9825" layer="21"/>
<rectangle x1="26.6985" y1="30.8295" x2="30.8295" y2="30.9825" layer="21"/>
<rectangle x1="39.5505" y1="30.8295" x2="43.6815" y2="30.9825" layer="21"/>
<rectangle x1="44.7525" y1="30.8295" x2="49.6485" y2="30.9825" layer="21"/>
<rectangle x1="1.1475" y1="30.9825" x2="4.0545" y2="31.1355" layer="21"/>
<rectangle x1="6.1965" y1="30.9825" x2="6.5025" y2="31.1355" layer="21"/>
<rectangle x1="10.0215" y1="30.9825" x2="10.3275" y2="31.1355" layer="21"/>
<rectangle x1="19.0485" y1="30.9825" x2="23.1795" y2="31.1355" layer="21"/>
<rectangle x1="26.6985" y1="30.9825" x2="30.8295" y2="31.1355" layer="21"/>
<rectangle x1="39.5505" y1="30.9825" x2="43.6815" y2="31.1355" layer="21"/>
<rectangle x1="44.7525" y1="30.9825" x2="49.8015" y2="31.1355" layer="21"/>
<rectangle x1="1.1475" y1="31.1355" x2="4.0545" y2="31.2885" layer="21"/>
<rectangle x1="6.1965" y1="31.1355" x2="6.5025" y2="31.2885" layer="21"/>
<rectangle x1="10.0215" y1="31.1355" x2="10.3275" y2="31.2885" layer="21"/>
<rectangle x1="19.0485" y1="31.1355" x2="23.1795" y2="31.2885" layer="21"/>
<rectangle x1="26.6985" y1="31.1355" x2="30.8295" y2="31.2885" layer="21"/>
<rectangle x1="39.5505" y1="31.1355" x2="43.6815" y2="31.2885" layer="21"/>
<rectangle x1="44.5995" y1="31.1355" x2="49.9545" y2="31.2885" layer="21"/>
<rectangle x1="1.1475" y1="31.2885" x2="4.0545" y2="31.4415" layer="21"/>
<rectangle x1="6.1965" y1="31.2885" x2="6.5025" y2="31.4415" layer="21"/>
<rectangle x1="10.0215" y1="31.2885" x2="10.3275" y2="31.4415" layer="21"/>
<rectangle x1="19.0485" y1="31.2885" x2="23.1795" y2="31.4415" layer="21"/>
<rectangle x1="26.6985" y1="31.2885" x2="30.8295" y2="31.4415" layer="21"/>
<rectangle x1="39.5505" y1="31.2885" x2="43.6815" y2="31.4415" layer="21"/>
<rectangle x1="44.5995" y1="31.2885" x2="49.9545" y2="31.4415" layer="21"/>
<rectangle x1="1.1475" y1="31.4415" x2="4.0545" y2="31.5945" layer="21"/>
<rectangle x1="6.1965" y1="31.4415" x2="6.5025" y2="31.5945" layer="21"/>
<rectangle x1="10.0215" y1="31.4415" x2="10.3275" y2="31.5945" layer="21"/>
<rectangle x1="19.0485" y1="31.4415" x2="23.1795" y2="31.5945" layer="21"/>
<rectangle x1="26.6985" y1="31.4415" x2="30.8295" y2="31.5945" layer="21"/>
<rectangle x1="39.5505" y1="31.4415" x2="43.6815" y2="31.5945" layer="21"/>
<rectangle x1="44.5995" y1="31.4415" x2="49.9545" y2="31.5945" layer="21"/>
<rectangle x1="1.1475" y1="31.5945" x2="4.0545" y2="31.7475" layer="21"/>
<rectangle x1="6.1965" y1="31.5945" x2="6.5025" y2="31.7475" layer="21"/>
<rectangle x1="10.0215" y1="31.5945" x2="10.3275" y2="31.7475" layer="21"/>
<rectangle x1="19.0485" y1="31.5945" x2="23.1795" y2="31.7475" layer="21"/>
<rectangle x1="26.6985" y1="31.5945" x2="30.8295" y2="31.7475" layer="21"/>
<rectangle x1="39.5505" y1="31.5945" x2="43.6815" y2="31.7475" layer="21"/>
<rectangle x1="45.8235" y1="31.5945" x2="48.8835" y2="31.7475" layer="21"/>
<rectangle x1="1.1475" y1="31.7475" x2="4.0545" y2="31.9005" layer="21"/>
<rectangle x1="6.1965" y1="31.7475" x2="6.5025" y2="31.9005" layer="21"/>
<rectangle x1="9.8685" y1="31.7475" x2="10.3275" y2="31.9005" layer="21"/>
<rectangle x1="19.0485" y1="31.7475" x2="23.1795" y2="31.9005" layer="21"/>
<rectangle x1="26.6985" y1="31.7475" x2="30.8295" y2="31.9005" layer="21"/>
<rectangle x1="39.5505" y1="31.7475" x2="43.6815" y2="31.9005" layer="21"/>
<rectangle x1="45.8235" y1="31.7475" x2="48.7305" y2="31.9005" layer="21"/>
<rectangle x1="1.1475" y1="31.9005" x2="4.0545" y2="32.0535" layer="21"/>
<rectangle x1="6.1965" y1="31.9005" x2="6.5025" y2="32.0535" layer="21"/>
<rectangle x1="9.8685" y1="31.9005" x2="10.3275" y2="32.0535" layer="21"/>
<rectangle x1="19.0485" y1="31.9005" x2="23.1795" y2="32.0535" layer="21"/>
<rectangle x1="26.6985" y1="31.9005" x2="30.8295" y2="32.0535" layer="21"/>
<rectangle x1="39.5505" y1="31.9005" x2="43.6815" y2="32.0535" layer="21"/>
<rectangle x1="45.8235" y1="31.9005" x2="48.7305" y2="32.0535" layer="21"/>
<rectangle x1="1.1475" y1="32.0535" x2="4.0545" y2="32.2065" layer="21"/>
<rectangle x1="6.1965" y1="32.0535" x2="6.5025" y2="32.2065" layer="21"/>
<rectangle x1="9.8685" y1="32.0535" x2="10.3275" y2="32.2065" layer="21"/>
<rectangle x1="19.0485" y1="32.0535" x2="23.1795" y2="32.2065" layer="21"/>
<rectangle x1="26.6985" y1="32.0535" x2="30.8295" y2="32.2065" layer="21"/>
<rectangle x1="39.5505" y1="32.0535" x2="43.6815" y2="32.2065" layer="21"/>
<rectangle x1="45.8235" y1="32.0535" x2="48.7305" y2="32.2065" layer="21"/>
<rectangle x1="1.1475" y1="32.2065" x2="4.0545" y2="32.3595" layer="21"/>
<rectangle x1="6.1965" y1="32.2065" x2="6.5025" y2="32.3595" layer="21"/>
<rectangle x1="9.8685" y1="32.2065" x2="10.3275" y2="32.3595" layer="21"/>
<rectangle x1="19.0485" y1="32.2065" x2="23.1795" y2="32.3595" layer="21"/>
<rectangle x1="26.6985" y1="32.2065" x2="30.8295" y2="32.3595" layer="21"/>
<rectangle x1="39.5505" y1="32.2065" x2="43.6815" y2="32.3595" layer="21"/>
<rectangle x1="45.8235" y1="32.2065" x2="48.7305" y2="32.3595" layer="21"/>
<rectangle x1="1.1475" y1="32.3595" x2="4.0545" y2="32.5125" layer="21"/>
<rectangle x1="6.1965" y1="32.3595" x2="6.5025" y2="32.5125" layer="21"/>
<rectangle x1="9.8685" y1="32.3595" x2="10.3275" y2="32.5125" layer="21"/>
<rectangle x1="19.0485" y1="32.3595" x2="23.1795" y2="32.5125" layer="21"/>
<rectangle x1="26.6985" y1="32.3595" x2="30.8295" y2="32.5125" layer="21"/>
<rectangle x1="39.5505" y1="32.3595" x2="43.6815" y2="32.5125" layer="21"/>
<rectangle x1="45.8235" y1="32.3595" x2="48.7305" y2="32.5125" layer="21"/>
<rectangle x1="1.1475" y1="32.5125" x2="4.0545" y2="32.6655" layer="21"/>
<rectangle x1="6.1965" y1="32.5125" x2="6.5025" y2="32.6655" layer="21"/>
<rectangle x1="9.8685" y1="32.5125" x2="10.3275" y2="32.6655" layer="21"/>
<rectangle x1="19.0485" y1="32.5125" x2="23.1795" y2="32.6655" layer="21"/>
<rectangle x1="26.6985" y1="32.5125" x2="30.8295" y2="32.6655" layer="21"/>
<rectangle x1="39.5505" y1="32.5125" x2="43.6815" y2="32.6655" layer="21"/>
<rectangle x1="45.8235" y1="32.5125" x2="48.7305" y2="32.6655" layer="21"/>
<rectangle x1="1.1475" y1="32.6655" x2="4.0545" y2="32.8185" layer="21"/>
<rectangle x1="6.1965" y1="32.6655" x2="6.5025" y2="32.8185" layer="21"/>
<rectangle x1="9.8685" y1="32.6655" x2="10.3275" y2="32.8185" layer="21"/>
<rectangle x1="19.0485" y1="32.6655" x2="23.1795" y2="32.8185" layer="21"/>
<rectangle x1="26.6985" y1="32.6655" x2="30.8295" y2="32.8185" layer="21"/>
<rectangle x1="39.5505" y1="32.6655" x2="43.6815" y2="32.8185" layer="21"/>
<rectangle x1="45.8235" y1="32.6655" x2="48.7305" y2="32.8185" layer="21"/>
<rectangle x1="1.1475" y1="32.8185" x2="4.0545" y2="32.9715" layer="21"/>
<rectangle x1="6.1965" y1="32.8185" x2="6.5025" y2="32.9715" layer="21"/>
<rectangle x1="9.8685" y1="32.8185" x2="10.3275" y2="32.9715" layer="21"/>
<rectangle x1="19.0485" y1="32.8185" x2="23.1795" y2="32.9715" layer="21"/>
<rectangle x1="26.6985" y1="32.8185" x2="30.8295" y2="32.9715" layer="21"/>
<rectangle x1="39.5505" y1="32.8185" x2="43.6815" y2="32.9715" layer="21"/>
<rectangle x1="45.8235" y1="32.8185" x2="48.7305" y2="32.9715" layer="21"/>
<rectangle x1="1.1475" y1="32.9715" x2="4.0545" y2="33.1245" layer="21"/>
<rectangle x1="6.1965" y1="32.9715" x2="6.5025" y2="33.1245" layer="21"/>
<rectangle x1="9.8685" y1="32.9715" x2="10.3275" y2="33.1245" layer="21"/>
<rectangle x1="19.0485" y1="32.9715" x2="23.1795" y2="33.1245" layer="21"/>
<rectangle x1="26.6985" y1="32.9715" x2="30.8295" y2="33.1245" layer="21"/>
<rectangle x1="39.5505" y1="32.9715" x2="43.6815" y2="33.1245" layer="21"/>
<rectangle x1="45.8235" y1="32.9715" x2="48.7305" y2="33.1245" layer="21"/>
<rectangle x1="1.1475" y1="33.1245" x2="4.0545" y2="33.2775" layer="21"/>
<rectangle x1="6.1965" y1="33.1245" x2="6.5025" y2="33.2775" layer="21"/>
<rectangle x1="9.8685" y1="33.1245" x2="10.3275" y2="33.2775" layer="21"/>
<rectangle x1="19.0485" y1="33.1245" x2="23.1795" y2="33.2775" layer="21"/>
<rectangle x1="26.6985" y1="33.1245" x2="30.8295" y2="33.2775" layer="21"/>
<rectangle x1="39.5505" y1="33.1245" x2="43.6815" y2="33.2775" layer="21"/>
<rectangle x1="45.8235" y1="33.1245" x2="48.7305" y2="33.2775" layer="21"/>
<rectangle x1="1.1475" y1="33.2775" x2="4.0545" y2="33.4305" layer="21"/>
<rectangle x1="6.1965" y1="33.2775" x2="6.5025" y2="33.4305" layer="21"/>
<rectangle x1="9.8685" y1="33.2775" x2="10.3275" y2="33.4305" layer="21"/>
<rectangle x1="19.0485" y1="33.2775" x2="23.1795" y2="33.4305" layer="21"/>
<rectangle x1="26.6985" y1="33.2775" x2="30.8295" y2="33.4305" layer="21"/>
<rectangle x1="39.5505" y1="33.2775" x2="43.6815" y2="33.4305" layer="21"/>
<rectangle x1="45.8235" y1="33.2775" x2="48.7305" y2="33.4305" layer="21"/>
<rectangle x1="1.1475" y1="33.4305" x2="4.0545" y2="33.5835" layer="21"/>
<rectangle x1="6.1965" y1="33.4305" x2="6.5025" y2="33.5835" layer="21"/>
<rectangle x1="9.8685" y1="33.4305" x2="10.3275" y2="33.5835" layer="21"/>
<rectangle x1="19.0485" y1="33.4305" x2="23.1795" y2="33.5835" layer="21"/>
<rectangle x1="26.6985" y1="33.4305" x2="30.8295" y2="33.5835" layer="21"/>
<rectangle x1="39.5505" y1="33.4305" x2="43.6815" y2="33.5835" layer="21"/>
<rectangle x1="45.8235" y1="33.4305" x2="48.7305" y2="33.5835" layer="21"/>
<rectangle x1="1.1475" y1="33.5835" x2="4.0545" y2="33.7365" layer="21"/>
<rectangle x1="6.1965" y1="33.5835" x2="6.5025" y2="33.7365" layer="21"/>
<rectangle x1="9.8685" y1="33.5835" x2="10.3275" y2="33.7365" layer="21"/>
<rectangle x1="19.0485" y1="33.5835" x2="23.1795" y2="33.7365" layer="21"/>
<rectangle x1="26.6985" y1="33.5835" x2="30.8295" y2="33.7365" layer="21"/>
<rectangle x1="39.5505" y1="33.5835" x2="43.6815" y2="33.7365" layer="21"/>
<rectangle x1="45.8235" y1="33.5835" x2="48.7305" y2="33.7365" layer="21"/>
<rectangle x1="1.1475" y1="33.7365" x2="4.0545" y2="33.8895" layer="21"/>
<rectangle x1="6.1965" y1="33.7365" x2="6.5025" y2="33.8895" layer="21"/>
<rectangle x1="9.8685" y1="33.7365" x2="10.3275" y2="33.8895" layer="21"/>
<rectangle x1="19.0485" y1="33.7365" x2="23.1795" y2="33.8895" layer="21"/>
<rectangle x1="26.6985" y1="33.7365" x2="30.8295" y2="33.8895" layer="21"/>
<rectangle x1="39.5505" y1="33.7365" x2="43.6815" y2="33.8895" layer="21"/>
<rectangle x1="45.8235" y1="33.7365" x2="48.7305" y2="33.8895" layer="21"/>
<rectangle x1="1.1475" y1="33.8895" x2="4.0545" y2="34.0425" layer="21"/>
<rectangle x1="6.1965" y1="33.8895" x2="6.5025" y2="34.0425" layer="21"/>
<rectangle x1="9.8685" y1="33.8895" x2="10.3275" y2="34.0425" layer="21"/>
<rectangle x1="19.0485" y1="33.8895" x2="23.1795" y2="34.0425" layer="21"/>
<rectangle x1="26.6985" y1="33.8895" x2="30.8295" y2="34.0425" layer="21"/>
<rectangle x1="39.5505" y1="33.8895" x2="43.6815" y2="34.0425" layer="21"/>
<rectangle x1="45.8235" y1="33.8895" x2="48.7305" y2="34.0425" layer="21"/>
<rectangle x1="1.1475" y1="34.0425" x2="4.0545" y2="34.1955" layer="21"/>
<rectangle x1="6.1965" y1="34.0425" x2="6.5025" y2="34.1955" layer="21"/>
<rectangle x1="9.8685" y1="34.0425" x2="10.3275" y2="34.1955" layer="21"/>
<rectangle x1="19.0485" y1="34.0425" x2="23.1795" y2="34.1955" layer="21"/>
<rectangle x1="26.6985" y1="34.0425" x2="30.8295" y2="34.1955" layer="21"/>
<rectangle x1="39.5505" y1="34.0425" x2="43.6815" y2="34.1955" layer="21"/>
<rectangle x1="45.8235" y1="34.0425" x2="48.7305" y2="34.1955" layer="21"/>
<rectangle x1="1.1475" y1="34.1955" x2="4.0545" y2="34.3485" layer="21"/>
<rectangle x1="6.1965" y1="34.1955" x2="6.5025" y2="34.3485" layer="21"/>
<rectangle x1="9.8685" y1="34.1955" x2="10.3275" y2="34.3485" layer="21"/>
<rectangle x1="19.0485" y1="34.1955" x2="23.1795" y2="34.3485" layer="21"/>
<rectangle x1="26.6985" y1="34.1955" x2="30.8295" y2="34.3485" layer="21"/>
<rectangle x1="39.5505" y1="34.1955" x2="43.6815" y2="34.3485" layer="21"/>
<rectangle x1="45.8235" y1="34.1955" x2="48.7305" y2="34.3485" layer="21"/>
<rectangle x1="1.1475" y1="34.3485" x2="4.0545" y2="34.5015" layer="21"/>
<rectangle x1="6.1965" y1="34.3485" x2="6.5025" y2="34.5015" layer="21"/>
<rectangle x1="9.8685" y1="34.3485" x2="10.3275" y2="34.5015" layer="21"/>
<rectangle x1="19.0485" y1="34.3485" x2="23.1795" y2="34.5015" layer="21"/>
<rectangle x1="26.6985" y1="34.3485" x2="30.8295" y2="34.5015" layer="21"/>
<rectangle x1="39.5505" y1="34.3485" x2="43.6815" y2="34.5015" layer="21"/>
<rectangle x1="45.8235" y1="34.3485" x2="48.7305" y2="34.5015" layer="21"/>
<rectangle x1="1.1475" y1="34.5015" x2="4.0545" y2="34.6545" layer="21"/>
<rectangle x1="6.1965" y1="34.5015" x2="6.5025" y2="34.6545" layer="21"/>
<rectangle x1="9.8685" y1="34.5015" x2="10.3275" y2="34.6545" layer="21"/>
<rectangle x1="19.0485" y1="34.5015" x2="23.1795" y2="34.6545" layer="21"/>
<rectangle x1="26.6985" y1="34.5015" x2="30.8295" y2="34.6545" layer="21"/>
<rectangle x1="39.5505" y1="34.5015" x2="43.6815" y2="34.6545" layer="21"/>
<rectangle x1="45.8235" y1="34.5015" x2="48.7305" y2="34.6545" layer="21"/>
<rectangle x1="1.1475" y1="34.6545" x2="4.0545" y2="34.8075" layer="21"/>
<rectangle x1="6.1965" y1="34.6545" x2="6.5025" y2="34.8075" layer="21"/>
<rectangle x1="9.8685" y1="34.6545" x2="10.3275" y2="34.8075" layer="21"/>
<rectangle x1="19.0485" y1="34.6545" x2="23.1795" y2="34.8075" layer="21"/>
<rectangle x1="26.6985" y1="34.6545" x2="30.8295" y2="34.8075" layer="21"/>
<rectangle x1="39.5505" y1="34.6545" x2="43.6815" y2="34.8075" layer="21"/>
<rectangle x1="45.8235" y1="34.6545" x2="48.7305" y2="34.8075" layer="21"/>
<rectangle x1="1.1475" y1="34.8075" x2="4.0545" y2="34.9605" layer="21"/>
<rectangle x1="6.1965" y1="34.8075" x2="6.5025" y2="34.9605" layer="21"/>
<rectangle x1="9.8685" y1="34.8075" x2="10.3275" y2="34.9605" layer="21"/>
<rectangle x1="19.0485" y1="34.8075" x2="23.1795" y2="34.9605" layer="21"/>
<rectangle x1="26.6985" y1="34.8075" x2="30.8295" y2="34.9605" layer="21"/>
<rectangle x1="39.5505" y1="34.8075" x2="43.6815" y2="34.9605" layer="21"/>
<rectangle x1="45.8235" y1="34.8075" x2="48.7305" y2="34.9605" layer="21"/>
<rectangle x1="1.1475" y1="34.9605" x2="4.0545" y2="35.1135" layer="21"/>
<rectangle x1="6.1965" y1="34.9605" x2="6.5025" y2="35.1135" layer="21"/>
<rectangle x1="9.8685" y1="34.9605" x2="10.3275" y2="35.1135" layer="21"/>
<rectangle x1="19.0485" y1="34.9605" x2="23.1795" y2="35.1135" layer="21"/>
<rectangle x1="26.6985" y1="34.9605" x2="30.8295" y2="35.1135" layer="21"/>
<rectangle x1="39.5505" y1="34.9605" x2="43.6815" y2="35.1135" layer="21"/>
<rectangle x1="45.8235" y1="34.9605" x2="48.7305" y2="35.1135" layer="21"/>
<rectangle x1="1.1475" y1="35.1135" x2="4.0545" y2="35.2665" layer="21"/>
<rectangle x1="6.1965" y1="35.1135" x2="6.5025" y2="35.2665" layer="21"/>
<rectangle x1="9.8685" y1="35.1135" x2="10.3275" y2="35.2665" layer="21"/>
<rectangle x1="19.0485" y1="35.1135" x2="23.1795" y2="35.2665" layer="21"/>
<rectangle x1="26.6985" y1="35.1135" x2="30.8295" y2="35.2665" layer="21"/>
<rectangle x1="39.5505" y1="35.1135" x2="43.6815" y2="35.2665" layer="21"/>
<rectangle x1="45.8235" y1="35.1135" x2="48.7305" y2="35.2665" layer="21"/>
<rectangle x1="1.1475" y1="35.2665" x2="4.0545" y2="35.4195" layer="21"/>
<rectangle x1="6.1965" y1="35.2665" x2="6.5025" y2="35.4195" layer="21"/>
<rectangle x1="9.8685" y1="35.2665" x2="10.3275" y2="35.4195" layer="21"/>
<rectangle x1="19.0485" y1="35.2665" x2="23.1795" y2="35.4195" layer="21"/>
<rectangle x1="26.6985" y1="35.2665" x2="30.8295" y2="35.4195" layer="21"/>
<rectangle x1="39.5505" y1="35.2665" x2="43.6815" y2="35.4195" layer="21"/>
<rectangle x1="45.8235" y1="35.2665" x2="48.7305" y2="35.4195" layer="21"/>
<rectangle x1="1.1475" y1="35.4195" x2="4.0545" y2="35.5725" layer="21"/>
<rectangle x1="6.1965" y1="35.4195" x2="6.5025" y2="35.5725" layer="21"/>
<rectangle x1="9.8685" y1="35.4195" x2="10.3275" y2="35.5725" layer="21"/>
<rectangle x1="19.0485" y1="35.4195" x2="23.1795" y2="35.5725" layer="21"/>
<rectangle x1="26.6985" y1="35.4195" x2="30.8295" y2="35.5725" layer="21"/>
<rectangle x1="39.5505" y1="35.4195" x2="43.6815" y2="35.5725" layer="21"/>
<rectangle x1="45.8235" y1="35.4195" x2="48.7305" y2="35.5725" layer="21"/>
<rectangle x1="1.1475" y1="35.5725" x2="4.0545" y2="35.7255" layer="21"/>
<rectangle x1="6.1965" y1="35.5725" x2="6.5025" y2="35.7255" layer="21"/>
<rectangle x1="9.8685" y1="35.5725" x2="10.3275" y2="35.7255" layer="21"/>
<rectangle x1="19.0485" y1="35.5725" x2="23.1795" y2="35.7255" layer="21"/>
<rectangle x1="26.6985" y1="35.5725" x2="30.8295" y2="35.7255" layer="21"/>
<rectangle x1="39.5505" y1="35.5725" x2="43.6815" y2="35.7255" layer="21"/>
<rectangle x1="45.8235" y1="35.5725" x2="48.7305" y2="35.7255" layer="21"/>
<rectangle x1="1.1475" y1="35.7255" x2="4.0545" y2="35.8785" layer="21"/>
<rectangle x1="6.1965" y1="35.7255" x2="6.5025" y2="35.8785" layer="21"/>
<rectangle x1="9.8685" y1="35.7255" x2="10.3275" y2="35.8785" layer="21"/>
<rectangle x1="19.0485" y1="35.7255" x2="23.1795" y2="35.8785" layer="21"/>
<rectangle x1="26.6985" y1="35.7255" x2="30.8295" y2="35.8785" layer="21"/>
<rectangle x1="39.5505" y1="35.7255" x2="43.6815" y2="35.8785" layer="21"/>
<rectangle x1="45.8235" y1="35.7255" x2="48.7305" y2="35.8785" layer="21"/>
<rectangle x1="1.1475" y1="35.8785" x2="4.0545" y2="36.0315" layer="21"/>
<rectangle x1="6.1965" y1="35.8785" x2="6.5025" y2="36.0315" layer="21"/>
<rectangle x1="9.8685" y1="35.8785" x2="10.3275" y2="36.0315" layer="21"/>
<rectangle x1="19.0485" y1="35.8785" x2="23.1795" y2="36.0315" layer="21"/>
<rectangle x1="26.6985" y1="35.8785" x2="30.8295" y2="36.0315" layer="21"/>
<rectangle x1="39.5505" y1="35.8785" x2="43.6815" y2="36.0315" layer="21"/>
<rectangle x1="45.8235" y1="35.8785" x2="48.7305" y2="36.0315" layer="21"/>
<rectangle x1="1.1475" y1="36.0315" x2="4.0545" y2="36.1845" layer="21"/>
<rectangle x1="6.1965" y1="36.0315" x2="6.5025" y2="36.1845" layer="21"/>
<rectangle x1="9.8685" y1="36.0315" x2="10.3275" y2="36.1845" layer="21"/>
<rectangle x1="19.0485" y1="36.0315" x2="23.1795" y2="36.1845" layer="21"/>
<rectangle x1="26.6985" y1="36.0315" x2="30.8295" y2="36.1845" layer="21"/>
<rectangle x1="39.5505" y1="36.0315" x2="43.6815" y2="36.1845" layer="21"/>
<rectangle x1="45.8235" y1="36.0315" x2="48.7305" y2="36.1845" layer="21"/>
<rectangle x1="1.1475" y1="36.1845" x2="4.0545" y2="36.3375" layer="21"/>
<rectangle x1="6.1965" y1="36.1845" x2="6.5025" y2="36.3375" layer="21"/>
<rectangle x1="9.8685" y1="36.1845" x2="10.3275" y2="36.3375" layer="21"/>
<rectangle x1="19.0485" y1="36.1845" x2="23.1795" y2="36.3375" layer="21"/>
<rectangle x1="26.6985" y1="36.1845" x2="30.8295" y2="36.3375" layer="21"/>
<rectangle x1="39.5505" y1="36.1845" x2="43.6815" y2="36.3375" layer="21"/>
<rectangle x1="45.8235" y1="36.1845" x2="48.7305" y2="36.3375" layer="21"/>
<rectangle x1="1.1475" y1="36.3375" x2="4.0545" y2="36.4905" layer="21"/>
<rectangle x1="6.1965" y1="36.3375" x2="6.5025" y2="36.4905" layer="21"/>
<rectangle x1="9.8685" y1="36.3375" x2="10.3275" y2="36.4905" layer="21"/>
<rectangle x1="19.0485" y1="36.3375" x2="23.1795" y2="36.4905" layer="21"/>
<rectangle x1="26.6985" y1="36.3375" x2="30.8295" y2="36.4905" layer="21"/>
<rectangle x1="39.5505" y1="36.3375" x2="43.6815" y2="36.4905" layer="21"/>
<rectangle x1="45.8235" y1="36.3375" x2="48.7305" y2="36.4905" layer="21"/>
<rectangle x1="1.1475" y1="36.4905" x2="4.0545" y2="36.6435" layer="21"/>
<rectangle x1="6.1965" y1="36.4905" x2="6.5025" y2="36.6435" layer="21"/>
<rectangle x1="9.8685" y1="36.4905" x2="10.3275" y2="36.6435" layer="21"/>
<rectangle x1="19.0485" y1="36.4905" x2="23.1795" y2="36.6435" layer="21"/>
<rectangle x1="26.6985" y1="36.4905" x2="30.8295" y2="36.6435" layer="21"/>
<rectangle x1="39.5505" y1="36.4905" x2="43.6815" y2="36.6435" layer="21"/>
<rectangle x1="45.8235" y1="36.4905" x2="48.7305" y2="36.6435" layer="21"/>
<rectangle x1="1.1475" y1="36.6435" x2="4.0545" y2="36.7965" layer="21"/>
<rectangle x1="6.1965" y1="36.6435" x2="6.5025" y2="36.7965" layer="21"/>
<rectangle x1="9.8685" y1="36.6435" x2="10.3275" y2="36.7965" layer="21"/>
<rectangle x1="19.0485" y1="36.6435" x2="23.1795" y2="36.7965" layer="21"/>
<rectangle x1="26.6985" y1="36.6435" x2="30.8295" y2="36.7965" layer="21"/>
<rectangle x1="39.5505" y1="36.6435" x2="43.6815" y2="36.7965" layer="21"/>
<rectangle x1="45.8235" y1="36.6435" x2="48.7305" y2="36.7965" layer="21"/>
<rectangle x1="1.1475" y1="36.7965" x2="4.0545" y2="36.9495" layer="21"/>
<rectangle x1="6.1965" y1="36.7965" x2="6.5025" y2="36.9495" layer="21"/>
<rectangle x1="9.8685" y1="36.7965" x2="10.3275" y2="36.9495" layer="21"/>
<rectangle x1="19.0485" y1="36.7965" x2="23.1795" y2="36.9495" layer="21"/>
<rectangle x1="26.6985" y1="36.7965" x2="30.8295" y2="36.9495" layer="21"/>
<rectangle x1="39.5505" y1="36.7965" x2="43.6815" y2="36.9495" layer="21"/>
<rectangle x1="45.8235" y1="36.7965" x2="48.7305" y2="36.9495" layer="21"/>
<rectangle x1="1.1475" y1="36.9495" x2="4.0545" y2="37.1025" layer="21"/>
<rectangle x1="6.1965" y1="36.9495" x2="6.5025" y2="37.1025" layer="21"/>
<rectangle x1="9.8685" y1="36.9495" x2="10.3275" y2="37.1025" layer="21"/>
<rectangle x1="19.0485" y1="36.9495" x2="23.1795" y2="37.1025" layer="21"/>
<rectangle x1="26.6985" y1="36.9495" x2="30.8295" y2="37.1025" layer="21"/>
<rectangle x1="39.5505" y1="36.9495" x2="43.6815" y2="37.1025" layer="21"/>
<rectangle x1="45.8235" y1="36.9495" x2="48.7305" y2="37.1025" layer="21"/>
<rectangle x1="1.1475" y1="37.1025" x2="4.0545" y2="37.2555" layer="21"/>
<rectangle x1="6.1965" y1="37.1025" x2="6.5025" y2="37.2555" layer="21"/>
<rectangle x1="9.8685" y1="37.1025" x2="10.3275" y2="37.2555" layer="21"/>
<rectangle x1="19.0485" y1="37.1025" x2="23.1795" y2="37.2555" layer="21"/>
<rectangle x1="26.6985" y1="37.1025" x2="30.8295" y2="37.2555" layer="21"/>
<rectangle x1="39.5505" y1="37.1025" x2="43.6815" y2="37.2555" layer="21"/>
<rectangle x1="45.8235" y1="37.1025" x2="48.7305" y2="37.2555" layer="21"/>
<rectangle x1="1.1475" y1="37.2555" x2="4.0545" y2="37.4085" layer="21"/>
<rectangle x1="6.1965" y1="37.2555" x2="6.5025" y2="37.4085" layer="21"/>
<rectangle x1="9.8685" y1="37.2555" x2="10.3275" y2="37.4085" layer="21"/>
<rectangle x1="19.0485" y1="37.2555" x2="23.1795" y2="37.4085" layer="21"/>
<rectangle x1="26.6985" y1="37.2555" x2="30.8295" y2="37.4085" layer="21"/>
<rectangle x1="39.5505" y1="37.2555" x2="43.6815" y2="37.4085" layer="21"/>
<rectangle x1="45.8235" y1="37.2555" x2="48.7305" y2="37.4085" layer="21"/>
<rectangle x1="1.1475" y1="37.4085" x2="4.0545" y2="37.5615" layer="21"/>
<rectangle x1="6.1965" y1="37.4085" x2="6.5025" y2="37.5615" layer="21"/>
<rectangle x1="9.8685" y1="37.4085" x2="10.3275" y2="37.5615" layer="21"/>
<rectangle x1="19.0485" y1="37.4085" x2="23.1795" y2="37.5615" layer="21"/>
<rectangle x1="26.6985" y1="37.4085" x2="30.8295" y2="37.5615" layer="21"/>
<rectangle x1="39.5505" y1="37.4085" x2="43.6815" y2="37.5615" layer="21"/>
<rectangle x1="45.8235" y1="37.4085" x2="48.7305" y2="37.5615" layer="21"/>
<rectangle x1="1.1475" y1="37.5615" x2="4.0545" y2="37.7145" layer="21"/>
<rectangle x1="6.1965" y1="37.5615" x2="6.5025" y2="37.7145" layer="21"/>
<rectangle x1="9.8685" y1="37.5615" x2="10.3275" y2="37.7145" layer="21"/>
<rectangle x1="19.0485" y1="37.5615" x2="23.1795" y2="37.7145" layer="21"/>
<rectangle x1="26.6985" y1="37.5615" x2="30.8295" y2="37.7145" layer="21"/>
<rectangle x1="39.5505" y1="37.5615" x2="43.6815" y2="37.7145" layer="21"/>
<rectangle x1="45.8235" y1="37.5615" x2="48.7305" y2="37.7145" layer="21"/>
<rectangle x1="1.1475" y1="37.7145" x2="4.0545" y2="37.8675" layer="21"/>
<rectangle x1="6.1965" y1="37.7145" x2="6.5025" y2="37.8675" layer="21"/>
<rectangle x1="9.8685" y1="37.7145" x2="23.1795" y2="37.8675" layer="21"/>
<rectangle x1="26.6985" y1="37.7145" x2="43.6815" y2="37.8675" layer="21"/>
<rectangle x1="45.8235" y1="37.7145" x2="48.7305" y2="37.8675" layer="21"/>
<rectangle x1="1.1475" y1="37.8675" x2="4.0545" y2="38.0205" layer="21"/>
<rectangle x1="6.1965" y1="37.8675" x2="6.6555" y2="38.0205" layer="21"/>
<rectangle x1="9.7155" y1="37.8675" x2="23.0265" y2="38.0205" layer="21"/>
<rectangle x1="26.6985" y1="37.8675" x2="43.5285" y2="38.0205" layer="21"/>
<rectangle x1="45.8235" y1="37.8675" x2="48.7305" y2="38.0205" layer="21"/>
<rectangle x1="1.1475" y1="38.0205" x2="4.0545" y2="38.1735" layer="21"/>
<rectangle x1="6.3495" y1="38.0205" x2="6.8085" y2="38.1735" layer="21"/>
<rectangle x1="9.5625" y1="38.0205" x2="22.8735" y2="38.1735" layer="21"/>
<rectangle x1="26.8515" y1="38.0205" x2="43.3755" y2="38.1735" layer="21"/>
<rectangle x1="45.8235" y1="38.0205" x2="48.7305" y2="38.1735" layer="21"/>
<rectangle x1="1.1475" y1="38.1735" x2="4.0545" y2="38.3265" layer="21"/>
<rectangle x1="6.5025" y1="38.1735" x2="6.9615" y2="38.3265" layer="21"/>
<rectangle x1="9.4095" y1="38.1735" x2="22.7205" y2="38.3265" layer="21"/>
<rectangle x1="27.0045" y1="38.1735" x2="43.2225" y2="38.3265" layer="21"/>
<rectangle x1="45.8235" y1="38.1735" x2="48.7305" y2="38.3265" layer="21"/>
<rectangle x1="1.1475" y1="38.3265" x2="4.0545" y2="38.4795" layer="21"/>
<rectangle x1="6.6555" y1="38.3265" x2="7.1145" y2="38.4795" layer="21"/>
<rectangle x1="9.2565" y1="38.3265" x2="22.5675" y2="38.4795" layer="21"/>
<rectangle x1="27.1575" y1="38.3265" x2="43.0695" y2="38.4795" layer="21"/>
<rectangle x1="45.8235" y1="38.3265" x2="48.7305" y2="38.4795" layer="21"/>
<rectangle x1="1.1475" y1="38.4795" x2="4.0545" y2="38.6325" layer="21"/>
<rectangle x1="6.8085" y1="38.4795" x2="7.2675" y2="38.6325" layer="21"/>
<rectangle x1="9.1035" y1="38.4795" x2="22.4145" y2="38.6325" layer="21"/>
<rectangle x1="27.3105" y1="38.4795" x2="42.9165" y2="38.6325" layer="21"/>
<rectangle x1="45.8235" y1="38.4795" x2="48.7305" y2="38.6325" layer="21"/>
<rectangle x1="1.1475" y1="38.6325" x2="4.0545" y2="38.7855" layer="21"/>
<rectangle x1="6.9615" y1="38.6325" x2="7.4205" y2="38.7855" layer="21"/>
<rectangle x1="8.9505" y1="38.6325" x2="22.2615" y2="38.7855" layer="21"/>
<rectangle x1="27.4635" y1="38.6325" x2="42.7635" y2="38.7855" layer="21"/>
<rectangle x1="45.8235" y1="38.6325" x2="48.7305" y2="38.7855" layer="21"/>
<rectangle x1="1.1475" y1="38.7855" x2="4.0545" y2="38.9385" layer="21"/>
<rectangle x1="7.1145" y1="38.7855" x2="7.5735" y2="38.9385" layer="21"/>
<rectangle x1="8.9505" y1="38.7855" x2="22.1085" y2="38.9385" layer="21"/>
<rectangle x1="27.6165" y1="38.7855" x2="42.6105" y2="38.9385" layer="21"/>
<rectangle x1="45.8235" y1="38.7855" x2="48.7305" y2="38.9385" layer="21"/>
<rectangle x1="1.1475" y1="38.9385" x2="4.0545" y2="39.0915" layer="21"/>
<rectangle x1="7.2675" y1="38.9385" x2="7.7265" y2="39.0915" layer="21"/>
<rectangle x1="8.7975" y1="38.9385" x2="21.9555" y2="39.0915" layer="21"/>
<rectangle x1="27.7695" y1="38.9385" x2="42.4575" y2="39.0915" layer="21"/>
<rectangle x1="45.8235" y1="38.9385" x2="48.7305" y2="39.0915" layer="21"/>
<rectangle x1="1.1475" y1="39.0915" x2="4.0545" y2="39.2445" layer="21"/>
<rectangle x1="7.4205" y1="39.0915" x2="7.8795" y2="39.2445" layer="21"/>
<rectangle x1="8.6445" y1="39.0915" x2="21.8025" y2="39.2445" layer="21"/>
<rectangle x1="27.9225" y1="39.0915" x2="42.3045" y2="39.2445" layer="21"/>
<rectangle x1="45.8235" y1="39.0915" x2="48.7305" y2="39.2445" layer="21"/>
<rectangle x1="1.1475" y1="39.2445" x2="4.0545" y2="39.3975" layer="21"/>
<rectangle x1="7.5735" y1="39.2445" x2="8.0325" y2="39.3975" layer="21"/>
<rectangle x1="8.4915" y1="39.2445" x2="21.6495" y2="39.3975" layer="21"/>
<rectangle x1="28.0755" y1="39.2445" x2="42.1515" y2="39.3975" layer="21"/>
<rectangle x1="45.8235" y1="39.2445" x2="48.7305" y2="39.3975" layer="21"/>
<rectangle x1="1.1475" y1="39.3975" x2="4.0545" y2="39.5505" layer="21"/>
<rectangle x1="7.7265" y1="39.3975" x2="8.1855" y2="39.5505" layer="21"/>
<rectangle x1="8.3385" y1="39.3975" x2="21.4965" y2="39.5505" layer="21"/>
<rectangle x1="28.2285" y1="39.3975" x2="41.9985" y2="39.5505" layer="21"/>
<rectangle x1="45.8235" y1="39.3975" x2="48.7305" y2="39.5505" layer="21"/>
<rectangle x1="1.1475" y1="39.5505" x2="4.0545" y2="39.7035" layer="21"/>
<rectangle x1="7.8795" y1="39.5505" x2="21.3435" y2="39.7035" layer="21"/>
<rectangle x1="28.3815" y1="39.5505" x2="41.8455" y2="39.7035" layer="21"/>
<rectangle x1="45.8235" y1="39.5505" x2="48.7305" y2="39.7035" layer="21"/>
<rectangle x1="1.1475" y1="39.7035" x2="4.0545" y2="39.8565" layer="21"/>
<rectangle x1="8.0325" y1="39.7035" x2="21.1905" y2="39.8565" layer="21"/>
<rectangle x1="28.5345" y1="39.7035" x2="41.6925" y2="39.8565" layer="21"/>
<rectangle x1="45.8235" y1="39.7035" x2="48.7305" y2="39.8565" layer="21"/>
<rectangle x1="1.1475" y1="39.8565" x2="4.0545" y2="40.0095" layer="21"/>
<rectangle x1="8.1855" y1="39.8565" x2="21.0375" y2="40.0095" layer="21"/>
<rectangle x1="28.6875" y1="39.8565" x2="41.5395" y2="40.0095" layer="21"/>
<rectangle x1="45.8235" y1="39.8565" x2="48.7305" y2="40.0095" layer="21"/>
<rectangle x1="1.1475" y1="40.0095" x2="4.0545" y2="40.1625" layer="21"/>
<rectangle x1="8.3385" y1="40.0095" x2="20.8845" y2="40.1625" layer="21"/>
<rectangle x1="28.8405" y1="40.0095" x2="41.3865" y2="40.1625" layer="21"/>
<rectangle x1="45.8235" y1="40.0095" x2="48.7305" y2="40.1625" layer="21"/>
<rectangle x1="1.1475" y1="40.1625" x2="4.0545" y2="40.3155" layer="21"/>
<rectangle x1="8.4915" y1="40.1625" x2="20.7315" y2="40.3155" layer="21"/>
<rectangle x1="28.9935" y1="40.1625" x2="41.2335" y2="40.3155" layer="21"/>
<rectangle x1="45.8235" y1="40.1625" x2="48.7305" y2="40.3155" layer="21"/>
<rectangle x1="1.1475" y1="40.3155" x2="4.0545" y2="40.4685" layer="21"/>
<rectangle x1="8.6445" y1="40.3155" x2="20.5785" y2="40.4685" layer="21"/>
<rectangle x1="29.1465" y1="40.3155" x2="41.0805" y2="40.4685" layer="21"/>
<rectangle x1="45.8235" y1="40.3155" x2="48.7305" y2="40.4685" layer="21"/>
<rectangle x1="1.1475" y1="40.4685" x2="4.0545" y2="40.6215" layer="21"/>
<rectangle x1="8.7975" y1="40.4685" x2="20.4255" y2="40.6215" layer="21"/>
<rectangle x1="29.2995" y1="40.4685" x2="40.9275" y2="40.6215" layer="21"/>
<rectangle x1="45.8235" y1="40.4685" x2="48.7305" y2="40.6215" layer="21"/>
<rectangle x1="1.1475" y1="40.6215" x2="4.0545" y2="40.7745" layer="21"/>
<rectangle x1="8.9505" y1="40.6215" x2="20.2725" y2="40.7745" layer="21"/>
<rectangle x1="29.4525" y1="40.6215" x2="40.7745" y2="40.7745" layer="21"/>
<rectangle x1="45.8235" y1="40.6215" x2="48.7305" y2="40.7745" layer="21"/>
<rectangle x1="1.1475" y1="40.7745" x2="4.0545" y2="40.9275" layer="21"/>
<rectangle x1="9.1035" y1="40.7745" x2="20.1195" y2="40.9275" layer="21"/>
<rectangle x1="29.6055" y1="40.7745" x2="40.6215" y2="40.9275" layer="21"/>
<rectangle x1="45.8235" y1="40.7745" x2="48.7305" y2="40.9275" layer="21"/>
<rectangle x1="1.1475" y1="40.9275" x2="4.0545" y2="41.0805" layer="21"/>
<rectangle x1="9.2565" y1="40.9275" x2="19.9665" y2="41.0805" layer="21"/>
<rectangle x1="29.7585" y1="40.9275" x2="40.4685" y2="41.0805" layer="21"/>
<rectangle x1="45.8235" y1="40.9275" x2="48.7305" y2="41.0805" layer="21"/>
<rectangle x1="1.1475" y1="41.0805" x2="4.0545" y2="41.2335" layer="21"/>
<rectangle x1="9.4095" y1="41.0805" x2="19.8135" y2="41.2335" layer="21"/>
<rectangle x1="29.9115" y1="41.0805" x2="40.3155" y2="41.2335" layer="21"/>
<rectangle x1="45.8235" y1="41.0805" x2="48.7305" y2="41.2335" layer="21"/>
<rectangle x1="1.1475" y1="41.2335" x2="4.0545" y2="41.3865" layer="21"/>
<rectangle x1="9.5625" y1="41.2335" x2="19.6605" y2="41.3865" layer="21"/>
<rectangle x1="30.0645" y1="41.2335" x2="40.1625" y2="41.3865" layer="21"/>
<rectangle x1="45.8235" y1="41.2335" x2="48.7305" y2="41.3865" layer="21"/>
<rectangle x1="1.1475" y1="41.3865" x2="4.0545" y2="41.5395" layer="21"/>
<rectangle x1="9.7155" y1="41.3865" x2="19.5075" y2="41.5395" layer="21"/>
<rectangle x1="30.2175" y1="41.3865" x2="40.0095" y2="41.5395" layer="21"/>
<rectangle x1="45.8235" y1="41.3865" x2="48.7305" y2="41.5395" layer="21"/>
<rectangle x1="1.1475" y1="41.5395" x2="4.0545" y2="41.6925" layer="21"/>
<rectangle x1="9.8685" y1="41.5395" x2="19.3545" y2="41.6925" layer="21"/>
<rectangle x1="30.3705" y1="41.5395" x2="39.8565" y2="41.6925" layer="21"/>
<rectangle x1="45.8235" y1="41.5395" x2="48.7305" y2="41.6925" layer="21"/>
<rectangle x1="1.1475" y1="41.6925" x2="4.0545" y2="41.8455" layer="21"/>
<rectangle x1="45.8235" y1="41.6925" x2="48.7305" y2="41.8455" layer="21"/>
<rectangle x1="1.1475" y1="41.8455" x2="4.0545" y2="41.9985" layer="21"/>
<rectangle x1="45.8235" y1="41.8455" x2="48.7305" y2="41.9985" layer="21"/>
<rectangle x1="1.1475" y1="41.9985" x2="4.0545" y2="42.1515" layer="21"/>
<rectangle x1="45.8235" y1="41.9985" x2="48.7305" y2="42.1515" layer="21"/>
<rectangle x1="1.1475" y1="42.1515" x2="4.0545" y2="42.3045" layer="21"/>
<rectangle x1="45.8235" y1="42.1515" x2="48.7305" y2="42.3045" layer="21"/>
<rectangle x1="1.1475" y1="42.3045" x2="4.0545" y2="42.4575" layer="21"/>
<rectangle x1="45.8235" y1="42.3045" x2="48.7305" y2="42.4575" layer="21"/>
<rectangle x1="1.1475" y1="42.4575" x2="4.0545" y2="42.6105" layer="21"/>
<rectangle x1="45.8235" y1="42.4575" x2="48.7305" y2="42.6105" layer="21"/>
<rectangle x1="1.1475" y1="42.6105" x2="4.0545" y2="42.7635" layer="21"/>
<rectangle x1="45.8235" y1="42.6105" x2="48.7305" y2="42.7635" layer="21"/>
<rectangle x1="1.1475" y1="42.7635" x2="4.0545" y2="42.9165" layer="21"/>
<rectangle x1="45.8235" y1="42.7635" x2="48.7305" y2="42.9165" layer="21"/>
<rectangle x1="1.1475" y1="42.9165" x2="4.0545" y2="43.0695" layer="21"/>
<rectangle x1="18.4365" y1="42.9165" x2="18.8955" y2="43.0695" layer="21"/>
<rectangle x1="45.8235" y1="42.9165" x2="48.7305" y2="43.0695" layer="21"/>
<rectangle x1="1.1475" y1="43.0695" x2="4.0545" y2="43.2225" layer="21"/>
<rectangle x1="18.4365" y1="43.0695" x2="19.0485" y2="43.2225" layer="21"/>
<rectangle x1="45.8235" y1="43.0695" x2="48.7305" y2="43.2225" layer="21"/>
<rectangle x1="1.1475" y1="43.2225" x2="4.0545" y2="43.3755" layer="21"/>
<rectangle x1="18.4365" y1="43.2225" x2="19.3545" y2="43.3755" layer="21"/>
<rectangle x1="45.8235" y1="43.2225" x2="48.7305" y2="43.3755" layer="21"/>
<rectangle x1="1.1475" y1="43.3755" x2="4.0545" y2="43.5285" layer="21"/>
<rectangle x1="18.4365" y1="43.3755" x2="19.6605" y2="43.5285" layer="21"/>
<rectangle x1="45.8235" y1="43.3755" x2="48.7305" y2="43.5285" layer="21"/>
<rectangle x1="1.1475" y1="43.5285" x2="4.0545" y2="43.6815" layer="21"/>
<rectangle x1="18.4365" y1="43.5285" x2="19.8135" y2="43.6815" layer="21"/>
<rectangle x1="45.8235" y1="43.5285" x2="48.7305" y2="43.6815" layer="21"/>
<rectangle x1="1.1475" y1="43.6815" x2="4.0545" y2="43.8345" layer="21"/>
<rectangle x1="18.4365" y1="43.6815" x2="20.1195" y2="43.8345" layer="21"/>
<rectangle x1="45.8235" y1="43.6815" x2="48.7305" y2="43.8345" layer="21"/>
<rectangle x1="1.1475" y1="43.8345" x2="4.0545" y2="43.9875" layer="21"/>
<rectangle x1="18.4365" y1="43.8345" x2="20.4255" y2="43.9875" layer="21"/>
<rectangle x1="45.8235" y1="43.8345" x2="48.7305" y2="43.9875" layer="21"/>
<rectangle x1="1.1475" y1="43.9875" x2="4.0545" y2="44.1405" layer="21"/>
<rectangle x1="18.4365" y1="43.9875" x2="20.7315" y2="44.1405" layer="21"/>
<rectangle x1="45.8235" y1="43.9875" x2="48.7305" y2="44.1405" layer="21"/>
<rectangle x1="1.1475" y1="44.1405" x2="21.0375" y2="44.2935" layer="21"/>
<rectangle x1="26.6985" y1="44.1405" x2="48.7305" y2="44.2935" layer="21"/>
<rectangle x1="1.1475" y1="44.2935" x2="21.1905" y2="44.4465" layer="21"/>
<rectangle x1="26.6985" y1="44.2935" x2="48.7305" y2="44.4465" layer="21"/>
<rectangle x1="1.1475" y1="44.4465" x2="21.4965" y2="44.5995" layer="21"/>
<rectangle x1="26.6985" y1="44.4465" x2="48.7305" y2="44.5995" layer="21"/>
<rectangle x1="1.1475" y1="44.5995" x2="21.8025" y2="44.7525" layer="21"/>
<rectangle x1="26.6985" y1="44.5995" x2="48.7305" y2="44.7525" layer="21"/>
<rectangle x1="1.1475" y1="44.7525" x2="22.1085" y2="44.9055" layer="21"/>
<rectangle x1="26.6985" y1="44.7525" x2="48.7305" y2="44.9055" layer="21"/>
<rectangle x1="1.1475" y1="44.9055" x2="22.4145" y2="45.0585" layer="21"/>
<rectangle x1="26.6985" y1="44.9055" x2="48.7305" y2="45.0585" layer="21"/>
<rectangle x1="1.1475" y1="45.0585" x2="22.5675" y2="45.2115" layer="21"/>
<rectangle x1="26.6985" y1="45.0585" x2="48.7305" y2="45.2115" layer="21"/>
<rectangle x1="1.1475" y1="45.2115" x2="22.8735" y2="45.3645" layer="21"/>
<rectangle x1="26.6985" y1="45.2115" x2="48.7305" y2="45.3645" layer="21"/>
<rectangle x1="1.1475" y1="45.3645" x2="23.1795" y2="45.5175" layer="21"/>
<rectangle x1="26.6985" y1="45.3645" x2="48.7305" y2="45.5175" layer="21"/>
<rectangle x1="1.1475" y1="45.5175" x2="23.0265" y2="45.6705" layer="21"/>
<rectangle x1="26.6985" y1="45.5175" x2="48.7305" y2="45.6705" layer="21"/>
<rectangle x1="1.1475" y1="45.6705" x2="22.8735" y2="45.8235" layer="21"/>
<rectangle x1="26.6985" y1="45.6705" x2="48.7305" y2="45.8235" layer="21"/>
<rectangle x1="1.1475" y1="45.8235" x2="22.5675" y2="45.9765" layer="21"/>
<rectangle x1="26.6985" y1="45.8235" x2="48.7305" y2="45.9765" layer="21"/>
<rectangle x1="1.1475" y1="45.9765" x2="22.2615" y2="46.1295" layer="21"/>
<rectangle x1="26.6985" y1="45.9765" x2="48.7305" y2="46.1295" layer="21"/>
<rectangle x1="1.1475" y1="46.1295" x2="22.1085" y2="46.2825" layer="21"/>
<rectangle x1="26.6985" y1="46.1295" x2="48.7305" y2="46.2825" layer="21"/>
<rectangle x1="1.1475" y1="46.2825" x2="21.8025" y2="46.4355" layer="21"/>
<rectangle x1="26.6985" y1="46.2825" x2="48.7305" y2="46.4355" layer="21"/>
<rectangle x1="1.1475" y1="46.4355" x2="21.4965" y2="46.5885" layer="21"/>
<rectangle x1="26.6985" y1="46.4355" x2="48.7305" y2="46.5885" layer="21"/>
<rectangle x1="1.1475" y1="46.5885" x2="21.3435" y2="46.7415" layer="21"/>
<rectangle x1="26.6985" y1="46.5885" x2="48.7305" y2="46.7415" layer="21"/>
<rectangle x1="1.1475" y1="46.7415" x2="21.0375" y2="46.8945" layer="21"/>
<rectangle x1="26.6985" y1="46.7415" x2="48.7305" y2="46.8945" layer="21"/>
<rectangle x1="18.4365" y1="46.8945" x2="20.7315" y2="47.0475" layer="21"/>
<rectangle x1="18.4365" y1="47.0475" x2="20.4255" y2="47.2005" layer="21"/>
<rectangle x1="18.4365" y1="47.2005" x2="20.2725" y2="47.3535" layer="21"/>
<rectangle x1="18.4365" y1="47.3535" x2="19.9665" y2="47.5065" layer="21"/>
<rectangle x1="18.4365" y1="47.5065" x2="19.6605" y2="47.6595" layer="21"/>
<rectangle x1="18.4365" y1="47.6595" x2="19.3545" y2="47.8125" layer="21"/>
<rectangle x1="18.4365" y1="47.8125" x2="19.2015" y2="47.9655" layer="21"/>
<rectangle x1="18.4365" y1="47.9655" x2="18.8955" y2="48.1185" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="OPEN-SHOT-CLOCK-LOGO">
<text x="2.54" y="7.62" size="1.778" layer="94">OpenShotClockLogo</text>
<wire x1="0" y1="0" x2="0" y2="12.7" width="0.254" layer="94"/>
<wire x1="0" y1="12.7" x2="27.94" y2="12.7" width="0.254" layer="94"/>
<wire x1="27.94" y1="12.7" x2="27.94" y2="0" width="0.254" layer="94"/>
<wire x1="27.94" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="OPEN-SHOT-CLOCK-LOGO">
<gates>
<gate name="G$1" symbol="OPEN-SHOT-CLOCK-LOGO" x="0" y="0"/>
</gates>
<devices>
<device name="" package="OPEN-SHOT-CLOCK-LOGO">
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="OSCL-SMALL" package="OPEN-SHOT-CLOCK-LOGO-SMALL">
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="OSCL-H50MM" package="OPEN-SHOT-CLOCK-LOGO-H50MM">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="RJ45_from_con-tycoel">
<description>&lt;b&gt;Tyco Electronics Connector&lt;/b&gt;&lt;p&gt;
http://catalog.tycoelectronics.com&lt;br&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="RJ45-NO-SHIELD" urn="urn:adsk.eagle:footprint:10651/1" locally_modified="yes">
<description>&lt;b&gt;RJ45 Low Profile&lt;/b&gt; No Shield&lt;p&gt;
For all RJ45 N and Z Series Models&lt;br&gt;
Source: www.tycoelectronics.com .. ENG_DS_1654001_1099_RJ_L_0507.pdf</description>
<wire x1="-7.527" y1="10.819" x2="7.527" y2="10.819" width="0.2032" layer="21"/>
<wire x1="7.527" y1="-7.782" x2="-7.527" y2="-7.782" width="0.2032" layer="21"/>
<wire x1="-7.527" y1="-7.782" x2="-7.527" y2="10.819" width="0.2032" layer="21"/>
<wire x1="7.527" y1="10.819" x2="7.527" y2="-7.782" width="0.2032" layer="21"/>
<pad name="4" x="-0.635" y="8.89" drill="0.9" diameter="1.4"/>
<pad name="3" x="-1.905" y="6.35" drill="0.9" diameter="1.4"/>
<pad name="2" x="-3.175" y="8.89" drill="0.9" diameter="1.4"/>
<pad name="5" x="0.635" y="6.35" drill="0.9" diameter="1.4"/>
<pad name="1" x="-4.445" y="6.35" drill="0.9" diameter="1.4"/>
<pad name="6" x="1.905" y="8.89" drill="0.9" diameter="1.4"/>
<pad name="7" x="3.175" y="6.35" drill="0.9" diameter="1.4"/>
<pad name="8" x="4.445" y="8.89" drill="0.9" diameter="1.4"/>
<text x="-9.525" y="-0.635" size="1.778" layer="25" rot="R90">&gt;NAME</text>
<text x="-5.715" y="2.54" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="7.6" y1="-5.485" x2="8.875" y2="-4.342" layer="21"/>
<rectangle x1="-8.875" y1="-5.485" x2="-7.625" y2="-4.342" layer="21"/>
<hole x="-5.715" y="0" drill="3.2512"/>
<hole x="5.715" y="0" drill="3.2512"/>
</package>
</packages>
<packages3d>
<package3d name="RJ45-NO-SHIELD" urn="urn:adsk.eagle:package:10660/1" type="box">
<description>RJ45 Low Profile No Shield
For all RJ45 N and Z Series Models
Source: www.tycoelectronics.com .. ENG_DS_1654001_1099_RJ_L_0507.pdf</description>
<packageinstances>
<packageinstance name="RJ45-NO-SHIELD"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="JACK8">
<wire x1="1.524" y1="8.128" x2="0" y2="8.128" width="0.254" layer="94"/>
<wire x1="0" y1="8.128" x2="0" y2="7.112" width="0.254" layer="94"/>
<wire x1="0" y1="7.112" x2="1.524" y2="7.112" width="0.254" layer="94"/>
<wire x1="1.524" y1="5.588" x2="0" y2="5.588" width="0.254" layer="94"/>
<wire x1="0" y1="5.588" x2="0" y2="4.572" width="0.254" layer="94"/>
<wire x1="0" y1="4.572" x2="1.524" y2="4.572" width="0.254" layer="94"/>
<wire x1="1.524" y1="3.048" x2="0" y2="3.048" width="0.254" layer="94"/>
<wire x1="0" y1="3.048" x2="0" y2="2.032" width="0.254" layer="94"/>
<wire x1="0" y1="2.032" x2="1.524" y2="2.032" width="0.254" layer="94"/>
<wire x1="1.524" y1="0.508" x2="0" y2="0.508" width="0.254" layer="94"/>
<wire x1="0" y1="0.508" x2="0" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0" y1="-0.508" x2="1.524" y2="-0.508" width="0.254" layer="94"/>
<wire x1="1.524" y1="-2.032" x2="0" y2="-2.032" width="0.254" layer="94"/>
<wire x1="0" y1="-2.032" x2="0" y2="-3.048" width="0.254" layer="94"/>
<wire x1="0" y1="-3.048" x2="1.524" y2="-3.048" width="0.254" layer="94"/>
<wire x1="1.524" y1="-4.572" x2="0" y2="-4.572" width="0.254" layer="94"/>
<wire x1="0" y1="-4.572" x2="0" y2="-5.588" width="0.254" layer="94"/>
<wire x1="0" y1="-5.588" x2="1.524" y2="-5.588" width="0.254" layer="94"/>
<wire x1="3.048" y1="-2.032" x2="5.588" y2="-2.032" width="0.1998" layer="94"/>
<wire x1="5.588" y1="-2.032" x2="5.588" y2="-0.254" width="0.1998" layer="94"/>
<wire x1="5.588" y1="-0.254" x2="6.604" y2="-0.254" width="0.1998" layer="94"/>
<wire x1="6.604" y1="-0.254" x2="6.604" y2="1.778" width="0.1998" layer="94"/>
<wire x1="6.604" y1="1.778" x2="5.588" y2="1.778" width="0.1998" layer="94"/>
<wire x1="5.588" y1="1.778" x2="5.588" y2="3.556" width="0.1998" layer="94"/>
<wire x1="5.588" y1="3.556" x2="3.048" y2="3.556" width="0.1998" layer="94"/>
<wire x1="3.048" y1="3.556" x2="3.048" y2="2.54" width="0.1998" layer="94"/>
<wire x1="3.048" y1="2.54" x2="3.048" y2="2.032" width="0.1998" layer="94"/>
<wire x1="3.048" y1="2.032" x2="3.048" y2="1.524" width="0.1998" layer="94"/>
<wire x1="3.048" y1="1.524" x2="3.048" y2="1.016" width="0.1998" layer="94"/>
<wire x1="3.048" y1="1.016" x2="3.048" y2="0.508" width="0.1998" layer="94"/>
<wire x1="3.048" y1="0.508" x2="3.048" y2="0" width="0.1998" layer="94"/>
<wire x1="3.048" y1="0" x2="3.048" y2="-0.508" width="0.1998" layer="94"/>
<wire x1="3.048" y1="-0.508" x2="3.048" y2="-1.016" width="0.1998" layer="94"/>
<wire x1="3.048" y1="-1.016" x2="3.048" y2="-2.032" width="0.1998" layer="94"/>
<wire x1="3.048" y1="2.54" x2="3.81" y2="2.54" width="0.1998" layer="94"/>
<wire x1="3.048" y1="2.032" x2="3.81" y2="2.032" width="0.1998" layer="94"/>
<wire x1="3.048" y1="1.524" x2="3.81" y2="1.524" width="0.1998" layer="94"/>
<wire x1="3.048" y1="1.016" x2="3.81" y2="1.016" width="0.1998" layer="94"/>
<wire x1="3.048" y1="0.508" x2="3.81" y2="0.508" width="0.1998" layer="94"/>
<wire x1="3.048" y1="0" x2="3.81" y2="0" width="0.1998" layer="94"/>
<wire x1="1.524" y1="-7.112" x2="0" y2="-7.112" width="0.254" layer="94"/>
<wire x1="0" y1="-7.112" x2="0" y2="-8.128" width="0.254" layer="94"/>
<wire x1="0" y1="-8.128" x2="1.524" y2="-8.128" width="0.254" layer="94"/>
<wire x1="1.524" y1="-9.652" x2="0" y2="-9.652" width="0.254" layer="94"/>
<wire x1="0" y1="-9.652" x2="0" y2="-10.668" width="0.254" layer="94"/>
<wire x1="0" y1="-10.668" x2="1.524" y2="-10.668" width="0.254" layer="94"/>
<wire x1="3.048" y1="-0.508" x2="3.81" y2="-0.508" width="0.1998" layer="94"/>
<wire x1="3.048" y1="-1.016" x2="3.81" y2="-1.016" width="0.1998" layer="94"/>
<text x="-2.54" y="10.16" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-13.208" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="3" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="4" x="-2.54" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="5" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="6" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="7" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="8" x="-2.54" y="-10.16" visible="pad" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RJ45" prefix="X">
<description>&lt;b&gt;CORCOM Modular RJ Jacks&lt;/b&gt; No Shield&lt;p&gt;
Source: www.tycoelectronics.com .. ENG_DS_1654001_1099_RJ_L_0507.pdf</description>
<gates>
<gate name="G$1" symbol="JACK8" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RJ45-NO-SHIELD">
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
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10660/1"/>
</package3dinstances>
<technologies>
<technology name="-6L-B">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="RJ45-6L-B" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="16R6090" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="-6L-S">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="RJ45-6L-S" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="16R6091" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="-6X">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="RJ45-6X" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="01P1604" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="-8L-B">
<attribute name="MF" value="TYCO ELECTRONICS" constant="no"/>
<attribute name="MPN" value="RJ45-8L-B" constant="no"/>
<attribute name="OC_FARNELL" value="1279843" constant="no"/>
<attribute name="OC_NEWARK" value="52K4445" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="-8L-S">
<attribute name="MF" value="TYCO ELECTRONICS" constant="no"/>
<attribute name="MPN" value="RJ45-8L-S" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="80K9067" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
<technology name="-8X">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="RJ45-8X" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="16R6101" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
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
<part name="U$1" library="RS485-TTL" deviceset="RS485-TTL" device=""/>
<part name="U$2" library="RS485-TTL" deviceset="RS485-TTL" device=""/>
<part name="U$3" library="RS485-TTL" deviceset="RS485-TTL" device=""/>
<part name="X1" library="RJ45_from_con-tycoel" deviceset="RJ45" device="" package3d_urn="urn:adsk.eagle:package:10660/1" override_package3d_urn="urn:adsk.eagle:package:36660328/2" override_package_urn="urn:adsk.eagle:footprint:36660329/1" technology="-6L-B"/>
<part name="X2" library="RJ45_from_con-tycoel" deviceset="RJ45" device="" package3d_urn="urn:adsk.eagle:package:10660/1" override_package3d_urn="urn:adsk.eagle:package:36660334/2" override_package_urn="urn:adsk.eagle:footprint:36660335/1" technology="-6L-B"/>
<part name="X3" library="RJ45_from_con-tycoel" deviceset="RJ45" device="" package3d_urn="urn:adsk.eagle:package:10660/1" override_package3d_urn="urn:adsk.eagle:package:36660337/2" override_package_urn="urn:adsk.eagle:footprint:36660338/1" technology="-6L-B"/>
<part name="X4" library="RJ45_from_con-tycoel" deviceset="RJ45" device="" package3d_urn="urn:adsk.eagle:package:10660/1" override_package3d_urn="urn:adsk.eagle:package:36660324/2" override_package_urn="urn:adsk.eagle:footprint:36660326/1" technology="-6L-B"/>
<part name="U$4" library="openShotClockLogo" deviceset="OPEN-SHOT-CLOCK-LOGO" device="OSCL-SMALL"/>
<part name="U$5" library="openShotClockLogo" deviceset="OPEN-SHOT-CLOCK-LOGO" device="OSCL-H50MM"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="27.94" y="86.36" smashed="yes">
<attribute name="NAME" x="26.67" y="100.33" size="1.27" layer="94"/>
<attribute name="VALUE" x="26.67" y="71.12" size="1.27" layer="94"/>
</instance>
<instance part="U$2" gate="G$1" x="27.94" y="50.8" smashed="yes">
<attribute name="NAME" x="26.67" y="64.77" size="1.27" layer="94"/>
<attribute name="VALUE" x="26.67" y="35.56" size="1.27" layer="94"/>
</instance>
<instance part="U$3" gate="G$1" x="27.94" y="15.24" smashed="yes">
<attribute name="NAME" x="26.67" y="29.21" size="1.27" layer="94"/>
<attribute name="VALUE" x="26.67" y="0" size="1.27" layer="94"/>
</instance>
<instance part="X1" gate="G$1" x="71.12" y="88.9" smashed="yes">
<attribute name="NAME" x="68.58" y="99.06" size="1.778" layer="95"/>
<attribute name="VALUE" x="68.58" y="75.692" size="1.778" layer="96"/>
</instance>
<instance part="X2" gate="G$1" x="71.12" y="53.34" smashed="yes">
<attribute name="NAME" x="68.58" y="63.5" size="1.778" layer="95"/>
<attribute name="VALUE" x="68.58" y="40.132" size="1.778" layer="96"/>
</instance>
<instance part="X3" gate="G$1" x="71.12" y="17.78" smashed="yes">
<attribute name="NAME" x="68.58" y="27.94" size="1.778" layer="95"/>
<attribute name="VALUE" x="68.58" y="4.572" size="1.778" layer="96"/>
</instance>
<instance part="X4" gate="G$1" x="-25.4" y="55.88" smashed="yes" rot="R180">
<attribute name="NAME" x="-22.86" y="45.72" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-22.86" y="69.088" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="U$4" gate="G$1" x="104.14" y="88.9" smashed="yes"/>
<instance part="U$5" gate="G$1" x="104.14" y="71.12" smashed="yes"/>
</instances>
<busses>
</busses>
<nets>
<net name="TXD" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="TXD"/>
<wire x1="12.7" y1="88.9" x2="-5.08" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="TXD"/>
<wire x1="12.7" y1="53.34" x2="-5.08" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="88.9" x2="-5.08" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="TXD"/>
<wire x1="-5.08" y1="60.96" x2="-5.08" y2="53.34" width="0.1524" layer="91"/>
<wire x1="12.7" y1="17.78" x2="-5.08" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="53.34" x2="-5.08" y2="17.78" width="0.1524" layer="91"/>
<junction x="-5.08" y="53.34"/>
<pinref part="X4" gate="G$1" pin="6"/>
<wire x1="-22.86" y1="60.96" x2="-5.08" y2="60.96" width="0.1524" layer="91"/>
<junction x="-5.08" y="60.96"/>
<label x="-20.32" y="60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="12.7" y1="78.74" x2="-10.16" y2="78.74" width="0.1524" layer="91"/>
<pinref part="X4" gate="G$1" pin="8"/>
<wire x1="-22.86" y1="66.04" x2="-10.16" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="66.04" x2="-10.16" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="12.7" y1="43.18" x2="-10.16" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="66.04" x2="-10.16" y2="43.18" width="0.1524" layer="91"/>
<junction x="-10.16" y="66.04"/>
<pinref part="U$3" gate="G$1" pin="GND"/>
<wire x1="12.7" y1="7.62" x2="-10.16" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="43.18" x2="-10.16" y2="7.62" width="0.1524" layer="91"/>
<junction x="-10.16" y="43.18"/>
<label x="-20.32" y="66.04" size="1.778" layer="95"/>
<pinref part="X4" gate="G$1" pin="7"/>
<wire x1="-22.86" y1="63.5" x2="-22.86" y2="66.04" width="0.1524" layer="91"/>
<junction x="-22.86" y="66.04"/>
</segment>
</net>
<net name="RXD" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="RXD"/>
<wire x1="12.7" y1="12.7" x2="-2.54" y2="12.7" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="RXD"/>
<wire x1="12.7" y1="48.26" x2="-2.54" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="12.7" x2="-2.54" y2="48.26" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="RXD"/>
<wire x1="12.7" y1="83.82" x2="-2.54" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="48.26" x2="-2.54" y2="83.82" width="0.1524" layer="91"/>
<junction x="-2.54" y="48.26"/>
<pinref part="X4" gate="G$1" pin="3"/>
<wire x1="-22.86" y1="53.34" x2="-12.7" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="53.34" x2="-12.7" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="48.26" x2="-2.54" y2="48.26" width="0.1524" layer="91"/>
<label x="-20.32" y="53.34" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="A+"/>
<wire x1="38.1" y1="91.44" x2="53.34" y2="91.44" width="0.1524" layer="91"/>
<wire x1="53.34" y1="91.44" x2="53.34" y2="96.52" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="1"/>
<wire x1="53.34" y1="96.52" x2="68.58" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="B-"/>
<wire x1="38.1" y1="86.36" x2="58.42" y2="86.36" width="0.1524" layer="91"/>
<wire x1="58.42" y1="86.36" x2="58.42" y2="93.98" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="2"/>
<wire x1="58.42" y1="93.98" x2="68.58" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND_OUT"/>
<pinref part="X1" gate="G$1" pin="7"/>
<wire x1="38.1" y1="81.28" x2="68.58" y2="81.28" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="8"/>
<wire x1="68.58" y1="78.74" x2="68.58" y2="81.28" width="0.1524" layer="91"/>
<junction x="68.58" y="81.28"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="A+"/>
<wire x1="38.1" y1="55.88" x2="55.88" y2="55.88" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="1"/>
<wire x1="55.88" y1="55.88" x2="55.88" y2="60.96" width="0.1524" layer="91"/>
<wire x1="55.88" y1="60.96" x2="68.58" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="B-"/>
<wire x1="38.1" y1="50.8" x2="58.42" y2="50.8" width="0.1524" layer="91"/>
<wire x1="58.42" y1="50.8" x2="58.42" y2="58.42" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="2"/>
<wire x1="58.42" y1="58.42" x2="68.58" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="GND_OUT"/>
<pinref part="X2" gate="G$1" pin="7"/>
<wire x1="38.1" y1="45.72" x2="68.58" y2="45.72" width="0.1524" layer="91"/>
<pinref part="X2" gate="G$1" pin="8"/>
<wire x1="68.58" y1="45.72" x2="68.58" y2="43.18" width="0.1524" layer="91"/>
<junction x="68.58" y="45.72"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="GND_OUT"/>
<pinref part="X3" gate="G$1" pin="7"/>
<wire x1="38.1" y1="10.16" x2="68.58" y2="10.16" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="8"/>
<wire x1="68.58" y1="10.16" x2="68.58" y2="7.62" width="0.1524" layer="91"/>
<junction x="68.58" y="10.16"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="A+"/>
<wire x1="38.1" y1="20.32" x2="48.26" y2="20.32" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="1"/>
<wire x1="48.26" y1="20.32" x2="48.26" y2="25.4" width="0.1524" layer="91"/>
<wire x1="48.26" y1="25.4" x2="68.58" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="B-"/>
<wire x1="38.1" y1="15.24" x2="50.8" y2="15.24" width="0.1524" layer="91"/>
<wire x1="50.8" y1="15.24" x2="50.8" y2="22.86" width="0.1524" layer="91"/>
<pinref part="X3" gate="G$1" pin="2"/>
<wire x1="50.8" y1="22.86" x2="68.58" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VCC"/>
<wire x1="12.7" y1="93.98" x2="-7.62" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="VCC"/>
<wire x1="12.7" y1="58.42" x2="-7.62" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="93.98" x2="-7.62" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="VCC"/>
<wire x1="12.7" y1="22.86" x2="-7.62" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="58.42" x2="-7.62" y2="22.86" width="0.1524" layer="91"/>
<junction x="-7.62" y="58.42"/>
<pinref part="X4" gate="G$1" pin="4"/>
<pinref part="X4" gate="G$1" pin="5"/>
<wire x1="-22.86" y1="55.88" x2="-22.86" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="58.42" x2="-7.62" y2="58.42" width="0.1524" layer="91"/>
<junction x="-22.86" y="58.42"/>
<label x="-20.32" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
<note version="9.4" severity="warning">
Since Version 9.4, EAGLE supports the overriding of 3D packages
in schematics and board files. Those overridden 3d packages
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
