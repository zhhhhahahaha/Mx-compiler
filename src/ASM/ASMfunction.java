package ASM;

import ASM.Inst.ASMInst;
import MIR.Operand.register;

import java.util.ArrayList;
import java.util.HashMap;

public class ASMfunction {
    public String name;
    public ArrayList<ASMBasicblock> blocks = new ArrayList<>();
    public ArrayList<ASMInst> initinst = new ArrayList<>();
    public int stacksize;
    public HashMap<register, Integer> vreglocation = new HashMap<>();

    public ASMfunction(String name){
        this.name = name;
        stacksize = 12;
    }
    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}

