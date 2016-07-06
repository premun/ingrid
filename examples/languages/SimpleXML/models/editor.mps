<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:87a674a5-8233-455c-8ee6-ac389f9e0921(SimpleXML.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="3" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="mspx" ref="r:518e5f34-f884-43dc-acb1-ce984bc87b95(SimpleXML.structure)" implicit="true" />
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
  <node concept="24kQdi" id="6vXZUoCOmsk">
    <property role="3GE5qa" value="Rules.Document" />
    <ref role="1XX52x" to="mspx:6vXZUoCOmrK" resolve="Document" />
    <node concept="3EZMnI" id="6vXZUoCOmsl" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmsm" role="2iSdaV" />
      <node concept="3F1sOY" id="6vXZUoCOmsn" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="mspx:6vXZUoCOmrW" />
        <node concept="3F0ifn" id="6vXZUoCOmso" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F1sOY" id="6vXZUoCOmsp" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="mspx:6vXZUoCOmrX" />
        <node concept="3F0ifn" id="6vXZUoCOmsq" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F1sOY" id="6vXZUoCOmsr" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="mspx:6vXZUoCOmrY" />
        <node concept="3F0ifn" id="6vXZUoCOmss" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmst">
    <property role="3GE5qa" value="Rules.Comment" />
    <ref role="1XX52x" to="mspx:6vXZUoCOmrL" resolve="Comment" />
    <node concept="3EZMnI" id="6vXZUoCOmsu" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmsv" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOmsw" role="3EZMnx">
        <property role="3F0ifm" value="&lt;!--" />
      </node>
      <node concept="3F0A7n" id="6vXZUoCOmsx" role="3EZMnx">
        <ref role="1NtTu8" to="mspx:6vXZUoCOmrZ" resolve="TEXT_1" />
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmsy" role="3EZMnx">
        <property role="3F0ifm" value="--&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmsz">
    <property role="3GE5qa" value="Rules.Attribute" />
    <ref role="1XX52x" to="mspx:6vXZUoCOmrM" resolve="Attribute" />
    <node concept="3EZMnI" id="6vXZUoCOms$" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOms_" role="2iSdaV" />
      <node concept="3F0A7n" id="6vXZUoCOmsA" role="3EZMnx">
        <ref role="1NtTu8" to="mspx:6vXZUoCOms0" resolve="Name_1" />
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmsB" role="3EZMnx">
        <property role="3F0ifm" value="=&quot;" />
      </node>
      <node concept="3F0A7n" id="6vXZUoCOmsC" role="3EZMnx">
        <ref role="1NtTu8" to="mspx:6vXZUoCOms1" resolve="TEXT_2" />
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmsD" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmsE">
    <property role="3GE5qa" value="Rules.Prolog" />
    <ref role="1XX52x" to="mspx:6vXZUoCOmrN" resolve="Prolog" />
    <node concept="3EZMnI" id="6vXZUoCOmsF" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmsG" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOmsH" role="3EZMnx">
        <property role="3F0ifm" value="&lt;?xml " />
      </node>
      <node concept="3F2HdR" id="6vXZUoCOmsI" role="3EZMnx">
        <ref role="1NtTu8" to="mspx:6vXZUoCOms2" />
        <node concept="3F0ifn" id="6vXZUoCOmsK" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmsL" role="3EZMnx">
        <property role="3F0ifm" value="?&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmsM">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="mspx:6vXZUoCOmrP" resolve="Content_1" />
    <node concept="3EZMnI" id="6vXZUoCOmsN" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmsO" role="2iSdaV" />
      <node concept="3F0A7n" id="6vXZUoCOmsP" role="3EZMnx">
        <ref role="1NtTu8" to="mspx:6vXZUoCOms3" resolve="TEXT_1" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmsQ">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="mspx:6vXZUoCOmrQ" resolve="Content_2" />
    <node concept="3EZMnI" id="6vXZUoCOmsR" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmsS" role="2iSdaV" />
      <node concept="3F1sOY" id="6vXZUoCOmsT" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="mspx:6vXZUoCOms4" />
        <node concept="3F0ifn" id="6vXZUoCOmsU" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmsV">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="mspx:6vXZUoCOmrR" resolve="Content_3" />
    <node concept="3EZMnI" id="6vXZUoCOmsW" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmsX" role="2iSdaV" />
      <node concept="3F1sOY" id="6vXZUoCOmsY" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="mspx:6vXZUoCOms5" />
        <node concept="3F0ifn" id="6vXZUoCOmsZ" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmt0">
    <property role="3GE5qa" value="Rules.Content" />
    <ref role="1XX52x" to="mspx:6vXZUoCOmrS" resolve="Content_4" />
    <node concept="3EZMnI" id="6vXZUoCOmt1" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmt2" role="2iSdaV" />
      <node concept="3F0A7n" id="6vXZUoCOmt3" role="3EZMnx">
        <ref role="1NtTu8" to="mspx:6vXZUoCOms6" resolve="CDATA_1" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmt4">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="1XX52x" to="mspx:6vXZUoCOmrU" resolve="Element_1" />
    <node concept="3EZMnI" id="6vXZUoCOmt5" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmt6" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOmt7" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
      </node>
      <node concept="3F0A7n" id="6vXZUoCOmt8" role="3EZMnx">
        <ref role="1NtTu8" to="mspx:6vXZUoCOms7" resolve="Name_1" />
      </node>
      <node concept="3F2HdR" id="6vXZUoCOmt9" role="3EZMnx">
        <ref role="1NtTu8" to="mspx:6vXZUoCOms8" />
        <node concept="3F0ifn" id="6vXZUoCOmtb" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmtc" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
      </node>
      <node concept="3F2HdR" id="6vXZUoCOmtd" role="3EZMnx">
        <ref role="1NtTu8" to="mspx:6vXZUoCOms9" />
        <node concept="3F0ifn" id="6vXZUoCOmtf" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmtg" role="3EZMnx">
        <property role="3F0ifm" value="&lt;/" />
      </node>
      <node concept="3F0A7n" id="6vXZUoCOmth" role="3EZMnx">
        <ref role="1NtTu8" to="mspx:6vXZUoCOmsa" resolve="Name_2" />
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmti" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOmtj">
    <property role="3GE5qa" value="Rules.Element" />
    <ref role="1XX52x" to="mspx:6vXZUoCOmrV" resolve="Element_2" />
    <node concept="3EZMnI" id="6vXZUoCOmtk" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOmtl" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOmtm" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
      </node>
      <node concept="3F0A7n" id="6vXZUoCOmtn" role="3EZMnx">
        <ref role="1NtTu8" to="mspx:6vXZUoCOmsb" resolve="Name_1" />
      </node>
      <node concept="3F2HdR" id="6vXZUoCOmto" role="3EZMnx">
        <ref role="1NtTu8" to="mspx:6vXZUoCOmsc" />
        <node concept="3F0ifn" id="6vXZUoCOmtq" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCOmtr" role="3EZMnx">
        <property role="3F0ifm" value="/&gt;" />
      </node>
    </node>
  </node>
</model>

