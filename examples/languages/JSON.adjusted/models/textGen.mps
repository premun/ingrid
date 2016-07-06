<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f6a7dbd4-f4d0-4050-92bb-6f2f23f8957d(JSON.adjusted.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="mspx" ref="r:518e5f34-f884-43dc-acb1-ce984bc87b95(SimpleXML.structure)" />
    <import index="s3xm" ref="r:22421599-0862-44d6-9aa7-f3ea12d8f84f(JSON.adjusted.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="45307784116571022" name="jetbrains.mps.lang.textGen.structure.FilenameFunction" flags="ig" index="29tfMY" />
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="4357423944233036906" name="jetbrains.mps.lang.textGen.structure.IndentPart" flags="ng" index="2BGw6n" />
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="45307784116711884" name="filename" index="29tGrW" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
      <concept id="1233752719417" name="jetbrains.mps.lang.textGen.structure.IncreaseDepthOperation" flags="nn" index="11p84A" />
      <concept id="1233752780875" name="jetbrains.mps.lang.textGen.structure.DecreaseDepthOperation" flags="nn" index="11pn5k" />
      <concept id="1236188139846" name="jetbrains.mps.lang.textGen.structure.WithIndentOperation" flags="nn" index="3izx1p">
        <child id="1236188238861" name="list" index="3izTki" />
      </concept>
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="WtQ9Q" id="6vXZUoCOmcf">
    <property role="3GE5qa" value="Rules.Pair" />
    <ref role="WuzLi" to="s3xm:6vXZUoCOm9K" resolve="Pair" />
    <node concept="11bSqf" id="6vXZUoCOmcg" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmch" role="2VODD2">
        <node concept="lc7rE" id="6vXZUoCOmcj" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmci" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmcm" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmcn" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmco" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmcp" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmcq" role="lb14g">
                  <node concept="3TrcHB" id="6vXZUoCOmcl" role="2OqNvi">
                    <ref role="3TsBF5" to="s3xm:6vXZUoCOma4" resolve="STRING_1" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmck" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmcr" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOmcs" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOmct" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCOmcu" role="2OqNvi">
                <ref role="3TsBF5" to="s3xm:6vXZUoCOma4" resolve="STRING_1" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmcv" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCOmcx" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmcw" role="lcghm">
            <property role="lacIc" value="&quot;: " />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmc$" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmc_" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmcA" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmcB" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmcC" role="lb14g">
                  <node concept="3TrEf2" id="6vXZUoCOmcz" role="2OqNvi">
                    <ref role="3Tt5mk" to="s3xm:6vXZUoCOma5" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmcy" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6vXZUoCOmcD" role="3clFbw">
            <node concept="10Nm6u" id="6vXZUoCOmcE" role="3uHU7w" />
            <node concept="2OqwBi" id="6vXZUoCOmcF" role="3uHU7B">
              <node concept="3TrEf2" id="6vXZUoCOmcG" role="2OqNvi">
                <ref role="3Tt5mk" to="s3xm:6vXZUoCOma5" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmcH" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmcZ">
    <property role="3GE5qa" value="Rules.Array" />
    <ref role="WuzLi" to="s3xm:6vXZUoCOm9N" resolve="Array_1" />
    <node concept="11bSqf" id="6vXZUoCOmd0" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmd1" role="2VODD2">
        <node concept="lc7rE" id="6vXZUoCOmd3" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmd2" role="lcghm">
            <property role="lacIc" value="[" />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCSmfg" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCSmfh" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCSmfi" role="3cqZAp">
              <node concept="l8MVK" id="6vXZUoCSmfj" role="lcghm" />
            </node>
            <node concept="11p84A" id="6vXZUoCSmfk" role="3cqZAp" />
            <node concept="3izx1p" id="6vXZUoCSmfl" role="3cqZAp">
              <node concept="3clFbS" id="6vXZUoCSmfm" role="3izTki">
                <node concept="3cpWs8" id="6vXZUoCSmfn" role="3cqZAp">
                  <node concept="3cpWsn" id="6vXZUoCSmfo" role="3cpWs9">
                    <property role="TrG5h" value="index" />
                    <node concept="10Oyi0" id="6vXZUoCSmfp" role="1tU5fm" />
                    <node concept="3cmrfG" id="6vXZUoCSmfq" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="6vXZUoCSmfr" role="3cqZAp">
                  <node concept="2GrKxI" id="6vXZUoCSmfs" role="2Gsz3X">
                    <property role="TrG5h" value="value" />
                  </node>
                  <node concept="3clFbS" id="6vXZUoCSmft" role="2LFqv$">
                    <node concept="3clFbJ" id="6vXZUoCSmfu" role="3cqZAp">
                      <node concept="3clFbS" id="6vXZUoCSmfv" role="3clFbx">
                        <node concept="lc7rE" id="6vXZUoCSmfw" role="3cqZAp">
                          <node concept="la8eA" id="6vXZUoCSmfx" role="lcghm">
                            <property role="lacIc" value="," />
                          </node>
                        </node>
                        <node concept="lc7rE" id="6vXZUoCSmfy" role="3cqZAp">
                          <node concept="l8MVK" id="6vXZUoCSmfz" role="lcghm" />
                        </node>
                      </node>
                      <node concept="3eOSWO" id="6vXZUoCSmf$" role="3clFbw">
                        <node concept="3cmrfG" id="6vXZUoCSmf_" role="3uHU7w">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3uNrnE" id="6vXZUoCSmfA" role="3uHU7B">
                          <node concept="37vLTw" id="6vXZUoCSmfB" role="2$L3a6">
                            <ref role="3cqZAo" node="6vXZUoCSmfo" resolve="index" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="lc7rE" id="6vXZUoCSmfC" role="3cqZAp">
                      <node concept="2BGw6n" id="6vXZUoCSmfD" role="lcghm" />
                    </node>
                    <node concept="lc7rE" id="6vXZUoCSmfE" role="3cqZAp">
                      <node concept="l9hG8" id="6vXZUoCSmfF" role="lcghm">
                        <node concept="2GrUjf" id="6vXZUoCSmfG" role="lb14g">
                          <ref role="2Gs0qQ" node="6vXZUoCSmfs" resolve="value" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6vXZUoCSmfH" role="2GsD0m">
                    <node concept="117lpO" id="6vXZUoCSmfI" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6vXZUoCSmKN" role="2OqNvi">
                      <ref role="3TtcxE" to="s3xm:6vXZUoCOma7" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="11pn5k" id="6vXZUoCSmfR" role="3cqZAp" />
            <node concept="lc7rE" id="6vXZUoCSmfS" role="3cqZAp">
              <node concept="l8MVK" id="6vXZUoCSmfT" role="lcghm" />
            </node>
          </node>
          <node concept="3y3z36" id="6vXZUoCSmfU" role="3clFbw">
            <node concept="3cmrfG" id="6vXZUoCSmfV" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="6vXZUoCSmfW" role="3uHU7B">
              <node concept="2OqwBi" id="6vXZUoCSmfX" role="2Oq$k0">
                <node concept="117lpO" id="6vXZUoCSmfY" role="2Oq$k0" />
                <node concept="3Tsc0h" id="6vXZUoCSmv1" role="2OqNvi">
                  <ref role="3TtcxE" to="s3xm:6vXZUoCOma7" />
                </node>
              </node>
              <node concept="34oBXx" id="6vXZUoCSmg0" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCSt9M" role="3cqZAp">
          <node concept="2BGw6n" id="6vXZUoCStbX" role="lcghm" />
        </node>
        <node concept="lc7rE" id="6vXZUoCOmdx" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmdw" role="lcghm">
            <property role="lacIc" value="]" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmdD">
    <property role="3GE5qa" value="Rules.Json" />
    <ref role="WuzLi" to="s3xm:6vXZUoCOm9Q" resolve="Json_1" />
    <node concept="11bSqf" id="6vXZUoCOmdE" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmdF" role="2VODD2">
        <node concept="3clFbJ" id="6vXZUoCOmdI" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmdJ" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmdK" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmdL" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmdM" role="lb14g">
                  <node concept="3TrEf2" id="6vXZUoCOmdH" role="2OqNvi">
                    <ref role="3Tt5mk" to="s3xm:6vXZUoCOma9" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmdG" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6vXZUoCOmdN" role="3clFbw">
            <node concept="10Nm6u" id="6vXZUoCOmdO" role="3uHU7w" />
            <node concept="2OqwBi" id="6vXZUoCOmdP" role="3uHU7B">
              <node concept="3TrEf2" id="6vXZUoCOmdQ" role="2OqNvi">
                <ref role="3Tt5mk" to="s3xm:6vXZUoCOma9" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmdR" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="29tfMY" id="6vXZUoCOmdT" role="29tGrW">
      <node concept="3clFbS" id="6vXZUoCOmdU" role="2VODD2">
        <node concept="3cpWs6" id="6vXZUoCOmdV" role="3cqZAp">
          <node concept="Xl_RD" id="6vXZUoCOmdS" role="3cqZAk">
            <property role="Xl_RC" value="Document" />
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="6vXZUoCOmdX" role="33IsuW">
      <node concept="3clFbS" id="6vXZUoCOmdY" role="2VODD2">
        <node concept="3cpWs6" id="6vXZUoCOmdZ" role="3cqZAp">
          <node concept="Xl_RD" id="6vXZUoCOmdW" role="3cqZAk">
            <property role="Xl_RC" value="json" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOme0">
    <property role="3GE5qa" value="Rules.Json" />
    <ref role="WuzLi" to="s3xm:6vXZUoCOm9R" resolve="Json_2" />
    <node concept="11bSqf" id="6vXZUoCOme1" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOme2" role="2VODD2">
        <node concept="3clFbJ" id="6vXZUoCOme5" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOme6" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOme7" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOme8" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOme9" role="lb14g">
                  <node concept="3TrEf2" id="6vXZUoCOme4" role="2OqNvi">
                    <ref role="3Tt5mk" to="s3xm:6vXZUoCOmaa" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOme3" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6vXZUoCOmea" role="3clFbw">
            <node concept="10Nm6u" id="6vXZUoCOmeb" role="3uHU7w" />
            <node concept="2OqwBi" id="6vXZUoCOmec" role="3uHU7B">
              <node concept="3TrEf2" id="6vXZUoCOmed" role="2OqNvi">
                <ref role="3Tt5mk" to="s3xm:6vXZUoCOmaa" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmee" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="29tfMY" id="6vXZUoCOmeg" role="29tGrW">
      <node concept="3clFbS" id="6vXZUoCOmeh" role="2VODD2">
        <node concept="3cpWs6" id="6vXZUoCOmei" role="3cqZAp">
          <node concept="Xl_RD" id="6vXZUoCOmef" role="3cqZAk">
            <property role="Xl_RC" value="Document" />
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="6vXZUoCOmek" role="33IsuW">
      <node concept="3clFbS" id="6vXZUoCOmel" role="2VODD2">
        <node concept="3cpWs6" id="6vXZUoCOmem" role="3cqZAp">
          <node concept="Xl_RD" id="6vXZUoCOmej" role="3cqZAk">
            <property role="Xl_RC" value="json" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmen">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="s3xm:6vXZUoCOm9T" resolve="Value_1" />
    <node concept="11bSqf" id="6vXZUoCOmeo" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmep" role="2VODD2">
        <node concept="lc7rE" id="6vXZUoCOmer" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmeq" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmeu" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmev" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmew" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmex" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmey" role="lb14g">
                  <node concept="3TrcHB" id="6vXZUoCOmet" role="2OqNvi">
                    <ref role="3TsBF5" to="s3xm:6vXZUoCOmab" resolve="STRING_1" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmes" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmez" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOme$" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOme_" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCOmeA" role="2OqNvi">
                <ref role="3TsBF5" to="s3xm:6vXZUoCOmab" resolve="STRING_1" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmeB" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCOmeD" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmeC" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmeE">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="s3xm:6vXZUoCOm9U" resolve="Value_2" />
    <node concept="11bSqf" id="6vXZUoCOmeF" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmeG" role="2VODD2">
        <node concept="3clFbJ" id="6vXZUoCOmeJ" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmeK" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmeL" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmeM" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmeN" role="lb14g">
                  <node concept="3TrcHB" id="6vXZUoCOmeI" role="2OqNvi">
                    <ref role="3TsBF5" to="s3xm:6vXZUoCOmac" resolve="NUMBER_1" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmeH" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmeO" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOmeP" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOmeQ" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCOmeR" role="2OqNvi">
                <ref role="3TsBF5" to="s3xm:6vXZUoCOmac" resolve="NUMBER_1" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmeS" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmeT">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="s3xm:6vXZUoCOm9V" resolve="Value_3" />
    <node concept="11bSqf" id="6vXZUoCOmeU" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmeV" role="2VODD2">
        <node concept="3clFbJ" id="6vXZUoCOmeY" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmeZ" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmf0" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmf1" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmf2" role="lb14g">
                  <node concept="3TrEf2" id="6vXZUoCOmeX" role="2OqNvi">
                    <ref role="3Tt5mk" to="s3xm:6vXZUoCOmad" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmeW" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6vXZUoCOmf3" role="3clFbw">
            <node concept="10Nm6u" id="6vXZUoCOmf4" role="3uHU7w" />
            <node concept="2OqwBi" id="6vXZUoCOmf5" role="3uHU7B">
              <node concept="3TrEf2" id="6vXZUoCOmf6" role="2OqNvi">
                <ref role="3Tt5mk" to="s3xm:6vXZUoCOmad" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmf7" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmf8">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="s3xm:6vXZUoCOm9W" resolve="Value_4" />
    <node concept="11bSqf" id="6vXZUoCOmf9" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmfa" role="2VODD2">
        <node concept="3clFbJ" id="6vXZUoCOmfd" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmfe" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmff" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmfg" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmfh" role="lb14g">
                  <node concept="3TrEf2" id="6vXZUoCOmfc" role="2OqNvi">
                    <ref role="3Tt5mk" to="s3xm:6vXZUoCOmae" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmfb" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6vXZUoCOmfi" role="3clFbw">
            <node concept="10Nm6u" id="6vXZUoCOmfj" role="3uHU7w" />
            <node concept="2OqwBi" id="6vXZUoCOmfk" role="3uHU7B">
              <node concept="3TrEf2" id="6vXZUoCOmfl" role="2OqNvi">
                <ref role="3Tt5mk" to="s3xm:6vXZUoCOmae" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmfm" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmfn">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="s3xm:6vXZUoCOm9X" resolve="Value_5" />
    <node concept="11bSqf" id="6vXZUoCOmfo" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmfp" role="2VODD2">
        <node concept="lc7rE" id="6vXZUoCOmfr" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmfq" role="lcghm">
            <property role="lacIc" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmfs">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="s3xm:6vXZUoCOm9Y" resolve="Value_6" />
    <node concept="11bSqf" id="6vXZUoCOmft" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmfu" role="2VODD2">
        <node concept="lc7rE" id="6vXZUoCOmfw" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmfv" role="lcghm">
            <property role="lacIc" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmfx">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="WuzLi" to="s3xm:6vXZUoCOm9Z" resolve="Value_7" />
    <node concept="11bSqf" id="6vXZUoCOmfy" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmfz" role="2VODD2">
        <node concept="lc7rE" id="6vXZUoCOmf_" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmf$" role="lcghm">
            <property role="lacIc" value="null" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmfA">
    <property role="3GE5qa" value="Rules.Object" />
    <ref role="WuzLi" to="s3xm:6vXZUoCOma1" resolve="Object_1" />
    <node concept="11bSqf" id="6vXZUoCOmfB" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmfC" role="2VODD2">
        <node concept="lc7rE" id="6vXZUoCOmfE" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmfD" role="lcghm">
            <property role="lacIc" value="{" />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCRxt6" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCRxt8" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCRnAx" role="3cqZAp">
              <node concept="l8MVK" id="6vXZUoCRnAP" role="lcghm" />
            </node>
            <node concept="11p84A" id="6vXZUoCSfgT" role="3cqZAp" />
            <node concept="3izx1p" id="6vXZUoCRWCK" role="3cqZAp">
              <node concept="3clFbS" id="6vXZUoCRWCM" role="3izTki">
                <node concept="3cpWs8" id="6vXZUoCSf_0" role="3cqZAp">
                  <node concept="3cpWsn" id="6vXZUoCSf_3" role="3cpWs9">
                    <property role="TrG5h" value="index" />
                    <node concept="10Oyi0" id="6vXZUoCSg9t" role="1tU5fm" />
                    <node concept="3cmrfG" id="6vXZUoCSfB4" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="6vXZUoCSfm_" role="3cqZAp">
                  <node concept="2GrKxI" id="6vXZUoCSfmB" role="2Gsz3X">
                    <property role="TrG5h" value="pair" />
                  </node>
                  <node concept="3clFbS" id="6vXZUoCSfmD" role="2LFqv$">
                    <node concept="3clFbJ" id="6vXZUoCSfCx" role="3cqZAp">
                      <node concept="3clFbS" id="6vXZUoCSfCy" role="3clFbx">
                        <node concept="lc7rE" id="6vXZUoCSgc_" role="3cqZAp">
                          <node concept="la8eA" id="6vXZUoCSgcN" role="lcghm">
                            <property role="lacIc" value="," />
                          </node>
                        </node>
                        <node concept="lc7rE" id="6vXZUoCSgdg" role="3cqZAp">
                          <node concept="l8MVK" id="6vXZUoCSgfQ" role="lcghm" />
                        </node>
                      </node>
                      <node concept="3eOSWO" id="6vXZUoCSg76" role="3clFbw">
                        <node concept="3cmrfG" id="6vXZUoCSg7E" role="3uHU7w">
                          <property role="3cmrfH" value="0" />
                        </node>
                        <node concept="3uNrnE" id="6vXZUoCSfRz" role="3uHU7B">
                          <node concept="37vLTw" id="6vXZUoCSfR_" role="2$L3a6">
                            <ref role="3cqZAo" node="6vXZUoCSf_3" resolve="index" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="lc7rE" id="6vXZUoCSifN" role="3cqZAp">
                      <node concept="2BGw6n" id="6vXZUoCSigg" role="lcghm" />
                    </node>
                    <node concept="lc7rE" id="6vXZUoCSgaV" role="3cqZAp">
                      <node concept="l9hG8" id="6vXZUoCSgbh" role="lcghm">
                        <node concept="2GrUjf" id="6vXZUoCSgc1" role="lb14g">
                          <ref role="2Gs0qQ" node="6vXZUoCSfmB" resolve="pair" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6vXZUoCSfrE" role="2GsD0m">
                    <node concept="117lpO" id="6vXZUoCSfod" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6vXZUoCSfya" role="2OqNvi">
                      <ref role="3TtcxE" to="s3xm:6vXZUoCOmaf" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="11pn5k" id="6vXZUoCSfkm" role="3cqZAp" />
            <node concept="lc7rE" id="6vXZUoCRnBh" role="3cqZAp">
              <node concept="l8MVK" id="6vXZUoCRnBB" role="lcghm" />
            </node>
          </node>
          <node concept="3y3z36" id="6vXZUoCRy22" role="3clFbw">
            <node concept="3cmrfG" id="6vXZUoCS1fL" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="6vXZUoCRZLz" role="3uHU7B">
              <node concept="2OqwBi" id="6vXZUoCRxxH" role="2Oq$k0">
                <node concept="117lpO" id="6vXZUoCRxus" role="2Oq$k0" />
                <node concept="3Tsc0h" id="6vXZUoCRxCd" role="2OqNvi">
                  <ref role="3TtcxE" to="s3xm:6vXZUoCOmaf" />
                </node>
              </node>
              <node concept="34oBXx" id="6vXZUoCS1cK" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCStfr" role="3cqZAp">
          <node concept="2BGw6n" id="6vXZUoCStfs" role="lcghm" />
        </node>
        <node concept="lc7rE" id="6vXZUoCOmg8" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmg7" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

