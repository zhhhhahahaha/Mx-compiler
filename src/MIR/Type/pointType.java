package MIR.Type;

import MIR.IRVisitor;

import java.io.PrintStream;

//不用保留几维的信息因为pointtype可以是arrayType
//只会用作表示register的type，因为在Mx*语言中是不存在单独的指针
public class pointType extends IRType{
    public IRType pointtype;

    public pointType(IRType pointtype){
        this.pointtype = pointtype;
    }

    @Override
    public void accept(IRVisitor visitor) {
        visitor.visit(this);
    }
}
