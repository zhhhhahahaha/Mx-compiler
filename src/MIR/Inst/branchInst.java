package MIR.Inst;

import MIR.Entity.*;

public class branchInst extends Inst{
    public label truedest;
    public label falsedest;
    boolean hascondition;
    public register conreg;



    public branchInst(label truedest, label falsedest, boolean hascondition, register conreg){
        this.truedest = truedest;
        this.falsedest = falsedest;
        this.hascondition = hascondition;
        this.conreg = conreg;
    }
}
