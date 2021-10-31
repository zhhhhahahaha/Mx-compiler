package AST;

import Util.position;

public class binaryExprNode extends ExprNode {
    public ExprNode lhs, rhs;
    public enum binaryOpType {
        mul,div,mod,
        add,sub,
        shl,shr,  //<< >>
        and,xor,or, //& ^ |
        les,loe,gre,goe, //< <= > >=
        eq,neq,  //== !=
        loa,loo //&& ||        
    }
    public binaryOpType opCode;

    public binaryExprNode(position pos, ExprNode lhs, ExprNode rhs, binaryOpType opCode) {
        super(pos);
        this.lhs = lhs;
        this.rhs = rhs;
        this.opCode = opCode;
    }
    
    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
