package Backend;

import ASM.ASMBasicblock;
import ASM.ASMfunction;
import ASM.ASMmodule;
import ASM.Inst.*;
import ASM.Operand.Operand;
import ASM.Operand.phyreg;
import ASM.Operand.virtualreg;
import org.antlr.v4.runtime.misc.Pair;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Stack;

public class Regalloca {
    public ASMmodule module;
    static final int K = 27;
    private ASMfunction func;  //用作regalloc的function

    public boolean checkimm(int imm){
        if(imm < 2046 && imm > -2047){
            return true;
        }
        else{
            return false;
        }
    }

    private HashSet<Operand> precolored = new HashSet<>();
    private HashSet<Operand> initial = new HashSet<>();
    private HashSet<Operand> simplifyWorklist = new HashSet<>();
    private HashSet<Operand> freezeWorklist = new HashSet<>();
    private HashSet<Operand> spillWorklist = new HashSet<>();
    private HashSet<Operand> spilledNodes = new HashSet<>();
    private HashSet<Operand> coalescedNodes = new HashSet<>();
    private HashSet<Operand> coloredNodes = new HashSet<>();
    private Stack<Operand> selectStack = new Stack<>();

    private HashSet<mvInst> coalescedMoves = new HashSet<>();
    private HashSet<mvInst> constrainedMoves = new HashSet<>();
    private HashSet<mvInst> frozenMoves = new HashSet<>();
    private HashSet<mvInst> worklistMoves = new HashSet<>();
    private HashSet<mvInst> activeMoves = new HashSet<>();

    private HashSet<Pair<Operand, Operand>> adjSet = new HashSet<>();
    private HashMap<Operand, HashSet<Operand>> adjList = new HashMap<>();
    private HashMap<Operand, Integer> degree = new HashMap<>();
    private HashMap<Operand, HashSet<mvInst>> moveList = new HashMap<>();
    private HashMap<Operand, Operand> alias = new HashMap<>();
    private HashMap<Operand, Integer> color = new HashMap<>();

    private HashMap<ASMBasicblock, HashSet<Operand>> LiveIn = new HashMap<>();
    private HashMap<ASMBasicblock, HashSet<Operand>> LiveOut = new HashMap<>();
    private HashMap<ASMBasicblock, HashSet<Operand>> def_mp = new HashMap<>();

    private HashMap<Operand, Integer> spillPriority = new HashMap<>();

    private void initialstart(){
        initial.clear();
        simplifyWorklist.clear();
        freezeWorklist.clear();
        spillWorklist.clear();
        spilledNodes.clear();
        coalescedNodes.clear();
        coloredNodes.clear();
        selectStack.clear();
        coalescedMoves.clear();
        constrainedMoves.clear();
        frozenMoves.clear();
        worklistMoves.clear();
        activeMoves.clear();
        adjSet.clear();
        adjList.clear();
        degree.clear();
        moveList.clear();
        alias.clear();
        color.clear();
        LiveIn.clear();
        LiveOut.clear();
        def_mp.clear();
        spillPriority.clear();

        for(var fb : func.blocks){
            ASMInst p = fb.head;
            while(p!=null){
                for(var reg : p.use){
                    if(reg instanceof virtualreg) initial.add(reg);
                }
                for(var reg : p.def){
                    if(reg instanceof virtualreg) initial.add(reg);
                }
                p = p.succ;
            }
        }
        for(int i = 0; i < 32; i++){
            color.put(module.getphyregfrnum(i), i);
            moveList.put(module.getphyregfrnum(i), new HashSet<>());
            degree.put(module.getphyregfrnum(i), Integer.MAX_VALUE);
            spillPriority.put(module.getphyregfrnum(i), 0);  //后续不会要get预着色结点的priority值，所以放0也没关系
        }
        for(var reg : initial){
            adjList.put(reg, new HashSet<>());
            moveList.put(reg, new HashSet<>());
            degree.put(reg, 0);
            alias.put(reg, null);
            spillPriority.put(reg, 0);
        }
    }


    private void LivenessAnalysis(){
        for(var fb : func.blocks){
            HashSet<Operand> def = new HashSet<>();
            HashSet<Operand> use = new HashSet<>();
            ASMInst p = fb.head;
            while(p!=null){
                p.use.forEach(pu->{
                    if(!def.contains(pu)) use.add(pu);
                });
                p.def.forEach(pd->{
                    def.add(pd);
                });
                p = p.succ;
            }
            def_mp.put(fb, def);
            LiveIn.put(fb, use);
            LiveOut.put(fb, new HashSet<>());
        }

        while(true){
            boolean notdone = false;
            for(int i = func.blocks.size() - 1; i >= 0; i--){
                ASMBasicblock block = func.blocks.get(i);
                HashSet<Operand> temlive_in = LiveIn.get(block);
                HashSet<Operand> temlive_out = LiveOut.get(block);
                int prelive_in_size = temlive_in.size();
                int prelive_out_size = temlive_out.size();

                temlive_out.removeAll(def_mp.get(block));
                temlive_in.addAll(temlive_out);
                block.succlabellist.forEach(sl->{
                    for(var fb : func.blocks){
                        if(fb.name.equals(sl)){
                            temlive_out.addAll(LiveIn.get(fb));
                        }
                    }
                });

                notdone = (prelive_in_size != temlive_in.size() || prelive_out_size != temlive_out.size()) || notdone;
            }

            if(!notdone) break;
        }
    }

    private void Build(){
        for(var fb : func.blocks){
            HashSet<Operand> live = LiveOut.get(fb);
            ASMInst p = fb.tail;
            while(p!=null){
                if(p instanceof mvInst){
                    live.removeAll(p.use);
                    for(var d : p.def)
                        moveList.get(d).add((mvInst) p);
                    for(var u : p.use)
                        moveList.get(u).add((mvInst) p);
                    worklistMoves.add((mvInst) p);
                }
                live.addAll(p.def);
                p.def.forEach(d->{
                    live.forEach(l-> AddEdge(l, d));
                });
                live.removeAll(p.def);
                live.addAll(p.use);

                p.def.forEach(d-> spillPriority.replace(d, spillPriority.get(d) + 1));
                p.use.forEach(d-> spillPriority.replace(d, spillPriority.get(d) + 1));
                p = p.prev;
            }
        }
    }

    private void AddEdge(Operand u, Operand v){
        if(u != v && !adjSet.contains(new Pair<>(u, v))){
            adjSet.add(new Pair<>(u, v));
            adjSet.add(new Pair<>(v, u));
            if(!precolored.contains(u)){
                adjList.get(u).add(v);
                degree.replace(u, degree.get(u)+1);
            }
            if(!precolored.contains(v)){
                adjList.get(v).add(u);
                degree.replace(v, degree.get(v)+1);
            }
        }
    }

    private void MakeWorklist(){
        for(var n : initial){
            if(degree.get(n) >= K)
                spillWorklist.add(n);
            else if(MoveRelated(n))
                freezeWorklist.add(n);
            else{
                simplifyWorklist.add(n);
            }
        }
    }

    private HashSet<Operand> Adjacent(Operand n){
        HashSet<Operand> res = new HashSet<>(adjList.get(n));
        res.removeAll(selectStack);
        res.removeAll(coalescedNodes);
        return res;
    }

    private HashSet<mvInst> NodeMoves(Operand n){
        HashSet<mvInst> res = new HashSet<>(activeMoves);
        res.addAll(worklistMoves);
        res.retainAll(moveList.get(n));
        return res;
    }

    private boolean MoveRelated(Operand n){
        return !NodeMoves(n).isEmpty();
    }

    private void Simplify(){
        Operand n = simplifyWorklist.iterator().next();
        simplifyWorklist.remove(n);
        selectStack.push(n);
        Adjacent(n).forEach(m -> DecrementDegree(m));
    }

    private void DecrementDegree(Operand m){
        int d = degree.get(m);
        degree.replace(m, d-1);
        if(d==K){
            HashSet<Operand> tmp = new HashSet<>(Adjacent(m));
            tmp.add(m);
            EnableMoves(tmp);
            spillWorklist.remove(m);
            if(MoveRelated(m))
                freezeWorklist.add(m);
            else
                simplifyWorklist.add(m);
        }
    }

    private void EnableMoves(HashSet<Operand> nodes){
        for(var n : nodes){
            for(var m : NodeMoves(n)){
                if(activeMoves.contains(m)){
                    activeMoves.remove(m);
                    worklistMoves.add(m);
                }
            }
        }
    }

    private void Coalesce(){
        mvInst m = worklistMoves.iterator().next();
        Operand x = GetAlias(m.resreg);
        Operand y = GetAlias(m.sourcereg);
        Operand u, v;
        if(precolored.contains(y)){
            u = y;
            v = x;
        }else{
            u = x;
            v = y;
        }
        worklistMoves.remove(m);
        if(u == v){
            coalescedMoves.add(m);
            AddWorkList(u);
        }
        else if(precolored.contains(v) || adjSet.contains(new Pair<>(u, v)) || u == module.getphyreg("zero") || v == module.getphyreg("zero")){//zero寄存器不能被修改
            constrainedMoves.add(m);
            AddWorkList(u);
            AddWorkList(v);
        }
        else {
            boolean flag = true;
            if(precolored.contains(u)){
                for(var t : Adjacent(v)){
                    flag = flag && OK(t, u);
                }
            }
            else{
                HashSet<Operand> tmp = Adjacent(u);
                tmp.addAll(Adjacent(v));
                flag = flag && Conservative(tmp);
            }
            if(flag){
                coalescedMoves.add(m);
                Combine(u, v);
                AddWorkList(u);
            }
            else{
                activeMoves.add(m);
            }
        }
    }

    private void AddWorkList(Operand u){
        if(!precolored.contains(u) && !MoveRelated(u) && degree.get(u) < K){
            freezeWorklist.remove(u);
            simplifyWorklist.add(u);
        }
    }

    boolean OK(Operand t, Operand r){
        return degree.get(t) < K || precolored.contains(t) || adjSet.contains(new Pair<>(t, r));
    }

    boolean Conservative(HashSet<Operand> nodes){
        int k = 0;
        for(var n : nodes){
            if(degree.get(n)>=K) k = k + 1;
        }
        return k<K;
    }

    private Operand GetAlias(Operand n){
        if(coalescedNodes.contains(n))
            return GetAlias(alias.get(n));
        else return n;
    }

    private void Combine(Operand u, Operand v){
        if(freezeWorklist.contains(v))
            freezeWorklist.remove(v);
        else
            spillWorklist.remove(v);
        coalescedNodes.add(v);
        alias.replace(v, u);
        moveList.get(u).addAll(moveList.get(v));
        HashSet<Operand> vset = new HashSet<>();
        vset.add(v);
        EnableMoves(vset);
        Adjacent(v).forEach(t->{
            AddEdge(t, u);
            DecrementDegree(t);
        });
        if(degree.get(u)>=K && freezeWorklist.contains(u)){
            freezeWorklist.remove(u);
            spillWorklist.add(u);
        }
    }

    private void Freeze(){
        Operand u = freezeWorklist.iterator().next();
        freezeWorklist.remove(u);
        simplifyWorklist.add(u);
        FreezeMoves(u);
    }

    private void FreezeMoves(Operand u){
        NodeMoves(u).forEach(m->{
            Operand v;
            if(GetAlias(m.sourcereg) == GetAlias(u))
                v = GetAlias(m.resreg);
            else
                v = GetAlias(m.sourcereg);
            activeMoves.remove(m);
            frozenMoves.add(m);
            if(NodeMoves(v).isEmpty() && degree.get(v) < K){
                freezeWorklist.remove(v);
                simplifyWorklist.add(v);
            }
        });
    }

    private void SelectSpill(){
        double min = Double.POSITIVE_INFINITY;
        Operand m = null;
        for(var node : spillWorklist){
            if(degree.get(node)!=0){
                double val = 1.0 * spillPriority.get(node) / degree.get(node);
                if(val < min){
                    min = val;
                    m = node;
                }
            }
        }
        spillWorklist.remove(m);
        simplifyWorklist.add(m);
        FreezeMoves(m);
    }

    private void AssignColors(){
        while(!selectStack.isEmpty()){
            Operand n = selectStack.pop();
            ArrayList<Integer> okColors = new ArrayList<>();
            for(int i = 0 ; i < 32; i++){
                if(module.getRegType(i)!=2) okColors.add(i);
            }
            for(var w : adjList.get(n)){
                if(coloredNodes.contains(GetAlias(w)) || precolored.contains(GetAlias(w))){
                    okColors.remove(color.get(GetAlias(w)));
                }
            }
            if(okColors.isEmpty()){
                spilledNodes.add(n);
            }else{
                coloredNodes.add(n);
                int c = -1;
                for(var i : okColors){
                    if(module.getRegType(i) == 0){
                        c = i;
                        break;
                    }
                }
                if(c==-1)
                    c = okColors.iterator().next();
                color.put(n, c);
            }
        }
        coalescedNodes.forEach(n->color.put(n, color.get(GetAlias(n))));
    }

    private void RewriteProgram(){
        for(var n : spilledNodes){
            func.stacksize+=4;
            func.vreglocation.put(n, -func.stacksize);
        }
        for(var fb : func.blocks){
            ASMInst p = fb.head;
            while(p!=null) {
                HashSet<Operand> use = new HashSet<>(p.use);
                HashSet<Operand> def = new HashSet<>(p.def);
                for (var u : use) {
                    if (spilledNodes.contains(u)) {
                        Operand u1 = func.addvreg();
                        p.change(u, u1, 1);
                        if (checkimm(func.vreglocation.get(u))) {
                            fb.insert_prev(p, new lwInst(u1, module.getphyreg("s0"), func.vreglocation.get(u)));
                        } else {
                            Operand tem1 = func.addvreg();
                            Operand tem2 = func.addvreg();
                            fb.insert_prev(p, new liInst(tem1, func.vreglocation.get(u)));
                            fb.insert_prev(p, new biInst(tem2, module.getphyreg("s0"), tem1, biInst.Op.add));
                            fb.insert_prev(p, new lwInst(u1, tem2, 0));
                        }
                    }
                }
                for (var d : def) {
                    if (spilledNodes.contains(d)) {
                        Operand d1 = func.addvreg();
                        p.change(d, d1, 0);
                        if (checkimm(func.vreglocation.get(d))) {
                            fb.insert_succ(p, new swInst(d1, module.getphyreg("s0"), func.vreglocation.get(d)));
                        } else {
                            Operand tem1 = func.addvreg();
                            Operand tem2 = func.addvreg();
                            fb.insert_succ(p, new swInst(d1, tem2, 0));
                            fb.insert_succ(p, new biInst(tem2, tem1, module.getphyreg("s0"), biInst.Op.add));
                            fb.insert_succ(p, new liInst(tem1, func.vreglocation.get(d)));
                        }
                    }
                }
                p = p.succ;
            }
        }


    }

    public void Main(){
        initialstart();
        LivenessAnalysis();
        Build();
        MakeWorklist();
        while(true){
            if(!simplifyWorklist.isEmpty()) Simplify();
            else if(!worklistMoves.isEmpty()) Coalesce();
            else if(!freezeWorklist.isEmpty()) Freeze();
            else if(!spillWorklist.isEmpty()) SelectSpill();
            else break;
        }
        AssignColors();
        if(!spilledNodes.isEmpty()){
            RewriteProgram();
            Main();
        }
    }

    public Regalloca(ASMmodule module){
        this.module = module;
        for(int i = 0; i < 32; i++){
            precolored.add(module.getphyregfrnum(i));
        }
        for(var f : module.funclist){
            func = f;
            Main();

            if(checkimm(-f.stacksize)){
                f.initinst.add(new addiInst(module.getphyreg("sp"), module.getphyreg("sp"), -f.stacksize));
            }else{
                f.initinst.add(new liInst(module.getphyreg("t0"), -f.stacksize));
                f.initinst.add(new biInst(module.getphyreg("sp"), module.getphyreg("sp"), module.getphyreg("t0"), biInst.Op.add));
            }
            if(checkimm(f.stacksize-4)){
                f.initinst.add(new swInst(module.getphyreg("s0"), module.getphyreg("sp"), f.stacksize-4));
            }else{
                f.initinst.add(new liInst(module.getphyreg("t0"), f.stacksize-4));
                f.initinst.add(new biInst(module.getphyreg("t0"), module.getphyreg("t0"), module.getphyreg("sp"), biInst.Op.add));
                f.initinst.add(new swInst(module.getphyreg("s0"), module.getphyreg("t0"), 0));
            }
            if(checkimm(f.stacksize-8)){
                f.initinst.add(new swInst(module.getphyreg("ra"), module.getphyreg("sp"), f.stacksize-8));
            }else{
                f.initinst.add(new liInst(module.getphyreg("t0"), f.stacksize-8));
                f.initinst.add(new biInst(module.getphyreg("t0"), module.getphyreg("t0"), module.getphyreg("sp"), biInst.Op.add));
                f.initinst.add(new swInst(module.getphyreg("ra"), module.getphyreg("t0"), 0));
            }
            if(checkimm(f.stacksize)){
                f.initinst.add(new addiInst(module.getphyreg("s0"), module.getphyreg("sp"), f.stacksize));
            }else{
                f.initinst.add(new liInst(module.getphyreg("t0"), f.stacksize));
                f.initinst.add(new biInst(module.getphyreg("s0"), module.getphyreg("sp"), module.getphyreg("t0"), biInst.Op.add));
            }

            ASMBasicblock b = null;
            for(var fb : f.blocks){
                if(fb.name.equals("."+f.name+"exit")){
                    b = fb;
                    break;
                }
            }
            b.addtail(new lwInst(module.getphyreg("a0"), module.getphyreg("s0"), -12));
            if(checkimm(f.stacksize-4)){
                b.addtail(new lwInst(module.getphyreg("s0"), module.getphyreg("sp"), f.stacksize-4));
            }else{
                b.addtail(new liInst(module.getphyreg("t0"), f.stacksize-4));
                b.addtail(new biInst(module.getphyreg("t0"), module.getphyreg("t0"), module.getphyreg("sp"), biInst.Op.add));
                b.addtail(new lwInst(module.getphyreg("s0"), module.getphyreg("t0"), 0));
            }
            if(checkimm(f.stacksize-8)){
                b.addtail(new lwInst(module.getphyreg("ra"), module.getphyreg("sp"), f.stacksize-8));
            }else{
                b.addtail(new liInst(module.getphyreg("ra"), f.stacksize-8));
                b.addtail(new biInst(module.getphyreg("t0"), module.getphyreg("t0"), module.getphyreg("sp"), biInst.Op.add));
                b.addtail(new lwInst(module.getphyreg("ra"), module.getphyreg("t0"), 0));
            }
            if(checkimm(f.stacksize)){
                b.addtail(new addiInst(module.getphyreg("sp"), module.getphyreg("sp"), f.stacksize));
            }else{
                b.addtail(new liInst(module.getphyreg("t0"), f.stacksize));
                b.addtail(new biInst(module.getphyreg("sp"), module.getphyreg("sp"), module.getphyreg("t0"), biInst.Op.add));
            }
            b.addtail(new asmretInst());

            for(var fb : f.blocks){
                ASMInst p = fb.head;
                while(p!=null){
                    HashSet<Operand> use = new HashSet<>(p.use);
                    HashSet<Operand> def = new HashSet<>(p.def);
                    for(var u : use){
                        if(u instanceof virtualreg){
                            assert color.containsKey(u);
                            p.change(u, module.getphyregfrnum(color.get(u)), 1);
                        }
                    }
                    for(var d : def){
                        if(d instanceof virtualreg){
                            assert color.containsKey(d);
                            p.change(d, module.getphyregfrnum(color.get(d)), 0);
                        }
                    }
                    if(p instanceof mvInst){
                        if(color.get(((mvInst) p).resreg) == color.get(((mvInst) p).sourcereg)){
                            fb.delete(p);
                        }
                    }
                    p = p.succ;
                }
            }
        }
    }

}
