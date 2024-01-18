;finds all divisors of number input by user

a: DC "Find all divisors.\nEnter i:\0"
b: DC "Divisors:"

main:	addi t0, x0, a
	addi t1, x0, b
	ecall x1, t0, 4
	ecall s0, x0, 5
	ecall x0, t1, 4
	addi a0, a0, 1
	jal x1, loop

	ebreak x0, x0, 0
	
loop:	rem a3, s0, a0
	bne a3, x0, L
	div a3, s0, a0
	ecall x0, a0, 0
	ecall x0, a3, 0
	addi a4, a3, 0

L:	addi a0, a0, 1
	bne a0, a4, loop
	jalr x0, x1, 0
