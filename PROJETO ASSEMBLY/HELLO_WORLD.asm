.data
	#área para dados na memória principal
	msg: .asciiz "Hello, world!!!"       #Mensagem que será exibiba para o usuário. 
	

.text 
	#área para instruções do programa. 
	
#COMANDOS LI $V0
#COMANDO	SIGNIFICADO

#li $v0, 1	IMPRIMIR INTEIRO
#li $v0, 2	IMPRIMIR FLOAT
#li $v0, 3 	IMPRIMIR DOUBLE
#li $v0, 4	IMPRIMIR STRING OU CHAR
#li $v0, 5	LER INTEIRO
#li $v0, 6	LER FLOAT
#li $v0, 7	LER DOUBLE
#li $v0, 8	LER STRING OU CHAR 
#li $v0, 10	ENCERRAR O PROGRAMA PRINCIPAL

	li $v0, 4      # INSTRUÇÃO PARA IMPRESSÃO DE STRING 
	la $a0, msg    # INDICAR O ENDEREÇO EM QUE ESTÁ A MENSAGEM 
	syscall	       # FAÇA! IMPRIMI A MENSAGEM SOLICITADA

