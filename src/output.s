	.text

	.globl  globalinit
	.p2align  2
globalinit:
	addi  sp, sp, -60
	sw  ra, 56(sp)
	sw  s0, 52(sp)
	addi  s0, sp, 60
.globalinitpara:
	addi  t0, s0, -16
	sw  t0, -20(s0)
.globalinit0:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -24(s0)
	lw  t0, -20(s0)
	addi  t1, zero, 1
	sw  t1, 0(t0)
	addi  a0, zero, 124
	call  malloc
	sw  a0, -28(s0)
	lw  t0, -28(s0)
	addi  t1, zero, 30
	sw  t1, 0(t0)
	j  .globalinit1
.globalinit1:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -32(s0)
	lw  t0, -32(s0)
	addi  t1, zero, 31
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -36(s0)
	lw  t0, -36(s0)
	beqz  t0, .globalinit3
	j  .globalinit2
.globalinit2:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -40(s0)
	lw  t0, -28(s0)
	lw  t1, -40(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -44(s0)
	addi  a0, zero, 124
	call  malloc
	sw  a0, -48(s0)
	lw  t0, -48(s0)
	addi  t1, zero, 30
	sw  t1, 0(t0)
	lw  t0, -44(s0)
	lw  t1, -48(s0)
	sw  t1, 0(t0)
	lw  t0, -40(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -52(s0)
	lw  t0, -20(s0)
	lw  t1, -52(s0)
	sw  t1, 0(t0)
	j  .globalinit1
.globalinit3:
	la  t0, .@a
	lw  t1, -28(s0)
	sw  t1, 0(t0)
	la  t0, .@str
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	addi  a0, zero, 124
	call  malloc
	sw  a0, -60(s0)
	lw  t0, -60(s0)
	addi  t1, zero, 30
	sw  t1, 0(t0)
	la  t0, .@str
	lw  t1, -60(s0)
	sw  t1, 0(t0)
.globalinitexit:
	lw  a0, -12(s0)
	lw  s0, 52(sp)
	lw  ra, 56(sp)
	addi  sp, sp, 60
	ret

	.globl  main
	.p2align  2
main:
	addi  sp, sp, -220
	sw  ra, 216(sp)
	sw  s0, 212(sp)
	addi  s0, sp, 220
.mainpara:
	call  globalinit
	addi  t0, s0, -16
	sw  t0, -20(s0)
	addi  t0, s0, -24
	sw  t0, -28(s0)
	addi  t0, s0, -32
	sw  t0, -36(s0)
.main0:
	lw  t0, -20(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main1
.main1:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -40(s0)
	lw  t0, -40(s0)
	addi  t1, zero, 29
	sub  t2, t0, t1
	sltz  t3, t2
	seqz  t4, t2
	or  t5, t3, t4
	sw  t5, -44(s0)
	lw  t0, -44(s0)
	beqz  t0, .main4
	j  .main2
.main2:
	lw  t0, -36(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	la  t0, .@str
	lw  t0, 0(t0)
	sw  t0, -48(s0)
	lw  t0, -20(s0)
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
	lw  t0, -76(s0)
	lw  t0, 0(t0)
	sw  t0, -80(s0)
	lw  t0, -80(s0)
	addi  t1, t0, 4
	sw  t1, -84(s0)
	lw  t0, -84(s0)
	lw  t0, 0(t0)
	sw  t0, -88(s0)
	lw  a0, -88(s0)
	call  toString
	sw  a0, -92(s0)
	lw  t0, -60(s0)
	lw  t1, -92(s0)
	sw  t1, 0(t0)
	lw  t0, -28(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main5
.main5:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -96(s0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -100(s0)
	lw  t0, -96(s0)
	lw  t1, -100(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -104(s0)
	lw  t0, -104(s0)
	beqz  t0, .main8
	j  .main6
.main6:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -108(s0)
	lw  t0, -108(s0)
	addi  t1, zero, 1
	and  t2, t0, t1
	sw  t2, -112(s0)
	lw  t0, -112(s0)
	addi  t1, zero, 0
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -116(s0)
	lw  t0, -116(s0)
	beqz  t0, .main10
	j  .main9
.main9:
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -120(s0)
	la  t0, .@a
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
	lw  t0, -136(s0)
	lw  t0, 0(t0)
	sw  t0, -140(s0)
	lw  t0, -140(s0)
	addi  t1, t0, 4
	sw  t1, -144(s0)
	lw  t0, -144(s0)
	lw  t0, 0(t0)
	sw  t0, -148(s0)
	lw  t0, -120(s0)
	lw  t1, -148(s0)
	add  t2, t0, t1
	sw  t2, -152(s0)
	lw  t0, -36(s0)
	lw  t1, -152(s0)
	sw  t1, 0(t0)
	j  .main11
.main10:
	j  .main11
.main11:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -156(s0)
	lw  t0, -156(s0)
	addi  t1, zero, 1
	and  t2, t0, t1
	sw  t2, -160(s0)
	lw  t0, -160(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -164(s0)
	lw  t0, -164(s0)
	beqz  t0, .main13
	j  .main12
.main12:
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -168(s0)
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
	lw  t0, -188(s0)
	addi  t1, t0, 120
	sw  t1, -192(s0)
	lw  t0, -192(s0)
	lw  t0, 0(t0)
	sw  t0, -196(s0)
	lw  t0, -168(s0)
	lw  t1, -196(s0)
	add  t2, t0, t1
	sw  t2, -200(s0)
	lw  t0, -36(s0)
	lw  t1, -200(s0)
	sw  t1, 0(t0)
	j  .main14
.main13:
	j  .main14
.main14:
	j  .main7
.main7:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -204(s0)
	lw  t0, -204(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -208(s0)
	lw  t0, -28(s0)
	lw  t1, -208(s0)
	sw  t1, 0(t0)
	j  .main5
.main8:
	la  a0, .$str1
	la  a1, .$str2
	call  string_add
	sw  a0, -212(s0)
	lw  a0, -212(s0)
	call  println
	j  .main3
.main3:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -216(s0)
	lw  t0, -216(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -220(s0)
	lw  t0, -20(s0)
	lw  t1, -220(s0)
	sw  t1, 0(t0)
	j  .main1
.main4:
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .mainexit
.mainexit:
	lw  a0, -12(s0)
	lw  s0, 212(sp)
	lw  ra, 216(sp)
	addi  sp, sp, 220
	ret

	.section  .bss
	.p2align  2
.@a:
	.word  0

	.section  .bss
	.p2align  2
.@str:
	.word  0

	.section  .rodata
	.p2align  2
.$str1:
	.string  "str1"

	.section  .rodata
	.p2align  2
.$str2:
	.string  "str2"

