<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d9ed7b3c-069a-480b-bfc2-e9fea3d61d5c(premun.mps.ingrid.plugin.importer.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="5bij" ref="r:2d3e24f6-bdc3-4b00-bb18-5ec15d3c7dbc(premun.mps.ingrid.plugin.importer.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" implicit="true" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" implicit="true" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1161622753914" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_operationContext" flags="nn" index="1Q79dO" />
    </language>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1160493135005" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyValues_GetValues" flags="in" index="MLZmj" />
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1164833692343" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyValues" flags="ng" index="PvTIS">
        <child id="1164833692344" name="valuesFunction" index="PvTIR" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186415722038" name="jetbrains.mps.lang.editor.structure.FontSizeStyleClassItem" flags="ln" index="VSNWy">
        <property id="1221209241505" name="value" index="1lJzqX" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
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
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="24kQdi" id="5wKr$U_ohOn">
    <ref role="1XX52x" to="5bij:5wKr$U_ohND" resolve="GrammarImporter" />
    <node concept="3EZMnI" id="5wKr$U_ohOs" role="2wV5jI">
      <node concept="3F0A7n" id="5wKr$U_orDB" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="VSNWy" id="5wKr$U_orIT" role="3F10Kt">
          <property role="1lJzqX" value="40" />
        </node>
        <node concept="Vb9p2" id="5wKr$U_orLu" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="5wKr$U_ohOz" role="3EZMnx">
        <property role="3F0ifm" value="1) Create an empty language where you want the grammar imported." />
      </node>
      <node concept="3F0ifn" id="5wKr$U_ohOH" role="3EZMnx">
        <property role="3F0ifm" value="2) Insert name of the created language:" />
      </node>
      <node concept="3EZMnI" id="5wKr$U_op9O" role="3EZMnx">
        <node concept="3XFhqQ" id="5wKr$U_oply" role="3EZMnx" />
        <node concept="3XFhqQ" id="5wKr$U_oplE" role="3EZMnx" />
        <node concept="2iRfu4" id="5wKr$U_op9P" role="2iSdaV" />
        <node concept="3F0A7n" id="5wKr$U_ohPd" role="3EZMnx">
          <ref role="1NtTu8" to="5bij:5wKr$U_ohNG" resolve="targetLanguage" />
          <node concept="OXEIz" id="5wKr$U_osex" role="P5bDN">
            <node concept="PvTIS" id="5wKr$U_osez" role="OY2wv">
              <node concept="MLZmj" id="5wKr$U_ose$" role="PvTIR">
                <node concept="3clFbS" id="5wKr$U_ose_" role="2VODD2">
                  <node concept="3cpWs8" id="5wKr$U_otEI" role="3cqZAp">
                    <node concept="3cpWsn" id="5wKr$U_otEO" role="3cpWs9">
                      <property role="TrG5h" value="languages" />
                      <node concept="_YKpA" id="5wKr$U_otIf" role="1tU5fm">
                        <node concept="17QB3L" id="5wKr$U_otL$" role="_ZDj9" />
                      </node>
                      <node concept="2ShNRf" id="5wKr$U_oHn1" role="33vP2m">
                        <node concept="Tc6Ow" id="5wKr$U_oIf6" role="2ShVmc">
                          <node concept="17QB3L" id="5wKr$U_oI_y" role="HW$YZ" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="5wKr$U_p48Y" role="3cqZAp" />
                  <node concept="2Gpval" id="5wKr$U_ovnS" role="3cqZAp">
                    <node concept="2GrKxI" id="5wKr$U_ovnU" role="2Gsz3X">
                      <property role="TrG5h" value="module" />
                    </node>
                    <node concept="3clFbS" id="5wKr$U_ovnW" role="2LFqv$">
                      <node concept="3clFbJ" id="5wKr$U_oN6r" role="3cqZAp">
                        <node concept="3clFbS" id="5wKr$U_oN6t" role="3clFbx">
                          <node concept="3clFbF" id="5wKr$U_oD$J" role="3cqZAp">
                            <node concept="2OqwBi" id="5wKr$U_oDL8" role="3clFbG">
                              <node concept="37vLTw" id="5wKr$U_oD$I" role="2Oq$k0">
                                <ref role="3cqZAo" node="5wKr$U_otEO" resolve="languages" />
                              </node>
                              <node concept="TSZUe" id="5wKr$U_oEes" role="2OqNvi">
                                <node concept="2OqwBi" id="5wKr$U_oX3x" role="25WWJ7">
                                  <node concept="2GrUjf" id="5wKr$U_oWVd" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="5wKr$U_ovnU" resolve="module" />
                                  </node>
                                  <node concept="liA8E" id="5wKr$U_oXB3" role="2OqNvi">
                                    <ref role="37wK5l" to="lui2:~SModule.getModuleName():java.lang.String" resolve="getModuleName" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5wKr$U_oTAh" role="3clFbw">
                          <node concept="2OqwBi" id="5wKr$U_oTaE" role="2Oq$k0">
                            <node concept="2OqwBi" id="5wKr$U_oSGX" role="2Oq$k0">
                              <node concept="2OqwBi" id="5wKr$U_oRuL" role="2Oq$k0">
                                <node concept="2GrUjf" id="5wKr$U_oRme" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="5wKr$U_ovnU" resolve="module" />
                                </node>
                                <node concept="liA8E" id="5wKr$U_oSox" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.getClass():java.lang.Class" resolve="getClass" />
                                </node>
                              </node>
                              <node concept="liA8E" id="5wKr$U_oSYN" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Class.getName():java.lang.String" resolve="getName" />
                              </node>
                            </node>
                            <node concept="liA8E" id="5wKr$U_oTr7" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.toString():java.lang.String" resolve="toString" />
                            </node>
                          </node>
                          <node concept="liA8E" id="5wKr$U_oZR4" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String):boolean" resolve="endsWith" />
                            <node concept="Xl_RD" id="5wKr$U_oZZ9" role="37wK5m">
                              <property role="Xl_RC" value=".Language" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5wKr$U_p8EP" role="2GsD0m">
                      <node concept="2OqwBi" id="5wKr$U_ovHe" role="2Oq$k0">
                        <node concept="1Q79dO" id="5wKr$U_ovEl" role="2Oq$k0" />
                        <node concept="liA8E" id="5wKr$U_ovL$" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~IOperationContext.getProject():jetbrains.mps.project.Project" resolve="getProject" />
                        </node>
                      </node>
                      <node concept="liA8E" id="5wKr$U_pb1l" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~Project.getModules():java.lang.Iterable" resolve="getModules" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="5wKr$U_o$Mm" role="3cqZAp" />
                  <node concept="3cpWs6" id="5wKr$U_o$UX" role="3cqZAp">
                    <node concept="37vLTw" id="5wKr$U_o_3m" role="3cqZAk">
                      <ref role="3cqZAo" node="5wKr$U_otEO" resolve="languages" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5wKr$U_ohPh" role="3EZMnx">
        <property role="3F0ifm" value="3) Insert path to the grammar .g4 file:" />
      </node>
      <node concept="3EZMnI" id="5wKr$U_opa5" role="3EZMnx">
        <node concept="3XFhqQ" id="5wKr$U_opal" role="3EZMnx" />
        <node concept="3XFhqQ" id="5wKr$U_opxp" role="3EZMnx" />
        <node concept="2iRfu4" id="5wKr$U_opa6" role="2iSdaV" />
        <node concept="3F0A7n" id="5wKr$U_ohPP" role="3EZMnx">
          <ref role="1NtTu8" to="5bij:5wKr$U_ohNE" resolve="filePath" />
        </node>
      </node>
      <node concept="3F0ifn" id="4F6jbA$kxIH" role="3EZMnx">
        <property role="3F0ifm" value="4) Click on 'Tools &gt; Import grammar'" />
      </node>
      <node concept="2iRkQZ" id="5wKr$U_ohOv" role="2iSdaV" />
    </node>
  </node>
</model>

