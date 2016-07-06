<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9b65d5be-747d-4cb9-bd1f-7fccfd98b8a0(JSON.adjusted.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="1cf135c6-28ba-478b-8370-80ffc1371666" name="JSON.adjusted" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
  </languages>
  <imports />
  <registry>
    <language id="1cf135c6-28ba-478b-8370-80ffc1371666" name="JSON.adjusted">
      <concept id="7493426444128838273" name="JSON.adjusted.structure.Object_1" flags="ng" index="1fb9OB">
        <child id="7493426444128838287" name="Pair_1" index="1fb9OD" />
      </concept>
      <concept id="7493426444128838262" name="JSON.adjusted.structure.Json_1" flags="ng" index="1fb9Rg">
        <child id="7493426444128838281" name="Object_1" index="1fb9OJ" />
      </concept>
      <concept id="7493426444128838259" name="JSON.adjusted.structure.Array_1" flags="ng" index="1fb9Rl">
        <child id="7493426444128838279" name="Value_1" index="1fb9Ox" />
      </concept>
      <concept id="7493426444128838256" name="JSON.adjusted.structure.Pair" flags="ng" index="1fb9Rm">
        <property id="7493426444128838276" name="STRING_1" index="1fb9Oy" />
        <child id="7493426444128838277" name="Value_1" index="1fb9Oz" />
      </concept>
      <concept id="7493426444128838270" name="JSON.adjusted.structure.Value_6" flags="ng" index="1fb9Ro" />
      <concept id="7493426444128838271" name="JSON.adjusted.structure.Value_7" flags="ng" index="1fb9Rp" />
      <concept id="7493426444128838266" name="JSON.adjusted.structure.Value_2" flags="ng" index="1fb9Rs">
        <property id="7493426444128838284" name="NUMBER_1" index="1fb9OE" />
      </concept>
      <concept id="7493426444128838265" name="JSON.adjusted.structure.Value_1" flags="ng" index="1fb9Rv">
        <property id="7493426444128838283" name="STRING_1" index="1fb9OH" />
      </concept>
    </language>
  </registry>
  <node concept="1fb9Rg" id="6vXZUoCRpYz">
    <node concept="1fb9OB" id="6vXZUoCRpY_" role="1fb9OJ">
      <node concept="1fb9Rm" id="6vXZUoCSD_q" role="1fb9OD">
        <property role="1fb9Oy" value="name" />
        <node concept="1fb9Rv" id="6vXZUoCSD_u" role="1fb9Oz">
          <property role="1fb9OH" value="John doe" />
        </node>
      </node>
      <node concept="1fb9Rm" id="6vXZUoCSD_x" role="1fb9OD">
        <property role="1fb9Oy" value="age" />
        <node concept="1fb9Rs" id="6vXZUoCSD_B" role="1fb9Oz">
          <property role="1fb9OE" value="42" />
        </node>
      </node>
      <node concept="1fb9Rm" id="6vXZUoCSD_E" role="1fb9OD">
        <property role="1fb9Oy" value="address" />
        <node concept="1fb9OB" id="6vXZUoCSD_M" role="1fb9Oz">
          <node concept="1fb9Rm" id="6vXZUoCSD_P" role="1fb9OD">
            <property role="1fb9Oy" value="street" />
            <node concept="1fb9Rv" id="6vXZUoCSD_T" role="1fb9Oz">
              <property role="1fb9OH" value="False st. 123" />
            </node>
          </node>
          <node concept="1fb9Rm" id="6vXZUoCSD_W" role="1fb9OD">
            <property role="1fb9Oy" value="city" />
            <node concept="1fb9Rv" id="6vXZUoCSDA2" role="1fb9Oz">
              <property role="1fb9OH" value="New York City" />
            </node>
          </node>
          <node concept="1fb9Rm" id="6vXZUoCSDA5" role="1fb9OD">
            <property role="1fb9Oy" value="country" />
            <node concept="1fb9Rv" id="6vXZUoCSDAd" role="1fb9Oz">
              <property role="1fb9OH" value="US" />
            </node>
          </node>
          <node concept="1fb9Rm" id="6vXZUoCSDAg" role="1fb9OD">
            <property role="1fb9Oy" value="postal code" />
            <node concept="1fb9Rs" id="6vXZUoCSDAq" role="1fb9Oz">
              <property role="1fb9OE" value="45021" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1fb9Rm" id="6vXZUoCSDAt" role="1fb9OD">
        <property role="1fb9Oy" value="pets" />
        <node concept="1fb9Rl" id="6vXZUoCSDAJ" role="1fb9Oz">
          <node concept="1fb9Rv" id="6vXZUoCSDAM" role="1fb9Ox">
            <property role="1fb9OH" value="snake" />
          </node>
          <node concept="1fb9Rv" id="6vXZUoCSDBF" role="1fb9Ox">
            <property role="1fb9OH" value="dog" />
          </node>
        </node>
      </node>
      <node concept="1fb9Rm" id="6vXZUoCSDAR" role="1fb9OD">
        <property role="1fb9Oy" value="married" />
        <node concept="1fb9Ro" id="6vXZUoCSDBd" role="1fb9Oz" />
      </node>
      <node concept="1fb9Rm" id="6vXZUoCSFMT" role="1fb9OD">
        <property role="1fb9Oy" value="wife" />
        <node concept="1fb9Rp" id="6vXZUoCSFNj" role="1fb9Oz" />
      </node>
      <node concept="1fb9Rm" id="6vXZUoCSDBg" role="1fb9OD">
        <property role="1fb9Oy" value="children" />
        <node concept="1fb9Rl" id="6vXZUoCSFMQ" role="1fb9Oz" />
      </node>
    </node>
  </node>
</model>

