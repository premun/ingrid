<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:eef9b3db-5941-45e7-9b90-13b2d4a667c2(Ingrid.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="3" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="9126048691955220717" name="jetbrains.mps.build.structure.BuildLayout_File" flags="ng" index="28jJK3">
        <child id="9126048691955220762" name="path" index="28jJRO" />
      </concept>
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848050071" name="jetbrains.mps.build.structure.BuildLayout_Zip" flags="ng" index="3981dG" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6592112598314586625" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup" flags="ng" index="m$f5U">
        <reference id="6592112598314586626" name="group" index="m$f5T" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
        <child id="2172791612906637490" name="description" index="3s6cr7" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <property id="1500819558096356884" name="doNotCompile" index="2GAjPV" />
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="763829979718664966" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleResources" flags="ng" index="3rtmxn">
        <child id="763829979718664967" name="files" index="3rtmxm" />
      </concept>
      <concept id="4278635856200826393" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar" flags="ng" index="1BurEX">
        <child id="4278635856200826394" name="path" index="1BurEY" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="3335207478148059730" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJarContent" flags="ng" index="3PtdJl" />
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="5FaaOUBGVTq">
    <property role="TrG5h" value="Ingrid" />
    <property role="2DA0ip" value="../" />
    <node concept="10PD9b" id="5FaaOUBGVTr" role="10PD9s" />
    <node concept="3b7kt6" id="5FaaOUBGVTs" role="10PD9s" />
    <node concept="398rNT" id="5FaaOUBGVTt" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="6QABUZoy3cN" role="398pKh">
        <node concept="2Ry0Ak" id="6QABUZoy3dW" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="6QABUZoy3hq" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="6QABUZoy3jw" role="2Ry0An">
              <property role="2Ry0Am" value=".." />
              <node concept="2Ry0Ak" id="6QABUZoy3lH" role="2Ry0An">
                <property role="2Ry0Am" value=".." />
                <node concept="2Ry0Ak" id="6QABUZoy3o1" role="2Ry0An">
                  <property role="2Ry0Am" value=".." />
                  <node concept="2Ry0Ak" id="6QABUZoy3qs" role="2Ry0An">
                    <property role="2Ry0Am" value=".." />
                    <node concept="2Ry0Ak" id="6QABUZoy3sY" role="2Ry0An">
                      <property role="2Ry0Am" value=".." />
                      <node concept="2Ry0Ak" id="6QABUZoy3vB" role="2Ry0An">
                        <property role="2Ry0Am" value="opt" />
                        <node concept="2Ry0Ak" id="4NDoW_fuWp0" role="2Ry0An">
                          <property role="2Ry0Am" value="JetBRains" />
                          <node concept="2Ry0Ak" id="4NDoW_fuWsj" role="2Ry0An">
                            <property role="2Ry0Am" value="Toolbox" />
                            <node concept="2Ry0Ak" id="4NDoW_fuWwq" role="2Ry0An">
                              <property role="2Ry0Am" value="apps" />
                              <node concept="2Ry0Ak" id="4NDoW_fuWyT" role="2Ry0An">
                                <property role="2Ry0Am" value="MPS" />
                                <node concept="2Ry0Ak" id="4NDoW_fuW_o" role="2Ry0An">
                                  <property role="2Ry0Am" value="ch-1" />
                                  <node concept="2Ry0Ak" id="4NDoW_fuWDv" role="2Ry0An">
                                    <property role="2Ry0Am" value="182.1603" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="5FaaOUBGVTw" role="1l3spd">
      <property role="TrG5h" value="INGRID_HOME" />
      <node concept="55IIr" id="5FaaOUBHpgF" role="398pKh">
        <node concept="2Ry0Ak" id="5UKaeCv5H6e" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="5UKaeCv5H6Z" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="5FaaOUBGVTu" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="5FaaOUBGVTv" role="2JcizS">
        <ref role="398BVh" node="5FaaOUBGVTt" resolve="mps_home" />
      </node>
    </node>
    <node concept="1l3spV" id="5FaaOUBGVVt" role="1l3spN">
      <node concept="3981dG" id="5FaaOUBGVVu" role="39821P">
        <node concept="3_J27D" id="5FaaOUBGVVv" role="Nbhlr">
          <node concept="3Mxwew" id="5FaaOUBGVVw" role="3MwsjC">
            <property role="3MwjfP" value="premun.mps.ingrid.zip" />
          </node>
        </node>
        <node concept="m$_wl" id="5FaaOUBGVVx" role="39821P">
          <ref role="m_rDy" node="5FaaOUBGVVk" resolve="Ingrid" />
          <node concept="3PtdJl" id="5FaaOUBHarY" role="39821P">
            <node concept="28jJK3" id="5FaaOUBHrf6" role="39821P">
              <node concept="398BVA" id="5FaaOUBHAyj" role="28jJRO">
                <ref role="398BVh" node="5FaaOUBGVTw" resolve="INGRID_HOME" />
                <node concept="2Ry0Ak" id="5UKaeCv5Hjf" role="iGT6I">
                  <property role="2Ry0Am" value="plugin" />
                  <node concept="2Ry0Ak" id="5UKaeCv5Hk8" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5UKaeCv5Hkd" role="2Ry0An">
                      <property role="2Ry0Am" value="antlr-4.5.2-complete.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="5FaaOUBGVVk" role="3989C9">
      <property role="m$_wk" value="Ingrid" />
      <node concept="3_J27D" id="5FaaOUBGVVl" role="m$_yQ">
        <node concept="3Mxwew" id="5FaaOUBGVVm" role="3MwsjC">
          <property role="3MwjfP" value="Ingrid - ANTLRv4 grammar import" />
        </node>
      </node>
      <node concept="3_J27D" id="5FaaOUBGVVn" role="m$_w8">
        <node concept="3Mxwew" id="5FaaOUBGVVo" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$_yC" id="5FaaOUBGVVq" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="5FaaOUBH9Hk" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4O0hKJpjIV3" resolve="jetbrains.mps.ide.devkit" />
      </node>
      <node concept="3_J27D" id="5FaaOUBGVVr" role="m_cZH">
        <node concept="3Mxwew" id="5FaaOUBGVVs" role="3MwsjC">
          <property role="3MwjfP" value="Ingrid" />
        </node>
      </node>
      <node concept="3_J27D" id="5FaaOUBGVV$" role="3s6cr7">
        <node concept="3Mxwew" id="5FaaOUBGVVA" role="3MwsjC">
          <property role="3MwjfP" value="&lt;![CDATA[This plugin allows to create an MPS language out of its ANTLRv4 grammar definition. For more information, visit &lt;a href=&quot;https://github.com/premun/ingrid&quot;&gt;the official plugin repository&lt;/a&gt;.]]&gt;" />
        </node>
      </node>
      <node concept="m$f5U" id="5FaaOUBH0ni" role="m$_yh">
        <ref role="m$f5T" node="5FaaOUBGVVj" resolve="Ingrid" />
      </node>
    </node>
    <node concept="2G$12M" id="5FaaOUBGVVj" role="3989C9">
      <property role="TrG5h" value="Ingrid" />
      <node concept="1E1JtA" id="5FaaOUBGVTN" role="2G$12L">
        <property role="BnDLt" value="false" />
        <property role="TrG5h" value="org.antlr" />
        <property role="3LESm3" value="4db458f1-215f-424c-8756-4cc4b0227697" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5FaaOUBHpcK" role="3LF7KH">
          <node concept="2Ry0Ak" id="5FaaOUBHqlR" role="iGT6I">
            <property role="2Ry0Am" value="org.antlr" />
            <node concept="2Ry0Ak" id="5FaaOUBHqmq" role="2Ry0An">
              <property role="2Ry0Am" value="org.antlr.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBHzgE" role="3bR37C">
          <node concept="1BurEX" id="5FaaOUBHzgF" role="1SiIV1">
            <node concept="398BVA" id="5FaaOUBHzgA" role="1BurEY">
              <ref role="398BVh" node="5FaaOUBGVTw" resolve="INGRID_HOME" />
              <node concept="2Ry0Ak" id="5UKaeCv5GZM" role="iGT6I">
                <property role="2Ry0Am" value="plugin" />
                <node concept="2Ry0Ak" id="5UKaeCv5H1j" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5UKaeCv5HfS" role="2Ry0An">
                    <property role="2Ry0Am" value="antlr-4.5.2-complete.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="4NDoW_fws26" role="3bR31x">
          <node concept="3LXTmp" id="4NDoW_fws27" role="3rtmxm">
            <node concept="3qWCbU" id="4NDoW_fws28" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="4NDoW_fws29" role="3LXTmr">
              <node concept="2Ry0Ak" id="4NDoW_fws2a" role="iGT6I">
                <property role="2Ry0Am" value="org.antlr" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5FaaOUBGVU6" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="premun.mps.ingrid.plugin" />
        <property role="3LESm3" value="c07252ce-2a36-4086-8c09-08109b3e573d" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5FaaOUBGVZQ" role="3LF7KH">
          <node concept="2Ry0Ak" id="5FaaOUBGVZW" role="iGT6I">
            <property role="2Ry0Am" value="plugin" />
            <node concept="2Ry0Ak" id="5FaaOUBGW01" role="2Ry0An">
              <property role="2Ry0Am" value="premun.mps.ingrid.plugin.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0hD" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0hE" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0hF" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0hG" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0hH" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0hI" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0hJ" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0hK" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5FaaOUBGVTN" resolve="org.antlr" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0hL" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0hM" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0lj" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0lk" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5FaaOUBGVVi" resolve="premun.mps.ingrid.parser" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0ll" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0lm" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0ln" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0lo" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5FaaOUBGVUp" resolve="premun.mps.ingrid.importer" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0lp" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0lq" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:2eDSGe9d1qi" resolve="jetbrains.mps.ide" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0lr" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0ls" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5FaaOUBGVUG" resolve="premun.mps.ingrid.library" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0lt" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0lu" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5FaaOUBGVUZ" resolve="premun.mps.ingrid.model" />
          </node>
        </node>
        <node concept="3rtmxn" id="4NDoW_fws2i" role="3bR31x">
          <node concept="3LXTmp" id="4NDoW_fws2j" role="3rtmxm">
            <node concept="3qWCbU" id="4NDoW_fws2k" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="4NDoW_fws2l" role="3LXTmr">
              <node concept="2Ry0Ak" id="4NDoW_fws2m" role="iGT6I">
                <property role="2Ry0Am" value="plugin" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5FaaOUBGVUp" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="premun.mps.ingrid.importer" />
        <property role="3LESm3" value="f0276ed1-44e5-4463-9cfe-cf15618e4974" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5FaaOUBGVU7" role="3LF7KH">
          <node concept="2Ry0Ak" id="5FaaOUBGW0T" role="iGT6I">
            <property role="2Ry0Am" value="importer" />
            <node concept="2Ry0Ak" id="5FaaOUBGW0Y" role="2Ry0An">
              <property role="2Ry0Am" value="premun.mps.ingrid.importer.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0i7" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0i8" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0i9" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0ia" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5FaaOUBGVTN" resolve="org.antlr" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0kA" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0kB" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5FaaOUBGVVi" resolve="premun.mps.ingrid.parser" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0kC" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0kD" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0kE" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0kF" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5FaaOUBGVUZ" resolve="premun.mps.ingrid.model" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0kG" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0kH" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5FaaOUBGVUG" resolve="premun.mps.ingrid.library" />
          </node>
        </node>
        <node concept="3rtmxn" id="4NDoW_fws2o" role="3bR31x">
          <node concept="3LXTmp" id="4NDoW_fws2p" role="3rtmxm">
            <node concept="3qWCbU" id="4NDoW_fws2q" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="4NDoW_fws2r" role="3LXTmr">
              <node concept="2Ry0Ak" id="4NDoW_fws2s" role="iGT6I">
                <property role="2Ry0Am" value="importer" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5FaaOUBGVUG" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="premun.mps.ingrid.library" />
        <property role="3LESm3" value="9450b346-4f8d-4243-9894-05b73fc17e09" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5FaaOUBGVUq" role="3LF7KH">
          <node concept="2Ry0Ak" id="5FaaOUBGW2D" role="iGT6I">
            <property role="2Ry0Am" value="library" />
            <node concept="2Ry0Ak" id="5FaaOUBGW2I" role="2Ry0An">
              <property role="2Ry0Am" value="premun.mps.ingrid.library.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0is" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0it" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0iu" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0iv" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L4X" resolve="jetbrains.mps.lang.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0iw" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0ix" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0iy" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0iz" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0i$" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0i_" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LbI" resolve="jetbrains.mps.lang.textGen" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0jZ" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0k0" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5FaaOUBGVUZ" resolve="premun.mps.ingrid.model" />
          </node>
        </node>
        <node concept="3rtmxn" id="4NDoW_fws2c" role="3bR31x">
          <node concept="3LXTmp" id="4NDoW_fws2d" role="3rtmxm">
            <node concept="3qWCbU" id="4NDoW_fws2e" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="4NDoW_fws2f" role="3LXTmr">
              <node concept="2Ry0Ak" id="4NDoW_fws2g" role="iGT6I">
                <property role="2Ry0Am" value="library" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5FaaOUBGVUZ" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="premun.mps.ingrid.model" />
        <property role="3LESm3" value="a34e01c8-8c6f-48c5-a512-bb294cca062e" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5FaaOUBGVUH" role="3LF7KH">
          <node concept="2Ry0Ak" id="5FaaOUBGW3A" role="iGT6I">
            <property role="2Ry0Am" value="model" />
            <node concept="2Ry0Ak" id="5FaaOUBGW3F" role="2Ry0An">
              <property role="2Ry0Am" value="premun.mps.ingrid.model.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0j0" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0j1" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5FaaOUBGVTN" resolve="org.antlr" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0j2" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0j3" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="3rtmxn" id="4NDoW_fws2u" role="3bR31x">
          <node concept="3LXTmp" id="4NDoW_fws2v" role="3rtmxm">
            <node concept="3qWCbU" id="4NDoW_fws2w" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="4NDoW_fws2x" role="3LXTmr">
              <node concept="2Ry0Ak" id="4NDoW_fws2y" role="iGT6I">
                <property role="2Ry0Am" value="model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5FaaOUBGVVi" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="premun.mps.ingrid.parser" />
        <property role="3LESm3" value="66288791-e621-45d1-bebf-408d2568bbe6" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5FaaOUBGVV0" role="3LF7KH">
          <node concept="2Ry0Ak" id="5FaaOUBGW3K" role="iGT6I">
            <property role="2Ry0Am" value="parser" />
            <node concept="2Ry0Ak" id="5FaaOUBGW3P" role="2Ry0An">
              <property role="2Ry0Am" value="premun.mps.ingrid.parser.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0ju" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0jv" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5FaaOUBGVTN" resolve="org.antlr" />
          </node>
        </node>
        <node concept="1SiIV0" id="5FaaOUBH0jw" role="3bR37C">
          <node concept="3bR9La" id="5FaaOUBH0jx" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5FaaOUBGVUZ" resolve="premun.mps.ingrid.model" />
          </node>
        </node>
        <node concept="3rtmxn" id="4NDoW_fws2$" role="3bR31x">
          <node concept="3LXTmp" id="4NDoW_fws2_" role="3rtmxm">
            <node concept="3qWCbU" id="4NDoW_fws2A" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="4NDoW_fws2B" role="3LXTmr">
              <node concept="2Ry0Ak" id="4NDoW_fws2C" role="iGT6I">
                <property role="2Ry0Am" value="parser" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

