	.text

	.globl  globalinit
	.p2align  2
globalinit:
	addi  sp, sp, -52
	sw  ra, 48(sp)
	sw  s0, 44(sp)
	addi  s0, sp, 52
.globalinitpara:
.globalinit0:
	la  ra, .@n
	lw  ra, 0(ra)
	la  ra, .@a
	lw  ra, 0(ra)
	addi  a0, zero, 84
	call  malloc
	addi  ra, zero, 20
	sw  ra, 0(a0)
	la  ra, .@a
	sw  a0, 0(ra)
	la  ra, .@i
	lw  ra, 0(ra)
.globalinitexit:
	lw  a0, -12(s0)
	lw  ra, 48(sp)
	lw  s0, 44(sp)
	addi  sp, sp, 52
	ret

	.globl  jud
	.p2align  2
jud:
	addi  sp, sp, -68
	sw  ra, 64(sp)
	sw  s0, 60(sp)
	sw  s1, 56(sp)
	sw  s2, 52(sp)
	sw  s3, 48(sp)
	sw  s4, 44(sp)
	sw  s5, 40(sp)
	sw  s6, 36(sp)
	sw  s7, 32(sp)
	sw  s8, 28(sp)
	sw  s9, 24(sp)
	sw  s10, 20(sp)
	sw  s11, 16(sp)
	addi  s0, sp, 68
.judpara:
	addi  a2, s0, -56
	addi  t2, s0, -60
	addi  a1, s0, -64
	addi  t0, s0, -68
.jud0:
	sw  a0, 0(a2)
	addi  ra, zero, 0
	sw  ra, 0(t2)
	j  .jud1
.jud1:
	lw  a0, 0(t2)
	la  ra, .@n
	lw  t1, 0(ra)
	lw  ra, 0(a2)
	div  ra, t1, ra
	sub  ra, a0, ra
	sltz  ra, ra
	beqz  ra, .jud4
	j  .jud2
.jud2:
	mv  ra, zero
	sw  ra, 0(t0)
	addi  ra, zero, 0
	sw  ra, 0(a1)
	j  .jud5
.jud5:
	lw  ra, 0(a1)
	lw  a0, 0(a2)
	addi  t1, zero, 1
	sub  t1, a0, t1
	sub  ra, ra, t1
	sltz  ra, ra
	beqz  ra, .jud8
	j  .jud6
.jud6:
	la  ra, .@a
	lw  t1, 0(ra)
	lw  ra, 0(t2)
	lw  a0, 0(a2)
	mul  ra, ra, a0
	lw  a0, 0(a1)
	add  ra, ra, a0
	addi  a0, zero, 1
	add  ra, ra, a0
	addi  a0, zero, 4
	mul  ra, ra, a0
	add  ra, t1, ra
	lw  t1, 0(ra)
	la  ra, .@a
	lw  a3, 0(ra)
	lw  a0, 0(t2)
	lw  ra, 0(a2)
	mul  ra, a0, ra
	lw  a0, 0(a1)
	add  ra, ra, a0
	addi  a0, zero, 1
	add  a0, ra, a0
	addi  ra, zero, 1
	add  ra, a0, ra
	addi  a0, zero, 4
	mul  ra, ra, a0
	add  ra, a3, ra
	lw  ra, 0(ra)
	sub  ra, t1, ra
	sgtz  ra, ra
	beqz  ra, .jud10
	j  .jud9
.jud9:
	addi  ra, zero, 1
	sw  ra, 0(t0)
	j  .jud11
.jud10:
	j  .jud11
.jud11:
	j  .jud7
.jud7:
	lw  ra, 0(a1)
	addi  t1, zero, 1
	add  ra, ra, t1
	sw  ra, 0(a1)
	j  .jud5
.jud8:
	lw  ra, 0(t0)
	addi  t1, zero, 1
	xor  ra, ra, t1
	beqz  ra, .jud13
	j  .jud12
.jud12:
	addi  ra, zero, 1
	sw  ra, -12(s0)
	j  .judexit
	j  .jud14
.jud13:
	j  .jud14
.jud14:
	j  .jud3
.jud3:
	lw  ra, 0(t2)
	addi  t1, zero, 1
	add  ra, ra, t1
	sw  ra, 0(t2)
	j  .jud1
.jud4:
	addi  ra, zero, 0
	sw  ra, -12(s0)
	j  .judexit
.judexit:
	lw  a0, -12(s0)
	lw  ra, 64(sp)
	lw  s0, 60(sp)
	lw  s1, 56(sp)
	lw  s2, 52(sp)
	lw  s3, 48(sp)
	lw  s4, 44(sp)
	lw  s5, 40(sp)
	lw  s6, 36(sp)
	lw  s7, 32(sp)
	lw  s8, 28(sp)
	lw  s9, 24(sp)
	lw  s10, 20(sp)
	lw  s11, 16(sp)
	addi  sp, sp, 68
	ret

	.globl  main
	.p2align  2
main:
	addi  sp, sp, -52
	sw  ra, 48(sp)
	sw  s0, 44(sp)
	addi  s0, sp, 52
.mainpara:
	call  globalinit
.main0:
	call  getInt
	la  ra, .@n
	sw  a0, 0(ra)
	la  ra, .@i
	addi  t0, zero, 0
	sw  t0, 0(ra)
	j  .main1
.main1:
	la  ra, .@i
	lw  ra, 0(ra)
	la  t0, .@n
	lw  t0, 0(t0)
	sub  ra, ra, t0
	sltz  ra, ra
	beqz  ra, .main4
	j  .main2
.main2:
	la  ra, .@a
	lw  t0, 0(ra)
	la  ra, .@i
	lw  ra, 0(ra)
	addi  t1, zero, 1
	add  ra, ra, t1
	addi  t1, zero, 4
	mul  ra, ra, t1
	add  s1, t0, ra
	call  getInt
	sw  a0, 0(s1)
	j  .main3
.main3:
	la  ra, .@i
	lw  t0, 0(ra)
	addi  ra, zero, 1
	add  ra, t0, ra
	la  t0, .@i
	sw  ra, 0(t0)
	j  .main1
.main4:
	la  ra, .@n
	lw  ra, 0(ra)
	la  t0, .@i
	sw  ra, 0(t0)
	j  .main5
.main5:
	la  ra, .@i
	lw  ra, 0(ra)
	addi  t0, zero, 0
	sub  ra, ra, t0
	sgtz  ra, ra
	beqz  ra, .main8
	j  .main6
.main6:
	la  ra, .@i
	lw  a0, 0(ra)
	call  jud
	addi  ra, zero, 0
	sub  ra, a0, ra
	sgtz  ra, ra
	beqz  ra, .main10
	j  .main9
.main9:
	la  ra, .@i
	lw  a0, 0(ra)
	call  toString
	call  print
	addi  ra, zero, 0
	sw  ra, -12(s0)
	j  .mainexit
	j  .main11
.main10:
	j  .main11
.main11:
	j  .main7
.main7:
	la  ra, .@i
	lw  ra, 0(ra)
	addi  t0, zero, 2
	div  t0, ra, t0
	la  ra, .@i
	sw  t0, 0(ra)
	j  .main5
.main8:
	addi  ra, zero, 0
	sw  ra, -12(s0)
	j  .mainexit
.mainexit:
	lw  a0, -12(s0)
	lw  ra, 48(sp)
	lw  s0, 44(sp)
	addi  sp, sp, 52
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

