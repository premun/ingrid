<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2f020a47-6504-4458-b0cc-4aadba599656(SimpleXML.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="3" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="locg" ref="r:1a0b49cb-6d48-4068-801c-860b05e14628(SimpleXML.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
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
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="1165339175678" name="jetbrains.mps.lang.editor.structure.CellMenuPart_ReplaceChild_Item" flags="ng" index="1jCaJL">
        <property id="1175117579502" name="descriptionText" index="2qtOnZ" />
        <property id="1165339639991" name="matchingText" index="1jDW6S" />
        <child id="1165339175680" name="createFunction" index="1jCaCf" />
      </concept>
      <concept id="1165339307433" name="jetbrains.mps.lang.editor.structure.CellMenuPart_ReplaceChild_Item_Create" flags="in" index="1jCEMA" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
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
        <reference id="1173177718857" name="elementActionMap" index="APP_o" />
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
      <concept id="1239709577448" name="jetbrains.mps.baseLanguage.structure.PrefixDecrementExpression" flags="nn" index="2$sJ78" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140133623887" name="jetbrains.mps.lang.smodel.structure.Node_DeleteOperation" flags="nn" index="1PgB_6" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
  <node concept="1h_SRR" id="FxYxRU7s_t">
    <property role="TrG5h" value="BackspaceAction" />
    <property role="3GE5qa" value="Actions" />
    <ref role="1h_SK9" to="locg:FxYxRU7s$M" resolve="BaseConcept" />
    <node concept="1hA7zw" id="FxYxRU7s_v" role="1h_SK8">
      <property role="1hAc7j" value="backspace_action_id" />
      <node concept="1hAIg9" id="FxYxRU7s_w" role="1hA7z_">
        <node concept="3clFbS" id="FxYxRU7s_x" role="2VODD2">
          <node concept="3SKdUt" id="FxYxRU7s_y" role="3cqZAp">
            <node concept="3SKdUq" id="FxYxRU7s_z" role="3SKWNk">
              <property role="3SKdUp" value="This action is ran when user presses backspace and deletes a node." />
            </node>
          </node>
          <node concept="3SKdUt" id="FxYxRU7s_$" role="3cqZAp">
            <node concept="3SKdUq" id="FxYxRU7s__" role="3SKWNk">
              <property role="3SKdUp" value="Because multiple layers of concepts could have been silently inserted " />
            </node>
          </node>
          <node concept="3SKdUt" id="FxYxRU7s_A" role="3cqZAp">
            <node concept="3SKdUq" id="FxYxRU7s_B" role="3SKWNk">
              <property role="3SKdUp" value="when user created a concept using the shortcut autocomplete, we need " />
            </node>
          </node>
          <node concept="3SKdUt" id="FxYxRU7s_C" role="3cqZAp">
            <node concept="3SKdUq" id="FxYxRU7s_D" role="3SKWNk">
              <property role="3SKdUp" value="to delete the same amount of levels when deleting the inner concept." />
            </node>
          </node>
          <node concept="3SKdUt" id="FxYxRU7s_E" role="3cqZAp">
            <node concept="3SKdUq" id="FxYxRU7s_F" role="3SKWNk">
              <property role="3SKdUp" value="This action checks for the __DeleteContext property of a currently " />
            </node>
          </node>
          <node concept="3SKdUt" id="FxYxRU7s_G" role="3cqZAp">
            <node concept="3SKdUq" id="FxYxRU7s_H" role="3SKWNk">
              <property role="3SKdUp" value="deleted node and deletes that many layers." />
            </node>
          </node>
          <node concept="3cpWs8" id="FxYxRU7s_I" role="3cqZAp">
            <node concept="3cpWsn" id="FxYxRU7s_J" role="3cpWs9">
              <property role="TrG5h" value="deleteContext" />
              <node concept="10Oyi0" id="FxYxRU7s_K" role="1tU5fm" />
              <node concept="2OqwBi" id="FxYxRU7s_L" role="33vP2m">
                <node concept="3TrcHB" id="FxYxRU7s_u" role="2OqNvi">
                  <ref role="3TsBF5" to="locg:FxYxRU7s$N" resolve="__DeleteContext" />
                </node>
                <node concept="0IXxy" id="FxYxRU7s_M" role="2Oq$k0" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="FxYxRU7s_N" role="3cqZAp" />
          <node concept="3cpWs8" id="FxYxRU7s_O" role="3cqZAp">
            <node concept="3cpWsn" id="FxYxRU7s_P" role="3cpWs9">
              <property role="TrG5h" value="n" />
              <node concept="3Tqbb2" id="FxYxRU7s_Q" role="1tU5fm" />
              <node concept="0IXxy" id="FxYxRU7s_R" role="33vP2m" />
            </node>
          </node>
          <node concept="2$JKZl" id="FxYxRU7s_S" role="3cqZAp">
            <node concept="3clFbS" id="FxYxRU7s_T" role="2LFqv$">
              <node concept="3clFbF" id="FxYxRU7s_U" role="3cqZAp">
                <node concept="37vLTI" id="FxYxRU7s_V" role="3clFbG">
                  <node concept="2OqwBi" id="FxYxRU7s_W" role="37vLTx">
                    <node concept="37vLTw" id="FxYxRU7s_X" role="2Oq$k0">
                      <ref role="3cqZAo" node="FxYxRU7s_P" resolve="n" />
                    </node>
                    <node concept="1mfA1w" id="FxYxRU7s_Y" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="FxYxRU7s_Z" role="37vLTJ">
                    <ref role="3cqZAo" node="FxYxRU7s_P" resolve="n" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eOSWO" id="FxYxRU7sA0" role="2$JKZa">
              <node concept="3cmrfG" id="FxYxRU7sA1" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2$sJ78" id="FxYxRU7sA2" role="3uHU7B">
                <node concept="37vLTw" id="FxYxRU7sA3" role="2$L3a6">
                  <ref role="3cqZAo" node="FxYxRU7s_J" resolve="deleteContext" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="FxYxRU7sA4" role="3cqZAp" />
          <node concept="3clFbF" id="FxYxRU7sA5" role="3cqZAp">
            <node concept="2OqwBi" id="FxYxRU7sA6" role="3clFbG">
              <node concept="37vLTw" id="FxYxRU7sA7" role="2Oq$k0">
                <ref role="3cqZAo" node="FxYxRU7s_P" resolve="n" />
              </node>
              <node concept="1PgB_6" id="FxYxRU7sA8" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="FxYxRU7sA9">
    <property role="3GE5qa" value="Rules.Document" />
    <ref role="1XX52x" to="locg:FxYxRU7s$S" resolve="Document" />
    <node concept="3EZMnI" id="FxYxRU7sAa" role="2wV5jI">
      <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      <node concept="l2Vlx" id="FxYxRU7sAb" role="2iSdaV" />
      <node concept="3F2HdR" id="FxYxRU7sAc" role="3EZMnx">
        <ref role="1NtTu8" to="locg:FxYxRU7s_b" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
        <node concept="3F0ifn" id="FxYxRU7sAe" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F2HdR" id="FxYxRU7sAf" role="3EZMnx">
        <ref role="1NtTu8" to="locg:FxYxRU7s_c" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
        <node concept="3F0ifn" id="FxYxRU7sAh" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F1sOY" id="FxYxRU7sAi" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="locg:FxYxRU7s_d" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
        <node concept="3F0ifn" id="FxYxRU7sAj" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="FxYxRU7sAk">
    <property role="3GE5qa" value="Rules.Comment" />
    <ref role="1XX52x" to="locg:FxYxRU7s$T" resolve="Comment" />
    <node concept="3EZMnI" id="FxYxRU7sAl" role="2wV5jI">
      <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      <node concept="l2Vlx" id="FxYxRU7sAm" role="2iSdaV" />
      <node concept="3F0ifn" id="FxYxRU7sAn" role="3EZMnx">
        <property role="3F0ifm" value="&lt;!--" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
      <node concept="3F0A7n" id="FxYxRU7sAo" role="3EZMnx">
        <ref role="1NtTu8" to="locg:FxYxRU7s_e" resolve="TEXT_1" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
      <node concept="3F0ifn" id="FxYxRU7sAp" role="3EZMnx">
        <property role="3F0ifm" value="--&gt;" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="FxYxRU7sAq">
    <property role="3GE5qa" value="Rules.Attribute" />
    <ref role="1XX52x" to="locg:FxYxRU7s$U" resolve="Attribute" />
    <node concept="3EZMnI" id="FxYxRU7sAr" role="2wV5jI">
      <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      <node concept="l2Vlx" id="FxYxRU7sAs" role="2iSdaV" />
      <node concept="3F0A7n" id="FxYxRU7sAt" role="3EZMnx">
        <ref role="1NtTu8" to="locg:FxYxRU7s_f" resolve="Name_1" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
      <node concept="3F0ifn" id="FxYxRU7sAu" role="3EZMnx">
        <property role="3F0ifm" value="=&quot;" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
      <node concept="3F0A7n" id="FxYxRU7sAv" role="3EZMnx">
        <ref role="1NtTu8" to="locg:FxYxRU7s_g" resolve="TEXT_2" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
      <node concept="3F0ifn" id="FxYxRU7sAw" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="FxYxRU7sAx">
    <property role="3GE5qa" value="Rules.Prolog" />
    <ref role="1XX52x" to="locg:FxYxRU7s$V" resolve="Prolog" />
    <node concept="3EZMnI" id="FxYxRU7sAy" role="2wV5jI">
      <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      <node concept="l2Vlx" id="FxYxRU7sAz" role="2iSdaV" />
      <node concept="3F0ifn" id="FxYxRU7sA$" role="3EZMnx">
        <property role="3F0ifm" value="&lt;?xml " />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
      <node concept="3F2HdR" id="FxYxRU7sA_" role="3EZMnx">
        <ref role="1NtTu8" to="locg:FxYxRU7s_h" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
        <node concept="3F0ifn" id="FxYxRU7sAB" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="FxYxRU7sAC" role="3EZMnx">
        <property role="3F0ifm" value="?&gt;" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="FxYxRU7sAD">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="locg:FxYxRU7s$X" resolve="Content_1" />
    <node concept="3EZMnI" id="FxYxRU7sAE" role="2wV5jI">
      <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      <node concept="l2Vlx" id="FxYxRU7sAF" role="2iSdaV" />
      <node concept="3F0A7n" id="FxYxRU7sAG" role="3EZMnx">
        <ref role="1NtTu8" to="locg:FxYxRU7s_i" resolve="TEXT_1" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="FxYxRU7sAH">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="locg:FxYxRU7s$Z" resolve="Content_2" />
    <node concept="3EZMnI" id="FxYxRU7sAI" role="2wV5jI">
      <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      <node concept="l2Vlx" id="FxYxRU7sAJ" role="2iSdaV" />
      <node concept="3F1sOY" id="FxYxRU7sAK" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="locg:FxYxRU7s_j" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
        <node concept="3F0ifn" id="FxYxRU7sAL" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="FxYxRU7sAM">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="locg:FxYxRU7s_1" resolve="Content_3" />
    <node concept="3EZMnI" id="FxYxRU7sAN" role="2wV5jI">
      <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      <node concept="l2Vlx" id="FxYxRU7sAO" role="2iSdaV" />
      <node concept="3F1sOY" id="FxYxRU7sAP" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="locg:FxYxRU7s_k" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
        <node concept="3F0ifn" id="FxYxRU7sAQ" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="FxYxRU7sAR">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="locg:FxYxRU7s_3" resolve="Content_4" />
    <node concept="3EZMnI" id="FxYxRU7sAS" role="2wV5jI">
      <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      <node concept="l2Vlx" id="FxYxRU7sAT" role="2iSdaV" />
      <node concept="3F1sOY" id="FxYxRU7sAU" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="locg:FxYxRU7s_l" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
        <node concept="3F0ifn" id="FxYxRU7sAV" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="FxYxRU7sAW">
    <property role="3GE5qa" value="Rules.Cdata" />
    <ref role="1XX52x" to="locg:FxYxRU7s_5" resolve="Cdata" />
    <node concept="3EZMnI" id="FxYxRU7sAX" role="2wV5jI">
      <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      <node concept="l2Vlx" id="FxYxRU7sAY" role="2iSdaV" />
      <node concept="3F0ifn" id="FxYxRU7sAZ" role="3EZMnx">
        <property role="3F0ifm" value="&lt;![CDATA[" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
      <node concept="3F0A7n" id="FxYxRU7sB0" role="3EZMnx">
        <ref role="1NtTu8" to="locg:FxYxRU7s_m" resolve="CDATA_1" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
      <node concept="3F0ifn" id="FxYxRU7sB1" role="3EZMnx">
        <property role="3F0ifm" value="]]&gt;" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="FxYxRU7sB2">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="1XX52x" to="locg:FxYxRU7s_7" resolve="Element_1" />
    <node concept="3EZMnI" id="FxYxRU7sB3" role="2wV5jI">
      <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      <node concept="l2Vlx" id="FxYxRU7sB4" role="2iSdaV" />
      <node concept="3F0ifn" id="FxYxRU7sB5" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
      <node concept="3F0A7n" id="FxYxRU7sB6" role="3EZMnx">
        <ref role="1NtTu8" to="locg:FxYxRU7s_n" resolve="Name_1" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
      <node concept="3F2HdR" id="FxYxRU7sB7" role="3EZMnx">
        <ref role="1NtTu8" to="locg:FxYxRU7s_o" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
        <node concept="3F0ifn" id="FxYxRU7sB9" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="FxYxRU7sBa" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
      <node concept="3F2HdR" id="FxYxRU7sBb" role="3EZMnx">
        <ref role="1NtTu8" to="locg:FxYxRU7s_p" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
        <ref role="APP_o" node="FxYxRU7s_t" resolve="BackspaceAction" />
        <node concept="3F0ifn" id="FxYxRU7sBd" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
        <node concept="OXEIz" id="FxYxRU7sBe" role="1k68KV">
          <node concept="1jCaJL" id="FxYxRU7sBf" role="OY2wv">
            <property role="1jDW6S" value="T" />
            <property role="2qtOnZ" value="Text content" />
            <node concept="1jCEMA" id="FxYxRU7sBg" role="1jCaCf">
              <node concept="3clFbS" id="FxYxRU7sBh" role="2VODD2">
                <node concept="3cpWs8" id="FxYxRU7sBn" role="3cqZAp">
                  <node concept="3cpWsn" id="FxYxRU7sBm" role="3cpWs9">
                    <property role="TrG5h" value="node_0" />
                    <node concept="3Tqbb2" id="FxYxRU7sBl" role="1tU5fm">
                      <ref role="ehGHo" to="locg:FxYxRU7s$X" resolve="Content_1" />
                    </node>
                    <node concept="2ShNRf" id="FxYxRU7sBi" role="33vP2m">
                      <node concept="3zrR0B" id="FxYxRU7sBj" role="2ShVmc">
                        <node concept="3Tqbb2" id="FxYxRU7sBk" role="3zrR0E">
                          <ref role="ehGHo" to="locg:FxYxRU7s$X" resolve="Content_1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="FxYxRU7sBr" role="3cqZAp">
                  <node concept="37vLTI" id="FxYxRU7sBs" role="3clFbG">
                    <node concept="2OqwBi" id="FxYxRU7sBt" role="37vLTJ">
                      <node concept="3TrcHB" id="FxYxRU7sBp" role="2OqNvi">
                        <ref role="3TsBF5" to="locg:FxYxRU7s$N" resolve="__DeleteContext" />
                      </node>
                      <node concept="37vLTw" id="FxYxRU7sBo" role="2Oq$k0">
                        <ref role="3cqZAo" node="FxYxRU7sBm" resolve="node_0" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="FxYxRU7sBq" role="37vLTx">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="FxYxRU7sBu" role="3cqZAp">
                  <node concept="37vLTw" id="FxYxRU7sBv" role="3cqZAk">
                    <ref role="3cqZAo" node="FxYxRU7sBm" resolve="node_0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1jCaJL" id="FxYxRU7sBw" role="OY2wv">
            <property role="1jDW6S" value="&lt;![" />
            <property role="2qtOnZ" value="&lt;![CDATA[ ]]&gt;" />
            <node concept="1jCEMA" id="FxYxRU7sBx" role="1jCaCf">
              <node concept="3clFbS" id="FxYxRU7sBy" role="2VODD2">
                <node concept="3cpWs8" id="FxYxRU7sBC" role="3cqZAp">
                  <node concept="3cpWsn" id="FxYxRU7sBB" role="3cpWs9">
                    <property role="TrG5h" value="node_1" />
                    <node concept="3Tqbb2" id="FxYxRU7sBA" role="1tU5fm">
                      <ref role="ehGHo" to="locg:FxYxRU7s_5" resolve="Cdata" />
                    </node>
                    <node concept="2ShNRf" id="FxYxRU7sBz" role="33vP2m">
                      <node concept="3zrR0B" id="FxYxRU7sB$" role="2ShVmc">
                        <node concept="3Tqbb2" id="FxYxRU7sB_" role="3zrR0E">
                          <ref role="ehGHo" to="locg:FxYxRU7s_5" resolve="Cdata" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="FxYxRU7sBG" role="3cqZAp">
                  <node concept="37vLTI" id="FxYxRU7sBH" role="3clFbG">
                    <node concept="2OqwBi" id="FxYxRU7sBI" role="37vLTJ">
                      <node concept="3TrcHB" id="FxYxRU7sBE" role="2OqNvi">
                        <ref role="3TsBF5" to="locg:FxYxRU7s$N" resolve="__DeleteContext" />
                      </node>
                      <node concept="37vLTw" id="FxYxRU7sBD" role="2Oq$k0">
                        <ref role="3cqZAo" node="FxYxRU7sBB" resolve="node_1" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="FxYxRU7sBF" role="37vLTx">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="FxYxRU7sBO" role="3cqZAp">
                  <node concept="3cpWsn" id="FxYxRU7sBN" role="3cpWs9">
                    <property role="TrG5h" value="node_0" />
                    <node concept="3Tqbb2" id="FxYxRU7sBM" role="1tU5fm">
                      <ref role="ehGHo" to="locg:FxYxRU7s$Z" resolve="Content_2" />
                    </node>
                    <node concept="2ShNRf" id="FxYxRU7sBJ" role="33vP2m">
                      <node concept="3zrR0B" id="FxYxRU7sBK" role="2ShVmc">
                        <node concept="3Tqbb2" id="FxYxRU7sBL" role="3zrR0E">
                          <ref role="ehGHo" to="locg:FxYxRU7s$Z" resolve="Content_2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="FxYxRU7sBS" role="3cqZAp">
                  <node concept="37vLTI" id="FxYxRU7sBT" role="3clFbG">
                    <node concept="2OqwBi" id="FxYxRU7sBU" role="37vLTJ">
                      <node concept="3TrcHB" id="FxYxRU7sBQ" role="2OqNvi">
                        <ref role="3TsBF5" to="locg:FxYxRU7s$N" resolve="__DeleteContext" />
                      </node>
                      <node concept="37vLTw" id="FxYxRU7sBP" role="2Oq$k0">
                        <ref role="3cqZAo" node="FxYxRU7sBN" resolve="node_0" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="FxYxRU7sBR" role="37vLTx">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="FxYxRU7sBW" role="3cqZAp">
                  <node concept="37vLTI" id="FxYxRU7sBX" role="3clFbG">
                    <node concept="37vLTw" id="FxYxRU7sBY" role="37vLTx">
                      <ref role="3cqZAo" node="FxYxRU7sBB" resolve="node_1" />
                    </node>
                    <node concept="2OqwBi" id="FxYxRU7sBZ" role="37vLTJ">
                      <node concept="3TrEf2" id="FxYxRU7sBV" role="2OqNvi">
                        <ref role="3Tt5mk" to="locg:FxYxRU7s_j" />
                      </node>
                      <node concept="37vLTw" id="FxYxRU7sC0" role="2Oq$k0">
                        <ref role="3cqZAo" node="FxYxRU7sBN" resolve="node_0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="FxYxRU7sC1" role="3cqZAp">
                  <node concept="37vLTw" id="FxYxRU7sC2" role="3cqZAk">
                    <ref role="3cqZAo" node="FxYxRU7sBN" resolve="node_0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1jCaJL" id="FxYxRU7sC3" role="OY2wv">
            <property role="1jDW6S" value="&lt;!-" />
            <property role="2qtOnZ" value="&lt;!-- --&gt;" />
            <node concept="1jCEMA" id="FxYxRU7sC4" role="1jCaCf">
              <node concept="3clFbS" id="FxYxRU7sC5" role="2VODD2">
                <node concept="3cpWs8" id="FxYxRU7sCb" role="3cqZAp">
                  <node concept="3cpWsn" id="FxYxRU7sCa" role="3cpWs9">
                    <property role="TrG5h" value="node_1" />
                    <node concept="3Tqbb2" id="FxYxRU7sC9" role="1tU5fm">
                      <ref role="ehGHo" to="locg:FxYxRU7s$T" resolve="Comment" />
                    </node>
                    <node concept="2ShNRf" id="FxYxRU7sC6" role="33vP2m">
                      <node concept="3zrR0B" id="FxYxRU7sC7" role="2ShVmc">
                        <node concept="3Tqbb2" id="FxYxRU7sC8" role="3zrR0E">
                          <ref role="ehGHo" to="locg:FxYxRU7s$T" resolve="Comment" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="FxYxRU7sCf" role="3cqZAp">
                  <node concept="37vLTI" id="FxYxRU7sCg" role="3clFbG">
                    <node concept="2OqwBi" id="FxYxRU7sCh" role="37vLTJ">
                      <node concept="3TrcHB" id="FxYxRU7sCd" role="2OqNvi">
                        <ref role="3TsBF5" to="locg:FxYxRU7s$N" resolve="__DeleteContext" />
                      </node>
                      <node concept="37vLTw" id="FxYxRU7sCc" role="2Oq$k0">
                        <ref role="3cqZAo" node="FxYxRU7sCa" resolve="node_1" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="FxYxRU7sCe" role="37vLTx">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="FxYxRU7sCn" role="3cqZAp">
                  <node concept="3cpWsn" id="FxYxRU7sCm" role="3cpWs9">
                    <property role="TrG5h" value="node_0" />
                    <node concept="3Tqbb2" id="FxYxRU7sCl" role="1tU5fm">
                      <ref role="ehGHo" to="locg:FxYxRU7s_1" resolve="Content_3" />
                    </node>
                    <node concept="2ShNRf" id="FxYxRU7sCi" role="33vP2m">
                      <node concept="3zrR0B" id="FxYxRU7sCj" role="2ShVmc">
                        <node concept="3Tqbb2" id="FxYxRU7sCk" role="3zrR0E">
                          <ref role="ehGHo" to="locg:FxYxRU7s_1" resolve="Content_3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="FxYxRU7sCr" role="3cqZAp">
                  <node concept="37vLTI" id="FxYxRU7sCs" role="3clFbG">
                    <node concept="2OqwBi" id="FxYxRU7sCt" role="37vLTJ">
                      <node concept="3TrcHB" id="FxYxRU7sCp" role="2OqNvi">
                        <ref role="3TsBF5" to="locg:FxYxRU7s$N" resolve="__DeleteContext" />
                      </node>
                      <node concept="37vLTw" id="FxYxRU7sCo" role="2Oq$k0">
                        <ref role="3cqZAo" node="FxYxRU7sCm" resolve="node_0" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="FxYxRU7sCq" role="37vLTx">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="FxYxRU7sCv" role="3cqZAp">
                  <node concept="37vLTI" id="FxYxRU7sCw" role="3clFbG">
                    <node concept="37vLTw" id="FxYxRU7sCx" role="37vLTx">
                      <ref role="3cqZAo" node="FxYxRU7sCa" resolve="node_1" />
                    </node>
                    <node concept="2OqwBi" id="FxYxRU7sCy" role="37vLTJ">
                      <node concept="3TrEf2" id="FxYxRU7sCu" role="2OqNvi">
                        <ref role="3Tt5mk" to="locg:FxYxRU7s_k" />
                      </node>
                      <node concept="37vLTw" id="FxYxRU7sCz" role="2Oq$k0">
                        <ref role="3cqZAo" node="FxYxRU7sCm" resolve="node_0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="FxYxRU7sC$" role="3cqZAp">
                  <node concept="37vLTw" id="FxYxRU7sC_" role="3cqZAk">
                    <ref role="3cqZAo" node="FxYxRU7sCm" resolve="node_0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1jCaJL" id="FxYxRU7sCA" role="OY2wv">
            <property role="1jDW6S" value="&lt; &gt;" />
            <property role="2qtOnZ" value="&lt; &gt; &lt;/ &gt;" />
            <node concept="1jCEMA" id="FxYxRU7sCB" role="1jCaCf">
              <node concept="3clFbS" id="FxYxRU7sCC" role="2VODD2">
                <node concept="3cpWs8" id="FxYxRU7sCI" role="3cqZAp">
                  <node concept="3cpWsn" id="FxYxRU7sCH" role="3cpWs9">
                    <property role="TrG5h" value="node_1" />
                    <node concept="3Tqbb2" id="FxYxRU7sCG" role="1tU5fm">
                      <ref role="ehGHo" to="locg:FxYxRU7s_7" resolve="Element_1" />
                    </node>
                    <node concept="2ShNRf" id="FxYxRU7sCD" role="33vP2m">
                      <node concept="3zrR0B" id="FxYxRU7sCE" role="2ShVmc">
                        <node concept="3Tqbb2" id="FxYxRU7sCF" role="3zrR0E">
                          <ref role="ehGHo" to="locg:FxYxRU7s_7" resolve="Element_1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="FxYxRU7sCM" role="3cqZAp">
                  <node concept="37vLTI" id="FxYxRU7sCN" role="3clFbG">
                    <node concept="2OqwBi" id="FxYxRU7sCO" role="37vLTJ">
                      <node concept="3TrcHB" id="FxYxRU7sCK" role="2OqNvi">
                        <ref role="3TsBF5" to="locg:FxYxRU7s$N" resolve="__DeleteContext" />
                      </node>
                      <node concept="37vLTw" id="FxYxRU7sCJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="FxYxRU7sCH" resolve="node_1" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="FxYxRU7sCL" role="37vLTx">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="FxYxRU7sCU" role="3cqZAp">
                  <node concept="3cpWsn" id="FxYxRU7sCT" role="3cpWs9">
                    <property role="TrG5h" value="node_0" />
                    <node concept="3Tqbb2" id="FxYxRU7sCS" role="1tU5fm">
                      <ref role="ehGHo" to="locg:FxYxRU7s_3" resolve="Content_4" />
                    </node>
                    <node concept="2ShNRf" id="FxYxRU7sCP" role="33vP2m">
                      <node concept="3zrR0B" id="FxYxRU7sCQ" role="2ShVmc">
                        <node concept="3Tqbb2" id="FxYxRU7sCR" role="3zrR0E">
                          <ref role="ehGHo" to="locg:FxYxRU7s_3" resolve="Content_4" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="FxYxRU7sCY" role="3cqZAp">
                  <node concept="37vLTI" id="FxYxRU7sCZ" role="3clFbG">
                    <node concept="2OqwBi" id="FxYxRU7sD0" role="37vLTJ">
                      <node concept="3TrcHB" id="FxYxRU7sCW" role="2OqNvi">
                        <ref role="3TsBF5" to="locg:FxYxRU7s$N" resolve="__DeleteContext" />
                      </node>
                      <node concept="37vLTw" id="FxYxRU7sCV" role="2Oq$k0">
                        <ref role="3cqZAo" node="FxYxRU7sCT" resolve="node_0" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="FxYxRU7sCX" role="37vLTx">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="FxYxRU7sD2" role="3cqZAp">
                  <node concept="37vLTI" id="FxYxRU7sD3" role="3clFbG">
                    <node concept="37vLTw" id="FxYxRU7sD4" role="37vLTx">
                      <ref role="3cqZAo" node="FxYxRU7sCH" resolve="node_1" />
                    </node>
                    <node concept="2OqwBi" id="FxYxRU7sD5" role="37vLTJ">
                      <node concept="3TrEf2" id="FxYxRU7sD1" role="2OqNvi">
                        <ref role="3Tt5mk" to="locg:FxYxRU7s_l" />
                      </node>
                      <node concept="37vLTw" id="FxYxRU7sD6" role="2Oq$k0">
                        <ref role="3cqZAo" node="FxYxRU7sCT" resolve="node_0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="FxYxRU7sD7" role="3cqZAp">
                  <node concept="37vLTw" id="FxYxRU7sD8" role="3cqZAk">
                    <ref role="3cqZAo" node="FxYxRU7sCT" resolve="node_0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1jCaJL" id="FxYxRU7sD9" role="OY2wv">
            <property role="1jDW6S" value="&lt; /" />
            <property role="2qtOnZ" value="&lt; /&gt;" />
            <node concept="1jCEMA" id="FxYxRU7sDa" role="1jCaCf">
              <node concept="3clFbS" id="FxYxRU7sDb" role="2VODD2">
                <node concept="3cpWs8" id="FxYxRU7sDh" role="3cqZAp">
                  <node concept="3cpWsn" id="FxYxRU7sDg" role="3cpWs9">
                    <property role="TrG5h" value="node_1" />
                    <node concept="3Tqbb2" id="FxYxRU7sDf" role="1tU5fm">
                      <ref role="ehGHo" to="locg:FxYxRU7s_9" resolve="Element_2" />
                    </node>
                    <node concept="2ShNRf" id="FxYxRU7sDc" role="33vP2m">
                      <node concept="3zrR0B" id="FxYxRU7sDd" role="2ShVmc">
                        <node concept="3Tqbb2" id="FxYxRU7sDe" role="3zrR0E">
                          <ref role="ehGHo" to="locg:FxYxRU7s_9" resolve="Element_2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="FxYxRU7sDl" role="3cqZAp">
                  <node concept="37vLTI" id="FxYxRU7sDm" role="3clFbG">
                    <node concept="2OqwBi" id="FxYxRU7sDn" role="37vLTJ">
                      <node concept="3TrcHB" id="FxYxRU7sDj" role="2OqNvi">
                        <ref role="3TsBF5" to="locg:FxYxRU7s$N" resolve="__DeleteContext" />
                      </node>
                      <node concept="37vLTw" id="FxYxRU7sDi" role="2Oq$k0">
                        <ref role="3cqZAo" node="FxYxRU7sDg" resolve="node_1" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="FxYxRU7sDk" role="37vLTx">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="FxYxRU7sDt" role="3cqZAp">
                  <node concept="3cpWsn" id="FxYxRU7sDs" role="3cpWs9">
                    <property role="TrG5h" value="node_0" />
                    <node concept="3Tqbb2" id="FxYxRU7sDr" role="1tU5fm">
                      <ref role="ehGHo" to="locg:FxYxRU7s_3" resolve="Content_4" />
                    </node>
                    <node concept="2ShNRf" id="FxYxRU7sDo" role="33vP2m">
                      <node concept="3zrR0B" id="FxYxRU7sDp" role="2ShVmc">
                        <node concept="3Tqbb2" id="FxYxRU7sDq" role="3zrR0E">
                          <ref role="ehGHo" to="locg:FxYxRU7s_3" resolve="Content_4" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="FxYxRU7sDx" role="3cqZAp">
                  <node concept="37vLTI" id="FxYxRU7sDy" role="3clFbG">
                    <node concept="2OqwBi" id="FxYxRU7sDz" role="37vLTJ">
                      <node concept="3TrcHB" id="FxYxRU7sDv" role="2OqNvi">
                        <ref role="3TsBF5" to="locg:FxYxRU7s$N" resolve="__DeleteContext" />
                      </node>
                      <node concept="37vLTw" id="FxYxRU7sDu" role="2Oq$k0">
                        <ref role="3cqZAo" node="FxYxRU7sDs" resolve="node_0" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="FxYxRU7sDw" role="37vLTx">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="FxYxRU7sD_" role="3cqZAp">
                  <node concept="37vLTI" id="FxYxRU7sDA" role="3clFbG">
                    <node concept="37vLTw" id="FxYxRU7sDB" role="37vLTx">
                      <ref role="3cqZAo" node="FxYxRU7sDg" resolve="node_1" />
                    </node>
                    <node concept="2OqwBi" id="FxYxRU7sDC" role="37vLTJ">
                      <node concept="3TrEf2" id="FxYxRU7sD$" role="2OqNvi">
                        <ref role="3Tt5mk" to="locg:FxYxRU7s_l" />
                      </node>
                      <node concept="37vLTw" id="FxYxRU7sDD" role="2Oq$k0">
                        <ref role="3cqZAo" node="FxYxRU7sDs" resolve="node_0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="FxYxRU7sDE" role="3cqZAp">
                  <node concept="37vLTw" id="FxYxRU7sDF" role="3cqZAk">
                    <ref role="3cqZAo" node="FxYxRU7sDs" resolve="node_0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="FxYxRU7sDG" role="3EZMnx">
        <property role="3F0ifm" value="&lt;/" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
      <node concept="3F0A7n" id="FxYxRU7sDH" role="3EZMnx">
        <ref role="1NtTu8" to="locg:FxYxRU7s_q" resolve="Name_2" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
      <node concept="3F0ifn" id="FxYxRU7sDI" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="FxYxRU7sDJ">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="1XX52x" to="locg:FxYxRU7s_9" resolve="Element_2" />
    <node concept="3EZMnI" id="FxYxRU7sDK" role="2wV5jI">
      <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      <node concept="l2Vlx" id="FxYxRU7sDL" role="2iSdaV" />
      <node concept="3F0ifn" id="FxYxRU7sDM" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
      <node concept="3F0A7n" id="FxYxRU7sDN" role="3EZMnx">
        <ref role="1NtTu8" to="locg:FxYxRU7s_r" resolve="Name_1" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
      <node concept="3F2HdR" id="FxYxRU7sDO" role="3EZMnx">
        <ref role="1NtTu8" to="locg:FxYxRU7s_s" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
        <node concept="3F0ifn" id="FxYxRU7sDQ" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="FxYxRU7sDR" role="3EZMnx">
        <property role="3F0ifm" value="/&gt;" />
        <ref role="1ERwB7" node="FxYxRU7s_t" resolve="BackspaceAction" />
      </node>
    </node>
  </node>
</model>

