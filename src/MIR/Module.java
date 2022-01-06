package MIR;

import MIR.Inst.globalvarInst;
import MIR.Type.classType;

import java.util.ArrayList;
import java.util.HashMap;

public class Module {
    public ArrayList<Function> functionlist = new ArrayList<>();
    public ArrayList<globalvarInst> globalvarlist = new ArrayList<>();
    public ArrayList<classType> classlist = new ArrayList<>();

    public Module(){

    }
}
