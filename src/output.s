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
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -16(s0)
	addi  a0, zero, 20
	call  malloc
	sw  a0, -20(s0)
	addi  t0, s0, -20
	lw  t0, 0(t0)
	addi  t1, zero, 4
	sw  t1, 0(t0)
	la  t0, .@a
	lw  t1, -20(s0)
	sw  t1, 0(t0)
.globalinitexit:
	lw  a0, -12(s0)
	lw  s0, 12(sp)
	lw  ra, 16(sp)
	addi  sp, sp, 20
	ret

	.globl  main
	.p2align  2
main:
	addi  sp, sp, -208
	sw  ra, 204(sp)
	sw  s0, 200(sp)
	addi  s0, sp, 208
.mainpara:
	call  globalinit
	addi  t0, s0, -16
	sw  t0, -20(s0)
	addi  t0, s0, -24
	sw  t0, -28(s0)
.main0:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -32(s0)
	lw  a0, -32(s0)
	call  array_size
	sw  a0, -36(s0)
	lw  t0, -36(s0)
	addi  t1, zero, 4
	mul  t2, t0, t1
	sw  t2, -40(s0)
	lw  t0, -40(s0)
	addi  t1, zero, 4
	add  t2, t0, t1
	sw  t2, -44(s0)
	lw  a0, -44(s0)
	call  malloc
	sw  a0, -48(s0)
	addi  t0, s0, -48
	lw  t0, 0(t0)
	lw  t1, -36(s0)
	sw  t1, 0(t0)
	addi  t0, s0, -20
	lw  t0, 0(t0)
	lw  t1, -48(s0)
	sw  t1, 0(t0)
	addi  t0, s0, -28
	lw  t0, 0(t0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main1
.main1:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -52(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	lw  a0, -56(s0)
	call  array_size
	sw  a0, -60(s0)
	lw  t0, -52(s0)
	lw  t1, -60(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -64(s0)
	lw  t0, -64(s0)
	beqz  t0, .main4
	j  .main2
.main2:
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
	addi  t0, s0, -80
	lw  t0, 0(t0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -84(s0)
	lw  t0, -28(s0)
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
	call  getInt
	sw  a0, -100(s0)
	addi  t0, s0, -96
	lw  t0, 0(t0)
	lw  t1, -100(s0)
	sw  t1, 0(t0)
	j  .main3
.main3:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  t0, -104(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -108(s0)
	addi  t0, s0, -28
	lw  t0, 0(t0)
	lw  t1, -108(s0)
	sw  t1, 0(t0)
	j  .main1
.main4:
	addi  t0, s0, -28
	lw  t0, 0(t0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main5
.main5:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -112(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -116(s0)
	lw  a0, -116(s0)
	call  array_size
	sw  a0, -120(s0)
	lw  t0, -112(s0)
	lw  t1, -120(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -124(s0)
	lw  t0, -124(s0)
	beqz  t0, .main8
	j  .main6
.main6:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -128(s0)
	lw  t0, -28(s0)
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
	lw  a0, -144(s0)
	call  toString
	sw  a0, -148(s0)
	lw  a0, -148(s0)
	call  print
	j  .main7
.main7:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -152(s0)
	lw  t0, -152(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -156(s0)
	addi  t0, s0, -28
	lw  t0, 0(t0)
	lw  t1, -156(s0)
	sw  t1, 0(t0)
	j  .main5
.main8:
	la  a0, .$str1
	call  println
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -160(s0)
	la  t0, .@a
	lw  t1, -160(s0)
	sw  t1, 0(t0)
	addi  t0, s0, -28
	lw  t0, 0(t0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main9
.main9:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -164(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -168(s0)
	lw  a0, -168(s0)
	call  array_size
	sw  a0, -172(s0)
	lw  t0, -164(s0)
	lw  t1, -172(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -176(s0)
	lw  t0, -176(s0)
	beqz  t0, .main12
	j  .main10
.main10:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -180(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -184(s0)
	lw  t0, -184(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -188(s0)
	lw  t0, -180(s0)
	lw  t1, -188(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -192(s0)
	lw  t0, -192(s0)
	lw  t0, 0(t0)
	sw  t0, -196(s0)
	lw  a0, -196(s0)
	call  toString
	sw  a0, -200(s0)
	lw  a0, -200(s0)
	call  print
	j  .main11
.main11:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -204(s0)
	lw  t0, -204(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -208(s0)
	addi  t0, s0, -28
	lw  t0, 0(t0)
	lw  t1, -208(s0)
	sw  t1, 0(t0)
	j  .main9
.main12:
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .mainexit
.mainexit:
	lw  a0, -12(s0)
	lw  s0, 200(sp)
	lw  ra, 204(sp)
	addi  sp, sp, 208
	ret

	.section  .bss
	.p2align  2
.@a:
	.word  0

	.section  .rodata
	.p2align  2
.$str1:
	.string  ""

