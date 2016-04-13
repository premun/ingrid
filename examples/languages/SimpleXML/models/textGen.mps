<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b2f5481b-1a73-4115-8147-61cddc322991(SimpleXML.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tgj9" ref="r:195b28b6-1084-4ac6-849a-2fd4a3e72451(SimpleXML.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
      </concept>
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="WtQ9Q" id="Pei6ieTtQo">
    <property role="3GE5qa" value="Rules.Document" />
    <ref role="WuzLi" to="tgj9:Pei6ieTtOM" resolve="Document" />
    <node concept="11bSqf" id="Pei6ieTtQp" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtQq" role="2VODD2" />
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtQr">
    <property role="3GE5qa" value="Rules.Comment" />
    <ref role="WuzLi" to="tgj9:Pei6ieTtON" resolve="Comment" />
    <node concept="11bSqf" id="Pei6ieTtQs" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtQt" role="2VODD2">
        <node concept="lc7rE" id="Pei6ieTtQu" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtQv" role="lcghm">
            <property role="lacIc" value="&lt;!--" />
          </node>
        </node>
        <node concept="lc7rE" id="Pei6ieTtQw" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtQx" role="lcghm">
            <property role="lacIc" value="--&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtQy">
    <property role="3GE5qa" value="Rules.Attribute" />
    <ref role="WuzLi" to="tgj9:Pei6ieTtOO" resolve="Attribute" />
    <node concept="11bSqf" id="Pei6ieTtQz" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtQ$" role="2VODD2">
        <node concept="lc7rE" id="Pei6ieTtQ_" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtQA" role="lcghm">
            <property role="lacIc" value="=&quot;" />
          </node>
        </node>
        <node concept="lc7rE" id="Pei6ieTtQB" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtQC" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtQD">
    <property role="3GE5qa" value="Rules.Prolog" />
    <ref role="WuzLi" to="tgj9:Pei6ieTtOP" resolve="Prolog" />
    <node concept="11bSqf" id="Pei6ieTtQE" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtQF" role="2VODD2">
        <node concept="lc7rE" id="Pei6ieTtQG" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtQH" role="lcghm">
            <property role="lacIc" value="&lt;?xml " />
          </node>
        </node>
        <node concept="lc7rE" id="Pei6ieTtQI" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtQJ" role="lcghm">
            <property role="lacIc" value="?&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtQK">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="tgj9:Pei6ieTtOR" resolve="Content_1" />
    <node concept="11bSqf" id="Pei6ieTtQL" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtQM" role="2VODD2" />
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtQN">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="tgj9:Pei6ieTtOT" resolve="Content_2" />
    <node concept="11bSqf" id="Pei6ieTtQO" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtQP" role="2VODD2" />
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtQQ">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="tgj9:Pei6ieTtOV" resolve="Content_3" />
    <node concept="11bSqf" id="Pei6ieTtQR" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtQS" role="2VODD2" />
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtQT">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="WuzLi" to="tgj9:Pei6ieTtOY" resolve="Element_1" />
    <node concept="11bSqf" id="Pei6ieTtQU" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtQV" role="2VODD2">
        <node concept="lc7rE" id="Pei6ieTtQW" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtQX" role="lcghm">
            <property role="lacIc" value="&lt;" />
          </node>
        </node>
        <node concept="lc7rE" id="Pei6ieTtQY" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtQZ" role="lcghm">
            <property role="lacIc" value="&gt;" />
          </node>
        </node>
        <node concept="lc7rE" id="Pei6ieTtR0" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtR1" role="lcghm">
            <property role="lacIc" value="&lt;/" />
          </node>
        </node>
        <node concept="lc7rE" id="Pei6ieTtR2" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtR3" role="lcghm">
            <property role="lacIc" value="&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtR4">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="WuzLi" to="tgj9:Pei6ieTtP0" resolve="Element_2" />
    <node concept="11bSqf" id="Pei6ieTtR5" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtR6" role="2VODD2">
        <node concept="lc7rE" id="Pei6ieTtR7" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtR8" role="lcghm">
            <property role="lacIc" value="&lt;" />
          </node>
        </node>
        <node concept="lc7rE" id="Pei6ieTtR9" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtRa" role="lcghm">
            <property role="lacIc" value="/&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

