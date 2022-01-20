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
    public int strcount;//用于数有多少个字符串常量
    public label forcontinue;
    public label forbreak;
    public boolean expr_is_operand;
    public operand expr_value;
    public IRType exprtype;

    public String arrayname; //用于开存放数组大小变量时的数组名字确定

    public IRBuilder(Module module){
        this.module = module;
        curScope = new IRScope(null, IRScope.ScopeType.Global);
        curClass = null;
        curfunc = null;
        curblock = null;
        regcount = 0;
        strcount = 0;
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
            register classres = (register) expr_value;

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
            register sourcereg = (register) expr_value;
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
            getindex.add(expr_value);
            regcount++;
            register getresreg = new register("%"+regcount);
            getelementptrInst get = new getelementptrInst(getresreg, restype, sourcereg, sourcetype, getindex);
            curblock.instlist.add(get);
            returnreg = getresreg;
        }
        return returnreg;
    }

    public void newarray(register target, ArrayList<ExprNode> exprlist, int beg, IRType basetype){
        if(beg==exprlist.size()-1){
            exprlist.get(beg).accept(this);
            functioncallInst malloc = new functioncallInst(target, new arrayType(exprlist.size()-beg, basetype), "malloc");
            parameter mpara = new parameter(null, new intType());
            if(expr_value instanceof intConst) {
                mpara.parareg = new intConst(((intConst) expr_value).value * 4);
            }
            malloc.paras.add(mpara);
            curblock.instlist.add(malloc);
        }
        else{
            IRType vtype = new intType();
            regcount++;
            register vreg = new register("%"+regcount);
            allocaInst valloc = new allocaInst(vreg, vtype);
            curfunc.allocalist.add(valloc);
            curScope.varlist.put("i"+beg, vreg);
            curScope.typelist.put("i"+beg, vtype);

            exprlist.get(beg).accept(this);
            storeInst varinit = new storeInst(vtype,null, new intConst(0), false, new pointType(vtype), vreg);
            curblock.instlist.add(varinit);

            functioncallInst malloc = new functioncallInst(target, new arrayType(exprlist.size()-beg, basetype), "malloc");
            parameter mpara = new parameter(null, new intType());
            if(expr_value instanceof intConst)
                mpara.parareg = new intConst(((intConst) expr_value).value*4);
            malloc.paras.add(mpara);
            curblock.instlist.add(malloc);

            curfunc.labelcount+=3;
            BasicBlock condblock = new BasicBlock(new label(curfunc.labelcount-2));
            BasicBlock stateblock = new BasicBlock(new label(curfunc.labelcount-1));
            BasicBlock nextblock = new BasicBlock(new label(curfunc.labelcount));
            branchInst tocond = new branchInst(condblock.block_label, null, false, null);
            curblock.instlist.add(tocond);
            curfunc.blocklist.add(curblock);

            regcount++;
            register cloadres = new register("%"+regcount);
            loadInst cload = new loadInst(cloadres, new intType(), new pointType(new intType()), vreg);
            condblock.instlist.add(cload);
            regcount++;
            register cmp = new register("%"+regcount);
            icmpInst cond = new icmpInst(cmp, icmpInst.cmpType.slt, new intType(), cloadres, expr_value);
            condblock.instlist.add(cond);
            branchInst tostate = new branchInst(stateblock.block_label, nextblock.block_label, true, cmp);
            condblock.instlist.add(tostate);
            curfunc.blocklist.add(condblock);

            regcount++;
            register sloadres = new register("%"+regcount);
            loadInst sload = new loadInst(sloadres, new intType(), new pointType(new intType()), vreg);
            stateblock.instlist.add(sload);
            regcount++;
            register getres = new register("%"+regcount);
            ArrayList<operand> index = new ArrayList<>();
            index.add(sloadres);
            getelementptrInst get = new getelementptrInst(getres, new arrayType(exprlist.size()-beg-1, basetype), target, malloc.returntype, index);
            stateblock.instlist.add(get);
            regcount++;
            register newcreat = new register("%"+regcount);
            newarray(newcreat, exprlist, beg+1, basetype);
            storeInst ptrstore = new storeInst(new arrayType(exprlist.size()-beg-1, basetype), newcreat, null, true, new pointType(get.firsttype), getres);
            stateblock.instlist.add(ptrstore);
            regcount++;
            register addres = new register("%"+regcount);
            binaryInst add = new binaryInst(binaryInst.binaryop.add, new intType(), sloadres, null, true, null, new intConst(-1), false, addres);
            stateblock.instlist.add(add);
            storeInst sstore = new storeInst(new intType(), addres, null, true, new pointType(new intType()), vreg);
            stateblock.instlist.add(sstore);
            branchInst backcond = new branchInst(condblock.block_label, null, false, null);
            stateblock.instlist.add(backcond);
            curfunc.blocklist.add(stateblock);

            curblock = nextblock;
        }
    }

    @Override
    public void visit(FileNode it){
        BasicBlock globalinit = new BasicBlock(new label(0));
        curblock = globalinit;
        curfunc = module.globalinit;
        regcount = 0;
        it.wholeprogram.forEach(wp->{
            if(wp instanceof functiondefNode){
                if(!(((functiondefNode) wp).functionName.equals("main"))){
                    IRType rettype = toIRType(((functiondefNode) wp).returnType);
                    Function func = new Function(((functiondefNode) wp).functionName, rettype);
                    module.functionlist.add(func);
                }
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
                        gvar.value = new boolConst(false);
                    }
                    else{
                        gvar.value = new intConst(0);
                    }
                    module.globalvarlist.add(gvar);

                    regcount++;
                    register loadres = new register("%"+regcount);
                    loadInst load = new loadInst(loadres, vartype, new pointType(vartype), varreg);
                    curblock.instlist.add(load);

                    if(vd.init!=null) {
                        if(vartype instanceof arrayType){
                            arrayname = vd.name;
                        }
                        vd.init.accept(this);
                        storeInst store = new storeInst(vartype, null, null, false, new pointType(vartype), varreg);
                        if (expr_is_operand)
                            store.sourceop = expr_value;
                        else {
                            store.sourcereg = (register) expr_value;
                            store.fromreg = true;
                        }
                        curblock.instlist.add(store);
                    }
                });
            }
        });
        module.globalinit.blocklist.add(globalinit);
        curblock = null;
        curfunc = null;

        it.wholeprogram.forEach(wp->{
            if(!(wp instanceof varlistNode)){
                IRScope newScope = new IRScope(curScope, null);
                if(wp instanceof functiondefNode)
                    newScope.scopetype = IRScope.ScopeType.Other;
                else
                    newScope.scopetype = IRScope.ScopeType.Class;
                curScope = newScope;
                wp.accept(this);
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
        if(it.functionName.equals("main"))
            curfunc = module.mainfunc;
        curblock = new BasicBlock(new label(0));
        if(it.parameter!=null)
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
        if(it.parameter!=null) {
            for (int i = 0; i < it.parameter.paras.size(); i++) {
                varNode vn = it.parameter.paras.get(i);
                regcount++;
                register varreg = new register("%" + regcount);
                curScope.varlist.put(vn.parametername, varreg);
                IRType vntype = toIRType(vn.typename);
                curScope.typelist.put(vn.parametername, vntype);

                register parareg = new register("%" + (i+1));
                parameter para = new parameter(parareg, vntype);
                curfunc.paralist.add(para);

                allocaInst varalloc = new allocaInst(varreg, vntype);
                curfunc.allocalist.add(varalloc);

                pointType varpoint = new pointType(vntype);
                storeInst varstore = new storeInst(vntype, parareg, null, true, varpoint, varreg);
                curblock.instlist.add(varstore);
            }
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
        register sourcereg = (register) expr_value;
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
        getindex.add(expr_value);
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
        expr_value = loadres;
    }

    @Override
    public void visit(prefixExprNode it){
        it.rhs.accept(this);
        switch (it.prefixOp){
            case lon:
                register lonleftreg = (register) expr_value;
                regcount++;
                register lonresreg = new register("%"+regcount);
                binaryInst lonxorinst = new binaryInst(binaryInst.binaryop.xor, new boolType(), lonleftreg, null, true, null, new boolConst(true), false, lonresreg);
                curblock.instlist.add(lonxorinst);

                expr_is_operand = false;
                exprtype = new boolType();
                expr_value = lonresreg;
                break;
            case til:
                if(expr_is_operand){
                    expr_is_operand = true;
                    if(expr_value instanceof intConst){//semanticcheck正确的话也应该只可能是inttype
                        expr_value = new intConst(~((intConst) expr_value).value);
                    }
                }
                else {
                    register tilleftreg = (register) expr_value;
                    regcount++;
                    register tilresreg = new register("%" + regcount);
                    binaryInst tilxorinst = new binaryInst(binaryInst.binaryop.xor, new intType(), tilleftreg, null, true, null, new intConst(-1), false, tilresreg);
                    curblock.instlist.add(tilxorinst);

                    expr_is_operand = false;
                    exprtype = new intType();
                    expr_value = tilresreg;
                }
                break;
            case dop:
                register doploadid = findvarptr(it.rhs);

                regcount++;
                register dopaddres = new register("%"+regcount);
                binaryInst dopadd = new binaryInst(binaryInst.binaryop.add, new intType(), (register) expr_value, null, true, null, new intConst(1), false, dopaddres);
                curblock.instlist.add(dopadd);

                storeInst dopstore = new storeInst(new intType(), dopaddres, null, true, new pointType(new intType()), doploadid);
                curblock.instlist.add(dopstore);

                expr_is_operand = false;
                exprtype = new intType();
                expr_value = dopaddres;
                break;
            case dom:
                register domloadid = findvarptr(it.rhs);

                regcount++;
                register domsubres = new register("%"+regcount);
                binaryInst domsub = new binaryInst(binaryInst.binaryop.sub, new intType(), (register) expr_value, null, true, null, new intConst(1), false, domsubres);
                curblock.instlist.add(domsub);

                storeInst domstore = new storeInst(new intType(), domsubres, null, true, new pointType(new intType()), domloadid);
                curblock.instlist.add(domstore);

                expr_is_operand = false;
                exprtype = new intType();
                expr_value = domsubres;
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
                    binaryInst min = new binaryInst(binaryInst.binaryop.sub, new intType(), null, new intConst(0), false, (register) expr_value, null, true, minres);
                    curblock.instlist.add(min);

                    expr_is_operand = false;
                    exprtype = new intType();
                    expr_value = minres;
                }
                break;
        }
    }

    @Override
    public void visit(methodExprNode it){
        it.expr.accept(this);
        Function func = null;
        for(int i = 0; i < module.functionlist.size(); i++){
            if(exprtype instanceof classType) {
                if (module.functionlist.get(i).name.equals(((classType) exprtype).name + "." + it.id))
                    func = module.functionlist.get(i);
            }
            else if(exprtype instanceof stringType){
                if(module.functionlist.get(i).name.equals("string_"+it.id))
                    func = module.functionlist.get(i);
            }
            else if(exprtype instanceof arrayType){
                register sizereg = curScope.findvarreg(((idNode)it.expr).id + "_size");
                regcount++;
                register loadres = new register("%"+regcount);
                loadInst load = new loadInst(loadres, new intType(), new pointType(new intType()), sizereg);
                curblock.instlist.add(load);

                exprtype = new intType();
                expr_is_operand = false;
                expr_value = loadres;
                return;
            }
        }
        functioncallInst call = new functioncallInst(null, func.rettype, func.name);
        parameter thispara = new parameter((register) expr_value, exprtype);
        call.paras.add(thispara);
        it.exprlist.exprlist.forEach(ep->{
            ep.accept(this);
            parameter para = new parameter(null, exprtype);
            para.parareg = expr_value;
            call.paras.add(para);
        });
        regcount++;
        register resreg = new register("%"+regcount);
        call.resreg = resreg;

        exprtype = func.rettype;
        expr_is_operand = false;
        expr_value = resreg;
    }

    @Override
    public void visit(suffixExprNode it){
        it.lhs.accept(this);
        switch (it.suffixOp){
            case dop:
                register doploadid = findvarptr(it.lhs);

                regcount++;
                register dopaddres = new register("%"+regcount);
                binaryInst dopadd = new binaryInst(binaryInst.binaryop.add, new intType(), (register) expr_value, null, true, null, new intConst(1), false, dopaddres);
                curblock.instlist.add(dopadd);

                storeInst dopstore = new storeInst(new intType(), dopaddres, null, true, new pointType(new intType()), doploadid);
                curblock.instlist.add(dopstore);

                expr_is_operand = false;
                exprtype = new intType();
                //expr_value不变
                break;
            case dom:
                register domloadid = findvarptr(it.lhs);

                regcount++;
                register domsubres = new register("%"+regcount);
                binaryInst domsub = new binaryInst(binaryInst.binaryop.sub, new intType(), (register) expr_value, null, true, null, new intConst(1), false, domsubres);
                curblock.instlist.add(domsub);

                storeInst domstore = new storeInst(new intType(), domsubres, null, true, new pointType(new intType()), domloadid);
                curblock.instlist.add(domstore);

                expr_is_operand = false;
                exprtype = new intType();
                //expr_value不变
                break;
        }
    }

    @Override
    public void visit(memberExprNode it){
        it.expr.accept(this);
        register classres = (register) expr_value;

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
        expr_value = memberres;
    }

    @Override
    public void visit(binaryExprNode it){
        operand leftop = null, rightop = null;
        it.lhs.accept(this);
        leftop = expr_value;
        it.rhs.accept(this);
        rightop = expr_value;
        if(!(leftop instanceof register) && !(rightop instanceof register)){
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
                        expr_value = new intConst(((intConst) leftop).value + ((intConst) rightop).value);
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
        else if(exprtype instanceof stringType){
            if(it.opCode == binaryExprNode.binaryOpType.add){
                regcount++;
                register catres = new register("%"+regcount);
                functioncallInst strcat = new functioncallInst(catres, new stringType(), "string_add");
                parameter lpara = new parameter(leftop, new stringType());
                parameter rpara = new parameter(rightop, new stringType());
                strcat.paras.add(lpara);
                strcat.paras.add(rpara);
                curblock.instlist.add(strcat);

                exprtype = new stringType();
                expr_value = catres;
                expr_is_operand = false;
            }
            else{
                regcount++;
                register strcmpres = new register("%"+regcount);
                functioncallInst strcmp = new functioncallInst(strcmpres, new intType(), "strcmp");
                parameter lpara = new parameter(leftop, new stringType());
                parameter rpara = new parameter(rightop, new stringType());
                strcmp.paras.add(lpara);
                strcmp.paras.add(rpara);
                curblock.instlist.add(strcmp);

                regcount++;
                register icmpres = new register("%"+regcount);
                icmpInst icm = new icmpInst(icmpres, null, new intType(), strcmpres, new intConst(0));
                switch (it.opCode){
                    case les:
                        icm.cmptype = icmpInst.cmpType.slt;
                        break;
                    case loe:
                        icm.cmptype = icmpInst.cmpType.sle;
                        break;
                    case gre:
                        icm.cmptype = icmpInst.cmpType.sgt;
                        break;
                    case goe:
                        icm.cmptype = icmpInst.cmpType.sge;
                        break;
                    case eq:
                        icm.cmptype = icmpInst.cmpType.eq;
                        break;
                    case neq:
                        icm.cmptype = icmpInst.cmpType.ne;
                        break;
                }
                curblock.instlist.add(icm);
                exprtype = new boolType();
                expr_value = icmpres;
                expr_is_operand = false;
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
            }else bin.rightoperand = rightop;

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
            expr_value = res;
        }
    }

    @Override
    public void visit(assignExprNode it){
        register leftreg = findvarptr(it.lhs);
        storeInst store = new storeInst(null, null, null, false, null, leftreg);

        it.rhs.accept(this);
        store.sourcetype = exprtype;
        store.restype = new pointType(exprtype);
        if(expr_is_operand)
            store.sourceop = expr_value;
        else {
            store.sourcereg = (register) expr_value;
            store.fromreg = true;
        }
        curblock.instlist.add(store);

        expr_is_operand = false;
        exprtype = null;
        expr_value = null;
    }

    @Override
    public void visit(arrayCreatorNode it){
        regcount++;
        register resreg = new register("%"+regcount);
        newarray(resreg, it.exprlist, 0, toIRType(it.varType));

        if(curScope.scopetype!=IRScope.ScopeType.Global) {
            regcount++;
            register sizeres = new register("%" + regcount);
            allocaInst allocsize = new allocaInst(sizeres, new intType());
            curfunc.allocalist.add(allocsize);
            curScope.varlist.put(arrayname + "_size", sizeres);
            curScope.typelist.put(arrayname + "_size", new intType());

            it.exprlist.get(0).accept(this);
            storeInst store = new storeInst(new intType(), null, expr_value, false, new pointType(new intType()), sizeres);
            curblock.instlist.add(store);
        }
        else{
            register varreg = new register("@"+arrayname+"_size");
            curScope.varlist.put(arrayname+"_size", varreg);
            curScope.typelist.put(arrayname+"_size", new intType());
            it.exprlist.get(0).accept(this);
            globalvarInst gvar = new globalvarInst(varreg, new intType(), new intConst(0));
            module.globalvarlist.add(gvar);

            regcount++;
            register loadres = new register("%"+regcount);
            loadInst load = new loadInst(loadres, new intType(), new pointType(new intType()), varreg);
            curblock.instlist.add(load);
            storeInst store = new storeInst(new intType(), null, expr_value, false, new pointType(new intType()), varreg);
            curblock.instlist.add(store);
        }

        exprtype = toIRType(it.varType);
        expr_is_operand = false;
        expr_value = resreg;
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
        curblock.instlist.add(malloc);

        functioncallInst call = new functioncallInst(null, new voidType(), it.varType.typename);
        parameter cpara = new parameter(mallocreg, new classType(classtype.name));
        call.paras.add(cpara);
        curblock.instlist.add(call);

        expr_is_operand = false;
        exprtype = new classType(classtype.name);
        expr_value = mallocreg;
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
        if(it.exprlist!=null)
            it.exprlist.exprlist.forEach(ep->{
                ep.accept(this);
                parameter para = new parameter(null, exprtype);
                para.parareg = expr_value;
                call.paras.add(para);
            });
        if(!(func.rettype instanceof voidType)){
            regcount++;
            register resreg = new register("%" + regcount);
            call.resreg = resreg;
        }
        curblock.instlist.add(call);

        exprtype = func.rettype;
        expr_is_operand = false;
        expr_value = call.resreg;
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
            it.value.accept(this);
            retInst ret = new retInst(curfunc.rettype, null, null, false );
            if(expr_is_operand){
                ret.ret_is_operand = true;
                ret.retval = expr_value;
            }
            else{
                ret.retreg = (register) expr_value;
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
        if(it.init!=null) {
            if(vtype instanceof arrayType){
                arrayname = it.name;
            }
            it.init.accept(this);
            storeInst varinit = new storeInst(vtype, null, null, false, new pointType(vtype), vreg);
            if (expr_is_operand) {
                varinit.sourceop = expr_value;
            } else {
                varinit.sourcereg = (register) expr_value;
                varinit.fromreg = true;
            }
            curblock.instlist.add(varinit);
        }
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
            exprtype = new nullType();
        }
        else if(it.literal.equals("true")){
            expr_value = new boolConst(true);
            exprtype = new boolType();
        }
        else{//literal是false的情况
            expr_value = new boolConst(false);
            exprtype = new boolType();
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
        expr_value = loadres;
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
        exprtype = new intType();
    }

    @Override
    public void visit(stringNode it){
        strcount++;
        register str = new register("$str"+strcount);
        globalvarInst gbstring = new globalvarInst(str, new stringType(), new stringConst(it.string));
        module.globalvarlist.add(gbstring);

        exprtype = new stringType();
        expr_value = str;
        expr_is_operand = false;
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
        expr_value = loadres;
    }

}


