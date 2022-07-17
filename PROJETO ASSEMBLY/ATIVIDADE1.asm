.data 
	
	X: .asciiz   "A" 

.text

	li $v0, 4
	la $a0, X
	syscall