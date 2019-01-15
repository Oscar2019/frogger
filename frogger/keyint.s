####################################################
#  Programa de exemplo de interrupçao do teclado   #
#  usando o Keyboard Display MMIO Tool		   #
#  ISC Nov 2017				           #
#  Marcus Vinicius			           #
####################################################

.text
# programa do usuário
	la $t1,0xFF100000	# Endereço de controle do KDMMIO
	li $t0,0x02		# bit 1 habilita/desabilita a interrupção
	sw $t0,0($t1)   	# Habilita interrupção do teclado

	li $s0,0		# zera contador
CONTA:	addi $s0,$s0,1		# incrementa contador
	j CONTA			# volta ao loop
	

.ktext	
# rotina de tratamento da interrupção
KDInterrupt: 	la $t1,0xFF100000		# carrega o endereço base do KDMMIO
  		lw $t2,4($t1)  			# le a tecla
		sw $t2,12($t1) 
		move $a0, $t2			# escreve no display
		li $v0, 11
		syscall
		eret				# volta ao programa do usuário

