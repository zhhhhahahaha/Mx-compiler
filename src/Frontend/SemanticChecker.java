package Frontend;

import java.util.ArrayList;
import java.util.Objects;

import AST.*;
import Util.Scope;
import Util.type;
import Util.error.semanticError;
import Util.globalScope;

public class SemanticChecker implements ASTVisitor{
    private globalScope gScope;
    private Scope currentScope;
    private int loopstage;
    private boolean isinfunction;
    private boolean hasreturn;
    private String functionnameforreturn;
    
    public SemanticChecker(Scope scope) {
        gScope = (globalScope)scope;
        currentScope = scope;
        loopstage = 0;
        isinfunction = false;
        hasreturn = false;
        functionnameforreturn = "undefine";
    }
    
    @Override
    public void visit(FileNode it) {
        it.wholeprogram.forEach(p->p.accept(this));
        if(!gScope.functionScope.containsKey("main")){
            throw new semanticError("Do not have main function", it.pos);
        }
        type returntype = gScope.functionretType.get("main");
        if(!returntype.typename.equals("int")|| returntype.dim>0) {
            throw new semanticError("The main function return wrong type", it.pos);
        }
        ArrayList<type> paras = gScope.funcPara.get("main");
        if(paras.size()!=0){
            throw new semanticError("The main function should not have parameters", it.pos);
        }
    }

    @Override
    public void visit(classDefNode it) {
        currentScope = gScope.getscopefromClass(it.pos, it.name);
        gScope = gScope.classScope.get(it.name);
        it.classcontents.forEach(cd->{
            if(cd instanceof classConstructorNode) {
                if(!Objects.equals(((classConstructorNode) cd).id, it.name)){
                    throw new semanticError("The constructor function of class" + it.name + "is invalid", it.pos);
                }
                isinfunction = true;
                functionnameforreturn = it.name;
                ((classConstructorNode)cd).accept(this);
                ((classConstructorNode) cd).block.stmts.forEach(sd->{
                    if (sd instanceof returnStmtNode){
                        if(((returnStmtNode) sd).value!=null){
                            throw new semanticError("constructor cannot return any type", sd.pos);
                        }
                    }
                });
                isinfunction = false;
            }
            else if(cd instanceof varlistNode){
            }
            else {
                cd.accept(this);
            }
        });
        gScope = (globalScope)gScope.parentScope;
        currentScope = currentScope.getParentScope();
    }

    @Override
    public void visit(classConstructorNode it){
        it.block.accept(this);
    }

    @Override public void visit(voidTypeNode it){}
    @Override public void visit(varTypeNode it){}
    @Override public void visit(arrayTypeNode it){}
    
    @Override
    public void visit(functiondefNode it){
        currentScope = gScope.getscopefromfunction(it.pos, it.functionName);
        isinfunction = true;
        functionnameforreturn = it.functionName;
        hasreturn = false;
        it.block.accept(this);
        if(!Objects.equals(it.functionName, "main")) {
            type returntype = ((globalScope)currentScope.parentScope).functionretType.get(it.functionName);
            it.block.stmts.forEach(sd->{
                if(sd instanceof returnStmtNode) {
                    if(((returnStmtNode) sd).value!=null)
                    if(((returnStmtNode)sd).value.exprtype.dim > 0) {
                        type tem = ((returnStmtNode)sd).value.exprtype;
                        if(!Objects.equals(((returnStmtNode) sd).value.exprtype.typename, returntype.typename) ||tem.dim!=returntype.dim){
                            throw new semanticError("return wrong arraytype in function"+ it.functionName, it.pos);
                        }
                    }
                    else {
                        if(!Objects.equals(((returnStmtNode) sd).value.exprtype.typename, returntype.typename)){
                            throw new semanticError("return wrong valuetype in function" + it.functionName, it.pos);
                        }
                    }
                    else {
                        if(!returntype.typename.equals("void")){
                            throw new semanticError("the function need return value",it.pos);
                        }
                    }
                }
            });
            if(!returntype.typename.equals("void")){
                if(!hasreturn){
                    throw new semanticError("the function need return statement", it.pos);
                }
            }
        }
        else {
            it.block.stmts.forEach(sd->{
                if(sd instanceof returnStmtNode) {
                    if(!((returnStmtNode) sd).value.exprtype.typename.equals("int")||((returnStmtNode) sd).value.exprtype.dim>0){
                        throw new semanticError("the main function has wrong return", sd.pos);
                    }
                }
            });

        }
        hasreturn = false;
        isinfunction = false;
        currentScope = currentScope.getParentScope();
    }
    
    @Override public void visit(functionParameterNode it){}

    @Override
    public void visit(exprlistNode it){
        it.exprlist.forEach(ed->{
            ed.accept(this);
        }
        );
    }

    @Override
    public void visit(indexExprNode it){
        it.idexpr.accept(this);
        it.index.accept(this);
        if(!Objects.equals(it.index.exprtype.typename, "int")||it.index.exprtype.dim>0){
            throw new semanticError("wrong using of index", it.index.pos);
        }
        if(it.idexpr.exprtype.dim<=0){
            throw new semanticError("wrong using of index expression", it.pos);
        }
        it.exprtype.typename = it.idexpr.exprtype.typename;
        it.exprtype.dim = it.idexpr.exprtype.dim-1;
    }


    @Override
    public void visit(prefixExprNode it){
        it.rhs.accept(this);
        switch(it.prefixOp) {
            case lon: 
            if(!Objects.equals(it.rhs.exprtype.typename, "bool") ||it.rhs.exprtype.dim>0){
                throw new semanticError("wrong using of '!'", it.pos);
            }
            else {
                it.exprtype = it.rhs.exprtype;
            }break;
            case til:
            if(!Objects.equals(it.rhs.exprtype.typename, "int") ||it.rhs.exprtype.dim>0){
                throw new semanticError("wrong using of '~'", it.pos);
            }
            else {
                it.exprtype = it.rhs.exprtype;
            }break;
            case dop:
            if(!Objects.equals(it.rhs.exprtype.typename, "int") ||it.rhs.exprtype.dim>0){
                throw new semanticError("wrong using of '++'", it.pos);
            }
            else {
                it.exprtype = it.rhs.exprtype;
            }break;
            case dom:
            if(!Objects.equals(it.rhs.exprtype.typename, "int") ||it.rhs.exprtype.dim>0){
                throw new semanticError("wrong using of '--'", it.pos);
            }
            else {
                it.exprtype = it.rhs.exprtype;
            }break;
            case plu:
            if(!Objects.equals(it.rhs.exprtype.typename, "int") ||it.rhs.exprtype.dim>0){
                throw new semanticError("wrong using of '+'", it.pos);
            }
            else {
                it.exprtype = it.rhs.exprtype;
            }break;
            case min:
            if(!Objects.equals(it.rhs.exprtype.typename, "int") ||it.rhs.exprtype.dim>0){
                throw new semanticError("wrong using of '-'", it.pos);
            }
            else {
                it.exprtype = it.rhs.exprtype;
            }break;
        }
    }

    @Override
    public void visit(suffixExprNode it){
        it.lhs.accept(this);
        if(it.lhs instanceof suffixExprNode){
            throw new semanticError("wrong using of suffixstatement", it.pos);
        }
        switch(it.suffixOp){
            case dop:
            if(!Objects.equals(it.lhs.exprtype.typename, "int") ||it.lhs.exprtype.dim>0){
                throw new semanticError("wrong using of '++'", it.pos);
            }
            else{
                it.exprtype = it.lhs.exprtype;
            }break;
            case dom:
            if(!Objects.equals(it.lhs.exprtype.typename, "int") ||it.lhs.exprtype.dim>0){
                throw new semanticError("wrong using of '--'", it.pos);
            }
            else{
                it.exprtype = it.lhs.exprtype;
            }break;
        }
    }

    @Override
    public void visit(methodExprNode it){
        it.expr.accept(this);
        if(it.expr.exprtype.dim>0){
            if(!it.id.equals("size")){
                throw new semanticError("the array using wrong method",it.pos);
            }
            if(it.exprlist!=null){
                throw new semanticError("the size method does not have parameter", it.pos);
            }
            it.exprtype = new type("int", 0);
            return;
        }
        globalScope classscope = new globalScope(null);
        if(gScope.classScope.containsKey(it.expr.exprtype.typename)){
            classscope = gScope.classScope.get(it.expr.exprtype.typename);
        }
        else {
            classscope = ((globalScope)gScope.parentScope).classScope.get(it.expr.exprtype.typename);
        }
        if(!classscope.functionScope.containsKey(it.id)){
            throw new semanticError("using undefined method " + it.id, it.pos);
        }
        else {
            it.exprtype = classscope.functionretType.get(it.id);
        }
        ArrayList<type> functionparas = classscope.funcPara.get(it.id);
        if(it.exprlist!=null){
            it.exprlist.exprlist.forEach(ed->ed.accept(this));
            if(functionparas.size()!=it.exprlist.exprlist.size()){
                throw new semanticError("using wrong parameters of method "+it.id, it.pos);
            }
        }
        else {
            if(functionparas.size()!=0){
                throw new semanticError("using wrong parameters of method "+it.id, it.pos);
            }
        }
        for(int i = 0; i < functionparas.size();i++){
            if(!functionparas.get(i).equals(it.exprlist.exprlist.get(i).exprtype)){
                throw new semanticError("using mismatched parameters", it.pos);
            }
        }
    }

    @Override
    public void visit(memberExprNode it){
        it.expr.accept(this);
        globalScope classscope = new globalScope(null);
        if(gScope.classScope.containsKey(it.expr.exprtype.typename)){
            classscope = gScope.classScope.get(it.expr.exprtype.typename);
        }
        else {
            classscope = ((globalScope)gScope.parentScope).classScope.get(it.expr.exprtype.typename);
        }
        if(!classscope.members.containsKey(it.id)) {
            throw new semanticError("using undefined member" + it.id, it.pos);
        }
        else {
            it.exprtype = classscope.members.get(it.id);
        }
    }

    @Override
    public void visit(binaryExprNode it){
        it.lhs.accept(this);
        it.rhs.accept(this);
        switch(it.opCode){
            case mul:
                if(!Objects.equals(it.lhs.exprtype.typename, "int") ||it.lhs.exprtype.dim>0|| !Objects.equals(it.rhs.exprtype.typename, "int") ||it.rhs.exprtype.dim>0){
                    throw new semanticError("wrong using of '*'", it.pos);
                }
                else{
                    it.exprtype = it.lhs.exprtype;
                }break;
            case div:
                if(!Objects.equals(it.lhs.exprtype.typename, "int") ||it.lhs.exprtype.dim>0|| !Objects.equals(it.rhs.exprtype.typename, "int") ||it.rhs.exprtype.dim>0){
                    throw new semanticError("wrong using of '/'", it.pos);
                }
                else{
                    it.exprtype = it.lhs.exprtype;
                }break;
            case mod:
                if(!Objects.equals(it.lhs.exprtype.typename, "int") ||it.lhs.exprtype.dim>0|| !Objects.equals(it.rhs.exprtype.typename, "int") ||it.rhs.exprtype.dim>0){
                    throw new semanticError("wrong using of '%'", it.pos);
                }
                else{
                    it.exprtype = it.lhs.exprtype;
                }break;
            case add:
                if(!Objects.equals(it.lhs.exprtype.typename, it.rhs.exprtype.typename) ||it.lhs.exprtype.dim>0||it.rhs.exprtype.dim>0){
                    throw new semanticError("wrong using of '+'", it.pos);
                }
                else if(!Objects.equals(it.lhs.exprtype.typename, "int") && !Objects.equals(it.lhs.exprtype.typename, "string")){
                    throw new semanticError("wrong using of '+'", it.pos);
                }
                else{
                    it.exprtype = it.lhs.exprtype;
                }break;
            case sub:
                if(!Objects.equals(it.lhs.exprtype.typename, "int") ||it.lhs.exprtype.dim>0|| !Objects.equals(it.rhs.exprtype.typename, "int") ||it.rhs.exprtype.dim>0){
                    throw new semanticError("wrong using of '-'", it.pos);
                }
                else{
                    it.exprtype = it.lhs.exprtype;
                }break;
            case shl:
                if(!Objects.equals(it.lhs.exprtype.typename, "int") ||it.lhs.exprtype.dim>0|| !Objects.equals(it.rhs.exprtype.typename, "int") ||it.rhs.exprtype.dim>0){
                    throw new semanticError("wrong using of '<<'", it.pos);
                }
                else{
                    it.exprtype = it.lhs.exprtype;
                }break;
            case shr:
                if(!Objects.equals(it.lhs.exprtype.typename, "int") ||it.lhs.exprtype.dim>0|| !Objects.equals(it.rhs.exprtype.typename, "int") ||it.rhs.exprtype.dim>0){
                    throw new semanticError("wrong using of '>>'", it.pos);
                }
                else{
                    it.exprtype = it.lhs.exprtype;
                }break;
            case and:
                if(!Objects.equals(it.lhs.exprtype.typename, "int") ||it.lhs.exprtype.dim>0|| !Objects.equals(it.rhs.exprtype.typename, "int") ||it.rhs.exprtype.dim>0){
                    throw new semanticError("wrong using of '&'", it.pos);
                }
                else{
                    it.exprtype = it.lhs.exprtype;
                }break;
            case xor:
                if(!Objects.equals(it.lhs.exprtype.typename, "int") ||it.lhs.exprtype.dim>0|| !Objects.equals(it.rhs.exprtype.typename, "int") ||it.rhs.exprtype.dim>0){
                    throw new semanticError("wrong using of '^'", it.pos);
                }
                else{
                    it.exprtype = it.lhs.exprtype;
                }break;
            case or:
                if(!Objects.equals(it.lhs.exprtype.typename, "int") ||it.lhs.exprtype.dim>0|| !Objects.equals(it.rhs.exprtype.typename, "int") ||it.rhs.exprtype.dim>0){
                    throw new semanticError("wrong using of '|'", it.pos);
                }
                else{
                    it.exprtype = it.lhs.exprtype;
                }break;
            case les:
                if(!Objects.equals(it.lhs.exprtype.typename, it.rhs.exprtype.typename) ||it.lhs.exprtype.dim>0||it.rhs.exprtype.dim>0){
                    throw new semanticError("wrong using of '<'", it.pos);
                }
                else if(!Objects.equals(it.lhs.exprtype.typename, "string") && !Objects.equals(it.lhs.exprtype.typename, "int")){
                    throw new semanticError("wrong using of '<'", it.pos);
                }
                else{
                    it.exprtype = new type("bool", 0);
                }break;
            case loe:
                if(!Objects.equals(it.lhs.exprtype.typename, it.rhs.exprtype.typename) ||it.lhs.exprtype.dim>0||it.rhs.exprtype.dim>0){
                    throw new semanticError("wrong using of '<='", it.pos);
                }
                else if(!Objects.equals(it.lhs.exprtype.typename, "string") && !Objects.equals(it.lhs.exprtype.typename, "int")){
                    throw new semanticError("wrong using of '<='", it.pos);
                }
                else{
                    it.exprtype = new type("bool", 0);
                }break;
            case gre:
                if(!Objects.equals(it.lhs.exprtype.typename, it.rhs.exprtype.typename) ||it.lhs.exprtype.dim>0||it.rhs.exprtype.dim>0){
                    throw new semanticError("wrong using of '>'", it.pos);
                }
                else if(!Objects.equals(it.lhs.exprtype.typename, "string") && !Objects.equals(it.lhs.exprtype.typename, "int")){
                    throw new semanticError("wrong using of '>'", it.pos);
                }
                else{
                    it.exprtype = new type("bool", 0);
                }break;
            case goe:
                if(!Objects.equals(it.lhs.exprtype.typename, it.rhs.exprtype.typename) ||it.lhs.exprtype.dim>0||it.rhs.exprtype.dim>0){
                    throw new semanticError("wrong using of '>='", it.pos);
                }
                else if(!Objects.equals(it.lhs.exprtype.typename, "string") && !Objects.equals(it.lhs.exprtype.typename, "int")){
                    throw new semanticError("wrong using of '>='", it.pos);
                }
                else{
                    it.exprtype = new type("bool", 0);
                }break;
            case eq:
                if(!Objects.equals(it.lhs.exprtype.typename, it.rhs.exprtype.typename) ||it.lhs.exprtype.dim>0||it.rhs.exprtype.dim>0){
                    if(it.lhs.exprtype.dim>0){
                        if(!Objects.equals(it.rhs.exprtype.typename, "null"))
                        throw new semanticError("wrong using of '=='", it.pos);
                        it.exprtype = new type("bool", 0);
                    }
                    else if(it.rhs.exprtype.dim>0){
                        if(!Objects.equals(it.lhs.exprtype.typename, "null"))
                        throw new semanticError("wrong using of '=='", it.pos);
                        it.exprtype = new type("bool", 0);
                    }
                    else {
                        if(!it.lhs.exprtype.typename.equals("null")&&!it.rhs.exprtype.typename.equals("null"))
                        throw new semanticError("wrong using of '=='", it.pos);
                        it.exprtype = new type("bool", 0);
                    }
                }
                else {
                    it.exprtype = new type("bool", 0);
                }break;
            case neq:
                if(!Objects.equals(it.lhs.exprtype.typename, it.rhs.exprtype.typename) ||it.lhs.exprtype.dim>0||it.rhs.exprtype.dim>0){
                    if(it.lhs.exprtype.dim>0) {
                        if (!Objects.equals(it.rhs.exprtype.typename, "null"))
                            throw new semanticError("wrong using of '!='", it.pos);
                        it.exprtype = new type("bool", 0);
                    }
                    else if(it.rhs.exprtype.dim>0){
                        if(!Objects.equals(it.lhs.exprtype.typename, "null"))
                        throw new semanticError("wrong using of '!='", it.pos);
                        it.exprtype = new type("bool", 0);
                    }
                    else {
                        if(!it.lhs.exprtype.typename.equals("null")&&!it.rhs.exprtype.typename.equals("null"))
                        throw new semanticError("wrong using of '!='", it.pos);
                        it.exprtype = new type("bool", 0);
                    }
                }
                else {
                    it.exprtype = new type("bool", 0);
                }break;
            case loa:
                if(!Objects.equals(it.lhs.exprtype.typename, "bool") ||it.lhs.exprtype.dim>0|| !Objects.equals(it.rhs.exprtype.typename, "bool") ||it.rhs.exprtype.dim>0){
                    throw new semanticError("wrong using of '&&'", it.pos);
                }
                else{
                    it.exprtype = it.lhs.exprtype;
                }break;
            case loo:
                if(!Objects.equals(it.lhs.exprtype.typename, "bool") ||it.lhs.exprtype.dim>0|| !Objects.equals(it.rhs.exprtype.typename, "bool") ||it.rhs.exprtype.dim>0){
                    throw new semanticError("wrong using of '||'", it.pos);
                }
                else{
                    it.exprtype = it.lhs.exprtype;
                }break;
        }
    }

    @Override
    public void visit(assignExprNode it){
        it.lhs.accept(this);
        if(it.lhs instanceof literalNode||it.lhs instanceof integerNode||it.lhs instanceof stringNode){
            throw new semanticError("the left expression cannot be assigned", it.pos);
        }
        it.rhs.accept(this);
        if(it.lhs instanceof functionCallNode){
            throw new semanticError("functioncall cannot be leftvalue", it.pos);
        }
        if(!it.lhs.exprtype.equals(it.rhs.exprtype)){
            if(!it.rhs.exprtype.typename.equals("null"))
            throw new semanticError("wrong using of assign statement", it.pos);
            else {
                if(it.lhs.exprtype.dim==0&&(it.lhs.exprtype.typename.equals("int")||it.lhs.exprtype.typename.equals("bool"))){
                    throw new semanticError("wrong using of assign statement", it.pos);
                }
            }
        }
    }
    @Override
    public void visit(wrongcreator it){
        throw new semanticError("wrong using of arraycreator", it.pos);
    }

    @Override
    public void visit(arrayCreatorNode it){
        it.exprlist.forEach(ed->{
            ed.accept(this);
            if(!Objects.equals(ed.exprtype.typename, "int")){
                throw new semanticError("wrong using of index", ed.pos);
            }
        });
    }

    @Override
    public void visit(classCreatorNode it){
        if(!gScope.classScope.containsKey(it.varType.typename)){
            if(gScope.parentScope==null||!((globalScope)gScope.parentScope).classScope.containsKey(it.varType.typename))
            throw new semanticError("create undefined class"+ it.varType.typename, it.pos);
        }
    }

    @Override
    public void visit(functionCallNode it){
        if(!gScope.functionScope.containsKey(it.id)&&!((globalScope)gScope.parentScope).functionretType.containsKey(it.id)){
            throw new semanticError("using undefined function", it.pos);
        }
        if(gScope.functionScope.containsKey(it.id)){
            it.exprtype = gScope.functionretType.get(it.id);
        }
        else {
            it.exprtype = ((globalScope)gScope.getParentScope()).functionretType.get(it.id);
        }
        ArrayList<type> functionparas = new ArrayList<>();
        if(gScope.functionScope.containsKey(it.id)){
            functionparas = gScope.funcPara.get(it.id);
        }else {
            functionparas = ((globalScope)gScope.parentScope).funcPara.get(it.id);
        }
        if(it.exprlist!=null){
            it.exprlist.exprlist.forEach(ed->ed.accept(this));
            if(functionparas.size()!=it.exprlist.exprlist.size()){
                throw new semanticError("using wrong parameters of function "+it.id, it.pos);
            }
        }
        else{
            if(functionparas.size()!=0){
                throw new semanticError("using wrong parameters of function "+it.id, it.pos);
            }
        }
        for(int i = 0; i < functionparas.size(); i++){
            if(!functionparas.get(i).equals(it.exprlist.exprlist.get(i).exprtype)&&!it.exprlist.exprlist.get(i).exprtype.typename.equals("null")){
                throw new semanticError("using mismatched parameters of function "+it.id, it.pos);
            }
        }
    }

    @Override
    public void visit(blockStmtNode it){
        currentScope = new Scope(currentScope);
        it.stmts.forEach(sd->sd.accept(this));
        currentScope = currentScope.getParentScope();
    }

    @Override
    public void visit(semicolonStmtNode it){
        return;
    }

    @Override
    public void visit(forStmtNode it){
        loopstage++;
        currentScope = new Scope(currentScope);
        if(it.init!=null){
            it.init.accept(this);
        }
        if(it.condition!=null) {
            it.condition.accept(this);
            if(!Objects.equals(it.condition.exprtype.typename, "bool")){
                throw new semanticError("for statement has invalid condition", it.condition.pos);
            }
        }
        else {
            //throw new semanticError("for statement does not have condition", it.pos);
        }
        if(it.incr!=null){
            it.incr.accept(this);
        }
        if(it.state!=null)
        it.state.accept(this);
        currentScope = currentScope.getParentScope();
        loopstage--;
    }

    @Override
    public void visit(ifStmtNode it){
        currentScope = new Scope(currentScope);
        if(it.condition==null){
            throw new semanticError("if statement does not have condition", it.pos);
        }
        else {
            it.condition.accept(this);
            if(!Objects.equals(it.condition.exprtype.typename, "bool")){
                throw new semanticError("if statement has invalid condition", it.condition.pos);
            }
        }
        if(!(it.thenStmt instanceof blockStmtNode)){
            currentScope = new Scope(currentScope);
            it.thenStmt.accept(this);
            currentScope = currentScope.getParentScope();
        }else {
            it.thenStmt.accept(this);
        }
        if(it.elseStmt!=null){
            if(it.elseStmt instanceof blockStmtNode)
            it.elseStmt.accept(this);
            else {
                currentScope = new Scope(currentScope);
                it.elseStmt.accept(this);
                currentScope = currentScope.getParentScope();
            }
        }
        currentScope = currentScope.getParentScope();
    }


    @Override
    public void visit(whileStmtNode it){
        currentScope = new Scope(currentScope);
        loopstage++;
        if(it.condition==null) {
            throw new semanticError("while statement does not have condition", it.condition.pos);
        }
        else {
            it.condition.accept(this);
            if(!Objects.equals(it.condition.exprtype.typename, "bool")){
                throw new semanticError("while statement has invalid condition", it.condition.pos);
            }
        }
        if(it.state instanceof blockStmtNode)
        it.state.accept(this);
        else {
            currentScope = new Scope(currentScope);
            it.state.accept(this);
            currentScope = currentScope.getParentScope();
        }
        currentScope = currentScope.getParentScope();
        loopstage--;
    }

    @Override
    public void visit(returnStmtNode it){
        if(!isinfunction){
            throw new semanticError("return statement is not in function", it.pos);
        }
        else{
            if(it.value!=null) {
                it.value.accept(this);
                if (!it.value.exprtype.equals(gScope.functionretType.get(functionnameforreturn))&&!it.value.exprtype.typename.equals("null")) {
                    throw new semanticError("function has wrong return", it.pos);
                }
            }
        }

        hasreturn = true;
    }

    @Override
    public void visit(breakStmtNode it){
        if(loopstage==0) {
            throw new semanticError("break statement is not in loop", it.pos);
        }
    }
    @Override
    public void visit(continueStmtNode it){
        if(loopstage==0) {
            throw new semanticError("continue statement is not in loop", it.pos);
        }
    }

    @Override
    public void visit(exprStmtNode it){
        it.exprlist.accept(this);
    }

    @Override public void visit(varNode it){}

    @Override
    public void visit(varDefNode it){
        if(currentScope.members.containsKey(it.name)){
            throw new semanticError("redefine of variable "+it.name, it.pos);
        }
        if(it.init!=null){
            it.init.accept(this);
        }
        if(currentScope.members.containsKey(it.name)){
            throw new semanticError("redefine parameter "+it.name, it.pos);
        }
        if(!Objects.equals(it.vartype.typename, "int") && !Objects.equals(it.vartype.typename, "bool") && !Objects.equals(it.vartype.typename, "string")){
            if(!gScope.classScope.containsKey(it.vartype.typename)){
                if(gScope.parentScope==null||!((globalScope)gScope.parentScope).classScope.containsKey(it.vartype.typename))
                throw new semanticError("using undefined type", it.pos);
            }
        }
        if(it.init!=null) {
            if (!it.init.exprtype.typename.equals(it.vartype.typename)&&!it.init.exprtype.typename.equals("null")) {
                throw new semanticError("invalid initial statement", it.pos);
            }
        }
        if(it.vartype instanceof arrayTypeNode) {
            int dim = ((arrayTypeNode)it.vartype).dimension;
            currentScope.addmembers(it.pos, it.name, new type(it.vartype.typename, dim));
            if(it.init!=null) {
                if (it.init.exprtype.dim != dim&&!it.init.exprtype.typename.equals("null")) {
                    throw new semanticError("invalid initial statement", it.pos);
                }
            }
        }
        else {
            currentScope.addmembers(it.pos, it.name, new type(it.vartype.typename, 0));
        }
    }

    @Override
    public void visit(varlistNode it){
        it.varlist.forEach(vd->vd.accept(this));
    }

    @Override public void visit(literalNode it){}

    @Override public void visit(idNode it){
        if(currentScope.findvariable(it.pos, it.id)!=null){
            it.exprtype = currentScope.findvariable(it.pos, it.id);
        }
        else {
            throw new semanticError("using undefined variable", it.pos);
        }
    }

    @Override
    public void visit(lambdaExprNode it){
        currentScope = new Scope(currentScope);
        ArrayList<type> funcpara = new ArrayList<>();
        if(it.parameter!=null){
            it.parameter.paras.forEach(pd->{
                if(!Objects.equals(pd.typename.typename, "int") && !Objects.equals(pd.typename.typename, "bool") && !Objects.equals(pd.typename.typename, "string")){
                    if(!gScope.classScope.containsKey(pd.typename.typename)){
                        throw new semanticError("using undefined type", it.pos);
                    }
                }
                if(pd.typename instanceof arrayTypeNode){
                    type pdtype = new type(pd.typename.typename, ((arrayTypeNode)pd.typename).dimension);
                    currentScope.addmembers(it.pos, pd.parametername, pdtype);
                    funcpara.add(pdtype);
                }
                else {
                    type pdtype = new type(pd.typename.typename, 0);
                    currentScope.addmembers(it.pos, pd.parametername, pdtype);
                    funcpara.add(pdtype);
                }
            }
            );        
        }
        it.suite.accept(this);
        it.suite.stmts.forEach(sd->{
            if(sd instanceof returnStmtNode){
                it.exprtype = ((returnStmtNode)sd).value.exprtype;
            }
        });
        if(Objects.equals(it.exprtype.typename, "undefine")) {
            it.exprtype = new type("void", 0);
        }
        if(it.exprlist!=null) {
            it.exprlist.exprlist.forEach(ed->ed.accept(this));
            if (it.exprlist.exprlist.size() != funcpara.size()) {
                throw new semanticError("lambda statement has wrong parameters", it.pos);
            }
            for (int i = 0; i < funcpara.size(); i++) {
                if (!it.exprlist.exprlist.get(i).exprtype.equals(funcpara.get(i))) {
                    throw new semanticError("lambda statement has mismatched parameters", it.pos);
                }
            }
        }
        else {
            if(funcpara.size()!=0)
                throw new semanticError("lambda statement has wrong parameters", it.pos);
        }
        currentScope = currentScope.getParentScope();
    }

    @Override public void visit(integerNode it){}
    @Override public void visit(stringNode it){}

    @Override public void visit(thisNode it){
        globalScope classscope = gScope;
        it.exprtype.typename = classscope.classname;
    }
}
