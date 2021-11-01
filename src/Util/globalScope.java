package Util;

import Util.error.semanticError;

import java.util.ArrayList;
import java.util.HashMap;

public class globalScope extends Scope{
    public String classname;
    public HashMap<String, Scope> functionScope = new HashMap<>();
    public HashMap<String, type> functionretType = new HashMap<>();
    public HashMap<String, ArrayList<type>> funcPara = new HashMap<>();
    public HashMap<String, globalScope> classScope = new HashMap<>();

    public globalScope(Scope parentScope) {
        super(parentScope);
        classname = "undefine";
    }

    public void addfunction(position pos, String name, Scope funcscope, type returnType, ArrayList<type> para) {
        functionScope.put(name, funcscope);
        functionretType.put(name, returnType);
        funcPara.put(name, para);
    }

    public void addclass(position pos, String name, globalScope classscope) {
        classname = name;
        classScope.put(name, classscope);
    }

    public Scope getscopefromClass(position pos, String name) {
        if(classScope.containsKey(name)) {
            return classScope.get(name);
        }
        else throw new semanticError("cannot find class" + name, pos);
    }

    public Scope getscopefromfunction(position pos, String name) {
        if(functionScope.containsKey(name)) {
            return functionScope.get(name);
        }
        else throw new semanticError("cannot find function" + name, pos);
    }


}