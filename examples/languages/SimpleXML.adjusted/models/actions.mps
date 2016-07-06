<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:df88d579-4e87-43b2-b287-067b8f589474(SimpleXML.adjusted.actions)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="bed5" ref="r:575257f1-368c-46f9-8a2f-eeebf9d70d9a(SimpleXML.adjusted.structure)" implicit="true" />
  </imports>
  <registry>
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
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="1177497140107" name="jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_sourceNode" flags="nn" index="Cj7Ep" />
      <concept id="1177526535706" name="jetbrains.mps.lang.actions.structure.ConceptFunctionParameter_result" flags="nn" index="E3gs8" />
      <concept id="1177526592562" name="jetbrains.mps.lang.actions.structure.QueryFunction_SideTransform_ConceptHandler" flags="in" index="E3ukw" />
      <concept id="1182819125053" name="jetbrains.mps.lang.actions.structure.ConceptRightTransformPart" flags="ng" index="1_wSoI">
        <reference id="1182819234902" name="concept" index="1_xjl5" />
        <child id="1182819210322" name="handler" index="1_xdl1" />
      </concept>
      <concept id="1138079221458" name="jetbrains.mps.lang.actions.structure.SideTransformHintSubstituteActionsBuilder" flags="ig" index="3UNGvq">
        <property id="1140829165817" name="transformTag" index="2uHTBK" />
        <property id="1158952484319" name="description" index="3mWRNi" />
        <reference id="1138079221462" name="applicableConcept" index="3UNGvu" />
        <child id="1177442283389" name="part" index="_1QTJ" />
      </concept>
      <concept id="1138079416598" name="jetbrains.mps.lang.actions.structure.SideTransformHintSubstituteActions" flags="ng" index="3UOs0u">
        <child id="1138079416599" name="actionsBuilder" index="3UOs0v" />
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
  <node concept="3UOs0u" id="6vXZUoCUPj2">
    <property role="3GE5qa" value="Rules.Element" />
    <property role="TrG5h" value="transform_Element_1_Attributes" />
    <node concept="3UNGvq" id="6vXZUoCUPj3" role="3UOs0v">
      <property role="2uHTBK" value="ext_1_RTransform" />
      <property role="3mWRNi" value=" Add first attribute" />
      <ref role="3UNGvu" to="bed5:6vXZUoCOmj7" resolve="Element_1" />
      <node concept="1_wSoI" id="6vXZUoCUR4q" role="_1QTJ">
        <ref role="1_xjl5" to="bed5:6vXZUoCOmiZ" resolve="Attribute" />
        <node concept="E3ukw" id="6vXZUoCUR4r" role="1_xdl1">
          <node concept="3clFbS" id="6vXZUoCUR4s" role="2VODD2">
            <node concept="3clFbF" id="6vXZUoCUR5X" role="3cqZAp">
              <node concept="2OqwBi" id="6vXZUoCURL1" role="3clFbG">
                <node concept="2OqwBi" id="6vXZUoCURc3" role="2Oq$k0">
                  <node concept="Cj7Ep" id="6vXZUoCUR5W" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="6vXZUoCURik" role="2OqNvi">
                    <ref role="3TtcxE" to="bed5:6vXZUoCOmjl" />
                  </node>
                </node>
                <node concept="1sK_Qi" id="6vXZUoCUTcL" role="2OqNvi">
                  <node concept="3cmrfG" id="6vXZUoCUTfW" role="1sKJu8">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="E3gs8" id="6vXZUoCUTiE" role="1sKFgg" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3UOs0u" id="6vXZUoCUZZi">
    <property role="3GE5qa" value="Rules.Element" />
    <property role="TrG5h" value="transform_Element_2_Attributes" />
    <node concept="3UNGvq" id="6vXZUoCUZZj" role="3UOs0v">
      <property role="3mWRNi" value=" Add first attribute" />
      <property role="2uHTBK" value="ext_1_RTransform" />
      <ref role="3UNGvu" to="bed5:6vXZUoCOmj8" resolve="Element_2" />
      <node concept="1_wSoI" id="6vXZUoCUZZk" role="_1QTJ">
        <ref role="1_xjl5" to="bed5:6vXZUoCOmiZ" resolve="Attribute" />
        <node concept="E3ukw" id="6vXZUoCUZZl" role="1_xdl1">
          <node concept="3clFbS" id="6vXZUoCUZZm" role="2VODD2">
            <node concept="3clFbF" id="6vXZUoCV00R" role="3cqZAp">
              <node concept="2OqwBi" id="6vXZUoCV0DB" role="3clFbG">
                <node concept="2OqwBi" id="6vXZUoCV04D" role="2Oq$k0">
                  <node concept="Cj7Ep" id="6vXZUoCV00Q" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="6vXZUoCV0aU" role="2OqNvi">
                    <ref role="3TtcxE" to="bed5:6vXZUoCOmjp" />
                  </node>
                </node>
                <node concept="1sK_Qi" id="6vXZUoCV3xV" role="2OqNvi">
                  <node concept="3cmrfG" id="6vXZUoCV3$K" role="1sKJu8">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="E3gs8" id="6vXZUoCV3Bu" role="1sKFgg" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

