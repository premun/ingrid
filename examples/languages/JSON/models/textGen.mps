<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cc0956e5-062e-4d72-a0cc-5983782b4106(JSON.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="t731" ref="r:ff2d9a94-ae1a-4499-8f4b-3caba363a8bb(JSON.structure)" implicit="true" />
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
  <node concept="WtQ9Q" id="FxYxRU7se6">
    <property role="3GE5qa" value="Rules.Array" />
    <ref role="WuzLi" to="t731:FxYxRU7s0E" resolve="Array_1" />
    <node concept="11bSqf" id="FxYxRU7se7" role="11c4hB">
      <node concept="3clFbS" id="FxYxRU7se8" role="2VODD2">
        <node concept="lc7rE" id="FxYxRU7sea" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7se9" role="lcghm">
            <property role="lacIc" value="[" />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sec" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7seb" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sef" role="3cqZAp">
          <node concept="l9hG8" id="FxYxRU7seg" role="lcghm">
            <node concept="2OqwBi" id="FxYxRU7seh" role="lb14g">
              <node concept="3TrEf2" id="FxYxRU7see" role="2OqNvi">
                <ref role="3Tt5mk" to="t731:FxYxRU7s1a" />
              </node>
              <node concept="117lpO" id="FxYxRU7sed" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sej" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sei" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sem" role="3cqZAp">
          <node concept="l9S2W" id="FxYxRU7sen" role="lcghm">
            <node concept="2OqwBi" id="FxYxRU7seo" role="lbANJ">
              <node concept="3Tsc0h" id="FxYxRU7sel" role="2OqNvi">
                <ref role="3TtcxE" to="t731:FxYxRU7s1b" />
              </node>
              <node concept="117lpO" id="FxYxRU7sek" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7seq" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sep" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7ses" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7ser" role="lcghm">
            <property role="lacIc" value="]" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="FxYxRU7set">
    <property role="3GE5qa" value="Rules.Array" />
    <ref role="WuzLi" to="t731:FxYxRU7s0G" resolve="Array_2" />
    <node concept="11bSqf" id="FxYxRU7seu" role="11c4hB">
      <node concept="3clFbS" id="FxYxRU7sev" role="2VODD2">
        <node concept="lc7rE" id="FxYxRU7sex" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sew" role="lcghm">
            <property role="lacIc" value="[" />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sez" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sey" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7se_" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7se$" role="lcghm">
            <property role="lacIc" value="]" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="FxYxRU7seA">
    <property role="3GE5qa" value="Rules.Array_block_1_1" />
    <ref role="WuzLi" to="t731:FxYxRU7s0I" resolve="Array_block_1_1" />
    <node concept="11bSqf" id="FxYxRU7seB" role="11c4hB">
      <node concept="3clFbS" id="FxYxRU7seC" role="2VODD2">
        <node concept="lc7rE" id="FxYxRU7seE" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7seD" role="lcghm">
            <property role="lacIc" value="," />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7seG" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7seF" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7seJ" role="3cqZAp">
          <node concept="l9hG8" id="FxYxRU7seK" role="lcghm">
            <node concept="2OqwBi" id="FxYxRU7seL" role="lb14g">
              <node concept="3TrEf2" id="FxYxRU7seI" role="2OqNvi">
                <ref role="3Tt5mk" to="t731:FxYxRU7s1c" />
              </node>
              <node concept="117lpO" id="FxYxRU7seH" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="FxYxRU7seM">
    <property role="3GE5qa" value="Rules.Json" />
    <ref role="WuzLi" to="t731:FxYxRU7s0K" resolve="Json_1" />
    <node concept="11bSqf" id="FxYxRU7seN" role="11c4hB">
      <node concept="3clFbS" id="FxYxRU7seO" role="2VODD2">
        <node concept="lc7rE" id="FxYxRU7seR" role="3cqZAp">
          <node concept="l9hG8" id="FxYxRU7seS" role="lcghm">
            <node concept="2OqwBi" id="FxYxRU7seT" role="lb14g">
              <node concept="3TrEf2" id="FxYxRU7seQ" role="2OqNvi">
                <ref role="3Tt5mk" to="t731:FxYxRU7s1d" />
              </node>
              <node concept="117lpO" id="FxYxRU7seP" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="FxYxRU7seU">
    <property role="3GE5qa" value="Rules.Json" />
    <ref role="WuzLi" to="t731:FxYxRU7s0M" resolve="Json_2" />
    <node concept="11bSqf" id="FxYxRU7seV" role="11c4hB">
      <node concept="3clFbS" id="FxYxRU7seW" role="2VODD2">
        <node concept="lc7rE" id="FxYxRU7seZ" role="3cqZAp">
          <node concept="l9hG8" id="FxYxRU7sf0" role="lcghm">
            <node concept="2OqwBi" id="FxYxRU7sf1" role="lb14g">
              <node concept="3TrEf2" id="FxYxRU7seY" role="2OqNvi">
                <ref role="3Tt5mk" to="t731:FxYxRU7s1e" />
              </node>
              <node concept="117lpO" id="FxYxRU7seX" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="FxYxRU7sf2">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="t731:FxYxRU7s0P" resolve="Value_1" />
    <node concept="11bSqf" id="FxYxRU7sf3" role="11c4hB">
      <node concept="3clFbS" id="FxYxRU7sf4" role="2VODD2">
        <node concept="lc7rE" id="FxYxRU7sf6" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sf5" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sf8" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sf7" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sfb" role="3cqZAp">
          <node concept="l9hG8" id="FxYxRU7sfc" role="lcghm">
            <node concept="2OqwBi" id="FxYxRU7sfd" role="lb14g">
              <node concept="3TrcHB" id="FxYxRU7sfa" role="2OqNvi">
                <ref role="3TsBF5" to="t731:FxYxRU7s1f" resolve="STRING_1" />
              </node>
              <node concept="117lpO" id="FxYxRU7sf9" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sff" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sfe" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sfh" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sfg" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="FxYxRU7sfi">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="t731:FxYxRU7s0R" resolve="Value_2" />
    <node concept="11bSqf" id="FxYxRU7sfj" role="11c4hB">
      <node concept="3clFbS" id="FxYxRU7sfk" role="2VODD2">
        <node concept="lc7rE" id="FxYxRU7sfn" role="3cqZAp">
          <node concept="l9hG8" id="FxYxRU7sfo" role="lcghm">
            <node concept="2OqwBi" id="FxYxRU7sfp" role="lb14g">
              <node concept="3TrcHB" id="FxYxRU7sfm" role="2OqNvi">
                <ref role="3TsBF5" to="t731:FxYxRU7s1g" resolve="NUMBER_1" />
              </node>
              <node concept="117lpO" id="FxYxRU7sfl" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="FxYxRU7sfq">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="t731:FxYxRU7s0T" resolve="Value_3" />
    <node concept="11bSqf" id="FxYxRU7sfr" role="11c4hB">
      <node concept="3clFbS" id="FxYxRU7sfs" role="2VODD2">
        <node concept="lc7rE" id="FxYxRU7sfv" role="3cqZAp">
          <node concept="l9hG8" id="FxYxRU7sfw" role="lcghm">
            <node concept="2OqwBi" id="FxYxRU7sfx" role="lb14g">
              <node concept="3TrEf2" id="FxYxRU7sfu" role="2OqNvi">
                <ref role="3Tt5mk" to="t731:FxYxRU7s1h" />
              </node>
              <node concept="117lpO" id="FxYxRU7sft" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="FxYxRU7sfy">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="t731:FxYxRU7s0V" resolve="Value_4" />
    <node concept="11bSqf" id="FxYxRU7sfz" role="11c4hB">
      <node concept="3clFbS" id="FxYxRU7sf$" role="2VODD2">
        <node concept="lc7rE" id="FxYxRU7sfB" role="3cqZAp">
          <node concept="l9hG8" id="FxYxRU7sfC" role="lcghm">
            <node concept="2OqwBi" id="FxYxRU7sfD" role="lb14g">
              <node concept="3TrEf2" id="FxYxRU7sfA" role="2OqNvi">
                <ref role="3Tt5mk" to="t731:FxYxRU7s1i" />
              </node>
              <node concept="117lpO" id="FxYxRU7sf_" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="FxYxRU7sfE">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="t731:FxYxRU7s0X" resolve="Value_5" />
    <node concept="11bSqf" id="FxYxRU7sfF" role="11c4hB">
      <node concept="3clFbS" id="FxYxRU7sfG" role="2VODD2">
        <node concept="lc7rE" id="FxYxRU7sfI" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sfH" role="lcghm">
            <property role="lacIc" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="FxYxRU7sfJ">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="t731:FxYxRU7s0Z" resolve="Value_6" />
    <node concept="11bSqf" id="FxYxRU7sfK" role="11c4hB">
      <node concept="3clFbS" id="FxYxRU7sfL" role="2VODD2">
        <node concept="lc7rE" id="FxYxRU7sfN" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sfM" role="lcghm">
            <property role="lacIc" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="FxYxRU7sfO">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="t731:FxYxRU7s11" resolve="Value_7" />
    <node concept="11bSqf" id="FxYxRU7sfP" role="11c4hB">
      <node concept="3clFbS" id="FxYxRU7sfQ" role="2VODD2">
        <node concept="lc7rE" id="FxYxRU7sfS" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sfR" role="lcghm">
            <property role="lacIc" value="null" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="FxYxRU7sfT">
    <property role="3GE5qa" value="Rules.Pair" />
    <ref role="WuzLi" to="t731:FxYxRU7s13" resolve="Pair" />
    <node concept="11bSqf" id="FxYxRU7sfU" role="11c4hB">
      <node concept="3clFbS" id="FxYxRU7sfV" role="2VODD2">
        <node concept="lc7rE" id="FxYxRU7sfX" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sfW" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sfZ" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sfY" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sg2" role="3cqZAp">
          <node concept="l9hG8" id="FxYxRU7sg3" role="lcghm">
            <node concept="2OqwBi" id="FxYxRU7sg4" role="lb14g">
              <node concept="3TrcHB" id="FxYxRU7sg1" role="2OqNvi">
                <ref role="3TsBF5" to="t731:FxYxRU7s1j" resolve="STRING_1" />
              </node>
              <node concept="117lpO" id="FxYxRU7sg0" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sg6" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sg5" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sg8" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sg7" role="lcghm">
            <property role="lacIc" value="&quot;:" />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sga" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sg9" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sgd" role="3cqZAp">
          <node concept="l9hG8" id="FxYxRU7sge" role="lcghm">
            <node concept="2OqwBi" id="FxYxRU7sgf" role="lb14g">
              <node concept="3TrEf2" id="FxYxRU7sgc" role="2OqNvi">
                <ref role="3Tt5mk" to="t731:FxYxRU7s1k" />
              </node>
              <node concept="117lpO" id="FxYxRU7sgb" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="FxYxRU7sgg">
    <property role="3GE5qa" value="Rules.Object_block_1_1" />
    <ref role="WuzLi" to="t731:FxYxRU7s14" resolve="Object_block_1_1" />
    <node concept="11bSqf" id="FxYxRU7sgh" role="11c4hB">
      <node concept="3clFbS" id="FxYxRU7sgi" role="2VODD2">
        <node concept="lc7rE" id="FxYxRU7sgk" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sgj" role="lcghm">
            <property role="lacIc" value="," />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sgm" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sgl" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sgp" role="3cqZAp">
          <node concept="l9hG8" id="FxYxRU7sgq" role="lcghm">
            <node concept="2OqwBi" id="FxYxRU7sgr" role="lb14g">
              <node concept="3TrEf2" id="FxYxRU7sgo" role="2OqNvi">
                <ref role="3Tt5mk" to="t731:FxYxRU7s1l" />
              </node>
              <node concept="117lpO" id="FxYxRU7sgn" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="FxYxRU7sgs">
    <property role="3GE5qa" value="Rules.Object" />
    <ref role="WuzLi" to="t731:FxYxRU7s16" resolve="Object_1" />
    <node concept="11bSqf" id="FxYxRU7sgt" role="11c4hB">
      <node concept="3clFbS" id="FxYxRU7sgu" role="2VODD2">
        <node concept="lc7rE" id="FxYxRU7sgw" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sgv" role="lcghm">
            <property role="lacIc" value="{" />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sgy" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sgx" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sg_" role="3cqZAp">
          <node concept="l9hG8" id="FxYxRU7sgA" role="lcghm">
            <node concept="2OqwBi" id="FxYxRU7sgB" role="lb14g">
              <node concept="3TrEf2" id="FxYxRU7sg$" role="2OqNvi">
                <ref role="3Tt5mk" to="t731:FxYxRU7s1m" />
              </node>
              <node concept="117lpO" id="FxYxRU7sgz" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sgD" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sgC" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sgG" role="3cqZAp">
          <node concept="l9S2W" id="FxYxRU7sgH" role="lcghm">
            <node concept="2OqwBi" id="FxYxRU7sgI" role="lbANJ">
              <node concept="3Tsc0h" id="FxYxRU7sgF" role="2OqNvi">
                <ref role="3TtcxE" to="t731:FxYxRU7s1n" />
              </node>
              <node concept="117lpO" id="FxYxRU7sgE" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sgK" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sgJ" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sgM" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sgL" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="FxYxRU7sgN">
    <property role="3GE5qa" value="Rules.Object" />
    <ref role="WuzLi" to="t731:FxYxRU7s18" resolve="Object_2" />
    <node concept="11bSqf" id="FxYxRU7sgO" role="11c4hB">
      <node concept="3clFbS" id="FxYxRU7sgP" role="2VODD2">
        <node concept="lc7rE" id="FxYxRU7sgR" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sgQ" role="lcghm">
            <property role="lacIc" value="{" />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sgT" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sgS" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="FxYxRU7sgV" role="3cqZAp">
          <node concept="la8eA" id="FxYxRU7sgU" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

