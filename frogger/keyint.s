####################################################
#  Programa de exemplo de interrup�ao do teclado   #
#  usando o Keyboard Display MMIO Tool		   #
#  ISC Nov 2017				           #
#  Marcus Vinicius			           #
####################################################

.text
# programa do usu�rio
	la $t1,0xFF100000	# Endere�o de controle do KDMMIO
	li $t0,0x02		# bit 1 habilita/desabilita a interrup��o
	sw $t0,0($t1)   	# Habilita interrup��o do teclado

	li $s0,0		# zera contador
CONTA:	addi $s0,$s0,1		# incrementa contador
	j CONTA			# volta ao loop
	

.ktext	
# rotina de tratamento da interrup��o
KDInterrupt: 	la $t1,0xFF100000		# carrega o endere�o base do KDMMIO
  		lw $t2,4($t1)  			# le a tecla
		sw $t2,12($t1) 
		move $a0, $t2			# escreve no display
		li $v0, 11
		syscall
		eret				# volta ao programa do usu�rio

