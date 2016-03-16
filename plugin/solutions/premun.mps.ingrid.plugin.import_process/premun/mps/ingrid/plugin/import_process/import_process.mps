<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c3608ff3-23d3-4792-858b-da3c93005e4d(premun.mps.ingrid.plugin.import_process.import_process)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
  </languages>
  <imports>
    <import index="cs49" ref="c844064f-26e3-4868-95b4-15456423be74/java:premun.mps.ingrid.parser(premun.mps.ingrid.plugin.import_process/)" />
    <import index="kr2q" ref="c844064f-26e3-4868-95b4-15456423be74/java:premun.mps.ingrid.parser.grammar(premun.mps.ingrid.plugin.import_process/)" />
    <import index="cttk" ref="r:5ff047e0-2953-4750-806a-bdc16824aa89(jetbrains.mps.smodel)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" />
    <import index="twe9" ref="r:28e6d713-c3c3-493e-8d97-e9a2c49f28ce(jetbrains.mps.lang.structure.util)" />
    <import index="4d7c" ref="c844064f-26e3-4868-95b4-15456423be74/java:premun.mps.ingrid.parser.antlr(premun.mps.ingrid.plugin.import_process/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="dr5r" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.logging(JDK/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" implicit="true" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1206482823744" name="jetbrains.mps.lang.smodel.structure.Model_AddRootOperation" flags="nn" index="3BYIHo">
        <child id="1206482823746" name="nodeArgument" index="3BYIHq" />
      </concept>
      <concept id="1140133623887" name="jetbrains.mps.lang.smodel.structure.Node_DeleteOperation" flags="nn" index="1PgB_6" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
    </language>
  </registry>
  <node concept="312cEu" id="1OSx5D$GPOR">
    <property role="TrG5h" value="ImportProvider" />
    <node concept="312cEg" id="4J1$HSvHxhw" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="structureModel" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4J1$HSvHxgV" role="1B3o_S" />
      <node concept="H_c77" id="4J1$HSvHxhu" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4J1$HSvHxje" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="editorModel" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4J1$HSvHxiA" role="1B3o_S" />
      <node concept="H_c77" id="4J1$HSvHxjc" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3R$SdNHmQSg" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="grammar" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3R$SdNHmQIe" role="1B3o_S" />
      <node concept="3uibUv" id="3R$SdNHmQSd" role="1tU5fm">
        <ref role="3uigEE" to="kr2q:~GrammarInfo" resolve="GrammarInfo" />
      </node>
    </node>
    <node concept="2tJIrI" id="4J1$HSvHE94" role="jymVt" />
    <node concept="3clFb_" id="4J1$HSvHEft" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="initializeLanguage" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4J1$HSvHEfw" role="3clF47">
        <node concept="3clFbF" id="4J1$HSvHxt4" role="3cqZAp">
          <node concept="37vLTI" id="4J1$HSvHxw_" role="3clFbG">
            <node concept="2OqwBi" id="4J1$HSvHxA_" role="37vLTx">
              <node concept="Rm8GO" id="4J1$HSvHxyH" role="2Oq$k0">
                <ref role="1Px2BO" to="w1kc:~LanguageAspect" resolve="LanguageAspect" />
                <ref role="Rm8GQ" to="w1kc:~LanguageAspect.STRUCTURE" resolve="STRUCTURE" />
              </node>
              <node concept="liA8E" id="4J1$HSvHxRt" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~LanguageAspect.get(jetbrains.mps.smodel.Language):org.jetbrains.mps.openapi.model.SModel" resolve="get" />
                <node concept="37vLTw" id="4J1$HSvHxSZ" role="37wK5m">
                  <ref role="3cqZAo" node="4J1$HSvHEhH" resolve="language" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4J1$HSvHxt2" role="37vLTJ">
              <ref role="3cqZAo" node="4J1$HSvHxhw" resolve="structureModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4J1$HSvHDLc" role="3cqZAp">
          <node concept="37vLTI" id="4J1$HSvHDPq" role="3clFbG">
            <node concept="2OqwBi" id="4J1$HSvHDX$" role="37vLTx">
              <node concept="Rm8GO" id="4J1$HSvHDTN" role="2Oq$k0">
                <ref role="Rm8GQ" to="w1kc:~LanguageAspect.EDITOR" resolve="EDITOR" />
                <ref role="1Px2BO" to="w1kc:~LanguageAspect" resolve="LanguageAspect" />
              </node>
              <node concept="liA8E" id="4J1$HSvHE6m" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~LanguageAspect.get(jetbrains.mps.smodel.Language):org.jetbrains.mps.openapi.model.SModel" resolve="get" />
                <node concept="37vLTw" id="4J1$HSvHE8b" role="37wK5m">
                  <ref role="3cqZAo" node="4J1$HSvHEhH" resolve="language" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4J1$HSvHDLa" role="37vLTJ">
              <ref role="3cqZAo" node="4J1$HSvHxje" resolve="editorModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4J1$HSvHEm8" role="3cqZAp" />
        <node concept="3clFbF" id="4J1$HSvHGzp" role="3cqZAp">
          <node concept="2OqwBi" id="4J1$HSvHGzq" role="3clFbG">
            <node concept="2OqwBi" id="4J1$HSvHGzr" role="2Oq$k0">
              <node concept="37vLTw" id="4J1$HSvHGzs" role="2Oq$k0">
                <ref role="3cqZAo" node="4J1$HSvHxhw" resolve="structureModel" />
              </node>
              <node concept="2SmgA7" id="4J1$HSvHGzt" role="2OqNvi" />
            </node>
            <node concept="2es0OD" id="4J1$HSvHGzu" role="2OqNvi">
              <node concept="1bVj0M" id="4J1$HSvHGzv" role="23t8la">
                <node concept="3clFbS" id="4J1$HSvHGzw" role="1bW5cS">
                  <node concept="3clFbF" id="4J1$HSvHGzx" role="3cqZAp">
                    <node concept="2OqwBi" id="4J1$HSvHGzy" role="3clFbG">
                      <node concept="37vLTw" id="4J1$HSvHGzz" role="2Oq$k0">
                        <ref role="3cqZAo" node="4J1$HSvHGz_" resolve="it" />
                      </node>
                      <node concept="1PgB_6" id="4J1$HSvHGz$" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="4J1$HSvHGz_" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4J1$HSvHGzA" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4J1$HSvHEpR" role="3cqZAp">
          <node concept="2OqwBi" id="3R$SdNHmGDm" role="3clFbG">
            <node concept="2OqwBi" id="4J1$HSvHEsa" role="2Oq$k0">
              <node concept="37vLTw" id="4J1$HSvHGGY" role="2Oq$k0">
                <ref role="3cqZAo" node="4J1$HSvHxje" resolve="editorModel" />
              </node>
              <node concept="2SmgA7" id="4J1$HSvHEt1" role="2OqNvi" />
            </node>
            <node concept="2es0OD" id="3R$SdNHmHAy" role="2OqNvi">
              <node concept="1bVj0M" id="3R$SdNHmLJW" role="23t8la">
                <node concept="3clFbS" id="3R$SdNHmLJY" role="1bW5cS">
                  <node concept="3clFbF" id="3R$SdNHmLZS" role="3cqZAp">
                    <node concept="2OqwBi" id="3R$SdNHmM1R" role="3clFbG">
                      <node concept="37vLTw" id="3R$SdNHmLZR" role="2Oq$k0">
                        <ref role="3cqZAo" node="3R$SdNHmLVg" resolve="n" />
                      </node>
                      <node concept="1PgB_6" id="3R$SdNHmM5L" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="3R$SdNHmLVg" role="1bW2Oz">
                  <property role="TrG5h" value="n" />
                  <node concept="3Tqbb2" id="3R$SdNHmLWR" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4J1$HSvHEdh" role="1B3o_S" />
      <node concept="3cqZAl" id="4J1$HSvHEfr" role="3clF45" />
      <node concept="37vLTG" id="4J1$HSvHEhH" role="3clF46">
        <property role="TrG5h" value="language" />
        <node concept="3uibUv" id="4J1$HSvHEhG" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4J1$HSvHxgr" role="jymVt" />
    <node concept="3clFb_" id="4J1$HSvHxpa" role="jymVt">
      <property role="TrG5h" value="importGrammar" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4J1$HSvHxpc" role="3clF47">
        <node concept="3clFbF" id="4J1$HSvHGN$" role="3cqZAp">
          <node concept="1rXfSq" id="4J1$HSvHGNy" role="3clFbG">
            <ref role="37wK5l" node="4J1$HSvHEft" resolve="initializeLanguage" />
            <node concept="37vLTw" id="4J1$HSvHGRW" role="37wK5m">
              <ref role="3cqZAo" node="4J1$HSvHxpA" resolve="language" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4J1$HSvHGJr" role="3cqZAp" />
        <node concept="3SKdUt" id="3R$SdNHmS5Z" role="3cqZAp">
          <node concept="3SKdUq" id="3R$SdNHmS61" role="3SKWNk">
            <property role="3SKdUp" value="TODO: take care of exceptions" />
          </node>
        </node>
        <node concept="3clFbF" id="3R$SdNHmR6T" role="3cqZAp">
          <node concept="37vLTI" id="3R$SdNHmRfm" role="3clFbG">
            <node concept="2YIFZM" id="3R$SdNHmRQu" role="37vLTx">
              <ref role="37wK5l" to="cs49:~GrammarParser.parseFile(java.lang.String):premun.mps.ingrid.parser.grammar.GrammarInfo" resolve="parseFile" />
              <ref role="1Pybhc" to="cs49:~GrammarParser" resolve="GrammarParser" />
              <node concept="37vLTw" id="3R$SdNHmRRx" role="37wK5m">
                <ref role="3cqZAo" node="4J1$HSvHxp$" resolve="fileName" />
              </node>
            </node>
            <node concept="2OqwBi" id="3R$SdNHmRbR" role="37vLTJ">
              <node concept="Xjq3P" id="3R$SdNHmR6R" role="2Oq$k0" />
              <node concept="2OwXpG" id="3R$SdNHmRer" role="2OqNvi">
                <ref role="2Oxat5" node="3R$SdNHmQSg" resolve="grammar" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3R$SdNHmStG" role="3cqZAp" />
        <node concept="3clFbF" id="3R$SdNHnbAu" role="3cqZAp">
          <node concept="2OqwBi" id="3R$SdNHnbGn" role="3clFbG">
            <node concept="Xjq3P" id="3R$SdNHnbAs" role="2Oq$k0" />
            <node concept="liA8E" id="3R$SdNHnbJa" role="2OqNvi">
              <ref role="37wK5l" node="3R$SdNHn9kq" resolve="importTokens" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1M9aAccbg1e" role="3cqZAp">
          <node concept="2OqwBi" id="1M9aAccbg3c" role="3clFbG">
            <node concept="Xjq3P" id="1M9aAccbg1c" role="2Oq$k0" />
            <node concept="liA8E" id="1M9aAccbg4W" role="2OqNvi">
              <ref role="37wK5l" node="1M9aAccbCUw" resolve="importRules" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4J1$HSvHxpy" role="3clF45" />
      <node concept="37vLTG" id="4J1$HSvHxp$" role="3clF46">
        <property role="TrG5h" value="fileName" />
        <node concept="17QB3L" id="4J1$HSvHxp_" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4J1$HSvHxpA" role="3clF46">
        <property role="TrG5h" value="language" />
        <node concept="3uibUv" id="4J1$HSvHxpB" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4J1$HSvHxpz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1M9aAccbBQn" role="jymVt" />
    <node concept="3clFb_" id="1M9aAccbCUw" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="importRules" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1M9aAccbCUz" role="3clF47">
        <node concept="3clFbF" id="1M9aAccbDhm" role="3cqZAp">
          <node concept="2OqwBi" id="1M9aAccbDhn" role="3clFbG">
            <node concept="2OqwBi" id="1M9aAccbDho" role="2Oq$k0">
              <node concept="2OqwBi" id="1M9aAccbDhp" role="2Oq$k0">
                <node concept="2OqwBi" id="1M9aAccbDhq" role="2Oq$k0">
                  <node concept="2OqwBi" id="1M9aAccbDhr" role="2Oq$k0">
                    <node concept="2OqwBi" id="1M9aAccbDhs" role="2Oq$k0">
                      <node concept="Xjq3P" id="1M9aAccbDht" role="2Oq$k0" />
                      <node concept="2OwXpG" id="1M9aAccbDhu" role="2OqNvi">
                        <ref role="2Oxat5" node="3R$SdNHmQSg" resolve="grammar" />
                      </node>
                    </node>
                    <node concept="2OwXpG" id="1M9aAccbDhv" role="2OqNvi">
                      <ref role="2Oxat5" to="kr2q:~GrammarInfo.rules" resolve="rules" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1M9aAccbDhw" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.values():java.util.Collection" resolve="values" />
                  </node>
                </node>
                <node concept="liA8E" id="1M9aAccbDhx" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Collection.stream():java.util.stream.Stream" resolve="stream" />
                </node>
              </node>
              <node concept="liA8E" id="1M9aAccbDhy" role="2OqNvi">
                <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate):java.util.stream.Stream" resolve="filter" />
                <node concept="1bVj0M" id="1M9aAccbDhz" role="37wK5m">
                  <node concept="3clFbS" id="1M9aAccbDh$" role="1bW5cS">
                    <node concept="3clFbF" id="1M9aAccbDh_" role="3cqZAp">
                      <node concept="2ZW3vV" id="1M9aAccbDhA" role="3clFbG">
                        <node concept="3uibUv" id="1M9aAccbDvt" role="2ZW6by">
                          <ref role="3uigEE" to="kr2q:~ParserRule" resolve="ParserRule" />
                        </node>
                        <node concept="37vLTw" id="1M9aAccbDhC" role="2ZW6bz">
                          <ref role="3cqZAo" node="1M9aAccbDhD" resolve="r" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="1M9aAccbDhD" role="1bW2Oz">
                    <property role="TrG5h" value="r" />
                    <node concept="3uibUv" id="1M9aAccbDhE" role="1tU5fm">
                      <ref role="3uigEE" to="kr2q:~Rule" resolve="Rule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1M9aAccbDhF" role="2OqNvi">
              <ref role="37wK5l" to="1ctc:~Stream.forEach(java.util.function.Consumer):void" resolve="forEach" />
              <node concept="1bVj0M" id="1M9aAccbDhG" role="37wK5m">
                <node concept="3clFbS" id="1M9aAccbDhH" role="1bW5cS">
                  <node concept="3clFbF" id="1M9aAccbDhI" role="3cqZAp">
                    <node concept="2OqwBi" id="1M9aAccbDhJ" role="3clFbG">
                      <node concept="Xjq3P" id="1M9aAccbDhK" role="2Oq$k0" />
                      <node concept="liA8E" id="1M9aAccbDhL" role="2OqNvi">
                        <ref role="37wK5l" node="3R$SdNHmgJq" resolve="importRule" />
                        <node concept="10QFUN" id="1M9aAccbDhM" role="37wK5m">
                          <node concept="3uibUv" id="1M9aAccbDxP" role="10QFUM">
                            <ref role="3uigEE" to="kr2q:~ParserRule" resolve="ParserRule" />
                          </node>
                          <node concept="37vLTw" id="1M9aAccbDhO" role="10QFUP">
                            <ref role="3cqZAo" node="1M9aAccbDhP" resolve="r" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="1M9aAccbDhP" role="1bW2Oz">
                  <property role="TrG5h" value="r" />
                  <node concept="3uibUv" id="1M9aAccbDhQ" role="1tU5fm">
                    <ref role="3uigEE" to="kr2q:~Rule" resolve="Rule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1M9aAccbCzI" role="1B3o_S" />
      <node concept="3cqZAl" id="1M9aAccbCUu" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3R$SdNHn9kp" role="jymVt" />
    <node concept="3clFb_" id="3R$SdNHn9kq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="importTokens" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3R$SdNHn9kr" role="3clF47">
        <node concept="3clFbF" id="3R$SdNHn9ks" role="3cqZAp">
          <node concept="2OqwBi" id="3R$SdNHn9kt" role="3clFbG">
            <node concept="2OqwBi" id="3R$SdNHn9ku" role="2Oq$k0">
              <node concept="2OqwBi" id="3R$SdNHn9kv" role="2Oq$k0">
                <node concept="2OqwBi" id="3R$SdNHn9kw" role="2Oq$k0">
                  <node concept="2OqwBi" id="3R$SdNHn9kx" role="2Oq$k0">
                    <node concept="2OqwBi" id="3R$SdNHn9ky" role="2Oq$k0">
                      <node concept="Xjq3P" id="3R$SdNHn9kz" role="2Oq$k0" />
                      <node concept="2OwXpG" id="3R$SdNHn9k$" role="2OqNvi">
                        <ref role="2Oxat5" node="3R$SdNHmQSg" resolve="grammar" />
                      </node>
                    </node>
                    <node concept="2OwXpG" id="3R$SdNHn9k_" role="2OqNvi">
                      <ref role="2Oxat5" to="kr2q:~GrammarInfo.rules" resolve="rules" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3R$SdNHn9kA" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.values():java.util.Collection" resolve="values" />
                  </node>
                </node>
                <node concept="liA8E" id="3R$SdNHn9kB" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Collection.stream():java.util.stream.Stream" resolve="stream" />
                </node>
              </node>
              <node concept="liA8E" id="3R$SdNHn9kC" role="2OqNvi">
                <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate):java.util.stream.Stream" resolve="filter" />
                <node concept="1bVj0M" id="3R$SdNHn9kD" role="37wK5m">
                  <node concept="3clFbS" id="3R$SdNHn9kE" role="1bW5cS">
                    <node concept="3clFbF" id="3R$SdNHn9kF" role="3cqZAp">
                      <node concept="2ZW3vV" id="3R$SdNHn9kG" role="3clFbG">
                        <node concept="3uibUv" id="3R$SdNHn9kH" role="2ZW6by">
                          <ref role="3uigEE" to="kr2q:~FlatLexerRule" resolve="FlatLexerRule" />
                        </node>
                        <node concept="37vLTw" id="3R$SdNHn9kI" role="2ZW6bz">
                          <ref role="3cqZAo" node="3R$SdNHn9kJ" resolve="r" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="3R$SdNHn9kJ" role="1bW2Oz">
                    <property role="TrG5h" value="r" />
                    <node concept="3uibUv" id="3R$SdNHn9kK" role="1tU5fm">
                      <ref role="3uigEE" to="kr2q:~Rule" resolve="Rule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3R$SdNHn9kL" role="2OqNvi">
              <ref role="37wK5l" to="1ctc:~Stream.forEach(java.util.function.Consumer):void" resolve="forEach" />
              <node concept="1bVj0M" id="3R$SdNHn9kM" role="37wK5m">
                <node concept="3clFbS" id="3R$SdNHn9kN" role="1bW5cS">
                  <node concept="3clFbF" id="3R$SdNHn9kO" role="3cqZAp">
                    <node concept="2OqwBi" id="3R$SdNHn9kP" role="3clFbG">
                      <node concept="Xjq3P" id="3R$SdNHn9kQ" role="2Oq$k0" />
                      <node concept="liA8E" id="3R$SdNHn9kR" role="2OqNvi">
                        <ref role="37wK5l" node="3R$SdNHn0h6" resolve="importToken" />
                        <node concept="10QFUN" id="3R$SdNHn9kS" role="37wK5m">
                          <node concept="3uibUv" id="3R$SdNHn9kT" role="10QFUM">
                            <ref role="3uigEE" to="kr2q:~FlatLexerRule" resolve="FlatLexerRule" />
                          </node>
                          <node concept="37vLTw" id="3R$SdNHn9kU" role="10QFUP">
                            <ref role="3cqZAo" node="3R$SdNHn9kV" resolve="r" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="3R$SdNHn9kV" role="1bW2Oz">
                  <property role="TrG5h" value="r" />
                  <node concept="3uibUv" id="3R$SdNHn9kW" role="1tU5fm">
                    <ref role="3uigEE" to="kr2q:~Rule" resolve="Rule" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3R$SdNHn9kX" role="1B3o_S" />
      <node concept="3cqZAl" id="3R$SdNHn9kY" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3R$SdNHmgjZ" role="jymVt" />
    <node concept="3clFb_" id="3R$SdNHmgJq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="importRule" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3R$SdNHmgJt" role="3clF47">
        <node concept="3clFbJ" id="1M9aAccaRVB" role="3cqZAp">
          <node concept="3clFbS" id="1M9aAccaRVC" role="3clFbx">
            <node concept="3SKdUt" id="1M9aAccaSNb" role="3cqZAp">
              <node concept="3SKdUq" id="1M9aAccaSNc" role="3SKWNk">
                <property role="3SKdUp" value="Split rule - we will create an interface" />
              </node>
            </node>
            <node concept="3cpWs8" id="1M9aAccbhEb" role="3cqZAp">
              <node concept="3cpWsn" id="1M9aAccbhEc" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="1M9aAccbhEd" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                </node>
                <node concept="2ShNRf" id="1M9aAccbhEe" role="33vP2m">
                  <node concept="3zrR0B" id="1M9aAccbhEf" role="2ShVmc">
                    <node concept="3Tqbb2" id="1M9aAccbhEg" role="3zrR0E">
                      <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1M9aAccbhEh" role="3cqZAp">
              <node concept="37vLTI" id="1M9aAccbhEi" role="3clFbG">
                <node concept="2OqwBi" id="1M9aAccbhEj" role="37vLTx">
                  <node concept="37vLTw" id="1M9aAccbhEk" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$SdNHncBV" resolve="rule" />
                  </node>
                  <node concept="2OwXpG" id="1M9aAccbhEl" role="2OqNvi">
                    <ref role="2Oxat5" to="kr2q:~Rule.name" resolve="name" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1M9aAccbhEm" role="37vLTJ">
                  <node concept="37vLTw" id="1M9aAccbhEn" role="2Oq$k0">
                    <ref role="3cqZAo" node="1M9aAccbhEc" resolve="node" />
                  </node>
                  <node concept="3TrcHB" id="1M9aAccbhEo" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1M9aAccbhEp" role="3cqZAp">
              <node concept="37vLTI" id="1M9aAccbhEq" role="3clFbG">
                <node concept="2OqwBi" id="1M9aAccbhEr" role="37vLTx">
                  <node concept="37vLTw" id="1M9aAccbhEs" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$SdNHncBV" resolve="rule" />
                  </node>
                  <node concept="2OwXpG" id="1M9aAccbhEt" role="2OqNvi">
                    <ref role="2Oxat5" to="kr2q:~Rule.name" resolve="name" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1M9aAccbhEu" role="37vLTJ">
                  <node concept="37vLTw" id="1M9aAccbhEv" role="2Oq$k0">
                    <ref role="3cqZAo" node="1M9aAccbhEc" resolve="node" />
                  </node>
                  <node concept="3TrcHB" id="1M9aAccbhEw" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:gOOYy9I" resolve="alias" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1M9aAccbhEx" role="3cqZAp">
              <node concept="37vLTI" id="1M9aAccbhEy" role="3clFbG">
                <node concept="2YIFZM" id="1M9aAccbhEz" role="37vLTx">
                  <ref role="1Pybhc" to="twe9:1o9qxtfbpaa" resolve="ConceptIdUtil" />
                  <ref role="37wK5l" to="twe9:1o9qxtfbpgW" resolve="generate" />
                  <node concept="37vLTw" id="1M9aAccbhE$" role="37wK5m">
                    <ref role="3cqZAo" node="1M9aAccbhEc" resolve="node" />
                  </node>
                  <node concept="37vLTw" id="1M9aAccbhE_" role="37wK5m">
                    <ref role="3cqZAo" node="4J1$HSvHxhw" resolve="structureModel" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1M9aAccbhEA" role="37vLTJ">
                  <node concept="37vLTw" id="1M9aAccbhEB" role="2Oq$k0">
                    <ref role="3cqZAo" node="1M9aAccbhEc" resolve="node" />
                  </node>
                  <node concept="3TrcHB" id="1M9aAccbhEC" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:1o9qxtf9pgp" resolve="conceptId" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1M9aAccbReU" role="3cqZAp">
              <node concept="37vLTI" id="1M9aAccbRs3" role="3clFbG">
                <node concept="Xl_RD" id="1M9aAccbRtH" role="37vLTx">
                  <property role="Xl_RC" value="Interfaces" />
                </node>
                <node concept="2OqwBi" id="1M9aAccbRib" role="37vLTJ">
                  <node concept="37vLTw" id="1M9aAccbReS" role="2Oq$k0">
                    <ref role="3cqZAo" node="1M9aAccbhEc" resolve="node" />
                  </node>
                  <node concept="3TrcHB" id="1M9aAccbRq4" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1M9aAccbhED" role="3cqZAp">
              <node concept="2OqwBi" id="1M9aAccbhEE" role="3clFbG">
                <node concept="2OqwBi" id="1M9aAccbhEF" role="2Oq$k0">
                  <node concept="Xjq3P" id="1M9aAccbhEG" role="2Oq$k0" />
                  <node concept="2OwXpG" id="1M9aAccbhEH" role="2OqNvi">
                    <ref role="2Oxat5" node="4J1$HSvHxhw" resolve="structureModel" />
                  </node>
                </node>
                <node concept="3BYIHo" id="1M9aAccbhEI" role="2OqNvi">
                  <node concept="37vLTw" id="1M9aAccbhEJ" role="3BYIHq">
                    <ref role="3cqZAo" node="1M9aAccbhEc" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="1M9aAccaSE3" role="3clFbw">
            <node concept="3cmrfG" id="1M9aAccaSIQ" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="1M9aAccaS9u" role="3uHU7B">
              <node concept="2OqwBi" id="1M9aAccaRX2" role="2Oq$k0">
                <node concept="37vLTw" id="1M9aAccaRW7" role="2Oq$k0">
                  <ref role="3cqZAo" node="3R$SdNHncBV" resolve="rule" />
                </node>
                <node concept="2OwXpG" id="1M9aAccaRYv" role="2OqNvi">
                  <ref role="2Oxat5" to="kr2q:~ParserRule.alternatives" resolve="alternatives" />
                </node>
              </node>
              <node concept="liA8E" id="1M9aAccaStk" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1M9aAccaSNh" role="9aQIa">
            <node concept="3clFbS" id="1M9aAccaSNi" role="9aQI4">
              <node concept="3SKdUt" id="1M9aAccbBuK" role="3cqZAp">
                <node concept="3SKdUq" id="1M9aAccbBuM" role="3SKWNk">
                  <property role="3SKdUp" value="Concrete element, we can create a concept" />
                </node>
              </node>
              <node concept="3cpWs8" id="1M9aAccaSRE" role="3cqZAp">
                <node concept="3cpWsn" id="1M9aAccaSRF" role="3cpWs9">
                  <property role="TrG5h" value="node" />
                  <node concept="3Tqbb2" id="1M9aAccaSRG" role="1tU5fm">
                    <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                  </node>
                  <node concept="2ShNRf" id="1M9aAccaSRH" role="33vP2m">
                    <node concept="3zrR0B" id="1M9aAccaSRI" role="2ShVmc">
                      <node concept="3Tqbb2" id="1M9aAccaSRJ" role="3zrR0E">
                        <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1M9aAccaSRK" role="3cqZAp">
                <node concept="37vLTI" id="1M9aAccaSRL" role="3clFbG">
                  <node concept="2OqwBi" id="1M9aAccaSRM" role="37vLTx">
                    <node concept="37vLTw" id="1M9aAccaSRN" role="2Oq$k0">
                      <ref role="3cqZAo" node="3R$SdNHncBV" resolve="rule" />
                    </node>
                    <node concept="2OwXpG" id="1M9aAccaSRO" role="2OqNvi">
                      <ref role="2Oxat5" to="kr2q:~Rule.name" resolve="name" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1M9aAccaSRP" role="37vLTJ">
                    <node concept="37vLTw" id="1M9aAccaSRQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="1M9aAccaSRF" resolve="node" />
                    </node>
                    <node concept="3TrcHB" id="1M9aAccaSRR" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1M9aAccaSRS" role="3cqZAp">
                <node concept="37vLTI" id="1M9aAccaSRT" role="3clFbG">
                  <node concept="2OqwBi" id="1M9aAccaSRU" role="37vLTx">
                    <node concept="37vLTw" id="1M9aAccaSRV" role="2Oq$k0">
                      <ref role="3cqZAo" node="3R$SdNHncBV" resolve="rule" />
                    </node>
                    <node concept="2OwXpG" id="1M9aAccaSRW" role="2OqNvi">
                      <ref role="2Oxat5" to="kr2q:~Rule.name" resolve="name" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1M9aAccaSRX" role="37vLTJ">
                    <node concept="37vLTw" id="1M9aAccaSRY" role="2Oq$k0">
                      <ref role="3cqZAo" node="1M9aAccaSRF" resolve="node" />
                    </node>
                    <node concept="3TrcHB" id="1M9aAccaSRZ" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:gOOYy9I" resolve="alias" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1M9aAccaT3_" role="3cqZAp">
                <node concept="37vLTI" id="1M9aAccaT3A" role="3clFbG">
                  <node concept="2YIFZM" id="1M9aAccaT3B" role="37vLTx">
                    <ref role="1Pybhc" to="twe9:1o9qxtfbpaa" resolve="ConceptIdUtil" />
                    <ref role="37wK5l" to="twe9:1o9qxtfbpgW" resolve="generate" />
                    <node concept="37vLTw" id="1M9aAccaT3C" role="37wK5m">
                      <ref role="3cqZAo" node="1M9aAccaSRF" resolve="node" />
                    </node>
                    <node concept="37vLTw" id="1M9aAccaT3D" role="37wK5m">
                      <ref role="3cqZAo" node="4J1$HSvHxhw" resolve="structureModel" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1M9aAccaT3E" role="37vLTJ">
                    <node concept="37vLTw" id="1M9aAccaT3F" role="2Oq$k0">
                      <ref role="3cqZAo" node="1M9aAccaSRF" resolve="node" />
                    </node>
                    <node concept="3TrcHB" id="1M9aAccaT3G" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:1o9qxtf9pgp" resolve="conceptId" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1M9aAccbyMv" role="3cqZAp">
                <node concept="37vLTI" id="1M9aAccbz9I" role="3clFbG">
                  <node concept="2OqwBi" id="1M9aAccbzbN" role="37vLTx">
                    <node concept="37vLTw" id="1M9aAccbzaM" role="2Oq$k0">
                      <ref role="3cqZAo" node="3R$SdNHncBV" resolve="rule" />
                    </node>
                    <node concept="liA8E" id="1M9aAccbzw6" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object):boolean" resolve="equals" />
                      <node concept="2OqwBi" id="1M9aAccbzAW" role="37wK5m">
                        <node concept="2OqwBi" id="1M9aAccbzy5" role="2Oq$k0">
                          <node concept="Xjq3P" id="1M9aAccbzwQ" role="2Oq$k0" />
                          <node concept="2OwXpG" id="1M9aAccbz$Q" role="2OqNvi">
                            <ref role="2Oxat5" node="3R$SdNHmQSg" resolve="grammar" />
                          </node>
                        </node>
                        <node concept="2OwXpG" id="1M9aAccbzDC" role="2OqNvi">
                          <ref role="2Oxat5" to="kr2q:~GrammarInfo.rootRule" resolve="rootRule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1M9aAccbyU9" role="37vLTJ">
                    <node concept="37vLTw" id="1M9aAccbyMt" role="2Oq$k0">
                      <ref role="3cqZAo" node="1M9aAccaSRF" resolve="node" />
                    </node>
                    <node concept="3TrcHB" id="1M9aAccbz8j" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:fX9Ktp8" resolve="rootable" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1M9aAccbRuB" role="3cqZAp">
                <node concept="37vLTI" id="1M9aAccbRuC" role="3clFbG">
                  <node concept="Xl_RD" id="1M9aAccbRuD" role="37vLTx">
                    <property role="Xl_RC" value="Rules" />
                  </node>
                  <node concept="2OqwBi" id="1M9aAccbRuE" role="37vLTJ">
                    <node concept="37vLTw" id="1M9aAccbRuF" role="2Oq$k0">
                      <ref role="3cqZAo" node="1M9aAccaSRF" resolve="node" />
                    </node>
                    <node concept="3TrcHB" id="1M9aAccbRuG" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1M9aAccaSSb" role="3cqZAp">
                <node concept="2OqwBi" id="1M9aAccaSSc" role="3clFbG">
                  <node concept="2OqwBi" id="1M9aAccaSSd" role="2Oq$k0">
                    <node concept="Xjq3P" id="1M9aAccaSSe" role="2Oq$k0" />
                    <node concept="2OwXpG" id="1M9aAccaSSf" role="2OqNvi">
                      <ref role="2Oxat5" node="4J1$HSvHxhw" resolve="structureModel" />
                    </node>
                  </node>
                  <node concept="3BYIHo" id="1M9aAccaSSg" role="2OqNvi">
                    <node concept="37vLTw" id="1M9aAccaSSh" role="3BYIHq">
                      <ref role="3cqZAo" node="1M9aAccaSRF" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3R$SdNHmgAb" role="1B3o_S" />
      <node concept="3cqZAl" id="3R$SdNHmgJn" role="3clF45" />
      <node concept="37vLTG" id="3R$SdNHncBV" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3uibUv" id="3R$SdNHnd5a" role="1tU5fm">
          <ref role="3uigEE" to="kr2q:~ParserRule" resolve="ParserRule" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3R$SdNHmZcT" role="jymVt" />
    <node concept="3clFb_" id="3R$SdNHn0h6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="importToken" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3R$SdNHn0h9" role="3clF47">
        <node concept="3clFbJ" id="3R$SdNHn1q6" role="3cqZAp">
          <node concept="3clFbS" id="3R$SdNHn1q8" role="3clFbx">
            <node concept="3cpWs8" id="3R$SdNHn1on" role="3cqZAp">
              <node concept="3cpWsn" id="3R$SdNHn1oq" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="3R$SdNHn1ol" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:fKAz7CR" resolve="ConstrainedDataTypeDeclaration" />
                </node>
                <node concept="2ShNRf" id="3R$SdNHn1wR" role="33vP2m">
                  <node concept="3zrR0B" id="3R$SdNHn1wN" role="2ShVmc">
                    <node concept="3Tqbb2" id="3R$SdNHn1wO" role="3zrR0E">
                      <ref role="ehGHo" to="tpce:fKAz7CR" resolve="ConstrainedDataTypeDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3R$SdNHn1B1" role="3cqZAp">
              <node concept="37vLTI" id="3R$SdNHn1MT" role="3clFbG">
                <node concept="2OqwBi" id="3R$SdNHn1P_" role="37vLTx">
                  <node concept="37vLTw" id="3R$SdNHn1Oz" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$SdNHn0C0" resolve="rule" />
                  </node>
                  <node concept="2OwXpG" id="3R$SdNHn1Sj" role="2OqNvi">
                    <ref role="2Oxat5" to="kr2q:~Rule.name" resolve="name" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3R$SdNHn1CH" role="37vLTJ">
                  <node concept="37vLTw" id="3R$SdNHn1AZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$SdNHn1oq" resolve="node" />
                  </node>
                  <node concept="3TrcHB" id="3R$SdNHn1Lk" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3R$SdNHn1Uo" role="3cqZAp">
              <node concept="37vLTI" id="3R$SdNHn236" role="3clFbG">
                <node concept="2OqwBi" id="3R$SdNHn25m" role="37vLTx">
                  <node concept="37vLTw" id="3R$SdNHn24k" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$SdNHn0C0" resolve="rule" />
                  </node>
                  <node concept="2OwXpG" id="3R$SdNHn284" role="2OqNvi">
                    <ref role="2Oxat5" to="kr2q:~Rule.name" resolve="name" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3R$SdNHn1W4" role="37vLTJ">
                  <node concept="37vLTw" id="3R$SdNHn1Um" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$SdNHn1oq" resolve="node" />
                  </node>
                  <node concept="3TrcHB" id="3R$SdNHn215" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:gOOYy9I" resolve="alias" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3R$SdNHn2ap" role="3cqZAp">
              <node concept="37vLTI" id="3R$SdNHn2nd" role="3clFbG">
                <node concept="2OqwBi" id="3R$SdNHn2c5" role="37vLTJ">
                  <node concept="37vLTw" id="3R$SdNHn2an" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$SdNHn1oq" resolve="node" />
                  </node>
                  <node concept="3TrcHB" id="3R$SdNHn2lc" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:fKFLfW2" resolve="constraint" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3R$SdNHn2yg" role="37vLTx">
                  <node concept="1eOMI4" id="3R$SdNHn2w9" role="2Oq$k0">
                    <node concept="10QFUN" id="3R$SdNHn2w6" role="1eOMHV">
                      <node concept="3uibUv" id="3R$SdNHn2wP" role="10QFUM">
                        <ref role="3uigEE" to="kr2q:~RegexRule" resolve="RegexRule" />
                      </node>
                      <node concept="37vLTw" id="3R$SdNHn2uY" role="10QFUP">
                        <ref role="3cqZAo" node="3R$SdNHn0C0" resolve="rule" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OwXpG" id="3R$SdNHn2$Z" role="2OqNvi">
                    <ref role="2Oxat5" to="kr2q:~RegexRule.regexp" resolve="regexp" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1M9aAccbRxW" role="3cqZAp">
              <node concept="37vLTI" id="1M9aAccbRxX" role="3clFbG">
                <node concept="Xl_RD" id="1M9aAccbRxY" role="37vLTx">
                  <property role="Xl_RC" value="Tokens" />
                </node>
                <node concept="2OqwBi" id="1M9aAccbRxZ" role="37vLTJ">
                  <node concept="37vLTw" id="1M9aAccbRy0" role="2Oq$k0">
                    <ref role="3cqZAo" node="3R$SdNHn1oq" resolve="node" />
                  </node>
                  <node concept="3TrcHB" id="1M9aAccbRy1" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3R$SdNHn1jE" role="3cqZAp">
              <node concept="2OqwBi" id="3R$SdNHn1yz" role="3clFbG">
                <node concept="2OqwBi" id="3R$SdNHn1kn" role="2Oq$k0">
                  <node concept="Xjq3P" id="3R$SdNHn1jD" role="2Oq$k0" />
                  <node concept="2OwXpG" id="3R$SdNHn1mP" role="2OqNvi">
                    <ref role="2Oxat5" node="4J1$HSvHxhw" resolve="structureModel" />
                  </node>
                </node>
                <node concept="3BYIHo" id="3R$SdNHn1$a" role="2OqNvi">
                  <node concept="37vLTw" id="3R$SdNHn1_p" role="3BYIHq">
                    <ref role="3cqZAo" node="3R$SdNHn1oq" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="3R$SdNHn1tR" role="3clFbw">
            <node concept="3uibUv" id="3R$SdNHn1vC" role="2ZW6by">
              <ref role="3uigEE" to="kr2q:~RegexRule" resolve="RegexRule" />
            </node>
            <node concept="37vLTw" id="3R$SdNHn1r7" role="2ZW6bz">
              <ref role="3cqZAo" node="3R$SdNHn0C0" resolve="rule" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3R$SdNHmZUh" role="1B3o_S" />
      <node concept="3cqZAl" id="3R$SdNHn0h3" role="3clF45" />
      <node concept="37vLTG" id="3R$SdNHn0C0" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3uibUv" id="3R$SdNHn0BZ" role="1tU5fm">
          <ref role="3uigEE" to="kr2q:~FlatLexerRule" resolve="FlatLexerRule" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1OSx5D$GPOS" role="1B3o_S" />
  </node>
</model>

