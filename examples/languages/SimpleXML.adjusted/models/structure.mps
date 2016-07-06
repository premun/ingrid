<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:575257f1-368c-46f9-8a2f-eeebf9d70d9a(SimpleXML.adjusted.structure)">
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
  <node concept="1TIwiD" id="6vXZUoCOmiQ">
    <property role="TrG5h" value="BaseConcept" />
    <property role="1pbfSe" value="1865456548" />
    <property role="R5$K7" value="true" />
  </node>
  <node concept="Az7Fb" id="6vXZUoCOmiT">
    <property role="TrG5h" value="TEXT" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="([^&lt;&quot;])*" />
  </node>
  <node concept="Az7Fb" id="6vXZUoCOmiW">
    <property role="TrG5h" value="Name" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="[:a-zA-Z](([:a-zA-Z]|\\-|_|\\.|[0-9]))*" />
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmiX">
    <property role="TrG5h" value="Document" />
    <property role="34LRSv" value="Document" />
    <property role="R4oN_" value="Document" />
    <property role="3GE5qa" value="Rules.Document" />
    <property role="1pbfSe" value="1865456541" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOmj9" role="1TKVEi">
      <property role="20kJfa" value="Prolog_1" />
      <property role="20lbJX" value="0..1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6vXZUoCOmj0" resolve="Prolog" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOmja" role="1TKVEi">
      <property role="20kJfa" value="Comment_2" />
      <property role="20lbJX" value="0..1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6vXZUoCOmiY" resolve="Comment" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOmjb" role="1TKVEi">
      <property role="20kJfa" value="Element_3" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6vXZUoCOmj6" resolve="Element" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmiY">
    <property role="TrG5h" value="Comment" />
    <property role="34LRSv" value="&lt;!-- --&gt;" />
    <property role="R4oN_" value="Comment" />
    <property role="3GE5qa" value="Rules.Comment" />
    <property role="1pbfSe" value="1865456540" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOmjc" role="1TKVEl">
      <property role="TrG5h" value="TEXT_1" />
      <ref role="AX2Wp" node="6vXZUoCOmiT" resolve="TEXT" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmjv" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmj1" resolve="Content" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmiZ">
    <property role="TrG5h" value="Attribute" />
    <property role="34LRSv" value="=&quot; &quot;" />
    <property role="R4oN_" value="Attribute" />
    <property role="3GE5qa" value="Rules.Attribute" />
    <property role="1pbfSe" value="1865456539" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOmjd" role="1TKVEl">
      <property role="TrG5h" value="Name_1" />
      <ref role="AX2Wp" node="6vXZUoCOmiW" resolve="Name" />
    </node>
    <node concept="1TJgyi" id="6vXZUoCOmje" role="1TKVEl">
      <property role="TrG5h" value="TEXT_2" />
      <ref role="AX2Wp" node="6vXZUoCOmiT" resolve="TEXT" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmj0">
    <property role="TrG5h" value="Prolog" />
    <property role="34LRSv" value="&lt;?xml  ?&gt;" />
    <property role="R4oN_" value="Prolog" />
    <property role="3GE5qa" value="Rules.Prolog" />
    <property role="1pbfSe" value="1865456538" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOmjf" role="1TKVEi">
      <property role="20kJfa" value="Attribute_1" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6vXZUoCOmiZ" resolve="Attribute" />
    </node>
  </node>
  <node concept="PlHQZ" id="6vXZUoCOmj1">
    <property role="TrG5h" value="Content" />
    <property role="3GE5qa" value="Interfaces.Content" />
    <property role="1pbfSe" value="1865456537" />
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmj2">
    <property role="TrG5h" value="Content_1" />
    <property role="34LRSv" value="Text content" />
    <property role="R4oN_" value="Content" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="1pbfSe" value="1865456536" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOmjg" role="1TKVEl">
      <property role="TrG5h" value="TEXT_1" />
      <ref role="AX2Wp" node="6vXZUoCOmiT" resolve="TEXT" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmjq" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmj1" resolve="Content" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmj3">
    <property role="TrG5h" value="Content_2" />
    <property role="34LRSv" value="Element content" />
    <property role="R4oN_" value="Content" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="1pbfSe" value="1865456535" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOmjh" role="1TKVEi">
      <property role="20kJfa" value="Element_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6vXZUoCOmj6" resolve="Element" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmj4">
    <property role="TrG5h" value="Content_3" />
    <property role="34LRSv" value="Comment content" />
    <property role="R4oN_" value="Content" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="1pbfSe" value="1865456534" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOmji" role="1TKVEi">
      <property role="20kJfa" value="Comment_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6vXZUoCOmiY" resolve="Comment" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmj5">
    <property role="TrG5h" value="Content_4" />
    <property role="34LRSv" value="Cdata content" />
    <property role="R4oN_" value="Content" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="1pbfSe" value="1865456533" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOmjj" role="1TKVEl">
      <property role="TrG5h" value="CDATA_1" />
      <ref role="AX2Wp" node="6vXZUoCOmiT" resolve="TEXT" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmjw" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmj1" resolve="Content" />
    </node>
  </node>
  <node concept="PlHQZ" id="6vXZUoCOmj6">
    <property role="TrG5h" value="Element" />
    <property role="3GE5qa" value="Interfaces.Element" />
    <property role="1pbfSe" value="1865456532" />
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmj7">
    <property role="TrG5h" value="Element_1" />
    <property role="34LRSv" value="&lt; &gt; &lt;/ &gt;" />
    <property role="R4oN_" value="Element" />
    <property role="3GE5qa" value="Rules.Element" />
    <property role="1pbfSe" value="1865456531" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOmjk" role="1TKVEl">
      <property role="TrG5h" value="Name" />
      <ref role="AX2Wp" node="6vXZUoCOmiW" resolve="Name" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOmjl" role="1TKVEi">
      <property role="20kJfa" value="Attribute" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6vXZUoCOmiZ" resolve="Attribute" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOmjm" role="1TKVEi">
      <property role="20kJfa" value="Content" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6vXZUoCOmj1" resolve="Content" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmjr" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmj1" resolve="Content" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmjs" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmj6" resolve="Element" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmj8">
    <property role="TrG5h" value="Element_2" />
    <property role="34LRSv" value="&lt; /&gt;" />
    <property role="R4oN_" value="Element" />
    <property role="3GE5qa" value="Rules.Element" />
    <property role="1pbfSe" value="1865456530" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOmjo" role="1TKVEl">
      <property role="TrG5h" value="Name_1" />
      <ref role="AX2Wp" node="6vXZUoCOmiW" resolve="Name" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOmjp" role="1TKVEi">
      <property role="20kJfa" value="Attribute_1" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6vXZUoCOmiZ" resolve="Attribute" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmjt" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmj1" resolve="Content" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmju" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmj6" resolve="Element" />
    </node>
  </node>
</model>

