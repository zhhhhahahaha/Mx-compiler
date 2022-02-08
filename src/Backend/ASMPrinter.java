package Backend;

import ASM.*;
import ASM.Inst.*;
import ASM.Operand.phyreg;
import ASM.Operand.virtualreg;

import java.io.PrintStream;

public class ASMPrinter implements ASMVisitor {
    public PrintStream ps;

    public ASMPrinter(PrintStream ps){
        this.ps = ps;
    }

    @Override
    public void visit(ASMmodule it){
        ps.println("\t.text");
        ps.println();
        it.funclist.forEach(fl->{
            fl.accept(this);
        });
        it.datalist.forEach(dl->{
            dl.accept(this);
        });
    }

    @Override
    public void visit(ASMfunction it){
        ps.println("\t.globl  "+it.name);
        ps.println("\t.p2align  2");
        ps.println(it.name+":");
        it.initinst.forEach(ii->{
            ii.accept(this);
        });
        it.blocks.forEach(bl->{
            bl.accept(this);
        });
        ps.println();
    }

    @Override
    public void visit(ASMData it){
        if(it.type== ASMData.Type.word){
            ps.println("\t.section  .bss");
            ps.println("\t.p2align  2");
            ps.println(it.name+":");
            ps.println("\t.word  "+it.operandint);
        }
        else{
            ps.println("\t.section  .rodata");
            ps.println("\t.p2align  2");
            ps.println(it.name+":");
            ps.println("\t.string  "+it.operandstring);
        }
        ps.println();
    }

    @Override
    public void visit(ASMBasicblock it){
        ps.println(it.name+":");
        ASMInst p = it.head;
        while(p!=null){
            p.accept(this);
            p = p.succ;
        }
    }

    @Override
    public void visit(addiInst it){
        ps.println("\taddi  "+((phyreg) (it.resreg)).regname+", "+((phyreg) (it.leftop)).regname+", "+ it.imm);
    }

    @Override
    public void visit(asmretInst it){
        ps.println("\tret");
    }

    @Override
    public void visit(beqzInst it){
        ps.println("\tbeqz  "+((phyreg) (it.sourcereg)).regname+", "+it.destlabel);
    }

    @Override
    public void visit(biInst it){
        ps.println("\t"+it.op+"  "+((phyreg) (it.resreg)).regname+", "+((phyreg) (it.leftreg)).regname+", "+((phyreg) (it.rightreg)).regname);
    }

    @Override
    public void visit(callInst it){
        ps.println("\tcall  "+it.funcname);
    }

    @Override
    public void visit(cmpInst it){
        ps.println("\t"+it.op+"  "+((phyreg) (it.resreg)).regname+", "+((phyreg) (it.sourcereg)).regname);
    }

    @Override
    public void visit(jInst it){
        ps.println("\tj  "+it.destlabel);
    }

    @Override
    public void visit(laInst it){
        ps.println("\tla  "+((phyreg) (it.resreg)).regname+", "+it.symbol);
    }

    @Override
    public void visit(liInst it){
        ps.println("\tli  "+((phyreg) (it.resreg)).regname+", "+it.imm);
    }
    @Override
    public void visit(lwInst it){
        ps.println("\tlw  "+((phyreg) (it.resreg)).regname+", "+it.imm+"("+((phyreg) (it.destreg)).regname+")");
    }

    @Override
    public void visit(mvInst it){
        ps.println("\tmv  "+((phyreg) (it.resreg)).regname+", "+((phyreg) (it.sourcereg)).regname);
    }

    @Override
    public void visit(swInst it){
        ps.println("\tsw  "+((phyreg) (it.sourcereg)).regname+", "+it.imm+"("+((phyreg) (it.destreg)).regname+")");
    }

    @Override public void visit(phyreg it){}
    @Override public void visit(virtualreg it){}
}
