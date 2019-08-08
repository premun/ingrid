<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e9c69e42-9f1b-4443-a2f9-06b67560420d(JSON.structure)">
  <persistence version="9" />
  <languages>
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports />
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978499127" name="jetbrains.mps.lang.structure.structure.ConstrainedDataTypeDeclaration" flags="ng" index="Az7Fb">
        <property id="1083066089218" name="constraint" index="FLfZY" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
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
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
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
  <node concept="1TIwiD" id="6vXZUoCOm1B">
    <property role="TrG5h" value="BaseConcept" />
    <property role="R5$K7" value="true" />
    <property role="EcuMT" value="7493426444128837735" />
  </node>
  <node concept="Az7Fb" id="6vXZUoCOm1C">
    <property role="TrG5h" value="NUMBER" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="(((\\-)?(0|[1-9]([0-9])*)\\.([0-9])+([Ee]([+-])?(0|[1-9]([0-9])*))?)|((\\-)?(0|[1-9]([0-9])*)[Ee]([+-])?(0|[1-9]([0-9])*))|((\\-)?(0|[1-9]([0-9])*)))" />
  </node>
  <node concept="Az7Fb" id="6vXZUoCOm1G">
    <property role="TrG5h" value="STRING" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="([^\&quot;]|\\\\\&quot;)*" />
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm1K">
    <property role="TrG5h" value="Array_block_1_1" />
    <property role="34LRSv" value="," />
    <property role="R4oN_" value="Array_block_1_1" />
    <property role="3GE5qa" value="Rules.Array_block_1_1" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128837744" />
    <ref role="1TJDcQ" node="6vXZUoCOm1B" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOm24" role="1TKVEi">
      <property role="20kJfa" value="Value_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128837764" />
      <ref role="20lvS9" node="6vXZUoCOm1T" resolve="IValue" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm1L">
    <property role="TrG5h" value="Pair" />
    <property role="34LRSv" value="&quot; &quot;:" />
    <property role="R4oN_" value="Pair" />
    <property role="3GE5qa" value="Rules.Pair" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128837745" />
    <ref role="1TJDcQ" node="6vXZUoCOm1B" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOm25" role="1TKVEl">
      <property role="TrG5h" value="STRING_1" />
      <property role="IQ2nx" value="7493426444128837765" />
      <ref role="AX2Wp" node="6vXZUoCOm1G" resolve="STRING" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOm26" role="1TKVEi">
      <property role="20kJfa" value="Value_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128837766" />
      <ref role="20lvS9" node="6vXZUoCOm1T" resolve="IValue" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm1M">
    <property role="TrG5h" value="Object_block_1_1" />
    <property role="34LRSv" value="," />
    <property role="R4oN_" value="Object_block_1_1" />
    <property role="3GE5qa" value="Rules.Object_block_1_1" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128837746" />
    <ref role="1TJDcQ" node="6vXZUoCOm1B" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOm27" role="1TKVEi">
      <property role="20kJfa" value="Pair_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128837767" />
      <ref role="20lvS9" node="6vXZUoCOm1L" resolve="Pair" />
    </node>
  </node>
  <node concept="PlHQZ" id="6vXZUoCOm1N">
    <property role="TrG5h" value="IArray" />
    <property role="3GE5qa" value="Interfaces" />
    <property role="EcuMT" value="7493426444128837747" />
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm1O">
    <property role="TrG5h" value="Array_1" />
    <property role="34LRSv" value="[ ]" />
    <property role="R4oN_" value="Array" />
    <property role="3GE5qa" value="Rules.Array" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128837748" />
    <ref role="1TJDcQ" node="6vXZUoCOm1B" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOm28" role="1TKVEi">
      <property role="20kJfa" value="Value_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128837768" />
      <ref role="20lvS9" node="6vXZUoCOm1T" resolve="IValue" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOm29" role="1TKVEi">
      <property role="20kJfa" value="Array_block_1_1_2" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128837769" />
      <ref role="20lvS9" node="6vXZUoCOm1K" resolve="Array_block_1_1" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOm2i" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm1N" resolve="IArray" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOm2q" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm1T" resolve="IValue" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOm2x" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm1Q" resolve="IJson" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm1P">
    <property role="TrG5h" value="Array_2" />
    <property role="34LRSv" value="[ ]" />
    <property role="R4oN_" value="Array" />
    <property role="3GE5qa" value="Rules.Array" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128837749" />
    <ref role="1TJDcQ" node="6vXZUoCOm1B" resolve="BaseConcept" />
    <node concept="PrWs8" id="6vXZUoCOm2j" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm1N" resolve="IArray" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOm2r" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm1T" resolve="IValue" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOm2y" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm1Q" resolve="IJson" />
    </node>
  </node>
  <node concept="PlHQZ" id="6vXZUoCOm1Q">
    <property role="TrG5h" value="IJson" />
    <property role="3GE5qa" value="Interfaces" />
    <property role="EcuMT" value="7493426444128837750" />
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm1R">
    <property role="TrG5h" value="Json_1" />
    <property role="34LRSv" value="Object json" />
    <property role="R4oN_" value="Json" />
    <property role="3GE5qa" value="Rules.Json" />
    <property role="EcuMT" value="7493426444128837751" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" node="6vXZUoCOm1B" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOm2a" role="1TKVEi">
      <property role="20kJfa" value="Object_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128837770" />
      <ref role="20lvS9" node="6vXZUoCOm21" resolve="IObject" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm1S">
    <property role="TrG5h" value="Json_2" />
    <property role="34LRSv" value="Array json" />
    <property role="R4oN_" value="Json" />
    <property role="3GE5qa" value="Rules.Json" />
    <property role="19KtqR" value="true" />
    <property role="EcuMT" value="7493426444128837752" />
    <ref role="1TJDcQ" node="6vXZUoCOm1B" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOm2b" role="1TKVEi">
      <property role="20kJfa" value="Array_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128837771" />
      <ref role="20lvS9" node="6vXZUoCOm1N" resolve="IArray" />
    </node>
  </node>
  <node concept="PlHQZ" id="6vXZUoCOm1T">
    <property role="TrG5h" value="IValue" />
    <property role="3GE5qa" value="Interfaces" />
    <property role="EcuMT" value="7493426444128837753" />
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm1U">
    <property role="TrG5h" value="Value_1" />
    <property role="34LRSv" value="&quot; &quot;" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128837754" />
    <ref role="1TJDcQ" node="6vXZUoCOm1B" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOm2c" role="1TKVEl">
      <property role="TrG5h" value="STRING_1" />
      <property role="IQ2nx" value="7493426444128837772" />
      <ref role="AX2Wp" node="6vXZUoCOm1G" resolve="STRING" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOm2k" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm1T" resolve="IValue" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm1V">
    <property role="TrG5h" value="Value_2" />
    <property role="34LRSv" value="Number value" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128837755" />
    <ref role="1TJDcQ" node="6vXZUoCOm1B" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOm2d" role="1TKVEl">
      <property role="TrG5h" value="NUMBER_1" />
      <property role="IQ2nx" value="7493426444128837773" />
      <ref role="AX2Wp" node="6vXZUoCOm1C" resolve="NUMBER" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOm2l" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm1T" resolve="IValue" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm1W">
    <property role="TrG5h" value="Value_3" />
    <property role="34LRSv" value="Object value" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128837756" />
    <ref role="1TJDcQ" node="6vXZUoCOm1B" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOm2e" role="1TKVEi">
      <property role="20kJfa" value="Object_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128837774" />
      <ref role="20lvS9" node="6vXZUoCOm21" resolve="IObject" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm1X">
    <property role="TrG5h" value="Value_4" />
    <property role="34LRSv" value="Array value" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128837757" />
    <ref role="1TJDcQ" node="6vXZUoCOm1B" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOm2f" role="1TKVEi">
      <property role="20kJfa" value="Array_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128837775" />
      <ref role="20lvS9" node="6vXZUoCOm1N" resolve="IArray" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm1Y">
    <property role="TrG5h" value="Value_5" />
    <property role="34LRSv" value="true" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128837758" />
    <ref role="1TJDcQ" node="6vXZUoCOm1B" resolve="BaseConcept" />
    <node concept="PrWs8" id="6vXZUoCOm2s" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm1T" resolve="IValue" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm1Z">
    <property role="TrG5h" value="Value_6" />
    <property role="34LRSv" value="false" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128837759" />
    <ref role="1TJDcQ" node="6vXZUoCOm1B" resolve="BaseConcept" />
    <node concept="PrWs8" id="6vXZUoCOm2t" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm1T" resolve="IValue" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm20">
    <property role="TrG5h" value="Value_7" />
    <property role="34LRSv" value="null" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128837760" />
    <ref role="1TJDcQ" node="6vXZUoCOm1B" resolve="BaseConcept" />
    <node concept="PrWs8" id="6vXZUoCOm2u" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm1T" resolve="IValue" />
    </node>
  </node>
  <node concept="PlHQZ" id="6vXZUoCOm21">
    <property role="TrG5h" value="IObject" />
    <property role="3GE5qa" value="Interfaces" />
    <property role="EcuMT" value="7493426444128837761" />
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm22">
    <property role="TrG5h" value="Object_1" />
    <property role="34LRSv" value="{ }" />
    <property role="R4oN_" value="Object" />
    <property role="3GE5qa" value="Rules.Object" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128837762" />
    <ref role="1TJDcQ" node="6vXZUoCOm1B" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOm2g" role="1TKVEi">
      <property role="20kJfa" value="Pair_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128837776" />
      <ref role="20lvS9" node="6vXZUoCOm1L" resolve="Pair" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOm2h" role="1TKVEi">
      <property role="20kJfa" value="Object_block_1_1_2" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128837777" />
      <ref role="20lvS9" node="6vXZUoCOm1M" resolve="Object_block_1_1" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOm2m" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm1T" resolve="IValue" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOm2n" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm21" resolve="IObject" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOm2v" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm1Q" resolve="IJson" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOm23">
    <property role="TrG5h" value="Object_2" />
    <property role="34LRSv" value="{ }" />
    <property role="R4oN_" value="Object" />
    <property role="3GE5qa" value="Rules.Object" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128837763" />
    <ref role="1TJDcQ" node="6vXZUoCOm1B" resolve="BaseConcept" />
    <node concept="PrWs8" id="6vXZUoCOm2o" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm1T" resolve="IValue" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOm2p" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm21" resolve="IObject" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOm2w" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOm1Q" resolve="IJson" />
    </node>
  </node>
</model>

