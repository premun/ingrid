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
  <node concept="WtQ9Q" id="5lY$Gq$Kbuv">
    <property role="3GE5qa" value="Rules.Document" />
    <ref role="WuzLi" to="uppz:5lY$Gq$Kbr1" resolve="Document" />
    <node concept="11bSqf" id="5lY$Gq$Kbuw" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$Kbux" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$Kbu$" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$Kbu_" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$KbuA" role="lb14g">
              <node concept="3TrEf2" id="5lY$Gq$Kbuz" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:5lY$Gq$Kbrk" />
              </node>
              <node concept="117lpO" id="5lY$Gq$Kbuy" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$KbuC" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$KbuB" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$KbuF" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$KbuG" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$KbuH" role="lb14g">
              <node concept="3TrEf2" id="5lY$Gq$KbuE" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:5lY$Gq$Kbrl" />
              </node>
              <node concept="117lpO" id="5lY$Gq$KbuD" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$KbuJ" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$KbuI" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$KbuM" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$KbuN" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$KbuO" role="lb14g">
              <node concept="3TrEf2" id="5lY$Gq$KbuL" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:5lY$Gq$Kbrm" />
              </node>
              <node concept="117lpO" id="5lY$Gq$KbuK" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$KbuP">
    <property role="3GE5qa" value="Rules.Comment" />
    <ref role="WuzLi" to="uppz:5lY$Gq$Kbr2" resolve="Comment" />
    <node concept="11bSqf" id="5lY$Gq$KbuQ" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$KbuR" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$KbuT" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$KbuS" role="lcghm">
            <property role="lacIc" value="&lt;!--" />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$KbuV" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$KbuU" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$KbuY" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$KbuZ" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$Kbv0" role="lb14g">
              <node concept="3TrcHB" id="5lY$Gq$KbuX" role="2OqNvi">
                <ref role="3TsBF5" to="uppz:5lY$Gq$Kbrn" resolve="TEXT_1" />
              </node>
              <node concept="117lpO" id="5lY$Gq$KbuW" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbv2" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbv1" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbv4" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbv3" role="lcghm">
            <property role="lacIc" value="--&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$Kbv5">
    <property role="3GE5qa" value="Rules.Attribute" />
    <ref role="WuzLi" to="uppz:5lY$Gq$Kbr3" resolve="Attribute" />
    <node concept="11bSqf" id="5lY$Gq$Kbv6" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$Kbv7" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$Kbva" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$Kbvb" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$Kbvc" role="lb14g">
              <node concept="3TrcHB" id="5lY$Gq$Kbv9" role="2OqNvi">
                <ref role="3TsBF5" to="uppz:5lY$Gq$Kbro" resolve="Name_1" />
              </node>
              <node concept="117lpO" id="5lY$Gq$Kbv8" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbve" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbvd" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbvg" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbvf" role="lcghm">
            <property role="lacIc" value="=&quot;" />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbvi" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbvh" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbvl" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$Kbvm" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$Kbvn" role="lb14g">
              <node concept="3TrcHB" id="5lY$Gq$Kbvk" role="2OqNvi">
                <ref role="3TsBF5" to="uppz:5lY$Gq$Kbrp" resolve="TEXT_2" />
              </node>
              <node concept="117lpO" id="5lY$Gq$Kbvj" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbvp" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbvo" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbvr" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbvq" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$Kbvs">
    <property role="3GE5qa" value="Rules.Prolog" />
    <ref role="WuzLi" to="uppz:5lY$Gq$Kbr4" resolve="Prolog" />
    <node concept="11bSqf" id="5lY$Gq$Kbvt" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$Kbvu" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$Kbvw" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbvv" role="lcghm">
            <property role="lacIc" value="&lt;?xml " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbvy" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbvx" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbv_" role="3cqZAp">
          <node concept="l9S2W" id="5lY$Gq$KbvA" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$KbvB" role="lbANJ">
              <node concept="3Tsc0h" id="5lY$Gq$Kbv$" role="2OqNvi">
                <ref role="3TtcxE" to="uppz:5lY$Gq$Kbrq" />
              </node>
              <node concept="117lpO" id="5lY$Gq$Kbvz" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$KbvD" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$KbvC" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$KbvF" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$KbvE" role="lcghm">
            <property role="lacIc" value="?&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$KbvG">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="uppz:5lY$Gq$Kbr6" resolve="Content_1" />
    <node concept="11bSqf" id="5lY$Gq$KbvH" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$KbvI" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$KbvL" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$KbvM" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$KbvN" role="lb14g">
              <node concept="3TrcHB" id="5lY$Gq$KbvK" role="2OqNvi">
                <ref role="3TsBF5" to="uppz:5lY$Gq$Kbrr" resolve="TEXT_1" />
              </node>
              <node concept="117lpO" id="5lY$Gq$KbvJ" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$KbvO">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="uppz:5lY$Gq$Kbr8" resolve="Content_2" />
    <node concept="11bSqf" id="5lY$Gq$KbvP" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$KbvQ" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$KbvT" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$KbvU" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$KbvV" role="lb14g">
              <node concept="3TrEf2" id="5lY$Gq$KbvS" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:5lY$Gq$Kbrs" />
              </node>
              <node concept="117lpO" id="5lY$Gq$KbvR" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$KbvW">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="uppz:5lY$Gq$Kbra" resolve="Content_3" />
    <node concept="11bSqf" id="5lY$Gq$KbvX" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$KbvY" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$Kbw1" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$Kbw2" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$Kbw3" role="lb14g">
              <node concept="3TrEf2" id="5lY$Gq$Kbw0" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:5lY$Gq$Kbrt" />
              </node>
              <node concept="117lpO" id="5lY$Gq$KbvZ" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$Kbw4">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="uppz:5lY$Gq$Kbrc" resolve="Content_4" />
    <node concept="11bSqf" id="5lY$Gq$Kbw5" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$Kbw6" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$Kbw9" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$Kbwa" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$Kbwb" role="lb14g">
              <node concept="3TrEf2" id="5lY$Gq$Kbw8" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:5lY$Gq$Kbru" />
              </node>
              <node concept="117lpO" id="5lY$Gq$Kbw7" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$Kbwc">
    <property role="3GE5qa" value="Rules.Cdata" />
    <ref role="WuzLi" to="uppz:5lY$Gq$Kbre" resolve="Cdata" />
    <node concept="11bSqf" id="5lY$Gq$Kbwd" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$Kbwe" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$Kbwg" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbwf" role="lcghm">
            <property role="lacIc" value="&lt;![CDATA[" />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbwi" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbwh" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbwl" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$Kbwm" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$Kbwn" role="lb14g">
              <node concept="3TrcHB" id="5lY$Gq$Kbwk" role="2OqNvi">
                <ref role="3TsBF5" to="uppz:5lY$Gq$Kbrv" resolve="CDATA_1" />
              </node>
              <node concept="117lpO" id="5lY$Gq$Kbwj" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbwp" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbwo" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbwr" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbwq" role="lcghm">
            <property role="lacIc" value="]]&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$Kbws">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="WuzLi" to="uppz:5lY$Gq$Kbrg" resolve="Element_1" />
    <node concept="11bSqf" id="5lY$Gq$Kbwt" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$Kbwu" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$Kbww" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbwv" role="lcghm">
            <property role="lacIc" value="&lt;" />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbwy" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbwx" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbw_" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$KbwA" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$KbwB" role="lb14g">
              <node concept="3TrcHB" id="5lY$Gq$Kbw$" role="2OqNvi">
                <ref role="3TsBF5" to="uppz:5lY$Gq$Kbrw" resolve="Name_1" />
              </node>
              <node concept="117lpO" id="5lY$Gq$Kbwz" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$KbwD" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$KbwC" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$KbwG" role="3cqZAp">
          <node concept="l9S2W" id="5lY$Gq$KbwH" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$KbwI" role="lbANJ">
              <node concept="3Tsc0h" id="5lY$Gq$KbwF" role="2OqNvi">
                <ref role="3TtcxE" to="uppz:5lY$Gq$Kbrx" />
              </node>
              <node concept="117lpO" id="5lY$Gq$KbwE" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$KbwK" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$KbwJ" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$KbwM" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$KbwL" role="lcghm">
            <property role="lacIc" value="&gt;" />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$KbwO" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$KbwN" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$KbwR" role="3cqZAp">
          <node concept="l9S2W" id="5lY$Gq$KbwS" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$KbwT" role="lbANJ">
              <node concept="3Tsc0h" id="5lY$Gq$KbwQ" role="2OqNvi">
                <ref role="3TtcxE" to="uppz:5lY$Gq$Kbry" />
              </node>
              <node concept="117lpO" id="5lY$Gq$KbwP" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$KbwV" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$KbwU" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$KbwX" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$KbwW" role="lcghm">
            <property role="lacIc" value="&lt;/" />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$KbwZ" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$KbwY" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbx2" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$Kbx3" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$Kbx4" role="lb14g">
              <node concept="3TrcHB" id="5lY$Gq$Kbx1" role="2OqNvi">
                <ref role="3TsBF5" to="uppz:5lY$Gq$Kbrz" resolve="Name_2" />
              </node>
              <node concept="117lpO" id="5lY$Gq$Kbx0" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbx6" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbx5" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbx8" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbx7" role="lcghm">
            <property role="lacIc" value="&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$Kbx9">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="WuzLi" to="uppz:5lY$Gq$Kbri" resolve="Element_2" />
    <node concept="11bSqf" id="5lY$Gq$Kbxa" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$Kbxb" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$Kbxd" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbxc" role="lcghm">
            <property role="lacIc" value="&lt;" />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbxf" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbxe" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbxi" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$Kbxj" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$Kbxk" role="lb14g">
              <node concept="3TrcHB" id="5lY$Gq$Kbxh" role="2OqNvi">
                <ref role="3TsBF5" to="uppz:5lY$Gq$Kbr$" resolve="Name_1" />
              </node>
              <node concept="117lpO" id="5lY$Gq$Kbxg" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbxm" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbxl" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbxp" role="3cqZAp">
          <node concept="l9S2W" id="5lY$Gq$Kbxq" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$Kbxr" role="lbANJ">
              <node concept="3Tsc0h" id="5lY$Gq$Kbxo" role="2OqNvi">
                <ref role="3TtcxE" to="uppz:5lY$Gq$Kbr_" />
              </node>
              <node concept="117lpO" id="5lY$Gq$Kbxn" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbxt" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbxs" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$Kbxv" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$Kbxu" role="lcghm">
            <property role="lacIc" value="/&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

