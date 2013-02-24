package de.slisson.mps.editor.multiline.cells;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import java.util.concurrent.atomic.AtomicLong;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.cells.ModelAccessor;
import jetbrains.mps.nodeEditor.EditorContext;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Indent;
import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeEvent;
import jetbrains.mps.smodel.ModelAccess;
import org.apache.commons.lang.StringEscapeUtils;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.internal.collections.runtime.ILeftCombinator;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import jetbrains.mps.internal.collections.runtime.IterableUtils;
import org.apache.commons.lang.StringUtils;
import java.util.ArrayList;

public class EditorCell_Multiline extends EditorCell_Collection {
  private static final AtomicLong CELL_ID_SEQUENCE = new AtomicLong();
  private static final Logger LOG = Logger.getLogger(EditorCell_Multiline.class);

  private ModelAccessor myModelAccessor;
  private MultilineText myMultilineText;

  protected EditorCell_Multiline(EditorContext context, ModelAccessor accessor, SNode node) {
    super(context, node, new CellLayout_Indent(), null);
    myModelAccessor = accessor;

    myMultilineText = new MultilineText(unescapeText(accessor.getText()));
    myMultilineText.addListener(MultilineText.PROPERTY_TEXT, new PropertyChangeListener() {
      public void propertyChange(PropertyChangeEvent e) {
        final String newText = ((String) e.getNewValue());
        if (ModelAccess.instance().canWrite()) {
          textToProperty(newText);
        } else {
          getEditorContext().executeCommand(new Runnable() {
            public void run() {
              textToProperty(newText);
            }
          });
        }
      }
    });
    myMultilineText.addListener(MultilineText.PROPERTY_WORDS, new PropertyChangeListener() {
      public void propertyChange(PropertyChangeEvent e) {
        if (ModelAccess.instance().canWrite()) {
          modelToView();
        } else {
          getEditorContext().executeCommand(new Runnable() {
            public void run() {
              modelToView();
            }
          });
        }
      }
    });
    modelToView();
  }

  protected String escapeText(String text) {
    return StringEscapeUtils.escapeJava(text);
  }

  public String unescapeText(String text) {
    return StringEscapeUtils.unescapeJava(text);
  }

  @Override
  public void synchronizeViewWithModel() {
    myMultilineText.setTextSilently(unescapeText(myModelAccessor.getText()));
    modelToView();
  }

  protected void modelToView() {
    int caretPos = getCaretPosition();
    Iterable<String[]> lines = Sequence.fromArray(myMultilineText.getWords());
    int totalWords = Sequence.fromIterable(lines).select(new ISelector<String[], Integer>() {
      public Integer select(String[] it) {
        return it.length;
      }
    }).reduceLeft(new ILeftCombinator<Integer, Integer>() {
      public Integer combine(Integer a, Integer b) {
        return a + b;
      }
    });
    setNumberOfWordCells(totalWords);
    List<EditorCell_Word> wordCells = Sequence.fromIterable(getWordCells()).toListSequence();
    int wordNum = -1;
    for (String[] line : Sequence.fromIterable(lines)) {
      for (String word : line) {
        ++wordNum;
        EditorCell_Word wordCell = ListSequence.fromList(wordCells).getElement(wordNum);
        wordCell.setText(word);
        wordCell.setNewLine(false);
      }
      ListSequence.fromList(wordCells).getElement(wordNum).setNewLine(true);
    }
    ListSequence.fromList(wordCells).last().setNewLine(false);
    setCaretPosition(caretPos);
  }

  public void textToProperty(String newText) {
    String oldText = myModelAccessor.getText();
    if (neq_v798xa_a0b0e(oldText, newText)) {
      myModelAccessor.setText(escapeText(newText));
    }
  }

  public void setNumberOfWordCells(int count) {
    while (getCellsCount() > count) {
      removeCell(Sequence.fromIterable(Sequence.fromArray(getCells())).last());
    }
    while (getCellsCount() < count) {
      addEditorCell(this.newWordCell(getCellsCount()));
    }
  }

  public int getCaretPosition() {
    int pos = 0;
    EditorCell selectedCell = getEditorContext().getSelectedCell();
    if (selectedCell instanceof EditorCell_Word) {
      EditorCell_Word selectedWordCell = (EditorCell_Word) selectedCell;
      pos += Sequence.fromIterable(getCellsBefore(selectedWordCell)).foldLeft(0, new ILeftCombinator<EditorCell_Word, Integer>() {
        public Integer combine(Integer s, EditorCell_Word it) {
          return s + it.getTextIncludingSeparator().length();
        }
      });
      pos += selectedWordCell.getCaretPosition();
    }
    return pos;
  }

  public boolean isCaretAtLineStart() {
    return getTextBeforeCaret().endsWith("\n") || getCaretPosition() == 0;
  }

  public boolean isCaretAtWordStart() {
    boolean result = false;
    EditorCell selectedCell = getEditorContext().getSelectedCell();
    if (selectedCell instanceof EditorCell_Word) {
      EditorCell_Word selectedWordCell = (EditorCell_Word) selectedCell;
      result = selectedWordCell.getCaretPosition() == 0;
    }
    return result;
  }

  public boolean isCaretAtWordEnd() {
    boolean result = false;
    EditorCell selectedCell = getEditorContext().getSelectedCell();
    if (selectedCell instanceof EditorCell_Word) {
      EditorCell_Word selectedWordCell = (EditorCell_Word) selectedCell;
      result = selectedWordCell.getCaretPosition() == selectedWordCell.getText().length();
    }
    return result;
  }

  public void setCaretPosition(int pos) {
    setCaretPosition(pos, false);
  }

  public EditorCell_Word getWordCellContainingPos(int pos) {
    int remainingPos = pos;
    for (EditorCell_Word wordCell : Sequence.fromIterable(getWordCells())) {
      int textLen = wordCell.getText().length();
      if (remainingPos <= textLen) {
        return wordCell;
      }
      remainingPos -= textLen + 1;
    }
    return Sequence.fromIterable(getWordCells()).last();
  }

  public void setCaretPosition(int pos, boolean enforceSelection) {
    int remainingPos = pos;
    for (EditorCell_Word wordCell : Sequence.fromIterable(getWordCells())) {
      int textLen = wordCell.getText().length();
      if (remainingPos <= textLen) {
        if (enforceSelection || Sequence.fromIterable(Sequence.fromArray(getCells())).contains(getEditorContext().getSelectedCell())) {
          getEditorContext().getNodeEditorComponent().getSelectionManager().setSelection(wordCell);
        }
        wordCell.setCaretPosition(remainingPos);
        break;
      }
      remainingPos -= textLen + 1;
    }
  }

  public void insertText(String text) {
    int caretPos = getCaretPosition();
    myMultilineText.setText(getTextBeforeCaret() + text + getTextAfterCaret());
    setCaretPosition(caretPos + text.length(), true);
  }

  public String getTextBefore(EditorCell_Word wordCell, int pos) {
    StringBuffer textBefore = new StringBuffer();
    Iterable<EditorCell_Word> cellsBefore = getCellsBefore(wordCell);
    if (Sequence.fromIterable(cellsBefore).isNotEmpty()) {
      textBefore.append(IterableUtils.join(Sequence.fromIterable(cellsBefore).select(new ISelector<EditorCell_Word, String>() {
        public String select(EditorCell_Word it) {
          return it.getTextIncludingSeparator();
        }
      }), ""));
    }
    textBefore.append(wordCell.getTextBefore(pos));

    return textBefore.toString();
  }

  public int getCellStartPosition(EditorCell_Word wordCell) {
    return getAbsoluteTextPosition(wordCell, 0);
  }

  public int getAbsoluteTextPosition(EditorCell_Word wordCell, int relativePos) {
    return StringUtils.length(getTextBefore(wordCell, relativePos));
  }

  public Iterable<EditorCell_Word> getCellsBefore(EditorCell_Word cell) {
    List<EditorCell_Word> result = ListSequence.fromList(new ArrayList<EditorCell_Word>());
    int cellNum = getCellNumber(cell);
    if (cellNum >= 0) {
      ListSequence.fromList(result).addSequence(Sequence.fromIterable(getWordCells()).take(cellNum));
    }
    return result;
  }

  public String getTextBeforeCaret() {
    return myMultilineText.getText().substring(0, getCaretPosition());
  }

  public String getTextAfterCaret() {
    return myMultilineText.getText().substring(getCaretPosition());
  }

  public Iterable<EditorCell_Word> getWordCells() {
    return Sequence.fromIterable(Sequence.fromArray(getCells())).select(new ISelector<EditorCell, EditorCell_Word>() {
      public EditorCell_Word select(EditorCell it) {
        return (EditorCell_Word) it;
      }
    });
  }

  public String getText() {
    return myMultilineText.getText();
  }

  public void setText(String newText) {
    newText = check_v798xa_a0a0w(newText);
    myMultilineText.setText(newText);
    modelToView();
  }

  public void deleteWords(int from, int to) {
    myMultilineText.deleteWords(from, to);
  }

  public EditorCell_Word newWordCell(int wordNum) {
    EditorCell_Word wordCell = EditorCell_Word.create(getEditorContext(), new EditorCell_Multiline.WordModelAccessor(wordNum, myMultilineText), getSNode());
    wordCell.setCellId("Multiline_Word_" + CELL_ID_SEQUENCE.incrementAndGet());
    return wordCell;
  }

  @Override
  public EditorCell_Word getCellAt(int i) {
    return (EditorCell_Word) super.getCellAt(i);
  }

  @Override
  public void addCellAt(int i, EditorCell cell, boolean b) {
    if (!(cell instanceof EditorCell_Word)) {
      throw new IllegalArgumentException("Cells of type EditorCell_Word allowed only. Was of type: " + check_v798xa_a0a0a0a0ab(check_v798xa_a0a0a0a0a62(cell)));

    }
    super.addCellAt(i, cell, b);
  }

  public static EditorCell_Multiline create(EditorContext context, ModelAccessor accessor, SNode node) {
    EditorCell_Multiline result = new EditorCell_Multiline(context, accessor, node);
    return result;
  }

  private static String check_v798xa_a0a0w(String checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.replace("\\n", "\n");
    }
    return null;
  }

  private static String check_v798xa_a0a0a0a0ab(Class<?> checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getName();
    }
    return null;
  }

  private static Class<?> check_v798xa_a0a0a0a0a62(EditorCell checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getClass();
    }
    return null;
  }

  private static boolean neq_v798xa_a0b0e(Object a, Object b) {
    return !((a != null ?
      a.equals(b) :
      a == b
    ));
  }

  public class WordModelAccessor implements ModelAccessor {
    private int myWordNum;
    private MultilineText textSource;

    public WordModelAccessor(int wordNum, MultilineText textSource) {
      this.myWordNum = wordNum;
      this.textSource = textSource;
    }

    public String getText() {
      return textSource.getWord(myWordNum);
    }

    public boolean isValidText(String text) {
      return true;
    }

    public void setText(String text) {
      textSource.setWord(myWordNum, text);
    }
  }
}
