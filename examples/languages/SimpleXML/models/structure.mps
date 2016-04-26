<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:680fb428-6f7c-4c11-be1b-c67650e68ee4(SimpleXML.structure)">
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
  <node concept="1TIwiD" id="6nlf6V60iRY">
    <property role="TrG5h" value="BaseConcept" />
    <property role="1pbfSe" value="735472236" />
    <property role="R5$K7" value="true" />
    <node concept="1TJgyi" id="6nlf6V60iRZ" role="1TKVEl">
      <property role="TrG5h" value="__DeleteContext" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="Az7Fb" id="6nlf6V60iS0">
    <property role="TrG5h" value="NameChar" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="(([:a-zA-Z])|(-)|(_)|(.)|([0-9]))" />
  </node>
  <node concept="Az7Fb" id="6nlf6V60iS1">
    <property role="TrG5h" value="TEXT" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="([^&lt;&quot;])*" />
  </node>
  <node concept="Az7Fb" id="6nlf6V60iS2">
    <property role="TrG5h" value="CDATA" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="(.)*" />
  </node>
  <node concept="Az7Fb" id="6nlf6V60iS3">
    <property role="TrG5h" value="Name" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="[:a-zA-Z]((([:a-zA-Z])|(-)|(_)|(.)|([0-9])))*" />
  </node>
  <node concept="1TIwiD" id="6nlf6V60iS4">
    <property role="TrG5h" value="Document" />
    <property role="34LRSv" value="Document" />
    <property role="R4oN_" value="Document" />
    <property role="3GE5qa" value="Rules.Document" />
    <property role="1pbfSe" value="735472242" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" node="6nlf6V60iRY" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6nlf6V60iSh" role="1TKVEi">
      <property role="20kJfa" value="Prolog_1" />
      <property role="20lbJX" value="0..1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6nlf6V60iS7" resolve="Prolog" />
    </node>
    <node concept="1TJgyj" id="6nlf6V60iSi" role="1TKVEi">
      <property role="20kJfa" value="Comment_2" />
      <property role="20lbJX" value="0..1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6nlf6V60iS5" resolve="Comment" />
    </node>
    <node concept="1TJgyj" id="6nlf6V60iSj" role="1TKVEi">
      <property role="20kJfa" value="Element_3" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6nlf6V60iSe" resolve="Element" />
    </node>
  </node>
  <node concept="1TIwiD" id="6nlf6V60iS5">
    <property role="TrG5h" value="Comment" />
    <property role="34LRSv" value="&lt;!-- --&gt;" />
    <property role="R4oN_" value="Comment" />
    <property role="3GE5qa" value="Rules.Comment" />
    <property role="1pbfSe" value="735472243" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6nlf6V60iRY" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6nlf6V60iSk" role="1TKVEl">
      <property role="TrG5h" value="TEXT_1" />
      <ref role="AX2Wp" node="6nlf6V60iS1" resolve="TEXT" />
    </node>
    <node concept="PrWs8" id="6nlf6V60iS_" role="PzmwI">
      <ref role="PrY4T" node="6nlf6V60iS8" resolve="Content" />
    </node>
  </node>
  <node concept="1TIwiD" id="6nlf6V60iS6">
    <property role="TrG5h" value="Attribute" />
    <property role="34LRSv" value="=&quot; &quot;" />
    <property role="R4oN_" value="Attribute" />
    <property role="3GE5qa" value="Rules.Attribute" />
    <property role="1pbfSe" value="735472244" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6nlf6V60iRY" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6nlf6V60iSl" role="1TKVEl">
      <property role="TrG5h" value="Name_1" />
      <ref role="AX2Wp" node="6nlf6V60iS3" resolve="Name" />
    </node>
    <node concept="1TJgyi" id="6nlf6V60iSm" role="1TKVEl">
      <property role="TrG5h" value="TEXT_2" />
      <ref role="AX2Wp" node="6nlf6V60iS1" resolve="TEXT" />
    </node>
  </node>
  <node concept="1TIwiD" id="6nlf6V60iS7">
    <property role="TrG5h" value="Prolog" />
    <property role="34LRSv" value="&lt;?xml  ?&gt;" />
    <property role="R4oN_" value="Prolog" />
    <property role="3GE5qa" value="Rules.Prolog" />
    <property role="1pbfSe" value="735472245" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6nlf6V60iRY" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6nlf6V60iSn" role="1TKVEi">
      <property role="20kJfa" value="Attribute_1" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6nlf6V60iS6" resolve="Attribute" />
    </node>
  </node>
  <node concept="PlHQZ" id="6nlf6V60iS8">
    <property role="TrG5h" value="Content" />
    <property role="3GE5qa" value="Interfaces.Content" />
    <property role="1pbfSe" value="735472246" />
  </node>
  <node concept="1TIwiD" id="6nlf6V60iS9">
    <property role="TrG5h" value="Content_1" />
    <property role="34LRSv" value="Text content" />
    <property role="R4oN_" value="Content" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="1pbfSe" value="735472247" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6nlf6V60iRY" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6nlf6V60iSo" role="1TKVEl">
      <property role="TrG5h" value="TEXT_1" />
      <ref role="AX2Wp" node="6nlf6V60iS1" resolve="TEXT" />
    </node>
    <node concept="PrWs8" id="6nlf6V60iSz" role="PzmwI">
      <ref role="PrY4T" node="6nlf6V60iS8" resolve="Content" />
    </node>
  </node>
  <node concept="1TIwiD" id="6nlf6V60iSa">
    <property role="TrG5h" value="Content_2" />
    <property role="34LRSv" value="Cdata content" />
    <property role="R4oN_" value="Content" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="1pbfSe" value="735472248" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6nlf6V60iRY" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6nlf6V60iSp" role="1TKVEi">
      <property role="20kJfa" value="Cdata_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6nlf6V60iSd" resolve="Cdata" />
    </node>
  </node>
  <node concept="1TIwiD" id="6nlf6V60iSb">
    <property role="TrG5h" value="Content_3" />
    <property role="34LRSv" value="Comment content" />
    <property role="R4oN_" value="Content" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="1pbfSe" value="735472249" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6nlf6V60iRY" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6nlf6V60iSq" role="1TKVEi">
      <property role="20kJfa" value="Comment_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6nlf6V60iS5" resolve="Comment" />
    </node>
  </node>
  <node concept="1TIwiD" id="6nlf6V60iSc">
    <property role="TrG5h" value="Content_4" />
    <property role="34LRSv" value="Element content" />
    <property role="R4oN_" value="Content" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="1pbfSe" value="735472250" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6nlf6V60iRY" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6nlf6V60iSr" role="1TKVEi">
      <property role="20kJfa" value="Element_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6nlf6V60iSe" resolve="Element" />
    </node>
  </node>
  <node concept="1TIwiD" id="6nlf6V60iSd">
    <property role="TrG5h" value="Cdata" />
    <property role="34LRSv" value="&lt;![CDATA[ ]]&gt;" />
    <property role="R4oN_" value="Cdata" />
    <property role="3GE5qa" value="Rules.Cdata" />
    <property role="1pbfSe" value="735472251" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6nlf6V60iRY" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6nlf6V60iSs" role="1TKVEl">
      <property role="TrG5h" value="CDATA_1" />
      <ref role="AX2Wp" node="6nlf6V60iS2" resolve="CDATA" />
    </node>
    <node concept="PrWs8" id="6nlf6V60iS$" role="PzmwI">
      <ref role="PrY4T" node="6nlf6V60iS8" resolve="Content" />
    </node>
  </node>
  <node concept="PlHQZ" id="6nlf6V60iSe">
    <property role="TrG5h" value="Element" />
    <property role="3GE5qa" value="Interfaces.Element" />
    <property role="1pbfSe" value="735472252" />
  </node>
  <node concept="1TIwiD" id="6nlf6V60iSf">
    <property role="TrG5h" value="Element_1" />
    <property role="34LRSv" value="&lt; &gt; &lt;/ &gt;" />
    <property role="R4oN_" value="Element" />
    <property role="3GE5qa" value="Rules.Element" />
    <property role="1pbfSe" value="735472253" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6nlf6V60iRY" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6nlf6V60iSt" role="1TKVEl">
      <property role="TrG5h" value="Name_1" />
      <ref role="AX2Wp" node="6nlf6V60iS3" resolve="Name" />
    </node>
    <node concept="1TJgyj" id="6nlf6V60iSu" role="1TKVEi">
      <property role="20kJfa" value="Attribute_1" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6nlf6V60iS6" resolve="Attribute" />
    </node>
    <node concept="1TJgyj" id="6nlf6V60iSv" role="1TKVEi">
      <property role="20kJfa" value="Content_2" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6nlf6V60iS8" resolve="Content" />
    </node>
    <node concept="1TJgyi" id="6nlf6V60iSw" role="1TKVEl">
      <property role="TrG5h" value="Name_2" />
      <ref role="AX2Wp" node="6nlf6V60iS3" resolve="Name" />
    </node>
    <node concept="PrWs8" id="6nlf6V60iSA" role="PzmwI">
      <ref role="PrY4T" node="6nlf6V60iS8" resolve="Content" />
    </node>
    <node concept="PrWs8" id="6nlf6V60iSB" role="PzmwI">
      <ref role="PrY4T" node="6nlf6V60iSe" resolve="Element" />
    </node>
  </node>
  <node concept="1TIwiD" id="6nlf6V60iSg">
    <property role="TrG5h" value="Element_2" />
    <property role="34LRSv" value="&lt; /&gt;" />
    <property role="R4oN_" value="Element" />
    <property role="3GE5qa" value="Rules.Element" />
    <property role="1pbfSe" value="735472254" />
    <property role="19KtqR" value="false" />
    <ref role="1TJDcQ" node="6nlf6V60iRY" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6nlf6V60iSx" role="1TKVEl">
      <property role="TrG5h" value="Name_1" />
      <ref role="AX2Wp" node="6nlf6V60iS3" resolve="Name" />
    </node>
    <node concept="1TJgyj" id="6nlf6V60iSy" role="1TKVEi">
      <property role="20kJfa" value="Attribute_1" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="6nlf6V60iS6" resolve="Attribute" />
    </node>
    <node concept="PrWs8" id="6nlf6V60iSC" role="PzmwI">
      <ref role="PrY4T" node="6nlf6V60iS8" resolve="Content" />
    </node>
    <node concept="PrWs8" id="6nlf6V60iSD" role="PzmwI">
      <ref role="PrY4T" node="6nlf6V60iSe" resolve="Element" />
    </node>
  </node>
</model>

