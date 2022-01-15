package Frontend;

import AST.*;
import Parser.MxBaseVisitor;
import Parser.MxParser;
import Util.globalScope;
import Util.position;
import Util.type;

import org.antlr.v4.runtime.ParserRuleContext;


public class ASTBuilder extends MxBaseVisitor<ASTNode>{
    private globalScope gScope;

    public ASTBuilder(globalScope gScope) {
        this.gScope = gScope;
    }

    @Override
    public ASTNode visitFile (MxParser.FileContext ctx) {
        FileNode file = new FileNode(new position(ctx));
        ctx.program().forEach(pd->file.wholeprogram.add(visit(pd)));
        return file;
    }

    @Override
    public ASTNode visitProgram(MxParser.ProgramContext ctx) {
        if(ctx.functiondef()!=null) {
            return visit(ctx.functiondef());
        }
        else if (ctx.declarationState()!=null) {
            return visit(ctx.declarationState());
        }
        else if (ctx.classdef()!= null) {
            return visit(ctx.classdef());
        } 
        else {
            System.out.println("There is no program");
            return null;
        }
    }
     
    @Override
    public ASTNode visitFunctiondef(MxParser.FunctiondefContext ctx) {
        position fpos = new position(ctx);
        String id = ctx.Id().getText();
        blockStmtNode block = (blockStmtNode) visit(ctx.suite());
        typeNode returnType = (typeNode) visit(ctx.returnType());
        functionParameterNode paras;
        if(ctx.functionParameter()!=null)
        paras = (functionParameterNode) visit(ctx.functionParameter());
        else paras = null;
        functiondefNode function = new functiondefNode(fpos, returnType, id, paras, block);
        return function;

    }

    @Override
    public ASTNode visitFunctionParameter(MxParser.FunctionParameterContext ctx) {
        functionParameterNode ps = new functionParameterNode(new position(ctx));
        ctx.param().forEach(pd->ps.paras.add((varNode) visit(pd)));
        return ps;
    }

    @Override
    public ASTNode visitParam(MxParser.ParamContext ctx) {
        valTypeNode typename = (valTypeNode) visit(ctx.valType());
        String parametername = ctx.Id().getText();
        varNode param = new varNode(new position(ctx), typename, parametername);
        return param;
    }
    
    @Override
    public ASTNode visitExpressionList(MxParser.ExpressionListContext ctx) {
        exprlistNode el = new exprlistNode(new position(ctx));
        ctx.expression().forEach(ed->el.exprlist.add((ExprNode) visit(ed)));
        return el;
    }
 
    @Override
    public ASTNode visitSuite(MxParser.SuiteContext ctx) {
        blockStmtNode block = new blockStmtNode(new position(ctx));
        ctx.state().forEach(sd->block.stmts.add(visit(sd)));
        return block;
    }

    @Override
    public ASTNode visitBlock(MxParser.BlockContext ctx) {
        blockStmtNode block = (blockStmtNode) visit(ctx.suite());
        return block;
    }
    
    @Override
    public ASTNode visitVardefState(MxParser.VardefStateContext ctx) {
        varlistNode varlist = (varlistNode) visit(ctx.declarationState());
        return varlist;     
    }

    @Override
    public ASTNode visitIfcase(MxParser.IfcaseContext ctx) {
        ifStmtNode ifstate = (ifStmtNode) visit(ctx.ifState());
        return ifstate;
    }

    @Override
    public ASTNode visitForcase(MxParser.ForcaseContext ctx) {
        forStmtNode forstate = (forStmtNode) visit(ctx.forState());
        return forstate;
    }

    @Override
    public ASTNode visitWhilecase(MxParser.WhilecaseContext ctx) {
        whileStmtNode whilestate = (whileStmtNode) visit(ctx.whileState());
        return whilestate;
    }

    @Override
    public ASTNode visitReturnState(MxParser.ReturnStateContext ctx) {
        ExprNode expr = null;
        if(ctx.expression()!=null){
            expr = (ExprNode)visit(ctx.expression());
        }
        returnStmtNode returnstate = new returnStmtNode(expr, new position(ctx));
        return returnstate;
    }

    @Override
    public ASTNode visitBreakState(MxParser.BreakStateContext ctx) {
        breakStmtNode breakstmt = new breakStmtNode(new position(ctx));
        return breakstmt;
    }

    @Override
    public ASTNode visitContinueState(MxParser.ContinueStateContext ctx) {
        continueStmtNode continuestmt = new continueStmtNode(new position(ctx));
        return continuestmt;
    }

    @Override
    public ASTNode visitPureState(MxParser.PureStateContext ctx) {
        exprlistNode exprlist = (exprlistNode) visit(ctx.expressionList());
        exprStmtNode exprstmt = new exprStmtNode(new position(ctx), exprlist);
        return exprstmt;
    }
    @Override 
    public ASTNode visitSemicolon(MxParser.SemicolonContext ctx) {
        semicolonStmtNode semicolon = new semicolonStmtNode(new position(ctx));
        return semicolon;
    }

    @Override
    public ASTNode visitDeclarationState(MxParser.DeclarationStateContext ctx) {
        varlistNode varlist = (varlistNode) visit(ctx.vardef());
        return varlist;
    }

    @Override
    public ASTNode visitIfState(MxParser.IfStateContext ctx) {
        ExprNode condition = (ExprNode) visit(ctx.expression());
        StmtNode thenStmt = (StmtNode) visit(ctx.trueState);
        StmtNode elseStmt = null;
        if(ctx.falseState!=null)
        elseStmt  = (StmtNode) visit(ctx.falseState);
        ifStmtNode ifstate = new ifStmtNode(condition, thenStmt, elseStmt, new position(ctx));
        return ifstate;
    }

    @Override
    public ASTNode visitForState(MxParser.ForStateContext ctx) {
        ASTNode init;
        ExprNode condition;
        ExprNode incr;
        if(ctx.init()==null){
            init = null;
        }
        else init = visit(ctx.init());
        if(ctx.condition!=null){
            condition = (ExprNode) visit(ctx.condition);
        }
        else condition = null;

        if(ctx.incr!=null) {
            incr = (ExprNode) visit(ctx.incr);
        }
        else incr = null;
        StmtNode state = (StmtNode) visit(ctx.state());
        forStmtNode forstmt = new forStmtNode(init, condition, incr, state, new position(ctx));
        return forstmt;
    }

    @Override
    public ASTNode visitInit(MxParser.InitContext ctx) {
        if(ctx.vardef()!=null) {
            return (varlistNode) visit(ctx.vardef());
        }
        else if(ctx.expression()!=null) {
            return (ExprNode) visit(ctx.expression());
        }
        else {
            return null;
        }
    }

    @Override
    public ASTNode visitWhileState(MxParser.WhileStateContext ctx) {
        ExprNode condition = (ExprNode) visit(ctx.condition);
        StmtNode state = (StmtNode) visit(ctx.state());
        whileStmtNode whilestate = new whileStmtNode(condition, state, new position(ctx));
        return whilestate;
    }

    @Override
    public ASTNode visitNewExpr(MxParser.NewExprContext ctx) {
        newExprNode newExpr = (newExprNode) visit(ctx.creator());
        return newExpr;
    }

    @Override
    public ASTNode visitIndexExpr(MxParser.IndexExprContext ctx) {
        ExprNode idexpr = (ExprNode) visit(ctx.expression().get(0));
        ExprNode index = (ExprNode) visit(ctx.index);
        indexExprNode indexExpr = new indexExprNode(new position(ctx), idexpr, index);
        indexExpr.exprtype = new type("undefine", 0);
        return indexExpr;
    }

    @Override
    public ASTNode visitPrefixExpr(MxParser.PrefixExprContext ctx) {
        ExprNode rhs = (ExprNode) visit(ctx.expression());
        prefixExprNode.prefixOpType op = switch (ctx.op.getText()) {
            case "!" -> prefixExprNode.prefixOpType.lon;
            case "~" -> prefixExprNode.prefixOpType.til;
            case "++" -> prefixExprNode.prefixOpType.dop;
            case "--" -> prefixExprNode.prefixOpType.dom;
            case "-" ->prefixExprNode.prefixOpType.min;
            case "+" ->prefixExprNode.prefixOpType.plu;
            default -> null;
        };
        prefixExprNode prefixExpr = new prefixExprNode(new position(ctx), rhs, op);
        prefixExpr.exprtype = rhs.exprtype;
        return prefixExpr;
    }

    @Override
    public ASTNode visitLambdaExpr(MxParser.LambdaExprContext ctx) {
        lambdaExprNode lambdaexpr = (lambdaExprNode) visit(ctx.lambda());
        return lambdaexpr;
    }


    @Override
    public ASTNode visitMethodExpr(MxParser.MethodExprContext ctx){
        ExprNode expr = (ExprNode) visit(ctx.expression());
        String id = ctx.Id().getText();
        exprlistNode exprlist;
        if(ctx.expressionList()!=null)
        exprlist = (exprlistNode) visit(ctx.expressionList());
        else exprlist = null;
        methodExprNode methodExpr = new methodExprNode(new position(ctx), expr, exprlist, id);
        methodExpr.exprtype = new type("undefine", 0);
        return methodExpr;
    }

    @Override
    public ASTNode visitMemberExpr(MxParser.MemberExprContext ctx) {
        ExprNode expr = (ExprNode) visit(ctx.expression());
        String id = ctx.Id().getText();
        memberExprNode memberExpr = new memberExprNode(new position(ctx), expr, id);
        memberExpr.exprtype = new type("undefine", 0);
        return memberExpr;
    }

    @Override
    public ASTNode visitSuffixExpr(MxParser.SuffixExprContext ctx) {
        ExprNode lhs = (ExprNode) visit(ctx.expression());
        suffixExprNode.suffixOpType op = switch (ctx.op.getText()) {
            case "++" -> suffixExprNode.suffixOpType.dop;
            case "--" -> suffixExprNode.suffixOpType.dom;
            default -> null;
        };
        suffixExprNode suffixExpr = new suffixExprNode(new position(ctx), lhs, op);
        suffixExpr.exprtype = lhs.exprtype;
        return suffixExpr;
    }

    @Override
    public ASTNode visitAtomExpr(MxParser.AtomExprContext ctx) {
        return visit(ctx.primary());
    }

    @Override
    public ASTNode visitBinaryExpr(MxParser.BinaryExprContext ctx) {
        ExprNode lhs = (ExprNode) visit(ctx.expression(0));
        ExprNode rhs = (ExprNode) visit(ctx.expression(1));
        binaryExprNode.binaryOpType op = switch (ctx.op.getText()) {
            case "*" ->binaryExprNode.binaryOpType.mul;
            case "/" ->binaryExprNode.binaryOpType.div;
            case "%" ->binaryExprNode.binaryOpType.mod;
            case "+" ->binaryExprNode.binaryOpType.add;
            case "-" ->binaryExprNode.binaryOpType.sub;
            case "<<" ->binaryExprNode.binaryOpType.shl;
            case ">>" ->binaryExprNode.binaryOpType.shr;
            case "&" ->binaryExprNode.binaryOpType.and;
            case "^" ->binaryExprNode.binaryOpType.xor;
            case "|" ->binaryExprNode.binaryOpType.or;
            case "<" ->binaryExprNode.binaryOpType.les;
            case "<=" ->binaryExprNode.binaryOpType.loe;
            case ">" ->binaryExprNode.binaryOpType.gre;
            case ">=" ->binaryExprNode.binaryOpType.goe;
            case "==" ->binaryExprNode.binaryOpType.eq;
            case "!=" ->binaryExprNode.binaryOpType.neq;
            case "&&" ->binaryExprNode.binaryOpType.loa;
            case "||" ->binaryExprNode.binaryOpType.loo;
            default -> null;
        };
        binaryExprNode binaryExpr = new binaryExprNode(new position(ctx), lhs, rhs, op);
        binaryExpr.exprtype = new type("unsure", 0);
        return binaryExpr;
    }

    @Override
    public ASTNode visitAssignExpr(MxParser.AssignExprContext ctx) {
        ExprNode lhs = (ExprNode) visit(ctx.expression(0));
        ExprNode rhs = (ExprNode) visit(ctx.expression(1));
        assignExprNode assignExpr = new assignExprNode(lhs, rhs, new position(ctx));
        assignExpr.exprtype = new type("unsure", 0);
        return assignExpr;
    }

    @Override
    public ASTNode visitFunctionExpr(MxParser.FunctionExprContext ctx) {
        String id = ctx.Id().getText();
        exprlistNode exprlist;
        if(ctx.expressionList()!=null)
        exprlist = (exprlistNode) visit(ctx.expressionList());
        else exprlist = null;
        functionCallNode functionCall = new functionCallNode(new position(ctx), id, exprlist);
        functionCall.exprtype = new type("undefine", 0);
        return functionCall;
    }

    @Override
    public ASTNode visitLambda(MxParser.LambdaContext ctx) {
        blockStmtNode block = (blockStmtNode) visit(ctx.suite());
        lambdaExprNode lambdaExpr = new lambdaExprNode(new position(ctx), block);
        if(ctx.functionParameter()!=null){
            functionParameterNode parameter = (functionParameterNode) visit(ctx.functionParameter());
            lambdaExpr.parameter = parameter;
        }
        else {
            lambdaExpr.parameter = null;
        }
        if(ctx.expressionList()!=null){
            exprlistNode exprlist = (exprlistNode) visit(ctx.expressionList());
            lambdaExpr.exprlist = exprlist;
        }
        else {
            lambdaExpr.exprlist = null;
        }
        lambdaExpr.exprtype = new type("undefine", 0);
        return lambdaExpr;
    }
    @Override
    public ASTNode visitWrongcreator(MxParser.WrongcreatorContext ctx) {
        wrongcreator wrong = new wrongcreator(new position(ctx));
        return wrong;
    }
    @Override
    public ASTNode visitBasiccreator(MxParser.BasiccreatorContext ctx){
        varTypeNode varType = (varTypeNode) visit(ctx.varType());
        classCreatorNode classCreator = new classCreatorNode(new position(ctx), varType);
        classCreator.exprtype = new type(varType.typename, 0);
        return classCreator;
    }


    @Override
    public ASTNode visitArraycreator(MxParser.ArraycreatorContext ctx) {
        varTypeNode vartype = (varTypeNode) visit(ctx.varType());
        arrayTypeNode varType = new arrayTypeNode(vartype.pos, ctx.LeftBracket().size(), vartype.typename);
        arrayCreatorNode arrayCreator = new arrayCreatorNode(new position(ctx), varType);
        ctx.expression().forEach(ed->arrayCreator.exprlist.add((ExprNode) visit(ed)));
        arrayCreator.exprtype = new type(varType.typename, ctx.LeftBracket().size());
        return arrayCreator;
    }

    @Override
    public ASTNode visitClasscreator(MxParser.ClasscreatorContext ctx) {
        varTypeNode varType = (varTypeNode) visit(ctx.varType());
        classCreatorNode classCreator = new classCreatorNode(new position(ctx), varType);
        classCreator.exprtype = new type(varType.typename, 0);
        return classCreator;
    }

    @Override
    public ASTNode visitVardef(MxParser.VardefContext ctx) {
        varlistNode varlist = new varlistNode(new position(ctx));
        valTypeNode valType = (valTypeNode) visit(ctx.valType());
        for(var it : ctx.varDeclaration()) {
            String id = it.Id().toString();
            ExprNode expr;
            if(it.expression()!=null)
            expr = (ExprNode) visit(it.expression());
            else expr = null;
            varlist.varlist.add(new varDefNode(new position(it), valType, id, expr));
        }
        return varlist;
    }

    @Override
    public ASTNode visitReturnType(MxParser.ReturnTypeContext ctx) {
        if(ctx.Void()!=null) {
            voidTypeNode voidType = new voidTypeNode(new position(ctx));
            return voidType;
        }
        else if(ctx.valType()!=null) {
            return (valTypeNode) visit(ctx.valType());
        }
        else {
            return null;
        }
    }

    @Override
    public ASTNode visitValType(MxParser.ValTypeContext ctx){
        if(ctx.varType()!=null) {
            return (varTypeNode) visit(ctx.varType());
        }
        else if(ctx.arrayType()!=null) {
            return (arrayTypeNode) visit(ctx.arrayType());
        }
        else{
            return null;
        }
    }

    @Override
    public ASTNode visitVarType(MxParser.VarTypeContext ctx){
        if(ctx.Int()!=null) {
            varTypeNode varType = new varTypeNode(new position(ctx), "int");
            return varType;
        }
        else if(ctx.Bool()!=null) {
            varTypeNode varType = new varTypeNode(new position(ctx), "bool");
            return varType;
        }
        else if(ctx.String()!=null) {
            valTypeNode varType = new varTypeNode(new position(ctx), "string");
            return varType;
        }
        else if(ctx.Id()!=null) {
            String id = ctx.Id().getText();
            varTypeNode varType = new varTypeNode(new position(ctx), id);
            return varType;
        }
        else {
            return null;
        }
    }

    @Override
    public ASTNode visitArrayType(MxParser.ArrayTypeContext ctx) {
        varTypeNode varType = (varTypeNode) visit(ctx.varType());
        String typename = varType.typename;
        int dimension = ctx.LeftBracket().size();
        arrayTypeNode arrayType = new arrayTypeNode(new position(ctx), dimension, typename);
        return arrayType;
    }
    
    @Override
    public ASTNode visitClassdef(MxParser.ClassdefContext ctx) {
        String name = ctx.Id().getText();
        classDefNode classdef = new classDefNode(new position(ctx), name);
        ctx.classcontent().forEach(cd->classdef.classcontents.add(visit(cd)));
        return classdef; 
    }

    @Override
    public ASTNode visitClasscontent(MxParser.ClasscontentContext ctx) {
        if(ctx.state()!=null) {
            return visit(ctx.state());
        }
        else if(ctx.functiondef()!=null) {
            return visit(ctx.functiondef());
        }
        else if(ctx.Id()!=null) {
            String id = ctx.Id().getText();
            functionParameterNode functionparameter;
            if(ctx.functionParameter()!=null)
            functionparameter = (functionParameterNode) visit(ctx.functionParameter());
            else functionparameter = null;
            blockStmtNode block = (blockStmtNode) visit(ctx.suite());
            classConstructorNode classConstructor = new classConstructorNode(new position(ctx), id, functionparameter, block);
            return classConstructor;
        }
        else {
            return null;
        }
    }

    @Override
    public ASTNode visitPrimary(MxParser.PrimaryContext ctx){
        if(ctx.expression()!=null){
            return (ExprNode)visit(ctx.expression());
        }
        else if(ctx.Id()!=null) {
            String id = ctx.Id().getText();
            idNode idnode = new idNode(new position(ctx), id);
            return idnode;
        }
        else if(ctx.literal()!=null){
            literalNode literal = (literalNode) visit(ctx.literal());
            return literal;
        }
        else if(ctx.DecimalInteger()!=null){
            String integer = ctx.DecimalInteger().getText();
            integerNode integernode = new integerNode(new position(ctx), integer);
            integernode.exprtype = new type("int", 0);
            return integernode;
        }
        else if(ctx.STRING()!=null) {
            String string = ctx.STRING().getText();
            stringNode stringnode = new stringNode(new position(ctx), string);
            stringnode.exprtype = new type("string", 0);
            return stringnode;
        }
        else if(ctx.This()!=null) {
            thisNode thisnode = new thisNode(new position(ctx));
            thisnode.exprtype = new type("undefine", 0);
            return thisnode;
        }
        else {
            return null;
        }
    }

    @Override
    public ASTNode visitLiteral(MxParser.LiteralContext ctx) {  
        if(ctx.True()!=null) {
            literalNode literalnode = new literalNode(new position(ctx), "true");
            literalnode.exprtype = new type("bool", 0);
            return literalnode;
        }
        else if(ctx.False()!=null) {
            literalNode literalnode = new literalNode(new position(ctx), "false");
            literalnode.exprtype = new type("bool", 0);
            return literalnode;
        }
        else if(ctx.Null()!=null) {
            literalNode literalnode = new literalNode(new position(ctx), "null");
            literalnode.exprtype = new type("null", 0);
            return literalnode;
        }
        else {
            return null;
        }
    }    
}
