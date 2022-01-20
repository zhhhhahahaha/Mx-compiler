	.text

	.globl  globalinit
	.p2align  2
globalinit:
	addi  sp, sp, -100
	sw  ra, 96(sp)
	sw  s0, 92(sp)
	addi  s0, sp, 100
.globalinitpara:
.globalinit0:
	la  t0, .@N
	lw  t0, 0(t0)
	sw  t0, -16(s0)
	la  t0, .@head
	lw  t0, 0(t0)
	sw  t0, -20(s0)
	la  t0, .@startx
	lw  t0, 0(t0)
	sw  t0, -24(s0)
	la  t0, .@starty
	lw  t0, 0(t0)
	sw  t0, -28(s0)
	la  t0, .@targetx
	lw  t0, 0(t0)
	sw  t0, -32(s0)
	la  t0, .@targety
	lw  t0, 0(t0)
	sw  t0, -36(s0)
	la  t0, .@x
	lw  t0, 0(t0)
	sw  t0, -40(s0)
	la  t0, .@y
	lw  t0, 0(t0)
	sw  t0, -44(s0)
	la  t0, .@xlist
	lw  t0, 0(t0)
	sw  t0, -48(s0)
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 923
	call  malloc
	sw  a0, -52(s0)
	addi  t0, s0, -52
	lw  t0, 0(t0)
	addi  t1, zero, 2047
	addi  t1, zero, 2047
	addi  t1, zero, 2047
	addi  t1, zero, 2047
	addi  t1, zero, 2047
	addi  t1, zero, 1765
	sw  t1, 0(t0)
	la  t0, .@xlist
	lw  t1, -52(s0)
	sw  t1, 0(t0)
	la  t0, .@ylist
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 2047
	addi  a0, zero, 923
	call  malloc
	sw  a0, -60(s0)
	addi  t0, s0, -60
	lw  t0, 0(t0)
	addi  t1, zero, 2047
	addi  t1, zero, 2047
	addi  t1, zero, 2047
	addi  t1, zero, 2047
	addi  t1, zero, 2047
	addi  t1, zero, 1765
	sw  t1, 0(t0)
	la  t0, .@ylist
	lw  t1, -60(s0)
	sw  t1, 0(t0)
	la  t0, .@tail
	lw  t0, 0(t0)
	sw  t0, -64(s0)
	la  t0, .@ok
	lw  t0, 0(t0)
	sw  t0, -68(s0)
	la  t0, .@now
	lw  t0, 0(t0)
	sw  t0, -72(s0)
	la  t0, .@dx
	lw  t0, 0(t0)
	sw  t0, -76(s0)
	addi  a0, zero, 36
	call  malloc
	sw  a0, -80(s0)
	addi  t0, s0, -80
	lw  t0, 0(t0)
	addi  t1, zero, 8
	sw  t1, 0(t0)
	la  t0, .@dx
	lw  t1, -80(s0)
	sw  t1, 0(t0)
	la  t0, .@dy
	lw  t0, 0(t0)
	sw  t0, -84(s0)
	addi  a0, zero, 40
	call  malloc
	sw  a0, -88(s0)
	addi  t0, s0, -88
	lw  t0, 0(t0)
	addi  t1, zero, 9
	sw  t1, 0(t0)
	la  t0, .@dy
	lw  t1, -88(s0)
	sw  t1, 0(t0)
	la  t0, .@step
	lw  t0, 0(t0)
	sw  t0, -92(s0)
	la  t0, .@i
	lw  t0, 0(t0)
	sw  t0, -96(s0)
	la  t0, .@j
	lw  t0, 0(t0)
	sw  t0, -100(s0)
.globalinitexit:
	lw  a0, -12(s0)
	lw  s0, 92(sp)
	lw  ra, 96(sp)
	addi  sp, sp, 100
	ret

	.globl  origin
	.p2align  2
origin:
	addi  sp, sp, -144
	sw  ra, 140(sp)
	sw  s0, 136(sp)
	addi  s0, sp, 144
.originpara:
	sw  a0, -16(s0)
	addi  t0, s0, -20
	sw  t0, -24(s0)
.origin0:
	addi  t0, s0, -24
	lw  t0, 0(t0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	la  t0, .@head
	addi  t1, zero, 0
	sw  t1, 0(t0)
	la  t0, .@tail
	addi  t1, zero, 0
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -28(s0)
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
	addi  t0, s0, -40
	lw  t0, 0(t0)
	lw  t1, -28(s0)
	sw  t1, 0(t0)
	la  t0, .@step
	lw  t1, -40(s0)
	sw  t1, 0(t0)
	la  t0, .@i
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .origin1
.origin1:
	la  t0, .@i
	lw  t0, 0(t0)
	sw  t0, -44(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -48(s0)
	lw  t0, -44(s0)
	lw  t1, -48(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -52(s0)
	lw  t0, -52(s0)
	beqz  t0, .origin4
	j  .origin2
.origin2:
	la  t0, .@step
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	la  t0, .@i
	lw  t0, 0(t0)
	sw  t0, -60(s0)
	lw  t0, -60(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -64(s0)
	lw  t0, -56(s0)
	lw  t1, -64(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -68(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -72(s0)
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
	addi  t0, s0, -84
	lw  t0, 0(t0)
	lw  t1, -72(s0)
	sw  t1, 0(t0)
	addi  t0, s0, -68
	lw  t0, 0(t0)
	lw  t1, -84(s0)
	sw  t1, 0(t0)
	la  t0, .@j
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .origin5
.origin5:
	la  t0, .@j
	lw  t0, 0(t0)
	sw  t0, -88(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -92(s0)
	lw  t0, -88(s0)
	lw  t1, -92(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -96(s0)
	lw  t0, -96(s0)
	beqz  t0, .origin8
	j  .origin6
.origin6:
	la  t0, .@step
	lw  t0, 0(t0)
	sw  t0, -100(s0)
	la  t0, .@i
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  t0, -104(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -108(s0)
	lw  t0, -100(s0)
	lw  t1, -108(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -112(s0)
	lw  t0, -112(s0)
	lw  t0, 0(t0)
	sw  t0, -116(s0)
	la  t0, .@j
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
	addi  t0, s0, -128
	lw  t0, 0(t0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .origin7
.origin7:
	la  t0, .@j
	lw  t0, 0(t0)
	sw  t0, -132(s0)
	lw  t0, -132(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -136(s0)
	la  t0, .@j
	lw  t1, -136(s0)
	sw  t1, 0(t0)
	j  .origin5
.origin8:
	j  .origin3
.origin3:
	la  t0, .@i
	lw  t0, 0(t0)
	sw  t0, -140(s0)
	lw  t0, -140(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -144(s0)
	la  t0, .@i
	lw  t1, -144(s0)
	sw  t1, 0(t0)
	j  .origin1
.origin4:
.originexit:
	lw  a0, -12(s0)
	lw  s0, 136(sp)
	lw  ra, 140(sp)
	addi  sp, sp, 144
	ret

	.globl  check
	.p2align  2
check:
	addi  sp, sp, -48
	sw  ra, 44(sp)
	sw  s0, 40(sp)
	addi  s0, sp, 48
.checkpara:
	sw  a0, -16(s0)
	addi  t0, s0, -20
	sw  t0, -24(s0)
.check0:
	addi  t0, s0, -24
	lw  t0, 0(t0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -28(s0)
	la  t0, .@N
	lw  t0, 0(t0)
	sw  t0, -32(s0)
	lw  t0, -28(s0)
	lw  t1, -32(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -36(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -40(s0)
	lw  t0, -40(s0)
	addi  t1, zero, 0
	sub  t2, t0, t1
	sgtz  t3, t2
	seqz  t4, t2
	or  t5, t3, t4
	sw  t5, -44(s0)
	lw  t0, -36(s0)
	lw  t1, -44(s0)
	and  t2, t0, t1
	sw  t2, -48(s0)
	lw  t0, -48(s0)
	sw  t0, -12(s0)
	j  .checkexit
.checkexit:
	lw  a0, -12(s0)
	lw  s0, 40(sp)
	lw  ra, 44(sp)
	addi  sp, sp, 48
	ret

	.globl  addList
	.p2align  2
addList:
	addi  sp, sp, -216
	sw  ra, 212(sp)
	sw  s0, 208(sp)
	addi  s0, sp, 216
.addListpara:
	sw  a0, -16(s0)
	sw  a1, -20(s0)
	addi  t0, s0, -24
	sw  t0, -28(s0)
	addi  t0, s0, -32
	sw  t0, -36(s0)
.addList0:
	addi  t0, s0, -28
	lw  t0, 0(t0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	addi  t0, s0, -36
	lw  t0, 0(t0)
	lw  t1, -20(s0)
	sw  t1, 0(t0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -40(s0)
	lw  a0, -40(s0)
	call  check
	sw  a0, -44(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -48(s0)
	lw  a0, -48(s0)
	call  check
	sw  a0, -52(s0)
	lw  t0, -44(s0)
	lw  t1, -52(s0)
	and  t2, t0, t1
	sw  t2, -56(s0)
	la  t0, .@step
	lw  t0, 0(t0)
	sw  t0, -60(s0)
	lw  t0, -28(s0)
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
	lw  t0, -36(s0)
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
	lw  t0, -92(s0)
	addi  t1, zero, -1
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -96(s0)
	lw  t0, -56(s0)
	lw  t1, -96(s0)
	and  t2, t0, t1
	sw  t2, -100(s0)
	lw  t0, -100(s0)
	beqz  t0, .addList2
	j  .addList1
.addList1:
	la  t0, .@tail
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  t0, -104(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -108(s0)
	la  t0, .@tail
	lw  t1, -108(s0)
	sw  t1, 0(t0)
	la  t0, .@xlist
	lw  t0, 0(t0)
	sw  t0, -112(s0)
	la  t0, .@tail
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
	addi  t0, s0, -124
	lw  t0, 0(t0)
	lw  t1, -128(s0)
	sw  t1, 0(t0)
	la  t0, .@ylist
	lw  t0, 0(t0)
	sw  t0, -132(s0)
	la  t0, .@tail
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
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -148(s0)
	addi  t0, s0, -144
	lw  t0, 0(t0)
	lw  t1, -148(s0)
	sw  t1, 0(t0)
	la  t0, .@step
	lw  t0, 0(t0)
	sw  t0, -152(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -156(s0)
	lw  t0, -156(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -160(s0)
	lw  t0, -152(s0)
	lw  t1, -160(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -164(s0)
	lw  t0, -164(s0)
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
	la  t0, .@now
	lw  t0, 0(t0)
	sw  t0, -184(s0)
	lw  t0, -184(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -188(s0)
	addi  t0, s0, -180
	lw  t0, 0(t0)
	lw  t1, -188(s0)
	sw  t1, 0(t0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -192(s0)
	la  t0, .@targetx
	lw  t0, 0(t0)
	sw  t0, -196(s0)
	lw  t0, -192(s0)
	lw  t1, -196(s0)
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -200(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -204(s0)
	la  t0, .@targety
	lw  t0, 0(t0)
	sw  t0, -208(s0)
	lw  t0, -204(s0)
	lw  t1, -208(s0)
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -212(s0)
	lw  t0, -200(s0)
	lw  t1, -212(s0)
	and  t2, t0, t1
	sw  t2, -216(s0)
	lw  t0, -216(s0)
	beqz  t0, .addList5
	j  .addList4
.addList4:
	la  t0, .@ok
	addi  t1, zero, 1
	sw  t1, 0(t0)
	j  .addList6
.addList5:
	j  .addList6
.addList6:
	j  .addList3
.addList2:
	j  .addList3
.addList3:
.addListexit:
	lw  a0, -12(s0)
	lw  s0, 208(sp)
	lw  ra, 212(sp)
	addi  sp, sp, 216
	ret

	.globl  main
	.p2align  2
main:
	addi  sp, sp, -452
	sw  ra, 448(sp)
	sw  s0, 444(sp)
	addi  s0, sp, 452
.mainpara:
	call  globalinit
.main0:
	addi  a0, zero, 106
	call  origin
	call  getInt
	sw  a0, -16(s0)
	la  t0, .@N
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	la  t0, .@N
	lw  t0, 0(t0)
	sw  t0, -20(s0)
	lw  t0, -20(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	sw  t2, -24(s0)
	la  t0, .@targety
	lw  t1, -24(s0)
	sw  t1, 0(t0)
	la  t0, .@targety
	lw  t0, 0(t0)
	sw  t0, -28(s0)
	la  t0, .@targetx
	lw  t1, -28(s0)
	sw  t1, 0(t0)
	la  t0, .@i
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main1
.main1:
	la  t0, .@i
	lw  t0, 0(t0)
	sw  t0, -32(s0)
	la  t0, .@N
	lw  t0, 0(t0)
	sw  t0, -36(s0)
	lw  t0, -32(s0)
	lw  t1, -36(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -40(s0)
	lw  t0, -40(s0)
	beqz  t0, .main4
	j  .main2
.main2:
	la  t0, .@j
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main5
.main5:
	la  t0, .@j
	lw  t0, 0(t0)
	sw  t0, -44(s0)
	la  t0, .@N
	lw  t0, 0(t0)
	sw  t0, -48(s0)
	lw  t0, -44(s0)
	lw  t1, -48(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -52(s0)
	lw  t0, -52(s0)
	beqz  t0, .main8
	j  .main6
.main6:
	la  t0, .@step
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	la  t0, .@i
	lw  t0, 0(t0)
	sw  t0, -60(s0)
	lw  t0, -60(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -64(s0)
	lw  t0, -56(s0)
	lw  t1, -64(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -68(s0)
	lw  t0, -68(s0)
	lw  t0, 0(t0)
	sw  t0, -72(s0)
	la  t0, .@j
	lw  t0, 0(t0)
	sw  t0, -76(s0)
	lw  t0, -76(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -80(s0)
	lw  t0, -72(s0)
	lw  t1, -80(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -84(s0)
	addi  t0, s0, -84
	lw  t0, 0(t0)
	addi  t1, zero, -1
	sw  t1, 0(t0)
	j  .main7
.main7:
	la  t0, .@j
	lw  t0, 0(t0)
	sw  t0, -88(s0)
	lw  t0, -88(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -92(s0)
	la  t0, .@j
	lw  t1, -92(s0)
	sw  t1, 0(t0)
	j  .main5
.main8:
	j  .main3
.main3:
	la  t0, .@i
	lw  t0, 0(t0)
	sw  t0, -96(s0)
	lw  t0, -96(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -100(s0)
	la  t0, .@i
	lw  t1, -100(s0)
	sw  t1, 0(t0)
	j  .main1
.main4:
	la  t0, .@dx
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  t0, -104(s0)
	addi  t1, t0, 4
	sw  t1, -108(s0)
	addi  t0, s0, -108
	lw  t0, 0(t0)
	addi  t1, zero, -2
	sw  t1, 0(t0)
	la  t0, .@dy
	lw  t0, 0(t0)
	sw  t0, -112(s0)
	lw  t0, -112(s0)
	addi  t1, t0, 4
	sw  t1, -116(s0)
	addi  t0, s0, -116
	lw  t0, 0(t0)
	addi  t1, zero, -1
	sw  t1, 0(t0)
	la  t0, .@dx
	lw  t0, 0(t0)
	sw  t0, -120(s0)
	lw  t0, -120(s0)
	addi  t1, t0, 8
	sw  t1, -124(s0)
	addi  t0, s0, -124
	lw  t0, 0(t0)
	addi  t1, zero, -2
	sw  t1, 0(t0)
	la  t0, .@dy
	lw  t0, 0(t0)
	sw  t0, -128(s0)
	lw  t0, -128(s0)
	addi  t1, t0, 8
	sw  t1, -132(s0)
	addi  t0, s0, -132
	lw  t0, 0(t0)
	addi  t1, zero, 1
	sw  t1, 0(t0)
	la  t0, .@dx
	lw  t0, 0(t0)
	sw  t0, -136(s0)
	lw  t0, -136(s0)
	addi  t1, t0, 12
	sw  t1, -140(s0)
	addi  t0, s0, -140
	lw  t0, 0(t0)
	addi  t1, zero, 2
	sw  t1, 0(t0)
	la  t0, .@dy
	lw  t0, 0(t0)
	sw  t0, -144(s0)
	lw  t0, -144(s0)
	addi  t1, t0, 12
	sw  t1, -148(s0)
	addi  t0, s0, -148
	lw  t0, 0(t0)
	addi  t1, zero, -1
	sw  t1, 0(t0)
	la  t0, .@dx
	lw  t0, 0(t0)
	sw  t0, -152(s0)
	lw  t0, -152(s0)
	addi  t1, t0, 16
	sw  t1, -156(s0)
	addi  t0, s0, -156
	lw  t0, 0(t0)
	addi  t1, zero, 2
	sw  t1, 0(t0)
	la  t0, .@dy
	lw  t0, 0(t0)
	sw  t0, -160(s0)
	lw  t0, -160(s0)
	addi  t1, t0, 16
	sw  t1, -164(s0)
	addi  t0, s0, -164
	lw  t0, 0(t0)
	addi  t1, zero, 1
	sw  t1, 0(t0)
	la  t0, .@dx
	lw  t0, 0(t0)
	sw  t0, -168(s0)
	lw  t0, -168(s0)
	addi  t1, t0, 20
	sw  t1, -172(s0)
	addi  t0, s0, -172
	lw  t0, 0(t0)
	addi  t1, zero, -1
	sw  t1, 0(t0)
	la  t0, .@dy
	lw  t0, 0(t0)
	sw  t0, -176(s0)
	lw  t0, -176(s0)
	addi  t1, t0, 20
	sw  t1, -180(s0)
	addi  t0, s0, -180
	lw  t0, 0(t0)
	addi  t1, zero, -2
	sw  t1, 0(t0)
	la  t0, .@dx
	lw  t0, 0(t0)
	sw  t0, -184(s0)
	lw  t0, -184(s0)
	addi  t1, t0, 24
	sw  t1, -188(s0)
	addi  t0, s0, -188
	lw  t0, 0(t0)
	addi  t1, zero, -1
	sw  t1, 0(t0)
	la  t0, .@dy
	lw  t0, 0(t0)
	sw  t0, -192(s0)
	lw  t0, -192(s0)
	addi  t1, t0, 24
	sw  t1, -196(s0)
	addi  t0, s0, -196
	lw  t0, 0(t0)
	addi  t1, zero, 2
	sw  t1, 0(t0)
	la  t0, .@dx
	lw  t0, 0(t0)
	sw  t0, -200(s0)
	lw  t0, -200(s0)
	addi  t1, t0, 28
	sw  t1, -204(s0)
	addi  t0, s0, -204
	lw  t0, 0(t0)
	addi  t1, zero, 1
	sw  t1, 0(t0)
	la  t0, .@dy
	lw  t0, 0(t0)
	sw  t0, -208(s0)
	lw  t0, -208(s0)
	addi  t1, t0, 28
	sw  t1, -212(s0)
	addi  t0, s0, -212
	lw  t0, 0(t0)
	addi  t1, zero, -2
	sw  t1, 0(t0)
	la  t0, .@dx
	lw  t0, 0(t0)
	sw  t0, -216(s0)
	lw  t0, -216(s0)
	addi  t1, t0, 32
	sw  t1, -220(s0)
	addi  t0, s0, -220
	lw  t0, 0(t0)
	addi  t1, zero, 1
	sw  t1, 0(t0)
	la  t0, .@dy
	lw  t0, 0(t0)
	sw  t0, -224(s0)
	lw  t0, -224(s0)
	addi  t1, t0, 32
	sw  t1, -228(s0)
	addi  t0, s0, -228
	lw  t0, 0(t0)
	addi  t1, zero, 2
	sw  t1, 0(t0)
	j  .main9
.main9:
	la  t0, .@head
	lw  t0, 0(t0)
	sw  t0, -232(s0)
	la  t0, .@tail
	lw  t0, 0(t0)
	sw  t0, -236(s0)
	lw  t0, -232(s0)
	lw  t1, -236(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	seqz  t4, t2
	or  t5, t3, t4
	sw  t5, -240(s0)
	lw  t0, -240(s0)
	beqz  t0, .main11
	j  .main10
.main10:
	la  t0, .@xlist
	lw  t0, 0(t0)
	sw  t0, -244(s0)
	la  t0, .@head
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
	la  t0, .@x
	lw  t1, -260(s0)
	sw  t1, 0(t0)
	la  t0, .@ylist
	lw  t0, 0(t0)
	sw  t0, -264(s0)
	la  t0, .@head
	lw  t0, 0(t0)
	sw  t0, -268(s0)
	lw  t0, -268(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -272(s0)
	lw  t0, -264(s0)
	lw  t1, -272(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -276(s0)
	lw  t0, -276(s0)
	lw  t0, 0(t0)
	sw  t0, -280(s0)
	la  t0, .@y
	lw  t1, -280(s0)
	sw  t1, 0(t0)
	la  t0, .@step
	lw  t0, 0(t0)
	sw  t0, -284(s0)
	la  t0, .@x
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
	la  t0, .@y
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
	lw  t0, -312(s0)
	lw  t0, 0(t0)
	sw  t0, -316(s0)
	la  t0, .@now
	lw  t1, -316(s0)
	sw  t1, 0(t0)
	la  t0, .@j
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main12
.main12:
	la  t0, .@j
	lw  t0, 0(t0)
	sw  t0, -320(s0)
	lw  t0, -320(s0)
	addi  t1, zero, 8
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -324(s0)
	lw  t0, -324(s0)
	beqz  t0, .main15
	j  .main13
.main13:
	la  t0, .@x
	lw  t0, 0(t0)
	sw  t0, -328(s0)
	la  t0, .@dx
	lw  t0, 0(t0)
	sw  t0, -332(s0)
	la  t0, .@j
	lw  t0, 0(t0)
	sw  t0, -336(s0)
	lw  t0, -336(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -340(s0)
	lw  t0, -332(s0)
	lw  t1, -340(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -344(s0)
	lw  t0, -344(s0)
	lw  t0, 0(t0)
	sw  t0, -348(s0)
	lw  t0, -328(s0)
	lw  t1, -348(s0)
	add  t2, t0, t1
	sw  t2, -352(s0)
	la  t0, .@y
	lw  t0, 0(t0)
	sw  t0, -356(s0)
	la  t0, .@dy
	lw  t0, 0(t0)
	sw  t0, -360(s0)
	la  t0, .@j
	lw  t0, 0(t0)
	sw  t0, -364(s0)
	lw  t0, -364(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -368(s0)
	lw  t0, -360(s0)
	lw  t1, -368(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -372(s0)
	lw  t0, -372(s0)
	lw  t0, 0(t0)
	sw  t0, -376(s0)
	lw  t0, -356(s0)
	lw  t1, -376(s0)
	add  t2, t0, t1
	sw  t2, -380(s0)
	lw  a0, -352(s0)
	lw  a1, -380(s0)
	call  addList
	j  .main14
.main14:
	la  t0, .@j
	lw  t0, 0(t0)
	sw  t0, -384(s0)
	lw  t0, -384(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -388(s0)
	la  t0, .@j
	lw  t1, -388(s0)
	sw  t1, 0(t0)
	j  .main12
.main15:
	la  t0, .@ok
	lw  t0, 0(t0)
	sw  t0, -392(s0)
	lw  t0, -392(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -396(s0)
	lw  t0, -396(s0)
	beqz  t0, .main17
	j  .main16
.main16:
	j  .main11
	j  .main18
.main17:
	j  .main18
.main18:
	la  t0, .@head
	lw  t0, 0(t0)
	sw  t0, -400(s0)
	lw  t0, -400(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -404(s0)
	la  t0, .@head
	lw  t1, -404(s0)
	sw  t1, 0(t0)
	j  .main9
.main11:
	la  t0, .@ok
	lw  t0, 0(t0)
	sw  t0, -408(s0)
	lw  t0, -408(s0)
	addi  t1, zero, 1
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -412(s0)
	lw  t0, -412(s0)
	beqz  t0, .main20
	j  .main19
.main19:
	la  t0, .@step
	lw  t0, 0(t0)
	sw  t0, -416(s0)
	la  t0, .@targetx
	lw  t0, 0(t0)
	sw  t0, -420(s0)
	lw  t0, -420(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -424(s0)
	lw  t0, -416(s0)
	lw  t1, -424(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -428(s0)
	lw  t0, -428(s0)
	lw  t0, 0(t0)
	sw  t0, -432(s0)
	la  t0, .@targety
	lw  t0, 0(t0)
	sw  t0, -436(s0)
	lw  t0, -436(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -440(s0)
	lw  t0, -432(s0)
	lw  t1, -440(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -444(s0)
	lw  t0, -444(s0)
	lw  t0, 0(t0)
	sw  t0, -448(s0)
	lw  a0, -448(s0)
	call  toString
	sw  a0, -452(s0)
	lw  a0, -452(s0)
	call  println
	j  .main21
.main20:
	la  a0, .$str1
	call  print
	j  .main21
.main21:
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .mainexit
.mainexit:
	lw  a0, -12(s0)
	lw  s0, 444(sp)
	lw  ra, 448(sp)
	addi  sp, sp, 452
	ret

	.section  .bss
	.p2align  2
.@N:
	.word  0

	.section  .bss
	.p2align  2
.@head:
	.word  0

	.section  .bss
	.p2align  2
.@startx:
	.word  0

	.section  .bss
	.p2align  2
.@starty:
	.word  0

	.section  .bss
	.p2align  2
.@targetx:
	.word  0

	.section  .bss
	.p2align  2
.@targety:
	.word  0

	.section  .bss
	.p2align  2
.@x:
	.word  0

	.section  .bss
	.p2align  2
.@y:
	.word  0

	.section  .bss
	.p2align  2
.@xlist:
	.word  0

	.section  .bss
	.p2align  2
.@ylist:
	.word  0

	.section  .bss
	.p2align  2
.@tail:
	.word  0

	.section  .bss
	.p2align  2
.@ok:
	.word  0

	.section  .bss
	.p2align  2
.@now:
	.word  0

	.section  .bss
	.p2align  2
.@dx:
	.word  0

	.section  .bss
	.p2align  2
.@dy:
	.word  0

	.section  .bss
	.p2align  2
.@step:
	.word  0

	.section  .bss
	.p2align  2
.@i:
	.word  0

	.section  .bss
	.p2align  2
.@j:
	.word  0

	.section  .rodata
	.p2align  2
.$str1:
	.string  "no solution!\n"

