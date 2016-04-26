<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:efe4b6a3-63fb-47fd-8d80-02d5899962ef(JSON.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="3" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ep4t" ref="r:adf57dfb-c55e-40ed-b76e-f3c2737af869(JSON.structure)" implicit="true" />
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
  <node concept="24kQdi" id="6nlf6V60j1R">
    <property role="3GE5qa" value="Rules.Array" />
    <ref role="1XX52x" to="ep4t:6nlf6V60j15" resolve="Array_1" />
    <node concept="3EZMnI" id="6nlf6V60j1S" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60j1T" role="2iSdaV" />
      <node concept="3F0ifn" id="6nlf6V60j1U" role="3EZMnx">
        <property role="3F0ifm" value="[" />
      </node>
      <node concept="3F1sOY" id="6nlf6V60j1V" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="ep4t:6nlf6V60j1o" />
        <node concept="3F0ifn" id="6nlf6V60j1W" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F2HdR" id="6nlf6V60j1X" role="3EZMnx">
        <ref role="1NtTu8" to="ep4t:6nlf6V60j1p" />
        <node concept="3F0ifn" id="6nlf6V60j1Z" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="6nlf6V60j20" role="3EZMnx">
        <property role="3F0ifm" value="]" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60j21">
    <property role="3GE5qa" value="Rules.Array" />
    <ref role="1XX52x" to="ep4t:6nlf6V60j16" resolve="Array_2" />
    <node concept="3EZMnI" id="6nlf6V60j22" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60j23" role="2iSdaV" />
      <node concept="3F0ifn" id="6nlf6V60j24" role="3EZMnx">
        <property role="3F0ifm" value="[" />
      </node>
      <node concept="3F0ifn" id="6nlf6V60j25" role="3EZMnx">
        <property role="3F0ifm" value="]" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60j26">
    <property role="3GE5qa" value="Rules.Array_block_1_1" />
    <ref role="1XX52x" to="ep4t:6nlf6V60j17" resolve="Array_block_1_1" />
    <node concept="3EZMnI" id="6nlf6V60j27" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60j28" role="2iSdaV" />
      <node concept="3F0ifn" id="6nlf6V60j29" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F1sOY" id="6nlf6V60j2a" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="ep4t:6nlf6V60j1q" />
        <node concept="3F0ifn" id="6nlf6V60j2b" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60j2c">
    <property role="3GE5qa" value="Rules.Json" />
    <ref role="1XX52x" to="ep4t:6nlf6V60j19" resolve="Json_1" />
    <node concept="3EZMnI" id="6nlf6V60j2d" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60j2e" role="2iSdaV" />
      <node concept="3F1sOY" id="6nlf6V60j2f" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="ep4t:6nlf6V60j1r" />
        <node concept="3F0ifn" id="6nlf6V60j2g" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60j2h">
    <property role="3GE5qa" value="Rules.Json" />
    <ref role="1XX52x" to="ep4t:6nlf6V60j1a" resolve="Json_2" />
    <node concept="3EZMnI" id="6nlf6V60j2i" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60j2j" role="2iSdaV" />
      <node concept="3F1sOY" id="6nlf6V60j2k" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="ep4t:6nlf6V60j1s" />
        <node concept="3F0ifn" id="6nlf6V60j2l" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60j2m">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="ep4t:6nlf6V60j1c" resolve="Value_1" />
    <node concept="3EZMnI" id="6nlf6V60j2n" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60j2o" role="2iSdaV" />
      <node concept="3F0ifn" id="6nlf6V60j2p" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
      </node>
      <node concept="3F0A7n" id="6nlf6V60j2q" role="3EZMnx">
        <ref role="1NtTu8" to="ep4t:6nlf6V60j1t" resolve="STRING_1" />
      </node>
      <node concept="3F0ifn" id="6nlf6V60j2r" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60j2s">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="ep4t:6nlf6V60j1d" resolve="Value_2" />
    <node concept="3EZMnI" id="6nlf6V60j2t" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60j2u" role="2iSdaV" />
      <node concept="3F0A7n" id="6nlf6V60j2v" role="3EZMnx">
        <ref role="1NtTu8" to="ep4t:6nlf6V60j1u" resolve="NUMBER_1" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60j2w">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="ep4t:6nlf6V60j1e" resolve="Value_3" />
    <node concept="3EZMnI" id="6nlf6V60j2x" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60j2y" role="2iSdaV" />
      <node concept="3F1sOY" id="6nlf6V60j2z" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="ep4t:6nlf6V60j1v" />
        <node concept="3F0ifn" id="6nlf6V60j2$" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60j2_">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="ep4t:6nlf6V60j1f" resolve="Value_4" />
    <node concept="3EZMnI" id="6nlf6V60j2A" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60j2B" role="2iSdaV" />
      <node concept="3F1sOY" id="6nlf6V60j2C" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="ep4t:6nlf6V60j1w" />
        <node concept="3F0ifn" id="6nlf6V60j2D" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60j2E">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="ep4t:6nlf6V60j1g" resolve="Value_5" />
    <node concept="3EZMnI" id="6nlf6V60j2F" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60j2G" role="2iSdaV" />
      <node concept="3F0ifn" id="6nlf6V60j2H" role="3EZMnx">
        <property role="3F0ifm" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60j2I">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="ep4t:6nlf6V60j1h" resolve="Value_6" />
    <node concept="3EZMnI" id="6nlf6V60j2J" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60j2K" role="2iSdaV" />
      <node concept="3F0ifn" id="6nlf6V60j2L" role="3EZMnx">
        <property role="3F0ifm" value="false" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60j2M">
    <property role="3GE5qa" value="Rules.Value" />
    <ref role="1XX52x" to="ep4t:6nlf6V60j1i" resolve="Value_7" />
    <node concept="3EZMnI" id="6nlf6V60j2N" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60j2O" role="2iSdaV" />
      <node concept="3F0ifn" id="6nlf6V60j2P" role="3EZMnx">
        <property role="3F0ifm" value="null" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60j2Q">
    <property role="3GE5qa" value="Rules.Pair" />
    <ref role="1XX52x" to="ep4t:6nlf6V60j1j" resolve="Pair" />
    <node concept="3EZMnI" id="6nlf6V60j2R" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60j2S" role="2iSdaV" />
      <node concept="3F0ifn" id="6nlf6V60j2T" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
      </node>
      <node concept="3F0A7n" id="6nlf6V60j2U" role="3EZMnx">
        <ref role="1NtTu8" to="ep4t:6nlf6V60j1x" resolve="STRING_1" />
      </node>
      <node concept="3F0ifn" id="6nlf6V60j2V" role="3EZMnx">
        <property role="3F0ifm" value="&quot;:" />
      </node>
      <node concept="3F1sOY" id="6nlf6V60j2W" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="ep4t:6nlf6V60j1y" />
        <node concept="3F0ifn" id="6nlf6V60j2X" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60j2Y">
    <property role="3GE5qa" value="Rules.Object_block_1_1" />
    <ref role="1XX52x" to="ep4t:6nlf6V60j1k" resolve="Object_block_1_1" />
    <node concept="3EZMnI" id="6nlf6V60j2Z" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60j30" role="2iSdaV" />
      <node concept="3F0ifn" id="6nlf6V60j31" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F1sOY" id="6nlf6V60j32" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="ep4t:6nlf6V60j1z" />
        <node concept="3F0ifn" id="6nlf6V60j33" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60j34">
    <property role="3GE5qa" value="Rules.Object" />
    <ref role="1XX52x" to="ep4t:6nlf6V60j1m" resolve="Object_1" />
    <node concept="3EZMnI" id="6nlf6V60j35" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60j36" role="2iSdaV" />
      <node concept="3F0ifn" id="6nlf6V60j37" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3F1sOY" id="6nlf6V60j38" role="3EZMnx">
        <property role="2ru_X1" value="true" />
        <ref role="1NtTu8" to="ep4t:6nlf6V60j1$" />
        <node concept="3F0ifn" id="6nlf6V60j39" role="2ruayu">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F2HdR" id="6nlf6V60j3a" role="3EZMnx">
        <ref role="1NtTu8" to="ep4t:6nlf6V60j1_" />
        <node concept="3F0ifn" id="6nlf6V60j3c" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="3F0ifn" id="6nlf6V60j3d" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6nlf6V60j3e">
    <property role="3GE5qa" value="Rules.Object" />
    <ref role="1XX52x" to="ep4t:6nlf6V60j1n" resolve="Object_2" />
    <node concept="3EZMnI" id="6nlf6V60j3f" role="2wV5jI">
      <node concept="l2Vlx" id="6nlf6V60j3g" role="2iSdaV" />
      <node concept="3F0ifn" id="6nlf6V60j3h" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3F0ifn" id="6nlf6V60j3i" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
    </node>
  </node>
</model>

