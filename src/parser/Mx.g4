grammar Mx;

file: program* EOF;

program: functiondef  | declarationState | classdef;

functiondef: returnType Id '(' functionParameter? ')' suite;
functionParameter : param (',' param)*;

param: valType Id;

expressionList : expression (',' expression)*;

suite : '{' state* '}';

state 
    : suite                                                  #block
    | declarationState                                       #vardefState
    | ifState                                                #ifcase
    | forState                                               #forcase
    | whileState                                             #whilecase
    | Return expression? ';'                                 #returnState
    | Break ';'                                              #breakState
    | Continue ';'                                           #continueState
    | expressionList ';'                                     #pureState
    |  ';'                                                   #semicolon
    ;

declarationState : vardef ';';
ifState : If '(' expression ')' trueState=state
          (Else falseState=state)?;                        
forState : For '(' init? ';' condition=expression? ';' 
           incr=expression? ')' state;    
init : vardef | expression;                     
whileState : While '(' condition=expression? ')' state;

expression
    : primary                                                #atomExpr
    | expression '[' index=expression ']'                    #indexExpr
    | expression '.' Id '(' expressionList? ')'              #methodExpr
    | expression '.' Id                                      #memberExpr
    | lambda                                                 #lambdaExpr
    | Id '(' expressionList? ')'                             #functionExpr
    | <assor=right> expression op=('++'|'--')                #suffixExpr
    | <assoc=right> op = ('!'|'~'|'++'|'--'|'+'|'-') expression     #prefixExpr
    | expression op = ('*'|'/'|'%')expression                #binaryExpr
    | expression op = ('+'|'-')expression                    #binaryExpr
    | expression op = ('<<'|'>>')expression                  #binaryExpr
    | expression op = ('<'|'<='|'>'|'>=')expression          #binaryExpr
    | expression op = ('=='|'!=')expression                  #binaryExpr
    | expression op = '&' expression                         #binaryExpr
    | expression op = '^' expression                         #binaryExpr
    | expression op = '|' expression                         #binaryExpr
    | expression op = '&&' expression                        #binaryExpr
    | expression op = '||' expression                        #binaryExpr
    | <assoc=right> expression '=' expression                #assignExpr 
    | New creator                                            #newExpr
    ;

lambda:'[&]' (LeftParen functionParameter? RightParen)? '->' suite '('expressionList?')';

creator
    : varType (LeftBracket expression RightBracket)+ (LeftBracket RightBracket)+ (LeftBracket expression RightBracket)+ #wrongcreator
    | varType (LeftBracket expression RightBracket)+ (LeftBracket RightBracket)*                    #arraycreator
    | varType '('')'                                                                                  #classcreator
    | varType                                                                                         #basiccreator
    ;

vardef :valType varDeclaration (',' varDeclaration)*;
varDeclaration
    : Id ('=' expression )?;

returnType: Void | valType;
valType: varType | arrayType;
varType : Int | Bool | String | Id;
arrayType : varType (LeftBracket RightBracket)+;

classdef : Class Id '{' classcontent* '}' ';';
classcontent
    : functiondef
    | state
    | Id '(' functionParameter? ')' suite
    ;

primary
    : '(' expression ')' 
    | Id
    | STRING
    | DecimalInteger
    | This
    | literal
    ;

literal
    : True
    | False
    | Null
    ;



//Lexer

Void : 'void';
Int : 'int';
Bool: 'bool';
String: 'string';
If : 'if';
Return : 'return';
Break : 'break';
Continue : 'continue';
Else : 'else';
For : 'for';
While : 'while';
True : 'true';
False : 'false';
Null : 'null';
Class : 'class';
New : 'new';
This : 'this';
LeftBracket : '[';
RightBracket : ']';
LeftParen : '(';
RightParen : ')';

STRING : '"' (SPACE | '\\' ESC | PRINTABLE_CHAR)*? '"';
fragment ESC : ["nr\\];
fragment SPACE : ' ';
fragment PRINTABLE_CHAR : ~[\\\r\n\f"];

Id : [a-zA-Z][a-zA-Z0-9_]*;

DecimalInteger
    : [1-9][0-9]*
    | '0'
    ;
Whitespace
    : [ \t\r\n]+ ->skip
    ;

LineComment
    : '//' ~[\r\n]* ->skip
    ;
BlockComment : '/*' .*? '*/' -> skip;