	.text

	.globl  globalinit
	.p2align  2
globalinit:
	addi  sp, sp, -24
	sw  ra, 20(sp)
	sw  s0, 16(sp)
	addi  s0, sp, 24
.globalinitpara:
.globalinit0:
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -16(s0)
	la  t0, .@m
	lw  t0, 0(t0)
	sw  t0, -20(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -24(s0)
.globalinitexit:
	lw  a0, -12(s0)
	lw  s0, 16(sp)
	lw  ra, 20(sp)
	addi  sp, sp, 24
	ret

	.globl  main
	.p2align  2
main:
	addi  sp, sp, -80
	sw  ra, 76(sp)
	sw  s0, 72(sp)
	addi  s0, sp, 80
.mainpara:
	call  globalinit
.main0:
	call  getInt
	sw  a0, -16(s0)
	la  t0, .@n
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	call  getInt
	sw  a0, -20(s0)
	la  t0, .@m
	lw  t1, -20(s0)
	sw  t1, 0(t0)
	call  getInt
	sw  a0, -24(s0)
	la  t0, .@a
	lw  t1, -24(s0)
	sw  t1, 0(t0)
	la  t0, .@m
	lw  t0, 0(t0)
	sw  t0, -28(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -32(s0)
	lw  t0, -28(s0)
	lw  t1, -32(s0)
	add  t2, t0, t1
	sw  t2, -36(s0)
	lw  t0, -36(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	sw  t2, -40(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -44(s0)
	lw  t0, -40(s0)
	lw  t1, -44(s0)
	div  t2, t0, t1
	sw  t2, -48(s0)
	la  t0, .@n
	lw  t0, 0(t0)
	sw  t0, -52(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	lw  t0, -52(s0)
	lw  t1, -56(s0)
	add  t2, t0, t1
	sw  t2, -60(s0)
	lw  t0, -60(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	sw  t2, -64(s0)
	la  t0, .@a
	lw  t0, 0(t0)
	sw  t0, -68(s0)
	lw  t0, -64(s0)
	lw  t1, -68(s0)
	div  t2, t0, t1
	sw  t2, -72(s0)
	lw  t0, -48(s0)
	lw  t1, -72(s0)
	mul  t2, t0, t1
	sw  t2, -76(s0)
	lw  a0, -76(s0)
	call  toString
	sw  a0, -80(s0)
	lw  a0, -80(s0)
	call  print
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .mainexit
.mainexit:
	lw  a0, -12(s0)
	lw  s0, 72(sp)
	lw  ra, 76(sp)
	addi  sp, sp, 80
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
.@a:
	.word  0

