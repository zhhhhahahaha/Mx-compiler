grammar Mx;

file: program* EOF;

program: functiondef | vardef | classdef;

functiondef: returnType Id '(' functionParameter ')' suite;
functionParameter : (varType Id (',' varType Id)*)?;

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
    | expression ';'                                         #pureState
    |  ';'                                                   #semicolon
    ;

declarationState : vardef ';';
ifState : If '(' expression ')' trueState=state
          (Else falseState=state)?;                        
forState : For '(' init=state? ';' condition=state? ';' 
           incr=state? ')' state;                         
whileState : While '(' condition=state? ')' state;

expression
    : primary                                                #atomExpr
    | expression '[' expression ']'                          #indexExpr
    | expression '(' expressionList? ')'                     #functionExpr
    | <assor=right> expression op=('++'|'--')                #suffixExpr
    | <assoc=right> op = ('!'|'~'|'++'|'--') expression      #prefixExpr
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
    | New varType ('[' DecimalInteger ']')+                  #arrayassignExpr
    ;

vardef :varType (varDeclaration (',' varDeclaration)*|'[]'+ arrayDeclaration(',' arrayDeclaration)*);
varDeclaration
    : Id ('=' expression )?;

arrayDeclaration
    :  Id (expression)?                                      #dynamicarray
    |  Id ('[' DecimalInteger ']')+                          #staticarray
    ;

returnType: Void | varType;
varType : Int | Bool | String | Id;

classdef : Class Id '{' classcontent+ '}' ';';
classcontent
    : state
    | functiondef
    | Id '(' functionParameter ')' suite                     
    ;

primary
    : '(' expression ')'
    | STRING
    | Id '.' 
    | Id
    | literal
    ;

literal
    : DecimalInteger
    | True
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

STRING : '"' (ESC|.)*? '"';
ESC : '\\"' | '\\' | '\n';

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