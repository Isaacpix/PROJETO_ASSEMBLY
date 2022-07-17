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

	maior: .asciiz "O número citado, é maior que zero."
	menor: .asciiz "O número citado, é menor que zero."
	igual: .asciiz "O número citado, é igual a zero."
	
.text
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	beq $t0, $zero, imprimeIgual
	bgt $t0, $zero, imprimeMaior
	blt $t0, $zero, imprimeMenor
	
	imprimeIgual:
		li $v0, 4
		la $a0, igual
		syscall
		
		li $v0, 10
		syscall
		
	imprimeMaior: 
		li $v0, 4
		la $a0, maior
		syscall
		
		li $v0, 10
		syscall
		
	imprimeMenor: 
		li $v0, 4
		la $a0, menor
		syscall 
		
		li $v0, 10
		syscall