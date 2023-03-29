addi x5, x0, 48 #contador de consoantes
addi x6, x0, 0 #contador de vogais
addi x11, x0, 65 #A 
addi x12, x0, 97 #a
addi x13, x0, 69 #E
addi x14, x0, 101 #e
addi x15, x0, 73 #I
addi x16, x0, 105 #i
addi x17, x0, 79 #O
addi x28, x0, 111 #o
addi x29, x0, 85 #U
addi x30, x0, 117 #u
addi x31, x0, 0 #\0

scanf: #função scanf
    lb x10, 1025(x0) #leitura do caracter
    beq x10, x11, contVogal #comparação com a vogal A
    beq x10, x12, contVogal #comparação com a vogal a
    beq x10, x13, contVogal #comparação com a vogal E
    beq x10, x14, contVogal #comparação com a vogal e
    beq x10, x15, contVogal #comparação com a vogal I
    beq x10, x16, contVogal #comparação com a vogal i
    beq x10, x17, contVogal #comparação com a vogal O
    beq x10, x28, contVogal #comparação com a vogal o
    beq x10, x29, contVogal #comparação com a vogal U     
    beq x10, x30, contVogal #comparação com a vogal u
    beq x10, x31, exit #comparação com o caracter nulo, se for nulo vai pra função exit que printa o resultado no display e sai do programa
    contConsoante: #se não for nenhuma das vogais, é uma consoante
        addi x5, x5, 1 #incrementa o contador de consoantes
        jal x7, scanf #chama a função scanf novamente

contVogal: #se for uma vogal
    addi x6, x6, 1 #incrementa o contador de vogais
    jal x7, scanf #chama a função scanf novamente

exit: #função exit
    sb x5, 1024(x0) #printa o valor do contador de consoantes no display
    halt #para o programa
