package MIR;

import MIR.Inst.globalvarInst;
import MIR.Type.classType;
import MIR.Type.voidType;

import java.util.ArrayList;
import java.util.HashMap;

public class Module {
    public ArrayList<Function> functionlist = new ArrayList<>();
    public ArrayList<globalvarInst> globalvarlist = new ArrayList<>();
    public ArrayList<classType> classlist = new ArrayList<>();
    public Function globalinit;

    public Module(){
        globalinit = new Function("globalinit", new voidType());
    }
}
