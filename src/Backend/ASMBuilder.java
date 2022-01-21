package Backend;


import ASM.*;
import ASM.Inst.*;
import ASM.Inst.asmretInst;
import ASM.Operand.*;
import MIR.*;
import MIR.Entity.*;
import MIR.Inst.*;
import MIR.Module;
import MIR.Operand.*;
import MIR.Operand.intConst;
import MIR.Type.*;

public class ASMBuilder implements IRVisitor {
    public ASMmodule amodule;
    public ASMfunction curfunc;
    public ASMBasicblock curblock;

    public phyreg targetreg;  //used for const

    public ASMBuilder(ASMmodule amodule){
        this.amodule = amodule;
    }

    public void loadreg(register it, String destregname){
        if(curfunc.vreglocation.containsKey(it.name)){
            int imm = curfunc.vreglocation.get(it.name);
            if(checkimm(imm)) {
                lwInst load = new lwInst(new phyreg(destregname), new phyreg("s0"), imm);
                curblock.instlist.add(load);
            }
            else{
                liInst li = new liInst(new phyreg(destregname), imm);
                biInst add =new biInst(new phyreg(destregname), new phyreg(destregname), new phyreg("s0"), biInst.Op.add);
                lwInst load = new lwInst(new phyreg(destregname), new phyreg(destregname), 0);
                curblock.instlist.add(li);
                curblock.instlist.add(add);
                curblock.instlist.add(load);
            }
        }
        else{
            laInst la = new laInst(new phyreg(destregname), "."+it.name);
            curblock.instlist.add(la);
            if(it.name.charAt(0)!='$') {
                lwInst load = new lwInst(new phyreg(destregname), new phyreg(destregname), 0);
                curblock.instlist.add(load);
            }
        }
    }

    public void getaddress(register it, String destregname){
        if(curfunc.vreglocation.containsKey(it.name)){
            int imm = curfunc.vreglocation.get(it.name);
            if(checkimm(imm)) {
                lwInst load = new lwInst(new phyreg(destregname), new phyreg("s0"), imm);
                curblock.instlist.add(load);
            }
            else{
                liInst li = new liInst(new phyreg(destregname), imm);
                biInst add =new biInst(new phyreg(destregname), new phyreg(destregname), new phyreg("s0"), biInst.Op.add);
                lwInst load = new lwInst(new phyreg(destregname), new phyreg(destregname), 0);
                curblock.instlist.add(li);
                curblock.instlist.add(add);
                curblock.instlist.add(load);
            }
        }
        else {
            laInst la = new laInst(new phyreg(destregname), "."+it.name);
            curblock.instlist.add(la);
        }
    }

    public boolean checkimm(int imm){
        if(imm<2048&&imm>-2049){
            return true;
        }
        else{
            return false;
        }
    }

    @Override
    public void visit(Module it) {
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
            curblock.instlist.add(callglobal);
        }
        for(int i = 0; i < it.paralist.size(); i++){
            curfunc.stacksize+=4;
            swInst storepara = new swInst(new phyreg("a"+i), new phyreg("s0"), -curfunc.stacksize);
            curblock.instlist.add(storepara);
            curfunc.vreglocation.put(((register) it.paralist.get(i).parareg).name, -curfunc.stacksize);
        }
        it.allocalist.forEach(al->{
            al.accept(this);
        });

        it.blocklist.forEach(bl->{
            bl.accept(this);
        });

        if(checkimm(-curfunc.stacksize)) {
            addiInst subsp = new addiInst(new phyreg("sp"), new phyreg("sp"), -curfunc.stacksize);
            curfunc.initinst.add(subsp);
        } else {
            liInst li = new liInst(new phyreg("t0"), -curfunc.stacksize);
            biInst add = new biInst(new phyreg("sp"), new phyreg("sp"), new phyreg("t0"), biInst.Op.add);
            curfunc.initinst.add(li);
            curfunc.initinst.add(add);
        }
        if(checkimm(curfunc.stacksize-4)) {
            swInst storera = new swInst(new phyreg("ra"), new phyreg("sp"), curfunc.stacksize - 4);
            curfunc.initinst.add(storera);
        } else{
            liInst li = new liInst(new phyreg("t0"), curfunc.stacksize-4);
            biInst add = new biInst(new phyreg("t0"), new phyreg("t0"), new phyreg("sp"), biInst.Op.add);
            swInst storera = new swInst(new phyreg("ra"), new phyreg("t0"), 0);
            curfunc.initinst.add(li);
            curfunc.initinst.add(add);
            curfunc.initinst.add(storera);
        }
        if(checkimm(curfunc.stacksize-8)){
            swInst stores0 = new swInst(new phyreg("s0"), new phyreg("sp"), curfunc.stacksize-8);
            curfunc.initinst.add(stores0);
        }else{
            liInst li = new liInst(new phyreg("t0"), curfunc.stacksize-8);
            biInst add = new biInst(new phyreg("t0"), new phyreg("t0"), new phyreg("sp"), biInst.Op.add);
            swInst stores0 = new swInst(new phyreg("s0"), new phyreg("t0"), 0);
            curfunc.initinst.add(li);
            curfunc.initinst.add(add);
            curfunc.initinst.add(stores0);
        }
        if(checkimm(curfunc.stacksize)){
            addiInst adds0 = new addiInst(new phyreg("s0"), new phyreg("sp"), curfunc.stacksize);
            curfunc.initinst.add(adds0);
        }else{
            liInst li = new liInst(new phyreg("t0"), curfunc.stacksize);
            biInst add = new biInst(new phyreg("s0"), new phyreg("sp"), new phyreg("t0"), biInst.Op.add);
            curfunc.initinst.add(li);
            curfunc.initinst.add(add);
        }

        curfunc.blocks.add(curblock);
        curblock = new ASMBasicblock("."+it.name+"exit");
        lwInst loada0 = new lwInst(new phyreg("a0"), new phyreg("s0"), -12);
        curblock.instlist.add(loada0);
        if(checkimm(curfunc.stacksize-8)) {
            lwInst loads0 = new lwInst(new phyreg("s0"), new phyreg("sp"), curfunc.stacksize - 8);
            curblock.instlist.add(loads0);
        }else {
            liInst li = new liInst(new phyreg("t0"), curfunc.stacksize - 8);
            biInst add = new biInst(new phyreg("t0"), new phyreg("t0"), new phyreg("sp"), biInst.Op.add);
            lwInst loads0 = new lwInst(new phyreg("s0"), new phyreg("t0"), 0);
            curblock.instlist.add(li);
            curblock.instlist.add(add);
            curblock.instlist.add(loads0);
        }
        if(checkimm(curfunc.stacksize-4)){
            lwInst loadra = new lwInst(new phyreg("ra"), new phyreg("sp"), curfunc.stacksize-4);
            curblock.instlist.add(loadra);
        }else {
            liInst li = new liInst(new phyreg("t0"), curfunc.stacksize-4);
            biInst add = new biInst(new phyreg("t0"), new phyreg("t0"), new phyreg("sp"), biInst.Op.add);
            lwInst loadra = new lwInst(new phyreg("ra"), new phyreg("t0"), 0);
            curblock.instlist.add(li);
            curblock.instlist.add(add);
            curblock.instlist.add(loadra);
        }
        if(checkimm(curfunc.stacksize)) {
            addiInst addsp = new addiInst(new phyreg("sp"), new phyreg("sp"), curfunc.stacksize);
            curblock.instlist.add(addsp);
        }else{
            liInst li = new liInst(new phyreg("t0"), curfunc.stacksize);
            biInst add = new biInst(new phyreg("sp"), new phyreg("sp"), new phyreg("t0"), biInst.Op.add);
            curblock.instlist.add(li);
            curblock.instlist.add(add);
        }
        curblock.instlist.add(new asmretInst());
        curfunc.blocks.add(curblock);
        amodule.funclist.add(curfunc);
    }

    @Override
    public void visit(BasicBlock it){
        curfunc.blocks.add(curblock);
        curblock = new ASMBasicblock("."+curfunc.name+it.block_label.num);
        it.instlist.forEach(il->{
            il.accept(this);
        });
    }

    @Override
    public void visit(arrayType it){}
    @Override
    public void visit(boolType it){}
    @Override
    public void visit(classType it){}
    @Override
    public void visit(intType it){}
    @Override
    public void visit(nullType it){}
    @Override
    public void visit(pointType it){}
    @Override
    public void visit(stringType it){}
    @Override
    public void visit(voidType it){}

    @Override
    public void visit(boolConst it){
        if(it.value==true){
            addiInst getres = new addiInst(targetreg, new phyreg("zero"), 1);
            curblock.instlist.add(getres);
        }
        else {
            mvInst getres = new mvInst(targetreg, new phyreg("zero"));
            curblock.instlist.add(getres);
        }
    }

    @Override
    public void visit(intConst it){
        if(checkimm(it.value)){
            addiInst getres = new addiInst(targetreg, new phyreg("zero"), it.value);
            curblock.instlist.add(getres);
        }else{
            liInst li = new liInst(targetreg, it.value);
            curblock.instlist.add(li);
        }
    }

    @Override
    public void visit(nullConst it){}
    @Override
    public void visit(register it){}
    @Override
    public void visit(stringConst it){}

    @Override
    public void visit(allocaInst it){
        curfunc.stacksize+=8;
        curfunc.vreglocation.put(it.reg.name, -curfunc.stacksize);

        if(checkimm(-curfunc.stacksize+4)) {
            addiInst addi = new addiInst(new phyreg("t0"), new phyreg("s0"), -curfunc.stacksize + 4);
            curblock.instlist.add(addi);
        }else{
            liInst li = new liInst(new phyreg("t0"), -curfunc.stacksize+4);
            biInst add = new biInst(new phyreg("t0"), new phyreg("s0"), new phyreg("t0"), biInst.Op.add);
            curblock.instlist.add(li);
            curblock.instlist.add(add);
        }

        if(checkimm(-curfunc.stacksize)) {
            swInst store = new swInst(new phyreg("t0"), new phyreg("s0"), -curfunc.stacksize);
            curblock.instlist.add(store);
        }else {
            liInst li = new liInst(new phyreg("t1"), -curfunc.stacksize);
            biInst add = new biInst(new phyreg("t1"), new phyreg("t1"), new phyreg("s0"), biInst.Op.add);
            swInst store = new swInst(new phyreg("t0"), new phyreg("t1"), 0);
            curblock.instlist.add(li);
            curblock.instlist.add(add);
        }
    }

    @Override
    public void visit(binaryInst it){
        curfunc.stacksize+=4;
        curfunc.vreglocation.put(it.resreg.name, -curfunc.stacksize);

        if(it.left_is_reg){
            loadreg(it.leftsourcereg,"t0");
        }
        else{
            targetreg = new phyreg("t0");
            it.leftoperand.accept(this);
        }
        if(it.right_is_reg){
            loadreg(it.rightsourcereg, "t1");
        }
        else{
            targetreg = new phyreg("t1");
            it.rightoperand.accept(this);
        }

        switch (it.op){
            case xor:
                biInst xorinst = new biInst(new phyreg("t2"), new phyreg("t0"), new phyreg("t1"), biInst.Op.xor);
                curblock.instlist.add(xorinst);
                break;
            case and:
                biInst andinst = new biInst(new phyreg("t2"), new phyreg("t0"), new phyreg("t1"), biInst.Op.and);
                curblock.instlist.add(andinst);
                break;
            case or:
                biInst orinst = new biInst(new phyreg("t2"), new phyreg("t0"), new phyreg("t1"), biInst.Op.or);
                curblock.instlist.add(orinst);
                break;
            case add:
                biInst addinst = new biInst(new phyreg("t2"), new phyreg("t0"), new phyreg("t1"), biInst.Op.add);
                curblock.instlist.add(addinst);
                break;
            case sub:
                biInst subinst = new biInst(new phyreg("t2"), new phyreg("t0"), new phyreg("t1"), biInst.Op.sub);
                curblock.instlist.add(subinst);
                break;
            case mul:
                biInst mulinst = new biInst(new phyreg("t2"), new phyreg("t0"), new phyreg("t1"), biInst.Op.mul);
                curblock.instlist.add(mulinst);
                break;
            case div:
                biInst divinst = new biInst(new phyreg("t2"), new phyreg("t0"), new phyreg("t1"), biInst.Op.div);
                curblock.instlist.add(divinst);
                break;
            case srem:
                biInst reminst = new biInst(new phyreg("t2"), new phyreg("t0"), new phyreg("t1"), biInst.Op.rem);
                curblock.instlist.add(reminst);
                break;
            case shl:
                biInst sllinst = new biInst(new phyreg("t2"), new phyreg("t0"), new phyreg("t1"), biInst.Op.sll);
                curblock.instlist.add(sllinst);
                break;
            case shr:
                biInst srlinst = new biInst(new phyreg("t2"), new phyreg("t0"), new phyreg("t1"), biInst.Op.srl);
                curblock.instlist.add(srlinst);
                break;
        }
        if(checkimm(-curfunc.stacksize)){
            swInst storeres = new swInst(new phyreg("t2"), new phyreg("s0"), -curfunc.stacksize);
            curblock.instlist.add(storeres);
        }else {
            liInst li = new liInst(new phyreg("t3"), -curfunc.stacksize);
            biInst add = new biInst(new phyreg("t3"), new phyreg("t3"), new phyreg("s0"), biInst.Op.add);
            swInst storeres = new swInst(new phyreg("t2"), new phyreg("t3"), 0);
            curblock.instlist.add(li);
            curblock.instlist.add(add);
            curblock.instlist.add(storeres);
        }
    }

    @Override
    public void visit(branchInst it){
        if(it.hascondition){
            loadreg(it.conreg, "t0");
            beqzInst beqz = new beqzInst(new phyreg("t0"), "."+curfunc.name+it.falsedest.num);
            curblock.instlist.add(beqz);
        }
        jInst j = new jInst("."+curfunc.name+it.truedest.num);
        curblock.instlist.add(j);
    }

    @Override
    public void visit(functioncallInst it){
        if(it.resreg!=null) {
            curfunc.stacksize += 4;
            curfunc.vreglocation.put(it.resreg.name, -curfunc.stacksize);
        }
        for(int i = 0; i < it.paras.size(); i++){
            if(it.paras.get(i).parareg instanceof register)
                loadreg((register) it.paras.get(i).parareg, "a"+i);
            else{
                targetreg = new phyreg("a"+i);
                it.paras.get(i).parareg.accept(this);
            }
        }
        callInst call = new callInst(it.functioname);
        curblock.instlist.add(call);
        if(it.resreg!=null) {
            if(checkimm(-curfunc.stacksize)) {
                swInst store = new swInst(new phyreg("a0"), new phyreg("s0"), -curfunc.stacksize);
                curblock.instlist.add(store);
            }
            else{
                liInst li = new liInst(new phyreg("t0"), -curfunc.stacksize);
                biInst add = new biInst(new phyreg("t0"), new phyreg("t0"), new phyreg("s0"), biInst.Op.add);
                swInst store = new swInst(new phyreg("a0"), new phyreg("t0"), 0);
                curblock.instlist.add(li);
                curblock.instlist.add(add);
                curblock.instlist.add(store);
            }
        }
    }

    @Override
    public void visit(getelementptrInst it){
        curfunc.stacksize+=4;
        curfunc.vreglocation.put(it.resreg.name, -curfunc.stacksize);
        loadreg(it.sourcereg, "t0");

        if(it.sourcetype instanceof classType){
            addiInst addi = new addiInst(new phyreg("t1"), new phyreg("t0"), 0);
            addi.imm = 4 * ((intConst)it.indexlist.get(1)).value;
            curblock.instlist.add(addi);
            if(checkimm(-curfunc.stacksize)) {
                swInst store = new swInst(new phyreg("t1"), new phyreg("s0"), -curfunc.stacksize);
                curblock.instlist.add(store);
            }else{
                liInst li = new liInst(new phyreg("t2"), -curfunc.stacksize);
                biInst add = new biInst(new phyreg("t2"), new phyreg("t2"), new phyreg("s0"), biInst.Op.add);
                swInst store = new swInst(new phyreg("t1"), new phyreg("t2"), 0);
                curblock.instlist.add(li);
                curblock.instlist.add(add);
                curblock.instlist.add(store);
            }
        }
        else{
            if(it.indexlist.get(0) instanceof intConst){
                addiInst addi = new addiInst(new phyreg("t1"), new phyreg("t0"), 0);
                addi.imm = 4 * ((intConst)it.indexlist.get(0)).value;
                curblock.instlist.add(addi);
                if(checkimm(-curfunc.stacksize)) {
                    swInst store = new swInst(new phyreg("t1"), new phyreg("s0"), -curfunc.stacksize);
                    curblock.instlist.add(store);
                }else{
                    liInst li = new liInst(new phyreg("t2"), -curfunc.stacksize);
                    biInst add = new biInst(new phyreg("t2"), new phyreg("t2"), new phyreg("s0"), biInst.Op.add);
                    swInst store = new swInst(new phyreg("t1"), new phyreg("t2"), 0);
                    curblock.instlist.add(li);
                    curblock.instlist.add(add);
                    curblock.instlist.add(store);
                }
            }
            else if(it.indexlist.get(0) instanceof register){
                loadreg((register) it.indexlist.get(0), "t1");
                addiInst addi = new addiInst(new phyreg("t2"), new phyreg("zero"), 4);
                biInst mul = new biInst(new phyreg("t3"), new phyreg("t1"), new phyreg("t2"), biInst.Op.mul);
                biInst getptr = new biInst(new phyreg("t4"), new phyreg("t0"), new phyreg("t3"), biInst.Op.add);
                curblock.instlist.add(addi);
                curblock.instlist.add(mul);
                curblock.instlist.add(getptr);
                if(checkimm(-curfunc.stacksize)) {
                    swInst store = new swInst(new phyreg("t4"), new phyreg("s0"), -curfunc.stacksize);
                    curblock.instlist.add(store);
                }else{
                    liInst li = new liInst(new phyreg("t5"), -curfunc.stacksize);
                    biInst add = new biInst(new phyreg("t5"), new phyreg("t5"), new phyreg("s0"), biInst.Op.add);
                    swInst store = new swInst(new phyreg("t4"), new phyreg("t5"), 0);
                    curblock.instlist.add(li);
                    curblock.instlist.add(add);
                    curblock.instlist.add(getptr);
                }
            }
        }
    }

    @Override
    public void visit(globalvarInst it){
        if(it.type instanceof stringType){
            ASMData data = new ASMData("."+it.var.name, ASMData.Type.string, null, ((stringConst)it.value).strconst);
            amodule.datalist.add(data);
        }
        else{
            ASMData data = new ASMData("."+it.var.name, ASMData.Type.word, 0, null);
            if(it.value instanceof intConst){
                data.operandint = ((intConst) it.value).value;
            }
            amodule.datalist.add(data);
        }
    }

    @Override
    public void visit(icmpInst it){
        curfunc.stacksize+=4;
        curfunc.vreglocation.put(it.res.name, -curfunc.stacksize);

        if(it.left instanceof register){
            loadreg((register) it.left, "t0");
        }
        else{
            targetreg = new phyreg("t0");
            it.left.accept(this);
        }
        if(it.right instanceof register){
            loadreg((register) it.right, "t1");
        }
        else{
            targetreg = new phyreg("t1");
            it.right.accept(this);
        }
        biInst sub = new biInst(new phyreg("t2"), new phyreg("t0"), new phyreg("t1"), biInst.Op.sub);
        curblock.instlist.add(sub);
        swInst store = new swInst(null, new phyreg("s0"), -curfunc.stacksize);
        if(!checkimm(-curfunc.stacksize)){
            liInst li = new liInst(new phyreg("t3"), -curfunc.stacksize);
            biInst add = new biInst(new phyreg("t3"), new phyreg("t3"), new phyreg("s0"), biInst.Op.add);
            curblock.instlist.add(li);
            curblock.instlist.add(add);
            store.imm = 0;
            store.destreg = new phyreg("t3");
        }
        switch (it.cmptype){
            case slt:
                cmpInst sltz = new cmpInst(cmpInst.Op.sltz, new phyreg("t3"), new phyreg("t2"));
                curblock.instlist.add(sltz);
                store.sourcereg = new phyreg("t3");
                break;
            case sle:
                sltz = new cmpInst(cmpInst.Op.sltz, new phyreg("t3"), new phyreg("t2"));
                cmpInst seqz = new cmpInst(cmpInst.Op.seqz, new phyreg("t4"), new phyreg("t2"));
                biInst or = new biInst(new phyreg("t5"), new phyreg("t3"), new phyreg("t4"), biInst.Op.or);
                curblock.instlist.add(sltz);
                curblock.instlist.add(seqz);
                curblock.instlist.add(or);
                store.sourcereg = new phyreg("t5");
                break;
            case sgt:
                cmpInst sgtz = new cmpInst(cmpInst.Op.sgtz, new phyreg("t3"), new phyreg("t2"));
                curblock.instlist.add(sgtz);
                store.sourcereg = new phyreg("t3");
                break;
            case sge:
                sgtz = new cmpInst(cmpInst.Op.sgtz, new phyreg("t3"), new phyreg("t2"));
                seqz = new cmpInst(cmpInst.Op.seqz, new phyreg("t4"), new phyreg("t2"));
                or = new biInst(new phyreg("t5"), new phyreg("t3"), new phyreg("t4"), biInst.Op.or);
                curblock.instlist.add(sgtz);
                curblock.instlist.add(seqz);
                curblock.instlist.add(or);
                store.sourcereg = new phyreg("t5");
                break;
            case eq:
                cmpInst eq = new cmpInst(cmpInst.Op.seqz, new phyreg("t3"), new phyreg("t2"));
                curblock.instlist.add(eq);
                store.sourcereg = new phyreg("t3");
                break;
            case ne:
                cmpInst ne = new cmpInst(cmpInst.Op.snez, new phyreg("t3"), new phyreg("t2"));
                curblock.instlist.add(ne);
                store.sourcereg = new phyreg("t3");
                break;
        }
        curblock.instlist.add(store);
    }

    @Override
    public void visit(loadInst it){
        curfunc.stacksize+=4;
        curfunc.vreglocation.put(it.resreg.name, -curfunc.stacksize);
        if(curfunc.vreglocation.containsKey(it.sourcereg.name)){
            int imm = curfunc.vreglocation.get(it.sourcereg.name);
            if(checkimm(imm)) {
                lwInst load = new lwInst(new phyreg("t0"), new phyreg("s0"), imm);
                curblock.instlist.add(load);
            }else {
                liInst li = new liInst(new phyreg("t0"), imm);
                biInst add = new biInst(new phyreg("t0"), new phyreg("t0"), new phyreg("s0"), biInst.Op.add);
                lwInst load = new lwInst(new phyreg("t0"), new phyreg("t0"), 0);
                curblock.instlist.add(li);
                curblock.instlist.add(add);
                curblock.instlist.add(load);
            }
            lwInst loadvalue = new lwInst(new phyreg("t0"), new phyreg("t0"), 0);
            curblock.instlist.add(loadvalue);
        }
        else{
            laInst la = new laInst(new phyreg("t0"), "."+it.sourcereg.name);
            curblock.instlist.add(la);
            if(it.sourcereg.name.charAt(0)!='$') {
                lwInst load = new lwInst(new phyreg("t0"), new phyreg("t0"), 0);
                curblock.instlist.add(load);
            }
        }

        if(checkimm(-curfunc.stacksize)) {
            swInst store = new swInst(new phyreg("t0"), new phyreg("s0"), -curfunc.stacksize);
            curblock.instlist.add(store);
        }else {
            liInst li = new liInst(new phyreg("t1"), -curfunc.stacksize);
            biInst add = new biInst(new phyreg("t1"), new phyreg("t1"), new phyreg("s0"), biInst.Op.add);
            swInst store = new swInst(new phyreg("t0"), new phyreg("t1"), 0);
            curblock.instlist.add(li);
            curblock.instlist.add(add);
            curblock.instlist.add(store);
        }
    }

    @Override
    public void visit(retInst it){
        if(it.ret_is_operand){
            targetreg = new phyreg("t0");
            it.retval.accept(this);
            swInst store = new swInst(new phyreg("t0"), new phyreg("s0"), -12);
            curblock.instlist.add(store);
        }
        else if(it.retreg!=null){
            loadreg(it.retreg,"t0");
            swInst store = new swInst(new phyreg("t0"), new phyreg("s0"), -12);
            curblock.instlist.add(store);
        }
        jInst j = new jInst("."+curfunc.name+"exit");
        curblock.instlist.add(j);
    }

    @Override
    public void visit(storeInst it){
        getaddress(it.resreg, "t0");
        if(it.fromreg){
            loadreg(it.sourcereg, "t1");
        }
        else{
            targetreg = new phyreg("t1");
            it.sourceop.accept(this);
        }
        swInst store = new swInst(new phyreg("t1"), new phyreg("t0"), 0);
        curblock.instlist.add(store);
    }

    @Override
    public void visit(parameter it){}
}
