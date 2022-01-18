package ASM.Inst;

import ASM.ASMVisitor;

abstract public class ASMInst {
    abstract public void accept(ASMVisitor visitor);
}
