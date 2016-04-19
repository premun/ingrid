<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:efcb07c6-1612-4e26-87aa-a858817af594(imported.language.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="uppz" ref="r:e7cb953d-e1d3-464c-b954-fb1460bed4d2(imported.language.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
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
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="WtQ9Q" id="AdDO7XLJaq">
    <property role="3GE5qa" value="Rules.A" />
    <ref role="WuzLi" to="uppz:AdDO7XLJ66" resolve="A_1" />
    <node concept="11bSqf" id="AdDO7XLJar" role="11c4hB">
      <node concept="3clFbS" id="AdDO7XLJas" role="2VODD2">
        <node concept="lc7rE" id="AdDO7XLJav" role="3cqZAp">
          <node concept="l9hG8" id="AdDO7XLJaw" role="lcghm">
            <node concept="2OqwBi" id="AdDO7XLJax" role="lb14g">
              <node concept="3TrEf2" id="AdDO7XLJau" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:AdDO7XLJ6r" />
              </node>
              <node concept="117lpO" id="AdDO7XLJat" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="AdDO7XLJay">
    <property role="3GE5qa" value="Rules.A" />
    <ref role="WuzLi" to="uppz:AdDO7XLJ68" resolve="A_2" />
    <node concept="11bSqf" id="AdDO7XLJaz" role="11c4hB">
      <node concept="3clFbS" id="AdDO7XLJa$" role="2VODD2">
        <node concept="lc7rE" id="AdDO7XLJaB" role="3cqZAp">
          <node concept="l9hG8" id="AdDO7XLJaC" role="lcghm">
            <node concept="2OqwBi" id="AdDO7XLJaD" role="lb14g">
              <node concept="3TrEf2" id="AdDO7XLJaA" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:AdDO7XLJ6s" />
              </node>
              <node concept="117lpO" id="AdDO7XLJa_" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="AdDO7XLJaE">
    <property role="3GE5qa" value="Rules.A" />
    <ref role="WuzLi" to="uppz:AdDO7XLJ6a" resolve="A_3" />
    <node concept="11bSqf" id="AdDO7XLJaF" role="11c4hB">
      <node concept="3clFbS" id="AdDO7XLJaG" role="2VODD2">
        <node concept="lc7rE" id="AdDO7XLJaI" role="3cqZAp">
          <node concept="la8eA" id="AdDO7XLJaH" role="lcghm">
            <property role="lacIc" value="null" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="AdDO7XLJaJ">
    <property role="3GE5qa" value="Rules.B" />
    <ref role="WuzLi" to="uppz:AdDO7XLJ6d" resolve="B_1" />
    <node concept="11bSqf" id="AdDO7XLJaK" role="11c4hB">
      <node concept="3clFbS" id="AdDO7XLJaL" role="2VODD2">
        <node concept="lc7rE" id="AdDO7XLJaO" role="3cqZAp">
          <node concept="l9hG8" id="AdDO7XLJaP" role="lcghm">
            <node concept="2OqwBi" id="AdDO7XLJaQ" role="lb14g">
              <node concept="3TrEf2" id="AdDO7XLJaN" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:AdDO7XLJ6t" />
              </node>
              <node concept="117lpO" id="AdDO7XLJaM" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="AdDO7XLJaR">
    <property role="3GE5qa" value="Rules.B" />
    <ref role="WuzLi" to="uppz:AdDO7XLJ6f" resolve="B_2" />
    <node concept="11bSqf" id="AdDO7XLJaS" role="11c4hB">
      <node concept="3clFbS" id="AdDO7XLJaT" role="2VODD2">
        <node concept="lc7rE" id="AdDO7XLJaW" role="3cqZAp">
          <node concept="l9hG8" id="AdDO7XLJaX" role="lcghm">
            <node concept="2OqwBi" id="AdDO7XLJaY" role="lb14g">
              <node concept="3TrEf2" id="AdDO7XLJaV" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:AdDO7XLJ6u" />
              </node>
              <node concept="117lpO" id="AdDO7XLJaU" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="AdDO7XLJaZ">
    <property role="3GE5qa" value="Rules.S" />
    <ref role="WuzLi" to="uppz:AdDO7XLJ6i" resolve="S_1" />
    <node concept="11bSqf" id="AdDO7XLJb0" role="11c4hB">
      <node concept="3clFbS" id="AdDO7XLJb1" role="2VODD2">
        <node concept="lc7rE" id="AdDO7XLJb4" role="3cqZAp">
          <node concept="l9hG8" id="AdDO7XLJb5" role="lcghm">
            <node concept="2OqwBi" id="AdDO7XLJb6" role="lb14g">
              <node concept="3TrEf2" id="AdDO7XLJb3" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:AdDO7XLJ6v" />
              </node>
              <node concept="117lpO" id="AdDO7XLJb2" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="AdDO7XLJb7">
    <property role="3GE5qa" value="Rules.S" />
    <ref role="WuzLi" to="uppz:AdDO7XLJ6k" resolve="S_2" />
    <node concept="11bSqf" id="AdDO7XLJb8" role="11c4hB">
      <node concept="3clFbS" id="AdDO7XLJb9" role="2VODD2">
        <node concept="lc7rE" id="AdDO7XLJbc" role="3cqZAp">
          <node concept="l9hG8" id="AdDO7XLJbd" role="lcghm">
            <node concept="2OqwBi" id="AdDO7XLJbe" role="lb14g">
              <node concept="3TrEf2" id="AdDO7XLJbb" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:AdDO7XLJ6w" />
              </node>
              <node concept="117lpO" id="AdDO7XLJba" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="AdDO7XLJbf">
    <property role="3GE5qa" value="Rules.C" />
    <ref role="WuzLi" to="uppz:AdDO7XLJ6m" resolve="C" />
    <node concept="11bSqf" id="AdDO7XLJbg" role="11c4hB">
      <node concept="3clFbS" id="AdDO7XLJbh" role="2VODD2">
        <node concept="lc7rE" id="AdDO7XLJbk" role="3cqZAp">
          <node concept="l9hG8" id="AdDO7XLJbl" role="lcghm">
            <node concept="2OqwBi" id="AdDO7XLJbm" role="lb14g">
              <node concept="3TrcHB" id="AdDO7XLJbj" role="2OqNvi">
                <ref role="3TsBF5" to="uppz:AdDO7XLJ6x" resolve="STRING_1" />
              </node>
              <node concept="117lpO" id="AdDO7XLJbi" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="AdDO7XLJbn">
    <property role="3GE5qa" value="Rules.D" />
    <ref role="WuzLi" to="uppz:AdDO7XLJ6n" resolve="D" />
    <node concept="11bSqf" id="AdDO7XLJbo" role="11c4hB">
      <node concept="3clFbS" id="AdDO7XLJbp" role="2VODD2">
        <node concept="lc7rE" id="AdDO7XLJbs" role="3cqZAp">
          <node concept="l9hG8" id="AdDO7XLJbt" role="lcghm">
            <node concept="2OqwBi" id="AdDO7XLJbu" role="lb14g">
              <node concept="3TrcHB" id="AdDO7XLJbr" role="2OqNvi">
                <ref role="3TsBF5" to="uppz:AdDO7XLJ6y" resolve="DIGIT_1" />
              </node>
              <node concept="117lpO" id="AdDO7XLJbq" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="AdDO7XLJbv">
    <property role="3GE5qa" value="Rules.E" />
    <ref role="WuzLi" to="uppz:AdDO7XLJ6o" resolve="E" />
    <node concept="11bSqf" id="AdDO7XLJbw" role="11c4hB">
      <node concept="3clFbS" id="AdDO7XLJbx" role="2VODD2">
        <node concept="lc7rE" id="AdDO7XLJbz" role="3cqZAp">
          <node concept="la8eA" id="AdDO7XLJby" role="lcghm">
            <property role="lacIc" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="AdDO7XLJb$">
    <property role="3GE5qa" value="Rules.F" />
    <ref role="WuzLi" to="uppz:AdDO7XLJ6p" resolve="F" />
    <node concept="11bSqf" id="AdDO7XLJb_" role="11c4hB">
      <node concept="3clFbS" id="AdDO7XLJbA" role="2VODD2">
        <node concept="lc7rE" id="AdDO7XLJbC" role="3cqZAp">
          <node concept="la8eA" id="AdDO7XLJbB" role="lcghm">
            <property role="lacIc" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="AdDO7XLJbD">
    <property role="3GE5qa" value="Rules.Start" />
    <ref role="WuzLi" to="uppz:AdDO7XLJ6q" resolve="Start" />
    <node concept="11bSqf" id="AdDO7XLJbE" role="11c4hB">
      <node concept="3clFbS" id="AdDO7XLJbF" role="2VODD2">
        <node concept="lc7rE" id="AdDO7XLJbI" role="3cqZAp">
          <node concept="l9hG8" id="AdDO7XLJbJ" role="lcghm">
            <node concept="2OqwBi" id="AdDO7XLJbK" role="lb14g">
              <node concept="3TrEf2" id="AdDO7XLJbH" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:AdDO7XLJ6z" />
              </node>
              <node concept="117lpO" id="AdDO7XLJbG" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

