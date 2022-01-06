package MIR;

import MIR.Entity.entity;
import MIR.Entity.label;
import MIR.Inst.Inst;

import java.util.ArrayList;

public class BasicBlock {
    public label block_label;
    public ArrayList<Inst> instlist = new ArrayList<>();

    public BasicBlock(label block_label){
        this.block_label = block_label;
    }
}
