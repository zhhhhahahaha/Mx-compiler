package ASM.Inst;

import ASM.ASMVisitor;
import ASM.Operand.Operand;

import java.util.HashSet;

abstract public class ASMInst {
    public ASMInst prev;
    public ASMInst succ;
    public HashSet<Operand> def = new HashSet<>();
    public HashSet<Operand> use = new HashSet<>();

    public ASMInst(){
        prev = null;
        succ = null;
    }

    abstract public void change(Operand pre, Operand now, int flag);   //flag 0 for changing def, 1 for changing use

    abstract public void accept(ASMVisitor visitor);
}
