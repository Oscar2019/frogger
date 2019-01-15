.data

FMELHORPONTUACAO: .asciiz "pontos.bin"
PONTOS: .space 4


.text
sw $0, PONTOS($0)
	
# Abre o arquivo
	la $a0,FMELHORPONTUACAO
	li $a1,1
	li $a2,0
	li $v0,13
	syscall

	move $a0,$v0
	la $a1, PONTOS
	li $a2,4
	li $v0,15
	syscall

	li $v0,16
	syscall

EXIT:
la $v0, 10
syscall

