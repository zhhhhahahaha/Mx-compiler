import java.io.FileInputStream;
import java.io.InputStream;

import Frontend.ASTBuilder;
import Frontend.SemanticChecker;
import Frontend.SymbolCollector;

import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;

import AST.FileNode;

import Parser.MxLexer;
import Parser.MxParser;

import Util.MxErrorListener;
import Util.*;
import Util.error.*;


public class main {
    public static void main(String[]args) throws Exception{
        //String name = "D:\\Mx compiler\\Mx-compiler\\src\\test.mx";
        //InputStream input = new FileInputStream(name);
        InputStream input = System.in;
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
        } catch (Error er){
            System.err.println(er.toString());
            throw new RuntimeException();
        }
    }  
}
