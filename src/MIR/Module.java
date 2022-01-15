package MIR;

import MIR.Entity.parameter;
import MIR.Inst.globalvarInst;
import MIR.Operand.register;
import MIR.Type.classType;
import MIR.Type.intType;
import MIR.Type.stringType;
import MIR.Type.voidType;

import java.util.ArrayList;
import java.util.HashMap;

public class Module {
    public ArrayList<Function> functionlist = new ArrayList<>();
    public ArrayList<globalvarInst> globalvarlist = new ArrayList<>();
    public ArrayList<classType> classlist = new ArrayList<>();
    public Function globalinit;
    public Function mainfunc;

    public Module(){
        globalinit = new Function("globalinit", new voidType());
        mainfunc = new Function("main", new intType());

        Function print = new Function("print", new voidType());
        parameter para = new parameter(new register("%0"), new stringType());
        print.paralist.add(para);
        functionlist.add(print);

        Function println = new Function("println", new voidType());
        para = new parameter(new register("%0"), new stringType());
        println.paralist.add(para);
        functionlist.add(println);

        Function printInt = new Function("printInt", new voidType());
        para = new parameter(new register("%0"), new intType());
        printInt.paralist.add(para);
        functionlist.add(printInt);

        Function printlnInt = new Function("printlnInt", new voidType());
        para = new parameter(new register("%0"), new intType());
        printlnInt.paralist.add(para);
        functionlist.add(printlnInt);

        Function getString = new Function("getString", new stringType());
        functionlist.add(getString);

        Function getInt = new Function("getInt", new intType());
        functionlist.add(getInt);

        Function toString = new Function("toString", new stringType());
        para = new parameter(new register("%0"), new intType());
        toString.paralist.add(para);
        functionlist.add(toString);
    }
}
