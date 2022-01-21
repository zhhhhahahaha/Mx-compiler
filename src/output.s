	.text

	.globl  globalinit
	.p2align  2
globalinit:
	addi  sp, sp, -12
	sw  ra, 8(sp)
	sw  s0, 4(sp)
	addi  s0, sp, 12
.globalinitpara:
.globalinit0:
.globalinitexit:
	lw  a0, -12(s0)
	lw  s0, 4(sp)
	lw  ra, 8(sp)
	addi  sp, sp, 12
	ret

	.globl  vector_init
	.p2align  2
vector_init:
	addi  sp, sp, -148
	sw  ra, 144(sp)
	sw  s0, 140(sp)
	addi  s0, sp, 148
.vector_initpara:
	sw  a0, -16(s0)
	sw  a1, -20(s0)
	addi  t0, s0, -24
	sw  t0, -28(s0)
	addi  t0, s0, -32
	sw  t0, -36(s0)
	addi  t0, s0, -40
	sw  t0, -44(s0)
.vector_init0:
	lw  t0, -28(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -36(s0)
	lw  t1, -20(s0)
	sw  t1, 0(t0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -48(s0)
	lw  t0, -48(s0)
	addi  t1, zero, 0
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -52(s0)
	lw  t0, -52(s0)
	beqz  t0, .vector_init2
	j  .vector_init1
.vector_init1:
	j  .vector_initexit
	j  .vector_init3
.vector_init2:
	j  .vector_init3
.vector_init3:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	lw  t0, -56(s0)
	addi  t1, t0, 0
	sw  t1, -60(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -64(s0)
	lw  a0, -64(s0)
	call  array_size
	sw  a0, -68(s0)
	lw  t0, -68(s0)
	addi  t1, zero, 4
	mul  t2, t0, t1
	sw  t2, -72(s0)
	lw  t0, -72(s0)
	addi  t1, zero, 4
	add  t2, t0, t1
	sw  t2, -76(s0)
	lw  a0, -76(s0)
	call  malloc
	sw  a0, -80(s0)
	lw  t0, -80(s0)
	lw  t1, -68(s0)
	sw  t1, 0(t0)
	lw  t0, -60(s0)
	lw  t1, -80(s0)
	sw  t1, 0(t0)
	lw  t0, -44(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .vector_init4
.vector_init4:
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -84(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -88(s0)
	lw  a0, -88(s0)
	call  array_size
	sw  a0, -92(s0)
	lw  t0, -84(s0)
	lw  t1, -92(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -96(s0)
	lw  t0, -96(s0)
	beqz  t0, .vector_init7
	j  .vector_init5
.vector_init5:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -100(s0)
	lw  t0, -100(s0)
	addi  t1, t0, 0
	sw  t1, -104(s0)
	lw  t0, -104(s0)
	lw  t0, 0(t0)
	sw  t0, -108(s0)
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -112(s0)
	lw  t0, -112(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -116(s0)
	lw  t0, -108(s0)
	lw  t1, -116(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -120(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -124(s0)
	lw  t0, -44(s0)
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
	lw  t0, -120(s0)
	lw  t1, -140(s0)
	sw  t1, 0(t0)
	j  .vector_init6
.vector_init6:
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -144(s0)
	lw  t0, -144(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -148(s0)
	lw  t0, -44(s0)
	lw  t1, -148(s0)
	sw  t1, 0(t0)
	j  .vector_init4
.vector_init7:
.vector_initexit:
	lw  a0, -12(s0)
	lw  s0, 140(sp)
	lw  ra, 144(sp)
	addi  sp, sp, 148
	ret

	.globl  vector_getDim
	.p2align  2
vector_getDim:
	addi  sp, sp, -56
	sw  ra, 52(sp)
	sw  s0, 48(sp)
	addi  s0, sp, 56
.vector_getDimpara:
	sw  a0, -16(s0)
	addi  t0, s0, -20
	sw  t0, -24(s0)
.vector_getDim0:
	lw  t0, -24(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -28(s0)
	lw  t0, -28(s0)
	addi  t1, t0, 0
	sw  t1, -32(s0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -36(s0)
	lw  t0, -36(s0)
	addi  t1, zero, 0
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -40(s0)
	lw  t0, -40(s0)
	beqz  t0, .vector_getDim2
	j  .vector_getDim1
.vector_getDim1:
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .vector_getDimexit
	j  .vector_getDim3
.vector_getDim2:
	j  .vector_getDim3
.vector_getDim3:
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -44(s0)
	lw  t0, -44(s0)
	addi  t1, t0, 0
	sw  t1, -48(s0)
	lw  t0, -48(s0)
	lw  t0, 0(t0)
	sw  t0, -52(s0)
	lw  a0, -52(s0)
	call  array_size
	sw  a0, -56(s0)
	lw  t0, -56(s0)
	sw  t0, -12(s0)
	j  .vector_getDimexit
.vector_getDimexit:
	lw  a0, -12(s0)
	lw  s0, 48(sp)
	lw  ra, 52(sp)
	addi  sp, sp, 56
	ret

	.globl  vector_dot
	.p2align  2
vector_dot:
	addi  sp, sp, -140
	sw  ra, 136(sp)
	sw  s0, 132(sp)
	addi  s0, sp, 140
.vector_dotpara:
	sw  a0, -16(s0)
	sw  a1, -20(s0)
	addi  t0, s0, -24
	sw  t0, -28(s0)
	addi  t0, s0, -32
	sw  t0, -36(s0)
	addi  t0, s0, -40
	sw  t0, -44(s0)
	addi  t0, s0, -48
	sw  t0, -52(s0)
.vector_dot0:
	lw  t0, -28(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -36(s0)
	lw  t1, -20(s0)
	sw  t1, 0(t0)
	lw  t0, -44(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	lw  t0, -52(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .vector_dot1
.vector_dot1:
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -60(s0)
	lw  a0, -60(s0)
	call  vector_getDim
	sw  a0, -64(s0)
	lw  t0, -56(s0)
	lw  t1, -64(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -68(s0)
	lw  t0, -68(s0)
	beqz  t0, .vector_dot3
	j  .vector_dot2
.vector_dot2:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -72(s0)
	lw  t0, -72(s0)
	addi  t1, t0, 0
	sw  t1, -76(s0)
	lw  t0, -76(s0)
	lw  t0, 0(t0)
	sw  t0, -80(s0)
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -84(s0)
	lw  t0, -84(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -88(s0)
	lw  t0, -80(s0)
	lw  t1, -88(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -92(s0)
	lw  t0, -92(s0)
	lw  t0, 0(t0)
	sw  t0, -96(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -100(s0)
	lw  t0, -100(s0)
	addi  t1, t0, 0
	sw  t1, -104(s0)
	lw  t0, -104(s0)
	lw  t0, 0(t0)
	sw  t0, -108(s0)
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -112(s0)
	lw  t0, -112(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -116(s0)
	lw  t0, -108(s0)
	lw  t1, -116(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -120(s0)
	lw  t0, -120(s0)
	lw  t0, 0(t0)
	sw  t0, -124(s0)
	lw  t0, -96(s0)
	lw  t1, -124(s0)
	mul  t2, t0, t1
	sw  t2, -128(s0)
	lw  t0, -52(s0)
	lw  t1, -128(s0)
	sw  t1, 0(t0)
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -132(s0)
	lw  t0, -132(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -136(s0)
	lw  t0, -44(s0)
	lw  t1, -136(s0)
	sw  t1, 0(t0)
	j  .vector_dot1
.vector_dot3:
	lw  t0, -52(s0)
	lw  t0, 0(t0)
	sw  t0, -140(s0)
	lw  t0, -140(s0)
	sw  t0, -12(s0)
	j  .vector_dotexit
.vector_dotexit:
	lw  a0, -12(s0)
	lw  s0, 132(sp)
	lw  ra, 136(sp)
	addi  sp, sp, 140
	ret

	.globl  vector_scalarInPlaceMultiply
	.p2align  2
vector_scalarInPlaceMultiply:
	addi  sp, sp, -148
	sw  ra, 144(sp)
	sw  s0, 140(sp)
	addi  s0, sp, 148
.vector_scalarInPlaceMultiplypara:
	sw  a0, -16(s0)
	sw  a1, -20(s0)
	addi  t0, s0, -24
	sw  t0, -28(s0)
	addi  t0, s0, -32
	sw  t0, -36(s0)
	addi  t0, s0, -40
	sw  t0, -44(s0)
.vector_scalarInPlaceMultiply0:
	lw  t0, -28(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -36(s0)
	lw  t1, -20(s0)
	sw  t1, 0(t0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -48(s0)
	lw  t0, -48(s0)
	addi  t1, t0, 0
	sw  t1, -52(s0)
	lw  t0, -52(s0)
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	lw  t0, -56(s0)
	addi  t1, zero, 0
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -60(s0)
	lw  t0, -60(s0)
	beqz  t0, .vector_scalarInPlaceMultiply2
	j  .vector_scalarInPlaceMultiply1
.vector_scalarInPlaceMultiply1:
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .vector_scalarInPlaceMultiplyexit
	j  .vector_scalarInPlaceMultiply3
.vector_scalarInPlaceMultiply2:
	j  .vector_scalarInPlaceMultiply3
.vector_scalarInPlaceMultiply3:
	lw  t0, -44(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .vector_scalarInPlaceMultiply4
.vector_scalarInPlaceMultiply4:
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -64(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -68(s0)
	lw  a0, -68(s0)
	call  vector_getDim
	sw  a0, -72(s0)
	lw  t0, -64(s0)
	lw  t1, -72(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -76(s0)
	lw  t0, -76(s0)
	beqz  t0, .vector_scalarInPlaceMultiply7
	j  .vector_scalarInPlaceMultiply5
.vector_scalarInPlaceMultiply5:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -80(s0)
	lw  t0, -80(s0)
	addi  t1, t0, 0
	sw  t1, -84(s0)
	lw  t0, -84(s0)
	lw  t0, 0(t0)
	sw  t0, -88(s0)
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -92(s0)
	lw  t0, -92(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -96(s0)
	lw  t0, -88(s0)
	lw  t1, -96(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -100(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -108(s0)
	lw  t0, -108(s0)
	addi  t1, t0, 0
	sw  t1, -112(s0)
	lw  t0, -112(s0)
	lw  t0, 0(t0)
	sw  t0, -116(s0)
	lw  t0, -44(s0)
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
	lw  t0, -128(s0)
	lw  t0, 0(t0)
	sw  t0, -132(s0)
	lw  t0, -104(s0)
	lw  t1, -132(s0)
	mul  t2, t0, t1
	sw  t2, -136(s0)
	lw  t0, -100(s0)
	lw  t1, -136(s0)
	sw  t1, 0(t0)
	j  .vector_scalarInPlaceMultiply6
.vector_scalarInPlaceMultiply6:
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -140(s0)
	lw  t0, -140(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -144(s0)
	lw  t0, -44(s0)
	lw  t1, -144(s0)
	sw  t1, 0(t0)
	j  .vector_scalarInPlaceMultiply4
.vector_scalarInPlaceMultiply7:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -148(s0)
	lw  t0, -148(s0)
	sw  t0, -12(s0)
	j  .vector_scalarInPlaceMultiplyexit
.vector_scalarInPlaceMultiplyexit:
	lw  a0, -12(s0)
	lw  s0, 140(sp)
	lw  ra, 144(sp)
	addi  sp, sp, 148
	ret

	.globl  vector_add
	.p2align  2
vector_add:
	addi  sp, sp, -244
	sw  ra, 240(sp)
	sw  s0, 236(sp)
	addi  s0, sp, 244
.vector_addpara:
	sw  a0, -16(s0)
	sw  a1, -20(s0)
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
.vector_add0:
	lw  t0, -28(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -36(s0)
	lw  t1, -20(s0)
	sw  t1, 0(t0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -64(s0)
	lw  a0, -64(s0)
	call  vector_getDim
	sw  a0, -68(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -72(s0)
	lw  a0, -72(s0)
	call  vector_getDim
	sw  a0, -76(s0)
	lw  t0, -68(s0)
	lw  t1, -76(s0)
	sub  t2, t0, t1
	snez  t3, t2
	sw  t3, -80(s0)
	lw  t0, -80(s0)
	mv  t1, zero
	or  t2, t0, t1
	sw  t2, -84(s0)
	lw  t0, -44(s0)
	lw  t1, -80(s0)
	sw  t1, 0(t0)
	lw  t0, -84(s0)
	beqz  t0, .vector_add4
	j  .vector_add5
.vector_add4:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -88(s0)
	lw  a0, -88(s0)
	call  vector_getDim
	sw  a0, -92(s0)
	lw  t0, -92(s0)
	addi  t1, zero, 0
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -96(s0)
	lw  t0, -44(s0)
	lw  t1, -96(s0)
	sw  t1, 0(t0)
	j  .vector_add5
.vector_add5:
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -100(s0)
	lw  t0, -100(s0)
	beqz  t0, .vector_add2
	j  .vector_add1
.vector_add1:
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .vector_addexit
	j  .vector_add3
.vector_add2:
	j  .vector_add3
.vector_add3:
	addi  a0, zero, 4
	call  malloc
	sw  a0, -104(s0)
	lw  a0, -104(s0)
	call  vector
	lw  t0, -52(s0)
	lw  t1, -104(s0)
	sw  t1, 0(t0)
	lw  t0, -52(s0)
	lw  t0, 0(t0)
	sw  t0, -108(s0)
	lw  t0, -108(s0)
	addi  t1, t0, 0
	sw  t1, -112(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -116(s0)
	lw  a0, -116(s0)
	call  vector_getDim
	sw  a0, -120(s0)
	lw  t0, -120(s0)
	addi  t1, zero, 4
	mul  t2, t0, t1
	sw  t2, -124(s0)
	lw  t0, -124(s0)
	addi  t1, zero, 4
	add  t2, t0, t1
	sw  t2, -128(s0)
	lw  a0, -128(s0)
	call  malloc
	sw  a0, -132(s0)
	lw  t0, -132(s0)
	lw  t1, -120(s0)
	sw  t1, 0(t0)
	lw  t0, -112(s0)
	lw  t1, -132(s0)
	sw  t1, 0(t0)
	lw  t0, -60(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .vector_add6
.vector_add6:
	lw  t0, -60(s0)
	lw  t0, 0(t0)
	sw  t0, -136(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -140(s0)
	lw  a0, -140(s0)
	call  vector_getDim
	sw  a0, -144(s0)
	lw  t0, -136(s0)
	lw  t1, -144(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -148(s0)
	lw  t0, -148(s0)
	beqz  t0, .vector_add9
	j  .vector_add7
.vector_add7:
	lw  t0, -52(s0)
	lw  t0, 0(t0)
	sw  t0, -152(s0)
	lw  t0, -152(s0)
	addi  t1, t0, 0
	sw  t1, -156(s0)
	lw  t0, -156(s0)
	lw  t0, 0(t0)
	sw  t0, -160(s0)
	lw  t0, -60(s0)
	lw  t0, 0(t0)
	sw  t0, -164(s0)
	lw  t0, -164(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -168(s0)
	lw  t0, -160(s0)
	lw  t1, -168(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -172(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -176(s0)
	lw  t0, -176(s0)
	addi  t1, t0, 0
	sw  t1, -180(s0)
	lw  t0, -180(s0)
	lw  t0, 0(t0)
	sw  t0, -184(s0)
	lw  t0, -60(s0)
	lw  t0, 0(t0)
	sw  t0, -188(s0)
	lw  t0, -188(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -192(s0)
	lw  t0, -184(s0)
	lw  t1, -192(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -196(s0)
	lw  t0, -196(s0)
	lw  t0, 0(t0)
	sw  t0, -200(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -204(s0)
	lw  t0, -204(s0)
	addi  t1, t0, 0
	sw  t1, -208(s0)
	lw  t0, -208(s0)
	lw  t0, 0(t0)
	sw  t0, -212(s0)
	lw  t0, -60(s0)
	lw  t0, 0(t0)
	sw  t0, -216(s0)
	lw  t0, -216(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -220(s0)
	lw  t0, -212(s0)
	lw  t1, -220(s0)
	addi  t2, zero, 4
	mul  t3, t1, t2
	add  t4, t0, t3
	sw  t4, -224(s0)
	lw  t0, -224(s0)
	lw  t0, 0(t0)
	sw  t0, -228(s0)
	lw  t0, -200(s0)
	lw  t1, -228(s0)
	add  t2, t0, t1
	sw  t2, -232(s0)
	lw  t0, -172(s0)
	lw  t1, -232(s0)
	sw  t1, 0(t0)
	j  .vector_add8
.vector_add8:
	lw  t0, -60(s0)
	lw  t0, 0(t0)
	sw  t0, -236(s0)
	lw  t0, -236(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -240(s0)
	lw  t0, -60(s0)
	lw  t1, -240(s0)
	sw  t1, 0(t0)
	j  .vector_add6
.vector_add9:
	lw  t0, -52(s0)
	lw  t0, 0(t0)
	sw  t0, -244(s0)
	lw  t0, -244(s0)
	sw  t0, -12(s0)
	j  .vector_addexit
.vector_addexit:
	lw  a0, -12(s0)
	lw  s0, 236(sp)
	lw  ra, 240(sp)
	addi  sp, sp, 244
	ret

	.globl  vector_set
	.p2align  2
vector_set:
	addi  sp, sp, -92
	sw  ra, 88(sp)
	sw  s0, 84(sp)
	addi  s0, sp, 92
.vector_setpara:
	sw  a0, -16(s0)
	sw  a1, -20(s0)
	sw  a2, -24(s0)
	addi  t0, s0, -28
	sw  t0, -32(s0)
	addi  t0, s0, -36
	sw  t0, -40(s0)
	addi  t0, s0, -44
	sw  t0, -48(s0)
.vector_set0:
	lw  t0, -32(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -40(s0)
	lw  t1, -20(s0)
	sw  t1, 0(t0)
	lw  t0, -48(s0)
	lw  t1, -24(s0)
	sw  t1, 0(t0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -52(s0)
	lw  a0, -52(s0)
	call  vector_getDim
	sw  a0, -56(s0)
	lw  t0, -40(s0)
	lw  t0, 0(t0)
	sw  t0, -60(s0)
	lw  t0, -56(s0)
	lw  t1, -60(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -64(s0)
	lw  t0, -64(s0)
	beqz  t0, .vector_set2
	j  .vector_set1
.vector_set1:
	mv  t0, zero
	sw  t0, -12(s0)
	j  .vector_setexit
	j  .vector_set3
.vector_set2:
	j  .vector_set3
.vector_set3:
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -68(s0)
	lw  t0, -68(s0)
	addi  t1, t0, 0
	sw  t1, -72(s0)
	lw  t0, -72(s0)
	lw  t0, 0(t0)
	sw  t0, -76(s0)
	lw  t0, -40(s0)
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
	lw  t0, -48(s0)
	lw  t0, 0(t0)
	sw  t0, -92(s0)
	lw  t0, -88(s0)
	lw  t1, -92(s0)
	sw  t1, 0(t0)
	addi  t0, zero, 1
	sw  t0, -12(s0)
	j  .vector_setexit
.vector_setexit:
	lw  a0, -12(s0)
	lw  s0, 84(sp)
	lw  ra, 88(sp)
	addi  sp, sp, 92
	ret

	.globl  vector_tostring
	.p2align  2
vector_tostring:
	addi  sp, sp, -176
	sw  ra, 172(sp)
	sw  s0, 168(sp)
	addi  s0, sp, 176
.vector_tostringpara:
	sw  a0, -16(s0)
	addi  t0, s0, -20
	sw  t0, -24(s0)
	addi  t0, s0, -28
	sw  t0, -32(s0)
	addi  t0, s0, -36
	sw  t0, -40(s0)
.vector_tostring0:
	lw  t0, -24(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -32(s0)
	la  t1, .$str1
	sw  t1, 0(t0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -44(s0)
	lw  a0, -44(s0)
	call  vector_getDim
	sw  a0, -48(s0)
	lw  a0, -48(s0)
	call  toString
	sw  a0, -52(s0)
	lw  a0, -52(s0)
	call  println
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	lw  a0, -56(s0)
	call  vector_getDim
	sw  a0, -60(s0)
	lw  t0, -60(s0)
	addi  t1, zero, 0
	sub  t2, t0, t1
	sgtz  t3, t2
	sw  t3, -64(s0)
	lw  t0, -64(s0)
	beqz  t0, .vector_tostring2
	j  .vector_tostring1
.vector_tostring1:
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -68(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -72(s0)
	lw  t0, -72(s0)
	addi  t1, t0, 0
	sw  t1, -76(s0)
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
	lw  a0, -68(s0)
	lw  a1, -92(s0)
	call  string_add
	sw  a0, -96(s0)
	lw  t0, -32(s0)
	lw  t1, -96(s0)
	sw  t1, 0(t0)
	j  .vector_tostring3
.vector_tostring2:
	j  .vector_tostring3
.vector_tostring3:
	lw  t0, -40(s0)
	addi  t1, zero, 1
	sw  t1, 0(t0)
	j  .vector_tostring4
.vector_tostring4:
	lw  t0, -40(s0)
	lw  t0, 0(t0)
	sw  t0, -100(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  a0, -104(s0)
	call  vector_getDim
	sw  a0, -108(s0)
	lw  t0, -100(s0)
	lw  t1, -108(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -112(s0)
	lw  t0, -112(s0)
	beqz  t0, .vector_tostring7
	j  .vector_tostring5
.vector_tostring5:
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -116(s0)
	lw  a0, -116(s0)
	la  a1, .$str2
	call  string_add
	sw  a0, -120(s0)
	lw  t0, -24(s0)
	lw  t0, 0(t0)
	sw  t0, -124(s0)
	lw  t0, -124(s0)
	addi  t1, t0, 0
	sw  t1, -128(s0)
	lw  t0, -128(s0)
	lw  t0, 0(t0)
	sw  t0, -132(s0)
	lw  t0, -40(s0)
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
	lw  t0, -144(s0)
	lw  t0, 0(t0)
	sw  t0, -148(s0)
	lw  a0, -148(s0)
	call  toString
	sw  a0, -152(s0)
	lw  a0, -120(s0)
	lw  a1, -152(s0)
	call  string_add
	sw  a0, -156(s0)
	lw  t0, -32(s0)
	lw  t1, -156(s0)
	sw  t1, 0(t0)
	j  .vector_tostring6
.vector_tostring6:
	lw  t0, -40(s0)
	lw  t0, 0(t0)
	sw  t0, -160(s0)
	lw  t0, -160(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -164(s0)
	lw  t0, -40(s0)
	lw  t1, -164(s0)
	sw  t1, 0(t0)
	j  .vector_tostring4
.vector_tostring7:
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -168(s0)
	lw  a0, -168(s0)
	la  a1, .$str3
	call  string_add
	sw  a0, -172(s0)
	lw  t0, -32(s0)
	lw  t1, -172(s0)
	sw  t1, 0(t0)
	lw  t0, -32(s0)
	lw  t0, 0(t0)
	sw  t0, -176(s0)
	lw  t0, -176(s0)
	sw  t0, -12(s0)
	j  .vector_tostringexit
.vector_tostringexit:
	lw  a0, -12(s0)
	lw  s0, 168(sp)
	lw  ra, 172(sp)
	addi  sp, sp, 176
	ret

	.globl  vector_copy
	.p2align  2
vector_copy:
	addi  sp, sp, -176
	sw  ra, 172(sp)
	sw  s0, 168(sp)
	addi  s0, sp, 176
.vector_copypara:
	sw  a0, -16(s0)
	sw  a1, -20(s0)
	addi  t0, s0, -24
	sw  t0, -28(s0)
	addi  t0, s0, -32
	sw  t0, -36(s0)
	addi  t0, s0, -40
	sw  t0, -44(s0)
.vector_copy0:
	lw  t0, -28(s0)
	lw  t1, -16(s0)
	sw  t1, 0(t0)
	lw  t0, -36(s0)
	lw  t1, -20(s0)
	sw  t1, 0(t0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -48(s0)
	lw  t0, -48(s0)
	addi  t1, zero, 0
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -52(s0)
	lw  t0, -52(s0)
	beqz  t0, .vector_copy2
	j  .vector_copy1
.vector_copy1:
	mv  t0, zero
	sw  t0, -12(s0)
	j  .vector_copyexit
	j  .vector_copy3
.vector_copy2:
	j  .vector_copy3
.vector_copy3:
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	lw  a0, -56(s0)
	call  vector_getDim
	sw  a0, -60(s0)
	lw  t0, -60(s0)
	addi  t1, zero, 0
	sub  t2, t0, t1
	seqz  t3, t2
	sw  t3, -64(s0)
	lw  t0, -64(s0)
	beqz  t0, .vector_copy5
	j  .vector_copy4
.vector_copy4:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -68(s0)
	lw  t0, -68(s0)
	addi  t1, t0, 0
	sw  t1, -72(s0)
	lw  t0, -72(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .vector_copy6
.vector_copy5:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -76(s0)
	lw  t0, -76(s0)
	addi  t1, t0, 0
	sw  t1, -80(s0)
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -84(s0)
	lw  a0, -84(s0)
	call  vector_getDim
	sw  a0, -88(s0)
	lw  t0, -88(s0)
	addi  t1, zero, 4
	mul  t2, t0, t1
	sw  t2, -92(s0)
	lw  t0, -92(s0)
	addi  t1, zero, 4
	add  t2, t0, t1
	sw  t2, -96(s0)
	lw  a0, -96(s0)
	call  malloc
	sw  a0, -100(s0)
	lw  t0, -100(s0)
	lw  t1, -88(s0)
	sw  t1, 0(t0)
	lw  t0, -80(s0)
	lw  t1, -100(s0)
	sw  t1, 0(t0)
	lw  t0, -44(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .vector_copy7
.vector_copy7:
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -104(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -108(s0)
	lw  a0, -108(s0)
	call  vector_getDim
	sw  a0, -112(s0)
	lw  t0, -104(s0)
	lw  t1, -112(s0)
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -116(s0)
	lw  t0, -116(s0)
	beqz  t0, .vector_copy10
	j  .vector_copy8
.vector_copy8:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -120(s0)
	lw  t0, -120(s0)
	addi  t1, t0, 0
	sw  t1, -124(s0)
	lw  t0, -124(s0)
	lw  t0, 0(t0)
	sw  t0, -128(s0)
	lw  t0, -44(s0)
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
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -144(s0)
	lw  t0, -144(s0)
	addi  t1, t0, 0
	sw  t1, -148(s0)
	lw  t0, -148(s0)
	lw  t0, 0(t0)
	sw  t0, -152(s0)
	lw  t0, -44(s0)
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
	lw  t0, -140(s0)
	lw  t1, -168(s0)
	sw  t1, 0(t0)
	j  .vector_copy9
.vector_copy9:
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -172(s0)
	lw  t0, -172(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -176(s0)
	lw  t0, -44(s0)
	lw  t1, -176(s0)
	sw  t1, 0(t0)
	j  .vector_copy7
.vector_copy10:
	j  .vector_copy6
.vector_copy6:
	addi  t0, zero, 1
	sw  t0, -12(s0)
	j  .vector_copyexit
.vector_copyexit:
	lw  a0, -12(s0)
	lw  s0, 168(sp)
	lw  ra, 172(sp)
	addi  sp, sp, 176
	ret

	.globl  vector
	.p2align  2
vector:
	addi  sp, sp, -12
	sw  ra, 8(sp)
	sw  s0, 4(sp)
	addi  s0, sp, 12
.vectorpara:
.vectorexit:
	lw  a0, -12(s0)
	lw  s0, 4(sp)
	lw  ra, 8(sp)
	addi  sp, sp, 12
	ret

	.globl  main
	.p2align  2
main:
	addi  sp, sp, -188
	sw  ra, 184(sp)
	sw  s0, 180(sp)
	addi  s0, sp, 188
.mainpara:
	call  globalinit
	addi  t0, s0, -16
	sw  t0, -20(s0)
	addi  t0, s0, -24
	sw  t0, -28(s0)
	addi  t0, s0, -32
	sw  t0, -36(s0)
	addi  t0, s0, -40
	sw  t0, -44(s0)
.main0:
	addi  a0, zero, 4
	call  malloc
	sw  a0, -48(s0)
	lw  a0, -48(s0)
	call  vector
	lw  t0, -20(s0)
	lw  t1, -48(s0)
	sw  t1, 0(t0)
	addi  a0, zero, 44
	call  malloc
	sw  a0, -52(s0)
	lw  t0, -52(s0)
	addi  t1, zero, 10
	sw  t1, 0(t0)
	lw  t0, -28(s0)
	lw  t1, -52(s0)
	sw  t1, 0(t0)
	lw  t0, -36(s0)
	addi  t1, zero, 0
	sw  t1, 0(t0)
	j  .main1
.main1:
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -56(s0)
	lw  t0, -56(s0)
	addi  t1, zero, 10
	sub  t2, t0, t1
	sltz  t3, t2
	sw  t3, -60(s0)
	lw  t0, -60(s0)
	beqz  t0, .main4
	j  .main2
.main2:
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -64(s0)
	lw  t0, -36(s0)
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
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -80(s0)
	addi  t0, zero, 9
	lw  t1, -80(s0)
	sub  t2, t0, t1
	sw  t2, -84(s0)
	lw  t0, -76(s0)
	lw  t1, -84(s0)
	sw  t1, 0(t0)
	j  .main3
.main3:
	lw  t0, -36(s0)
	lw  t0, 0(t0)
	sw  t0, -88(s0)
	lw  t0, -88(s0)
	addi  t1, zero, 1
	add  t2, t0, t1
	sw  t2, -92(s0)
	lw  t0, -36(s0)
	lw  t1, -92(s0)
	sw  t1, 0(t0)
	j  .main1
.main4:
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -96(s0)
	lw  t0, -28(s0)
	lw  t0, 0(t0)
	sw  t0, -100(s0)
	lw  a0, -96(s0)
	lw  a1, -100(s0)
	call  vector_init
	sw  a0, -104(s0)
	la  a0, .$str4
	call  print
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -108(s0)
	lw  a0, -108(s0)
	call  vector_tostring
	sw  a0, -112(s0)
	lw  a0, -112(s0)
	call  println
	addi  a0, zero, 4
	call  malloc
	sw  a0, -116(s0)
	lw  a0, -116(s0)
	call  vector
	lw  t0, -44(s0)
	lw  t1, -116(s0)
	sw  t1, 0(t0)
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -120(s0)
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -124(s0)
	lw  a0, -120(s0)
	lw  a1, -124(s0)
	call  vector_copy
	sw  a0, -128(s0)
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -132(s0)
	lw  a0, -132(s0)
	addi  a1, zero, 3
	addi  a2, zero, 817
	call  vector_set
	sw  a0, -136(s0)
	lw  t0, -136(s0)
	beqz  t0, .main6
	j  .main5
.main5:
	la  a0, .$str5
	call  println
	j  .main7
.main6:
	j  .main7
.main7:
	la  a0, .$str6
	call  print
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -140(s0)
	lw  a0, -140(s0)
	call  vector_tostring
	sw  a0, -144(s0)
	lw  a0, -144(s0)
	call  println
	la  a0, .$str7
	call  print
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -148(s0)
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -152(s0)
	lw  a0, -148(s0)
	lw  a1, -152(s0)
	call  vector_add
	sw  a0, -156(s0)
	lw  a0, -156(s0)
	call  vector_tostring
	sw  a0, -160(s0)
	lw  a0, -160(s0)
	call  println
	la  a0, .$str8
	call  print
	lw  t0, -20(s0)
	lw  t0, 0(t0)
	sw  t0, -164(s0)
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -168(s0)
	lw  a0, -164(s0)
	lw  a1, -168(s0)
	call  vector_dot
	sw  a0, -172(s0)
	lw  a0, -172(s0)
	call  toString
	sw  a0, -176(s0)
	lw  a0, -176(s0)
	call  println
	la  a0, .$str9
	call  print
	lw  t0, -44(s0)
	lw  t0, 0(t0)
	sw  t0, -180(s0)
	lw  a0, -180(s0)
	addi  a1, zero, 8
	call  vector_scalarInPlaceMultiply
	sw  a0, -184(s0)
	lw  a0, -184(s0)
	call  vector_tostring
	sw  a0, -188(s0)
	lw  a0, -188(s0)
	call  println
	addi  t0, zero, 0
	sw  t0, -12(s0)
	j  .mainexit
.mainexit:
	lw  a0, -12(s0)
	lw  s0, 180(sp)
	lw  ra, 184(sp)
	addi  sp, sp, 188
	ret

	.section  .rodata
	.p2align  2
.$str1:
	.string  "( "

	.section  .rodata
	.p2align  2
.$str2:
	.string  ", "

	.section  .rodata
	.p2align  2
.$str3:
	.string  " )"

	.section  .rodata
	.p2align  2
.$str4:
	.string  "vector x: "

	.section  .rodata
	.p2align  2
.$str5:
	.string  "excited!"

	.section  .rodata
	.p2align  2
.$str6:
	.string  "vector y: "

	.section  .rodata
	.p2align  2
.$str7:
	.string  "x + y: "

	.section  .rodata
	.p2align  2
.$str8:
	.string  "x * y: "

	.section  .rodata
	.p2align  2
.$str9:
	.string  "(1 << 3) * y: "

