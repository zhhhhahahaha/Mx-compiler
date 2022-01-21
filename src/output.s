	.text

	.globl  globalinit
	.p2align  2
globalinit:
	addi  sp, sp, -20
	sw  ra, 16(sp)
	sw  s0, 12(sp)
	addi  s0, sp, 20
.globalinitpara:
.globalinit0:
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -16(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -20(s0)
.globalinitexit:
	lw  a0, -12(s0)
	lw  s0, 12(sp)
	lw  ra, 16(sp)
	addi  sp, sp, 20
	ret

	.globl  exchange
	.p2align  2
exchange:
	addi  sp, sp, -120
	sw  ra, 116(sp)
	sw  s0, 112(sp)
	addi  s0, sp, 120
.exchangepara:
	sw  a0, -16(s0)
	sw  a1, -20(s0)
	addi  t0, s0, -24
	sw  t0, -28(s0)
	addi  t0, s0, -32
	sw  t0, -36(s0)
	addi  t0, s0, -40
	sw  t0, -44(s0)
.exchange0:
	lw  t0, -28(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -36(s0)
	lw  t1, -20(s0)
	sw  t1, 0(t0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -48(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -52(s0)
	lw  t0, -52(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -56(s0)
	lw  t0, -48(s0)
	lw  t1, -56(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -60(s0)
	lw  t0, -60(s0)
	lw  t0, 0(t0)
	sw  t0, -64(s0)
	lw  t0, -44(s0)
	lw  t1, -64(s0)
	sw  t1, 0(t0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -68(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -72(s0)
	lw  t0, -72(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -76(s0)
	lw  t0, -68(s0)
	lw  t1, -76(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -80(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -84(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -88(s0)
	lw  t0, -88(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -92(s0)
	lw  t0, -84(s0)
	lw  t1, -92(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -96(s0)
	lw  t0, -96(s0)
	lw  t0, 0(t0)
	sw  t0, -100(s0)
	lw  t0, -80(s0)
	lw  t1, -100(s0)
	sw  t1, 0(t0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -108(s0)
	lw  t0, -108(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -112(s0)
	lw  t0, -104(s0)
	lw  t1, -112(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -116(s0)
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -120(s0)
	lw  t0, -116(s0)
	lw  t1, -120(s0)
	sw  t1, 0(t0)
.exchangeexit:
	lw  a0, -12(s0)
	lw  s0, 112(sp)
	lw  ra, 116(sp)
	addi  sp, sp, 120
	ret

	.globl  makeHeap
	.p2align  2
makeHeap:
	addi  sp, sp, -228
	sw  ra, 224(sp)
	sw  s0, 220(sp)
	addi  s0, sp, 228
.makeHeappara:
	addi  t0, s0, -16
	sw  t0, -20(s0)
	addi  t0, s0, -24
	sw  t0, -28(s0)
	addi  t0, s0, -32
	sw  t0, -36(s0)
	addi  t0, s0, -40
	sw  t0, -44(s0)
.makeHeap0:
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -48(s0)
	lw  t0, -48(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	sw  t2, -52(s0)
	lw  t0, -52(s0)
	addi  t1, zero, 2
	div  t2, t0, t1
	sw  t2, -56(s0)
	lw  t0, -20(s0)
	lw  t1, -56(s0)
	sw  t1, 0(t0)
	lw  t0, -28(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	lw  t0, -36(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .makeHeap1
.makeHeap1:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -60(s0)
	lw  t0, -60(s0)
	addi  t1, zero, 0
	sub  t2, t0, t1
	sgtz  t3, t2
	seqz  t4, t2
	or  t5, t3, t4
	sw  t5, -64(s0)
	lw  t0, -64(s0)
	beqz  t0, .makeHeap3
	j  .makeHeap2
.makeHeap2:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -68(s0)
	lw  t0, -68(s0)
	addi  t1, zero, 2
	mul  t2, t0, t1
	sw  t2, -72(s0)
	lw  t0, -36(s0)
	lw  t1, -72(s0)
	sw  t1, 0(t0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -76(s0)
	lw  t0, -76(s0)
	addi  t1, zero, 2
	mul  t2, t0, t1
	sw  t2, -80(s0)
	lw  t0, -80(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -84(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -88(s0)
	lw  t0, -84(s0)
	lw  t1, -88(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -92(s0)
	lw  t0, -92(s0)
	addi  t1, zero, 1
	xor  t2, t0, t1
	sw  t2, -96(s0)
	lw  t0, -44(s0)
	lw  t1, -92(s0)
	sw  t1, 0(t0)
	lw  t0, -96(s0)
	beqz  t0, .makeHeap7
	j  .makeHeap8
.makeHeap7:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -100(s0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  t0, -104(s0)
	addi  t1, zero, 2
	mul  t2, t0, t1
	sw  t2, -108(s0)
	lw  t0, -108(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -112(s0)
	lw  t0, -112(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -116(s0)
	lw  t0, -100(s0)
	lw  t1, -116(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -120(s0)
	lw  t0, -120(s0)
	lw  t0, 0(t0)
	sw  t0, -124(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -128(s0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -132(s0)
	lw  t0, -132(s0)
	addi  t1, zero, 2
	mul  t2, t0, t1
	sw  t2, -136(s0)
	lw  t0, -136(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -140(s0)
	lw  t0, -128(s0)
	lw  t1, -140(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -144(s0)
	lw  t0, -144(s0)
	lw  t0, 0(t0)
	sw  t0, -148(s0)
	lw  t0, -124(s0)
	lw  t1, -148(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -152(s0)
	lw  t0, -44(s0)
	lw  t1, -152(s0)
	sw  t1, 0(t0)
	j  .makeHeap8
.makeHeap8:
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -156(s0)
	lw  t0, -156(s0)
	beqz  t0, .makeHeap5
	j  .makeHeap4
.makeHeap4:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -160(s0)
	lw  t0, -160(s0)
	addi  t1, zero, 2
	mul  t2, t0, t1
	sw  t2, -164(s0)
	lw  t0, -164(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -168(s0)
	lw  t0, -36(s0)
	lw  t1, -168(s0)
	sw  t1, 0(t0)
	j  .makeHeap6
.makeHeap5:
	j  .makeHeap6
.makeHeap6:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -172(s0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -176(s0)
	lw  t0, -176(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -180(s0)
	lw  t0, -172(s0)
	lw  t1, -180(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -184(s0)
	lw  t0, -184(s0)
	lw  t0, 0(t0)
	sw  t0, -188(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -192(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -196(s0)
	lw  t0, -196(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -200(s0)
	lw  t0, -192(s0)
	lw  t1, -200(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -204(s0)
	lw  t0, -204(s0)
	lw  t0, 0(t0)
	sw  t0, -208(s0)
	lw  t0, -188(s0)
	lw  t1, -208(s0)
	sub  t2, t0, t1
	sgtz  t3, t2
	sw  t3, -212(s0)
	lw  t0, -212(s0)
	beqz  t0, .makeHeap10
	j  .makeHeap9
.makeHeap9:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -216(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -220(s0)
	lw  a0, -216(s0)
	lw  a1, -220(s0)
	call  exchange
	j  .makeHeap11
.makeHeap10:
	j  .makeHeap11
.makeHeap11:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -224(s0)
	lw  t0, -224(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	sw  t2, -228(s0)
	lw  t0, -20(s0)
	lw  t1, -228(s0)
	sw  t1, 0(t0)
	j  .makeHeap1
.makeHeap3:
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .makeHeapexit
.makeHeapexit:
	lw  a0, -12(s0)
	lw  s0, 220(sp)
	lw  ra, 224(sp)
	addi  sp, sp, 228
	ret

	.globl  adjustHeap
	.p2align  2
adjustHeap:
	addi  sp, sp, -308
	sw  ra, 304(sp)
	sw  s0, 300(sp)
	addi  s0, sp, 308
.adjustHeappara:
	sw  a0, -16(s0)
	addi  t0, s0, -20
	sw  t0, -24(s0)
	addi  t0, s0, -28
	sw  t0, -32(s0)
	addi  t0, s0, -36
	sw  t0, -40(s0)
	addi  t0, s0, -44
	sw  t0, -48(s0)
	addi  t0, s0, -52
	sw  t0, -56(s0)
	addi  t0, s0, -60
	sw  t0, -64(s0)
.adjustHeap0:
	lw  t0, -24(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -32(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	lw  t0, -40(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	lw  t0, -48(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .adjustHeap1
.adjustHeap1:
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -68(s0)
	lw  t0, -68(s0)
	addi  t1, zero, 2
	mul  t2, t0, t1
	sw  t2, -72(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -76(s0)
	lw  t0, -72(s0)
	lw  t1, -76(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -80(s0)
	lw  t0, -80(s0)
	beqz  t0, .adjustHeap3
	j  .adjustHeap2
.adjustHeap2:
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -84(s0)
	lw  t0, -84(s0)
	addi  t1, zero, 2
	mul  t2, t0, t1
	sw  t2, -88(s0)
	lw  t0, -40(s0)
	lw  t1, -88(s0)
	sw  t1, 0(t0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -92(s0)
	lw  t0, -92(s0)
	addi  t1, zero, 2
	mul  t2, t0, t1
	sw  t2, -96(s0)
	lw  t0, -96(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -100(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  t0, -100(s0)
	lw  t1, -104(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -108(s0)
	lw  t0, -108(s0)
	addi  t1, zero, 1
	xor  t2, t0, t1
	sw  t2, -112(s0)
	lw  t0, -56(s0)
	lw  t1, -108(s0)
	sw  t1, 0(t0)
	lw  t0, -112(s0)
	beqz  t0, .adjustHeap7
	j  .adjustHeap8
.adjustHeap7:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -116(s0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -120(s0)
	lw  t0, -120(s0)
	addi  t1, zero, 2
	mul  t2, t0, t1
	sw  t2, -124(s0)
	lw  t0, -124(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -128(s0)
	lw  t0, -128(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -132(s0)
	lw  t0, -116(s0)
	lw  t1, -132(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -136(s0)
	lw  t0, -136(s0)
	lw  t0, 0(t0)
	sw  t0, -140(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -144(s0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -148(s0)
	lw  t0, -148(s0)
	addi  t1, zero, 2
	mul  t2, t0, t1
	sw  t2, -152(s0)
	lw  t0, -152(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -156(s0)
	lw  t0, -144(s0)
	lw  t1, -156(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -160(s0)
	lw  t0, -160(s0)
	lw  t0, 0(t0)
	sw  t0, -164(s0)
	lw  t0, -140(s0)
	lw  t1, -164(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -168(s0)
	lw  t0, -56(s0)
	lw  t1, -168(s0)
	sw  t1, 0(t0)
	j  .adjustHeap8
.adjustHeap8:
	lw  t0, -56(s0)
	lw  t0, 0(t0)
	sw  t0, -172(s0)
	lw  t0, -172(s0)
	beqz  t0, .adjustHeap5
	j  .adjustHeap4
.adjustHeap4:
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -176(s0)
	lw  t0, -176(s0)
	addi  t1, zero, 2
	mul  t2, t0, t1
	sw  t2, -180(s0)
	lw  t0, -180(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -184(s0)
	lw  t0, -40(s0)
	lw  t1, -184(s0)
	sw  t1, 0(t0)
	j  .adjustHeap6
.adjustHeap5:
	j  .adjustHeap6
.adjustHeap6:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -188(s0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -192(s0)
	lw  t0, -192(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -196(s0)
	lw  t0, -188(s0)
	lw  t1, -196(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -200(s0)
	lw  t0, -200(s0)
	lw  t0, 0(t0)
	sw  t0, -204(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -208(s0)
	lw  t0, -40(s0)
	lw  t0, 0(t0)
	sw  t0, -212(s0)
	lw  t0, -212(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -216(s0)
	lw  t0, -208(s0)
	lw  t1, -216(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -220(s0)
	lw  t0, -220(s0)
	lw  t0, 0(t0)
	sw  t0, -224(s0)
	lw  t0, -204(s0)
	lw  t1, -224(s0)
	sub  t2, t0, t1
	sgtz  t3, t2
	sw  t3, -228(s0)
	lw  t0, -228(s0)
	beqz  t0, .adjustHeap10
	j  .adjustHeap9
.adjustHeap9:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -232(s0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -236(s0)
	lw  t0, -236(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -240(s0)
	lw  t0, -232(s0)
	lw  t1, -240(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -244(s0)
	lw  t0, -244(s0)
	lw  t0, 0(t0)
	sw  t0, -248(s0)
	lw  t0, -64(s0)
	lw  t1, -248(s0)
	sw  t1, 0(t0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -252(s0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -256(s0)
	lw  t0, -256(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -260(s0)
	lw  t0, -252(s0)
	lw  t1, -260(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -264(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -268(s0)
	lw  t0, -40(s0)
	lw  t0, 0(t0)
	sw  t0, -272(s0)
	lw  t0, -272(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -276(s0)
	lw  t0, -268(s0)
	lw  t1, -276(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -280(s0)
	lw  t0, -280(s0)
	lw  t0, 0(t0)
	sw  t0, -284(s0)
	lw  t0, -264(s0)
	lw  t1, -284(s0)
	sw  t1, 0(t0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -288(s0)
	lw  t0, -40(s0)
	lw  t0, 0(t0)
	sw  t0, -292(s0)
	lw  t0, -292(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -296(s0)
	lw  t0, -288(s0)
	lw  t1, -296(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -300(s0)
	lw  t0, -64(s0)
	lw  t0, 0(t0)
	sw  t0, -304(s0)
	lw  t0, -300(s0)
	lw  t1, -304(s0)
	sw  t1, 0(t0)
	lw  t0, -40(s0)
	lw  t0, 0(t0)
	sw  t0, -308(s0)
	lw  t0, -32(s0)
	lw  t1, -308(s0)
	sw  t1, 0(t0)
	j  .adjustHeap11
.adjustHeap10:
	j  .adjustHeap3
	j  .adjustHeap11
.adjustHeap11:
	j  .adjustHeap1
.adjustHeap3:
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .adjustHeapexit
.adjustHeapexit:
	lw  a0, -12(s0)
	lw  s0, 300(sp)
	lw  ra, 304(sp)
	addi  sp, sp, 308
	ret

	.globl  heapSort
	.p2align  2
heapSort:
	addi  sp, sp, -152
	sw  ra, 148(sp)
	sw  s0, 144(sp)
	addi  s0, sp, 152
.heapSortpara:
	addi  t0, s0, -16
	sw  t0, -20(s0)
	addi  t0, s0, -24
	sw  t0, -28(s0)
.heapSort0:
	lw  t0, -20(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	lw  t0, -28(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .heapSort1
.heapSort1:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -32(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -36(s0)
	lw  t0, -32(s0)
	lw  t1, -36(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -40(s0)
	lw  t0, -40(s0)
	beqz  t0, .heapSort4
	j  .heapSort2
.heapSort2:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -44(s0)
	lw  t0, -44(s0)
	addi  t1, t0, 4
	sw  t1, -48(s0)
	lw  t0, -48(s0)
	lw  t0, 0(t0)
	sw  t0, -52(s0)
	lw  t0, -20(s0)
	lw  t1, -52(s0)
	sw  t1, 0(t0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	lw  t0, -56(s0)
	addi  t1, t0, 4
	sw  t1, -60(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -64(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -68(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -72(s0)
	lw  t0, -68(s0)
	lw  t1, -72(s0)
	sub  t2, t0, t1
	sw  t2, -76(s0)
	lw  t0, -76(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	sw  t2, -80(s0)
	lw  t0, -80(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -84(s0)
	lw  t0, -64(s0)
	lw  t1, -84(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -88(s0)
	lw  t0, -88(s0)
	lw  t0, 0(t0)
	sw  t0, -92(s0)
	lw  t0, -60(s0)
	lw  t1, -92(s0)
	sw  t1, 0(t0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -96(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -100(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  t0, -100(s0)
	lw  t1, -104(s0)
	sub  t2, t0, t1
	sw  t2, -108(s0)
	lw  t0, -108(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	sw  t2, -112(s0)
	lw  t0, -112(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -116(s0)
	lw  t0, -96(s0)
	lw  t1, -116(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -120(s0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -124(s0)
	lw  t0, -120(s0)
	lw  t1, -124(s0)
	sw  t1, 0(t0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -128(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -132(s0)
	lw  t0, -128(s0)
	lw  t1, -132(s0)
	sub  t2, t0, t1
	sw  t2, -136(s0)
	lw  t0, -136(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	sw  t2, -140(s0)
	lw  a0, -140(s0)
	call  adjustHeap
	sw  a0, -144(s0)
	j  .heapSort3
.heapSort3:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -148(s0)
	lw  t0, -148(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -152(s0)
	lw  t0, -28(s0)
	lw  t1, -152(s0)
	sw  t1, 0(t0)
	j  .heapSort1
.heapSort4:
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .heapSortexit
.heapSortexit:
	lw  a0, -12(s0)
	lw  s0, 144(sp)
	lw  ra, 148(sp)
	addi  sp, sp, 152
	ret

	.globl  main
	.p2align  2
main:
	addi  sp, sp, -148
	sw  ra, 144(sp)
	sw  s0, 140(sp)
	addi  s0, sp, 148
.mainpara:
	call  globalinit
	addi  t0, s0, -16
	sw  t0, -20(s0)
.main0:
	call  getString
	sw  a0, -24(s0)
	lw  a0, -24(s0)
	call  string_parseInt
	sw  a0, -28(s0)
	la  t0, .@n
	lw  t1, -28(s0)
	sw  t1, 0(t0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -32(s0)
	lw  t0, -32(s0)
	addi  t1, zero, 4
	mul  t2, t0, t1
	sw  t2, -36(s0)
	lw  t0, -36(s0)
	addi  t1, zero, 4
	add  t2, t0, t1
	sw  t2, -40(s0)
	lw  a0, -40(s0)
	call  malloc
	sw  a0, -44(s0)
	lw  t0, -44(s0)
	lw  t1, -32(s0)
	sw  t1, 0(t0)
	la  t0, .@a
	lw  t1, -44(s0)
	sw  t1, 0(t0)
	lw  t0, -20(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main1
.main1:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -48(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -52(s0)
	lw  a0, -52(s0)
	call  array_size
	sw  a0, -56(s0)
	lw  t0, -48(s0)
	lw  t1, -56(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -60(s0)
	lw  t0, -60(s0)
	beqz  t0, .main4
	j  .main2
.main2:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -64(s0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -68(s0)
	lw  t0, -68(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -72(s0)
	lw  t0, -64(s0)
	lw  t1, -72(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -76(s0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -80(s0)
	lw  t0, -76(s0)
	lw  t1, -80(s0)
	sw  t1, 0(t0)
	j  .main3
.main3:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -84(s0)
	lw  t0, -84(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -88(s0)
	lw  t0, -20(s0)
	lw  t1, -88(s0)
	sw  t1, 0(t0)
	j  .main1
.main4:
	call  makeHeap
	sw  a0, -92(s0)
	call  heapSort
	sw  a0, -96(s0)
	lw  t0, -20(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main5
.main5:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -100(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  a0, -104(s0)
	call  array_size
	sw  a0, -108(s0)
	lw  t0, -100(s0)
	lw  t1, -108(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -112(s0)
	lw  t0, -112(s0)
	beqz  t0, .main8
	j  .main6
.main6:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -116(s0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -120(s0)
	lw  t0, -120(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -124(s0)
	lw  t0, -116(s0)
	lw  t1, -124(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -128(s0)
	lw  t0, -128(s0)
	lw  t0, 0(t0)
	sw  t0, -132(s0)
	lw  a0, -132(s0)
	call  toString
	sw  a0, -136(s0)
	lw  a0, -136(s0)
	la  a1, .$str1
	call  string_add
	sw  a0, -140(s0)
	lw  a0, -140(s0)
	call  print
	j  .main7
.main7:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -144(s0)
	lw  t0, -144(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -148(s0)
	lw  t0, -20(s0)
	lw  t1, -148(s0)
	sw  t1, 0(t0)
	j  .main5
.main8:
	la  a0, .$str2
	call  print
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .mainexit
.mainexit:
	lw  a0, -12(s0)
	lw  s0, 140(sp)
	lw  ra, 144(sp)
	addi  sp, sp, 148
	ret

	.section  .bss
	.p2align  2
.@n:
	.word  0

	.section  .bss
	.p2align  2
.@a:
	.word  0

	.section  .rodata
	.p2align  2
.$str1:
	.string  " "

	.section  .rodata
	.p2align  2
.$str2:
	.string  "\n"

