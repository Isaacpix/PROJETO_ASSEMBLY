#COMANDOS LI $V0
#COMANDO    SIGNIFICADO

#li $v0, 1    IMPRIMIR INTEIRO
#li $v0, 2    IMPRIMIR FLOAT
#li $v0, 3    IMPRIMIR DOUBLE
#li $v0, 4    IMPRIMIR STRING OU CHAR
#li $v0, 5    LER INTEIRO
#li $v0, 6    LER FLOAT
#li $v0, 7    LER DOUBLE
#li $v0, 8    LER STRING OU CHAR 
#li $v0, 10   ENCERRAR O PROGRAMA PRINCIPAL

.data
	msg1: .asciiz "Digite um número positivo:  "
	msgPar: .asciiz "O número é par"
	msgImpar: .asciiz "O número é ímpar"
.text
	la $a0, msg1
	jal imprimeString
	jal leInteiro
	
	move $a0, $v0
	jal eImpar 
	beq $v0, $zero, imprimePar
	la $a0, msgImpar
	jal imprimeString
	jal encerraPrograma
	
	imprimePar:
		la $a0, msgPar
		jal imprimeString
		jal encerraPrograma
		
	eImpar:
		li $t0, 2
		div $a0, $t0
		
		mfhi $v0
		jr $ra
		
		encerraPrograma:
			li $v0,10
			syscall
		 
		imprimeString:
		li $v0, 4
		syscall
		jr $ra
		
		leInteiro:
		li $v0, 5
		syscall
		jr $ra
		
		