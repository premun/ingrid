<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:96bbbd98-b54e-41e2-a7d9-277440cd14de(imported.language.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="3" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="uppz" ref="r:e7cb953d-e1d3-464c-b954-fb1460bed4d2(imported.language.structure)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1165339175678" name="jetbrains.mps.lang.editor.structure.CellMenuPart_ReplaceChild_Item" flags="ng" index="1jCaJL">
        <property id="1175117579502" name="descriptionText" index="2qtOnZ" />
        <property id="1165339639991" name="matchingText" index="1jDW6S" />
        <child id="1165339175680" name="createFunction" index="1jCaCf" />
      </concept>
      <concept id="1165339307433" name="jetbrains.mps.lang.editor.structure.CellMenuPart_ReplaceChild_Item_Create" flags="in" index="1jCEMA" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY">
        <property id="16410578721444372" name="customizeEmptyCell" index="2ru_X1" />
        <child id="16410578721629643" name="emptyCellModel" index="2ruayu" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR">
        <child id="1165347032372" name="elementMenuDescriptor" index="1k68KV" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
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
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
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
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
  </registry>
  <node concept="24kQdi" id="5lY$Gq$KbrA">
    <property role="3GE5qa" value="Rules.Document" />
    <ref role="1XX52x" to="uppz:5lY$Gq$Kbr1" resolve="Document" />
    <node concept="3EZMnI" id="5lY$Gq$KbrB" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$KbrC" role="2iSdaV" />
      <node concept="3F2HdR" id="5lY$Gq$KbrD" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$Kbrk" />
        <node concept="3F0ifn" id="5lY$Gq$KbrF" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F2HdR" id="5lY$Gq$KbrG" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$Kbrl" />
        <node concept="3F0ifn" id="5lY$Gq$KbrI" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F1sOY" id="5lY$Gq$KbrJ" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="uppz:5lY$Gq$Kbrm" />
        <node concept="3F0ifn" id="5lY$Gq$KbrK" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$KbrL">
    <property role="3GE5qa" value="Rules.Comment" />
    <ref role="1XX52x" to="uppz:5lY$Gq$Kbr2" resolve="Comment" />
    <node concept="3EZMnI" id="5lY$Gq$KbrM" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$KbrN" role="2iSdaV" />
      <node concept="3F0ifn" id="5lY$Gq$KbrO" role="3EZMnx">
        <property role="3F0ifm" value="&lt;!--" />
      </node>
      <node concept="3F0A7n" id="5lY$Gq$KbrP" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$Kbrn" resolve="TEXT_1" />
      </node>
      <node concept="3F0ifn" id="5lY$Gq$KbrQ" role="3EZMnx">
        <property role="3F0ifm" value="--&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$KbrR">
    <property role="3GE5qa" value="Rules.Attribute" />
    <ref role="1XX52x" to="uppz:5lY$Gq$Kbr3" resolve="Attribute" />
    <node concept="3EZMnI" id="5lY$Gq$KbrS" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$KbrT" role="2iSdaV" />
      <node concept="3F0A7n" id="5lY$Gq$KbrU" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$Kbro" resolve="Name_1" />
      </node>
      <node concept="3F0ifn" id="5lY$Gq$KbrV" role="3EZMnx">
        <property role="3F0ifm" value="=&quot;" />
      </node>
      <node concept="3F0A7n" id="5lY$Gq$KbrW" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$Kbrp" resolve="TEXT_2" />
      </node>
      <node concept="3F0ifn" id="5lY$Gq$KbrX" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$KbrY">
    <property role="3GE5qa" value="Rules.Prolog" />
    <ref role="1XX52x" to="uppz:5lY$Gq$Kbr4" resolve="Prolog" />
    <node concept="3EZMnI" id="5lY$Gq$KbrZ" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$Kbs0" role="2iSdaV" />
      <node concept="3F0ifn" id="5lY$Gq$Kbs1" role="3EZMnx">
        <property role="3F0ifm" value="&lt;?xml " />
      </node>
      <node concept="3F2HdR" id="5lY$Gq$Kbs2" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$Kbrq" />
        <node concept="3F0ifn" id="5lY$Gq$Kbs4" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="5lY$Gq$Kbs5" role="3EZMnx">
        <property role="3F0ifm" value="?&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$Kbs6">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="uppz:5lY$Gq$Kbr6" resolve="Content_1" />
    <node concept="3EZMnI" id="5lY$Gq$Kbs7" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$Kbs8" role="2iSdaV" />
      <node concept="3F0A7n" id="5lY$Gq$Kbs9" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$Kbrr" resolve="TEXT_1" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$Kbsa">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="uppz:5lY$Gq$Kbr8" resolve="Content_2" />
    <node concept="3EZMnI" id="5lY$Gq$Kbsb" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$Kbsc" role="2iSdaV" />
      <node concept="3F1sOY" id="5lY$Gq$Kbsd" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="uppz:5lY$Gq$Kbrs" />
        <node concept="3F0ifn" id="5lY$Gq$Kbse" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$Kbsf">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="uppz:5lY$Gq$Kbra" resolve="Content_3" />
    <node concept="3EZMnI" id="5lY$Gq$Kbsg" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$Kbsh" role="2iSdaV" />
      <node concept="3F1sOY" id="5lY$Gq$Kbsi" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="uppz:5lY$Gq$Kbrt" />
        <node concept="3F0ifn" id="5lY$Gq$Kbsj" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$Kbsk">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="uppz:5lY$Gq$Kbrc" resolve="Content_4" />
    <node concept="3EZMnI" id="5lY$Gq$Kbsl" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$Kbsm" role="2iSdaV" />
      <node concept="3F1sOY" id="5lY$Gq$Kbsn" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="uppz:5lY$Gq$Kbru" />
        <node concept="3F0ifn" id="5lY$Gq$Kbso" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$Kbsp">
    <property role="3GE5qa" value="Rules.Cdata" />
    <ref role="1XX52x" to="uppz:5lY$Gq$Kbre" resolve="Cdata" />
    <node concept="3EZMnI" id="5lY$Gq$Kbsq" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$Kbsr" role="2iSdaV" />
      <node concept="3F0ifn" id="5lY$Gq$Kbss" role="3EZMnx">
        <property role="3F0ifm" value="&lt;![CDATA[" />
      </node>
      <node concept="3F0A7n" id="5lY$Gq$Kbst" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$Kbrv" resolve="CDATA_1" />
      </node>
      <node concept="3F0ifn" id="5lY$Gq$Kbsu" role="3EZMnx">
        <property role="3F0ifm" value="]]&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$Kbsv">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="1XX52x" to="uppz:5lY$Gq$Kbrg" resolve="Element_1" />
    <node concept="3EZMnI" id="5lY$Gq$Kbsw" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$Kbsx" role="2iSdaV" />
      <node concept="3F0ifn" id="5lY$Gq$Kbsy" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
      </node>
      <node concept="3F0A7n" id="5lY$Gq$Kbsz" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$Kbrw" resolve="Name_1" />
      </node>
      <node concept="3F2HdR" id="5lY$Gq$Kbs$" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$Kbrx" />
        <node concept="3F0ifn" id="5lY$Gq$KbsA" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="5lY$Gq$KbsB" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
      </node>
      <node concept="3F2HdR" id="5lY$Gq$KbsC" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$Kbry" />
        <node concept="3F0ifn" id="5lY$Gq$KbsE" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
        <node concept="OXEIz" id="5lY$Gq$KbsF" role="1k68KV">
          <node concept="1jCaJL" id="5lY$Gq$KbsG" role="OY2wv">
            <property role="1jDW6S" value="T" />
            <property role="2qtOnZ" value="Text content" />
            <node concept="1jCEMA" id="5lY$Gq$KbsH" role="1jCaCf">
              <node concept="3clFbS" id="5lY$Gq$KbsI" role="2VODD2">
                <node concept="3cpWs8" id="5lY$Gq$KbsO" role="3cqZAp">
                  <node concept="3cpWsn" id="5lY$Gq$KbsN" role="3cpWs9">
                    <property role="TrG5h" value="node_0" />
                    <node concept="3Tqbb2" id="5lY$Gq$KbsM" role="1tU5fm">
                      <ref role="ehGHo" to="uppz:5lY$Gq$Kbr6" resolve="Content_1" />
                    </node>
                    <node concept="2ShNRf" id="5lY$Gq$KbsJ" role="33vP2m">
                      <node concept="3zrR0B" id="5lY$Gq$KbsK" role="2ShVmc">
                        <node concept="3Tqbb2" id="5lY$Gq$KbsL" role="3zrR0E">
                          <ref role="ehGHo" to="uppz:5lY$Gq$Kbr6" resolve="Content_1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5lY$Gq$KbsQ" role="3cqZAp">
                  <node concept="37vLTw" id="5lY$Gq$KbsP" role="3cqZAk">
                    <ref role="3cqZAo" node="5lY$Gq$KbsN" resolve="node_0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1jCaJL" id="5lY$Gq$KbsR" role="OY2wv">
            <property role="1jDW6S" value="&lt;![" />
            <property role="2qtOnZ" value="&lt;![CDATA[ ]]&gt;" />
            <node concept="1jCEMA" id="5lY$Gq$KbsS" role="1jCaCf">
              <node concept="3clFbS" id="5lY$Gq$KbsT" role="2VODD2">
                <node concept="3cpWs8" id="5lY$Gq$KbsZ" role="3cqZAp">
                  <node concept="3cpWsn" id="5lY$Gq$KbsY" role="3cpWs9">
                    <property role="TrG5h" value="node_1" />
                    <node concept="3Tqbb2" id="5lY$Gq$KbsX" role="1tU5fm">
                      <ref role="ehGHo" to="uppz:5lY$Gq$Kbre" resolve="Cdata" />
                    </node>
                    <node concept="2ShNRf" id="5lY$Gq$KbsU" role="33vP2m">
                      <node concept="3zrR0B" id="5lY$Gq$KbsV" role="2ShVmc">
                        <node concept="3Tqbb2" id="5lY$Gq$KbsW" role="3zrR0E">
                          <ref role="ehGHo" to="uppz:5lY$Gq$Kbre" resolve="Cdata" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5lY$Gq$Kbt6" role="3cqZAp">
                  <node concept="3cpWsn" id="5lY$Gq$Kbt5" role="3cpWs9">
                    <property role="TrG5h" value="node_0" />
                    <node concept="3Tqbb2" id="5lY$Gq$Kbt4" role="1tU5fm">
                      <ref role="ehGHo" to="uppz:5lY$Gq$Kbr8" resolve="Content_2" />
                    </node>
                    <node concept="2ShNRf" id="5lY$Gq$Kbt1" role="33vP2m">
                      <node concept="3zrR0B" id="5lY$Gq$Kbt2" role="2ShVmc">
                        <node concept="3Tqbb2" id="5lY$Gq$Kbt3" role="3zrR0E">
                          <ref role="ehGHo" to="uppz:5lY$Gq$Kbr8" resolve="Content_2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lY$Gq$Kbt9" role="3cqZAp">
                  <node concept="37vLTI" id="5lY$Gq$Kbta" role="3clFbG">
                    <node concept="37vLTw" id="5lY$Gq$Kbt0" role="37vLTx">
                      <ref role="3cqZAo" node="5lY$Gq$KbsY" resolve="node_1" />
                    </node>
                    <node concept="2OqwBi" id="5lY$Gq$Kbtb" role="37vLTJ">
                      <node concept="3TrEf2" id="5lY$Gq$Kbt8" role="2OqNvi">
                        <ref role="3Tt5mk" to="uppz:5lY$Gq$Kbrs" />
                      </node>
                      <node concept="37vLTw" id="5lY$Gq$Kbt7" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lY$Gq$Kbt5" resolve="node_0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5lY$Gq$Kbtc" role="3cqZAp">
                  <node concept="37vLTw" id="5lY$Gq$Kbtd" role="3cqZAk">
                    <ref role="3cqZAo" node="5lY$Gq$Kbt5" resolve="node_0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1jCaJL" id="5lY$Gq$Kbte" role="OY2wv">
            <property role="1jDW6S" value="&lt;!-" />
            <property role="2qtOnZ" value="&lt;!-- --&gt;" />
            <node concept="1jCEMA" id="5lY$Gq$Kbtf" role="1jCaCf">
              <node concept="3clFbS" id="5lY$Gq$Kbtg" role="2VODD2">
                <node concept="3cpWs8" id="5lY$Gq$Kbtm" role="3cqZAp">
                  <node concept="3cpWsn" id="5lY$Gq$Kbtl" role="3cpWs9">
                    <property role="TrG5h" value="node_1" />
                    <node concept="3Tqbb2" id="5lY$Gq$Kbtk" role="1tU5fm">
                      <ref role="ehGHo" to="uppz:5lY$Gq$Kbr2" resolve="Comment" />
                    </node>
                    <node concept="2ShNRf" id="5lY$Gq$Kbth" role="33vP2m">
                      <node concept="3zrR0B" id="5lY$Gq$Kbti" role="2ShVmc">
                        <node concept="3Tqbb2" id="5lY$Gq$Kbtj" role="3zrR0E">
                          <ref role="ehGHo" to="uppz:5lY$Gq$Kbr2" resolve="Comment" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5lY$Gq$Kbtt" role="3cqZAp">
                  <node concept="3cpWsn" id="5lY$Gq$Kbts" role="3cpWs9">
                    <property role="TrG5h" value="node_0" />
                    <node concept="3Tqbb2" id="5lY$Gq$Kbtr" role="1tU5fm">
                      <ref role="ehGHo" to="uppz:5lY$Gq$Kbra" resolve="Content_3" />
                    </node>
                    <node concept="2ShNRf" id="5lY$Gq$Kbto" role="33vP2m">
                      <node concept="3zrR0B" id="5lY$Gq$Kbtp" role="2ShVmc">
                        <node concept="3Tqbb2" id="5lY$Gq$Kbtq" role="3zrR0E">
                          <ref role="ehGHo" to="uppz:5lY$Gq$Kbra" resolve="Content_3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lY$Gq$Kbtw" role="3cqZAp">
                  <node concept="37vLTI" id="5lY$Gq$Kbtx" role="3clFbG">
                    <node concept="37vLTw" id="5lY$Gq$Kbtn" role="37vLTx">
                      <ref role="3cqZAo" node="5lY$Gq$Kbtl" resolve="node_1" />
                    </node>
                    <node concept="2OqwBi" id="5lY$Gq$Kbty" role="37vLTJ">
                      <node concept="3TrEf2" id="5lY$Gq$Kbtv" role="2OqNvi">
                        <ref role="3Tt5mk" to="uppz:5lY$Gq$Kbrt" />
                      </node>
                      <node concept="37vLTw" id="5lY$Gq$Kbtu" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lY$Gq$Kbts" resolve="node_0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5lY$Gq$Kbtz" role="3cqZAp">
                  <node concept="37vLTw" id="5lY$Gq$Kbt$" role="3cqZAk">
                    <ref role="3cqZAo" node="5lY$Gq$Kbts" resolve="node_0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1jCaJL" id="5lY$Gq$Kbt_" role="OY2wv">
            <property role="1jDW6S" value="&lt; &gt;" />
            <property role="2qtOnZ" value="&lt; &gt; &lt;/ &gt;" />
            <node concept="1jCEMA" id="5lY$Gq$KbtA" role="1jCaCf">
              <node concept="3clFbS" id="5lY$Gq$KbtB" role="2VODD2">
                <node concept="3cpWs8" id="5lY$Gq$KbtH" role="3cqZAp">
                  <node concept="3cpWsn" id="5lY$Gq$KbtG" role="3cpWs9">
                    <property role="TrG5h" value="node_1" />
                    <node concept="3Tqbb2" id="5lY$Gq$KbtF" role="1tU5fm">
                      <ref role="ehGHo" to="uppz:5lY$Gq$Kbrg" resolve="Element_1" />
                    </node>
                    <node concept="2ShNRf" id="5lY$Gq$KbtC" role="33vP2m">
                      <node concept="3zrR0B" id="5lY$Gq$KbtD" role="2ShVmc">
                        <node concept="3Tqbb2" id="5lY$Gq$KbtE" role="3zrR0E">
                          <ref role="ehGHo" to="uppz:5lY$Gq$Kbrg" resolve="Element_1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5lY$Gq$KbtO" role="3cqZAp">
                  <node concept="3cpWsn" id="5lY$Gq$KbtN" role="3cpWs9">
                    <property role="TrG5h" value="node_0" />
                    <node concept="3Tqbb2" id="5lY$Gq$KbtM" role="1tU5fm">
                      <ref role="ehGHo" to="uppz:5lY$Gq$Kbrc" resolve="Content_4" />
                    </node>
                    <node concept="2ShNRf" id="5lY$Gq$KbtJ" role="33vP2m">
                      <node concept="3zrR0B" id="5lY$Gq$KbtK" role="2ShVmc">
                        <node concept="3Tqbb2" id="5lY$Gq$KbtL" role="3zrR0E">
                          <ref role="ehGHo" to="uppz:5lY$Gq$Kbrc" resolve="Content_4" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lY$Gq$KbtR" role="3cqZAp">
                  <node concept="37vLTI" id="5lY$Gq$KbtS" role="3clFbG">
                    <node concept="37vLTw" id="5lY$Gq$KbtI" role="37vLTx">
                      <ref role="3cqZAo" node="5lY$Gq$KbtG" resolve="node_1" />
                    </node>
                    <node concept="2OqwBi" id="5lY$Gq$KbtT" role="37vLTJ">
                      <node concept="3TrEf2" id="5lY$Gq$KbtQ" role="2OqNvi">
                        <ref role="3Tt5mk" to="uppz:5lY$Gq$Kbru" />
                      </node>
                      <node concept="37vLTw" id="5lY$Gq$KbtP" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lY$Gq$KbtN" resolve="node_0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5lY$Gq$KbtU" role="3cqZAp">
                  <node concept="37vLTw" id="5lY$Gq$KbtV" role="3cqZAk">
                    <ref role="3cqZAo" node="5lY$Gq$KbtN" resolve="node_0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1jCaJL" id="5lY$Gq$KbtW" role="OY2wv">
            <property role="1jDW6S" value="&lt; /" />
            <property role="2qtOnZ" value="&lt; /&gt;" />
            <node concept="1jCEMA" id="5lY$Gq$KbtX" role="1jCaCf">
              <node concept="3clFbS" id="5lY$Gq$KbtY" role="2VODD2">
                <node concept="3cpWs8" id="5lY$Gq$Kbu4" role="3cqZAp">
                  <node concept="3cpWsn" id="5lY$Gq$Kbu3" role="3cpWs9">
                    <property role="TrG5h" value="node_1" />
                    <node concept="3Tqbb2" id="5lY$Gq$Kbu2" role="1tU5fm">
                      <ref role="ehGHo" to="uppz:5lY$Gq$Kbri" resolve="Element_2" />
                    </node>
                    <node concept="2ShNRf" id="5lY$Gq$KbtZ" role="33vP2m">
                      <node concept="3zrR0B" id="5lY$Gq$Kbu0" role="2ShVmc">
                        <node concept="3Tqbb2" id="5lY$Gq$Kbu1" role="3zrR0E">
                          <ref role="ehGHo" to="uppz:5lY$Gq$Kbri" resolve="Element_2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5lY$Gq$Kbub" role="3cqZAp">
                  <node concept="3cpWsn" id="5lY$Gq$Kbua" role="3cpWs9">
                    <property role="TrG5h" value="node_0" />
                    <node concept="3Tqbb2" id="5lY$Gq$Kbu9" role="1tU5fm">
                      <ref role="ehGHo" to="uppz:5lY$Gq$Kbrc" resolve="Content_4" />
                    </node>
                    <node concept="2ShNRf" id="5lY$Gq$Kbu6" role="33vP2m">
                      <node concept="3zrR0B" id="5lY$Gq$Kbu7" role="2ShVmc">
                        <node concept="3Tqbb2" id="5lY$Gq$Kbu8" role="3zrR0E">
                          <ref role="ehGHo" to="uppz:5lY$Gq$Kbrc" resolve="Content_4" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lY$Gq$Kbue" role="3cqZAp">
                  <node concept="37vLTI" id="5lY$Gq$Kbuf" role="3clFbG">
                    <node concept="37vLTw" id="5lY$Gq$Kbu5" role="37vLTx">
                      <ref role="3cqZAo" node="5lY$Gq$Kbu3" resolve="node_1" />
                    </node>
                    <node concept="2OqwBi" id="5lY$Gq$Kbug" role="37vLTJ">
                      <node concept="3TrEf2" id="5lY$Gq$Kbud" role="2OqNvi">
                        <ref role="3Tt5mk" to="uppz:5lY$Gq$Kbru" />
                      </node>
                      <node concept="37vLTw" id="5lY$Gq$Kbuc" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lY$Gq$Kbua" resolve="node_0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5lY$Gq$Kbuh" role="3cqZAp">
                  <node concept="37vLTw" id="5lY$Gq$Kbui" role="3cqZAk">
                    <ref role="3cqZAo" node="5lY$Gq$Kbua" resolve="node_0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5lY$Gq$Kbuj" role="3EZMnx">
        <property role="3F0ifm" value="&lt;/" />
      </node>
      <node concept="3F0A7n" id="5lY$Gq$Kbuk" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$Kbrz" resolve="Name_2" />
      </node>
      <node concept="3F0ifn" id="5lY$Gq$Kbul" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$Kbum">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="1XX52x" to="uppz:5lY$Gq$Kbri" resolve="Element_2" />
    <node concept="3EZMnI" id="5lY$Gq$Kbun" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$Kbuo" role="2iSdaV" />
      <node concept="3F0ifn" id="5lY$Gq$Kbup" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
      </node>
      <node concept="3F0A7n" id="5lY$Gq$Kbuq" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$Kbr$" resolve="Name_1" />
      </node>
      <node concept="3F2HdR" id="5lY$Gq$Kbur" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$Kbr_" />
        <node concept="3F0ifn" id="5lY$Gq$Kbut" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="5lY$Gq$Kbuu" role="3EZMnx">
        <property role="3F0ifm" value="/&gt;" />
      </node>
    </node>
  </node>
</model>

