<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a0e926e4-0911-4dcc-b53e-feead81a393e(JSON.structure)">
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
  <node concept="Az7Fb" id="Pei6ieTtG0">
    <property role="TrG5h" value="NUMBER" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="(((-)?((0)|([1-9]([0-9])*)).([0-9])+([Ee]([+-])?((0)|([1-9]([0-9])*)))?)|((-)?((0)|([1-9]([0-9])*))[Ee]([+-])?((0)|([1-9]([0-9])*)))|((-)?((0)|([1-9]([0-9])*))))" />
  </node>
  <node concept="Az7Fb" id="Pei6ieTtG1">
    <property role="TrG5h" value="ESC" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="((\\\\[&quot;\\\\/bfnrt]u[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F])|([&quot;\\\\/bfnrt])|(u[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F]))" />
  </node>
  <node concept="Az7Fb" id="Pei6ieTtG2">
    <property role="TrG5h" value="STRING" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="((&quot;((\\\\[&quot;\\\\/bfnrt]u[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F])|([&quot;\\\\/bfnrt])|(u[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F]))([^&quot;\\\\])*&quot;)|(((\\\\[&quot;\\\\/bfnrt]u[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F])|([&quot;\\\\/bfnrt])|(u[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F])))|([^&quot;\\\\]))" />
  </node>
  <node concept="Az7Fb" id="Pei6ieTtG3">
    <property role="TrG5h" value="WS" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="([ \\t\\n\\r])+" />
  </node>
  <node concept="Az7Fb" id="Pei6ieTtG4">
    <property role="TrG5h" value="UNICODE" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="u[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F]" />
  </node>
  <node concept="PlHQZ" id="Pei6ieTtG5">
    <property role="TrG5h" value="Array" />
    <property role="3GE5qa" value="Interfaces.Array" />
    <property role="1pbfSe" value="1674304663" />
  </node>
  <node concept="1TIwiD" id="Pei6ieTtG6">
    <property role="TrG5h" value="Array_1" />
    <property role="OYydz" value="Array_1" />
    <property role="3GE5qa" value="Rules.Array" />
    <property role="1pbfSe" value="1674304662" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="[ ]" />
    <node concept="PrWs8" id="Pei6ieTtG7" role="PzmwI">
      <ref role="PrY4T" node="Pei6ieTtG5" resolve="Array" />
    </node>
    <node concept="1TJgyj" id="Pei6ieTtGA" role="1TKVEi">
      <property role="20kJfa" value="Value_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtGg" resolve="Value" />
    </node>
    <node concept="1TJgyj" id="Pei6ieTtGB" role="1TKVEi">
      <property role="20kJfa" value="Array_block_1_1_2" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtGa" resolve="Array_block_1_1" />
    </node>
  </node>
  <node concept="1TIwiD" id="Pei6ieTtG8">
    <property role="TrG5h" value="Array_2" />
    <property role="OYydz" value="Array_2" />
    <property role="3GE5qa" value="Rules.Array" />
    <property role="1pbfSe" value="1674304660" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="[ ]" />
    <node concept="PrWs8" id="Pei6ieTtG9" role="PzmwI">
      <ref role="PrY4T" node="Pei6ieTtG5" resolve="Array" />
    </node>
  </node>
  <node concept="1TIwiD" id="Pei6ieTtGa">
    <property role="TrG5h" value="Array_block_1_1" />
    <property role="OYydz" value="Array_block_1_1" />
    <property role="3GE5qa" value="Rules.Array_block_1_1" />
    <property role="1pbfSe" value="1674304658" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="," />
    <node concept="1TJgyj" id="Pei6ieTtGC" role="1TKVEi">
      <property role="20kJfa" value="Value_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtGg" resolve="Value" />
    </node>
  </node>
  <node concept="PlHQZ" id="Pei6ieTtGb">
    <property role="TrG5h" value="Json" />
    <property role="3GE5qa" value="Interfaces.Json" />
    <property role="1pbfSe" value="1674304657" />
  </node>
  <node concept="1TIwiD" id="Pei6ieTtGc">
    <property role="TrG5h" value="Json_1" />
    <property role="OYydz" value="Json_1" />
    <property role="3GE5qa" value="Rules.Json" />
    <property role="1pbfSe" value="1674304656" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Object json" />
    <node concept="PrWs8" id="Pei6ieTtGd" role="PzmwI">
      <ref role="PrY4T" node="Pei6ieTtGb" resolve="Json" />
    </node>
    <node concept="1TJgyj" id="Pei6ieTtGD" role="1TKVEi">
      <property role="20kJfa" value="Object_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtGx" resolve="Object" />
    </node>
  </node>
  <node concept="1TIwiD" id="Pei6ieTtGe">
    <property role="TrG5h" value="Json_2" />
    <property role="OYydz" value="Json_2" />
    <property role="3GE5qa" value="Rules.Json" />
    <property role="1pbfSe" value="1674304654" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Array json" />
    <node concept="PrWs8" id="Pei6ieTtGf" role="PzmwI">
      <ref role="PrY4T" node="Pei6ieTtGb" resolve="Json" />
    </node>
    <node concept="1TJgyj" id="Pei6ieTtGE" role="1TKVEi">
      <property role="20kJfa" value="Array_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtG5" resolve="Array" />
    </node>
  </node>
  <node concept="PlHQZ" id="Pei6ieTtGg">
    <property role="TrG5h" value="Value" />
    <property role="3GE5qa" value="Interfaces.Value" />
    <property role="1pbfSe" value="1674304652" />
  </node>
  <node concept="1TIwiD" id="Pei6ieTtGh">
    <property role="TrG5h" value="Value_1" />
    <property role="OYydz" value="Value_1" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="1674304651" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="String value" />
    <node concept="PrWs8" id="Pei6ieTtGi" role="PzmwI">
      <ref role="PrY4T" node="Pei6ieTtGg" resolve="Value" />
    </node>
    <node concept="1TJgyi" id="Pei6ieTtGF" role="1TKVEl">
      <property role="TrG5h" value="STRING_1" />
      <ref role="AX2Wp" node="Pei6ieTtG2" resolve="STRING" />
    </node>
  </node>
  <node concept="1TIwiD" id="Pei6ieTtGj">
    <property role="TrG5h" value="Value_2" />
    <property role="OYydz" value="Value_2" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="1674304649" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="Number value" />
    <node concept="PrWs8" id="Pei6ieTtGk" role="PzmwI">
      <ref role="PrY4T" node="Pei6ieTtGg" resolve="Value" />
    </node>
    <node concept="1TJgyi" id="Pei6ieTtGG" role="1TKVEl">
      <property role="TrG5h" value="NUMBER_1" />
      <ref role="AX2Wp" node="Pei6ieTtG0" resolve="NUMBER" />
    </node>
  </node>
  <node concept="1TIwiD" id="Pei6ieTtGl">
    <property role="TrG5h" value="Value_3" />
    <property role="OYydz" value="Value_3" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="1674304647" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="Object value" />
    <node concept="PrWs8" id="Pei6ieTtGm" role="PzmwI">
      <ref role="PrY4T" node="Pei6ieTtGg" resolve="Value" />
    </node>
    <node concept="1TJgyj" id="Pei6ieTtGH" role="1TKVEi">
      <property role="20kJfa" value="Object_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtGx" resolve="Object" />
    </node>
  </node>
  <node concept="1TIwiD" id="Pei6ieTtGn">
    <property role="TrG5h" value="Value_4" />
    <property role="OYydz" value="Value_4" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="1674304645" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="Array value" />
    <node concept="PrWs8" id="Pei6ieTtGo" role="PzmwI">
      <ref role="PrY4T" node="Pei6ieTtGg" resolve="Value" />
    </node>
    <node concept="1TJgyj" id="Pei6ieTtGI" role="1TKVEi">
      <property role="20kJfa" value="Array_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtG5" resolve="Array" />
    </node>
  </node>
  <node concept="1TIwiD" id="Pei6ieTtGp">
    <property role="TrG5h" value="Value_5" />
    <property role="OYydz" value="Value_5" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="1674304643" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="true" />
    <node concept="PrWs8" id="Pei6ieTtGq" role="PzmwI">
      <ref role="PrY4T" node="Pei6ieTtGg" resolve="Value" />
    </node>
  </node>
  <node concept="1TIwiD" id="Pei6ieTtGr">
    <property role="TrG5h" value="Value_6" />
    <property role="OYydz" value="Value_6" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="1674304641" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="false" />
    <node concept="PrWs8" id="Pei6ieTtGs" role="PzmwI">
      <ref role="PrY4T" node="Pei6ieTtGg" resolve="Value" />
    </node>
  </node>
  <node concept="1TIwiD" id="Pei6ieTtGt">
    <property role="TrG5h" value="Value_7" />
    <property role="OYydz" value="Value_7" />
    <property role="3GE5qa" value="Rules.Value" />
    <property role="1pbfSe" value="1674304639" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="null" />
    <node concept="PrWs8" id="Pei6ieTtGu" role="PzmwI">
      <ref role="PrY4T" node="Pei6ieTtGg" resolve="Value" />
    </node>
  </node>
  <node concept="1TIwiD" id="Pei6ieTtGv">
    <property role="TrG5h" value="Pair" />
    <property role="OYydz" value="Pair" />
    <property role="3GE5qa" value="Rules.Pair" />
    <property role="1pbfSe" value="1674304637" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value=":" />
    <node concept="1TJgyi" id="Pei6ieTtGJ" role="1TKVEl">
      <property role="TrG5h" value="STRING_1" />
      <ref role="AX2Wp" node="Pei6ieTtG2" resolve="STRING" />
    </node>
    <node concept="1TJgyj" id="Pei6ieTtGK" role="1TKVEi">
      <property role="20kJfa" value="Value_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtGg" resolve="Value" />
    </node>
  </node>
  <node concept="1TIwiD" id="Pei6ieTtGw">
    <property role="TrG5h" value="Object_block_1_1" />
    <property role="OYydz" value="Object_block_1_1" />
    <property role="3GE5qa" value="Rules.Object_block_1_1" />
    <property role="1pbfSe" value="1674304636" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="," />
    <node concept="1TJgyj" id="Pei6ieTtGL" role="1TKVEi">
      <property role="20kJfa" value="Pair_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtGv" resolve="Pair" />
    </node>
  </node>
  <node concept="PlHQZ" id="Pei6ieTtGx">
    <property role="TrG5h" value="Object" />
    <property role="3GE5qa" value="Interfaces.Object" />
    <property role="1pbfSe" value="1674304635" />
  </node>
  <node concept="1TIwiD" id="Pei6ieTtGy">
    <property role="TrG5h" value="Object_1" />
    <property role="OYydz" value="Object_1" />
    <property role="3GE5qa" value="Rules.Object" />
    <property role="1pbfSe" value="1674304634" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="{ }" />
    <node concept="PrWs8" id="Pei6ieTtGz" role="PzmwI">
      <ref role="PrY4T" node="Pei6ieTtGx" resolve="Object" />
    </node>
    <node concept="1TJgyj" id="Pei6ieTtGM" role="1TKVEi">
      <property role="20kJfa" value="Pair_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtGv" resolve="Pair" />
    </node>
    <node concept="1TJgyj" id="Pei6ieTtGN" role="1TKVEi">
      <property role="20kJfa" value="Object_block_1_1_2" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtGw" resolve="Object_block_1_1" />
    </node>
  </node>
  <node concept="1TIwiD" id="Pei6ieTtG$">
    <property role="TrG5h" value="Object_2" />
    <property role="OYydz" value="Object_2" />
    <property role="3GE5qa" value="Rules.Object" />
    <property role="1pbfSe" value="1674304632" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="{ }" />
    <node concept="PrWs8" id="Pei6ieTtG_" role="PzmwI">
      <ref role="PrY4T" node="Pei6ieTtGx" resolve="Object" />
    </node>
  </node>
</model>

