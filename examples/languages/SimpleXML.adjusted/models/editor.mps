<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0d46acdd-c43a-4fe7-ae4e-c3624da6ae05(SimpleXML.adjusted.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="3" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="bed5" ref="r:575257f1-368c-46f9-8a2f-eeebf9d70d9a(SimpleXML.adjusted.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1214320119173" name="jetbrains.mps.lang.editor.structure.SideTransformAnchorTagStyleClassItem" flags="ln" index="2V7CMv">
        <property id="1214320119174" name="tag" index="2V7CMs" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="24kQdi" id="6vXZUoCOmjx">
    <property role="3GE5qa" value="Rules.Document" />
    <ref role="1XX52x" to="bed5:6vXZUoCOmiX" resolve="Document" />
    <node concept="3EZMnI" id="6vXZUoCOmjy" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmjz" role="2iSdaV" />
      <node concept="3F1sOY" id="6vXZUoCOmj$" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="bed5:6vXZUoCOmj9" />
        <node concept="3F0ifn" id="6vXZUoCOmj_" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F1sOY" id="6vXZUoCOmjA" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="bed5:6vXZUoCOmja" />
        <node concept="3F0ifn" id="6vXZUoCOmjB" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
        <node concept="pVoyu" id="6vXZUoCU3Kf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="6vXZUoCOmjC" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="bed5:6vXZUoCOmjb" />
        <node concept="3F0ifn" id="6vXZUoCOmjD" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
        <node concept="pVoyu" id="6vXZUoCU3Kh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmjE">
    <property role="3GE5qa" value="Rules.Comment" />
    <ref role="1XX52x" to="bed5:6vXZUoCOmiY" resolve="Comment" />
    <node concept="3EZMnI" id="6vXZUoCOmjF" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmjG" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOmjH" role="3EZMnx">
        <property role="3F0ifm" value="&lt;!--" />
        <node concept="VechU" id="6vXZUoCU3LV" role="3F10Kt">
          <property role="Vb096" value="gray" />
        </node>
      </node>
      <node concept="3F0A7n" id="6vXZUoCOmjI" role="3EZMnx">
        <ref role="1NtTu8" to="bed5:6vXZUoCOmjc" resolve="TEXT_1" />
        <node concept="VechU" id="6vXZUoCU3LX" role="3F10Kt">
          <property role="Vb096" value="gray" />
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmjJ" role="3EZMnx">
        <property role="3F0ifm" value="--&gt;" />
        <node concept="VechU" id="6vXZUoCU3LZ" role="3F10Kt">
          <property role="Vb096" value="gray" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmjK">
    <property role="3GE5qa" value="Rules.Attribute" />
    <ref role="1XX52x" to="bed5:6vXZUoCOmiZ" resolve="Attribute" />
    <node concept="3EZMnI" id="6vXZUoCOmjL" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmjM" role="2iSdaV" />
      <node concept="3F0A7n" id="6vXZUoCOmjN" role="3EZMnx">
        <ref role="1NtTu8" to="bed5:6vXZUoCOmjd" resolve="Name_1" />
        <node concept="Vb9p2" id="6vXZUoCUcB0" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmjO" role="3EZMnx">
        <property role="3F0ifm" value="=" />
        <node concept="11LMrY" id="6vXZUoCU3PI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11L4FC" id="6vXZUoCU3T5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCUcvD" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="11L4FC" id="6vXZUoCUcxt" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="6vXZUoCUczd" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VechU" id="6vXZUoCUc_2" role="3F10Kt">
          <property role="Vb096" value="blue" />
        </node>
      </node>
      <node concept="3F0A7n" id="6vXZUoCOmjP" role="3EZMnx">
        <ref role="1NtTu8" to="bed5:6vXZUoCOmje" resolve="TEXT_2" />
        <node concept="VechU" id="6vXZUoCUc_b" role="3F10Kt">
          <property role="Vb096" value="blue" />
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmjQ" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="11L4FC" id="6vXZUoCU3Ro" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VechU" id="6vXZUoCUc_j" role="3F10Kt">
          <property role="Vb096" value="blue" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmjR">
    <property role="3GE5qa" value="Rules.Prolog" />
    <ref role="1XX52x" to="bed5:6vXZUoCOmj0" resolve="Prolog" />
    <node concept="3EZMnI" id="6vXZUoCOmjS" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmjT" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOmjU" role="3EZMnx">
        <property role="3F0ifm" value="&lt;?xml " />
      </node>
      <node concept="3F2HdR" id="6vXZUoCOmjV" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="bed5:6vXZUoCOmjf" />
        <node concept="3F0ifn" id="6vXZUoCOmjX" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmjY" role="3EZMnx">
        <property role="3F0ifm" value="?&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmjZ">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="bed5:6vXZUoCOmj2" resolve="Content_1" />
    <node concept="3EZMnI" id="6vXZUoCOmk0" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmk1" role="2iSdaV" />
      <node concept="3F0A7n" id="6vXZUoCOmk2" role="3EZMnx">
        <ref role="1NtTu8" to="bed5:6vXZUoCOmjg" resolve="TEXT_1" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmk3">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="bed5:6vXZUoCOmj3" resolve="Content_2" />
    <node concept="3EZMnI" id="6vXZUoCOmk4" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmk5" role="2iSdaV" />
      <node concept="3F1sOY" id="6vXZUoCOmk6" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="bed5:6vXZUoCOmjh" />
        <node concept="3F0ifn" id="6vXZUoCOmk7" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmk8">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="bed5:6vXZUoCOmj4" resolve="Content_3" />
    <node concept="3EZMnI" id="6vXZUoCOmk9" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmka" role="2iSdaV" />
      <node concept="3F1sOY" id="6vXZUoCOmkb" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="bed5:6vXZUoCOmji" />
        <node concept="3F0ifn" id="6vXZUoCOmkc" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmkd">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="bed5:6vXZUoCOmj5" resolve="Content_4" />
    <node concept="3EZMnI" id="6vXZUoCOmke" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmkf" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCV6$k" role="3EZMnx">
        <property role="3F0ifm" value="&lt;![CDATA[" />
        <node concept="VechU" id="6vXZUoCV6Au" role="3F10Kt">
          <property role="Vb096" value="DARK_GREEN" />
        </node>
      </node>
      <node concept="3XFhqQ" id="6vXZUoCV6$G" role="3EZMnx">
        <node concept="pVoyu" id="6vXZUoCV6$O" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="6vXZUoCOmkg" role="3EZMnx">
        <ref role="1NtTu8" to="bed5:6vXZUoCOmjj" resolve="CDATA_1" />
        <node concept="VechU" id="6vXZUoCV6AA" role="3F10Kt">
          <property role="Vb096" value="DARK_GREEN" />
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCV6$s" role="3EZMnx">
        <property role="3F0ifm" value="]]&gt;" />
        <node concept="pVoyu" id="6vXZUoCV6$x" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VechU" id="6vXZUoCV6Az" role="3F10Kt">
          <property role="Vb096" value="DARK_GREEN" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmkh">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="1XX52x" to="bed5:6vXZUoCOmj7" resolve="Element_1" />
    <node concept="3EZMnI" id="6vXZUoCOmki" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmkj" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOmkk" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <node concept="11LMrY" id="6vXZUoCU3TZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="6vXZUoCOmkl" role="3EZMnx">
        <ref role="1NtTu8" to="bed5:6vXZUoCOmjk" resolve="Name" />
        <node concept="VechU" id="6vXZUoCUcCM" role="3F10Kt">
          <node concept="1iSF2X" id="6vXZUoCUcCP" role="VblUZ">
            <property role="1iTho6" value="800080" />
          </node>
        </node>
        <node concept="Vb9p2" id="6vXZUoCUcEA" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
        <node concept="2V7CMv" id="6vXZUoCUMhX" role="3F10Kt">
          <property role="2V7CMs" value="ext_1_RTransform" />
        </node>
      </node>
      <node concept="3F2HdR" id="6vXZUoCOmkm" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="bed5:6vXZUoCOmjl" />
        <node concept="3F0ifn" id="6vXZUoCOmko" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
        <node concept="pkWqt" id="6vXZUoCUffT" role="pqm2j">
          <node concept="3clFbS" id="6vXZUoCUffU" role="2VODD2">
            <node concept="3clFbF" id="6vXZUoCUfgZ" role="3cqZAp">
              <node concept="3eOSWO" id="6vXZUoCUhGH" role="3clFbG">
                <node concept="3cmrfG" id="6vXZUoCUhTi" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="6vXZUoCUfVe" role="3uHU7B">
                  <node concept="2OqwBi" id="6vXZUoCUfko" role="2Oq$k0">
                    <node concept="pncrf" id="6vXZUoCUfgY" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6vXZUoCUfrX" role="2OqNvi">
                      <ref role="3TtcxE" to="bed5:6vXZUoCOmjl" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="6vXZUoCUhws" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmkp" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <node concept="11L4FC" id="6vXZUoCU3UQ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3XFhqQ" id="6vXZUoCU3OB" role="3EZMnx">
        <node concept="pVoyu" id="6vXZUoCU3OQ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="6vXZUoCU3O7" role="3EZMnx">
        <ref role="1NtTu8" to="bed5:6vXZUoCOmjm" />
        <node concept="2iRkQZ" id="6vXZUoCU3Oa" role="2czzBx" />
        <node concept="3F0ifn" id="6vXZUoCU3OS" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmkt" role="3EZMnx">
        <property role="3F0ifm" value="&lt;/" />
        <node concept="pVoyu" id="6vXZUoCU3On" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="6vXZUoCU3WA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="6vXZUoCOmku" role="3EZMnx">
        <ref role="1NtTu8" to="bed5:6vXZUoCOmjk" resolve="Name" />
        <node concept="VechU" id="6vXZUoCUcEI" role="3F10Kt">
          <node concept="1iSF2X" id="6vXZUoCUcEJ" role="VblUZ">
            <property role="1iTho6" value="800080" />
          </node>
        </node>
        <node concept="Vb9p2" id="6vXZUoCUcEK" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmkv" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <node concept="11L4FC" id="6vXZUoCU3Yk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmkw">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="1XX52x" to="bed5:6vXZUoCOmj8" resolve="Element_2" />
    <node concept="3EZMnI" id="6vXZUoCOmkx" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmky" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOmkz" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <node concept="11LMrY" id="6vXZUoCUkrz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="6vXZUoCOmk$" role="3EZMnx">
        <ref role="1NtTu8" to="bed5:6vXZUoCOmjo" resolve="Name_1" />
        <node concept="VechU" id="6vXZUoCUcEQ" role="3F10Kt">
          <node concept="1iSF2X" id="6vXZUoCUcER" role="VblUZ">
            <property role="1iTho6" value="800080" />
          </node>
        </node>
        <node concept="Vb9p2" id="6vXZUoCUcES" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
        <node concept="2V7CMv" id="6vXZUoCUZZ3" role="3F10Kt">
          <property role="2V7CMs" value="ext_1_RTransform" />
        </node>
      </node>
      <node concept="3F2HdR" id="6vXZUoCOmk_" role="3EZMnx">
        <property role="2czwfO" value=" " />
        <ref role="1NtTu8" to="bed5:6vXZUoCOmjp" />
        <node concept="3F0ifn" id="6vXZUoCOmkB" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
        <node concept="pkWqt" id="6vXZUoCUCe3" role="pqm2j">
          <node concept="3clFbS" id="6vXZUoCUCe4" role="2VODD2">
            <node concept="3clFbF" id="6vXZUoCUCf9" role="3cqZAp">
              <node concept="3eOSWO" id="6vXZUoCUHjg" role="3clFbG">
                <node concept="3cmrfG" id="6vXZUoCUHn0" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="6vXZUoCUCTo" role="3uHU7B">
                  <node concept="2OqwBi" id="6vXZUoCUCiy" role="2Oq$k0">
                    <node concept="pncrf" id="6vXZUoCUCf8" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="6vXZUoCUCq7" role="2OqNvi">
                      <ref role="3TtcxE" to="bed5:6vXZUoCOmjp" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="6vXZUoCUGgw" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmkC" role="3EZMnx">
        <property role="3F0ifm" value="/&gt;" />
      </node>
    </node>
  </node>
</model>

