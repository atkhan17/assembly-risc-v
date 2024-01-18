a: DD 0xAAAABBBBCCCCDDDD
b: DD 0x4444333322221111

ORG 0x3000

ld x5, 0(x0)
ld x6, 8(x0)

add x7, x5, x6
sd x7, 16(x0)

sub x8, x5, x6
sd x8, 24(x0)

sub x9, x6, x5
sd x9, 32(x0)

and x10, x5, x6
sd x10, 40(x0)

or x11, x5, x6
sd x11, 48(x0)

xor x12, x5, x6
sd x12, 56(x0)

xori x13, x5, -1
addi x13, x13, 1
sd x13, 64(x0)

xori x14, x6, -1
addi x14, x14, 1
sd x14, 72(x0)









 
