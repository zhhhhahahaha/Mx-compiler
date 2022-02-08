package Backend;

import ASM.*;
import ASM.Inst.*;
import ASM.Operand.*;
import MIR.*;
import MIR.Entity.parameter;
import MIR.Inst.*;
import MIR.Module;
import MIR.Operand.*;
import MIR.Type.*;

import java.util.HashMap;

public class InstSelector implements IRVisitor {
    public ASMmodule module;
    public ASMfunction curfunc;
    public ASMBasicblock curblock;
    public HashMap<String, Operand> regTrans = new HashMap<>();

    public Operand targetreg;  //used for const

    public InstSelector(ASMmodule module){
        this.module = module;
    }

    public boolean checkimm(int imm){
        if(imm < 2046 && imm > -2047){
            return true;
        }
        else{
            return false;
        }
    }

    public Operand getreg(register it){
        if(regTrans.containsKey(it.name)){
            return regTrans.get(it.name);
        }else{
            Operand lares = curfunc.addvreg();
            curblock.addtail(new laInst(lares, "."+it.name));
            if(it.name.charAt(0)!='$'){
                Operand loadres = curfunc.addvreg();
                curblock.addtail(new lwInst(loadres, lares, 0));
                return loadres;
            }
            return lares;
        }
    }

    @Override
    public void visit(Module it){
        it.globalvarlist.forEach(gv->{
            gv.accept(this);
        });
        it.globalinit.accept(this);
        for(int i = 13; i < it.functionlist.size(); i++){
            it.functionlist.get(i).accept(this);
        }
        it.mainfunc.accept(this);
    }

    @Override
    public void visit(Function it){
        curfunc = new ASMfunction(it.name);
        curblock = new ASMBasicblock("."+it.name+"para");
        if(it.name.equals("main")){
            callInst callglobal = new callInst("globalinit");
            curblock.addtail(callglobal);
        }
        for(int i = 0; i < it.paralist.size(); i++){
            if(i<8){
                Operand resreg = curfunc.addvreg();
                curblock.addtail(new mvInst(resreg, module.getphyreg("a" + i)));
                regTrans.put(((register)it.paralist.get(i).parareg).name, resreg);
            }else{
                Operand loadres = curfunc.addvreg();
                curblock.addtail(new lwInst(loadres, module.getphyreg("s0"), 4*(i-8)));
                regTrans.put(((register)it.paralist.get(i).parareg).name, loadres);
            }
        }
        for(int i = 0; i < 32; i++){
            if(module.getRegType(i)==1 && !curfunc.name.equals("main") && !curfunc.name.equals("globalinit") || i==1){
                Operand reg = curfunc.addvreg();
                phyreg caleereg = module.getphyregfrnum(i);
                curblock.addtail(new mvInst(reg, caleereg));
                regTrans.put(caleereg.regname, reg);
            }
        }
        it.allocalist.forEach(al->{
            al.accept(this);
        });
        curblock.succlabellist.add("."+curfunc.name+0);
        it.blocklist.forEach(bl->{
            bl.accept(this);
        });
        curfunc.blocks.add(curblock);

        curblock = new ASMBasicblock("."+curfunc.name+"exit");
        for(int i = 0; i < 32; i++){
            if(module.getRegType(i)==1 && !curfunc.name.equals("main") && !curfunc.name.equals("globalinit") || i==1){
                Operand reg = regTrans.get(module.getphyregfrnum(i).regname);
                phyreg caleereg = module.getphyregfrnum(i);
                curblock.addtail(new mvInst(caleereg, reg));
            }
        }
        curfunc.blocks.add(curblock);
        module.funclist.add(curfunc);
    }

    @Override
    public void visit(BasicBlock it){
        curfunc.blocks.add(curblock);
        curblock = new ASMBasicblock("."+curfunc.name+it.block_label.num);
        it.instlist.forEach(il->{
            il.accept(this);
        });
    }

    @Override public void visit(arrayType it){}
    @Override public void visit(boolType it){}
    @Override public void visit(classType it){}
    @Override public void visit(intType it){}
    @Override public void visit(nullType it){}
    @Override public void visit(pointType it){}
    @Override public void visit(stringType it){}
    @Override public void visit(voidType it){}

    @Override
    public void visit(boolConst it){
        if(it.value==true){
            curblock.addtail(new addiInst(targetreg, module.getphyreg("zero"), 1));
        }
        else{
            curblock.addtail(new mvInst(targetreg, module.getphyreg("zero")));
        }
    }

    @Override
    public void visit(intConst it){
        if(checkimm(it.value)){
            curblock.addtail(new addiInst(targetreg, module.getphyreg("zero"), it.value));
        }else{
            curblock.addtail(new liInst(targetreg, it.value));
        }
    }

    @Override
    public void visit(nullConst it){
        curblock.addtail(new mvInst(targetreg, module.getphyreg("zero")));
    }

    @Override public void visit(register it){}
    @Override public void visit(stringConst it){}

    @Override
    public void visit(allocaInst it){
        Operand reg = curfunc.addvreg();
        regTrans.put(it.reg.name, reg);
        curfunc.stacksize+=4;
        if(checkimm(-curfunc.stacksize)){
            curblock.addtail(new addiInst(reg, module.getphyreg("s0"), -curfunc.stacksize));
        }else{
            Operand tmp = curfunc.addvreg();
            curblock.addtail(new liInst(tmp, -curfunc.stacksize));
            curblock.addtail(new biInst(reg, module.getphyreg("s0"), tmp, biInst.Op.add));
        }
    }

    @Override
    public void visit(binaryInst it){
        Operand leftreg = null;
        Operand rightreg = null;

        if(it.left_is_reg){
            leftreg = getreg(it.leftsourcereg);
        }else{
            targetreg = curfunc.addvreg();
            leftreg = targetreg;
            it.leftoperand.accept(this);
        }
        if(it.right_is_reg){
            rightreg = getreg(it.rightsourcereg);
        }else{
            targetreg = curfunc.addvreg();
            rightreg = targetreg;
            it.rightoperand.accept(this);
        }

        Operand resreg = curfunc.addvreg();
        regTrans.put(it.resreg.name, resreg);

        switch (it.op){
            case xor:
                curblock.addtail(new biInst(resreg, leftreg, rightreg, biInst.Op.xor));
                break;
            case and:
                curblock.addtail(new biInst(resreg, leftreg, rightreg, biInst.Op.and));
                break;
            case or:
                curblock.addtail(new biInst(resreg, leftreg, rightreg, biInst.Op.or));
                break;
            case add:
                curblock.addtail(new biInst(resreg, leftreg, rightreg, biInst.Op.add));
                break;
            case sub:
                curblock.addtail(new biInst(resreg, leftreg, rightreg, biInst.Op.sub));
                break;
            case mul:
                curblock.addtail(new biInst(resreg, leftreg, rightreg, biInst.Op.mul));
                break;
            case div:
                curblock.addtail(new biInst(resreg, leftreg, rightreg, biInst.Op.div));
                break;
            case srem:
                curblock.addtail(new biInst(resreg, leftreg, rightreg, biInst.Op.rem));
                break;
            case shl:
                curblock.addtail(new biInst(resreg, leftreg, rightreg, biInst.Op.sll));
                break;
            case shr:
                curblock.addtail(new biInst(resreg, leftreg, rightreg, biInst.Op.srl));
                break;
        }
    }

    @Override
    public void visit(branchInst it){
        if(it.hascondition){
            Operand cond = getreg(it.conreg);
            curblock.addtail(new beqzInst(cond, "."+curfunc.name+it.falsedest.num));
            curblock.succlabellist.add("."+curfunc.name+it.falsedest.num);
        }
        curblock.addtail(new jInst("."+curfunc.name+it.truedest.num));
        curblock.succlabellist.add("."+curfunc.name+it.truedest.num);
    }

    @Override
    public void visit(functioncallInst it){
        if(it.paras.size()>8){
            addiInst add = new addiInst(module.getphyreg("sp"), module.getphyreg("sp"), -4*(it.paras.size()-8));
            curblock.addtail(add);
        }
        for(int i = 0; i < it.paras.size(); i++){
            if(i<8){
                if(it.paras.get(i).parareg instanceof register){
                    Operand para = getreg((register) it.paras.get(i).parareg);
                    curblock.addtail(new mvInst(module.getphyreg("a"+i), para));
                }else{
                    targetreg = module.getphyreg("a" + i);
                    it.paras.get(i).parareg.accept(this);
                }
            }else{
                Operand para = null;
                if(it.paras.get(i).parareg instanceof register){
                    para = getreg((register) it.paras.get(i).parareg);
                }else{
                    para = curfunc.addvreg();
                    targetreg = para;
                    it.paras.get(i).parareg.accept(this);
                }
                curblock.addtail(new swInst(para, module.getphyreg("sp"), (i-8)*4));
            }
        }
        callInst call = new callInst(it.functioname);
        for(int i = 0; i < 32; i++){
            if(module.getRegType(i)==0){
                call.def.add(module.getphyregfrnum(i));
            }
        }
        curblock.addtail(call);
        if(it.paras.size()>8){
            addiInst add = new addiInst(module.getphyreg("sp"), module.getphyreg("sp"), 4*(it.paras.size()-8));
            curblock.addtail(add);
        }
        if(it.resreg!=null){
            Operand callres = curfunc.addvreg();
            regTrans.put(it.resreg.name, callres);
            curblock.addtail(new mvInst(callres, module.getphyreg("a0")));
        }
    }

    @Override
    public void visit(getelementptrInst it){
        Operand sourceres = getreg(it.sourcereg);

        if(it.sourcetype instanceof classType){
            Operand destreg = curfunc.addvreg();
            regTrans.put(it.resreg.name, destreg);
            addiInst addi = new addiInst(destreg, sourceres, 4 * ((intConst)it.indexlist.get(1)).value);
            curblock.addtail(addi);
        }else{
            if(it.indexlist.get(0) instanceof intConst){
                Operand destreg = curfunc.addvreg();
                regTrans.put(it.resreg.name, destreg);
                addiInst addi = new addiInst(destreg, sourceres, 4 * ((intConst)it.indexlist.get(0)).value);
                curblock.addtail(addi);
            }
            else if(it.indexlist.get(0) instanceof register){
                Operand index = getreg((register) it.indexlist.get(0));
                Operand const4 = curfunc.addvreg();
                Operand mulres = curfunc.addvreg();
                Operand destreg = curfunc.addvreg();
                regTrans.put(it.resreg.name, destreg);
                curblock.addtail(new addiInst(const4, module.getphyreg("zero"), 4));
                curblock.addtail(new biInst(mulres, index, const4, biInst.Op.mul));
                curblock.addtail(new biInst(destreg, sourceres, mulres, biInst.Op.add));
            }
        }
    }

    @Override
    public void visit(globalvarInst it){
        if(it.type instanceof stringType){
            ASMData data = new ASMData("."+it.var.name, ASMData.Type.string, null, ((stringConst)it.value).strconst);
            module.datalist.add(data);
        }
        else{
            ASMData data = new ASMData("."+it.var.name, ASMData.Type.word, 0, null);
            if(it.value instanceof intConst){
                data.operandint = ((intConst) it.value).value;
            }
            module.datalist.add(data);
        }
    }

    @Override
    public void visit(icmpInst it){
        Operand leftreg = null;
        Operand rightreg = null;
        if(it.left instanceof register){
            leftreg = getreg((register) it.left);
        }else{
            targetreg = curfunc.addvreg();
            leftreg = targetreg;
            it.left.accept(this);
        }
        if(it.right instanceof register){
            rightreg = getreg((register) it.right);
        }else{
            targetreg = curfunc.addvreg();
            rightreg = targetreg;
            it.right.accept(this);
        }
        Operand subres = curfunc.addvreg();
        curblock.addtail(new biInst(subres, leftreg, rightreg, biInst.Op.sub));
        Operand resreg = curfunc.addvreg();
        regTrans.put(it.res.name, resreg);

        switch (it.cmptype){
            case slt:
                curblock.addtail(new cmpInst(cmpInst.Op.sltz, resreg, subres));
                break;
            case sle:
                Operand tmp1 = curfunc.addvreg();
                Operand tmp2 = curfunc.addvreg();
                curblock.addtail(new cmpInst(cmpInst.Op.sltz, tmp1, subres));
                curblock.addtail(new cmpInst(cmpInst.Op.seqz, tmp2, subres));
                curblock.addtail(new biInst(resreg, tmp1, tmp2, biInst.Op.or));
                break;
            case sgt:
                curblock.addtail(new cmpInst(cmpInst.Op.sgtz, resreg, subres));
                break;
            case sge:
                tmp1 = curfunc.addvreg();
                tmp2 = curfunc.addvreg();
                curblock.addtail(new cmpInst(cmpInst.Op.sgtz, tmp1, subres));
                curblock.addtail(new cmpInst(cmpInst.Op.seqz, tmp2, subres));
                curblock.addtail(new biInst(resreg, tmp1, tmp2, biInst.Op.or));
                break;
            case eq:
                curblock.addtail(new cmpInst(cmpInst.Op.seqz, resreg, subres));
                break;
            case ne:
                curblock.addtail(new cmpInst(cmpInst.Op.snez, resreg, subres));
                break;
        }
    }

    @Override
    public void visit(loadInst it){
        if(regTrans.containsKey(it.sourcereg.name)){
            Operand address = getreg(it.sourcereg);
            Operand loadres = curfunc.addvreg();
            regTrans.put(it.resreg.name, loadres);
            curblock.addtail(new lwInst(loadres, address, 0));
        }else{
            Operand loadres = getreg(it.sourcereg);
            regTrans.put(it.resreg.name, loadres);
        }
    }

    @Override
    public void visit(retInst it){
        if(it.ret_is_operand){
            Operand retres = curfunc.addvreg();
            targetreg = retres;
            it.retval.accept(this);
            curblock.addtail(new swInst(retres, module.getphyreg("s0"), -12));
        }else if(it.retreg!=null){
            Operand retres = getreg(it.retreg);
            curblock.addtail(new swInst(retres, module.getphyreg("s0"), -12));
        }
        curblock.addtail(new jInst("."+curfunc.name+"exit"));
        curblock.succlabellist.add("."+curfunc.name+"exit");
    }

    @Override
    public void visit(storeInst it){
        Operand address = null;
        Operand source = null;
        if(regTrans.containsKey(it.resreg.name)){
            address = getreg(it.resreg);
        }else{
            address = curfunc.addvreg();
            curblock.addtail(new laInst(address, "."+it.resreg.name));
        }
        if(it.fromreg){
            source = getreg(it.sourcereg);
        }else{
            source = curfunc.addvreg();
            targetreg = source;
            it.sourceop.accept(this);
        }
        curblock.addtail(new swInst(source, address, 0));
    }

    @Override public void visit(parameter it){}
}
