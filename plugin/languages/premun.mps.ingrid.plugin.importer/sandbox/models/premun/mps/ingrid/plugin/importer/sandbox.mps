<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ecfb2cf2-58b5-478b-b02d-f498f96cfa8c(premun.mps.ingrid.plugin.importer.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="fe246be5-ce3c-4829-8cc0-4a7d01deb23f" name="premun.mps.ingrid.plugin.importer" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
  </languages>
  <imports />
  <registry>
    <language id="fe246be5-ce3c-4829-8cc0-4a7d01deb23f" name="premun.mps.ingrid.plugin.importer">
      <concept id="6354700358280879337" name="premun.mps.ingrid.plugin.importer.structure.GrammarImporter" flags="ng" index="3XknaB">
        <property id="6354700358280879340" name="targetLanguage" index="3Xknay" />
        <property id="6354700358280879338" name="filePath" index="3Xkna$" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3XknaB" id="7u4wmVSP3nV">
    <property role="TrG5h" value="SimpleXML" />
    <property role="3Xkna$" value="/home/premun/Diplomka/ingrid/grammars/SimpleXML.g4" />
    <property role="3Xknay" value="imported.SimpleXML" />
  </node>
</model>

