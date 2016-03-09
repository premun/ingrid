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
      <concept id="3635648591500731150" name="SimpleXml.structure.Content_1" flags="ng" index="2qY8wJ">
        <child id="3635648591500731151" name="chardata" index="2qY8wI" />
      </concept>
      <concept id="3635648591500763618" name="SimpleXml.structure.Content_2" flags="ng" index="2qYgF3">
        <child id="3635648591500763619" name="element" index="2qYgF2" />
      </concept>
      <concept id="3635648591500603400" name="SimpleXml.structure.Document" flags="ng" index="2qZDGD">
        <child id="3635648591500609104" name="prolog" index="2qZQPL" />
        <child id="3635648591500609106" name="element" index="2qZQPN" />
      </concept>
      <concept id="3635648591500618538" name="SimpleXml.structure.LessThanChar" flags="ng" index="2qZO0b" />
      <concept id="3635648591500619003" name="SimpleXml.structure.Element_2" flags="ng" index="2qZOvq">
        <child id="3635648591500619008" name="name" index="2qZOox" />
        <child id="3635648591500619011" name="slash" index="2qZOoy" />
        <child id="3635648591500619010" name="attributes" index="2qZOoz" />
        <child id="3635648591500619004" name="lessThan" index="2qZOvt" />
        <child id="3635648591500619006" name="greaterThan" index="2qZOvv" />
      </concept>
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
    <node concept="2qZQWF" id="1KUMcrYDGy0" role="2qZQPN">
      <node concept="2qZO0b" id="1KUMcrYDGy2" role="2qZO0r" />
      <node concept="2qZQYi" id="1KUMcrYDGy4" role="2qZO1V">
        <property role="2qZQYl" value="html" />
      </node>
      <node concept="2qZQTC" id="1KUMcrYDGy6" role="2qZO1J" />
      <node concept="2qZQYi" id="1KUMcrYDGya" role="2qZO1x">
        <property role="2qZQYl" value="html" />
      </node>
      <node concept="2qZO0b" id="1KUMcrYDGyc" role="2qZO0k" />
      <node concept="2qZQTC" id="1KUMcrYDGye" role="2qZO0m" />
      <node concept="2qZQTP" id="1KUMcrYDGyg" role="2qZOs9" />
      <node concept="2qYgF3" id="1YXkyCleiRP" role="2qZOsg">
        <node concept="2qZQWF" id="1YXkyCleiRT" role="2qYgF2">
          <node concept="2qZO0b" id="1YXkyCleiRV" role="2qZO0r" />
          <node concept="2qZQYi" id="1YXkyCleiRX" role="2qZO1V">
            <property role="2qZQYl" value="foo" />
          </node>
          <node concept="2qZQTC" id="1YXkyCleiRZ" role="2qZO1J" />
          <node concept="2qZQYi" id="1YXkyCleiS1" role="2qZO1x">
            <property role="2qZQYl" value="foo" />
          </node>
          <node concept="2qZO0b" id="1YXkyCleiS3" role="2qZO0k" />
          <node concept="2qZQTC" id="1YXkyCleiS5" role="2qZO0m" />
          <node concept="2qZQTP" id="1YXkyCleiS7" role="2qZOs9" />
          <node concept="2qZQYA" id="1YXkyCleiSh" role="2qZO10">
            <node concept="2qZQYi" id="1YXkyCleiSi" role="2qZQYD">
              <property role="2qZQYl" value="bar" />
            </node>
            <node concept="2qZQYJ" id="1YXkyCleiSj" role="2qZQYX" />
            <node concept="2qZQY4" id="1YXkyCleiSp" role="2qZQZh">
              <property role="2qZQY7" value="'foo'" />
            </node>
          </node>
          <node concept="2qYgF3" id="1YXkyCleiSs" role="2qZOsg">
            <node concept="2qZOvq" id="1YXkyCleiSw" role="2qYgF2">
              <node concept="2qZQYi" id="1YXkyCleiSy" role="2qZOox">
                <property role="2qZQYl" value="img" />
              </node>
              <node concept="2qZQTP" id="1YXkyCleiS$" role="2qZOoy" />
              <node concept="2qZO0b" id="1YXkyCleiSA" role="2qZOvt" />
              <node concept="2qZQTC" id="1YXkyCleiSC" role="2qZOvv" />
              <node concept="2qZQYA" id="1YXkyCleiSJ" role="2qZOoz">
                <node concept="2qZQYi" id="1YXkyCleiSK" role="2qZQYD">
                  <property role="2qZQYl" value="src" />
                </node>
                <node concept="2qZQYJ" id="1YXkyCleiSL" role="2qZQYX" />
                <node concept="2qZQY4" id="1YXkyCleiSM" role="2qZQZh">
                  <property role="2qZQY7" value="'image.png'" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2qY8wJ" id="1YXkyClekyQ" role="2qZOsg">
            <node concept="2qZQSl" id="1YXkyClekz6" role="2qY8wI" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

