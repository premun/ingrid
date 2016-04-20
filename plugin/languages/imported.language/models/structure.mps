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
  <node concept="Az7Fb" id="5lY$Gq$KbqX">
    <property role="TrG5h" value="NameChar" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="(([:a-zA-Z])|(-)|(_)|(.)|([0-9]))" />
  </node>
  <node concept="Az7Fb" id="5lY$Gq$KbqY">
    <property role="TrG5h" value="TEXT" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="([^&lt;&quot;])*" />
  </node>
  <node concept="Az7Fb" id="5lY$Gq$KbqZ">
    <property role="TrG5h" value="CDATA" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="(.)*" />
  </node>
  <node concept="Az7Fb" id="5lY$Gq$Kbr0">
    <property role="TrG5h" value="Name" />
    <property role="3GE5qa" value="Tokens" />
    <property role="FLfZY" value="[:a-zA-Z]((([:a-zA-Z])|(-)|(_)|(.)|([0-9])))*" />
  </node>
  <node concept="1TIwiD" id="5lY$Gq$Kbr1">
    <property role="TrG5h" value="Document" />
    <property role="OYydz" value="Document" />
    <property role="3GE5qa" value="Rules.Document" />
    <property role="1pbfSe" value="96515705" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="Document" />
    <node concept="1TJgyj" id="5lY$Gq$Kbrk" role="1TKVEi">
      <property role="20kJfa" value="Prolog_1" />
      <property role="20lbJX" value="0..1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="5lY$Gq$Kbr4" resolve="Prolog" />
    </node>
    <node concept="1TJgyj" id="5lY$Gq$Kbrl" role="1TKVEi">
      <property role="20kJfa" value="Comment_2" />
      <property role="20lbJX" value="0..1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="5lY$Gq$Kbr2" resolve="Comment" />
    </node>
    <node concept="1TJgyj" id="5lY$Gq$Kbrm" role="1TKVEi">
      <property role="20kJfa" value="Element_3" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="5lY$Gq$Kbrf" resolve="Element" />
    </node>
  </node>
  <node concept="1TIwiD" id="5lY$Gq$Kbr2">
    <property role="TrG5h" value="Comment" />
    <property role="OYydz" value="Comment" />
    <property role="3GE5qa" value="Rules.Comment" />
    <property role="1pbfSe" value="96515704" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="&lt;!-- --&gt;" />
    <node concept="1TJgyi" id="5lY$Gq$Kbrn" role="1TKVEl">
      <property role="TrG5h" value="TEXT_1" />
      <ref role="AX2Wp" node="5lY$Gq$KbqY" resolve="TEXT" />
    </node>
  </node>
  <node concept="1TIwiD" id="5lY$Gq$Kbr3">
    <property role="TrG5h" value="Attribute" />
    <property role="OYydz" value="Attribute" />
    <property role="3GE5qa" value="Rules.Attribute" />
    <property role="1pbfSe" value="96515703" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="=&quot; &quot;" />
    <node concept="1TJgyi" id="5lY$Gq$Kbro" role="1TKVEl">
      <property role="TrG5h" value="Name_1" />
      <ref role="AX2Wp" node="5lY$Gq$Kbr0" resolve="Name" />
    </node>
    <node concept="1TJgyi" id="5lY$Gq$Kbrp" role="1TKVEl">
      <property role="TrG5h" value="TEXT_2" />
      <ref role="AX2Wp" node="5lY$Gq$KbqY" resolve="TEXT" />
    </node>
  </node>
  <node concept="1TIwiD" id="5lY$Gq$Kbr4">
    <property role="TrG5h" value="Prolog" />
    <property role="OYydz" value="Prolog" />
    <property role="3GE5qa" value="Rules.Prolog" />
    <property role="1pbfSe" value="96515702" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="&lt;?xml  ?&gt;" />
    <node concept="1TJgyj" id="5lY$Gq$Kbrq" role="1TKVEi">
      <property role="20kJfa" value="Attribute_1" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="5lY$Gq$Kbr3" resolve="Attribute" />
    </node>
  </node>
  <node concept="PlHQZ" id="5lY$Gq$Kbr5">
    <property role="TrG5h" value="Content" />
    <property role="3GE5qa" value="Interfaces.Content" />
    <property role="1pbfSe" value="96515701" />
  </node>
  <node concept="1TIwiD" id="5lY$Gq$Kbr6">
    <property role="TrG5h" value="Content_1" />
    <property role="OYydz" value="Content_1" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="1pbfSe" value="96515700" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="Text content" />
    <node concept="PrWs8" id="5lY$Gq$Kbr7" role="PzmwI">
      <ref role="PrY4T" node="5lY$Gq$Kbr5" resolve="Content" />
    </node>
    <node concept="1TJgyi" id="5lY$Gq$Kbrr" role="1TKVEl">
      <property role="TrG5h" value="TEXT_1" />
      <ref role="AX2Wp" node="5lY$Gq$KbqY" resolve="TEXT" />
    </node>
  </node>
  <node concept="1TIwiD" id="5lY$Gq$Kbr8">
    <property role="TrG5h" value="Content_2" />
    <property role="OYydz" value="Content_2" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="1pbfSe" value="96515698" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="Cdata content" />
    <node concept="PrWs8" id="5lY$Gq$Kbr9" role="PzmwI">
      <ref role="PrY4T" node="5lY$Gq$Kbr5" resolve="Content" />
    </node>
    <node concept="1TJgyj" id="5lY$Gq$Kbrs" role="1TKVEi">
      <property role="20kJfa" value="Cdata_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="5lY$Gq$Kbre" resolve="Cdata" />
    </node>
  </node>
  <node concept="1TIwiD" id="5lY$Gq$Kbra">
    <property role="TrG5h" value="Content_3" />
    <property role="OYydz" value="Content_3" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="1pbfSe" value="96515696" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="Comment content" />
    <node concept="PrWs8" id="5lY$Gq$Kbrb" role="PzmwI">
      <ref role="PrY4T" node="5lY$Gq$Kbr5" resolve="Content" />
    </node>
    <node concept="1TJgyj" id="5lY$Gq$Kbrt" role="1TKVEi">
      <property role="20kJfa" value="Comment_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="5lY$Gq$Kbr2" resolve="Comment" />
    </node>
  </node>
  <node concept="1TIwiD" id="5lY$Gq$Kbrc">
    <property role="TrG5h" value="Content_4" />
    <property role="OYydz" value="Content_4" />
    <property role="3GE5qa" value="Rules.Content" />
    <property role="1pbfSe" value="96515694" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="Element content" />
    <node concept="PrWs8" id="5lY$Gq$Kbrd" role="PzmwI">
      <ref role="PrY4T" node="5lY$Gq$Kbr5" resolve="Content" />
    </node>
    <node concept="1TJgyj" id="5lY$Gq$Kbru" role="1TKVEi">
      <property role="20kJfa" value="Element_1" />
      <property role="20lbJX" value="1" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="5lY$Gq$Kbrf" resolve="Element" />
    </node>
  </node>
  <node concept="1TIwiD" id="5lY$Gq$Kbre">
    <property role="TrG5h" value="Cdata" />
    <property role="OYydz" value="Cdata" />
    <property role="3GE5qa" value="Rules.Cdata" />
    <property role="1pbfSe" value="96515692" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="&lt;![CDATA[ ]]&gt;" />
    <node concept="1TJgyi" id="5lY$Gq$Kbrv" role="1TKVEl">
      <property role="TrG5h" value="CDATA_1" />
      <ref role="AX2Wp" node="5lY$Gq$KbqZ" resolve="CDATA" />
    </node>
  </node>
  <node concept="PlHQZ" id="5lY$Gq$Kbrf">
    <property role="TrG5h" value="Element" />
    <property role="3GE5qa" value="Interfaces.Element" />
    <property role="1pbfSe" value="96515691" />
  </node>
  <node concept="1TIwiD" id="5lY$Gq$Kbrg">
    <property role="TrG5h" value="Element_1" />
    <property role="OYydz" value="Element_1" />
    <property role="3GE5qa" value="Rules.Element" />
    <property role="1pbfSe" value="96515690" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="&lt; &gt; &lt;/ &gt;" />
    <node concept="PrWs8" id="5lY$Gq$Kbrh" role="PzmwI">
      <ref role="PrY4T" node="5lY$Gq$Kbrf" resolve="Element" />
    </node>
    <node concept="1TJgyi" id="5lY$Gq$Kbrw" role="1TKVEl">
      <property role="TrG5h" value="Name_1" />
      <ref role="AX2Wp" node="5lY$Gq$Kbr0" resolve="Name" />
    </node>
    <node concept="1TJgyj" id="5lY$Gq$Kbrx" role="1TKVEi">
      <property role="20kJfa" value="Attribute_1" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="5lY$Gq$Kbr3" resolve="Attribute" />
    </node>
    <node concept="1TJgyj" id="5lY$Gq$Kbry" role="1TKVEi">
      <property role="20kJfa" value="Content_2" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="5lY$Gq$Kbr5" resolve="Content" />
    </node>
    <node concept="1TJgyi" id="5lY$Gq$Kbrz" role="1TKVEl">
      <property role="TrG5h" value="Name_2" />
      <ref role="AX2Wp" node="5lY$Gq$Kbr0" resolve="Name" />
    </node>
  </node>
  <node concept="1TIwiD" id="5lY$Gq$Kbri">
    <property role="TrG5h" value="Element_2" />
    <property role="OYydz" value="Element_2" />
    <property role="3GE5qa" value="Rules.Element" />
    <property role="1pbfSe" value="96515688" />
    <property role="19KtqR" value="false" />
    <property role="34LRSv" value="&lt; /&gt;" />
    <node concept="PrWs8" id="5lY$Gq$Kbrj" role="PzmwI">
      <ref role="PrY4T" node="5lY$Gq$Kbrf" resolve="Element" />
    </node>
    <node concept="1TJgyi" id="5lY$Gq$Kbr$" role="1TKVEl">
      <property role="TrG5h" value="Name_1" />
      <ref role="AX2Wp" node="5lY$Gq$Kbr0" resolve="Name" />
    </node>
    <node concept="1TJgyj" id="5lY$Gq$Kbr_" role="1TKVEi">
      <property role="20kJfa" value="Attribute_1" />
      <property role="20lbJX" value="0..n" />
      <property role="20lmBu" value="aggregation" />
      <ref role="20lvS9" node="5lY$Gq$Kbr3" resolve="Attribute" />
    </node>
  </node>
</model>

