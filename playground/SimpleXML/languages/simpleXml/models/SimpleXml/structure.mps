<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:420e2e00-e649-45d0-8289-092d899eb106(SimpleXml.structure)">
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
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="1587916991969465369" name="conceptId" index="1pbfSe" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
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
  <node concept="1TIwiD" id="39OqM6CyJ08">
    <property role="1pbfSe" value="620799191" />
    <property role="TrG5h" value="Document" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="39OqM6CyKpg" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="prolog" />
      <ref role="20lvS9" node="39OqM6CyKgi" resolve="Prolog" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyKpi" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="element" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyMHE" resolve="Element" />
    </node>
  </node>
  <node concept="1TIwiD" id="39OqM6CyKga">
    <property role="1pbfSe" value="620794069" />
    <property role="TrG5h" value="Element_1" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="Rules" />
    <ref role="1TJDcQ" node="39OqM6CyMHE" resolve="Element" />
    <node concept="1TJgyj" id="39OqM6CyMGP" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="lessThan_1" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyMGE" resolve="LessThanChar" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyMGU" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="lessThan_2" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyMGE" resolve="LessThanChar" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyMGR" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="greaterThan_1" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyKl9" resolve="GreaterThanChar" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyMHe" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="greaterThan_2" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyKl9" resolve="GreaterThanChar" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyMH0" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="name_1" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyKiN" resolve="NAME_Concept" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyMHq" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="name_2" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyKiN" resolve="NAME_Concept" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyMHx" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="attributes" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="39OqM6CyKi7" resolve="Attribute" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyMKC" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="slash" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyKlk" resolve="SlashChar" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyMKL" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="content" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="39OqM6CyMHD" resolve="Content" />
    </node>
  </node>
  <node concept="Az7Fb" id="39OqM6CyKgg">
    <property role="TrG5h" value="ATTRVALUE" />
    <property role="FLfZY" value="&quot;[^&lt;&quot;]*&quot;|'[^&lt;']*'" />
    <property role="3GE5qa" value="Tokens" />
  </node>
  <node concept="1TIwiD" id="39OqM6CyKgi">
    <property role="1pbfSe" value="620794061" />
    <property role="TrG5h" value="Prolog" />
    <property role="3GE5qa" value="Rules" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="39OqM6CyKlP" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="xmlOpenTag" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyKlv" resolve="XmlOpenTagChar" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyKlR" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="ws_1" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyKjP" resolve="WS_Concept" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyKlY" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="attributes" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="39OqM6CyKi7" resolve="Attribute" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyKlU" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="ws_2" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyKjP" resolve="WS_Concept" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyKmd" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="xmlCloseTag" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyKlE" resolve="XmlCloseTagChar" />
    </node>
  </node>
  <node concept="1TIwiD" id="39OqM6CyKi7">
    <property role="1pbfSe" value="620793944" />
    <property role="TrG5h" value="Attribute" />
    <property role="3GE5qa" value="Rules" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="39OqM6CyKi8" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="name" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyKiN" resolve="NAME_Concept" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyKis" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="equalChar" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyKie" resolve="EqualChar" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyKjK" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="attrValue" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyKi_" resolve="ATTRVALUE_Concept" />
    </node>
  </node>
  <node concept="1TIwiD" id="39OqM6CyKie">
    <property role="1pbfSe" value="620793937" />
    <property role="TrG5h" value="EqualChar" />
    <property role="3GE5qa" value="Characters" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="39OqM6CyKi_">
    <property role="1pbfSe" value="620793914" />
    <property role="TrG5h" value="ATTRVALUE_Concept" />
    <property role="3GE5qa" value="Tokens" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="39OqM6CyKiA" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" node="39OqM6CyKgg" resolve="ATTRVALUE" />
    </node>
  </node>
  <node concept="Az7Fb" id="39OqM6CyKiM">
    <property role="3GE5qa" value="Tokens" />
    <property role="TrG5h" value="NAME" />
    <property role="FLfZY" value="[:a-zA-Z]([:a-zA-Z0-9-._])*" />
  </node>
  <node concept="1TIwiD" id="39OqM6CyKiN">
    <property role="1pbfSe" value="620793900" />
    <property role="3GE5qa" value="Tokens" />
    <property role="TrG5h" value="NAME_Concept" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="39OqM6CyKiO" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" node="39OqM6CyKiM" resolve="NAME" />
    </node>
  </node>
  <node concept="Az7Fb" id="39OqM6CyKjO">
    <property role="3GE5qa" value="Tokens" />
    <property role="TrG5h" value="WS" />
    <property role="FLfZY" value="(' '|'\t'|'\r'? '\n')+" />
  </node>
  <node concept="1TIwiD" id="39OqM6CyKjP">
    <property role="1pbfSe" value="620793834" />
    <property role="3GE5qa" value="Tokens" />
    <property role="TrG5h" value="WS_Concept" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="39OqM6CyKjQ" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" node="39OqM6CyKjO" resolve="WS" />
    </node>
  </node>
  <node concept="1TIwiD" id="39OqM6CyKkM">
    <property role="1pbfSe" value="620793773" />
    <property role="TrG5h" value="Chardata" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="Rules" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="39OqM6CyKkO">
    <property role="1pbfSe" value="620793771" />
    <property role="TrG5h" value="Chardata_TEXT" />
    <property role="3GE5qa" value="Rules" />
    <ref role="1TJDcQ" node="39OqM6CyKkM" resolve="Chardata" />
    <node concept="1TJgyj" id="39OqM6CyKkT" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="text" />
      <ref role="20lvS9" node="39OqM6CyKkQ" resolve="TEXT_Concept" />
    </node>
  </node>
  <node concept="Az7Fb" id="39OqM6CyKkP">
    <property role="3GE5qa" value="Tokens" />
    <property role="TrG5h" value="TEXT" />
    <property role="FLfZY" value="[^&lt;]+" />
  </node>
  <node concept="1TIwiD" id="39OqM6CyKkQ">
    <property role="1pbfSe" value="620793769" />
    <property role="3GE5qa" value="Tokens" />
    <property role="TrG5h" value="TEXT_Concept" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="39OqM6CyKkR" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" node="39OqM6CyKkP" resolve="TEXT" />
    </node>
  </node>
  <node concept="1TIwiD" id="39OqM6CyKkV">
    <property role="1pbfSe" value="620793764" />
    <property role="TrG5h" value="Chardata_WS" />
    <property role="3GE5qa" value="Rules" />
    <ref role="1TJDcQ" node="39OqM6CyKkM" resolve="Chardata" />
    <node concept="1TJgyj" id="39OqM6CyKkW" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="ws" />
      <ref role="20lvS9" node="39OqM6CyKkV" resolve="Chardata_WS" />
    </node>
  </node>
  <node concept="1TIwiD" id="39OqM6CyKl9">
    <property role="1pbfSe" value="620793750" />
    <property role="3GE5qa" value="Characters" />
    <property role="TrG5h" value="GreaterThanChar" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="39OqM6CyKlk">
    <property role="1pbfSe" value="620793739" />
    <property role="3GE5qa" value="Characters" />
    <property role="TrG5h" value="SlashChar" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="39OqM6CyKlv">
    <property role="1pbfSe" value="620793728" />
    <property role="3GE5qa" value="Characters" />
    <property role="TrG5h" value="XmlOpenTagChar" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="39OqM6CyKlE">
    <property role="1pbfSe" value="620793717" />
    <property role="3GE5qa" value="Characters" />
    <property role="TrG5h" value="XmlCloseTagChar" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="39OqM6CyMGE">
    <property role="1pbfSe" value="620784053" />
    <property role="3GE5qa" value="Characters" />
    <property role="TrG5h" value="LessThanChar" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="39OqM6CyMHD">
    <property role="1pbfSe" value="620783990" />
    <property role="TrG5h" value="Content" />
    <property role="3GE5qa" value="Rules" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="39OqM6CyMHE">
    <property role="1pbfSe" value="620783989" />
    <property role="TrG5h" value="Element" />
    <property role="3GE5qa" value="Rules" />
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="39OqM6CyMNV">
    <property role="1pbfSe" value="620783588" />
    <property role="TrG5h" value="Element_2" />
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="3GE5qa" value="Rules" />
    <ref role="1TJDcQ" node="39OqM6CyMHE" resolve="Element" />
    <node concept="1TJgyj" id="39OqM6CyMNW" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="lessThan" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyMGE" resolve="LessThanChar" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyMNY" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="greaterThan" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyKl9" resolve="GreaterThanChar" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyMO0" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="name" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyKiN" resolve="NAME_Concept" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyMO2" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="attributes" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="39OqM6CyKi7" resolve="Attribute" />
    </node>
    <node concept="1TJgyj" id="39OqM6CyMO3" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="slash" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyKlk" resolve="SlashChar" />
    </node>
  </node>
  <node concept="1TIwiD" id="39OqM6Czece">
    <property role="1pbfSe" value="620671441" />
    <property role="3GE5qa" value="Rules" />
    <property role="TrG5h" value="Content_1" />
    <ref role="1TJDcQ" node="39OqM6CyMHD" resolve="Content" />
    <node concept="1TJgyj" id="39OqM6Czecf" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="chardata" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyKkM" resolve="Chardata" />
    </node>
  </node>
  <node concept="1TIwiD" id="39OqM6Czm7y">
    <property role="1pbfSe" value="620638973" />
    <property role="3GE5qa" value="Rules" />
    <property role="TrG5h" value="Content_2" />
    <ref role="1TJDcQ" node="39OqM6CyMHD" resolve="Content" />
    <node concept="1TJgyj" id="39OqM6Czm7z" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="element" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="39OqM6CyMHE" resolve="Element" />
    </node>
  </node>
</model>

