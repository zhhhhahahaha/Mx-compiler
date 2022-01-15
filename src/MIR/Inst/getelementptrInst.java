package MIR.Inst;

import MIR.IRVisitor;
import MIR.Operand.*;
import MIR.Type.*;

import java.util.ArrayList;

public class getelementptrInst extends Inst{
      public register resreg;
      public IRType firsttype;
      public register sourcereg;
      public IRType sourcetype;
      public ArrayList<operand> indexlist;

      public getelementptrInst(register resreg, IRType firsttype, register sourcereg, IRType sourcetype, ArrayList<operand> indexlist){
            this.resreg = resreg;
            this.firsttype = firsttype;
            this.sourcereg = sourcereg;
            this.sourcetype = sourcetype;
            this.indexlist = indexlist;
      }

      @Override
      public void accept(IRVisitor visitor) {
            visitor.visit(this);
      }
}
