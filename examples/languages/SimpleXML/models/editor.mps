<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:63365656-dc7c-4a09-aa44-bd37a1c38b8e(SimpleXML.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="3" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="trqj" ref="r:680fb428-6f7c-4c11-be1b-c67650e68ee4(SimpleXML.structure)" implicit="true" />
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
  <node concept="24kQdi" id="6nlf6V60iSE">
    <property role="3GE5qa" value="Rules.Document" />
    <ref role="1XX52x" to="trqj:6nlf6V60iS4" resolve="Document" />
    <node concept="3EZMnI" id="6nlf6V60iSF" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60iSG" role="2iSdaV" />
      <node concept="3F2HdR" id="6nlf6V60iSH" role="3EZMnx">
        <ref role="1NtTu8" to="trqj:6nlf6V60iSh" />
        <node concept="3F0ifn" id="6nlf6V60iSJ" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F2HdR" id="6nlf6V60iSK" role="3EZMnx">
        <ref role="1NtTu8" to="trqj:6nlf6V60iSi" />
        <node concept="3F0ifn" id="6nlf6V60iSM" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F1sOY" id="6nlf6V60iSN" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="trqj:6nlf6V60iSj" />
        <node concept="3F0ifn" id="6nlf6V60iSO" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60iSP">
    <property role="3GE5qa" value="Rules.Comment" />
    <ref role="1XX52x" to="trqj:6nlf6V60iS5" resolve="Comment" />
    <node concept="3EZMnI" id="6nlf6V60iSQ" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60iSR" role="2iSdaV" />
      <node concept="3F0ifn" id="6nlf6V60iSS" role="3EZMnx">
        <property role="3F0ifm" value="&lt;!--" />
      </node>
      <node concept="3F0A7n" id="6nlf6V60iST" role="3EZMnx">
        <ref role="1NtTu8" to="trqj:6nlf6V60iSk" resolve="TEXT_1" />
      </node>
      <node concept="3F0ifn" id="6nlf6V60iSU" role="3EZMnx">
        <property role="3F0ifm" value="--&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60iSV">
    <property role="3GE5qa" value="Rules.Attribute" />
    <ref role="1XX52x" to="trqj:6nlf6V60iS6" resolve="Attribute" />
    <node concept="3EZMnI" id="6nlf6V60iSW" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60iSX" role="2iSdaV" />
      <node concept="3F0A7n" id="6nlf6V60iSY" role="3EZMnx">
        <ref role="1NtTu8" to="trqj:6nlf6V60iSl" resolve="Name_1" />
      </node>
      <node concept="3F0ifn" id="6nlf6V60iSZ" role="3EZMnx">
        <property role="3F0ifm" value="=&quot;" />
      </node>
      <node concept="3F0A7n" id="6nlf6V60iT0" role="3EZMnx">
        <ref role="1NtTu8" to="trqj:6nlf6V60iSm" resolve="TEXT_2" />
      </node>
      <node concept="3F0ifn" id="6nlf6V60iT1" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60iT2">
    <property role="3GE5qa" value="Rules.Prolog" />
    <ref role="1XX52x" to="trqj:6nlf6V60iS7" resolve="Prolog" />
    <node concept="3EZMnI" id="6nlf6V60iT3" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60iT4" role="2iSdaV" />
      <node concept="3F0ifn" id="6nlf6V60iT5" role="3EZMnx">
        <property role="3F0ifm" value="&lt;?xml " />
      </node>
      <node concept="3F2HdR" id="6nlf6V60iT6" role="3EZMnx">
        <ref role="1NtTu8" to="trqj:6nlf6V60iSn" />
        <node concept="3F0ifn" id="6nlf6V60iT8" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="6nlf6V60iT9" role="3EZMnx">
        <property role="3F0ifm" value="?&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60iTa">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="trqj:6nlf6V60iS9" resolve="Content_1" />
    <node concept="3EZMnI" id="6nlf6V60iTb" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60iTc" role="2iSdaV" />
      <node concept="3F0A7n" id="6nlf6V60iTd" role="3EZMnx">
        <ref role="1NtTu8" to="trqj:6nlf6V60iSo" resolve="TEXT_1" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60iTe">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="trqj:6nlf6V60iSa" resolve="Content_2" />
    <node concept="3EZMnI" id="6nlf6V60iTf" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60iTg" role="2iSdaV" />
      <node concept="3F1sOY" id="6nlf6V60iTh" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="trqj:6nlf6V60iSp" />
        <node concept="3F0ifn" id="6nlf6V60iTi" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60iTj">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="trqj:6nlf6V60iSb" resolve="Content_3" />
    <node concept="3EZMnI" id="6nlf6V60iTk" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60iTl" role="2iSdaV" />
      <node concept="3F1sOY" id="6nlf6V60iTm" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="trqj:6nlf6V60iSq" />
        <node concept="3F0ifn" id="6nlf6V60iTn" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60iTo">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="trqj:6nlf6V60iSc" resolve="Content_4" />
    <node concept="3EZMnI" id="6nlf6V60iTp" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60iTq" role="2iSdaV" />
      <node concept="3F1sOY" id="6nlf6V60iTr" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="trqj:6nlf6V60iSr" />
        <node concept="3F0ifn" id="6nlf6V60iTs" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60iTt">
    <property role="3GE5qa" value="Rules.Cdata" />
    <ref role="1XX52x" to="trqj:6nlf6V60iSd" resolve="Cdata" />
    <node concept="3EZMnI" id="6nlf6V60iTu" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60iTv" role="2iSdaV" />
      <node concept="3F0ifn" id="6nlf6V60iTw" role="3EZMnx">
        <property role="3F0ifm" value="&lt;![CDATA[" />
      </node>
      <node concept="3F0A7n" id="6nlf6V60iTx" role="3EZMnx">
        <ref role="1NtTu8" to="trqj:6nlf6V60iSs" resolve="CDATA_1" />
      </node>
      <node concept="3F0ifn" id="6nlf6V60iTy" role="3EZMnx">
        <property role="3F0ifm" value="]]&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60iTz">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="1XX52x" to="trqj:6nlf6V60iSf" resolve="Element_1" />
    <node concept="3EZMnI" id="6nlf6V60iT$" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60iT_" role="2iSdaV" />
      <node concept="3F0ifn" id="6nlf6V60iTA" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
      </node>
      <node concept="3F0A7n" id="6nlf6V60iTB" role="3EZMnx">
        <ref role="1NtTu8" to="trqj:6nlf6V60iSt" resolve="Name_1" />
      </node>
      <node concept="3F2HdR" id="6nlf6V60iTC" role="3EZMnx">
        <ref role="1NtTu8" to="trqj:6nlf6V60iSu" />
        <node concept="3F0ifn" id="6nlf6V60iTE" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="6nlf6V60iTF" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
      </node>
      <node concept="3F2HdR" id="6nlf6V60iTG" role="3EZMnx">
        <ref role="1NtTu8" to="trqj:6nlf6V60iSv" />
        <node concept="3F0ifn" id="6nlf6V60iTI" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="6nlf6V60iTJ" role="3EZMnx">
        <property role="3F0ifm" value="&lt;/" />
      </node>
      <node concept="3F0A7n" id="6nlf6V60iTK" role="3EZMnx">
        <ref role="1NtTu8" to="trqj:6nlf6V60iSw" resolve="Name_2" />
      </node>
      <node concept="3F0ifn" id="6nlf6V60iTL" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60iTM">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="1XX52x" to="trqj:6nlf6V60iSg" resolve="Element_2" />
    <node concept="3EZMnI" id="6nlf6V60iTN" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60iTO" role="2iSdaV" />
      <node concept="3F0ifn" id="6nlf6V60iTP" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
      </node>
      <node concept="3F0A7n" id="6nlf6V60iTQ" role="3EZMnx">
        <ref role="1NtTu8" to="trqj:6nlf6V60iSx" resolve="Name_1" />
      </node>
      <node concept="3F2HdR" id="6nlf6V60iTR" role="3EZMnx">
        <ref role="1NtTu8" to="trqj:6nlf6V60iSy" />
        <node concept="3F0ifn" id="6nlf6V60iTT" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="6nlf6V60iTU" role="3EZMnx">
        <property role="3F0ifm" value="/&gt;" />
      </node>
    </node>
  </node>
</model>

