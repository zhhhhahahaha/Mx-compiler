package AST;

import Util.position;

import java.util.ArrayList;

public class functionParameterNode extends ASTNode{
    public ArrayList<varNode> paras = new ArrayList<>();
    public functionParameterNode(position pos){
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }  
}
