	.text

	.globl  globalinit
	.p2align  2
globalinit:
	addi  sp, sp, -36
	sw  ra, 32(sp)
	sw  s0, 28(sp)
	addi  s0, sp, 36
.globalinitpara:
.globalinit0:
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -16(s0)
	la  t0, .@m
	lw  t0, 0(t0)
	sw  t0, -20(s0)
	la  t0, .@ans
	lw  t0, 0(t0)
	sw  t0, -24(s0)
	la  t0, .@ans
	addi  t1, zero, 0
	sw  t1, 0(t0)
	la  t0, .@fa
	lw  t0, 0(t0)
	sw  t0, -28(s0)
	la  t0, .@rk
	lw  t0, 0(t0)
	sw  t0, -32(s0)
	la  t0, .@e
	lw  t0, 0(t0)
	sw  t0, -36(s0)
.globalinitexit:
	lw  a0, -12(s0)
	lw  s0, 28(sp)
	lw  ra, 32(sp)
	addi  sp, sp, 36
	ret

	.globl  Edge
	.p2align  2
Edge:
	addi  sp, sp, -12
	sw  ra, 8(sp)
	sw  s0, 4(sp)
	addi  s0, sp, 12
.Edgepara:
.Edgeexit:
	lw  a0, -12(s0)
	lw  s0, 4(sp)
	lw  ra, 8(sp)
	addi  sp, sp, 12
	ret

	.globl  qsort
	.p2align  2
qsort:
	addi  sp, sp, -448
	sw  ra, 444(sp)
	sw  s0, 440(sp)
	addi  s0, sp, 448
.qsortpara:
	sw  a0, -16(s0)
	sw  a1, -20(s0)
	sw  a2, -24(s0)
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
	addi  t0, s0, -68
	sw  t0, -72(s0)
	addi  t0, s0, -76
	sw  t0, -80(s0)
	addi  t0, s0, -84
	sw  t0, -88(s0)
.qsort0:
	lw  t0, -32(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -40(s0)
	lw  t1, -20(s0)
	sw  t1, 0(t0)
	lw  t0, -48(s0)
	lw  t1, -24(s0)
	sw  t1, 0(t0)
	lw  t0, -40(s0)
	lw  t0, 0(t0)
	sw  t0, -92(s0)
	lw  t0, -48(s0)
	lw  t0, 0(t0)
	sw  t0, -96(s0)
	lw  t0, -92(s0)
	lw  t1, -96(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -100(s0)
	lw  t0, -100(s0)
	beqz  t0, .qsort2
	j  .qsort1
.qsort1:
	lw  t0, -40(s0)
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  t0, -56(s0)
	lw  t1, -104(s0)
	sw  t1, 0(t0)
	lw  t0, -48(s0)
	lw  t0, 0(t0)
	sw  t0, -108(s0)
	lw  t0, -64(s0)
	lw  t1, -108(s0)
	sw  t1, 0(t0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -112(s0)
	lw  t0, -40(s0)
	lw  t0, 0(t0)
	sw  t0, -116(s0)
	lw  t0, -116(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -120(s0)
	lw  t0, -112(s0)
	lw  t1, -120(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -124(s0)
	lw  t0, -124(s0)
	lw  t0, 0(t0)
	sw  t0, -128(s0)
	lw  t0, -72(s0)
	lw  t1, -128(s0)
	sw  t1, 0(t0)
	j  .qsort4
.qsort4:
	lw  t0, -56(s0)
	lw  t0, 0(t0)
	sw  t0, -132(s0)
	lw  t0, -64(s0)
	lw  t0, 0(t0)
	sw  t0, -136(s0)
	lw  t0, -132(s0)
	lw  t1, -136(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -140(s0)
	lw  t0, -140(s0)
	beqz  t0, .qsort6
	j  .qsort5
.qsort5:
	j  .qsort7
.qsort7:
	lw  t0, -56(s0)
	lw  t0, 0(t0)
	sw  t0, -144(s0)
	lw  t0, -64(s0)
	lw  t0, 0(t0)
	sw  t0, -148(s0)
	lw  t0, -144(s0)
	lw  t1, -148(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -152(s0)
	lw  t0, -152(s0)
	addi  t1, zero, 1
	xor  t2, t0, t1
	sw  t2, -156(s0)
	lw  t0, -80(s0)
	lw  t1, -152(s0)
	sw  t1, 0(t0)
	lw  t0, -156(s0)
	beqz  t0, .qsort10
	j  .qsort11
.qsort10:
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -160(s0)
	lw  t0, -64(s0)
	lw  t0, 0(t0)
	sw  t0, -164(s0)
	lw  t0, -164(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -168(s0)
	lw  t0, -160(s0)
	lw  t1, -168(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -172(s0)
	lw  t0, -172(s0)
	lw  t0, 0(t0)
	sw  t0, -176(s0)
	lw  t0, -176(s0)
	addi  t1, t0, 8
	sw  t1, -180(s0)
	lw  t0, -180(s0)
	lw  t0, 0(t0)
	sw  t0, -184(s0)
	lw  t0, -72(s0)
	lw  t0, 0(t0)
	sw  t0, -188(s0)
	lw  t0, -188(s0)
	addi  t1, t0, 8
	sw  t1, -192(s0)
	lw  t0, -192(s0)
	lw  t0, 0(t0)
	sw  t0, -196(s0)
	lw  t0, -184(s0)
	lw  t1, -196(s0)
	sub  t2, t0, t1
	sgtz  t3, t2
	seqz  t4, t2
	or  t5, t3, t4
	sw  t5, -200(s0)
	lw  t0, -80(s0)
	lw  t1, -200(s0)
	sw  t1, 0(t0)
	j  .qsort11
.qsort11:
	lw  t0, -80(s0)
	lw  t0, 0(t0)
	sw  t0, -204(s0)
	lw  t0, -204(s0)
	beqz  t0, .qsort9
	j  .qsort8
.qsort8:
	lw  t0, -64(s0)
	lw  t0, 0(t0)
	sw  t0, -208(s0)
	lw  t0, -208(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	sw  t2, -212(s0)
	lw  t0, -64(s0)
	lw  t1, -212(s0)
	sw  t1, 0(t0)
	j  .qsort7
.qsort9:
	lw  t0, -56(s0)
	lw  t0, 0(t0)
	sw  t0, -216(s0)
	lw  t0, -64(s0)
	lw  t0, 0(t0)
	sw  t0, -220(s0)
	lw  t0, -216(s0)
	lw  t1, -220(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -224(s0)
	lw  t0, -224(s0)
	beqz  t0, .qsort13
	j  .qsort12
.qsort12:
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -228(s0)
	lw  t0, -56(s0)
	lw  t0, 0(t0)
	sw  t0, -232(s0)
	lw  t0, -232(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -236(s0)
	lw  t0, -228(s0)
	lw  t1, -236(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -240(s0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -244(s0)
	lw  t0, -64(s0)
	lw  t0, 0(t0)
	sw  t0, -248(s0)
	lw  t0, -248(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -252(s0)
	lw  t0, -244(s0)
	lw  t1, -252(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -256(s0)
	lw  t0, -256(s0)
	lw  t0, 0(t0)
	sw  t0, -260(s0)
	lw  t0, -240(s0)
	lw  t1, -260(s0)
	sw  t1, 0(t0)
	lw  t0, -56(s0)
	lw  t0, 0(t0)
	sw  t0, -264(s0)
	lw  t0, -264(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -268(s0)
	lw  t0, -56(s0)
	lw  t1, -268(s0)
	sw  t1, 0(t0)
	j  .qsort14
.qsort13:
	j  .qsort14
.qsort14:
	j  .qsort15
.qsort15:
	lw  t0, -56(s0)
	lw  t0, 0(t0)
	sw  t0, -272(s0)
	lw  t0, -64(s0)
	lw  t0, 0(t0)
	sw  t0, -276(s0)
	lw  t0, -272(s0)
	lw  t1, -276(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -280(s0)
	lw  t0, -280(s0)
	addi  t1, zero, 1
	xor  t2, t0, t1
	sw  t2, -284(s0)
	lw  t0, -88(s0)
	lw  t1, -280(s0)
	sw  t1, 0(t0)
	lw  t0, -284(s0)
	beqz  t0, .qsort18
	j  .qsort19
.qsort18:
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -288(s0)
	lw  t0, -56(s0)
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
	lw  t0, -300(s0)
	lw  t0, 0(t0)
	sw  t0, -304(s0)
	lw  t0, -304(s0)
	addi  t1, t0, 8
	sw  t1, -308(s0)
	lw  t0, -308(s0)
	lw  t0, 0(t0)
	sw  t0, -312(s0)
	lw  t0, -72(s0)
	lw  t0, 0(t0)
	sw  t0, -316(s0)
	lw  t0, -316(s0)
	addi  t1, t0, 8
	sw  t1, -320(s0)
	lw  t0, -320(s0)
	lw  t0, 0(t0)
	sw  t0, -324(s0)
	lw  t0, -312(s0)
	lw  t1, -324(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -328(s0)
	lw  t0, -88(s0)
	lw  t1, -328(s0)
	sw  t1, 0(t0)
	j  .qsort19
.qsort19:
	lw  t0, -88(s0)
	lw  t0, 0(t0)
	sw  t0, -332(s0)
	lw  t0, -332(s0)
	beqz  t0, .qsort17
	j  .qsort16
.qsort16:
	lw  t0, -56(s0)
	lw  t0, 0(t0)
	sw  t0, -336(s0)
	lw  t0, -336(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -340(s0)
	lw  t0, -56(s0)
	lw  t1, -340(s0)
	sw  t1, 0(t0)
	j  .qsort15
.qsort17:
	lw  t0, -56(s0)
	lw  t0, 0(t0)
	sw  t0, -344(s0)
	lw  t0, -64(s0)
	lw  t0, 0(t0)
	sw  t0, -348(s0)
	lw  t0, -344(s0)
	lw  t1, -348(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -352(s0)
	lw  t0, -352(s0)
	beqz  t0, .qsort21
	j  .qsort20
.qsort20:
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -356(s0)
	lw  t0, -64(s0)
	lw  t0, 0(t0)
	sw  t0, -360(s0)
	lw  t0, -360(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -364(s0)
	lw  t0, -356(s0)
	lw  t1, -364(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -368(s0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -372(s0)
	lw  t0, -56(s0)
	lw  t0, 0(t0)
	sw  t0, -376(s0)
	lw  t0, -376(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -380(s0)
	lw  t0, -372(s0)
	lw  t1, -380(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -384(s0)
	lw  t0, -384(s0)
	lw  t0, 0(t0)
	sw  t0, -388(s0)
	lw  t0, -368(s0)
	lw  t1, -388(s0)
	sw  t1, 0(t0)
	lw  t0, -64(s0)
	lw  t0, 0(t0)
	sw  t0, -392(s0)
	lw  t0, -392(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	sw  t2, -396(s0)
	lw  t0, -64(s0)
	lw  t1, -396(s0)
	sw  t1, 0(t0)
	j  .qsort22
.qsort21:
	j  .qsort22
.qsort22:
	j  .qsort4
.qsort6:
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -400(s0)
	lw  t0, -56(s0)
	lw  t0, 0(t0)
	sw  t0, -404(s0)
	lw  t0, -404(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -408(s0)
	lw  t0, -400(s0)
	lw  t1, -408(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -412(s0)
	lw  t0, -72(s0)
	lw  t0, 0(t0)
	sw  t0, -416(s0)
	lw  t0, -412(s0)
	lw  t1, -416(s0)
	sw  t1, 0(t0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -420(s0)
	lw  t0, -40(s0)
	lw  t0, 0(t0)
	sw  t0, -424(s0)
	lw  t0, -56(s0)
	lw  t0, 0(t0)
	sw  t0, -428(s0)
	lw  t0, -428(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	sw  t2, -432(s0)
	lw  a0, -420(s0)
	lw  a1, -424(s0)
	lw  a2, -432(s0)
	call  qsort
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -436(s0)
	lw  t0, -56(s0)
	lw  t0, 0(t0)
	sw  t0, -440(s0)
	lw  t0, -440(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -444(s0)
	lw  t0, -48(s0)
	lw  t0, 0(t0)
	sw  t0, -448(s0)
	lw  a0, -436(s0)
	lw  a1, -444(s0)
	lw  a2, -448(s0)
	call  qsort
	j  .qsort3
.qsort2:
	j  .qsort3
.qsort3:
.qsortexit:
	lw  a0, -12(s0)
	lw  s0, 440(sp)
	lw  ra, 444(sp)
	addi  sp, sp, 448
	ret

	.globl  init
	.p2align  2
init:
	addi  sp, sp, -116
	sw  ra, 112(sp)
	sw  s0, 108(sp)
	addi  s0, sp, 116
.initpara:
	addi  t0, s0, -16
	sw  t0, -20(s0)
.init0:
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -24(s0)
	lw  t0, -24(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -28(s0)
	lw  t0, -28(s0)
	addi  t1, zero, 4
	mul  t2, t0, t1
	sw  t2, -32(s0)
	lw  t0, -32(s0)
	addi  t1, zero, 4
	add  t2, t0, t1
	sw  t2, -36(s0)
	lw  a0, -36(s0)
	call  malloc
	sw  a0, -40(s0)
	lw  t0, -40(s0)
	lw  t1, -28(s0)
	sw  t1, 0(t0)
	la  t0, .@fa
	lw  t1, -40(s0)
	sw  t1, 0(t0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -44(s0)
	lw  t0, -44(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -48(s0)
	lw  t0, -48(s0)
	addi  t1, zero, 4
	mul  t2, t0, t1
	sw  t2, -52(s0)
	lw  t0, -52(s0)
	addi  t1, zero, 4
	add  t2, t0, t1
	sw  t2, -56(s0)
	lw  a0, -56(s0)
	call  malloc
	sw  a0, -60(s0)
	lw  t0, -60(s0)
	lw  t1, -48(s0)
	sw  t1, 0(t0)
	la  t0, .@rk
	lw  t1, -60(s0)
	sw  t1, 0(t0)
	lw  t0, -20(s0)
	addi  t1, zero, 1
	sw  t1, 0(t0)
	j  .init1
.init1:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -64(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -68(s0)
	lw  t0, -64(s0)
	lw  t1, -68(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	seqz  t4, t2
	or  t5, t3, t4
	sw  t5, -72(s0)
	lw  t0, -72(s0)
	beqz  t0, .init4
	j  .init2
.init2:
	la  t0, .@fa
	lw  t0, 0(t0)
	sw  t0, -76(s0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -80(s0)
	lw  t0, -80(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -84(s0)
	lw  t0, -76(s0)
	lw  t1, -84(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -88(s0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -92(s0)
	lw  t0, -88(s0)
	lw  t1, -92(s0)
	sw  t1, 0(t0)
	la  t0, .@rk
	lw  t0, 0(t0)
	sw  t0, -96(s0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -100(s0)
	lw  t0, -100(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -104(s0)
	lw  t0, -96(s0)
	lw  t1, -104(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -108(s0)
	lw  t0, -108(s0)
	addi  t1, zero, 1
	sw  t1, 0(t0)
	j  .init3
.init3:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -112(s0)
	lw  t0, -112(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -116(s0)
	lw  t0, -20(s0)
	lw  t1, -116(s0)
	sw  t1, 0(t0)
	j  .init1
.init4:
.initexit:
	lw  a0, -12(s0)
	lw  s0, 108(sp)
	lw  ra, 112(sp)
	addi  sp, sp, 116
	ret

	.globl  find
	.p2align  2
find:
	addi  sp, sp, -100
	sw  ra, 96(sp)
	sw  s0, 92(sp)
	addi  s0, sp, 100
.findpara:
	sw  a0, -16(s0)
	addi  t0, s0, -20
	sw  t0, -24(s0)
.find0:
	lw  t0, -24(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -28(s0)
	la  t0, .@fa
	lw  t0, 0(t0)
	sw  t0, -32(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -36(s0)
	lw  t0, -36(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -40(s0)
	lw  t0, -32(s0)
	lw  t1, -40(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -44(s0)
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -48(s0)
	lw  t0, -28(s0)
	lw  t1, -48(s0)
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -52(s0)
	lw  t0, -52(s0)
	beqz  t0, .find2
	j  .find1
.find1:
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	lw  t0, -56(s0)
	sw  t0, -12(s0)
	j  .findexit
	j  .find3
.find2:
	j  .find3
.find3:
	la  t0, .@fa
	lw  t0, 0(t0)
	sw  t0, -60(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -64(s0)
	lw  t0, -64(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -68(s0)
	lw  t0, -60(s0)
	lw  t1, -68(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -72(s0)
	lw  t0, -72(s0)
	lw  t0, 0(t0)
	sw  t0, -76(s0)
	lw  a0, -76(s0)
	call  find
	sw  a0, -80(s0)
	lw  t0, -24(s0)
	lw  t1, -80(s0)
	sw  t1, 0(t0)
	la  t0, .@fa
	lw  t0, 0(t0)
	sw  t0, -84(s0)
	lw  t0, -24(s0)
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
	lw  t0, -100(s0)
	sw  t0, -12(s0)
	j  .findexit
.findexit:
	lw  a0, -12(s0)
	lw  s0, 92(sp)
	lw  ra, 96(sp)
	addi  sp, sp, 100
	ret

	.globl  union
	.p2align  2
union:
	addi  sp, sp, -268
	sw  ra, 264(sp)
	sw  s0, 260(sp)
	addi  s0, sp, 268
.unionpara:
	sw  a0, -16(s0)
	sw  a1, -20(s0)
	addi  t0, s0, -24
	sw  t0, -28(s0)
	addi  t0, s0, -32
	sw  t0, -36(s0)
.union0:
	lw  t0, -28(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -36(s0)
	lw  t1, -20(s0)
	sw  t1, 0(t0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -40(s0)
	lw  a0, -40(s0)
	call  find
	sw  a0, -44(s0)
	lw  t0, -28(s0)
	lw  t1, -44(s0)
	sw  t1, 0(t0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -48(s0)
	lw  a0, -48(s0)
	call  find
	sw  a0, -52(s0)
	lw  t0, -36(s0)
	lw  t1, -52(s0)
	sw  t1, 0(t0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -60(s0)
	lw  t0, -56(s0)
	lw  t1, -60(s0)
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -64(s0)
	lw  t0, -64(s0)
	beqz  t0, .union2
	j  .union1
.union1:
	mv  t0, zero
	sw  t0, -12(s0)
	j  .unionexit
	j  .union3
.union2:
	j  .union3
.union3:
	la  t0, .@rk
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
	lw  t0, -80(s0)
	lw  t0, 0(t0)
	sw  t0, -84(s0)
	la  t0, .@rk
	lw  t0, 0(t0)
	sw  t0, -88(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -92(s0)
	lw  t0, -92(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -96(s0)
	lw  t0, -88(s0)
	lw  t1, -96(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -100(s0)
	lw  t0, -100(s0)
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  t0, -84(s0)
	lw  t1, -104(s0)
	sub  t2, t0, t1
	sgtz  t3, t2
	sw  t3, -108(s0)
	lw  t0, -108(s0)
	beqz  t0, .union5
	j  .union4
.union4:
	la  t0, .@fa
	lw  t0, 0(t0)
	sw  t0, -112(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -116(s0)
	lw  t0, -116(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -120(s0)
	lw  t0, -112(s0)
	lw  t1, -120(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -124(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -128(s0)
	lw  t0, -124(s0)
	lw  t1, -128(s0)
	sw  t1, 0(t0)
	la  t0, .@rk
	lw  t0, 0(t0)
	sw  t0, -132(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -136(s0)
	lw  t0, -136(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -140(s0)
	lw  t0, -132(s0)
	lw  t1, -140(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -144(s0)
	la  t0, .@rk
	lw  t0, 0(t0)
	sw  t0, -148(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -152(s0)
	lw  t0, -152(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -156(s0)
	lw  t0, -148(s0)
	lw  t1, -156(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -160(s0)
	lw  t0, -160(s0)
	lw  t0, 0(t0)
	sw  t0, -164(s0)
	la  t0, .@rk
	lw  t0, 0(t0)
	sw  t0, -168(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -172(s0)
	lw  t0, -172(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -176(s0)
	lw  t0, -168(s0)
	lw  t1, -176(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -180(s0)
	lw  t0, -180(s0)
	lw  t0, 0(t0)
	sw  t0, -184(s0)
	lw  t0, -164(s0)
	lw  t1, -184(s0)
	add  t2, t0, t1
	sw  t2, -188(s0)
	lw  t0, -144(s0)
	lw  t1, -188(s0)
	sw  t1, 0(t0)
	j  .union6
.union5:
	la  t0, .@fa
	lw  t0, 0(t0)
	sw  t0, -192(s0)
	lw  t0, -28(s0)
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
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -208(s0)
	lw  t0, -204(s0)
	lw  t1, -208(s0)
	sw  t1, 0(t0)
	la  t0, .@rk
	lw  t0, 0(t0)
	sw  t0, -212(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -216(s0)
	lw  t0, -216(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -220(s0)
	lw  t0, -212(s0)
	lw  t1, -220(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -224(s0)
	la  t0, .@rk
	lw  t0, 0(t0)
	sw  t0, -228(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -232(s0)
	lw  t0, -232(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -236(s0)
	lw  t0, -228(s0)
	lw  t1, -236(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -240(s0)
	lw  t0, -240(s0)
	lw  t0, 0(t0)
	sw  t0, -244(s0)
	la  t0, .@rk
	lw  t0, 0(t0)
	sw  t0, -248(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -252(s0)
	lw  t0, -252(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -256(s0)
	lw  t0, -248(s0)
	lw  t1, -256(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -260(s0)
	lw  t0, -260(s0)
	lw  t0, 0(t0)
	sw  t0, -264(s0)
	lw  t0, -244(s0)
	lw  t1, -264(s0)
	add  t2, t0, t1
	sw  t2, -268(s0)
	lw  t0, -224(s0)
	lw  t1, -268(s0)
	sw  t1, 0(t0)
	j  .union6
.union6:
	addi  t0, zero, 1
	sw  t0, -12(s0)
	j  .unionexit
.unionexit:
	lw  a0, -12(s0)
	lw  s0, 260(sp)
	lw  ra, 264(sp)
	addi  sp, sp, 268
	ret

	.globl  main
	.p2align  2
main:
	addi  sp, sp, -304
	sw  ra, 300(sp)
	sw  s0, 296(sp)
	addi  s0, sp, 304
.mainpara:
	call  globalinit
	addi  t0, s0, -16
	sw  t0, -20(s0)
	addi  t0, s0, -24
	sw  t0, -28(s0)
	addi  t0, s0, -32
	sw  t0, -36(s0)
	addi  t0, s0, -40
	sw  t0, -44(s0)
.main0:
	call  getInt
	sw  a0, -48(s0)
	la  t0, .@n
	lw  t1, -48(s0)
	sw  t1, 0(t0)
	call  getInt
	sw  a0, -52(s0)
	la  t0, .@m
	lw  t1, -52(s0)
	sw  t1, 0(t0)
	la  t0, .@m
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	lw  t0, -56(s0)
	addi  t1, zero, 4
	mul  t2, t0, t1
	sw  t2, -60(s0)
	lw  t0, -60(s0)
	addi  t1, zero, 4
	add  t2, t0, t1
	sw  t2, -64(s0)
	lw  a0, -64(s0)
	call  malloc
	sw  a0, -68(s0)
	lw  t0, -68(s0)
	lw  t1, -56(s0)
	sw  t1, 0(t0)
	la  t0, .@e
	lw  t1, -68(s0)
	sw  t1, 0(t0)
	lw  t0, -20(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main1
.main1:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -72(s0)
	la  t0, .@m
	lw  t0, 0(t0)
	sw  t0, -76(s0)
	lw  t0, -72(s0)
	lw  t1, -76(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -80(s0)
	lw  t0, -80(s0)
	beqz  t0, .main4
	j  .main2
.main2:
	addi  a0, zero, 12
	call  malloc
	sw  a0, -84(s0)
	lw  a0, -84(s0)
	call  Edge
	lw  t0, -28(s0)
	lw  t1, -84(s0)
	sw  t1, 0(t0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -88(s0)
	lw  t0, -88(s0)
	addi  t1, t0, 0
	sw  t1, -92(s0)
	call  getInt
	sw  a0, -96(s0)
	lw  t0, -92(s0)
	lw  t1, -96(s0)
	sw  t1, 0(t0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -100(s0)
	lw  t0, -100(s0)
	addi  t1, t0, 4
	sw  t1, -104(s0)
	call  getInt
	sw  a0, -108(s0)
	lw  t0, -104(s0)
	lw  t1, -108(s0)
	sw  t1, 0(t0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -112(s0)
	lw  t0, -112(s0)
	addi  t1, t0, 8
	sw  t1, -116(s0)
	call  getInt
	sw  a0, -120(s0)
	lw  t0, -116(s0)
	lw  t1, -120(s0)
	sw  t1, 0(t0)
	la  t0, .@e
	lw  t0, 0(t0)
	sw  t0, -124(s0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -128(s0)
	lw  t0, -128(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -132(s0)
	lw  t0, -124(s0)
	lw  t1, -132(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -136(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -140(s0)
	lw  t0, -136(s0)
	lw  t1, -140(s0)
	sw  t1, 0(t0)
	j  .main3
.main3:
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
	j  .main1
.main4:
	la  t0, .@e
	lw  t0, 0(t0)
	sw  t0, -152(s0)
	la  t0, .@m
	lw  t0, 0(t0)
	sw  t0, -156(s0)
	lw  t0, -156(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	sw  t2, -160(s0)
	lw  a0, -152(s0)
	addi  a1, zero, 0
	lw  a2, -160(s0)
	call  qsort
	call  init
	lw  t0, -20(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	lw  t0, -36(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main5
.main5:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -164(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -168(s0)
	lw  t0, -168(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	sw  t2, -172(s0)
	lw  t0, -164(s0)
	lw  t1, -172(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -176(s0)
	lw  t0, -176(s0)
	beqz  t0, .main7
	j  .main6
.main6:
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -180(s0)
	la  t0, .@m
	lw  t0, 0(t0)
	sw  t0, -184(s0)
	lw  t0, -180(s0)
	lw  t1, -184(s0)
	sub  t2, t0, t1
	sgtz  t3, t2
	seqz  t4, t2
	or  t5, t3, t4
	sw  t5, -188(s0)
	lw  t0, -188(s0)
	beqz  t0, .main9
	j  .main8
.main8:
	addi  a0, zero, -1
	call  printInt
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .mainexit
	j  .main10
.main9:
	j  .main10
.main10:
	la  t0, .@e
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
	lw  t0, -44(s0)
	lw  t1, -208(s0)
	sw  t1, 0(t0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -212(s0)
	lw  t0, -212(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -216(s0)
	lw  t0, -36(s0)
	lw  t1, -216(s0)
	sw  t1, 0(t0)
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -220(s0)
	lw  t0, -220(s0)
	addi  t1, t0, 0
	sw  t1, -224(s0)
	lw  t0, -224(s0)
	lw  t0, 0(t0)
	sw  t0, -228(s0)
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -232(s0)
	lw  t0, -232(s0)
	addi  t1, t0, 4
	sw  t1, -236(s0)
	lw  t0, -236(s0)
	lw  t0, 0(t0)
	sw  t0, -240(s0)
	lw  a0, -228(s0)
	lw  a1, -240(s0)
	call  union
	sw  a0, -244(s0)
	lw  t0, -244(s0)
	beqz  t0, .main12
	j  .main11
.main11:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -248(s0)
	lw  t0, -248(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -252(s0)
	lw  t0, -20(s0)
	lw  t1, -252(s0)
	sw  t1, 0(t0)
	la  t0, .@ans
	lw  t0, 0(t0)
	sw  t0, -256(s0)
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -260(s0)
	lw  t0, -260(s0)
	addi  t1, t0, 8
	sw  t1, -264(s0)
	lw  t0, -264(s0)
	lw  t0, 0(t0)
	sw  t0, -268(s0)
	lw  t0, -256(s0)
	lw  t1, -268(s0)
	add  t2, t0, t1
	sw  t2, -272(s0)
	la  t0, .@ans
	lw  t1, -272(s0)
	sw  t1, 0(t0)
	j  .main13
.main12:
	j  .main13
.main13:
	j  .main5
.main7:
	la  t0, .@rk
	lw  t0, 0(t0)
	sw  t0, -276(s0)
	addi  a0, zero, 1
	call  find
	sw  a0, -280(s0)
	lw  t0, -280(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -284(s0)
	lw  t0, -276(s0)
	lw  t1, -284(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -288(s0)
	lw  t0, -288(s0)
	lw  t0, 0(t0)
	sw  t0, -292(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -296(s0)
	lw  t0, -292(s0)
	lw  t1, -296(s0)
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -300(s0)
	lw  t0, -300(s0)
	beqz  t0, .main15
	j  .main14
.main14:
	la  t0, .@ans
	lw  t0, 0(t0)
	sw  t0, -304(s0)
	lw  a0, -304(s0)
	call  printInt
	j  .main16
.main15:
	addi  a0, zero, -1
	call  printInt
	j  .main16
.main16:
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .mainexit
.mainexit:
	lw  a0, -12(s0)
	lw  s0, 296(sp)
	lw  ra, 300(sp)
	addi  sp, sp, 304
	ret

	.section  .bss
	.p2align  2
.@n:
	.word  0

	.section  .bss
	.p2align  2
.@m:
	.word  0

	.section  .bss
	.p2align  2
.@ans:
	.word  0

	.section  .bss
	.p2align  2
.@fa:
	.word  0

	.section  .bss
	.p2align  2
.@rk:
	.word  0

	.section  .bss
	.p2align  2
.@e:
	.word  0

