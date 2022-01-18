package ASM;

import ASM.Inst.ASMInst;

import java.util.ArrayList;

public class ASMBasicblock {
    public String name;
    public ArrayList<ASMInst> instlist = new ArrayList<>();

    public ASMBasicblock(String name){
        this.name = name;
    }

    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}
