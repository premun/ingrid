<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1a49883f-4f03-4f2b-8139-817650206b71(JSON.adjusted.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="3" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="s3xm" ref="r:22421599-0862-44d6-9aa7-f3ea12d8f84f(JSON.adjusted.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1225456267680" name="jetbrains.mps.lang.editor.structure.RGBColor" flags="ng" index="1iSF2X">
        <property id="1225456424731" name="value" index="1iTho6" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
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
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY">
        <property id="16410578721444372" name="customizeEmptyCell" index="2ru_X1" />
        <child id="16410578721629643" name="emptyCellModel" index="2ruayu" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
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
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
    </language>
  </registry>
  <node concept="24kQdi" id="6vXZUoCOmaC">
    <property role="3GE5qa" value="Rules.Pair" />
    <ref role="1XX52x" to="s3xm:6vXZUoCOm9K" resolve="Pair" />
    <node concept="3EZMnI" id="6vXZUoCOmaD" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmaE" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOmaF" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="VechU" id="6vXZUoCSFP0" role="3F10Kt">
          <node concept="1iSF2X" id="6vXZUoCSFSp" role="VblUZ">
            <property role="1iTho6" value="BA8800" />
          </node>
        </node>
        <node concept="11LMrY" id="6vXZUoCSZJ3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="6vXZUoCSRU2" role="3EZMnx">
        <ref role="1NtTu8" to="s3xm:6vXZUoCOma4" resolve="STRING_1" />
        <node concept="VechU" id="6vXZUoCSS1a" role="3F10Kt">
          <node concept="1iSF2X" id="6vXZUoCSS1c" role="VblUZ">
            <property role="1iTho6" value="BA8800" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmaH" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="VechU" id="6vXZUoCSFZT" role="3F10Kt">
          <node concept="1iSF2X" id="6vXZUoCSFZU" role="VblUZ">
            <property role="1iTho6" value="BA8800" />
          </node>
        </node>
        <node concept="11L4FC" id="6vXZUoCSXu6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCSFW7" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="6vXZUoCSZKM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="6vXZUoCOmaI" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="s3xm:6vXZUoCOma5" />
        <node concept="3F0ifn" id="6vXZUoCOmaJ" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCSvk_" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="pkWqt" id="6vXZUoCSvlt" role="pqm2j">
          <node concept="3clFbS" id="6vXZUoCSvlu" role="2VODD2">
            <node concept="3cpWs8" id="6vXZUoCSvNV" role="3cqZAp">
              <node concept="3cpWsn" id="6vXZUoCSvNY" role="3cpWs9">
                <property role="TrG5h" value="p" />
                <node concept="3Tqbb2" id="6vXZUoCSvNU" role="1tU5fm">
                  <ref role="ehGHo" to="s3xm:6vXZUoCOma1" resolve="Object_1" />
                </node>
                <node concept="1PxgMI" id="6vXZUoCSwdS" role="33vP2m">
                  <property role="1BlNFB" value="true" />
                  <ref role="1PxNhF" to="s3xm:6vXZUoCOma1" resolve="Object_1" />
                  <node concept="2OqwBi" id="6vXZUoCSvTD" role="1PxMeX">
                    <node concept="pncrf" id="6vXZUoCSvRo" role="2Oq$k0" />
                    <node concept="1mfA1w" id="6vXZUoCSw7y" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6vXZUoCSyU7" role="3cqZAp">
              <node concept="3y3z36" id="6vXZUoCSz0B" role="3cqZAk">
                <node concept="2OqwBi" id="6vXZUoCSx3I" role="3uHU7B">
                  <node concept="2OqwBi" id="6vXZUoCSwp7" role="2Oq$k0">
                    <node concept="37vLTw" id="6vXZUoCSwkO" role="2Oq$k0">
                      <ref role="3cqZAo" node="6vXZUoCSvNY" resolve="p" />
                    </node>
                    <node concept="3Tsc0h" id="6vXZUoCSwxG" role="2OqNvi">
                      <ref role="3TtcxE" to="s3xm:6vXZUoCOmaf" />
                    </node>
                  </node>
                  <node concept="1yVyf7" id="6vXZUoCSyDF" role="2OqNvi" />
                </node>
                <node concept="pncrf" id="6vXZUoCSyM9" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
        <node concept="11L4FC" id="6vXZUoCSZMw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmaQ">
    <property role="3GE5qa" value="Rules.Array" />
    <ref role="1XX52x" to="s3xm:6vXZUoCOm9N" resolve="Array_1" />
    <node concept="3EZMnI" id="6vXZUoCOmaR" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmaS" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOmaT" role="3EZMnx">
        <property role="3F0ifm" value="[" />
      </node>
      <node concept="3XFhqQ" id="6vXZUoCRtds" role="3EZMnx">
        <node concept="pVoyu" id="6vXZUoCRtd_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="6vXZUoCRtd2" role="3EZMnx">
        <ref role="1NtTu8" to="s3xm:6vXZUoCOma7" />
        <node concept="2iRkQZ" id="6vXZUoCRtd5" role="2czzBx" />
        <node concept="3F0ifn" id="6vXZUoCRtdg" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
        <node concept="ljvvj" id="6vXZUoCRtdi" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmaZ" role="3EZMnx">
        <property role="3F0ifm" value="]" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmb5">
    <property role="3GE5qa" value="Rules.Json" />
    <ref role="1XX52x" to="s3xm:6vXZUoCOm9Q" resolve="Json_1" />
    <node concept="3EZMnI" id="6vXZUoCOmb6" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmb7" role="2iSdaV" />
      <node concept="3F1sOY" id="6vXZUoCOmb8" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="s3xm:6vXZUoCOma9" />
        <node concept="3F0ifn" id="6vXZUoCOmb9" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmba">
    <property role="3GE5qa" value="Rules.Json" />
    <ref role="1XX52x" to="s3xm:6vXZUoCOm9R" resolve="Json_2" />
    <node concept="3EZMnI" id="6vXZUoCOmbb" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmbc" role="2iSdaV" />
      <node concept="3F1sOY" id="6vXZUoCOmbd" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="s3xm:6vXZUoCOmaa" />
        <node concept="3F0ifn" id="6vXZUoCOmbe" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmbf">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="s3xm:6vXZUoCOm9T" resolve="Value_1" />
    <node concept="3EZMnI" id="6vXZUoCOmbg" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmbh" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOmbi" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="VechU" id="6vXZUoCSG0L" role="3F10Kt">
          <node concept="1iSF2X" id="6vXZUoCSG0M" role="VblUZ">
            <property role="1iTho6" value="CC0000" />
          </node>
        </node>
        <node concept="11LMrY" id="6vXZUoCT29q" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="6vXZUoCOmbj" role="3EZMnx">
        <ref role="1NtTu8" to="s3xm:6vXZUoCOmab" resolve="STRING_1" />
        <node concept="VechU" id="6vXZUoCSG0P" role="3F10Kt">
          <node concept="1iSF2X" id="6vXZUoCSG0Q" role="VblUZ">
            <property role="1iTho6" value="CC0000" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmbk" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="VechU" id="6vXZUoCSG0T" role="3F10Kt">
          <node concept="1iSF2X" id="6vXZUoCSG0U" role="VblUZ">
            <property role="1iTho6" value="CC0000" />
          </node>
        </node>
        <node concept="11L4FC" id="6vXZUoCT27_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmbl">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="s3xm:6vXZUoCOm9U" resolve="Value_2" />
    <node concept="3EZMnI" id="6vXZUoCOmbm" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmbn" role="2iSdaV" />
      <node concept="3F0A7n" id="6vXZUoCOmbo" role="3EZMnx">
        <ref role="1NtTu8" to="s3xm:6vXZUoCOmac" resolve="NUMBER_1" />
        <node concept="VechU" id="6vXZUoCSG2_" role="3F10Kt">
          <property role="Vb096" value="blue" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmbp">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="s3xm:6vXZUoCOm9V" resolve="Value_3" />
    <node concept="3EZMnI" id="6vXZUoCOmbq" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmbr" role="2iSdaV" />
      <node concept="3F1sOY" id="6vXZUoCOmbs" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="s3xm:6vXZUoCOmad" />
        <node concept="3F0ifn" id="6vXZUoCOmbt" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmbu">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="s3xm:6vXZUoCOm9W" resolve="Value_4" />
    <node concept="3EZMnI" id="6vXZUoCOmbv" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmbw" role="2iSdaV" />
      <node concept="3F1sOY" id="6vXZUoCOmbx" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="s3xm:6vXZUoCOmae" />
        <node concept="3F0ifn" id="6vXZUoCOmby" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmbz">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="s3xm:6vXZUoCOm9X" resolve="Value_5" />
    <node concept="3EZMnI" id="6vXZUoCOmb$" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmb_" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOmbA" role="3EZMnx">
        <property role="3F0ifm" value="true" />
        <node concept="VechU" id="6vXZUoCSIfN" role="3F10Kt">
          <property role="Vb096" value="DARK_GREEN" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmbB">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="s3xm:6vXZUoCOm9Y" resolve="Value_6" />
    <node concept="3EZMnI" id="6vXZUoCOmbC" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmbD" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOmbE" role="3EZMnx">
        <property role="3F0ifm" value="false" />
        <node concept="VechU" id="6vXZUoCSIfQ" role="3F10Kt">
          <property role="Vb096" value="DARK_GREEN" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmbF">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="s3xm:6vXZUoCOm9Z" resolve="Value_7" />
    <node concept="3EZMnI" id="6vXZUoCOmbG" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmbH" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOmbI" role="3EZMnx">
        <property role="3F0ifm" value="null" />
        <node concept="VechU" id="6vXZUoCSKtL" role="3F10Kt">
          <property role="Vb096" value="DARK_GREEN" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmbJ">
    <property role="3GE5qa" value="Rules.Object" />
    <ref role="1XX52x" to="s3xm:6vXZUoCOma1" resolve="Object_1" />
    <node concept="3EZMnI" id="6vXZUoCOmbK" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmbL" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOmbM" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3XFhqQ" id="6vXZUoCRnno" role="3EZMnx">
        <node concept="pVoyu" id="6vXZUoCRnnx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="6vXZUoCRnn3" role="3EZMnx">
        <ref role="1NtTu8" to="s3xm:6vXZUoCOmaf" />
        <node concept="2iRkQZ" id="6vXZUoCRnn6" role="2czzBx" />
        <node concept="3F0ifn" id="6vXZUoCRnnb" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmbS" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="pVoyu" id="6vXZUoCRnn$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
</model>

