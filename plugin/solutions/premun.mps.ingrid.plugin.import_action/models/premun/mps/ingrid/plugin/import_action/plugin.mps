<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8f990077-2eeb-4671-b5d0-013775b6413e(premun.mps.ingrid.plugin.import_action.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="0" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports>
    <import index="5bij" ref="r:2d3e24f6-bdc3-4b00-bb18-5ec15d3c7dbc(premun.mps.ingrid.plugin.importer.structure)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="zkjw" ref="c844064f-26e3-4868-95b4-15456423be74/java:premun.mps.ingrid.importer(premun.mps.ingrid.plugin.import_process/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="b500" ref="r:c3608ff3-23d3-4792-858b-da3c93005e4d(premun.mps.ingrid.plugin.import_process.import_process)" implicit="true" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="1213273179528" name="description" index="1WHSii" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="7u4wmVSPxcW" />
  <node concept="sE7Ow" id="3_5Fm_0LVav">
    <property role="TrG5h" value="ImportAction" />
    <property role="2uzpH1" value="Import Grammar" />
    <property role="1WHSii" value="Imports selected grammar into an MPS language" />
    <node concept="2XrIbr" id="4F6jbA$ln8h" role="32lrUH">
      <property role="TrG5h" value="showAlert" />
      <node concept="3clFbS" id="4F6jbA$ln8i" role="3clF47">
        <node concept="3clFbF" id="4F6jbA$lnzj" role="3cqZAp">
          <node concept="2YIFZM" id="4F6jbA$lnz_" role="3clFbG">
            <ref role="1Pybhc" to="dxuu:~JOptionPane" resolve="JOptionPane" />
            <ref role="37wK5l" to="dxuu:~JOptionPane.showMessageDialog(java.awt.Component,java.lang.Object):void" resolve="showMessageDialog" />
            <node concept="10Nm6u" id="4F6jbA$ln$j" role="37wK5m" />
            <node concept="37vLTw" id="4F6jbA$lnP1" role="37wK5m">
              <ref role="3cqZAo" node="4F6jbA$lnfY" resolve="message" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4F6jbA$lncV" role="3clF45" />
      <node concept="37vLTG" id="4F6jbA$lnfY" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="4F6jbA$lnfX" role="1tU5fm" />
      </node>
    </node>
    <node concept="tnohg" id="3_5Fm_0LVaw" role="tncku">
      <node concept="3clFbS" id="3_5Fm_0LVax" role="2VODD2">
        <node concept="3SKdUt" id="mX_CB8FXAX" role="3cqZAp">
          <node concept="3SKdUq" id="mX_CB8FXAZ" role="3SKWNk">
            <property role="3SKdUp" value="MOCK" />
          </node>
        </node>
        <node concept="3cpWs8" id="mX_CB8FZwK" role="3cqZAp">
          <node concept="3cpWsn" id="mX_CB8FZwN" role="3cpWs9">
            <property role="TrG5h" value="languageName" />
            <node concept="17QB3L" id="mX_CB8FZwJ" role="1tU5fm" />
            <node concept="Xl_RD" id="mX_CB8FVGG" role="33vP2m">
              <property role="Xl_RC" value="imported.SimpleXML" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="mX_CB8FXZn" role="3cqZAp">
          <node concept="3cpWsn" id="mX_CB8FXZo" role="3cpWs9">
            <property role="TrG5h" value="language" />
            <node concept="3uibUv" id="mX_CB8FXZp" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
            </node>
            <node concept="10Nm6u" id="mX_CB8FXZq" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="mX_CB8FXZr" role="3cqZAp" />
        <node concept="3cpWs8" id="mX_CB8FXZs" role="3cqZAp">
          <node concept="3cpWsn" id="mX_CB8FXZt" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="A3Dl8" id="mX_CB8FXZu" role="1tU5fm">
              <node concept="3qUE_q" id="mX_CB8FXZv" role="A3Ik2">
                <node concept="3uibUv" id="mX_CB8FXZw" role="3qUE_r">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="mX_CB8FXZx" role="33vP2m">
              <node concept="2OqwBi" id="mX_CB8FXZy" role="2Oq$k0">
                <node concept="2WthIp" id="mX_CB8FXZz" role="2Oq$k0" />
                <node concept="1DTwFV" id="mX_CB8FXZ$" role="2OqNvi">
                  <ref role="2WH_rO" node="3_5Fm_0M6RU" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="mX_CB8FXZ_" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModules():java.lang.Iterable" resolve="getModules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="mX_CB8FXZA" role="3cqZAp">
          <node concept="2GrKxI" id="mX_CB8FXZB" role="2Gsz3X">
            <property role="TrG5h" value="modul" />
          </node>
          <node concept="3clFbS" id="mX_CB8FXZC" role="2LFqv$">
            <node concept="3clFbJ" id="mX_CB8FXZD" role="3cqZAp">
              <node concept="3clFbS" id="mX_CB8FXZE" role="3clFbx">
                <node concept="3clFbF" id="mX_CB8FXZF" role="3cqZAp">
                  <node concept="37vLTI" id="mX_CB8FXZG" role="3clFbG">
                    <node concept="2GrUjf" id="mX_CB8FXZH" role="37vLTx">
                      <ref role="2Gs0qQ" node="mX_CB8FXZB" resolve="modul" />
                    </node>
                    <node concept="37vLTw" id="mX_CB8FXZI" role="37vLTJ">
                      <ref role="3cqZAo" node="mX_CB8FXZo" resolve="language" />
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="mX_CB8FXZJ" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="mX_CB8FXZK" role="3clFbw">
                <node concept="2OqwBi" id="mX_CB8FXZL" role="2Oq$k0">
                  <node concept="2GrUjf" id="mX_CB8FXZM" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="mX_CB8FXZB" resolve="modul" />
                  </node>
                  <node concept="liA8E" id="mX_CB8FXZN" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleName():java.lang.String" resolve="getModuleName" />
                  </node>
                </node>
                <node concept="liA8E" id="mX_CB8FXZO" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="37vLTw" id="mX_CB8G00R" role="37wK5m">
                    <ref role="3cqZAo" node="mX_CB8FZwN" resolve="languageName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="mX_CB8FXZQ" role="2GsD0m">
            <node concept="37vLTw" id="mX_CB8FXZR" role="2Oq$k0">
              <ref role="3cqZAo" node="mX_CB8FXZt" resolve="modules" />
            </node>
            <node concept="UnYns" id="mX_CB8FXZS" role="2OqNvi">
              <node concept="3uibUv" id="mX_CB8FXZT" role="UnYnz">
                <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Jh2F9ezXzW" role="3cqZAp" />
        <node concept="3cpWs8" id="4X6IwqdNpSM" role="3cqZAp">
          <node concept="3cpWsn" id="4X6IwqdNpSN" role="3cpWs9">
            <property role="TrG5h" value="structureModel" />
            <node concept="3uibUv" id="4X6IwqdNpSO" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="4X6IwqdNpSP" role="33vP2m">
              <node concept="Rm8GO" id="4X6IwqdNpSQ" role="2Oq$k0">
                <ref role="1Px2BO" to="w1kc:~LanguageAspect" resolve="LanguageAspect" />
                <ref role="Rm8GQ" to="w1kc:~LanguageAspect.STRUCTURE" resolve="STRUCTURE" />
              </node>
              <node concept="liA8E" id="4X6IwqdNpSR" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~LanguageAspect.get(jetbrains.mps.smodel.Language):org.jetbrains.mps.openapi.model.SModel" resolve="get" />
                <node concept="37vLTw" id="4X6IwqdNpSS" role="37wK5m">
                  <ref role="3cqZAo" node="mX_CB8FXZo" resolve="language" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5Jh2F9ezXWk" role="3cqZAp">
          <node concept="3cpWsn" id="5Jh2F9ezXWl" role="3cpWs9">
            <property role="TrG5h" value="editorModel" />
            <node concept="3uibUv" id="5Jh2F9ezY_F" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="5Jh2F9ezY88" role="33vP2m">
              <node concept="Rm8GO" id="4X6IwqdNqdR" role="2Oq$k0">
                <ref role="Rm8GQ" to="w1kc:~LanguageAspect.EDITOR" resolve="EDITOR" />
                <ref role="1Px2BO" to="w1kc:~LanguageAspect" resolve="LanguageAspect" />
              </node>
              <node concept="liA8E" id="5Jh2F9ezYib" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~LanguageAspect.get(jetbrains.mps.smodel.Language):org.jetbrains.mps.openapi.model.SModel" resolve="get" />
                <node concept="37vLTw" id="5Jh2F9ezYjz" role="37wK5m">
                  <ref role="3cqZAo" node="mX_CB8FXZo" resolve="language" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Jh2F9ezZ4l" role="3cqZAp" />
        <node concept="3cpWs8" id="2CENt80j8HM" role="3cqZAp">
          <node concept="3cpWsn" id="2CENt80j8HN" role="3cpWs9">
            <property role="TrG5h" value="grammarImporter" />
            <node concept="3uibUv" id="2CENt80j8HO" role="1tU5fm">
              <ref role="3uigEE" to="zkjw:~GrammarImporter" resolve="GrammarImporter" />
            </node>
            <node concept="2ShNRf" id="2CENt80j8Iu" role="33vP2m">
              <node concept="1pGfFk" id="2CENt80jbpK" role="2ShVmc">
                <ref role="37wK5l" to="zkjw:~GrammarImporter.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.model.SModel)" resolve="GrammarImporter" />
                <node concept="37vLTw" id="4X6IwqdNqfV" role="37wK5m">
                  <ref role="3cqZAo" node="4X6IwqdNpSN" resolve="structureModel" />
                </node>
                <node concept="37vLTw" id="4X6IwqdNsR6" role="37wK5m">
                  <ref role="3cqZAo" node="5Jh2F9ezXWl" resolve="editorModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2CENt80jbvp" role="3cqZAp">
          <node concept="2OqwBi" id="2CENt80jbwA" role="3clFbG">
            <node concept="37vLTw" id="2CENt80jbvn" role="2Oq$k0">
              <ref role="3cqZAo" node="2CENt80j8HN" resolve="grammarImporter" />
            </node>
            <node concept="liA8E" id="2CENt80jbxG" role="2OqNvi">
              <ref role="37wK5l" to="zkjw:~GrammarImporter.importGrammar(java.lang.String):void" resolve="importGrammar" />
              <node concept="Xl_RD" id="5Jh2F9ezZdF" role="37wK5m">
                <property role="Xl_RC" value="/home/premun/Diplomka/ingrid/grammars/XML.g4" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Jh2F9ezYRq" role="3cqZAp" />
        <node concept="3clFbF" id="5Jh2F9ezWJQ" role="3cqZAp">
          <node concept="2OqwBi" id="5Jh2F9ezWJR" role="3clFbG">
            <node concept="2WthIp" id="5Jh2F9ezWJS" role="2Oq$k0" />
            <node concept="2XshWL" id="5Jh2F9ezWJT" role="2OqNvi">
              <ref role="2WH_rO" node="4F6jbA$ln8h" resolve="showAlert" />
              <node concept="Xl_RD" id="5Jh2F9ezWJU" role="2XxRq1">
                <property role="Xl_RC" value="Language imported." />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="mX_CB8FW54" role="3cqZAp" />
        <node concept="3clFbH" id="mX_CB8FWRF" role="3cqZAp" />
        <node concept="3SKdUt" id="mX_CB8FX9s" role="3cqZAp">
          <node concept="3SKdUq" id="mX_CB8FX9u" role="3SKWNk">
            <property role="3SKdUp" value="FROM HERE IT'S OK AGAIN" />
          </node>
        </node>
        <node concept="3clFbH" id="mX_CB8FVfo" role="3cqZAp" />
        <node concept="1X3_iC" id="mX_CB8G0Hw" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="mX_CB8FVfp" role="8Wnug">
            <node concept="2OqwBi" id="mX_CB8FVfq" role="3clFbG">
              <node concept="2WthIp" id="mX_CB8FVfr" role="2Oq$k0" />
              <node concept="2XshWL" id="mX_CB8FVfs" role="2OqNvi">
                <ref role="2WH_rO" node="4F6jbA$ln8h" resolve="showAlert" />
                <node concept="Xl_RD" id="mX_CB8FVft" role="2XxRq1">
                  <property role="Xl_RC" value="Language imported." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="mX_CB8G0Hx" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbH" id="mX_CB8FV4u" role="8Wnug" />
        </node>
        <node concept="1X3_iC" id="mX_CB8G0Hy" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="4F6jbA$lphw" role="8Wnug">
            <node concept="3cpWsn" id="4F6jbA$lphx" role="3cpWs9">
              <property role="TrG5h" value="importConcept" />
              <node concept="3Tqbb2" id="4F6jbA$lphy" role="1tU5fm">
                <ref role="ehGHo" to="5bij:5wKr$U_ohND" resolve="GrammarImporter" />
              </node>
              <node concept="2OqwBi" id="4F6jbA$lphz" role="33vP2m">
                <node concept="2OqwBi" id="4F6jbA$lph$" role="2Oq$k0">
                  <node concept="2WthIp" id="4F6jbA$lph_" role="2Oq$k0" />
                  <node concept="3gHZIF" id="4F6jbA$lphA" role="2OqNvi">
                    <ref role="2WH_rO" node="4F6jbA$l4Ok" resolve="node" />
                  </node>
                </node>
                <node concept="2Xjw5R" id="4F6jbA$lphB" role="2OqNvi">
                  <node concept="1xMEDy" id="4F6jbA$lphC" role="1xVPHs">
                    <node concept="chp4Y" id="7u4wmVSPzaZ" role="ri$Ld">
                      <ref role="cht4Q" to="5bij:5wKr$U_ohND" resolve="GrammarImporter" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="4F6jbA$lphE" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="mX_CB8G0Hz" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbH" id="4F6jbA$lpgG" role="8Wnug" />
        </node>
        <node concept="1X3_iC" id="mX_CB8G0H$" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbJ" id="4F6jbA$lpAi" role="8Wnug">
            <node concept="3clFbS" id="4F6jbA$lpAk" role="3clFbx">
              <node concept="3clFbF" id="4F6jbA$lpZr" role="3cqZAp">
                <node concept="2OqwBi" id="4F6jbA$lpZl" role="3clFbG">
                  <node concept="2WthIp" id="4F6jbA$lpZo" role="2Oq$k0" />
                  <node concept="2XshWL" id="4F6jbA$lpZq" role="2OqNvi">
                    <ref role="2WH_rO" node="4F6jbA$ln8h" resolve="showAlert" />
                    <node concept="Xl_RD" id="4F6jbA$lq01" role="2XxRq1">
                      <property role="Xl_RC" value="Please select the GrammarImport concept." />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4F6jbA$lq7w" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="4F6jbA$lpKc" role="3clFbw">
              <node concept="37vLTw" id="4F6jbA$lpC5" role="2Oq$k0">
                <ref role="3cqZAo" node="4F6jbA$lphx" resolve="importConcept" />
              </node>
              <node concept="3w_OXm" id="4F6jbA$lpSQ" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="mX_CB8G0H_" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbH" id="4F6jbA$lxNK" role="8Wnug" />
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HA" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="4F6jbA$lyhC" role="8Wnug">
            <node concept="3cpWsn" id="4F6jbA$lyhF" role="3cpWs9">
              <property role="TrG5h" value="languageName" />
              <node concept="17QB3L" id="4F6jbA$lyhA" role="1tU5fm" />
              <node concept="2OqwBi" id="4F6jbA$lyt6" role="33vP2m">
                <node concept="37vLTw" id="4F6jbA$lyqw" role="2Oq$k0">
                  <ref role="3cqZAo" node="4F6jbA$lphx" resolve="importConcept" />
                </node>
                <node concept="3TrcHB" id="7u4wmVSPznR" role="2OqNvi">
                  <ref role="3TsBF5" to="5bij:5wKr$U_ohNG" resolve="targetLanguage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HB" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="4F6jbA$lu1y" role="8Wnug">
            <node concept="3cpWsn" id="4F6jbA$lu1z" role="3cpWs9">
              <property role="TrG5h" value="language" />
              <node concept="3uibUv" id="4F6jbA$lu1$" role="1tU5fm">
                <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
              </node>
              <node concept="10Nm6u" id="4F6jbA$lx1H" role="33vP2m" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HC" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbH" id="4F6jbA$lpxK" role="8Wnug" />
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HD" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="4F6jbA$lrGN" role="8Wnug">
            <node concept="3cpWsn" id="4F6jbA$lrGQ" role="3cpWs9">
              <property role="TrG5h" value="modules" />
              <node concept="A3Dl8" id="4F6jbA$lrGK" role="1tU5fm">
                <node concept="3qUE_q" id="4F6jbA$lrNJ" role="A3Ik2">
                  <node concept="3uibUv" id="4F6jbA$lwQU" role="3qUE_r">
                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4F6jbA$lsIT" role="33vP2m">
                <node concept="2OqwBi" id="4F6jbA$lsBi" role="2Oq$k0">
                  <node concept="2WthIp" id="4F6jbA$lsBl" role="2Oq$k0" />
                  <node concept="1DTwFV" id="4F6jbA$lsBn" role="2OqNvi">
                    <ref role="2WH_rO" node="3_5Fm_0M6RU" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="liA8E" id="4F6jbA$lsY3" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getModules():java.lang.Iterable" resolve="getModules" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HE" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="2Gpval" id="4F6jbA$lr5R" role="8Wnug">
            <node concept="2GrKxI" id="4F6jbA$lr5T" role="2Gsz3X">
              <property role="TrG5h" value="modul" />
            </node>
            <node concept="3clFbS" id="4F6jbA$lr5V" role="2LFqv$">
              <node concept="3clFbJ" id="4F6jbA$lucV" role="3cqZAp">
                <node concept="3clFbS" id="4F6jbA$lucW" role="3clFbx">
                  <node concept="3clFbF" id="4F6jbA$lvfT" role="3cqZAp">
                    <node concept="37vLTI" id="4F6jbA$lvo2" role="3clFbG">
                      <node concept="2GrUjf" id="4F6jbA$lvpd" role="37vLTx">
                        <ref role="2Gs0qQ" node="4F6jbA$lr5T" resolve="modul" />
                      </node>
                      <node concept="37vLTw" id="4F6jbA$ly1i" role="37vLTJ">
                        <ref role="3cqZAo" node="4F6jbA$lu1z" resolve="language" />
                      </node>
                    </node>
                  </node>
                  <node concept="3zACq4" id="4F6jbA$lvth" role="3cqZAp" />
                </node>
                <node concept="2OqwBi" id="4F6jbA$luH5" role="3clFbw">
                  <node concept="2OqwBi" id="4F6jbA$lugh" role="2Oq$k0">
                    <node concept="2GrUjf" id="4F6jbA$ludx" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="4F6jbA$lr5T" resolve="modul" />
                    </node>
                    <node concept="liA8E" id="4F6jbA$lurW" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleName():java.lang.String" resolve="getModuleName" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4F6jbA$luWQ" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="37vLTw" id="4F6jbA$lyFD" role="37wK5m">
                      <ref role="3cqZAo" node="4F6jbA$lyhF" resolve="languageName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4F6jbA$ltoR" role="2GsD0m">
              <node concept="37vLTw" id="4F6jbA$lt0M" role="2Oq$k0">
                <ref role="3cqZAo" node="4F6jbA$lrGQ" resolve="modules" />
              </node>
              <node concept="UnYns" id="4F6jbA$lt$X" role="2OqNvi">
                <node concept="3uibUv" id="4F6jbA$ltG2" role="UnYnz">
                  <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HF" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbH" id="4F6jbA$lvtw" role="8Wnug" />
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HG" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3SKdUt" id="77xx_JOfUtI" role="8Wnug">
            <node concept="3SKdUq" id="77xx_JOfUyv" role="3SKWNk">
              <property role="3SKdUp" value="No language with specified name found.." />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HH" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbJ" id="77xx_JOfV8t" role="8Wnug">
            <node concept="3clFbS" id="77xx_JOfV8v" role="3clFbx">
              <node concept="3clFbF" id="4F6jbA$lD25" role="3cqZAp">
                <node concept="2OqwBi" id="4F6jbA$lD1Z" role="3clFbG">
                  <node concept="2WthIp" id="4F6jbA$lD22" role="2Oq$k0" />
                  <node concept="2XshWL" id="4F6jbA$lD24" role="2OqNvi">
                    <ref role="2WH_rO" node="4F6jbA$ln8h" resolve="showAlert" />
                    <node concept="3cpWs3" id="4F6jbA$lDj0" role="2XxRq1">
                      <node concept="Xl_RD" id="4F6jbA$lDkw" role="3uHU7w">
                        <property role="Xl_RC" value=" not found!" />
                      </node>
                      <node concept="3cpWs3" id="4F6jbA$lDav" role="3uHU7B">
                        <node concept="Xl_RD" id="4F6jbA$lD4z" role="3uHU7B">
                          <property role="Xl_RC" value="Language " />
                        </node>
                        <node concept="37vLTw" id="4F6jbA$lDbL" role="3uHU7w">
                          <ref role="3cqZAo" node="4F6jbA$lyhF" resolve="languageName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="77xx_JOfV_t" role="3cqZAp" />
            </node>
            <node concept="3clFbC" id="77xx_JOfVt8" role="3clFbw">
              <node concept="10Nm6u" id="77xx_JOfVuA" role="3uHU7w" />
              <node concept="37vLTw" id="77xx_JOfVmB" role="3uHU7B">
                <ref role="3cqZAo" node="4F6jbA$lu1z" resolve="language" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HI" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbH" id="4F6jbA$lBsk" role="8Wnug" />
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HJ" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="4F6jbA$lC9_" role="8Wnug">
            <node concept="3cpWsn" id="4F6jbA$lC9C" role="3cpWs9">
              <property role="TrG5h" value="fileName" />
              <node concept="17QB3L" id="4F6jbA$lC9z" role="1tU5fm" />
              <node concept="2OqwBi" id="4F6jbA$lCnE" role="33vP2m">
                <node concept="37vLTw" id="4F6jbA$lClq" role="2Oq$k0">
                  <ref role="3cqZAo" node="4F6jbA$lphx" resolve="importConcept" />
                </node>
                <node concept="3TrcHB" id="7u4wmVSPzy8" role="2OqNvi">
                  <ref role="3TsBF5" to="5bij:5wKr$U_ohNE" resolve="filePath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HK" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="77xx_JOfZbN" role="8Wnug">
            <node concept="3cpWsn" id="77xx_JOfZbO" role="3cpWs9">
              <property role="TrG5h" value="f" />
              <node concept="3uibUv" id="77xx_JOfZbP" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
              <node concept="2ShNRf" id="77xx_JOfZsj" role="33vP2m">
                <node concept="1pGfFk" id="77xx_JOfZU$" role="2ShVmc">
                  <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                  <node concept="37vLTw" id="4F6jbA$lCwT" role="37wK5m">
                    <ref role="3cqZAo" node="4F6jbA$lC9C" resolve="fileName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HL" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbJ" id="77xx_JOg0Dh" role="8Wnug">
            <node concept="3clFbS" id="77xx_JOg0Dj" role="3clFbx">
              <node concept="3clFbF" id="4F6jbA$lDSV" role="3cqZAp">
                <node concept="2OqwBi" id="4F6jbA$lDSP" role="3clFbG">
                  <node concept="2WthIp" id="4F6jbA$lDSS" role="2Oq$k0" />
                  <node concept="2XshWL" id="4F6jbA$lDSU" role="2OqNvi">
                    <ref role="2WH_rO" node="4F6jbA$ln8h" resolve="showAlert" />
                    <node concept="3cpWs3" id="4F6jbA$lEdW" role="2XxRq1">
                      <node concept="Xl_RD" id="4F6jbA$lEfs" role="3uHU7w">
                        <property role="Xl_RC" value="' must be a grammar file." />
                      </node>
                      <node concept="3cpWs3" id="4F6jbA$lE5G" role="3uHU7B">
                        <node concept="Xl_RD" id="4F6jbA$lDV4" role="3uHU7B">
                          <property role="Xl_RC" value="File '" />
                        </node>
                        <node concept="37vLTw" id="4F6jbA$lE6H" role="3uHU7w">
                          <ref role="3cqZAo" node="4F6jbA$lC9C" resolve="fileName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="77xx_JOg43V" role="3cqZAp" />
            </node>
            <node concept="22lmx$" id="4F6jbA$lFWQ" role="3clFbw">
              <node concept="22lmx$" id="77xx_JOg2Ea" role="3uHU7B">
                <node concept="3fqX7Q" id="77xx_JOg2n9" role="3uHU7B">
                  <node concept="2OqwBi" id="77xx_JOg2nb" role="3fr31v">
                    <node concept="37vLTw" id="77xx_JOg2nc" role="2Oq$k0">
                      <ref role="3cqZAo" node="77xx_JOfZbO" resolve="f" />
                    </node>
                    <node concept="liA8E" id="77xx_JOg2nd" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~File.exists():boolean" resolve="exists" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="77xx_JOg2RV" role="3uHU7w">
                  <node concept="37vLTw" id="77xx_JOg2JQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="77xx_JOfZbO" resolve="f" />
                  </node>
                  <node concept="liA8E" id="77xx_JOg41R" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~File.isDirectory():boolean" resolve="isDirectory" />
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="4F6jbA$lG9O" role="3uHU7w">
                <node concept="2OqwBi" id="4F6jbA$lGe5" role="3fr31v">
                  <node concept="37vLTw" id="4F6jbA$lGb5" role="2Oq$k0">
                    <ref role="3cqZAo" node="77xx_JOfZbO" resolve="f" />
                  </node>
                  <node concept="liA8E" id="4F6jbA$lGoj" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~File.canRead():boolean" resolve="canRead" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HM" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbH" id="4F6jbA$lvzW" role="8Wnug" />
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HN" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="34ab3g" id="4F6jbA$lxln" role="8Wnug">
            <property role="35gtTG" value="info" />
            <node concept="3cpWs3" id="4F6jbA$lyZH" role="34bqiv">
              <node concept="Xl_RD" id="4F6jbA$lz0f" role="3uHU7w">
                <property role="Xl_RC" value="..." />
              </node>
              <node concept="3cpWs3" id="4F6jbA$lyQs" role="3uHU7B">
                <node concept="Xl_RD" id="4F6jbA$lxlp" role="3uHU7B">
                  <property role="Xl_RC" value="Importing language " />
                </node>
                <node concept="37vLTw" id="4F6jbA$lySE" role="3uHU7w">
                  <ref role="3cqZAo" node="4F6jbA$lyhF" resolve="languageName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HO" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbH" id="4J1$HSvIE$a" role="8Wnug" />
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HP" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="4J1$HSvIGw5" role="8Wnug">
            <node concept="3cpWsn" id="4J1$HSvIGw6" role="3cpWs9">
              <property role="TrG5h" value="importer" />
              <node concept="3uibUv" id="4J1$HSvIGw7" role="1tU5fm">
                <ref role="3uigEE" to="b500:1OSx5D$GPOR" resolve="ImportProvider" />
              </node>
              <node concept="2ShNRf" id="4J1$HSvIGET" role="33vP2m">
                <node concept="HV5vD" id="4J1$HSvINw5" role="2ShVmc">
                  <ref role="HV5vE" to="b500:1OSx5D$GPOR" resolve="ImportProvider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HQ" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="4J1$HSvINHN" role="8Wnug">
            <node concept="2OqwBi" id="4J1$HSvINSI" role="3clFbG">
              <node concept="37vLTw" id="4J1$HSvINHL" role="2Oq$k0">
                <ref role="3cqZAo" node="4J1$HSvIGw6" resolve="importer" />
              </node>
              <node concept="liA8E" id="4J1$HSvINVg" role="2OqNvi">
                <ref role="37wK5l" to="b500:4J1$HSvHxpa" resolve="importGrammar" />
                <node concept="37vLTw" id="4J1$HSvINY2" role="37wK5m">
                  <ref role="3cqZAo" node="4F6jbA$lC9C" resolve="fileName" />
                </node>
                <node concept="37vLTw" id="4J1$HSvIOuj" role="37wK5m">
                  <ref role="3cqZAo" node="4F6jbA$lu1z" resolve="language" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HR" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbH" id="4J1$HSvIFcD" role="8Wnug" />
        </node>
        <node concept="1X3_iC" id="mX_CB8G0HS" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="4F6jbA$lEGa" role="8Wnug">
            <node concept="2OqwBi" id="4F6jbA$lESK" role="3clFbG">
              <node concept="2WthIp" id="4F6jbA$lEG8" role="2Oq$k0" />
              <node concept="2XshWL" id="4F6jbA$lF1P" role="2OqNvi">
                <ref role="2WH_rO" node="4F6jbA$ln8h" resolve="showAlert" />
                <node concept="Xl_RD" id="4F6jbA$lF2l" role="2XxRq1">
                  <property role="Xl_RC" value="Language imported." />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="3_5Fm_0M6RU" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3_5Fm_0M6RV" role="1oa70y" />
    </node>
    <node concept="2S4$dB" id="4F6jbA$l4Ok" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="4F6jbA$l4Ol" role="1B3o_S" />
      <node concept="1oajcY" id="4F6jbA$l4Om" role="1oa70y" />
      <node concept="3Tqbb2" id="4F6jbA$l11s" role="1tU5fm" />
    </node>
    <node concept="2ScWuX" id="4F6jbA$kT5V" role="tmbBb">
      <node concept="3clFbS" id="4F6jbA$kT5W" role="2VODD2">
        <node concept="3cpWs6" id="mX_CB8FUPi" role="3cqZAp">
          <node concept="3clFbT" id="mX_CB8FUQ8" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="3SKdUt" id="4F6jbA$lmjr" role="3cqZAp">
          <node concept="3SKdUq" id="4F6jbA$lmjt" role="3SKWNk">
            <property role="3SKdUp" value="We are in a GrammarImporter concept" />
          </node>
        </node>
        <node concept="3SKdUt" id="4F6jbA$lmuW" role="3cqZAp">
          <node concept="3SKdUq" id="4F6jbA$lmuY" role="3SKWNk">
            <property role="3SKdUp" value="and all values are filled in" />
          </node>
        </node>
        <node concept="1X3_iC" id="mX_CB8G0T7" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="4F6jbA$lhAZ" role="8Wnug">
            <node concept="3cpWsn" id="4F6jbA$lhB0" role="3cpWs9">
              <property role="TrG5h" value="importConcept" />
              <node concept="3Tqbb2" id="4F6jbA$limC" role="1tU5fm">
                <ref role="ehGHo" to="5bij:5wKr$U_ohND" resolve="GrammarImporter" />
              </node>
              <node concept="2OqwBi" id="4F6jbA$lhXQ" role="33vP2m">
                <node concept="2OqwBi" id="4F6jbA$lhM2" role="2Oq$k0">
                  <node concept="2WthIp" id="4F6jbA$lhJo" role="2Oq$k0" />
                  <node concept="3gHZIF" id="4F6jbA$lhRz" role="2OqNvi">
                    <ref role="2WH_rO" node="4F6jbA$l4Ok" resolve="node" />
                  </node>
                </node>
                <node concept="2Xjw5R" id="4F6jbA$li3s" role="2OqNvi">
                  <node concept="1xMEDy" id="4F6jbA$li3u" role="1xVPHs">
                    <node concept="chp4Y" id="7u4wmVSPyKD" role="ri$Ld">
                      <ref role="cht4Q" to="5bij:5wKr$U_ohND" resolve="GrammarImporter" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="4F6jbA$li8Y" role="1xVPHs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="mX_CB8G0VU" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs6" id="4F6jbA$lenY" role="8Wnug">
            <node concept="1Wc70l" id="4F6jbA$lkUA" role="3cqZAk">
              <node concept="2OqwBi" id="4F6jbA$llm9" role="3uHU7w">
                <node concept="2OqwBi" id="4F6jbA$ll2k" role="2Oq$k0">
                  <node concept="37vLTw" id="4F6jbA$lkY3" role="2Oq$k0">
                    <ref role="3cqZAo" node="4F6jbA$lhB0" resolve="importConcept" />
                  </node>
                  <node concept="3TrcHB" id="7u4wmVSPz4C" role="2OqNvi">
                    <ref role="3TsBF5" to="5bij:5wKr$U_ohNE" resolve="filePath" />
                  </node>
                </node>
                <node concept="17RvpY" id="4F6jbA$ll_5" role="2OqNvi" />
              </node>
              <node concept="1Wc70l" id="4F6jbA$lkek" role="3uHU7B">
                <node concept="2OqwBi" id="4F6jbA$lk0m" role="3uHU7B">
                  <node concept="37vLTw" id="4F6jbA$ljWB" role="2Oq$k0">
                    <ref role="3cqZAo" node="4F6jbA$lhB0" resolve="importConcept" />
                  </node>
                  <node concept="3x8VRR" id="4F6jbA$lka_" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="4F6jbA$lkBY" role="3uHU7w">
                  <node concept="2OqwBi" id="4F6jbA$lkkN" role="2Oq$k0">
                    <node concept="37vLTw" id="4F6jbA$lkgR" role="2Oq$k0">
                      <ref role="3cqZAo" node="4F6jbA$lhB0" resolve="importConcept" />
                    </node>
                    <node concept="3TrcHB" id="7u4wmVSPyUK" role="2OqNvi">
                      <ref role="3TsBF5" to="5bij:5wKr$U_ohNG" resolve="targetLanguage" />
                    </node>
                  </node>
                  <node concept="17RvpY" id="4F6jbA$llNC" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="7u4wmVSPzXl">
    <property role="TrG5h" value="ImportActionGroup" />
    <node concept="ftmFs" id="7u4wmVSPzXn" role="ftER_">
      <node concept="tCFHf" id="7u4wmVSPzXr" role="ftvYc">
        <ref role="tCJdB" node="3_5Fm_0LVav" resolve="ImportAction" />
      </node>
    </node>
    <node concept="tT9cl" id="7u4wmVSP$1D" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4LYI" resolve="Tools" />
      <ref role="2f8Tey" to="tprs:hHYwqIT" resolve="customTools" />
    </node>
  </node>
</model>

