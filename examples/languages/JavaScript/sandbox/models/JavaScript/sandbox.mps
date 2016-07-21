<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:01f25312-f6ce-4d81-a811-6f6e531795a2(JavaScript.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="e2a4a6a3-a7a5-46e4-99a6-37b40f0a9de4" name="JavaScript" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
  </languages>
  <imports />
  <registry>
    <language id="e2a4a6a3-a7a5-46e4-99a6-37b40f0a9de4" name="JavaScript">
      <concept id="7493426444128840201" name="JavaScript.structure.SingleExpression_25" flags="ng" index="1fb9mJ">
        <child id="7493426444128840394" name="SingleExpression_1" index="1fb9lG" />
        <child id="7493426444128840395" name="SingleExpression_2" index="1fb9lH" />
      </concept>
      <concept id="7493426444128840220" name="JavaScript.structure.SingleExpression_44" flags="ng" index="1fb9mU">
        <property id="7493426444128840432" name="Identifier_1" index="1fb9lm" />
      </concept>
      <concept id="7493426444128840070" name="JavaScript.structure.IfStatement_block_1_1" flags="ng" index="1fb9ow">
        <child id="7493426444128840290" name="Statement_1" index="1fb9n4" />
      </concept>
      <concept id="7493426444128840072" name="JavaScript.structure.ReturnStatement" flags="ng" index="1fb9oI">
        <child id="7493426444128840293" name="SingleExpression_1" index="1fb9n3" />
      </concept>
      <concept id="7493426444128840161" name="JavaScript.structure.Program" flags="ng" index="1fb9p7">
        <child id="7493426444128840337" name="SourceElement_1" index="1fb9kR" />
      </concept>
      <concept id="7493426444128840175" name="JavaScript.structure.FunctionDeclaration" flags="ng" index="1fb9p9">
        <property id="7493426444128840353" name="Identifier_1" index="1fb9k7" />
        <child id="7493426444128840354" name="FormalParameterList_1" index="1fb9k4" />
        <child id="7493426444128840355" name="FunctionBody_2" index="1fb9k5" />
      </concept>
      <concept id="7493426444128840128" name="JavaScript.structure.FormalParameterList" flags="ng" index="1fb9pA">
        <property id="7493426444128840305" name="Identifier_1" index="1fb9nn" />
        <child id="7493426444128840306" name="FormalParameterList_block_1_1_1" index="1fb9nk" />
      </concept>
      <concept id="7493426444128840156" name="JavaScript.structure.FunctionBody" flags="ng" index="1fb9pU">
        <child id="7493426444128840335" name="SourceElement_1" index="1fb9kD" />
      </concept>
      <concept id="7493426444128840154" name="JavaScript.structure.IfStatement" flags="ng" index="1fb9pW">
        <child id="7493426444128840332" name="Statement_2" index="1fb9kE" />
        <child id="7493426444128840333" name="IfStatement_block_1_1_3" index="1fb9kF" />
        <child id="7493426444128840331" name="SingleExpression_1" index="1fb9kH" />
      </concept>
      <concept id="7493426444128840155" name="JavaScript.structure.FormalParameterList_block_1_1" flags="ng" index="1fb9pX">
        <property id="7493426444128840334" name="Identifier_1" index="1fb9kC" />
      </concept>
    </language>
  </registry>
  <node concept="1fb9p7" id="44hsXdtqJAW">
    <node concept="1fb9p9" id="44hsXdtqJAX" role="1fb9kR">
      <property role="1fb9k7" value="min" />
      <node concept="1fb9pU" id="44hsXdtqJAZ" role="1fb9k5">
        <node concept="1fb9pW" id="44hsXdtqJB7" role="1fb9kD">
          <node concept="1fb9mJ" id="44hsXdtqJBe" role="1fb9kH">
            <node concept="1fb9mU" id="44hsXdtqJBn" role="1fb9lG">
              <property role="1fb9lm" value="x" />
            </node>
            <node concept="1fb9mU" id="44hsXdtqJBs" role="1fb9lH">
              <property role="1fb9lm" value="y" />
            </node>
          </node>
          <node concept="1fb9oI" id="44hsXdtqJBx" role="1fb9kE">
            <node concept="1fb9mU" id="44hsXdtqJBE" role="1fb9n3">
              <property role="1fb9lm" value="x" />
            </node>
          </node>
          <node concept="1fb9ow" id="44hsXdtqJC$" role="1fb9kF">
            <node concept="1fb9oI" id="44hsXdtqJCC" role="1fb9n4">
              <node concept="1fb9mU" id="44hsXdtqJCI" role="1fb9n3">
                <property role="1fb9lm" value="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1fb9pA" id="44hsXdtqJB3" role="1fb9k4">
        <property role="1fb9nn" value="x" />
        <node concept="1fb9pX" id="44hsXdtqJB5" role="1fb9nk">
          <property role="1fb9kC" value="y" />
        </node>
      </node>
    </node>
  </node>
</model>

