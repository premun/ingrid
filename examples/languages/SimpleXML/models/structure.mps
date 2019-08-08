<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:518e5f34-f884-43dc-acb1-ce984bc87b95(SimpleXML.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
    <devkit ref="e073aac8-8c71-4c23-be71-86bf7a6df0a2(jetbrains.mps.devkit.bootstrap-languages)" />
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
  <node concept="1TIwiD" id="6vXZUoCOmrD">
    <property role="TrG5h" value="BaseConcept" />
    <property role="R5$K7" value="true" />
    <property role="EcuMT" value="7493426444128839401" />
  </node>
  <node concept="Az7Fb" id="6vXZUoCOmrG">
    <property role="TrG5h" value="TEXT" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="([^&lt;&quot;])*" />
  </node>
  <node concept="Az7Fb" id="6vXZUoCOmrI">
    <property role="TrG5h" value="CDATA" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="&lt;!\\[CDATA\\[.*\\]\\]&gt;" />
  </node>
  <node concept="Az7Fb" id="6vXZUoCOmrJ">
    <property role="TrG5h" value="Name" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="[:a-zA-Z](([:a-zA-Z]|\\-|_|\\.|[0-9]))*" />
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmrK">
    <property role="TrG5h" value="Document" />
    <property role="34LRSv" value="Document" />
    <property role="R4oN_" value="Document" />
    <property role="3GE5qa" value="Rules.Document" />
    <property role="19KtqR" value="true" />
    <property role="EcuMT" value="7493426444128839408" />
    <ref role="1TJDcQ" node="6vXZUoCOmrD" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOmrW" role="1TKVEi">
      <property role="20kJfa" value="Prolog_1" />
      <property role="20lbJX" value="0..1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128839420" />
      <ref role="20lvS9" node="6vXZUoCOmrN" resolve="Prolog" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOmrX" role="1TKVEi">
      <property role="20kJfa" value="Comment_2" />
      <property role="20lbJX" value="0..1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128839421" />
      <ref role="20lvS9" node="6vXZUoCOmrL" resolve="Comment" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOmrY" role="1TKVEi">
      <property role="20kJfa" value="Element_3" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128839422" />
      <ref role="20lvS9" node="6vXZUoCOmrT" resolve="IElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmrL">
    <property role="TrG5h" value="Comment" />
    <property role="34LRSv" value="&lt;!-- --&gt;" />
    <property role="R4oN_" value="Comment" />
    <property role="3GE5qa" value="Rules.Comment" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128839409" />
    <ref role="1TJDcQ" node="6vXZUoCOmrD" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOmrZ" role="1TKVEl">
      <property role="TrG5h" value="TEXT_1" />
      <property role="IQ2nx" value="7493426444128839423" />
      <ref role="AX2Wp" node="6vXZUoCOmrG" resolve="TEXT" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmsi" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmrO" resolve="IContent" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmrM">
    <property role="TrG5h" value="Attribute" />
    <property role="34LRSv" value="=&quot; &quot;" />
    <property role="R4oN_" value="Attribute" />
    <property role="3GE5qa" value="Rules.Attribute" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128839410" />
    <ref role="1TJDcQ" node="6vXZUoCOmrD" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOms0" role="1TKVEl">
      <property role="TrG5h" value="Name_1" />
      <property role="IQ2nx" value="7493426444128839424" />
      <ref role="AX2Wp" node="6vXZUoCOmrJ" resolve="Name" />
    </node>
    <node concept="1TJgyi" id="6vXZUoCOms1" role="1TKVEl">
      <property role="TrG5h" value="TEXT_2" />
      <property role="IQ2nx" value="7493426444128839425" />
      <ref role="AX2Wp" node="6vXZUoCOmrG" resolve="TEXT" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmrN">
    <property role="TrG5h" value="Prolog" />
    <property role="34LRSv" value="&lt;?xml  ?&gt;" />
    <property role="R4oN_" value="Prolog" />
    <property role="3GE5qa" value="Rules.Prolog" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128839411" />
    <ref role="1TJDcQ" node="6vXZUoCOmrD" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOms2" role="1TKVEi">
      <property role="20kJfa" value="Attribute_1" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128839426" />
      <ref role="20lvS9" node="6vXZUoCOmrM" resolve="Attribute" />
    </node>
  </node>
  <node concept="PlHQZ" id="6vXZUoCOmrO">
    <property role="TrG5h" value="IContent" />
    <property role="3GE5qa" value="Interfaces" />
    <property role="EcuMT" value="7493426444128839412" />
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmrP">
    <property role="TrG5h" value="Content_1" />
    <property role="34LRSv" value="Text content" />
    <property role="R4oN_" value="Content" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128839413" />
    <ref role="1TJDcQ" node="6vXZUoCOmrD" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOms3" role="1TKVEl">
      <property role="TrG5h" value="TEXT_1" />
      <property role="IQ2nx" value="7493426444128839427" />
      <ref role="AX2Wp" node="6vXZUoCOmrG" resolve="TEXT" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmsd" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmrO" resolve="IContent" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmrQ">
    <property role="TrG5h" value="Content_2" />
    <property role="34LRSv" value="Element content" />
    <property role="R4oN_" value="Content" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128839414" />
    <ref role="1TJDcQ" node="6vXZUoCOmrD" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOms4" role="1TKVEi">
      <property role="20kJfa" value="Element_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128839428" />
      <ref role="20lvS9" node="6vXZUoCOmrT" resolve="IElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmrR">
    <property role="TrG5h" value="Content_3" />
    <property role="34LRSv" value="Comment content" />
    <property role="R4oN_" value="Content" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128839415" />
    <ref role="1TJDcQ" node="6vXZUoCOmrD" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6vXZUoCOms5" role="1TKVEi">
      <property role="20kJfa" value="Comment_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128839429" />
      <ref role="20lvS9" node="6vXZUoCOmrL" resolve="Comment" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmrS">
    <property role="TrG5h" value="Content_4" />
    <property role="34LRSv" value="Cdata content" />
    <property role="R4oN_" value="Content" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128839416" />
    <ref role="1TJDcQ" node="6vXZUoCOmrD" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOms6" role="1TKVEl">
      <property role="TrG5h" value="CDATA_1" />
      <property role="IQ2nx" value="7493426444128839430" />
      <ref role="AX2Wp" node="6vXZUoCOmrI" resolve="CDATA" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmsj" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmrO" resolve="IContent" />
    </node>
  </node>
  <node concept="PlHQZ" id="6vXZUoCOmrT">
    <property role="TrG5h" value="IElement" />
    <property role="3GE5qa" value="Interfaces" />
    <property role="EcuMT" value="7493426444128839417" />
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmrU">
    <property role="TrG5h" value="Element_1" />
    <property role="34LRSv" value="&lt; &gt; &lt;/ &gt;" />
    <property role="R4oN_" value="Element" />
    <property role="3GE5qa" value="Rules.Element" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128839418" />
    <ref role="1TJDcQ" node="6vXZUoCOmrD" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOms7" role="1TKVEl">
      <property role="TrG5h" value="Name_1" />
      <property role="IQ2nx" value="7493426444128839431" />
      <ref role="AX2Wp" node="6vXZUoCOmrJ" resolve="Name" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOms8" role="1TKVEi">
      <property role="20kJfa" value="Attribute_1" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128839432" />
      <ref role="20lvS9" node="6vXZUoCOmrM" resolve="Attribute" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOms9" role="1TKVEi">
      <property role="20kJfa" value="Content_2" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128839433" />
      <ref role="20lvS9" node="6vXZUoCOmrO" resolve="IContent" />
    </node>
    <node concept="1TJgyi" id="6vXZUoCOmsa" role="1TKVEl">
      <property role="TrG5h" value="Name_2" />
      <property role="IQ2nx" value="7493426444128839434" />
      <ref role="AX2Wp" node="6vXZUoCOmrJ" resolve="Name" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmse" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmrO" resolve="IContent" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmsf" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmrT" resolve="IElement" />
    </node>
  </node>
  <node concept="1TIwiD" id="6vXZUoCOmrV">
    <property role="TrG5h" value="Element_2" />
    <property role="34LRSv" value="&lt; /&gt;" />
    <property role="R4oN_" value="Element" />
    <property role="3GE5qa" value="Rules.Element" />
    <property role="19KtqR" value="false" />
    <property role="EcuMT" value="7493426444128839419" />
    <ref role="1TJDcQ" node="6vXZUoCOmrD" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6vXZUoCOmsb" role="1TKVEl">
      <property role="TrG5h" value="Name_1" />
      <property role="IQ2nx" value="7493426444128839435" />
      <ref role="AX2Wp" node="6vXZUoCOmrJ" resolve="Name" />
    </node>
    <node concept="1TJgyj" id="6vXZUoCOmsc" role="1TKVEi">
      <property role="20kJfa" value="Attribute_1" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <property role="IQ2ns" value="7493426444128839436" />
      <ref role="20lvS9" node="6vXZUoCOmrM" resolve="Attribute" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmsg" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmrO" resolve="IContent" />
    </node>
    <node concept="PrWs8" id="6vXZUoCOmsh" role="PzmwI">
      <ref role="PrY4T" node="6vXZUoCOmrT" resolve="IElement" />
    </node>
  </node>
</model>

