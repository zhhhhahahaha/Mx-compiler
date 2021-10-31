//have sons: varTypeNode, voidTypeNode, arrayTypeNode
package AST;

import Util.position;

abstract public class typeNode extends ASTNode{
    public String typename;

    public typeNode(position pos, String typename){
        super(pos);
        this.typename = typename;    
    }
    public typeNode(position pos){
        super(pos);
        this.typename = "undefine";
    }
}
