package ASM;

import ASM.Inst.ASMInst;
import ASM.Operand.*;


import java.util.ArrayList;
import java.util.HashMap;

public class ASMfunction {
    public String name;
    public ArrayList<ASMBasicblock> blocks = new ArrayList<>();
    public ArrayList<ASMInst> initinst = new ArrayList<>();
    public int stacksize;
    public int regcount;
    public HashMap<Operand, Integer> vreglocation = new HashMap<>(); //key是virtualreg的num，value是在stack中的位置

    public ASMfunction(String name){
        this.name = name;
        stacksize = 52;
        regcount = 0;
    }

    public virtualreg addvreg(){
        return new virtualreg(regcount++);
    }

    public void accept(ASMVisitor visitor) {
        visitor.visit(this);
    }
}

