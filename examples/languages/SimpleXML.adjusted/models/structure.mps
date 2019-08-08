<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:575257f1-368c-46f9-8a2f-eeebf9d70d9a(SimpleXML.adjusted.structure)">
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
  <node concept="1TIwiD" id="6vXZUoCOmiQ">
    <property role="TrG5h" value="BaseConcept" />
    <property role="R5$K7" value="true" />
    <property role="EcuMT" value="7493426444128838838" />
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
    <property role="19KtqR" value="true" />
    <property role="EcuMT" value="7493426444128838845" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOmj9" role="1TKVEi">
      <property role="20kJfa" value="Prolog_1" />
      <property role="20lbJX" value="0..1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128838857" />
      <ref role="20lvS9" node="6vXZUoCOmj0" resolve="Prolog" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOmja" role="1TKVEi">
      <property role="20kJfa" value="Comment_2" />
      <property role="20lbJX" value="0..1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128838858" />
      <ref role="20lvS9" node="6vXZUoCOmiY" resolve="Comment" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOmjb" role="1TKVEi">
      <property role="20kJfa" value="Element_3" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128838859" />
      <ref role="20lvS9" node="6vXZUoCOmj6" resolve="IElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmiY">
    <property role="TrG5h" value="Comment" />
    <property role="34LRSv" value="&lt;!-- --&gt;" />
    <property role="R4oN_" value="Comment" />
    <property role="3GE5qa" value="Rules.Comment" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128838846" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOmjc" role="1TKVEl">
      <property role="TrG5h" value="TEXT_1" />
      <property role="IQ2nx" value="7493426444128838860" />
      <ref role="AX2Wp" node="6vXZUoCOmiT" resolve="TEXT" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmjv" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmj1" resolve="IContent" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmiZ">
    <property role="TrG5h" value="Attribute" />
    <property role="34LRSv" value="=&quot; &quot;" />
    <property role="R4oN_" value="Attribute" />
    <property role="3GE5qa" value="Rules.Attribute" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128838847" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOmjd" role="1TKVEl">
      <property role="TrG5h" value="Name_1" />
      <property role="IQ2nx" value="7493426444128838861" />
      <ref role="AX2Wp" node="6vXZUoCOmiW" resolve="Name" />
    </node>
    <node concept="1TJgyi" id="6vXZUoCOmje" role="1TKVEl">
      <property role="TrG5h" value="TEXT_2" />
      <property role="IQ2nx" value="7493426444128838862" />
      <ref role="AX2Wp" node="6vXZUoCOmiT" resolve="TEXT" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmj0">
    <property role="TrG5h" value="Prolog" />
    <property role="34LRSv" value="&lt;?xml  ?&gt;" />
    <property role="R4oN_" value="Prolog" />
    <property role="3GE5qa" value="Rules.Prolog" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128838848" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOmjf" role="1TKVEi">
      <property role="20kJfa" value="Attribute_1" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128838863" />
      <ref role="20lvS9" node="6vXZUoCOmiZ" resolve="Attribute" />
    </node>
  </node>
  <node concept="PlHQZ" id="6vXZUoCOmj1">
    <property role="TrG5h" value="IContent" />
    <property role="3GE5qa" value="Interfaces" />
    <property role="EcuMT" value="7493426444128838849" />
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmj2">
    <property role="TrG5h" value="Content_1" />
    <property role="34LRSv" value="Text content" />
    <property role="R4oN_" value="Content" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128838850" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOmjg" role="1TKVEl">
      <property role="TrG5h" value="TEXT_1" />
      <property role="IQ2nx" value="7493426444128838864" />
      <ref role="AX2Wp" node="6vXZUoCOmiT" resolve="TEXT" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmjq" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmj1" resolve="IContent" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmj3">
    <property role="TrG5h" value="Content_2" />
    <property role="34LRSv" value="Element content" />
    <property role="R4oN_" value="Content" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128838851" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOmjh" role="1TKVEi">
      <property role="20kJfa" value="Element_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128838865" />
      <ref role="20lvS9" node="6vXZUoCOmj6" resolve="IElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmj4">
    <property role="TrG5h" value="Content_3" />
    <property role="34LRSv" value="Comment content" />
    <property role="R4oN_" value="Content" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128838852" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOmji" role="1TKVEi">
      <property role="20kJfa" value="Comment_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128838866" />
      <ref role="20lvS9" node="6vXZUoCOmiY" resolve="Comment" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmj5">
    <property role="TrG5h" value="Content_4" />
    <property role="34LRSv" value="Cdata content" />
    <property role="R4oN_" value="Content" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128838853" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOmjj" role="1TKVEl">
      <property role="TrG5h" value="CDATA_1" />
      <property role="IQ2nx" value="7493426444128838867" />
      <ref role="AX2Wp" node="6vXZUoCOmiT" resolve="TEXT" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmjw" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmj1" resolve="IContent" />
    </node>
  </node>
  <node concept="PlHQZ" id="6vXZUoCOmj6">
    <property role="TrG5h" value="IElement" />
    <property role="3GE5qa" value="Interfaces" />
    <property role="EcuMT" value="7493426444128838854" />
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmj7">
    <property role="TrG5h" value="Element_1" />
    <property role="34LRSv" value="&lt; &gt; &lt;/ &gt;" />
    <property role="R4oN_" value="Element" />
    <property role="3GE5qa" value="Rules.Element" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128838855" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOmjk" role="1TKVEl">
      <property role="TrG5h" value="Name" />
      <property role="IQ2nx" value="7493426444128838868" />
      <ref role="AX2Wp" node="6vXZUoCOmiW" resolve="Name" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOmjl" role="1TKVEi">
      <property role="20kJfa" value="Attribute" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128838869" />
      <ref role="20lvS9" node="6vXZUoCOmiZ" resolve="Attribute" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOmjm" role="1TKVEi">
      <property role="20kJfa" value="Content" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128838870" />
      <ref role="20lvS9" node="6vXZUoCOmj1" resolve="IContent" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmjr" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmj1" resolve="IContent" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmjs" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmj6" resolve="IElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmj8">
    <property role="TrG5h" value="Element_2" />
    <property role="34LRSv" value="&lt; /&gt;" />
    <property role="R4oN_" value="Element" />
    <property role="3GE5qa" value="Rules.Element" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128838856" />
    <ref role="1TJDcQ" node="6vXZUoCOmiQ" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOmjo" role="1TKVEl">
      <property role="TrG5h" value="Name_1" />
      <property role="IQ2nx" value="7493426444128838872" />
      <ref role="AX2Wp" node="6vXZUoCOmiW" resolve="Name" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOmjp" role="1TKVEi">
      <property role="20kJfa" value="Attribute_1" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128838873" />
      <ref role="20lvS9" node="6vXZUoCOmiZ" resolve="Attribute" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmjt" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmj1" resolve="IContent" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmju" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmj6" resolve="IElement" />
    </node>
  </node>
</model>

