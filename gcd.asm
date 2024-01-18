;calculates gcd of two positive integers

s1: DC "Enter two positive integers:\n\0"

STACK: EQU 0x100000
	lui sp, STACK>>12

main:	ld x3, s1(x0)
	ecall x3, x1, 4 #out prompt
	ecall x4, x0, 5 #in a
	ecall x5, x0, 5 #in b
	
	add a1, x4, x0
	add a2, x5, x0
	jal x1, gcd
	
	ecall x0, a3, 0
	ebreak x0, x0, 0

gcd:	sd x1, 0(sp)
	addi sp, sp, -8
	bne a2, x0, R1
	add a3, a1, x0
	jalr x0, 0(x1)

R1:	rem x7, a1, a2
	addi a1, a2, 0
	addi a2, x7, 0
	jal x1, gcd
	addi sp, sp, 8
	ld x1, 0(sp)
	jalr x0, 0(x1)
	



		