package Backend;

import AST.*;
import MIR.BasicBlock;
import MIR.Entity.*;
import MIR.Function;
import MIR.IRScope;
import MIR.Inst.*;
import MIR.Module;
import MIR.Operand.*;
import MIR.Type.*;

public class IRBuilder implements ASTVisitor {
    public Module module;
    public IRScope curScope;

    public classType curClass;
    public Function curfunc;
    public BasicBlock curblock; //实际上很多时候是next block

    public int regcount;//用于在每个函数内部数寄存器以方便给寄存器命名
    public label forcontinue;
    public label forbreak;
    public boolean expr_is_operand;
    public operand expr_value;

    public IRBuilder(){
        module = new Module();
        curScope = new IRScope(null, IRScope.ScopeType.Global);
        curClass = new classType(null);
        curfunc = new Function(null, null);
        curblock = new BasicBlock(null);
        regcount = 0;
    }
    public IRType toIRType(typeNode it){
        if(it instanceof varTypeNode){
            if(it.typename.equals("int")){
                intType type = new intType();
                return type;
            }
            else if(it.typename.equals("bool")){
                boolType type = new boolType();
                return type;
            }
            else if(it.typename.equals("string")){
                stringType type = new stringType();
                return type;
            }
            else {
                classType type = new classType(it.typename);
                return type;
            }
        }
        else if(it instanceof arrayTypeNode){
            if(it.typename.equals("int")){
                intType basetype = new intType();
                arrayType type = new arrayType(((arrayTypeNode) it).dimension, basetype);
                return type;
            }
            else if(it.typename.equals("bool")){
                boolType basetype = new boolType();
                arrayType type = new arrayType(((arrayTypeNode) it).dimension, basetype);
                return type;
            }
            else if(it.typename.equals("string")){
                stringType basetype = new stringType();
                arrayType type = new arrayType(((arrayTypeNode) it).dimension, basetype);
                return type;
            }
            else {
                classType basetype = new classType(it.typename);
                arrayType type = new arrayType(((arrayTypeNode) it).dimension, basetype);
                return type;
            }
        }
        else{
            voidType type = new voidType();
            return type;
        }
    }

    @Override
    public void visit(FileNode it){
        it.wholeprogram.forEach(wp->{
            if(wp instanceof varlistNode){
                ((varlistNode) wp).varlist.forEach(vd->{
                    register varreg = new register("@"+vd.name);
                    curScope.varlist.put(vd.name, varreg);
                    /*！！添加全局变量初始化的部分，并且要添加到module中



                    */
                });
            }
            else {
                IRScope newScope = new IRScope(curScope, null);
                if(wp instanceof functiondefNode)
                    newScope.scopetype = IRScope.ScopeType.Other;
                else
                    newScope.scopetype = IRScope.ScopeType.Class;
                curScope = newScope;
                it.accept(this);
                curScope = newScope.parentscope;
            }
        });
    }

    @Override
    public void visit(classDefNode it) {
        curClass = new classType(it.name);
        it.classcontents.forEach(cc->{
            if(cc instanceof varlistNode){
                ((varlistNode) cc).varlist.forEach(vd->{
                    IRType type = toIRType(vd.vartype);
                    curClass.typelist.put(vd.name, type);
                    curClass.typenumlist.put(vd.name, curClass.number);
                    curClass.number++;
                });
            }
        });
        module.classlist.add(curClass);
        it.classcontents.forEach(cc->{
            if(cc instanceof functiondefNode || cc instanceof classConstructorNode){
                IRScope newScope = new IRScope(curScope, IRScope.ScopeType.Other);
                curScope = newScope;
                cc.accept(this);
                curScope = newScope.parentscope;
            }
        });
        curClass = null;
    }

    @Override
    public void visit(classConstructorNode it){
        curfunc = new Function("@class."+curClass.name, null);
        curblock = new BasicBlock(new label(0));
        it.block.accept(this);
        module.functionlist.add(curfunc);
        curfunc = null;
        curblock = null;
    }

    @Override
    public void visit(voidTypeNode it){}
    @Override
    public void visit(varTypeNode it){}
    @Override
    public void visit(arrayTypeNode it){}

    @Override
    public void visit(functiondefNode it){
        regcount = 0;
        IRType rettype = toIRType(it.returnType);
        curfunc = new Function("@"+it.functionName, rettype);
        if(curScope.parentscope.scopetype == IRScope.ScopeType.Class)
            curfunc.name = "@class."+curClass.name+"."+it.functionName;
        curblock = new BasicBlock(new label(0));
        regcount += it.parameter.paras.size()-1;
        for(int i = 0; i<it.parameter.paras.size();i++){
            varNode vn = it.parameter.paras.get(i);
            register parareg = new register("%"+i);
            regcount++;
            register varreg = new register("%"+regcount);
            curScope.varlist.put(vn.parametername, varreg);
            IRType vntype = toIRType(vn.typename);
            parameter para = new parameter(parareg, vntype);
            curfunc.paralist.add(para);
            allocaInst varalloc = new allocaInst(varreg, vntype);
            curfunc.allocalist.add(varalloc);
            pointType varpoint = new pointType(vntype);
            storeInst varstore = new storeInst(vntype, parareg, null, true, varpoint, varreg);
            curblock.instlist.add(varstore);
        }
        it.block.accept(this);
        curfunc.blocklist.add(curblock);
        module.functionlist.add(curfunc);
        curfunc = null;
        curblock = null;
    }

    @Override
    public void visit(functionParameterNode it){}

    @Override
    public void visit(exprlistNode it){
        it.exprlist.forEach(ep->ep.accept(this));
    }

    @Override
    public void visit(indexExprNode it){




        expr_is_operand = false;
    }

    @Override
    public void visit(prefixExprNode it){
        expr_is_operand = false;
        it.rhs.accept(this);
        switch (it.prefixOp){
            case lon:
                register lonleftreg = new register("%"+regcount);
                regcount++;
                register lonresreg = new register("%"+regcount);
                binaryInst lonxorinst = new binaryInst(binaryInst.binaryop.xor, new boolType(), lonleftreg, null, true, null, new boolConst(true), false, lonresreg);
                curblock.instlist.add(lonxorinst);
                expr_is_operand = false;
                break;
            case til:
                register tilleftreg = new register("%"+regcount);
                regcount++;
                register tilresreg = new register("%"+regcount);
                binaryInst tilxorinst = new binaryInst(binaryInst.binaryop.xor, new intType(), tilleftreg, null, true, null, new intConst(-1), false, tilresreg);
                curblock.instlist.add(tilxorinst);
                expr_is_operand = false;
                break;
            case dop:
                register doploadid = null;
                if(it.rhs instanceof idNode){
                    doploadid = curScope.findvar(((idNode) it.rhs).id);
                }
                regcount++;
                register doploadres = new register("%"+regcount);
                loadInst dopload = new loadInst(doploadres, new intType(), new pointType(new intType()), doploadid);
                curblock.instlist.add(dopload);

                regcount++;
                register dopaddres = new register("%"+regcount);
                binaryInst dopadd = new binaryInst(binaryInst.binaryop.add, new intType(), doploadres, null, true, null, new intConst(1), false, dopaddres);
                curblock.instlist.add(dopadd);

                storeInst dopstore = new storeInst(new intType(), dopaddres, null, true, new pointType(new intType()), doploadid);
                curblock.instlist.add(dopstore);
                expr_is_operand = false;
                break;
            case dom:
                register domloadid = null;
                if(it.rhs instanceof idNode){
                    domloadid = curScope.findvar(((idNode) it.rhs).id);
                }
                regcount++;
                register domloadres = new register("%"+regcount);
                loadInst domload = new loadInst(domloadres, new intType(), new pointType(new intType()), domloadid);
                curblock.instlist.add(domload);

                regcount++;
                register domsubres = new register("%"+regcount);
                binaryInst domsub = new binaryInst(binaryInst.binaryop.sub, new intType(), domloadres, null, true, null, new intConst(1), false, domsubres);
                curblock.instlist.add(domsub);

                storeInst domstore = new storeInst(new intType(), domsubres, null, true, new pointType(new intType()), domloadid);
                curblock.instlist.add(domstore);
                expr_is_operand = false;
                break;
            case plu:
                if(expr_is_operand){
                    expr_is_operand = true;
                }
                else{
                    if(it.rhs instanceof idNode){
                        register pluloadid = curScope.findvar(((idNode) it.rhs).id);
                        regcount++;
                        register pluloadres = new register("%"+regcount);
                        loadInst pluload = new loadInst(pluloadres, new intType(), new pointType(new intType()), pluloadid);
                        curblock.instlist.add(pluload);
                        expr_is_operand = false;
                    }
                }
                break;
            case min:
                if(expr_is_operand){
                    expr_is_operand = true;
                    if(expr_value instanceof intConst){
                        ((intConst) expr_value).value = -((intConst) expr_value).value;
                    }
                }
                else{
                    if(it.rhs instanceof idNode){
                        register minloadid = curScope.findvar(((idNode) it.rhs).id);
                        regcount++;
                        register minloadres = new register("%"+regcount);
                        loadInst minload = new loadInst(minloadres, new intType(), new pointType(new intType()), minloadid);
                        curblock.instlist.add(minload);
                    }
                    regcount++;
                    register minres = new register("%"+regcount);
                    binaryInst min = new binaryInst(binaryInst.binaryop.sub, new intType(), null, new intConst(0), false, new register("%"+(regcount-1)), null, true, minres);
                    curblock.instlist.add(min);
                    expr_is_operand = false;
                }
                break;
        }
    }

    @Override
    public void visit(suffixExprNode it){
        expr_is_operand = false;
        it.lhs.accept(this);
        switch (it.suffixOp){
            case dop:
                register dopload = null;
                
        }

    }

    @Override
    public void visit(memberExprNode it){

    }

    @Override
    public void visit(binaryExprNode it){

    }

    @Override
    public void visit(assignExprNode it){

    }

    @Override
    public void visit(arrayCreatorNode it){

    }

    @Override
    public void visit(classCreatorNode it){

    }

    @Override
    public void visit(wrongcreator it){}

    @Override
    public void visit(functionCallNode it){

    }

    @Override
    public void visit(blockStmtNode it){
        curScope = new IRScope(curScope, IRScope.ScopeType.Other);
        if(it.stmts.size()!=0)
            it.stmts.forEach(st->st.accept(this));
        curScope = curScope.parentscope;

    }

    @Override
    public void visit(forStmtNode it){
        curScope = new IRScope(curScope, IRScope.ScopeType.Other);
        curfunc.labelcount+=4;
        BasicBlock condblock = new BasicBlock(new label(curfunc.labelcount-3));
        BasicBlock stateblock = new BasicBlock(new label(curfunc.labelcount-2));
        BasicBlock incrblock = new BasicBlock(new label(curfunc.labelcount-1));
        BasicBlock nextblock = new BasicBlock(new label(curfunc.labelcount));
        if(it.init!=null)
            it.init.accept(this);
        branchInst br = new branchInst(condblock.block_label, null, false, null);
        curblock.instlist.add(br);
        curfunc.blocklist.add(curblock);

        curblock = condblock;
        if(it.condition!=null) {
            expr_is_operand = false;
            it.condition.accept(this);
            if(expr_is_operand){
                if(expr_value instanceof boolConst){
                    if(((boolConst) expr_value).value){
                        branchInst tostmt = new branchInst(stateblock.block_label, null, false, null);
                        curblock.instlist.add(tostmt);
                    }
                    else{
                        branchInst tostmt = new branchInst(nextblock.block_label, null, false, null);
                        curblock.instlist.add(tostmt);
                    }
                }
            }
            else {
                branchInst tostmt = new branchInst(stateblock.block_label, nextblock.block_label, true, new register("%" + regcount));
                curblock.instlist.add(tostmt);
            }
            expr_is_operand = false;
        }
        else {
            branchInst tostmt = new branchInst(stateblock.block_label, null, false, null);
            curblock.instlist.add(tostmt);
        }
        curfunc.blocklist.add(curblock);

        curblock = stateblock;
        label precontinue = forcontinue;
        label prebreak = forbreak;
        forcontinue = incrblock.block_label;
        forbreak = nextblock.block_label;
        if(!(it.state instanceof blockStmtNode)){
            curScope = new IRScope(curScope, IRScope.ScopeType.Other);
        }
        if(it.state!=null)
            it.state.accept(this);
        if(!(it.state instanceof blockStmtNode)){
            curScope = curScope.parentscope;
        }
        branchInst toincr = new branchInst(incrblock.block_label, null, false, null);
        curblock.instlist.add(toincr);
        curfunc.blocklist.add(curblock);
        forcontinue = precontinue;
        forbreak = prebreak;

        curblock = incrblock;
        if(it.incr!=null)
            it.incr.accept(this);
        branchInst tocond = new branchInst(condblock.block_label, null, false, null);
        curblock.instlist.add((tocond));
        curfunc.blocklist.add(curblock);

        curblock = nextblock;
        curScope = curScope.parentscope;
    }

    @Override
    public void visit(ifStmtNode it){
        curfunc.labelcount+=3;
        BasicBlock thenblock = new BasicBlock(new label(curfunc.labelcount-2));
        BasicBlock elseblock = new BasicBlock(new label(curfunc.labelcount-1));
        BasicBlock nextblock = new BasicBlock(new label(curfunc.labelcount));
        it.condition.accept(this);
        branchInst tostate = new branchInst(thenblock.block_label, elseblock.block_label, true, new register("%"+regcount));
        curblock.instlist.add(tostate);
        curfunc.blocklist.add(curblock);

        curblock = thenblock;
        if(!(it.thenStmt instanceof blockStmtNode)){
            curScope = new IRScope(curScope, IRScope.ScopeType.Other);
        }
        it.thenStmt.accept(this);
        if(!(it.thenStmt instanceof blockStmtNode)){
            curScope = curScope.parentscope;
        }
        branchInst tonext = new branchInst(nextblock.block_label, null, false, null);
        curblock.instlist.add(tonext);
        curfunc.blocklist.add(curblock);

        curblock = elseblock;
        if(!(it.elseStmt instanceof blockStmtNode)){
            curScope = new IRScope(curScope, IRScope.ScopeType.Other);
        }
        if(it.elseStmt!=null)
            it.elseStmt.accept(this);
        if(!(it.elseStmt instanceof blockStmtNode)){
            curScope = curScope.parentscope;
        }
        curblock.instlist.add(tonext);
        curfunc.blocklist.add(curblock);

        curblock = nextblock;
    }

    @Override
    public void visit(whileStmtNode it){
        curScope = new IRScope(curScope, IRScope.ScopeType.Other);
        curfunc.labelcount+=3;
        BasicBlock condblock = new BasicBlock(new label(curfunc.labelcount-2));
        BasicBlock stateblock = new BasicBlock(new label(curfunc.labelcount-1));
        BasicBlock nextblock = new BasicBlock(new label(curfunc.labelcount));
        branchInst tocond = new branchInst(condblock.block_label, null, false, null);
        curblock.instlist.add(tocond);
        curfunc.blocklist.add(curblock);

        curblock = condblock;
        it.condition.accept(this);
        if(expr_is_operand){
            if(expr_value instanceof boolConst){
                if(((boolConst) expr_value).value){
                    branchInst tostate = new branchInst(stateblock.block_label, null, false, null);
                    curblock.instlist.add(tostate);
                }
                else{
                    branchInst tostate = new branchInst(nextblock.block_label, null, false, null);
                    curblock.instlist.add(tostate);
                }
            }
        }
        else{
            branchInst tostate = new branchInst(stateblock.block_label, nextblock.block_label, true, new register("%" + regcount));
            curblock.instlist.add(tostate);
        }
        curfunc.blocklist.add(curblock);

        curblock = stateblock;
        label precontinue = forcontinue;
        label prebreak = forbreak;
        forcontinue = condblock.block_label;
        forbreak = nextblock.block_label;
        if(!(it.state instanceof blockStmtNode)){
            curScope = new IRScope(curScope, IRScope.ScopeType.Other);
        }
        it.state.accept(this);
        if(!(it.state instanceof blockStmtNode)){
            curScope = curScope.parentscope;
        }
        branchInst backcond = new branchInst(condblock.block_label, null, false, null);
        curblock.instlist.add(backcond);
        curfunc.blocklist.add(curblock);
        forcontinue = precontinue;
        forbreak = prebreak;

        curblock = nextblock;
        curScope = curScope.parentscope;
    }

    @Override
    public void visit(returnStmtNode it){
        if(it.value==null){
            retInst ret = new retInst(curfunc.rettype, null, null, false);
            curblock.instlist.add(ret);
        }
        else{
            expr_is_operand = false;
            retInst ret = new retInst(curfunc.rettype, null, null, false );
            if(expr_is_operand){
                ret.ret_is_operand = true;
                ret.retval = expr_value;
            }
            else{
                ret.retreg = new register("%"+regcount);
            }
            curblock.instlist.add(ret);
            expr_is_operand = false;
        }
    }

    @Override
    public void visit(breakStmtNode it){
        branchInst breakbr = new branchInst(forbreak, null, false, null);
        curblock.instlist.add(breakbr);
    }

    @Override
    public void visit(continueStmtNode it){
        branchInst continuebr = new branchInst(forcontinue, null, false, null);
        curblock.instlist.add(continuebr);
    }

    @Override
    public void visit(exprStmtNode it){
        it.exprlist.accept(this);
    }
    @Override
    public void visit(semicolonStmtNode it){}
    @Override
    public void visit(varNode it){}

    @Override
    public void visit(varDefNode it){
        if(curScope.scopetype== IRScope.ScopeType.Global){
            /*关于全局变量的vardef还未考虑好



             */
        }
        else{
            IRType vtype = toIRType(it.vartype);
            regcount++;
            register vreg = new register("%"+regcount);

            allocaInst valloc = new allocaInst(vreg, vtype);
            curfunc.allocalist.add(valloc);
            curScope.varlist.put(it.name, vreg);

            expr_is_operand = false;
            if(it.init!=null)
            it.init.accept(this);
            storeInst varinit = new storeInst(vtype, null, null, false, new pointType(vtype), vreg);
            if(expr_is_operand){
                varinit.sourceop = expr_value;
            }
            else{
                varinit.sourcereg = new register("%"+regcount);
                varinit.fromreg = true;
            }
            curblock.instlist.add(varinit);
            expr_is_operand = false;
        }
    }

    @Override
    public void visit(varlistNode it){
        it.varlist.forEach(vd->vd.accept(this));
    }

    @Override
    public void visit(literalNode it){}
    @Override
    public void visit(idNode it){}
    @Override
    public void visit(lambdaExprNode it){}
    @Override
    public void visit(integerNode it){}
    @Override
    public void visit(stringNode it){}
    @Override
    public void visit(thisNode it){}


}


