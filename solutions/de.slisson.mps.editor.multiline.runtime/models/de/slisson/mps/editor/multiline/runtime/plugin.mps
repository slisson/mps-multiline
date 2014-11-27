<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6279123c-1afa-4558-a1ea-b7f095eca0f3(de.slisson.mps.editor.multiline.runtime.plugin)" concise="true">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="-1" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="-1" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
  </languages>
  <imports>
    <import index="9a8" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.nodeEditor(MPS.Editor/jetbrains.mps.nodeEditor@java_stub)" />
    <import index="jxum" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.nodeEditor.selection(MPS.Editor/jetbrains.mps.nodeEditor.selection@java_stub)" />
    <import index="1d7m" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.ide.editor(MPS.Editor/jetbrains.mps.ide.editor@java_stub)" />
    <import index="93vl" ref="r:ea46d830-b6c1-459f-bca3-d44c20d00c02(de.slisson.mps.editor.multiline.cells)" />
    <import index="1t7x" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.awt(JDK/java.awt@java_stub)" />
    <import index="4ky7" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.nodeEditor.cellMenu(MPS.Editor/jetbrains.mps.nodeEditor.cellMenu@java_stub)" />
    <import index="to5d" ref="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.logging(MPS.Core/jetbrains.mps.logging@java_stub)" />
    <import index="nu8v" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.openapi.editor.cells(MPS.Editor/jetbrains.mps.openapi.editor.cells@java_stub)" />
    <import index="y596" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.openapi.editor.selection(MPS.Editor/jetbrains.mps.openapi.editor.selection@java_stub)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tp4f" ref="r:00000000-0000-4000-0000-011c89590373(jetbrains.mps.baseLanguage.classifiers.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="tgbt" ref="r:c70ee934-afb1-4c02-b6a9-1c4d1908a792(jetbrains.mps.lang.plugin.standalone.structure)" implicit="true" />
    <import index="tp4k" ref="r:00000000-0000-4000-0000-011c89590368(jetbrains.mps.lang.plugin.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207318242772" name="jetbrains.mps.lang.plugin.structure.KeyMapKeystroke" flags="ng" index="pLAjd">
        <property id="1207318242773" name="modifiers" index="pLAjc" />
        <property id="1207318242774" name="keycode" index="pLAjf" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1562714432501166198" name="jetbrains.mps.lang.plugin.structure.SimpleShortcutChange" flags="lg" index="Zd509">
        <child id="1562714432501166206" name="keystroke" index="Zd501" />
      </concept>
      <concept id="1562714432501166197" name="jetbrains.mps.lang.plugin.structure.KeymapChangesDeclaration" flags="ng" index="Zd50a">
        <child id="1562714432501166199" name="shortcutChange" index="Zd508" />
      </concept>
      <concept id="6193305307616715384" name="jetbrains.mps.lang.plugin.structure.ShortcutChange" flags="lg" index="1bYyw_">
        <reference id="6193305307616734326" name="action" index="1bYAoF" />
      </concept>
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
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
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
    </language>
  </registry>
  <node concept="Zd50a" id="2dxKnIw_bO$">
    <property role="TrG5h" value="Default" />
    <node concept="Zd509" id="2dxKnIw_bO_" role="Zd508">
      <ref role="1bYAoF" node="2dxKnIw_bOD" resolve="SelectWordLeft" />
      <node concept="pLAjd" id="2dxKnIw_bOA" role="Zd501">
        <property role="pLAjc" value="shift" />
        <property role="pLAjf" value="VK_LEFT" />
      </node>
    </node>
    <node concept="Zd509" id="2dxKnIw_bOB" role="Zd508">
      <ref role="1bYAoF" node="2dxKnIw_bPk" resolve="SelectWordRight" />
      <node concept="pLAjd" id="2dxKnIw_bOC" role="Zd501">
        <property role="pLAjc" value="shift" />
        <property role="pLAjf" value="VK_RIGHT" />
      </node>
    </node>
    <node concept="Zd509" id="357GqcbsBkg" role="Zd508">
      <ref role="1bYAoF" node="357GqcbsZ0Q" resolve="DeleteWord" />
      <node concept="pLAjd" id="357GqcbsBki" role="Zd501">
        <property role="pLAjc" value="alt" />
        <property role="pLAjf" value="VK_BACK_SPACE" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="2dxKnIw_bOD">
    <property role="TrG5h" value="SelectWordLeft" />
    <property role="2uzpH1" value="Left with Selection" />
    <node concept="tnohg" id="2dxKnIw_bOE" role="tncku">
      <node concept="3clFbS" id="2dxKnIw_bOF" role="2VODD2">
        <node concept="3clFbF" id="2dxKnIw_bOG" role="3cqZAp">
          <node concept="2OqwBi" id="2dxKnIw_bOH" role="3clFbG">
            <node concept="2OqwBi" id="2dxKnIw_bOI" role="2Oq$k0">
              <node concept="2OqwBi" id="2dxKnIw_bOJ" role="2Oq$k0">
                <node concept="2OqwBi" id="2dxKnIw_bOK" role="2Oq$k0">
                  <node concept="2WthIp" id="2dxKnIw_bOL" role="2Oq$k0" />
                  <node concept="1DTwFV" id="2dxKnIw_bOM" role="2OqNvi">
                    <ref role="2WH_rO" node="2dxKnIw_bOR" resolve="editorComponent" />
                  </node>
                </node>
                <node concept="liA8E" id="2dxKnIw_bON" role="2OqNvi">
                  <ref role="37wK5l" to="9a8:~EditorComponent.getSelectionManager():jetbrains.mps.openapi.editor.selection.SelectionManager" resolve="getSelectionManager" />
                </node>
              </node>
              <node concept="liA8E" id="2dxKnIw_bOO" role="2OqNvi">
                <ref role="37wK5l" to="y596:~SelectionManager.getSelection():jetbrains.mps.openapi.editor.selection.Selection" resolve="getSelection" />
              </node>
            </node>
            <node concept="liA8E" id="2dxKnIw_bOP" role="2OqNvi">
              <ref role="37wK5l" to="y596:~Selection.executeAction(jetbrains.mps.openapi.editor.cells.CellActionType):void" resolve="executeAction" />
              <node concept="Rm8GO" id="51$nbryIpJ4" role="37wK5m">
                <ref role="Rm8GQ" to="nu8v:~CellActionType.SELECT_LEFT" resolve="SELECT_LEFT" />
                <ref role="1Px2BO" to="nu8v:~CellActionType" resolve="CellActionType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="2dxKnIw_bOR" role="1NuT2Z">
      <property role="TrG5h" value="editorComponent" />
      <ref role="1DUlNI" to="1d7m:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="2dxKnIw_bOS" role="1oa70y" />
    </node>
    <node concept="2ScWuX" id="2dxKnIw_bOT" role="tmbBb">
      <node concept="3clFbS" id="2dxKnIw_bOU" role="2VODD2">
        <node concept="3SKdUt" id="2dxKnIw_ijw" role="3cqZAp">
          <node concept="3SKdUq" id="2dxKnIw_ijx" role="3SKWNk">
            <property role="3SKdUp" value=" similar to SelectLeft action from MPS. Most probably this case should be handled there in future" />
          </node>
        </node>
        <node concept="3clFbJ" id="11MD$rT$uDY" role="3cqZAp">
          <node concept="3clFbS" id="11MD$rT$uDZ" role="3clFbx">
            <node concept="3cpWs6" id="11MD$rT$uEF" role="3cqZAp">
              <node concept="3clFbT" id="11MD$rT$uEH" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="11MD$rT$uF2" role="3clFbw">
            <node concept="3fqX7Q" id="11MD$rT$uE_" role="3uHU7B">
              <node concept="2OqwBi" id="11MD$rT$uEA" role="3fr31v">
                <node concept="2OqwBi" id="11MD$rT$uEB" role="2Oq$k0">
                  <node concept="2WthIp" id="11MD$rT$uEC" role="2Oq$k0" />
                  <node concept="1DTwFV" id="11MD$rT$uED" role="2OqNvi">
                    <ref role="2WH_rO" node="2dxKnIw_bOR" resolve="editorComponent" />
                  </node>
                </node>
                <node concept="liA8E" id="11MD$rT$uEE" role="2OqNvi">
                  <ref role="37wK5l" to="1t7x:~Component.isFocusOwner():boolean" resolve="isFocusOwner" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="11MD$rT$uF5" role="3uHU7w">
              <node concept="2OqwBi" id="11MD$rT$uF6" role="2Oq$k0">
                <node concept="2OqwBi" id="11MD$rT$uF7" role="2Oq$k0">
                  <node concept="2WthIp" id="11MD$rT$uF8" role="2Oq$k0" />
                  <node concept="1DTwFV" id="11MD$rT$uF9" role="2OqNvi">
                    <ref role="2WH_rO" node="2dxKnIw_bOR" resolve="editorComponent" />
                  </node>
                </node>
                <node concept="liA8E" id="11MD$rT$uFa" role="2OqNvi">
                  <ref role="37wK5l" to="9a8:~EditorComponent.getNodeSubstituteChooser():jetbrains.mps.nodeEditor.cellMenu.NodeSubstituteChooser" resolve="getNodeSubstituteChooser" />
                </node>
              </node>
              <node concept="liA8E" id="11MD$rT$uFb" role="2OqNvi">
                <ref role="37wK5l" to="4ky7:~NodeSubstituteChooser.isVisible():boolean" resolve="isVisible" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11MD$rT$uFg" role="3cqZAp">
          <node concept="3cpWsn" id="11MD$rT$uFh" role="3cpWs9">
            <property role="TrG5h" value="selection" />
            <node concept="3uibUv" id="6tOcB$Jlo0l" role="1tU5fm">
              <ref role="3uigEE" to="y596:~Selection" resolve="Selection" />
            </node>
            <node concept="2OqwBi" id="11MD$rT$uFk" role="33vP2m">
              <node concept="2OqwBi" id="11MD$rT$uFl" role="2Oq$k0">
                <node concept="2OqwBi" id="11MD$rT$uFm" role="2Oq$k0">
                  <node concept="2WthIp" id="11MD$rT$uFn" role="2Oq$k0" />
                  <node concept="1DTwFV" id="11MD$rT$uFo" role="2OqNvi">
                    <ref role="2WH_rO" node="2dxKnIw_bOR" resolve="editorComponent" />
                  </node>
                </node>
                <node concept="liA8E" id="11MD$rT$uFp" role="2OqNvi">
                  <ref role="37wK5l" to="9a8:~EditorComponent.getSelectionManager():jetbrains.mps.openapi.editor.selection.SelectionManager" resolve="getSelectionManager" />
                </node>
              </node>
              <node concept="liA8E" id="11MD$rT$uFq" role="2OqNvi">
                <ref role="37wK5l" to="y596:~SelectionManager.getSelection():jetbrains.mps.openapi.editor.selection.Selection" resolve="getSelection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="11MD$rT$uFt" role="3cqZAp">
          <node concept="3clFbS" id="11MD$rT$uFu" role="3clFbx">
            <node concept="3cpWs6" id="11MD$rT$uG0" role="3cqZAp">
              <node concept="3clFbT" id="11MD$rT$uG2" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="11MD$rT$uFW" role="3clFbw">
            <node concept="2ZW3vV" id="11MD$rT$uFX" role="3fr31v">
              <node concept="37vLTw" id="1rfeXz7xs$r" role="2ZW6bz">
                <ref role="3cqZAo" node="11MD$rT$uFh" resolve="selection" />
              </node>
              <node concept="3uibUv" id="11MD$rT$uFY" role="2ZW6by">
                <ref role="3uigEE" to="93vl:4iNMa1cpqSV" resolve="MultilineSelection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11MD$rT$uG6" role="3cqZAp">
          <node concept="3cpWsn" id="11MD$rT$uG7" role="3cpWs9">
            <property role="TrG5h" value="multilineSelection" />
            <node concept="3uibUv" id="11MD$rT$uG8" role="1tU5fm">
              <ref role="3uigEE" to="93vl:4iNMa1cpqSV" resolve="MultilineSelection" />
            </node>
            <node concept="10QFUN" id="11MD$rT$uGa" role="33vP2m">
              <node concept="37vLTw" id="1rfeXz7xsHO" role="10QFUP">
                <ref role="3cqZAo" node="11MD$rT$uFh" resolve="selection" />
              </node>
              <node concept="3uibUv" id="11MD$rT$uGb" role="10QFUM">
                <ref role="3uigEE" to="93vl:4iNMa1cpqSV" resolve="MultilineSelection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="11MD$rT$uGl" role="3cqZAp">
          <node concept="3y3z36" id="635SBilAGv0" role="3cqZAk">
            <node concept="2OqwBi" id="635SBilAGv1" role="3uHU7B">
              <node concept="37vLTw" id="1rfeXz7xsAN" role="2Oq$k0">
                <ref role="3cqZAo" node="11MD$rT$uG7" resolve="multilineSelection" />
              </node>
              <node concept="liA8E" id="635SBilAGv3" role="2OqNvi">
                <ref role="37wK5l" to="93vl:11MD$rT$uI5" resolve="getSelectionEnd" />
              </node>
            </node>
            <node concept="3cmrfG" id="635SBilAGv4" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="635SBilAGuL" role="3cqZAp" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="2dxKnIw_bPk">
    <property role="TrG5h" value="SelectWordRight" />
    <property role="2uzpH1" value="Right with Selection" />
    <node concept="1DS2jV" id="2dxKnIw_bPl" role="1NuT2Z">
      <property role="TrG5h" value="editorComponent" />
      <ref role="1DUlNI" to="1d7m:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="2dxKnIw_bPm" role="1oa70y" />
    </node>
    <node concept="tnohg" id="2dxKnIw_bPn" role="tncku">
      <node concept="3clFbS" id="2dxKnIw_bPo" role="2VODD2">
        <node concept="3clFbF" id="2dxKnIw_bPp" role="3cqZAp">
          <node concept="2OqwBi" id="2dxKnIw_bPq" role="3clFbG">
            <node concept="2OqwBi" id="2dxKnIw_bPr" role="2Oq$k0">
              <node concept="2OqwBi" id="2dxKnIw_bPs" role="2Oq$k0">
                <node concept="2OqwBi" id="2dxKnIw_bPt" role="2Oq$k0">
                  <node concept="2WthIp" id="2dxKnIw_bPu" role="2Oq$k0" />
                  <node concept="1DTwFV" id="2dxKnIw_bPv" role="2OqNvi">
                    <ref role="2WH_rO" node="2dxKnIw_bPl" resolve="editorComponent" />
                  </node>
                </node>
                <node concept="liA8E" id="2dxKnIw_bPw" role="2OqNvi">
                  <ref role="37wK5l" to="9a8:~EditorComponent.getSelectionManager():jetbrains.mps.openapi.editor.selection.SelectionManager" resolve="getSelectionManager" />
                </node>
              </node>
              <node concept="liA8E" id="2dxKnIw_bPx" role="2OqNvi">
                <ref role="37wK5l" to="y596:~SelectionManager.getSelection():jetbrains.mps.openapi.editor.selection.Selection" resolve="getSelection" />
              </node>
            </node>
            <node concept="liA8E" id="2dxKnIw_bPy" role="2OqNvi">
              <ref role="37wK5l" to="y596:~Selection.executeAction(jetbrains.mps.openapi.editor.cells.CellActionType):void" resolve="executeAction" />
              <node concept="Rm8GO" id="51$nbryIs1s" role="37wK5m">
                <ref role="Rm8GQ" to="nu8v:~CellActionType.SELECT_RIGHT" resolve="SELECT_RIGHT" />
                <ref role="1Px2BO" to="nu8v:~CellActionType" resolve="CellActionType" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="2dxKnIw_bP$" role="tmbBb">
      <node concept="3clFbS" id="2dxKnIw_bP_" role="2VODD2">
        <node concept="3SKdUt" id="635SBilAYVG" role="3cqZAp">
          <node concept="3SKdUq" id="635SBilAYVH" role="3SKWNk">
            <property role="3SKdUp" value=" similar to SelectLeft action from MPS. Most probably this case should be handled there in future" />
          </node>
        </node>
        <node concept="3clFbJ" id="635SBilAYVI" role="3cqZAp">
          <node concept="3clFbS" id="635SBilAYVJ" role="3clFbx">
            <node concept="3cpWs6" id="635SBilAYVK" role="3cqZAp">
              <node concept="3clFbT" id="635SBilAYVL" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="635SBilAYVM" role="3clFbw">
            <node concept="3fqX7Q" id="635SBilAYVN" role="3uHU7B">
              <node concept="2OqwBi" id="635SBilAYVO" role="3fr31v">
                <node concept="2OqwBi" id="635SBilAYVP" role="2Oq$k0">
                  <node concept="2WthIp" id="635SBilAYVQ" role="2Oq$k0" />
                  <node concept="1DTwFV" id="635SBilAYVR" role="2OqNvi">
                    <ref role="2WH_rO" node="2dxKnIw_bPl" resolve="editorComponent" />
                  </node>
                </node>
                <node concept="liA8E" id="635SBilAYVS" role="2OqNvi">
                  <ref role="37wK5l" to="1t7x:~Component.isFocusOwner():boolean" resolve="isFocusOwner" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="635SBilAYVT" role="3uHU7w">
              <node concept="2OqwBi" id="635SBilAYVU" role="2Oq$k0">
                <node concept="2OqwBi" id="635SBilAYVV" role="2Oq$k0">
                  <node concept="2WthIp" id="635SBilAYVW" role="2Oq$k0" />
                  <node concept="1DTwFV" id="635SBilAYVX" role="2OqNvi">
                    <ref role="2WH_rO" node="2dxKnIw_bPl" resolve="editorComponent" />
                  </node>
                </node>
                <node concept="liA8E" id="635SBilAYVY" role="2OqNvi">
                  <ref role="37wK5l" to="9a8:~EditorComponent.getNodeSubstituteChooser():jetbrains.mps.nodeEditor.cellMenu.NodeSubstituteChooser" resolve="getNodeSubstituteChooser" />
                </node>
              </node>
              <node concept="liA8E" id="635SBilAYVZ" role="2OqNvi">
                <ref role="37wK5l" to="4ky7:~NodeSubstituteChooser.isVisible():boolean" resolve="isVisible" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="635SBilAYW0" role="3cqZAp">
          <node concept="3cpWsn" id="635SBilAYW1" role="3cpWs9">
            <property role="TrG5h" value="selection" />
            <node concept="3uibUv" id="635SBilAYW2" role="1tU5fm">
              <ref role="3uigEE" to="y596:~Selection" resolve="Selection" />
            </node>
            <node concept="2OqwBi" id="635SBilAYW3" role="33vP2m">
              <node concept="2OqwBi" id="635SBilAYW4" role="2Oq$k0">
                <node concept="2OqwBi" id="635SBilAYW5" role="2Oq$k0">
                  <node concept="2WthIp" id="635SBilAYW6" role="2Oq$k0" />
                  <node concept="1DTwFV" id="635SBilAYW7" role="2OqNvi">
                    <ref role="2WH_rO" node="2dxKnIw_bPl" resolve="editorComponent" />
                  </node>
                </node>
                <node concept="liA8E" id="635SBilAYW8" role="2OqNvi">
                  <ref role="37wK5l" to="9a8:~EditorComponent.getSelectionManager():jetbrains.mps.openapi.editor.selection.SelectionManager" resolve="getSelectionManager" />
                </node>
              </node>
              <node concept="liA8E" id="635SBilAYW9" role="2OqNvi">
                <ref role="37wK5l" to="y596:~SelectionManager.getSelection():jetbrains.mps.openapi.editor.selection.Selection" resolve="getSelection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="635SBilAYWa" role="3cqZAp">
          <node concept="3clFbS" id="635SBilAYWb" role="3clFbx">
            <node concept="3cpWs6" id="635SBilAYWc" role="3cqZAp">
              <node concept="3clFbT" id="635SBilAYWd" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="635SBilAYWe" role="3clFbw">
            <node concept="2ZW3vV" id="635SBilAYWf" role="3fr31v">
              <node concept="37vLTw" id="1rfeXz7xsAP" role="2ZW6bz">
                <ref role="3cqZAo" node="635SBilAYW1" resolve="selection" />
              </node>
              <node concept="3uibUv" id="635SBilAYWg" role="2ZW6by">
                <ref role="3uigEE" to="93vl:4iNMa1cpqSV" resolve="MultilineSelection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="635SBilAYWi" role="3cqZAp">
          <node concept="3cpWsn" id="635SBilAYWj" role="3cpWs9">
            <property role="TrG5h" value="multilineSelection" />
            <node concept="3uibUv" id="635SBilAYWk" role="1tU5fm">
              <ref role="3uigEE" to="93vl:4iNMa1cpqSV" resolve="MultilineSelection" />
            </node>
            <node concept="10QFUN" id="635SBilAYWl" role="33vP2m">
              <node concept="37vLTw" id="1rfeXz7xs$g" role="10QFUP">
                <ref role="3cqZAo" node="635SBilAYW1" resolve="selection" />
              </node>
              <node concept="3uibUv" id="635SBilAYWm" role="10QFUM">
                <ref role="3uigEE" to="93vl:4iNMa1cpqSV" resolve="MultilineSelection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="635SBilAYWo" role="3cqZAp">
          <node concept="3y3z36" id="635SBilAYWp" role="3cqZAk">
            <node concept="2OqwBi" id="635SBilAYWq" role="3uHU7B">
              <node concept="37vLTw" id="1rfeXz7xsDR" role="2Oq$k0">
                <ref role="3cqZAo" node="635SBilAYWj" resolve="multilineSelection" />
              </node>
              <node concept="liA8E" id="635SBilAYWs" role="2OqNvi">
                <ref role="37wK5l" to="93vl:11MD$rT$uI5" resolve="getSelectionEnd" />
              </node>
            </node>
            <node concept="2OqwBi" id="635SBilAYWV" role="3uHU7w">
              <node concept="2OqwBi" id="635SBilAYWI" role="2Oq$k0">
                <node concept="37vLTw" id="1rfeXz7xsGp" role="2Oq$k0">
                  <ref role="3cqZAo" node="635SBilAYWj" resolve="multilineSelection" />
                </node>
                <node concept="liA8E" id="635SBilAYWO" role="2OqNvi">
                  <ref role="37wK5l" to="93vl:11MD$rT$ypZ" resolve="getMultilineCell" />
                </node>
              </node>
              <node concept="liA8E" id="635SBilAYX1" role="2OqNvi">
                <ref role="37wK5l" to="93vl:2_D0AvWRp36" resolve="getTextLength" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="2dxKnIw_bPZ" />
  <node concept="sE7Ow" id="357GqcbsZ0Q">
    <property role="TrG5h" value="DeleteWord" />
    <property role="2uzpH1" value="Delete Word" />
    <node concept="1DS2jV" id="357GqcbsZ0U" role="1NuT2Z">
      <property role="TrG5h" value="editorComponent" />
      <ref role="1DUlNI" to="1d7m:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
      <node concept="1oajcY" id="357GqcbsZ0V" role="1oa70y" />
    </node>
    <node concept="tnohg" id="357GqcbsZ0W" role="tncku">
      <node concept="3clFbS" id="357GqcbsZ0X" role="2VODD2">
        <node concept="3cpWs8" id="357GqcbsZ0Y" role="3cqZAp">
          <node concept="3cpWsn" id="357GqcbsZ0Z" role="3cpWs9">
            <property role="TrG5h" value="selectionManager" />
            <node concept="3uibUv" id="357GqcbsZ10" role="1tU5fm">
              <ref role="3uigEE" to="y596:~SelectionManager" resolve="SelectionManager" />
            </node>
            <node concept="2OqwBi" id="357GqcbsZ11" role="33vP2m">
              <node concept="2OqwBi" id="357GqcbsZ12" role="2Oq$k0">
                <node concept="2WthIp" id="357GqcbsZ13" role="2Oq$k0" />
                <node concept="1DTwFV" id="357GqcbsZ14" role="2OqNvi">
                  <ref role="2WH_rO" node="357GqcbsZ0U" resolve="editorComponent" />
                </node>
              </node>
              <node concept="liA8E" id="357GqcbsZ15" role="2OqNvi">
                <ref role="37wK5l" to="9a8:~EditorComponent.getSelectionManager():jetbrains.mps.openapi.editor.selection.SelectionManager" resolve="getSelectionManager" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="357GqcbsZ16" role="3cqZAp">
          <node concept="3cpWsn" id="357GqcbsZ17" role="3cpWs9">
            <property role="TrG5h" value="selection" />
            <node concept="3uibUv" id="357GqcbsZ18" role="1tU5fm">
              <ref role="3uigEE" to="jxum:~EditorCellLabelSelection" resolve="EditorCellLabelSelection" />
            </node>
            <node concept="0kSF2" id="357GqcbsZ19" role="33vP2m">
              <node concept="3uibUv" id="357GqcbsZ1a" role="0kSFW">
                <ref role="3uigEE" to="jxum:~EditorCellLabelSelection" resolve="EditorCellLabelSelection" />
              </node>
              <node concept="2OqwBi" id="357GqcbsZ1b" role="0kSFX">
                <node concept="37vLTw" id="357GqcbsZ1c" role="2Oq$k0">
                  <ref role="3cqZAo" node="357GqcbsZ0Z" resolve="selectionManager" />
                </node>
                <node concept="liA8E" id="357GqcbsZ1d" role="2OqNvi">
                  <ref role="37wK5l" to="y596:~SelectionManager.getSelection():jetbrains.mps.openapi.editor.selection.Selection" resolve="getSelection" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="357GqcbsZ1e" role="3cqZAp">
          <node concept="3clFbS" id="357GqcbsZ1f" role="3clFbx">
            <node concept="3cpWs6" id="357GqcbsZ1g" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="357GqcbsZ1h" role="3clFbw">
            <node concept="10Nm6u" id="357GqcbsZ1i" role="3uHU7w" />
            <node concept="37vLTw" id="357GqcbsZ1j" role="3uHU7B">
              <ref role="3cqZAo" node="357GqcbsZ17" resolve="selection" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="357GqcbsZ1k" role="3cqZAp">
          <node concept="3cpWsn" id="357GqcbsZ1l" role="3cpWs9">
            <property role="TrG5h" value="wordCell" />
            <node concept="3uibUv" id="357GqcbsZ1m" role="1tU5fm">
              <ref role="3uigEE" to="93vl:5lTqPuSd937" resolve="EditorCell_Word" />
            </node>
            <node concept="10QFUN" id="357GqcbsZ1n" role="33vP2m">
              <node concept="2OqwBi" id="357GqcbsZ1o" role="10QFUP">
                <node concept="37vLTw" id="357GqcbsZ1p" role="2Oq$k0">
                  <ref role="3cqZAo" node="357GqcbsZ17" resolve="selection" />
                </node>
                <node concept="liA8E" id="357GqcbsZ1q" role="2OqNvi">
                  <ref role="37wK5l" to="jxum:~EditorCellLabelSelection.getEditorCellLabel():jetbrains.mps.openapi.editor.cells.EditorCell_Label" resolve="getEditorCellLabel" />
                </node>
              </node>
              <node concept="3uibUv" id="357GqcbsZ1r" role="10QFUM">
                <ref role="3uigEE" to="93vl:5lTqPuSd937" resolve="EditorCell_Word" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="357GqcbsZ1s" role="3cqZAp">
          <node concept="2OqwBi" id="357GqcbsZ1t" role="3clFbG">
            <node concept="37vLTw" id="357GqcbsZ1u" role="2Oq$k0">
              <ref role="3cqZAo" node="357GqcbsZ1l" resolve="wordCell" />
            </node>
            <node concept="liA8E" id="357GqcbsZ1v" role="2OqNvi">
              <ref role="37wK5l" to="93vl:357GqcbplaG" resolve="deleteWord" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="357GqcbsZ1z" role="tmbBb">
      <node concept="3clFbS" id="357GqcbsZ1$" role="2VODD2">
        <node concept="3cpWs8" id="357GqcbsZ1_" role="3cqZAp">
          <node concept="3cpWsn" id="357GqcbsZ1A" role="3cpWs9">
            <property role="TrG5h" value="selectionManager" />
            <node concept="3uibUv" id="357GqcbsZ1B" role="1tU5fm">
              <ref role="3uigEE" to="y596:~SelectionManager" resolve="SelectionManager" />
            </node>
            <node concept="2OqwBi" id="357GqcbsZ1C" role="33vP2m">
              <node concept="2OqwBi" id="357GqcbsZ1D" role="2Oq$k0">
                <node concept="2WthIp" id="357GqcbsZ1E" role="2Oq$k0" />
                <node concept="1DTwFV" id="357GqcbsZ1F" role="2OqNvi">
                  <ref role="2WH_rO" node="357GqcbsZ0U" resolve="editorComponent" />
                </node>
              </node>
              <node concept="liA8E" id="357GqcbsZ1G" role="2OqNvi">
                <ref role="37wK5l" to="9a8:~EditorComponent.getSelectionManager():jetbrains.mps.openapi.editor.selection.SelectionManager" resolve="getSelectionManager" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="357GqcbsZ1H" role="3cqZAp">
          <node concept="3cpWsn" id="357GqcbsZ1I" role="3cpWs9">
            <property role="TrG5h" value="selection" />
            <node concept="3uibUv" id="357GqcbsZ1J" role="1tU5fm">
              <ref role="3uigEE" to="jxum:~EditorCellLabelSelection" resolve="EditorCellLabelSelection" />
            </node>
            <node concept="0kSF2" id="357GqcbsZ1K" role="33vP2m">
              <node concept="3uibUv" id="357GqcbsZ1L" role="0kSFW">
                <ref role="3uigEE" to="jxum:~EditorCellLabelSelection" resolve="EditorCellLabelSelection" />
              </node>
              <node concept="2OqwBi" id="357GqcbsZ1M" role="0kSFX">
                <node concept="37vLTw" id="357GqcbsZ1N" role="2Oq$k0">
                  <ref role="3cqZAo" node="357GqcbsZ1A" resolve="selectionManager" />
                </node>
                <node concept="liA8E" id="357GqcbsZ1O" role="2OqNvi">
                  <ref role="37wK5l" to="y596:~SelectionManager.getSelection():jetbrains.mps.openapi.editor.selection.Selection" resolve="getSelection" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="357GqcbsZ1P" role="3cqZAp">
          <node concept="3clFbS" id="357GqcbsZ1Q" role="3clFbx">
            <node concept="3cpWs6" id="357GqcbsZ1R" role="3cqZAp">
              <node concept="3clFbT" id="357GqcbsZ1S" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="357GqcbsZ1T" role="3clFbw">
            <node concept="10Nm6u" id="357GqcbsZ1U" role="3uHU7w" />
            <node concept="37vLTw" id="357GqcbsZ1V" role="3uHU7B">
              <ref role="3cqZAo" node="357GqcbsZ1I" resolve="selection" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="357GqcbsZ1W" role="3cqZAp">
          <node concept="1Wc70l" id="357GqcbsZ1X" role="3cqZAk">
            <node concept="2ZW3vV" id="357GqcbsZ1Y" role="3uHU7w">
              <node concept="3uibUv" id="357GqcbsZ1Z" role="2ZW6by">
                <ref role="3uigEE" to="93vl:5lTqPuSd937" resolve="EditorCell_Word" />
              </node>
              <node concept="2OqwBi" id="357GqcbsZ20" role="2ZW6bz">
                <node concept="37vLTw" id="357GqcbsZ21" role="2Oq$k0">
                  <ref role="3cqZAo" node="357GqcbsZ1I" resolve="selection" />
                </node>
                <node concept="liA8E" id="357GqcbsZ22" role="2OqNvi">
                  <ref role="37wK5l" to="jxum:~EditorCellLabelSelection.getEditorCellLabel():jetbrains.mps.openapi.editor.cells.EditorCell_Label" resolve="getEditorCellLabel" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="357GqcbsZ23" role="3uHU7B">
              <node concept="2OqwBi" id="357GqcbsZ24" role="3uHU7B">
                <node concept="37vLTw" id="357GqcbsZ25" role="2Oq$k0">
                  <ref role="3cqZAo" node="357GqcbsZ1I" resolve="selection" />
                </node>
                <node concept="liA8E" id="357GqcbsZ26" role="2OqNvi">
                  <ref role="37wK5l" to="jxum:~EditorCellLabelSelection.getSelectionStart():int" resolve="getSelectionStart" />
                </node>
              </node>
              <node concept="2OqwBi" id="357GqcbsZ27" role="3uHU7w">
                <node concept="37vLTw" id="357GqcbsZ28" role="2Oq$k0">
                  <ref role="3cqZAo" node="357GqcbsZ1I" resolve="selection" />
                </node>
                <node concept="liA8E" id="357GqcbsZ29" role="2OqNvi">
                  <ref role="37wK5l" to="jxum:~EditorCellLabelSelection.getSelectionEnd():int" resolve="getSelectionEnd" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

