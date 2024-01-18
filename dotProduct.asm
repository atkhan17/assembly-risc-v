;calculates dot product of two vectors

a: DF 1.21, 5.85, -7.3, -5.55, 0.0
b: DF 3.14, -2.1, 44.2, 11.0, -7.77	

main:	addi x3, x0, 32
	jal x1, loop
	
	fsd f3, b(x3)
	ebreak x0, x0, 0


loop:	fld f0, a(x2)
	fld f1, b(x2)
	fmul.d f2, f0, f1
	fadd.d f3, f3, f2
	addi x2, x2, 8
	bne x2, x3, loop
	jalr x0, x1, 0

	