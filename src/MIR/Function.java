package MIR;

import MIR.Entity.*;
import MIR.Inst.*;
import MIR.Type.*;

import java.util.ArrayList;

public class Function {
    public int labelcount; //每次创建新的block要先加1
    public String name;
    public IRType rettype;
    public ArrayList<allocaInst> allocalist = new ArrayList<>();
    public ArrayList<BasicBlock> blocklist = new ArrayList<>();
    public ArrayList<parameter> paralist = new ArrayList<>();
    public BasicBlock exitblock;

    public Function(String name, IRType rettype){
        this.rettype = rettype;
        this.name = name;
        this.labelcount = 0;
    }
}
