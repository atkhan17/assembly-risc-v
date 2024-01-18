;store the following values and do some arithmetic
DD 1024, 2048, 4096, 8192

ld x1, 0(x0)
ld x2, 8(x0)
ld x3, 16(x0)
ld x4, 24(x0)

add x5, x1, x2
add x4, x4, x3
add x5, x5, x4

srli x5, x5,2 

;store the following values and do some arithmetic
c: DD a
d: DD b

ORG 0x1000100010001000
a: DD 0x2222333344445555

ORG 0x1000100010001100
b: DD 0x1111222233334444

ld x6, c(x0)
ld x6, 0(x6)

ld x7, d(x0)
ld x7, 0(x7)

add x28, x6, x7
sub x29, x6, x7
or x30, x6, x7
xor x31, x6, x7