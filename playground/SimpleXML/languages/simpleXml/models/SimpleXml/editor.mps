<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2207ee5a-a5a3-4d39-82e3-b0ee5978e147(SimpleXml.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="2faz" ref="r:420e2e00-e649-45d0-8289-092d899eb106(SimpleXml.structure)" implicit="true" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
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
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
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
  <node concept="24kQdi" id="39OqM6CyKin">
    <property role="3GE5qa" value="Characters" />
    <ref role="1XX52x" to="2faz:39OqM6CyKie" resolve="EqualChar" />
    <node concept="3F0ifn" id="39OqM6CyKip" role="2wV5jI">
      <property role="3F0ifm" value="=" />
    </node>
  </node>
  <node concept="24kQdi" id="39OqM6CyKiH">
    <property role="3GE5qa" value="Tokens" />
    <ref role="1XX52x" to="2faz:39OqM6CyKi_" resolve="ATTRVALUE_Concept" />
    <node concept="3F0A7n" id="39OqM6CyKiJ" role="2wV5jI">
      <ref role="1NtTu8" to="2faz:39OqM6CyKiA" resolve="value" />
    </node>
  </node>
  <node concept="24kQdi" id="39OqM6CyKjF">
    <property role="3GE5qa" value="Tokens" />
    <ref role="1XX52x" to="2faz:39OqM6CyKiN" resolve="NAME_Concept" />
    <node concept="3F0A7n" id="39OqM6CyKjH" role="2wV5jI">
      <ref role="1NtTu8" to="2faz:39OqM6CyKiO" resolve="value" />
    </node>
  </node>
  <node concept="24kQdi" id="39OqM6CyKkH">
    <property role="3GE5qa" value="Tokens" />
    <ref role="1XX52x" to="2faz:39OqM6CyKjP" resolve="WS_Concept" />
    <node concept="3F0A7n" id="39OqM6CyKkJ" role="2wV5jI">
      <ref role="1NtTu8" to="2faz:39OqM6CyKjQ" resolve="value" />
    </node>
  </node>
  <node concept="24kQdi" id="39OqM6CyKlf">
    <property role="3GE5qa" value="Characters" />
    <ref role="1XX52x" to="2faz:39OqM6CyKl9" resolve="GreaterThanChar" />
    <node concept="3F0ifn" id="39OqM6CyKlh" role="2wV5jI">
      <property role="3F0ifm" value="&gt;" />
    </node>
  </node>
  <node concept="24kQdi" id="39OqM6CyKlq">
    <property role="3GE5qa" value="Characters" />
    <ref role="1XX52x" to="2faz:39OqM6CyKlk" resolve="SlashChar" />
    <node concept="3F0ifn" id="39OqM6CyKls" role="2wV5jI">
      <property role="3F0ifm" value="/" />
    </node>
  </node>
  <node concept="24kQdi" id="39OqM6CyKl_">
    <property role="3GE5qa" value="Characters" />
    <ref role="1XX52x" to="2faz:39OqM6CyKlv" resolve="XmlOpenTagChar" />
    <node concept="3F0ifn" id="39OqM6CyKlB" role="2wV5jI">
      <property role="3F0ifm" value="&lt;?xml" />
    </node>
  </node>
  <node concept="24kQdi" id="39OqM6CyKlK">
    <property role="3GE5qa" value="Characters" />
    <ref role="1XX52x" to="2faz:39OqM6CyKlE" resolve="XmlCloseTagChar" />
    <node concept="3F0ifn" id="39OqM6CyKlM" role="2wV5jI">
      <property role="3F0ifm" value="?&gt;" />
    </node>
  </node>
  <node concept="24kQdi" id="39OqM6CyKmo">
    <property role="3GE5qa" value="Rules" />
    <ref role="1XX52x" to="2faz:39OqM6CyKgi" resolve="Prolog" />
    <node concept="3EZMnI" id="39OqM6CyKmq" role="2wV5jI">
      <node concept="3F1sOY" id="39OqM6CyKmx" role="3EZMnx">
        <ref role="1NtTu8" to="2faz:39OqM6CyKlP" />
      </node>
      <node concept="1iCGBv" id="39OqM6CySZw" role="3EZMnx">
        <ref role="1NtTu8" to="2faz:39OqM6CyKlR" />
        <node concept="1sVBvm" id="39OqM6CySZy" role="1sWHZn">
          <node concept="3F0ifn" id="39OqM6CySZJ" role="2wV5jI">
            <property role="3F0ifm" value="" />
          </node>
        </node>
      </node>
      <node concept="3F2HdR" id="39OqM6CyKmN" role="3EZMnx">
        <ref role="1NtTu8" to="2faz:39OqM6CyKlY" />
        <node concept="2iRfu4" id="39OqM6CyKmP" role="2czzBx" />
        <node concept="3F0ifn" id="39OqM6CyKoI" role="2czzBI">
          <property role="3F0ifm" value="attr..." />
          <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
        </node>
      </node>
      <node concept="1iCGBv" id="39OqM6CyT04" role="3EZMnx">
        <ref role="1NtTu8" to="2faz:39OqM6CyKlU" />
        <node concept="1sVBvm" id="39OqM6CyT06" role="1sWHZn">
          <node concept="3F0ifn" id="39OqM6CyT0l" role="2wV5jI">
            <property role="3F0ifm" value="" />
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="39OqM6CyKp7" role="3EZMnx">
        <ref role="1NtTu8" to="2faz:39OqM6CyKmd" />
      </node>
      <node concept="2iRfu4" id="39OqM6CyKmt" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="39OqM6CyKpN">
    <ref role="1XX52x" to="2faz:39OqM6CyJ08" resolve="Document" />
    <node concept="3EZMnI" id="39OqM6CyKpP" role="2wV5jI">
      <node concept="3F1sOY" id="39OqM6CyKq2" role="3EZMnx">
        <ref role="1NtTu8" to="2faz:39OqM6CyKpg" />
      </node>
      <node concept="3F1sOY" id="39OqM6CyKqk" role="3EZMnx">
        <ref role="1NtTu8" to="2faz:39OqM6CyKpi" />
      </node>
      <node concept="2iRkQZ" id="39OqM6CyKpS" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="39OqM6CyMGK">
    <property role="3GE5qa" value="Characters" />
    <ref role="1XX52x" to="2faz:39OqM6CyMGE" resolve="LessThanChar" />
    <node concept="3F0ifn" id="39OqM6CyMGM" role="2wV5jI">
      <property role="3F0ifm" value="&lt;" />
    </node>
  </node>
  <node concept="24kQdi" id="39OqM6CyMHK">
    <property role="3GE5qa" value="Rules" />
    <ref role="1XX52x" to="2faz:39OqM6CyKga" resolve="Element_1" />
    <node concept="3EZMnI" id="39OqM6Czgot" role="2wV5jI">
      <node concept="2iRkQZ" id="39OqM6Czgou" role="2iSdaV" />
      <node concept="3EZMnI" id="39OqM6CyMHP" role="3EZMnx">
        <node concept="3F1sOY" id="39OqM6CyMHW" role="3EZMnx">
          <ref role="1NtTu8" to="2faz:39OqM6CyMGP" />
        </node>
        <node concept="2iRfu4" id="39OqM6CyMHS" role="2iSdaV" />
        <node concept="3F1sOY" id="39OqM6CyMIa" role="3EZMnx">
          <ref role="1NtTu8" to="2faz:39OqM6CyMH0" />
        </node>
        <node concept="3F2HdR" id="39OqM6CyMI$" role="3EZMnx">
          <ref role="1NtTu8" to="2faz:39OqM6CyMHx" />
          <node concept="2iRfu4" id="39OqM6CyMIA" role="2czzBx" />
          <node concept="3F0ifn" id="39OqM6CyMIG" role="2czzBI">
            <property role="3F0ifm" value=" " />
          </node>
        </node>
        <node concept="3F1sOY" id="39OqM6CyMIZ" role="3EZMnx">
          <ref role="1NtTu8" to="2faz:39OqM6CyMGR" />
        </node>
      </node>
      <node concept="3EZMnI" id="39OqM6Czgwm" role="3EZMnx">
        <node concept="VPM3Z" id="39OqM6Czgwo" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3XFhqQ" id="39OqM6Czgx7" role="3EZMnx" />
        <node concept="1iCGBv" id="39OqM6Czgxi" role="3EZMnx">
          <ref role="1NtTu8" to="2faz:39OqM6CyMKL" />
          <node concept="1sVBvm" id="39OqM6Czgxj" role="1sWHZn">
            <node concept="3F0ifn" id="39OqM6Czgxk" role="2wV5jI" />
          </node>
        </node>
        <node concept="2iRfu4" id="39OqM6Czgwr" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="39OqM6Czgz6" role="3EZMnx">
        <node concept="2iRfu4" id="39OqM6Czgz7" role="2iSdaV" />
        <node concept="3F1sOY" id="39OqM6CyMJr" role="3EZMnx">
          <ref role="1NtTu8" to="2faz:39OqM6CyMGU" />
        </node>
        <node concept="3F1sOY" id="39OqM6Czg$3" role="3EZMnx">
          <ref role="1NtTu8" to="2faz:39OqM6CyMKC" />
        </node>
        <node concept="3F1sOY" id="39OqM6Czg$o" role="3EZMnx">
          <ref role="1NtTu8" to="2faz:39OqM6CyMHq" />
        </node>
        <node concept="3F1sOY" id="39OqM6Czg$N" role="3EZMnx">
          <ref role="1NtTu8" to="2faz:39OqM6CyMHe" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="39OqM6CyMO$">
    <property role="3GE5qa" value="Rules" />
    <ref role="1XX52x" to="2faz:39OqM6CyMNV" resolve="Element_2" />
    <node concept="3EZMnI" id="39OqM6CyMOA" role="2wV5jI">
      <node concept="3F1sOY" id="39OqM6CyMOK" role="3EZMnx">
        <ref role="1NtTu8" to="2faz:39OqM6CyMNW" />
      </node>
      <node concept="3F1sOY" id="39OqM6CyMOU" role="3EZMnx">
        <ref role="1NtTu8" to="2faz:39OqM6CyMO0" />
      </node>
      <node concept="3F0ifn" id="39OqM6CyMP2" role="3EZMnx">
        <property role="3F0ifm" value=" " />
      </node>
      <node concept="3F2HdR" id="39OqM6CyMPc" role="3EZMnx">
        <ref role="1NtTu8" to="2faz:39OqM6CyMO2" />
        <node concept="2iRfu4" id="39OqM6CyMPe" role="2czzBx" />
        <node concept="3F0ifn" id="39OqM6CyMPk" role="2czzBI">
          <property role="3F0ifm" value=" " />
        </node>
      </node>
      <node concept="2iRfu4" id="39OqM6CyMOD" role="2iSdaV" />
      <node concept="3F0ifn" id="39OqM6CyMPu" role="3EZMnx">
        <property role="3F0ifm" value=" " />
      </node>
      <node concept="3F1sOY" id="39OqM6CyMPU" role="3EZMnx">
        <ref role="1NtTu8" to="2faz:39OqM6CyMO3" />
      </node>
      <node concept="3F1sOY" id="39OqM6CyMQp" role="3EZMnx">
        <ref role="1NtTu8" to="2faz:39OqM6CyMNY" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="39OqM6CyWrT">
    <property role="3GE5qa" value="Rules" />
    <ref role="1XX52x" to="2faz:39OqM6CyKi7" resolve="Attribute" />
    <node concept="3EZMnI" id="39OqM6CyWrV" role="2wV5jI">
      <node concept="3F1sOY" id="39OqM6CyWs2" role="3EZMnx">
        <ref role="1NtTu8" to="2faz:39OqM6CyKi8" />
      </node>
      <node concept="2iRfu4" id="39OqM6CyWrY" role="2iSdaV" />
      <node concept="3F1sOY" id="39OqM6CyWs8" role="3EZMnx">
        <ref role="1NtTu8" to="2faz:39OqM6CyKis" />
      </node>
      <node concept="3F1sOY" id="39OqM6CyWsg" role="3EZMnx">
        <ref role="1NtTu8" to="2faz:39OqM6CyKjK" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="39OqM6CzecJ">
    <property role="3GE5qa" value="Rules" />
    <ref role="1XX52x" to="2faz:39OqM6Czece" resolve="Content_1" />
    <node concept="1iCGBv" id="39OqM6Czoo3" role="2wV5jI">
      <ref role="1NtTu8" to="2faz:39OqM6Czecf" />
      <node concept="1sVBvm" id="39OqM6Czoo4" role="1sWHZn">
        <node concept="3F0ifn" id="39OqM6Czooc" role="2wV5jI">
          <property role="3F0ifm" value="..." />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="39OqM6Czm7F">
    <property role="3GE5qa" value="Rules" />
    <ref role="1XX52x" to="2faz:39OqM6Czm7y" resolve="Content_2" />
    <node concept="1iCGBv" id="39OqM6Czooi" role="2wV5jI">
      <ref role="1NtTu8" to="2faz:39OqM6Czm7z" />
      <node concept="1sVBvm" id="39OqM6Czooj" role="1sWHZn">
        <node concept="3F0ifn" id="39OqM6Czoor" role="2wV5jI">
          <property role="3F0ifm" value="..." />
        </node>
      </node>
    </node>
  </node>
</model>

