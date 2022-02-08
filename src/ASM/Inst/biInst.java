package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.Operand;

public class biInst extends ASMInst{
    public Operand resreg;
    public Operand leftreg;
    public Operand rightreg;
    public enum Op{
        xor, and, or,
        add, sub,
        mul, div, rem,
        sll, srl
    }
    public Op op;

    public biInst(Operand resreg, Operand leftreg, Operand rightreg, Op op){
        super();
        this.resreg = resreg;
        this.leftreg = leftreg;
        this.rightreg = rightreg;
        this.op = op;
        this.def.add(resreg);
        this.use.add(leftreg);
        this.use.add(rightreg);
    }

    @Override
    public void change(Operand pre, Operand now, int flag){
        if(flag == 0){
            assert pre == resreg;
            def.remove(resreg);
            def.add(now);
            resreg = now;
        }else{
            if(leftreg == pre){
                use.remove(leftreg);
                use.add(now);
                leftreg = now;
            }
            if(rightreg == pre) {
                use.remove(rightreg);
                use.add(now);
                rightreg = now;
            }
        }
    }

    @Override
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
