<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1ef4a130-f869-47de-b3f0-d4d181aaec13(simpleXml.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="2bb07f92-552f-45dd-97b5-fd82063ba312" name="SimpleXml" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
  </languages>
  <imports />
  <registry>
    <language id="2bb07f92-552f-45dd-97b5-fd82063ba312" name="SimpleXml">
      <concept id="3635648591500603400" name="SimpleXml.structure.Document" flags="ng" index="2qZDGD">
        <child id="3635648591500609104" name="prolog" index="2qZQPL" />
        <child id="3635648591500609106" name="element" index="2qZQPN" />
      </concept>
      <concept id="3635648591500618538" name="SimpleXml.structure.LessThanChar" flags="ng" index="2qZO0b" />
      <concept id="3635648591500608820" name="SimpleXml.structure.Chardata_TEXT" flags="ng" index="2qZQSl" />
      <concept id="3635648591500608874" name="SimpleXml.structure.XmlCloseTagChar" flags="ng" index="2qZQTb" />
      <concept id="3635648591500608841" name="SimpleXml.structure.GreaterThanChar" flags="ng" index="2qZQTC" />
      <concept id="3635648591500608852" name="SimpleXml.structure.SlashChar" flags="ng" index="2qZQTP" />
      <concept id="3635648591500608863" name="SimpleXml.structure.XmlOpenTagChar" flags="ng" index="2qZQTY" />
      <concept id="3635648591500608522" name="SimpleXml.structure.Element_1" flags="ng" index="2qZQWF">
        <child id="3635648591500618549" name="lessThan_1" index="2qZO0k" />
        <child id="3635648591500618551" name="greaterThan_1" index="2qZO0m" />
        <child id="3635648591500618554" name="lessThan_2" index="2qZO0r" />
        <child id="3635648591500618593" name="attributes" index="2qZO10" />
        <child id="3635648591500618560" name="name_1" index="2qZO1x" />
        <child id="3635648591500618574" name="greaterThan_2" index="2qZO1J" />
        <child id="3635648591500618586" name="name_2" index="2qZO1V" />
        <child id="3635648591500618792" name="slash" index="2qZOs9" />
        <child id="3635648591500618801" name="content" index="2qZOsg" />
      </concept>
      <concept id="3635648591500608530" name="SimpleXml.structure.Prolog" flags="ng" index="2qZQWN">
        <child id="3635648591500608885" name="xmlOpenTag" index="2qZQTk" />
        <child id="3635648591500608887" name="ws_1" index="2qZQTm" />
        <child id="3635648591500608890" name="ws_2" index="2qZQTr" />
        <child id="3635648591500608894" name="attributes" index="2qZQTv" />
        <child id="3635648591500608909" name="xmlCloseTag" index="2qZQUG" />
      </concept>
      <concept id="3635648591500608677" name="SimpleXml.structure.ATTRVALUE_Concept" flags="ng" index="2qZQY4">
        <property id="3635648591500608678" name="value" index="2qZQY7" />
      </concept>
      <concept id="3635648591500608691" name="SimpleXml.structure.NAME_Concept" flags="ng" index="2qZQYi">
        <property id="3635648591500608692" name="value" index="2qZQYl" />
      </concept>
      <concept id="3635648591500608647" name="SimpleXml.structure.Attribute" flags="ng" index="2qZQYA">
        <child id="3635648591500608648" name="name" index="2qZQYD" />
        <child id="3635648591500608668" name="equalChar" index="2qZQYX" />
        <child id="3635648591500608752" name="attrValue" index="2qZQZh" />
      </concept>
      <concept id="3635648591500608654" name="SimpleXml.structure.EqualChar" flags="ng" index="2qZQYJ" />
      <concept id="3635648591500608757" name="SimpleXml.structure.WS_Concept" flags="ng" index="2qZQZk" />
    </language>
  </registry>
  <node concept="2qZDGD" id="39OqM6Cz9Ug">
    <node concept="2qZQWN" id="39OqM6Czgm_" role="2qZQPL">
      <node concept="2qZQTY" id="39OqM6CzgmA" role="2qZQTk" />
      <node concept="2qZQZk" id="39OqM6CzgmB" role="2qZQTm" />
      <node concept="2qZQZk" id="39OqM6CzgmC" role="2qZQTr" />
      <node concept="2qZQTb" id="39OqM6CzgmD" role="2qZQUG" />
      <node concept="2qZQYA" id="39OqM6CzgmO" role="2qZQTv">
        <node concept="2qZQYi" id="39OqM6CzgmP" role="2qZQYD">
          <property role="2qZQYl" value="lang" />
        </node>
        <node concept="2qZQYJ" id="39OqM6CzgmQ" role="2qZQYX" />
        <node concept="2qZQY4" id="39OqM6CzgmR" role="2qZQZh">
          <property role="2qZQY7" value="'en'" />
        </node>
      </node>
    </node>
    <node concept="2qZQWF" id="3R$SdNHlz5G" role="2qZQPN">
      <node concept="2qZO0b" id="3R$SdNHlz5H" role="2qZO0r" />
      <node concept="2qZQYi" id="3R$SdNHlz5I" role="2qZO1V">
        <property role="2qZQYl" value="Foo" />
      </node>
      <node concept="2qZQTC" id="3R$SdNHlz5J" role="2qZO1J" />
      <node concept="2qZQYi" id="3R$SdNHlz5W" role="2qZO1x">
        <property role="2qZQYl" value="Foo" />
      </node>
      <node concept="2qZO0b" id="3R$SdNHlz5L" role="2qZO0k" />
      <node concept="2qZQTC" id="3R$SdNHlz5M" role="2qZO0m" />
      <node concept="2qZQTP" id="3R$SdNHlz5N" role="2qZOs9" />
      <node concept="2qZQYA" id="3R$SdNHlz5Z" role="2qZO10">
        <node concept="2qZQYi" id="3R$SdNHlz60" role="2qZQYD">
          <property role="2qZQYl" value="bar" />
        </node>
        <node concept="2qZQYJ" id="3R$SdNHlz61" role="2qZQYX" />
        <node concept="2qZQY4" id="3R$SdNHlz67" role="2qZQZh">
          <property role="2qZQY7" value="'abc'" />
        </node>
      </node>
      <node concept="2qZQSl" id="3R$SdNHlz6a" role="2qZOsg" />
    </node>
  </node>
</model>

