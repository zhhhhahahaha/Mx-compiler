	.text

	.globl  globalinit
	.p2align  2
globalinit:
	addi  sp, sp, -12
	sw  s0, 8(sp)
	sw  ra, 4(sp)
	addi  s0, sp, 12
.globalinitpara:
.globalinit0:
.globalinitexit:
	lw  a0, -12(s0)
	lw  s0, 8(sp)
	lw  ra, 4(sp)
	addi  sp, sp, 12
	ret

	.globl  main
	.p2align  2
main:
	addi  sp, sp, -12
	sw  s0, 8(sp)
	sw  ra, 4(sp)
	addi  s0, sp, 12
.mainpara:
	call  globalinit
.main0:
	addi  ra, zero, 5
	mv  t0, ra
	addi  ra, zero, 1
	add  ra, t0, ra
	mv  t1, t0
	add  t0, t1, t0
	add  ra, t0, ra
	sw  ra, -12(s0)
	j  .mainexit
.mainexit:
	lw  a0, -12(s0)
	lw  s0, 8(sp)
	lw  ra, 4(sp)
	addi  sp, sp, 12
	ret

