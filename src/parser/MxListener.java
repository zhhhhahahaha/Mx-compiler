// Generated from Mx.g4 by ANTLR 4.9
package Parser;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link MxParser}.
 */
public interface MxListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link MxParser#file}.
	 * @param ctx the parse tree
	 */
	void enterFile(MxParser.FileContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#file}.
	 * @param ctx the parse tree
	 */
	void exitFile(MxParser.FileContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(MxParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(MxParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#functiondef}.
	 * @param ctx the parse tree
	 */
	void enterFunctiondef(MxParser.FunctiondefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#functiondef}.
	 * @param ctx the parse tree
	 */
	void exitFunctiondef(MxParser.FunctiondefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#functionParameter}.
	 * @param ctx the parse tree
	 */
	void enterFunctionParameter(MxParser.FunctionParameterContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#functionParameter}.
	 * @param ctx the parse tree
	 */
	void exitFunctionParameter(MxParser.FunctionParameterContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#param}.
	 * @param ctx the parse tree
	 */
	void enterParam(MxParser.ParamContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#param}.
	 * @param ctx the parse tree
	 */
	void exitParam(MxParser.ParamContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#expressionList}.
	 * @param ctx the parse tree
	 */
	void enterExpressionList(MxParser.ExpressionListContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#expressionList}.
	 * @param ctx the parse tree
	 */
	void exitExpressionList(MxParser.ExpressionListContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#suite}.
	 * @param ctx the parse tree
	 */
	void enterSuite(MxParser.SuiteContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#suite}.
	 * @param ctx the parse tree
	 */
	void exitSuite(MxParser.SuiteContext ctx);
	/**
	 * Enter a parse tree produced by the {@code block}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void enterBlock(MxParser.BlockContext ctx);
	/**
	 * Exit a parse tree produced by the {@code block}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void exitBlock(MxParser.BlockContext ctx);
	/**
	 * Enter a parse tree produced by the {@code vardefState}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void enterVardefState(MxParser.VardefStateContext ctx);
	/**
	 * Exit a parse tree produced by the {@code vardefState}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void exitVardefState(MxParser.VardefStateContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ifcase}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void enterIfcase(MxParser.IfcaseContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ifcase}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void exitIfcase(MxParser.IfcaseContext ctx);
	/**
	 * Enter a parse tree produced by the {@code forcase}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void enterForcase(MxParser.ForcaseContext ctx);
	/**
	 * Exit a parse tree produced by the {@code forcase}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void exitForcase(MxParser.ForcaseContext ctx);
	/**
	 * Enter a parse tree produced by the {@code whilecase}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void enterWhilecase(MxParser.WhilecaseContext ctx);
	/**
	 * Exit a parse tree produced by the {@code whilecase}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void exitWhilecase(MxParser.WhilecaseContext ctx);
	/**
	 * Enter a parse tree produced by the {@code returnState}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void enterReturnState(MxParser.ReturnStateContext ctx);
	/**
	 * Exit a parse tree produced by the {@code returnState}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void exitReturnState(MxParser.ReturnStateContext ctx);
	/**
	 * Enter a parse tree produced by the {@code breakState}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void enterBreakState(MxParser.BreakStateContext ctx);
	/**
	 * Exit a parse tree produced by the {@code breakState}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void exitBreakState(MxParser.BreakStateContext ctx);
	/**
	 * Enter a parse tree produced by the {@code continueState}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void enterContinueState(MxParser.ContinueStateContext ctx);
	/**
	 * Exit a parse tree produced by the {@code continueState}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void exitContinueState(MxParser.ContinueStateContext ctx);
	/**
	 * Enter a parse tree produced by the {@code pureState}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void enterPureState(MxParser.PureStateContext ctx);
	/**
	 * Exit a parse tree produced by the {@code pureState}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void exitPureState(MxParser.PureStateContext ctx);
	/**
	 * Enter a parse tree produced by the {@code semicolon}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void enterSemicolon(MxParser.SemicolonContext ctx);
	/**
	 * Exit a parse tree produced by the {@code semicolon}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 */
	void exitSemicolon(MxParser.SemicolonContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#declarationState}.
	 * @param ctx the parse tree
	 */
	void enterDeclarationState(MxParser.DeclarationStateContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#declarationState}.
	 * @param ctx the parse tree
	 */
	void exitDeclarationState(MxParser.DeclarationStateContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#ifState}.
	 * @param ctx the parse tree
	 */
	void enterIfState(MxParser.IfStateContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#ifState}.
	 * @param ctx the parse tree
	 */
	void exitIfState(MxParser.IfStateContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#forState}.
	 * @param ctx the parse tree
	 */
	void enterForState(MxParser.ForStateContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#forState}.
	 * @param ctx the parse tree
	 */
	void exitForState(MxParser.ForStateContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#init}.
	 * @param ctx the parse tree
	 */
	void enterInit(MxParser.InitContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#init}.
	 * @param ctx the parse tree
	 */
	void exitInit(MxParser.InitContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#whileState}.
	 * @param ctx the parse tree
	 */
	void enterWhileState(MxParser.WhileStateContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#whileState}.
	 * @param ctx the parse tree
	 */
	void exitWhileState(MxParser.WhileStateContext ctx);
	/**
	 * Enter a parse tree produced by the {@code newExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterNewExpr(MxParser.NewExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code newExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitNewExpr(MxParser.NewExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code indexExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterIndexExpr(MxParser.IndexExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code indexExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitIndexExpr(MxParser.IndexExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code prefixExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterPrefixExpr(MxParser.PrefixExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code prefixExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitPrefixExpr(MxParser.PrefixExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code lambdaExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterLambdaExpr(MxParser.LambdaExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code lambdaExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitLambdaExpr(MxParser.LambdaExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code methodExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterMethodExpr(MxParser.MethodExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code methodExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitMethodExpr(MxParser.MethodExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code memberExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterMemberExpr(MxParser.MemberExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code memberExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitMemberExpr(MxParser.MemberExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code suffixExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterSuffixExpr(MxParser.SuffixExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code suffixExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitSuffixExpr(MxParser.SuffixExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code atomExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAtomExpr(MxParser.AtomExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code atomExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAtomExpr(MxParser.AtomExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code binaryExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterBinaryExpr(MxParser.BinaryExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code binaryExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitBinaryExpr(MxParser.BinaryExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code assignExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAssignExpr(MxParser.AssignExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code assignExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAssignExpr(MxParser.AssignExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code functionExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterFunctionExpr(MxParser.FunctionExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code functionExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitFunctionExpr(MxParser.FunctionExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#lambda}.
	 * @param ctx the parse tree
	 */
	void enterLambda(MxParser.LambdaContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#lambda}.
	 * @param ctx the parse tree
	 */
	void exitLambda(MxParser.LambdaContext ctx);
	/**
	 * Enter a parse tree produced by the {@code arraycreator}
	 * labeled alternative in {@link MxParser#creator}.
	 * @param ctx the parse tree
	 */
	void enterArraycreator(MxParser.ArraycreatorContext ctx);
	/**
	 * Exit a parse tree produced by the {@code arraycreator}
	 * labeled alternative in {@link MxParser#creator}.
	 * @param ctx the parse tree
	 */
	void exitArraycreator(MxParser.ArraycreatorContext ctx);
	/**
	 * Enter a parse tree produced by the {@code classcreator}
	 * labeled alternative in {@link MxParser#creator}.
	 * @param ctx the parse tree
	 */
	void enterClasscreator(MxParser.ClasscreatorContext ctx);
	/**
	 * Exit a parse tree produced by the {@code classcreator}
	 * labeled alternative in {@link MxParser#creator}.
	 * @param ctx the parse tree
	 */
	void exitClasscreator(MxParser.ClasscreatorContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#vardef}.
	 * @param ctx the parse tree
	 */
	void enterVardef(MxParser.VardefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#vardef}.
	 * @param ctx the parse tree
	 */
	void exitVardef(MxParser.VardefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#varDeclaration}.
	 * @param ctx the parse tree
	 */
	void enterVarDeclaration(MxParser.VarDeclarationContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#varDeclaration}.
	 * @param ctx the parse tree
	 */
	void exitVarDeclaration(MxParser.VarDeclarationContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#returnType}.
	 * @param ctx the parse tree
	 */
	void enterReturnType(MxParser.ReturnTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#returnType}.
	 * @param ctx the parse tree
	 */
	void exitReturnType(MxParser.ReturnTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#valType}.
	 * @param ctx the parse tree
	 */
	void enterValType(MxParser.ValTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#valType}.
	 * @param ctx the parse tree
	 */
	void exitValType(MxParser.ValTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#varType}.
	 * @param ctx the parse tree
	 */
	void enterVarType(MxParser.VarTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#varType}.
	 * @param ctx the parse tree
	 */
	void exitVarType(MxParser.VarTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#arrayType}.
	 * @param ctx the parse tree
	 */
	void enterArrayType(MxParser.ArrayTypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#arrayType}.
	 * @param ctx the parse tree
	 */
	void exitArrayType(MxParser.ArrayTypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#classdef}.
	 * @param ctx the parse tree
	 */
	void enterClassdef(MxParser.ClassdefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#classdef}.
	 * @param ctx the parse tree
	 */
	void exitClassdef(MxParser.ClassdefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#classcontent}.
	 * @param ctx the parse tree
	 */
	void enterClasscontent(MxParser.ClasscontentContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#classcontent}.
	 * @param ctx the parse tree
	 */
	void exitClasscontent(MxParser.ClasscontentContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#primary}.
	 * @param ctx the parse tree
	 */
	void enterPrimary(MxParser.PrimaryContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#primary}.
	 * @param ctx the parse tree
	 */
	void exitPrimary(MxParser.PrimaryContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxParser#literal}.
	 * @param ctx the parse tree
	 */
	void enterLiteral(MxParser.LiteralContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxParser#literal}.
	 * @param ctx the parse tree
	 */
	void exitLiteral(MxParser.LiteralContext ctx);
}