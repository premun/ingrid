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
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
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
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
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
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
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
          <node concept="2OqwBi" id="4J1$HSvHEAA" role="3clFbG">
            <node concept="2OqwBi" id="4J1$HSvHEsa" role="2Oq$k0">
              <node concept="37vLTw" id="4J1$HSvHGGY" role="2Oq$k0">
                <ref role="3cqZAo" node="4J1$HSvHxje" resolve="editorModel" />
              </node>
              <node concept="2SmgA7" id="4J1$HSvHEt1" role="2OqNvi" />
            </node>
            <node concept="2es0OD" id="4J1$HSvHGpu" role="2OqNvi">
              <node concept="1bVj0M" id="4J1$HSvHGpw" role="23t8la">
                <node concept="3clFbS" id="4J1$HSvHGpx" role="1bW5cS">
                  <node concept="3clFbF" id="4J1$HSvHGry" role="3cqZAp">
                    <node concept="2OqwBi" id="4J1$HSvHGtI" role="3clFbG">
                      <node concept="37vLTw" id="4J1$HSvHGrx" role="2Oq$k0">
                        <ref role="3cqZAo" node="4J1$HSvHGpy" resolve="it" />
                      </node>
                      <node concept="1PgB_6" id="4J1$HSvHGxG" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="4J1$HSvHGpy" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4J1$HSvHGpz" role="1tU5fm" />
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
        <node concept="3cpWs8" id="4J1$HSvIr7z" role="3cqZAp">
          <node concept="3cpWsn" id="4J1$HSvIr7$" role="3cpWs9">
            <property role="TrG5h" value="parser" />
            <node concept="3uibUv" id="4J1$HSvICLI" role="1tU5fm">
              <ref role="3uigEE" to="cs49:~GrammarParser" resolve="GrammarParser" />
            </node>
            <node concept="2ShNRf" id="4J1$HSvIreZ" role="33vP2m">
              <node concept="1pGfFk" id="4J1$HSvIrlo" role="2ShVmc">
                <ref role="37wK5l" to="cs49:~GrammarParser.&lt;init&gt;()" resolve="GrammarParser" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4J1$HSvIr$f" role="3cqZAp">
          <node concept="3cpWsn" id="4J1$HSvIr$g" role="3cpWs9">
            <property role="TrG5h" value="grammar" />
            <node concept="3uibUv" id="4J1$HSvIr$h" role="1tU5fm">
              <ref role="3uigEE" to="kr2q:~GrammarInfo" resolve="GrammarInfo" />
            </node>
            <node concept="2OqwBi" id="4J1$HSvIrGC" role="33vP2m">
              <node concept="37vLTw" id="4J1$HSvID1Y" role="2Oq$k0">
                <ref role="3cqZAo" node="4J1$HSvIr7$" resolve="parser" />
              </node>
              <node concept="liA8E" id="4J1$HSvIrHN" role="2OqNvi">
                <ref role="37wK5l" to="cs49:~GrammarParser.parseFile(java.lang.String):premun.mps.ingrid.parser.grammar.GrammarInfo" resolve="parseFile" />
                <node concept="37vLTw" id="4J1$HSvIrIF" role="37wK5m">
                  <ref role="3cqZAo" node="4J1$HSvHxp$" resolve="fileName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4J1$HSvIpUy" role="3cqZAp" />
        <node concept="2Gpval" id="4J1$HSvHxps" role="3cqZAp">
          <node concept="2GrKxI" id="4J1$HSvHxpt" role="2Gsz3X">
            <property role="TrG5h" value="pair" />
          </node>
          <node concept="3clFbS" id="4J1$HSvHxpu" role="2LFqv$">
            <node concept="3cpWs8" id="4J1$HSvHHqh" role="3cqZAp">
              <node concept="3cpWsn" id="4J1$HSvHHqi" role="3cpWs9">
                <property role="TrG5h" value="rule" />
                <node concept="3uibUv" id="4J1$HSvHHqj" role="1tU5fm">
                  <ref role="3uigEE" to="kr2q:~Rule" resolve="Rule" />
                </node>
                <node concept="2OqwBi" id="4J1$HSvHHsr" role="33vP2m">
                  <node concept="2GrUjf" id="4J1$HSvHHqP" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="4J1$HSvHxpt" resolve="pair" />
                  </node>
                  <node concept="3AV6Ez" id="4J1$HSvHHw3" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4J1$HSvHHpC" role="3cqZAp" />
            <node concept="3clFbJ" id="4J1$HSvHGWY" role="3cqZAp">
              <node concept="3clFbS" id="4J1$HSvHGWZ" role="3clFbx">
                <node concept="3cpWs8" id="4J1$HSvHK4C" role="3cqZAp">
                  <node concept="3cpWsn" id="4J1$HSvHK4I" role="3cpWs9">
                    <property role="TrG5h" value="node" />
                    <node concept="3Tqbb2" id="4J1$HSvHLqM" role="1tU5fm">
                      <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                    </node>
                    <node concept="2ShNRf" id="4J1$HSvHLrq" role="33vP2m">
                      <node concept="3zrR0B" id="4J1$HSvHLQG" role="2ShVmc">
                        <node concept="3Tqbb2" id="4J1$HSvHLQI" role="3zrR0E">
                          <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4J1$HSvHLSD" role="3cqZAp">
                  <node concept="37vLTI" id="4J1$HSvHM4k" role="3clFbG">
                    <node concept="2OqwBi" id="4J1$HSvHM6j" role="37vLTx">
                      <node concept="37vLTw" id="4J1$HSvHM5q" role="2Oq$k0">
                        <ref role="3cqZAo" node="4J1$HSvHHqi" resolve="rule" />
                      </node>
                      <node concept="2OwXpG" id="4J1$HSvICXn" role="2OqNvi">
                        <ref role="2Oxat5" to="kr2q:~Rule.name" resolve="name" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4J1$HSvHLVk" role="37vLTJ">
                      <node concept="37vLTw" id="4J1$HSvHLSB" role="2Oq$k0">
                        <ref role="3cqZAo" node="4J1$HSvHK4I" resolve="node" />
                      </node>
                      <node concept="3TrcHB" id="4J1$HSvHM2L" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:gOOYy9I" resolve="alias" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4J1$HSvHMax" role="3cqZAp">
                  <node concept="37vLTI" id="4J1$HSvHMu8" role="3clFbG">
                    <node concept="2OqwBi" id="4J1$HSvHMw7" role="37vLTx">
                      <node concept="37vLTw" id="4J1$HSvHMve" role="2Oq$k0">
                        <ref role="3cqZAo" node="4J1$HSvHHqi" resolve="rule" />
                      </node>
                      <node concept="2OwXpG" id="4J1$HSvID02" role="2OqNvi">
                        <ref role="2Oxat5" to="kr2q:~Rule.name" resolve="name" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4J1$HSvHMdc" role="37vLTJ">
                      <node concept="37vLTw" id="4J1$HSvHMav" role="2Oq$k0">
                        <ref role="3cqZAo" node="4J1$HSvHK4I" resolve="node" />
                      </node>
                      <node concept="3TrcHB" id="4J1$HSvHMs_" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4J1$HSvHMzv" role="3cqZAp">
                  <node concept="37vLTI" id="4J1$HSvHMSJ" role="3clFbG">
                    <node concept="2YIFZM" id="4J1$HSvHN2E" role="37vLTx">
                      <ref role="37wK5l" to="twe9:1o9qxtfbpgW" resolve="generate" />
                      <ref role="1Pybhc" to="twe9:1o9qxtfbpaa" resolve="ConceptIdUtil" />
                      <node concept="37vLTw" id="4J1$HSvHN4b" role="37wK5m">
                        <ref role="3cqZAo" node="4J1$HSvHK4I" resolve="node" />
                      </node>
                      <node concept="37vLTw" id="4J1$HSvHNa3" role="37wK5m">
                        <ref role="3cqZAo" node="4J1$HSvHxhw" resolve="structureModel" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4J1$HSvHMAa" role="37vLTJ">
                      <node concept="37vLTw" id="4J1$HSvHMzt" role="2Oq$k0">
                        <ref role="3cqZAo" node="4J1$HSvHK4I" resolve="node" />
                      </node>
                      <node concept="3TrcHB" id="4J1$HSvHMON" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:1o9qxtf9pgp" resolve="conceptId" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4J1$HSvHJX$" role="3cqZAp">
                  <node concept="2OqwBi" id="4J1$HSvHJYr" role="3clFbG">
                    <node concept="37vLTw" id="4J1$HSvHJXz" role="2Oq$k0">
                      <ref role="3cqZAo" node="4J1$HSvHxhw" resolve="structureModel" />
                    </node>
                    <node concept="3BYIHo" id="4J1$HSvHNbG" role="2OqNvi">
                      <node concept="37vLTw" id="4J1$HSvHNcR" role="3BYIHq">
                        <ref role="3cqZAo" node="4J1$HSvHK4I" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="4J1$HSvHJU9" role="3clFbw">
                <node concept="3uibUv" id="4J1$HSvHJWG" role="2ZW6by">
                  <ref role="3uigEE" to="kr2q:~LexerRule" resolve="LexerRule" />
                </node>
                <node concept="37vLTw" id="4J1$HSvHJmJ" role="2ZW6bz">
                  <ref role="3cqZAo" node="4J1$HSvHHqi" resolve="rule" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4J1$HSvHxpv" role="2GsD0m">
            <node concept="37vLTw" id="4J1$HSvIrXA" role="2Oq$k0">
              <ref role="3cqZAo" node="4J1$HSvIr$g" resolve="grammar" />
            </node>
            <node concept="2OwXpG" id="4J1$HSvICRE" role="2OqNvi">
              <ref role="2Oxat5" to="kr2q:~GrammarInfo.rules" resolve="rules" />
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
    <node concept="3Tm1VV" id="1OSx5D$GPOS" role="1B3o_S" />
  </node>
</model>

