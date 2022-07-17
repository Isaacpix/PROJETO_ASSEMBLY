#CÓDIGOS;
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

	msg: .asciiz "Digite um número: "
	par: .asciiz "O numero é par. "
	impar: .asciiz "O número é ímpar."
	
.text

	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	
	li $t0, 2
	div $v0, $t0
	
	mfhi $t1
	
	beq $t1, $zero, entaoPar
	li $v0, 4
	la $a0, impar
	syscall
	
	entaoPar: 
		li $v0, 4
		la $a0, par
		syscall
		
	li $v0, 10
	syscall