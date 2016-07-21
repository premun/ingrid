<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9eacfaa3-adca-4e60-ac2b-4fa1204e235f(SimpleXML.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="9283473d-1390-4574-be8a-cc6a2aa4b500" name="SimpleXML" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
  </languages>
  <imports />
  <registry>
    <language id="9283473d-1390-4574-be8a-cc6a2aa4b500" name="SimpleXML">
      <concept id="7493426444128839413" name="SimpleXML.structure.Content_1" flags="ng" index="1fb9_j">
        <property id="7493426444128839427" name="TEXT_1" index="1fb9y_" />
      </concept>
      <concept id="7493426444128839410" name="SimpleXML.structure.Attribute" flags="ng" index="1fb9_k">
        <property id="7493426444128839424" name="Name_1" index="1fb9yA" />
        <property id="7493426444128839425" name="TEXT_2" index="1fb9yB" />
      </concept>
      <concept id="7493426444128839411" name="SimpleXML.structure.Prolog" flags="ng" index="1fb9_l">
        <child id="7493426444128839426" name="Attribute_1" index="1fb9y$" />
      </concept>
      <concept id="7493426444128839408" name="SimpleXML.structure.Document" flags="ng" index="1fb9_m">
        <child id="7493426444128839422" name="Element_3" index="1fb9_o" />
        <child id="7493426444128839420" name="Prolog_1" index="1fb9_q" />
        <child id="7493426444128839421" name="Comment_2" index="1fb9_r" />
      </concept>
      <concept id="7493426444128839409" name="SimpleXML.structure.Comment" flags="ng" index="1fb9_n">
        <property id="7493426444128839423" name="TEXT_1" index="1fb9_p" />
      </concept>
      <concept id="7493426444128839418" name="SimpleXML.structure.Element_1" flags="ng" index="1fb9_s">
        <property id="7493426444128839431" name="Name_1" index="1fb9yx" />
        <property id="7493426444128839434" name="Name_2" index="1fb9yG" />
        <child id="7493426444128839433" name="Content_2" index="1fb9yJ" />
      </concept>
    </language>
  </registry>
  <node concept="1fb9_m" id="44hsXdtqJF6">
    <node concept="1fb9_s" id="44hsXdtqJFf" role="1fb9_o">
      <property role="1fb9yx" value="html" />
      <property role="1fb9yG" value="html" />
      <node concept="1fb9_s" id="44hsXdtqJFm" role="1fb9yJ">
        <property role="1fb9yx" value="title" />
        <property role="1fb9yG" value="title" />
        <node concept="1fb9_j" id="44hsXdtqJFp" role="1fb9yJ">
          <property role="1fb9y_" value="Example document" />
        </node>
      </node>
    </node>
    <node concept="1fb9_l" id="44hsXdtqJF8" role="1fb9_q">
      <node concept="1fb9_k" id="44hsXdtqJFa" role="1fb9y$">
        <property role="1fb9yA" value="version" />
        <property role="1fb9yB" value="1.0" />
      </node>
    </node>
    <node concept="1fb9_n" id="44hsXdtqJFd" role="1fb9_r">
      <property role="1fb9_p" value="Example XML document" />
    </node>
  </node>
</model>

