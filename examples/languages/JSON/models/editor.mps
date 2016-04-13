<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1ca27bfc-10c3-42c7-96f7-ce6ebc56517b(JSON.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ac58" ref="r:a0e926e4-0911-4dcc-b53e-feead81a393e(JSON.structure)" implicit="true" />
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
  <node concept="24kQdi" id="Pei6ieTtGO">
    <property role="3GE5qa" value="Rules.Array" />
    <ref role="1XX52x" to="ac58:Pei6ieTtG6" resolve="Array_1" />
    <node concept="3EZMnI" id="Pei6ieTtGP" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtGQ" role="2iSdaV" />
      <node concept="3F0ifn" id="Pei6ieTtGR" role="3EZMnx">
        <property role="3F0ifm" value="[" />
      </node>
      <node concept="3F1sOY" id="Pei6ieTtGS" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="ac58:Pei6ieTtGA" />
        <node concept="3F0ifn" id="Pei6ieTtGT" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F2HdR" id="Pei6ieTtGU" role="3EZMnx">
        <ref role="1NtTu8" to="ac58:Pei6ieTtGB" />
        <node concept="3F0ifn" id="Pei6ieTtGW" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="Pei6ieTtGX" role="3EZMnx">
        <property role="3F0ifm" value="]" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtGY">
    <property role="3GE5qa" value="Rules.Array" />
    <ref role="1XX52x" to="ac58:Pei6ieTtG8" resolve="Array_2" />
    <node concept="3EZMnI" id="Pei6ieTtGZ" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtH0" role="2iSdaV" />
      <node concept="3F0ifn" id="Pei6ieTtH1" role="3EZMnx">
        <property role="3F0ifm" value="[" />
      </node>
      <node concept="3F0ifn" id="Pei6ieTtH2" role="3EZMnx">
        <property role="3F0ifm" value="]" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtH3">
    <property role="3GE5qa" value="Rules.Array_block_1_1" />
    <ref role="1XX52x" to="ac58:Pei6ieTtGa" resolve="Array_block_1_1" />
    <node concept="3EZMnI" id="Pei6ieTtH4" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtH5" role="2iSdaV" />
      <node concept="3F0ifn" id="Pei6ieTtH6" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F1sOY" id="Pei6ieTtH7" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="ac58:Pei6ieTtGC" />
        <node concept="3F0ifn" id="Pei6ieTtH8" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtH9">
    <property role="3GE5qa" value="Rules.Json" />
    <ref role="1XX52x" to="ac58:Pei6ieTtGc" resolve="Json_1" />
    <node concept="3EZMnI" id="Pei6ieTtHa" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtHb" role="2iSdaV" />
      <node concept="3F1sOY" id="Pei6ieTtHc" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="ac58:Pei6ieTtGD" />
        <node concept="3F0ifn" id="Pei6ieTtHd" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtHe">
    <property role="3GE5qa" value="Rules.Json" />
    <ref role="1XX52x" to="ac58:Pei6ieTtGe" resolve="Json_2" />
    <node concept="3EZMnI" id="Pei6ieTtHf" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtHg" role="2iSdaV" />
      <node concept="3F1sOY" id="Pei6ieTtHh" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="ac58:Pei6ieTtGE" />
        <node concept="3F0ifn" id="Pei6ieTtHi" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtHj">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="ac58:Pei6ieTtGh" resolve="Value_1" />
    <node concept="3EZMnI" id="Pei6ieTtHk" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtHl" role="2iSdaV" />
      <node concept="3F0A7n" id="Pei6ieTtHm" role="3EZMnx">
        <ref role="1NtTu8" to="ac58:Pei6ieTtGF" resolve="STRING_1" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtHn">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="ac58:Pei6ieTtGj" resolve="Value_2" />
    <node concept="3EZMnI" id="Pei6ieTtHo" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtHp" role="2iSdaV" />
      <node concept="3F0A7n" id="Pei6ieTtHq" role="3EZMnx">
        <ref role="1NtTu8" to="ac58:Pei6ieTtGG" resolve="NUMBER_1" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtHr">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="ac58:Pei6ieTtGl" resolve="Value_3" />
    <node concept="3EZMnI" id="Pei6ieTtHs" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtHt" role="2iSdaV" />
      <node concept="3F1sOY" id="Pei6ieTtHu" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="ac58:Pei6ieTtGH" />
        <node concept="3F0ifn" id="Pei6ieTtHv" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtHw">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="ac58:Pei6ieTtGn" resolve="Value_4" />
    <node concept="3EZMnI" id="Pei6ieTtHx" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtHy" role="2iSdaV" />
      <node concept="3F1sOY" id="Pei6ieTtHz" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="ac58:Pei6ieTtGI" />
        <node concept="3F0ifn" id="Pei6ieTtH$" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtH_">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="ac58:Pei6ieTtGp" resolve="Value_5" />
    <node concept="3EZMnI" id="Pei6ieTtHA" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtHB" role="2iSdaV" />
      <node concept="3F0ifn" id="Pei6ieTtHC" role="3EZMnx">
        <property role="3F0ifm" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtHD">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="ac58:Pei6ieTtGr" resolve="Value_6" />
    <node concept="3EZMnI" id="Pei6ieTtHE" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtHF" role="2iSdaV" />
      <node concept="3F0ifn" id="Pei6ieTtHG" role="3EZMnx">
        <property role="3F0ifm" value="false" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtHH">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="ac58:Pei6ieTtGt" resolve="Value_7" />
    <node concept="3EZMnI" id="Pei6ieTtHI" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtHJ" role="2iSdaV" />
      <node concept="3F0ifn" id="Pei6ieTtHK" role="3EZMnx">
        <property role="3F0ifm" value="null" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtHL">
    <property role="3GE5qa" value="Rules.Pair" />
    <ref role="1XX52x" to="ac58:Pei6ieTtGv" resolve="Pair" />
    <node concept="3EZMnI" id="Pei6ieTtHM" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtHN" role="2iSdaV" />
      <node concept="3F0A7n" id="Pei6ieTtHO" role="3EZMnx">
        <ref role="1NtTu8" to="ac58:Pei6ieTtGJ" resolve="STRING_1" />
      </node>
      <node concept="3F0ifn" id="Pei6ieTtHP" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="Pei6ieTtHQ" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="ac58:Pei6ieTtGK" />
        <node concept="3F0ifn" id="Pei6ieTtHR" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtHS">
    <property role="3GE5qa" value="Rules.Object_block_1_1" />
    <ref role="1XX52x" to="ac58:Pei6ieTtGw" resolve="Object_block_1_1" />
    <node concept="3EZMnI" id="Pei6ieTtHT" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtHU" role="2iSdaV" />
      <node concept="3F0ifn" id="Pei6ieTtHV" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F1sOY" id="Pei6ieTtHW" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="ac58:Pei6ieTtGL" />
        <node concept="3F0ifn" id="Pei6ieTtHX" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtHY">
    <property role="3GE5qa" value="Rules.Object" />
    <ref role="1XX52x" to="ac58:Pei6ieTtGy" resolve="Object_1" />
    <node concept="3EZMnI" id="Pei6ieTtHZ" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtI0" role="2iSdaV" />
      <node concept="3F0ifn" id="Pei6ieTtI1" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3F1sOY" id="Pei6ieTtI2" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="ac58:Pei6ieTtGM" />
        <node concept="3F0ifn" id="Pei6ieTtI3" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F2HdR" id="Pei6ieTtI4" role="3EZMnx">
        <ref role="1NtTu8" to="ac58:Pei6ieTtGN" />
        <node concept="3F0ifn" id="Pei6ieTtI6" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="Pei6ieTtI7" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="Pei6ieTtI8">
    <property role="3GE5qa" value="Rules.Object" />
    <ref role="1XX52x" to="ac58:Pei6ieTtG$" resolve="Object_2" />
    <node concept="3EZMnI" id="Pei6ieTtI9" role="2wV5jI">
      <node concept="l2Vlx" id="Pei6ieTtIa" role="2iSdaV" />
      <node concept="3F0ifn" id="Pei6ieTtIb" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3F0ifn" id="Pei6ieTtIc" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
    </node>
  </node>
</model>

