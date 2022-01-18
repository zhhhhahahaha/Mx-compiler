import java.io.FileInputStream;
import java.io.InputStream;
import java.io.PrintStream;

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
        String name = "D:\\Mx compiler\\Mx-compiler\\src\\test.mx";
        InputStream input = new FileInputStream(name);
        //InputStream input = System.in;
        //PrintStream output = new PrintStream("D:\\Mx compiler\\Mx-compiler\\src\\test.ll");
        PrintStream output = System.out;
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

            Module topmodule = new Module();
            new IRBuilder(topmodule).visit(ASTRoot);
            new IRPrinter(output).visit(topmodule);

            ASMmodule ASMtopmodule = new ASMmodule();
            new ASMBuilder(ASMtopmodule).visit(topmodule);
            new ASMPrinter(output).visit(ASMtopmodule);

        } catch (Error er){
            System.err.println(er.toString());
            throw new RuntimeException();
        }
    }  
}
