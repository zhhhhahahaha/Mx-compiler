package Backend;

import MIR.IR_ASTVisitor;
import MIR.entity;
import Util.Scope;
import Util.globalScope;

import java.util.ArrayList;

public class IRBuilder implements IR_ASTVisitor {
    public ArrayList<entity> wholeentity;
    private globalScope gScope;
    private Scope currentScope;

    public IRBuilder(Scope scope){
        gScope = (globalScope) scope;
        currentScope = scope;
    }




}
