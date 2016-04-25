<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0db97bfc-71ca-46f3-b975-0d240671ac8f(JSON.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="780356ec-bea6-49ce-926e-ee10c93bb814" name="JSON" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="780356ec-bea6-49ce-926e-ee10c93bb814" name="JSON">
      <concept id="784182816796426301" name="JSON.structure.Value_5" flags="ng" index="3KZ3Cw" />
      <concept id="784182816796426303" name="JSON.structure.Value_6" flags="ng" index="3KZ3Cy" />
      <concept id="784182816796426299" name="JSON.structure.Value_4" flags="ng" index="3KZ3CA">
        <child id="784182816796426322" name="Array_1" index="3KZ3Df" />
      </concept>
      <concept id="784182816796426293" name="JSON.structure.Value_1" flags="ng" index="3KZ3CC">
        <property id="784182816796426319" name="STRING_1" index="3KZ3Di" />
      </concept>
      <concept id="784182816796426295" name="JSON.structure.Value_2" flags="ng" index="3KZ3CE">
        <property id="784182816796426320" name="NUMBER_1" index="3KZ3Dd" />
      </concept>
      <concept id="784182816796426288" name="JSON.structure.Json_1" flags="ng" index="3KZ3CH">
        <child id="784182816796426317" name="Object_1" index="3KZ3Dg" />
      </concept>
      <concept id="784182816796426286" name="JSON.structure.Array_block_1_1" flags="ng" index="3KZ3CN">
        <child id="784182816796426316" name="Value_1" index="3KZ3Dh" />
      </concept>
      <concept id="784182816796426282" name="JSON.structure.Array_1" flags="ng" index="3KZ3CR">
        <child id="784182816796426315" name="Array_block_1_1_2" index="3KZ3Dm" />
        <child id="784182816796426314" name="Value_1" index="3KZ3Dn" />
      </concept>
      <concept id="784182816796426274" name="JSON.structure.BaseConcept" flags="ng" index="3KZ3CZ">
        <property id="784182816796426275" name="__DeleteContext" index="3KZ3CY" />
      </concept>
      <concept id="784182816796426308" name="JSON.structure.Object_block_1_1" flags="ng" index="3KZ3Dp">
        <child id="784182816796426325" name="Pair_1" index="3KZ3D8" />
      </concept>
      <concept id="784182816796426310" name="JSON.structure.Object_1" flags="ng" index="3KZ3Dr">
        <child id="784182816796426327" name="Object_block_1_1_2" index="3KZ3Da" />
        <child id="784182816796426326" name="Pair_1" index="3KZ3Db" />
      </concept>
      <concept id="784182816796426305" name="JSON.structure.Value_7" flags="ng" index="3KZ3Ds" />
      <concept id="784182816796426307" name="JSON.structure.Pair" flags="ng" index="3KZ3Du">
        <property id="784182816796426323" name="STRING_1" index="3KZ3De" />
        <child id="784182816796426324" name="Value_1" index="3KZ3D9" />
      </concept>
    </language>
  </registry>
  <node concept="3KZ3CH" id="FxYxRU7zDn">
    <node concept="3KZ3Dr" id="FxYxRU7zDJ" role="3KZ3Dg">
      <node concept="3KZ3Dp" id="FxYxRU7zDV" role="3KZ3Da">
        <node concept="3KZ3Du" id="FxYxRU7zDW" role="3KZ3D8">
          <property role="3KZ3De" value="bar" />
          <node concept="3KZ3CA" id="FxYxRU7zE5" role="3KZ3D9">
            <property role="3KZ3CY" value="1" />
            <node concept="3KZ3CR" id="FxYxRU7zE4" role="3KZ3Df">
              <property role="3KZ3CY" value="2" />
              <node concept="3KZ3CN" id="FxYxRU7zEd" role="3KZ3Dm">
                <node concept="3KZ3Cw" id="FxYxRU7zEj" role="3KZ3Dh">
                  <property role="3KZ3CY" value="1" />
                </node>
              </node>
              <node concept="3KZ3CN" id="FxYxRU7zEm" role="3KZ3Dm">
                <node concept="3KZ3CE" id="FxYxRU7zEw" role="3KZ3Dh">
                  <property role="3KZ3CY" value="1" />
                  <property role="3KZ3Dd" value="123.45e10" />
                </node>
              </node>
              <node concept="3KZ3CN" id="FxYxRU7zEz" role="3KZ3Dm">
                <node concept="3KZ3Ds" id="FxYxRU7zEL" role="3KZ3Dh">
                  <property role="3KZ3CY" value="1" />
                </node>
              </node>
              <node concept="3KZ3CN" id="FxYxRU7zEO" role="3KZ3Dm">
                <node concept="3KZ3CE" id="FxYxRU7zF6" role="3KZ3Dh">
                  <property role="3KZ3CY" value="1" />
                  <property role="3KZ3Dd" value="42" />
                </node>
              </node>
              <node concept="3KZ3Cy" id="FxYxRU7zEa" role="3KZ3Dn">
                <property role="3KZ3CY" value="1" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3KZ3Du" id="FxYxRU7zDK" role="3KZ3Db">
        <property role="3KZ3De" value="foo" />
        <node concept="3KZ3CC" id="FxYxRU7zDS" role="3KZ3D9">
          <property role="3KZ3CY" value="1" />
          <property role="3KZ3Di" value="bar" />
        </node>
      </node>
    </node>
  </node>
</model>

