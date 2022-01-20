package Backend;

import ASM.*;
import ASM.Inst.*;
import ASM.Operand.phyreg;

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
        it.instlist.forEach(il->{
            il.accept(this);
        });
    }

    @Override
    public void visit(addiInst it){
        ps.println("\taddi  "+it.resreg.regname+", "+it.leftop.regname+", "+ it.imm);
    }

    @Override
    public void visit(asmretInst it){
        ps.println("\tret");
    }

    @Override
    public void visit(beqzInst it){
        ps.println("\tbeqz  "+it.sourcereg.regname+", "+it.destlabel);
    }

    @Override
    public void visit(biInst it){
        ps.println("\t"+it.op+"  "+it.resreg.regname+", "+it.leftreg.regname+", "+it.rightreg.regname);
    }

    @Override
    public void visit(callInst it){
        ps.println("\tcall  "+it.funcname);
    }

    @Override
    public void visit(cmpInst it){
        ps.println("\t"+it.op+"  "+it.resreg.regname+", "+it.sourcereg.regname);
    }

    @Override
    public void visit(jInst it){
        ps.println("\tj  "+it.destlabel);
    }

    @Override
    public void visit(laInst it){
        ps.println("\tla  "+it.resreg.regname+", "+it.symbol);
    }

    @Override
    public void visit(liInst it){
        ps.println("\tli  "+it.resreg.regname+", "+it.imm);
    }
    @Override
    public void visit(lwInst it){
        ps.println("\tlw  "+it.resreg.regname+", "+it.imm+"("+it.destreg.regname+")");
    }

    @Override
    public void visit(mvInst it){
        ps.println("\tmv  "+it.resreg.regname+", "+it.sourcereg.regname);
    }

    @Override
    public void visit(swInst it){
        ps.println("\tsw  "+it.sourcereg.regname+", "+it.imm+"("+it.destreg.regname+")");
    }

    @Override public void visit(phyreg it){}
}
