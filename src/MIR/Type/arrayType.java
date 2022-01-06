package MIR.Type;

public class arrayType extends IRType{
    public int dim;
    public IRType type;

    public arrayType(int dim, IRType type){
        this.dim = dim;
        this.type = type;
    }
}
