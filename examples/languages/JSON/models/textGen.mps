<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1a142a5c-c4a4-4b80-bf7b-0a551d0b12f1(JSON.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ep4t" ref="r:adf57dfb-c55e-40ed-b76e-f3c2737af869(JSON.structure)" implicit="true" />
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
      <concept id="1237305491868" name="jetbrains.mps.lang.textGen.structure.CollectionAppendPart" flags="ng" index="l9S2W">
        <child id="1237305945551" name="list" index="lbANJ" />
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
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="WtQ9Q" id="6nlf6V60j3j">
    <property role="3GE5qa" value="Rules.Array" />
    <ref role="WuzLi" to="ep4t:6nlf6V60j15" resolve="Array_1" />
    <node concept="11bSqf" id="6nlf6V60j3k" role="11c4hB">
      <node concept="3clFbS" id="6nlf6V60j3l" role="2VODD2">
        <node concept="lc7rE" id="6nlf6V60j3n" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j3m" role="lcghm">
            <property role="lacIc" value="[" />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j3p" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j3o" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j3s" role="3cqZAp">
          <node concept="l9hG8" id="6nlf6V60j3t" role="lcghm">
            <node concept="2OqwBi" id="6nlf6V60j3u" role="lb14g">
              <node concept="3TrEf2" id="6nlf6V60j3r" role="2OqNvi">
                <ref role="3Tt5mk" to="ep4t:6nlf6V60j1o" />
              </node>
              <node concept="117lpO" id="6nlf6V60j3q" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j3w" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j3v" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j3z" role="3cqZAp">
          <node concept="l9S2W" id="6nlf6V60j3$" role="lcghm">
            <node concept="2OqwBi" id="6nlf6V60j3_" role="lbANJ">
              <node concept="3Tsc0h" id="6nlf6V60j3y" role="2OqNvi">
                <ref role="3TtcxE" to="ep4t:6nlf6V60j1p" />
              </node>
              <node concept="117lpO" id="6nlf6V60j3x" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j3B" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j3A" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j3D" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j3C" role="lcghm">
            <property role="lacIc" value="]" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6nlf6V60j3E">
    <property role="3GE5qa" value="Rules.Array" />
    <ref role="WuzLi" to="ep4t:6nlf6V60j16" resolve="Array_2" />
    <node concept="11bSqf" id="6nlf6V60j3F" role="11c4hB">
      <node concept="3clFbS" id="6nlf6V60j3G" role="2VODD2">
        <node concept="lc7rE" id="6nlf6V60j3I" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j3H" role="lcghm">
            <property role="lacIc" value="[" />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j3K" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j3J" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j3M" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j3L" role="lcghm">
            <property role="lacIc" value="]" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6nlf6V60j3N">
    <property role="3GE5qa" value="Rules.Array_block_1_1" />
    <ref role="WuzLi" to="ep4t:6nlf6V60j17" resolve="Array_block_1_1" />
    <node concept="11bSqf" id="6nlf6V60j3O" role="11c4hB">
      <node concept="3clFbS" id="6nlf6V60j3P" role="2VODD2">
        <node concept="lc7rE" id="6nlf6V60j3R" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j3Q" role="lcghm">
            <property role="lacIc" value="," />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j3T" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j3S" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j3W" role="3cqZAp">
          <node concept="l9hG8" id="6nlf6V60j3X" role="lcghm">
            <node concept="2OqwBi" id="6nlf6V60j3Y" role="lb14g">
              <node concept="3TrEf2" id="6nlf6V60j3V" role="2OqNvi">
                <ref role="3Tt5mk" to="ep4t:6nlf6V60j1q" />
              </node>
              <node concept="117lpO" id="6nlf6V60j3U" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6nlf6V60j3Z">
    <property role="3GE5qa" value="Rules.Json" />
    <ref role="WuzLi" to="ep4t:6nlf6V60j19" resolve="Json_1" />
    <node concept="11bSqf" id="6nlf6V60j40" role="11c4hB">
      <node concept="3clFbS" id="6nlf6V60j41" role="2VODD2">
        <node concept="lc7rE" id="6nlf6V60j44" role="3cqZAp">
          <node concept="l9hG8" id="6nlf6V60j45" role="lcghm">
            <node concept="2OqwBi" id="6nlf6V60j46" role="lb14g">
              <node concept="3TrEf2" id="6nlf6V60j43" role="2OqNvi">
                <ref role="3Tt5mk" to="ep4t:6nlf6V60j1r" />
              </node>
              <node concept="117lpO" id="6nlf6V60j42" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6nlf6V60j47">
    <property role="3GE5qa" value="Rules.Json" />
    <ref role="WuzLi" to="ep4t:6nlf6V60j1a" resolve="Json_2" />
    <node concept="11bSqf" id="6nlf6V60j48" role="11c4hB">
      <node concept="3clFbS" id="6nlf6V60j49" role="2VODD2">
        <node concept="lc7rE" id="6nlf6V60j4c" role="3cqZAp">
          <node concept="l9hG8" id="6nlf6V60j4d" role="lcghm">
            <node concept="2OqwBi" id="6nlf6V60j4e" role="lb14g">
              <node concept="3TrEf2" id="6nlf6V60j4b" role="2OqNvi">
                <ref role="3Tt5mk" to="ep4t:6nlf6V60j1s" />
              </node>
              <node concept="117lpO" id="6nlf6V60j4a" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6nlf6V60j4f">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="ep4t:6nlf6V60j1c" resolve="Value_1" />
    <node concept="11bSqf" id="6nlf6V60j4g" role="11c4hB">
      <node concept="3clFbS" id="6nlf6V60j4h" role="2VODD2">
        <node concept="lc7rE" id="6nlf6V60j4j" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j4i" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j4l" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j4k" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j4o" role="3cqZAp">
          <node concept="l9hG8" id="6nlf6V60j4p" role="lcghm">
            <node concept="2OqwBi" id="6nlf6V60j4q" role="lb14g">
              <node concept="3TrcHB" id="6nlf6V60j4n" role="2OqNvi">
                <ref role="3TsBF5" to="ep4t:6nlf6V60j1t" resolve="STRING_1" />
              </node>
              <node concept="117lpO" id="6nlf6V60j4m" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j4s" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j4r" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j4u" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j4t" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6nlf6V60j4v">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="ep4t:6nlf6V60j1d" resolve="Value_2" />
    <node concept="11bSqf" id="6nlf6V60j4w" role="11c4hB">
      <node concept="3clFbS" id="6nlf6V60j4x" role="2VODD2">
        <node concept="lc7rE" id="6nlf6V60j4$" role="3cqZAp">
          <node concept="l9hG8" id="6nlf6V60j4_" role="lcghm">
            <node concept="2OqwBi" id="6nlf6V60j4A" role="lb14g">
              <node concept="3TrcHB" id="6nlf6V60j4z" role="2OqNvi">
                <ref role="3TsBF5" to="ep4t:6nlf6V60j1u" resolve="NUMBER_1" />
              </node>
              <node concept="117lpO" id="6nlf6V60j4y" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6nlf6V60j4B">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="ep4t:6nlf6V60j1e" resolve="Value_3" />
    <node concept="11bSqf" id="6nlf6V60j4C" role="11c4hB">
      <node concept="3clFbS" id="6nlf6V60j4D" role="2VODD2">
        <node concept="lc7rE" id="6nlf6V60j4G" role="3cqZAp">
          <node concept="l9hG8" id="6nlf6V60j4H" role="lcghm">
            <node concept="2OqwBi" id="6nlf6V60j4I" role="lb14g">
              <node concept="3TrEf2" id="6nlf6V60j4F" role="2OqNvi">
                <ref role="3Tt5mk" to="ep4t:6nlf6V60j1v" />
              </node>
              <node concept="117lpO" id="6nlf6V60j4E" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6nlf6V60j4J">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="ep4t:6nlf6V60j1f" resolve="Value_4" />
    <node concept="11bSqf" id="6nlf6V60j4K" role="11c4hB">
      <node concept="3clFbS" id="6nlf6V60j4L" role="2VODD2">
        <node concept="lc7rE" id="6nlf6V60j4O" role="3cqZAp">
          <node concept="l9hG8" id="6nlf6V60j4P" role="lcghm">
            <node concept="2OqwBi" id="6nlf6V60j4Q" role="lb14g">
              <node concept="3TrEf2" id="6nlf6V60j4N" role="2OqNvi">
                <ref role="3Tt5mk" to="ep4t:6nlf6V60j1w" />
              </node>
              <node concept="117lpO" id="6nlf6V60j4M" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6nlf6V60j4R">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="ep4t:6nlf6V60j1g" resolve="Value_5" />
    <node concept="11bSqf" id="6nlf6V60j4S" role="11c4hB">
      <node concept="3clFbS" id="6nlf6V60j4T" role="2VODD2">
        <node concept="lc7rE" id="6nlf6V60j4V" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j4U" role="lcghm">
            <property role="lacIc" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6nlf6V60j4W">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="ep4t:6nlf6V60j1h" resolve="Value_6" />
    <node concept="11bSqf" id="6nlf6V60j4X" role="11c4hB">
      <node concept="3clFbS" id="6nlf6V60j4Y" role="2VODD2">
        <node concept="lc7rE" id="6nlf6V60j50" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j4Z" role="lcghm">
            <property role="lacIc" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6nlf6V60j51">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="ep4t:6nlf6V60j1i" resolve="Value_7" />
    <node concept="11bSqf" id="6nlf6V60j52" role="11c4hB">
      <node concept="3clFbS" id="6nlf6V60j53" role="2VODD2">
        <node concept="lc7rE" id="6nlf6V60j55" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j54" role="lcghm">
            <property role="lacIc" value="null" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6nlf6V60j56">
    <property role="3GE5qa" value="Rules.Pair" />
    <ref role="WuzLi" to="ep4t:6nlf6V60j1j" resolve="Pair" />
    <node concept="11bSqf" id="6nlf6V60j57" role="11c4hB">
      <node concept="3clFbS" id="6nlf6V60j58" role="2VODD2">
        <node concept="lc7rE" id="6nlf6V60j5a" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j59" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j5c" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j5b" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j5f" role="3cqZAp">
          <node concept="l9hG8" id="6nlf6V60j5g" role="lcghm">
            <node concept="2OqwBi" id="6nlf6V60j5h" role="lb14g">
              <node concept="3TrcHB" id="6nlf6V60j5e" role="2OqNvi">
                <ref role="3TsBF5" to="ep4t:6nlf6V60j1x" resolve="STRING_1" />
              </node>
              <node concept="117lpO" id="6nlf6V60j5d" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j5j" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j5i" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j5l" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j5k" role="lcghm">
            <property role="lacIc" value="&quot;:" />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j5n" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j5m" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j5q" role="3cqZAp">
          <node concept="l9hG8" id="6nlf6V60j5r" role="lcghm">
            <node concept="2OqwBi" id="6nlf6V60j5s" role="lb14g">
              <node concept="3TrEf2" id="6nlf6V60j5p" role="2OqNvi">
                <ref role="3Tt5mk" to="ep4t:6nlf6V60j1y" />
              </node>
              <node concept="117lpO" id="6nlf6V60j5o" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6nlf6V60j5t">
    <property role="3GE5qa" value="Rules.Object_block_1_1" />
    <ref role="WuzLi" to="ep4t:6nlf6V60j1k" resolve="Object_block_1_1" />
    <node concept="11bSqf" id="6nlf6V60j5u" role="11c4hB">
      <node concept="3clFbS" id="6nlf6V60j5v" role="2VODD2">
        <node concept="lc7rE" id="6nlf6V60j5x" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j5w" role="lcghm">
            <property role="lacIc" value="," />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j5z" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j5y" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j5A" role="3cqZAp">
          <node concept="l9hG8" id="6nlf6V60j5B" role="lcghm">
            <node concept="2OqwBi" id="6nlf6V60j5C" role="lb14g">
              <node concept="3TrEf2" id="6nlf6V60j5_" role="2OqNvi">
                <ref role="3Tt5mk" to="ep4t:6nlf6V60j1z" />
              </node>
              <node concept="117lpO" id="6nlf6V60j5$" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6nlf6V60j5D">
    <property role="3GE5qa" value="Rules.Object" />
    <ref role="WuzLi" to="ep4t:6nlf6V60j1m" resolve="Object_1" />
    <node concept="11bSqf" id="6nlf6V60j5E" role="11c4hB">
      <node concept="3clFbS" id="6nlf6V60j5F" role="2VODD2">
        <node concept="lc7rE" id="6nlf6V60j5H" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j5G" role="lcghm">
            <property role="lacIc" value="{" />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j5J" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j5I" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j5M" role="3cqZAp">
          <node concept="l9hG8" id="6nlf6V60j5N" role="lcghm">
            <node concept="2OqwBi" id="6nlf6V60j5O" role="lb14g">
              <node concept="3TrEf2" id="6nlf6V60j5L" role="2OqNvi">
                <ref role="3Tt5mk" to="ep4t:6nlf6V60j1$" />
              </node>
              <node concept="117lpO" id="6nlf6V60j5K" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j5Q" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j5P" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j5T" role="3cqZAp">
          <node concept="l9S2W" id="6nlf6V60j5U" role="lcghm">
            <node concept="2OqwBi" id="6nlf6V60j5V" role="lbANJ">
              <node concept="3Tsc0h" id="6nlf6V60j5S" role="2OqNvi">
                <ref role="3TtcxE" to="ep4t:6nlf6V60j1_" />
              </node>
              <node concept="117lpO" id="6nlf6V60j5R" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j5X" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j5W" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j5Z" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j5Y" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6nlf6V60j60">
    <property role="3GE5qa" value="Rules.Object" />
    <ref role="WuzLi" to="ep4t:6nlf6V60j1n" resolve="Object_2" />
    <node concept="11bSqf" id="6nlf6V60j61" role="11c4hB">
      <node concept="3clFbS" id="6nlf6V60j62" role="2VODD2">
        <node concept="lc7rE" id="6nlf6V60j64" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j63" role="lcghm">
            <property role="lacIc" value="{" />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j66" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j65" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="6nlf6V60j68" role="3cqZAp">
          <node concept="la8eA" id="6nlf6V60j67" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

