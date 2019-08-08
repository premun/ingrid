<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:608c2f0b-8e3c-4b93-b13b-60ab34786abf(premun.mps.ingrid.library)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="0" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="12" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
  </languages>
  <imports>
    <import index="2omo" ref="r:de0d3c0c-d049-41cf-bbf9-a920ba513cd3(jetbrains.mps.lang.textGen.structure)" />
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="2t9r" ref="a34e01c8-8c6f-48c5-a512-bb294cca062e/java:premun.mps.ingrid.model(premun.mps.ingrid.model/)" />
    <import index="twe9" ref="r:28e6d713-c3c3-493e-8d97-e9a2c49f28ce(jetbrains.mps.lang.structure.util)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068431790191" name="jetbrains.mps.baseLanguage.structure.Expression" flags="nn" index="33vP2n" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1208623485264" name="jetbrains.mps.baseLanguage.structure.AbstractOperation" flags="nn" index="1B$H19" />
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA">
        <property id="5858074156537516431" name="text" index="x79VB" />
      </concept>
      <concept id="6832197706140518104" name="jetbrains.mps.baseLanguage.javadoc.structure.DocMethodParameterReference" flags="ng" index="zr_55" />
      <concept id="6832197706140518103" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseParameterReference" flags="ng" index="zr_5a">
        <reference id="6832197706140518108" name="param" index="zr_51" />
      </concept>
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690881930" name="jetbrains.mps.baseLanguage.javadoc.structure.ParameterBlockDocTag" flags="ng" index="TUZQ0">
        <property id="8465538089690881934" name="text" index="TUZQ4" />
        <child id="6832197706140518123" name="parameter" index="zr_5Q" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="45307784116571022" name="jetbrains.mps.lang.textGen.structure.FilenameFunction" flags="ig" index="29tfMY" />
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305491868" name="jetbrains.mps.lang.textGen.structure.CollectionAppendPart" flags="ng" index="l9S2W">
        <property id="1237306003719" name="separator" index="lbP0B" />
        <property id="1237983969951" name="withSeparator" index="XA4eZ" />
        <child id="1237305945551" name="list" index="lbANJ" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785110" name="jetbrains.mps.lang.quotation.structure.AbstractAntiquotation" flags="ng" index="2c44t0">
        <property id="6489343236075007666" name="label" index="3hQQBS" />
        <child id="1196350785111" name="expression" index="2c44t1" />
      </concept>
      <concept id="1196350785117" name="jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation" flags="ng" index="2c44tb" />
      <concept id="1196350785112" name="jetbrains.mps.lang.quotation.structure.Antiquotation" flags="ng" index="2c44te" />
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
      <concept id="1196866233735" name="jetbrains.mps.lang.quotation.structure.PropertyAntiquotation" flags="ng" index="2EMmih" />
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145383075378" name="jetbrains.mps.lang.smodel.structure.SNodeListType" flags="in" index="2I9FWS">
        <reference id="1145383142433" name="elementConcept" index="2I9WkF" />
      </concept>
      <concept id="1181949435690" name="jetbrains.mps.lang.smodel.structure.Concept_NewInstance" flags="nn" index="LFhST" />
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7">
        <child id="1758937410080001570" name="conceptArgument" index="1dBWTz" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaraton" index="3bZ5Sy" />
      </concept>
      <concept id="6973815483243445083" name="jetbrains.mps.lang.smodel.structure.EnumMemberValueRefExpression" flags="nn" index="3f7Wdw">
        <reference id="6973815483243565416" name="member" index="3f7u_j" />
        <reference id="6973815483243564601" name="enum" index="3f7vo2" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1206482823744" name="jetbrains.mps.lang.smodel.structure.Model_AddRootOperation" flags="nn" index="3BYIHo">
        <child id="1206482823746" name="nodeArgument" index="3BYIHq" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="role_DebugInfo" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227022159410" name="jetbrains.mps.baseLanguage.collections.structure.AddFirstElementOperation" flags="nn" index="2Ke4WJ" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="312cEu" id="Pei6ieTOev">
    <property role="TrG5h" value="EditorHelper" />
    <node concept="312cEg" id="AdDO7XMvho" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="cellModel" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="AdDO7XMvcw" role="1B3o_S" />
      <node concept="3Tqbb2" id="AdDO7XMvmg" role="1tU5fm">
        <ref role="ehGHo" to="tpc2:fBEZMkn" resolve="CellModel_Collection" />
      </node>
    </node>
    <node concept="2tJIrI" id="AdDO7XMCHd" role="jymVt" />
    <node concept="3clFb_" id="AdDO7XMukF" role="jymVt">
      <property role="TrG5h" value="createEditor" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="AdDO7XMukH" role="3clF47">
        <node concept="3cpWs8" id="AdDO7XMukI" role="3cqZAp">
          <node concept="3cpWsn" id="AdDO7XMukJ" role="3cpWs9">
            <property role="TrG5h" value="nodeDecl" />
            <node concept="3Tqbb2" id="AdDO7XMukK" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
            </node>
            <node concept="10QFUN" id="AdDO7XMukL" role="33vP2m">
              <node concept="3Tqbb2" id="AdDO7XMukM" role="10QFUM">
                <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
              </node>
              <node concept="2OqwBi" id="AdDO7XMukN" role="10QFUP">
                <node concept="37vLTw" id="AdDO7XMukO" role="2Oq$k0">
                  <ref role="3cqZAo" node="AdDO7XMumx" resolve="alternative" />
                </node>
                <node concept="2OwXpG" id="75$k3hpEr61" role="2OqNvi">
                  <ref role="2Oxat5" to="2t9r:~Alternative.node" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="AdDO7XMukQ" role="3cqZAp">
          <node concept="3cpWsn" id="AdDO7XMukR" role="3cpWs9">
            <property role="TrG5h" value="editor" />
            <node concept="3Tqbb2" id="AdDO7XMukS" role="1tU5fm">
              <ref role="ehGHo" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
            </node>
            <node concept="2c44tf" id="AdDO7XMukT" role="33vP2m">
              <node concept="24kQdi" id="AdDO7XMukU" role="2c44tc">
                <node concept="2c44tb" id="AdDO7XMukV" role="lGtFl">
                  <property role="P3scX" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1166049232041/1166049300910" />
                  <property role="2qtEX8" value="conceptDeclaration" />
                  <node concept="37vLTw" id="AdDO7XMukW" role="2c44t1">
                    <ref role="3cqZAo" node="AdDO7XMukJ" resolve="nodeDecl" />
                  </node>
                </node>
                <node concept="3EZMnI" id="AdDO7XMukX" role="2wV5jI">
                  <node concept="l2Vlx" id="AdDO7XMukY" role="2iSdaV" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="AdDO7XMukZ" role="3cqZAp" />
        <node concept="3clFbF" id="AdDO7XMul0" role="3cqZAp">
          <node concept="37vLTI" id="AdDO7XMul1" role="3clFbG">
            <node concept="2OqwBi" id="AdDO7XMul2" role="37vLTx">
              <node concept="37vLTw" id="AdDO7XMul3" role="2Oq$k0">
                <ref role="3cqZAo" node="AdDO7XMukJ" resolve="nodeDecl" />
              </node>
              <node concept="3TrcHB" id="AdDO7XMul4" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
              </node>
            </node>
            <node concept="2OqwBi" id="AdDO7XMul5" role="37vLTJ">
              <node concept="37vLTw" id="AdDO7XMul6" role="2Oq$k0">
                <ref role="3cqZAo" node="AdDO7XMukR" resolve="editor" />
              </node>
              <node concept="3TrcHB" id="AdDO7XMul7" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="hj2V9aA_LE" role="3cqZAp" />
        <node concept="3clFbF" id="AdDO7XMvX9" role="3cqZAp">
          <node concept="37vLTI" id="AdDO7XMwaz" role="3clFbG">
            <node concept="2OqwBi" id="AdDO7XMw2s" role="37vLTJ">
              <node concept="Xjq3P" id="AdDO7XMvX7" role="2Oq$k0" />
              <node concept="2OwXpG" id="AdDO7XMw6m" role="2OqNvi">
                <ref role="2Oxat5" node="AdDO7XMvho" resolve="cellModel" />
              </node>
            </node>
            <node concept="10QFUN" id="AdDO7XMulc" role="37vLTx">
              <node concept="3Tqbb2" id="AdDO7XMuld" role="10QFUM">
                <ref role="ehGHo" to="tpc2:fBEZMkn" resolve="CellModel_Collection" />
              </node>
              <node concept="2OqwBi" id="AdDO7XMule" role="10QFUP">
                <node concept="37vLTw" id="AdDO7XMulf" role="2Oq$k0">
                  <ref role="3cqZAo" node="AdDO7XMukR" resolve="editor" />
                </node>
                <node concept="3TrEf2" id="AdDO7XMulg" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:fIwV5gl" resolve="cellModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="AdDO7XMulq" role="3cqZAp" />
        <node concept="3SKdUt" id="AdDO7XMulr" role="3cqZAp">
          <node concept="3SKdUq" id="AdDO7XMuls" role="3SKWNk">
            <property role="3SKdUp" value="Creates cell for each element of the alternative" />
          </node>
        </node>
        <node concept="1DcWWT" id="AdDO7XMult" role="3cqZAp">
          <node concept="3clFbS" id="AdDO7XMulu" role="2LFqv$">
            <node concept="3cpWs8" id="AdDO7XMulv" role="3cqZAp">
              <node concept="3cpWsn" id="AdDO7XMulw" role="3cpWs9">
                <property role="TrG5h" value="r" />
                <node concept="3uibUv" id="75$k3hpDG10" role="1tU5fm">
                  <ref role="3uigEE" to="2t9r:~Rule" resolve="Rule" />
                </node>
                <node concept="2OqwBi" id="AdDO7XMuly" role="33vP2m">
                  <node concept="37vLTw" id="AdDO7XMulz" role="2Oq$k0">
                    <ref role="3cqZAo" node="AdDO7XMumo" resolve="reference" />
                  </node>
                  <node concept="2OwXpG" id="75$k3hpE3WW" role="2OqNvi">
                    <ref role="2Oxat5" to="2t9r:~RuleReference.rule" resolve="rule" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="AdDO7XMul_" role="3cqZAp" />
            <node concept="3clFbJ" id="AdDO7XMulA" role="3cqZAp">
              <node concept="3clFbS" id="AdDO7XMulB" role="3clFbx">
                <node concept="3clFbF" id="AdDO7XMulC" role="3cqZAp">
                  <node concept="1rXfSq" id="AdDO7XMulD" role="3clFbG">
                    <ref role="37wK5l" node="AdDO7XMwge" resolve="createLiteralRuleCell" />
                    <node concept="10QFUN" id="AdDO7XMulG" role="37wK5m">
                      <node concept="3uibUv" id="75$k3hpDGgN" role="10QFUM">
                        <ref role="3uigEE" to="2t9r:~LiteralRule" resolve="LiteralRule" />
                      </node>
                      <node concept="37vLTw" id="AdDO7XMulI" role="10QFUP">
                        <ref role="3cqZAo" node="AdDO7XMulw" resolve="r" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="AdDO7XMulK" role="3clFbw">
                <node concept="3uibUv" id="75$k3hpDGgp" role="2ZW6by">
                  <ref role="3uigEE" to="2t9r:~LiteralRule" resolve="LiteralRule" />
                </node>
                <node concept="37vLTw" id="AdDO7XMulM" role="2ZW6bz">
                  <ref role="3cqZAo" node="AdDO7XMulw" resolve="r" />
                </node>
              </node>
              <node concept="3eNFk2" id="AdDO7XMulN" role="3eNLev">
                <node concept="2ZW3vV" id="AdDO7XMulO" role="3eO9$A">
                  <node concept="3uibUv" id="75$k3hpDGhn" role="2ZW6by">
                    <ref role="3uigEE" to="2t9r:~RegexRule" resolve="RegexRule" />
                  </node>
                  <node concept="37vLTw" id="AdDO7XMulQ" role="2ZW6bz">
                    <ref role="3cqZAo" node="AdDO7XMulw" resolve="r" />
                  </node>
                </node>
                <node concept="3clFbS" id="AdDO7XMulR" role="3eOfB_">
                  <node concept="3clFbF" id="AdDO7XMum1" role="3cqZAp">
                    <node concept="1rXfSq" id="AdDO7XMum2" role="3clFbG">
                      <ref role="37wK5l" node="AdDO7XMwwM" resolve="createRegexRuleCell" />
                      <node concept="37vLTw" id="3aST2zGrEFB" role="37wK5m">
                        <ref role="3cqZAo" node="AdDO7XMumo" resolve="reference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="AdDO7XMum6" role="3eNLev">
                <node concept="2ZW3vV" id="AdDO7XMum7" role="3eO9$A">
                  <node concept="3uibUv" id="75$k3hpDGhK" role="2ZW6by">
                    <ref role="3uigEE" to="2t9r:~ParserRule" resolve="ParserRule" />
                  </node>
                  <node concept="37vLTw" id="AdDO7XMum9" role="2ZW6bz">
                    <ref role="3cqZAo" node="AdDO7XMulw" resolve="r" />
                  </node>
                </node>
                <node concept="3clFbS" id="AdDO7XMuma" role="3eOfB_">
                  <node concept="3clFbF" id="AdDO7XMumk" role="3cqZAp">
                    <node concept="1rXfSq" id="AdDO7XMuml" role="3clFbG">
                      <ref role="37wK5l" node="AdDO7XMwMZ" resolve="createParserRuleCell" />
                      <node concept="37vLTw" id="AdDO7XMzAD" role="37wK5m">
                        <ref role="3cqZAo" node="AdDO7XMumo" resolve="reference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="AdDO7XMumo" role="1Duv9x">
            <property role="TrG5h" value="reference" />
            <node concept="3uibUv" id="75$k3hpE3YK" role="1tU5fm">
              <ref role="3uigEE" to="2t9r:~RuleReference" resolve="RuleReference" />
            </node>
          </node>
          <node concept="2OqwBi" id="AdDO7XMumq" role="1DdaDG">
            <node concept="37vLTw" id="75$k3hpE43J" role="2Oq$k0">
              <ref role="3cqZAo" node="AdDO7XMumx" resolve="alternative" />
            </node>
            <node concept="2OwXpG" id="75$k3hpErtA" role="2OqNvi">
              <ref role="2Oxat5" to="2t9r:~Alternative.elements" resolve="elements" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="AdDO7XMumt" role="3cqZAp" />
        <node concept="3cpWs6" id="AdDO7XMumu" role="3cqZAp">
          <node concept="37vLTw" id="AdDO7XMumv" role="3cqZAk">
            <ref role="3cqZAo" node="AdDO7XMukR" resolve="editor" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="3aST2zGr_SA" role="3clF45">
        <ref role="ehGHo" to="tpc2:fA4kQeF" resolve="ConceptEditorDeclaration" />
      </node>
      <node concept="37vLTG" id="AdDO7XMumx" role="3clF46">
        <property role="TrG5h" value="alternative" />
        <node concept="3uibUv" id="75$k3hpDG25" role="1tU5fm">
          <ref role="3uigEE" to="2t9r:~Alternative" resolve="Alternative" />
        </node>
      </node>
      <node concept="3Tm1VV" id="AdDO7XMum_" role="1B3o_S" />
      <node concept="P$JXv" id="3aST2zGr_nX" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGr_nY" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGr_nZ" role="1dT_Ay">
            <property role="1dT_AB" value="Takes alternative's contents and puts them into a projectional editor." />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGr_o0" role="3nqlJM">
          <property role="TUZQ4" value="Alternative for which we are creating the editor" />
          <node concept="zr_55" id="3aST2zGr_o2" role="zr_5Q">
            <ref role="zr_51" node="AdDO7XMumx" resolve="alternative" />
          </node>
        </node>
        <node concept="x79VA" id="3aST2zGr_o3" role="3nqlJM">
          <property role="x79VB" value="Editor declaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="AdDO7XMraC" role="jymVt" />
    <node concept="3clFb_" id="AdDO7XMwge" role="jymVt">
      <property role="TrG5h" value="createLiteralRuleCell" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="AdDO7XMwgg" role="3clF47">
        <node concept="3SKdUt" id="AdDO7XMwgh" role="3cqZAp">
          <node concept="3SKdUq" id="AdDO7XMwgi" role="3SKWNk">
            <property role="3SKdUp" value="Literal rules are constant content cells" />
          </node>
        </node>
        <node concept="3cpWs8" id="AdDO7XMwgj" role="3cqZAp">
          <node concept="3cpWsn" id="AdDO7XMwgk" role="3cpWs9">
            <property role="TrG5h" value="cell" />
            <node concept="2c44tf" id="AdDO7XMwgl" role="33vP2m">
              <node concept="3F0ifn" id="AdDO7XMwgm" role="2c44tc">
                <property role="3F0ifm" value="" />
                <node concept="2EMmih" id="AdDO7XMwgn" role="lGtFl">
                  <property role="P4ACc" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1073389577006/1073389577007" />
                  <property role="2qtEX9" value="text" />
                  <property role="3hQQBS" value="CellModel_Constant" />
                  <node concept="2OqwBi" id="AdDO7XMwgo" role="2c44t1">
                    <node concept="2OwXpG" id="75$k3hpE3Dd" role="2OqNvi">
                      <ref role="2Oxat5" to="2t9r:~LiteralRule.value" resolve="value" />
                    </node>
                    <node concept="37vLTw" id="AdDO7XMwgq" role="2Oq$k0">
                      <ref role="3cqZAo" node="AdDO7XMwgA" resolve="rule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tqbb2" id="AdDO7XMwgr" role="1tU5fm">
              <ref role="ehGHo" to="tpc2:fBF0icI" resolve="CellModel_Constant" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="AdDO7XMwgs" role="3cqZAp">
          <node concept="2OqwBi" id="AdDO7XMwgt" role="3clFbG">
            <node concept="2OqwBi" id="AdDO7XMwgu" role="2Oq$k0">
              <node concept="37vLTw" id="AdDO7XMyfB" role="2Oq$k0">
                <ref role="3cqZAo" node="AdDO7XMvho" resolve="cellModel" />
              </node>
              <node concept="3Tsc0h" id="AdDO7XMwgw" role="2OqNvi">
                <ref role="3TtcxE" to="tpc2:fBEZMko" resolve="childCellModel" />
              </node>
            </node>
            <node concept="TSZUe" id="AdDO7XMwgx" role="2OqNvi">
              <node concept="37vLTw" id="AdDO7XMwgy" role="25WWJ7">
                <ref role="3cqZAo" node="AdDO7XMwgk" resolve="cell" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="AdDO7XMwgC" role="3clF45" />
      <node concept="37vLTG" id="AdDO7XMwgA" role="3clF46">
        <property role="TrG5h" value="rule" />
        <node concept="3uibUv" id="75$k3hpDGfw" role="1tU5fm">
          <ref role="3uigEE" to="2t9r:~LiteralRule" resolve="LiteralRule" />
        </node>
      </node>
      <node concept="3Tm6S6" id="AdDO7XMwgz" role="1B3o_S" />
      <node concept="P$JXv" id="3aST2zGrBqS" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrBqT" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrBqU" role="1dT_Ay">
            <property role="1dT_AB" value="Creates an editor cell for a constant value." />
          </node>
        </node>
        <node concept="TUZQ0" id="PePnZszyBf" role="3nqlJM">
          <property role="TUZQ4" value="Literal rule" />
          <node concept="zr_55" id="PePnZszyBt" role="zr_5Q">
            <ref role="zr_51" node="AdDO7XMwgA" resolve="rule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="AdDO7XMsvw" role="jymVt" />
    <node concept="3clFb_" id="AdDO7XMwwM" role="jymVt">
      <property role="TrG5h" value="createRegexRuleCell" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="AdDO7XMwwO" role="3clF47">
        <node concept="3SKdUt" id="AdDO7XMwwP" role="3cqZAp">
          <node concept="3SKdUq" id="AdDO7XMwwQ" role="3SKWNk">
            <property role="3SKdUp" value="Regex rules are saved as properties of the concept" />
          </node>
        </node>
        <node concept="3cpWs8" id="AdDO7XMwwR" role="3cqZAp">
          <node concept="3cpWsn" id="AdDO7XMwwS" role="3cpWs9">
            <property role="TrG5h" value="cell" />
            <node concept="3Tqbb2" id="AdDO7XMwwT" role="1tU5fm">
              <ref role="ehGHo" to="tpc2:fBF0A4I" resolve="CellModel_Property" />
            </node>
            <node concept="2c44tf" id="AdDO7XMwwU" role="33vP2m">
              <node concept="3F0A7n" id="AdDO7XMwwV" role="2c44tc">
                <node concept="2c44tb" id="AdDO7XMwwW" role="lGtFl">
                  <property role="P3scX" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1139848536355/1140103550593" />
                  <property role="2qtEX8" value="relationDeclaration" />
                  <node concept="2OqwBi" id="3aST2zGrECk" role="2c44t1">
                    <node concept="37vLTw" id="75$k3hpDHng" role="2Oq$k0">
                      <ref role="3cqZAo" node="3aST2zGrE4m" resolve="reference" />
                    </node>
                    <node concept="2OwXpG" id="75$k3hpErPp" role="2OqNvi">
                      <ref role="2Oxat5" to="2t9r:~RuleReference.nodeReference" resolve="nodeReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="AdDO7XMwwY" role="3cqZAp">
          <node concept="2OqwBi" id="AdDO7XMwwZ" role="3clFbG">
            <node concept="2OqwBi" id="AdDO7XMwx0" role="2Oq$k0">
              <node concept="37vLTw" id="AdDO7XMyor" role="2Oq$k0">
                <ref role="3cqZAo" node="AdDO7XMvho" resolve="cellModel" />
              </node>
              <node concept="3Tsc0h" id="AdDO7XMwx2" role="2OqNvi">
                <ref role="3TtcxE" to="tpc2:fBEZMko" resolve="childCellModel" />
              </node>
            </node>
            <node concept="TSZUe" id="AdDO7XMwx3" role="2OqNvi">
              <node concept="37vLTw" id="AdDO7XMwx4" role="25WWJ7">
                <ref role="3cqZAo" node="AdDO7XMwwS" resolve="cell" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="AdDO7XMwxa" role="3clF45" />
      <node concept="37vLTG" id="3aST2zGrE4m" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="75$k3hpDGG6" role="1tU5fm">
          <ref role="3uigEE" to="2t9r:~RuleReference" resolve="RuleReference" />
        </node>
      </node>
      <node concept="3Tm6S6" id="AdDO7XMwx5" role="1B3o_S" />
      <node concept="P$JXv" id="3aST2zGrCrc" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrCrd" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrCre" role="1dT_Ay">
            <property role="1dT_AB" value="Creates an editor cell for a property reference." />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrCrf" role="3nqlJM">
          <property role="TUZQ4" value="Property reference" />
          <node concept="zr_55" id="3aST2zGrNNT" role="zr_5Q">
            <ref role="zr_51" node="3aST2zGrE4m" resolve="reference" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="AdDO7XMpl9" role="jymVt" />
    <node concept="3clFb_" id="AdDO7XMwMZ" role="jymVt">
      <property role="TrG5h" value="createParserRuleCell" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="AdDO7XMwN1" role="3clF47">
        <node concept="3SKdUt" id="AdDO7XMwN2" role="3cqZAp">
          <node concept="3SKdUq" id="AdDO7XMwN3" role="3SKWNk">
            <property role="3SKdUp" value="Parser rules are saved as children of the concept" />
          </node>
        </node>
        <node concept="3SKdUt" id="5_E18HdpySI" role="3cqZAp">
          <node concept="3SKdUq" id="5_E18HdpySK" role="3SKWNk">
            <property role="3SKdUp" value="Depending on cardinality a list or a single reference" />
          </node>
        </node>
        <node concept="3clFbJ" id="AdDO7XMwN9" role="3cqZAp">
          <node concept="3clFbS" id="AdDO7XMwNa" role="3clFbx">
            <node concept="3cpWs8" id="AdDO7XMwNb" role="3cqZAp">
              <node concept="3cpWsn" id="AdDO7XMwNc" role="3cpWs9">
                <property role="TrG5h" value="cell" />
                <node concept="3Tqbb2" id="AdDO7XMwNd" role="1tU5fm">
                  <ref role="ehGHo" to="tpc2:fBF1sR7" resolve="CellModel_RefNode" />
                </node>
                <node concept="2c44tf" id="AdDO7XMwNe" role="33vP2m">
                  <node concept="3F1sOY" id="AdDO7XMwNf" role="2c44tc">
                    <node concept="2c44tb" id="AdDO7XMwNg" role="lGtFl">
                      <property role="P3scX" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1139848536355/1140103550593" />
                      <property role="2qtEX8" value="relationDeclaration" />
                      <node concept="2OqwBi" id="3aST2zGrE1F" role="2c44t1">
                        <node concept="37vLTw" id="3aST2zGrE0T" role="2Oq$k0">
                          <ref role="3cqZAo" node="AdDO7XMyWy" resolve="reference" />
                        </node>
                        <node concept="2OwXpG" id="75$k3hpErYL" role="2OqNvi">
                          <ref role="2Oxat5" to="2t9r:~RuleReference.nodeReference" resolve="nodeReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="AdDO7XMwNi" role="3cqZAp">
              <node concept="37vLTI" id="AdDO7XMwNj" role="3clFbG">
                <node concept="3clFbT" id="AdDO7XMwNk" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="2OqwBi" id="AdDO7XMwNl" role="37vLTJ">
                  <node concept="37vLTw" id="AdDO7XMwNm" role="2Oq$k0">
                    <ref role="3cqZAo" node="AdDO7XMwNc" resolve="cell" />
                  </node>
                  <node concept="3TrcHB" id="AdDO7XMwNn" role="2OqNvi">
                    <ref role="3TsBF5" to="tpc2:Ujlmrg18k" resolve="customizeEmptyCell" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="AdDO7XMwNo" role="3cqZAp">
              <node concept="37vLTI" id="AdDO7XMwNp" role="3clFbG">
                <node concept="2OqwBi" id="AdDO7XMwNq" role="37vLTJ">
                  <node concept="37vLTw" id="AdDO7XMwNr" role="2Oq$k0">
                    <ref role="3cqZAo" node="AdDO7XMwNc" resolve="cell" />
                  </node>
                  <node concept="3TrEf2" id="AdDO7XMwNs" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:UjlmrgInb" resolve="emptyCellModel" />
                  </node>
                </node>
                <node concept="2c44tf" id="AdDO7XMwNt" role="37vLTx">
                  <node concept="3F0ifn" id="AdDO7XMwNu" role="2c44tc">
                    <property role="3F0ifm" value="" />
                    <node concept="2EMmih" id="AdDO7XMwNv" role="lGtFl">
                      <property role="P4ACc" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1073389577006/1073389577007" />
                      <property role="2qtEX9" value="text" />
                      <property role="3hQQBS" value="CellModel_Constant" />
                      <node concept="Xl_RD" id="AdDO7XMwNw" role="2c44t1">
                        <property role="Xl_RC" value=" " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="AdDO7XMwOl" role="3cqZAp">
              <node concept="2OqwBi" id="AdDO7XMwOm" role="3clFbG">
                <node concept="2OqwBi" id="AdDO7XMwOn" role="2Oq$k0">
                  <node concept="37vLTw" id="AdDO7XMyz1" role="2Oq$k0">
                    <ref role="3cqZAo" node="AdDO7XMvho" resolve="cellModel" />
                  </node>
                  <node concept="3Tsc0h" id="AdDO7XMwOp" role="2OqNvi">
                    <ref role="3TtcxE" to="tpc2:fBEZMko" resolve="childCellModel" />
                  </node>
                </node>
                <node concept="TSZUe" id="AdDO7XMwOq" role="2OqNvi">
                  <node concept="37vLTw" id="AdDO7XMwOr" role="25WWJ7">
                    <ref role="3cqZAo" node="AdDO7XMwNc" resolve="cell" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="7BzywMDf3ev" role="3clFbw">
            <node concept="3clFbC" id="7BzywMDf3ES" role="3uHU7w">
              <node concept="Rm8GO" id="75$k3hpDHbp" role="3uHU7w">
                <ref role="Rm8GQ" to="2t9r:~MAX_ONE" resolve="MAX_ONE" />
                <ref role="1Px2BO" to="2t9r:~Quantity" resolve="Quantity" />
              </node>
              <node concept="2OqwBi" id="7BzywMDf3yY" role="3uHU7B">
                <node concept="37vLTw" id="7BzywMDf3xp" role="2Oq$k0">
                  <ref role="3cqZAo" node="AdDO7XMyWy" resolve="reference" />
                </node>
                <node concept="2OwXpG" id="75$k3hpDH6m" role="2OqNvi">
                  <ref role="2Oxat5" to="2t9r:~RuleReference.quantity" resolve="quantity" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="AdDO7XMwNS" role="3uHU7B">
              <node concept="2OqwBi" id="AdDO7XMwNU" role="3uHU7B">
                <node concept="37vLTw" id="AdDO7XMzr$" role="2Oq$k0">
                  <ref role="3cqZAo" node="AdDO7XMyWy" resolve="reference" />
                </node>
                <node concept="2OwXpG" id="75$k3hpDGWK" role="2OqNvi">
                  <ref role="2Oxat5" to="2t9r:~RuleReference.quantity" resolve="quantity" />
                </node>
              </node>
              <node concept="Rm8GO" id="75$k3hpDGOD" role="3uHU7w">
                <ref role="Rm8GQ" to="2t9r:~EXACTLY_ONE" resolve="EXACTLY_ONE" />
                <ref role="1Px2BO" to="2t9r:~Quantity" resolve="Quantity" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="AdDO7XMwNX" role="9aQIa">
            <node concept="3clFbS" id="AdDO7XMwNY" role="9aQI4">
              <node concept="3cpWs8" id="AdDO7XMwNZ" role="3cqZAp">
                <node concept="3cpWsn" id="AdDO7XMwO0" role="3cpWs9">
                  <property role="TrG5h" value="cell" />
                  <node concept="3Tqbb2" id="AdDO7XMwO1" role="1tU5fm">
                    <ref role="ehGHo" to="tpc2:fBF2Hee" resolve="CellModel_RefNodeList" />
                  </node>
                  <node concept="2c44tf" id="AdDO7XMwO2" role="33vP2m">
                    <node concept="3F2HdR" id="AdDO7XMwO3" role="2c44tc">
                      <node concept="3F0ifn" id="AdDO7XMwO4" role="2czzBI">
                        <property role="3F0ifm" value=" " />
                      </node>
                      <node concept="2c44tb" id="AdDO7XMwO5" role="lGtFl">
                        <property role="P3scX" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1139848536355/1140103550593" />
                        <property role="2qtEX8" value="relationDeclaration" />
                        <node concept="2OqwBi" id="3aST2zGrDXl" role="2c44t1">
                          <node concept="37vLTw" id="3aST2zGrDWz" role="2Oq$k0">
                            <ref role="3cqZAo" node="AdDO7XMyWy" resolve="reference" />
                          </node>
                          <node concept="2OwXpG" id="75$k3hpEs89" role="2OqNvi">
                            <ref role="2Oxat5" to="2t9r:~RuleReference.nodeReference" resolve="nodeReference" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="AdDO7XMwO7" role="3cqZAp">
                <node concept="37vLTI" id="AdDO7XMwO8" role="3clFbG">
                  <node concept="2OqwBi" id="AdDO7XMwO9" role="37vLTJ">
                    <node concept="37vLTw" id="AdDO7XMwOa" role="2Oq$k0">
                      <ref role="3cqZAo" node="AdDO7XMwO0" resolve="cell" />
                    </node>
                    <node concept="3TrEf2" id="AdDO7XMwOb" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpc2:gAczzzB" resolve="emptyCellModel" />
                    </node>
                  </node>
                  <node concept="2c44tf" id="AdDO7XMwOc" role="37vLTx">
                    <node concept="3F0ifn" id="AdDO7XMwOd" role="2c44tc">
                      <property role="3F0ifm" value="" />
                      <node concept="2EMmih" id="AdDO7XMwOe" role="lGtFl">
                        <property role="P4ACc" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1073389577006/1073389577007" />
                        <property role="2qtEX9" value="text" />
                        <property role="3hQQBS" value="CellModel_Constant" />
                        <node concept="Xl_RD" id="AdDO7XMwOf" role="2c44t1">
                          <property role="Xl_RC" value=" " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5_E18Hdp2_4" role="3cqZAp">
                <node concept="2OqwBi" id="5_E18Hdp2_5" role="3clFbG">
                  <node concept="2OqwBi" id="5_E18Hdp2_6" role="2Oq$k0">
                    <node concept="37vLTw" id="5_E18Hdp2_7" role="2Oq$k0">
                      <ref role="3cqZAo" node="AdDO7XMvho" resolve="cellModel" />
                    </node>
                    <node concept="3Tsc0h" id="5_E18Hdp2_8" role="2OqNvi">
                      <ref role="3TtcxE" to="tpc2:fBEZMko" resolve="childCellModel" />
                    </node>
                  </node>
                  <node concept="TSZUe" id="5_E18Hdp2_9" role="2OqNvi">
                    <node concept="37vLTw" id="5_E18Hdp2SM" role="25WWJ7">
                      <ref role="3cqZAo" node="AdDO7XMwO0" resolve="cell" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="AdDO7XMwOx" role="3clF45" />
      <node concept="37vLTG" id="AdDO7XMyWy" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="75$k3hpDGzR" role="1tU5fm">
          <ref role="3uigEE" to="2t9r:~RuleReference" resolve="RuleReference" />
        </node>
      </node>
      <node concept="3Tm6S6" id="AdDO7XMwOs" role="1B3o_S" />
      <node concept="P$JXv" id="3aST2zGrDrA" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrDrB" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrDrC" role="1dT_Ay">
            <property role="1dT_AB" value="Creates an editor cell for a child reference." />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrDrD" role="3nqlJM">
          <property role="TUZQ4" value="Parser rule reference" />
          <node concept="zr_55" id="3aST2zGrDrF" role="zr_5Q">
            <ref role="zr_51" node="AdDO7XMyWy" resolve="reference" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="Pei6ieTOew" role="1B3o_S" />
    <node concept="3UR2Jj" id="Pei6ieTQTq" role="lGtFl">
      <node concept="TZ5HA" id="Pei6ieTQTr" role="TZ5H$">
        <node concept="1dT_AC" id="Pei6ieTQTs" role="1dT_Ay">
          <property role="1dT_AB" value="Helper class for creating projectional editors." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Pei6ieTQTz">
    <property role="TrG5h" value="NodeFactory" />
    <node concept="Wx3nA" id="5lY$Gq$MNvE" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="BASE_CONCEPT_NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="5lY$Gq$MNvF" role="1B3o_S" />
      <node concept="17QB3L" id="5lY$Gq$MNvG" role="1tU5fm" />
      <node concept="Xl_RD" id="5lY$Gq$MNvH" role="33vP2m">
        <property role="Xl_RC" value="BaseConcept" />
      </node>
    </node>
    <node concept="2tJIrI" id="5lY$Gq$NDKn" role="jymVt" />
    <node concept="312cEg" id="4X6IwqdNjpw" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="structureModel" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4X6IwqdNjl4" role="1B3o_S" />
      <node concept="H_c77" id="4X6IwqdNjpt" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="5lY$Gq$MMY1" role="jymVt" />
    <node concept="312cEg" id="5lY$Gq$MNgT" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="baseConcept" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="5lY$Gq$MN9Q" role="1B3o_S" />
      <node concept="3Tqbb2" id="5lY$Gq$MNgE" role="1tU5fm">
        <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="4X6IwqdNjtW" role="jymVt" />
    <node concept="3clFbW" id="4X6IwqdNjFl" role="jymVt">
      <node concept="3cqZAl" id="4X6IwqdNjFm" role="3clF45" />
      <node concept="3clFbS" id="4X6IwqdNjFo" role="3clF47">
        <node concept="3clFbF" id="4X6IwqdNjKM" role="3cqZAp">
          <node concept="37vLTI" id="4X6IwqdNjPh" role="3clFbG">
            <node concept="37vLTw" id="4X6IwqdNjRf" role="37vLTx">
              <ref role="3cqZAo" node="4X6IwqdNjJW" resolve="structureModel" />
            </node>
            <node concept="2OqwBi" id="4X6IwqdNjLa" role="37vLTJ">
              <node concept="Xjq3P" id="4X6IwqdNjKL" role="2Oq$k0" />
              <node concept="2OwXpG" id="4X6IwqdNjOu" role="2OqNvi">
                <ref role="2Oxat5" node="4X6IwqdNjpw" resolve="structureModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hj2V9aBdNM" role="3cqZAp">
          <node concept="2OqwBi" id="hj2V9aBdOx" role="3clFbG">
            <node concept="Xjq3P" id="hj2V9aBdNK" role="2Oq$k0" />
            <node concept="liA8E" id="hj2V9aBdRS" role="2OqNvi">
              <ref role="37wK5l" node="hj2V9aBc84" resolve="initializeBaseConcept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4X6IwqdNjAO" role="1B3o_S" />
      <node concept="37vLTG" id="4X6IwqdNjJW" role="3clF46">
        <property role="TrG5h" value="structureModel" />
        <node concept="H_c77" id="4X6IwqdNjJV" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="3aST2zGrzVe" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrzVf" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrzVg" role="1dT_Ay">
            <property role="1dT_AB" value="Initializes the factory to work with given structure model." />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrzVh" role="3nqlJM">
          <property role="TUZQ4" value="Target structure model that we will use." />
          <node concept="zr_55" id="3aST2zGrzVj" role="zr_5Q">
            <ref role="zr_51" node="4X6IwqdNjJW" resolve="structureModel" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="hj2V9aBbv2" role="jymVt" />
    <node concept="3clFb_" id="hj2V9aBc84" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="initializeBaseConcept" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="hj2V9aBc87" role="3clF47">
        <node concept="3clFbF" id="5lY$Gq$MWTK" role="3cqZAp">
          <node concept="37vLTI" id="5lY$Gq$MX5r" role="3clFbG">
            <node concept="2OqwBi" id="5lY$Gq$MWUv" role="37vLTJ">
              <node concept="Xjq3P" id="5lY$Gq$MWTI" role="2Oq$k0" />
              <node concept="2OwXpG" id="5lY$Gq$MWXS" role="2OqNvi">
                <ref role="2Oxat5" node="5lY$Gq$MNgT" resolve="baseConcept" />
              </node>
            </node>
            <node concept="2OqwBi" id="5lY$Gq$MVWx" role="37vLTx">
              <node concept="2OqwBi" id="5lY$Gq$MVWy" role="2Oq$k0">
                <node concept="37vLTw" id="5lY$Gq$MVWz" role="2Oq$k0">
                  <ref role="3cqZAo" node="4X6IwqdNjpw" resolve="structureModel" />
                </node>
                <node concept="2SmgA7" id="5lY$Gq$MVW$" role="2OqNvi">
                  <node concept="chp4Y" id="5lY$Gq$N1OQ" role="1dBWTz">
                    <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                  </node>
                </node>
              </node>
              <node concept="1z4cxt" id="5lY$Gq$MVWA" role="2OqNvi">
                <node concept="1bVj0M" id="5lY$Gq$MVWB" role="23t8la">
                  <node concept="3clFbS" id="5lY$Gq$MVWC" role="1bW5cS">
                    <node concept="3clFbF" id="5lY$Gq$MVWD" role="3cqZAp">
                      <node concept="1Wc70l" id="hj2V9aBcYj" role="3clFbG">
                        <node concept="2OqwBi" id="hj2V9aBdae" role="3uHU7B">
                          <node concept="37vLTw" id="hj2V9aBd3E" role="2Oq$k0">
                            <ref role="3cqZAo" node="5lY$Gq$MVWK" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="hj2V9aBdux" role="2OqNvi">
                            <ref role="3TsBF5" to="tpce:40UcGlRb7V2" resolve="abstract" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5lY$Gq$MVWE" role="3uHU7w">
                          <node concept="2OqwBi" id="5lY$Gq$MVWF" role="2Oq$k0">
                            <node concept="37vLTw" id="5lY$Gq$MVWG" role="2Oq$k0">
                              <ref role="3cqZAo" node="5lY$Gq$MVWK" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="5lY$Gq$MVWH" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="liA8E" id="5lY$Gq$MVWI" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                            <node concept="37vLTw" id="75$k3hpDQRd" role="37wK5m">
                              <ref role="3cqZAo" node="5lY$Gq$MNvE" resolve="BASE_CONCEPT_NAME" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5lY$Gq$MVWK" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5lY$Gq$MVWL" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5lY$Gq$MW3O" role="3cqZAp" />
        <node concept="3clFbJ" id="5lY$Gq$MW6x" role="3cqZAp">
          <node concept="3clFbS" id="5lY$Gq$MW6z" role="3clFbx">
            <node concept="3clFbF" id="5lY$Gq$MXkK" role="3cqZAp">
              <node concept="37vLTI" id="5lY$Gq$MXww" role="3clFbG">
                <node concept="2ShNRf" id="48R7eXfzos5" role="37vLTx">
                  <node concept="2fJWfE" id="48R7eXfzp_G" role="2ShVmc">
                    <node concept="3Tqbb2" id="48R7eXfzp_I" role="3zrR0E">
                      <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5lY$Gq$NrmP" role="37vLTJ">
                  <ref role="3cqZAo" node="5lY$Gq$MNgT" resolve="baseConcept" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5lY$Gq$Nq_z" role="3cqZAp">
              <node concept="37vLTI" id="5lY$Gq$Nr5w" role="3clFbG">
                <node concept="37vLTw" id="75$k3hpDQRq" role="37vLTx">
                  <ref role="3cqZAo" node="5lY$Gq$MNvE" resolve="BASE_CONCEPT_NAME" />
                </node>
                <node concept="2OqwBi" id="5lY$Gq$NqLd" role="37vLTJ">
                  <node concept="3TrcHB" id="5lY$Gq$NqUj" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                  <node concept="37vLTw" id="5lY$Gq$Nrqq" role="2Oq$k0">
                    <ref role="3cqZAo" node="5lY$Gq$MNgT" resolve="baseConcept" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5lY$Gq$NsS0" role="3cqZAp">
              <node concept="37vLTI" id="5lY$Gq$Ntun" role="3clFbG">
                <node concept="3clFbT" id="5lY$Gq$Ntxn" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="2OqwBi" id="5lY$Gq$Nt7K" role="37vLTJ">
                  <node concept="37vLTw" id="5lY$Gq$NsRY" role="2Oq$k0">
                    <ref role="3cqZAo" node="5lY$Gq$MNgT" resolve="baseConcept" />
                  </node>
                  <node concept="3TrcHB" id="5lY$Gq$Nth$" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:40UcGlRb7V2" resolve="abstract" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5lY$Gq$Nseh" role="3cqZAp">
              <node concept="2OqwBi" id="5lY$Gq$Nsj7" role="3clFbG">
                <node concept="37vLTw" id="5lY$Gq$Nsef" role="2Oq$k0">
                  <ref role="3cqZAo" node="4X6IwqdNjpw" resolve="structureModel" />
                </node>
                <node concept="3BYIHo" id="5lY$Gq$Nskp" role="2OqNvi">
                  <node concept="37vLTw" id="5lY$Gq$NslT" role="3BYIHq">
                    <ref role="3cqZAo" node="5lY$Gq$MNgT" resolve="baseConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5lY$Gq$MWcM" role="3clFbw">
            <node concept="10Nm6u" id="5lY$Gq$MWd_" role="3uHU7w" />
            <node concept="2OqwBi" id="5lY$Gq$MXhD" role="3uHU7B">
              <node concept="Xjq3P" id="5lY$Gq$MXgz" role="2Oq$k0" />
              <node concept="2OwXpG" id="5lY$Gq$MXjv" role="2OqNvi">
                <ref role="2Oxat5" node="5lY$Gq$MNgT" resolve="baseConcept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="hj2V9aBc7N" role="1B3o_S" />
      <node concept="3cqZAl" id="hj2V9aBc6M" role="3clF45" />
      <node concept="P$JXv" id="3aST2zGrzuy" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrzuz" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrzu$" role="1dT_Ay">
            <property role="1dT_AB" value="Checkes whether there is a base concept in the target language and loads it or creates it." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4X6IwqdNjgJ" role="jymVt" />
    <node concept="3clFb_" id="4X6IwqdNjRK" role="jymVt">
      <property role="TrG5h" value="createConcept" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4X6IwqdNjRM" role="3clF47">
        <node concept="3cpWs8" id="4X6IwqdNjRN" role="3cqZAp">
          <node concept="3cpWsn" id="4X6IwqdNjRO" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="4X6IwqdNjRP" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
            </node>
            <node concept="2ShNRf" id="4X6IwqdNjRQ" role="33vP2m">
              <node concept="2fJWfE" id="48R7eXfzr53" role="2ShVmc">
                <node concept="3Tqbb2" id="48R7eXfzr55" role="3zrR0E">
                  <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4X6IwqdNjRT" role="3cqZAp" />
        <node concept="3clFbF" id="4X6IwqdNjRU" role="3cqZAp">
          <node concept="37vLTI" id="4X6IwqdNjRV" role="3clFbG">
            <node concept="2OqwBi" id="4X6IwqdNjRW" role="37vLTJ">
              <node concept="37vLTw" id="4X6IwqdNjRX" role="2Oq$k0">
                <ref role="3cqZAo" node="4X6IwqdNjRO" resolve="node" />
              </node>
              <node concept="3TrcHB" id="4X6IwqdNjRY" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="4X6IwqdNjRZ" role="37vLTx">
              <ref role="3cqZAo" node="4X6IwqdNjSv" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4X6IwqdNjS0" role="3cqZAp">
          <node concept="37vLTI" id="4X6IwqdNjS1" role="3clFbG">
            <node concept="37vLTw" id="4X6IwqdNjS2" role="37vLTx">
              <ref role="3cqZAo" node="4X6IwqdNjSx" resolve="alias" />
            </node>
            <node concept="2OqwBi" id="4X6IwqdNjS3" role="37vLTJ">
              <node concept="37vLTw" id="4X6IwqdNjS4" role="2Oq$k0">
                <ref role="3cqZAo" node="4X6IwqdNjRO" resolve="node" />
              </node>
              <node concept="3TrcHB" id="hj2V9aBfct" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="hj2V9aBe82" role="3cqZAp">
          <node concept="37vLTI" id="hj2V9aBeEd" role="3clFbG">
            <node concept="2OqwBi" id="hj2V9aBeiQ" role="37vLTJ">
              <node concept="37vLTw" id="hj2V9aBe80" role="2Oq$k0">
                <ref role="3cqZAo" node="4X6IwqdNjRO" resolve="node" />
              </node>
              <node concept="3TrcHB" id="hj2V9aBeun" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:40UcGlRaVSw" resolve="conceptShortDescription" />
              </node>
            </node>
            <node concept="37vLTw" id="hj2V9aBeJG" role="37vLTx">
              <ref role="3cqZAo" node="hj2V9aB2Gt" resolve="description" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4X6IwqdNjS6" role="3cqZAp">
          <node concept="37vLTI" id="4X6IwqdNjS7" role="3clFbG">
            <node concept="37vLTw" id="4X6IwqdNjS8" role="37vLTx">
              <ref role="3cqZAo" node="4X6IwqdNjSz" resolve="virtualPackage" />
            </node>
            <node concept="2OqwBi" id="4X6IwqdNjS9" role="37vLTJ">
              <node concept="37vLTw" id="4X6IwqdNjSa" role="2Oq$k0">
                <ref role="3cqZAo" node="4X6IwqdNjRO" resolve="node" />
              </node>
              <node concept="3TrcHB" id="4X6IwqdNjSb" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4X6IwqdNjSk" role="3cqZAp">
          <node concept="37vLTI" id="4X6IwqdNjSl" role="3clFbG">
            <node concept="37vLTw" id="4X6IwqdNjSm" role="37vLTx">
              <ref role="3cqZAo" node="4X6IwqdNjS_" resolve="rootable" />
            </node>
            <node concept="2OqwBi" id="4X6IwqdNjSn" role="37vLTJ">
              <node concept="37vLTw" id="4X6IwqdNjSo" role="2Oq$k0">
                <ref role="3cqZAo" node="4X6IwqdNjRO" resolve="node" />
              </node>
              <node concept="3TrcHB" id="4X6IwqdNjSp" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:fX9Ktp8" resolve="rootable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5lY$Gq$MZt5" role="3cqZAp">
          <node concept="37vLTI" id="5lY$Gq$N09u" role="3clFbG">
            <node concept="2OqwBi" id="5lY$Gq$N1ud" role="37vLTx">
              <node concept="Xjq3P" id="5lY$Gq$N1sC" role="2Oq$k0" />
              <node concept="2OwXpG" id="5lY$Gq$N1yH" role="2OqNvi">
                <ref role="2Oxat5" node="5lY$Gq$MNgT" resolve="baseConcept" />
              </node>
            </node>
            <node concept="2OqwBi" id="5lY$Gq$MZB6" role="37vLTJ">
              <node concept="37vLTw" id="5lY$Gq$MZt3" role="2Oq$k0">
                <ref role="3cqZAo" node="4X6IwqdNjRO" resolve="node" />
              </node>
              <node concept="3TrEf2" id="5lY$Gq$MZV1" role="2OqNvi">
                <ref role="3Tt5mk" to="tpce:f_TJDff" resolve="extends" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5lY$Gq$K_nK" role="3cqZAp" />
        <node concept="3cpWs6" id="4X6IwqdNjSr" role="3cqZAp">
          <node concept="37vLTw" id="4X6IwqdNjSs" role="3cqZAk">
            <ref role="3cqZAo" node="4X6IwqdNjRO" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5lY$Gq$Nivv" role="3clF45">
        <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
      </node>
      <node concept="37vLTG" id="4X6IwqdNjSv" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4X6IwqdNjSw" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4X6IwqdNjSx" role="3clF46">
        <property role="TrG5h" value="alias" />
        <node concept="17QB3L" id="4X6IwqdNjSy" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="hj2V9aB2Gt" role="3clF46">
        <property role="TrG5h" value="description" />
        <node concept="17QB3L" id="hj2V9aB2QO" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4X6IwqdNjSz" role="3clF46">
        <property role="TrG5h" value="virtualPackage" />
        <node concept="17QB3L" id="4X6IwqdNjS$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4X6IwqdNjS_" role="3clF46">
        <property role="TrG5h" value="rootable" />
        <node concept="10P_77" id="4X6IwqdNjSA" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="4X6IwqdNjSt" role="1B3o_S" />
      <node concept="P$JXv" id="3aST2zGrzAt" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrzAu" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrzAv" role="1dT_Ay">
            <property role="1dT_AB" value="Creates new classical concept." />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrzAw" role="3nqlJM">
          <property role="TUZQ4" value="Name" />
          <node concept="zr_55" id="3aST2zGrzAy" role="zr_5Q">
            <ref role="zr_51" node="4X6IwqdNjSv" resolve="name" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrzAz" role="3nqlJM">
          <property role="TUZQ4" value="Alias" />
          <node concept="zr_55" id="3aST2zGrzA_" role="zr_5Q">
            <ref role="zr_51" node="4X6IwqdNjSx" resolve="alias" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrzAA" role="3nqlJM">
          <property role="TUZQ4" value="Description" />
          <node concept="zr_55" id="3aST2zGrzAC" role="zr_5Q">
            <ref role="zr_51" node="hj2V9aB2Gt" resolve="description" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrzAD" role="3nqlJM">
          <property role="TUZQ4" value="Virtual package" />
          <node concept="zr_55" id="3aST2zGrzAF" role="zr_5Q">
            <ref role="zr_51" node="4X6IwqdNjSz" resolve="virtualPackage" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrzAG" role="3nqlJM">
          <property role="TUZQ4" value="Is root?" />
          <node concept="zr_55" id="3aST2zGrzAI" role="zr_5Q">
            <ref role="zr_51" node="4X6IwqdNjS_" resolve="rootable" />
          </node>
        </node>
        <node concept="x79VA" id="3aST2zGrzAJ" role="3nqlJM">
          <property role="x79VB" value="Concept declaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Jh2F9ezaZb" role="jymVt" />
    <node concept="3clFb_" id="4X6IwqdNkjw" role="jymVt">
      <property role="TrG5h" value="createInterface" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4X6IwqdNkjy" role="3clF47">
        <node concept="3cpWs8" id="4X6IwqdNkjz" role="3cqZAp">
          <node concept="3cpWsn" id="4X6IwqdNkj$" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="4X6IwqdNkj_" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
            </node>
            <node concept="2ShNRf" id="4X6IwqdNkjA" role="33vP2m">
              <node concept="2fJWfE" id="48R7eXfzsUT" role="2ShVmc">
                <node concept="3Tqbb2" id="48R7eXfzsUV" role="3zrR0E">
                  <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4X6IwqdNkjD" role="3cqZAp" />
        <node concept="3clFbF" id="4X6IwqdNkjE" role="3cqZAp">
          <node concept="37vLTI" id="4X6IwqdNkjF" role="3clFbG">
            <node concept="2OqwBi" id="4X6IwqdNkjG" role="37vLTJ">
              <node concept="37vLTw" id="4X6IwqdNkjH" role="2Oq$k0">
                <ref role="3cqZAo" node="4X6IwqdNkj$" resolve="node" />
              </node>
              <node concept="3TrcHB" id="4X6IwqdNkjI" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="4X6IwqdNkjJ" role="37vLTx">
              <ref role="3cqZAo" node="4X6IwqdNkk5" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4X6IwqdNkjK" role="3cqZAp">
          <node concept="37vLTI" id="4X6IwqdNkjL" role="3clFbG">
            <node concept="37vLTw" id="4X6IwqdNkjM" role="37vLTx">
              <ref role="3cqZAo" node="4X6IwqdNkk7" resolve="virtualPackage" />
            </node>
            <node concept="2OqwBi" id="4X6IwqdNkjN" role="37vLTJ">
              <node concept="37vLTw" id="4X6IwqdNkjO" role="2Oq$k0">
                <ref role="3cqZAo" node="4X6IwqdNkj$" resolve="node" />
              </node>
              <node concept="3TrcHB" id="4X6IwqdNkjP" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4X6IwqdNkk0" role="3cqZAp" />
        <node concept="3cpWs6" id="4X6IwqdNkk1" role="3cqZAp">
          <node concept="37vLTw" id="4X6IwqdNkk2" role="3cqZAk">
            <ref role="3cqZAo" node="4X6IwqdNkj$" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5lY$Gq$NiPx" role="3clF45">
        <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
      </node>
      <node concept="37vLTG" id="4X6IwqdNkk5" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4X6IwqdNkk6" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4X6IwqdNkk7" role="3clF46">
        <property role="TrG5h" value="virtualPackage" />
        <node concept="17QB3L" id="4X6IwqdNkk8" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="4X6IwqdNkk3" role="1B3o_S" />
      <node concept="P$JXv" id="3aST2zGrzL0" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrzL1" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrzL2" role="1dT_Ay">
            <property role="1dT_AB" value="Creates new interface concept." />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrzL3" role="3nqlJM">
          <property role="TUZQ4" value="Name" />
          <node concept="zr_55" id="3aST2zGrzL5" role="zr_5Q">
            <ref role="zr_51" node="4X6IwqdNkk5" resolve="name" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrzL6" role="3nqlJM">
          <property role="TUZQ4" value="Virtual package" />
          <node concept="zr_55" id="3aST2zGrzL8" role="zr_5Q">
            <ref role="zr_51" node="4X6IwqdNkk7" resolve="virtualPackage" />
          </node>
        </node>
        <node concept="x79VA" id="3aST2zGrzL9" role="3nqlJM">
          <property role="x79VB" value="Interface concept declaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Jh2F9ezbnX" role="jymVt" />
    <node concept="3clFb_" id="4X6IwqdNks2" role="jymVt">
      <property role="TrG5h" value="createConstraintDataType" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4X6IwqdNks4" role="3clF47">
        <node concept="3cpWs8" id="4X6IwqdNks5" role="3cqZAp">
          <node concept="3cpWsn" id="4X6IwqdNks6" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="4X6IwqdNks7" role="1tU5fm">
              <ref role="ehGHo" to="tpce:fKAz7CR" resolve="ConstrainedDataTypeDeclaration" />
            </node>
            <node concept="2ShNRf" id="4X6IwqdNks8" role="33vP2m">
              <node concept="3zrR0B" id="4X6IwqdNks9" role="2ShVmc">
                <node concept="3Tqbb2" id="4X6IwqdNksa" role="3zrR0E">
                  <ref role="ehGHo" to="tpce:fKAz7CR" resolve="ConstrainedDataTypeDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4X6IwqdNksb" role="3cqZAp" />
        <node concept="3clFbF" id="4X6IwqdNksc" role="3cqZAp">
          <node concept="37vLTI" id="4X6IwqdNksd" role="3clFbG">
            <node concept="2OqwBi" id="4X6IwqdNkse" role="37vLTJ">
              <node concept="37vLTw" id="4X6IwqdNksf" role="2Oq$k0">
                <ref role="3cqZAo" node="4X6IwqdNks6" resolve="node" />
              </node>
              <node concept="3TrcHB" id="4X6IwqdNksg" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="4X6IwqdNksh" role="37vLTx">
              <ref role="3cqZAo" node="4X6IwqdNksz" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4X6IwqdNksi" role="3cqZAp">
          <node concept="37vLTI" id="4X6IwqdNksj" role="3clFbG">
            <node concept="37vLTw" id="4X6IwqdNksk" role="37vLTx">
              <ref role="3cqZAo" node="4X6IwqdNksB" resolve="virtualPackage" />
            </node>
            <node concept="2OqwBi" id="4X6IwqdNksl" role="37vLTJ">
              <node concept="37vLTw" id="4X6IwqdNksm" role="2Oq$k0">
                <ref role="3cqZAo" node="4X6IwqdNks6" resolve="node" />
              </node>
              <node concept="3TrcHB" id="4X6IwqdNksn" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4X6IwqdNkso" role="3cqZAp">
          <node concept="37vLTI" id="4X6IwqdNksp" role="3clFbG">
            <node concept="37vLTw" id="4X6IwqdNksq" role="37vLTx">
              <ref role="3cqZAo" node="4X6IwqdNks_" resolve="constraint" />
            </node>
            <node concept="2OqwBi" id="4X6IwqdNksr" role="37vLTJ">
              <node concept="37vLTw" id="4X6IwqdNkss" role="2Oq$k0">
                <ref role="3cqZAo" node="4X6IwqdNks6" resolve="node" />
              </node>
              <node concept="3TrcHB" id="4X6IwqdNkst" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:fKFLfW2" resolve="constraint" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4X6IwqdNksu" role="3cqZAp" />
        <node concept="3cpWs6" id="4X6IwqdNksv" role="3cqZAp">
          <node concept="37vLTw" id="4X6IwqdNksw" role="3cqZAk">
            <ref role="3cqZAo" node="4X6IwqdNks6" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5lY$Gq$Nj9n" role="3clF45">
        <ref role="ehGHo" to="tpce:fKAz7CR" resolve="ConstrainedDataTypeDeclaration" />
      </node>
      <node concept="37vLTG" id="4X6IwqdNksz" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4X6IwqdNks$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4X6IwqdNks_" role="3clF46">
        <property role="TrG5h" value="constraint" />
        <node concept="17QB3L" id="4X6IwqdNksA" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4X6IwqdNksB" role="3clF46">
        <property role="TrG5h" value="virtualPackage" />
        <node concept="17QB3L" id="4X6IwqdNksC" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="4X6IwqdNksx" role="1B3o_S" />
      <node concept="P$JXv" id="3aST2zGrzWi" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrzWj" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrzWk" role="1dT_Ay">
            <property role="1dT_AB" value="Creates new constraint data type concept." />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrzWl" role="3nqlJM">
          <property role="TUZQ4" value="Name" />
          <node concept="zr_55" id="3aST2zGrzWn" role="zr_5Q">
            <ref role="zr_51" node="4X6IwqdNksz" resolve="name" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrzWo" role="3nqlJM">
          <property role="TUZQ4" value="Regex representing the constraint" />
          <node concept="zr_55" id="3aST2zGrzWq" role="zr_5Q">
            <ref role="zr_51" node="4X6IwqdNks_" resolve="constraint" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrzWr" role="3nqlJM">
          <property role="TUZQ4" value="Virtual package" />
          <node concept="zr_55" id="3aST2zGrzWt" role="zr_5Q">
            <ref role="zr_51" node="4X6IwqdNksB" resolve="virtualPackage" />
          </node>
        </node>
        <node concept="x79VA" id="3aST2zGrzWu" role="3nqlJM">
          <property role="x79VB" value="Data type declaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Pei6ieTR2v" role="jymVt" />
    <node concept="3Tm1VV" id="Pei6ieTQT$" role="1B3o_S" />
    <node concept="3UR2Jj" id="Pei6ieTR1X" role="lGtFl">
      <node concept="TZ5HA" id="Pei6ieTR1Y" role="TZ5H$">
        <node concept="1dT_AC" id="Pei6ieTR1Z" role="1dT_Ay">
          <property role="1dT_AB" value="Helper class for creating new SNodes." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Pei6ieTS8A">
    <property role="TrG5h" value="NodeHelper" />
    <node concept="2YIFZL" id="5Jh2F9ezcou" role="jymVt">
      <property role="TrG5h" value="linkInterfaceToConcept" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5Jh2F9ezcox" role="3clF47">
        <node concept="3SKdUt" id="3R8p_IStADE" role="3cqZAp">
          <node concept="3SKdUq" id="3R8p_IStADG" role="3SKWNk">
            <property role="3SKdUp" value="Check for duplicity" />
          </node>
        </node>
        <node concept="3clFbJ" id="6bODhKoHume" role="3cqZAp">
          <node concept="3clFbS" id="6bODhKoHumg" role="3clFbx">
            <node concept="3cpWs6" id="6bODhKoHxZj" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="6bODhKoHvgO" role="3clFbw">
            <node concept="2OqwBi" id="6bODhKoHuwB" role="2Oq$k0">
              <node concept="37vLTw" id="3R8p_IStBXw" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9ezcqI" resolve="concept" />
              </node>
              <node concept="3Tsc0h" id="6bODhKoHuKB" role="2OqNvi">
                <ref role="3TtcxE" to="tpce:h0Pzm$Y" resolve="implements" />
              </node>
            </node>
            <node concept="2HwmR7" id="6bODhKoHwbp" role="2OqNvi">
              <node concept="1bVj0M" id="6bODhKoHwbr" role="23t8la">
                <node concept="3clFbS" id="6bODhKoHwbs" role="1bW5cS">
                  <node concept="3clFbF" id="6bODhKoHweu" role="3cqZAp">
                    <node concept="2OqwBi" id="6bODhKoHxaX" role="3clFbG">
                      <node concept="2OqwBi" id="6bODhKoHwJD" role="2Oq$k0">
                        <node concept="2OqwBi" id="6bODhKoHwh$" role="2Oq$k0">
                          <node concept="37vLTw" id="6bODhKoHwet" role="2Oq$k0">
                            <ref role="3cqZAo" node="6bODhKoHwbt" resolve="it" />
                          </node>
                          <node concept="3TrEf2" id="6bODhKoHwBi" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpce:h0PrY0D" resolve="intfc" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="6bODhKoHwVB" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6bODhKoHxp_" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                        <node concept="2OqwBi" id="6bODhKoHx_v" role="37wK5m">
                          <node concept="37vLTw" id="3R8p_IStA0C" role="2Oq$k0">
                            <ref role="3cqZAo" node="5Jh2F9ezcrR" resolve="iface" />
                          </node>
                          <node concept="3TrcHB" id="6bODhKoHxTJ" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6bODhKoHwbt" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6bODhKoHwbu" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6bODhKoHukr" role="3cqZAp" />
        <node concept="3cpWs8" id="5Jh2F9ezwpO" role="3cqZAp">
          <node concept="3cpWsn" id="5Jh2F9ezwpU" role="3cpWs9">
            <property role="TrG5h" value="reference" />
            <node concept="3Tqbb2" id="5Jh2F9ezwqQ" role="1tU5fm">
              <ref role="ehGHo" to="tpce:h0PrWoo" resolve="InterfaceConceptReference" />
            </node>
            <node concept="2ShNRf" id="5Jh2F9ezwru" role="33vP2m">
              <node concept="2fJWfE" id="48R7eXf$er4" role="2ShVmc">
                <node concept="3Tqbb2" id="48R7eXf$er6" role="3zrR0E">
                  <ref role="ehGHo" to="tpce:h0PrWoo" resolve="InterfaceConceptReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Jh2F9ezwDo" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9ezwMy" role="3clFbG">
            <node concept="37vLTw" id="3R8p_IStANy" role="37vLTx">
              <ref role="3cqZAo" node="5Jh2F9ezcrR" resolve="iface" />
            </node>
            <node concept="2OqwBi" id="5Jh2F9ezwFH" role="37vLTJ">
              <node concept="37vLTw" id="5Jh2F9ezwDm" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9ezwpU" resolve="reference" />
              </node>
              <node concept="3TrEf2" id="5Jh2F9ezwJe" role="2OqNvi">
                <ref role="3Tt5mk" to="tpce:h0PrY0D" resolve="intfc" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Jh2F9ezwBT" role="3cqZAp" />
        <node concept="3clFbF" id="5Jh2F9ezuyK" role="3cqZAp">
          <node concept="2OqwBi" id="5Jh2F9ezvdY" role="3clFbG">
            <node concept="2OqwBi" id="5Jh2F9ezu_V" role="2Oq$k0">
              <node concept="37vLTw" id="3R8p_IStC7V" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9ezcqI" resolve="concept" />
              </node>
              <node concept="3Tsc0h" id="5Jh2F9ezuOa" role="2OqNvi">
                <ref role="3TtcxE" to="tpce:h0Pzm$Y" resolve="implements" />
              </node>
            </node>
            <node concept="TSZUe" id="5Jh2F9ezw1C" role="2OqNvi">
              <node concept="37vLTw" id="5Jh2F9ezwQ5" role="25WWJ7">
                <ref role="3cqZAo" node="5Jh2F9ezwpU" resolve="reference" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Jh2F9ezcmg" role="1B3o_S" />
      <node concept="3cqZAl" id="5Jh2F9ezcos" role="3clF45" />
      <node concept="37vLTG" id="5Jh2F9ezcqI" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3Tqbb2" id="5Jh2F9ezusM" role="1tU5fm">
          <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="5Jh2F9ezcrR" role="3clF46">
        <property role="TrG5h" value="iface" />
        <node concept="3Tqbb2" id="5Jh2F9ezuu0" role="1tU5fm">
          <ref role="ehGHo" to="tpce:h0PlHMJ" resolve="InterfaceConceptDeclaration" />
        </node>
      </node>
      <node concept="P$JXv" id="3aST2zGrwDq" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrwDr" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrwDs" role="1dT_Ay">
            <property role="1dT_AB" value="Links an interface node and a concept node together (adds the interface to &quot;implements&quot; field). " />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrwDt" role="3nqlJM">
          <property role="TUZQ4" value="Concept that will implement the interface" />
          <node concept="zr_55" id="3aST2zGrwDv" role="zr_5Q">
            <ref role="zr_51" node="5Jh2F9ezcqI" resolve="concept" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrwDw" role="3nqlJM">
          <property role="TUZQ4" value="Interface to be pinned to the concept" />
          <node concept="zr_55" id="3aST2zGrwDy" role="zr_5Q">
            <ref role="zr_51" node="5Jh2F9ezcrR" resolve="iface" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Jh2F9e$iv5" role="jymVt" />
    <node concept="2YIFZL" id="5Jh2F9e$iKt" role="jymVt">
      <property role="TrG5h" value="addChildToNode" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5Jh2F9e$iKw" role="3clF47">
        <node concept="3cpWs8" id="5Jh2F9e$jog" role="3cqZAp">
          <node concept="3cpWsn" id="5Jh2F9e$jom" role="3cpWs9">
            <property role="TrG5h" value="link" />
            <node concept="3Tqbb2" id="5Jh2F9e$jp0" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
            </node>
            <node concept="2ShNRf" id="5Jh2F9e$jq0" role="33vP2m">
              <node concept="2fJWfE" id="48R7eXfz_az" role="2ShVmc">
                <node concept="3Tqbb2" id="48R7eXfz_a_" role="3zrR0E">
                  <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Jh2F9e_q0n" role="3cqZAp" />
        <node concept="3clFbF" id="5Jh2F9e$jxj" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9e$jFQ" role="3clFbG">
            <node concept="2OqwBi" id="5Jh2F9e$jzo" role="37vLTJ">
              <node concept="37vLTw" id="5Jh2F9e$jxh" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9e$jom" resolve="link" />
              </node>
              <node concept="3TrcHB" id="5Jh2F9e$jEh" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
              </node>
            </node>
            <node concept="37vLTw" id="5Jh2F9eAcyY" role="37vLTx">
              <ref role="3cqZAo" node="5Jh2F9eAcuK" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Jh2F9e$jPI" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9e$k1m" role="3clFbG">
            <node concept="2OqwBi" id="5Jh2F9e$jSC" role="37vLTJ">
              <node concept="37vLTw" id="5Jh2F9e$jPG" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9e$jom" resolve="link" />
              </node>
              <node concept="3TrcHB" id="5Jh2F9e$jZL" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:fA0lbG4" resolve="sourceCardinality" />
              </node>
            </node>
            <node concept="2OqwBi" id="Pei6ieVvhf" role="37vLTx">
              <node concept="37vLTw" id="Pei6ieVvdi" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9e$klv" resolve="quantity" />
              </node>
              <node concept="liA8E" id="Pei6ieVvz8" role="2OqNvi">
                <ref role="37wK5l" to="2t9r:~Quantity.getCardinality()" resolve="getCardinality" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Jh2F9e$l0v" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9e$ljn" role="3clFbG">
            <node concept="37vLTw" id="3R8p_ISurGC" role="37vLTx">
              <ref role="3cqZAo" node="5Jh2F9e$iQE" resolve="child" />
            </node>
            <node concept="2OqwBi" id="5Jh2F9e$l3O" role="37vLTJ">
              <node concept="37vLTw" id="5Jh2F9e$l0t" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9e$jom" resolve="link" />
              </node>
              <node concept="3TrEf2" id="5Jh2F9e$lgs" role="2OqNvi">
                <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1fTj9HrDHoi" role="3cqZAp" />
        <node concept="3SKdUt" id="5Jh2F9eAcrD" role="3cqZAp">
          <node concept="3SKdUq" id="5Jh2F9eAcrF" role="3SKWNk">
            <property role="3SKdUp" value="This line somehow makes the link add child, not reference" />
          </node>
        </node>
        <node concept="3clFbF" id="5Jh2F9e_7oG" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9e_8Fm" role="3clFbG">
            <node concept="3f7Wdw" id="5Jh2F9e_8Hw" role="37vLTx">
              <ref role="3f7vo2" to="tpce:fLJjDmR" resolve="LinkMetaclass" />
              <ref role="3f7u_j" to="tpce:fLJjDmT" />
            </node>
            <node concept="2OqwBi" id="5Jh2F9e_7rZ" role="37vLTJ">
              <node concept="37vLTw" id="5Jh2F9e_7oE" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9e$jom" resolve="link" />
              </node>
              <node concept="3TrcHB" id="5Jh2F9e_8BT" role="2OqNvi">
                <ref role="3TsBF5" to="tpce:fA0lm$B" resolve="metaClass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Jh2F9eA4bT" role="3cqZAp" />
        <node concept="3clFbF" id="5Jh2F9eA4ng" role="3cqZAp">
          <node concept="2OqwBi" id="5Jh2F9eA57T" role="3clFbG">
            <node concept="2OqwBi" id="5Jh2F9eA4td" role="2Oq$k0">
              <node concept="37vLTw" id="3R8p_ISuvSj" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9e$iQu" resolve="parent" />
              </node>
              <node concept="3Tsc0h" id="5Jh2F9eA4$w" role="2OqNvi">
                <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
              </node>
            </node>
            <node concept="TSZUe" id="5Jh2F9eA7rV" role="2OqNvi">
              <node concept="37vLTw" id="5Jh2F9eA7A2" role="25WWJ7">
                <ref role="3cqZAo" node="5Jh2F9e$jom" resolve="link" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5lY$Gq$JNI$" role="3cqZAp" />
        <node concept="3cpWs6" id="5lY$Gq$JNNj" role="3cqZAp">
          <node concept="37vLTw" id="5lY$Gq$JO12" role="3cqZAk">
            <ref role="3cqZAo" node="5Jh2F9e$jom" resolve="link" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Jh2F9e$iEz" role="1B3o_S" />
      <node concept="3Tqbb2" id="5lY$Gq$JNvN" role="3clF45">
        <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
      </node>
      <node concept="37vLTG" id="5Jh2F9e$iQu" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3Tqbb2" id="5Jh2F9e$_uY" role="1tU5fm">
          <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="5Jh2F9e$iQE" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="5Jh2F9e$iXw" role="1tU5fm">
          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="5Jh2F9eAcuK" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5Jh2F9eAcwm" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5Jh2F9e$klv" role="3clF46">
        <property role="TrG5h" value="quantity" />
        <node concept="3uibUv" id="Pei6ieVjJQ" role="1tU5fm">
          <ref role="3uigEE" to="2t9r:~Quantity" resolve="Quantity" />
        </node>
      </node>
      <node concept="P$JXv" id="3aST2zGrwHP" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrwHQ" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrwHR" role="1dT_Ay">
            <property role="1dT_AB" value="Adds a child concept to a parent concept with given cardinality." />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrwHS" role="3nqlJM">
          <property role="TUZQ4" value="Parent concept" />
          <node concept="zr_55" id="3aST2zGrwHU" role="zr_5Q">
            <ref role="zr_51" node="5Jh2F9e$iQu" resolve="parent" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrwHV" role="3nqlJM">
          <property role="TUZQ4" value="Child concept" />
          <node concept="zr_55" id="3aST2zGrwHX" role="zr_5Q">
            <ref role="zr_51" node="5Jh2F9e$iQE" resolve="child" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrwHY" role="3nqlJM">
          <property role="TUZQ4" value="Child link name" />
          <node concept="zr_55" id="3aST2zGrwI0" role="zr_5Q">
            <ref role="zr_51" node="5Jh2F9eAcuK" resolve="name" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrwI1" role="3nqlJM">
          <property role="TUZQ4" value="Cardinality" />
          <node concept="zr_55" id="3aST2zGrwI3" role="zr_5Q">
            <ref role="zr_51" node="5Jh2F9e$klv" resolve="quantity" />
          </node>
        </node>
        <node concept="x79VA" id="3aST2zGrwI4" role="3nqlJM">
          <property role="x79VB" value="Parent-child link that was created to bind concepts" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Jh2F9eAeiW" role="jymVt" />
    <node concept="2YIFZL" id="5Jh2F9eAeF4" role="jymVt">
      <property role="TrG5h" value="addPropertyToNode" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5Jh2F9eAeF7" role="3clF47">
        <node concept="3cpWs8" id="52zxGLo51Ry" role="3cqZAp">
          <node concept="3cpWsn" id="52zxGLo51R_" role="3cpWs9">
            <property role="TrG5h" value="property" />
            <node concept="3Tqbb2" id="52zxGLo51Rx" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
            </node>
            <node concept="2ShNRf" id="52zxGLo54ik" role="33vP2m">
              <node concept="2fJWfE" id="48R7eXfzyxy" role="2ShVmc">
                <node concept="3Tqbb2" id="48R7eXfzyx$" role="3zrR0E">
                  <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Jh2F9eAiD_" role="3cqZAp" />
        <node concept="3clFbF" id="5Jh2F9eAiV8" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9eAj8C" role="3clFbG">
            <node concept="37vLTw" id="5Jh2F9eAjaY" role="37vLTx">
              <ref role="3cqZAo" node="5Jh2F9eAeNA" resolve="name" />
            </node>
            <node concept="2OqwBi" id="3R8p_ISuzd3" role="37vLTJ">
              <node concept="37vLTw" id="5lY$Gq$JMMV" role="2Oq$k0">
                <ref role="3cqZAo" node="52zxGLo51R_" resolve="property" />
              </node>
              <node concept="3TrcHB" id="3R8p_ISuzqg" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Jh2F9eAjdQ" role="3cqZAp">
          <node concept="37vLTI" id="5Jh2F9eAjzt" role="3clFbG">
            <node concept="37vLTw" id="3R8p_ISuyfG" role="37vLTx">
              <ref role="3cqZAo" node="5Jh2F9eAeO0" resolve="type" />
            </node>
            <node concept="2OqwBi" id="3R8p_ISuzGh" role="37vLTJ">
              <node concept="37vLTw" id="5lY$Gq$JMXb" role="2Oq$k0">
                <ref role="3cqZAo" node="52zxGLo51R_" resolve="property" />
              </node>
              <node concept="3TrEf2" id="3R8p_ISuzTu" role="2OqNvi">
                <ref role="3Tt5mk" to="tpce:fKAX2Z_" resolve="dataType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Jh2F9eAiEg" role="3cqZAp" />
        <node concept="3clFbF" id="5Jh2F9eAfbD" role="3cqZAp">
          <node concept="2OqwBi" id="5Jh2F9eAg0W" role="3clFbG">
            <node concept="2OqwBi" id="5Jh2F9eAffk" role="2Oq$k0">
              <node concept="37vLTw" id="3R8p_ISuyqR" role="2Oq$k0">
                <ref role="3cqZAo" node="5Jh2F9eAeNs" resolve="node" />
              </node>
              <node concept="3Tsc0h" id="5Jh2F9eAftz" role="2OqNvi">
                <ref role="3TtcxE" to="tpce:f_TKVDG" resolve="propertyDeclaration" />
              </node>
            </node>
            <node concept="TSZUe" id="5Jh2F9eAikY" role="2OqNvi">
              <node concept="37vLTw" id="5Jh2F9eAiw4" role="25WWJ7">
                <ref role="3cqZAo" node="52zxGLo51R_" resolve="property" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5lY$Gq$JN6e" role="3cqZAp" />
        <node concept="3cpWs6" id="5lY$Gq$JN8k" role="3cqZAp">
          <node concept="37vLTw" id="5lY$Gq$JNms" role="3cqZAk">
            <ref role="3cqZAo" node="52zxGLo51R_" resolve="property" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Jh2F9eAeyU" role="1B3o_S" />
      <node concept="3Tqbb2" id="5lY$Gq$JMsk" role="3clF45">
        <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
      </node>
      <node concept="37vLTG" id="5Jh2F9eAeNs" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3R8p_ISuuDW" role="1tU5fm">
          <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="5Jh2F9eAeNA" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5Jh2F9eAeNS" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5Jh2F9eAeO0" role="3clF46">
        <property role="TrG5h" value="type" />
        <node concept="3Tqbb2" id="5Jh2F9eAiME" role="1tU5fm">
          <ref role="ehGHo" to="tpce:fKAxPRU" resolve="DataTypeDeclaration" />
        </node>
      </node>
      <node concept="P$JXv" id="3aST2zGrwLS" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrwLT" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrwLU" role="1dT_Ay">
            <property role="1dT_AB" value="Adds a target regex rule's data constraint type as a property to node." />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrwLV" role="3nqlJM">
          <property role="TUZQ4" value="Target concept" />
          <node concept="zr_55" id="3aST2zGrwLX" role="zr_5Q">
            <ref role="zr_51" node="5Jh2F9eAeNs" resolve="node" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrwLY" role="3nqlJM">
          <property role="TUZQ4" value="Name of the property" />
          <node concept="zr_55" id="3aST2zGrwM0" role="zr_5Q">
            <ref role="zr_51" node="5Jh2F9eAeNA" resolve="name" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrwM1" role="3nqlJM">
          <property role="TUZQ4" value="Constraint data type of the property" />
          <node concept="zr_55" id="3aST2zGrwM3" role="zr_5Q">
            <ref role="zr_51" node="5Jh2F9eAeO0" resolve="type" />
          </node>
        </node>
        <node concept="x79VA" id="3aST2zGrwM4" role="3nqlJM">
          <property role="x79VB" value="Property declaration created during the process" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2Dfqp1I661n" role="jymVt" />
    <node concept="2YIFZL" id="2Dfqp1I661o" role="jymVt">
      <property role="TrG5h" value="getProperty" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2Dfqp1I661p" role="3clF47">
        <node concept="1DcWWT" id="2Dfqp1I661q" role="3cqZAp">
          <node concept="3clFbS" id="2Dfqp1I661r" role="2LFqv$">
            <node concept="3clFbJ" id="2Dfqp1I661s" role="3cqZAp">
              <node concept="3clFbS" id="2Dfqp1I661t" role="3clFbx">
                <node concept="3cpWs6" id="2Dfqp1I661u" role="3cqZAp">
                  <node concept="37vLTw" id="2Dfqp1I661v" role="3cqZAk">
                    <ref role="3cqZAo" node="2Dfqp1I661A" resolve="prop" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2Dfqp1I661w" role="3clFbw">
                <node concept="37vLTw" id="2Dfqp1I661x" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Dfqp1I661M" resolve="propertyName" />
                </node>
                <node concept="liA8E" id="2Dfqp1I661y" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="2Dfqp1I661z" role="37wK5m">
                    <node concept="37vLTw" id="2Dfqp1I661$" role="2Oq$k0">
                      <ref role="3cqZAo" node="2Dfqp1I661A" resolve="prop" />
                    </node>
                    <node concept="3TrcHB" id="2Dfqp1I661_" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2Dfqp1I661A" role="1Duv9x">
            <property role="TrG5h" value="prop" />
            <node concept="3Tqbb2" id="2Dfqp1I661B" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
            </node>
          </node>
          <node concept="2OqwBi" id="2Dfqp1I661C" role="1DdaDG">
            <node concept="37vLTw" id="2Dfqp1I661D" role="2Oq$k0">
              <ref role="3cqZAo" node="2Dfqp1I661K" resolve="node" />
            </node>
            <node concept="3Tsc0h" id="2Dfqp1I661E" role="2OqNvi">
              <ref role="3TtcxE" to="tpce:f_TKVDG" resolve="propertyDeclaration" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2Dfqp1I661F" role="3cqZAp" />
        <node concept="3cpWs6" id="2Dfqp1I661G" role="3cqZAp">
          <node concept="10Nm6u" id="2Dfqp1I661H" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2Dfqp1I661I" role="1B3o_S" />
      <node concept="3Tqbb2" id="2Dfqp1I661J" role="3clF45">
        <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
      </node>
      <node concept="37vLTG" id="2Dfqp1I661K" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2Dfqp1I661L" role="1tU5fm">
          <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="2Dfqp1I661M" role="3clF46">
        <property role="TrG5h" value="propertyName" />
        <node concept="17QB3L" id="2Dfqp1I661N" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="3aST2zGrxwE" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrxwF" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrxwG" role="1dT_Ay">
            <property role="1dT_AB" value="Gets a property of a given node with given name." />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrxwH" role="3nqlJM">
          <property role="TUZQ4" value="Target node" />
          <node concept="zr_55" id="3aST2zGrxwJ" role="zr_5Q">
            <ref role="zr_51" node="2Dfqp1I661K" resolve="node" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrxwK" role="3nqlJM">
          <property role="TUZQ4" value="Name of the property" />
          <node concept="zr_55" id="3aST2zGrxwM" role="zr_5Q">
            <ref role="zr_51" node="2Dfqp1I661M" resolve="propertyName" />
          </node>
        </node>
        <node concept="x79VA" id="3aST2zGrxwN" role="3nqlJM">
          <property role="x79VB" value="Property declaration that represents the link" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="34Jgz4O9awa" role="jymVt" />
    <node concept="2YIFZL" id="34Jgz4O9ald" role="jymVt">
      <property role="TrG5h" value="getProperty" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="34Jgz4O9ale" role="3clF47">
        <node concept="3KaCP$" id="34Jgz4O9alf" role="3cqZAp">
          <node concept="37vLTw" id="34Jgz4O9alg" role="3KbGdf">
            <ref role="3cqZAo" node="34Jgz4O9alT" resolve="property" />
          </node>
          <node concept="3clFbS" id="34Jgz4O9alh" role="3Kb1Dw">
            <node concept="YS8fn" id="34Jgz4O9ali" role="3cqZAp">
              <node concept="2ShNRf" id="34Jgz4O9alj" role="YScLw">
                <node concept="1pGfFk" id="34Jgz4O9alk" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="34Jgz4O9all" role="3KbHQx">
            <node concept="Rm8GO" id="75$k3hpEdAi" role="3Kbmr1">
              <ref role="Rm8GQ" node="Pei6ieU45y" resolve="Alias" />
              <ref role="1Px2BO" node="Pei6ieU44m" resolve="Property" />
            </node>
            <node concept="3clFbS" id="34Jgz4O9aln" role="3Kbo56">
              <node concept="3cpWs6" id="34Jgz4O9aMX" role="3cqZAp">
                <node concept="2OqwBi" id="34Jgz4O9aRl" role="3cqZAk">
                  <node concept="37vLTw" id="34Jgz4O9aP4" role="2Oq$k0">
                    <ref role="3cqZAo" node="34Jgz4O9alR" resolve="node" />
                  </node>
                  <node concept="3TrcHB" id="5_E18HdoeI1" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="34Jgz4O9alw" role="3KbHQx">
            <node concept="Rm8GO" id="75$k3hpEdJS" role="3Kbmr1">
              <ref role="Rm8GQ" node="Pei6ieU45K" resolve="Name" />
              <ref role="1Px2BO" node="Pei6ieU44m" resolve="Property" />
            </node>
            <node concept="3clFbS" id="34Jgz4O9aly" role="3Kbo56">
              <node concept="3cpWs6" id="34Jgz4O9bLE" role="3cqZAp">
                <node concept="2OqwBi" id="34Jgz4O9bPX" role="3cqZAk">
                  <node concept="37vLTw" id="34Jgz4O9bMS" role="2Oq$k0">
                    <ref role="3cqZAo" node="34Jgz4O9alR" resolve="node" />
                  </node>
                  <node concept="3TrcHB" id="34Jgz4O9c5b" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="34Jgz4O9alF" role="3KbHQx">
            <node concept="Rm8GO" id="75$k3hpEdTu" role="3Kbmr1">
              <ref role="Rm8GQ" node="Pei6ieU45W" resolve="VirtualPackage" />
              <ref role="1Px2BO" node="Pei6ieU44m" resolve="Property" />
            </node>
            <node concept="3clFbS" id="34Jgz4O9alH" role="3Kbo56">
              <node concept="3cpWs6" id="34Jgz4O9c9D" role="3cqZAp">
                <node concept="2OqwBi" id="34Jgz4O9cee" role="3cqZAk">
                  <node concept="37vLTw" id="34Jgz4O9cb1" role="2Oq$k0">
                    <ref role="3cqZAo" node="34Jgz4O9alR" resolve="node" />
                  </node>
                  <node concept="3TrcHB" id="34Jgz4O9ctA" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="34Jgz4O9alQ" role="1B3o_S" />
      <node concept="37vLTG" id="34Jgz4O9alR" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="34Jgz4O9alS" role="1tU5fm">
          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="34Jgz4O9alT" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="75$k3hpEdxq" role="1tU5fm">
          <ref role="3uigEE" node="Pei6ieU44m" resolve="Property" />
        </node>
      </node>
      <node concept="17QB3L" id="34Jgz4O9bEF" role="3clF45" />
      <node concept="P$JXv" id="3aST2zGrx$H" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrx$I" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrx$J" role="1dT_Ay">
            <property role="1dT_AB" value="Gets a given basic (alias, name...) property value of a given node." />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrx$K" role="3nqlJM">
          <property role="TUZQ4" value="Target node" />
          <node concept="zr_55" id="3aST2zGrx$M" role="zr_5Q">
            <ref role="zr_51" node="34Jgz4O9alR" resolve="node" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrx$N" role="3nqlJM">
          <property role="TUZQ4" value="Which property" />
          <node concept="zr_55" id="3aST2zGrx$P" role="zr_5Q">
            <ref role="zr_51" node="34Jgz4O9alT" resolve="property" />
          </node>
        </node>
        <node concept="x79VA" id="3aST2zGrx$Q" role="3nqlJM">
          <property role="x79VB" value="Property value" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1fTj9HrD$98" role="jymVt" />
    <node concept="2YIFZL" id="4X6IwqdOESX" role="jymVt">
      <property role="TrG5h" value="setProperty" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4X6IwqdOESY" role="3clF47">
        <node concept="3KaCP$" id="2Dfqp1I6vIe" role="3cqZAp">
          <node concept="37vLTw" id="2Dfqp1I6vJK" role="3KbGdf">
            <ref role="3cqZAo" node="4X6IwqdOETs" resolve="property" />
          </node>
          <node concept="3clFbS" id="2Dfqp1I6vIg" role="3Kb1Dw">
            <node concept="YS8fn" id="2Dfqp1I6wtb" role="3cqZAp">
              <node concept="2ShNRf" id="2Dfqp1I6Dem" role="YScLw">
                <node concept="1pGfFk" id="2Dfqp1I6DwZ" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="2Dfqp1I6vJP" role="3KbHQx">
            <node concept="Rm8GO" id="75$k3hpEdZD" role="3Kbmr1">
              <ref role="Rm8GQ" node="Pei6ieU45y" resolve="Alias" />
              <ref role="1Px2BO" node="Pei6ieU44m" resolve="Property" />
            </node>
            <node concept="3clFbS" id="2Dfqp1I6vJR" role="3Kbo56">
              <node concept="3clFbF" id="2Dfqp1I6vNg" role="3cqZAp">
                <node concept="2OqwBi" id="2Dfqp1I6weG" role="3clFbG">
                  <node concept="2OqwBi" id="2Dfqp1I6vPt" role="2Oq$k0">
                    <node concept="37vLTw" id="2Dfqp1I6vNf" role="2Oq$k0">
                      <ref role="3cqZAo" node="4X6IwqdOETq" resolve="node" />
                    </node>
                    <node concept="3TrcHB" id="5_E18HdoeXn" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="2Dfqp1I6wpR" role="2OqNvi">
                    <node concept="37vLTw" id="2Dfqp1I6wqV" role="tz02z">
                      <ref role="3cqZAo" node="2Dfqp1I67B5" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="2Dfqp1I6MGL" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="2Dfqp1I6wrd" role="3KbHQx">
            <node concept="Rm8GO" id="75$k3hpEe4c" role="3Kbmr1">
              <ref role="Rm8GQ" node="Pei6ieU45K" resolve="Name" />
              <ref role="1Px2BO" node="Pei6ieU44m" resolve="Property" />
            </node>
            <node concept="3clFbS" id="2Dfqp1I6wrf" role="3Kbo56">
              <node concept="3clFbF" id="2Dfqp1I6wxV" role="3cqZAp">
                <node concept="2OqwBi" id="2Dfqp1I6wU5" role="3clFbG">
                  <node concept="2OqwBi" id="2Dfqp1I6w$8" role="2Oq$k0">
                    <node concept="37vLTw" id="2Dfqp1I6wxU" role="2Oq$k0">
                      <ref role="3cqZAo" node="4X6IwqdOETq" resolve="node" />
                    </node>
                    <node concept="3TrcHB" id="2Dfqp1I6wLQ" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="2Dfqp1I6x5g" role="2OqNvi">
                    <node concept="37vLTw" id="2Dfqp1I6x6k" role="tz02z">
                      <ref role="3cqZAo" node="2Dfqp1I67B5" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="2Dfqp1I6MHM" role="3cqZAp" />
            </node>
          </node>
          <node concept="3KbdKl" id="2Dfqp1I6x6x" role="3KbHQx">
            <node concept="Rm8GO" id="75$k3hpEe8J" role="3Kbmr1">
              <ref role="Rm8GQ" node="Pei6ieU45W" resolve="VirtualPackage" />
              <ref role="1Px2BO" node="Pei6ieU44m" resolve="Property" />
            </node>
            <node concept="3clFbS" id="2Dfqp1I6x6z" role="3Kbo56">
              <node concept="3clFbF" id="2Dfqp1I6xaJ" role="3cqZAp">
                <node concept="2OqwBi" id="2Dfqp1I6xA7" role="3clFbG">
                  <node concept="2OqwBi" id="2Dfqp1I6xcW" role="2Oq$k0">
                    <node concept="37vLTw" id="2Dfqp1I6xaI" role="2Oq$k0">
                      <ref role="3cqZAo" node="4X6IwqdOETq" resolve="node" />
                    </node>
                    <node concept="3TrcHB" id="2Dfqp1I6xqE" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                    </node>
                  </node>
                  <node concept="tyxLq" id="2Dfqp1I6xFW" role="2OqNvi">
                    <node concept="37vLTw" id="2Dfqp1I6xH0" role="tz02z">
                      <ref role="3cqZAo" node="2Dfqp1I67B5" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zACq4" id="2Dfqp1I6MTU" role="3cqZAp" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4X6IwqdOETo" role="1B3o_S" />
      <node concept="37vLTG" id="4X6IwqdOETq" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4X6IwqdOETr" role="1tU5fm">
          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="4X6IwqdOETs" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="75$k3hpEdWu" role="1tU5fm">
          <ref role="3uigEE" node="Pei6ieU44m" resolve="Property" />
        </node>
      </node>
      <node concept="37vLTG" id="2Dfqp1I67B5" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="2Dfqp1I67BZ" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="2Dfqp1I68fz" role="3clF45" />
      <node concept="P$JXv" id="3aST2zGrxBd" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrxBe" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrxBf" role="1dT_Ay">
            <property role="1dT_AB" value="Sets a given basic (alias, name...) property of a given node to a given value." />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrxBg" role="3nqlJM">
          <property role="TUZQ4" value="Target node" />
          <node concept="zr_55" id="3aST2zGrxBi" role="zr_5Q">
            <ref role="zr_51" node="4X6IwqdOETq" resolve="node" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrxBj" role="3nqlJM">
          <property role="TUZQ4" value="Which property" />
          <node concept="zr_55" id="3aST2zGrxBl" role="zr_5Q">
            <ref role="zr_51" node="4X6IwqdOETs" resolve="property" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrxBm" role="3nqlJM">
          <property role="TUZQ4" value="New value" />
          <node concept="zr_55" id="3aST2zGrxBo" role="zr_5Q">
            <ref role="zr_51" node="2Dfqp1I67B5" resolve="value" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3pfFnS02$hN" role="jymVt" />
    <node concept="2YIFZL" id="3pfFnS02$hO" role="jymVt">
      <property role="TrG5h" value="getChildLink" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3pfFnS02$hP" role="3clF47">
        <node concept="1DcWWT" id="3pfFnS02$hQ" role="3cqZAp">
          <node concept="3clFbS" id="3pfFnS02$hR" role="2LFqv$">
            <node concept="3clFbJ" id="3pfFnS02$hS" role="3cqZAp">
              <node concept="3clFbS" id="3pfFnS02$hT" role="3clFbx">
                <node concept="3cpWs6" id="3pfFnS02$hU" role="3cqZAp">
                  <node concept="37vLTw" id="3pfFnS02$hV" role="3cqZAk">
                    <ref role="3cqZAo" node="3pfFnS02$i2" resolve="l" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3pfFnS02$hW" role="3clFbw">
                <node concept="2OqwBi" id="3pfFnS02$hX" role="2Oq$k0">
                  <node concept="37vLTw" id="3pfFnS02$hY" role="2Oq$k0">
                    <ref role="3cqZAo" node="3pfFnS02$i2" resolve="l" />
                  </node>
                  <node concept="3TrcHB" id="3pfFnS02$hZ" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                  </node>
                </node>
                <node concept="liA8E" id="3pfFnS02$i0" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="37vLTw" id="3pfFnS02$i1" role="37wK5m">
                    <ref role="3cqZAo" node="3pfFnS02$ie" resolve="childName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3pfFnS02$i2" role="1Duv9x">
            <property role="TrG5h" value="l" />
            <node concept="3Tqbb2" id="3pfFnS02$i3" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
            </node>
          </node>
          <node concept="2OqwBi" id="3pfFnS02$i4" role="1DdaDG">
            <node concept="37vLTw" id="3pfFnS02$i5" role="2Oq$k0">
              <ref role="3cqZAo" node="3pfFnS02$ic" resolve="node" />
            </node>
            <node concept="3Tsc0h" id="3pfFnS02$i6" role="2OqNvi">
              <ref role="3TtcxE" to="tpce:f_TKVDF" resolve="linkDeclaration" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3pfFnS02$i7" role="3cqZAp" />
        <node concept="3cpWs6" id="3pfFnS02$i8" role="3cqZAp">
          <node concept="10Nm6u" id="3pfFnS02$i9" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3pfFnS02$ia" role="1B3o_S" />
      <node concept="3Tqbb2" id="3pfFnS02$ib" role="3clF45">
        <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
      </node>
      <node concept="37vLTG" id="3pfFnS02$ic" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3pfFnS02$id" role="1tU5fm">
          <ref role="ehGHo" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="3pfFnS02$ie" role="3clF46">
        <property role="TrG5h" value="childName" />
        <node concept="17QB3L" id="3pfFnS02$if" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="3aST2zGrxIB" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrxIC" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrxID" role="1dT_Ay">
            <property role="1dT_AB" value="Returns a child link of given node with given name." />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrxIE" role="3nqlJM">
          <property role="TUZQ4" value="Target node" />
          <node concept="zr_55" id="3aST2zGrxIG" role="zr_5Q">
            <ref role="zr_51" node="3pfFnS02$ic" resolve="node" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrxIH" role="3nqlJM">
          <property role="TUZQ4" value="Child link name" />
          <node concept="zr_55" id="3aST2zGrxIJ" role="zr_5Q">
            <ref role="zr_51" node="3pfFnS02$ie" resolve="childName" />
          </node>
        </node>
        <node concept="x79VA" id="3aST2zGrxIK" role="3nqlJM">
          <property role="x79VB" value="Link representing the parent-child relationship" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4X6IwqdOFBo" role="jymVt" />
    <node concept="2YIFZL" id="2Dfqp1I5QQQ" role="jymVt">
      <property role="TrG5h" value="getConcepts" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2Dfqp1I5QQT" role="3clF47">
        <node concept="3cpWs6" id="2Dfqp1I5QV$" role="3cqZAp">
          <node concept="2OqwBi" id="2Dfqp1I5UHa" role="3cqZAk">
            <node concept="2OqwBi" id="2Dfqp1I5WPe" role="2Oq$k0">
              <node concept="2OqwBi" id="2Dfqp1I5Sml" role="2Oq$k0">
                <node concept="2OqwBi" id="2Dfqp1I5Rra" role="2Oq$k0">
                  <node concept="37vLTw" id="2Dfqp1I5RpP" role="2Oq$k0">
                    <ref role="3cqZAo" node="2Dfqp1I5RnX" resolve="structureModel" />
                  </node>
                  <node concept="2SmgA7" id="2Dfqp1I5Rs0" role="2OqNvi" />
                </node>
                <node concept="3zZkjj" id="2Dfqp1I5U7S" role="2OqNvi">
                  <node concept="1bVj0M" id="2Dfqp1I5U7U" role="23t8la">
                    <node concept="3clFbS" id="2Dfqp1I5U7V" role="1bW5cS">
                      <node concept="3clFbF" id="2Dfqp1I5UaT" role="3cqZAp">
                        <node concept="2ZW3vV" id="2Dfqp1I5Ufr" role="3clFbG">
                          <node concept="3Tqbb2" id="2Dfqp1I5Ui0" role="2ZW6by">
                            <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                          </node>
                          <node concept="37vLTw" id="2Dfqp1I5UaS" role="2ZW6bz">
                            <ref role="3cqZAo" node="2Dfqp1I5U7W" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="2Dfqp1I5U7W" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="2Dfqp1I5U7X" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="2Dfqp1I5WZS" role="2OqNvi">
                <node concept="1bVj0M" id="2Dfqp1I5WZU" role="23t8la">
                  <node concept="3clFbS" id="2Dfqp1I5WZV" role="1bW5cS">
                    <node concept="3clFbF" id="2Dfqp1I5X6l" role="3cqZAp">
                      <node concept="1PxgMI" id="2Dfqp1I5XcI" role="3clFbG">
                        <node concept="37vLTw" id="2Dfqp1I5X6k" role="1m5AlR">
                          <ref role="3cqZAo" node="2Dfqp1I5WZW" resolve="it" />
                        </node>
                        <node concept="chp4Y" id="3h_jF5Mvt_8" role="3oSUPX">
                          <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="2Dfqp1I5WZW" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="2Dfqp1I5WZX" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="2Dfqp1I5WKI" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2Dfqp1I5QMF" role="1B3o_S" />
      <node concept="3uibUv" id="2Dfqp1I5Rki" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3Tqbb2" id="2Dfqp1I5Rku" role="11_B2D">
          <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="2Dfqp1I5RnX" role="3clF46">
        <property role="TrG5h" value="structureModel" />
        <node concept="H_c77" id="2Dfqp1I5RnW" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="3aST2zGry8J" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGry8K" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGry8L" role="1dT_Ay">
            <property role="1dT_AB" value="Returns all classic concepts (not interfaces or data types) from a given model." />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGry8M" role="3nqlJM">
          <property role="TUZQ4" value="Model" />
          <node concept="zr_55" id="3aST2zGry8O" role="zr_5Q">
            <ref role="zr_51" node="2Dfqp1I5RnX" resolve="structureModel" />
          </node>
        </node>
        <node concept="x79VA" id="3aST2zGry8P" role="3nqlJM">
          <property role="x79VB" value="List of all concepts (not interface or constraint data type concepts)" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5lY$Gq$O9kL" role="jymVt" />
    <node concept="2YIFZL" id="5lY$Gq$O9D3" role="jymVt">
      <property role="TrG5h" value="getBaseConcept" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="5lY$Gq$O9D4" role="3clF47">
        <node concept="3cpWs6" id="5lY$Gq$O9D5" role="3cqZAp">
          <node concept="2OqwBi" id="5lY$Gq$Ocq$" role="3cqZAk">
            <node concept="2OqwBi" id="5lY$Gq$O9D9" role="2Oq$k0">
              <node concept="37vLTw" id="5lY$Gq$O9Da" role="2Oq$k0">
                <ref role="3cqZAo" node="5lY$Gq$O9Dx" resolve="structureModel" />
              </node>
              <node concept="2SmgA7" id="5lY$Gq$O9Db" role="2OqNvi">
                <node concept="chp4Y" id="5lY$Gq$OaTR" role="1dBWTz">
                  <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                </node>
              </node>
            </node>
            <node concept="1z4cxt" id="5lY$Gq$Ofsx" role="2OqNvi">
              <node concept="1bVj0M" id="5lY$Gq$Ofsz" role="23t8la">
                <node concept="3clFbS" id="5lY$Gq$Ofs$" role="1bW5cS">
                  <node concept="3clFbF" id="5lY$Gq$Ofwg" role="3cqZAp">
                    <node concept="1Wc70l" id="5lY$Gq$Oh86" role="3clFbG">
                      <node concept="2OqwBi" id="5lY$Gq$OgDs" role="3uHU7B">
                        <node concept="37vLTw" id="5lY$Gq$Ogvh" role="2Oq$k0">
                          <ref role="3cqZAo" node="5lY$Gq$Ofs_" resolve="it" />
                        </node>
                        <node concept="3TrcHB" id="5lY$Gq$OgV9" role="2OqNvi">
                          <ref role="3TsBF5" to="tpce:40UcGlRb7V2" resolve="abstract" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5lY$Gq$Og24" role="3uHU7w">
                        <node concept="2OqwBi" id="5lY$Gq$Of_3" role="2Oq$k0">
                          <node concept="37vLTw" id="5lY$Gq$Ofwf" role="2Oq$k0">
                            <ref role="3cqZAo" node="5lY$Gq$Ofs_" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="5lY$Gq$OfQN" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5lY$Gq$Ogg1" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                          <node concept="10M0yZ" id="5lY$Gq$Ohly" role="37wK5m">
                            <ref role="1PxDUh" node="Pei6ieTQTz" resolve="NodeFactory" />
                            <ref role="3cqZAo" node="5lY$Gq$MNvE" resolve="BASE_CONCEPT_NAME" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5lY$Gq$Ofs_" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5lY$Gq$OfsA" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5lY$Gq$O9Du" role="1B3o_S" />
      <node concept="37vLTG" id="5lY$Gq$O9Dx" role="3clF46">
        <property role="TrG5h" value="structureModel" />
        <node concept="H_c77" id="5lY$Gq$O9Dy" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="5lY$Gq$OarB" role="3clF45">
        <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
      </node>
      <node concept="P$JXv" id="3aST2zGrz1w" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrz1x" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrz1y" role="1dT_Ay">
            <property role="1dT_AB" value="Returns the BaseConcept, which is the abstract parent for all concepts." />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrz1z" role="3nqlJM">
          <property role="TUZQ4" value="Model" />
          <node concept="zr_55" id="3aST2zGrz1_" role="zr_5Q">
            <ref role="zr_51" node="5lY$Gq$O9Dx" resolve="structureModel" />
          </node>
        </node>
        <node concept="x79VA" id="3aST2zGrz1A" role="3nqlJM">
          <property role="x79VB" value="BaseConcept declaration" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="Pei6ieTS8B" role="1B3o_S" />
    <node concept="3UR2Jj" id="Pei6ieTUaW" role="lGtFl">
      <node concept="TZ5HA" id="Pei6ieTUaX" role="TZ5H$">
        <node concept="1dT_AC" id="Pei6ieTUaY" role="1dT_Ay">
          <property role="1dT_AB" value="Helper class encapsulating simple operation with SNodes." />
        </node>
      </node>
    </node>
  </node>
  <node concept="Qs71p" id="Pei6ieU44m">
    <property role="TrG5h" value="Property" />
    <node concept="3Tm1VV" id="Pei6ieU44n" role="1B3o_S" />
    <node concept="3UR2Jj" id="Pei6ieU45e" role="lGtFl">
      <node concept="TZ5HA" id="Pei6ieU45f" role="TZ5H$">
        <node concept="1dT_AC" id="Pei6ieU45g" role="1dT_Ay">
          <property role="1dT_AB" value="Enum used for targeting properties." />
        </node>
      </node>
    </node>
    <node concept="QsSxf" id="Pei6ieU45y" role="Qtgdg">
      <property role="TrG5h" value="Alias" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="Pei6ieU45K" role="Qtgdg">
      <property role="TrG5h" value="Name" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="Pei6ieU45W" role="Qtgdg">
      <property role="TrG5h" value="VirtualPackage" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
  </node>
  <node concept="312cEu" id="34Jgz4O9lb4">
    <property role="TrG5h" value="Shortcut" />
    <node concept="312cEg" id="34Jgz4O9lbM" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="description" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm1VV" id="34Jgz4O9lbw" role="1B3o_S" />
      <node concept="17QB3L" id="34Jgz4O9lcb" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="3aST2zGrtOj" role="jymVt" />
    <node concept="312cEg" id="2SZ78Xpg9Jp" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="matchingText" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm1VV" id="2SZ78Xpg9Jq" role="1B3o_S" />
      <node concept="17QB3L" id="2SZ78Xpg9Jr" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="3aST2zGrtTD" role="jymVt" />
    <node concept="312cEg" id="2vxS1yp4F7H" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="path" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm1VV" id="2vxS1yp4F5I" role="1B3o_S" />
      <node concept="3uibUv" id="2vxS1yp4F7q" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3Tqbb2" id="2SZ78XpgdUT" role="11_B2D">
          <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
        </node>
      </node>
      <node concept="2ShNRf" id="2vxS1yp4Fab" role="33vP2m">
        <node concept="Tc6Ow" id="2vxS1yp4IoY" role="2ShVmc">
          <node concept="3Tqbb2" id="2SZ78XpgdQI" role="HW$YZ">
            <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="34Jgz4O9lc0" role="jymVt" />
    <node concept="3clFbW" id="34Jgz4O9ldZ" role="jymVt">
      <node concept="3cqZAl" id="34Jgz4O9le0" role="3clF45" />
      <node concept="3clFbS" id="34Jgz4O9le2" role="3clF47">
        <node concept="3SKdUt" id="3aST2zGru5n" role="3cqZAp">
          <node concept="3SKdUq" id="3aST2zGru5p" role="3SKWNk">
            <property role="3SKdUp" value="Description is inferred from the alias of the end concept." />
          </node>
        </node>
        <node concept="3clFbJ" id="2SZ78XpgBOz" role="3cqZAp">
          <node concept="3clFbS" id="2SZ78XpgBO_" role="3clFbx">
            <node concept="3clFbF" id="34Jgz4O9ljY" role="3cqZAp">
              <node concept="37vLTI" id="34Jgz4O9loa" role="3clFbG">
                <node concept="2OqwBi" id="34Jgz4O9lqE" role="37vLTx">
                  <node concept="2OqwBi" id="2SZ78Xpganl" role="2Oq$k0">
                    <node concept="37vLTw" id="2SZ78XpgadU" role="2Oq$k0">
                      <ref role="3cqZAo" node="2vxS1yp4N1_" resolve="path" />
                    </node>
                    <node concept="liA8E" id="2SZ78XpgcKI" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                      <node concept="3cpWsd" id="2SZ78XpgdDV" role="37wK5m">
                        <node concept="3cmrfG" id="2SZ78XpgdEg" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="2OqwBi" id="2SZ78XpgcVc" role="3uHU7B">
                          <node concept="37vLTw" id="2SZ78XpgcNo" role="2Oq$k0">
                            <ref role="3cqZAo" node="2vxS1yp4N1_" resolve="path" />
                          </node>
                          <node concept="liA8E" id="2SZ78XpgduR" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="5_E18HdotKK" role="2OqNvi">
                    <ref role="3TsBF5" to="tpce:4qF2Hm2r7ja" resolve="conceptAlias" />
                  </node>
                </node>
                <node concept="2OqwBi" id="34Jgz4O9lkN" role="37vLTJ">
                  <node concept="Xjq3P" id="34Jgz4O9ljW" role="2Oq$k0" />
                  <node concept="2OwXpG" id="34Jgz4O9lmi" role="2OqNvi">
                    <ref role="2Oxat5" node="34Jgz4O9lbM" resolve="description" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="2SZ78XpgCBS" role="3clFbw">
            <node concept="3cmrfG" id="2SZ78XpgCGn" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="2SZ78XpgC6o" role="3uHU7B">
              <node concept="37vLTw" id="2SZ78XpgBUi" role="2Oq$k0">
                <ref role="3cqZAo" node="2vxS1yp4N1_" resolve="path" />
              </node>
              <node concept="liA8E" id="2SZ78XpgCtd" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2SZ78XpgCVV" role="3cqZAp" />
        <node concept="3clFbF" id="2vxS1yp4N4Q" role="3cqZAp">
          <node concept="37vLTI" id="2vxS1yp4Ne9" role="3clFbG">
            <node concept="37vLTw" id="2vxS1yp4Nh0" role="37vLTx">
              <ref role="3cqZAo" node="2vxS1yp4N1_" resolve="path" />
            </node>
            <node concept="2OqwBi" id="2vxS1yp4N68" role="37vLTJ">
              <node concept="Xjq3P" id="2vxS1yp4N4O" role="2Oq$k0" />
              <node concept="2OwXpG" id="2vxS1yp4N7X" role="2OqNvi">
                <ref role="2Oxat5" node="2vxS1yp4F7H" resolve="path" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="34Jgz4O9ldt" role="1B3o_S" />
      <node concept="37vLTG" id="2vxS1yp4N1_" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="2vxS1yp4N2R" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3Tqbb2" id="2SZ78Xpge0L" role="11_B2D">
            <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="34Jgz4O9lb5" role="1B3o_S" />
    <node concept="3UR2Jj" id="3aST2zGrsJ4" role="lGtFl">
      <node concept="TZ5HA" id="3aST2zGrsJ5" role="TZ5H$">
        <node concept="1dT_AC" id="3aST2zGrsJ6" role="1dT_Ay">
          <property role="1dT_AB" value="Represents a shortcut to some end concept." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="34Jgz4O9kRP">
    <property role="TrG5h" value="Shortcuts" />
    <node concept="3clFb_" id="FxYxRU6Kdq" role="jymVt">
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="FxYxRU6Kdr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="FxYxRU6Kds" role="3clF47">
        <node concept="3cpWs8" id="FxYxRU6Pnn" role="3cqZAp">
          <node concept="3cpWsn" id="FxYxRU6Pno" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="FxYxRU6Pnp" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="FxYxRU6PE$" role="33vP2m">
              <node concept="1pGfFk" id="FxYxRU6QUj" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="FxYxRU6QYy" role="3cqZAp" />
        <node concept="2Gpval" id="FxYxRU6SKd" role="3cqZAp">
          <node concept="2GrKxI" id="FxYxRU6SKf" role="2Gsz3X">
            <property role="TrG5h" value="key" />
          </node>
          <node concept="3clFbS" id="FxYxRU6SKh" role="2LFqv$">
            <node concept="3clFbF" id="FxYxRU6V19" role="3cqZAp">
              <node concept="2OqwBi" id="FxYxRU6VRH" role="3clFbG">
                <node concept="2OqwBi" id="FxYxRU6VeL" role="2Oq$k0">
                  <node concept="37vLTw" id="FxYxRU6V18" role="2Oq$k0">
                    <ref role="3cqZAo" node="FxYxRU6Pno" resolve="sb" />
                  </node>
                  <node concept="liA8E" id="FxYxRU6VqW" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                    <node concept="2OqwBi" id="FxYxRU6VD0" role="37wK5m">
                      <node concept="2GrUjf" id="FxYxRU6VBS" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="FxYxRU6SKf" resolve="key" />
                      </node>
                      <node concept="2OwXpG" id="FxYxRU6VIM" role="2OqNvi">
                        <ref role="2Oxat5" to="2t9r:~Rule.name" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="FxYxRU6Wm1" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="Xl_RD" id="FxYxRU6WE4" role="37wK5m">
                    <property role="Xl_RC" value=": \n" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="FxYxRU6X2e" role="3cqZAp" />
            <node concept="2Gpval" id="FxYxRU6XAE" role="3cqZAp">
              <node concept="2GrKxI" id="FxYxRU6XAG" role="2Gsz3X">
                <property role="TrG5h" value="shortcut" />
              </node>
              <node concept="3clFbS" id="FxYxRU6XAI" role="2LFqv$">
                <node concept="2Gpval" id="FxYxRU70s9" role="3cqZAp">
                  <node concept="2GrKxI" id="FxYxRU70sa" role="2Gsz3X">
                    <property role="TrG5h" value="node" />
                  </node>
                  <node concept="3clFbS" id="FxYxRU70sb" role="2LFqv$">
                    <node concept="3clFbF" id="FxYxRU71wC" role="3cqZAp">
                      <node concept="2OqwBi" id="FxYxRU72gI" role="3clFbG">
                        <node concept="2OqwBi" id="FxYxRU71Ig" role="2Oq$k0">
                          <node concept="37vLTw" id="FxYxRU71wA" role="2Oq$k0">
                            <ref role="3cqZAo" node="FxYxRU6Pno" resolve="sb" />
                          </node>
                          <node concept="liA8E" id="FxYxRU71Ur" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                            <node concept="Xl_RD" id="FxYxRU727n" role="37wK5m">
                              <property role="Xl_RC" value=" -&gt; " />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="FxYxRU72xf" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                          <node concept="2OqwBi" id="FxYxRU72Jy" role="37wK5m">
                            <node concept="2GrUjf" id="FxYxRU72Iv" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="FxYxRU70sa" resolve="node" />
                            </node>
                            <node concept="3TrcHB" id="FxYxRU736U" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="FxYxRU712X" role="2GsD0m">
                    <node concept="2GrUjf" id="FxYxRU70PF" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="FxYxRU6XAG" resolve="shortcut" />
                    </node>
                    <node concept="2OwXpG" id="75$k3hpEiZ_" role="2OqNvi">
                      <ref role="2Oxat5" node="2vxS1yp4F7H" resolve="path" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="6bODhKoHkwy" role="3cqZAp" />
                <node concept="3clFbF" id="6bODhKoHknJ" role="3cqZAp">
                  <node concept="2OqwBi" id="6bODhKoHknK" role="3clFbG">
                    <node concept="37vLTw" id="6bODhKoHknL" role="2Oq$k0">
                      <ref role="3cqZAo" node="FxYxRU6Pno" resolve="sb" />
                    </node>
                    <node concept="liA8E" id="6bODhKoHknM" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                      <node concept="Xl_RD" id="6bODhKoHknN" role="37wK5m">
                        <property role="Xl_RC" value="\n" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="FxYxRU6YhG" role="2GsD0m">
                <node concept="Xjq3P" id="FxYxRU6XWf" role="2Oq$k0" />
                <node concept="liA8E" id="FxYxRU6YQN" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~HashMap.get(java.lang.Object):java.lang.Object" resolve="get" />
                  <node concept="2GrUjf" id="FxYxRU6ZsL" role="37wK5m">
                    <ref role="2Gs0qQ" node="FxYxRU6SKf" resolve="key" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="FxYxRU738H" role="3cqZAp" />
            <node concept="3clFbF" id="FxYxRU73_j" role="3cqZAp">
              <node concept="2OqwBi" id="FxYxRU73XF" role="3clFbG">
                <node concept="37vLTw" id="FxYxRU73_h" role="2Oq$k0">
                  <ref role="3cqZAo" node="FxYxRU6Pno" resolve="sb" />
                </node>
                <node concept="liA8E" id="FxYxRU7427" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="Xl_RD" id="FxYxRU74f3" role="37wK5m">
                    <property role="Xl_RC" value="\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="FxYxRU6Tum" role="2GsD0m">
            <node concept="Xjq3P" id="FxYxRU6T8T" role="2Oq$k0" />
            <node concept="liA8E" id="FxYxRU6UFL" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~HashMap.keySet():java.util.Set" resolve="keySet" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="FxYxRU74kJ" role="3cqZAp" />
        <node concept="3clFbF" id="FxYxRU74yM" role="3cqZAp">
          <node concept="2OqwBi" id="FxYxRU74W7" role="3clFbG">
            <node concept="37vLTw" id="FxYxRU74yK" role="2Oq$k0">
              <ref role="3cqZAo" node="FxYxRU6Pno" resolve="sb" />
            </node>
            <node concept="liA8E" id="FxYxRU75hM" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="Xl_RD" id="FxYxRU75zs" role="37wK5m">
                <property role="Xl_RC" value="#############\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="FxYxRU6Sgb" role="3cqZAp" />
        <node concept="3cpWs6" id="FxYxRU6Rot" role="3cqZAp">
          <node concept="2OqwBi" id="FxYxRU6RT7" role="3cqZAk">
            <node concept="37vLTw" id="FxYxRU6RFA" role="2Oq$k0">
              <ref role="3cqZAo" node="FxYxRU6Pno" resolve="sb" />
            </node>
            <node concept="liA8E" id="FxYxRU6S7C" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="FxYxRU6Keg" role="1B3o_S" />
      <node concept="17QB3L" id="FxYxRU6M6J" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="34Jgz4O9kRQ" role="1B3o_S" />
    <node concept="3uibUv" id="34Jgz4O9kW7" role="1zkMxy">
      <ref role="3uigEE" to="33ny:~HashMap" resolve="HashMap" />
      <node concept="3uibUv" id="34Jgz4O9l4I" role="11_B2D">
        <ref role="3uigEE" to="2t9r:~ParserRule" resolve="ParserRule" />
      </node>
      <node concept="3uibUv" id="34Jgz4O9l7t" role="11_B2D">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="75$k3hpEhiH" role="11_B2D">
          <ref role="3uigEE" node="34Jgz4O9lb4" resolve="Shortcut" />
        </node>
      </node>
    </node>
    <node concept="3UR2Jj" id="3aST2zGrj2Z" role="lGtFl">
      <node concept="TZ5HA" id="3aST2zGrj30" role="TZ5H$">
        <node concept="1dT_AC" id="3aST2zGrj31" role="1dT_Ay">
          <property role="1dT_AB" value="Shortcut typedef for mapping between rules and shortcut paths." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Pei6ieTWbW">
    <property role="TrG5h" value="TextGenHelper" />
    <node concept="312cEg" id="3aST2zGnjqx" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="textGen" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3aST2zGnjhu" role="1B3o_S" />
      <node concept="3Tqbb2" id="3aST2zGnjo_" role="1tU5fm">
        <ref role="ehGHo" to="2omo:hWWtQdD" resolve="ConceptTextGenDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="3aST2zGrbyJ" role="jymVt" />
    <node concept="312cEg" id="3aST2zGnjLR" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="nodeParam" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3aST2zGnjCL" role="1B3o_S" />
      <node concept="3bZ5Sz" id="3h_jF5MwDj2" role="1tU5fm">
        <ref role="3bZ5Sy" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
      </node>
    </node>
    <node concept="2tJIrI" id="3aST2zGraQK" role="jymVt" />
    <node concept="312cEg" id="3aST2zGnoVU" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="statements" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3aST2zGnoJ2" role="1B3o_S" />
      <node concept="2I9FWS" id="3aST2zGnrJ7" role="1tU5fm">
        <ref role="2I9WkF" to="tpee:fzclF8l" resolve="Statement" />
      </node>
    </node>
    <node concept="2tJIrI" id="3aST2zGnjaq" role="jymVt" />
    <node concept="3clFbW" id="3aST2zGniaz" role="jymVt">
      <node concept="37vLTG" id="3aST2zGnkrg" role="3clF46">
        <property role="TrG5h" value="targetNode" />
        <node concept="3Tqbb2" id="3aST2zGnkrh" role="1tU5fm">
          <ref role="ehGHo" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
        </node>
      </node>
      <node concept="3cqZAl" id="3aST2zGnia$" role="3clF45" />
      <node concept="3clFbS" id="3aST2zGniaA" role="3clF47">
        <node concept="3clFbF" id="3aST2zGnjXy" role="3cqZAp">
          <node concept="37vLTI" id="3aST2zGnk4Y" role="3clFbG">
            <node concept="37vLTw" id="3aST2zGnjXx" role="37vLTJ">
              <ref role="3cqZAo" node="3aST2zGnjqx" resolve="textGen" />
            </node>
            <node concept="2ShNRf" id="3aST2zGnk8N" role="37vLTx">
              <node concept="3zrR0B" id="3aST2zGnk8O" role="2ShVmc">
                <node concept="3Tqbb2" id="3aST2zGnk8P" role="3zrR0E">
                  <ref role="ehGHo" to="2omo:hWWtQdD" resolve="ConceptTextGenDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3aST2zGnkz1" role="3cqZAp">
          <node concept="37vLTI" id="3aST2zGnl5u" role="3clFbG">
            <node concept="37vLTw" id="3aST2zGnldg" role="37vLTx">
              <ref role="3cqZAo" node="3aST2zGnkrg" resolve="targetNode" />
            </node>
            <node concept="2OqwBi" id="3aST2zGnkD9" role="37vLTJ">
              <node concept="37vLTw" id="3aST2zGnkyZ" role="2Oq$k0">
                <ref role="3cqZAo" node="3aST2zGnjqx" resolve="textGen" />
              </node>
              <node concept="3TrEf2" id="3aST2zGnkTK" role="2OqNvi">
                <ref role="3Tt5mk" to="2omo:hWWuzPd" resolve="conceptDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3aST2zGnllH" role="3cqZAp">
          <node concept="37vLTI" id="3aST2zGnlY6" role="3clFbG">
            <node concept="2OqwBi" id="3aST2zGnmbK" role="37vLTx">
              <node concept="37vLTw" id="3aST2zGnm5A" role="2Oq$k0">
                <ref role="3cqZAo" node="3aST2zGnkrg" resolve="targetNode" />
              </node>
              <node concept="3TrcHB" id="3aST2zGnmsN" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
              </node>
            </node>
            <node concept="2OqwBi" id="3aST2zGnlxM" role="37vLTJ">
              <node concept="37vLTw" id="3aST2zGnllF" role="2Oq$k0">
                <ref role="3cqZAo" node="3aST2zGnjqx" resolve="textGen" />
              </node>
              <node concept="3TrcHB" id="3aST2zGnlN6" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3aST2zGnm_L" role="3cqZAp">
          <node concept="37vLTI" id="3aST2zGnnc9" role="3clFbG">
            <node concept="2ShNRf" id="3aST2zGnnix" role="37vLTx">
              <node concept="3zrR0B" id="3aST2zGnowf" role="2ShVmc">
                <node concept="3Tqbb2" id="3aST2zGnowh" role="3zrR0E">
                  <ref role="ehGHo" to="2omo:hX1bSug" resolve="GenerateTextDeclaration" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3aST2zGnmGY" role="37vLTJ">
              <node concept="37vLTw" id="3aST2zGnm_J" role="2Oq$k0">
                <ref role="3cqZAo" node="3aST2zGnjqx" resolve="textGen" />
              </node>
              <node concept="3TrEf2" id="3aST2zGnmYV" role="2OqNvi">
                <ref role="3Tt5mk" to="2omo:hX1c4lS" resolve="textGenBlock" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aST2zGnsNd" role="3cqZAp" />
        <node concept="3cpWs8" id="3aST2zGns$H" role="3cqZAp">
          <node concept="3cpWsn" id="3aST2zGns$I" role="3cpWs9">
            <property role="TrG5h" value="textGenStatements" />
            <node concept="3Tqbb2" id="3aST2zGns$J" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fzclF80" resolve="StatementList" />
            </node>
            <node concept="2ShNRf" id="3aST2zGns$K" role="33vP2m">
              <node concept="3zrR0B" id="3aST2zGns$L" role="2ShVmc">
                <node concept="3Tqbb2" id="3aST2zGns$M" role="3zrR0E">
                  <ref role="ehGHo" to="tpee:fzclF80" resolve="StatementList" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3aST2zGntkm" role="3cqZAp">
          <node concept="37vLTI" id="3aST2zGnuPv" role="3clFbG">
            <node concept="37vLTw" id="3aST2zGnuZd" role="37vLTx">
              <ref role="3cqZAo" node="3aST2zGns$I" resolve="textGenStatements" />
            </node>
            <node concept="2OqwBi" id="3aST2zGnu5b" role="37vLTJ">
              <node concept="2OqwBi" id="3aST2zGntCe" role="2Oq$k0">
                <node concept="37vLTw" id="3aST2zGntkk" role="2Oq$k0">
                  <ref role="3cqZAo" node="3aST2zGnjqx" resolve="textGen" />
                </node>
                <node concept="3TrEf2" id="3aST2zGntTz" role="2OqNvi">
                  <ref role="3Tt5mk" to="2omo:hX1c4lS" resolve="textGenBlock" />
                </node>
              </node>
              <node concept="3TrEf2" id="3aST2zGnurS" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:gyVODHa" resolve="body" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aST2zGnIzK" role="3cqZAp" />
        <node concept="3clFbF" id="3aST2zGnIXb" role="3cqZAp">
          <node concept="37vLTI" id="3aST2zGnJii" role="3clFbG">
            <node concept="2OqwBi" id="3h_jF5MwEBt" role="37vLTx">
              <node concept="2OqwBi" id="3h_jF5MwEBu" role="2Oq$k0">
                <node concept="2OqwBi" id="3h_jF5MwEBv" role="2Oq$k0">
                  <node concept="37vLTw" id="3h_jF5MwEBw" role="2Oq$k0">
                    <ref role="3cqZAo" node="3aST2zGnjqx" resolve="textGen" />
                  </node>
                  <node concept="3TrEf2" id="3h_jF5MwEBx" role="2OqNvi">
                    <ref role="3Tt5mk" to="2omo:hX1c4lS" resolve="textGenBlock" />
                  </node>
                </node>
                <node concept="2qgKlT" id="3h_jF5MwEBy" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:2xELmDxyi2v" resolve="getParameterConcepts" />
                </node>
              </node>
              <node concept="34jXtK" id="3h_jF5MwEBz" role="2OqNvi">
                <node concept="3cmrfG" id="3h_jF5MwEB$" role="25WWJ7">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3aST2zGnIX9" role="37vLTJ">
              <ref role="3cqZAo" node="3aST2zGnjLR" resolve="nodeParam" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aST2zGnt1x" role="3cqZAp" />
        <node concept="3clFbF" id="3aST2zGnphr" role="3cqZAp">
          <node concept="37vLTI" id="3aST2zGnp_H" role="3clFbG">
            <node concept="37vLTw" id="3aST2zGnphp" role="37vLTJ">
              <ref role="3cqZAo" node="3aST2zGnoVU" resolve="statements" />
            </node>
            <node concept="2OqwBi" id="3aST2zGnvxl" role="37vLTx">
              <node concept="37vLTw" id="3aST2zGnvj3" role="2Oq$k0">
                <ref role="3cqZAo" node="3aST2zGns$I" resolve="textGenStatements" />
              </node>
              <node concept="3Tsc0h" id="3aST2zGnw0H" role="2OqNvi">
                <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3aST2zGni1p" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3aST2zGnwus" role="jymVt" />
    <node concept="3clFb_" id="3aST2zGnxqx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="appendString" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3aST2zGnxq$" role="3clF47">
        <node concept="3cpWs8" id="3aST2zGnCLh" role="3cqZAp">
          <node concept="3cpWsn" id="3aST2zGnCLi" role="3cpWs9">
            <property role="TrG5h" value="constant" />
            <node concept="3Tqbb2" id="3aST2zGnCLj" role="1tU5fm">
              <ref role="ehGHo" to="2omo:i0la8a6" resolve="ConstantStringAppendPart" />
            </node>
            <node concept="2ShNRf" id="3aST2zGnCLk" role="33vP2m">
              <node concept="3zrR0B" id="3aST2zGnCLl" role="2ShVmc">
                <node concept="3Tqbb2" id="3aST2zGnCLm" role="3zrR0E">
                  <ref role="ehGHo" to="2omo:i0la8a6" resolve="ConstantStringAppendPart" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3aST2zGnCLn" role="3cqZAp">
          <node concept="37vLTI" id="3aST2zGnCLo" role="3clFbG">
            <node concept="37vLTw" id="3aST2zGnCLp" role="37vLTx">
              <ref role="3cqZAo" node="3aST2zGnzON" resolve="value" />
            </node>
            <node concept="2OqwBi" id="3aST2zGnCLq" role="37vLTJ">
              <node concept="37vLTw" id="3aST2zGnCLr" role="2Oq$k0">
                <ref role="3cqZAo" node="3aST2zGnCLi" resolve="constant" />
              </node>
              <node concept="3TrcHB" id="3aST2zGnCLs" role="2OqNvi">
                <ref role="3TsBF5" to="2omo:i0lacEG" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aST2zGnCxY" role="3cqZAp" />
        <node concept="3clFbF" id="3aST2zGn$3d" role="3cqZAp">
          <node concept="2OqwBi" id="3aST2zGn$B5" role="3clFbG">
            <node concept="37vLTw" id="3aST2zGn$3c" role="2Oq$k0">
              <ref role="3cqZAo" node="3aST2zGnoVU" resolve="statements" />
            </node>
            <node concept="TSZUe" id="3aST2zGnBj9" role="2OqNvi">
              <node concept="2c44tf" id="3aST2zGnBDP" role="25WWJ7">
                <node concept="lc7rE" id="3aST2zGnBT4" role="2c44tc">
                  <node concept="la8eA" id="3aST2zGnC8r" role="lcghm">
                    <node concept="2c44te" id="3aST2zGnCqc" role="lGtFl">
                      <node concept="37vLTw" id="3aST2zGnD5e" role="2c44t1">
                        <ref role="3cqZAo" node="3aST2zGnCLi" resolve="constant" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3aST2zGnx4m" role="1B3o_S" />
      <node concept="3cqZAl" id="3aST2zGnxpx" role="3clF45" />
      <node concept="37vLTG" id="3aST2zGnzON" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="3aST2zGnzOM" role="1tU5fm" />
      </node>
      <node concept="P$JXv" id="3aST2zGrdaO" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrdaP" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrdaQ" role="1dT_Ay">
            <property role="1dT_AB" value="Creates an append statement that adds a specific string value." />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3aST2zGlNWR" role="jymVt" />
    <node concept="3clFb_" id="3aST2zGnPB9" role="jymVt">
      <property role="TrG5h" value="appendProperty" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3aST2zGnPBb" role="3clF47">
        <node concept="3SKdUt" id="3aST2zGnPBc" role="3cqZAp">
          <node concept="3SKdUq" id="3aST2zGnPBd" role="3SKWNk">
            <property role="3SKdUp" value="Find property" />
          </node>
        </node>
        <node concept="3cpWs8" id="3aST2zGnPBe" role="3cqZAp">
          <node concept="3cpWsn" id="3aST2zGnPBf" role="3cpWs9">
            <property role="TrG5h" value="property" />
            <node concept="3Tqbb2" id="3aST2zGnPBg" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
            </node>
            <node concept="10QFUN" id="3aST2zGnPBh" role="33vP2m">
              <node concept="3Tqbb2" id="3aST2zGnPBi" role="10QFUM">
                <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
              </node>
              <node concept="2OqwBi" id="3aST2zGnPBj" role="10QFUP">
                <node concept="37vLTw" id="3aST2zGnPBk" role="2Oq$k0">
                  <ref role="3cqZAo" node="3aST2zGnPCs" resolve="reference" />
                </node>
                <node concept="2OwXpG" id="75$k3hpEsPR" role="2OqNvi">
                  <ref role="2Oxat5" to="2t9r:~RuleReference.nodeReference" resolve="nodeReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3aST2zGnPBm" role="3cqZAp">
          <node concept="3cpWsn" id="3aST2zGnPBn" role="3cpWs9">
            <property role="TrG5h" value="paramAccess" />
            <node concept="3Tqbb2" id="3aST2zGnPBo" role="1tU5fm">
              <ref role="ehGHo" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
            </node>
            <node concept="2OqwBi" id="3aST2zGnPBp" role="33vP2m">
              <node concept="37vLTw" id="3aST2zGnSlx" role="2Oq$k0">
                <ref role="3cqZAo" node="3aST2zGnjLR" resolve="nodeParam" />
              </node>
              <node concept="LFhST" id="3aST2zGnPBr" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3aST2zGnPBs" role="3cqZAp">
          <node concept="3cpWsn" id="3aST2zGnPBt" role="3cpWs9">
            <property role="TrG5h" value="propertyAccess" />
            <node concept="3Tqbb2" id="3aST2zGnPBu" role="1tU5fm">
              <ref role="ehGHo" to="tp25:gzTrcDJ" resolve="SPropertyAccess" />
            </node>
            <node concept="2ShNRf" id="3aST2zGnPBv" role="33vP2m">
              <node concept="3zrR0B" id="3aST2zGnPBw" role="2ShVmc">
                <node concept="3Tqbb2" id="3aST2zGnPBx" role="3zrR0E">
                  <ref role="ehGHo" to="tp25:gzTrcDJ" resolve="SPropertyAccess" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3aST2zGnPBy" role="3cqZAp">
          <node concept="37vLTI" id="3aST2zGnPBz" role="3clFbG">
            <node concept="37vLTw" id="3aST2zGnPB$" role="37vLTx">
              <ref role="3cqZAo" node="3aST2zGnPBf" resolve="property" />
            </node>
            <node concept="2OqwBi" id="3aST2zGnPB_" role="37vLTJ">
              <node concept="37vLTw" id="3aST2zGnPBA" role="2Oq$k0">
                <ref role="3cqZAo" node="3aST2zGnPBt" resolve="propertyAccess" />
              </node>
              <node concept="3TrEf2" id="3aST2zGnPBB" role="2OqNvi">
                <ref role="3Tt5mk" to="tp25:gzTsBJd" resolve="property" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aST2zGnPBC" role="3cqZAp" />
        <node concept="3SKdUt" id="3aST2zGreZJ" role="3cqZAp">
          <node concept="3SKdUq" id="3aST2zGreZL" role="3SKWNk">
            <property role="3SKdUp" value="Only when property is not empty" />
          </node>
        </node>
        <node concept="3cpWs8" id="3aST2zGnPBD" role="3cqZAp">
          <node concept="3cpWsn" id="3aST2zGnPBE" role="3cpWs9">
            <property role="TrG5h" value="ifStatement" />
            <node concept="3Tqbb2" id="3aST2zGnPBF" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fzclF8n" resolve="IfStatement" />
            </node>
            <node concept="2c44tf" id="3aST2zGnPBG" role="33vP2m">
              <node concept="3clFbJ" id="3aST2zGnPBH" role="2c44tc">
                <node concept="3clFbS" id="3aST2zGnPBI" role="3clFbx">
                  <node concept="lc7rE" id="3aST2zGnPBJ" role="3cqZAp">
                    <node concept="l9hG8" id="3aST2zGnPBK" role="lcghm">
                      <node concept="2OqwBi" id="3aST2zGnPBL" role="lb14g">
                        <node concept="1B$H19" id="3aST2zGnPBM" role="2OqNvi">
                          <node concept="2c44te" id="3aST2zGnPBN" role="lGtFl">
                            <node concept="37vLTw" id="3aST2zGnPBO" role="2c44t1">
                              <ref role="3cqZAo" node="3aST2zGnPBt" resolve="propertyAccess" />
                            </node>
                          </node>
                        </node>
                        <node concept="33vP2n" id="3aST2zGnPBP" role="2Oq$k0">
                          <node concept="2c44te" id="3aST2zGnPBQ" role="lGtFl">
                            <node concept="37vLTw" id="3aST2zGnPBR" role="2c44t1">
                              <ref role="3cqZAo" node="3aST2zGnPBn" resolve="paramAccess" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3aST2zGnPBS" role="3clFbw">
                  <node concept="17RvpY" id="3aST2zGnPBT" role="2OqNvi" />
                  <node concept="2OqwBi" id="3aST2zGnPBU" role="2Oq$k0">
                    <node concept="1B$H19" id="3aST2zGnPBV" role="2OqNvi">
                      <node concept="2c44te" id="3aST2zGnPBW" role="lGtFl">
                        <node concept="37vLTw" id="3aST2zGnPBX" role="2c44t1">
                          <ref role="3cqZAo" node="3aST2zGnPBt" resolve="propertyAccess" />
                        </node>
                      </node>
                    </node>
                    <node concept="33vP2n" id="3aST2zGnPBY" role="2Oq$k0">
                      <node concept="2c44te" id="3aST2zGnPBZ" role="lGtFl">
                        <node concept="37vLTw" id="3aST2zGnPC0" role="2c44t1">
                          <ref role="3cqZAo" node="3aST2zGnPBn" resolve="paramAccess" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aST2zGnPC1" role="3cqZAp" />
        <node concept="3clFbJ" id="3aST2zGnPC2" role="3cqZAp">
          <node concept="3clFbS" id="3aST2zGnPC3" role="3clFbx">
            <node concept="3clFbF" id="3aST2zGnPC4" role="3cqZAp">
              <node concept="2OqwBi" id="3aST2zGnPC5" role="3clFbG">
                <node concept="2OqwBi" id="3aST2zGnPC6" role="2Oq$k0">
                  <node concept="2OqwBi" id="3aST2zGnPC7" role="2Oq$k0">
                    <node concept="37vLTw" id="3aST2zGnPC8" role="2Oq$k0">
                      <ref role="3cqZAo" node="3aST2zGnPBE" resolve="ifStatement" />
                    </node>
                    <node concept="3TrEf2" id="3aST2zGnPC9" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:fzclF8p" resolve="ifTrue" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="3aST2zGnPCa" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                  </node>
                </node>
                <node concept="2Ke4WJ" id="3aST2zGnPCb" role="2OqNvi">
                  <node concept="2c44tf" id="3aST2zGnPCc" role="25WWJ7">
                    <node concept="lc7rE" id="3aST2zGnPCd" role="2c44tc">
                      <node concept="la8eA" id="3aST2zGnPCe" role="lcghm">
                        <property role="lacIc" value=" " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3aST2zGnPCf" role="3clFbw">
            <ref role="3cqZAo" node="3aST2zGnPCw" resolve="prependSpace" />
          </node>
        </node>
        <node concept="3clFbH" id="3aST2zGnPCg" role="3cqZAp" />
        <node concept="3clFbF" id="3aST2zGnPCh" role="3cqZAp">
          <node concept="2OqwBi" id="3aST2zGnPCi" role="3clFbG">
            <node concept="37vLTw" id="3aST2zGnSwi" role="2Oq$k0">
              <ref role="3cqZAo" node="3aST2zGnoVU" resolve="statements" />
            </node>
            <node concept="TSZUe" id="3aST2zGnPCm" role="2OqNvi">
              <node concept="37vLTw" id="3aST2zGnPCn" role="25WWJ7">
                <ref role="3cqZAo" node="3aST2zGnPBE" resolve="ifStatement" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3aST2zGnPCp" role="3clF45" />
      <node concept="37vLTG" id="3aST2zGnPCs" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="3aST2zGnPCt" role="1tU5fm">
          <ref role="3uigEE" to="2t9r:~RuleReference" resolve="RuleReference" />
        </node>
      </node>
      <node concept="37vLTG" id="3aST2zGnPCw" role="3clF46">
        <property role="TrG5h" value="prependSpace" />
        <node concept="10P_77" id="3aST2zGnPCx" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="3aST2zGnPCo" role="1B3o_S" />
      <node concept="P$JXv" id="3aST2zGrmwO" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrmwP" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrmwQ" role="1dT_Ay">
            <property role="1dT_AB" value="Creates an append statement that includes a property's value." />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrmwR" role="3nqlJM">
          <property role="TUZQ4" value="Reference to a regex rule (property)." />
          <node concept="zr_55" id="3aST2zGrmwT" role="zr_5Q">
            <ref role="zr_51" node="3aST2zGnPCs" resolve="reference" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrmwU" role="3nqlJM">
          <property role="TUZQ4" value="Do we want to prepend a space before we prepend the property?" />
          <node concept="zr_55" id="3aST2zGrmwW" role="zr_5Q">
            <ref role="zr_51" node="3aST2zGnPCw" resolve="prependSpace" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3aST2zGmaLU" role="jymVt" />
    <node concept="3clFb_" id="3aST2zGnUmO" role="jymVt">
      <property role="TrG5h" value="appendChild" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3aST2zGnUmS" role="3clF47">
        <node concept="3SKdUt" id="3aST2zGnUmT" role="3cqZAp">
          <node concept="3SKdUq" id="3aST2zGnUmU" role="3SKWNk">
            <property role="3SKdUp" value="Find child" />
          </node>
        </node>
        <node concept="3cpWs8" id="3aST2zGnUmV" role="3cqZAp">
          <node concept="3cpWsn" id="3aST2zGnUmW" role="3cpWs9">
            <property role="TrG5h" value="childLink" />
            <node concept="3Tqbb2" id="3aST2zGnUmX" role="1tU5fm">
              <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
            </node>
            <node concept="10QFUN" id="3aST2zGnUmY" role="33vP2m">
              <node concept="3Tqbb2" id="3aST2zGnUmZ" role="10QFUM">
                <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
              </node>
              <node concept="2OqwBi" id="3aST2zGnUn0" role="10QFUP">
                <node concept="37vLTw" id="3aST2zGnUn1" role="2Oq$k0">
                  <ref role="3cqZAo" node="3aST2zGnUmQ" resolve="reference" />
                </node>
                <node concept="2OwXpG" id="75$k3hpEt2H" role="2OqNvi">
                  <ref role="2Oxat5" to="2t9r:~RuleReference.nodeReference" resolve="nodeReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3aST2zGnUn3" role="3cqZAp">
          <node concept="3cpWsn" id="3aST2zGnUn4" role="3cpWs9">
            <property role="TrG5h" value="paramAccess" />
            <node concept="3Tqbb2" id="3aST2zGnUn5" role="1tU5fm">
              <ref role="ehGHo" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
            </node>
            <node concept="2OqwBi" id="3aST2zGnUn6" role="33vP2m">
              <node concept="37vLTw" id="3aST2zGnW15" role="2Oq$k0">
                <ref role="3cqZAo" node="3aST2zGnjLR" resolve="nodeParam" />
              </node>
              <node concept="LFhST" id="3aST2zGnUn8" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aST2zGnUn9" role="3cqZAp" />
        <node concept="3cpWs8" id="3aST2zGohSZ" role="3cqZAp">
          <node concept="3cpWsn" id="3aST2zGohT0" role="3cpWs9">
            <property role="TrG5h" value="ifStatement" />
            <node concept="3Tqbb2" id="3aST2zGohT1" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fzclF8n" resolve="IfStatement" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aST2zGohs0" role="3cqZAp" />
        <node concept="3clFbJ" id="3aST2zGnUna" role="3cqZAp">
          <node concept="3clFbS" id="3aST2zGnUnb" role="3clFbx">
            <node concept="3SKdUt" id="3aST2zGnUnc" role="3cqZAp">
              <node concept="3SKdUq" id="3aST2zGnUnd" role="3SKWNk">
                <property role="3SKdUp" value="Single child" />
              </node>
            </node>
            <node concept="3cpWs8" id="3aST2zGnUne" role="3cqZAp">
              <node concept="3cpWsn" id="3aST2zGnUnf" role="3cpWs9">
                <property role="TrG5h" value="childAccess" />
                <node concept="3Tqbb2" id="3aST2zGnUng" role="1tU5fm">
                  <ref role="ehGHo" to="tp25:gzTrEba" resolve="SLinkAccess" />
                </node>
                <node concept="2ShNRf" id="3aST2zGnUnh" role="33vP2m">
                  <node concept="3zrR0B" id="3aST2zGnUni" role="2ShVmc">
                    <node concept="3Tqbb2" id="3aST2zGnUnj" role="3zrR0E">
                      <ref role="ehGHo" to="tp25:gzTrEba" resolve="SLinkAccess" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3aST2zGnUnk" role="3cqZAp">
              <node concept="37vLTI" id="3aST2zGnUnl" role="3clFbG">
                <node concept="37vLTw" id="3aST2zGnUnm" role="37vLTx">
                  <ref role="3cqZAo" node="3aST2zGnUmW" resolve="childLink" />
                </node>
                <node concept="2OqwBi" id="3aST2zGnUnn" role="37vLTJ">
                  <node concept="37vLTw" id="3aST2zGnUno" role="2Oq$k0">
                    <ref role="3cqZAo" node="3aST2zGnUnf" resolve="childAccess" />
                  </node>
                  <node concept="3TrEf2" id="3aST2zGnUnp" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp25:gzTt5is" resolve="link" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3aST2zGoKdn" role="3cqZAp" />
            <node concept="3SKdUt" id="3aST2zGrfjJ" role="3cqZAp">
              <node concept="3SKdUq" id="3aST2zGrfjL" role="3SKWNk">
                <property role="3SKdUp" value="Only when child is there" />
              </node>
            </node>
            <node concept="3clFbF" id="3aST2zGoAHj" role="3cqZAp">
              <node concept="37vLTI" id="3aST2zGoAS8" role="3clFbG">
                <node concept="37vLTw" id="3aST2zGoAHh" role="37vLTJ">
                  <ref role="3cqZAo" node="3aST2zGohT0" resolve="ifStatement" />
                </node>
                <node concept="2c44tf" id="3aST2zGohT2" role="37vLTx">
                  <node concept="3clFbJ" id="3aST2zGohT3" role="2c44tc">
                    <node concept="3clFbS" id="3aST2zGohT4" role="3clFbx">
                      <node concept="lc7rE" id="3aST2zGnUnx" role="3cqZAp">
                        <node concept="l9hG8" id="3aST2zGnUny" role="lcghm">
                          <node concept="2OqwBi" id="3aST2zGnUnz" role="lb14g">
                            <node concept="1B$H19" id="3aST2zGnUn$" role="2OqNvi">
                              <node concept="2c44te" id="3aST2zGnUn_" role="lGtFl">
                                <node concept="37vLTw" id="3aST2zGnUnA" role="2c44t1">
                                  <ref role="3cqZAo" node="3aST2zGnUnf" resolve="childAccess" />
                                </node>
                              </node>
                            </node>
                            <node concept="33vP2n" id="3aST2zGnUnB" role="2Oq$k0">
                              <node concept="2c44te" id="3aST2zGnUnC" role="lGtFl">
                                <node concept="37vLTw" id="3aST2zGnUnD" role="2c44t1">
                                  <ref role="3cqZAo" node="3aST2zGnUn4" resolve="paramAccess" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="3aST2zGoBB0" role="3clFbw">
                      <node concept="10Nm6u" id="3aST2zGoBCo" role="3uHU7w" />
                      <node concept="2OqwBi" id="3aST2zGohTg" role="3uHU7B">
                        <node concept="1B$H19" id="3aST2zGohTh" role="2OqNvi">
                          <node concept="2c44te" id="3aST2zGohTi" role="lGtFl">
                            <node concept="37vLTw" id="3aST2zGoAUn" role="2c44t1">
                              <ref role="3cqZAo" node="3aST2zGnUnf" resolve="childAccess" />
                            </node>
                          </node>
                        </node>
                        <node concept="33vP2n" id="3aST2zGohTk" role="2Oq$k0">
                          <node concept="2c44te" id="3aST2zGohTl" role="lGtFl">
                            <node concept="37vLTw" id="3aST2zGohTm" role="2c44t1">
                              <ref role="3cqZAo" node="3aST2zGnUn4" resolve="paramAccess" />
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
          <node concept="9aQIb" id="3aST2zGnUnE" role="9aQIa">
            <node concept="3clFbS" id="3aST2zGnUnF" role="9aQI4">
              <node concept="3SKdUt" id="3aST2zGnUnG" role="3cqZAp">
                <node concept="3SKdUq" id="3aST2zGnUnH" role="3SKWNk">
                  <property role="3SKdUp" value="List of children" />
                </node>
              </node>
              <node concept="3cpWs8" id="3aST2zGnUnI" role="3cqZAp">
                <node concept="3cpWsn" id="3aST2zGnUnJ" role="3cpWs9">
                  <property role="TrG5h" value="childAccess" />
                  <node concept="3Tqbb2" id="3aST2zGnUnK" role="1tU5fm">
                    <ref role="ehGHo" to="tp25:gzTsc4p" resolve="SLinkListAccess" />
                  </node>
                  <node concept="2ShNRf" id="3aST2zGnUnL" role="33vP2m">
                    <node concept="3zrR0B" id="3aST2zGnUnM" role="2ShVmc">
                      <node concept="3Tqbb2" id="3aST2zGnUnN" role="3zrR0E">
                        <ref role="ehGHo" to="tp25:gzTsc4p" resolve="SLinkListAccess" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3aST2zGnUnO" role="3cqZAp">
                <node concept="37vLTI" id="3aST2zGnUnP" role="3clFbG">
                  <node concept="37vLTw" id="3aST2zGnUnQ" role="37vLTx">
                    <ref role="3cqZAo" node="3aST2zGnUmW" resolve="childLink" />
                  </node>
                  <node concept="2OqwBi" id="3aST2zGnUnR" role="37vLTJ">
                    <node concept="37vLTw" id="3aST2zGnUnS" role="2Oq$k0">
                      <ref role="3cqZAo" node="3aST2zGnUnJ" resolve="childAccess" />
                    </node>
                    <node concept="3TrEf2" id="3aST2zGnUnT" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp25:gzTtc_y" resolve="link" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="3aST2zGoKcp" role="3cqZAp" />
              <node concept="3SKdUt" id="3aST2zGrflu" role="3cqZAp">
                <node concept="3SKdUq" id="3aST2zGrflw" role="3SKWNk">
                  <property role="3SKdUp" value="Only when at least one child is there" />
                </node>
              </node>
              <node concept="3clFbF" id="3aST2zGoK9q" role="3cqZAp">
                <node concept="37vLTI" id="3aST2zGoK9r" role="3clFbG">
                  <node concept="37vLTw" id="3aST2zGoK9s" role="37vLTJ">
                    <ref role="3cqZAo" node="3aST2zGohT0" resolve="ifStatement" />
                  </node>
                  <node concept="2c44tf" id="3aST2zGoK9t" role="37vLTx">
                    <node concept="3clFbJ" id="3aST2zGoK9u" role="2c44tc">
                      <node concept="3clFbS" id="3aST2zGoK9v" role="3clFbx">
                        <node concept="lc7rE" id="3aST2zGoKP0" role="3cqZAp">
                          <node concept="l9S2W" id="3aST2zGoKP1" role="lcghm">
                            <property role="XA4eZ" value="true" />
                            <property role="lbP0B" value=" " />
                            <node concept="2OqwBi" id="3aST2zGoKP2" role="lbANJ">
                              <node concept="1B$H19" id="3aST2zGoKP3" role="2OqNvi">
                                <node concept="2c44te" id="3aST2zGoKP4" role="lGtFl">
                                  <node concept="37vLTw" id="3aST2zGoKP5" role="2c44t1">
                                    <ref role="3cqZAo" node="3aST2zGnUnJ" resolve="childAccess" />
                                  </node>
                                </node>
                              </node>
                              <node concept="33vP2n" id="3aST2zGoKP6" role="2Oq$k0">
                                <node concept="2c44te" id="3aST2zGoKP7" role="lGtFl">
                                  <node concept="37vLTw" id="3aST2zGoKP8" role="2c44t1">
                                    <ref role="3cqZAo" node="3aST2zGnUn4" resolve="paramAccess" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3eOSWO" id="3aST2zGoNhH" role="3clFbw">
                        <node concept="2OqwBi" id="3aST2zGoMGM" role="3uHU7B">
                          <node concept="34oBXx" id="3aST2zGoNeC" role="2OqNvi" />
                          <node concept="2OqwBi" id="3aST2zGoK9F" role="2Oq$k0">
                            <node concept="1B$H19" id="3aST2zGoK9G" role="2OqNvi">
                              <node concept="2c44te" id="3aST2zGoK9H" role="lGtFl">
                                <node concept="37vLTw" id="3aST2zGoK9I" role="2c44t1">
                                  <ref role="3cqZAo" node="3aST2zGnUnJ" resolve="childAccess" />
                                </node>
                              </node>
                            </node>
                            <node concept="33vP2n" id="3aST2zGoK9J" role="2Oq$k0">
                              <node concept="2c44te" id="3aST2zGoK9K" role="lGtFl">
                                <node concept="37vLTw" id="3aST2zGoK9L" role="2c44t1">
                                  <ref role="3cqZAo" node="3aST2zGnUn4" resolve="paramAccess" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cmrfG" id="3aST2zGoNgS" role="3uHU7w">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3aST2zGnUoa" role="3clFbw">
            <node concept="3clFbC" id="3aST2zGnUob" role="3uHU7w">
              <node concept="Rm8GO" id="3aST2zGnUoc" role="3uHU7w">
                <ref role="1Px2BO" to="2t9r:~Quantity" resolve="Quantity" />
                <ref role="Rm8GQ" to="2t9r:~MAX_ONE" resolve="MAX_ONE" />
              </node>
              <node concept="2OqwBi" id="3aST2zGnUod" role="3uHU7B">
                <node concept="37vLTw" id="3aST2zGnUoe" role="2Oq$k0">
                  <ref role="3cqZAo" node="3aST2zGnUmQ" resolve="reference" />
                </node>
                <node concept="2OwXpG" id="3aST2zGnUof" role="2OqNvi">
                  <ref role="2Oxat5" to="2t9r:~RuleReference.quantity" resolve="quantity" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="3aST2zGnUog" role="3uHU7B">
              <node concept="2OqwBi" id="3aST2zGnUoh" role="3uHU7B">
                <node concept="37vLTw" id="3aST2zGnUoi" role="2Oq$k0">
                  <ref role="3cqZAo" node="3aST2zGnUmQ" resolve="reference" />
                </node>
                <node concept="2OwXpG" id="3aST2zGnUoj" role="2OqNvi">
                  <ref role="2Oxat5" to="2t9r:~RuleReference.quantity" resolve="quantity" />
                </node>
              </node>
              <node concept="Rm8GO" id="3aST2zGnUok" role="3uHU7w">
                <ref role="1Px2BO" to="2t9r:~Quantity" resolve="Quantity" />
                <ref role="Rm8GQ" to="2t9r:~EXACTLY_ONE" resolve="EXACTLY_ONE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aST2zGoD0h" role="3cqZAp" />
        <node concept="3SKdUt" id="3aST2zGrfEG" role="3cqZAp">
          <node concept="3SKdUq" id="3aST2zGrfEI" role="3SKWNk">
            <property role="3SKdUp" value="Did we want to prepend a statement?" />
          </node>
        </node>
        <node concept="3clFbJ" id="3aST2zGohTo" role="3cqZAp">
          <node concept="3clFbS" id="3aST2zGohTp" role="3clFbx">
            <node concept="3clFbF" id="3aST2zGohTq" role="3cqZAp">
              <node concept="2OqwBi" id="3aST2zGohTr" role="3clFbG">
                <node concept="2OqwBi" id="3aST2zGohTs" role="2Oq$k0">
                  <node concept="2OqwBi" id="3aST2zGohTt" role="2Oq$k0">
                    <node concept="37vLTw" id="3aST2zGohTu" role="2Oq$k0">
                      <ref role="3cqZAo" node="3aST2zGohT0" resolve="ifStatement" />
                    </node>
                    <node concept="3TrEf2" id="3aST2zGohTv" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpee:fzclF8p" resolve="ifTrue" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="3aST2zGohTw" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:fzcqZ_x" resolve="statement" />
                  </node>
                </node>
                <node concept="2Ke4WJ" id="3aST2zGoGwL" role="2OqNvi">
                  <node concept="2c44tf" id="3aST2zGohTy" role="25WWJ7">
                    <node concept="lc7rE" id="3aST2zGohTz" role="2c44tc">
                      <node concept="la8eA" id="3aST2zGohT$" role="lcghm">
                        <property role="lacIc" value=" " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3aST2zGohT_" role="3clFbw">
            <ref role="3cqZAo" node="3aST2zGofpu" resolve="prependSpace" />
          </node>
        </node>
        <node concept="3clFbH" id="3aST2zGohTA" role="3cqZAp" />
        <node concept="3clFbF" id="3aST2zGohTB" role="3cqZAp">
          <node concept="2OqwBi" id="3aST2zGohTC" role="3clFbG">
            <node concept="37vLTw" id="3aST2zGohTD" role="2Oq$k0">
              <ref role="3cqZAo" node="3aST2zGnoVU" resolve="statements" />
            </node>
            <node concept="TSZUe" id="3aST2zGohTE" role="2OqNvi">
              <node concept="37vLTw" id="3aST2zGohTF" role="25WWJ7">
                <ref role="3cqZAo" node="3aST2zGohT0" resolve="ifStatement" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3aST2zGnUom" role="3clF45" />
      <node concept="37vLTG" id="3aST2zGnUmQ" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="3aST2zGnUmR" role="1tU5fm">
          <ref role="3uigEE" to="2t9r:~RuleReference" resolve="RuleReference" />
        </node>
      </node>
      <node concept="37vLTG" id="3aST2zGofpu" role="3clF46">
        <property role="TrG5h" value="prependSpace" />
        <node concept="10P_77" id="3aST2zGofpv" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="3aST2zGnUol" role="1B3o_S" />
      <node concept="P$JXv" id="3aST2zGrnVP" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrnVQ" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrnVR" role="1dT_Ay">
            <property role="1dT_AB" value="Creates an append statement that includes a child's value." />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrnVS" role="3nqlJM">
          <property role="TUZQ4" value="Reference to a parser rule (child)." />
          <node concept="zr_55" id="3aST2zGrnVU" role="zr_5Q">
            <ref role="zr_51" node="3aST2zGnUmQ" resolve="reference" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrnVV" role="3nqlJM">
          <property role="TUZQ4" value="Do we want to prepend a space before we prepend the child/children?" />
          <node concept="zr_55" id="3aST2zGrnVX" role="zr_5Q">
            <ref role="zr_51" node="3aST2zGofpu" resolve="prependSpace" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3aST2zGnDzJ" role="jymVt" />
    <node concept="3clFb_" id="3aST2zGnGjW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getTextGen" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3aST2zGnGjZ" role="3clF47">
        <node concept="3cpWs6" id="3aST2zGnGPT" role="3cqZAp">
          <node concept="37vLTw" id="3aST2zGnHgM" role="3cqZAk">
            <ref role="3cqZAo" node="3aST2zGnjqx" resolve="textGen" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3aST2zGnFPR" role="1B3o_S" />
      <node concept="3Tqbb2" id="3aST2zGnGfv" role="3clF45">
        <ref role="ehGHo" to="2omo:hWWtQdD" resolve="ConceptTextGenDeclaration" />
      </node>
      <node concept="P$JXv" id="3aST2zGrqhR" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrqhS" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrqhT" role="1dT_Ay">
            <property role="1dT_AB" value="Retrieves the TextGen aspect." />
          </node>
        </node>
        <node concept="x79VA" id="3aST2zGrqhU" role="3nqlJM">
          <property role="x79VB" value="The TextGen aspect that was built using this class." />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3aST2zGpfpf" role="jymVt" />
    <node concept="3clFb_" id="3aST2zGpoyj" role="jymVt">
      <property role="TrG5h" value="setupAsRootConcept" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3aST2zGpoyl" role="3clF47">
        <node concept="3SKdUt" id="3aST2zGpqqt" role="3cqZAp">
          <node concept="3SKdUq" id="3aST2zGpqqv" role="3SKWNk">
            <property role="3SKdUp" value="Filename method" />
          </node>
        </node>
        <node concept="3cpWs8" id="3aST2zGpoys" role="3cqZAp">
          <node concept="3cpWsn" id="3aST2zGpoyt" role="3cpWs9">
            <property role="TrG5h" value="literal" />
            <node concept="3Tqbb2" id="3aST2zGpoyu" role="1tU5fm">
              <ref role="ehGHo" to="tpee:f$Xl_Og" resolve="StringLiteral" />
            </node>
            <node concept="2ShNRf" id="3aST2zGpoyv" role="33vP2m">
              <node concept="3zrR0B" id="3aST2zGpoyw" role="2ShVmc">
                <node concept="3Tqbb2" id="3aST2zGpoyx" role="3zrR0E">
                  <ref role="ehGHo" to="tpee:f$Xl_Og" resolve="StringLiteral" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3aST2zGpoyy" role="3cqZAp">
          <node concept="37vLTI" id="3aST2zGpoyz" role="3clFbG">
            <node concept="37vLTw" id="3aST2zGpoy$" role="37vLTx">
              <ref role="3cqZAo" node="3aST2zGpozz" resolve="filename" />
            </node>
            <node concept="2OqwBi" id="3aST2zGpoy_" role="37vLTJ">
              <node concept="37vLTw" id="3aST2zGpoyA" role="2Oq$k0">
                <ref role="3cqZAo" node="3aST2zGpoyt" resolve="literal" />
              </node>
              <node concept="3TrcHB" id="3aST2zGpoyB" role="2OqNvi">
                <ref role="3TsBF5" to="tpee:f$Xl_Oh" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aST2zGpoyI" role="3cqZAp" />
        <node concept="3clFbF" id="3aST2zGpoyJ" role="3cqZAp">
          <node concept="37vLTI" id="3aST2zGpoyK" role="3clFbG">
            <node concept="2c44tf" id="3aST2zGpoyL" role="37vLTx">
              <node concept="29tfMY" id="3aST2zGpoyM" role="2c44tc">
                <node concept="3clFbS" id="3aST2zGpoyN" role="2VODD2">
                  <node concept="3cpWs6" id="3aST2zGq17V" role="3cqZAp">
                    <node concept="33vP2n" id="3aST2zGq1aA" role="3cqZAk">
                      <node concept="2c44te" id="3aST2zGq1eu" role="lGtFl">
                        <node concept="37vLTw" id="3aST2zGq1gE" role="2c44t1">
                          <ref role="3cqZAo" node="3aST2zGpoyt" resolve="literal" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3aST2zGpoyS" role="37vLTJ">
              <node concept="37vLTw" id="3aST2zGpqhE" role="2Oq$k0">
                <ref role="3cqZAo" node="3aST2zGnjqx" resolve="textGen" />
              </node>
              <node concept="3TrEf2" id="3aST2zGpoyU" role="2OqNvi">
                <ref role="3Tt5mk" to="2omo:2wXN29Pz7c" resolve="filename" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aST2zGpoyV" role="3cqZAp" />
        <node concept="3SKdUt" id="3aST2zGpqwu" role="3cqZAp">
          <node concept="3SKdUq" id="3aST2zGpqww" role="3SKWNk">
            <property role="3SKdUp" value="Extension method" />
          </node>
        </node>
        <node concept="3cpWs8" id="3aST2zGpoz2" role="3cqZAp">
          <node concept="3cpWsn" id="3aST2zGpoz3" role="3cpWs9">
            <property role="TrG5h" value="literal2" />
            <node concept="3Tqbb2" id="3aST2zGpoz4" role="1tU5fm">
              <ref role="ehGHo" to="tpee:f$Xl_Og" resolve="StringLiteral" />
            </node>
            <node concept="2ShNRf" id="3aST2zGpoz5" role="33vP2m">
              <node concept="3zrR0B" id="3aST2zGpoz6" role="2ShVmc">
                <node concept="3Tqbb2" id="3aST2zGpoz7" role="3zrR0E">
                  <ref role="ehGHo" to="tpee:f$Xl_Og" resolve="StringLiteral" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3aST2zGpoz8" role="3cqZAp">
          <node concept="37vLTI" id="3aST2zGpoz9" role="3clFbG">
            <node concept="37vLTw" id="3aST2zGpoza" role="37vLTx">
              <ref role="3cqZAo" node="3aST2zGpoz_" resolve="extension" />
            </node>
            <node concept="2OqwBi" id="3aST2zGpozb" role="37vLTJ">
              <node concept="37vLTw" id="3aST2zGpozc" role="2Oq$k0">
                <ref role="3cqZAo" node="3aST2zGpoz3" resolve="literal2" />
              </node>
              <node concept="3TrcHB" id="3aST2zGpozd" role="2OqNvi">
                <ref role="3TsBF5" to="tpee:f$Xl_Oh" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3aST2zGpozk" role="3cqZAp" />
        <node concept="3clFbF" id="3aST2zGpozl" role="3cqZAp">
          <node concept="37vLTI" id="3aST2zGpozm" role="3clFbG">
            <node concept="2c44tf" id="3aST2zGpozn" role="37vLTx">
              <node concept="9MYSb" id="3aST2zGpozo" role="2c44tc">
                <node concept="3clFbS" id="3aST2zGpozp" role="2VODD2">
                  <node concept="3cpWs6" id="3aST2zGq1Hk" role="3cqZAp">
                    <node concept="33vP2n" id="3aST2zGq1JZ" role="3cqZAk">
                      <node concept="2c44te" id="3aST2zGq1Ny" role="lGtFl">
                        <node concept="37vLTw" id="3aST2zGq1QZ" role="2c44t1">
                          <ref role="3cqZAo" node="3aST2zGpoz3" resolve="literal2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3aST2zGpozs" role="37vLTJ">
              <node concept="37vLTw" id="3aST2zGpql1" role="2Oq$k0">
                <ref role="3cqZAo" node="3aST2zGnjqx" resolve="textGen" />
              </node>
              <node concept="3TrEf2" id="3aST2zGpozu" role="2OqNvi">
                <ref role="3Tt5mk" to="2omo:6VAHsmHnR9T" resolve="extension" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3aST2zGpozw" role="3clF45" />
      <node concept="37vLTG" id="3aST2zGpozz" role="3clF46">
        <property role="TrG5h" value="filename" />
        <node concept="17QB3L" id="3aST2zGpoz$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3aST2zGpoz_" role="3clF46">
        <property role="TrG5h" value="extension" />
        <node concept="17QB3L" id="3aST2zGpozA" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="3aST2zGpozv" role="1B3o_S" />
      <node concept="P$JXv" id="3aST2zGrrGL" role="lGtFl">
        <node concept="TZ5HA" id="3aST2zGrrGM" role="TZ5H$">
          <node concept="1dT_AC" id="3aST2zGrrGN" role="1dT_Ay">
            <property role="1dT_AB" value="Root concepts need definitions of filename and extension string." />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrrGO" role="3nqlJM">
          <property role="TUZQ4" value="Filename that will be returned by the filename method." />
          <node concept="zr_55" id="3aST2zGrrGQ" role="zr_5Q">
            <ref role="zr_51" node="3aST2zGpozz" resolve="filename" />
          </node>
        </node>
        <node concept="TUZQ0" id="3aST2zGrrGR" role="3nqlJM">
          <property role="TUZQ4" value="Extension that will be returned by the extension method." />
          <node concept="zr_55" id="3aST2zGrrGT" role="zr_5Q">
            <ref role="zr_51" node="3aST2zGpoz_" resolve="extension" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="Pei6ieTWbX" role="1B3o_S" />
    <node concept="3UR2Jj" id="Pei6ieTWF6" role="lGtFl">
      <node concept="TZ5HA" id="Pei6ieTWF7" role="TZ5H$">
        <node concept="1dT_AC" id="Pei6ieTWF8" role="1dT_Ay">
          <property role="1dT_AB" value="Helper class for generating TextGen aspects." />
        </node>
      </node>
      <node concept="TZ5HA" id="3aST2zGraQg" role="TZ5H$">
        <node concept="1dT_AC" id="3aST2zGraQh" role="1dT_Ay">
          <property role="1dT_AB" value="With each instance, one textgen is created and can be filled with statements." />
        </node>
      </node>
      <node concept="TZ5HA" id="3aST2zGraQC" role="TZ5H$">
        <node concept="1dT_AC" id="3aST2zGraQD" role="1dT_Ay">
          <property role="1dT_AB" value="After we are done with it, we call getTextGen() to retrieve it." />
        </node>
      </node>
    </node>
  </node>
</model>

