package de.slisson.mps.editor.multiline.cells;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.EditorContext;
import jetbrains.mps.nodeEditor.cells.ModelAccessor;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.nodeEditor.style.Style;
import jetbrains.mps.nodeEditor.CellActionType;
import jetbrains.mps.nodeEditor.EditorCellKeyMap;
import jetbrains.mps.nodeEditor.style.StyleAttributes;
import jetbrains.mps.nodeEditor.selection.Selection;
import jetbrains.mps.nodeEditor.cells.TextLine;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.nodeEditor.cells.EditorCell_Label;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.StringEscapeUtils;
import java.awt.event.MouseEvent;
import jetbrains.mps.smodel.NodeReadAccessInEditorListener;
import jetbrains.mps.util.Pair;
import jetbrains.mps.smodel.NodeReadAccessCasterInEditor;
import jetbrains.mps.nodeEditor.cells.PropertyAccessor;

public class EditorCell_Word extends EditorCell_Property {
  private static final Logger LOG = Logger.getLogger(EditorCell_Word.class);

  public EditorCell_Word(EditorContext context, ModelAccessor modelAccessor, SNode node) {
    super(context, modelAccessor, node);
    setEditable(true);
    setDefaultText("");
    Style style = this.getStyle();
    setAction(CellActionType.INSERT, new NewLineAction(this));
    setAction(CellActionType.INSERT_BEFORE, new NewLineAction(this));
    setAction(CellActionType.SELECT_LEFT, new SelectLeftRightAction(true, this));
    setAction(CellActionType.SELECT_RIGHT, new SelectLeftRightAction(false, this));
    setAction(CellActionType.SELECT_UP, new SelectUpDownAction(this, true));
    setAction(CellActionType.SELECT_PREVIOUS, new SelectUpDownAction(this, true));
    setAction(CellActionType.SELECT_DOWN, new SelectUpDownAction(this, false));
    setAction(CellActionType.SELECT_NEXT, new SelectUpDownAction(this, false));
    setAction(CellActionType.PASTE, new WordPasteAction(this));
    EditorCellKeyMap km = new EditorCellKeyMap();
    km.putAction("any", "VK_TAB", new TabAction(this));
    addKeyMap(km);
  }

  public void setIndentLayoutNewLine(boolean value) {
    getStyle().set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, value);
  }

  public void setNewLine(boolean newLine) {
    setIndentLayoutNewLine(newLine);
  }

  public boolean followedByNewLine() {
    Boolean result = getStyle().get(StyleAttributes.INDENT_LAYOUT_NEW_LINE);
    result = (result == null ?
      false :
      result
    );
    return result;
  }

  @Override
  public String getText() {
    String text = super.getText();
    return (text == null ?
      "" :
      text
    );
  }

  public String getTextIncludingSeparator() {
    return getText() + ((followedByNewLine() ?
      "\n" :
      " "
    ));
  }

  @Override
  public boolean canPasteText() {
    return isEditable();
  }

  @Override
  protected boolean toShowCaret() {
    if (super.toShowCaret()) {
      return true;
    }

    // Caret blinking when multiline selection is active 
    Selection selection = getEditor().getSelectionManager().getSelection();
    if (selection instanceof MultilineSelection) {
      MultilineSelection mlSelection = (MultilineSelection) selection;
      return mlSelection.getCellContainingCaret() == this && myCaretIsVisible;
    }

    return false;
  }

  public TextLine getRenderedTextLine() {
    TextLine textLine;
    if (myNoTextSet && myTextLine.getText().length() == 0) {
      textLine = myNullTextLine;
    } else {
      textLine = myTextLine;
    }
    return textLine;
  }

  @Override
  public void setText(String text) {
    super.setText(text);
  }

  @Override
  public boolean executeTextAction(CellActionType type, boolean allowErrors) {
    if (type == CellActionType.BACKSPACE) {
      if (getCaretPosition() == 0) {
        if (isCursorAtMultilineStart()) {
          EditorCell prevLeaf = getPrevLeaf();
          if (prevLeaf != null) {
            if (prevLeaf instanceof EditorCell_Label) {
              EditorCell_Label labelCell = ((EditorCell_Label) prevLeaf);
              labelCell.setCaretPositionIfPossible(StringUtils.length(labelCell.getText()));
            }
            getEditorContext().getNodeEditorComponent().getSelectionManager().setSelection(prevLeaf);
            prevLeaf.executeAction(CellActionType.BACKSPACE);
          }
        } else {
          deletePrecedingCharacter();
        }
        return true;
      }
    } else if (type == CellActionType.DELETE) {
      if (getCaretPosition() == getText().length()) {
        if (isCursorAtMultilineEnd()) {
          EditorCell nextLeaf = getNextLeaf();
          if (nextLeaf != null) {
            if (nextLeaf instanceof EditorCell_Label) {
              EditorCell_Label labelCell = ((EditorCell_Label) nextLeaf);
              labelCell.setCaretPositionIfPossible(0);
            }
            getEditorContext().getNodeEditorComponent().getSelectionManager().setSelection(nextLeaf);
            nextLeaf.executeAction(CellActionType.DELETE);
          }
        } else {
          deleteFollowingCharacter();
        }
        return true;
      }
    }
    boolean result = super.executeTextAction(type, allowErrors);
    return result;
  }

  @Override
  public boolean executeAction(CellActionType type) {
    boolean result = super.executeAction(type);
    return result;
  }

  public void deleteFollowingCharacter() {
    EditorCell_Multiline mlCell = this.getParent();
    if (mlCell != null) {
      int caretPos = mlCell.getCaretPosition();
      String text = mlCell.getTextAfterCaret();
      if (text.length() >= 1) {
        text = text.substring(1);
      }
      text = mlCell.getTextBeforeCaret() + text;
      mlCell.setText(text);
      mlCell.setCaretPosition(caretPos, true);
    }
  }

  public boolean isCursorAtMultilineStart() {
    EditorCell_Multiline mlCell = this.getParent();
    if (mlCell == null) {
      return false;
    }
    int caretPos = mlCell.getCaretPosition();
    return caretPos == 0;
  }

  public boolean isCursorAtMultilineEnd() {
    EditorCell_Multiline mlCell = this.getParent();
    if (mlCell == null) {
      return false;
    }
    int caretPos = mlCell.getCaretPosition();
    return caretPos == StringUtils.length(mlCell.getText());
  }

  private void deletePrecedingCharacter() {
    EditorCell_Multiline mlCell = this.getParent();
    if (mlCell != null) {
      int caretPos = mlCell.getCaretPosition();
      if (caretPos > 0) {
        String text = mlCell.getTextBeforeCaret();
        if (text.length() > 0) {
          text = text.substring(0, text.length() - 1);
        }
        text += mlCell.getTextAfterCaret();
        mlCell.setText(text);
        mlCell.setCaretPosition(caretPos - 1, true);
      }
    }
  }

  public void insertText(String text) {
    text = StringEscapeUtils.unescapeJava(text);
    EditorCell_Multiline mlCell = getParent();
    if (mlCell != null) {
      int newCaretPos = mlCell.getCaretPosition() + text.length();
      super.insertText(text);
      mlCell.setCaretPosition(newCaretPos);
    }
  }

  @Override
  public EditorCell_Multiline getParent() {
    return (EditorCell_Multiline) super.getParent();
  }

  @Override
  public void setCaretPositionIfPossible(int i) {
    if (i == getText().length() + 1) {
      int pos = getParent().getTextBefore(this, getText().length()).length() + 1;
      getParent().setCaretPosition(pos);
    } else {
      super.setCaretPositionIfPossible(i);
    }
  }

  public String getTextBefore(int pos) {
    String result = getText();
    result = result.substring(0, Math.min(pos, result.length()));
    return result;
  }

  @Override
  public String getRole() {
    // This is required for processing the INSERT action (the user presses ENTER). 
    // Otherwise the action is passed to the next children collection cell. 
    return "";
  }

  @Override
  public void synchronizeViewWithModel() {
    check_xru0dp_a0a02(getParent(), this);
  }

  @Override
  public boolean processMousePressed(MouseEvent event) {
    int prevCaretPos = getParent().getCaretPosition();
    super.processMousePressed(event);
    if (event.isShiftDown()) {
      int caretPos = getParent().getCaretPosition();
      getEditor().getSelectionManager().pushSelection(new MultilineSelection(getEditor(), getParent(), prevCaretPos, caretPos));
      LOG.info("selection " + prevCaretPos + " - " + caretPos);
    }
    return true;
  }

  private static void addPropertyDependenciesToEditor(NodeReadAccessInEditorListener listener, EditorCell_Word result) {
    for (Pair pair : listener.popCleanlyReadAccessedProperties()) {
      result.getEditor().addCellDependentOnNodeProperty(result, pair);
    }
  }

  public static EditorCell_Word create(EditorContext editorContext, ModelAccessor modelAccessor, SNode node) {
    NodeReadAccessInEditorListener listener = NodeReadAccessCasterInEditor.getReadAccessListener();
    if (modelAccessor instanceof PropertyAccessor) {
      if (listener != null) {
        listener.clearCleanlyReadAccessProperties();
      }
    }
    EditorCell_Word result = new EditorCell_Word(editorContext, modelAccessor, node);
    if (listener != null) {
      EditorCell_Word.addPropertyDependenciesToEditor(listener, result);
    }
    return result;
  }

  private static void check_xru0dp_a0a02(EditorCell_Multiline checkedDotOperand, EditorCell_Word checkedDotThisExpression) {
    if (null != checkedDotOperand) {
      checkedDotOperand.synchronizeViewWithModel();
    }

  }
}
