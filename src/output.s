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
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -16(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -20(s0)
	addi  a0, zero, 84
	call  malloc
	sw  a0, -24(s0)
	addi  t0, s0, -24
	lw  t0, 0(t0)
	addi  t1, zero, 20
	sw  t1, 0(t0)
	la  t0, .@a
	lw  t1, -24(s0)
	sw  t1, 0(t0)
	la  t0, .@i
	lw  t0, 0(t0)
	sw  t0, -28(s0)
.globalinitexit:
	lw  a0, -12(s0)
	lw  s0, 20(sp)
	lw  ra, 24(sp)
	addi  sp, sp, 28
	ret

	.globl  jud
	.p2align  2
jud:
	addi  sp, sp, -188
	sw  ra, 184(sp)
	sw  s0, 180(sp)
	addi  s0, sp, 188
.judpara:
	sw  a0, -16(s0)
	addi  t0, s0, -20
	sw  t0, -24(s0)
	addi  t0, s0, -28
	sw  t0, -32(s0)
	addi  t0, s0, -36
	sw  t0, -40(s0)
	addi  t0, s0, -44
	sw  t0, -48(s0)
.jud0:
	addi  t0, s0, -24
	lw  t0, 0(t0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	addi  t0, s0, -32
	lw  t0, 0(t0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .jud1
.jud1:
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -52(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -60(s0)
	lw  t0, -56(s0)
	lw  t1, -60(s0)
	div  t2, t0, t1
	sw  t2, -64(s0)
	lw  t0, -52(s0)
	lw  t1, -64(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -68(s0)
	lw  t0, -68(s0)
	beqz  t0, .jud4
	j  .jud2
.jud2:
	addi  t0, s0, -48
	lw  t0, 0(t0)
	mv  t1, zero
	sw  t1, 0(t0)
	addi  t0, s0, -40
	lw  t0, 0(t0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .jud5
.jud5:
	lw  t0, -40(s0)
	lw  t0, 0(t0)
	sw  t0, -72(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -76(s0)
	lw  t0, -76(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	sw  t2, -80(s0)
	lw  t0, -72(s0)
	lw  t1, -80(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -84(s0)
	lw  t0, -84(s0)
	beqz  t0, .jud8
	j  .jud6
.jud6:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -88(s0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -92(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -96(s0)
	lw  t0, -92(s0)
	lw  t1, -96(s0)
	mul  t2, t0, t1
	sw  t2, -100(s0)
	lw  t0, -40(s0)
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  t0, -100(s0)
	lw  t1, -104(s0)
	add  t2, t0, t1
	sw  t2, -108(s0)
	lw  t0, -108(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -112(s0)
	lw  t0, -88(s0)
	lw  t1, -112(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -116(s0)
	lw  t0, -116(s0)
	lw  t0, 0(t0)
	sw  t0, -120(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -124(s0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -128(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -132(s0)
	lw  t0, -128(s0)
	lw  t1, -132(s0)
	mul  t2, t0, t1
	sw  t2, -136(s0)
	lw  t0, -40(s0)
	lw  t0, 0(t0)
	sw  t0, -140(s0)
	lw  t0, -136(s0)
	lw  t1, -140(s0)
	add  t2, t0, t1
	sw  t2, -144(s0)
	lw  t0, -144(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -148(s0)
	lw  t0, -148(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -152(s0)
	lw  t0, -124(s0)
	lw  t1, -152(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -156(s0)
	lw  t0, -156(s0)
	lw  t0, 0(t0)
	sw  t0, -160(s0)
	lw  t0, -120(s0)
	lw  t1, -160(s0)
	sub  t2, t0, t1
	sgtz  t3, t2
	sw  t3, -164(s0)
	lw  t0, -164(s0)
	beqz  t0, .jud10
	j  .jud9
.jud9:
	addi  t0, s0, -48
	lw  t0, 0(t0)
	addi  t1, zero, 1
	sw  t1, 0(t0)
	j  .jud11
.jud10:
	j  .jud11
.jud11:
	j  .jud7
.jud7:
	lw  t0, -40(s0)
	lw  t0, 0(t0)
	sw  t0, -168(s0)
	lw  t0, -168(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -172(s0)
	addi  t0, s0, -40
	lw  t0, 0(t0)
	lw  t1, -172(s0)
	sw  t1, 0(t0)
	j  .jud5
.jud8:
	lw  t0, -48(s0)
	lw  t0, 0(t0)
	sw  t0, -176(s0)
	lw  t0, -176(s0)
	addi  t1, zero, 1
	xor  t2, t0, t1
	sw  t2, -180(s0)
	lw  t0, -180(s0)
	beqz  t0, .jud13
	j  .jud12
.jud12:
	addi  t0, zero, 1
	sw  t0, -12(s0)
	j  .judexit
	j  .jud14
.jud13:
	j  .jud14
.jud14:
	j  .jud3
.jud3:
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -184(s0)
	lw  t0, -184(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -188(s0)
	addi  t0, s0, -32
	lw  t0, 0(t0)
	lw  t1, -188(s0)
	sw  t1, 0(t0)
	j  .jud1
.jud4:
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .judexit
.judexit:
	lw  a0, -12(s0)
	lw  s0, 180(sp)
	lw  ra, 184(sp)
	addi  sp, sp, 188
	ret

	.globl  main
	.p2align  2
main:
	addi  sp, sp, -96
	sw  ra, 92(sp)
	sw  s0, 88(sp)
	addi  s0, sp, 96
.mainpara:
	call  globalinit
.main0:
	call  getInt
	sw  a0, -16(s0)
	la  t0, .@n
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	la  t0, .@i
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main1
.main1:
	la  t0, .@i
	lw  t0, 0(t0)
	sw  t0, -20(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -24(s0)
	lw  t0, -20(s0)
	lw  t1, -24(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -28(s0)
	lw  t0, -28(s0)
	beqz  t0, .main4
	j  .main2
.main2:
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -32(s0)
	la  t0, .@i
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
	call  getInt
	sw  a0, -48(s0)
	addi  t0, s0, -44
	lw  t0, 0(t0)
	lw  t1, -48(s0)
	sw  t1, 0(t0)
	j  .main3
.main3:
	la  t0, .@i
	lw  t0, 0(t0)
	sw  t0, -52(s0)
	lw  t0, -52(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -56(s0)
	la  t0, .@i
	lw  t1, -56(s0)
	sw  t1, 0(t0)
	j  .main1
.main4:
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -60(s0)
	la  t0, .@i
	lw  t1, -60(s0)
	sw  t1, 0(t0)
	j  .main5
.main5:
	la  t0, .@i
	lw  t0, 0(t0)
	sw  t0, -64(s0)
	lw  t0, -64(s0)
	addi  t1, zero, 0
	sub  t2, t0, t1
	sgtz  t3, t2
	sw  t3, -68(s0)
	lw  t0, -68(s0)
	beqz  t0, .main8
	j  .main6
.main6:
	la  t0, .@i
	lw  t0, 0(t0)
	sw  t0, -72(s0)
	lw  a0, -72(s0)
	call  jud
	sw  a0, -76(s0)
	lw  t0, -76(s0)
	addi  t1, zero, 0
	sub  t2, t0, t1
	sgtz  t3, t2
	sw  t3, -80(s0)
	lw  t0, -80(s0)
	beqz  t0, .main10
	j  .main9
.main9:
	la  t0, .@i
	lw  t0, 0(t0)
	sw  t0, -84(s0)
	lw  a0, -84(s0)
	call  toString
	sw  a0, -88(s0)
	lw  a0, -88(s0)
	call  print
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .mainexit
	j  .main11
.main10:
	j  .main11
.main11:
	j  .main7
.main7:
	la  t0, .@i
	lw  t0, 0(t0)
	sw  t0, -92(s0)
	lw  t0, -92(s0)
	addi  t1, zero, 2
	div  t2, t0, t1
	sw  t2, -96(s0)
	la  t0, .@i
	lw  t1, -96(s0)
	sw  t1, 0(t0)
	j  .main5
.main8:
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .mainexit
.mainexit:
	lw  a0, -12(s0)
	lw  s0, 88(sp)
	lw  ra, 92(sp)
	addi  sp, sp, 96
	ret

	.section  .bss
	.p2align  2
.@n:
	.word  0

	.section  .bss
	.p2align  2
.@a:
	.word  0

	.section  .bss
	.p2align  2
.@i:
	.word  0

