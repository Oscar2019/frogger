#COOR(y, x)
.data

COORD_SAPO: .space 8
BACKGROUND: .space 76800
COORDS_CARROS_1: .space 8
COORDS_CARROS_2: .space 20
COORDS_CARROS_3: .space 24
COORDS_CARROS_4: .space 20
COORDS_CARROS_5: .space 24

COORDS_TRONCO_1: .space 4 #tronco medio
COORDS_JACARE: .space 4 #tronco medio
COORDS_TART_1: .space 8
COORDS_TRONCO_2: .space 4  #tronco grande
COORDS_TRONCO_3: .space 12 #tronco pequeno
COORDS_TART_2: .space 8

VELOCIDADE_CARROS_1: .space 1
VELOCIDADE_CARROS_2: .space 1
VELOCIDADE_CARROS_3: .space 1
VELOCIDADE_CARROS_4: .space 1
VELOCIDADE_CARROS_5: .space 1

VELOCIDADE_TRONCO_1: .space 1 #tronco medio
VELOCIDADE_JACARE: .space 1 #tronco medio
VELOCIDADE_TART_1: .space 1
VELOCIDADE_TRONCO_2: .space 1  #tronco grande
VELOCIDADE_TRONCO_3: .space 1 #tronco pequeno
VELOCIDADE_TART_2: .space 1

COORDS_CHEGADA: .word 16, 63, 64, 127, 128, 191, 192, 255, 256, 303
CASAS_CHEGADAS: .space 5
FBACKGROUND: .asciiz "display.bin"
FSAPO: .asciiz "sapo.bin"
FCARRO: .asciiz "carro.bin"
FCHEGADA: .asciiz "chegada.bin"

.text
	la $a0, FBACKGROUND
	li $a1, 0
	li $a2, 0
	li $v0, 13
	syscall
	
	move $a0,$v0
	la $a1, BACKGROUND
	li $a2, 76800
	li $v0, 14
	syscall
	
	li $v0, 16
	syscall
	
	la $a0, FBACKGROUND
	li $a1, 0
	li $a2, 0
	li $v0, 13
	syscall
	
	move $a0,$v0
	li $a1, 0xFF000000
	li $a2, 76800
	li $v0, 14
	syscall
	
	li $v0, 16
	syscall
#tela inicial
li $t0, 0
sb $t0, CASAS_CHEGADAS+0($0)
sb $t0, CASAS_CHEGADAS+1($0)
sb $t0, CASAS_CHEGADAS+2($0)
sb $t0, CASAS_CHEGADAS+3($0)
sb $t0, CASAS_CHEGADAS+4($0)
li $t0, 2
sb $t0, VELOCIDADE_CARROS_1($zero)
sb $t0, VELOCIDADE_CARROS_2($zero)
sb $t0, VELOCIDADE_CARROS_3($zero)
sb $t0, VELOCIDADE_CARROS_4($zero)
sb $t0, VELOCIDADE_CARROS_5($zero)
sb $t0, VELOCIDADE_TRONCO_1($zero)
sb $t0, VELOCIDADE_JACARE($zero)
sb $t0, VELOCIDADE_TART_1($zero)
sb $t0, VELOCIDADE_TRONCO_2($zero)
sb $t0, VELOCIDADE_TRONCO_3($zero)
sb $t0, VELOCIDADE_TART_2($zero)
INIT_JOGO:
	li $s0, 160
	sw $s0, COORDS_CARROS_1($zero)
	li $s0, 224
	sw $s0, COORDS_CARROS_1+4($zero)
	
	li $s0, 32
	sw $s0, COORDS_CARROS_2($zero)
	li $s0, 96
	sw $s0, COORDS_CARROS_2+4($zero)
	li $s0, 160
	sw $s0, COORDS_CARROS_2+8($zero)
	li $s0, 224
	sw $s0, COORDS_CARROS_2+12($zero)
	li $s0, 288
	sw $s0, COORDS_CARROS_2+16($zero)
	
	li $s0, 32
	sw $s0, COORDS_CARROS_3($zero)
	li $s0, 96
	sw $s0, COORDS_CARROS_3+4($zero)
	li $s0, 160
	sw $s0, COORDS_CARROS_3+8($zero)
	li $s0, 224
	sw $s0, COORDS_CARROS_3+12($zero)
	li $s0, 288
	sw $s0, COORDS_CARROS_3+16($zero)
	li $s0, 288
	sw $s0, COORDS_CARROS_3+20($zero)
	
	li $s0, 32
	sw $s0, COORDS_CARROS_4($zero)
	li $s0, 96
	sw $s0, COORDS_CARROS_4+4($zero)
	li $s0, 160
	sw $s0, COORDS_CARROS_4+8($zero)
	li $s0, 224
	sw $s0, COORDS_CARROS_4+12($zero)
	li $s0, 288
	sw $s0, COORDS_CARROS_4+16($zero)
	
	li $s0, 32
	sw $s0, COORDS_CARROS_5($zero)
	li $s0, 96
	sw $s0, COORDS_CARROS_5+4($zero)
	li $s0, 160
	sw $s0, COORDS_CARROS_5+8($zero)
	li $s0, 224
	sw $s0, COORDS_CARROS_5+12($zero)
	li $s0, 288
	sw $s0, COORDS_CARROS_5+16($zero)
	li $s0, 288
	sw $s0, COORDS_CARROS_5+20($zero)
	
	li $s0, 208
	sw $s0, COORDS_TRONCO_1($zero)

	li $s0, 208
	sw $s0, COORDS_JACARE($zero)
	
	li $s0, 208
	sw $s0, COORDS_TART_1($zero)
	li $s0, 144
	sw $s0, COORDS_TART_1+4($zero)
	
	li $s0, 208
	sw $s0, COORDS_TRONCO_2($zero)
	li $s0, 144
	sw $s0, COORDS_TRONCO_2+4($zero)
	
	li $s0, 208
	sw $s0, COORDS_TRONCO_3($zero)
	li $s0, 144
	sw $s0, COORDS_TRONCO_3+4($zero)
	
	li $s0, 208
	sw $s0, COORDS_TART_2($zero)
	li $s0, 144
	sw $s0, COORDS_TART_2+4($zero)
	
	li $s0, 208
	sw $s0, COORD_SAPO($zero)
	li $s0, 144
	sw $s0, COORD_SAPO+4($zero)
	
	# parametros para a função print tela
	lw $t1, COORD_SAPO($zero)
	lw $t2, COORD_SAPO+4($zero)
	lui $t3, 0xFF00
	mul $t1, $t1, 320
	add $t1, $t1, $t2
	or $t1, $t1, $t3
	la $a0, FSAPO
	li $t4, 5120
	jal PRINTA_TELA #printa o sado
	
	LOOP_PRINCIPAL:
	
		li $a0, 25
		li $v0, 32
		syscall
		
		la $a0, COORDS_TRONCO_1
		lb $a1, VELOCIDADE_TRONCO_1($zero)
		li $a2, 1
		la $a3, FCARRO
		li $t0, 1
		li $t1, 32
		li $t2, 48
		jal MOVE_CARRO
		
		la $a0, COORDS_TRONCO_2
		lb $a1, VELOCIDADE_TRONCO_2($zero)
		li $a2, 1
		la $a3, FCARRO
		li $t0, 1
		li $t1, 48
		li $t2, 64
		jal MOVE_CARRO
		
		la $a0, COORDS_TART_1
		lb $a1, VELOCIDADE_TART_1($zero)
		li $a2, 1
		la $a3, FCARRO
		li $t0, -1
		li $t1, 64
		li $t2, 80
		jal MOVE_CARRO
		
		la $a0, COORDS_TRONCO_3
		lb $a1, VELOCIDADE_TRONCO_3($zero)
		li $a2, 1
		la $a3, FCARRO
		li $t0, 1
		li $t1, 80
		li $t2, 96
		jal MOVE_CARRO
		
		la $a0, COORDS_TART_2
		lb $a1, VELOCIDADE_TART_2($zero)
		li $a2, 1
		la $a3, FCARRO
		li $t0, -1
		li $t1, 96
		li $t2, 112
		jal MOVE_CARRO
		
		la $a0, COORDS_CARROS_1
		lb $a1, VELOCIDADE_CARROS_1($zero)
		li $a2, 1
		la $a3, FCARRO
		li $t0, -1
		li $t1, 128
		li $t2, 144
		jal MOVE_CARRO
		
		la $a0, COORDS_CARROS_2
		lb $a1, VELOCIDADE_CARROS_2($zero)
		li $a2, 1
		la $a3, FCARRO
		li $t0, 1
		li $t1, 144
		li $t2, 160
		jal MOVE_CARRO
		
		la $a0, COORDS_CARROS_3
		lb $a1, VELOCIDADE_CARROS_3($zero)
		li $a2, 1
		la $a3, FCARRO
		li $t0, -1
		li $t1, 160
		li $t2, 176
		jal MOVE_CARRO
		
		la $a0, COORDS_CARROS_4
		lb $a1, VELOCIDADE_CARROS_4($zero)
		li $a2, 1
		la $a3, FCARRO
		li $t0, 1
		li $t1, 176
		li $t2, 192
		jal MOVE_CARRO
		
		la $a0, COORDS_CARROS_5
		lb $a1, VELOCIDADE_CARROS_5($zero)
		li $a2, 1
		la $a3, FCARRO
		li $t0, -1
		li $t1, 192
		li $t2, 208
		jal MOVE_CARRO
		
		
		
		jal LE_TECLA# le tecla do teclado
		beq $v0, $0, NAO_MOVE_SAPO #vefifica tecla de controle
			move $s0, $v1 #move tecla apertada
			#passa as cordenadas
			lw  $a0, COORD_SAPO($zero)
			lw  $a1, COORD_SAPO+4($zero)
			lw  $a2, COORD_SAPO($zero)
			lw  $a3, COORD_SAPO+4($zero)
			addi $a2, $a2, 16
			addi $a3, $a3, 16
			#
			jal TRANSFORMA_DUAS_COORD_EM_UMA # transforma sua coords em uma
			jal COPIA_ESPACO # copia espaco do background na tela
			move $a0, $s0 # copia tecla pra $s0
			jal MOVE_SAPO # muda as coors no sapo em COORD_SAPO
			# parametros para a função print tela
			lw $t1, COORD_SAPO($zero)
			lw $t2, COORD_SAPO+4($zero)
			lui $t3, 0xFF00
			mul $t1, $t1, 320
			add $t1, $t1, $t2
			or $t1, $t1, $t3
			la $a0, FSAPO
			#
			jal PRINTA_TELA #printa o sapo
		NAO_MOVE_SAPO:
			lw $t1, COORD_SAPO($zero)
			lw $t0, COORD_SAPO+4($zero)
			li $a1, 128
			lw $a0, COORDS_CARROS_1($zero)
			addi $a3, $a1, 15
			addi $a2, $a0, 47
			jal DETECTA_COLOSAO
			beq $v0, 1, PERDEU
		
		j LOOP_PRINCIPAL
		
PRINTA_TELA:
	li $a1, 0
	li $a2, 0
	li $v0, 13
	syscall
	
	move $a0,$v0
	move $a1, $t1
	li $a2, 5120
	li $v0, 14
	syscall
	
	li $v0, 16
	syscall
jr $ra

LE_TECLA:
	la $t1,0xFF100000
	lw $v0,0($t1)
	andi $v0,$v0,0x0001		# Le bit de Controle Teclado
   	beq $v0,$zero,PULA_TECLA   	   	# Se não há tecla pressionada PULA
  	lw $v1,4($t1)  		# Tecla lida
PULA_TECLA:	jr $ra

MOVE_CARRO:
		move $s0, $ra
		move $s1, $a0 # $a0, COORDS_CARROS_1
		move $s2, $a1 # $a1, VELOCIDADE_CARROS_1
		mul $s2, $s2, $t0
		move $s3, $a2 # $a2, NUM_CARROS_1
		move $s4, $a3 # la $a3, FCARRO_1
		move $s5, $t1 # coordenadas Y do carro
		move $s6, $t2 # coordenadas X do carro
		li $t4, 0
		LOOP_MOVE_CARRO: beq $t4, $s3, FORA_LOOP_MOVE_CARRO
			#apaga o carro
			move  $a0, $s5
			lw  $a1, 0($s1)
			move  $a2, $s6
			addi $a3, $a1, 48
			ble $s2, 0, NAO_ALTERA_COORD_DO_MENOR
				sub $a1, $a1, $s2
				add $a3, $a3, $s2
				add $a3, $a3, $s2
				j NAO_ALTERA_COORD
			NAO_ALTERA_COORD_DO_MENOR: 
				#sub $a1, $a1, $s2
				#add $a3, $a3, $s2
				#add $a3, $a3, $s2
				j NAO_ALTERA_COORD
			NAO_ALTERA_COORD: 
			jal TRANSFORMA_DUAS_COORD_EM_UMA # transforma sua coords em uma
			jal COPIA_ESPACO # copia espaco do background na tela
			#reescreve carro
			move $t1, $s5
			lw $t2, 0($s1)
			lui $t3, 0xFF00
			mul $t1, $t1, 320
			add $t1, $t1, $t2
			or $t1, $t1, $t3
			move $a0, $s4
			jal PRINTA_TELA
			add $t2, $t2, $s2
			bge $s2, 0, MENOR_QUE_0
				bgt $t2, 0, NAO_RESETA_CARRO_1
					li $t2, 320
				NAO_RESETA_CARRO_1:
				j NAO_RESETA_CARRO_2
			MENOR_QUE_0:
				blt $t2, 320, NAO_RESETA_CARRO_2
					li $t2, 0
				NAO_RESETA_CARRO_2:
			sw $t2, 0($s1)
			addi $t4, $t4, 1
			addi $s1, $s1, 4
			j LOOP_MOVE_CARRO
			li $a0, 5
			li $v0, 32
			syscall
		FORA_LOOP_MOVE_CARRO:
		move $ra, $s0
jr $ra

MOVE_SAPO:
	bne $a0, 'w', NAO_E_W
	j E_W
	bne $a0, 'W', NAO_E_W
	E_W:
	lw $t1, COORD_SAPO($zero)
	addi $t1, $t1, -16
	sw $t1, COORD_SAPO($zero)
	bge $t1, 32, SAI_TECLA
	li $t2, 0
	la $t3, COORDS_CHEGADA
	li $v0, 0
	li $t7, 1
	LOOP_CHEGADA:
	lw $t4, 0($t3)
	lw $t5, 8($t3)
	move $t6, $ra
		lw $t0, COORD_SAPO($zero)
		li $a1, 16
		move $a0, $t4
		addi $a3, $a1, 16
		move $a2, $t5
		jal DETECTA_COLOSAO
		beq $v0, 1, GANHOU
		move $ra, $t6
	addi $t3, $t3, 8
	addi $t7, $t7, 1
	j LOOP_CHEGADA
	NAO_E_W:
		bne $a0, 'a', NAO_E_A
		j E_A
		bne $a0, 'A', NAO_E_A
		E_A:
		lw $t1, COORD_SAPO+4($zero)
		addi $t1, $t1, -16
		sw $t1, COORD_SAPO+4($zero)
		j SAI_TECLA
		NAO_E_A:
			bne $a0, 's', NAO_E_S
			j E_S
			bne $a0, 'S', NAO_E_S
			E_S:
			lw $t1, COORD_SAPO($zero)
			addi $t1, $t1, 16
			sw $t1, COORD_SAPO($zero)
			j SAI_TECLA
			NAO_E_S:
				bne $a0, 'd', SAI_TECLA
				j E_D
				bne $a0, 'D', SAI_TECLA
				E_D:
				lw $t1, COORD_SAPO+4($zero)
				addi $t1, $t1, 16
				sw $t1, COORD_SAPO+4($zero)
SAI_TECLA: jr $ra

COPIA_ESPACO:
	sub $t0, $a3, $a1
	li $t1, 320
	sub $t1, $t1, $t0
	add $t0, $t0, $v0
	LOOP_COPIAR: bge $v0, $v1, FORA_LOOP_COPIAR
		la $t3, BACKGROUND 
		addu $t3, $t3, $v0
		lw $t2, 0($t3)
		lui $t3, 0xFF00
		addu $t3, $t3, $v0
		sw $t2, 0($t3)
		bne $v0, $t0, PROX_LINE
			add $v0, $v0, $t1
			addi $t0, $t0, 320
			addi $v0, $v0, -4
		PROX_LINE:
		addi $v0, $v0, 4
		j LOOP_COPIAR
	FORA_LOOP_COPIAR:
jr $ra

TRANSFORMA_DUAS_COORD_EM_UMA:
	mul $v0, $a0, 320
	add $v0, $v0, $a1
	mul $v1, $a2, 320
	add $v1, $v1, $a3
jr $ra

DETECTA_COLOSAO:	# $t0 $t1 $a0 $a1 $a2 $a3
					# a,  b,  x1, y1, x2, y2
	sge $v0, $t0, $a0
	sge $t2, $t1, $a1
	sle $t3, $t0, $a2
	sle $t4, $t1, $a3
	and $v0, $v0, $t2
	and $t3, $t3, $t4
	and $v0, $v0, $t3
jr $ra

PERDEU:
GANHOU:
	la $t0, CASAS_CHEGADAS
	add $t0, $t0, $t7
	li $t0, 1
	sw $t1, 0($t0)
	li $t2, 1
	lw $t1, CASAS_CHEGADAS($zero)
	seq $t2, $t2, $t1 
	lw $t1, CASAS_CHEGADAS+1($zero)
	seq $t2, $t2, $t1 
	lw $t1, CASAS_CHEGADAS+2($zero)
	seq $t2, $t2, $t1 
	lw $t1, CASAS_CHEGADAS+3($zero)
	seq $t2, $t2, $t1 
	lw $t1, CASAS_CHEGADAS+4($zero)
	seq $t2, $t2, $t1 
	beqz $t2, INIT_JOGO
#j INIT_JOGO
EXIT:
	li $v0, 10
	syscall
