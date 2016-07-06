<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9bca4f51-d5d0-431a-ba0a-fcd866e45c4a(SimpleXML.adjusted.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="74a4313b-5d3a-4ac6-ba0f-b49ffebac8ca" name="SimpleXML.adjusted" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
  </languages>
  <imports />
  <registry>
    <language id="74a4313b-5d3a-4ac6-ba0f-b49ffebac8ca" name="SimpleXML.adjusted">
      <concept id="7493426444128838846" name="SimpleXML.adjusted.structure.Comment" flags="ng" index="1fb9Go">
        <property id="7493426444128838860" name="TEXT_1" index="1fb9HE" />
      </concept>
      <concept id="7493426444128838847" name="SimpleXML.adjusted.structure.Attribute" flags="ng" index="1fb9Gp">
        <property id="7493426444128838862" name="TEXT_2" index="1fb9HC" />
        <property id="7493426444128838861" name="Name_1" index="1fb9HF" />
      </concept>
      <concept id="7493426444128838845" name="SimpleXML.adjusted.structure.Document" flags="ng" index="1fb9Gr">
        <child id="7493426444128838858" name="Comment_2" index="1fb9HG" />
        <child id="7493426444128838859" name="Element_3" index="1fb9HH" />
        <child id="7493426444128838857" name="Prolog_1" index="1fb9HJ" />
      </concept>
      <concept id="7493426444128838855" name="SimpleXML.adjusted.structure.Element_1" flags="ng" index="1fb9Hx">
        <property id="7493426444128838868" name="Name" index="1fb9HM" />
        <child id="7493426444128838870" name="Content" index="1fb9HK" />
        <child id="7493426444128838869" name="Attribute" index="1fb9HN" />
      </concept>
      <concept id="7493426444128838853" name="SimpleXML.adjusted.structure.Content_4" flags="ng" index="1fb9Hz">
        <property id="7493426444128838867" name="CDATA_1" index="1fb9HP" />
      </concept>
      <concept id="7493426444128838850" name="SimpleXML.adjusted.structure.Content_1" flags="ng" index="1fb9H$">
        <property id="7493426444128838864" name="TEXT_1" index="1fb9HQ" />
      </concept>
      <concept id="7493426444128838848" name="SimpleXML.adjusted.structure.Prolog" flags="ng" index="1fb9HA">
        <child id="7493426444128838863" name="Attribute_1" index="1fb9HD" />
      </concept>
      <concept id="7493426444128838856" name="SimpleXML.adjusted.structure.Element_2" flags="ng" index="1fb9HI">
        <property id="7493426444128838872" name="Name_1" index="1fb9HY" />
        <child id="7493426444128838873" name="Attribute_1" index="1fb9HZ" />
      </concept>
    </language>
  </registry>
  <node concept="1fb9Gr" id="6vXZUoCU3Kd">
    <node concept="1fb9HA" id="6vXZUoCU65d" role="1fb9HJ">
      <node concept="1fb9Gp" id="6vXZUoCU65f" role="1fb9HD">
        <property role="1fb9HF" value="version" />
        <property role="1fb9HC" value="1.0" />
      </node>
      <node concept="1fb9Gp" id="6vXZUoCU65h" role="1fb9HD">
        <property role="1fb9HF" value="encoding" />
        <property role="1fb9HC" value="utf-8" />
      </node>
    </node>
    <node concept="1fb9Go" id="6vXZUoCUcvm" role="1fb9HG">
      <property role="1fb9HE" value="Example XML document" />
    </node>
    <node concept="1fb9Hx" id="6vXZUoCUfcO" role="1fb9HH">
      <property role="1fb9HM" value="html" />
      <node concept="1fb9Hx" id="6vXZUoCUfcR" role="1fb9HK">
        <property role="1fb9HM" value="head" />
        <node concept="1fb9Hx" id="6vXZUoCUfcZ" role="1fb9HK">
          <property role="1fb9HM" value="title" />
          <node concept="1fb9H$" id="6vXZUoCUfd2" role="1fb9HK">
            <property role="1fb9HQ" value="Example document" />
          </node>
        </node>
      </node>
      <node concept="1fb9Hx" id="6vXZUoCUfd9" role="1fb9HK">
        <property role="1fb9HM" value="body" />
        <node concept="1fb9Hx" id="6vXZUoCUfdf" role="1fb9HK">
          <property role="1fb9HM" value="h1" />
          <node concept="1fb9H$" id="6vXZUoCUfdh" role="1fb9HK">
            <property role="1fb9HQ" value="Welcome!" />
          </node>
        </node>
        <node concept="1fb9Hx" id="6vXZUoCVwnk" role="1fb9HK">
          <property role="1fb9HM" value="div" />
          <node concept="1fb9Gp" id="6vXZUoCVwn$" role="1fb9HN">
            <property role="1fb9HF" value="class" />
            <property role="1fb9HC" value="separator" />
          </node>
        </node>
        <node concept="1fb9Hx" id="6vXZUoCUfdn" role="1fb9HK">
          <property role="1fb9HM" value="p" />
          <node concept="1fb9Gp" id="6vXZUoCUfds" role="1fb9HN">
            <property role="1fb9HF" value="class" />
            <property role="1fb9HC" value="left bordered" />
          </node>
          <node concept="1fb9H$" id="6vXZUoCUfdu" role="1fb9HK">
            <property role="1fb9HQ" value="Lorem ipsum dolor sit amet, consectetur adipiscing elit." />
          </node>
          <node concept="1fb9H$" id="6vXZUoCUfdz" role="1fb9HK">
            <property role="1fb9HQ" value="Curabitur nec laoreet quam. Nulla dignissim hendrerit arcu sagittis placerat." />
          </node>
          <node concept="1fb9H$" id="6vXZUoCUfdF" role="1fb9HK">
            <property role="1fb9HQ" value="In malesuada tellus tellus, ac aliquet augue facilisis a." />
          </node>
        </node>
        <node concept="1fb9HI" id="6vXZUoCUfdT" role="1fb9HK">
          <property role="1fb9HY" value="img" />
          <node concept="1fb9Gp" id="6vXZUoCUfe3" role="1fb9HZ">
            <property role="1fb9HF" value="src" />
            <property role="1fb9HC" value="homepage.jpg" />
          </node>
          <node concept="1fb9Gp" id="6vXZUoCUfe5" role="1fb9HZ">
            <property role="1fb9HF" value="style" />
            <property role="1fb9HC" value="width: 240px" />
          </node>
        </node>
        <node concept="1fb9Hz" id="6vXZUoCV9tr" role="1fb9HK">
          <property role="1fb9HP" value="... some CDATA ..." />
        </node>
      </node>
    </node>
  </node>
</model>

