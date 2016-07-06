<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:22421599-0862-44d6-9aa7-f3ea12d8f84f(JSON.adjusted.structure)">
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
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
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
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
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
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="6vXZUoCOm9A">
    <property role="TrG5h" value="BaseConcept" />
    <property role="1pbfSe" value="1865457140" />
    <property role="R5$K7" value="true" />
  </node>
  <node concept="Az7Fb" id="6vXZUoCOm9B">
    <property role="TrG5h" value="NUMBER" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="(((\\-)?(0|[1-9]([0-9])*)\\.([0-9])+([Ee]([+-])?(0|[1-9]([0-9])*))?)|((\\-)?(0|[1-9]([0-9])*)[Ee]([+-])?(0|[1-9]([0-9])*))|((\\-)?(0|[1-9]([0-9])*)))" />
  </node>
  <node concept="Az7Fb" id="6vXZUoCOm9F">
    <property role="TrG5h" value="STRING" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="([^\&quot;]|\\\\\&quot;)*" />
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm9K">
    <property role="TrG5h" value="Pair" />
    <property role="34LRSv" value="&quot; &quot;:" />
    <property role="R4oN_" value="Pair" />
    <property role="3GE5qa" value="Rules.Pair" />
    <property role="1pbfSe" value="1865457130" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOm9A" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOma4" role="1TKVEl">
      <property role="TrG5h" value="STRING_1" />
      <ref role="AX2Wp" node="6vXZUoCOm9F" resolve="STRING" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOma5" role="1TKVEi">
      <property role="20kJfa" value="Value_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6vXZUoCOm9S" resolve="Value" />
    </node>
  </node>
  <node concept="PlHQZ" id="6vXZUoCOm9M">
    <property role="TrG5h" value="Array" />
    <property role="3GE5qa" value="Interfaces.Array" />
    <property role="1pbfSe" value="1865457128" />
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm9N">
    <property role="TrG5h" value="Array_1" />
    <property role="34LRSv" value="[ ]" />
    <property role="R4oN_" value="Array" />
    <property role="3GE5qa" value="Rules.Array" />
    <property role="1pbfSe" value="1865457127" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOm9A" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOma7" role="1TKVEi">
      <property role="20kJfa" value="Value_1" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6vXZUoCOm9S" resolve="Value" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmal" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm9P" resolve="Json" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmam" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm9M" resolve="Array" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmat" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm9S" resolve="Value" />
    </node>
  </node>
  <node concept="PlHQZ" id="6vXZUoCOm9P">
    <property role="TrG5h" value="Json" />
    <property role="3GE5qa" value="Interfaces.Json" />
    <property role="1pbfSe" value="1865457125" />
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm9Q">
    <property role="TrG5h" value="Json_1" />
    <property role="34LRSv" value="Object json" />
    <property role="R4oN_" value="Json" />
    <property role="3GE5qa" value="Rules.Json" />
    <property role="1pbfSe" value="1865457124" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" node="6vXZUoCOm9A" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOma9" role="1TKVEi">
      <property role="20kJfa" value="Object_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6vXZUoCOma0" resolve="Object" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm9R">
    <property role="TrG5h" value="Json_2" />
    <property role="34LRSv" value="Array json" />
    <property role="R4oN_" value="Json" />
    <property role="3GE5qa" value="Rules.Json" />
    <property role="1pbfSe" value="1865457123" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" node="6vXZUoCOm9A" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOmaa" role="1TKVEi">
      <property role="20kJfa" value="Array_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6vXZUoCOm9M" resolve="Array" />
    </node>
  </node>
  <node concept="PlHQZ" id="6vXZUoCOm9S">
    <property role="TrG5h" value="Value" />
    <property role="3GE5qa" value="Interfaces.Value" />
    <property role="1pbfSe" value="1865457122" />
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm9T">
    <property role="TrG5h" value="Value_1" />
    <property role="34LRSv" value="&quot; &quot;" />
    <property role="R4oN_" value="String value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="1865457121" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOm9A" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOmab" role="1TKVEl">
      <property role="TrG5h" value="STRING_1" />
      <ref role="AX2Wp" node="6vXZUoCOm9F" resolve="STRING" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmap" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm9S" resolve="Value" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm9U">
    <property role="TrG5h" value="Value_2" />
    <property role="34LRSv" value="Number value" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="1865457120" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOm9A" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOmac" role="1TKVEl">
      <property role="TrG5h" value="NUMBER_1" />
      <ref role="AX2Wp" node="6vXZUoCOm9B" resolve="NUMBER" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmaq" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm9S" resolve="Value" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm9V">
    <property role="TrG5h" value="Value_3" />
    <property role="34LRSv" value="Object value" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="1865457119" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOm9A" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOmad" role="1TKVEi">
      <property role="20kJfa" value="Object_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6vXZUoCOma0" resolve="Object" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm9W">
    <property role="TrG5h" value="Value_4" />
    <property role="34LRSv" value="Array value" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="1865457118" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOm9A" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOmae" role="1TKVEi">
      <property role="20kJfa" value="Array_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6vXZUoCOm9M" resolve="Array" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm9X">
    <property role="TrG5h" value="Value_5" />
    <property role="34LRSv" value="true" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="1865457117" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOm9A" resolve="BaseConcept" />
    <node concept="PrWs8" id="6vXZUoCOmav" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm9S" resolve="Value" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm9Y">
    <property role="TrG5h" value="Value_6" />
    <property role="34LRSv" value="false" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="1865457116" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOm9A" resolve="BaseConcept" />
    <node concept="PrWs8" id="6vXZUoCOmaw" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm9S" resolve="Value" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm9Z">
    <property role="TrG5h" value="Value_7" />
    <property role="34LRSv" value="null" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="1865457115" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOm9A" resolve="BaseConcept" />
    <node concept="PrWs8" id="6vXZUoCOmax" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm9S" resolve="Value" />
    </node>
  </node>
  <node concept="PlHQZ" id="6vXZUoCOma0">
    <property role="TrG5h" value="Object" />
    <property role="3GE5qa" value="Interfaces.Object" />
    <property role="1pbfSe" value="1865457114" />
  </node>
  <node concept="1TIwiD" id="6vXZUoCOma1">
    <property role="TrG5h" value="Object_1" />
    <property role="34LRSv" value="{ }" />
    <property role="R4oN_" value="Object" />
    <property role="3GE5qa" value="Rules.Object" />
    <property role="1pbfSe" value="1865457113" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOm9A" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOmaf" role="1TKVEi">
      <property role="20kJfa" value="Pair_1" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6vXZUoCOm9K" resolve="Pair" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmah" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm9P" resolve="Json" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmai" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOma0" resolve="Object" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmar" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm9S" resolve="Value" />
    </node>
  </node>
</model>

