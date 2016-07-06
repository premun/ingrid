<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2ea3c0eb-463d-4c0e-8ae8-9f3cc44c35d2(SimpleXML.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="mspx" ref="r:518e5f34-f884-43dc-acb1-ce984bc87b95(SimpleXML.structure)" implicit="true" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="45307784116571022" name="jetbrains.mps.lang.textGen.structure.FilenameFunction" flags="ig" index="29tfMY" />
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305491868" name="jetbrains.mps.lang.textGen.structure.CollectionAppendPart" flags="ng" index="l9S2W">
        <property id="1237306003719" name="separator" index="lbP0B" />
        <property id="1237983969951" name="withSeparator" index="XA4eZ" />
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
        <child id="45307784116711884" name="filename" index="29tGrW" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="WtQ9Q" id="6vXZUoCOmts">
    <property role="3GE5qa" value="Rules.Document" />
    <ref role="WuzLi" to="mspx:6vXZUoCOmrK" resolve="Document" />
    <node concept="11bSqf" id="6vXZUoCOmtt" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmtu" role="2VODD2">
        <node concept="3clFbJ" id="6vXZUoCOmtx" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmty" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmtz" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmt$" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmt_" role="lb14g">
                  <node concept="3TrEf2" id="6vXZUoCOmtw" role="2OqNvi">
                    <ref role="3Tt5mk" to="mspx:6vXZUoCOmrW" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmtv" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6vXZUoCOmtA" role="3clFbw">
            <node concept="10Nm6u" id="6vXZUoCOmtB" role="3uHU7w" />
            <node concept="2OqwBi" id="6vXZUoCOmtC" role="3uHU7B">
              <node concept="3TrEf2" id="6vXZUoCOmtD" role="2OqNvi">
                <ref role="3Tt5mk" to="mspx:6vXZUoCOmrW" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmtE" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmtH" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmtI" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmtR" role="3cqZAp">
              <node concept="la8eA" id="6vXZUoCOmtS" role="lcghm">
                <property role="lacIc" value=" " />
              </node>
            </node>
            <node concept="lc7rE" id="6vXZUoCOmtJ" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmtK" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmtL" role="lb14g">
                  <node concept="3TrEf2" id="6vXZUoCOmtG" role="2OqNvi">
                    <ref role="3Tt5mk" to="mspx:6vXZUoCOmrX" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmtF" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6vXZUoCOmtM" role="3clFbw">
            <node concept="10Nm6u" id="6vXZUoCOmtN" role="3uHU7w" />
            <node concept="2OqwBi" id="6vXZUoCOmtO" role="3uHU7B">
              <node concept="3TrEf2" id="6vXZUoCOmtP" role="2OqNvi">
                <ref role="3Tt5mk" to="mspx:6vXZUoCOmrX" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmtQ" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmtV" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmtW" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmu5" role="3cqZAp">
              <node concept="la8eA" id="6vXZUoCOmu6" role="lcghm">
                <property role="lacIc" value=" " />
              </node>
            </node>
            <node concept="lc7rE" id="6vXZUoCOmtX" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmtY" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmtZ" role="lb14g">
                  <node concept="3TrEf2" id="6vXZUoCOmtU" role="2OqNvi">
                    <ref role="3Tt5mk" to="mspx:6vXZUoCOmrY" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmtT" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6vXZUoCOmu0" role="3clFbw">
            <node concept="10Nm6u" id="6vXZUoCOmu1" role="3uHU7w" />
            <node concept="2OqwBi" id="6vXZUoCOmu2" role="3uHU7B">
              <node concept="3TrEf2" id="6vXZUoCOmu3" role="2OqNvi">
                <ref role="3Tt5mk" to="mspx:6vXZUoCOmrY" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmu4" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="29tfMY" id="6vXZUoCOmu8" role="29tGrW">
      <node concept="3clFbS" id="6vXZUoCOmu9" role="2VODD2">
        <node concept="3cpWs6" id="6vXZUoCOmua" role="3cqZAp">
          <node concept="Xl_RD" id="6vXZUoCOmu7" role="3cqZAk">
            <property role="Xl_RC" value="Document" />
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="6vXZUoCOmuc" role="33IsuW">
      <node concept="3clFbS" id="6vXZUoCOmud" role="2VODD2">
        <node concept="3cpWs6" id="6vXZUoCOmue" role="3cqZAp">
          <node concept="Xl_RD" id="6vXZUoCOmub" role="3cqZAk">
            <property role="Xl_RC" value="" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmuf">
    <property role="3GE5qa" value="Rules.Comment" />
    <ref role="WuzLi" to="mspx:6vXZUoCOmrL" resolve="Comment" />
    <node concept="11bSqf" id="6vXZUoCOmug" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmuh" role="2VODD2">
        <node concept="lc7rE" id="6vXZUoCOmuj" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmui" role="lcghm">
            <property role="lacIc" value="&lt;!--" />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmum" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmun" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmuo" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmup" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmuq" role="lb14g">
                  <node concept="3TrcHB" id="6vXZUoCOmul" role="2OqNvi">
                    <ref role="3TsBF5" to="mspx:6vXZUoCOmrZ" resolve="TEXT_1" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmuk" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmur" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOmus" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOmut" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCOmuu" role="2OqNvi">
                <ref role="3TsBF5" to="mspx:6vXZUoCOmrZ" resolve="TEXT_1" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmuv" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCOmux" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmuw" role="lcghm">
            <property role="lacIc" value="--&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmuy">
    <property role="3GE5qa" value="Rules.Attribute" />
    <ref role="WuzLi" to="mspx:6vXZUoCOmrM" resolve="Attribute" />
    <node concept="11bSqf" id="6vXZUoCOmuz" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmu$" role="2VODD2">
        <node concept="3clFbJ" id="6vXZUoCOmuB" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmuC" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmuD" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmuE" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmuF" role="lb14g">
                  <node concept="3TrcHB" id="6vXZUoCOmuA" role="2OqNvi">
                    <ref role="3TsBF5" to="mspx:6vXZUoCOms0" resolve="Name_1" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmu_" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmuG" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOmuH" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOmuI" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCOmuJ" role="2OqNvi">
                <ref role="3TsBF5" to="mspx:6vXZUoCOms0" resolve="Name_1" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmuK" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCOmuM" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmuL" role="lcghm">
            <property role="lacIc" value="=&quot;" />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmuP" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmuQ" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmuR" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmuS" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmuT" role="lb14g">
                  <node concept="3TrcHB" id="6vXZUoCOmuO" role="2OqNvi">
                    <ref role="3TsBF5" to="mspx:6vXZUoCOms1" resolve="TEXT_2" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmuN" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmuU" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOmuV" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOmuW" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCOmuX" role="2OqNvi">
                <ref role="3TsBF5" to="mspx:6vXZUoCOms1" resolve="TEXT_2" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmuY" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCOmv0" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmuZ" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmv1">
    <property role="3GE5qa" value="Rules.Prolog" />
    <ref role="WuzLi" to="mspx:6vXZUoCOmrN" resolve="Prolog" />
    <node concept="11bSqf" id="6vXZUoCOmv2" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmv3" role="2VODD2">
        <node concept="lc7rE" id="6vXZUoCOmv5" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmv4" role="lcghm">
            <property role="lacIc" value="&lt;?xml " />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmv8" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmv9" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmva" role="3cqZAp">
              <node concept="l9S2W" id="6vXZUoCOmvb" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=" " />
                <node concept="2OqwBi" id="6vXZUoCOmvc" role="lbANJ">
                  <node concept="3Tsc0h" id="6vXZUoCOmv7" role="2OqNvi">
                    <ref role="3TtcxE" to="mspx:6vXZUoCOms2" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmv6" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="6vXZUoCOmvd" role="3clFbw">
            <node concept="2OqwBi" id="6vXZUoCOmve" role="3uHU7B">
              <node concept="34oBXx" id="6vXZUoCOmvf" role="2OqNvi" />
              <node concept="2OqwBi" id="6vXZUoCOmvg" role="2Oq$k0">
                <node concept="3Tsc0h" id="6vXZUoCOmvh" role="2OqNvi">
                  <ref role="3TtcxE" to="mspx:6vXZUoCOms2" />
                </node>
                <node concept="117lpO" id="6vXZUoCOmvi" role="2Oq$k0" />
              </node>
            </node>
            <node concept="3cmrfG" id="6vXZUoCOmvj" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCOmvl" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmvk" role="lcghm">
            <property role="lacIc" value="?&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmvm">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="mspx:6vXZUoCOmrP" resolve="Content_1" />
    <node concept="11bSqf" id="6vXZUoCOmvn" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmvo" role="2VODD2">
        <node concept="3clFbJ" id="6vXZUoCOmvr" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmvs" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmvt" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmvu" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmvv" role="lb14g">
                  <node concept="3TrcHB" id="6vXZUoCOmvq" role="2OqNvi">
                    <ref role="3TsBF5" to="mspx:6vXZUoCOms3" resolve="TEXT_1" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmvp" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmvw" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOmvx" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOmvy" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCOmvz" role="2OqNvi">
                <ref role="3TsBF5" to="mspx:6vXZUoCOms3" resolve="TEXT_1" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmv$" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmv_">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="mspx:6vXZUoCOmrQ" resolve="Content_2" />
    <node concept="11bSqf" id="6vXZUoCOmvA" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmvB" role="2VODD2">
        <node concept="3clFbJ" id="6vXZUoCOmvE" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmvF" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmvG" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmvH" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmvI" role="lb14g">
                  <node concept="3TrEf2" id="6vXZUoCOmvD" role="2OqNvi">
                    <ref role="3Tt5mk" to="mspx:6vXZUoCOms4" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmvC" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6vXZUoCOmvJ" role="3clFbw">
            <node concept="10Nm6u" id="6vXZUoCOmvK" role="3uHU7w" />
            <node concept="2OqwBi" id="6vXZUoCOmvL" role="3uHU7B">
              <node concept="3TrEf2" id="6vXZUoCOmvM" role="2OqNvi">
                <ref role="3Tt5mk" to="mspx:6vXZUoCOms4" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmvN" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmvO">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="mspx:6vXZUoCOmrR" resolve="Content_3" />
    <node concept="11bSqf" id="6vXZUoCOmvP" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmvQ" role="2VODD2">
        <node concept="3clFbJ" id="6vXZUoCOmvT" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmvU" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmvV" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmvW" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmvX" role="lb14g">
                  <node concept="3TrEf2" id="6vXZUoCOmvS" role="2OqNvi">
                    <ref role="3Tt5mk" to="mspx:6vXZUoCOms5" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmvR" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6vXZUoCOmvY" role="3clFbw">
            <node concept="10Nm6u" id="6vXZUoCOmvZ" role="3uHU7w" />
            <node concept="2OqwBi" id="6vXZUoCOmw0" role="3uHU7B">
              <node concept="3TrEf2" id="6vXZUoCOmw1" role="2OqNvi">
                <ref role="3Tt5mk" to="mspx:6vXZUoCOms5" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmw2" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmw3">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="mspx:6vXZUoCOmrS" resolve="Content_4" />
    <node concept="11bSqf" id="6vXZUoCOmw4" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmw5" role="2VODD2">
        <node concept="3clFbJ" id="6vXZUoCOmw8" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmw9" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmwa" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmwb" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmwc" role="lb14g">
                  <node concept="3TrcHB" id="6vXZUoCOmw7" role="2OqNvi">
                    <ref role="3TsBF5" to="mspx:6vXZUoCOms6" resolve="CDATA_1" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmw6" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmwd" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOmwe" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOmwf" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCOmwg" role="2OqNvi">
                <ref role="3TsBF5" to="mspx:6vXZUoCOms6" resolve="CDATA_1" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmwh" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmwi">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="WuzLi" to="mspx:6vXZUoCOmrU" resolve="Element_1" />
    <node concept="11bSqf" id="6vXZUoCOmwj" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmwk" role="2VODD2">
        <node concept="lc7rE" id="6vXZUoCOmwm" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmwl" role="lcghm">
            <property role="lacIc" value="&lt;" />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmwp" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmwq" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmwr" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmws" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmwt" role="lb14g">
                  <node concept="3TrcHB" id="6vXZUoCOmwo" role="2OqNvi">
                    <ref role="3TsBF5" to="mspx:6vXZUoCOms7" resolve="Name_1" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmwn" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmwu" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOmwv" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOmww" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCOmwx" role="2OqNvi">
                <ref role="3TsBF5" to="mspx:6vXZUoCOms7" resolve="Name_1" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmwy" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmw_" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmwA" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmwL" role="3cqZAp">
              <node concept="la8eA" id="6vXZUoCOmwM" role="lcghm">
                <property role="lacIc" value=" " />
              </node>
            </node>
            <node concept="lc7rE" id="6vXZUoCOmwB" role="3cqZAp">
              <node concept="l9S2W" id="6vXZUoCOmwC" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=" " />
                <node concept="2OqwBi" id="6vXZUoCOmwD" role="lbANJ">
                  <node concept="3Tsc0h" id="6vXZUoCOmw$" role="2OqNvi">
                    <ref role="3TtcxE" to="mspx:6vXZUoCOms8" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmwz" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="6vXZUoCOmwE" role="3clFbw">
            <node concept="2OqwBi" id="6vXZUoCOmwF" role="3uHU7B">
              <node concept="34oBXx" id="6vXZUoCOmwG" role="2OqNvi" />
              <node concept="2OqwBi" id="6vXZUoCOmwH" role="2Oq$k0">
                <node concept="3Tsc0h" id="6vXZUoCOmwI" role="2OqNvi">
                  <ref role="3TtcxE" to="mspx:6vXZUoCOms8" />
                </node>
                <node concept="117lpO" id="6vXZUoCOmwJ" role="2Oq$k0" />
              </node>
            </node>
            <node concept="3cmrfG" id="6vXZUoCOmwK" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCOmwO" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmwN" role="lcghm">
            <property role="lacIc" value="&gt;" />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmwR" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmwS" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmwT" role="3cqZAp">
              <node concept="l9S2W" id="6vXZUoCOmwU" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=" " />
                <node concept="2OqwBi" id="6vXZUoCOmwV" role="lbANJ">
                  <node concept="3Tsc0h" id="6vXZUoCOmwQ" role="2OqNvi">
                    <ref role="3TtcxE" to="mspx:6vXZUoCOms9" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmwP" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="6vXZUoCOmwW" role="3clFbw">
            <node concept="2OqwBi" id="6vXZUoCOmwX" role="3uHU7B">
              <node concept="34oBXx" id="6vXZUoCOmwY" role="2OqNvi" />
              <node concept="2OqwBi" id="6vXZUoCOmwZ" role="2Oq$k0">
                <node concept="3Tsc0h" id="6vXZUoCOmx0" role="2OqNvi">
                  <ref role="3TtcxE" to="mspx:6vXZUoCOms9" />
                </node>
                <node concept="117lpO" id="6vXZUoCOmx1" role="2Oq$k0" />
              </node>
            </node>
            <node concept="3cmrfG" id="6vXZUoCOmx2" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCOmx4" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmx3" role="lcghm">
            <property role="lacIc" value="&lt;/" />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmx7" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmx8" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmx9" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmxa" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmxb" role="lb14g">
                  <node concept="3TrcHB" id="6vXZUoCOmx6" role="2OqNvi">
                    <ref role="3TsBF5" to="mspx:6vXZUoCOmsa" resolve="Name_2" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmx5" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmxc" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOmxd" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOmxe" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCOmxf" role="2OqNvi">
                <ref role="3TsBF5" to="mspx:6vXZUoCOmsa" resolve="Name_2" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmxg" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCOmxi" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmxh" role="lcghm">
            <property role="lacIc" value="&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmxj">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="WuzLi" to="mspx:6vXZUoCOmrV" resolve="Element_2" />
    <node concept="11bSqf" id="6vXZUoCOmxk" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmxl" role="2VODD2">
        <node concept="lc7rE" id="6vXZUoCOmxn" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmxm" role="lcghm">
            <property role="lacIc" value="&lt;" />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmxq" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmxr" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmxs" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmxt" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmxu" role="lb14g">
                  <node concept="3TrcHB" id="6vXZUoCOmxp" role="2OqNvi">
                    <ref role="3TsBF5" to="mspx:6vXZUoCOmsb" resolve="Name_1" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmxo" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmxv" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOmxw" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOmxx" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCOmxy" role="2OqNvi">
                <ref role="3TsBF5" to="mspx:6vXZUoCOmsb" resolve="Name_1" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmxz" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmxA" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmxB" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmxM" role="3cqZAp">
              <node concept="la8eA" id="6vXZUoCOmxN" role="lcghm">
                <property role="lacIc" value=" " />
              </node>
            </node>
            <node concept="lc7rE" id="6vXZUoCOmxC" role="3cqZAp">
              <node concept="l9S2W" id="6vXZUoCOmxD" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=" " />
                <node concept="2OqwBi" id="6vXZUoCOmxE" role="lbANJ">
                  <node concept="3Tsc0h" id="6vXZUoCOmx_" role="2OqNvi">
                    <ref role="3TtcxE" to="mspx:6vXZUoCOmsc" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmx$" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="6vXZUoCOmxF" role="3clFbw">
            <node concept="2OqwBi" id="6vXZUoCOmxG" role="3uHU7B">
              <node concept="34oBXx" id="6vXZUoCOmxH" role="2OqNvi" />
              <node concept="2OqwBi" id="6vXZUoCOmxI" role="2Oq$k0">
                <node concept="3Tsc0h" id="6vXZUoCOmxJ" role="2OqNvi">
                  <ref role="3TtcxE" to="mspx:6vXZUoCOmsc" />
                </node>
                <node concept="117lpO" id="6vXZUoCOmxK" role="2Oq$k0" />
              </node>
            </node>
            <node concept="3cmrfG" id="6vXZUoCOmxL" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCOmxP" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmxO" role="lcghm">
            <property role="lacIc" value="/&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

