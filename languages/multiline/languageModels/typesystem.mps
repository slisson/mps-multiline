<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2e3bedda-d2c6-42ea-8f39-83cfe0a4ed64(de.slisson.mps.editor.multiline.typesystem)" concise="true">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wap1" ref="r:9aa85a40-e98d-42a5-a8fd-9f607a4dc9a0(de.slisson.mps.editor.multiline.structure)" />
    <import index="hypd" ref="r:aa31e43e-9240-4f4d-b6db-5c1c9a86c59e(jetbrains.mps.lang.project.structure)" />
    <import index="cu2c" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" />
    <import index="kqhl" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project.structure.modules(MPS.Core/jetbrains.mps.project.structure.modules@java_stub)" />
    <import index="vsqj" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project(MPS.Core/jetbrains.mps.project@java_stub)" />
    <import index="k7g3" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="88zw" ref="f:java_stub#8865b7a8-5271-43d3-884c-6fd1d9cfdd34#org.jetbrains.mps.openapi.module(MPS.OpenAPI/org.jetbrains.mps.openapi.module@java_stub)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="tp2q" ref="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" implicit="true" />
    <import index="tpd4" ref="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1216383170661" name="jetbrains.mps.lang.typesystem.structure.TypesystemQuickFix" flags="ng" index="Q5z_Y">
        <child id="1216383424566" name="executeBlock" index="Q6x$H" />
        <child id="1216383476350" name="quickFixArgument" index="Q6Id_" />
        <child id="1216391046856" name="descriptionBlock" index="QzAvj" />
      </concept>
      <concept id="1216383287005" name="jetbrains.mps.lang.typesystem.structure.QuickFixExecuteBlock" flags="in" index="Q5ZZ6" />
      <concept id="1216383482742" name="jetbrains.mps.lang.typesystem.structure.QuickFixArgument" flags="ng" index="Q6JDH">
        <child id="1216383511839" name="argumentType" index="Q6QK4" />
      </concept>
      <concept id="1216390348809" name="jetbrains.mps.lang.typesystem.structure.QuickFixArgumentReference" flags="nn" index="QwW4i">
        <reference id="1216390348810" name="quickFixArgument" index="QwW4h" />
      </concept>
      <concept id="1216390987552" name="jetbrains.mps.lang.typesystem.structure.QuickFixDescriptionBlock" flags="in" index="QznSV" />
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802791" name="helginsIntention" index="2OEOjU" />
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
      </concept>
      <concept id="1210784285454" name="jetbrains.mps.lang.typesystem.structure.TypesystemIntention" flags="ng" index="3Cnw8n">
        <property id="1216127910019" name="applyImmediately" index="ARO6o" />
        <reference id="1216388525179" name="quickFix" index="QpYPw" />
        <child id="1210784493590" name="actualArgument" index="3Coj4f" />
      </concept>
      <concept id="1210784384552" name="jetbrains.mps.lang.typesystem.structure.TypesystemIntentionArgument" flags="ng" index="3CnSsL">
        <reference id="1216386999476" name="quickFixArgument" index="QkamJ" />
        <child id="1210784642750" name="value" index="3CoRuB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="6995935425733782641" name="jetbrains.mps.lang.smodel.structure.Model_GetModule" flags="nn" index="13u695" />
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4040588429969021681" name="jetbrains.mps.lang.smodel.structure.ModuleReferenceExpression" flags="nn" index="3rM5sP">
        <property id="4040588429969021683" name="moduleId" index="3rM5sR" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="18kY7G" id="7Pi_Fu5SrKO">
    <property role="TrG5h" value="check_runtimeLibs" />
    <node concept="3clFbS" id="7Pi_Fu5SrKP" role="18ibNy">
      <node concept="3cpWs8" id="7cgOZHrhrRx" role="3cqZAp">
        <node concept="3cpWsn" id="7cgOZHrhrRy" role="3cpWs9">
          <property role="TrG5h" value="usingLangModule" />
          <node concept="3Tqbb2" id="7cgOZHrhrRz" role="1tU5fm">
            <ref role="ehGHo" to="hypd:5xDtKQA7vSu" resolve="Module" />
          </node>
          <node concept="2OqwBi" id="7cgOZHrhrSl" role="33vP2m">
            <node concept="2OqwBi" id="7cgOZHrhrRU" role="2Oq$k0">
              <node concept="I4A8Y" id="7cgOZHrhrRZ" role="2OqNvi" />
              <node concept="1YBJjd" id="4WxvFC4UVUT" role="2Oq$k0">
                <ref role="1YBMHb" node="7Pi_Fu5SrKR" resolve="multiline" />
              </node>
            </node>
            <node concept="13u695" id="7cgOZHrhrSq" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="7Pi_Fu5SvK3" role="3cqZAp">
        <node concept="3cpWsn" id="7Pi_Fu5SvK4" role="3cpWs9">
          <property role="TrG5h" value="usingLang" />
          <node concept="3uibUv" id="7Pi_Fu5SvK5" role="1tU5fm">
            <ref role="3uigEE" to="cu2c:~Language" resolve="Language" />
          </node>
          <node concept="2OqwBi" id="7Pi_Fu5SvK6" role="33vP2m">
            <node concept="2YIFZM" id="7Pi_Fu5SvK7" role="2Oq$k0">
              <ref role="37wK5l" to="cu2c:~ModuleRepositoryFacade.getInstance():jetbrains.mps.smodel.ModuleRepositoryFacade" resolve="getInstance" />
              <ref role="1Pybhc" to="cu2c:~ModuleRepositoryFacade" resolve="ModuleRepositoryFacade" />
            </node>
            <node concept="liA8E" id="7Pi_Fu5SvK8" role="2OqNvi">
              <ref role="37wK5l" to="cu2c:~ModuleRepositoryFacade.getModule(java.lang.String,java.lang.Class):org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
              <node concept="2OqwBi" id="7Pi_Fu5SvL0" role="37wK5m">
                <node concept="37vLTw" id="1rfeXz7xsDS" role="2Oq$k0">
                  <ref role="3cqZAo" node="7cgOZHrhrRy" resolve="usingLangModule" />
                </node>
                <node concept="2qgKlT" id="7Pi_Fu5SvLc" role="2OqNvi">
                  <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                </node>
              </node>
              <node concept="3VsKOn" id="7Pi_Fu5SvKc" role="37wK5m">
                <ref role="3VsUkX" to="cu2c:~Language" resolve="Language" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="7Pi_Fu5SvLl" role="3cqZAp">
        <node concept="3clFbS" id="7Pi_Fu5SvLm" role="3clFbx">
          <node concept="3cpWs8" id="7cgOZHrhsfg" role="3cqZAp">
            <node concept="3cpWsn" id="7cgOZHrhsfh" role="3cpWs9">
              <property role="TrG5h" value="moduleToInclude" />
              <node concept="3uibUv" id="51$nbrva9Xb" role="1tU5fm">
                <ref role="3uigEE" to="88zw:~SModule" resolve="SModule" />
              </node>
              <node concept="3rM5sP" id="7cgOZHrhse7" role="33vP2m">
                <property role="3rM5sR" value="dc038ceb-b7ea-4fea-ac12-55f7400e97ba" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7cgOZHrhsf7" role="3cqZAp">
            <node concept="3cpWsn" id="7cgOZHrhsf8" role="3cpWs9">
              <property role="TrG5h" value="isIncluded" />
              <node concept="10P_77" id="7cgOZHrhsf9" role="1tU5fm" />
              <node concept="3clFbT" id="7cgOZHrhsfb" role="33vP2m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="7cgOZHrhseA" role="3cqZAp">
            <node concept="2GrKxI" id="7cgOZHrhseB" role="2Gsz3X">
              <property role="TrG5h" value="runtimeModule" />
            </node>
            <node concept="2OqwBi" id="7cgOZHrhseZ" role="2GsD0m">
              <node concept="37vLTw" id="1rfeXz7xsCU" role="2Oq$k0">
                <ref role="3cqZAo" node="7Pi_Fu5SvK4" resolve="usingLang" />
              </node>
              <node concept="liA8E" id="7cgOZHrhsf5" role="2OqNvi">
                <ref role="37wK5l" to="cu2c:~Language.getRuntimeModulesReferences():java.util.Collection" resolve="getRuntimeModulesReferences" />
              </node>
            </node>
            <node concept="3clFbS" id="7cgOZHrhseD" role="2LFqv$">
              <node concept="3clFbJ" id="7cgOZHrhsfk" role="3cqZAp">
                <node concept="17R0WA" id="7cgOZHrhsg7" role="3clFbw">
                  <node concept="2OqwBi" id="51$nbrvamQy" role="3uHU7B">
                    <node concept="liA8E" id="51$nbrvaoeH" role="2OqNvi">
                      <ref role="37wK5l" to="88zw:~SModuleReference.getModuleId():org.jetbrains.mps.openapi.module.SModuleId" resolve="getModuleId" />
                    </node>
                    <node concept="2GrUjf" id="7cgOZHrhsfn" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7cgOZHrhseB" resolve="runtimeModule" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7cgOZHrhsgv" role="3uHU7w">
                    <node concept="37vLTw" id="1rfeXz7xsBu" role="2Oq$k0">
                      <ref role="3cqZAo" node="7cgOZHrhsfh" resolve="moduleToInclude" />
                    </node>
                    <node concept="liA8E" id="51$nbrvap5j" role="2OqNvi">
                      <ref role="37wK5l" to="88zw:~SModule.getModuleId():org.jetbrains.mps.openapi.module.SModuleId" resolve="getModuleId" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="7cgOZHrhsfm" role="3clFbx">
                  <node concept="3clFbF" id="7cgOZHrhsgA" role="3cqZAp">
                    <node concept="37vLTI" id="7cgOZHrhsgW" role="3clFbG">
                      <node concept="37vLTw" id="1rfeXz7xs$u" role="37vLTJ">
                        <ref role="3cqZAo" node="7cgOZHrhsf8" resolve="isIncluded" />
                      </node>
                      <node concept="3clFbT" id="7cgOZHrhsgZ" role="37vLTx">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="3zACq4" id="7cgOZHrhsh1" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7cgOZHrhsh4" role="3cqZAp">
            <node concept="3clFbS" id="7cgOZHrhsh5" role="3clFbx">
              <node concept="2MkqsV" id="7cgOZHrhshc" role="3cqZAp">
                <node concept="3cpWs3" id="7cgOZHrhsin" role="2MkJ7o">
                  <node concept="Xl_RD" id="7cgOZHrhsiq" role="3uHU7w">
                    <property role="Xl_RC" value=" is not included. Go to Module Properties and add the Solution to the Runtime tab." />
                  </node>
                  <node concept="3cpWs3" id="7cgOZHrhsh$" role="3uHU7B">
                    <node concept="2OqwBi" id="51$nbrvak9r" role="3uHU7w">
                      <node concept="37vLTw" id="1rfeXz7xsGD" role="2Oq$k0">
                        <ref role="3cqZAo" node="7cgOZHrhsfh" resolve="moduleToInclude" />
                      </node>
                      <node concept="liA8E" id="51$nbrvakRq" role="2OqNvi">
                        <ref role="37wK5l" to="88zw:~SModule.getModuleId():org.jetbrains.mps.openapi.module.SModuleId" resolve="getModuleId" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="7cgOZHrhshf" role="3uHU7B">
                      <property role="Xl_RC" value="Runtime Solution " />
                    </node>
                  </node>
                </node>
                <node concept="3Cnw8n" id="7cgOZHrht1h" role="2OEOjU">
                  <property role="ARO6o" value="true" />
                  <ref role="QpYPw" node="4WxvFC4UMYQ" resolve="fix_Runtime" />
                  <node concept="3CnSsL" id="7cgOZHrht1i" role="3Coj4f">
                    <ref role="QkamJ" node="7cgOZHrhsZm" resolve="language" />
                    <node concept="37vLTw" id="1rfeXz7xs_f" role="3CoRuB">
                      <ref role="3cqZAo" node="7Pi_Fu5SvK4" resolve="usingLang" />
                    </node>
                  </node>
                  <node concept="3CnSsL" id="7cgOZHrht1l" role="3Coj4f">
                    <ref role="QkamJ" node="7cgOZHrhsZq" resolve="moduleToAdd" />
                    <node concept="2OqwBi" id="7cgOZHrht1G" role="3CoRuB">
                      <node concept="37vLTw" id="1rfeXz7xsAe" role="2Oq$k0">
                        <ref role="3cqZAo" node="7cgOZHrhsfh" resolve="moduleToInclude" />
                      </node>
                      <node concept="liA8E" id="7cgOZHrht1M" role="2OqNvi">
                        <ref role="37wK5l" to="88zw:~SModule.getModuleReference():org.jetbrains.mps.openapi.module.SModuleReference" resolve="getModuleReference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1YBJjd" id="4WxvFC4UVUV" role="2OEOjV">
                  <ref role="1YBMHb" node="7Pi_Fu5SrKR" resolve="multiline" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="7cgOZHrhsha" role="3clFbw">
              <node concept="37vLTw" id="1rfeXz7xsDL" role="3fr31v">
                <ref role="3cqZAo" node="7cgOZHrhsf8" resolve="isIncluded" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3y3z36" id="7Pi_Fu5SvLO" role="3clFbw">
          <node concept="37vLTw" id="1rfeXz7xsCW" role="3uHU7B">
            <ref role="3cqZAo" node="7Pi_Fu5SvK4" resolve="usingLang" />
          </node>
          <node concept="10Nm6u" id="7Pi_Fu5SvLR" role="3uHU7w" />
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="7Pi_Fu5SrKR" role="1YuTPh">
      <property role="TrG5h" value="multiline" />
      <ref role="1YaFvo" to="wap1:6Wsm6VK0e7v" resolve="CellModel_Multiline" />
    </node>
  </node>
  <node concept="Q5z_Y" id="4WxvFC4UMYQ">
    <property role="TrG5h" value="fix_Runtime" />
    <node concept="Q6JDH" id="7cgOZHrhsZm" role="Q6Id_">
      <property role="TrG5h" value="language" />
      <node concept="3uibUv" id="7cgOZHrhsZo" role="Q6QK4">
        <ref role="3uigEE" to="cu2c:~Language" resolve="Language" />
      </node>
    </node>
    <node concept="Q6JDH" id="7cgOZHrhsZq" role="Q6Id_">
      <property role="TrG5h" value="moduleToAdd" />
      <node concept="3uibUv" id="51$nbrvacMi" role="Q6QK4">
        <ref role="3uigEE" to="88zw:~SModuleReference" resolve="SModuleReference" />
      </node>
    </node>
    <node concept="Q5ZZ6" id="4WxvFC4UMYR" role="Q6x$H">
      <node concept="3clFbS" id="4WxvFC4UMYS" role="2VODD2">
        <node concept="3clFbF" id="7cgOZHrhsZt" role="3cqZAp">
          <node concept="2OqwBi" id="7cgOZHrht0F" role="3clFbG">
            <node concept="2OqwBi" id="7cgOZHrht0g" role="2Oq$k0">
              <node concept="2OqwBi" id="7cgOZHrhsZN" role="2Oq$k0">
                <node concept="QwW4i" id="7cgOZHrhsZu" role="2Oq$k0">
                  <ref role="QwW4h" node="7cgOZHrhsZm" resolve="language" />
                </node>
                <node concept="liA8E" id="7cgOZHrhsZT" role="2OqNvi">
                  <ref role="37wK5l" to="cu2c:~Language.getModuleDescriptor():jetbrains.mps.project.structure.modules.LanguageDescriptor" resolve="getModuleDescriptor" />
                </node>
              </node>
              <node concept="liA8E" id="7cgOZHrht0m" role="2OqNvi">
                <ref role="37wK5l" to="kqhl:~LanguageDescriptor.getRuntimeModules():java.util.Set" resolve="getRuntimeModules" />
              </node>
            </node>
            <node concept="liA8E" id="7cgOZHrht0L" role="2OqNvi">
              <ref role="37wK5l" to="k7g3:~Set.add(java.lang.Object):boolean" resolve="add" />
              <node concept="QwW4i" id="7cgOZHrht0M" role="37wK5m">
                <ref role="QwW4h" node="7cgOZHrhsZq" resolve="moduleToAdd" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="QznSV" id="4WxvFC4UU0x" role="QzAvj">
      <node concept="3clFbS" id="4WxvFC4UU0y" role="2VODD2">
        <node concept="3clFbF" id="7cgOZHrhsZd" role="3cqZAp">
          <node concept="Xl_RD" id="7cgOZHrhsZe" role="3clFbG">
            <property role="Xl_RC" value="Include runtime solution for multiline component" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

