<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9ead6710-bcbb-465b-8ed9-e4b34f8ec3dc(JSON.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="3" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="qym2" ref="r:e9c69e42-9f1b-4443-a2f9-06b67560420d(JSON.structure)" implicit="true" />
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
  <node concept="24kQdi" id="6vXZUoCOm2z">
    <property role="3GE5qa" value="Rules.Array_block_1_1" />
    <ref role="1XX52x" to="qym2:6vXZUoCOm1K" resolve="Array_block_1_1" />
    <node concept="3EZMnI" id="6vXZUoCOm2$" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOm2_" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOm2A" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F1sOY" id="6vXZUoCOm2B" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="qym2:6vXZUoCOm24" />
        <node concept="3F0ifn" id="6vXZUoCOm2C" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOm2D">
    <property role="3GE5qa" value="Rules.Pair" />
    <ref role="1XX52x" to="qym2:6vXZUoCOm1L" resolve="Pair" />
    <node concept="3EZMnI" id="6vXZUoCOm2E" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOm2F" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOm2G" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
      </node>
      <node concept="3F0A7n" id="6vXZUoCOm2H" role="3EZMnx">
        <ref role="1NtTu8" to="qym2:6vXZUoCOm25" resolve="STRING_1" />
      </node>
      <node concept="3F0ifn" id="6vXZUoCOm2I" role="3EZMnx">
        <property role="3F0ifm" value="&quot;:" />
      </node>
      <node concept="3F1sOY" id="6vXZUoCOm2J" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="qym2:6vXZUoCOm26" />
        <node concept="3F0ifn" id="6vXZUoCOm2K" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOm2L">
    <property role="3GE5qa" value="Rules.Object_block_1_1" />
    <ref role="1XX52x" to="qym2:6vXZUoCOm1M" resolve="Object_block_1_1" />
    <node concept="3EZMnI" id="6vXZUoCOm2M" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOm2N" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOm2O" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F1sOY" id="6vXZUoCOm2P" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="qym2:6vXZUoCOm27" />
        <node concept="3F0ifn" id="6vXZUoCOm2Q" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOm2R">
    <property role="3GE5qa" value="Rules.Array" />
    <ref role="1XX52x" to="qym2:6vXZUoCOm1O" resolve="Array_1" />
    <node concept="3EZMnI" id="6vXZUoCOm2S" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOm2T" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOm2U" role="3EZMnx">
        <property role="3F0ifm" value="[" />
      </node>
      <node concept="3F1sOY" id="6vXZUoCOm2V" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="qym2:6vXZUoCOm28" />
        <node concept="3F0ifn" id="6vXZUoCOm2W" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F2HdR" id="6vXZUoCOm2X" role="3EZMnx">
        <ref role="1NtTu8" to="qym2:6vXZUoCOm29" />
        <node concept="3F0ifn" id="6vXZUoCOm2Z" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCOm30" role="3EZMnx">
        <property role="3F0ifm" value="]" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOm31">
    <property role="3GE5qa" value="Rules.Array" />
    <ref role="1XX52x" to="qym2:6vXZUoCOm1P" resolve="Array_2" />
    <node concept="3EZMnI" id="6vXZUoCOm32" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOm33" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOm34" role="3EZMnx">
        <property role="3F0ifm" value="[" />
      </node>
      <node concept="3F0ifn" id="6vXZUoCOm35" role="3EZMnx">
        <property role="3F0ifm" value="]" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOm36">
    <property role="3GE5qa" value="Rules.Json" />
    <ref role="1XX52x" to="qym2:6vXZUoCOm1R" resolve="Json_1" />
    <node concept="3EZMnI" id="6vXZUoCOm37" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOm38" role="2iSdaV" />
      <node concept="3F1sOY" id="6vXZUoCOm39" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="qym2:6vXZUoCOm2a" />
        <node concept="3F0ifn" id="6vXZUoCOm3a" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOm3b">
    <property role="3GE5qa" value="Rules.Json" />
    <ref role="1XX52x" to="qym2:6vXZUoCOm1S" resolve="Json_2" />
    <node concept="3EZMnI" id="6vXZUoCOm3c" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOm3d" role="2iSdaV" />
      <node concept="3F1sOY" id="6vXZUoCOm3e" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="qym2:6vXZUoCOm2b" />
        <node concept="3F0ifn" id="6vXZUoCOm3f" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOm3g">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="qym2:6vXZUoCOm1U" resolve="Value_1" />
    <node concept="3EZMnI" id="6vXZUoCOm3h" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOm3i" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOm3j" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
      </node>
      <node concept="3F0A7n" id="6vXZUoCOm3k" role="3EZMnx">
        <ref role="1NtTu8" to="qym2:6vXZUoCOm2c" resolve="STRING_1" />
      </node>
      <node concept="3F0ifn" id="6vXZUoCOm3l" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOm3m">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="qym2:6vXZUoCOm1V" resolve="Value_2" />
    <node concept="3EZMnI" id="6vXZUoCOm3n" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOm3o" role="2iSdaV" />
      <node concept="3F0A7n" id="6vXZUoCOm3p" role="3EZMnx">
        <ref role="1NtTu8" to="qym2:6vXZUoCOm2d" resolve="NUMBER_1" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOm3q">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="qym2:6vXZUoCOm1W" resolve="Value_3" />
    <node concept="3EZMnI" id="6vXZUoCOm3r" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOm3s" role="2iSdaV" />
      <node concept="3F1sOY" id="6vXZUoCOm3t" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="qym2:6vXZUoCOm2e" />
        <node concept="3F0ifn" id="6vXZUoCOm3u" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOm3v">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="qym2:6vXZUoCOm1X" resolve="Value_4" />
    <node concept="3EZMnI" id="6vXZUoCOm3w" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOm3x" role="2iSdaV" />
      <node concept="3F1sOY" id="6vXZUoCOm3y" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="qym2:6vXZUoCOm2f" />
        <node concept="3F0ifn" id="6vXZUoCOm3z" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOm3$">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="qym2:6vXZUoCOm1Y" resolve="Value_5" />
    <node concept="3EZMnI" id="6vXZUoCOm3_" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOm3A" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOm3B" role="3EZMnx">
        <property role="3F0ifm" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOm3C">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="qym2:6vXZUoCOm1Z" resolve="Value_6" />
    <node concept="3EZMnI" id="6vXZUoCOm3D" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOm3E" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOm3F" role="3EZMnx">
        <property role="3F0ifm" value="false" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOm3G">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="qym2:6vXZUoCOm20" resolve="Value_7" />
    <node concept="3EZMnI" id="6vXZUoCOm3H" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOm3I" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOm3J" role="3EZMnx">
        <property role="3F0ifm" value="null" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOm3K">
    <property role="3GE5qa" value="Rules.Object" />
    <ref role="1XX52x" to="qym2:6vXZUoCOm22" resolve="Object_1" />
    <node concept="3EZMnI" id="6vXZUoCOm3L" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOm3M" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOm3N" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3F1sOY" id="6vXZUoCOm3O" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="qym2:6vXZUoCOm2g" />
        <node concept="3F0ifn" id="6vXZUoCOm3P" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F2HdR" id="6vXZUoCOm3Q" role="3EZMnx">
        <ref role="1NtTu8" to="qym2:6vXZUoCOm2h" />
        <node concept="3F0ifn" id="6vXZUoCOm3S" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="6vXZUoCOm3T" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6vXZUoCOm3U">
    <property role="3GE5qa" value="Rules.Object" />
    <ref role="1XX52x" to="qym2:6vXZUoCOm23" resolve="Object_2" />
    <node concept="3EZMnI" id="6vXZUoCOm3V" role="2wV5jI">
      <node concept="l2Vlx" id="6vXZUoCOm3W" role="2iSdaV" />
      <node concept="3F0ifn" id="6vXZUoCOm3X" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3F0ifn" id="6vXZUoCOm3Y" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
    </node>
  </node>
</model>

