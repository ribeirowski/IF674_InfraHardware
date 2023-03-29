lw x10, value1 # x10 = 0xffff0000
lw x11, value2 # x11 = 0xf0f0ffff

srli x12, x10, 8 # x12 = 0x00ffff00
slli x12, x12, 24 # x12 = 0x00000000
slli x11, x11, 8 # x11 = 0xf0ffff00
srli x11, x11, 8 # x11 = 0x00f0ffff
or x11, x11, x12 # x11 = 0x00f0ffff

halt
value1: .word 0xffff0000
value2: .word 0xf0f0ffff