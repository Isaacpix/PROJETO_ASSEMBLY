#COMANDOS LI $V0
#COMANDO    SIGNIFICADO

#li $v0, 1    IMPRIMIR INTEIRO
#li $v0, 2    IMPRIMIR FLOAT
#li $v0, 3     IMPRIMIR DOUBLE
#li $v0, 4    IMPRIMIR STRING OU CHAR
#li $v0, 5    LER INTEIRO
#li $v0, 6    LER FLOAT
#li $v0, 7    LER DOUBLE
#li $v0, 8    LER STRING OU CHAR 
#li $v0, 10    ENCERRAR O PROGRAMA PRINCIPAL

.data
	array1:
		.alig 2
		.space 16 
.text
	move $t0, $zero
	move $t1, $zero
	li $t2, 16
	
	loop:
	beq $t0, $t2, finalLoop
	sw $t1, array1 ($t0)
	addi $t0, $t0, 4
	addi $t1, $t1, 1 
	j loop
	
	finalLoop:
		move $t0, $zero
		imprime:
		beq $t0, $t2, finalImpressao
		li $v0, 1
		lw $a0, array1 ($t0)
		syscall
		
		addi $t0, $t0, 4
		j imprime
		
		finalImpressao:
		