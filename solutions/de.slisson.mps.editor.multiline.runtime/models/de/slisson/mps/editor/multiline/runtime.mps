<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f19691e5-cdba-471c-b59a-00d5ff7aea1c(de.slisson.mps.editor.multiline.runtime)" concise="true">
  <persistence version="9" />
  <languages>
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
  </languages>
  <imports>
    <import index="tt4m" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.awt.datatransfer(JDK/java.awt.datatransfer@java_stub)" />
    <import index="fxg7" ref="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" />
    <import index="9a8" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.nodeEditor(MPS.Editor/jetbrains.mps.nodeEditor@java_stub)" />
    <import index="jsgz" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.nodeEditor.cells(MPS.Editor/jetbrains.mps.nodeEditor.cells@java_stub)" />
    <import index="srng" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.openapi.editor(MPS.Editor/jetbrains.mps.openapi.editor@java_stub)" />
    <import index="jxum" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.nodeEditor.selection(MPS.Editor/jetbrains.mps.nodeEditor.selection@java_stub)" />
    <import index="nu8v" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.openapi.editor.cells(MPS.Editor/jetbrains.mps.openapi.editor.cells@java_stub)" />
    <import index="4xk" ref="f:java_stub#498d89d2-c2e9-11e2-ad49-6cf049e62fe5#com.intellij.ide(MPS.IDEA/com.intellij.ide@java_stub)" />
    <import index="v2t1" ref="f:java_stub#b0f8641f-bd77-4421-8425-30d9088a82f7#org.apache.commons.lang3(org.apache.commons/org.apache.commons.lang3@java_stub)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="tp2q" ref="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" implicit="true" />
    <import index="y596" ref="f:java_stub#1ed103c3-3aa6-49b7-9c21-6765ee11f224#jetbrains.mps.openapi.editor.selection(MPS.Editor/jetbrains.mps.openapi.editor.selection@java_stub)" implicit="true" />
  </imports>
  <registry>
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
    </language>
  </registry>
  <node concept="312cEu" id="4wYmLz_LWxB">
    <property role="TrG5h" value="ClipboardUtils" />
    <node concept="3Tm1VV" id="4wYmLz_LWxC" role="1B3o_S" />
    <node concept="3clFbW" id="4wYmLz_LWxD" role="jymVt">
      <node concept="3cqZAl" id="4wYmLz_LWxE" role="3clF45" />
      <node concept="3Tm1VV" id="4wYmLz_LWxF" role="1B3o_S" />
      <node concept="3clFbS" id="4wYmLz_LWxG" role="3clF47" />
    </node>
    <node concept="2YIFZL" id="4wYmLz_LWxH" role="jymVt">
      <property role="TrG5h" value="getClipboardText" />
      <node concept="17QB3L" id="4wYmLz_LWxL" role="3clF45" />
      <node concept="3Tm1VV" id="4wYmLz_LWxJ" role="1B3o_S" />
      <node concept="3clFbS" id="4wYmLz_LWxK" role="3clF47">
        <node concept="3cpWs8" id="16btBGPd5xo" role="3cqZAp">
          <node concept="3cpWsn" id="16btBGPd5xp" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="17QB3L" id="16btBGPd5xq" role="1tU5fm" />
            <node concept="Xl_RD" id="16btBGPd5xs" role="33vP2m">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="16btBGPd5xy" role="3cqZAp">
          <node concept="2GrKxI" id="16btBGPd5xz" role="2Gsz3X">
            <property role="TrG5h" value="content" />
          </node>
          <node concept="2OqwBi" id="16btBGPd5xW" role="2GsD0m">
            <node concept="2YIFZM" id="16btBGPd5xB" role="2Oq$k0">
              <ref role="37wK5l" to="4xk:~CopyPasteManagerEx.getInstanceEx():com.intellij.ide.CopyPasteManagerEx" resolve="getInstanceEx" />
              <ref role="1Pybhc" to="4xk:~CopyPasteManagerEx" resolve="CopyPasteManagerEx" />
            </node>
            <node concept="liA8E" id="16btBGPd5y2" role="2OqNvi">
              <ref role="37wK5l" to="4xk:~CopyPasteManagerEx.getAllContents():java.awt.datatransfer.Transferable[]" resolve="getAllContents" />
            </node>
          </node>
          <node concept="3clFbS" id="16btBGPd5x_" role="2LFqv$">
            <node concept="3clFbJ" id="16btBGPd5y3" role="3cqZAp">
              <node concept="2OqwBi" id="16btBGPd5yr" role="3clFbw">
                <node concept="2GrUjf" id="16btBGPd5y6" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="16btBGPd5xz" resolve="content" />
                </node>
                <node concept="liA8E" id="16btBGPd5yx" role="2OqNvi">
                  <ref role="37wK5l" to="tt4m:~Transferable.isDataFlavorSupported(java.awt.datatransfer.DataFlavor):boolean" resolve="isDataFlavorSupported" />
                  <node concept="10M0yZ" id="16btBGPd5yz" role="37wK5m">
                    <ref role="3cqZAo" to="tt4m:~DataFlavor.stringFlavor" resolve="stringFlavor" />
                    <ref role="1PxDUh" to="tt4m:~DataFlavor" resolve="DataFlavor" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="16btBGPd5y5" role="3clFbx">
                <node concept="SfApY" id="16btBGPd5zy" role="3cqZAp">
                  <node concept="3clFbS" id="16btBGPd5zz" role="SfCbr">
                    <node concept="3clFbF" id="16btBGPd5y$" role="3cqZAp">
                      <node concept="37vLTI" id="16btBGPd5yU" role="3clFbG">
                        <node concept="37vLTw" id="1rfeXz7xsAy" role="37vLTJ">
                          <ref role="3cqZAo" node="16btBGPd5xp" resolve="result" />
                        </node>
                        <node concept="10QFUN" id="16btBGPd5zt" role="37vLTx">
                          <node concept="17QB3L" id="16btBGPd5zw" role="10QFUM" />
                          <node concept="2OqwBi" id="16btBGPd5zi" role="10QFUP">
                            <node concept="2GrUjf" id="16btBGPd5yX" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="16btBGPd5xz" resolve="content" />
                            </node>
                            <node concept="liA8E" id="16btBGPd5zo" role="2OqNvi">
                              <ref role="37wK5l" to="tt4m:~Transferable.getTransferData(java.awt.datatransfer.DataFlavor):java.lang.Object" resolve="getTransferData" />
                              <node concept="10M0yZ" id="16btBGPd5zp" role="37wK5m">
                                <ref role="1PxDUh" to="tt4m:~DataFlavor" resolve="DataFlavor" />
                                <ref role="3cqZAo" to="tt4m:~DataFlavor.stringFlavor" resolve="stringFlavor" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3zACq4" id="16btBGPd5zD" role="3cqZAp" />
                  </node>
                  <node concept="TDmWw" id="16btBGPd5zG" role="TEbGg">
                    <node concept="3cpWsn" id="16btBGPd5zH" role="TDEfY">
                      <property role="TrG5h" value="ex" />
                      <node concept="3uibUv" id="16btBGPd5zK" role="1tU5fm">
                        <ref role="3uigEE" to="tt4m:~UnsupportedFlavorException" resolve="UnsupportedFlavorException" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="16btBGPd5zJ" role="TDEfX" />
                  </node>
                  <node concept="TDmWw" id="16btBGPd5z_" role="TEbGg">
                    <node concept="3cpWsn" id="16btBGPd5zA" role="TDEfY">
                      <property role="TrG5h" value="ex" />
                      <node concept="3uibUv" id="16btBGPd5zF" role="1tU5fm">
                        <ref role="3uigEE" to="fxg7:~IOException" resolve="IOException" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="16btBGPd5zC" role="TDEfX" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="16btBGPd5xv" role="3cqZAp">
          <node concept="37vLTw" id="1rfeXz7xsG_" role="3cqZAk">
            <ref role="3cqZAo" node="16btBGPd5xp" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="3x42ltMQFFZ" role="jymVt">
      <property role="TrG5h" value="setClipboardText" />
      <node concept="3cqZAl" id="3x42ltMQFG0" role="3clF45" />
      <node concept="3Tm1VV" id="3x42ltMQFG1" role="1B3o_S" />
      <node concept="3clFbS" id="3x42ltMQFG2" role="3clF47">
        <node concept="3clFbF" id="3x42ltMQFG5" role="3cqZAp">
          <node concept="2OqwBi" id="3x42ltMQFGk" role="3clFbG">
            <node concept="2YIFZM" id="3x42ltMQFG7" role="2Oq$k0">
              <ref role="37wK5l" to="4xk:~CopyPasteManagerEx.getInstanceEx():com.intellij.ide.CopyPasteManagerEx" resolve="getInstanceEx" />
              <ref role="1Pybhc" to="4xk:~CopyPasteManagerEx" resolve="CopyPasteManagerEx" />
            </node>
            <node concept="liA8E" id="3x42ltMQFGq" role="2OqNvi">
              <ref role="37wK5l" to="4xk:~CopyPasteManagerEx.setContents(java.awt.datatransfer.Transferable):void" resolve="setContents" />
              <node concept="2ShNRf" id="3x42ltMQFGr" role="37wK5m">
                <node concept="1pGfFk" id="3x42ltMQHdC" role="2ShVmc">
                  <ref role="37wK5l" to="tt4m:~StringSelection.&lt;init&gt;(java.lang.String)" resolve="StringSelection" />
                  <node concept="37vLTw" id="1rfeXz7xtbw" role="37wK5m">
                    <ref role="3cqZAo" node="3x42ltMQFG3" resolve="text" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3x42ltMQFG3" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="17QB3L" id="3x42ltMQFG4" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="51$nbrwc$uD">
    <property role="TrG5h" value="CellUtils" />
    <node concept="2YIFZL" id="51$nbrwc_Ur" role="jymVt">
      <property role="TrG5h" value="setSelection" />
      <node concept="37vLTG" id="51$nbrwc_WD" role="3clF46">
        <property role="TrG5h" value="cell" />
        <node concept="3uibUv" id="51$nbrwfFBU" role="1tU5fm">
          <ref role="3uigEE" to="nu8v:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="37vLTG" id="51$nbrwc_WF" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="51$nbrwldry" role="1tU5fm">
          <ref role="3uigEE" to="srng:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3cqZAl" id="51$nbrwc_Ut" role="3clF45" />
      <node concept="3Tm1VV" id="51$nbrwc_Uu" role="1B3o_S" />
      <node concept="3clFbS" id="51$nbrwc_Uv" role="3clF47">
        <node concept="3clFbF" id="51$nbrwc_XV" role="3cqZAp">
          <node concept="2OqwBi" id="51$nbrwc_XW" role="3clFbG">
            <node concept="2OqwBi" id="51$nbrwc_XX" role="2Oq$k0">
              <node concept="liA8E" id="51$nbrwc_XY" role="2OqNvi">
                <ref role="37wK5l" to="9a8:~EditorComponent.getSelectionManager():jetbrains.mps.openapi.editor.selection.SelectionManager" resolve="getSelectionManager" />
              </node>
              <node concept="1eOMI4" id="51$nbrwc_XZ" role="2Oq$k0">
                <node concept="10QFUN" id="51$nbrwc_Y0" role="1eOMHV">
                  <node concept="2OqwBi" id="51$nbrwc_Y1" role="10QFUP">
                    <node concept="37vLTw" id="51$nbrwc_Y2" role="2Oq$k0">
                      <ref role="3cqZAo" node="51$nbrwc_WF" resolve="context" />
                    </node>
                    <node concept="liA8E" id="51$nbrwc_Y3" role="2OqNvi">
                      <ref role="37wK5l" to="srng:~EditorContext.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="51$nbrwc_Y4" role="10QFUM">
                    <ref role="3uigEE" to="9a8:~EditorComponent" resolve="EditorComponent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="51$nbrwc_Y5" role="2OqNvi">
              <ref role="37wK5l" to="y596:~SelectionManager.setSelection(jetbrains.mps.openapi.editor.cells.EditorCell):void" resolve="setSelection" />
              <node concept="10QFUN" id="51$nbrwc_Y6" role="37wK5m">
                <node concept="3uibUv" id="1rfeXz7R5Dy" role="10QFUM">
                  <ref role="3uigEE" to="jsgz:~EditorCell" resolve="EditorCell" />
                </node>
                <node concept="37vLTw" id="51$nbrwc_Y7" role="10QFUP">
                  <ref role="3cqZAo" node="51$nbrwc_WD" resolve="cell" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="51$nbrwkfid" role="jymVt" />
    <node concept="3Tm1VV" id="51$nbrwc$uE" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5H3MsraaLrE">
    <property role="TrG5h" value="MultilineUtil" />
    <node concept="2YIFZL" id="5H3MsraaPV7" role="jymVt">
      <property role="TrG5h" value="unescapeText" />
      <node concept="17QB3L" id="5H3MsrabsyO" role="3clF45" />
      <node concept="3Tm1VV" id="5H3MsraaPVa" role="1B3o_S" />
      <node concept="3clFbS" id="5H3MsraaPVb" role="3clF47">
        <node concept="3clFbF" id="5H3Msrabsvn" role="3cqZAp">
          <node concept="2YIFZM" id="5H3MsrabsvC" role="3clFbG">
            <ref role="1Pybhc" to="v2t1:~StringEscapeUtils" resolve="StringEscapeUtils" />
            <ref role="37wK5l" to="v2t1:~StringEscapeUtils.unescapeJava(java.lang.String):java.lang.String" resolve="unescapeJava" />
            <node concept="2YIFZM" id="5H3Msran0oV" role="37wK5m">
              <ref role="1Pybhc" to="v2t1:~StringUtils" resolve="StringUtils" />
              <ref role="37wK5l" to="v2t1:~StringUtils.defaultString(java.lang.String):java.lang.String" resolve="defaultString" />
              <node concept="37vLTw" id="5H3Msran0qh" role="37wK5m">
                <ref role="3cqZAo" node="5H3MsraaPVz" resolve="escaped" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5H3MsraaPVz" role="3clF46">
        <property role="TrG5h" value="escaped" />
        <node concept="17QB3L" id="5H3MsraaPVy" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="5H3Msrabsy9" role="jymVt">
      <property role="TrG5h" value="escapeText" />
      <node concept="17QB3L" id="5H3MsrabsyK" role="3clF45" />
      <node concept="3Tm1VV" id="5H3Msrabsyc" role="1B3o_S" />
      <node concept="3clFbS" id="5H3Msrabsyd" role="3clF47">
        <node concept="3clFbF" id="5H3Msrabs_b" role="3cqZAp">
          <node concept="2YIFZM" id="5H3Msrabs_X" role="3clFbG">
            <ref role="1Pybhc" to="v2t1:~StringEscapeUtils" resolve="StringEscapeUtils" />
            <ref role="37wK5l" to="v2t1:~StringEscapeUtils.escapeJava(java.lang.String):java.lang.String" resolve="escapeJava" />
            <node concept="2YIFZM" id="5H3Msran0vl" role="37wK5m">
              <ref role="1Pybhc" to="v2t1:~StringUtils" resolve="StringUtils" />
              <ref role="37wK5l" to="v2t1:~StringUtils.defaultString(java.lang.String):java.lang.String" resolve="defaultString" />
              <node concept="37vLTw" id="5H3Msran0wH" role="37wK5m">
                <ref role="3cqZAo" node="5H3MsrabsyE" resolve="unescaped" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5H3MsrabsyE" role="3clF46">
        <property role="TrG5h" value="unescaped" />
        <node concept="17QB3L" id="5H3MsrabsyD" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5H3MsraaLrF" role="1B3o_S" />
  </node>
</model>

