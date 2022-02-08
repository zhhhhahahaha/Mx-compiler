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
	la  ra, .@make
	lw  ra, 0(ra)
	la  ra, .@color
	lw  ra, 0(ra)
	addi  a0, zero, 44
	call  malloc
	addi  ra, zero, 10
	sw  ra, 0(a0)
	la  ra, .@color
	sw  a0, 0(ra)
	la  ra, .@count
	lw  ra, 0(ra)
	addi  a0, zero, 8
	call  malloc
	addi  ra, zero, 1
	sw  ra, 0(a0)
	la  ra, .@count
	sw  a0, 0(ra)
	la  ra, .@i
	lw  ra, 0(ra)
	la  ra, .@j
	lw  ra, 0(ra)
.globalinitexit:
	lw  a0, -12(s0)
	lw  s0, 8(sp)
	lw  ra, 4(sp)
	addi  sp, sp, 12
	ret

	.globl  origin
	.p2align  2
origin:
	addi  sp, sp, -16
	sw  s0, 12(sp)
	sw  ra, 8(sp)
	addi  s0, sp, 16
.originpara:
	addi  s1, s0, -16
.origin0:
	sw  a0, 0(s1)
	lw  s2, 0(s1)
	addi  ra, zero, 4
	mul  t0, s2, ra
	addi  ra, zero, 4
	add  a0, t0, ra
	call  malloc
	sw  s2, 0(a0)
	la  ra, .@make
	sw  a0, 0(ra)
	la  t0, .@i
	addi  ra, zero, 0
	sw  ra, 0(t0)
	j  .origin1
.origin1:
	la  ra, .@i
	lw  ra, 0(ra)
	lw  t0, 0(s1)
	sub  ra, ra, t0
	sltz  ra, ra
	beqz  ra, .origin4
	j  .origin2
.origin2:
	la  ra, .@make
	lw  t1, 0(ra)
	la  ra, .@i
	lw  t0, 0(ra)
	addi  ra, zero, 1
	add  ra, t0, ra
	addi  t0, zero, 4
	mul  ra, ra, t0
	add  s2, t1, ra
	lw  s3, 0(s1)
	addi  ra, zero, 4
	mul  t0, s3, ra
	addi  ra, zero, 4
	add  a0, t0, ra
	call  malloc
	sw  s3, 0(a0)
	sw  a0, 0(s2)
	la  ra, .@j
	addi  t0, zero, 0
	sw  t0, 0(ra)
	j  .origin5
.origin5:
	la  ra, .@j
	lw  t0, 0(ra)
	lw  ra, 0(s1)
	sub  ra, t0, ra
	sltz  ra, ra
	beqz  ra, .origin8
	j  .origin6
.origin6:
	la  ra, .@make
	lw  t0, 0(ra)
	la  ra, .@i
	lw  ra, 0(ra)
	addi  t1, zero, 1
	add  ra, ra, t1
	addi  t1, zero, 4
	mul  ra, ra, t1
	add  ra, t0, ra
	lw  t1, 0(ra)
	la  ra, .@j
	lw  t0, 0(ra)
	addi  ra, zero, 1
	add  t0, t0, ra
	addi  ra, zero, 4
	mul  ra, t0, ra
	add  t0, t1, ra
	addi  ra, zero, 0
	sw  ra, 0(t0)
	j  .origin7
.origin7:
	la  ra, .@j
	lw  t0, 0(ra)
	addi  ra, zero, 1
	add  t0, t0, ra
	la  ra, .@j
	sw  t0, 0(ra)
	j  .origin5
.origin8:
	j  .origin3
.origin3:
	la  ra, .@i
	lw  t0, 0(ra)
	addi  ra, zero, 1
	add  t0, t0, ra
	la  ra, .@i
	sw  t0, 0(ra)
	j  .origin1
.origin4:
.originexit:
	lw  a0, -12(s0)
	lw  s0, 12(sp)
	lw  ra, 8(sp)
	addi  sp, sp, 16
	ret

	.globl  search
	.p2align  2
search:
	addi  sp, sp, -84
	sw  s0, 80(sp)
	sw  ra, 76(sp)
	addi  s0, sp, 84
.searchpara:
	addi  s3, s0, -16
	addi  s1, s0, -20
	addi  s4, s0, -24
	addi  a5, s0, -28
	addi  s2, s0, -32
	addi  s5, s0, -36
	addi  s7, s0, -40
	addi  s6, s0, -44
	addi  t6, s0, -48
	addi  t5, s0, -52
	addi  t3, s0, -56
	addi  t4, s0, -60
	addi  a6, s0, -64
	addi  t1, s0, -68
	addi  a3, s0, -72
	addi  t2, s0, -76
	addi  a7, s0, -80
	addi  a4, s0, -84
.search0:
	sw  a0, 0(s3)
	sw  a1, 0(s1)
	sw  a2, 0(s4)
	lw  t0, 0(s1)
	addi  ra, zero, 0
	sub  ra, t0, ra
	sgtz  t0, ra
	mv  ra, zero
	or  ra, t0, ra
	sw  t0, 0(s7)
	beqz  ra, .search4
	j  .search5
.search4:
	lw  t0, 0(s1)
	addi  ra, zero, 0
	sub  ra, t0, ra
	sltz  ra, ra
	sw  ra, 0(s7)
	j  .search5
.search5:
	lw  t0, 0(s7)
	mv  ra, zero
	or  ra, t0, ra
	sw  t0, 0(s6)
	beqz  ra, .search6
	j  .search7
.search6:
	lw  t0, 0(s3)
	addi  ra, zero, 0
	sub  ra, t0, ra
	seqz  ra, ra
	sw  ra, 0(s6)
	j  .search7
.search7:
	lw  t0, 0(s6)
	mv  ra, zero
	or  ra, t0, ra
	sw  t0, 0(t6)
	beqz  ra, .search8
	j  .search9
.search8:
	la  ra, .@make
	lw  t0, 0(ra)
	lw  a0, 0(s3)
	addi  ra, zero, 1
	sub  a0, a0, ra
	addi  ra, zero, 1
	add  ra, a0, ra
	addi  a0, zero, 4
	mul  ra, ra, a0
	add  ra, t0, ra
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  t0, 0(ra)
	la  ra, .@make
	lw  a1, 0(ra)
	lw  a0, 0(s3)
	addi  ra, zero, 1
	sub  ra, a0, ra
	addi  a0, zero, 1
	add  a0, ra, a0
	addi  ra, zero, 4
	mul  ra, a0, ra
	add  ra, a1, ra
	lw  ra, 0(ra)
	addi  ra, ra, 8
	lw  ra, 0(ra)
	add  a1, t0, ra
	la  ra, .@make
	lw  a0, 0(ra)
	lw  ra, 0(s3)
	addi  t0, zero, 1
	sub  t0, ra, t0
	addi  ra, zero, 1
	add  ra, t0, ra
	addi  t0, zero, 4
	mul  ra, ra, t0
	add  ra, a0, ra
	lw  ra, 0(ra)
	addi  ra, ra, 12
	lw  ra, 0(ra)
	add  ra, a1, ra
	addi  t0, zero, 15
	sub  ra, ra, t0
	seqz  ra, ra
	sw  ra, 0(t6)
	j  .search9
.search9:
	lw  ra, 0(t6)
	beqz  ra, .search2
	j  .search1
.search1:
	lw  t0, 0(s3)
	addi  ra, zero, 2
	sub  ra, t0, ra
	seqz  ra, ra
	addi  t0, zero, 1
	xor  t0, ra, t0
	sw  ra, 0(t5)
	beqz  t0, .search13
	j  .search14
.search13:
	lw  t0, 0(s1)
	addi  ra, zero, 2
	sub  ra, t0, ra
	seqz  ra, ra
	sw  ra, 0(t5)
	j  .search14
.search14:
	lw  ra, 0(t5)
	beqz  ra, .search11
	j  .search10
.search10:
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 12
	lw  ra, 0(ra)
	addi  t0, ra, 12
	lw  ra, 0(s4)
	addi  a0, zero, 45
	sub  ra, a0, ra
	sw  ra, 0(t0)
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  t0, 0(ra)
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  ra, 0(ra)
	addi  ra, ra, 8
	lw  ra, 0(ra)
	add  t0, t0, ra
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  ra, 0(ra)
	addi  ra, ra, 12
	lw  ra, 0(ra)
	add  ra, t0, ra
	sw  ra, 0(a5)
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 8
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  t0, 0(ra)
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 8
	lw  ra, 0(ra)
	addi  ra, ra, 8
	lw  ra, 0(ra)
	add  t0, t0, ra
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 8
	lw  ra, 0(ra)
	addi  ra, ra, 12
	lw  ra, 0(ra)
	add  t0, t0, ra
	lw  ra, 0(a5)
	sub  ra, t0, ra
	seqz  t0, ra
	addi  ra, zero, 1
	xor  ra, t0, ra
	sw  t0, 0(t3)
	beqz  ra, .search18
	j  .search19
.search18:
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 12
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  t0, 0(ra)
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 12
	lw  ra, 0(ra)
	addi  ra, ra, 8
	lw  ra, 0(ra)
	add  t0, t0, ra
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 12
	lw  ra, 0(ra)
	addi  ra, ra, 12
	lw  ra, 0(ra)
	add  ra, t0, ra
	lw  t0, 0(a5)
	sub  ra, ra, t0
	seqz  ra, ra
	sw  ra, 0(t3)
	j  .search19
.search19:
	lw  t0, 0(t3)
	addi  ra, zero, 1
	xor  ra, t0, ra
	sw  t0, 0(t4)
	beqz  ra, .search20
	j  .search21
.search20:
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  t0, 0(ra)
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 8
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  ra, 0(ra)
	add  ra, t0, ra
	la  t0, .@make
	lw  t0, 0(t0)
	addi  t0, t0, 12
	lw  t0, 0(t0)
	addi  t0, t0, 4
	lw  t0, 0(t0)
	add  ra, ra, t0
	lw  t0, 0(a5)
	sub  ra, ra, t0
	seqz  ra, ra
	sw  ra, 0(t4)
	j  .search21
.search21:
	lw  ra, 0(t4)
	addi  t0, zero, 1
	xor  t0, ra, t0
	sw  ra, 0(a6)
	beqz  t0, .search22
	j  .search23
.search22:
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  ra, 0(ra)
	addi  ra, ra, 8
	lw  t0, 0(ra)
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 8
	lw  ra, 0(ra)
	addi  ra, ra, 8
	lw  ra, 0(ra)
	add  t0, t0, ra
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 12
	lw  ra, 0(ra)
	addi  ra, ra, 8
	lw  ra, 0(ra)
	add  t0, t0, ra
	lw  ra, 0(a5)
	sub  ra, t0, ra
	seqz  ra, ra
	sw  ra, 0(a6)
	j  .search23
.search23:
	lw  t0, 0(a6)
	addi  ra, zero, 1
	xor  ra, t0, ra
	sw  t0, 0(t1)
	beqz  ra, .search24
	j  .search25
.search24:
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  ra, 0(ra)
	addi  ra, ra, 12
	lw  t0, 0(ra)
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 8
	lw  ra, 0(ra)
	addi  ra, ra, 12
	lw  ra, 0(ra)
	add  ra, t0, ra
	la  t0, .@make
	lw  t0, 0(t0)
	addi  t0, t0, 12
	lw  t0, 0(t0)
	addi  t0, t0, 12
	lw  t0, 0(t0)
	add  t0, ra, t0
	lw  ra, 0(a5)
	sub  ra, t0, ra
	seqz  ra, ra
	sw  ra, 0(t1)
	j  .search25
.search25:
	lw  ra, 0(t1)
	addi  t0, zero, 1
	xor  t0, ra, t0
	sw  ra, 0(a3)
	beqz  t0, .search26
	j  .search27
.search26:
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  t0, 0(ra)
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 8
	lw  ra, 0(ra)
	addi  ra, ra, 8
	lw  ra, 0(ra)
	add  t0, t0, ra
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 12
	lw  ra, 0(ra)
	addi  ra, ra, 12
	lw  ra, 0(ra)
	add  t0, t0, ra
	lw  ra, 0(a5)
	sub  ra, t0, ra
	seqz  ra, ra
	sw  ra, 0(a3)
	j  .search27
.search27:
	lw  ra, 0(a3)
	addi  t0, zero, 1
	xor  t0, ra, t0
	sw  ra, 0(t2)
	beqz  t0, .search28
	j  .search29
.search28:
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 12
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  t0, 0(ra)
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 8
	lw  ra, 0(ra)
	addi  ra, ra, 8
	lw  ra, 0(ra)
	add  t0, t0, ra
	la  ra, .@make
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  ra, 0(ra)
	addi  ra, ra, 12
	lw  ra, 0(ra)
	add  t0, t0, ra
	lw  ra, 0(a5)
	sub  ra, t0, ra
	seqz  ra, ra
	sw  ra, 0(t2)
	j  .search29
.search29:
	lw  ra, 0(t2)
	beqz  ra, .search16
	j  .search15
.search15:
	la  ra, .@count
	lw  ra, 0(ra)
	addi  t1, ra, 4
	la  ra, .@count
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  t0, 0(ra)
	addi  ra, zero, 1
	add  ra, t0, ra
	sw  ra, 0(t1)
	addi  ra, zero, 0
	sw  ra, 0(s2)
	j  .search30
.search30:
	lw  t0, 0(s2)
	addi  ra, zero, 2
	sub  ra, t0, ra
	sltz  t0, ra
	seqz  ra, ra
	or  ra, t0, ra
	beqz  ra, .search33
	j  .search31
.search31:
	addi  ra, zero, 0
	sw  ra, 0(s5)
	j  .search34
.search34:
	lw  t0, 0(s5)
	addi  ra, zero, 2
	sub  ra, t0, ra
	sltz  t0, ra
	seqz  ra, ra
	or  ra, t0, ra
	beqz  ra, .search37
	j  .search35
.search35:
	la  ra, .@make
	lw  t1, 0(ra)
	lw  t0, 0(s2)
	addi  ra, zero, 1
	add  ra, t0, ra
	addi  t0, zero, 4
	mul  ra, ra, t0
	add  ra, t1, ra
	lw  t0, 0(ra)
	lw  t1, 0(s5)
	addi  ra, zero, 1
	add  ra, t1, ra
	addi  t1, zero, 4
	mul  ra, ra, t1
	add  ra, t0, ra
	lw  a0, 0(ra)
	call  toString
	call  print
	la  a0, .$str1
	call  print
	j  .search36
.search36:
	lw  t0, 0(s5)
	addi  ra, zero, 1
	add  ra, t0, ra
	sw  ra, 0(s5)
	j  .search34
.search37:
	la  a0, .$str2
	call  print
	j  .search32
.search32:
	lw  t0, 0(s2)
	addi  ra, zero, 1
	add  ra, t0, ra
	sw  ra, 0(s2)
	j  .search30
.search33:
	la  a0, .$str3
	call  print
	j  .search17
.search16:
	j  .search17
.search17:
	j  .search12
.search11:
	lw  t0, 0(s1)
	addi  ra, zero, 2
	sub  ra, t0, ra
	seqz  ra, ra
	beqz  ra, .search39
	j  .search38
.search38:
	la  ra, .@make
	lw  ra, 0(ra)
	lw  t1, 0(s3)
	addi  t0, zero, 1
	add  t1, t1, t0
	addi  t0, zero, 4
	mul  t0, t1, t0
	add  ra, ra, t0
	lw  t1, 0(ra)
	lw  t0, 0(s1)
	addi  ra, zero, 1
	add  t0, t0, ra
	addi  ra, zero, 4
	mul  ra, t0, ra
	add  t1, t1, ra
	la  ra, .@make
	lw  t2, 0(ra)
	lw  ra, 0(s3)
	addi  t0, zero, 1
	add  t0, ra, t0
	addi  ra, zero, 4
	mul  ra, t0, ra
	add  ra, t2, ra
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  ra, 0(ra)
	addi  t0, zero, 15
	sub  a0, t0, ra
	la  ra, .@make
	lw  t0, 0(ra)
	lw  t2, 0(s3)
	addi  ra, zero, 1
	add  t2, t2, ra
	addi  ra, zero, 4
	mul  ra, t2, ra
	add  ra, t0, ra
	lw  ra, 0(ra)
	addi  ra, ra, 8
	lw  ra, 0(ra)
	sub  ra, a0, ra
	sw  ra, 0(t1)
	la  ra, .@make
	lw  t1, 0(ra)
	lw  ra, 0(s3)
	addi  t0, zero, 1
	add  t0, ra, t0
	addi  ra, zero, 4
	mul  ra, t0, ra
	add  ra, t1, ra
	lw  t0, 0(ra)
	lw  ra, 0(s1)
	addi  t1, zero, 1
	add  t1, ra, t1
	addi  ra, zero, 4
	mul  ra, t1, ra
	add  ra, t0, ra
	lw  ra, 0(ra)
	addi  t0, zero, 0
	sub  ra, ra, t0
	sgtz  t0, ra
	addi  ra, zero, 1
	xor  ra, t0, ra
	sw  t0, 0(a7)
	beqz  ra, .search44
	j  .search45
.search44:
	la  ra, .@make
	lw  t0, 0(ra)
	lw  ra, 0(s3)
	addi  t1, zero, 1
	add  ra, ra, t1
	addi  t1, zero, 4
	mul  ra, ra, t1
	add  ra, t0, ra
	lw  ra, 0(ra)
	lw  t1, 0(s1)
	addi  t0, zero, 1
	add  t1, t1, t0
	addi  t0, zero, 4
	mul  t0, t1, t0
	add  ra, ra, t0
	lw  t0, 0(ra)
	addi  ra, zero, 10
	sub  ra, t0, ra
	sltz  ra, ra
	sw  ra, 0(a7)
	j  .search45
.search45:
	lw  t0, 0(a7)
	addi  ra, zero, 1
	xor  ra, t0, ra
	sw  t0, 0(a4)
	beqz  ra, .search46
	j  .search47
.search46:
	la  ra, .@color
	lw  t1, 0(ra)
	la  ra, .@make
	lw  t2, 0(ra)
	lw  ra, 0(s3)
	addi  t0, zero, 1
	add  t0, ra, t0
	addi  ra, zero, 4
	mul  ra, t0, ra
	add  ra, t2, ra
	lw  t2, 0(ra)
	lw  t0, 0(s1)
	addi  ra, zero, 1
	add  ra, t0, ra
	addi  t0, zero, 4
	mul  ra, ra, t0
	add  ra, t2, ra
	lw  t0, 0(ra)
	addi  ra, zero, 1
	add  ra, t0, ra
	addi  t0, zero, 4
	mul  ra, ra, t0
	add  ra, t1, ra
	lw  t0, 0(ra)
	addi  ra, zero, 0
	sub  ra, t0, ra
	seqz  ra, ra
	sw  ra, 0(a4)
	j  .search47
.search47:
	lw  ra, 0(a4)
	beqz  ra, .search42
	j  .search41
.search41:
	la  ra, .@color
	lw  t2, 0(ra)
	la  ra, .@make
	lw  t0, 0(ra)
	lw  t1, 0(s3)
	addi  ra, zero, 1
	add  ra, t1, ra
	addi  t1, zero, 4
	mul  ra, ra, t1
	add  ra, t0, ra
	lw  t0, 0(ra)
	lw  t1, 0(s1)
	addi  ra, zero, 1
	add  t1, t1, ra
	addi  ra, zero, 4
	mul  ra, t1, ra
	add  ra, t0, ra
	lw  ra, 0(ra)
	addi  t0, zero, 1
	add  ra, ra, t0
	addi  t0, zero, 4
	mul  ra, ra, t0
	add  t0, t2, ra
	addi  ra, zero, 1
	sw  ra, 0(t0)
	lw  t0, 0(s1)
	addi  ra, zero, 2
	sub  ra, t0, ra
	seqz  ra, ra
	beqz  ra, .search49
	j  .search48
.search48:
	lw  ra, 0(s3)
	addi  t0, zero, 1
	add  a0, ra, t0
	lw  t0, 0(s4)
	la  ra, .@make
	lw  t1, 0(ra)
	lw  ra, 0(s3)
	addi  t2, zero, 1
	add  t2, ra, t2
	addi  ra, zero, 4
	mul  ra, t2, ra
	add  ra, t1, ra
	lw  ra, 0(ra)
	lw  t1, 0(s1)
	addi  t2, zero, 1
	add  t1, t1, t2
	addi  t2, zero, 4
	mul  t1, t1, t2
	add  ra, ra, t1
	lw  ra, 0(ra)
	add  a2, t0, ra
	addi  a1, zero, 0
	call  search
	j  .search50
.search49:
	lw  a0, 0(s3)
	lw  ra, 0(s1)
	addi  t0, zero, 1
	add  a1, ra, t0
	lw  t2, 0(s4)
	la  ra, .@make
	lw  ra, 0(ra)
	lw  t1, 0(s3)
	addi  t0, zero, 1
	add  t0, t1, t0
	addi  t1, zero, 4
	mul  t0, t0, t1
	add  ra, ra, t0
	lw  t1, 0(ra)
	lw  t0, 0(s1)
	addi  ra, zero, 1
	add  ra, t0, ra
	addi  t0, zero, 4
	mul  ra, ra, t0
	add  ra, t1, ra
	lw  ra, 0(ra)
	add  a2, t2, ra
	call  search
	j  .search50
.search50:
	la  ra, .@color
	lw  t2, 0(ra)
	la  ra, .@make
	lw  t1, 0(ra)
	lw  ra, 0(s3)
	addi  t0, zero, 1
	add  t0, ra, t0
	addi  ra, zero, 4
	mul  ra, t0, ra
	add  ra, t1, ra
	lw  t1, 0(ra)
	lw  t0, 0(s1)
	addi  ra, zero, 1
	add  ra, t0, ra
	addi  t0, zero, 4
	mul  ra, ra, t0
	add  ra, t1, ra
	lw  ra, 0(ra)
	addi  t0, zero, 1
	add  ra, ra, t0
	addi  t0, zero, 4
	mul  ra, ra, t0
	add  t0, t2, ra
	addi  ra, zero, 0
	sw  ra, 0(t0)
	j  .search43
.search42:
	j  .search43
.search43:
	j  .search40
.search39:
	addi  ra, zero, 1
	sw  ra, 0(s2)
	j  .search51
.search51:
	lw  ra, 0(s2)
	addi  t0, zero, 9
	sub  t0, ra, t0
	sltz  ra, t0
	seqz  t0, t0
	or  ra, ra, t0
	beqz  ra, .search54
	j  .search52
.search52:
	la  ra, .@color
	lw  t1, 0(ra)
	lw  t0, 0(s2)
	addi  ra, zero, 1
	add  t0, t0, ra
	addi  ra, zero, 4
	mul  ra, t0, ra
	add  ra, t1, ra
	lw  t0, 0(ra)
	addi  ra, zero, 0
	sub  ra, t0, ra
	seqz  ra, ra
	beqz  ra, .search56
	j  .search55
.search55:
	la  ra, .@color
	lw  ra, 0(ra)
	lw  t1, 0(s2)
	addi  t0, zero, 1
	add  t0, t1, t0
	addi  t1, zero, 4
	mul  t0, t0, t1
	add  t0, ra, t0
	addi  ra, zero, 1
	sw  ra, 0(t0)
	la  ra, .@make
	lw  ra, 0(ra)
	lw  t1, 0(s3)
	addi  t0, zero, 1
	add  t1, t1, t0
	addi  t0, zero, 4
	mul  t0, t1, t0
	add  ra, ra, t0
	lw  t1, 0(ra)
	lw  ra, 0(s1)
	addi  t0, zero, 1
	add  t0, ra, t0
	addi  ra, zero, 4
	mul  ra, t0, ra
	add  ra, t1, ra
	lw  t0, 0(s2)
	sw  t0, 0(ra)
	lw  ra, 0(s1)
	addi  t0, zero, 2
	sub  ra, ra, t0
	seqz  ra, ra
	beqz  ra, .search59
	j  .search58
.search58:
	lw  t0, 0(s3)
	addi  ra, zero, 1
	add  a0, t0, ra
	lw  ra, 0(s4)
	lw  t0, 0(s2)
	add  a2, ra, t0
	addi  a1, zero, 0
	call  search
	j  .search60
.search59:
	lw  a0, 0(s3)
	lw  ra, 0(s1)
	addi  t0, zero, 1
	add  a1, ra, t0
	lw  t0, 0(s4)
	lw  ra, 0(s2)
	add  a2, t0, ra
	call  search
	j  .search60
.search60:
	la  ra, .@make
	lw  t1, 0(ra)
	lw  t0, 0(s3)
	addi  ra, zero, 1
	add  ra, t0, ra
	addi  t0, zero, 4
	mul  ra, ra, t0
	add  ra, t1, ra
	lw  t0, 0(ra)
	lw  ra, 0(s1)
	addi  t1, zero, 1
	add  ra, ra, t1
	addi  t1, zero, 4
	mul  ra, ra, t1
	add  ra, t0, ra
	addi  t0, zero, 0
	sw  t0, 0(ra)
	la  ra, .@color
	lw  t1, 0(ra)
	lw  t0, 0(s2)
	addi  ra, zero, 1
	add  ra, t0, ra
	addi  t0, zero, 4
	mul  ra, ra, t0
	add  ra, t1, ra
	addi  t0, zero, 0
	sw  t0, 0(ra)
	j  .search57
.search56:
	j  .search57
.search57:
	j  .search53
.search53:
	lw  t0, 0(s2)
	addi  ra, zero, 1
	add  ra, t0, ra
	sw  ra, 0(s2)
	j  .search51
.search54:
	j  .search40
.search40:
	j  .search12
.search12:
	j  .search3
.search2:
	j  .search3
.search3:
.searchexit:
	lw  a0, -12(s0)
	lw  s0, 80(sp)
	lw  ra, 76(sp)
	addi  sp, sp, 84
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
	la  ra, .@count
	lw  ra, 0(ra)
	addi  ra, ra, 4
	addi  t0, zero, 0
	sw  t0, 0(ra)
	addi  a0, zero, 3
	call  origin
	addi  a0, zero, 0
	addi  a1, zero, 0
	addi  a2, zero, 0
	call  search
	la  ra, .@count
	lw  ra, 0(ra)
	addi  ra, ra, 4
	lw  a0, 0(ra)
	call  toString
	call  println
	addi  ra, zero, 0
	sw  ra, -12(s0)
	j  .mainexit
.mainexit:
	lw  a0, -12(s0)
	lw  s0, 8(sp)
	lw  ra, 4(sp)
	addi  sp, sp, 12
	ret

	.section  .bss
	.p2align  2
.@make:
	.word  0

	.section  .bss
	.p2align  2
.@color:
	.word  0

	.section  .bss
	.p2align  2
.@count:
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
	.string  " "

	.section  .rodata
	.p2align  2
.$str2:
	.string  "\n"

	.section  .rodata
	.p2align  2
.$str3:
	.string  "\n"

