<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:442a7051-5567-45ee-ae5c-822da107b1cd(premun.mps.ingrid.plugin.import_process.utility)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
  </languages>
  <imports>
    <import index="cttk" ref="r:5ff047e0-2953-4750-806a-bdc16824aa89(jetbrains.mps.smodel)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="7hje" ref="r:63fa72b1-408f-44a1-b93f-c39e3d542904(jetbrains.mps.project.structure)" />
    <import index="twe9" ref="r:28e6d713-c3c3-493e-8d97-e9a2c49f28ce(jetbrains.mps.lang.structure.util)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="312cEu" id="5Jh2F9ez5ND">
    <property role="TrG5h" value="NodeHelper" />
    <node concept="2YIFZL" id="5Jh2F9ezaRf" role="jymVt">
      <property role="TrG5h" value="createConcept" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5Jh2F9ezaRg" role="3clF47">
        <node concept="3cpWs8" id="5Jh2F9ezaRh" role="3cqZAp">
          <node concept="3cpWsn" id="5Jh2F9ezaRi" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="5Jh2F9ezaRj" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
            </node>
            <node concept="2ShNRf" id="5Jh2F9ezaRk" role="33vP2m">
              <node concept="3zrR0B" id="5Jh2F9ezaRl" role="2ShVmc">
                <node concept="3Tqbb2" id="5Jh2F9ezaRm" role="3zrR0E">
                  <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Jh2F9ezaRn" role="3cqZAp" />
        <node concept="3clFbF" id="5Jh2F9ezaRo" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9ezaRp" role="3clFbG">
            <node concept="2OqwBi" id="5Jh2F9ezaRq" role="37vLTJ">
              <node concept="37vLTw" id="5Jh2F9ezaRr" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9ezaRi" resolve="node" />
              </node>
              <node concept="3TrcHB" id="5Jh2F9ezaRs" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="5Jh2F9ezaRt" role="37vLTx">
              <ref role="3cqZAo" node="5Jh2F9ezaRR" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Jh2F9ezaRu" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9ezaRv" role="3clFbG">
            <node concept="37vLTw" id="5Jh2F9ezaRw" role="37vLTx">
              <ref role="3cqZAo" node="5Jh2F9ezaRT" resolve="alias" />
            </node>
            <node concept="2OqwBi" id="5Jh2F9ezaRx" role="37vLTJ">
              <node concept="37vLTw" id="5Jh2F9ezaRy" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9ezaRi" resolve="node" />
              </node>
              <node concept="3TrcHB" id="5Jh2F9ezaRz" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:gOOYy9I" resolve="alias" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Jh2F9ezaR$" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9ezaR_" role="3clFbG">
            <node concept="37vLTw" id="5Jh2F9ezaRA" role="37vLTx">
              <ref role="3cqZAo" node="5Jh2F9ezaRV" resolve="virtualPackage" />
            </node>
            <node concept="2OqwBi" id="5Jh2F9ezaRB" role="37vLTJ">
              <node concept="37vLTw" id="5Jh2F9ezaRC" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9ezaRi" resolve="node" />
              </node>
              <node concept="3TrcHB" id="5Jh2F9ezaRD" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Jh2F9ezaRE" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9ezaRF" role="3clFbG">
            <node concept="2YIFZM" id="5Jh2F9ezaRG" role="37vLTx">
              <ref role="37wK5l" to="twe9:1o9qxtfbpgW" resolve="generate" />
              <ref role="1Pybhc" to="twe9:1o9qxtfbpaa" resolve="ConceptIdUtil" />
              <node concept="37vLTw" id="5Jh2F9ezaRH" role="37wK5m">
                <ref role="3cqZAo" node="5Jh2F9ezaRi" resolve="node" />
              </node>
              <node concept="37vLTw" id="5Jh2F9ezaRI" role="37wK5m">
                <ref role="3cqZAo" node="5Jh2F9ezaRZ" resolve="parentModel" />
              </node>
            </node>
            <node concept="2OqwBi" id="5Jh2F9ezaRJ" role="37vLTJ">
              <node concept="37vLTw" id="5Jh2F9ezaRK" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9ezaRi" resolve="node" />
              </node>
              <node concept="3TrcHB" id="5Jh2F9ezaRL" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:1o9qxtf9pgp" resolve="conceptId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Jh2F9ezzdl" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9ezzxb" role="3clFbG">
            <node concept="37vLTw" id="5Jh2F9ezzzl" role="37vLTx">
              <ref role="3cqZAo" node="5Jh2F9ezaRX" resolve="rootable" />
            </node>
            <node concept="2OqwBi" id="5Jh2F9ezzgE" role="37vLTJ">
              <node concept="37vLTw" id="5Jh2F9ezzdj" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9ezaRi" resolve="node" />
              </node>
              <node concept="3TrcHB" id="5Jh2F9ezzvA" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:fX9Ktp8" resolve="rootable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Jh2F9ezaRM" role="3cqZAp" />
        <node concept="3cpWs6" id="5Jh2F9ezaRN" role="3cqZAp">
          <node concept="37vLTw" id="5Jh2F9ezaRO" role="3cqZAk">
            <ref role="3cqZAo" node="5Jh2F9ezaRi" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Jh2F9ezaRP" role="1B3o_S" />
      <node concept="3uibUv" id="5Jh2F9ezaRQ" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="37vLTG" id="5Jh2F9ezaRR" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5Jh2F9ezyFL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5Jh2F9ezaRT" role="3clF46">
        <property role="TrG5h" value="alias" />
        <node concept="17QB3L" id="5Jh2F9ezyGf" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5Jh2F9ezaRV" role="3clF46">
        <property role="TrG5h" value="virtualPackage" />
        <node concept="17QB3L" id="5Jh2F9ezyGH" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5Jh2F9ezaRX" role="3clF46">
        <property role="TrG5h" value="rootable" />
        <node concept="10P_77" id="5Jh2F9ezaRY" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5Jh2F9ezaRZ" role="3clF46">
        <property role="TrG5h" value="parentModel" />
        <node concept="3uibUv" id="5Jh2F9ezaS0" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Jh2F9ezaZb" role="jymVt" />
    <node concept="2YIFZL" id="5Jh2F9ezbc8" role="jymVt">
      <property role="TrG5h" value="createInterface" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5Jh2F9ezbc9" role="3clF47">
        <node concept="3cpWs8" id="5Jh2F9ezbca" role="3cqZAp">
          <node concept="3cpWsn" id="5Jh2F9ezbcb" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="5Jh2F9ezbcc" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
            </node>
            <node concept="2ShNRf" id="5Jh2F9ezbcd" role="33vP2m">
              <node concept="3zrR0B" id="5Jh2F9ezbce" role="2ShVmc">
                <node concept="3Tqbb2" id="5Jh2F9ezbcf" role="3zrR0E">
                  <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Jh2F9ezbcg" role="3cqZAp" />
        <node concept="3clFbF" id="5Jh2F9ezbch" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9ezbci" role="3clFbG">
            <node concept="2OqwBi" id="5Jh2F9ezbcj" role="37vLTJ">
              <node concept="37vLTw" id="5Jh2F9ezbck" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9ezbcb" resolve="node" />
              </node>
              <node concept="3TrcHB" id="5Jh2F9ezbcl" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="5Jh2F9ezbcm" role="37vLTx">
              <ref role="3cqZAo" node="5Jh2F9ezbcE" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Jh2F9ezbcn" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9ezbco" role="3clFbG">
            <node concept="37vLTw" id="5Jh2F9ezbcp" role="37vLTx">
              <ref role="3cqZAo" node="5Jh2F9ezbcG" resolve="virtualPackage" />
            </node>
            <node concept="2OqwBi" id="5Jh2F9ezbcq" role="37vLTJ">
              <node concept="37vLTw" id="5Jh2F9ezbcr" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9ezbcb" resolve="node" />
              </node>
              <node concept="3TrcHB" id="5Jh2F9ezbcs" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Jh2F9ezbct" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9ezbcu" role="3clFbG">
            <node concept="2YIFZM" id="5Jh2F9ezbcv" role="37vLTx">
              <ref role="1Pybhc" to="twe9:1o9qxtfbpaa" resolve="ConceptIdUtil" />
              <ref role="37wK5l" to="twe9:1o9qxtfbpgW" resolve="generate" />
              <node concept="37vLTw" id="5Jh2F9ezbcw" role="37wK5m">
                <ref role="3cqZAo" node="5Jh2F9ezbcb" resolve="node" />
              </node>
              <node concept="37vLTw" id="5Jh2F9ezbcx" role="37wK5m">
                <ref role="3cqZAo" node="5Jh2F9ezbcI" resolve="parentModel" />
              </node>
            </node>
            <node concept="2OqwBi" id="5Jh2F9ezbcy" role="37vLTJ">
              <node concept="37vLTw" id="5Jh2F9ezbcz" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9ezbcb" resolve="node" />
              </node>
              <node concept="3TrcHB" id="5Jh2F9ezbc$" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:1o9qxtf9pgp" resolve="conceptId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Jh2F9ezbc_" role="3cqZAp" />
        <node concept="3cpWs6" id="5Jh2F9ezbcA" role="3cqZAp">
          <node concept="37vLTw" id="5Jh2F9ezbcB" role="3cqZAk">
            <ref role="3cqZAo" node="5Jh2F9ezbcb" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Jh2F9ezbcC" role="1B3o_S" />
      <node concept="3uibUv" id="5Jh2F9ezbcD" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="37vLTG" id="5Jh2F9ezbcE" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5Jh2F9ezyFj" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5Jh2F9ezbcG" role="3clF46">
        <property role="TrG5h" value="virtualPackage" />
        <node concept="17QB3L" id="5Jh2F9ezyEP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5Jh2F9ezbcI" role="3clF46">
        <property role="TrG5h" value="parentModel" />
        <node concept="3uibUv" id="5Jh2F9ezbcJ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Jh2F9ezbnX" role="jymVt" />
    <node concept="2YIFZL" id="5Jh2F9ez5NZ" role="jymVt">
      <property role="TrG5h" value="createConstraintDataType" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5Jh2F9ez5O2" role="3clF47">
        <node concept="3cpWs8" id="5Jh2F9ez73S" role="3cqZAp">
          <node concept="3cpWsn" id="5Jh2F9ez73V" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="5Jh2F9ez73R" role="1tU5fm">
              <ref role="ehGHo" to="tpce:fKAz7CR" resolve="ConstrainedDataTypeDeclaration" />
            </node>
            <node concept="2ShNRf" id="5Jh2F9ez74r" role="33vP2m">
              <node concept="3zrR0B" id="5Jh2F9ez8jT" role="2ShVmc">
                <node concept="3Tqbb2" id="5Jh2F9ez8jV" role="3zrR0E">
                  <ref role="ehGHo" to="tpce:fKAz7CR" resolve="ConstrainedDataTypeDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Jh2F9ez8pn" role="3cqZAp" />
        <node concept="3clFbF" id="5Jh2F9ez8uQ" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9ez8ZG" role="3clFbG">
            <node concept="2OqwBi" id="5Jh2F9ez8x_" role="37vLTJ">
              <node concept="37vLTw" id="5Jh2F9ez8uO" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9ez73V" resolve="node" />
              </node>
              <node concept="3TrcHB" id="5Jh2F9ez8XZ" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="5Jh2F9ez94P" role="37vLTx">
              <ref role="3cqZAo" node="5Jh2F9ez6z3" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Jh2F9ez9lA" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9ez9CK" role="3clFbG">
            <node concept="37vLTw" id="5Jh2F9ez9Ec" role="37vLTx">
              <ref role="3cqZAo" node="5Jh2F9ez6zu" resolve="virtualPackage" />
            </node>
            <node concept="2OqwBi" id="5Jh2F9ez9ol" role="37vLTJ">
              <node concept="37vLTw" id="5Jh2F9ez9l$" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9ez73V" resolve="node" />
              </node>
              <node concept="3TrcHB" id="5Jh2F9ez9B3" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Jh2F9ezbA3" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9ezbI7" role="3clFbG">
            <node concept="37vLTw" id="5Jh2F9ezbKK" role="37vLTx">
              <ref role="3cqZAo" node="5Jh2F9ezbJm" resolve="constraint" />
            </node>
            <node concept="2OqwBi" id="5Jh2F9ezbBI" role="37vLTJ">
              <node concept="37vLTw" id="5Jh2F9ezbA1" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9ez73V" resolve="node" />
              </node>
              <node concept="3TrcHB" id="5Jh2F9ezbGq" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:fKFLfW2" resolve="constraint" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Jh2F9ez8t$" role="3cqZAp" />
        <node concept="3cpWs6" id="5Jh2F9ez8pU" role="3cqZAp">
          <node concept="37vLTw" id="5Jh2F9ez8uf" role="3cqZAk">
            <ref role="3cqZAo" node="5Jh2F9ez73V" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Jh2F9ez5NN" role="1B3o_S" />
      <node concept="3uibUv" id="5Jh2F9ez67x" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="37vLTG" id="5Jh2F9ez6z3" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5Jh2F9ezyDr" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5Jh2F9ezbJm" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="17QB3L" id="5Jh2F9ezyDT" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5Jh2F9ez6zu" role="3clF46">
        <property role="TrG5h" value="virtualPackage" />
        <node concept="17QB3L" id="5Jh2F9ezyEn" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5Jh2F9ezyug" role="jymVt" />
    <node concept="2YIFZL" id="5Jh2F9ezcou" role="jymVt">
      <property role="TrG5h" value="linkInterfaceToConcept" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5Jh2F9ezcox" role="3clF47">
        <node concept="3cpWs8" id="5Jh2F9ezcyg" role="3cqZAp">
          <node concept="3cpWsn" id="5Jh2F9ezcyj" role="3cpWs9">
            <property role="TrG5h" value="conceptDeclaration" />
            <node concept="3Tqbb2" id="5Jh2F9ezcyf" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
            </node>
            <node concept="10QFUN" id="5Jh2F9ezusd" role="33vP2m">
              <node concept="3Tqbb2" id="5Jh2F9ezusM" role="10QFUM">
                <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
              </node>
              <node concept="37vLTw" id="5Jh2F9ezurz" role="10QFUP">
                <ref role="3cqZAo" node="5Jh2F9ezcqI" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5Jh2F9ezutW" role="3cqZAp">
          <node concept="3cpWsn" id="5Jh2F9ezutX" role="3cpWs9">
            <property role="TrG5h" value="interfaceDeclaration" />
            <node concept="3Tqbb2" id="5Jh2F9ezutY" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
            </node>
            <node concept="10QFUN" id="5Jh2F9ezutZ" role="33vP2m">
              <node concept="3Tqbb2" id="5Jh2F9ezuu0" role="10QFUM">
                <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
              </node>
              <node concept="37vLTw" id="5Jh2F9ezuvw" role="10QFUP">
                <ref role="3cqZAo" node="5Jh2F9ezcrR" resolve="iface" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Jh2F9ezwmu" role="3cqZAp" />
        <node concept="3cpWs8" id="5Jh2F9ezwpO" role="3cqZAp">
          <node concept="3cpWsn" id="5Jh2F9ezwpU" role="3cpWs9">
            <property role="TrG5h" value="reference" />
            <node concept="3Tqbb2" id="5Jh2F9ezwqQ" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PrWoo" resolve="InterfaceConceptReference" />
            </node>
            <node concept="2ShNRf" id="5Jh2F9ezwru" role="33vP2m">
              <node concept="3zrR0B" id="5Jh2F9ezwAr" role="2ShVmc">
                <node concept="3Tqbb2" id="5Jh2F9ezwAt" role="3zrR0E">
                  <ref role="ehGHo" to="tpce:h0PrWoo" resolve="InterfaceConceptReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Jh2F9ezwDo" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9ezwMy" role="3clFbG">
            <node concept="37vLTw" id="5Jh2F9ezwOj" role="37vLTx">
              <ref role="3cqZAo" node="5Jh2F9ezutX" resolve="interfaceDeclaration" />
            </node>
            <node concept="2OqwBi" id="5Jh2F9ezwFH" role="37vLTJ">
              <node concept="37vLTw" id="5Jh2F9ezwDm" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9ezwpU" resolve="reference" />
              </node>
              <node concept="3TrEf2" id="5Jh2F9ezwJe" role="2OqNvi">
                <ref role="3Tt5mk" to="tpce:h0PrY0D" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Jh2F9ezwBT" role="3cqZAp" />
        <node concept="3clFbF" id="5Jh2F9ezuyK" role="3cqZAp">
          <node concept="2OqwBi" id="5Jh2F9ezvdY" role="3clFbG">
            <node concept="2OqwBi" id="5Jh2F9ezu_V" role="2Oq$k0">
              <node concept="37vLTw" id="5Jh2F9ezuyI" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9ezcyj" resolve="conceptDeclaration" />
              </node>
              <node concept="3Tsc0h" id="5Jh2F9ezuOa" role="2OqNvi">
                <ref role="3TtcxE" to="tpce:h0Pzm$Y" />
              </node>
            </node>
            <node concept="TSZUe" id="5Jh2F9ezw1C" role="2OqNvi">
              <node concept="37vLTw" id="5Jh2F9ezwQ5" role="25WWJ7">
                <ref role="3cqZAo" node="5Jh2F9ezwpU" resolve="reference" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Jh2F9ezcmg" role="1B3o_S" />
      <node concept="3cqZAl" id="5Jh2F9ezcos" role="3clF45" />
      <node concept="37vLTG" id="5Jh2F9ezcqI" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="5Jh2F9ezcrA" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="5Jh2F9ezcrR" role="3clF46">
        <property role="TrG5h" value="iface" />
        <node concept="3uibUv" id="5Jh2F9ezcs5" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="P$JXv" id="5Jh2F9ezyzL" role="lGtFl">
        <node concept="TZ5HA" id="5Jh2F9ezyzM" role="TZ5H$">
          <node concept="1dT_AC" id="5Jh2F9ezyzN" role="1dT_Ay">
            <property role="1dT_AB" value="Links an interface node and a concept node together (adds the interface to &quot;implements&quot; field)." />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5Jh2F9ez5NE" role="1B3o_S" />
  </node>
</model>

