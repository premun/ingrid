<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e7cb953d-e1d3-464c-b954-fb1460bed4d2(imported.language.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports />
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978499127" name="jetbrains.mps.lang.structure.structure.ConstrainedDataTypeDeclaration" flags="ng" index="Az7Fb">
        <property id="1083066089218" name="constraint" index="FLfZY" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="1587916991969465369" name="conceptId" index="1pbfSe" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1156235010670" name="alias" index="OYydz" />
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="Az7Fb" id="AdDO7XLJ63">
    <property role="TrG5h" value="STRING" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="(.)+" />
  </node>
  <node concept="Az7Fb" id="AdDO7XLJ64">
    <property role="TrG5h" value="DIGIT" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="([0-9])+" />
  </node>
  <node concept="PlHQZ" id="AdDO7XLJ65">
    <property role="TrG5h" value="A" />
    <property role="3GE5qa" value="Interfaces.A" />
    <property role="1pbfSe" value="122984646" />
  </node>
  <node concept="1TIwiD" id="AdDO7XLJ66">
    <property role="TrG5h" value="A_1" />
    <property role="OYydz" value="C a" />
    <property role="3GE5qa" value="Rules.A" />
    <property role="1pbfSe" value="122984647" />
    <property role="19KtqR" value="false" />
    <node concept="PrWs8" id="AdDO7XLJ67" role="PzmwI">
      <ref role="PrY4T" node="AdDO7XLJ65" resolve="A" />
    </node>
    <node concept="1TJgyj" id="AdDO7XLJ6r" role="1TKVEi">
      <property role="20kJfa" value="C_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="AdDO7XLJ6m" resolve="C" />
    </node>
  </node>
  <node concept="1TIwiD" id="AdDO7XLJ68">
    <property role="TrG5h" value="A_2" />
    <property role="OYydz" value="D a" />
    <property role="3GE5qa" value="Rules.A" />
    <property role="1pbfSe" value="122984649" />
    <property role="19KtqR" value="false" />
    <node concept="PrWs8" id="AdDO7XLJ69" role="PzmwI">
      <ref role="PrY4T" node="AdDO7XLJ65" resolve="A" />
    </node>
    <node concept="1TJgyj" id="AdDO7XLJ6s" role="1TKVEi">
      <property role="20kJfa" value="D_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="AdDO7XLJ6n" resolve="D" />
    </node>
  </node>
  <node concept="1TIwiD" id="AdDO7XLJ6a">
    <property role="TrG5h" value="A_3" />
    <property role="OYydz" value="null" />
    <property role="3GE5qa" value="Rules.A" />
    <property role="1pbfSe" value="122984651" />
    <property role="19KtqR" value="false" />
    <node concept="PrWs8" id="AdDO7XLJ6b" role="PzmwI">
      <ref role="PrY4T" node="AdDO7XLJ65" resolve="A" />
    </node>
  </node>
  <node concept="PlHQZ" id="AdDO7XLJ6c">
    <property role="TrG5h" value="B" />
    <property role="3GE5qa" value="Interfaces.B" />
    <property role="1pbfSe" value="122984653" />
  </node>
  <node concept="1TIwiD" id="AdDO7XLJ6d">
    <property role="TrG5h" value="B_1" />
    <property role="OYydz" value="E b" />
    <property role="3GE5qa" value="Rules.B" />
    <property role="1pbfSe" value="122984654" />
    <property role="19KtqR" value="false" />
    <node concept="PrWs8" id="AdDO7XLJ6e" role="PzmwI">
      <ref role="PrY4T" node="AdDO7XLJ6c" resolve="B" />
    </node>
    <node concept="1TJgyj" id="AdDO7XLJ6t" role="1TKVEi">
      <property role="20kJfa" value="E_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="AdDO7XLJ6o" resolve="E" />
    </node>
  </node>
  <node concept="1TIwiD" id="AdDO7XLJ6f">
    <property role="TrG5h" value="B_2" />
    <property role="OYydz" value="F b" />
    <property role="3GE5qa" value="Rules.B" />
    <property role="1pbfSe" value="122984656" />
    <property role="19KtqR" value="false" />
    <node concept="PrWs8" id="AdDO7XLJ6g" role="PzmwI">
      <ref role="PrY4T" node="AdDO7XLJ6c" resolve="B" />
    </node>
    <node concept="1TJgyj" id="AdDO7XLJ6u" role="1TKVEi">
      <property role="20kJfa" value="F_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="AdDO7XLJ6p" resolve="F" />
    </node>
  </node>
  <node concept="PlHQZ" id="AdDO7XLJ6h">
    <property role="TrG5h" value="S" />
    <property role="3GE5qa" value="Interfaces.S" />
    <property role="1pbfSe" value="122984658" />
  </node>
  <node concept="1TIwiD" id="AdDO7XLJ6i">
    <property role="TrG5h" value="S_1" />
    <property role="OYydz" value="A s" />
    <property role="3GE5qa" value="Rules.S" />
    <property role="1pbfSe" value="122984659" />
    <property role="19KtqR" value="false" />
    <node concept="PrWs8" id="AdDO7XLJ6j" role="PzmwI">
      <ref role="PrY4T" node="AdDO7XLJ6h" resolve="S" />
    </node>
    <node concept="1TJgyj" id="AdDO7XLJ6v" role="1TKVEi">
      <property role="20kJfa" value="A_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="AdDO7XLJ65" resolve="A" />
    </node>
  </node>
  <node concept="1TIwiD" id="AdDO7XLJ6k">
    <property role="TrG5h" value="S_2" />
    <property role="OYydz" value="B s" />
    <property role="3GE5qa" value="Rules.S" />
    <property role="1pbfSe" value="122984661" />
    <property role="19KtqR" value="false" />
    <node concept="PrWs8" id="AdDO7XLJ6l" role="PzmwI">
      <ref role="PrY4T" node="AdDO7XLJ6h" resolve="S" />
    </node>
    <node concept="1TJgyj" id="AdDO7XLJ6w" role="1TKVEi">
      <property role="20kJfa" value="B_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="AdDO7XLJ6c" resolve="B" />
    </node>
  </node>
  <node concept="1TIwiD" id="AdDO7XLJ6m">
    <property role="TrG5h" value="C" />
    <property role="OYydz" value="String c" />
    <property role="3GE5qa" value="Rules.C" />
    <property role="1pbfSe" value="122984663" />
    <property role="19KtqR" value="false" />
    <node concept="1TJgyi" id="AdDO7XLJ6x" role="1TKVEl">
      <property role="TrG5h" value="STRING_1" />
      <ref role="AX2Wp" node="AdDO7XLJ63" resolve="STRING" />
    </node>
  </node>
  <node concept="1TIwiD" id="AdDO7XLJ6n">
    <property role="TrG5h" value="D" />
    <property role="OYydz" value="Digit d" />
    <property role="3GE5qa" value="Rules.D" />
    <property role="1pbfSe" value="122984664" />
    <property role="19KtqR" value="false" />
    <node concept="1TJgyi" id="AdDO7XLJ6y" role="1TKVEl">
      <property role="TrG5h" value="DIGIT_1" />
      <ref role="AX2Wp" node="AdDO7XLJ64" resolve="DIGIT" />
    </node>
  </node>
  <node concept="1TIwiD" id="AdDO7XLJ6o">
    <property role="TrG5h" value="E" />
    <property role="OYydz" value="true" />
    <property role="3GE5qa" value="Rules.E" />
    <property role="1pbfSe" value="122984665" />
    <property role="19KtqR" value="false" />
  </node>
  <node concept="1TIwiD" id="AdDO7XLJ6p">
    <property role="TrG5h" value="F" />
    <property role="OYydz" value="false" />
    <property role="3GE5qa" value="Rules.F" />
    <property role="1pbfSe" value="122984666" />
    <property role="19KtqR" value="false" />
  </node>
  <node concept="1TIwiD" id="AdDO7XLJ6q">
    <property role="TrG5h" value="Start" />
    <property role="OYydz" value="S start" />
    <property role="3GE5qa" value="Rules.Start" />
    <property role="1pbfSe" value="122984667" />
    <property role="19KtqR" value="true" />
    <node concept="1TJgyj" id="AdDO7XLJ6z" role="1TKVEi">
      <property role="20kJfa" value="S_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="AdDO7XLJ6h" resolve="S" />
    </node>
  </node>
</model>

