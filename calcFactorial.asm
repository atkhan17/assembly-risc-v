; Takes input number from user to calculate factorial of

c: DC "Factorial to calculate: \0"
STACK: 	EQU 0x100000
	lui sp, STACK >> 12

main:	ld x3, c(x0)
	ecall x3, x0, 4
	ecall x4, x0, 5
	add x8, x0, x4
	add x10, x8, x0
	jal x1, fact
	add x5, x10, x0
	ecall x0, x5, 0
	ebreak x0, x0, 0
	

fact:	sd x10, 0(sp)
	sd x1, 8(sp)
	addi sp, sp, 16

	addi x8, x10, -1
	bne x8, x0, L1
	addi sp, sp, -16
	addi x10, x0, 1
	jalr x0, x1, 0

L1:	addi x10, x10, -1
	jal x1, fact
	addi sp, sp, -16
	ld x8, 0(sp)
	ld x1, 8(sp)
	mul x10, x10, x8
	jalr x0, x1, 0

