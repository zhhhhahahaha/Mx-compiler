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
	la  ra, .@n
	lw  ra, 0(ra)
	la  ra, .@p
	lw  ra, 0(ra)
	la  ra, .@k
	lw  ra, 0(ra)
	la  ra, .@i
	lw  ra, 0(ra)
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
	call  getInt
	la  ra, .@n
	sw  a0, 0(ra)
	call  getInt
	la  ra, .@p
	sw  a0, 0(ra)
	call  getInt
	la  ra, .@k
	sw  a0, 0(ra)
	la  ra, .@p
	lw  t0, 0(ra)
	la  ra, .@k
	lw  ra, 0(ra)
	sub  ra, t0, ra
	addi  t0, zero, 1
	sub  ra, ra, t0
	sgtz  ra, ra
	beqz  ra, .main2
	j  .main1
.main1:
	la  a0, .$str1
	call  print
	j  .main3
.main2:
	j  .main3
.main3:
	la  ra, .@p
	lw  t0, 0(ra)
	la  ra, .@k
	lw  ra, 0(ra)
	sub  ra, t0, ra
	la  t0, .@i
	sw  ra, 0(t0)
	j  .main4
.main4:
	la  ra, .@i
	lw  t0, 0(ra)
	la  ra, .@p
	lw  t1, 0(ra)
	la  ra, .@k
	lw  ra, 0(ra)
	add  ra, t1, ra
	sub  t0, t0, ra
	sltz  ra, t0
	seqz  t0, t0
	or  ra, ra, t0
	beqz  ra, .main7
	j  .main5
.main5:
	la  ra, .@i
	lw  ra, 0(ra)
	addi  t0, zero, 1
	sub  ra, t0, ra
	sltz  t0, ra
	seqz  ra, ra
	or  ra, t0, ra
	addi  t0, zero, 1
	xor  t0, ra, t0
	beqz  t0, .main11
	j  .main12
.main11:
	la  ra, .@i
	lw  ra, 0(ra)
	la  t0, .@n
	lw  t0, 0(t0)
	sub  ra, ra, t0
	sltz  t0, ra
	seqz  ra, ra
	or  ra, t0, ra
	j  .main12
.main12:
	beqz  ra, .main9
	j  .main8
.main8:
	la  ra, .@i
	lw  t0, 0(ra)
	la  ra, .@p
	lw  ra, 0(ra)
	sub  ra, t0, ra
	seqz  ra, ra
	beqz  ra, .main14
	j  .main13
.main13:
	la  a0, .$str2
	call  print
	la  ra, .@i
	lw  a0, 0(ra)
	call  toString
	call  print
	la  a0, .$str3
	call  print
	j  .main15
.main14:
	la  ra, .@i
	lw  a0, 0(ra)
	call  printInt
	la  a0, .$str4
	call  print
	j  .main15
.main15:
	j  .main10
.main9:
	j  .main10
.main10:
	j  .main6
.main6:
	la  ra, .@i
	lw  ra, 0(ra)
	addi  t0, zero, 1
	add  ra, ra, t0
	la  t0, .@i
	sw  ra, 0(t0)
	j  .main4
.main7:
	la  ra, .@p
	lw  t0, 0(ra)
	la  ra, .@k
	lw  ra, 0(ra)
	add  t0, t0, ra
	la  ra, .@n
	lw  ra, 0(ra)
	sub  ra, t0, ra
	sltz  ra, ra
	beqz  ra, .main17
	j  .main16
.main16:
	la  a0, .$str5
	call  print
	j  .main18
.main17:
	j  .main18
.main18:
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
.@n:
	.word  0

	.section  .bss
	.p2align  2
.@p:
	.word  0

	.section  .bss
	.p2align  2
.@k:
	.word  0

	.section  .bss
	.p2align  2
.@i:
	.word  0

	.section  .rodata
	.p2align  2
.$str1:
	.string  "<< "

	.section  .rodata
	.p2align  2
.$str2:
	.string  "("

	.section  .rodata
	.p2align  2
.$str3:
	.string  ") "

	.section  .rodata
	.p2align  2
.$str4:
	.string  " "

	.section  .rodata
	.p2align  2
.$str5:
	.string  ">> "

