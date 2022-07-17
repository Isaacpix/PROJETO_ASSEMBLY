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

	entrada: .asciiz "Digite o seu nome: "
	saida: .asciiz "O seu nome é: "
	nome: .space 20
	
.text

	li $v0, 4
	la $a0, entrada
	syscall
	
	li $v0, 8
	la $a0, nome
	la $a1, 25
	syscall
	
	li $v0, 4
	la $a0, saida 
	syscall
	
	li $v0, 4 
	la $a0, nome
	syscall