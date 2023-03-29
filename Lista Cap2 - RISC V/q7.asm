addi x11, x0, 0b000001 #
addi x12, x0, 0b000010 #
addi x13, x0, 0b000100 #
addi x14, x0, 0b001000
addi x15, x0, 0b010000
addi x16, x0, 0b100000
addi x17, x0, 0x147 #
addi x18, x0, 0x1ad
addi x19, x0, 0x213
addi x20, x0, 0x27a
addi x21, x0, 0x2e0

loop1:
	lh x10, 1031(x0) # leitura do teclado
	beq x10, x11, printar # se for 1

continua...
