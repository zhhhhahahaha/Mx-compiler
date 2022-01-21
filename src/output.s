	.text

	.globl  globalinit
	.p2align  2
globalinit:
	addi  sp, sp, -28
	sw  ra, 24(sp)
	sw  s0, 20(sp)
	addi  s0, sp, 28
.globalinitpara:
.globalinit0:
	la  t0, .@INF
	lw  t0, 0(t0)
	sw  t0, -16(s0)
	la  t0, .@INF
	li  t1, 10000000
	sw  t1, 0(t0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -20(s0)
	la  t0, .@m
	lw  t0, 0(t0)
	sw  t0, -24(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -28(s0)
.globalinitexit:
	lw  a0, -12(s0)
	lw  s0, 20(sp)
	lw  ra, 24(sp)
	addi  sp, sp, 28
	ret

	.globl  init
	.p2align  2
init:
	addi  sp, sp, -324
	sw  ra, 320(sp)
	sw  s0, 316(sp)
	addi  s0, sp, 324
.initpara:
	addi  t0, s0, -16
	sw  t0, -20(s0)
	addi  t0, s0, -24
	sw  t0, -28(s0)
	addi  t0, s0, -32
	sw  t0, -36(s0)
	addi  t0, s0, -40
	sw  t0, -44(s0)
	addi  t0, s0, -48
	sw  t0, -52(s0)
	addi  t0, s0, -56
	sw  t0, -60(s0)
.init0:
	call  getInt
	sw  a0, -64(s0)
	la  t0, .@n
	lw  t1, -64(s0)
	sw  t1, 0(t0)
	call  getInt
	sw  a0, -68(s0)
	la  t0, .@m
	lw  t1, -68(s0)
	sw  t1, 0(t0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -72(s0)
	lw  t0, -20(s0)
	addi  t1, zero, 1
	sw  t1, 0(t0)
	lw  t0, -72(s0)
	addi  t1, zero, 4
	mul  t2, t0, t1
	sw  t2, -76(s0)
	lw  t0, -76(s0)
	addi  t1, zero, 4
	add  t2, t0, t1
	sw  t2, -80(s0)
	lw  a0, -80(s0)
	call  malloc
	sw  a0, -84(s0)
	lw  t0, -72(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -88(s0)
	lw  t0, -84(s0)
	lw  t1, -88(s0)
	sw  t1, 0(t0)
	j  .init1
.init1:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -92(s0)
	lw  t0, -72(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -96(s0)
	lw  t0, -92(s0)
	lw  t1, -96(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -100(s0)
	lw  t0, -100(s0)
	beqz  t0, .init3
	j  .init2
.init2:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  t0, -84(s0)
	lw  t1, -104(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -108(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -112(s0)
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
	lw  t0, -108(s0)
	lw  t1, -124(s0)
	sw  t1, 0(t0)
	lw  t0, -104(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -128(s0)
	lw  t0, -20(s0)
	lw  t1, -128(s0)
	sw  t1, 0(t0)
	j  .init1
.init3:
	la  t0, .@a
	lw  t1, -84(s0)
	sw  t1, 0(t0)
	lw  t0, -28(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .init4
.init4:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -132(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -136(s0)
	lw  t0, -132(s0)
	lw  t1, -136(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -140(s0)
	lw  t0, -140(s0)
	beqz  t0, .init7
	j  .init5
.init5:
	lw  t0, -36(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .init8
.init8:
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -144(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -148(s0)
	lw  t0, -144(s0)
	lw  t1, -148(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -152(s0)
	lw  t0, -152(s0)
	beqz  t0, .init11
	j  .init9
.init9:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -156(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -160(s0)
	lw  t0, -160(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -164(s0)
	lw  t0, -156(s0)
	lw  t1, -164(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -168(s0)
	lw  t0, -168(s0)
	lw  t0, 0(t0)
	sw  t0, -172(s0)
	lw  t0, -36(s0)
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
	la  t0, .@INF
	lw  t0, 0(t0)
	sw  t0, -188(s0)
	lw  t0, -184(s0)
	lw  t1, -188(s0)
	sw  t1, 0(t0)
	j  .init10
.init10:
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -192(s0)
	lw  t0, -192(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -196(s0)
	lw  t0, -36(s0)
	lw  t1, -196(s0)
	sw  t1, 0(t0)
	j  .init8
.init11:
	j  .init6
.init6:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -200(s0)
	lw  t0, -200(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -204(s0)
	lw  t0, -28(s0)
	lw  t1, -204(s0)
	sw  t1, 0(t0)
	j  .init4
.init7:
	lw  t0, -28(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .init12
.init12:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -208(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -212(s0)
	lw  t0, -208(s0)
	lw  t1, -212(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -216(s0)
	lw  t0, -216(s0)
	beqz  t0, .init15
	j  .init13
.init13:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -220(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -224(s0)
	lw  t0, -224(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -228(s0)
	lw  t0, -220(s0)
	lw  t1, -228(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -232(s0)
	lw  t0, -232(s0)
	lw  t0, 0(t0)
	sw  t0, -236(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -240(s0)
	lw  t0, -240(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -244(s0)
	lw  t0, -236(s0)
	lw  t1, -244(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -248(s0)
	lw  t0, -248(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .init14
.init14:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -252(s0)
	lw  t0, -252(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -256(s0)
	lw  t0, -28(s0)
	lw  t1, -256(s0)
	sw  t1, 0(t0)
	j  .init12
.init15:
	lw  t0, -28(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .init16
.init16:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -260(s0)
	la  t0, .@m
	lw  t0, 0(t0)
	sw  t0, -264(s0)
	lw  t0, -260(s0)
	lw  t1, -264(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -268(s0)
	lw  t0, -268(s0)
	beqz  t0, .init19
	j  .init17
.init17:
	call  getInt
	sw  a0, -272(s0)
	lw  t0, -44(s0)
	lw  t1, -272(s0)
	sw  t1, 0(t0)
	call  getInt
	sw  a0, -276(s0)
	lw  t0, -52(s0)
	lw  t1, -276(s0)
	sw  t1, 0(t0)
	call  getInt
	sw  a0, -280(s0)
	lw  t0, -60(s0)
	lw  t1, -280(s0)
	sw  t1, 0(t0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -284(s0)
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -288(s0)
	lw  t0, -288(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -292(s0)
	lw  t0, -284(s0)
	lw  t1, -292(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -296(s0)
	lw  t0, -296(s0)
	lw  t0, 0(t0)
	sw  t0, -300(s0)
	lw  t0, -52(s0)
	lw  t0, 0(t0)
	sw  t0, -304(s0)
	lw  t0, -304(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -308(s0)
	lw  t0, -300(s0)
	lw  t1, -308(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -312(s0)
	lw  t0, -60(s0)
	lw  t0, 0(t0)
	sw  t0, -316(s0)
	lw  t0, -312(s0)
	lw  t1, -316(s0)
	sw  t1, 0(t0)
	j  .init18
.init18:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -320(s0)
	lw  t0, -320(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -324(s0)
	lw  t0, -28(s0)
	lw  t1, -324(s0)
	sw  t1, 0(t0)
	j  .init16
.init19:
.initexit:
	lw  a0, -12(s0)
	lw  s0, 316(sp)
	lw  ra, 320(sp)
	addi  sp, sp, 324
	ret

	.globl  main
	.p2align  2
main:
	addi  sp, sp, -444
	sw  ra, 440(sp)
	sw  s0, 436(sp)
	addi  s0, sp, 444
.mainpara:
	call  globalinit
	addi  t0, s0, -16
	sw  t0, -20(s0)
	addi  t0, s0, -24
	sw  t0, -28(s0)
	addi  t0, s0, -32
	sw  t0, -36(s0)
.main0:
	call  init
	lw  t0, -36(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main1
.main1:
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -40(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -44(s0)
	lw  t0, -40(s0)
	lw  t1, -44(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -48(s0)
	lw  t0, -48(s0)
	beqz  t0, .main4
	j  .main2
.main2:
	lw  t0, -20(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main5
.main5:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -52(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	lw  t0, -52(s0)
	lw  t1, -56(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -60(s0)
	lw  t0, -60(s0)
	beqz  t0, .main8
	j  .main6
.main6:
	lw  t0, -28(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main9
.main9:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -64(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -68(s0)
	lw  t0, -64(s0)
	lw  t1, -68(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -72(s0)
	lw  t0, -72(s0)
	beqz  t0, .main12
	j  .main10
.main10:
	la  t0, .@a
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
	lw  t0, -88(s0)
	lw  t0, 0(t0)
	sw  t0, -92(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -96(s0)
	lw  t0, -96(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -100(s0)
	lw  t0, -92(s0)
	lw  t1, -100(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -104(s0)
	lw  t0, -104(s0)
	lw  t0, 0(t0)
	sw  t0, -108(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -112(s0)
	lw  t0, -20(s0)
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
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -132(s0)
	lw  t0, -132(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -136(s0)
	lw  t0, -128(s0)
	lw  t1, -136(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -140(s0)
	lw  t0, -140(s0)
	lw  t0, 0(t0)
	sw  t0, -144(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -148(s0)
	lw  t0, -36(s0)
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
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -168(s0)
	lw  t0, -168(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -172(s0)
	lw  t0, -164(s0)
	lw  t1, -172(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -176(s0)
	lw  t0, -176(s0)
	lw  t0, 0(t0)
	sw  t0, -180(s0)
	lw  t0, -144(s0)
	lw  t1, -180(s0)
	add  t2, t0, t1
	sw  t2, -184(s0)
	lw  t0, -108(s0)
	lw  t1, -184(s0)
	sub  t2, t0, t1
	sgtz  t3, t2
	sw  t3, -188(s0)
	lw  t0, -188(s0)
	beqz  t0, .main14
	j  .main13
.main13:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -192(s0)
	lw  t0, -20(s0)
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
	lw  t0, -28(s0)
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
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -224(s0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -228(s0)
	lw  t0, -228(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -232(s0)
	lw  t0, -224(s0)
	lw  t1, -232(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -236(s0)
	lw  t0, -236(s0)
	lw  t0, 0(t0)
	sw  t0, -240(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -244(s0)
	lw  t0, -244(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -248(s0)
	lw  t0, -240(s0)
	lw  t1, -248(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -252(s0)
	lw  t0, -252(s0)
	lw  t0, 0(t0)
	sw  t0, -256(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -260(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -264(s0)
	lw  t0, -264(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -268(s0)
	lw  t0, -260(s0)
	lw  t1, -268(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -272(s0)
	lw  t0, -272(s0)
	lw  t0, 0(t0)
	sw  t0, -276(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -280(s0)
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
	lw  t0, -256(s0)
	lw  t1, -292(s0)
	add  t2, t0, t1
	sw  t2, -296(s0)
	lw  t0, -220(s0)
	lw  t1, -296(s0)
	sw  t1, 0(t0)
	j  .main15
.main14:
	j  .main15
.main15:
	j  .main11
.main11:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -300(s0)
	lw  t0, -300(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -304(s0)
	lw  t0, -28(s0)
	lw  t1, -304(s0)
	sw  t1, 0(t0)
	j  .main9
.main12:
	j  .main7
.main7:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -308(s0)
	lw  t0, -308(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -312(s0)
	lw  t0, -20(s0)
	lw  t1, -312(s0)
	sw  t1, 0(t0)
	j  .main5
.main8:
	j  .main3
.main3:
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -316(s0)
	lw  t0, -316(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -320(s0)
	lw  t0, -36(s0)
	lw  t1, -320(s0)
	sw  t1, 0(t0)
	j  .main1
.main4:
	lw  t0, -20(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main16
.main16:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -324(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -328(s0)
	lw  t0, -324(s0)
	lw  t1, -328(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -332(s0)
	lw  t0, -332(s0)
	beqz  t0, .main19
	j  .main17
.main17:
	lw  t0, -28(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main20
.main20:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -336(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -340(s0)
	lw  t0, -336(s0)
	lw  t1, -340(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -344(s0)
	lw  t0, -344(s0)
	beqz  t0, .main23
	j  .main21
.main21:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -348(s0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -352(s0)
	lw  t0, -352(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -356(s0)
	lw  t0, -348(s0)
	lw  t1, -356(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -360(s0)
	lw  t0, -360(s0)
	lw  t0, 0(t0)
	sw  t0, -364(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -368(s0)
	lw  t0, -368(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -372(s0)
	lw  t0, -364(s0)
	lw  t1, -372(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -376(s0)
	lw  t0, -376(s0)
	lw  t0, 0(t0)
	sw  t0, -380(s0)
	la  t0, .@INF
	lw  t0, 0(t0)
	sw  t0, -384(s0)
	lw  t0, -380(s0)
	lw  t1, -384(s0)
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -388(s0)
	lw  t0, -388(s0)
	beqz  t0, .main25
	j  .main24
.main24:
	la  a0, .$str1
	call  print
	j  .main26
.main25:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -392(s0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -396(s0)
	lw  t0, -396(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -400(s0)
	lw  t0, -392(s0)
	lw  t1, -400(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -404(s0)
	lw  t0, -404(s0)
	lw  t0, 0(t0)
	sw  t0, -408(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -412(s0)
	lw  t0, -412(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -416(s0)
	lw  t0, -408(s0)
	lw  t1, -416(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -420(s0)
	lw  t0, -420(s0)
	lw  t0, 0(t0)
	sw  t0, -424(s0)
	lw  a0, -424(s0)
	call  toString
	sw  a0, -428(s0)
	lw  a0, -428(s0)
	call  print
	j  .main26
.main26:
	la  a0, .$str2
	call  print
	j  .main22
.main22:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -432(s0)
	lw  t0, -432(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -436(s0)
	lw  t0, -28(s0)
	lw  t1, -436(s0)
	sw  t1, 0(t0)
	j  .main20
.main23:
	la  a0, .$str3
	call  println
	j  .main18
.main18:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -440(s0)
	lw  t0, -440(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -444(s0)
	lw  t0, -20(s0)
	lw  t1, -444(s0)
	sw  t1, 0(t0)
	j  .main16
.main19:
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .mainexit
.mainexit:
	lw  a0, -12(s0)
	lw  s0, 436(sp)
	lw  ra, 440(sp)
	addi  sp, sp, 444
	ret

	.section  .bss
	.p2align  2
.@INF:
	.word  0

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
.@a:
	.word  0

	.section  .rodata
	.p2align  2
.$str1:
	.string  "-1"

	.section  .rodata
	.p2align  2
.$str2:
	.string  " "

	.section  .rodata
	.p2align  2
.$str3:
	.string  ""

