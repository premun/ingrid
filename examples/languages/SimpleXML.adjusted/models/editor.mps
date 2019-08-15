<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0d46acdd-c43a-4fe7-ae4e-c3624da6ae05(SimpleXML.adjusted.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="bed5" ref="r:575257f1-368c-46f9-8a2f-eeebf9d70d9a(SimpleXML.adjusted.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="6089045305654894366" name="jetbrains.mps.lang.editor.structure.SubstituteMenuReference_Default" flags="ng" index="2kknPJ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="562388756446465666" name="jetbrains.mps.lang.editor.structure.MigratedSideTransformMenuAttribute" flags="ng" index="yp4Wq">
        <property id="562388756446465811" name="transformTag" index="yp4Ub" />
      </concept>
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha">
        <property id="2162403111523065396" name="cellId" index="1lyBwo" />
      </concept>
      <concept id="3473224453637651916" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform_PlaceInCellHolder" flags="ng" index="CtIbL">
        <property id="3473224453637651917" name="placeInCell" index="CtIbK" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1630016958697718209" name="jetbrains.mps.lang.editor.structure.IMenuReference_Default" flags="ng" index="2Z_bC8">
        <reference id="1630016958698373342" name="concept" index="2ZyFGn" />
      </concept>
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ng" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1896914160037421068" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_WrapSubstituteMenu" flags="ng" index="3c8P5G">
        <child id="1896914160037421069" name="menuReference" index="3c8P5H" />
        <child id="1896914160037423677" name="handler" index="3c8PHt" />
      </concept>
      <concept id="1896914160037423680" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_WrapperHandler" flags="ig" index="3c8PGw" />
      <concept id="1896914160037437306" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_CreatedNode" flags="ng" index="3c8USq" />
      <concept id="2896773699153795590" name="jetbrains.mps.lang.editor.structure.TransformationLocation_SideTransform" flags="ng" index="3cWJ9i">
        <child id="3473224453637651919" name="placeInCell" index="CtIbM" />
      </concept>
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
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
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY">
        <property id="16410578721444372" name="customizeEmptyCell" index="2ru_X1" />
        <child id="16410578721629643" name="emptyCellModel" index="2ruayu" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="5624877018226904808" name="jetbrains.mps.lang.editor.structure.TransformationMenu_Named" flags="ng" index="3ICXOK" />
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ng" index="3INCJE">
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
      </concept>
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
        <child id="3604384757217586546" name="selectionStart" index="3dN3m$" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="7980428675268276156" name="jetbrains.mps.lang.editor.structure.TransformationMenuSection" flags="ng" index="1Qtc8_">
        <child id="7980428675268276157" name="locations" index="1Qtc8$" />
        <child id="7980428675268276159" name="parts" index="1Qtc8A" />
      </concept>
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
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1225621920911" name="jetbrains.mps.baseLanguage.collections.structure.InsertElementOperation" flags="nn" index="1sK_Qi">
        <child id="1225621943565" name="element" index="1sKFgg" />
        <child id="1225621960341" name="index" index="1sKJu8" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="6vXZUoCOmjx">
    <property role="3GE5qa" value="Rules.Document" />
    <ref role="1XX52x" to="bed5:6vXZUoCOmiX" resolve="Document" />
    <node concept="3EZMnI" id="6vXZUoCOmjy" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmjz" role="2iSdaV" />
      <node concept="3F1sOY" id="6vXZUoCOmj$" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="bed5:6vXZUoCOmj9" resolve="Prolog_1" />
        <node concept="3F0ifn" id="6vXZUoCOmj_" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F1sOY" id="6vXZUoCOmjA" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="bed5:6vXZUoCOmja" resolve="Comment_2" />
        <node concept="3F0ifn" id="6vXZUoCOmjB" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
        <node concept="pVoyu" id="6vXZUoCU3Kf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="6vXZUoCOmjC" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="bed5:6vXZUoCOmjb" resolve="Element_3" />
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
        <ref role="1NtTu8" to="bed5:6vXZUoCOmjf" resolve="Attribute_1" />
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
        <ref role="1NtTu8" to="bed5:6vXZUoCOmjh" resolve="Element_1" />
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
        <ref role="1NtTu8" to="bed5:6vXZUoCOmji" resolve="Comment_1" />
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
  <node concept="24kQdi" id="6vXZUoCOmkw">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="1XX52x" to="bed5:6vXZUoCOmj8" resolve="Element_2" />
    <node concept="3EZMnI" id="4zIbLIvbq9A" role="2wV5jI">
      <node concept="l2Vlx" id="4zIbLIvbq9B" role="2iSdaV" />
      <node concept="3F0ifn" id="4zIbLIvbq9C" role="3EZMnx">
        <property role="3F0ifm" value="element_2" />
      </node>
      <node concept="3F0ifn" id="4zIbLIvbq9D" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11L4FC" id="4zIbLIvbq9E" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3mYdg7" id="4zIbLIvbq9F" role="3F10Kt">
          <property role="1413C4" value="body-paren" />
        </node>
        <node concept="11LMrY" id="4zIbLIvbq9G" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="4zIbLIvbq9H" role="3EZMnx">
        <property role="3F0ifm" value="name_1" />
      </node>
      <node concept="3F0ifn" id="4zIbLIvbq9I" role="3EZMnx">
        <property role="3F0ifm" value=":" />
        <node concept="11L4FC" id="4zIbLIvbq9J" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="4zIbLIvbq9K" role="3EZMnx">
        <ref role="1NtTu8" to="bed5:6vXZUoCOmjo" resolve="Name_1" />
      </node>
      <node concept="3F0ifn" id="4zIbLIvbq9L" role="3EZMnx">
        <property role="3F0ifm" value="," />
        <node concept="11L4FC" id="4zIbLIvbq9M" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="4zIbLIvbq9N" role="3EZMnx">
        <property role="3F0ifm" value="attribute_1" />
      </node>
      <node concept="3F0ifn" id="4zIbLIvbq9O" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11L4FC" id="4zIbLIvbq9P" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3mYdg7" id="4zIbLIvbq9Q" role="3F10Kt">
          <property role="1413C4" value="paren-Attribute_1" />
        </node>
        <node concept="11LMrY" id="4zIbLIvbq9R" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="4zIbLIvbq9S" role="3EZMnx">
        <ref role="1NtTu8" to="bed5:6vXZUoCOmjp" resolve="Attribute_1" />
        <node concept="l2Vlx" id="4zIbLIvbq9T" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="4zIbLIvbq9U" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="4zIbLIvbq9V" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3mYdg7" id="4zIbLIvbq9W" role="3F10Kt">
          <property role="1413C4" value="paren-Attribute_1" />
        </node>
      </node>
      <node concept="3F0ifn" id="4zIbLIvbq9X" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="4zIbLIvbq9Y" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3mYdg7" id="4zIbLIvbq9Z" role="3F10Kt">
          <property role="1413C4" value="body-paren" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICXOK" id="5x5bWrf4pzM">
    <property role="TrG5h" value="transform_Element_2_Attributes" />
    <ref role="aqKnT" to="bed5:6vXZUoCOmj8" resolve="Element_2" />
    <node concept="yp4Wq" id="5x5bWrf4pzN" role="lGtFl">
      <property role="yp4Ub" value="ext_1_RTransform" />
    </node>
    <node concept="1Qtc8_" id="5x5bWrf4pzQ" role="IW6Ez">
      <node concept="3cWJ9i" id="5x5bWrf4pzO" role="1Qtc8$">
        <node concept="CtIbL" id="5x5bWrf4pzP" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="3c8P5G" id="5x5bWrf4pzS" role="1Qtc8A">
        <node concept="2kknPJ" id="5x5bWrf4pzT" role="3c8P5H">
          <ref role="2ZyFGn" to="bed5:6vXZUoCOmiZ" resolve="Attribute" />
        </node>
        <node concept="3c8PGw" id="5x5bWrf4pzU" role="3c8PHt">
          <node concept="3clFbS" id="5x5bWrf4pzV" role="2VODD2">
            <node concept="3clFbF" id="5x5bWrf4p$b" role="3cqZAp">
              <node concept="2OqwBi" id="5x5bWrf4p$6" role="3clFbG">
                <node concept="2OqwBi" id="5x5bWrf4pzX" role="2Oq$k0">
                  <node concept="2OqwBi" id="5x5bWrf4pzY" role="2Oq$k0">
                    <node concept="7Obwk" id="5x5bWrf4p$4" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5x5bWrf4p$0" role="2OqNvi">
                      <ref role="3TtcxE" to="bed5:6vXZUoCOmjp" resolve="Attribute_1" />
                    </node>
                  </node>
                  <node concept="1sK_Qi" id="5x5bWrf4p$1" role="2OqNvi">
                    <node concept="3cmrfG" id="5x5bWrf4p$2" role="1sKJu8">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3c8USq" id="5x5bWrf4p$5" role="1sKFgg" />
                  </node>
                </node>
                <node concept="1OKiuA" id="5x5bWrf4p$7" role="2OqNvi">
                  <node concept="1Q80Hx" id="5x5bWrf4p$8" role="lBI5i" />
                  <node concept="2B6iha" id="5x5bWrf4p$9" role="lGT1i">
                    <property role="1lyBwo" value="mostRelevant" />
                  </node>
                  <node concept="3cmrfG" id="5x5bWrf4p$a" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3ICXOK" id="5x5bWrf4p$d">
    <property role="TrG5h" value="transform_Element_1_Attributes" />
    <ref role="aqKnT" to="bed5:6vXZUoCOmj7" resolve="Element_1" />
    <node concept="yp4Wq" id="5x5bWrf4p$e" role="lGtFl">
      <property role="yp4Ub" value="ext_1_RTransform" />
    </node>
    <node concept="1Qtc8_" id="5x5bWrf4p$h" role="IW6Ez">
      <node concept="3cWJ9i" id="5x5bWrf4p$f" role="1Qtc8$">
        <node concept="CtIbL" id="5x5bWrf4p$g" role="CtIbM">
          <property role="CtIbK" value="RIGHT" />
        </node>
      </node>
      <node concept="3c8P5G" id="5x5bWrf4p$j" role="1Qtc8A">
        <node concept="2kknPJ" id="5x5bWrf4p$k" role="3c8P5H">
          <ref role="2ZyFGn" to="bed5:6vXZUoCOmiZ" resolve="Attribute" />
        </node>
        <node concept="3c8PGw" id="5x5bWrf4p$l" role="3c8PHt">
          <node concept="3clFbS" id="5x5bWrf4p$m" role="2VODD2">
            <node concept="3clFbF" id="5x5bWrf4p$A" role="3cqZAp">
              <node concept="2OqwBi" id="5x5bWrf4p$x" role="3clFbG">
                <node concept="2OqwBi" id="5x5bWrf4p$o" role="2Oq$k0">
                  <node concept="2OqwBi" id="5x5bWrf4p$p" role="2Oq$k0">
                    <node concept="7Obwk" id="5x5bWrf4p$v" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="5x5bWrf4p$r" role="2OqNvi">
                      <ref role="3TtcxE" to="bed5:6vXZUoCOmjl" resolve="Attribute" />
                    </node>
                  </node>
                  <node concept="1sK_Qi" id="5x5bWrf4p$s" role="2OqNvi">
                    <node concept="3cmrfG" id="5x5bWrf4p$t" role="1sKJu8">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3c8USq" id="5x5bWrf4p$w" role="1sKFgg" />
                  </node>
                </node>
                <node concept="1OKiuA" id="5x5bWrf4p$y" role="2OqNvi">
                  <node concept="1Q80Hx" id="5x5bWrf4p$z" role="lBI5i" />
                  <node concept="2B6iha" id="5x5bWrf4p$$" role="lGT1i">
                    <property role="1lyBwo" value="mostRelevant" />
                  </node>
                  <node concept="3cmrfG" id="5x5bWrf4p$_" role="3dN3m$">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

