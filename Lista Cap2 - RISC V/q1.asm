main:
	lw x10, a #carrega o valor de a no registrador x10 (a)
	lw x11, b #carrega o valor de b no registrador x11 (b)
	lw x12, m #carrega o valor de m no registrador x12 (m)

	lw x12, 0(x10) #iguala o valor de x12 ao valor de x10 (m=a)

	beq x11, x12, if #se b for igual a m, vai para o if
	sub x12, x10, x11 #senão, subtrai b de a e guarda em m

if: 
	sub x12, x11, x10 #subtrai a de b e guarda em m

halt #para o programa

a: .word 0x10 #define o valor de a
b: .word 0x10 #define o valor de b
m: .word 0x1 #define o valor de m