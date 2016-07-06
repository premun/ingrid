<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:eb8e9e83-c330-4c91-815d-9282717724c9(SimpleXML.adjusted.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="bed5" ref="r:575257f1-368c-46f9-8a2f-eeebf9d70d9a(SimpleXML.adjusted.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="45307784116571022" name="jetbrains.mps.lang.textGen.structure.FilenameFunction" flags="ig" index="29tfMY" />
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
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
      <concept id="4357423944233036906" name="jetbrains.mps.lang.textGen.structure.IndentPart" flags="ng" index="2BGw6n" />
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="45307784116711884" name="filename" index="29tGrW" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
      <concept id="1233920501193" name="jetbrains.mps.lang.textGen.structure.IndentBufferOperation" flags="nn" index="1bpajm" />
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
  <node concept="WtQ9Q" id="6vXZUoCOmkD">
    <property role="3GE5qa" value="Rules.Document" />
    <ref role="WuzLi" to="bed5:6vXZUoCOmiX" resolve="Document" />
    <node concept="11bSqf" id="6vXZUoCOmkE" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmkF" role="2VODD2">
        <node concept="3clFbJ" id="6vXZUoCOmkI" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmkJ" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmkK" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmkL" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmkM" role="lb14g">
                  <node concept="3TrEf2" id="6vXZUoCOmkH" role="2OqNvi">
                    <ref role="3Tt5mk" to="bed5:6vXZUoCOmj9" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmkG" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6vXZUoCOmkN" role="3clFbw">
            <node concept="10Nm6u" id="6vXZUoCOmkO" role="3uHU7w" />
            <node concept="2OqwBi" id="6vXZUoCOmkP" role="3uHU7B">
              <node concept="3TrEf2" id="6vXZUoCOmkQ" role="2OqNvi">
                <ref role="3Tt5mk" to="bed5:6vXZUoCOmj9" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmkR" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmkU" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmkV" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOml4" role="3cqZAp">
              <node concept="la8eA" id="6vXZUoCOml5" role="lcghm">
                <property role="lacIc" value="\n" />
              </node>
            </node>
            <node concept="lc7rE" id="6vXZUoCOmkW" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmkX" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmkY" role="lb14g">
                  <node concept="3TrEf2" id="6vXZUoCOmkT" role="2OqNvi">
                    <ref role="3Tt5mk" to="bed5:6vXZUoCOmja" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmkS" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6vXZUoCV9US" role="3clFbw">
            <node concept="3y3z36" id="6vXZUoCVasq" role="3uHU7w">
              <node concept="10Nm6u" id="6vXZUoCVate" role="3uHU7w" />
              <node concept="2OqwBi" id="6vXZUoCV9YW" role="3uHU7B">
                <node concept="117lpO" id="6vXZUoCV9WD" role="2Oq$k0" />
                <node concept="3TrEf2" id="6vXZUoCVap4" role="2OqNvi">
                  <ref role="3Tt5mk" to="bed5:6vXZUoCOmja" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6vXZUoCOmkZ" role="3uHU7B">
              <node concept="2OqwBi" id="6vXZUoCOml1" role="3uHU7B">
                <node concept="117lpO" id="6vXZUoCOml3" role="2Oq$k0" />
                <node concept="3TrEf2" id="6vXZUoCV9Dn" role="2OqNvi">
                  <ref role="3Tt5mk" to="bed5:6vXZUoCOmj9" />
                </node>
              </node>
              <node concept="10Nm6u" id="6vXZUoCOml0" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOml8" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOml9" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmli" role="3cqZAp">
              <node concept="la8eA" id="6vXZUoCOmlj" role="lcghm">
                <property role="lacIc" value="\n" />
              </node>
            </node>
            <node concept="lc7rE" id="6vXZUoCOmla" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmlb" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmlc" role="lb14g">
                  <node concept="3TrEf2" id="6vXZUoCOml7" role="2OqNvi">
                    <ref role="3Tt5mk" to="bed5:6vXZUoCOmjb" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOml6" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="6vXZUoCV9LV" role="3clFbw">
            <node concept="3y3z36" id="6vXZUoCVaj5" role="3uHU7w">
              <node concept="10Nm6u" id="6vXZUoCVakq" role="3uHU7w" />
              <node concept="2OqwBi" id="6vXZUoCV9PX" role="3uHU7B">
                <node concept="117lpO" id="6vXZUoCV9NE" role="2Oq$k0" />
                <node concept="3TrEf2" id="6vXZUoCVa6r" role="2OqNvi">
                  <ref role="3Tt5mk" to="bed5:6vXZUoCOmja" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6vXZUoCOmld" role="3uHU7B">
              <node concept="2OqwBi" id="6vXZUoCOmlf" role="3uHU7B">
                <node concept="3TrEf2" id="6vXZUoCV9Kv" role="2OqNvi">
                  <ref role="3Tt5mk" to="bed5:6vXZUoCOmj9" />
                </node>
                <node concept="117lpO" id="6vXZUoCOmlh" role="2Oq$k0" />
              </node>
              <node concept="10Nm6u" id="6vXZUoCOmle" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6vXZUoCVacO" role="3cqZAp" />
      </node>
    </node>
    <node concept="29tfMY" id="6vXZUoCOmll" role="29tGrW">
      <node concept="3clFbS" id="6vXZUoCOmlm" role="2VODD2">
        <node concept="3cpWs6" id="6vXZUoCOmln" role="3cqZAp">
          <node concept="Xl_RD" id="6vXZUoCOmlk" role="3cqZAk">
            <property role="Xl_RC" value="Document" />
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="6vXZUoCOmlp" role="33IsuW">
      <node concept="3clFbS" id="6vXZUoCOmlq" role="2VODD2">
        <node concept="3cpWs6" id="6vXZUoCOmlr" role="3cqZAp">
          <node concept="Xl_RD" id="6vXZUoCOmlo" role="3cqZAk">
            <property role="Xl_RC" value="xml" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmls">
    <property role="3GE5qa" value="Rules.Comment" />
    <ref role="WuzLi" to="bed5:6vXZUoCOmiY" resolve="Comment" />
    <node concept="11bSqf" id="6vXZUoCOmlt" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmlu" role="2VODD2">
        <node concept="lc7rE" id="6vXZUoCOmlw" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmlv" role="lcghm">
            <property role="lacIc" value="&lt;!--" />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmlz" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOml$" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOml_" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmlA" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmlB" role="lb14g">
                  <node concept="3TrcHB" id="6vXZUoCOmly" role="2OqNvi">
                    <ref role="3TsBF5" to="bed5:6vXZUoCOmjc" resolve="TEXT_1" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmlx" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmlC" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOmlD" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOmlE" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCOmlF" role="2OqNvi">
                <ref role="3TsBF5" to="bed5:6vXZUoCOmjc" resolve="TEXT_1" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmlG" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCOmlI" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmlH" role="lcghm">
            <property role="lacIc" value="--&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmlJ">
    <property role="3GE5qa" value="Rules.Attribute" />
    <ref role="WuzLi" to="bed5:6vXZUoCOmiZ" resolve="Attribute" />
    <node concept="11bSqf" id="6vXZUoCOmlK" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmlL" role="2VODD2">
        <node concept="3clFbJ" id="6vXZUoCOmlO" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmlP" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmlQ" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmlR" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmlS" role="lb14g">
                  <node concept="3TrcHB" id="6vXZUoCOmlN" role="2OqNvi">
                    <ref role="3TsBF5" to="bed5:6vXZUoCOmjd" resolve="Name_1" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmlM" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmlT" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOmlU" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOmlV" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCOmlW" role="2OqNvi">
                <ref role="3TsBF5" to="bed5:6vXZUoCOmjd" resolve="Name_1" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmlX" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCOmlZ" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmlY" role="lcghm">
            <property role="lacIc" value="=&quot;" />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmm2" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmm3" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmm4" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmm5" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmm6" role="lb14g">
                  <node concept="3TrcHB" id="6vXZUoCOmm1" role="2OqNvi">
                    <ref role="3TsBF5" to="bed5:6vXZUoCOmje" resolve="TEXT_2" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmm0" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmm7" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOmm8" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOmm9" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCOmma" role="2OqNvi">
                <ref role="3TsBF5" to="bed5:6vXZUoCOmje" resolve="TEXT_2" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmmb" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCOmmd" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmmc" role="lcghm">
            <property role="lacIc" value="&quot;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmme">
    <property role="3GE5qa" value="Rules.Prolog" />
    <ref role="WuzLi" to="bed5:6vXZUoCOmj0" resolve="Prolog" />
    <node concept="11bSqf" id="6vXZUoCOmmf" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmmg" role="2VODD2">
        <node concept="lc7rE" id="6vXZUoCOmmi" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmmh" role="lcghm">
            <property role="lacIc" value="&lt;?xml " />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmml" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmmm" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmmn" role="3cqZAp">
              <node concept="l9S2W" id="6vXZUoCOmmo" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=" " />
                <node concept="2OqwBi" id="6vXZUoCOmmp" role="lbANJ">
                  <node concept="3Tsc0h" id="6vXZUoCOmmk" role="2OqNvi">
                    <ref role="3TtcxE" to="bed5:6vXZUoCOmjf" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmmj" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="6vXZUoCOmmq" role="3clFbw">
            <node concept="2OqwBi" id="6vXZUoCOmmr" role="3uHU7B">
              <node concept="34oBXx" id="6vXZUoCOmms" role="2OqNvi" />
              <node concept="2OqwBi" id="6vXZUoCOmmt" role="2Oq$k0">
                <node concept="3Tsc0h" id="6vXZUoCOmmu" role="2OqNvi">
                  <ref role="3TtcxE" to="bed5:6vXZUoCOmjf" />
                </node>
                <node concept="117lpO" id="6vXZUoCOmmv" role="2Oq$k0" />
              </node>
            </node>
            <node concept="3cmrfG" id="6vXZUoCOmmw" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCOmmy" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmmx" role="lcghm">
            <property role="lacIc" value="?&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmmz">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="bed5:6vXZUoCOmj2" resolve="Content_1" />
    <node concept="11bSqf" id="6vXZUoCOmm$" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmm_" role="2VODD2">
        <node concept="3clFbJ" id="6vXZUoCOmmC" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmmD" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmmE" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmmF" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmmG" role="lb14g">
                  <node concept="3TrcHB" id="6vXZUoCOmmB" role="2OqNvi">
                    <ref role="3TsBF5" to="bed5:6vXZUoCOmjg" resolve="TEXT_1" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmmA" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmmH" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOmmI" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOmmJ" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCOmmK" role="2OqNvi">
                <ref role="3TsBF5" to="bed5:6vXZUoCOmjg" resolve="TEXT_1" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmmL" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmmM">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="bed5:6vXZUoCOmj3" resolve="Content_2" />
    <node concept="11bSqf" id="6vXZUoCOmmN" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmmO" role="2VODD2">
        <node concept="3clFbJ" id="6vXZUoCOmmR" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmmS" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmmT" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmmU" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmmV" role="lb14g">
                  <node concept="3TrEf2" id="6vXZUoCOmmQ" role="2OqNvi">
                    <ref role="3Tt5mk" to="bed5:6vXZUoCOmjh" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmmP" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6vXZUoCOmmW" role="3clFbw">
            <node concept="10Nm6u" id="6vXZUoCOmmX" role="3uHU7w" />
            <node concept="2OqwBi" id="6vXZUoCOmmY" role="3uHU7B">
              <node concept="3TrEf2" id="6vXZUoCOmmZ" role="2OqNvi">
                <ref role="3Tt5mk" to="bed5:6vXZUoCOmjh" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmn0" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmn1">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="bed5:6vXZUoCOmj4" resolve="Content_3" />
    <node concept="11bSqf" id="6vXZUoCOmn2" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmn3" role="2VODD2">
        <node concept="3clFbJ" id="6vXZUoCOmn6" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmn7" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmn8" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmn9" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmna" role="lb14g">
                  <node concept="3TrEf2" id="6vXZUoCOmn5" role="2OqNvi">
                    <ref role="3Tt5mk" to="bed5:6vXZUoCOmji" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmn4" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6vXZUoCOmnb" role="3clFbw">
            <node concept="10Nm6u" id="6vXZUoCOmnc" role="3uHU7w" />
            <node concept="2OqwBi" id="6vXZUoCOmnd" role="3uHU7B">
              <node concept="3TrEf2" id="6vXZUoCOmne" role="2OqNvi">
                <ref role="3Tt5mk" to="bed5:6vXZUoCOmji" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmnf" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmng">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="WuzLi" to="bed5:6vXZUoCOmj5" resolve="Content_4" />
    <node concept="11bSqf" id="6vXZUoCOmnh" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmni" role="2VODD2">
        <node concept="3clFbJ" id="6vXZUoCOmnl" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmnm" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCVwp9" role="3cqZAp">
              <node concept="la8eA" id="6vXZUoCVwqk" role="lcghm">
                <property role="lacIc" value="&lt;!CDATA[[\n" />
              </node>
            </node>
            <node concept="3izx1p" id="6vXZUoCVwyo" role="3cqZAp">
              <node concept="3clFbS" id="6vXZUoCVwyq" role="3izTki">
                <node concept="1bpajm" id="6vXZUoCVwz$" role="3cqZAp" />
                <node concept="lc7rE" id="6vXZUoCOmnn" role="3cqZAp">
                  <node concept="l9hG8" id="6vXZUoCOmno" role="lcghm">
                    <node concept="2OqwBi" id="6vXZUoCOmnp" role="lb14g">
                      <node concept="3TrcHB" id="6vXZUoCOmnk" role="2OqNvi">
                        <ref role="3TsBF5" to="bed5:6vXZUoCOmjj" resolve="CDATA_1" />
                      </node>
                      <node concept="117lpO" id="6vXZUoCOmnj" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="6vXZUoCVzV5" role="3cqZAp">
              <node concept="l8MVK" id="6vXZUoCVzWn" role="lcghm" />
            </node>
            <node concept="lc7rE" id="6vXZUoCVzXL" role="3cqZAp">
              <node concept="2BGw6n" id="6vXZUoCVzYw" role="lcghm" />
            </node>
            <node concept="lc7rE" id="6vXZUoCVwrY" role="3cqZAp">
              <node concept="la8eA" id="6vXZUoCVwDV" role="lcghm">
                <property role="lacIc" value="]]&gt;" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmnq" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOmnr" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOmns" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCOmnt" role="2OqNvi">
                <ref role="3TsBF5" to="bed5:6vXZUoCOmjj" resolve="CDATA_1" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmnu" role="2Oq$k0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmnv">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="WuzLi" to="bed5:6vXZUoCOmj7" resolve="Element_1" />
    <node concept="11bSqf" id="6vXZUoCOmnw" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmnx" role="2VODD2">
        <node concept="lc7rE" id="6vXZUoCOmnz" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmny" role="lcghm">
            <property role="lacIc" value="&lt;" />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmnA" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmnB" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmnC" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmnD" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmnE" role="lb14g">
                  <node concept="3TrcHB" id="6vXZUoCOmn_" role="2OqNvi">
                    <ref role="3TsBF5" to="bed5:6vXZUoCOmjk" resolve="Name" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmn$" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmnF" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOmnG" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOmnH" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCOmnI" role="2OqNvi">
                <ref role="3TsBF5" to="bed5:6vXZUoCOmjk" resolve="Name" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmnJ" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmnM" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmnN" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmnY" role="3cqZAp">
              <node concept="la8eA" id="6vXZUoCOmnZ" role="lcghm">
                <property role="lacIc" value=" " />
              </node>
            </node>
            <node concept="lc7rE" id="6vXZUoCOmnO" role="3cqZAp">
              <node concept="l9S2W" id="6vXZUoCOmnP" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=" " />
                <node concept="2OqwBi" id="6vXZUoCOmnQ" role="lbANJ">
                  <node concept="3Tsc0h" id="6vXZUoCOmnL" role="2OqNvi">
                    <ref role="3TtcxE" to="bed5:6vXZUoCOmjl" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmnK" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="6vXZUoCOmnR" role="3clFbw">
            <node concept="2OqwBi" id="6vXZUoCOmnS" role="3uHU7B">
              <node concept="34oBXx" id="6vXZUoCOmnT" role="2OqNvi" />
              <node concept="2OqwBi" id="6vXZUoCOmnU" role="2Oq$k0">
                <node concept="3Tsc0h" id="6vXZUoCOmnV" role="2OqNvi">
                  <ref role="3TtcxE" to="bed5:6vXZUoCOmjl" />
                </node>
                <node concept="117lpO" id="6vXZUoCOmnW" role="2Oq$k0" />
              </node>
            </node>
            <node concept="3cmrfG" id="6vXZUoCOmnX" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCOmo1" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmo0" role="lcghm">
            <property role="lacIc" value="&gt;" />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmo4" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmo5" role="3clFbx">
            <node concept="3izx1p" id="6vXZUoCVdAY" role="3cqZAp">
              <node concept="3clFbS" id="6vXZUoCVdB0" role="3izTki">
                <node concept="1bpajm" id="6vXZUoCVdC0" role="3cqZAp" />
                <node concept="2Gpval" id="6vXZUoCVsxu" role="3cqZAp">
                  <node concept="2GrKxI" id="6vXZUoCVsxw" role="2Gsz3X">
                    <property role="TrG5h" value="content" />
                  </node>
                  <node concept="3clFbS" id="6vXZUoCVsxy" role="2LFqv$">
                    <node concept="lc7rE" id="6vXZUoCVtjM" role="3cqZAp">
                      <node concept="l8MVK" id="6vXZUoCVtk6" role="lcghm" />
                    </node>
                    <node concept="lc7rE" id="6vXZUoCVtiP" role="3cqZAp">
                      <node concept="2BGw6n" id="6vXZUoCVtiZ" role="lcghm" />
                    </node>
                    <node concept="lc7rE" id="6vXZUoCVtkS" role="3cqZAp">
                      <node concept="l9hG8" id="6vXZUoCVtli" role="lcghm">
                        <node concept="2GrUjf" id="6vXZUoCVtm2" role="lb14g">
                          <ref role="2Gs0qQ" node="6vXZUoCVsxw" resolve="content" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6vXZUoCVs_7" role="2GsD0m">
                    <node concept="117lpO" id="6vXZUoCVsy6" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6vXZUoCVsED" role="2OqNvi">
                      <ref role="3TtcxE" to="bed5:6vXZUoCOmjm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="6vXZUoCVaGg" role="3cqZAp">
              <node concept="l8MVK" id="6vXZUoCVaGC" role="lcghm" />
            </node>
            <node concept="1bpajm" id="6vXZUoCVp_i" role="3cqZAp" />
          </node>
          <node concept="3eOSWO" id="6vXZUoCOmo9" role="3clFbw">
            <node concept="2OqwBi" id="6vXZUoCOmoa" role="3uHU7B">
              <node concept="34oBXx" id="6vXZUoCOmob" role="2OqNvi" />
              <node concept="2OqwBi" id="6vXZUoCOmoc" role="2Oq$k0">
                <node concept="3Tsc0h" id="6vXZUoCOmod" role="2OqNvi">
                  <ref role="3TtcxE" to="bed5:6vXZUoCOmjm" />
                </node>
                <node concept="117lpO" id="6vXZUoCOmoe" role="2Oq$k0" />
              </node>
            </node>
            <node concept="3cmrfG" id="6vXZUoCOmof" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCOmoh" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmog" role="lcghm">
            <property role="lacIc" value="&lt;/" />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmok" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmol" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmom" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmon" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmoo" role="lb14g">
                  <node concept="3TrcHB" id="6vXZUoCUcXh" role="2OqNvi">
                    <ref role="3TsBF5" to="bed5:6vXZUoCOmjk" resolve="Name" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmoi" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmop" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOmoq" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOmor" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCUcOp" role="2OqNvi">
                <ref role="3TsBF5" to="bed5:6vXZUoCOmjk" resolve="Name" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmot" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCOmov" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmou" role="lcghm">
            <property role="lacIc" value="&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="6vXZUoCOmow">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="WuzLi" to="bed5:6vXZUoCOmj8" resolve="Element_2" />
    <node concept="11bSqf" id="6vXZUoCOmox" role="11c4hB">
      <node concept="3clFbS" id="6vXZUoCOmoy" role="2VODD2">
        <node concept="lc7rE" id="6vXZUoCOmo$" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmoz" role="lcghm">
            <property role="lacIc" value="&lt;" />
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmoB" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmoC" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmoD" role="3cqZAp">
              <node concept="l9hG8" id="6vXZUoCOmoE" role="lcghm">
                <node concept="2OqwBi" id="6vXZUoCOmoF" role="lb14g">
                  <node concept="3TrcHB" id="6vXZUoCOmoA" role="2OqNvi">
                    <ref role="3TsBF5" to="bed5:6vXZUoCOmjo" resolve="Name_1" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmo_" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vXZUoCOmoG" role="3clFbw">
            <node concept="17RvpY" id="6vXZUoCOmoH" role="2OqNvi" />
            <node concept="2OqwBi" id="6vXZUoCOmoI" role="2Oq$k0">
              <node concept="3TrcHB" id="6vXZUoCOmoJ" role="2OqNvi">
                <ref role="3TsBF5" to="bed5:6vXZUoCOmjo" resolve="Name_1" />
              </node>
              <node concept="117lpO" id="6vXZUoCOmoK" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6vXZUoCOmoN" role="3cqZAp">
          <node concept="3clFbS" id="6vXZUoCOmoO" role="3clFbx">
            <node concept="lc7rE" id="6vXZUoCOmoZ" role="3cqZAp">
              <node concept="la8eA" id="6vXZUoCOmp0" role="lcghm">
                <property role="lacIc" value=" " />
              </node>
            </node>
            <node concept="lc7rE" id="6vXZUoCOmoP" role="3cqZAp">
              <node concept="l9S2W" id="6vXZUoCOmoQ" role="lcghm">
                <property role="XA4eZ" value="true" />
                <property role="lbP0B" value=" " />
                <node concept="2OqwBi" id="6vXZUoCOmoR" role="lbANJ">
                  <node concept="3Tsc0h" id="6vXZUoCOmoM" role="2OqNvi">
                    <ref role="3TtcxE" to="bed5:6vXZUoCOmjp" />
                  </node>
                  <node concept="117lpO" id="6vXZUoCOmoL" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="6vXZUoCOmoS" role="3clFbw">
            <node concept="2OqwBi" id="6vXZUoCOmoT" role="3uHU7B">
              <node concept="34oBXx" id="6vXZUoCOmoU" role="2OqNvi" />
              <node concept="2OqwBi" id="6vXZUoCOmoV" role="2Oq$k0">
                <node concept="3Tsc0h" id="6vXZUoCOmoW" role="2OqNvi">
                  <ref role="3TtcxE" to="bed5:6vXZUoCOmjp" />
                </node>
                <node concept="117lpO" id="6vXZUoCOmoX" role="2Oq$k0" />
              </node>
            </node>
            <node concept="3cmrfG" id="6vXZUoCOmoY" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6vXZUoCOmp2" role="3cqZAp">
          <node concept="la8eA" id="6vXZUoCOmp1" role="lcghm">
            <property role="lacIc" value="/&gt;" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

