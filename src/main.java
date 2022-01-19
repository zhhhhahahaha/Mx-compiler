import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.PrintStream;
import java.util.Objects;

import ASM.*;
import Backend.ASMBuilder;
import Backend.ASMPrinter;
import Backend.IRBuilder;
import Frontend.ASTBuilder;
import Frontend.SemanticChecker;
import Frontend.SymbolCollector;

import MIR.Module;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;

import AST.FileNode;

import Parser.MxLexer;
import Parser.MxParser;

import Util.MxErrorListener;
import Util.*;
import Util.error.*;

import MIR.*;


public class main {
    public static void main(String[]args) throws Exception{
        String Sem = "-fsyntax-only",IR = "-emit-llvm", ASM = "-S", Output = "-o";
        //String inputname = "D:\\Mx compiler\\Mx-compiler\\src\\test.mx";                           //本地
        //InputStream input = new FileInputStream(inputname);                                        //本地
        InputStream input = System.in;                                                               //oj
        //PrintStream IRoutput = new PrintStream("D:\\Mx compiler\\Mx-compiler\\src\\test.ll");      //本地
        //PrintStream output = new PrintStream("D:\\Mx compiler\\Mx-compiler\\src\\output.s");    //本地
        PrintStream output = System.out;                                                             //oj

        boolean SemanticFlag = false,LLVMFlag = false,ASMFlag = true;                                //oj
        for(int i = 0; i < args.length;++i){
            if(args[i].charAt(0) == '-'){
                if(Objects.equals(args[i],Sem)) SemanticFlag = true;
                else if(Objects.equals(args[i],IR)) LLVMFlag = true;
                else if(Objects.equals(args[i],ASM)) ASMFlag = true;
                else if(Objects.equals(args[i],Output)) output = new PrintStream(new FileOutputStream(args[i+1]));
            }
        }
        try{
            globalScope gScope = new globalScope(null);
            MxLexer lexer = new MxLexer(CharStreams.fromStream(input));
            lexer.removeErrorListeners();;
            lexer.addErrorListener(new MxErrorListener());
            MxParser parser = new MxParser(new CommonTokenStream(lexer));
            parser.removeErrorListeners();
            parser.addErrorListener(new MxErrorListener());

            ParseTree parseTreeRoot = parser.file();
            ASTBuilder astbuilder = new ASTBuilder(gScope);
            FileNode ASTRoot = (FileNode)astbuilder.visit(parseTreeRoot);
            new SymbolCollector(gScope).visit(ASTRoot);
            new SemanticChecker(gScope).visit(ASTRoot);

            if(!SemanticFlag) {       //oj
                Module topmodule = new Module();
                new IRBuilder(topmodule).visit(ASTRoot);
                //new IRPrinter(IRoutput).visit(topmodule);     //本地

                ASMmodule ASMtopmodule = new ASMmodule();
                new ASMBuilder(ASMtopmodule).visit(topmodule);
                new ASMPrinter(output).visit(ASMtopmodule);
            }

        } catch (Error er){
            System.err.println(er.toString());
            throw new RuntimeException();
        }
    }  
}
