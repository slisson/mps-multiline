<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:2e3bedda-d2c6-42ea-8f39-83cfe0a4ed64(de.slisson.mps.editor.multiline.typesystem)">
  <persistence version="7" />
  <language namespace="7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)" />
  <language namespace="31c91def-a131-41a1-9018-102874f49a12(de.slisson.mps.editor.multiline)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="wap1" modelUID="r:9aa85a40-e98d-42a5-a8fd-9f607a4dc9a0(de.slisson.mps.editor.multiline.structure)" version="-1" />
  <import index="hypd" modelUID="r:aa31e43e-9240-4f4d-b6db-5c1c9a86c59e(jetbrains.mps.lang.project.structure)" version="-1" />
  <import index="cu2c" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.smodel(MPS.Core/jetbrains.mps.smodel@java_stub)" version="-1" />
  <import index="kqhl" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project.structure.modules(MPS.Core/jetbrains.mps.project.structure.modules@java_stub)" version="-1" />
  <import index="vsqj" modelUID="f:java_stub#6ed54515-acc8-4d1e-a16c-9fd6cfe951ea#jetbrains.mps.project(MPS.Core/jetbrains.mps.project@java_stub)" version="-1" />
  <import index="fxg7" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="4" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="tpd4" modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="3" implicit="yes" />
  <import index="tpcu" modelUID="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" version="-1" implicit="yes" />
  <import index="k7g3" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" version="-1" implicit="yes" />
  <import index="tp2c" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <roots>
    <node type="tpd4.NonTypesystemRule" typeId="tpd4.1195214364922" id="9030445917800610868">
      <property name="name" nameId="tpck.1169194664001" value="check_runtimeLibs" />
    </node>
  </roots>
  <root id="9030445917800610868">
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="9030445917800610869">
      <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="9030445917800627203">
        <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="9030445917800627204">
          <property name="name" nameId="tpck.1169194664001" value="usingLang" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="9030445917800627205">
            <link role="classifier" roleId="tpee.1107535924139" targetNodeId="cu2c.~Language" resolveInfo="Language" />
          </node>
          <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9030445917800627206">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="9030445917800627207">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="cu2c.~ModuleRepositoryFacade" resolveInfo="ModuleRepositoryFacade" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="cu2c.~ModuleRepositoryFacade%dgetInstance()%cjetbrains%dmps%dsmodel%dModuleRepositoryFacade" resolveInfo="getInstance" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9030445917800627208">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="cu2c.~ModuleRepositoryFacade%dgetModule(java%dlang%dString,java%dlang%dClass)%cjetbrains%dmps%dproject%dIModule" resolveInfo="getModule" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9030445917800627264">
                <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="9030445917800627237">
                  <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="9030445917800610871" resolveInfo="usingLangModule" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_ConceptMethodCall" typeId="tp25.1179409122411" id="9030445917800627276">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="tpcu.1213877404258" resolveInfo="getFqName" />
                </node>
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ClassifierClassExpression" typeId="tpee.1116615150612" id="9030445917800627212">
                <link role="classifier" roleId="tpee.1116615189566" targetNodeId="cu2c.~Language" resolveInfo="Language" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="9030445917800627285">
        <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="9030445917800627286">
          <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="9030445917800611113">
            <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="9030445917800611114">
              <property name="name" nameId="tpck.1169194664001" value="langRef" />
            </node>
            <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="9030445917800611116">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="6722517096586322648">
                <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="6722517096586322649">
                  <property name="name" nameId="tpck.1169194664001" value="usedLang" />
                  <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6722517096586322650">
                    <link role="classifier" roleId="tpee.1107535924139" targetNodeId="cu2c.~Language" resolveInfo="Language" />
                  </node>
                  <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6722517096586322655">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="6722517096586322656">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="cu2c.~ModuleRepositoryFacade%dgetInstance()%cjetbrains%dmps%dsmodel%dModuleRepositoryFacade" resolveInfo="getInstance" />
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="cu2c.~ModuleRepositoryFacade" resolveInfo="ModuleRepositoryFacade" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6722517096586322657">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="cu2c.~ModuleRepositoryFacade%dgetModule(java%dlang%dString,java%dlang%dClass)%cjetbrains%dmps%dproject%dIModule" resolveInfo="getModule" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6722517096586322658">
                        <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="9030445917800612979">
                          <link role="variable" roleId="tp2q.1153944258490" targetNodeId="9030445917800611114" resolveInfo="langRef" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9030445917800629820">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="kqhl.~ModuleReference%dgetModuleFqName()%cjava%dlang%dString" resolveInfo="getModuleFqName" />
                        </node>
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ClassifierClassExpression" typeId="tpee.1116615150612" id="6722517096586322661">
                        <link role="classifier" roleId="tpee.1116615189566" targetNodeId="cu2c.~Language" resolveInfo="Language" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="9030445917800627343">
                <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="9030445917800627344">
                  <property name="name" nameId="tpck.1169194664001" value="runtimeSolutionRef" />
                </node>
                <node role="inputSequence" roleId="tp2q.1153944424730" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9030445917800627368">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="9030445917800627347">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6722517096586322649" resolveInfo="usedLang" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9030445917800627374">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="cu2c.~Language%dgetRuntimeModulesReferences()%cjava%dutil%dCollection" resolveInfo="getRuntimeModulesReferences" />
                  </node>
                </node>
                <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="9030445917800627346">
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="9030445917800627375">
                    <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="9030445917800627376">
                      <property name="name" nameId="tpck.1169194664001" value="runtimeSolution" />
                      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="9030445917800627377">
                        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="vsqj.~Solution" resolveInfo="Solution" />
                      </node>
                      <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9030445917800627378">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="9030445917800627379">
                          <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="cu2c.~ModuleRepositoryFacade" resolveInfo="ModuleRepositoryFacade" />
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="cu2c.~ModuleRepositoryFacade%dgetInstance()%cjetbrains%dmps%dsmodel%dModuleRepositoryFacade" resolveInfo="getInstance" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9030445917800627380">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="cu2c.~ModuleRepositoryFacade%dgetModule(jetbrains%dmps%dproject%dstructure%dmodules%dModuleReference,java%dlang%dClass)%cjetbrains%dmps%dproject%dIModule" resolveInfo="getModule" />
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="9030445917800627397">
                            <link role="variable" roleId="tp2q.1153944258490" targetNodeId="9030445917800627344" resolveInfo="runtimeSolutionRef" />
                          </node>
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ClassifierClassExpression" typeId="tpee.1116615150612" id="9030445917800627382">
                            <link role="classifier" roleId="tpee.1116615189566" targetNodeId="vsqj.~Solution" resolveInfo="Solution" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="9030445917800627383">
                    <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="9030445917800627384">
                      <property name="name" nameId="tpck.1169194664001" value="runtimeSolutionSourcesPath" />
                      <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="9030445917800627385" />
                      <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9030445917800627386">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="9030445917800627387">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="9030445917800627376" resolveInfo="runtimeSolution" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9030445917800627388">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="vsqj.~Solution%dgetGeneratorOutputPath()%cjava%dlang%dString" resolveInfo="getGeneratorOutputPath" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="9030445917800629691">
                    <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="9030445917800629692">
                      <property name="name" nameId="tpck.1169194664001" value="designTimeSources" />
                      <node role="type" roleId="tpee.5680397130376446158" type="tp2q.SequenceType" typeId="tp2q.1151689724996" id="9030445917800629693">
                        <node role="elementType" roleId="tp2q.1151689745422" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="9030445917800629701">
                          <link role="classifier" roleId="tpee.1107535924139" targetNodeId="fxg7.~File" resolveInfo="File" />
                        </node>
                      </node>
                      <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9030445917800629703">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9030445917800629704">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9030445917800629705">
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9030445917800629706">
                              <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="9030445917800629707">
                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="9030445917800627204" resolveInfo="usingLang" />
                              </node>
                              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9030445917800629708">
                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="vsqj.~AbstractModule%dgetSourcePaths()%cjava%dutil%dList" resolveInfo="getSourcePaths" />
                              </node>
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9030445917800629709">
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="k7g3.~List%dtoArray(java%dlang%dObject[])%cjava%dlang%dObject[]" resolveInfo="toArray" />
                              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="9030445917800629710">
                                <node role="creator" roleId="tpee.1145553007750" type="tpee.ArrayCreatorWithInitializer" typeId="tpee.1154542696413" id="9030445917800629711">
                                  <node role="componentType" roleId="tpee.1154542793668" type="tpee.StringType" typeId="tpee.1225271177708" id="9030445917800629712" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tp2q.AsSequenceOperation" typeId="tp2q.1240325842691" id="9030445917800629713" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tp2q.SelectOperation" typeId="tp2q.1202128969694" id="9030445917800629714">
                          <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="9030445917800629715">
                            <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="9030445917800629716">
                              <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="9030445917800629717">
                                <node role="expression" roleId="tpee.1068580123156" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="9030445917800629718">
                                  <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="9030445917800629719">
                                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~File%d&lt;init&gt;(java%dlang%dString)" resolveInfo="File" />
                                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.ParameterReference" typeId="tpee.1068581242874" id="9030445917800629720">
                                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="9030445917800629721" resolveInfo="it" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="9030445917800629721">
                              <property name="name" nameId="tpck.1169194664001" value="it" />
                              <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="9030445917800629722" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="9030445917800627616" />
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="9030445917800629674">
                    <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="9030445917800629675">
                      <node role="statement" roleId="tpee.1068581517665" type="tpd4.ReportErrorStatement" typeId="tpd4.1175517767210" id="9030445917800629776">
                        <node role="errorString" roleId="tpd4.1175517851849" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="9030445917800629800">
                          <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="9030445917800629803">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="9030445917800627384" resolveInfo="runtimeSolutionSourcesPath" />
                          </node>
                          <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="9030445917800629779">
                            <property name="value" nameId="tpee.1070475926801" value="Not in design time sources: " />
                          </node>
                        </node>
                        <node role="nodeToReport" roleId="tpd4.1227096802790" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="9030445917800629804">
                          <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="9030445917800610871" resolveInfo="usingLangModule" />
                        </node>
                      </node>
                    </node>
                    <node role="condition" roleId="tpee.1068580123160" type="tpee.NotExpression" typeId="tpee.1081516740877" id="9030445917800629766">
                      <node role="expression" roleId="tpee.1081516765348" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9030445917800629767">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="9030445917800629768">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="9030445917800629692" resolveInfo="designTimeSources" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tp2q.ContainsOperation" typeId="tp2q.1172254888721" id="9030445917800629769">
                          <node role="argument" roleId="tp2q.1172256416782" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="9030445917800629770">
                            <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="9030445917800629771">
                              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~File%d&lt;init&gt;(java%dlang%dString)" resolveInfo="File" />
                              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="9030445917800629772">
                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="9030445917800627384" resolveInfo="runtimeSolutionSourcesPath" />
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
            <node role="inputSequence" roleId="tp2q.1153944424730" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9030445917800611026">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="9030445917800627333">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="9030445917800627204" resolveInfo="usingLang" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9030445917800627339">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="vsqj.~AbstractModule%dgetUsedLanguagesReferences()%cjava%dutil%dCollection" resolveInfo="getUsedLanguagesReferences" />
              </node>
            </node>
          </node>
        </node>
        <node role="condition" roleId="tpee.1068580123160" type="tpee.NotEqualsExpression" typeId="tpee.1073239437375" id="9030445917800627316">
          <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="9030445917800627319" />
          <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.LocalVariableReference" typeId="tpee.1068581242866" id="9030445917800627295">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="9030445917800627204" resolveInfo="usingLang" />
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="9030445917800610871">
      <property name="name" nameId="tpck.1169194664001" value="usingLangModule" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="hypd.6370754048397540894" resolveInfo="Module" />
    </node>
  </root>
</model>

