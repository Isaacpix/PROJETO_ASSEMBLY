.data
	#�rea para dados na mem�ria principal
	msg: .asciiz "Hello, world!!!"       #Mensagem que ser� exibiba para o usu�rio. 
	

.text 
	#�rea para instru��es do programa. 
	
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

	li $v0, 4      # INSTRU��O PARA IMPRESS�O DE STRING 
	la $a0, msg    # INDICAR O ENDERE�O EM QUE EST� A MENSAGEM 
	syscall	       # FA�A! IMPRIMI A MENSAGEM SOLICITADA

