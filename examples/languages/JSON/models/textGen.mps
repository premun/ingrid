<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cce03909-2aff-4e21-8755-5a69f17d72c1(JSON.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ac58" ref="r:a0e926e4-0911-4dcc-b53e-feead81a393e(JSON.structure)" implicit="true" />
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
  <node concept="WtQ9Q" id="Pei6ieTtId">
    <property role="3GE5qa" value="Rules.Array" />
    <ref role="WuzLi" to="ac58:Pei6ieTtG6" resolve="Array_1" />
    <node concept="11bSqf" id="Pei6ieTtIe" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtIf" role="2VODD2">
        <node concept="lc7rE" id="Pei6ieTtIg" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtIh" role="lcghm">
            <property role="lacIc" value="[" />
          </node>
        </node>
        <node concept="lc7rE" id="Pei6ieTtIi" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtIj" role="lcghm">
            <property role="lacIc" value="]" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtIk">
    <property role="3GE5qa" value="Rules.Array" />
    <ref role="WuzLi" to="ac58:Pei6ieTtG8" resolve="Array_2" />
    <node concept="11bSqf" id="Pei6ieTtIl" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtIm" role="2VODD2">
        <node concept="lc7rE" id="Pei6ieTtIn" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtIo" role="lcghm">
            <property role="lacIc" value="[" />
          </node>
        </node>
        <node concept="lc7rE" id="Pei6ieTtIp" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtIq" role="lcghm">
            <property role="lacIc" value="]" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtIr">
    <property role="3GE5qa" value="Rules.Array_block_1_1" />
    <ref role="WuzLi" to="ac58:Pei6ieTtGa" resolve="Array_block_1_1" />
    <node concept="11bSqf" id="Pei6ieTtIs" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtIt" role="2VODD2">
        <node concept="lc7rE" id="Pei6ieTtIu" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtIv" role="lcghm">
            <property role="lacIc" value="," />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtIw">
    <property role="3GE5qa" value="Rules.Json" />
    <ref role="WuzLi" to="ac58:Pei6ieTtGc" resolve="Json_1" />
    <node concept="11bSqf" id="Pei6ieTtIx" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtIy" role="2VODD2" />
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtIz">
    <property role="3GE5qa" value="Rules.Json" />
    <ref role="WuzLi" to="ac58:Pei6ieTtGe" resolve="Json_2" />
    <node concept="11bSqf" id="Pei6ieTtI$" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtI_" role="2VODD2" />
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtIA">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="ac58:Pei6ieTtGh" resolve="Value_1" />
    <node concept="11bSqf" id="Pei6ieTtIB" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtIC" role="2VODD2" />
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtID">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="ac58:Pei6ieTtGj" resolve="Value_2" />
    <node concept="11bSqf" id="Pei6ieTtIE" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtIF" role="2VODD2" />
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtIG">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="ac58:Pei6ieTtGl" resolve="Value_3" />
    <node concept="11bSqf" id="Pei6ieTtIH" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtII" role="2VODD2" />
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtIJ">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="ac58:Pei6ieTtGn" resolve="Value_4" />
    <node concept="11bSqf" id="Pei6ieTtIK" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtIL" role="2VODD2" />
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtIM">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="ac58:Pei6ieTtGp" resolve="Value_5" />
    <node concept="11bSqf" id="Pei6ieTtIN" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtIO" role="2VODD2">
        <node concept="lc7rE" id="Pei6ieTtIP" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtIQ" role="lcghm">
            <property role="lacIc" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtIR">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="ac58:Pei6ieTtGr" resolve="Value_6" />
    <node concept="11bSqf" id="Pei6ieTtIS" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtIT" role="2VODD2">
        <node concept="lc7rE" id="Pei6ieTtIU" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtIV" role="lcghm">
            <property role="lacIc" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtIW">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="ac58:Pei6ieTtGt" resolve="Value_7" />
    <node concept="11bSqf" id="Pei6ieTtIX" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtIY" role="2VODD2">
        <node concept="lc7rE" id="Pei6ieTtIZ" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtJ0" role="lcghm">
            <property role="lacIc" value="null" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtJ1">
    <property role="3GE5qa" value="Rules.Pair" />
    <ref role="WuzLi" to="ac58:Pei6ieTtGv" resolve="Pair" />
    <node concept="11bSqf" id="Pei6ieTtJ2" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtJ3" role="2VODD2">
        <node concept="lc7rE" id="Pei6ieTtJ4" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtJ5" role="lcghm">
            <property role="lacIc" value=":" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtJ6">
    <property role="3GE5qa" value="Rules.Object_block_1_1" />
    <ref role="WuzLi" to="ac58:Pei6ieTtGw" resolve="Object_block_1_1" />
    <node concept="11bSqf" id="Pei6ieTtJ7" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtJ8" role="2VODD2">
        <node concept="lc7rE" id="Pei6ieTtJ9" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtJa" role="lcghm">
            <property role="lacIc" value="," />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtJb">
    <property role="3GE5qa" value="Rules.Object" />
    <ref role="WuzLi" to="ac58:Pei6ieTtGy" resolve="Object_1" />
    <node concept="11bSqf" id="Pei6ieTtJc" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtJd" role="2VODD2">
        <node concept="lc7rE" id="Pei6ieTtJe" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtJf" role="lcghm">
            <property role="lacIc" value="{" />
          </node>
        </node>
        <node concept="lc7rE" id="Pei6ieTtJg" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtJh" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="Pei6ieTtJi">
    <property role="3GE5qa" value="Rules.Object" />
    <ref role="WuzLi" to="ac58:Pei6ieTtG$" resolve="Object_2" />
    <node concept="11bSqf" id="Pei6ieTtJj" role="11c4hB">
      <node concept="3clFbS" id="Pei6ieTtJk" role="2VODD2">
        <node concept="lc7rE" id="Pei6ieTtJl" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtJm" role="lcghm">
            <property role="lacIc" value="{" />
          </node>
        </node>
        <node concept="lc7rE" id="Pei6ieTtJn" role="3cqZAp">
          <node concept="la8eA" id="Pei6ieTtJo" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

