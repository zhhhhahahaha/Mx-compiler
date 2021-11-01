// Generated from Mx.g4 by ANTLR 4.9
package Parser;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link MxParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface MxVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link MxParser#file}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFile(MxParser.FileContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(MxParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#functiondef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctiondef(MxParser.FunctiondefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#functionParameter}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionParameter(MxParser.FunctionParameterContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#param}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParam(MxParser.ParamContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#expressionList}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpressionList(MxParser.ExpressionListContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#suite}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSuite(MxParser.SuiteContext ctx);
	/**
	 * Visit a parse tree produced by the {@code block}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBlock(MxParser.BlockContext ctx);
	/**
	 * Visit a parse tree produced by the {@code vardefState}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVardefState(MxParser.VardefStateContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ifcase}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIfcase(MxParser.IfcaseContext ctx);
	/**
	 * Visit a parse tree produced by the {@code forcase}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForcase(MxParser.ForcaseContext ctx);
	/**
	 * Visit a parse tree produced by the {@code whilecase}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhilecase(MxParser.WhilecaseContext ctx);
	/**
	 * Visit a parse tree produced by the {@code returnState}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitReturnState(MxParser.ReturnStateContext ctx);
	/**
	 * Visit a parse tree produced by the {@code breakState}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBreakState(MxParser.BreakStateContext ctx);
	/**
	 * Visit a parse tree produced by the {@code continueState}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitContinueState(MxParser.ContinueStateContext ctx);
	/**
	 * Visit a parse tree produced by the {@code pureState}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPureState(MxParser.PureStateContext ctx);
	/**
	 * Visit a parse tree produced by the {@code semicolon}
	 * labeled alternative in {@link MxParser#state}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSemicolon(MxParser.SemicolonContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#declarationState}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeclarationState(MxParser.DeclarationStateContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#ifState}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIfState(MxParser.IfStateContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#forState}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForState(MxParser.ForStateContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#init}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInit(MxParser.InitContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#whileState}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhileState(MxParser.WhileStateContext ctx);
	/**
	 * Visit a parse tree produced by the {@code newExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewExpr(MxParser.NewExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code indexExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIndexExpr(MxParser.IndexExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code prefixExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrefixExpr(MxParser.PrefixExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code lambdaExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLambdaExpr(MxParser.LambdaExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code methodExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMethodExpr(MxParser.MethodExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code memberExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMemberExpr(MxParser.MemberExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code suffixExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSuffixExpr(MxParser.SuffixExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code atomExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAtomExpr(MxParser.AtomExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code binaryExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBinaryExpr(MxParser.BinaryExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code assignExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignExpr(MxParser.AssignExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code functionExpr}
	 * labeled alternative in {@link MxParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionExpr(MxParser.FunctionExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#lambda}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLambda(MxParser.LambdaContext ctx);
	/**
	 * Visit a parse tree produced by the {@code wrongcreator}
	 * labeled alternative in {@link MxParser#creator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWrongcreator(MxParser.WrongcreatorContext ctx);
	/**
	 * Visit a parse tree produced by the {@code arraycreator}
	 * labeled alternative in {@link MxParser#creator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArraycreator(MxParser.ArraycreatorContext ctx);
	/**
	 * Visit a parse tree produced by the {@code classcreator}
	 * labeled alternative in {@link MxParser#creator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClasscreator(MxParser.ClasscreatorContext ctx);
	/**
	 * Visit a parse tree produced by the {@code basiccreator}
	 * labeled alternative in {@link MxParser#creator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBasiccreator(MxParser.BasiccreatorContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#vardef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVardef(MxParser.VardefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#varDeclaration}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarDeclaration(MxParser.VarDeclarationContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#returnType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitReturnType(MxParser.ReturnTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#valType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitValType(MxParser.ValTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#varType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarType(MxParser.VarTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#arrayType}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArrayType(MxParser.ArrayTypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#classdef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassdef(MxParser.ClassdefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#classcontent}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClasscontent(MxParser.ClasscontentContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrimary(MxParser.PrimaryContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxParser#literal}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLiteral(MxParser.LiteralContext ctx);
}