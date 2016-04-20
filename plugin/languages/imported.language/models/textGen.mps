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
  <node concept="WtQ9Q" id="5lY$Gq$LRBw">
    <property role="3GE5qa" value="Rules.Document" />
    <ref role="WuzLi" to="uppz:5lY$Gq$LRz1" resolve="Document" />
    <node concept="11bSqf" id="5lY$Gq$LRBx" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$LRBy" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$LRB_" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$LRBA" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$LRBB" role="lb14g">
              <node concept="3TrEf2" id="5lY$Gq$LRB$" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:5lY$Gq$LRzv" />
              </node>
              <node concept="117lpO" id="5lY$Gq$LRBz" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRBD" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRBC" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRBG" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$LRBH" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$LRBI" role="lb14g">
              <node concept="3TrEf2" id="5lY$Gq$LRBF" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:5lY$Gq$LRzw" />
              </node>
              <node concept="117lpO" id="5lY$Gq$LRBE" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRBK" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRBJ" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRBN" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$LRBO" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$LRBP" role="lb14g">
              <node concept="3TrEf2" id="5lY$Gq$LRBM" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:5lY$Gq$LRzx" />
              </node>
              <node concept="117lpO" id="5lY$Gq$LRBL" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$LRBQ">
    <property role="3GE5qa" value="Rules.Comment" />
    <ref role="WuzLi" to="uppz:5lY$Gq$LRz3" resolve="Comment" />
    <node concept="11bSqf" id="5lY$Gq$LRBR" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$LRBS" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$LRBU" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRBT" role="lcghm">
            <property role="lacIc" value="&lt;!--" />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRBW" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRBV" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRBZ" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$LRC0" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$LRC1" role="lb14g">
              <node concept="3TrcHB" id="5lY$Gq$LRBY" role="2OqNvi">
                <ref role="3TsBF5" to="uppz:5lY$Gq$LRzy" resolve="TEXT_1" />
              </node>
              <node concept="117lpO" id="5lY$Gq$LRBX" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRC3" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRC2" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRC5" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRC4" role="lcghm">
            <property role="lacIc" value="--&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$LRC6">
    <property role="3GE5qa" value="Rules.Attribute" />
    <ref role="WuzLi" to="uppz:5lY$Gq$LRz5" resolve="Attribute" />
    <node concept="11bSqf" id="5lY$Gq$LRC7" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$LRC8" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$LRCb" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$LRCc" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$LRCd" role="lb14g">
              <node concept="3TrcHB" id="5lY$Gq$LRCa" role="2OqNvi">
                <ref role="3TsBF5" to="uppz:5lY$Gq$LRzz" resolve="Name_1" />
              </node>
              <node concept="117lpO" id="5lY$Gq$LRC9" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRCf" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRCe" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRCh" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRCg" role="lcghm">
            <property role="lacIc" value="=&quot;" />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRCj" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRCi" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRCm" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$LRCn" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$LRCo" role="lb14g">
              <node concept="3TrcHB" id="5lY$Gq$LRCl" role="2OqNvi">
                <ref role="3TsBF5" to="uppz:5lY$Gq$LRz$" resolve="TEXT_2" />
              </node>
              <node concept="117lpO" id="5lY$Gq$LRCk" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRCq" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRCp" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRCs" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRCr" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$LRCt">
    <property role="3GE5qa" value="Rules.Prolog" />
    <ref role="WuzLi" to="uppz:5lY$Gq$LRz7" resolve="Prolog" />
    <node concept="11bSqf" id="5lY$Gq$LRCu" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$LRCv" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$LRCx" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRCw" role="lcghm">
            <property role="lacIc" value="&lt;?xml " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRCz" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRCy" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRCA" role="3cqZAp">
          <node concept="l9S2W" id="5lY$Gq$LRCB" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$LRCC" role="lbANJ">
              <node concept="3Tsc0h" id="5lY$Gq$LRC_" role="2OqNvi">
                <ref role="3TtcxE" to="uppz:5lY$Gq$LRz_" />
              </node>
              <node concept="117lpO" id="5lY$Gq$LRC$" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRCE" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRCD" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRCG" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRCF" role="lcghm">
            <property role="lacIc" value="?&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$LRCH">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="uppz:5lY$Gq$LRza" resolve="Content_1" />
    <node concept="11bSqf" id="5lY$Gq$LRCI" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$LRCJ" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$LRCM" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$LRCN" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$LRCO" role="lb14g">
              <node concept="3TrcHB" id="5lY$Gq$LRCL" role="2OqNvi">
                <ref role="3TsBF5" to="uppz:5lY$Gq$LRzA" resolve="TEXT_1" />
              </node>
              <node concept="117lpO" id="5lY$Gq$LRCK" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$LRCP">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="uppz:5lY$Gq$LRzd" resolve="Content_2" />
    <node concept="11bSqf" id="5lY$Gq$LRCQ" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$LRCR" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$LRCU" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$LRCV" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$LRCW" role="lb14g">
              <node concept="3TrEf2" id="5lY$Gq$LRCT" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:5lY$Gq$LRzB" />
              </node>
              <node concept="117lpO" id="5lY$Gq$LRCS" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$LRCX">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="uppz:5lY$Gq$LRzg" resolve="Content_3" />
    <node concept="11bSqf" id="5lY$Gq$LRCY" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$LRCZ" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$LRD2" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$LRD3" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$LRD4" role="lb14g">
              <node concept="3TrEf2" id="5lY$Gq$LRD1" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:5lY$Gq$LRzC" />
              </node>
              <node concept="117lpO" id="5lY$Gq$LRD0" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$LRD5">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="uppz:5lY$Gq$LRzj" resolve="Content_4" />
    <node concept="11bSqf" id="5lY$Gq$LRD6" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$LRD7" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$LRDa" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$LRDb" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$LRDc" role="lb14g">
              <node concept="3TrEf2" id="5lY$Gq$LRD9" role="2OqNvi">
                <ref role="3Tt5mk" to="uppz:5lY$Gq$LRzD" />
              </node>
              <node concept="117lpO" id="5lY$Gq$LRD8" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$LRDd">
    <property role="3GE5qa" value="Rules.Cdata" />
    <ref role="WuzLi" to="uppz:5lY$Gq$LRzm" resolve="Cdata" />
    <node concept="11bSqf" id="5lY$Gq$LRDe" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$LRDf" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$LRDh" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRDg" role="lcghm">
            <property role="lacIc" value="&lt;![CDATA[" />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRDj" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRDi" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRDm" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$LRDn" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$LRDo" role="lb14g">
              <node concept="3TrcHB" id="5lY$Gq$LRDl" role="2OqNvi">
                <ref role="3TsBF5" to="uppz:5lY$Gq$LRzE" resolve="CDATA_1" />
              </node>
              <node concept="117lpO" id="5lY$Gq$LRDk" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRDq" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRDp" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRDs" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRDr" role="lcghm">
            <property role="lacIc" value="]]&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$LRDt">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="WuzLi" to="uppz:5lY$Gq$LRzp" resolve="Element_1" />
    <node concept="11bSqf" id="5lY$Gq$LRDu" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$LRDv" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$LRDx" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRDw" role="lcghm">
            <property role="lacIc" value="&lt;" />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRDz" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRDy" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRDA" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$LRDB" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$LRDC" role="lb14g">
              <node concept="3TrcHB" id="5lY$Gq$LRD_" role="2OqNvi">
                <ref role="3TsBF5" to="uppz:5lY$Gq$LRzF" resolve="Name_1" />
              </node>
              <node concept="117lpO" id="5lY$Gq$LRD$" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRDE" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRDD" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRDH" role="3cqZAp">
          <node concept="l9S2W" id="5lY$Gq$LRDI" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$LRDJ" role="lbANJ">
              <node concept="3Tsc0h" id="5lY$Gq$LRDG" role="2OqNvi">
                <ref role="3TtcxE" to="uppz:5lY$Gq$LRzG" />
              </node>
              <node concept="117lpO" id="5lY$Gq$LRDF" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRDL" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRDK" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRDN" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRDM" role="lcghm">
            <property role="lacIc" value="&gt;" />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRDP" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRDO" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRDS" role="3cqZAp">
          <node concept="l9S2W" id="5lY$Gq$LRDT" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$LRDU" role="lbANJ">
              <node concept="3Tsc0h" id="5lY$Gq$LRDR" role="2OqNvi">
                <ref role="3TtcxE" to="uppz:5lY$Gq$LRzH" />
              </node>
              <node concept="117lpO" id="5lY$Gq$LRDQ" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRDW" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRDV" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRDY" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRDX" role="lcghm">
            <property role="lacIc" value="&lt;/" />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRE0" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRDZ" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRE3" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$LRE4" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$LRE5" role="lb14g">
              <node concept="3TrcHB" id="5lY$Gq$LRE2" role="2OqNvi">
                <ref role="3TsBF5" to="uppz:5lY$Gq$LRzI" resolve="Name_2" />
              </node>
              <node concept="117lpO" id="5lY$Gq$LRE1" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRE7" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRE6" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LRE9" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LRE8" role="lcghm">
            <property role="lacIc" value="&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="5lY$Gq$LREa">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="WuzLi" to="uppz:5lY$Gq$LRzs" resolve="Element_2" />
    <node concept="11bSqf" id="5lY$Gq$LREb" role="11c4hB">
      <node concept="3clFbS" id="5lY$Gq$LREc" role="2VODD2">
        <node concept="lc7rE" id="5lY$Gq$LREe" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LREd" role="lcghm">
            <property role="lacIc" value="&lt;" />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LREg" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LREf" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LREj" role="3cqZAp">
          <node concept="l9hG8" id="5lY$Gq$LREk" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$LREl" role="lb14g">
              <node concept="3TrcHB" id="5lY$Gq$LREi" role="2OqNvi">
                <ref role="3TsBF5" to="uppz:5lY$Gq$LRzJ" resolve="Name_1" />
              </node>
              <node concept="117lpO" id="5lY$Gq$LREh" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LREn" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LREm" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LREq" role="3cqZAp">
          <node concept="l9S2W" id="5lY$Gq$LREr" role="lcghm">
            <node concept="2OqwBi" id="5lY$Gq$LREs" role="lbANJ">
              <node concept="3Tsc0h" id="5lY$Gq$LREp" role="2OqNvi">
                <ref role="3TtcxE" to="uppz:5lY$Gq$LRzK" />
              </node>
              <node concept="117lpO" id="5lY$Gq$LREo" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LREu" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LREt" role="lcghm">
            <property role="lacIc" value=" " />
          </node>
        </node>
        <node concept="lc7rE" id="5lY$Gq$LREw" role="3cqZAp">
          <node concept="la8eA" id="5lY$Gq$LREv" role="lcghm">
            <property role="lacIc" value="/&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

