;store value of 8000 into x6 and 7990 in x5

c: EQU 8000 >> 12
b: EQU 8000 & 0xfff
lui	x1, c + 1
addi	x2, x0, b
add	x6, x1, x2
addi	x5, x6, -10