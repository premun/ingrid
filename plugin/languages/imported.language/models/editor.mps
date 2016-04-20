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
  <node concept="24kQdi" id="5lY$Gq$LRzL">
    <property role="3GE5qa" value="Rules.Document" />
    <ref role="1XX52x" to="uppz:5lY$Gq$LRz1" resolve="Document" />
    <node concept="3EZMnI" id="5lY$Gq$LRzM" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$LRzN" role="2iSdaV" />
      <node concept="3F2HdR" id="5lY$Gq$LRzO" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$LRzv" />
        <node concept="3F0ifn" id="5lY$Gq$LRzQ" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F2HdR" id="5lY$Gq$LRzR" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$LRzw" />
        <node concept="3F0ifn" id="5lY$Gq$LRzT" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F1sOY" id="5lY$Gq$LRzU" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="uppz:5lY$Gq$LRzx" />
        <node concept="3F0ifn" id="5lY$Gq$LRzV" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$LRzW">
    <property role="3GE5qa" value="Rules.Comment" />
    <ref role="1XX52x" to="uppz:5lY$Gq$LRz3" resolve="Comment" />
    <node concept="3EZMnI" id="5lY$Gq$LRzX" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$LRzY" role="2iSdaV" />
      <node concept="3F0ifn" id="5lY$Gq$LRzZ" role="3EZMnx">
        <property role="3F0ifm" value="&lt;!--" />
      </node>
      <node concept="3F0A7n" id="5lY$Gq$LR$0" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$LRzy" resolve="TEXT_1" />
      </node>
      <node concept="3F0ifn" id="5lY$Gq$LR$1" role="3EZMnx">
        <property role="3F0ifm" value="--&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$LR$2">
    <property role="3GE5qa" value="Rules.Attribute" />
    <ref role="1XX52x" to="uppz:5lY$Gq$LRz5" resolve="Attribute" />
    <node concept="3EZMnI" id="5lY$Gq$LR$3" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$LR$4" role="2iSdaV" />
      <node concept="3F0A7n" id="5lY$Gq$LR$5" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$LRzz" resolve="Name_1" />
      </node>
      <node concept="3F0ifn" id="5lY$Gq$LR$6" role="3EZMnx">
        <property role="3F0ifm" value="=&quot;" />
      </node>
      <node concept="3F0A7n" id="5lY$Gq$LR$7" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$LRz$" resolve="TEXT_2" />
      </node>
      <node concept="3F0ifn" id="5lY$Gq$LR$8" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$LR$9">
    <property role="3GE5qa" value="Rules.Prolog" />
    <ref role="1XX52x" to="uppz:5lY$Gq$LRz7" resolve="Prolog" />
    <node concept="3EZMnI" id="5lY$Gq$LR$a" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$LR$b" role="2iSdaV" />
      <node concept="3F0ifn" id="5lY$Gq$LR$c" role="3EZMnx">
        <property role="3F0ifm" value="&lt;?xml " />
      </node>
      <node concept="3F2HdR" id="5lY$Gq$LR$d" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$LRz_" />
        <node concept="3F0ifn" id="5lY$Gq$LR$f" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="5lY$Gq$LR$g" role="3EZMnx">
        <property role="3F0ifm" value="?&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$LR$h">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="uppz:5lY$Gq$LRza" resolve="Content_1" />
    <node concept="3EZMnI" id="5lY$Gq$LR$i" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$LR$j" role="2iSdaV" />
      <node concept="3F0A7n" id="5lY$Gq$LR$k" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$LRzA" resolve="TEXT_1" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$LR$l">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="uppz:5lY$Gq$LRzd" resolve="Content_2" />
    <node concept="3EZMnI" id="5lY$Gq$LR$m" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$LR$n" role="2iSdaV" />
      <node concept="3F1sOY" id="5lY$Gq$LR$o" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="uppz:5lY$Gq$LRzB" />
        <node concept="3F0ifn" id="5lY$Gq$LR$p" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$LR$q">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="uppz:5lY$Gq$LRzg" resolve="Content_3" />
    <node concept="3EZMnI" id="5lY$Gq$LR$r" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$LR$s" role="2iSdaV" />
      <node concept="3F1sOY" id="5lY$Gq$LR$t" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="uppz:5lY$Gq$LRzC" />
        <node concept="3F0ifn" id="5lY$Gq$LR$u" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$LR$v">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="uppz:5lY$Gq$LRzj" resolve="Content_4" />
    <node concept="3EZMnI" id="5lY$Gq$LR$w" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$LR$x" role="2iSdaV" />
      <node concept="3F1sOY" id="5lY$Gq$LR$y" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="uppz:5lY$Gq$LRzD" />
        <node concept="3F0ifn" id="5lY$Gq$LR$z" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$LR$$">
    <property role="3GE5qa" value="Rules.Cdata" />
    <ref role="1XX52x" to="uppz:5lY$Gq$LRzm" resolve="Cdata" />
    <node concept="3EZMnI" id="5lY$Gq$LR$_" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$LR$A" role="2iSdaV" />
      <node concept="3F0ifn" id="5lY$Gq$LR$B" role="3EZMnx">
        <property role="3F0ifm" value="&lt;![CDATA[" />
      </node>
      <node concept="3F0A7n" id="5lY$Gq$LR$C" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$LRzE" resolve="CDATA_1" />
      </node>
      <node concept="3F0ifn" id="5lY$Gq$LR$D" role="3EZMnx">
        <property role="3F0ifm" value="]]&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$LR$E">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="1XX52x" to="uppz:5lY$Gq$LRzp" resolve="Element_1" />
    <node concept="3EZMnI" id="5lY$Gq$LR$F" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$LR$G" role="2iSdaV" />
      <node concept="3F0ifn" id="5lY$Gq$LR$H" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
      </node>
      <node concept="3F0A7n" id="5lY$Gq$LR$I" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$LRzF" resolve="Name_1" />
      </node>
      <node concept="3F2HdR" id="5lY$Gq$LR$J" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$LRzG" />
        <node concept="3F0ifn" id="5lY$Gq$LR$L" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="5lY$Gq$LR$M" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
      </node>
      <node concept="3F2HdR" id="5lY$Gq$LR$N" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$LRzH" />
        <node concept="3F0ifn" id="5lY$Gq$LR$P" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
        <node concept="OXEIz" id="5lY$Gq$LR$Q" role="1k68KV">
          <node concept="1jCaJL" id="5lY$Gq$LR$R" role="OY2wv">
            <property role="1jDW6S" value="T" />
            <property role="2qtOnZ" value="Text content" />
            <node concept="1jCEMA" id="5lY$Gq$LR$S" role="1jCaCf">
              <node concept="3clFbS" id="5lY$Gq$LR$T" role="2VODD2">
                <node concept="3cpWs8" id="5lY$Gq$LR$Z" role="3cqZAp">
                  <node concept="3cpWsn" id="5lY$Gq$LR$Y" role="3cpWs9">
                    <property role="TrG5h" value="node_0" />
                    <node concept="3Tqbb2" id="5lY$Gq$LR$X" role="1tU5fm">
                      <ref role="ehGHo" to="uppz:5lY$Gq$LRza" resolve="Content_1" />
                    </node>
                    <node concept="2ShNRf" id="5lY$Gq$LR$U" role="33vP2m">
                      <node concept="3zrR0B" id="5lY$Gq$LR$V" role="2ShVmc">
                        <node concept="3Tqbb2" id="5lY$Gq$LR$W" role="3zrR0E">
                          <ref role="ehGHo" to="uppz:5lY$Gq$LRza" resolve="Content_1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lY$Gq$LR_3" role="3cqZAp">
                  <node concept="37vLTI" id="5lY$Gq$LR_4" role="3clFbG">
                    <node concept="2OqwBi" id="5lY$Gq$LR_5" role="37vLTJ">
                      <node concept="3TrcHB" id="5lY$Gq$LR_1" role="2OqNvi">
                        <ref role="3TsBF5" to="uppz:5lY$Gq$LRzb" resolve="__DeleteContext" />
                      </node>
                      <node concept="37vLTw" id="5lY$Gq$LR_0" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lY$Gq$LR$Y" resolve="node_0" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="5lY$Gq$LR_2" role="37vLTx">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5lY$Gq$LR_6" role="3cqZAp">
                  <node concept="37vLTw" id="5lY$Gq$LR_7" role="3cqZAk">
                    <ref role="3cqZAo" node="5lY$Gq$LR$Y" resolve="node_0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1jCaJL" id="5lY$Gq$LR_8" role="OY2wv">
            <property role="1jDW6S" value="&lt;![" />
            <property role="2qtOnZ" value="&lt;![CDATA[ ]]&gt;" />
            <node concept="1jCEMA" id="5lY$Gq$LR_9" role="1jCaCf">
              <node concept="3clFbS" id="5lY$Gq$LR_a" role="2VODD2">
                <node concept="3cpWs8" id="5lY$Gq$LR_g" role="3cqZAp">
                  <node concept="3cpWsn" id="5lY$Gq$LR_f" role="3cpWs9">
                    <property role="TrG5h" value="node_1" />
                    <node concept="3Tqbb2" id="5lY$Gq$LR_e" role="1tU5fm">
                      <ref role="ehGHo" to="uppz:5lY$Gq$LRzm" resolve="Cdata" />
                    </node>
                    <node concept="2ShNRf" id="5lY$Gq$LR_b" role="33vP2m">
                      <node concept="3zrR0B" id="5lY$Gq$LR_c" role="2ShVmc">
                        <node concept="3Tqbb2" id="5lY$Gq$LR_d" role="3zrR0E">
                          <ref role="ehGHo" to="uppz:5lY$Gq$LRzm" resolve="Cdata" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lY$Gq$LR_k" role="3cqZAp">
                  <node concept="37vLTI" id="5lY$Gq$LR_l" role="3clFbG">
                    <node concept="2OqwBi" id="5lY$Gq$LR_m" role="37vLTJ">
                      <node concept="3TrcHB" id="5lY$Gq$LR_i" role="2OqNvi">
                        <ref role="3TsBF5" to="uppz:5lY$Gq$LRzn" resolve="__DeleteContext" />
                      </node>
                      <node concept="37vLTw" id="5lY$Gq$LR_h" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lY$Gq$LR_f" resolve="node_1" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="5lY$Gq$LR_j" role="37vLTx">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5lY$Gq$LR_s" role="3cqZAp">
                  <node concept="3cpWsn" id="5lY$Gq$LR_r" role="3cpWs9">
                    <property role="TrG5h" value="node_0" />
                    <node concept="3Tqbb2" id="5lY$Gq$LR_q" role="1tU5fm">
                      <ref role="ehGHo" to="uppz:5lY$Gq$LRzd" resolve="Content_2" />
                    </node>
                    <node concept="2ShNRf" id="5lY$Gq$LR_n" role="33vP2m">
                      <node concept="3zrR0B" id="5lY$Gq$LR_o" role="2ShVmc">
                        <node concept="3Tqbb2" id="5lY$Gq$LR_p" role="3zrR0E">
                          <ref role="ehGHo" to="uppz:5lY$Gq$LRzd" resolve="Content_2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lY$Gq$LR_w" role="3cqZAp">
                  <node concept="37vLTI" id="5lY$Gq$LR_x" role="3clFbG">
                    <node concept="2OqwBi" id="5lY$Gq$LR_y" role="37vLTJ">
                      <node concept="3TrcHB" id="5lY$Gq$LR_u" role="2OqNvi">
                        <ref role="3TsBF5" to="uppz:5lY$Gq$LRze" resolve="__DeleteContext" />
                      </node>
                      <node concept="37vLTw" id="5lY$Gq$LR_t" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lY$Gq$LR_r" resolve="node_0" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="5lY$Gq$LR_v" role="37vLTx">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lY$Gq$LR_$" role="3cqZAp">
                  <node concept="37vLTI" id="5lY$Gq$LR__" role="3clFbG">
                    <node concept="37vLTw" id="5lY$Gq$LR_A" role="37vLTx">
                      <ref role="3cqZAo" node="5lY$Gq$LR_f" resolve="node_1" />
                    </node>
                    <node concept="2OqwBi" id="5lY$Gq$LR_B" role="37vLTJ">
                      <node concept="3TrEf2" id="5lY$Gq$LR_z" role="2OqNvi">
                        <ref role="3Tt5mk" to="uppz:5lY$Gq$LRzB" />
                      </node>
                      <node concept="37vLTw" id="5lY$Gq$LR_C" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lY$Gq$LR_r" resolve="node_0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5lY$Gq$LR_D" role="3cqZAp">
                  <node concept="37vLTw" id="5lY$Gq$LR_E" role="3cqZAk">
                    <ref role="3cqZAo" node="5lY$Gq$LR_r" resolve="node_0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1jCaJL" id="5lY$Gq$LR_F" role="OY2wv">
            <property role="1jDW6S" value="&lt;!-" />
            <property role="2qtOnZ" value="&lt;!-- --&gt;" />
            <node concept="1jCEMA" id="5lY$Gq$LR_G" role="1jCaCf">
              <node concept="3clFbS" id="5lY$Gq$LR_H" role="2VODD2">
                <node concept="3cpWs8" id="5lY$Gq$LR_N" role="3cqZAp">
                  <node concept="3cpWsn" id="5lY$Gq$LR_M" role="3cpWs9">
                    <property role="TrG5h" value="node_1" />
                    <node concept="3Tqbb2" id="5lY$Gq$LR_L" role="1tU5fm">
                      <ref role="ehGHo" to="uppz:5lY$Gq$LRz3" resolve="Comment" />
                    </node>
                    <node concept="2ShNRf" id="5lY$Gq$LR_I" role="33vP2m">
                      <node concept="3zrR0B" id="5lY$Gq$LR_J" role="2ShVmc">
                        <node concept="3Tqbb2" id="5lY$Gq$LR_K" role="3zrR0E">
                          <ref role="ehGHo" to="uppz:5lY$Gq$LRz3" resolve="Comment" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lY$Gq$LR_R" role="3cqZAp">
                  <node concept="37vLTI" id="5lY$Gq$LR_S" role="3clFbG">
                    <node concept="2OqwBi" id="5lY$Gq$LR_T" role="37vLTJ">
                      <node concept="3TrcHB" id="5lY$Gq$LR_P" role="2OqNvi">
                        <ref role="3TsBF5" to="uppz:5lY$Gq$LRz4" resolve="__DeleteContext" />
                      </node>
                      <node concept="37vLTw" id="5lY$Gq$LR_O" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lY$Gq$LR_M" resolve="node_1" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="5lY$Gq$LR_Q" role="37vLTx">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5lY$Gq$LR_Z" role="3cqZAp">
                  <node concept="3cpWsn" id="5lY$Gq$LR_Y" role="3cpWs9">
                    <property role="TrG5h" value="node_0" />
                    <node concept="3Tqbb2" id="5lY$Gq$LR_X" role="1tU5fm">
                      <ref role="ehGHo" to="uppz:5lY$Gq$LRzg" resolve="Content_3" />
                    </node>
                    <node concept="2ShNRf" id="5lY$Gq$LR_U" role="33vP2m">
                      <node concept="3zrR0B" id="5lY$Gq$LR_V" role="2ShVmc">
                        <node concept="3Tqbb2" id="5lY$Gq$LR_W" role="3zrR0E">
                          <ref role="ehGHo" to="uppz:5lY$Gq$LRzg" resolve="Content_3" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lY$Gq$LRA3" role="3cqZAp">
                  <node concept="37vLTI" id="5lY$Gq$LRA4" role="3clFbG">
                    <node concept="2OqwBi" id="5lY$Gq$LRA5" role="37vLTJ">
                      <node concept="3TrcHB" id="5lY$Gq$LRA1" role="2OqNvi">
                        <ref role="3TsBF5" to="uppz:5lY$Gq$LRzh" resolve="__DeleteContext" />
                      </node>
                      <node concept="37vLTw" id="5lY$Gq$LRA0" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lY$Gq$LR_Y" resolve="node_0" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="5lY$Gq$LRA2" role="37vLTx">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lY$Gq$LRA7" role="3cqZAp">
                  <node concept="37vLTI" id="5lY$Gq$LRA8" role="3clFbG">
                    <node concept="37vLTw" id="5lY$Gq$LRA9" role="37vLTx">
                      <ref role="3cqZAo" node="5lY$Gq$LR_M" resolve="node_1" />
                    </node>
                    <node concept="2OqwBi" id="5lY$Gq$LRAa" role="37vLTJ">
                      <node concept="3TrEf2" id="5lY$Gq$LRA6" role="2OqNvi">
                        <ref role="3Tt5mk" to="uppz:5lY$Gq$LRzC" />
                      </node>
                      <node concept="37vLTw" id="5lY$Gq$LRAb" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lY$Gq$LR_Y" resolve="node_0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5lY$Gq$LRAc" role="3cqZAp">
                  <node concept="37vLTw" id="5lY$Gq$LRAd" role="3cqZAk">
                    <ref role="3cqZAo" node="5lY$Gq$LR_Y" resolve="node_0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1jCaJL" id="5lY$Gq$LRAe" role="OY2wv">
            <property role="1jDW6S" value="&lt; &gt;" />
            <property role="2qtOnZ" value="&lt; &gt; &lt;/ &gt;" />
            <node concept="1jCEMA" id="5lY$Gq$LRAf" role="1jCaCf">
              <node concept="3clFbS" id="5lY$Gq$LRAg" role="2VODD2">
                <node concept="3cpWs8" id="5lY$Gq$LRAm" role="3cqZAp">
                  <node concept="3cpWsn" id="5lY$Gq$LRAl" role="3cpWs9">
                    <property role="TrG5h" value="node_1" />
                    <node concept="3Tqbb2" id="5lY$Gq$LRAk" role="1tU5fm">
                      <ref role="ehGHo" to="uppz:5lY$Gq$LRzp" resolve="Element_1" />
                    </node>
                    <node concept="2ShNRf" id="5lY$Gq$LRAh" role="33vP2m">
                      <node concept="3zrR0B" id="5lY$Gq$LRAi" role="2ShVmc">
                        <node concept="3Tqbb2" id="5lY$Gq$LRAj" role="3zrR0E">
                          <ref role="ehGHo" to="uppz:5lY$Gq$LRzp" resolve="Element_1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lY$Gq$LRAq" role="3cqZAp">
                  <node concept="37vLTI" id="5lY$Gq$LRAr" role="3clFbG">
                    <node concept="2OqwBi" id="5lY$Gq$LRAs" role="37vLTJ">
                      <node concept="3TrcHB" id="5lY$Gq$LRAo" role="2OqNvi">
                        <ref role="3TsBF5" to="uppz:5lY$Gq$LRzq" resolve="__DeleteContext" />
                      </node>
                      <node concept="37vLTw" id="5lY$Gq$LRAn" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lY$Gq$LRAl" resolve="node_1" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="5lY$Gq$LRAp" role="37vLTx">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5lY$Gq$LRAy" role="3cqZAp">
                  <node concept="3cpWsn" id="5lY$Gq$LRAx" role="3cpWs9">
                    <property role="TrG5h" value="node_0" />
                    <node concept="3Tqbb2" id="5lY$Gq$LRAw" role="1tU5fm">
                      <ref role="ehGHo" to="uppz:5lY$Gq$LRzj" resolve="Content_4" />
                    </node>
                    <node concept="2ShNRf" id="5lY$Gq$LRAt" role="33vP2m">
                      <node concept="3zrR0B" id="5lY$Gq$LRAu" role="2ShVmc">
                        <node concept="3Tqbb2" id="5lY$Gq$LRAv" role="3zrR0E">
                          <ref role="ehGHo" to="uppz:5lY$Gq$LRzj" resolve="Content_4" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lY$Gq$LRAA" role="3cqZAp">
                  <node concept="37vLTI" id="5lY$Gq$LRAB" role="3clFbG">
                    <node concept="2OqwBi" id="5lY$Gq$LRAC" role="37vLTJ">
                      <node concept="3TrcHB" id="5lY$Gq$LRA$" role="2OqNvi">
                        <ref role="3TsBF5" to="uppz:5lY$Gq$LRzk" resolve="__DeleteContext" />
                      </node>
                      <node concept="37vLTw" id="5lY$Gq$LRAz" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lY$Gq$LRAx" resolve="node_0" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="5lY$Gq$LRA_" role="37vLTx">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lY$Gq$LRAE" role="3cqZAp">
                  <node concept="37vLTI" id="5lY$Gq$LRAF" role="3clFbG">
                    <node concept="37vLTw" id="5lY$Gq$LRAG" role="37vLTx">
                      <ref role="3cqZAo" node="5lY$Gq$LRAl" resolve="node_1" />
                    </node>
                    <node concept="2OqwBi" id="5lY$Gq$LRAH" role="37vLTJ">
                      <node concept="3TrEf2" id="5lY$Gq$LRAD" role="2OqNvi">
                        <ref role="3Tt5mk" to="uppz:5lY$Gq$LRzD" />
                      </node>
                      <node concept="37vLTw" id="5lY$Gq$LRAI" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lY$Gq$LRAx" resolve="node_0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5lY$Gq$LRAJ" role="3cqZAp">
                  <node concept="37vLTw" id="5lY$Gq$LRAK" role="3cqZAk">
                    <ref role="3cqZAo" node="5lY$Gq$LRAx" resolve="node_0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1jCaJL" id="5lY$Gq$LRAL" role="OY2wv">
            <property role="1jDW6S" value="&lt; /" />
            <property role="2qtOnZ" value="&lt; /&gt;" />
            <node concept="1jCEMA" id="5lY$Gq$LRAM" role="1jCaCf">
              <node concept="3clFbS" id="5lY$Gq$LRAN" role="2VODD2">
                <node concept="3cpWs8" id="5lY$Gq$LRAT" role="3cqZAp">
                  <node concept="3cpWsn" id="5lY$Gq$LRAS" role="3cpWs9">
                    <property role="TrG5h" value="node_1" />
                    <node concept="3Tqbb2" id="5lY$Gq$LRAR" role="1tU5fm">
                      <ref role="ehGHo" to="uppz:5lY$Gq$LRzs" resolve="Element_2" />
                    </node>
                    <node concept="2ShNRf" id="5lY$Gq$LRAO" role="33vP2m">
                      <node concept="3zrR0B" id="5lY$Gq$LRAP" role="2ShVmc">
                        <node concept="3Tqbb2" id="5lY$Gq$LRAQ" role="3zrR0E">
                          <ref role="ehGHo" to="uppz:5lY$Gq$LRzs" resolve="Element_2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lY$Gq$LRAX" role="3cqZAp">
                  <node concept="37vLTI" id="5lY$Gq$LRAY" role="3clFbG">
                    <node concept="2OqwBi" id="5lY$Gq$LRAZ" role="37vLTJ">
                      <node concept="3TrcHB" id="5lY$Gq$LRAV" role="2OqNvi">
                        <ref role="3TsBF5" to="uppz:5lY$Gq$LRzt" resolve="__DeleteContext" />
                      </node>
                      <node concept="37vLTw" id="5lY$Gq$LRAU" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lY$Gq$LRAS" resolve="node_1" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="5lY$Gq$LRAW" role="37vLTx">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5lY$Gq$LRB5" role="3cqZAp">
                  <node concept="3cpWsn" id="5lY$Gq$LRB4" role="3cpWs9">
                    <property role="TrG5h" value="node_0" />
                    <node concept="3Tqbb2" id="5lY$Gq$LRB3" role="1tU5fm">
                      <ref role="ehGHo" to="uppz:5lY$Gq$LRzj" resolve="Content_4" />
                    </node>
                    <node concept="2ShNRf" id="5lY$Gq$LRB0" role="33vP2m">
                      <node concept="3zrR0B" id="5lY$Gq$LRB1" role="2ShVmc">
                        <node concept="3Tqbb2" id="5lY$Gq$LRB2" role="3zrR0E">
                          <ref role="ehGHo" to="uppz:5lY$Gq$LRzj" resolve="Content_4" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lY$Gq$LRB9" role="3cqZAp">
                  <node concept="37vLTI" id="5lY$Gq$LRBa" role="3clFbG">
                    <node concept="2OqwBi" id="5lY$Gq$LRBb" role="37vLTJ">
                      <node concept="3TrcHB" id="5lY$Gq$LRB7" role="2OqNvi">
                        <ref role="3TsBF5" to="uppz:5lY$Gq$LRzk" resolve="__DeleteContext" />
                      </node>
                      <node concept="37vLTw" id="5lY$Gq$LRB6" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lY$Gq$LRB4" resolve="node_0" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="5lY$Gq$LRB8" role="37vLTx">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5lY$Gq$LRBd" role="3cqZAp">
                  <node concept="37vLTI" id="5lY$Gq$LRBe" role="3clFbG">
                    <node concept="37vLTw" id="5lY$Gq$LRBf" role="37vLTx">
                      <ref role="3cqZAo" node="5lY$Gq$LRAS" resolve="node_1" />
                    </node>
                    <node concept="2OqwBi" id="5lY$Gq$LRBg" role="37vLTJ">
                      <node concept="3TrEf2" id="5lY$Gq$LRBc" role="2OqNvi">
                        <ref role="3Tt5mk" to="uppz:5lY$Gq$LRzD" />
                      </node>
                      <node concept="37vLTw" id="5lY$Gq$LRBh" role="2Oq$k0">
                        <ref role="3cqZAo" node="5lY$Gq$LRB4" resolve="node_0" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5lY$Gq$LRBi" role="3cqZAp">
                  <node concept="37vLTw" id="5lY$Gq$LRBj" role="3cqZAk">
                    <ref role="3cqZAo" node="5lY$Gq$LRB4" resolve="node_0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5lY$Gq$LRBk" role="3EZMnx">
        <property role="3F0ifm" value="&lt;/" />
      </node>
      <node concept="3F0A7n" id="5lY$Gq$LRBl" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$LRzI" resolve="Name_2" />
      </node>
      <node concept="3F0ifn" id="5lY$Gq$LRBm" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5lY$Gq$LRBn">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="1XX52x" to="uppz:5lY$Gq$LRzs" resolve="Element_2" />
    <node concept="3EZMnI" id="5lY$Gq$LRBo" role="2wV5jI">
      <node concept="l2Vlx" id="5lY$Gq$LRBp" role="2iSdaV" />
      <node concept="3F0ifn" id="5lY$Gq$LRBq" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
      </node>
      <node concept="3F0A7n" id="5lY$Gq$LRBr" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$LRzJ" resolve="Name_1" />
      </node>
      <node concept="3F2HdR" id="5lY$Gq$LRBs" role="3EZMnx">
        <ref role="1NtTu8" to="uppz:5lY$Gq$LRzK" />
        <node concept="3F0ifn" id="5lY$Gq$LRBu" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="5lY$Gq$LRBv" role="3EZMnx">
        <property role="3F0ifm" value="/&gt;" />
      </node>
    </node>
  </node>
</model>

