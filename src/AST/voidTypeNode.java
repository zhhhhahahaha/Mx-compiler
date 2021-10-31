package AST;

import Util.position;

public class voidTypeNode extends typeNode{
    public voidTypeNode(position pos){
        super(pos, "void");
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    } 
}
