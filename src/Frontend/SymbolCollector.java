package Frontend;

import AST.*;
import Util.Scope;
import Util.error.semanticError;
import Util.type;
import Util.globalScope;
import Util.position;

import java.util.ArrayList;

public class SymbolCollector implements ASTVisitor{
    private globalScope gScope;
    private Scope currentScope;
    private ArrayList<type> parameters;
    public SymbolCollector(Scope scope) {
        gScope = (globalScope) scope;
        currentScope = scope;
    }

    @Override
    public void visit(FileNode it) {
        //bulid inner function
        position pos = it.pos;
        Scope functionScope = new Scope(gScope);
        functionScope.addmembers(pos, "str", new type("string", 0));
        ArrayList<type> funcpara = new ArrayList<>();
        funcpara.add(new type("string", 0));
        gScope.addfunction(pos, "print", functionScope, new type("void", 0), funcpara);

        functionScope = new Scope(gScope);
        functionScope.addmembers(pos, "str", new type("string", 0));
        funcpara = new ArrayList<>();
        funcpara.add(new type("string", 0));
        gScope.addfunction(pos, "println", functionScope, new type("void", 0), funcpara);

        functionScope = new Scope(gScope);
        functionScope.addmembers(pos, "n", new type("int", 0));
        funcpara = new ArrayList<>();
        funcpara.add(new type("int", 0));
        gScope.addfunction(pos, "printInt", functionScope, new type("void", 0), funcpara);

        functionScope = new Scope(gScope);
        functionScope.addmembers(pos, "n", new type("int", 0));
        funcpara = new ArrayList<>();
        funcpara.add(new type("int", 0));
        gScope.addfunction(pos, "printlnInt", functionScope, new type("void", 0), funcpara);

        functionScope = new Scope(gScope);
        funcpara = new ArrayList<>();
        gScope.addfunction(pos, "getString", functionScope, new type("string", 0), funcpara);

        functionScope = new Scope(gScope);
        funcpara = new ArrayList<>();
        gScope.addfunction(pos, "getInt", functionScope, new type("int", 0), funcpara);

        functionScope = new Scope(gScope);
        functionScope.addmembers(pos, "i", new type("int", 0));
        funcpara = new ArrayList<>();
        funcpara.add(new type("int", 0));
        gScope.addfunction(pos, "toString", functionScope, new type("string", 0), funcpara);

        //build inner class
        globalScope arrayscope = new globalScope(gScope);
        functionScope = new Scope(arrayscope);
        funcpara = new ArrayList<>();
        arrayscope.addfunction(pos, "size", functionScope, new type("int", 0), funcpara);
        gScope.addclass(pos, "array", arrayscope);

        globalScope stringscope = new globalScope(gScope);
        functionScope = new Scope(stringscope);
        funcpara = new ArrayList<>();
        stringscope.addfunction(pos, "length", functionScope, new type("int", 0), funcpara);

        functionScope = new Scope(stringscope);
        functionScope.addmembers(pos, "left", new type("int", 0));
        functionScope.addmembers(pos, "right", new type("int", 0));
        funcpara = new ArrayList<>();
        funcpara.add(new type("int", 0));
        funcpara.add(new type("int", 0));
        stringscope.addfunction(pos, "substring", functionScope, new type("string", 0), funcpara);

        functionScope = new Scope(stringscope);
        funcpara = new ArrayList<>();
        stringscope.addfunction(pos, "parseInt", functionScope, new type("int", 0), funcpara);

        functionScope = new Scope(stringscope);
        functionScope.addmembers(pos, "pos", new type("int", 0));
        funcpara = new ArrayList<>();
        funcpara.add(new type("int", 0));
        stringscope.addfunction(pos, "ord", functionScope, new type("int", 0), funcpara);
        stringscope.classname = "string";
        gScope.addclass(pos, "string", stringscope);

        //build others
        it.wholeprogram.forEach(wd->{
            if (wd instanceof classDefNode) {
                globalScope classscope = new globalScope(gScope);
                classscope.classname = ((classDefNode)wd).name;
                gScope.addclass(pos, ((classDefNode)wd).name, classscope);
                wd.accept(this);
            }
            else if(wd instanceof functiondefNode) {
                wd.accept(this);
            }
            else if(wd instanceof varDefNode) {
                wd.accept(this);
            }
        });


    }
    @Override
    public void visit(classDefNode it) {
        currentScope = gScope.getscopefromClass(it.pos, it.name);
        it.classcontents.forEach(cd->{
            if(cd instanceof functiondefNode) {
                cd.accept(this);
                if(((functiondefNode) cd).functionName.equals(it.name)){
                    throw new semanticError("wrong constructor define", cd.pos);
                }
            }
            else if(cd instanceof varlistNode) {
                ((varlistNode) cd).varlist.forEach(vd->vd.accept(this));
            }
        });
        currentScope = currentScope.getParentScope();
    }

    @Override
    public void visit(functiondefNode it) {
        Scope functionscope = new Scope(currentScope);
        int dim = 0;
        if(it.returnType instanceof arrayTypeNode){
            dim = ((arrayTypeNode)it.returnType).dimension;
        }
        type returnType = new type(it.returnType.typename, dim);
        currentScope = functionscope;
        parameters = new ArrayList<>();
        if(it.parameter!=null)
        it.parameter.accept(this);
        currentScope = currentScope.getParentScope();
        ((globalScope)currentScope).addfunction(it.pos, it.functionName, functionscope, returnType, parameters);
    }

    @Override
    public void visit(functionParameterNode it) {
        it.paras.forEach(pd->pd.accept(this));
    }

    @Override
    public void visit(varNode it) {
        int dim = 0;
        if(it.typename instanceof arrayTypeNode){
            dim = ((arrayTypeNode)it.typename).dimension;
        }
        type varnodetype = new type(it.typename.typename, dim);
        currentScope.addmembers(it.pos, it.parametername, varnodetype);
        parameters.add(varnodetype);
    }

    @Override
    public void visit(varDefNode it) {
        int dim = 0;
        if(it.vartype instanceof arrayTypeNode) {
            dim = ((arrayTypeNode)it.vartype).dimension;
        }
        type varnodetype = new type(it.vartype.typename, dim);
        currentScope.addmembers(it.pos, it.name, varnodetype);
    }

    @Override public void visit(classConstructorNode it){}
    @Override public void visit(voidTypeNode it){}
    @Override public void visit(varTypeNode it){}
    @Override public void visit(arrayTypeNode it){}
    @Override public void visit(exprlistNode it){}
    @Override public void visit(indexExprNode it){}
    @Override public void visit(prefixExprNode it){}
    @Override public void visit(suffixExprNode it){}
    @Override public void visit(methodExprNode it){}
    @Override public void visit(memberExprNode it){}
    @Override public void visit(binaryExprNode it){}
    @Override public void visit(assignExprNode it){}
    @Override public void visit(arrayCreatorNode it){}
    @Override public void visit(classCreatorNode it){}
    @Override public void visit(wrongcreator it){}
    @Override public void visit(functionCallNode it){}
    @Override public void visit(blockStmtNode it){}
    @Override public void visit(forStmtNode it){}
    @Override public void visit(ifStmtNode it){}
    @Override public void visit(whileStmtNode it){}
    @Override public void visit(returnStmtNode it){}
    @Override public void visit(breakStmtNode it){}
    @Override public void visit(continueStmtNode it){}
    @Override public void visit(exprStmtNode it){}
    @Override public void visit(semicolonStmtNode it){}
    @Override public void visit(literalNode it){}
    @Override public void visit(idNode it){}
    @Override public void visit(lambdaExprNode it){}
    @Override public void visit(integerNode it){}
    @Override public void visit(stringNode it){}
    @Override public void visit(thisNode it){}
    @Override public void visit(varlistNode it){}
}
