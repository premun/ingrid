<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:195b28b6-1084-4ac6-849a-2fd4a3e72451(SimpleXML.structure)">
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
  <node concept="Az7Fb" id="Pei6ieTtOJ">
    <property role="TrG5h" value="NameChar" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="(([:a-zA-Z])|(-)|(_)|(.)|([0-9]))" />
  </node>
  <node concept="Az7Fb" id="Pei6ieTtOK">
    <property role="TrG5h" value="TEXT" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="([^&lt;&quot;])*" />
  </node>
  <node concept="Az7Fb" id="Pei6ieTtOL">
    <property role="TrG5h" value="Name" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="[:a-zA-Z]((([:a-zA-Z])|(-)|(_)|(.)|([0-9])))*" />
  </node>
  <node concept="1TIwiD" id="Pei6ieTtOM">
    <property role="TrG5h" value="Document" />
    <property role="OYydz" value="Document" />
    <property role="3GE5qa" value="Rules.Document" />
    <property role="1pbfSe" value="1674304106" />
    <property role="19KtqR" value="true" />
    <node concept="1TJgyj" id="Pei6ieTtP2" role="1TKVEi">
      <property role="20kJfa" value="Prolog_1" />
      <property role="20lbJX" value="0..1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtOP" resolve="Prolog" />
    </node>
    <node concept="1TJgyj" id="Pei6ieTtP3" role="1TKVEi">
      <property role="20kJfa" value="Comment_2" />
      <property role="20lbJX" value="0..1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtON" resolve="Comment" />
    </node>
    <node concept="1TJgyj" id="Pei6ieTtP4" role="1TKVEi">
      <property role="20kJfa" value="Element_3" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtOX" resolve="Element" />
    </node>
  </node>
  <node concept="1TIwiD" id="Pei6ieTtON">
    <property role="TrG5h" value="Comment" />
    <property role="OYydz" value="Comment" />
    <property role="3GE5qa" value="Rules.Comment" />
    <property role="1pbfSe" value="1674304105" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="&lt;!-- --&gt;" />
    <node concept="1TJgyi" id="Pei6ieTtP5" role="1TKVEl">
      <property role="TrG5h" value="TEXT_1" />
      <ref role="AX2Wp" node="Pei6ieTtOK" resolve="TEXT" />
    </node>
  </node>
  <node concept="1TIwiD" id="Pei6ieTtOO">
    <property role="TrG5h" value="Attribute" />
    <property role="OYydz" value="Attribute" />
    <property role="3GE5qa" value="Rules.Attribute" />
    <property role="1pbfSe" value="1674304104" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="=&quot; &quot;" />
    <node concept="1TJgyi" id="Pei6ieTtP6" role="1TKVEl">
      <property role="TrG5h" value="Name_1" />
      <ref role="AX2Wp" node="Pei6ieTtOL" resolve="Name" />
    </node>
    <node concept="1TJgyi" id="Pei6ieTtP7" role="1TKVEl">
      <property role="TrG5h" value="TEXT_2" />
      <ref role="AX2Wp" node="Pei6ieTtOK" resolve="TEXT" />
    </node>
  </node>
  <node concept="1TIwiD" id="Pei6ieTtOP">
    <property role="TrG5h" value="Prolog" />
    <property role="OYydz" value="Prolog" />
    <property role="3GE5qa" value="Rules.Prolog" />
    <property role="1pbfSe" value="1674304103" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="&lt;?xml  ?&gt;" />
    <node concept="1TJgyj" id="Pei6ieTtP8" role="1TKVEi">
      <property role="20kJfa" value="Attribute_1" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtOO" resolve="Attribute" />
    </node>
  </node>
  <node concept="PlHQZ" id="Pei6ieTtOQ">
    <property role="TrG5h" value="Content" />
    <property role="3GE5qa" value="Interfaces.Content" />
    <property role="1pbfSe" value="1674304102" />
  </node>
  <node concept="1TIwiD" id="Pei6ieTtOR">
    <property role="TrG5h" value="Content_1" />
    <property role="OYydz" value="Content_1" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="1pbfSe" value="1674304101" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="Text content" />
    <node concept="PrWs8" id="Pei6ieTtOS" role="PzmwI">
      <ref role="PrY4T" node="Pei6ieTtOQ" resolve="Content" />
    </node>
    <node concept="1TJgyi" id="Pei6ieTtP9" role="1TKVEl">
      <property role="TrG5h" value="TEXT_1" />
      <ref role="AX2Wp" node="Pei6ieTtOK" resolve="TEXT" />
    </node>
  </node>
  <node concept="1TIwiD" id="Pei6ieTtOT">
    <property role="TrG5h" value="Content_2" />
    <property role="OYydz" value="Content_2" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="1pbfSe" value="1674304099" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="Element content" />
    <node concept="PrWs8" id="Pei6ieTtOU" role="PzmwI">
      <ref role="PrY4T" node="Pei6ieTtOQ" resolve="Content" />
    </node>
    <node concept="1TJgyj" id="Pei6ieTtPa" role="1TKVEi">
      <property role="20kJfa" value="Element_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtOX" resolve="Element" />
    </node>
  </node>
  <node concept="1TIwiD" id="Pei6ieTtOV">
    <property role="TrG5h" value="Content_3" />
    <property role="OYydz" value="Content_3" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="1pbfSe" value="1674304097" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="Comment content" />
    <node concept="PrWs8" id="Pei6ieTtOW" role="PzmwI">
      <ref role="PrY4T" node="Pei6ieTtOQ" resolve="Content" />
    </node>
    <node concept="1TJgyj" id="Pei6ieTtPb" role="1TKVEi">
      <property role="20kJfa" value="Comment_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtON" resolve="Comment" />
    </node>
  </node>
  <node concept="PlHQZ" id="Pei6ieTtOX">
    <property role="TrG5h" value="Element" />
    <property role="3GE5qa" value="Interfaces.Element" />
    <property role="1pbfSe" value="1674304095" />
  </node>
  <node concept="1TIwiD" id="Pei6ieTtOY">
    <property role="TrG5h" value="Element_1" />
    <property role="OYydz" value="Element_1" />
    <property role="3GE5qa" value="Rules.Element" />
    <property role="1pbfSe" value="1674304094" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="&lt; &gt; &lt;/ &gt;" />
    <node concept="PrWs8" id="Pei6ieTtOZ" role="PzmwI">
      <ref role="PrY4T" node="Pei6ieTtOX" resolve="Element" />
    </node>
    <node concept="1TJgyi" id="Pei6ieTtPc" role="1TKVEl">
      <property role="TrG5h" value="Name_1" />
      <ref role="AX2Wp" node="Pei6ieTtOL" resolve="Name" />
    </node>
    <node concept="1TJgyj" id="Pei6ieTtPd" role="1TKVEi">
      <property role="20kJfa" value="Attribute_1" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtOO" resolve="Attribute" />
    </node>
    <node concept="1TJgyj" id="Pei6ieTtPe" role="1TKVEi">
      <property role="20kJfa" value="Content_2" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtOQ" resolve="Content" />
    </node>
    <node concept="1TJgyi" id="Pei6ieTtPf" role="1TKVEl">
      <property role="TrG5h" value="Name_2" />
      <ref role="AX2Wp" node="Pei6ieTtOL" resolve="Name" />
    </node>
  </node>
  <node concept="1TIwiD" id="Pei6ieTtP0">
    <property role="TrG5h" value="Element_2" />
    <property role="OYydz" value="Element_2" />
    <property role="3GE5qa" value="Rules.Element" />
    <property role="1pbfSe" value="1674304092" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="&lt; /&gt;" />
    <node concept="PrWs8" id="Pei6ieTtP1" role="PzmwI">
      <ref role="PrY4T" node="Pei6ieTtOX" resolve="Element" />
    </node>
    <node concept="1TJgyi" id="Pei6ieTtPg" role="1TKVEl">
      <property role="TrG5h" value="Name_1" />
      <ref role="AX2Wp" node="Pei6ieTtOL" resolve="Name" />
    </node>
    <node concept="1TJgyj" id="Pei6ieTtPh" role="1TKVEi">
      <property role="20kJfa" value="Attribute_1" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="Pei6ieTtOO" resolve="Attribute" />
    </node>
  </node>
</model>

