// Generated from Mx.g4 by ANTLR 4.9
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MxParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.9", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, T__32=33, Void=34, Int=35, Bool=36, String=37, If=38, Return=39, 
		Break=40, Continue=41, Else=42, For=43, While=44, True=45, False=46, Null=47, 
		Class=48, New=49, This=50, STRING=51, ESC=52, Id=53, DecimalInteger=54, 
		Whitespace=55, LineComment=56;
	public static final int
		RULE_file = 0, RULE_program = 1, RULE_functiondef = 2, RULE_functionParameter = 3, 
		RULE_expressionList = 4, RULE_suite = 5, RULE_state = 6, RULE_declarationState = 7, 
		RULE_ifState = 8, RULE_forState = 9, RULE_whileState = 10, RULE_expression = 11, 
		RULE_vardef = 12, RULE_varDeclaration = 13, RULE_arrayDeclaration = 14, 
		RULE_returnType = 15, RULE_varType = 16, RULE_classdef = 17, RULE_classcontent = 18, 
		RULE_primary = 19, RULE_literal = 20;
	private static String[] makeRuleNames() {
		return new String[] {
			"file", "program", "functiondef", "functionParameter", "expressionList", 
			"suite", "state", "declarationState", "ifState", "forState", "whileState", 
			"expression", "vardef", "varDeclaration", "arrayDeclaration", "returnType", 
			"varType", "classdef", "classcontent", "primary", "literal"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'('", "')'", "','", "'{'", "'}'", "';'", "'['", "']'", "'++'", 
			"'--'", "'!'", "'~'", "'*'", "'/'", "'%'", "'+'", "'-'", "'<<'", "'>>'", 
			"'<'", "'<='", "'>'", "'>='", "'=='", "'!='", "'&'", "'^'", "'|'", "'&&'", 
			"'||'", "'='", "'[]'", "'.'", "'void'", "'int'", "'bool'", "'string'", 
			"'if'", "'return'", "'break'", "'continue'", "'else'", "'for'", "'while'", 
			"'true'", "'false'", "'null'", "'class'", "'new'", "'this'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, "Void", "Int", 
			"Bool", "String", "If", "Return", "Break", "Continue", "Else", "For", 
			"While", "True", "False", "Null", "Class", "New", "This", "STRING", "ESC", 
			"Id", "DecimalInteger", "Whitespace", "LineComment"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Mx.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public MxParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class FileContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(MxParser.EOF, 0); }
		public List<ProgramContext> program() {
			return getRuleContexts(ProgramContext.class);
		}
		public ProgramContext program(int i) {
			return getRuleContext(ProgramContext.class,i);
		}
		public FileContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_file; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterFile(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitFile(this);
		}
	}

	public final FileContext file() throws RecognitionException {
		FileContext _localctx = new FileContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_file);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(45);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Void) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << Class) | (1L << Id))) != 0)) {
				{
				{
				setState(42);
				program();
				}
				}
				setState(47);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(48);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ProgramContext extends ParserRuleContext {
		public FunctiondefContext functiondef() {
			return getRuleContext(FunctiondefContext.class,0);
		}
		public VardefContext vardef() {
			return getRuleContext(VardefContext.class,0);
		}
		public ClassdefContext classdef() {
			return getRuleContext(ClassdefContext.class,0);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitProgram(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_program);
		try {
			setState(53);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,1,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(50);
				functiondef();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(51);
				vardef();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(52);
				classdef();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctiondefContext extends ParserRuleContext {
		public ReturnTypeContext returnType() {
			return getRuleContext(ReturnTypeContext.class,0);
		}
		public TerminalNode Id() { return getToken(MxParser.Id, 0); }
		public FunctionParameterContext functionParameter() {
			return getRuleContext(FunctionParameterContext.class,0);
		}
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public FunctiondefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functiondef; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterFunctiondef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitFunctiondef(this);
		}
	}

	public final FunctiondefContext functiondef() throws RecognitionException {
		FunctiondefContext _localctx = new FunctiondefContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_functiondef);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(55);
			returnType();
			setState(56);
			match(Id);
			setState(57);
			match(T__0);
			setState(58);
			functionParameter();
			setState(59);
			match(T__1);
			setState(60);
			suite();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FunctionParameterContext extends ParserRuleContext {
		public List<VarTypeContext> varType() {
			return getRuleContexts(VarTypeContext.class);
		}
		public VarTypeContext varType(int i) {
			return getRuleContext(VarTypeContext.class,i);
		}
		public List<TerminalNode> Id() { return getTokens(MxParser.Id); }
		public TerminalNode Id(int i) {
			return getToken(MxParser.Id, i);
		}
		public FunctionParameterContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionParameter; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterFunctionParameter(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitFunctionParameter(this);
		}
	}

	public final FunctionParameterContext functionParameter() throws RecognitionException {
		FunctionParameterContext _localctx = new FunctionParameterContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_functionParameter);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(73);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Id))) != 0)) {
				{
				setState(62);
				varType();
				setState(63);
				match(Id);
				setState(70);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__2) {
					{
					{
					setState(64);
					match(T__2);
					setState(65);
					varType();
					setState(66);
					match(Id);
					}
					}
					setState(72);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionListContext extends ParserRuleContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ExpressionListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expressionList; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterExpressionList(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitExpressionList(this);
		}
	}

	public final ExpressionListContext expressionList() throws RecognitionException {
		ExpressionListContext _localctx = new ExpressionListContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_expressionList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(75);
			expression(0);
			setState(80);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__2) {
				{
				{
				setState(76);
				match(T__2);
				setState(77);
				expression(0);
				}
				}
				setState(82);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SuiteContext extends ParserRuleContext {
		public List<StateContext> state() {
			return getRuleContexts(StateContext.class);
		}
		public StateContext state(int i) {
			return getRuleContext(StateContext.class,i);
		}
		public SuiteContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_suite; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterSuite(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitSuite(this);
		}
	}

	public final SuiteContext suite() throws RecognitionException {
		SuiteContext _localctx = new SuiteContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_suite);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(83);
			match(T__3);
			setState(87);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__3) | (1L << T__5) | (1L << T__8) | (1L << T__9) | (1L << T__10) | (1L << T__11) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << If) | (1L << Return) | (1L << Break) | (1L << Continue) | (1L << For) | (1L << While) | (1L << True) | (1L << False) | (1L << Null) | (1L << New) | (1L << STRING) | (1L << Id) | (1L << DecimalInteger))) != 0)) {
				{
				{
				setState(84);
				state();
				}
				}
				setState(89);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(90);
			match(T__4);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StateContext extends ParserRuleContext {
		public StateContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_state; }
	 
		public StateContext() { }
		public void copyFrom(StateContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class WhilecaseContext extends StateContext {
		public WhileStateContext whileState() {
			return getRuleContext(WhileStateContext.class,0);
		}
		public WhilecaseContext(StateContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterWhilecase(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitWhilecase(this);
		}
	}
	public static class ReturnStateContext extends StateContext {
		public TerminalNode Return() { return getToken(MxParser.Return, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ReturnStateContext(StateContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterReturnState(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitReturnState(this);
		}
	}
	public static class ContinueStateContext extends StateContext {
		public TerminalNode Continue() { return getToken(MxParser.Continue, 0); }
		public ContinueStateContext(StateContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterContinueState(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitContinueState(this);
		}
	}
	public static class ForcaseContext extends StateContext {
		public ForStateContext forState() {
			return getRuleContext(ForStateContext.class,0);
		}
		public ForcaseContext(StateContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterForcase(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitForcase(this);
		}
	}
	public static class IfcaseContext extends StateContext {
		public IfStateContext ifState() {
			return getRuleContext(IfStateContext.class,0);
		}
		public IfcaseContext(StateContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterIfcase(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitIfcase(this);
		}
	}
	public static class PureStateContext extends StateContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public PureStateContext(StateContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterPureState(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitPureState(this);
		}
	}
	public static class BlockContext extends StateContext {
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public BlockContext(StateContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitBlock(this);
		}
	}
	public static class BreakStateContext extends StateContext {
		public TerminalNode Break() { return getToken(MxParser.Break, 0); }
		public BreakStateContext(StateContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterBreakState(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitBreakState(this);
		}
	}
	public static class VardefStateContext extends StateContext {
		public DeclarationStateContext declarationState() {
			return getRuleContext(DeclarationStateContext.class,0);
		}
		public VardefStateContext(StateContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterVardefState(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitVardefState(this);
		}
	}
	public static class SemicolonContext extends StateContext {
		public SemicolonContext(StateContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterSemicolon(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitSemicolon(this);
		}
	}

	public final StateContext state() throws RecognitionException {
		StateContext _localctx = new StateContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_state);
		int _la;
		try {
			setState(110);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,7,_ctx) ) {
			case 1:
				_localctx = new BlockContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(92);
				suite();
				}
				break;
			case 2:
				_localctx = new VardefStateContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(93);
				declarationState();
				}
				break;
			case 3:
				_localctx = new IfcaseContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(94);
				ifState();
				}
				break;
			case 4:
				_localctx = new ForcaseContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(95);
				forState();
				}
				break;
			case 5:
				_localctx = new WhilecaseContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(96);
				whileState();
				}
				break;
			case 6:
				_localctx = new ReturnStateContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(97);
				match(Return);
				setState(99);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__8) | (1L << T__9) | (1L << T__10) | (1L << T__11) | (1L << True) | (1L << False) | (1L << Null) | (1L << New) | (1L << STRING) | (1L << Id) | (1L << DecimalInteger))) != 0)) {
					{
					setState(98);
					expression(0);
					}
				}

				setState(101);
				match(T__5);
				}
				break;
			case 7:
				_localctx = new BreakStateContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(102);
				match(Break);
				setState(103);
				match(T__5);
				}
				break;
			case 8:
				_localctx = new ContinueStateContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(104);
				match(Continue);
				setState(105);
				match(T__5);
				}
				break;
			case 9:
				_localctx = new PureStateContext(_localctx);
				enterOuterAlt(_localctx, 9);
				{
				setState(106);
				expression(0);
				setState(107);
				match(T__5);
				}
				break;
			case 10:
				_localctx = new SemicolonContext(_localctx);
				enterOuterAlt(_localctx, 10);
				{
				setState(109);
				match(T__5);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DeclarationStateContext extends ParserRuleContext {
		public VardefContext vardef() {
			return getRuleContext(VardefContext.class,0);
		}
		public DeclarationStateContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_declarationState; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterDeclarationState(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitDeclarationState(this);
		}
	}

	public final DeclarationStateContext declarationState() throws RecognitionException {
		DeclarationStateContext _localctx = new DeclarationStateContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_declarationState);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(112);
			vardef();
			setState(113);
			match(T__5);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class IfStateContext extends ParserRuleContext {
		public StateContext trueState;
		public StateContext falseState;
		public TerminalNode If() { return getToken(MxParser.If, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public List<StateContext> state() {
			return getRuleContexts(StateContext.class);
		}
		public StateContext state(int i) {
			return getRuleContext(StateContext.class,i);
		}
		public TerminalNode Else() { return getToken(MxParser.Else, 0); }
		public IfStateContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ifState; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterIfState(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitIfState(this);
		}
	}

	public final IfStateContext ifState() throws RecognitionException {
		IfStateContext _localctx = new IfStateContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_ifState);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(115);
			match(If);
			setState(116);
			match(T__0);
			setState(117);
			expression(0);
			setState(118);
			match(T__1);
			setState(119);
			((IfStateContext)_localctx).trueState = state();
			setState(122);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,8,_ctx) ) {
			case 1:
				{
				setState(120);
				match(Else);
				setState(121);
				((IfStateContext)_localctx).falseState = state();
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ForStateContext extends ParserRuleContext {
		public StateContext init;
		public StateContext condition;
		public StateContext incr;
		public TerminalNode For() { return getToken(MxParser.For, 0); }
		public List<StateContext> state() {
			return getRuleContexts(StateContext.class);
		}
		public StateContext state(int i) {
			return getRuleContext(StateContext.class,i);
		}
		public ForStateContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forState; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterForState(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitForState(this);
		}
	}

	public final ForStateContext forState() throws RecognitionException {
		ForStateContext _localctx = new ForStateContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_forState);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(124);
			match(For);
			setState(125);
			match(T__0);
			setState(127);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,9,_ctx) ) {
			case 1:
				{
				setState(126);
				((ForStateContext)_localctx).init = state();
				}
				break;
			}
			setState(129);
			match(T__5);
			setState(131);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,10,_ctx) ) {
			case 1:
				{
				setState(130);
				((ForStateContext)_localctx).condition = state();
				}
				break;
			}
			setState(133);
			match(T__5);
			setState(135);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__3) | (1L << T__5) | (1L << T__8) | (1L << T__9) | (1L << T__10) | (1L << T__11) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << If) | (1L << Return) | (1L << Break) | (1L << Continue) | (1L << For) | (1L << While) | (1L << True) | (1L << False) | (1L << Null) | (1L << New) | (1L << STRING) | (1L << Id) | (1L << DecimalInteger))) != 0)) {
				{
				setState(134);
				((ForStateContext)_localctx).incr = state();
				}
			}

			setState(137);
			match(T__1);
			setState(138);
			state();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class WhileStateContext extends ParserRuleContext {
		public StateContext condition;
		public TerminalNode While() { return getToken(MxParser.While, 0); }
		public List<StateContext> state() {
			return getRuleContexts(StateContext.class);
		}
		public StateContext state(int i) {
			return getRuleContext(StateContext.class,i);
		}
		public WhileStateContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_whileState; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterWhileState(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitWhileState(this);
		}
	}

	public final WhileStateContext whileState() throws RecognitionException {
		WhileStateContext _localctx = new WhileStateContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_whileState);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(140);
			match(While);
			setState(141);
			match(T__0);
			setState(143);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__3) | (1L << T__5) | (1L << T__8) | (1L << T__9) | (1L << T__10) | (1L << T__11) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << If) | (1L << Return) | (1L << Break) | (1L << Continue) | (1L << For) | (1L << While) | (1L << True) | (1L << False) | (1L << Null) | (1L << New) | (1L << STRING) | (1L << Id) | (1L << DecimalInteger))) != 0)) {
				{
				setState(142);
				((WhileStateContext)_localctx).condition = state();
				}
			}

			setState(145);
			match(T__1);
			setState(146);
			state();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionContext extends ParserRuleContext {
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
	 
		public ExpressionContext() { }
		public void copyFrom(ExpressionContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class IndexExprContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public IndexExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterIndexExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitIndexExpr(this);
		}
	}
	public static class PrefixExprContext extends ExpressionContext {
		public Token op;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public PrefixExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterPrefixExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitPrefixExpr(this);
		}
	}
	public static class SuffixExprContext extends ExpressionContext {
		public Token op;
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public SuffixExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterSuffixExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitSuffixExpr(this);
		}
	}
	public static class AtomExprContext extends ExpressionContext {
		public PrimaryContext primary() {
			return getRuleContext(PrimaryContext.class,0);
		}
		public AtomExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterAtomExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitAtomExpr(this);
		}
	}
	public static class BinaryExprContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public BinaryExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterBinaryExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitBinaryExpr(this);
		}
	}
	public static class ArrayassignExprContext extends ExpressionContext {
		public TerminalNode New() { return getToken(MxParser.New, 0); }
		public VarTypeContext varType() {
			return getRuleContext(VarTypeContext.class,0);
		}
		public List<TerminalNode> DecimalInteger() { return getTokens(MxParser.DecimalInteger); }
		public TerminalNode DecimalInteger(int i) {
			return getToken(MxParser.DecimalInteger, i);
		}
		public ArrayassignExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterArrayassignExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitArrayassignExpr(this);
		}
	}
	public static class AssignExprContext extends ExpressionContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public AssignExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterAssignExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitAssignExpr(this);
		}
	}
	public static class FunctionExprContext extends ExpressionContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ExpressionListContext expressionList() {
			return getRuleContext(ExpressionListContext.class,0);
		}
		public FunctionExprContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterFunctionExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitFunctionExpr(this);
		}
	}

	public final ExpressionContext expression() throws RecognitionException {
		return expression(0);
	}

	private ExpressionContext expression(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExpressionContext _localctx = new ExpressionContext(_ctx, _parentState);
		ExpressionContext _prevctx = _localctx;
		int _startState = 22;
		enterRecursionRule(_localctx, 22, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(161);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__0:
			case True:
			case False:
			case Null:
			case STRING:
			case Id:
			case DecimalInteger:
				{
				_localctx = new AtomExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(149);
				primary();
				}
				break;
			case T__8:
			case T__9:
			case T__10:
			case T__11:
				{
				_localctx = new PrefixExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(150);
				((PrefixExprContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__8) | (1L << T__9) | (1L << T__10) | (1L << T__11))) != 0)) ) {
					((PrefixExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(151);
				expression(13);
				}
				break;
			case New:
				{
				_localctx = new ArrayassignExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(152);
				match(New);
				setState(153);
				varType();
				setState(157); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(154);
						match(T__6);
						setState(155);
						match(DecimalInteger);
						setState(156);
						match(T__7);
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(159); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,13,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(211);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,17,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(209);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,16,_ctx) ) {
					case 1:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(163);
						if (!(precpred(_ctx, 12))) throw new FailedPredicateException(this, "precpred(_ctx, 12)");
						setState(164);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__12) | (1L << T__13) | (1L << T__14))) != 0)) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(165);
						expression(13);
						}
						break;
					case 2:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(166);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(167);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__15 || _la==T__16) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(168);
						expression(12);
						}
						break;
					case 3:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(169);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(170);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__17 || _la==T__18) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(171);
						expression(11);
						}
						break;
					case 4:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(172);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(173);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__19) | (1L << T__20) | (1L << T__21) | (1L << T__22))) != 0)) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(174);
						expression(10);
						}
						break;
					case 5:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(175);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(176);
						((BinaryExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__23 || _la==T__24) ) {
							((BinaryExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(177);
						expression(9);
						}
						break;
					case 6:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(178);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(179);
						((BinaryExprContext)_localctx).op = match(T__25);
						setState(180);
						expression(8);
						}
						break;
					case 7:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(181);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(182);
						((BinaryExprContext)_localctx).op = match(T__26);
						setState(183);
						expression(7);
						}
						break;
					case 8:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(184);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(185);
						((BinaryExprContext)_localctx).op = match(T__27);
						setState(186);
						expression(6);
						}
						break;
					case 9:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(187);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(188);
						((BinaryExprContext)_localctx).op = match(T__28);
						setState(189);
						expression(5);
						}
						break;
					case 10:
						{
						_localctx = new BinaryExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(190);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(191);
						((BinaryExprContext)_localctx).op = match(T__29);
						setState(192);
						expression(4);
						}
						break;
					case 11:
						{
						_localctx = new AssignExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(193);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(194);
						match(T__30);
						setState(195);
						expression(2);
						}
						break;
					case 12:
						{
						_localctx = new IndexExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(196);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(197);
						match(T__6);
						setState(198);
						expression(0);
						setState(199);
						match(T__7);
						}
						break;
					case 13:
						{
						_localctx = new FunctionExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(201);
						if (!(precpred(_ctx, 15))) throw new FailedPredicateException(this, "precpred(_ctx, 15)");
						setState(202);
						match(T__0);
						setState(204);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__8) | (1L << T__9) | (1L << T__10) | (1L << T__11) | (1L << True) | (1L << False) | (1L << Null) | (1L << New) | (1L << STRING) | (1L << Id) | (1L << DecimalInteger))) != 0)) {
							{
							setState(203);
							expressionList();
							}
						}

						setState(206);
						match(T__1);
						}
						break;
					case 14:
						{
						_localctx = new SuffixExprContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(207);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(208);
						((SuffixExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__8 || _la==T__9) ) {
							((SuffixExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						}
						break;
					}
					} 
				}
				setState(213);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,17,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class VardefContext extends ParserRuleContext {
		public VarTypeContext varType() {
			return getRuleContext(VarTypeContext.class,0);
		}
		public List<VarDeclarationContext> varDeclaration() {
			return getRuleContexts(VarDeclarationContext.class);
		}
		public VarDeclarationContext varDeclaration(int i) {
			return getRuleContext(VarDeclarationContext.class,i);
		}
		public List<ArrayDeclarationContext> arrayDeclaration() {
			return getRuleContexts(ArrayDeclarationContext.class);
		}
		public ArrayDeclarationContext arrayDeclaration(int i) {
			return getRuleContext(ArrayDeclarationContext.class,i);
		}
		public VardefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_vardef; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterVardef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitVardef(this);
		}
	}

	public final VardefContext vardef() throws RecognitionException {
		VardefContext _localctx = new VardefContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_vardef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(214);
			varType();
			setState(236);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Id:
				{
				setState(215);
				varDeclaration();
				setState(220);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__2) {
					{
					{
					setState(216);
					match(T__2);
					setState(217);
					varDeclaration();
					}
					}
					setState(222);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
				break;
			case T__31:
				{
				setState(224); 
				_errHandler.sync(this);
				_la = _input.LA(1);
				do {
					{
					{
					setState(223);
					match(T__31);
					}
					}
					setState(226); 
					_errHandler.sync(this);
					_la = _input.LA(1);
				} while ( _la==T__31 );
				setState(228);
				arrayDeclaration();
				setState(233);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__2) {
					{
					{
					setState(229);
					match(T__2);
					setState(230);
					arrayDeclaration();
					}
					}
					setState(235);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VarDeclarationContext extends ParserRuleContext {
		public TerminalNode Id() { return getToken(MxParser.Id, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public VarDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDeclaration; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterVarDeclaration(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitVarDeclaration(this);
		}
	}

	public final VarDeclarationContext varDeclaration() throws RecognitionException {
		VarDeclarationContext _localctx = new VarDeclarationContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_varDeclaration);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(238);
			match(Id);
			setState(241);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__30) {
				{
				setState(239);
				match(T__30);
				setState(240);
				expression(0);
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ArrayDeclarationContext extends ParserRuleContext {
		public ArrayDeclarationContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_arrayDeclaration; }
	 
		public ArrayDeclarationContext() { }
		public void copyFrom(ArrayDeclarationContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class DynamicarrayContext extends ArrayDeclarationContext {
		public TerminalNode Id() { return getToken(MxParser.Id, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public DynamicarrayContext(ArrayDeclarationContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterDynamicarray(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitDynamicarray(this);
		}
	}
	public static class StaticarrayContext extends ArrayDeclarationContext {
		public TerminalNode Id() { return getToken(MxParser.Id, 0); }
		public List<TerminalNode> DecimalInteger() { return getTokens(MxParser.DecimalInteger); }
		public TerminalNode DecimalInteger(int i) {
			return getToken(MxParser.DecimalInteger, i);
		}
		public StaticarrayContext(ArrayDeclarationContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterStaticarray(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitStaticarray(this);
		}
	}

	public final ArrayDeclarationContext arrayDeclaration() throws RecognitionException {
		ArrayDeclarationContext _localctx = new ArrayDeclarationContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_arrayDeclaration);
		int _la;
		try {
			setState(255);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,25,_ctx) ) {
			case 1:
				_localctx = new DynamicarrayContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(243);
				match(Id);
				setState(245);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,23,_ctx) ) {
				case 1:
					{
					setState(244);
					expression(0);
					}
					break;
				}
				}
				break;
			case 2:
				_localctx = new StaticarrayContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(247);
				match(Id);
				setState(251); 
				_errHandler.sync(this);
				_la = _input.LA(1);
				do {
					{
					{
					setState(248);
					match(T__6);
					setState(249);
					match(DecimalInteger);
					setState(250);
					match(T__7);
					}
					}
					setState(253); 
					_errHandler.sync(this);
					_la = _input.LA(1);
				} while ( _la==T__6 );
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ReturnTypeContext extends ParserRuleContext {
		public TerminalNode Void() { return getToken(MxParser.Void, 0); }
		public VarTypeContext varType() {
			return getRuleContext(VarTypeContext.class,0);
		}
		public ReturnTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_returnType; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterReturnType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitReturnType(this);
		}
	}

	public final ReturnTypeContext returnType() throws RecognitionException {
		ReturnTypeContext _localctx = new ReturnTypeContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_returnType);
		try {
			setState(259);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case Void:
				enterOuterAlt(_localctx, 1);
				{
				setState(257);
				match(Void);
				}
				break;
			case Int:
			case Bool:
			case String:
			case Id:
				enterOuterAlt(_localctx, 2);
				{
				setState(258);
				varType();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VarTypeContext extends ParserRuleContext {
		public TerminalNode Int() { return getToken(MxParser.Int, 0); }
		public TerminalNode Bool() { return getToken(MxParser.Bool, 0); }
		public TerminalNode String() { return getToken(MxParser.String, 0); }
		public TerminalNode Id() { return getToken(MxParser.Id, 0); }
		public VarTypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varType; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterVarType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitVarType(this);
		}
	}

	public final VarTypeContext varType() throws RecognitionException {
		VarTypeContext _localctx = new VarTypeContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_varType);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(261);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << Int) | (1L << Bool) | (1L << String) | (1L << Id))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ClassdefContext extends ParserRuleContext {
		public TerminalNode Class() { return getToken(MxParser.Class, 0); }
		public TerminalNode Id() { return getToken(MxParser.Id, 0); }
		public List<ClasscontentContext> classcontent() {
			return getRuleContexts(ClasscontentContext.class);
		}
		public ClasscontentContext classcontent(int i) {
			return getRuleContext(ClasscontentContext.class,i);
		}
		public ClassdefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classdef; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterClassdef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitClassdef(this);
		}
	}

	public final ClassdefContext classdef() throws RecognitionException {
		ClassdefContext _localctx = new ClassdefContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_classdef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(263);
			match(Class);
			setState(264);
			match(Id);
			setState(265);
			match(T__3);
			setState(267); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(266);
				classcontent();
				}
				}
				setState(269); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__3) | (1L << T__5) | (1L << T__8) | (1L << T__9) | (1L << T__10) | (1L << T__11) | (1L << Void) | (1L << Int) | (1L << Bool) | (1L << String) | (1L << If) | (1L << Return) | (1L << Break) | (1L << Continue) | (1L << For) | (1L << While) | (1L << True) | (1L << False) | (1L << Null) | (1L << New) | (1L << STRING) | (1L << Id) | (1L << DecimalInteger))) != 0) );
			setState(271);
			match(T__4);
			setState(272);
			match(T__5);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ClasscontentContext extends ParserRuleContext {
		public StateContext state() {
			return getRuleContext(StateContext.class,0);
		}
		public FunctiondefContext functiondef() {
			return getRuleContext(FunctiondefContext.class,0);
		}
		public TerminalNode Id() { return getToken(MxParser.Id, 0); }
		public FunctionParameterContext functionParameter() {
			return getRuleContext(FunctionParameterContext.class,0);
		}
		public SuiteContext suite() {
			return getRuleContext(SuiteContext.class,0);
		}
		public ClasscontentContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classcontent; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterClasscontent(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitClasscontent(this);
		}
	}

	public final ClasscontentContext classcontent() throws RecognitionException {
		ClasscontentContext _localctx = new ClasscontentContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_classcontent);
		try {
			setState(282);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,28,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(274);
				state();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(275);
				functiondef();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(276);
				match(Id);
				setState(277);
				match(T__0);
				setState(278);
				functionParameter();
				setState(279);
				match(T__1);
				setState(280);
				suite();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class PrimaryContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode STRING() { return getToken(MxParser.STRING, 0); }
		public TerminalNode Id() { return getToken(MxParser.Id, 0); }
		public LiteralContext literal() {
			return getRuleContext(LiteralContext.class,0);
		}
		public PrimaryContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_primary; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterPrimary(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitPrimary(this);
		}
	}

	public final PrimaryContext primary() throws RecognitionException {
		PrimaryContext _localctx = new PrimaryContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_primary);
		try {
			setState(293);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,29,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(284);
				match(T__0);
				setState(285);
				expression(0);
				setState(286);
				match(T__1);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(288);
				match(STRING);
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(289);
				match(Id);
				setState(290);
				match(T__32);
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(291);
				match(Id);
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(292);
				literal();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LiteralContext extends ParserRuleContext {
		public TerminalNode DecimalInteger() { return getToken(MxParser.DecimalInteger, 0); }
		public TerminalNode True() { return getToken(MxParser.True, 0); }
		public TerminalNode False() { return getToken(MxParser.False, 0); }
		public TerminalNode Null() { return getToken(MxParser.Null, 0); }
		public LiteralContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_literal; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).enterLiteral(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxListener ) ((MxListener)listener).exitLiteral(this);
		}
	}

	public final LiteralContext literal() throws RecognitionException {
		LiteralContext _localctx = new LiteralContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_literal);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(295);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << True) | (1L << False) | (1L << Null) | (1L << DecimalInteger))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 11:
			return expression_sempred((ExpressionContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expression_sempred(ExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 12);
		case 1:
			return precpred(_ctx, 11);
		case 2:
			return precpred(_ctx, 10);
		case 3:
			return precpred(_ctx, 9);
		case 4:
			return precpred(_ctx, 8);
		case 5:
			return precpred(_ctx, 7);
		case 6:
			return precpred(_ctx, 6);
		case 7:
			return precpred(_ctx, 5);
		case 8:
			return precpred(_ctx, 4);
		case 9:
			return precpred(_ctx, 3);
		case 10:
			return precpred(_ctx, 2);
		case 11:
			return precpred(_ctx, 16);
		case 12:
			return precpred(_ctx, 15);
		case 13:
			return precpred(_ctx, 14);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3:\u012c\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\3\2\7\2.\n\2\f\2\16\2\61\13\2"+
		"\3\2\3\2\3\3\3\3\3\3\5\38\n\3\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\5\3\5\3\5"+
		"\3\5\3\5\3\5\7\5G\n\5\f\5\16\5J\13\5\5\5L\n\5\3\6\3\6\3\6\7\6Q\n\6\f\6"+
		"\16\6T\13\6\3\7\3\7\7\7X\n\7\f\7\16\7[\13\7\3\7\3\7\3\b\3\b\3\b\3\b\3"+
		"\b\3\b\3\b\5\bf\n\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\5\bq\n\b\3\t\3"+
		"\t\3\t\3\n\3\n\3\n\3\n\3\n\3\n\3\n\5\n}\n\n\3\13\3\13\3\13\5\13\u0082"+
		"\n\13\3\13\3\13\5\13\u0086\n\13\3\13\3\13\5\13\u008a\n\13\3\13\3\13\3"+
		"\13\3\f\3\f\3\f\5\f\u0092\n\f\3\f\3\f\3\f\3\r\3\r\3\r\3\r\3\r\3\r\3\r"+
		"\3\r\3\r\6\r\u00a0\n\r\r\r\16\r\u00a1\5\r\u00a4\n\r\3\r\3\r\3\r\3\r\3"+
		"\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r"+
		"\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3"+
		"\r\3\r\5\r\u00cf\n\r\3\r\3\r\3\r\7\r\u00d4\n\r\f\r\16\r\u00d7\13\r\3\16"+
		"\3\16\3\16\3\16\7\16\u00dd\n\16\f\16\16\16\u00e0\13\16\3\16\6\16\u00e3"+
		"\n\16\r\16\16\16\u00e4\3\16\3\16\3\16\7\16\u00ea\n\16\f\16\16\16\u00ed"+
		"\13\16\5\16\u00ef\n\16\3\17\3\17\3\17\5\17\u00f4\n\17\3\20\3\20\5\20\u00f8"+
		"\n\20\3\20\3\20\3\20\3\20\6\20\u00fe\n\20\r\20\16\20\u00ff\5\20\u0102"+
		"\n\20\3\21\3\21\5\21\u0106\n\21\3\22\3\22\3\23\3\23\3\23\3\23\6\23\u010e"+
		"\n\23\r\23\16\23\u010f\3\23\3\23\3\23\3\24\3\24\3\24\3\24\3\24\3\24\3"+
		"\24\3\24\5\24\u011d\n\24\3\25\3\25\3\25\3\25\3\25\3\25\3\25\3\25\3\25"+
		"\5\25\u0128\n\25\3\26\3\26\3\26\2\3\30\27\2\4\6\b\n\f\16\20\22\24\26\30"+
		"\32\34\36 \"$&(*\2\13\3\2\13\16\3\2\17\21\3\2\22\23\3\2\24\25\3\2\26\31"+
		"\3\2\32\33\3\2\13\f\4\2%\'\67\67\4\2/\6188\2\u014e\2/\3\2\2\2\4\67\3\2"+
		"\2\2\69\3\2\2\2\bK\3\2\2\2\nM\3\2\2\2\fU\3\2\2\2\16p\3\2\2\2\20r\3\2\2"+
		"\2\22u\3\2\2\2\24~\3\2\2\2\26\u008e\3\2\2\2\30\u00a3\3\2\2\2\32\u00d8"+
		"\3\2\2\2\34\u00f0\3\2\2\2\36\u0101\3\2\2\2 \u0105\3\2\2\2\"\u0107\3\2"+
		"\2\2$\u0109\3\2\2\2&\u011c\3\2\2\2(\u0127\3\2\2\2*\u0129\3\2\2\2,.\5\4"+
		"\3\2-,\3\2\2\2.\61\3\2\2\2/-\3\2\2\2/\60\3\2\2\2\60\62\3\2\2\2\61/\3\2"+
		"\2\2\62\63\7\2\2\3\63\3\3\2\2\2\648\5\6\4\2\658\5\32\16\2\668\5$\23\2"+
		"\67\64\3\2\2\2\67\65\3\2\2\2\67\66\3\2\2\28\5\3\2\2\29:\5 \21\2:;\7\67"+
		"\2\2;<\7\3\2\2<=\5\b\5\2=>\7\4\2\2>?\5\f\7\2?\7\3\2\2\2@A\5\"\22\2AH\7"+
		"\67\2\2BC\7\5\2\2CD\5\"\22\2DE\7\67\2\2EG\3\2\2\2FB\3\2\2\2GJ\3\2\2\2"+
		"HF\3\2\2\2HI\3\2\2\2IL\3\2\2\2JH\3\2\2\2K@\3\2\2\2KL\3\2\2\2L\t\3\2\2"+
		"\2MR\5\30\r\2NO\7\5\2\2OQ\5\30\r\2PN\3\2\2\2QT\3\2\2\2RP\3\2\2\2RS\3\2"+
		"\2\2S\13\3\2\2\2TR\3\2\2\2UY\7\6\2\2VX\5\16\b\2WV\3\2\2\2X[\3\2\2\2YW"+
		"\3\2\2\2YZ\3\2\2\2Z\\\3\2\2\2[Y\3\2\2\2\\]\7\7\2\2]\r\3\2\2\2^q\5\f\7"+
		"\2_q\5\20\t\2`q\5\22\n\2aq\5\24\13\2bq\5\26\f\2ce\7)\2\2df\5\30\r\2ed"+
		"\3\2\2\2ef\3\2\2\2fg\3\2\2\2gq\7\b\2\2hi\7*\2\2iq\7\b\2\2jk\7+\2\2kq\7"+
		"\b\2\2lm\5\30\r\2mn\7\b\2\2nq\3\2\2\2oq\7\b\2\2p^\3\2\2\2p_\3\2\2\2p`"+
		"\3\2\2\2pa\3\2\2\2pb\3\2\2\2pc\3\2\2\2ph\3\2\2\2pj\3\2\2\2pl\3\2\2\2p"+
		"o\3\2\2\2q\17\3\2\2\2rs\5\32\16\2st\7\b\2\2t\21\3\2\2\2uv\7(\2\2vw\7\3"+
		"\2\2wx\5\30\r\2xy\7\4\2\2y|\5\16\b\2z{\7,\2\2{}\5\16\b\2|z\3\2\2\2|}\3"+
		"\2\2\2}\23\3\2\2\2~\177\7-\2\2\177\u0081\7\3\2\2\u0080\u0082\5\16\b\2"+
		"\u0081\u0080\3\2\2\2\u0081\u0082\3\2\2\2\u0082\u0083\3\2\2\2\u0083\u0085"+
		"\7\b\2\2\u0084\u0086\5\16\b\2\u0085\u0084\3\2\2\2\u0085\u0086\3\2\2\2"+
		"\u0086\u0087\3\2\2\2\u0087\u0089\7\b\2\2\u0088\u008a\5\16\b\2\u0089\u0088"+
		"\3\2\2\2\u0089\u008a\3\2\2\2\u008a\u008b\3\2\2\2\u008b\u008c\7\4\2\2\u008c"+
		"\u008d\5\16\b\2\u008d\25\3\2\2\2\u008e\u008f\7.\2\2\u008f\u0091\7\3\2"+
		"\2\u0090\u0092\5\16\b\2\u0091\u0090\3\2\2\2\u0091\u0092\3\2\2\2\u0092"+
		"\u0093\3\2\2\2\u0093\u0094\7\4\2\2\u0094\u0095\5\16\b\2\u0095\27\3\2\2"+
		"\2\u0096\u0097\b\r\1\2\u0097\u00a4\5(\25\2\u0098\u0099\t\2\2\2\u0099\u00a4"+
		"\5\30\r\17\u009a\u009b\7\63\2\2\u009b\u009f\5\"\22\2\u009c\u009d\7\t\2"+
		"\2\u009d\u009e\78\2\2\u009e\u00a0\7\n\2\2\u009f\u009c\3\2\2\2\u00a0\u00a1"+
		"\3\2\2\2\u00a1\u009f\3\2\2\2\u00a1\u00a2\3\2\2\2\u00a2\u00a4\3\2\2\2\u00a3"+
		"\u0096\3\2\2\2\u00a3\u0098\3\2\2\2\u00a3\u009a\3\2\2\2\u00a4\u00d5\3\2"+
		"\2\2\u00a5\u00a6\f\16\2\2\u00a6\u00a7\t\3\2\2\u00a7\u00d4\5\30\r\17\u00a8"+
		"\u00a9\f\r\2\2\u00a9\u00aa\t\4\2\2\u00aa\u00d4\5\30\r\16\u00ab\u00ac\f"+
		"\f\2\2\u00ac\u00ad\t\5\2\2\u00ad\u00d4\5\30\r\r\u00ae\u00af\f\13\2\2\u00af"+
		"\u00b0\t\6\2\2\u00b0\u00d4\5\30\r\f\u00b1\u00b2\f\n\2\2\u00b2\u00b3\t"+
		"\7\2\2\u00b3\u00d4\5\30\r\13\u00b4\u00b5\f\t\2\2\u00b5\u00b6\7\34\2\2"+
		"\u00b6\u00d4\5\30\r\n\u00b7\u00b8\f\b\2\2\u00b8\u00b9\7\35\2\2\u00b9\u00d4"+
		"\5\30\r\t\u00ba\u00bb\f\7\2\2\u00bb\u00bc\7\36\2\2\u00bc\u00d4\5\30\r"+
		"\b\u00bd\u00be\f\6\2\2\u00be\u00bf\7\37\2\2\u00bf\u00d4\5\30\r\7\u00c0"+
		"\u00c1\f\5\2\2\u00c1\u00c2\7 \2\2\u00c2\u00d4\5\30\r\6\u00c3\u00c4\f\4"+
		"\2\2\u00c4\u00c5\7!\2\2\u00c5\u00d4\5\30\r\4\u00c6\u00c7\f\22\2\2\u00c7"+
		"\u00c8\7\t\2\2\u00c8\u00c9\5\30\r\2\u00c9\u00ca\7\n\2\2\u00ca\u00d4\3"+
		"\2\2\2\u00cb\u00cc\f\21\2\2\u00cc\u00ce\7\3\2\2\u00cd\u00cf\5\n\6\2\u00ce"+
		"\u00cd\3\2\2\2\u00ce\u00cf\3\2\2\2\u00cf\u00d0\3\2\2\2\u00d0\u00d4\7\4"+
		"\2\2\u00d1\u00d2\f\20\2\2\u00d2\u00d4\t\b\2\2\u00d3\u00a5\3\2\2\2\u00d3"+
		"\u00a8\3\2\2\2\u00d3\u00ab\3\2\2\2\u00d3\u00ae\3\2\2\2\u00d3\u00b1\3\2"+
		"\2\2\u00d3\u00b4\3\2\2\2\u00d3\u00b7\3\2\2\2\u00d3\u00ba\3\2\2\2\u00d3"+
		"\u00bd\3\2\2\2\u00d3\u00c0\3\2\2\2\u00d3\u00c3\3\2\2\2\u00d3\u00c6\3\2"+
		"\2\2\u00d3\u00cb\3\2\2\2\u00d3\u00d1\3\2\2\2\u00d4\u00d7\3\2\2\2\u00d5"+
		"\u00d3\3\2\2\2\u00d5\u00d6\3\2\2\2\u00d6\31\3\2\2\2\u00d7\u00d5\3\2\2"+
		"\2\u00d8\u00ee\5\"\22\2\u00d9\u00de\5\34\17\2\u00da\u00db\7\5\2\2\u00db"+
		"\u00dd\5\34\17\2\u00dc\u00da\3\2\2\2\u00dd\u00e0\3\2\2\2\u00de\u00dc\3"+
		"\2\2\2\u00de\u00df\3\2\2\2\u00df\u00ef\3\2\2\2\u00e0\u00de\3\2\2\2\u00e1"+
		"\u00e3\7\"\2\2\u00e2\u00e1\3\2\2\2\u00e3\u00e4\3\2\2\2\u00e4\u00e2\3\2"+
		"\2\2\u00e4\u00e5\3\2\2\2\u00e5\u00e6\3\2\2\2\u00e6\u00eb\5\36\20\2\u00e7"+
		"\u00e8\7\5\2\2\u00e8\u00ea\5\36\20\2\u00e9\u00e7\3\2\2\2\u00ea\u00ed\3"+
		"\2\2\2\u00eb\u00e9\3\2\2\2\u00eb\u00ec\3\2\2\2\u00ec\u00ef\3\2\2\2\u00ed"+
		"\u00eb\3\2\2\2\u00ee\u00d9\3\2\2\2\u00ee\u00e2\3\2\2\2\u00ef\33\3\2\2"+
		"\2\u00f0\u00f3\7\67\2\2\u00f1\u00f2\7!\2\2\u00f2\u00f4\5\30\r\2\u00f3"+
		"\u00f1\3\2\2\2\u00f3\u00f4\3\2\2\2\u00f4\35\3\2\2\2\u00f5\u00f7\7\67\2"+
		"\2\u00f6\u00f8\5\30\r\2\u00f7\u00f6\3\2\2\2\u00f7\u00f8\3\2\2\2\u00f8"+
		"\u0102\3\2\2\2\u00f9\u00fd\7\67\2\2\u00fa\u00fb\7\t\2\2\u00fb\u00fc\7"+
		"8\2\2\u00fc\u00fe\7\n\2\2\u00fd\u00fa\3\2\2\2\u00fe\u00ff\3\2\2\2\u00ff"+
		"\u00fd\3\2\2\2\u00ff\u0100\3\2\2\2\u0100\u0102\3\2\2\2\u0101\u00f5\3\2"+
		"\2\2\u0101\u00f9\3\2\2\2\u0102\37\3\2\2\2\u0103\u0106\7$\2\2\u0104\u0106"+
		"\5\"\22\2\u0105\u0103\3\2\2\2\u0105\u0104\3\2\2\2\u0106!\3\2\2\2\u0107"+
		"\u0108\t\t\2\2\u0108#\3\2\2\2\u0109\u010a\7\62\2\2\u010a\u010b\7\67\2"+
		"\2\u010b\u010d\7\6\2\2\u010c\u010e\5&\24\2\u010d\u010c\3\2\2\2\u010e\u010f"+
		"\3\2\2\2\u010f\u010d\3\2\2\2\u010f\u0110\3\2\2\2\u0110\u0111\3\2\2\2\u0111"+
		"\u0112\7\7\2\2\u0112\u0113\7\b\2\2\u0113%\3\2\2\2\u0114\u011d\5\16\b\2"+
		"\u0115\u011d\5\6\4\2\u0116\u0117\7\67\2\2\u0117\u0118\7\3\2\2\u0118\u0119"+
		"\5\b\5\2\u0119\u011a\7\4\2\2\u011a\u011b\5\f\7\2\u011b\u011d\3\2\2\2\u011c"+
		"\u0114\3\2\2\2\u011c\u0115\3\2\2\2\u011c\u0116\3\2\2\2\u011d\'\3\2\2\2"+
		"\u011e\u011f\7\3\2\2\u011f\u0120\5\30\r\2\u0120\u0121\7\4\2\2\u0121\u0128"+
		"\3\2\2\2\u0122\u0128\7\65\2\2\u0123\u0124\7\67\2\2\u0124\u0128\7#\2\2"+
		"\u0125\u0128\7\67\2\2\u0126\u0128\5*\26\2\u0127\u011e\3\2\2\2\u0127\u0122"+
		"\3\2\2\2\u0127\u0123\3\2\2\2\u0127\u0125\3\2\2\2\u0127\u0126\3\2\2\2\u0128"+
		")\3\2\2\2\u0129\u012a\t\n\2\2\u012a+\3\2\2\2 /\67HKRYep|\u0081\u0085\u0089"+
		"\u0091\u00a1\u00a3\u00ce\u00d3\u00d5\u00de\u00e4\u00eb\u00ee\u00f3\u00f7"+
		"\u00ff\u0101\u0105\u010f\u011c\u0127";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}