<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9e4b9b60-f619-4612-a8fb-da25f40cdc23(JSON.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="6fdce129-9244-4af1-a2b1-90ac221b055e" name="JSON" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
  </languages>
  <imports />
  <registry>
    <language id="6fdce129-9244-4af1-a2b1-90ac221b055e" name="JSON">
      <concept id="7493426444128837762" name="JSON.structure.Object_1" flags="ng" index="1fb9W$">
        <child id="7493426444128837776" name="Pair_1" index="1fb9WQ" />
        <child id="7493426444128837777" name="Object_block_1_1_2" index="1fb9WR" />
      </concept>
      <concept id="7493426444128837760" name="JSON.structure.Value_7" flags="ng" index="1fb9WA" />
      <concept id="7493426444128837751" name="JSON.structure.Json_1" flags="ng" index="1fb9Zh">
        <child id="7493426444128837770" name="Object_1" index="1fb9WG" />
      </concept>
      <concept id="7493426444128837748" name="JSON.structure.Array_1" flags="ng" index="1fb9Zi">
        <child id="7493426444128837768" name="Value_1" index="1fb9WI" />
        <child id="7493426444128837769" name="Array_block_1_1_2" index="1fb9WJ" />
      </concept>
      <concept id="7493426444128837746" name="JSON.structure.Object_block_1_1" flags="ng" index="1fb9Zk">
        <child id="7493426444128837767" name="Pair_1" index="1fb9Wx" />
      </concept>
      <concept id="7493426444128837744" name="JSON.structure.Array_block_1_1" flags="ng" index="1fb9Zm">
        <child id="7493426444128837764" name="Value_1" index="1fb9Wy" />
      </concept>
      <concept id="7493426444128837745" name="JSON.structure.Pair" flags="ng" index="1fb9Zn">
        <property id="7493426444128837765" name="STRING_1" index="1fb9Wz" />
        <child id="7493426444128837766" name="Value_1" index="1fb9Ww" />
      </concept>
      <concept id="7493426444128837759" name="JSON.structure.Value_6" flags="ng" index="1fb9Zp" />
      <concept id="7493426444128837754" name="JSON.structure.Value_1" flags="ng" index="1fb9Zs">
        <property id="7493426444128837772" name="STRING_1" index="1fb9WE" />
      </concept>
      <concept id="7493426444128837755" name="JSON.structure.Value_2" flags="ng" index="1fb9Zt">
        <property id="7493426444128837773" name="NUMBER_1" index="1fb9WF" />
      </concept>
    </language>
  </registry>
  <node concept="1fb9Zh" id="44hsXdtqJzX">
    <node concept="1fb9W$" id="44hsXdtqJzZ" role="1fb9WG">
      <node concept="1fb9Zk" id="44hsXdtqJ$d" role="1fb9WR">
        <node concept="1fb9Zn" id="44hsXdtqJ$e" role="1fb9Wx">
          <property role="1fb9Wz" value="age" />
          <node concept="1fb9Zt" id="44hsXdtqJ$j" role="1fb9Ww">
            <property role="1fb9WF" value="42" />
          </node>
        </node>
      </node>
      <node concept="1fb9Zk" id="44hsXdtqJ_l" role="1fb9WR">
        <node concept="1fb9Zn" id="44hsXdtqJ_m" role="1fb9Wx">
          <property role="1fb9Wz" value="pets" />
          <node concept="1fb9Zi" id="44hsXdtqJA1" role="1fb9Ww">
            <node concept="1fb9Zm" id="44hsXdtqJAb" role="1fb9WJ">
              <node concept="1fb9Zs" id="44hsXdtqJAf" role="1fb9Wy">
                <property role="1fb9WE" value="dog" />
              </node>
            </node>
            <node concept="1fb9Zs" id="44hsXdtqJA7" role="1fb9WI">
              <property role="1fb9WE" value="snake" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1fb9Zk" id="44hsXdtqJAj" role="1fb9WR">
        <node concept="1fb9Zn" id="44hsXdtqJAk" role="1fb9Wx">
          <property role="1fb9Wz" value="married" />
          <node concept="1fb9Zp" id="44hsXdtqJAy" role="1fb9Ww" />
        </node>
      </node>
      <node concept="1fb9Zk" id="44hsXdtqJAA" role="1fb9WR">
        <node concept="1fb9Zn" id="44hsXdtqJAB" role="1fb9Wx">
          <property role="1fb9Wz" value="wife" />
          <node concept="1fb9WA" id="44hsXdtqJAS" role="1fb9Ww" />
        </node>
      </node>
      <node concept="1fb9Zn" id="44hsXdtqJ$2" role="1fb9WQ">
        <property role="1fb9Wz" value="name" />
        <node concept="1fb9Zs" id="44hsXdtqJ$9" role="1fb9Ww">
          <property role="1fb9WE" value="John Doe" />
        </node>
      </node>
    </node>
  </node>
</model>

