	.text

	.globl  globalinit
	.p2align  2
globalinit:
	addi  sp, sp, -12
	sw  ra, 8(sp)
	sw  s0, 4(sp)
	addi  s0, sp, 12
.globalinitpara:
.globalinit0:
.globalinitexit:
	lw  a0, -12(s0)
	lw  s0, 4(sp)
	lw  ra, 8(sp)
	addi  sp, sp, 12
	ret

	.globl  Queue_int_push
	.p2align  2
Queue_int_push:
	addi  sp, sp, -144
	sw  ra, 140(sp)
	sw  s0, 136(sp)
	addi  s0, sp, 144
.Queue_int_pushpara:
	sw  a0, -16(s0)
	sw  a1, -20(s0)
	addi  t0, s0, -24
	sw  t0, -28(s0)
	addi  t0, s0, -32
	sw  t0, -36(s0)
.Queue_int_push0:
	lw  t0, -28(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -36(s0)
	lw  t1, -20(s0)
	sw  t1, 0(t0)
	call  Queue_int_size
	sw  a0, -40(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -44(s0)
	lw  t0, -44(s0)
	addi  t1, t0, 0
	sw  t1, -48(s0)
	lw  t0, -48(s0)
	lw  t0, 0(t0)
	sw  t0, -52(s0)
	lw  a0, -52(s0)
	call  Queue_int
	sw  a0, -56(s0)
	lw  t0, -56(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	sw  t2, -60(s0)
	lw  t0, -40(s0)
	lw  t1, -60(s0)
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -64(s0)
	lw  t0, -64(s0)
	beqz  t0, .Queue_int_push2
	j  .Queue_int_push1
.Queue_int_push1:
	call  Queue_int_doubleStorage
	j  .Queue_int_push3
.Queue_int_push2:
	j  .Queue_int_push3
.Queue_int_push3:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -68(s0)
	lw  t0, -68(s0)
	addi  t1, t0, 0
	sw  t1, -72(s0)
	lw  t0, -72(s0)
	lw  t0, 0(t0)
	sw  t0, -76(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -80(s0)
	lw  t0, -80(s0)
	addi  t1, t0, 8
	sw  t1, -84(s0)
	lw  t0, -84(s0)
	lw  t0, 0(t0)
	sw  t0, -88(s0)
	lw  t0, -88(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -92(s0)
	lw  t0, -76(s0)
	lw  t1, -92(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -96(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -100(s0)
	lw  t0, -96(s0)
	lw  t1, -100(s0)
	sw  t1, 0(t0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  t0, -104(s0)
	addi  t1, t0, 8
	sw  t1, -108(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -112(s0)
	lw  t0, -112(s0)
	addi  t1, t0, 8
	sw  t1, -116(s0)
	lw  t0, -116(s0)
	lw  t0, 0(t0)
	sw  t0, -120(s0)
	lw  t0, -120(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -124(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -128(s0)
	lw  t0, -128(s0)
	addi  t1, t0, 0
	sw  t1, -132(s0)
	lw  t0, -132(s0)
	lw  t0, 0(t0)
	sw  t0, -136(s0)
	lw  a0, -136(s0)
	call  Queue_int
	sw  a0, -140(s0)
	lw  t0, -124(s0)
	lw  t1, -140(s0)
	rem  t2, t0, t1
	sw  t2, -144(s0)
	lw  t0, -108(s0)
	lw  t1, -144(s0)
	sw  t1, 0(t0)
.Queue_int_pushexit:
	lw  a0, -12(s0)
	lw  s0, 136(sp)
	lw  ra, 140(sp)
	addi  sp, sp, 144
	ret

	.globl  Queue_int_top
	.p2align  2
Queue_int_top:
	addi  sp, sp, -60
	sw  ra, 56(sp)
	sw  s0, 52(sp)
	addi  s0, sp, 60
.Queue_int_toppara:
	sw  a0, -16(s0)
	addi  t0, s0, -20
	sw  t0, -24(s0)
.Queue_int_top0:
	lw  t0, -24(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -28(s0)
	lw  t0, -28(s0)
	addi  t1, t0, 0
	sw  t1, -32(s0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -36(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -40(s0)
	lw  t0, -40(s0)
	addi  t1, t0, 4
	sw  t1, -44(s0)
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -48(s0)
	lw  t0, -48(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -52(s0)
	lw  t0, -36(s0)
	lw  t1, -52(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -56(s0)
	lw  t0, -56(s0)
	lw  t0, 0(t0)
	sw  t0, -60(s0)
	lw  t0, -60(s0)
	sw  t0, -12(s0)
	j  .Queue_int_topexit
.Queue_int_topexit:
	lw  a0, -12(s0)
	lw  s0, 52(sp)
	lw  ra, 56(sp)
	addi  sp, sp, 60
	ret

	.globl  Queue_int_pop
	.p2align  2
Queue_int_pop:
	addi  sp, sp, -92
	sw  ra, 88(sp)
	sw  s0, 84(sp)
	addi  s0, sp, 92
.Queue_int_poppara:
	sw  a0, -16(s0)
	addi  t0, s0, -20
	sw  t0, -24(s0)
	addi  t0, s0, -28
	sw  t0, -32(s0)
.Queue_int_pop0:
	lw  t0, -24(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	call  Queue_int_size
	sw  a0, -36(s0)
	lw  t0, -36(s0)
	addi  t1, zero, 0
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -40(s0)
	lw  t0, -40(s0)
	beqz  t0, .Queue_int_pop2
	j  .Queue_int_pop1
.Queue_int_pop1:
	la  a0, .$str1
	call  println
	j  .Queue_int_pop3
.Queue_int_pop2:
	j  .Queue_int_pop3
.Queue_int_pop3:
	call  Queue_int_top
	sw  a0, -44(s0)
	lw  t0, -32(s0)
	lw  t1, -44(s0)
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -48(s0)
	lw  t0, -48(s0)
	addi  t1, t0, 4
	sw  t1, -52(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	lw  t0, -56(s0)
	addi  t1, t0, 4
	sw  t1, -60(s0)
	lw  t0, -60(s0)
	lw  t0, 0(t0)
	sw  t0, -64(s0)
	lw  t0, -64(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -68(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -72(s0)
	lw  t0, -72(s0)
	addi  t1, t0, 0
	sw  t1, -76(s0)
	lw  t0, -76(s0)
	lw  t0, 0(t0)
	sw  t0, -80(s0)
	lw  a0, -80(s0)
	call  Queue_int
	sw  a0, -84(s0)
	lw  t0, -68(s0)
	lw  t1, -84(s0)
	rem  t2, t0, t1
	sw  t2, -88(s0)
	lw  t0, -52(s0)
	lw  t1, -88(s0)
	sw  t1, 0(t0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -92(s0)
	lw  t0, -92(s0)
	sw  t0, -12(s0)
	j  .Queue_int_popexit
.Queue_int_popexit:
	lw  a0, -12(s0)
	lw  s0, 84(sp)
	lw  ra, 88(sp)
	addi  sp, sp, 92
	ret

	.globl  Queue_int_size
	.p2align  2
Queue_int_size:
	addi  sp, sp, -92
	sw  ra, 88(sp)
	sw  s0, 84(sp)
	addi  s0, sp, 92
.Queue_int_sizepara:
	sw  a0, -16(s0)
	addi  t0, s0, -20
	sw  t0, -24(s0)
.Queue_int_size0:
	lw  t0, -24(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -28(s0)
	lw  t0, -28(s0)
	addi  t1, t0, 8
	sw  t1, -32(s0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -36(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -40(s0)
	lw  t0, -40(s0)
	addi  t1, t0, 0
	sw  t1, -44(s0)
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -48(s0)
	lw  a0, -48(s0)
	call  Queue_int
	sw  a0, -52(s0)
	lw  t0, -36(s0)
	lw  t1, -52(s0)
	add  t2, t0, t1
	sw  t2, -56(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -60(s0)
	lw  t0, -60(s0)
	addi  t1, t0, 4
	sw  t1, -64(s0)
	lw  t0, -64(s0)
	lw  t0, 0(t0)
	sw  t0, -68(s0)
	lw  t0, -56(s0)
	lw  t1, -68(s0)
	sub  t2, t0, t1
	sw  t2, -72(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -76(s0)
	lw  t0, -76(s0)
	addi  t1, t0, 0
	sw  t1, -80(s0)
	lw  t0, -80(s0)
	lw  t0, 0(t0)
	sw  t0, -84(s0)
	lw  a0, -84(s0)
	call  Queue_int
	sw  a0, -88(s0)
	lw  t0, -72(s0)
	lw  t1, -88(s0)
	rem  t2, t0, t1
	sw  t2, -92(s0)
	lw  t0, -92(s0)
	sw  t0, -12(s0)
	j  .Queue_int_sizeexit
.Queue_int_sizeexit:
	lw  a0, -12(s0)
	lw  s0, 84(sp)
	lw  ra, 88(sp)
	addi  sp, sp, 92
	ret

	.globl  Queue_int_doubleStorage
	.p2align  2
Queue_int_doubleStorage:
	addi  sp, sp, -252
	sw  ra, 248(sp)
	sw  s0, 244(sp)
	addi  s0, sp, 252
.Queue_int_doubleStoragepara:
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
.Queue_int_doubleStorage0:
	lw  t0, -24(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -60(s0)
	lw  t0, -60(s0)
	addi  t1, t0, 0
	sw  t1, -64(s0)
	lw  t0, -64(s0)
	lw  t0, 0(t0)
	sw  t0, -68(s0)
	lw  t0, -32(s0)
	lw  t1, -68(s0)
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -72(s0)
	lw  t0, -72(s0)
	addi  t1, t0, 4
	sw  t1, -76(s0)
	lw  t0, -76(s0)
	lw  t0, 0(t0)
	sw  t0, -80(s0)
	lw  t0, -40(s0)
	lw  t1, -80(s0)
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -84(s0)
	lw  t0, -84(s0)
	addi  t1, t0, 8
	sw  t1, -88(s0)
	lw  t0, -88(s0)
	lw  t0, 0(t0)
	sw  t0, -92(s0)
	lw  t0, -48(s0)
	lw  t1, -92(s0)
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -96(s0)
	lw  t0, -96(s0)
	addi  t1, t0, 0
	sw  t1, -100(s0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  a0, -104(s0)
	call  Queue_int
	sw  a0, -108(s0)
	lw  t0, -108(s0)
	addi  t1, zero, 2
	mul  t2, t0, t1
	sw  t2, -112(s0)
	lw  t0, -112(s0)
	addi  t1, zero, 4
	mul  t2, t0, t1
	sw  t2, -116(s0)
	lw  t0, -116(s0)
	addi  t1, zero, 4
	add  t2, t0, t1
	sw  t2, -120(s0)
	lw  a0, -120(s0)
	call  malloc
	sw  a0, -124(s0)
	lw  t0, -124(s0)
	lw  t1, -112(s0)
	sw  t1, 0(t0)
	lw  t0, -100(s0)
	lw  t1, -124(s0)
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -128(s0)
	lw  t0, -128(s0)
	addi  t1, t0, 4
	sw  t1, -132(s0)
	lw  t0, -132(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -136(s0)
	lw  t0, -136(s0)
	addi  t1, t0, 8
	sw  t1, -140(s0)
	lw  t0, -140(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	lw  t0, -40(s0)
	lw  t0, 0(t0)
	sw  t0, -144(s0)
	lw  t0, -56(s0)
	lw  t1, -144(s0)
	sw  t1, 0(t0)
	j  .Queue_int_doubleStorage1
.Queue_int_doubleStorage1:
	lw  t0, -56(s0)
	lw  t0, 0(t0)
	sw  t0, -148(s0)
	lw  t0, -48(s0)
	lw  t0, 0(t0)
	sw  t0, -152(s0)
	lw  t0, -148(s0)
	lw  t1, -152(s0)
	sub  t2, t0, t1
	snez  t3, t2
	sw  t3, -156(s0)
	lw  t0, -156(s0)
	beqz  t0, .Queue_int_doubleStorage3
	j  .Queue_int_doubleStorage2
.Queue_int_doubleStorage2:
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -160(s0)
	lw  t0, -160(s0)
	addi  t1, t0, 0
	sw  t1, -164(s0)
	lw  t0, -164(s0)
	lw  t0, 0(t0)
	sw  t0, -168(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -172(s0)
	lw  t0, -172(s0)
	addi  t1, t0, 8
	sw  t1, -176(s0)
	lw  t0, -176(s0)
	lw  t0, 0(t0)
	sw  t0, -180(s0)
	lw  t0, -180(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -184(s0)
	lw  t0, -168(s0)
	lw  t1, -184(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -188(s0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -192(s0)
	lw  t0, -56(s0)
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
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -212(s0)
	lw  t0, -212(s0)
	addi  t1, t0, 8
	sw  t1, -216(s0)
	lw  t0, -216(s0)
	lw  t0, 0(t0)
	sw  t0, -220(s0)
	lw  t0, -220(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -224(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -228(s0)
	lw  t0, -228(s0)
	addi  t1, t0, 8
	sw  t1, -232(s0)
	lw  t0, -232(s0)
	lw  t1, -224(s0)
	sw  t1, 0(t0)
	lw  t0, -56(s0)
	lw  t0, 0(t0)
	sw  t0, -236(s0)
	lw  t0, -236(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -240(s0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -244(s0)
	lw  a0, -244(s0)
	call  Queue_int
	sw  a0, -248(s0)
	lw  t0, -240(s0)
	lw  t1, -248(s0)
	rem  t2, t0, t1
	sw  t2, -252(s0)
	lw  t0, -56(s0)
	lw  t1, -252(s0)
	sw  t1, 0(t0)
	j  .Queue_int_doubleStorage1
.Queue_int_doubleStorage3:
.Queue_int_doubleStorageexit:
	lw  a0, -12(s0)
	lw  s0, 244(sp)
	lw  ra, 248(sp)
	addi  sp, sp, 252
	ret

	.globl  Queue_int
	.p2align  2
Queue_int:
	addi  sp, sp, -52
	sw  ra, 48(sp)
	sw  s0, 44(sp)
	addi  s0, sp, 52
.Queue_intpara:
	sw  a0, -16(s0)
	addi  t0, s0, -20
	sw  t0, -24(s0)
.Queue_int0:
	lw  t0, -24(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -28(s0)
	lw  t0, -28(s0)
	addi  t1, t0, 4
	sw  t1, -32(s0)
	lw  t0, -32(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -36(s0)
	lw  t0, -36(s0)
	addi  t1, t0, 8
	sw  t1, -40(s0)
	lw  t0, -40(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -44(s0)
	lw  t0, -44(s0)
	addi  t1, t0, 0
	sw  t1, -48(s0)
	addi  a0, zero, 68
	call  malloc
	sw  a0, -52(s0)
	lw  t0, -52(s0)
	addi  t1, zero, 16
	sw  t1, 0(t0)
	lw  t0, -48(s0)
	lw  t1, -52(s0)
	sw  t1, 0(t0)
.Queue_intexit:
	lw  a0, -12(s0)
	lw  s0, 44(sp)
	lw  ra, 48(sp)
	addi  sp, sp, 52
	ret

	.globl  main
	.p2align  2
main:
	addi  sp, sp, -180
	sw  ra, 176(sp)
	sw  s0, 172(sp)
	addi  s0, sp, 180
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
	addi  a0, zero, 12
	call  malloc
	sw  a0, -48(s0)
	lw  a0, -48(s0)
	call  Queue_int
	lw  t0, -20(s0)
	lw  t1, -48(s0)
	sw  t1, 0(t0)
	lw  t0, -36(s0)
	addi  t1, zero, 100
	sw  t1, 0(t0)
	lw  t0, -28(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main1
.main1:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -52(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	lw  t0, -52(s0)
	lw  t1, -56(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -60(s0)
	lw  t0, -60(s0)
	beqz  t0, .main4
	j  .main2
.main2:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -64(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -68(s0)
	lw  a0, -64(s0)
	lw  a1, -68(s0)
	call  Queue_int_push
	sw  a0, -72(s0)
	j  .main3
.main3:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -76(s0)
	lw  t0, -76(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -80(s0)
	lw  t0, -28(s0)
	lw  t1, -80(s0)
	sw  t1, 0(t0)
	j  .main1
.main4:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -84(s0)
	lw  a0, -84(s0)
	call  Queue_int_size
	sw  a0, -88(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -92(s0)
	lw  t0, -88(s0)
	lw  t1, -92(s0)
	sub  t2, t0, t1
	snez  t3, t2
	sw  t3, -96(s0)
	lw  t0, -96(s0)
	beqz  t0, .main6
	j  .main5
.main5:
	la  a0, .$str2
	call  println
	addi  t0, zero, 1
	sw  t0, -12(s0)
	j  .mainexit
	j  .main7
.main6:
	j  .main7
.main7:
	lw  t0, -28(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main8
.main8:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -100(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  t0, -100(s0)
	lw  t1, -104(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -108(s0)
	lw  t0, -108(s0)
	beqz  t0, .main11
	j  .main9
.main9:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -112(s0)
	lw  a0, -112(s0)
	call  Queue_int_top
	sw  a0, -116(s0)
	lw  t0, -44(s0)
	lw  t1, -116(s0)
	sw  t1, 0(t0)
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -120(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -124(s0)
	lw  t0, -120(s0)
	lw  t1, -124(s0)
	sub  t2, t0, t1
	snez  t3, t2
	sw  t3, -128(s0)
	lw  t0, -128(s0)
	beqz  t0, .main13
	j  .main12
.main12:
	la  a0, .$str3
	call  println
	addi  t0, zero, 1
	sw  t0, -12(s0)
	j  .mainexit
	j  .main14
.main13:
	j  .main14
.main14:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -132(s0)
	lw  a0, -132(s0)
	call  Queue_int_pop
	sw  a0, -136(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -140(s0)
	lw  t0, -136(s0)
	lw  t1, -140(s0)
	sub  t2, t0, t1
	snez  t3, t2
	sw  t3, -144(s0)
	lw  t0, -144(s0)
	beqz  t0, .main16
	j  .main15
.main15:
	la  a0, .$str4
	call  println
	addi  t0, zero, 1
	sw  t0, -12(s0)
	j  .mainexit
	j  .main17
.main16:
	j  .main17
.main17:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -148(s0)
	lw  a0, -148(s0)
	call  Queue_int_size
	sw  a0, -152(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -156(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -160(s0)
	lw  t0, -156(s0)
	lw  t1, -160(s0)
	sub  t2, t0, t1
	sw  t2, -164(s0)
	lw  t0, -164(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	sw  t2, -168(s0)
	lw  t0, -152(s0)
	lw  t1, -168(s0)
	sub  t2, t0, t1
	snez  t3, t2
	sw  t3, -172(s0)
	lw  t0, -172(s0)
	beqz  t0, .main19
	j  .main18
.main18:
	la  a0, .$str5
	call  println
	addi  t0, zero, 1
	sw  t0, -12(s0)
	j  .mainexit
	j  .main20
.main19:
	j  .main20
.main20:
	j  .main10
.main10:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -176(s0)
	lw  t0, -176(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -180(s0)
	lw  t0, -28(s0)
	lw  t1, -180(s0)
	sw  t1, 0(t0)
	j  .main8
.main11:
	la  a0, .$str6
	call  println
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .mainexit
.mainexit:
	lw  a0, -12(s0)
	lw  s0, 172(sp)
	lw  ra, 176(sp)
	addi  sp, sp, 180
	ret

	.section  .rodata
	.p2align  2
.$str1:
	.string  "Warning: Queue_int::pop: empty queue"

	.section  .rodata
	.p2align  2
.$str2:
	.string  "q.size() != N after pushes"

	.section  .rodata
	.p2align  2
.$str3:
	.string  "Head != i"

	.section  .rodata
	.p2align  2
.$str4:
	.string  "Failed: q.pop() != i"

	.section  .rodata
	.p2align  2
.$str5:
	.string  "q.size() != N - i - 1"

	.section  .rodata
	.p2align  2
.$str6:
	.string  "Passed tests."

