package MIR;


import MIR.Entity.*;
import Util.error.semanticError;
import Util.position;

import java.util.HashMap;

public class IRScope {
    public IRScope parentscope;
    public HashMap<String, register> varlist = new HashMap<>();
    public enum ScopeType {Global, Class, Other};
    public ScopeType scopetype;

    public IRScope(IRScope parentscope, ScopeType scopetype){
        this.parentscope = parentscope;
        this.scopetype = scopetype;
    }

    public register findvar(String varname){
        register retreg;
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
        throw new semanticError("你IRScope写错了，没找到变量", new position(1,1));
    }
}
