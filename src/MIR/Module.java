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

        Function string_length = new Function("string_length", new intType());
        para = new parameter(new register("%0"), new stringType());
        string_length.paralist.add(para);
        functionlist.add(string_length);

        Function string_substring = new Function("string_substring", new stringType());
        parameter para1 = new parameter(new register("%0"), new stringType());
        parameter para2 = new parameter(new register("%1"), new intType());
        parameter para3 = new parameter(new register("%2"), new intType());
        string_substring.paralist.add(para1);
        string_substring.paralist.add(para2);
        string_substring.paralist.add(para3);
        functionlist.add(string_substring);

        Function string_parseInt = new Function("string_parseInt", new intType());
        para = new parameter(new register("%0"), new stringType());
        string_parseInt.paralist.add(para);
        functionlist.add(string_parseInt);

        Function string_ord = new Function("string_ord", new intType());
        para1 = new parameter(new register("%0"), new stringType());
        para2 = new parameter(new register("%1"), new intType());
        string_ord.paralist.add(para1);
        string_ord.paralist.add(para2);
        functionlist.add(string_ord);

        Function string_add = new Function("sting_add", new stringType());
        para1 = new parameter(new register("%0"), new stringType());
        para2 = new parameter(new register("%1"), new stringType());
        string_add.paralist.add(para1);
        string_add.paralist.add(para2);
        functionlist.add(string_add);
    }
}
