//possible typename int  bool string classname null undefine unsure

package Util;

public class type {
    public String typename;
    public int dim;
    public type(String typename, int dim) {
        this.typename = typename;
        this.dim = dim;
    }

    public boolean equals(type right){
        if(this.typename==right.typename&&this.dim==right.dim){
            return true;
        }
        else {
            return false;
        }
    }
}
