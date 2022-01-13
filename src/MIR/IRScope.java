package MIR;


import MIR.Operand.register;
import MIR.Type.*;
import Util.error.semanticError;
import Util.position;

import java.util.HashMap;

public class IRScope {
    public IRScope parentscope;
    public HashMap<String, register> varlist = new HashMap<>();
    public HashMap<String, IRType> typelist = new HashMap<>();
    public enum ScopeType {Global, Class, Other};
    public ScopeType scopetype;

    public IRScope(IRScope parentscope, ScopeType scopetype){
        this.parentscope = parentscope;
        this.scopetype = scopetype;
    }

    public register findvarreg(String varname){
        register retreg = null;
        if(varlist.containsKey(varname)){
            retreg = varlist.get(varname);
            return retreg;
        }
        else {
            IRScope curScope = parentscope;
            while(curScope!=null){
                if(curScope.varlist.containsKey(varname)){
                    retreg = curScope.varlist.get(varname);
                    return retreg;
                }
                else{
                    curScope = curScope.parentscope;
                }
            }
        }
        return retreg;
    }

    public IRType findvartype(String varname){
        IRType rettype = null;
        if(typelist.containsKey(varname)){
            rettype = typelist.get(varname);
            return rettype;
        }
        else {
            IRScope curScope = parentscope;
            while(curScope!=null){
                if(curScope.typelist.containsKey(varname)){
                    rettype = curScope.typelist.get(varname);
                    return rettype;
                }
                else{
                    curScope = curScope.parentscope;
                }
            }
        }
        return rettype;
    }
}
