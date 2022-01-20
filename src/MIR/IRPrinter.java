package MIR;

import MIR.Entity.*;
import MIR.Inst.*;
import MIR.Operand.*;
import MIR.Type.*;

import java.io.PrintStream;


public class IRPrinter implements IRVisitor{
    public PrintStream ps;

    public IRPrinter(PrintStream ps){
        this.ps = ps;
    }

    @Override
    public void visit(Module it){
        it.classlist.forEach(cl->{
            cl.accept(this);
        });
        for(int i = 13; i < it.functionlist.size(); i++){
            it.functionlist.get(i).accept(this);
        }
        it.globalvarlist.forEach(gl->{
            gl.accept(this);
        });
        it.globalinit.accept(this);
        it.mainfunc.accept(this);
    }

    @Override
    public void visit(Function it){
        ps.print("define ");
        it.rettype.accept(this);
        ps.print(" @"+it.name+"(");
        it.paralist.forEach(pl->{
            pl.accept(this);
            ps.print("  ");
        });
        ps.println(") {");

        it.allocalist.forEach(al->{
            al.accept(this);
        });
        it.blocklist.forEach(bl->{
            bl.accept(this);
        });
        ps.println("}");
        ps.println();
    }

    @Override
    public void visit(BasicBlock it){
        ps.println(it.block_label.num+":");
        it.instlist.forEach(il->{
            il.accept(this);
        });
    }

    @Override
    public void visit(arrayType it){
        it.type.accept(this);
        for(int i = 0; i < it.dim; i++){
            ps.print("*");
        }
    }

    @Override
    public void visit(boolType it){
        ps.print("i8");
    }

    @Override
    public void visit(classType it){
        if(it.number==0){
            ps.print("%"+it.name);
        }
        else{
            ps.print("%"+it.name+" = type { ");
            it.typelist.forEach((st, ty)->{
                ty.accept(this);
                ps.print(" ");
            });
            ps.println("};");
        }
    }

    @Override
    public void visit(intType it){
        ps.print("i32");
    }

    @Override
    public void visit(nullType it){
        ps.print("null");
    }

    @Override
    public void visit(pointType it){
        it.pointtype.accept(this);
        ps.print("*");
    }

    @Override
    public void visit(stringType it){
        ps.print("string");
    }

    @Override
    public void visit(voidType it){
        ps.print("void");
    }

    @Override
    public void visit(boolConst it){
        if(it.value==true){
            ps.print("true");
        }
        else{
            ps.print("false");
        }
    }

    @Override
    public void visit(intConst it){
        ps.print(it.value);
    }

    @Override
    public void visit(nullConst it){
        ps.print("null");
    }

    @Override
    public void visit(register it){
        ps.print(it.name);
    }

    @Override
    public void visit(stringConst it){
        ps.print(it.strconst);
    }

    @Override
    public void visit(allocaInst it){
        ps.print("  ");
        it.reg.accept(this);
        ps.print(" = alloca ");
        it.type.accept(this);
        ps.println();
    }

    @Override
    public void visit(binaryInst it){
        ps.print("  ");
        it.resreg.accept(this);
        ps.print(" = "+it.op+" ");
        it.sourcetype.accept(this);
        ps.print(" ");
        if(it.left_is_reg)
            it.leftsourcereg.accept(this);
        else
            it.leftoperand.accept(this);
        ps.print(", ");
        if(it.right_is_reg)
            it.rightsourcereg.accept(this);
        else
            it.rightoperand.accept(this);
        ps.println();
    }

    @Override
    public void visit(branchInst it){
        ps.print("  br ");
        if(it.hascondition){
            ps.print("i8 ");
            it.conreg.accept(this);
            ps.print(", label %"+it.truedest.num+", label %"+it.falsedest.num);
            ps.println();
        }
        else{
            ps.print("label %"+it.truedest.num);
            ps.println();
        }
    }

    @Override
    public void visit(functioncallInst it){
        ps.print("  ");
        if(!(it.returntype instanceof voidType)){
            it.resreg.accept(this);
            ps.print(" = ");
        }
        ps.print("call ");
        it.returntype.accept(this);
        ps.print(" @"+it.functioname+"(");
        it.paras.forEach(pa->{
            pa.accept(this);
            ps.print("  ");
        });
        ps.println(")");
    }

    @Override
    public void visit(getelementptrInst it){
        ps.print("  ");
        it.resreg.accept(this);
        ps.print(" = getelementptr ");
        it.firsttype.accept(this);
        ps.print(", ");
        it.sourcetype.accept(this);
        ps.print(" ");
        it.sourcereg.accept(this);
        ps.print(", ");
        it.indexlist.forEach(il->{
            ps.print("i32 ");
            il.accept(this);
            ps.print("  ");
        });
        ps.println();
    }

    @Override
    public void visit(globalvarInst it){
        it.var.accept(this);
        ps.print(" = global ");
        it.type.accept(this);
        ps.print(" ");
        it.value.accept(this);
        ps.println();
    }

    @Override
    public void visit(icmpInst it){
        ps.print("  ");
        it.res.accept(this);
        ps.print(" = icmp "+it.cmptype+" ");
        it.sourcetype.accept(this);
        ps.print(" ");
        it.left.accept(this);
        ps.print(", ");
        it.right.accept(this);
        ps.println();
    }

    @Override
    public void visit(loadInst it){
        ps.print("  ");
        it.resreg.accept(this);
        ps.print(" = load ");
        it.restype.accept(this);
        ps.print(", ");
        it.sourcetype.accept(this);
        ps.print(" ");
        it.sourcereg.accept(this);
        ps.println();
    }

    @Override
    public void visit(retInst it){
        ps.print("  ret ");
        if(it.ret_is_operand){
            it.retval.accept(this);
        }
        else{
            it.rettype.accept(this);
            ps.print(" ");
            if(it.retreg!=null)
                it.retreg.accept(this);
        }
        ps.println();
    }

    @Override
    public void visit(storeInst it){
        ps.print("  store ");
        it.sourcetype.accept(this);
        ps.print(" ");
        if(it.fromreg)
            it.sourcereg.accept(this);
        else
            it.sourceop.accept(this);
        ps.print(", ");
        it.restype.accept(this);
        ps.print(" ");
        it.resreg.accept(this);
        ps.println();
    }

    @Override
    public void visit(parameter it){
        it.paratype.accept(this);
        ps.print(" ");
        it.parareg.accept(this);
    }

}
