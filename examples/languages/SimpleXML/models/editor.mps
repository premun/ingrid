<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1c731d3b-fa87-425f-95b6-2fbcf174a357(SimpleXML.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tgj9" ref="r:195b28b6-1084-4ac6-849a-2fd4a3e72451(SimpleXML.structure)" implicit="true" />
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
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="Pei6ieTtPi">
    <property role="3GE5qa" value="Rules.Document" />
    <ref role="1XX52x" to="tgj9:Pei6ieTtOM" resolve="Document" />
    <node concept="3EZMnI" id="Pei6ieTtPj" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtPk" role="2iSdaV" />
      <node concept="3F2HdR" id="Pei6ieTtPl" role="3EZMnx">
        <ref role="1NtTu8" to="tgj9:Pei6ieTtP2" />
        <node concept="3F0ifn" id="Pei6ieTtPn" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F2HdR" id="Pei6ieTtPo" role="3EZMnx">
        <ref role="1NtTu8" to="tgj9:Pei6ieTtP3" />
        <node concept="3F0ifn" id="Pei6ieTtPq" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F1sOY" id="Pei6ieTtPr" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="tgj9:Pei6ieTtP4" />
        <node concept="3F0ifn" id="Pei6ieTtPs" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtPt">
    <property role="3GE5qa" value="Rules.Comment" />
    <ref role="1XX52x" to="tgj9:Pei6ieTtON" resolve="Comment" />
    <node concept="3EZMnI" id="Pei6ieTtPu" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtPv" role="2iSdaV" />
      <node concept="3F0ifn" id="Pei6ieTtPw" role="3EZMnx">
        <property role="3F0ifm" value="&lt;!--" />
      </node>
      <node concept="3F0A7n" id="Pei6ieTtPx" role="3EZMnx">
        <ref role="1NtTu8" to="tgj9:Pei6ieTtP5" resolve="TEXT_1" />
      </node>
      <node concept="3F0ifn" id="Pei6ieTtPy" role="3EZMnx">
        <property role="3F0ifm" value="--&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtPz">
    <property role="3GE5qa" value="Rules.Attribute" />
    <ref role="1XX52x" to="tgj9:Pei6ieTtOO" resolve="Attribute" />
    <node concept="3EZMnI" id="Pei6ieTtP$" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtP_" role="2iSdaV" />
      <node concept="3F0A7n" id="Pei6ieTtPA" role="3EZMnx">
        <ref role="1NtTu8" to="tgj9:Pei6ieTtP6" resolve="Name_1" />
      </node>
      <node concept="3F0ifn" id="Pei6ieTtPB" role="3EZMnx">
        <property role="3F0ifm" value="=&quot;" />
      </node>
      <node concept="3F0A7n" id="Pei6ieTtPC" role="3EZMnx">
        <ref role="1NtTu8" to="tgj9:Pei6ieTtP7" resolve="TEXT_2" />
      </node>
      <node concept="3F0ifn" id="Pei6ieTtPD" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtPE">
    <property role="3GE5qa" value="Rules.Prolog" />
    <ref role="1XX52x" to="tgj9:Pei6ieTtOP" resolve="Prolog" />
    <node concept="3EZMnI" id="Pei6ieTtPF" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtPG" role="2iSdaV" />
      <node concept="3F0ifn" id="Pei6ieTtPH" role="3EZMnx">
        <property role="3F0ifm" value="&lt;?xml " />
      </node>
      <node concept="3F2HdR" id="Pei6ieTtPI" role="3EZMnx">
        <ref role="1NtTu8" to="tgj9:Pei6ieTtP8" />
        <node concept="3F0ifn" id="Pei6ieTtPK" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="Pei6ieTtPL" role="3EZMnx">
        <property role="3F0ifm" value="?&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtPM">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="tgj9:Pei6ieTtOR" resolve="Content_1" />
    <node concept="3EZMnI" id="Pei6ieTtPN" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtPO" role="2iSdaV" />
      <node concept="3F0A7n" id="Pei6ieTtPP" role="3EZMnx">
        <ref role="1NtTu8" to="tgj9:Pei6ieTtP9" resolve="TEXT_1" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtPQ">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="tgj9:Pei6ieTtOT" resolve="Content_2" />
    <node concept="3EZMnI" id="Pei6ieTtPR" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtPS" role="2iSdaV" />
      <node concept="3F1sOY" id="Pei6ieTtPT" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="tgj9:Pei6ieTtPa" />
        <node concept="3F0ifn" id="Pei6ieTtPU" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtPV">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="tgj9:Pei6ieTtOV" resolve="Content_3" />
    <node concept="3EZMnI" id="Pei6ieTtPW" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtPX" role="2iSdaV" />
      <node concept="3F1sOY" id="Pei6ieTtPY" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="tgj9:Pei6ieTtPb" />
        <node concept="3F0ifn" id="Pei6ieTtPZ" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtQ0">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="1XX52x" to="tgj9:Pei6ieTtOY" resolve="Element_1" />
    <node concept="3EZMnI" id="Pei6ieTtQ1" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtQ2" role="2iSdaV" />
      <node concept="3F0ifn" id="Pei6ieTtQ3" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
      </node>
      <node concept="3F0A7n" id="Pei6ieTtQ4" role="3EZMnx">
        <ref role="1NtTu8" to="tgj9:Pei6ieTtPc" resolve="Name_1" />
      </node>
      <node concept="3F2HdR" id="Pei6ieTtQ5" role="3EZMnx">
        <ref role="1NtTu8" to="tgj9:Pei6ieTtPd" />
        <node concept="3F0ifn" id="Pei6ieTtQ7" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="Pei6ieTtQ8" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
      </node>
      <node concept="3F2HdR" id="Pei6ieTtQ9" role="3EZMnx">
        <ref role="1NtTu8" to="tgj9:Pei6ieTtPe" />
        <node concept="3F0ifn" id="Pei6ieTtQb" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="Pei6ieTtQc" role="3EZMnx">
        <property role="3F0ifm" value="&lt;/" />
      </node>
      <node concept="3F0A7n" id="Pei6ieTtQd" role="3EZMnx">
        <ref role="1NtTu8" to="tgj9:Pei6ieTtPf" resolve="Name_2" />
      </node>
      <node concept="3F0ifn" id="Pei6ieTtQe" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtQf">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="1XX52x" to="tgj9:Pei6ieTtP0" resolve="Element_2" />
    <node concept="3EZMnI" id="Pei6ieTtQg" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtQh" role="2iSdaV" />
      <node concept="3F0ifn" id="Pei6ieTtQi" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
      </node>
      <node concept="3F0A7n" id="Pei6ieTtQj" role="3EZMnx">
        <ref role="1NtTu8" to="tgj9:Pei6ieTtPg" resolve="Name_1" />
      </node>
      <node concept="3F2HdR" id="Pei6ieTtQk" role="3EZMnx">
        <ref role="1NtTu8" to="tgj9:Pei6ieTtPh" />
        <node concept="3F0ifn" id="Pei6ieTtQm" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="Pei6ieTtQn" role="3EZMnx">
        <property role="3F0ifm" value="/&gt;" />
      </node>
    </node>
  </node>
</model>

