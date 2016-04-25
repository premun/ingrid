<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ff2d9a94-ae1a-4499-8f4b-3caba363a8bb(JSON.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
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
  <node concept="1TIwiD" id="FxYxRU7s0y">
    <property role="TrG5h" value="BaseConcept" />
    <property role="1pbfSe" value="83868223" />
    <property role="R5$K7" value="true" />
    <node concept="1TJgyi" id="FxYxRU7s0z" role="1TKVEl">
      <property role="TrG5h" value="__DeleteContext" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="Az7Fb" id="FxYxRU7s0$">
    <property role="TrG5h" value="NUMBER" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="(((-)?((0)|([1-9]([0-9])*)).([0-9])+([Ee]([+-])?((0)|([1-9]([0-9])*)))?)|((-)?((0)|([1-9]([0-9])*))[Ee]([+-])?((0)|([1-9]([0-9])*)))|((-)?((0)|([1-9]([0-9])*))))" />
  </node>
  <node concept="Az7Fb" id="FxYxRU7s0_">
    <property role="TrG5h" value="ESC" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="((\\\\[&quot;\\\\/bfnrt]u[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F])|([&quot;\\\\/bfnrt])|(u[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F]))" />
  </node>
  <node concept="Az7Fb" id="FxYxRU7s0A">
    <property role="TrG5h" value="STRING" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="((((\\\\[&quot;\\\\/bfnrt]u[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F])|([&quot;\\\\/bfnrt])|(u[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F]))([^&quot;\\\\])*)|(((\\\\[&quot;\\\\/bfnrt]u[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F])|([&quot;\\\\/bfnrt])|(u[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F])))|([^&quot;\\\\]))" />
  </node>
  <node concept="Az7Fb" id="FxYxRU7s0B">
    <property role="TrG5h" value="WS" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="([ \\t\\n\\r])+" />
  </node>
  <node concept="Az7Fb" id="FxYxRU7s0C">
    <property role="TrG5h" value="UNICODE" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="u[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F]" />
  </node>
  <node concept="PlHQZ" id="FxYxRU7s0D">
    <property role="TrG5h" value="Array" />
    <property role="3GE5qa" value="Interfaces.Array" />
    <property role="1pbfSe" value="83868230" />
  </node>
  <node concept="1TIwiD" id="FxYxRU7s0E">
    <property role="TrG5h" value="Array_1" />
    <property role="34LRSv" value="[ ]" />
    <property role="R4oN_" value="Array" />
    <property role="3GE5qa" value="Rules.Array" />
    <property role="1pbfSe" value="83868231" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="FxYxRU7s0y" resolve="BaseConcept" />
    <node concept="PrWs8" id="FxYxRU7s0F" role="PzmwI">
      <ref role="PrY4T" node="FxYxRU7s0D" resolve="Array" />
    </node>
    <node concept="1TJgyj" id="FxYxRU7s1a" role="1TKVEi">
      <property role="20kJfa" value="Value_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="FxYxRU7s0O" resolve="Value" />
    </node>
    <node concept="1TJgyj" id="FxYxRU7s1b" role="1TKVEi">
      <property role="20kJfa" value="Array_block_1_1_2" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="FxYxRU7s0I" resolve="Array_block_1_1" />
    </node>
  </node>
  <node concept="1TIwiD" id="FxYxRU7s0G">
    <property role="TrG5h" value="Array_2" />
    <property role="34LRSv" value="[ ]" />
    <property role="R4oN_" value="Array" />
    <property role="3GE5qa" value="Rules.Array" />
    <property role="1pbfSe" value="83868233" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="FxYxRU7s0y" resolve="BaseConcept" />
    <node concept="PrWs8" id="FxYxRU7s0H" role="PzmwI">
      <ref role="PrY4T" node="FxYxRU7s0D" resolve="Array" />
    </node>
  </node>
  <node concept="1TIwiD" id="FxYxRU7s0I">
    <property role="TrG5h" value="Array_block_1_1" />
    <property role="34LRSv" value="," />
    <property role="R4oN_" value="Array_block_1_1" />
    <property role="3GE5qa" value="Rules.Array_block_1_1" />
    <property role="1pbfSe" value="83868235" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="FxYxRU7s0y" resolve="BaseConcept" />
    <node concept="1TJgyj" id="FxYxRU7s1c" role="1TKVEi">
      <property role="20kJfa" value="Value_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="FxYxRU7s0O" resolve="Value" />
    </node>
  </node>
  <node concept="PlHQZ" id="FxYxRU7s0J">
    <property role="TrG5h" value="Json" />
    <property role="3GE5qa" value="Interfaces.Json" />
    <property role="1pbfSe" value="83868236" />
  </node>
  <node concept="1TIwiD" id="FxYxRU7s0K">
    <property role="TrG5h" value="Json_1" />
    <property role="34LRSv" value="Object json" />
    <property role="R4oN_" value="Json" />
    <property role="3GE5qa" value="Rules.Json" />
    <property role="1pbfSe" value="83868237" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" node="FxYxRU7s0y" resolve="BaseConcept" />
    <node concept="PrWs8" id="FxYxRU7s0L" role="PzmwI">
      <ref role="PrY4T" node="FxYxRU7s0J" resolve="Json" />
    </node>
    <node concept="1TJgyj" id="FxYxRU7s1d" role="1TKVEi">
      <property role="20kJfa" value="Object_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="FxYxRU7s15" resolve="Object" />
    </node>
  </node>
  <node concept="1TIwiD" id="FxYxRU7s0M">
    <property role="TrG5h" value="Json_2" />
    <property role="34LRSv" value="Array json" />
    <property role="R4oN_" value="Json" />
    <property role="3GE5qa" value="Rules.Json" />
    <property role="1pbfSe" value="83868239" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" node="FxYxRU7s0y" resolve="BaseConcept" />
    <node concept="PrWs8" id="FxYxRU7s0N" role="PzmwI">
      <ref role="PrY4T" node="FxYxRU7s0J" resolve="Json" />
    </node>
    <node concept="1TJgyj" id="FxYxRU7s1e" role="1TKVEi">
      <property role="20kJfa" value="Array_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="FxYxRU7s0D" resolve="Array" />
    </node>
  </node>
  <node concept="PlHQZ" id="FxYxRU7s0O">
    <property role="TrG5h" value="Value" />
    <property role="3GE5qa" value="Interfaces.Value" />
    <property role="1pbfSe" value="83868241" />
  </node>
  <node concept="1TIwiD" id="FxYxRU7s0P">
    <property role="TrG5h" value="Value_1" />
    <property role="34LRSv" value="&quot; &quot;" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="83868242" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="FxYxRU7s0y" resolve="BaseConcept" />
    <node concept="PrWs8" id="FxYxRU7s0Q" role="PzmwI">
      <ref role="PrY4T" node="FxYxRU7s0O" resolve="Value" />
    </node>
    <node concept="1TJgyi" id="FxYxRU7s1f" role="1TKVEl">
      <property role="TrG5h" value="STRING_1" />
      <ref role="AX2Wp" node="FxYxRU7s0A" resolve="STRING" />
    </node>
  </node>
  <node concept="1TIwiD" id="FxYxRU7s0R">
    <property role="TrG5h" value="Value_2" />
    <property role="34LRSv" value="Number value" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="83868244" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="FxYxRU7s0y" resolve="BaseConcept" />
    <node concept="PrWs8" id="FxYxRU7s0S" role="PzmwI">
      <ref role="PrY4T" node="FxYxRU7s0O" resolve="Value" />
    </node>
    <node concept="1TJgyi" id="FxYxRU7s1g" role="1TKVEl">
      <property role="TrG5h" value="NUMBER_1" />
      <ref role="AX2Wp" node="FxYxRU7s0$" resolve="NUMBER" />
    </node>
  </node>
  <node concept="1TIwiD" id="FxYxRU7s0T">
    <property role="TrG5h" value="Value_3" />
    <property role="34LRSv" value="Object value" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="83868246" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="FxYxRU7s0y" resolve="BaseConcept" />
    <node concept="PrWs8" id="FxYxRU7s0U" role="PzmwI">
      <ref role="PrY4T" node="FxYxRU7s0O" resolve="Value" />
    </node>
    <node concept="1TJgyj" id="FxYxRU7s1h" role="1TKVEi">
      <property role="20kJfa" value="Object_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="FxYxRU7s15" resolve="Object" />
    </node>
  </node>
  <node concept="1TIwiD" id="FxYxRU7s0V">
    <property role="TrG5h" value="Value_4" />
    <property role="34LRSv" value="Array value" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="83868248" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="FxYxRU7s0y" resolve="BaseConcept" />
    <node concept="PrWs8" id="FxYxRU7s0W" role="PzmwI">
      <ref role="PrY4T" node="FxYxRU7s0O" resolve="Value" />
    </node>
    <node concept="1TJgyj" id="FxYxRU7s1i" role="1TKVEi">
      <property role="20kJfa" value="Array_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="FxYxRU7s0D" resolve="Array" />
    </node>
  </node>
  <node concept="1TIwiD" id="FxYxRU7s0X">
    <property role="TrG5h" value="Value_5" />
    <property role="34LRSv" value="true" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="83868250" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="FxYxRU7s0y" resolve="BaseConcept" />
    <node concept="PrWs8" id="FxYxRU7s0Y" role="PzmwI">
      <ref role="PrY4T" node="FxYxRU7s0O" resolve="Value" />
    </node>
  </node>
  <node concept="1TIwiD" id="FxYxRU7s0Z">
    <property role="TrG5h" value="Value_6" />
    <property role="34LRSv" value="false" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="83868252" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="FxYxRU7s0y" resolve="BaseConcept" />
    <node concept="PrWs8" id="FxYxRU7s10" role="PzmwI">
      <ref role="PrY4T" node="FxYxRU7s0O" resolve="Value" />
    </node>
  </node>
  <node concept="1TIwiD" id="FxYxRU7s11">
    <property role="TrG5h" value="Value_7" />
    <property role="34LRSv" value="null" />
    <property role="R4oN_" value="Value" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="83868254" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="FxYxRU7s0y" resolve="BaseConcept" />
    <node concept="PrWs8" id="FxYxRU7s12" role="PzmwI">
      <ref role="PrY4T" node="FxYxRU7s0O" resolve="Value" />
    </node>
  </node>
  <node concept="1TIwiD" id="FxYxRU7s13">
    <property role="TrG5h" value="Pair" />
    <property role="34LRSv" value="&quot; &quot;:" />
    <property role="R4oN_" value="Pair" />
    <property role="3GE5qa" value="Rules.Pair" />
    <property role="1pbfSe" value="83868256" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="FxYxRU7s0y" resolve="BaseConcept" />
    <node concept="1TJgyi" id="FxYxRU7s1j" role="1TKVEl">
      <property role="TrG5h" value="STRING_1" />
      <ref role="AX2Wp" node="FxYxRU7s0A" resolve="STRING" />
    </node>
    <node concept="1TJgyj" id="FxYxRU7s1k" role="1TKVEi">
      <property role="20kJfa" value="Value_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="FxYxRU7s0O" resolve="Value" />
    </node>
  </node>
  <node concept="1TIwiD" id="FxYxRU7s14">
    <property role="TrG5h" value="Object_block_1_1" />
    <property role="34LRSv" value="," />
    <property role="R4oN_" value="Object_block_1_1" />
    <property role="3GE5qa" value="Rules.Object_block_1_1" />
    <property role="1pbfSe" value="83868257" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="FxYxRU7s0y" resolve="BaseConcept" />
    <node concept="1TJgyj" id="FxYxRU7s1l" role="1TKVEi">
      <property role="20kJfa" value="Pair_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="FxYxRU7s13" resolve="Pair" />
    </node>
  </node>
  <node concept="PlHQZ" id="FxYxRU7s15">
    <property role="TrG5h" value="Object" />
    <property role="3GE5qa" value="Interfaces.Object" />
    <property role="1pbfSe" value="83868258" />
  </node>
  <node concept="1TIwiD" id="FxYxRU7s16">
    <property role="TrG5h" value="Object_1" />
    <property role="34LRSv" value="{ }" />
    <property role="R4oN_" value="Object" />
    <property role="3GE5qa" value="Rules.Object" />
    <property role="1pbfSe" value="83868259" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="FxYxRU7s0y" resolve="BaseConcept" />
    <node concept="PrWs8" id="FxYxRU7s17" role="PzmwI">
      <ref role="PrY4T" node="FxYxRU7s15" resolve="Object" />
    </node>
    <node concept="1TJgyj" id="FxYxRU7s1m" role="1TKVEi">
      <property role="20kJfa" value="Pair_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="FxYxRU7s13" resolve="Pair" />
    </node>
    <node concept="1TJgyj" id="FxYxRU7s1n" role="1TKVEi">
      <property role="20kJfa" value="Object_block_1_1_2" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="FxYxRU7s14" resolve="Object_block_1_1" />
    </node>
  </node>
  <node concept="1TIwiD" id="FxYxRU7s18">
    <property role="TrG5h" value="Object_2" />
    <property role="34LRSv" value="{ }" />
    <property role="R4oN_" value="Object" />
    <property role="3GE5qa" value="Rules.Object" />
    <property role="1pbfSe" value="83868261" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="FxYxRU7s0y" resolve="BaseConcept" />
    <node concept="PrWs8" id="FxYxRU7s19" role="PzmwI">
      <ref role="PrY4T" node="FxYxRU7s15" resolve="Object" />
    </node>
  </node>
</model>

