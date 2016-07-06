<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8f990077-2eeb-4671-b5d0-013775b6413e(premun.mps.ingrid.plugin.import_action.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="0" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="1" />
  </languages>
  <imports>
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="zkjw" ref="8f833572-184a-4705-be72-ff2712986984/java:premun.mps.ingrid.importer(premun.mps.ingrid.plugin.import_action/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="dsk9" ref="r:8bdc9cf5-28de-48ab-8b85-36b2d96bc635(jetbrains.mps.ide.newModuleDialogs)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1207149998849" name="isAlwaysVisible" index="fJN8o" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="1213273179528" name="description" index="1WHSii" />
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
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
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
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="2DaZZR" id="7u4wmVSPxcW" />
  <node concept="sE7Ow" id="3_5Fm_0LVav">
    <property role="TrG5h" value="ImportAction" />
    <property role="2uzpH1" value="Import grammar (Debug)" />
    <property role="1WHSii" value="Imports selected grammar into an MPS language" />
    <property role="fJN8o" value="true" />
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
    <node concept="2XrIbr" id="7FauAAmwr7b" role="32lrUH">
      <property role="TrG5h" value="getLanguage" />
      <node concept="3clFbS" id="7FauAAmwr7c" role="3clF47">
        <node concept="3cpWs8" id="Pei6ieWgph" role="3cqZAp">
          <node concept="3cpWsn" id="Pei6ieWgpk" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="A3Dl8" id="Pei6ieWgpe" role="1tU5fm">
              <node concept="3qUE_q" id="Pei6ieWgCb" role="A3Ik2">
                <node concept="3uibUv" id="Pei6ieWgIv" role="3qUE_r">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="Pei6ieWh4c" role="33vP2m">
              <node concept="2OqwBi" id="Pei6ieWgMC" role="2Oq$k0">
                <node concept="2WthIp" id="Pei6ieWgK_" role="2Oq$k0" />
                <node concept="1DTwFV" id="Pei6ieWgWD" role="2OqNvi">
                  <ref role="2WH_rO" node="3_5Fm_0M6RU" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="Pei6ieWhjQ" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModules():java.lang.Iterable" resolve="getModules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7FauAAmvLEM" role="3cqZAp">
          <node concept="2GrKxI" id="7FauAAmvLEO" role="2Gsz3X">
            <property role="TrG5h" value="module" />
          </node>
          <node concept="3clFbS" id="7FauAAmvLEQ" role="2LFqv$">
            <node concept="3clFbJ" id="7FauAAmvN0N" role="3cqZAp">
              <node concept="3clFbS" id="7FauAAmvN0O" role="3clFbx">
                <node concept="3cpWs6" id="Pei6ieWdCn" role="3cqZAp">
                  <node concept="2GrUjf" id="Pei6ieWdPY" role="3cqZAk">
                    <ref role="2Gs0qQ" node="7FauAAmvLEO" resolve="module" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7FauAAmvNCl" role="3clFbw">
                <node concept="Xl_RD" id="7FauAAmwrK1" role="2Oq$k0">
                  <property role="Xl_RC" value="imported.language" />
                </node>
                <node concept="liA8E" id="7FauAAmvNVB" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="7FauAAmvN2l" role="37wK5m">
                    <node concept="2GrUjf" id="7FauAAmvN1u" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7FauAAmvLEO" resolve="module" />
                    </node>
                    <node concept="liA8E" id="7FauAAmvNbF" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleName():java.lang.String" resolve="getModuleName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="Pei6ieWi26" role="2GsD0m">
            <node concept="37vLTw" id="Pei6ieWhRN" role="2Oq$k0">
              <ref role="3cqZAo" node="Pei6ieWgpk" resolve="modules" />
            </node>
            <node concept="UnYns" id="Pei6ieWiin" role="2OqNvi">
              <node concept="3uibUv" id="Pei6ieWiJq" role="UnYnz">
                <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7FauAAmwvTv" role="3cqZAp" />
        <node concept="3cpWs6" id="7FauAAmww4V" role="3cqZAp">
          <node concept="10Nm6u" id="7FauAAmww61" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="7FauAAmwwYI" role="3clF45">
        <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
      </node>
    </node>
    <node concept="tnohg" id="3_5Fm_0LVaw" role="tncku">
      <node concept="3clFbS" id="3_5Fm_0LVax" role="2VODD2">
        <node concept="3cpWs8" id="33RGotrJ4zR" role="3cqZAp">
          <node concept="3cpWsn" id="33RGotrJ4zS" role="3cpWs9">
            <property role="TrG5h" value="language" />
            <node concept="3uibUv" id="33RGotrJ4zT" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
            </node>
            <node concept="2OqwBi" id="33RGotrJ4D9" role="33vP2m">
              <node concept="2WthIp" id="33RGotrJ4Bu" role="2Oq$k0" />
              <node concept="2XshWL" id="33RGotrJ4Mi" role="2OqNvi">
                <ref role="2WH_rO" node="7FauAAmwr7b" resolve="getLanguage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="33RGotrJ4mI" role="3cqZAp" />
        <node concept="3cpWs8" id="4X6IwqdNpSM" role="3cqZAp">
          <node concept="3cpWsn" id="4X6IwqdNpSN" role="3cpWs9">
            <property role="TrG5h" value="structureModel" />
            <node concept="3uibUv" id="mPzN$arLNs" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="4X6IwqdNpSP" role="33vP2m">
              <node concept="Rm8GO" id="4X6IwqdNpSQ" role="2Oq$k0">
                <ref role="1Px2BO" to="w1kc:~LanguageAspect" resolve="LanguageAspect" />
                <ref role="Rm8GQ" to="w1kc:~LanguageAspect.STRUCTURE" resolve="STRUCTURE" />
              </node>
              <node concept="liA8E" id="4X6IwqdNpSR" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~LanguageAspect.get(jetbrains.mps.smodel.Language):org.jetbrains.mps.openapi.model.SModel" resolve="get" />
                <node concept="37vLTw" id="33RGotrJ5U$" role="37wK5m">
                  <ref role="3cqZAo" node="33RGotrJ4zS" resolve="language" />
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
                <node concept="37vLTw" id="33RGotrJ5VB" role="37wK5m">
                  <ref role="3cqZAo" node="33RGotrJ4zS" resolve="language" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6B2Ha6FnxDT" role="3cqZAp">
          <node concept="3cpWsn" id="6B2Ha6FnxDU" role="3cpWs9">
            <property role="TrG5h" value="textGenModel" />
            <node concept="3uibUv" id="6B2Ha6Fn$Nq" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="7FauAAmwu$b" role="33vP2m">
              <node concept="Rm8GO" id="7FauAAmwu$c" role="2Oq$k0">
                <ref role="1Px2BO" to="w1kc:~LanguageAspect" resolve="LanguageAspect" />
                <ref role="Rm8GQ" to="w1kc:~LanguageAspect.TEXT_GEN" resolve="TEXT_GEN" />
              </node>
              <node concept="liA8E" id="7FauAAmwu$d" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~LanguageAspect.get(jetbrains.mps.smodel.Language):org.jetbrains.mps.openapi.model.SModel" resolve="get" />
                <node concept="37vLTw" id="33RGotrJ5WU" role="37wK5m">
                  <ref role="3cqZAo" node="33RGotrJ4zS" resolve="language" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7FauAAmwBts" role="3cqZAp" />
        <node concept="3clFbJ" id="7FauAAmwBtt" role="3cqZAp">
          <node concept="3clFbS" id="7FauAAmwBtu" role="3clFbx">
            <node concept="3clFbF" id="7FauAAmwBtv" role="3cqZAp">
              <node concept="37vLTI" id="7FauAAmwBtw" role="3clFbG">
                <node concept="2OqwBi" id="7FauAAmwBtx" role="37vLTx">
                  <node concept="Rm8GO" id="7FauAAmwBty" role="2Oq$k0">
                    <ref role="Rm8GQ" to="w1kc:~LanguageAspect.TEXT_GEN" resolve="TEXT_GEN" />
                    <ref role="1Px2BO" to="w1kc:~LanguageAspect" resolve="LanguageAspect" />
                  </node>
                  <node concept="liA8E" id="7FauAAmwBtz" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~LanguageAspect.createNew(jetbrains.mps.smodel.Language):org.jetbrains.mps.openapi.model.SModel" resolve="createNew" />
                    <node concept="37vLTw" id="33RGotrJ5YO" role="37wK5m">
                      <ref role="3cqZAo" node="33RGotrJ4zS" resolve="language" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7FauAAmwBt_" role="37vLTJ">
                  <ref role="3cqZAo" node="6B2Ha6FnxDU" resolve="textGenModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7FauAAmwBtA" role="3clFbw">
            <node concept="10Nm6u" id="7FauAAmwBtB" role="3uHU7w" />
            <node concept="37vLTw" id="7FauAAmwBtC" role="3uHU7B">
              <ref role="3cqZAo" node="6B2Ha6FnxDU" resolve="textGenModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="33RGotrJ5MY" role="3cqZAp" />
        <node concept="3cpWs8" id="33RGotrJ54Y" role="3cqZAp">
          <node concept="3cpWsn" id="33RGotrJ54Z" role="3cpWs9">
            <property role="TrG5h" value="grammarFile" />
            <node concept="17QB3L" id="33RGotrJ5bZ" role="1tU5fm" />
            <node concept="Xl_RD" id="33RGotrJ5fQ" role="33vP2m">
              <property role="Xl_RC" value="/home/premun/Diplomka/ingrid/grammars/ECMAScript.g4" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7zyRwtY3iTF" role="3cqZAp" />
        <node concept="3cpWs8" id="2CENt80j8HM" role="3cqZAp">
          <node concept="3cpWsn" id="2CENt80j8HN" role="3cpWs9">
            <property role="TrG5h" value="grammarImporter" />
            <node concept="3uibUv" id="3qa8fBrMIgM" role="1tU5fm">
              <ref role="3uigEE" to="zkjw:~GrammarImporter" resolve="GrammarImporter" />
            </node>
            <node concept="2ShNRf" id="2CENt80j8Iu" role="33vP2m">
              <node concept="1pGfFk" id="2CENt80jbpK" role="2ShVmc">
                <ref role="37wK5l" to="zkjw:~GrammarImporter.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.model.SModel)" resolve="GrammarImporter" />
                <node concept="37vLTw" id="3qa8fBrMQjJ" role="37wK5m">
                  <ref role="3cqZAo" node="4X6IwqdNpSN" resolve="structureModel" />
                </node>
                <node concept="37vLTw" id="4X6IwqdNsR6" role="37wK5m">
                  <ref role="3cqZAo" node="5Jh2F9ezXWl" resolve="editorModel" />
                </node>
                <node concept="37vLTw" id="6B2Ha6FnBPu" role="37wK5m">
                  <ref role="3cqZAo" node="6B2Ha6FnxDU" resolve="textGenModel" />
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
              <ref role="37wK5l" to="zkjw:~GrammarImporter.importGrammars(java.io.File[]):void" resolve="importGrammars" />
              <node concept="2ShNRf" id="33RGotrJ62m" role="37wK5m">
                <node concept="3g6Rrh" id="33RGotrJ6sG" role="2ShVmc">
                  <node concept="3uibUv" id="33RGotrJ6Ds" role="3g7fb8">
                    <ref role="3uigEE" to="guwi:~File" resolve="File" />
                  </node>
                  <node concept="2ShNRf" id="33RGotrJ6Mo" role="3g7hyw">
                    <node concept="1pGfFk" id="33RGotrJ7dl" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                      <node concept="37vLTw" id="33RGotrJ7ev" role="37wK5m">
                        <ref role="3cqZAo" node="33RGotrJ54Z" resolve="grammarFile" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="BDjyRej8D4" role="3cqZAp" />
        <node concept="3clFbF" id="nYv$LOtP9v" role="3cqZAp">
          <node concept="2OqwBi" id="nYv$LOtP9p" role="3clFbG">
            <node concept="2WthIp" id="nYv$LOtP9s" role="2Oq$k0" />
            <node concept="2XshWL" id="nYv$LOtP9u" role="2OqNvi">
              <ref role="2WH_rO" node="4F6jbA$ln8h" resolve="showAlert" />
              <node concept="Xl_RD" id="nYv$LOtPgO" role="2XxRq1">
                <property role="Xl_RC" value="Language imported" />
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
    <node concept="1DS2jV" id="nYv$LOtyPM" role="1NuT2Z">
      <property role="TrG5h" value="frame" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.FRAME" resolve="FRAME" />
      <node concept="1oajcY" id="nYv$LOtyPN" role="1oa70y" />
    </node>
  </node>
  <node concept="tC5Ba" id="7u4wmVSPzXl">
    <property role="TrG5h" value="ImportActionGroup" />
    <node concept="ftmFs" id="7u4wmVSPzXn" role="ftER_">
      <node concept="tCFHf" id="7u4wmVSPzXr" role="ftvYc">
        <ref role="tCJdB" node="3_5Fm_0LVav" resolve="ImportAction" />
      </node>
      <node concept="tCFHf" id="5_E18Hdo1h9" role="ftvYc">
        <ref role="tCJdB" node="5_E18HdnRW0" resolve="ImportGrammarAction" />
      </node>
    </node>
    <node concept="tT9cl" id="7u4wmVSP$1D" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4LYI" resolve="Tools" />
      <ref role="2f8Tey" to="tprs:hHYwqIT" resolve="customTools" />
    </node>
  </node>
  <node concept="sE7Ow" id="5_E18HdnRW0">
    <property role="TrG5h" value="ImportGrammarAction" />
    <property role="2uzpH1" value="Import ANTLRv4 grammar" />
    <property role="1WHSii" value="Imports selected grammar into an MPS language" />
    <property role="fJN8o" value="true" />
    <node concept="2XrIbr" id="5_E18HdnRW1" role="32lrUH">
      <property role="TrG5h" value="showAlert" />
      <node concept="3clFbS" id="5_E18HdnRW2" role="3clF47">
        <node concept="3clFbF" id="5_E18HdnRW3" role="3cqZAp">
          <node concept="2YIFZM" id="5_E18HdnRW4" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JOptionPane.showMessageDialog(java.awt.Component,java.lang.Object):void" resolve="showMessageDialog" />
            <ref role="1Pybhc" to="dxuu:~JOptionPane" resolve="JOptionPane" />
            <node concept="2OqwBi" id="16XQ_36ALT8" role="37wK5m">
              <node concept="2WthIp" id="16XQ_36ALTb" role="2Oq$k0" />
              <node concept="1DTwFV" id="16XQ_36ALTd" role="2OqNvi">
                <ref role="2WH_rO" node="5_E18HdnRZi" resolve="frame" />
              </node>
            </node>
            <node concept="37vLTw" id="5_E18HdnRW6" role="37wK5m">
              <ref role="3cqZAo" node="5_E18HdnRW8" resolve="message" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5_E18HdnRW7" role="3clF45" />
      <node concept="37vLTG" id="5_E18HdnRW8" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="17QB3L" id="5_E18HdnRW9" role="1tU5fm" />
      </node>
    </node>
    <node concept="2XrIbr" id="5_E18HdnRWN" role="32lrUH">
      <property role="TrG5h" value="getLanguage" />
      <node concept="3clFbS" id="5_E18HdnRWO" role="3clF47">
        <node concept="3SKdUt" id="33RGotrJslC" role="3cqZAp">
          <node concept="3SKdUq" id="33RGotrJslE" role="3SKWNk">
            <property role="3SKdUp" value="Test for language existence" />
          </node>
        </node>
        <node concept="3clFbJ" id="16XQ_36AOvR" role="3cqZAp">
          <node concept="3clFbS" id="16XQ_36AOvT" role="3clFbx">
            <node concept="3cpWs8" id="33RGotrJqFD" role="3cqZAp">
              <node concept="3cpWsn" id="33RGotrJqFE" role="3cpWs9">
                <property role="TrG5h" value="modules" />
                <node concept="A3Dl8" id="33RGotrJqFF" role="1tU5fm">
                  <node concept="3qUE_q" id="33RGotrJqFG" role="A3Ik2">
                    <node concept="3uibUv" id="33RGotrJqFH" role="3qUE_r">
                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="33RGotrJqFI" role="33vP2m">
                  <node concept="2OqwBi" id="33RGotrJqFJ" role="2Oq$k0">
                    <node concept="2WthIp" id="33RGotrJqFK" role="2Oq$k0" />
                    <node concept="1DTwFV" id="33RGotrJqFL" role="2OqNvi">
                      <ref role="2WH_rO" node="5_E18HdnRZc" resolve="mpsProject" />
                    </node>
                  </node>
                  <node concept="liA8E" id="33RGotrJqFM" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getModules():java.lang.Iterable" resolve="getModules" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="33RGotrJqFN" role="3cqZAp">
              <node concept="2GrKxI" id="33RGotrJqFO" role="2Gsz3X">
                <property role="TrG5h" value="module" />
              </node>
              <node concept="3clFbS" id="33RGotrJqFP" role="2LFqv$">
                <node concept="3clFbJ" id="33RGotrJqFQ" role="3cqZAp">
                  <node concept="3clFbS" id="33RGotrJqFR" role="3clFbx">
                    <node concept="3cpWs6" id="33RGotrJqFS" role="3cqZAp">
                      <node concept="2GrUjf" id="33RGotrJqFT" role="3cqZAk">
                        <ref role="2Gs0qQ" node="33RGotrJqFO" resolve="module" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="33RGotrJqFU" role="3clFbw">
                    <node concept="liA8E" id="33RGotrJqFW" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                      <node concept="37vLTw" id="33RGotrJrKF" role="37wK5m">
                        <ref role="3cqZAo" node="33RGotrJ7l$" resolve="name" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="33RGotrJqFX" role="2Oq$k0">
                      <node concept="2GrUjf" id="33RGotrJqFY" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="33RGotrJqFO" resolve="module" />
                      </node>
                      <node concept="liA8E" id="33RGotrJqFZ" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleName():java.lang.String" resolve="getModuleName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="33RGotrJqG0" role="2GsD0m">
                <node concept="37vLTw" id="33RGotrJqG1" role="2Oq$k0">
                  <ref role="3cqZAo" node="33RGotrJqFE" resolve="modules" />
                </node>
                <node concept="UnYns" id="33RGotrJqG2" role="2OqNvi">
                  <node concept="3uibUv" id="33RGotrJqG3" role="UnYnz">
                    <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="16XQ_36AP4s" role="3clFbw">
            <node concept="10Nm6u" id="16XQ_36APkb" role="3uHU7w" />
            <node concept="37vLTw" id="16XQ_36AOM5" role="3uHU7B">
              <ref role="3cqZAo" node="33RGotrJ7l$" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="33RGotrJqhh" role="3cqZAp" />
        <node concept="3SKdUt" id="33RGotrJsTB" role="3cqZAp">
          <node concept="3SKdUq" id="33RGotrJsTD" role="3SKWNk">
            <property role="3SKdUp" value="If not found, create a new language" />
          </node>
        </node>
        <node concept="3cpWs8" id="5_E18HdnRWQ" role="3cqZAp">
          <node concept="3cpWsn" id="5_E18HdnRWR" role="3cpWs9">
            <property role="TrG5h" value="dialog" />
            <node concept="3uibUv" id="5_E18HdnRWS" role="1tU5fm">
              <ref role="3uigEE" to="dsk9:7iZR6YlW8ti" resolve="NewLanguageDialog" />
            </node>
            <node concept="2ShNRf" id="5_E18HdnRWT" role="33vP2m">
              <node concept="1pGfFk" id="5_E18HdnRWU" role="2ShVmc">
                <ref role="37wK5l" to="dsk9:7iZR6YlWhb5" resolve="NewLanguageDialog" />
                <node concept="2OqwBi" id="5_E18HdnRWV" role="37wK5m">
                  <node concept="2WthIp" id="5_E18HdnRWW" role="2Oq$k0" />
                  <node concept="1DTwFV" id="5_E18HdnRWX" role="2OqNvi">
                    <ref role="2WH_rO" node="5_E18HdnRZc" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="37vLTw" id="16XQ_36AZlz" role="37wK5m">
                  <ref role="3cqZAo" node="33RGotrJ7l$" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="16XQ_36BjSy" role="3cqZAp">
          <node concept="2OqwBi" id="16XQ_36Bkbh" role="3clFbG">
            <node concept="37vLTw" id="16XQ_36BjSw" role="2Oq$k0">
              <ref role="3cqZAo" node="5_E18HdnRWR" resolve="dialog" />
            </node>
            <node concept="liA8E" id="16XQ_36Bkvz" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~DialogWrapper.setModal(boolean):void" resolve="setModal" />
              <node concept="3clFbT" id="16XQ_36Bkw5" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="16XQ_36BkSq" role="3cqZAp">
          <node concept="2OqwBi" id="16XQ_36BlbC" role="3clFbG">
            <node concept="37vLTw" id="16XQ_36BkSo" role="2Oq$k0">
              <ref role="3cqZAo" node="5_E18HdnRWR" resolve="dialog" />
            </node>
            <node concept="liA8E" id="16XQ_36Blxr" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~DialogWrapper.show():void" resolve="show" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5_E18HdnRX5" role="3cqZAp" />
        <node concept="3cpWs8" id="5_E18HdnRX7" role="3cqZAp">
          <node concept="3cpWsn" id="5_E18HdnRX8" role="3cpWs9">
            <property role="TrG5h" value="language" />
            <node concept="3uibUv" id="5_E18HdnRX9" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
            </node>
            <node concept="2OqwBi" id="5_E18HdnRXa" role="33vP2m">
              <node concept="37vLTw" id="5_E18HdnRXb" role="2Oq$k0">
                <ref role="3cqZAo" node="5_E18HdnRWR" resolve="dialog" />
              </node>
              <node concept="liA8E" id="5_E18HdnRXc" role="2OqNvi">
                <ref role="37wK5l" to="dsk9:3cbaM0Treuk" resolve="getLangauge" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="16XQ_36BlxO" role="3cqZAp" />
        <node concept="3clFbJ" id="16XQ_36BmcM" role="3cqZAp">
          <node concept="3clFbS" id="16XQ_36BmcO" role="3clFbx">
            <node concept="3cpWs6" id="16XQ_36Bo78" role="3cqZAp">
              <node concept="10Nm6u" id="16XQ_36Bo7L" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="16XQ_36Bnt$" role="3clFbw">
            <node concept="10Nm6u" id="16XQ_36BnJ1" role="3uHU7w" />
            <node concept="37vLTw" id="16XQ_36Bn9S" role="3uHU7B">
              <ref role="3cqZAo" node="5_E18HdnRX8" resolve="language" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="16XQ_36BgkR" role="3cqZAp" />
        <node concept="3clFbF" id="5_E18HdnRXe" role="3cqZAp">
          <node concept="2OqwBi" id="5_E18HdnRXf" role="3clFbG">
            <node concept="2OqwBi" id="5_E18HdnRXg" role="2Oq$k0">
              <node concept="2WthIp" id="5_E18HdnRXh" role="2Oq$k0" />
              <node concept="1DTwFV" id="5_E18HdnRXi" role="2OqNvi">
                <ref role="2WH_rO" node="5_E18HdnRZc" resolve="mpsProject" />
              </node>
            </node>
            <node concept="liA8E" id="5_E18HdnRXj" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~ProjectBase.addModule(org.jetbrains.mps.openapi.module.SModule):void" resolve="addModule" />
              <node concept="37vLTw" id="5_E18HdnRXk" role="37wK5m">
                <ref role="3cqZAo" node="5_E18HdnRX8" resolve="language" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5_E18HdnRXm" role="3cqZAp" />
        <node concept="3cpWs6" id="5_E18HdnRXo" role="3cqZAp">
          <node concept="37vLTw" id="5_E18HdnRXp" role="3cqZAk">
            <ref role="3cqZAo" node="5_E18HdnRX8" resolve="language" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5_E18HdnRXT" role="3clF45">
        <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
      </node>
      <node concept="37vLTG" id="33RGotrJ7l$" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="33RGotrJ7lz" role="1tU5fm" />
      </node>
    </node>
    <node concept="tnohg" id="5_E18HdnRXU" role="tncku">
      <node concept="3clFbS" id="5_E18HdnRXV" role="2VODD2">
        <node concept="3SKdUt" id="33RGotrJncS" role="3cqZAp">
          <node concept="3SKdUq" id="33RGotrJncU" role="3SKWNk">
            <property role="3SKdUp" value="Get list of languages inside the project" />
          </node>
        </node>
        <node concept="3cpWs8" id="33RGotrJaBU" role="3cqZAp">
          <node concept="3cpWsn" id="33RGotrJaBV" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="A3Dl8" id="33RGotrJaBW" role="1tU5fm">
              <node concept="3qUE_q" id="33RGotrJaBX" role="A3Ik2">
                <node concept="3uibUv" id="33RGotrJaBY" role="3qUE_r">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="33RGotrJaBZ" role="33vP2m">
              <node concept="2OqwBi" id="33RGotrJaC0" role="2Oq$k0">
                <node concept="2WthIp" id="33RGotrJaC1" role="2Oq$k0" />
                <node concept="1DTwFV" id="33RGotrJaC2" role="2OqNvi">
                  <ref role="2WH_rO" node="5_E18HdnRZc" resolve="mpsProject" />
                </node>
              </node>
              <node concept="liA8E" id="33RGotrJaC3" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModules():java.lang.Iterable" resolve="getModules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="33RGotrJHt5" role="3cqZAp">
          <node concept="3cpWsn" id="33RGotrJHt6" role="3cpWs9">
            <property role="TrG5h" value="languages" />
            <node concept="_YKpA" id="33RGotrJHrT" role="1tU5fm">
              <node concept="17QB3L" id="33RGotrJIwg" role="_ZDj9" />
            </node>
            <node concept="2OqwBi" id="33RGotrJHt7" role="33vP2m">
              <node concept="2OqwBi" id="33RGotrJHt8" role="2Oq$k0">
                <node concept="2OqwBi" id="33RGotrJMwv" role="2Oq$k0">
                  <node concept="37vLTw" id="33RGotrJHt9" role="2Oq$k0">
                    <ref role="3cqZAo" node="33RGotrJaBV" resolve="modules" />
                  </node>
                  <node concept="UnYns" id="33RGotrJMHQ" role="2OqNvi">
                    <node concept="3uibUv" id="33RGotrJMSE" role="UnYnz">
                      <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="33RGotrJHta" role="2OqNvi">
                  <node concept="1bVj0M" id="33RGotrJHtb" role="23t8la">
                    <node concept="3clFbS" id="33RGotrJHtc" role="1bW5cS">
                      <node concept="3clFbF" id="33RGotrJHtd" role="3cqZAp">
                        <node concept="2OqwBi" id="33RGotrJHte" role="3clFbG">
                          <node concept="37vLTw" id="33RGotrJHtf" role="2Oq$k0">
                            <ref role="3cqZAo" node="33RGotrJHth" resolve="it" />
                          </node>
                          <node concept="liA8E" id="33RGotrJHtg" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleName():java.lang.String" resolve="getModuleName" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="33RGotrJHth" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="33RGotrJHti" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="33RGotrJHtj" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="33RGotrJns8" role="3cqZAp" />
        <node concept="3SKdUt" id="33RGotrJnUG" role="3cqZAp">
          <node concept="3SKdUq" id="33RGotrJnUI" role="3SKWNk">
            <property role="3SKdUp" value="Show import form" />
          </node>
        </node>
        <node concept="3cpWs8" id="33RGotrJ8Bc" role="3cqZAp">
          <node concept="3cpWsn" id="33RGotrJ8Bd" role="3cpWs9">
            <property role="TrG5h" value="form" />
            <node concept="3uibUv" id="33RGotrJ8Be" role="1tU5fm">
              <ref role="3uigEE" to="zkjw:~ImportForm" resolve="ImportForm" />
            </node>
            <node concept="2ShNRf" id="33RGotrJ8FN" role="33vP2m">
              <node concept="1pGfFk" id="33RGotrJ967" role="2ShVmc">
                <ref role="37wK5l" to="zkjw:~ImportForm.&lt;init&gt;(java.util.List)" resolve="ImportForm" />
                <node concept="37vLTw" id="33RGotrJOjb" role="37wK5m">
                  <ref role="3cqZAo" node="33RGotrJHt6" resolve="languages" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="33RGotrJgyF" role="3cqZAp">
          <node concept="3clFbS" id="33RGotrJgyH" role="3clFbx">
            <node concept="3cpWs6" id="33RGotrJiD_" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="33RGotrJi_A" role="3clFbw">
            <node concept="2OqwBi" id="33RGotrJi_C" role="3fr31v">
              <node concept="37vLTw" id="33RGotrJi_D" role="2Oq$k0">
                <ref role="3cqZAo" node="33RGotrJ8Bd" resolve="form" />
              </node>
              <node concept="liA8E" id="33RGotrJi_E" role="2OqNvi">
                <ref role="37wK5l" to="zkjw:~ImportForm.openAndGet():boolean" resolve="openAndGet" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="33RGotrJjPK" role="3cqZAp" />
        <node concept="3SKdUt" id="33RGotrJorR" role="3cqZAp">
          <node concept="3SKdUq" id="33RGotrJorT" role="3SKWNk">
            <property role="3SKdUp" value="Either create new language or " />
          </node>
        </node>
        <node concept="3cpWs8" id="5_E18HdnRY9" role="3cqZAp">
          <node concept="3cpWsn" id="5_E18HdnRYa" role="3cpWs9">
            <property role="TrG5h" value="language" />
            <node concept="3uibUv" id="5_E18HdnRYb" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
            </node>
            <node concept="2OqwBi" id="5_E18HdnRYc" role="33vP2m">
              <node concept="2WthIp" id="5_E18HdnRYd" role="2Oq$k0" />
              <node concept="2XshWL" id="5_E18HdnRYe" role="2OqNvi">
                <ref role="2WH_rO" node="5_E18HdnRWN" resolve="getLanguage" />
                <node concept="2OqwBi" id="33RGotrJkrU" role="2XxRq1">
                  <node concept="37vLTw" id="33RGotrJkkC" role="2Oq$k0">
                    <ref role="3cqZAo" node="33RGotrJ8Bd" resolve="form" />
                  </node>
                  <node concept="liA8E" id="33RGotrJl7v" role="2OqNvi">
                    <ref role="37wK5l" to="zkjw:~ImportForm.getLanguage():java.lang.String" resolve="getLanguage" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5_E18HdnRYf" role="3cqZAp">
          <node concept="3clFbS" id="5_E18HdnRYg" role="3clFbx">
            <node concept="3cpWs6" id="5_E18HdnRYh" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="5_E18HdnRYi" role="3clFbw">
            <node concept="10Nm6u" id="5_E18HdnRYj" role="3uHU7w" />
            <node concept="37vLTw" id="5_E18HdnRYk" role="3uHU7B">
              <ref role="3cqZAo" node="5_E18HdnRYa" resolve="language" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5_E18HdnRYl" role="3cqZAp" />
        <node concept="3cpWs8" id="5_E18HdnRYm" role="3cqZAp">
          <node concept="3cpWsn" id="5_E18HdnRYn" role="3cpWs9">
            <property role="TrG5h" value="structureModel" />
            <node concept="3uibUv" id="mPzN$arSMi" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="5_E18HdnRYp" role="33vP2m">
              <node concept="Rm8GO" id="5_E18HdnRYq" role="2Oq$k0">
                <ref role="Rm8GQ" to="w1kc:~LanguageAspect.STRUCTURE" resolve="STRUCTURE" />
                <ref role="1Px2BO" to="w1kc:~LanguageAspect" resolve="LanguageAspect" />
              </node>
              <node concept="liA8E" id="5_E18HdnRYr" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~LanguageAspect.get(jetbrains.mps.smodel.Language):org.jetbrains.mps.openapi.model.SModel" resolve="get" />
                <node concept="37vLTw" id="5_E18HdnRYs" role="37wK5m">
                  <ref role="3cqZAo" node="5_E18HdnRYa" resolve="language" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5_E18HdnRYt" role="3cqZAp">
          <node concept="3cpWsn" id="5_E18HdnRYu" role="3cpWs9">
            <property role="TrG5h" value="editorModel" />
            <node concept="3uibUv" id="mPzN$arSQK" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="5_E18HdnRYw" role="33vP2m">
              <node concept="Rm8GO" id="5_E18HdnRYx" role="2Oq$k0">
                <ref role="1Px2BO" to="w1kc:~LanguageAspect" resolve="LanguageAspect" />
                <ref role="Rm8GQ" to="w1kc:~LanguageAspect.EDITOR" resolve="EDITOR" />
              </node>
              <node concept="liA8E" id="5_E18HdnRYy" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~LanguageAspect.get(jetbrains.mps.smodel.Language):org.jetbrains.mps.openapi.model.SModel" resolve="get" />
                <node concept="37vLTw" id="5_E18HdnRYz" role="37wK5m">
                  <ref role="3cqZAo" node="5_E18HdnRYa" resolve="language" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5_E18HdnRY$" role="3cqZAp">
          <node concept="3cpWsn" id="5_E18HdnRY_" role="3cpWs9">
            <property role="TrG5h" value="textGenModel" />
            <node concept="3uibUv" id="mPzN$arTjr" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="5_E18HdnRYB" role="33vP2m">
              <node concept="Rm8GO" id="5_E18HdnRYC" role="2Oq$k0">
                <ref role="Rm8GQ" to="w1kc:~LanguageAspect.TEXT_GEN" resolve="TEXT_GEN" />
                <ref role="1Px2BO" to="w1kc:~LanguageAspect" resolve="LanguageAspect" />
              </node>
              <node concept="liA8E" id="5_E18HdnRYD" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~LanguageAspect.get(jetbrains.mps.smodel.Language):org.jetbrains.mps.openapi.model.SModel" resolve="get" />
                <node concept="37vLTw" id="5_E18HdnRYE" role="37wK5m">
                  <ref role="3cqZAo" node="5_E18HdnRYa" resolve="language" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5_E18HdnRYF" role="3cqZAp" />
        <node concept="3clFbJ" id="5_E18HdnRYG" role="3cqZAp">
          <node concept="3clFbS" id="5_E18HdnRYH" role="3clFbx">
            <node concept="3clFbF" id="5_E18HdnRYI" role="3cqZAp">
              <node concept="37vLTI" id="5_E18HdnRYJ" role="3clFbG">
                <node concept="2OqwBi" id="5_E18HdnRYK" role="37vLTx">
                  <node concept="Rm8GO" id="5_E18HdnRYL" role="2Oq$k0">
                    <ref role="Rm8GQ" to="w1kc:~LanguageAspect.TEXT_GEN" resolve="TEXT_GEN" />
                    <ref role="1Px2BO" to="w1kc:~LanguageAspect" resolve="LanguageAspect" />
                  </node>
                  <node concept="liA8E" id="5_E18HdnRYM" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~LanguageAspect.createNew(jetbrains.mps.smodel.Language):org.jetbrains.mps.openapi.model.SModel" resolve="createNew" />
                    <node concept="37vLTw" id="5_E18HdnRYN" role="37wK5m">
                      <ref role="3cqZAo" node="5_E18HdnRYa" resolve="language" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5_E18HdnRYO" role="37vLTJ">
                  <ref role="3cqZAo" node="5_E18HdnRY_" resolve="textGenModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5_E18HdnRYP" role="3clFbw">
            <node concept="10Nm6u" id="5_E18HdnRYQ" role="3uHU7w" />
            <node concept="37vLTw" id="5_E18HdnRYR" role="3uHU7B">
              <ref role="3cqZAo" node="5_E18HdnRY_" resolve="textGenModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5_E18HdnRYS" role="3cqZAp" />
        <node concept="3cpWs8" id="5_E18HdnRYT" role="3cqZAp">
          <node concept="3cpWsn" id="5_E18HdnRYU" role="3cpWs9">
            <property role="TrG5h" value="grammarImporter" />
            <node concept="3uibUv" id="5_E18HdnRYV" role="1tU5fm">
              <ref role="3uigEE" to="zkjw:~GrammarImporter" resolve="GrammarImporter" />
            </node>
            <node concept="2ShNRf" id="5_E18HdnRYW" role="33vP2m">
              <node concept="1pGfFk" id="5_E18HdnRYX" role="2ShVmc">
                <ref role="37wK5l" to="zkjw:~GrammarImporter.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.model.SModel)" resolve="GrammarImporter" />
                <node concept="37vLTw" id="mPzN$arSES" role="37wK5m">
                  <ref role="3cqZAo" node="5_E18HdnRYn" resolve="structureModel" />
                </node>
                <node concept="37vLTw" id="5_E18HdnRYZ" role="37wK5m">
                  <ref role="3cqZAo" node="5_E18HdnRYu" resolve="editorModel" />
                </node>
                <node concept="37vLTw" id="mPzN$arSIi" role="37wK5m">
                  <ref role="3cqZAo" node="5_E18HdnRY_" resolve="textGenModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5_E18HdnRZ1" role="3cqZAp">
          <node concept="2OqwBi" id="5_E18HdnRZ2" role="3clFbG">
            <node concept="37vLTw" id="5_E18HdnRZ3" role="2Oq$k0">
              <ref role="3cqZAo" node="5_E18HdnRYU" resolve="grammarImporter" />
            </node>
            <node concept="liA8E" id="5_E18HdnRZ4" role="2OqNvi">
              <ref role="37wK5l" to="zkjw:~GrammarImporter.importGrammars(java.io.File[]):void" resolve="importGrammars" />
              <node concept="2OqwBi" id="33RGotrJtgc" role="37wK5m">
                <node concept="37vLTw" id="33RGotrJtbu" role="2Oq$k0">
                  <ref role="3cqZAo" node="33RGotrJ8Bd" resolve="form" />
                </node>
                <node concept="liA8E" id="33RGotrJt$T" role="2OqNvi">
                  <ref role="37wK5l" to="zkjw:~ImportForm.getFiles():java.io.File[]" resolve="getFiles" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5_E18HdnRZ6" role="3cqZAp" />
        <node concept="3clFbF" id="5_E18HdnRZ7" role="3cqZAp">
          <node concept="2OqwBi" id="5_E18HdnRZ8" role="3clFbG">
            <node concept="2WthIp" id="5_E18HdnRZ9" role="2Oq$k0" />
            <node concept="2XshWL" id="5_E18HdnRZa" role="2OqNvi">
              <ref role="2WH_rO" node="5_E18HdnRW1" resolve="showAlert" />
              <node concept="Xl_RD" id="5_E18HdnRZb" role="2XxRq1">
                <property role="Xl_RC" value="Language imported" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="5_E18HdnRZc" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="5_E18HdnRZd" role="1oa70y" />
    </node>
    <node concept="2S4$dB" id="5_E18HdnRZe" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="5_E18HdnRZf" role="1B3o_S" />
      <node concept="1oajcY" id="5_E18HdnRZg" role="1oa70y" />
      <node concept="3Tqbb2" id="5_E18HdnRZh" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="5_E18HdnRZi" role="1NuT2Z">
      <property role="TrG5h" value="frame" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.FRAME" resolve="FRAME" />
      <node concept="1oajcY" id="5_E18HdnRZj" role="1oa70y" />
    </node>
  </node>
</model>

