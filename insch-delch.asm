str1: 	DC "sampled text\0"
str2:	DC "s\0"

main:	addi a2, x0, str1
	addi a3, x0, 3
	jal x1, delch
	addi x6, x0, str1
	ecall x0, x6, 4

	addi x5, x0, 0

	addi a2, x0, str1+7
	addi a3, x0, str2
	addi a4, x0, 3
	jal x1, insch
	addi x6, x0, str1
	ecall x0, x6, 4
	
	ebreak x0, x0, 0

;delete a character
delch1:	lb 	x5, 0(a2)
loop1: 	beq 	x5, x0, end1
	lb	x5, 1(a2)
	sb	x5, 0(a2)
	addi	a2, a2, 1
	jal	x0, loop1
end1:	jalr	x0, 0(x1)

;insert a character
insch1: lb x5, 0(a2)
	sb a3, 0(a2)
	addi a3, x5, 0
	addi a2, a2, 1
	bne a3, x0, insch1
	sb a3, 0(a2)
	jalr x0, 0(x1)

;delete characters
delch: 	add	x6, x1, x0
loop2:	add 	x7, a2, x0
	jal x1, delch1
	add	a2, x7, x0
	addi	a3, a3, -1
	bne	a3, x0, loop2
	jalr	x0, 0(x6)

;insert characters
insch: 	add	x6, x1, x0
	add	x8, a3, x0
loop3:	lb	a3, 0(x8)
	add 	x7, a2, x0
	jal x1, insch1
	addi	x7, x7, 1
	add	a2, x7, x0
	addi	a4, a4, -1
	bne	a4, x0, loop3
	jalr	x0, 0(x6)
