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

import java.util.ArrayList;

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
    public IRType exprtype;

    public IRBuilder(){
        module = new Module();
        curScope = new IRScope(null, IRScope.ScopeType.Global);
        curClass = null;
        curfunc = null;
        curblock = null;
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

    public register findvarptr(ExprNode it){
        register returnreg = null;
        if(it instanceof idNode){
            return curScope.findvarreg(((idNode) it).id);
        }
        else if(it instanceof memberExprNode){
            ((memberExprNode) it).expr.accept(this);
            register classres = new register("%"+regcount);

            regcount++;
            register getres = new register("%"+regcount);
            IRType firsttype = exprtype;
            ArrayList<operand> index = new ArrayList<>();
            index.add(new intConst(0));
            classType idclass = null;
            for(int i = 0; i < module.classlist.size(); i++){
                if(firsttype instanceof classType)
                    if(module.classlist.get(i).name.equals(((classType) firsttype).name))
                        idclass = module.classlist.get(i);
            }
            index.add(new intConst(idclass.typenumlist.get(((memberExprNode) it).id)));
            getelementptrInst get = new getelementptrInst(getres, firsttype, classres, firsttype, index);
            curblock.instlist.add(get);
            returnreg = getres;
        }
        else if(it instanceof indexExprNode){
            ((indexExprNode) it).idexpr.accept(this);
            register sourcereg = new register("%"+regcount);
            IRType restype = null;
            IRType sourcetype = exprtype;
            if(exprtype instanceof arrayType){
                if(((arrayType) exprtype).dim==1){
                    restype = ((arrayType) exprtype).type;
                }
                else{
                    restype = new arrayType(((arrayType) exprtype).dim-1, ((arrayType) exprtype).type);
                }
            }

            ((indexExprNode) it).index.accept(this);
            ArrayList<operand> getindex = new ArrayList<>();
            if(expr_is_operand){
                getindex.add(expr_value);
            }
            else {
                getindex.add(new register("%"+regcount));
            }
            regcount++;
            register getresreg = new register("%"+regcount);
            getelementptrInst get = new getelementptrInst(getresreg, restype, sourcereg, sourcetype, getindex);
            curblock.instlist.add(get);
            returnreg = getresreg;
        }
        return returnreg;
    }

    @Override
    public void visit(FileNode it){
        BasicBlock globalinit = new BasicBlock(new label(0));
        curblock = globalinit;
        regcount = 0;
        it.wholeprogram.forEach(wp->{
            if(wp instanceof functiondefNode){
                IRType rettype = toIRType(((functiondefNode) wp).returnType);
                Function func = new Function(((functiondefNode) wp).functionName, rettype);
                module.functionlist.add(func);
            }
            else if(wp instanceof classDefNode){
                classType classtype = new classType(((classDefNode) wp).name);
                ((classDefNode) wp).classcontents.forEach(cc->{
                    if(cc instanceof varlistNode){
                        ((varlistNode) cc).varlist.forEach(vd->{
                            IRType type = toIRType(vd.vartype);
                            classtype.typelist.put(vd.name, type);
                            classtype.typenumlist.put(vd.name, classtype.number);
                            classtype.number++;
                            classtype.addsize(type);
                        });
                    }
                    else if(cc instanceof functiondefNode){
                        IRType rettype = toIRType(((functiondefNode) cc).returnType);
                        Function func = new Function(((classDefNode) wp).name+"."+((functiondefNode) cc).functionName, rettype);
                        module.functionlist.add(func);
                    }
                });
                module.classlist.add(classtype);
            }
            else if(wp instanceof varlistNode){
                ((varlistNode) wp).varlist.forEach(vd->{
                    register varreg = new register("@"+vd.name);
                    curScope.varlist.put(vd.name, varreg);
                    IRType vartype = toIRType(vd.vartype);
                    curScope.typelist.put(vd.name, vartype);
                    globalvarInst gvar = new globalvarInst(varreg, vartype, null);
                    if(vartype instanceof boolType){
                        gvar.value = new boolConst(true);
                    }
                    else{
                        gvar.value = new intConst(0);
                    }
                    module.globalvarlist.add(gvar);

                    regcount++;
                    register loadres = new register("%"+regcount);
                    loadInst load = new loadInst(loadres, vartype, new pointType(vartype), varreg);
                    curblock.instlist.add(load);

                    vd.init.accept(this);
                    storeInst store = new storeInst(vartype, null, null, false, new pointType(vartype), varreg);
                    if(expr_is_operand)
                        store.sourceop = expr_value;
                    else {
                        store.sourcereg = new register("%"+regcount);
                        store.fromreg = true;
                    }
                    curblock.instlist.add(store);
                });
            }
        });
        module.globalinit.blocklist.add(globalinit);

        it.wholeprogram.forEach(wp->{
            if(!(wp instanceof varlistNode)){
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
        for(int i = 0; i < module.classlist.size(); i++){
            if(it.name.equals(module.classlist.get(i).name))
                curClass = module.classlist.get(i);
        }
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
        curfunc = new Function(curClass.name, null);
        curblock = new BasicBlock(new label(0));
        regcount = 1;
        register thisreg = new register("%"+regcount);
        curScope.varlist.put(curClass.name, thisreg);
        IRType thistype = new classType(curClass.name);
        curScope.typelist.put(curClass.name, thistype);

        register parareg = new register("%0");
        parameter para = new parameter(parareg, thistype);
        curfunc.paralist.add(para);

        allocaInst thisalloc = new allocaInst(thisreg, thistype);
        curfunc.allocalist.add(thisalloc);

        pointType thispoint = new pointType(thistype);
        storeInst thisstore = new storeInst(thistype, parareg, null, true, thispoint, thisreg);
        curblock.instlist.add(thisstore);

        it.block.accept(this);
        curfunc.blocklist.add(curblock);
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
        for(int i = 0; i < module.functionlist.size(); i++){
            if(curScope.parentscope.scopetype == IRScope.ScopeType.Class) {
                if (module.functionlist.get(i).name.equals(curClass.name + "." + it.functionName))
                    curfunc = module.functionlist.get(i);
            }
            else {
                if (module.functionlist.get(i).name.equals(it.functionName))
                    curfunc = module.functionlist.get(i);
            }
        }
        curblock = new BasicBlock(new label(0));
        regcount += it.parameter.paras.size();
        if(curScope.parentscope.scopetype == IRScope.ScopeType.Class) {
            regcount++;
            register thisreg = new register("%"+regcount);
            curScope.varlist.put(curClass.name, thisreg);
            IRType thistype = new classType(curClass.name);
            curScope.typelist.put(curClass.name, thistype);

            register parareg = new register("%0");
            parameter para = new parameter(parareg, thistype);
            curfunc.paralist.add(para);

            allocaInst thisalloc = new allocaInst(thisreg, thistype);
            curfunc.allocalist.add(thisalloc);

            pointType thispoint = new pointType(thistype);
            storeInst thisstore = new storeInst(thistype, parareg, null, true, thispoint, thisreg);
            curblock.instlist.add(thisstore);
        }
        for(int i = 1; i<=it.parameter.paras.size();i++){
            varNode vn = it.parameter.paras.get(i);
            regcount++;
            register varreg = new register("%"+regcount);
            curScope.varlist.put(vn.parametername, varreg);
            IRType vntype = toIRType(vn.typename);
            curScope.typelist.put(vn.parametername, vntype);

            register parareg = new register("%"+i);
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
    public void visit(indexExprNode it){//对于自定义的类存的是指向类的指针，对于其他存的是变量的值
        it.idexpr.accept(this);
        register sourcereg = new register("%"+regcount);
        IRType restype = null;
        IRType sourcetype = exprtype;
        if(exprtype instanceof arrayType){
            if(((arrayType) exprtype).dim==1){
                restype = ((arrayType) exprtype).type;
            }
            else{
                restype = new arrayType(((arrayType) exprtype).dim-1, ((arrayType) exprtype).type);
            }
        }

        it.index.accept(this);
        ArrayList<operand> getindex = new ArrayList<>();
        if(expr_is_operand){
            getindex.add(expr_value);
        }
        else {
            getindex.add(new register("%"+regcount));
        }
        regcount++;
        register getresreg = new register("%"+regcount);
        getelementptrInst get = new getelementptrInst(getresreg, restype, sourcereg, sourcetype, getindex);
        curblock.instlist.add(get);

        regcount++;
        register loadres = new register("%"+regcount);
        loadInst load = new loadInst(loadres, restype, new pointType(restype), getresreg);
        curblock.instlist.add(load);

        exprtype = restype;
        expr_is_operand = false;
    }

    @Override
    public void visit(prefixExprNode it){
        it.rhs.accept(this);
        switch (it.prefixOp){
            case lon:
                register lonleftreg = new register("%"+regcount);
                regcount++;
                register lonresreg = new register("%"+regcount);
                binaryInst lonxorinst = new binaryInst(binaryInst.binaryop.xor, new boolType(), lonleftreg, null, true, null, new boolConst(true), false, lonresreg);
                curblock.instlist.add(lonxorinst);
                expr_is_operand = false;
                exprtype = new boolType();
                break;
            case til:
                if(expr_is_operand){
                    expr_is_operand = true;
                    if(expr_value instanceof intConst){//semanticcheck正确的话也应该只可能是inttype
                        expr_value = new intConst(~((intConst) expr_value).value);
                    }
                }
                else {
                    register tilleftreg = new register("%"+regcount);
                    regcount++;
                    register tilresreg = new register("%" + regcount);
                    binaryInst tilxorinst = new binaryInst(binaryInst.binaryop.xor, new intType(), tilleftreg, null, true, null, new intConst(-1), false, tilresreg);
                    curblock.instlist.add(tilxorinst);
                    expr_is_operand = false;
                    exprtype = new intType();
                }
                break;
            case dop:
                register doploadid = findvarptr(it.rhs);

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
                exprtype = new intType();
                break;
            case dom:
                register domloadid = findvarptr(it.rhs);

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
                exprtype = new intType();
                break;
            case plu:
                break;
            case min:
                if(expr_is_operand){
                    expr_is_operand = true;
                    if(expr_value instanceof intConst){
                        ((intConst) expr_value).value = -((intConst) expr_value).value;
                    }
                }
                else{
                    regcount++;
                    register minres = new register("%"+regcount);
                    binaryInst min = new binaryInst(binaryInst.binaryop.sub, new intType(), null, new intConst(0), false, new register("%"+(regcount-1)), null, true, minres);
                    curblock.instlist.add(min);
                    expr_is_operand = false;
                    exprtype = new intType();
                }
                break;
        }
    }

    @Override
    public void visit(methodExprNode it){
        it.expr.accept(this);
        Function func = null;
        for(int i = 0; i < module.functionlist.size(); i++){
            if(exprtype instanceof classType)
                if(module.functionlist.get(i).name.equals(((classType) exprtype).name+"."+it.id))
                    func = module.functionlist.get(i);
        }
        functioncallInst call = new functioncallInst(null, func.rettype, func.name);
        parameter thispara = new parameter(new register("%"+regcount), exprtype);
        call.paras.add(thispara);
        it.exprlist.exprlist.forEach(ep->{
            ep.accept(this);
            parameter para = new parameter(null, exprtype);
            if(expr_is_operand)
                para.parareg = expr_value;
            else
                para.parareg = new register("%"+regcount);
            call.paras.add(para);
        });
        regcount++;
        register resreg = new register("%"+regcount);
        call.resreg = resreg;

        exprtype = func.rettype;
        expr_is_operand = false;
    }

    @Override
    public void visit(suffixExprNode it){
        it.lhs.accept(this);
        switch (it.suffixOp){
            case dop:
                register doploadid = findvarptr(it.lhs);

                regcount+=2;
                register doploadres = new register("%"+regcount);
                loadInst dopload = new loadInst(doploadres, new intType(), new pointType(new intType()), doploadid);
                curblock.instlist.add(dopload);

                register dopaddres = new register("%"+(regcount-1));
                binaryInst dopadd = new binaryInst(binaryInst.binaryop.add, new intType(), doploadres, null, true, null, new intConst(1), false, dopaddres);
                curblock.instlist.add(dopadd);

                storeInst dopstore = new storeInst(new intType(), dopaddres, null, true, new pointType(new intType()), doploadid);
                curblock.instlist.add(dopstore);
                expr_is_operand = false;
                exprtype = new intType();
                break;
            case dom:
                register domloadid = findvarptr(it.lhs);

                regcount+=2;
                register domloadres = new register("%"+regcount);
                loadInst domload = new loadInst(domloadres, new intType(), new pointType(new intType()), domloadid);
                curblock.instlist.add(domload);

                register domsubres = new register("%"+(regcount-1));
                binaryInst domsub = new binaryInst(binaryInst.binaryop.sub, new intType(), domloadres, null, true, null, new intConst(1), false, domsubres);
                curblock.instlist.add(domsub);
                expr_is_operand = false;
                exprtype = new intType();
                break;
        }
    }

    @Override
    public void visit(memberExprNode it){
        it.expr.accept(this);
        register classres = new register("%"+regcount);

        regcount++;
        register getres = new register("%"+regcount);
        IRType firsttype = exprtype;
        ArrayList<operand> index = new ArrayList<>();
        index.add(new intConst(0));
        classType idclass = null;
        for(int i = 0; i < module.classlist.size(); i++){
            if(firsttype instanceof classType)
                if(module.classlist.get(i).name.equals(((classType) firsttype).name))
                    idclass = module.classlist.get(i);
        }
        index.add(new intConst(idclass.typenumlist.get(it.id)));
        getelementptrInst get = new getelementptrInst(getres, firsttype, classres, firsttype, index);
        curblock.instlist.add(get);

        regcount++;
        register memberres = new register("%"+regcount);
        IRType membertype = idclass.typelist.get(it.id);
        loadInst memberload = new loadInst(memberres, membertype, new pointType(membertype), getres);
        curblock.instlist.add(memberload);

        exprtype = membertype;
        expr_is_operand = false;
    }

    @Override
    public void visit(binaryExprNode it){
        operand leftop = null, rightop = null;
        it.lhs.accept(this);
        if(expr_is_operand){
            leftop = expr_value;
        }
        else{
            leftop = new register("%"+regcount);
        }
        it.rhs.accept(this);
        if(expr_is_operand){
            rightop = expr_value;
        }
        else{
            rightop = new register("%"+regcount);
        }
        if(leftop instanceof operand && rightop instanceof operand){
            expr_is_operand = true;
            switch (it.opCode){
                case mul:
                    if(leftop instanceof intConst && rightop instanceof intConst)
                        expr_value = new intConst(((intConst) leftop).value*((intConst) rightop).value);
                    exprtype = new intType();
                    break;
                case div:
                    if(leftop instanceof intConst && rightop instanceof intConst)
                        expr_value = new intConst(((intConst) leftop).value/((intConst) rightop).value);
                    exprtype = new intType();
                    break;
                case mod:
                    if(leftop instanceof intConst && rightop instanceof intConst)
                        expr_value = new intConst(((intConst) leftop).value%((intConst) rightop).value);
                    exprtype = new intType();
                    break;
                case add:
                    if(leftop instanceof intConst && rightop instanceof intConst)
                        expr_value = new intConst(((intConst) leftop).value+((intConst) rightop).value);
                    exprtype = new intType();
                    break;
                case sub:
                    if(leftop instanceof intConst && rightop instanceof intConst)
                        expr_value = new intConst(((intConst) leftop).value-((intConst) rightop).value);
                    exprtype = new intType();
                    break;
                case shl:
                    if(leftop instanceof intConst && rightop instanceof intConst)
                        expr_value = new intConst(((intConst) leftop).value<<((intConst) rightop).value);
                    exprtype = new intType();
                    break;
                case shr:
                    if(leftop instanceof intConst && rightop instanceof intConst)
                        expr_value = new intConst(((intConst) leftop).value>>((intConst) rightop).value);
                    exprtype = new intType();
                    break;
                case and:
                    if(leftop instanceof intConst && rightop instanceof intConst)
                        expr_value = new intConst(((intConst) leftop).value&((intConst) rightop).value);
                    exprtype = new intType();
                    break;
                case xor:
                    if(leftop instanceof intConst && rightop instanceof intConst)
                        expr_value = new intConst(((intConst) leftop).value^((intConst) rightop).value);
                    exprtype = new intType();
                    break;
                case or:
                    if(leftop instanceof intConst && rightop instanceof intConst)
                        expr_value = new intConst(((intConst) leftop).value|((intConst) rightop).value);
                    exprtype = new intType();
                    break;
                case les:
                    if(leftop instanceof intConst && rightop instanceof intConst){
                        if(((intConst) leftop).value<((intConst) rightop).value)
                            expr_value = new boolConst(true);
                        else expr_value = new boolConst(false);
                    }
                    exprtype = new boolType();
                    break;
                case loe:
                    if(leftop instanceof intConst && rightop instanceof intConst){
                        if(((intConst) leftop).value<=((intConst) rightop).value)
                            expr_value = new boolConst(true);
                        else expr_value = new boolConst(false);
                    }
                    exprtype = new boolType();
                    break;
                case gre:
                    if(leftop instanceof intConst && rightop instanceof intConst){
                        if(((intConst) leftop).value>((intConst) rightop).value)
                            expr_value = new boolConst(true);
                        else expr_value = new boolConst(false);
                    }
                    exprtype = new boolType();
                    break;
                case goe:
                    if(leftop instanceof intConst && rightop instanceof intConst){
                        if(((intConst) leftop).value>=((intConst) rightop).value)
                            expr_value = new boolConst(true);
                        else expr_value = new boolConst(false);
                    }
                    exprtype = new boolType();
                    break;
                case eq:
                    if(leftop instanceof intConst && rightop instanceof intConst){
                        if(((intConst) leftop).value==((intConst) rightop).value)
                            expr_value = new boolConst(true);
                        else expr_value = new boolConst(false);
                    }
                    else if(leftop instanceof boolConst && rightop instanceof boolConst){
                        if(((boolConst) leftop).value==((boolConst) rightop).value)
                            expr_value = new boolConst(true);
                        else expr_value = new boolConst(false);
                    }
                    exprtype = new boolType();
                    break;
                case neq:
                    if(leftop instanceof intConst && rightop instanceof intConst){
                        if(((intConst) leftop).value!=((intConst) rightop).value)
                            expr_value = new boolConst(true);
                        else expr_value = new boolConst(false);
                    }
                    else if(leftop instanceof boolConst && rightop instanceof boolConst){
                        if(((boolConst) leftop).value!=((boolConst) rightop).value)
                            expr_value = new boolConst(true);
                        else expr_value = new boolConst(false);
                    }
                    exprtype = new boolType();
                    break;
                case loa:
                    if(leftop instanceof boolConst && rightop instanceof boolConst){
                        expr_value = new boolConst(((boolConst) leftop).value&&((boolConst) rightop).value);
                    }
                    exprtype = new boolType();
                    break;
                case loo:
                    if(leftop instanceof boolConst && rightop instanceof boolConst){
                        expr_value = new boolConst(((boolConst) leftop).value||((boolConst) rightop).value);
                    }
                    exprtype = new boolType();
                    break;
            }
        }
        else{
            regcount++;
            register res = new register("%"+regcount);
            binaryInst bin = new binaryInst(null, exprtype, null, null, false, null, null, false, res);
            if(leftop instanceof register){
                bin.leftsourcereg = (register) leftop;
                bin.left_is_reg = true;
            }else bin.leftoperand = leftop;
            if(rightop instanceof register){
                bin.rightsourcereg = (register) rightop;
                bin.right_is_reg = true;
            }else bin.right_is_reg = true;

            icmpInst icm = new icmpInst(res, null, exprtype, leftop, rightop);

            switch (it.opCode){
                case mul:
                    bin.op = binaryInst.binaryop.mul;
                    exprtype = new intType();
                    curblock.instlist.add(bin);
                    break;
                case div:
                    bin.op = binaryInst.binaryop.div;
                    exprtype = new intType();
                    curblock.instlist.add(bin);
                    break;
                case mod:
                    bin.op = binaryInst.binaryop.srem;
                    exprtype = new intType();
                    curblock.instlist.add(bin);
                    break;
                case add:
                    bin.op = binaryInst.binaryop.add;
                    exprtype = new intType();
                    curblock.instlist.add(bin);
                    break;
                case sub:
                    bin.op = binaryInst.binaryop.sub;
                    exprtype = new intType();
                    curblock.instlist.add(bin);
                    break;
                case shl:
                    bin.op = binaryInst.binaryop.shl;
                    exprtype = new intType();
                    curblock.instlist.add(bin);
                    break;
                case shr:
                    bin.op = binaryInst.binaryop.shr;
                    exprtype = new intType();
                    curblock.instlist.add(bin);
                    break;
                case and:
                    bin.op = binaryInst.binaryop.and;
                    exprtype = new intType();
                    curblock.instlist.add(bin);
                    break;
                case xor:
                    bin.op = binaryInst.binaryop.xor;
                    exprtype = new intType();
                    curblock.instlist.add(bin);
                    break;
                case or:
                    bin.op = binaryInst.binaryop.or;
                    exprtype = new intType();
                    curblock.instlist.add(bin);
                    break;
                case les:
                    icm.cmptype = icmpInst.cmpType.slt;
                    exprtype = new boolType();
                    curblock.instlist.add(icm);
                    break;
                case loe:
                    icm.cmptype = icmpInst.cmpType.sle;
                    exprtype = new boolType();
                    curblock.instlist.add(icm);
                    break;
                case gre:
                    icm.cmptype = icmpInst.cmpType.sgt;
                    exprtype = new boolType();
                    curblock.instlist.add(icm);
                    break;
                case goe:
                    icm.cmptype = icmpInst.cmpType.sge;
                    exprtype = new boolType();
                    curblock.instlist.add(icm);
                    break;
                case eq:
                    icm.cmptype = icmpInst.cmpType.eq;
                    exprtype = new boolType();
                    curblock.instlist.add(icm);
                    break;
                case neq:
                    icm.cmptype = icmpInst.cmpType.ne;
                    exprtype = new boolType();
                    curblock.instlist.add(icm);
                    break;
                case loa:
                    bin.op = binaryInst.binaryop.and;
                    exprtype = new boolType();
                    curblock.instlist.add(bin);
                    break;
                case loo:
                    bin.op = binaryInst.binaryop.or;
                    exprtype = new boolType();
                    curblock.instlist.add(bin);
                    break;
            }
            expr_is_operand = false;
        }
    }

    @Override
    public void visit(assignExprNode it){
        register leftreg = findvarptr(it.lhs);
        storeInst store = new storeInst(null, null, null, false, new pointType(exprtype), leftreg);

        it.rhs.accept(this);
        store.sourcetype = exprtype;
        if(expr_is_operand)
            store.sourceop = expr_value;
        else {
            store.resreg = new register("%"+regcount);
            store.fromreg = true;
        }
    }

    @Override
    public void visit(arrayCreatorNode it){
        for(int i = 0; i < it.exprlist.size(); i++){
            it.exprlist.get(i).accept(this);
            if((i+1)!=it.varType.dimension){


            }



        }
    }

    @Override
    public void visit(classCreatorNode it){
        regcount++;
        register mallocreg = new register("%"+regcount);
        functioncallInst malloc = new functioncallInst(mallocreg, new classType(it.varType.typename), "malloc");
        classType classtype = null;
        for(int i = 0; i < module.classlist.size(); i++){
            if(module.classlist.get(i).name.equals(it.varType.typename))
                classtype = module.classlist.get(i);
        }
        parameter mpara = new parameter(new intConst(classtype.size), new intType());
        malloc.paras.add(mpara);

        functioncallInst call = new functioncallInst(null, new voidType(), it.varType.typename);
        parameter cpara = new parameter(mallocreg, new classType(classtype.name));
        call.paras.add(cpara);

        expr_is_operand = false;
        exprtype = new classType(classtype.name);
    }

    @Override
    public void visit(wrongcreator it){}

    @Override
    public void visit(functionCallNode it){
        Function func = null;
        for(int i = 0; i < module.functionlist.size(); i++){
            if(module.functionlist.get(i).name.equals(it.id))
                func = module.functionlist.get(i);
        }
        functioncallInst call = new functioncallInst(null, func.rettype, it.id);
        it.exprlist.exprlist.forEach(ep->{
            ep.accept(this);
            parameter para = new parameter(null, exprtype);
            if(expr_is_operand)
                para.parareg = expr_value;
            else
                para.parareg = new register("%"+regcount);
            call.paras.add(para);
        });
        if(!(func.rettype instanceof voidType)){
            regcount++;
            register resreg = new register("%" + regcount);
            call.resreg = resreg;
        }

        exprtype = func.rettype;
        expr_is_operand = false;
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
        IRType vtype = toIRType(it.vartype);
        regcount++;
        register vreg = new register("%"+regcount);

        allocaInst valloc = new allocaInst(vreg, vtype);
        curfunc.allocalist.add(valloc);
        curScope.varlist.put(it.name, vreg);
        curScope.typelist.put(it.name, vtype);

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

    @Override
    public void visit(varlistNode it){
        it.varlist.forEach(vd->vd.accept(this));
    }

    @Override
    public void visit(literalNode it){
        if(it.literal.equals("null")){
            expr_value = new nullConst();
        }
        else if(it.literal.equals("true")){
            expr_value = new boolConst(true);
        }
        else{//literal是false的情况
            expr_value = new boolConst(false);
        }
        expr_is_operand=true;
    }

    @Override
    public void visit(idNode it){
        register id = curScope.findvarreg(it.id);
        IRType idtype = curScope.findvartype(it.id);
        if(curClass!=null && id == null){
            register object = curScope.findvarreg(curClass.name);
            regcount++;
            register loadres = new register("%"+regcount);
            IRType loadrestype = new classType(curClass.name);
            loadInst load = new loadInst(loadres, loadrestype, new pointType(loadrestype), object);
            curblock.instlist.add(load);

            regcount++;
            id = new register("%"+regcount);
            idtype = curClass.typelist.get(it.id);
            ArrayList<operand> index = new ArrayList<>();
            index.add(new intConst(0));
            index.add(new intConst(curClass.typenumlist.get(it.id)));
            getelementptrInst get = new getelementptrInst(id, loadrestype, loadres, loadrestype, index);
            curblock.instlist.add(get);
        }
        regcount++;
        register loadres = new register("%"+regcount);
        loadInst load = new loadInst(loadres, idtype, new pointType(idtype), id);
        curblock.instlist.add(load);

        exprtype = idtype;
        expr_is_operand = false;
    }

    @Override
    public void visit(lambdaExprNode it){}

    @Override
    public void visit(integerNode it){
        int base = 1,value = 0;
        for(int i = it.integer.length()-1; i>=0; i--){
            value+= base*(it.integer.charAt(i)-'0');
            base*=10;
        }
        expr_value = new intConst(value);
        expr_is_operand = true;
    }

    @Override
    public void visit(stringNode it){

    }
    @Override
    public void visit(thisNode it){
        regcount++;
        register loadres = new register("%"+regcount);
        IRType restype = new classType(curClass.name);
        register thisreg = curScope.findvarreg(curClass.name);
        loadInst loadthis = new loadInst(loadres, restype, new pointType(restype), thisreg);
        curblock.instlist.add(loadthis);

        expr_is_operand = false;
        exprtype = restype;
    }

}


