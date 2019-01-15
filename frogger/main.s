#COOR(y, x)
.data



BACKGROUND: .space 76800
COORD_SAPO: .space 8

COORDS_CARROS_1: .space 8
COORDS_CARROS_2: .space 20
COORDS_CARROS_3: .space 24
COORDS_CARROS_4: .space 20
COORDS_CARROS_5: .space 24

COORDS_COBRA1: .space 4
COORDS_COBRA2: .space 4

COORDS_TRONCO_1: .space 4 #tronco medio
COORDS_JACARE: .space 4 #tronco medio
COORDS_TART_1: .space 8
COORDS_TRONCO_2: .space 4  #tronco grande
COORDS_TRONCO_3: .space 12 #tronco pequeno
COORDS_TART_2: .space 8

COORDS_MOSCA: .space 8
COORDS_TEMPO: .space 4

N_VIDAS: .space 4
POSICAO_TELA_INICIAL: .space 4
PONTOS: .space 4
MELHOR_PONTUACAO: .space 4


VELOCIDADE_CARROS_1: .space 1
VELOCIDADE_CARROS_2: .space 1
VELOCIDADE_CARROS_3: .space 1
VELOCIDADE_CARROS_4: .space 1
VELOCIDADE_CARROS_5: .space 1

VELOCIDADE_COBRA: .space 1

VELOCIDADE_TRONCO_1: .space 1 #tronco medio
VELOCIDADE_TART_1: .space 1
VELOCIDADE_TRONCO_2: .space 1  #tronco grande
VELOCIDADE_TRONCO_3: .space 1 #tronco pequeno
VELOCIDADE_TART_2: .space 1

COORDS_CHEGADA: .word 0, 63, 64, 127, 128, 191, 192, 255, 256, 319

CASAS_CHEGADAS: .space 5

FBACKGROUND: .asciiz "fundo.bin" 
FSAPO: .asciiz "sapo.bin" 
FSAPOE: .asciiz "sapoe.bin" 
FSAPOD: .asciiz "sapod.bin" 
FSAPOB: .asciiz "sapob.bin"
FSAPOJAFOI: .asciiz "sapojafoi.bin"
FMELHORPONTUACAO: .asciiz "pontos.bin"
FCARRO1: .asciiz "carro1.bin" # 47
FCARRO2: .asciiz "carro2.bin" # 31
FCARRO3: .asciiz "carro3.bin" # 31
FCARRO4: .asciiz "carro4.bin" # 31
FCARRO5: .asciiz "carro5.bin" # 31
FTRONCO1: .asciiz "tronco1.bin" # 95
FJACARE: .asciiz "jacare.bin" # 95
FTRONCO2: .asciiz "tronco2.bin" # 151
FCOBRA: .asciiz "cobra.bin"
FMOSCA: .asciiz "mosca.bin"
FTART11: .asciiz "tart1.bin" # 31
FTART12: .asciiz "tart12.bin" # 31
FTRONCO3: .asciiz "tronco3.bin" # 47
FTART21: .asciiz "tart2.bin" # 47
FTART22: .asciiz "tart22.bin" # 47
FVIDA0: .asciiz "vida0.bin"
FVIDA1: .asciiz "vida1.bin"
FVIDA2: .asciiz "vida2.bin"
FVIDA3: .asciiz "vida3.bin"
FGAMEOVER: .asciiz "gameover.bin"
FTELAINICIAL: .asciiz "telainicial.bin"
FTEMPO: .asciiz "tempo.bin"
FJOGAR: .asciiz "menujogar.bin"
FCREDITO: .asciiz "menucreditos.bin"
FCREDITOS: .asciiz "creditos.bin"
FSAIR: .asciiz "menusair.bin"

NOME_PONTOS: .asciiz "Score: "
NOME_MELHOR_PONTUACAO: .asciiz "Hi-Score: "
DADOS_MUSICA: .word 
74, 600, 400, 
71, 600, 200, 
67, 600, 200, 
79, 600, 400, 
78, 600, 200, 
76, 600, 200, 
74, 600, 600, 
79, 600, 200, 
71, 600, 200,
74, 1000, 200,
71, 600, 600,
69, 600, 200,
74, 600, 200,
74, 600, 200, 
74, 600, 200, 
74, 600, 200, 
71, 600, 200, 
69, 600, 200, 
67, 600, 400, 
79, 600, 200, 
79, 600, 200, 
79, 600, 200, 
81, 600, 200, 
79, 600, 200, 
78, 600, 200, 
76, 600, 200, 
74, 800, 800, 
79, 600, 400, 
71, 600, 400, 
74, 600, 600, 
71, 600, 200, 
71, 600, 200, 
73, 600, 200, 
74, 800, 200, 
76, 600, 200, 
78, 600, 200, 
76, 600, 200, 
73, 600, 200, 
73, 600, 200, 
74, 800, 200, 
76, 600, 200, 
76, 600, 200, 
78, 600, 200, 
79, 600, 200, 
78, 800, 800, 
74, 800, 500, 
79 , 600, 900, 
78, 600, 400, 
76, 600, 200, 
74, 800, 200, 
78, 800, 400, 
76, 800, 800, 
76, 600, 400, 
74, 800, 400, 
81, 600, 400, 
79, 600, 400, 
78, 600, 400, 
79, 600, 600
DADOS_MUSICA_GAME_OVER: .word
54, 1400, 1000,
50, 800, 500,
52, 1500, 1000,
52, 800, 600,
52, 800, 600,
50, 800, 600,
55, 1400, 1000,
54, 1000, 500,
52, 1500, 800



.text
	
	li $v0, 30
	syscall
	
	move $t0, $a0

	li $a0, 1
	move $a1, $t0
	li $v0, 40
	syscall

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
	
	
	la $a0, FMELHORPONTUACAO
	li $a1, 0
	li $a2, 0
	li $v0, 13
	syscall
	
	move $a0,$v0
	la $a1, MELHOR_PONTUACAO
	li $a2, 4
	li $v0, 14
	syscall
	
	li $v0, 16
	syscall

TELA_INICIAL:
	
	la $a0, FTELAINICIAL
	li $a1, 0
	li $a2, 0
	li $v0, 13
	syscall
	
	move $a0,$v0
	la $a1, 0xFF000000
	li $a2, 76800
	li $v0, 14
	syscall
	
	li $v0, 16
	syscall
	
	li $t2, 1
	sw $t0, POSICAO_TELA_INICIAL($0)
	
	la $a0, FJOGAR
	li $t4, 0
	j IMPRIME_MENU
	
	LOOP_TELA_INICIAL:
	la $t5, DADOS_MUSICA
	addu $t5 $t5, $t4
	ble $t4, 720, NAO_REINICIA_A_MUSICA
		li $t4, 0
	NAO_REINICIA_A_MUSICA:
	lw $a0, 0($t5)
	lw $a1, 4($t5)
	li $a2, 71
	li $a3, 100	#re
	li $v0, 31
	syscall

	lw $a0, 8($t5)
	li $v0, 32
	syscall
	
	addi $t4, $t4, 12
		jal LE_TECLA# le tecla do teclado
		beq $v0, $0, NAO_REINICIA_A_TELA #vefifica tecla de controle
			seq $t0, $v1, 'w'
			seq $t1, $v1, 'W'
			or $t0, $t1, $t0
			beq $t0, 0, NAO_E_CIMA
			bne $t2, 1, MOVE_MENU_CIMA_1
			li $t2, 3
			la $a0, FSAIR
			j IMPRIME_MENU
			MOVE_MENU_CIMA_1:
			bne $t2, 2, MOVE_MENU_CIMA_2
			li $t2, 1
			la $a0, FJOGAR
			j IMPRIME_MENU
			MOVE_MENU_CIMA_2:
			li $t2, 2
			la $a0, FCREDITO
			j IMPRIME_MENU
			NAO_E_CIMA:
				seq $t0, $v1, 's'
				seq $t1, $v1, 'S'
				or $t0, $t1, $t0
				beq $t0, 0, NAO_E_BAIXO
				bne $t2, 1, MOVE_MENU_BAIXO_1
				li $t2, 2
				la $a0, FCREDITO
				j IMPRIME_MENU
				MOVE_MENU_BAIXO_1:
				bne $t2, 2, MOVE_MENU_BAIXO_2
				li $t2, 3
				la $a0, FSAIR
				j IMPRIME_MENU
				MOVE_MENU_BAIXO_2:
				li $t2, 1
				la $a0, FJOGAR
				j IMPRIME_MENU
				NAO_E_BAIXO:
				bne $v1, '\n', LOOP_TELA_INICIAL
					beq $t2, 1, JOGO
					beq $t2, 2, CREDITO
					beq $t2, 3, EXIT
		IMPRIME_MENU:
				
			li $a1, 0
			li $a2, 0
			li $v0, 13
			syscall
	
			move $a0,$v0
			la $a1, 0xFF007D70
			li $a2, 76800	
			li $v0, 14
			syscall
	
			li $v0, 16
			syscall
		NAO_REINICIA_A_TELA:
		sw $0, PONTOS($0)
	j LOOP_TELA_INICIAL
	
CREDITO:
	la $a0, FCREDITOS
	li $a1, 0
	li $a2, 0
	li $v0, 13
	syscall
	
	move $a0,$v0
	la $a1, 0xFF000000
	li $a2, 76800
	li $v0, 14
	syscall
	
	li $v0, 16
	syscall
	
	li $a0, 10000
	li $v0, 32
	syscall
	
	j TELA_INICIAL
JOGO:
	
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
sb $t0, VELOCIDADE_TART_1($zero)
sb $t0, VELOCIDADE_TRONCO_2($zero)
sb $t0, VELOCIDADE_TRONCO_3($zero)
sb $t0, VELOCIDADE_TART_2($zero)
li $t0, 4
sw $t0, N_VIDAS($0)

#li $a0, 1
#li $a1, 3
#li $v0, 42
#syscall
#mul $t0, $v0, 4
sb $t0, VELOCIDADE_COBRA($0)

li $t0, -1
sw $t0, COORDS_MOSCA($0)

li $t9, 0
sw $0, PONTOS($0)

INIT_JOGO:
	li $a0, 32
	li $a1, 16
	li $a2, 223
	li $a3, 319
	jal TRANSFORMA_DUAS_COORD_EM_UMA
	jal COPIA_ESPACO
	
	li $t1, 224
	li $t2, 0
	lui $t3, 0xFF00
	mul $t1, $t1, 320
	add $t1, $t1, $t2
	or $t1, $t1, $t3
	lw $a0, N_VIDAS($0)
	beq $a0, 4, VIDA_3
		beq $a0, 3, VIDA_2
			beq $a0, 2, VIDA_1
				la $a0, FVIDA0
				j IMPRIME_VIDAS
			VIDA_1:
			la $a0, FVIDA1
			j IMPRIME_VIDAS
		VIDA_2:
		la $a0, FVIDA2
		j IMPRIME_VIDAS
	VIDA_3:
	la $a0, FVIDA3
	IMPRIME_VIDAS:
	jal PRINTA_TELA
	
	li $s0, 112
	sw $s0, COORDS_TEMPO($zero)
	
	li $s0, 112
	sw $s0, COORDS_CARROS_1($zero)
	li $s0, 240
	sw $s0, COORDS_CARROS_1+4($zero)
	
	li $s0, 16
	sw $s0, COORDS_CARROS_2($zero)
	li $s0, 128
	sw $s0, COORDS_CARROS_2+4($zero)
	li $s0, 160
	sw $s0, COORDS_CARROS_2+8($zero)
	li $s0, 224
	sw $s0, COORDS_CARROS_2+12($zero)
	li $s0, 272
	sw $s0, COORDS_CARROS_2+16($zero)
	
	li $s0, 64
	sw $s0, COORDS_CARROS_3($zero)
	li $s0, 96
	sw $s0, COORDS_CARROS_3+4($zero)
	li $s0, 128
	sw $s0, COORDS_CARROS_3+8($zero)
	li $s0, 208
	sw $s0, COORDS_CARROS_3+12($zero)
	li $s0, 240
	sw $s0, COORDS_CARROS_3+16($zero)
	li $s0, 272
	sw $s0, COORDS_CARROS_3+20($zero)
	
	li $s0, 16
	sw $s0, COORDS_CARROS_4($zero)
	li $s0, 128
	sw $s0, COORDS_CARROS_4+4($zero)
	li $s0, 160
	sw $s0, COORDS_CARROS_4+8($zero)
	li $s0, 224
	sw $s0, COORDS_CARROS_4+12($zero)
	li $s0, 272
	sw $s0, COORDS_CARROS_4+16($zero)
	
	li $s0, 64
	sw $s0, COORDS_CARROS_5($zero)
	li $s0, 96
	sw $s0, COORDS_CARROS_5+4($zero)
	li $s0, 128
	sw $s0, COORDS_CARROS_5+8($zero)
	li $s0, 208
	sw $s0, COORDS_CARROS_5+12($zero)
	li $s0, 240
	sw $s0, COORDS_CARROS_5+16($zero)
	li $s0, 272
	sw $s0, COORDS_CARROS_5+20($zero)
	
	li $s0, 48
	sw $s0, COORDS_TRONCO_1($zero)

	li $s0, 176
	sw $s0, COORDS_JACARE($zero)
	
	li $s0, 64
	sw $s0, COORDS_TART_1($zero)
	li $s0, 224
	sw $s0, COORDS_TART_1+4($zero)
	
	li $s0, 64
	sw $s0, COORDS_TRONCO_2($zero)
	
	li $s0, 80
	sw $s0, COORDS_TRONCO_3($zero)
	li $s0, 208
	sw $s0, COORDS_TRONCO_3+4($zero)
	
	li $s0, 64
	sw $s0, COORDS_TART_2($zero)
	li $s0, 208
	sw $s0, COORDS_TART_2+4($zero)
	
	li $s0, 272
	sw $s0, COORDS_COBRA1($zero)
	
	li $s0, 208
	sw $s0, COORD_SAPO($zero)
	li $s0, 144
	sw $s0, COORD_SAPO+4($zero)
	
	li $s0, -1
	sw $s0, COORDS_MOSCA($zero)
	li $s0, -1
	sw $s0, COORDS_MOSCA+4($zero)
	
	# parametros para a função print tela
	lw $t1, COORD_SAPO($zero)
	lw $t2, COORD_SAPO+4($zero)
	lui $t3, 0xFF00
	mul $t1, $t1, 320
	add $t1, $t1, $t2
	or $t1, $t1, $t3
	la $a0, FSAPO
	li $t4, 5120
	jal PRINTA_TELA
	
	li $t1, 0
	li $t2, 16
	lui $t3, 0xFF00
	mul $t1, $t1, 320
	add $t1, $t1, $t2
	or $t1, $t1, $t3
	la $a0, FTEMPO
	jal PRINTA_TELA
	
	li $t8, 303
	
	la $a0, NOME_PONTOS
	li $a1, 100
	li $a2, 226
	li $a3, 0x00FF
	li $v0, 104
	syscall
	la $a0, NOME_MELHOR_PONTUACAO
	li $a1, 200
	li $a2, 226
	li $a3, 0x00FF
	li $v0, 104
	syscall
	
	LOOP_PRINCIPAL:
		la $a0, COORDS_TRONCO_1
		lb $a1, VELOCIDADE_TRONCO_1($zero)
		li $a2, 1
		la $a3, FTRONCO1
		li $t0, 1
		li $t1, 32
		li $t2, 48
		li $t3, 95
		jal MOVE_CARRO
		
		lw $s0, COORD_SAPO($zero)
		bne $s0, 32, PULA_FAIXA_1
			lb $t0, VELOCIDADE_TRONCO_1($0)
			mul $t0, $t0, -1
			jal ATUALIZA_FAIXA
		PULA_FAIXA_1:
		
		lw $s0, COORDS_MOSCA($zero)
		bne $s0, 32, PULA_MOSCA_FAIXA_1
			jal CRIACAO_DA_MOSCA
		PULA_MOSCA_FAIXA_1:
		
		la $a0, COORDS_JACARE
		lb $a1, VELOCIDADE_TRONCO_1($zero)
		li $a2, 1
		la $a3, FJACARE
		li $t0, 1
		li $t1, 32
		li $t2, 176
		li $t3, 95
		jal MOVE_CARRO
		
		la $a0, COORDS_TRONCO_2
		lb $a1, VELOCIDADE_TRONCO_2($zero)
		li $a2, 1
		la $a3, FTRONCO2
		li $t0, 1
		li $t1, 48
		li $t2, 64
		li $t3, 152
		jal MOVE_CARRO
		
		lw $s0, COORD_SAPO($zero)
		bne $s0, 48, PULA_FAIXA_2
			lb $t0, VELOCIDADE_TRONCO_2($0)
			mul $t0, $t0, -1
			jal ATUALIZA_FAIXA
		PULA_FAIXA_2:
		
		lw $s0, COORDS_MOSCA($zero)
		bne $s0, 48, PULA_MOSCA_FAIXA_2
			jal CRIACAO_DA_MOSCA
		PULA_MOSCA_FAIXA_2:
		
		la $a0, COORDS_TART_1
		lb $a1, VELOCIDADE_TART_1($zero)
		li $a2, 2
		la $a3, FTART11
		li $t0, -1
		li $t1, 64
		li $t2, 80
		li $t3, 32
		jal MOVE_CARRO
		
		lw $s0, COORD_SAPO($zero)
		bne $s0, 64, PULA_FAIXA_3
			lb $t0, VELOCIDADE_TART_1($0)
			jal ATUALIZA_FAIXA
		PULA_FAIXA_3:
		
		lw $s0, COORDS_MOSCA($zero)
		bne $s0, 64, PULA_MOSCA_FAIXA_3
			jal CRIACAO_DA_MOSCA
		PULA_MOSCA_FAIXA_3:
		
		la $a0, COORDS_TRONCO_3
		lb $a1, VELOCIDADE_TRONCO_3($zero)
		li $a2, 2
		la $a3, FTRONCO3
		li $t0, 1
		li $t1, 80
		li $t2, 96
		li $t3, 48
		jal MOVE_CARRO
		
		lw $s0, COORD_SAPO($zero)
		bne $s0, 80, PULA_FAIXA_4
			lb $t0, VELOCIDADE_TRONCO_3($0)
			mul $t0, $t0, -1
			jal ATUALIZA_FAIXA
		PULA_FAIXA_4:
		
		lw $s0, COORDS_MOSCA($zero)
		bne $s0, 80, PULA_MOSCA_FAIXA_4
			jal CRIACAO_DA_MOSCA
		PULA_MOSCA_FAIXA_4:
		
		la $a0, COORDS_TART_2
		lb $a1, VELOCIDADE_TART_2($zero)
		li $a2, 2
		la $a3, FTART21
		li $t0, -1
		li $t1, 96
		li $t2, 112
		li $t3, 48
		jal MOVE_CARRO
		
		lw $s0, COORD_SAPO($zero)
		bne $s0, 96, PULA_FAIXA_5
			lb $t0, VELOCIDADE_TART_2($0)
			jal ATUALIZA_FAIXA
		PULA_FAIXA_5:
		
		lw $s0, COORDS_MOSCA($zero)
		bne $s0, 96, PULA_MOSCA_FAIXA_5
			jal CRIACAO_DA_MOSCA
		PULA_MOSCA_FAIXA_5:
		
		la $a0, COORDS_COBRA1
		lb $a1, VELOCIDADE_COBRA($zero)
		li $a2, 1
		la $a3, FCOBRA
		li $t0, -1
		li $t1, 112
		li $t2, 128
		li $t3, 48
		jal MOVE_CARRO
		
		lw $s0, COORDS_MOSCA($zero)
		bne $s0, 112, PULA_MOSCA_FAIXA_6
			jal CRIACAO_DA_MOSCA
		PULA_MOSCA_FAIXA_6:
		
		la $a0, COORDS_CARROS_1
		lb $a1, VELOCIDADE_CARROS_1($zero)
		li $a2, 2
		la $a3, FCARRO1
		li $t0, -1
		li $t1, 128
		li $t2, 144
		li $t3, 48
		jal MOVE_CARRO
		
		lw $s0, COORDS_MOSCA($zero)
		bne $s0, 128, PULA_MOSCA_FAIXA_7
			jal CRIACAO_DA_MOSCA
		PULA_MOSCA_FAIXA_7:
		
		la $a0, COORDS_CARROS_2
		lb $a1, VELOCIDADE_CARROS_2($zero)
		li $a2, 4
		la $a3, FCARRO2
		li $t0, 1
		li $t1, 144
		li $t2, 160
		li $t3, 32
		jal MOVE_CARRO
		
		lw $s0, COORDS_MOSCA($zero)
		bne $s0, 144, PULA_MOSCA_FAIXA_8
			jal CRIACAO_DA_MOSCA
		PULA_MOSCA_FAIXA_8:
		
		la $a0, COORDS_CARROS_3
		lb $a1, VELOCIDADE_CARROS_3($zero)
		li $a2, 6
		la $a3, FCARRO3
		li $t0, -1
		li $t1, 160
		li $t2, 176
		li $t3, 32
		jal MOVE_CARRO
		
		lw $s0, COORDS_MOSCA($zero)
		bne $s0, 160, PULA_MOSCA_FAIXA_9
			jal CRIACAO_DA_MOSCA
		PULA_MOSCA_FAIXA_9:
		
		la $a0, COORDS_CARROS_4
		lb $a1, VELOCIDADE_CARROS_4($zero)
		li $a2, 4
		la $a3, FCARRO4
		li $t0, 1
		li $t1, 176
		li $t2, 192
		li $t3, 32
		jal MOVE_CARRO
		
		lw $s0, COORDS_MOSCA($zero)
		bne $s0, 176, PULA_MOSCA_FAIXA_10
			jal CRIACAO_DA_MOSCA
		PULA_MOSCA_FAIXA_10:
		
		la $a0, COORDS_CARROS_5
		lb $a1, VELOCIDADE_CARROS_5($zero)
		li $a2, 6
		la $a3, FCARRO5
		li $t0, -1
		li $t1, 192
		li $t2, 208
		li $t3, 32
		jal MOVE_CARRO
		
		lw $s0, COORDS_MOSCA($zero)
		bne $s0, 192, PULA_MOSCA_FAIXA_11
			jal CRIACAO_DA_MOSCA
		PULA_MOSCA_FAIXA_11:
		
		lw $s0, COORDS_MOSCA($zero)
		bne $s0, 208, PULA_MOSCA_FAIXA_12
			jal CRIACAO_DA_MOSCA
		PULA_MOSCA_FAIXA_12:
		
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
			jal COPIA_ESPACO_HALF # copia espaco do background na tela
			move $a0, $s0 # copia tecla pra $s0
			jal MOVE_SAPO # muda as coors no sapo em COORD_SAPO
			# parametros para a função print tela
			lw $t1, COORD_SAPO($zero)
			lw $t2, COORD_SAPO+4($zero)
			lui $t3, 0xFF00
			mul $t1, $t1, 320
			add $t1, $t1, $t2
			or $t1, $t1, $t3
			#
			jal PRINTA_TELA #printa o sapo
		NAO_MOVE_SAPO:
			#j FIM_IF_ONDE_ESTA
			lw $s0, COORD_SAPO($zero)
			lw $s1, COORD_SAPO+4($zero)
			bge $s0, 112, PISTA
				LINHA1: bgt $s0, 32, LINHA2
					li $a0, 32
					li $a1,1
					li $a2, 96
					la $a3, COORDS_TRONCO_1
					jal COLISAO_NPC
					beq $v0, 0, PERDEU
					j FIM_IF_ONDE_ESTA
				LINHA2: bgt $s0, 48, LINHA3
					li $a0, 48
					li $a1,1
					li $a2, 151
					la $a3, COORDS_TRONCO_2
					jal COLISAO_NPC
					beq $v0, 0, PERDEU
					j FIM_IF_ONDE_ESTA
				LINHA3: bgt $s0, 64, LINHA4
					li $a0, 64
					li $a1,2
					li $a2,32
					la $a3, COORDS_TART_1
					jal COLISAO_NPC
					beq $v0, 0, PERDEU
					j FIM_IF_ONDE_ESTA
				LINHA4: bgt $s0, 80, LINHA5
					li $a0, 80
					li $a1,2
					li $a2,48
					la $a3, COORDS_TRONCO_3
					jal COLISAO_NPC
					beq $v0, 0, PERDEU
					j FIM_IF_ONDE_ESTA
				LINHA5:
					li $a0, 96
					li $a1,2
					li $a2,48
					la $a3, COORDS_TART_2
					jal COLISAO_NPC
					beq $v0, 0, PERDEU
					j FIM_IF_ONDE_ESTA
			PISTA:
			#j FIM_IF_ONDE_ESTA
				LINHA6: bgt $s0, 112, LINHA7
					li $a0, 112
					li $a1,1
					li $a2,31
					la $a3, COORDS_COBRA1
					jal COLISAO_NPC
					beq $v0, 1, PERDEU
					j FIM_IF_ONDE_ESTA
				LINHA7: bgt $s0, 128, LINHA8
					li $a0, 128
					li $a1,2
					li $a2,47
					la $a3, COORDS_CARROS_1
					jal COLISAO_NPC
					beq $v0, 1, PERDEU
					j FIM_IF_ONDE_ESTA
				LINHA8: bgt $s0, 144, LINHA9
					li $a0, 144
					li $a1,4
					li $a2,31
					la $a3, COORDS_CARROS_2
					jal COLISAO_NPC
					beq $v0, 1, PERDEU
					j FIM_IF_ONDE_ESTA
				LINHA9: bgt $s0, 160, LINHA10
					li $a0, 160
					li $a1,6
					li $a2,31
					la $a3, COORDS_CARROS_3
					jal COLISAO_NPC
					beq $v0, 1, PERDEU
					j FIM_IF_ONDE_ESTA
				LINHA10: bgt $s0, 176, LINHA11
					li $a0, 176
					li $a1,4
					li $a2,31
					la $a3, COORDS_CARROS_4
					jal COLISAO_NPC
					beq $v0, 1, PERDEU
					j FIM_IF_ONDE_ESTA
				LINHA11: bgt $s0, 192, LINHA12
					li $a0, 192
					li $a1,6
					li $a2,31
					la $a3, COORDS_CARROS_5
					jal COLISAO_NPC
					beq $v0, 1, PERDEU
					j FIM_IF_ONDE_ESTA
				LINHA12:
#					add $s1, $s1, 15
#					li $a0, 128
#					li $a1,2
#					li $a2,47
#					la $a3, COORDS_CARROS_1
#					jal COLISAO_NPC
#					jal DETECTA_COLOSAO
#					beq $v0, 1, PERDEU
			FIM_IF_ONDE_ESTA:
			
			addi $t8, $t8, -1
			
			li $a0, 0
			move $a1, $t8
			li $a2, 16
			addi $a3, $a1, 1
			
			jal TRANSFORMA_DUAS_COORD_EM_UMA 
			jal COPIA_ESPACO_BIT
			blt $t8, 16, PERDEU
		lw $t9, PONTOS($0)
		move $a0, $t9
		li $a1, 150
		li $a2, 226
		li $a3, 0x00FF
		li $v0, 101
		syscall
		
		lw $t9, MELHOR_PONTUACAO($0)
		move $a0, $t9
		li $a1, 274
		li $a2, 226
		li $a3, 0x00FF
		li $v0, 101
		syscall
		
		lw $t1, COORDS_MOSCA($0)
		lw $t0, COORDS_MOSCA+4($0)
		CUIDA_DA_MOSCA: bne $t0, -1, COLISAO_MOSCA
			#li $t2, 100
			#li $t1, 100
			li $a0, 1
			li $a1, 14
			li $v0, 42
			syscall
			
			bne $a0, 0, NAO_ALTERA_A_POSICAO_X_DO_SAPO
				li $a0, 1
			NAO_ALTERA_A_POSICAO_X_DO_SAPO:
			
			bne $a0, 19, NAO_ALTERA_A_POSICAO_X_DO_SAPO_2
				li $a0, 18
			NAO_ALTERA_A_POSICAO_X_DO_SAPO_2:
			
			mul $t0, $a0, 16
			
			li $a0, 1
			li $a1, 19
			li $v0, 42
			syscall
			
			bgt $a0, 1, NAO_ALTERA_A_POSICAO_Y_DO_SAPO
				li $a0, 2
			NAO_ALTERA_A_POSICAO_Y_DO_SAPO:
			
			bne $a0,14, NAO_ALTERA_A_POSICAO_Y_DO_SAPO_2
				li $a0, 13
			NAO_ALTERA_A_POSICAO_Y_DO_SAPO_2:
			
			mul $t1, $a0, 16
			
			sw $t0, COORDS_MOSCA+4($0)
			sw $t1, COORDS_MOSCA($0)
			
		COLISAO_MOSCA:
			lw $a0, COORDS_MOSCA+4($0)
			lw $a1, COORDS_MOSCA($0)
			addi $a2, $a0, 16
			addi $a0, $a0, -15
			addi $a3, $a1, 15
			lw $t0, COORD_SAPO+4($0)
			lw $t1, COORD_SAPO($0)
			jal DETECTA_COLOSAO
			
			beq $v0, 0, LOOP_PRINCIPAL
			li $a0,64
			li $a1, 2000
			li $a2, 126
			li $a3, 100
			li $v0, 31
			syscall
			li $a0, 10
			jal ADD_PONTOS
			li $t0, -1
			sw $t0, COORDS_MOSCA+4($0)
			sw $t0, COORDS_MOSCA($0)
		j LOOP_PRINCIPAL
			
CRIACAO_DA_MOSCA:
	sw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t2, COORDS_MOSCA+4($zero)
	lw $t1, COORDS_MOSCA($zero)
	lui $t3, 0xFF00
	mul $t1, $t1, 320
	add $t1, $t1, $t2
	or $t1, $t1, $t3
	la $a0, FMOSCA
	
	jal PRINTA_TELA
	addi $sp, $sp, -4
	lw $ra, 0($sp)
jr $ra

ADD_PONTOS:
	lw $t9, PONTOS($0)
	add $t9, $t9, $a0
	sw $t9, PONTOS($0)
jr $ra

COLISAO_NPC:
	sw $ra, 0($sp)
	addi $sp, $sp, 4
	move $s2, $a0 #li $a0, 128
	move $s3, $a1 #li $a1,2
	move $s4, $a2 #li $a2,47
	move $s5, $a3 #la $a3, COORDS_CARROS_1
	li $s6, 0
	li $v0, 0
	move $a1, $s2
	addi $a3, $a1, 15
	LOOP_COLISAO_NPC: beq $s6, $s3, FORA_LOOP_COLISAO_NPC
		beq $v0, 1, FORA_LOOP_COLISAO_NPC
		lw $a0, 0($s5)
		add $a2, $a0, $s4
		move $t0, $s1
		move $t1, $s0
		addi $a0, $a0, -15
		jal DETECTA_COLOSAO
		addi $s6, $s6, 1
		addi $s5, $s5, 4
		j LOOP_COLISAO_NPC
	FORA_LOOP_COLISAO_NPC:
	addi $sp, $sp, -4
	lw $ra, 0($sp)
jr $ra

ATUALIZA_FAIXA:
	sw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $t1, COORD_SAPO+4($zero)
		sub  $t1, $t1, $t0
		sgt $t2, $t1, 304
		li $t3, -1
		slt $t3, $t1, $t3
		or $t2, $t2, $t3
		beq $t2, 1, NAO_ATUALIZA_SAPO_NA_FAIXA
			sw $t1, COORD_SAPO+4($zero)
			sub  $t1, $t1, $t0
		NAO_ATUALIZA_SAPO_NA_FAIXA:
		add  $t1, $t1, $t0
		lw $t1, COORD_SAPO($zero)
		lw $t2, COORD_SAPO+4($zero)
		lui $t3, 0xFF00
		mul $t1, $t1, 320
		add $t1, $t1, $t2
		or $t1, $t1, $t3
		la $a0, FSAPO
		jal PRINTA_TELA
	addi $sp, $sp, -4
	lw $ra, 0($sp)
jr $ra	

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

LE_TECLA_2:
	la $t1,0xFF100000
	lw $v0,0($t1)
	andi $v0,$v0,0x0001		# Le bit de Controle Teclado
   	beq $v0,$zero,LE_TECLA_2  	   	# Se não há tecla pressionada PULA
  	lw $v1,4($t1)  		# Tecla lida
jr $ra

MOVE_CARRO:
	move $s0, $ra
	move $s1, $a0 # $a0, COORDS_CARROS_1
	move $s2, $a1 # $a1, VELOCIDADE_CARROS_1
	mul $s2, $s2, $t0
	move $s3, $a2 # $a2, NUM_CARROS_1
	move $s4, $a3 # la $a3, FCARRO_1
	move $s5, $t1 # coordenadas Y do carro
	move $s6, $t2 # coordenadas X do carro
	move $s7, $t3
	li $t4, 0
	LOOP_MOVE_CARRO: beq $t4, $s3, FORA_LOOP_MOVE_CARRO
		#apaga o carro
		move  $a0, $s5
		lw  $a1, 0($s1)
		move  $a2, $s6
		addi $a3, $a1, 48
		ble $s2, 0, NAO_ALTERA_COORD_DO_MENOR
			move $a3, $a1
			sub $a1, $a1, $s2
			j NAO_ALTERA_COORD
		NAO_ALTERA_COORD_DO_MENOR:
			add $a1, $a1, $s7
			sub $a3, $a1, $s2
		NAO_ALTERA_COORD: 
		jal TRANSFORMA_DUAS_COORD_EM_UMA # transforma sua coords em uma
		jal COPIA_ESPACO_HALF # copia espaco do background na tela
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
	seq $t0, $a0, 'w'
	seq $t1, $a0, 'W'
	or $t0, $t1, $t0
	beq $t0, 0, NAO_E_W
	li $a0, 64
	li $a1, 1000
	li $a2, 120
	li $a3, 100
	li $v0, 31
	syscall
	la $a0, FSAPO
	lw $t1, COORD_SAPO($zero)
	addi $t1, $t1, -16
	sw $t1, COORD_SAPO($zero)
	bge $t1, 32, SAI_TECLA
	li $t2, 0
	la $t6, COORDS_CHEGADA
	li $v0, 0
	li $t7, 0
	LOOP_CHEGADA:
	lw $t4, 0($t6)
	lw $t5, 4($t6)
	sw $ra, 0($sp)
	addi $sp, $sp, 4
		lw $t0, COORD_SAPO+4($zero)
		lw $t1, COORD_SAPO($zero)
		li $a1, 16
		move $a0, $t4
		addi $a3, $a1, 16
		move $a2, $t5
		jal DETECTA_COLOSAO
		beqz $v0, NAO_COLOCA_QUE_JA_FOI
			li $t1, 16
			lw $t2, ($t6)
			lui $t3, 0xFF00
			mul $t1, $t1, 320
			add $t1, $t1, $t2
			or $t1, $t1, $t3
			la $a0, FSAPOJAFOI
			jal PRINTA_TELA 
			
			la $a0, FSAPO
			j GANHOU
	NAO_COLOCA_QUE_JA_FOI:
	addi $t6, $t6, 8
	addi $t7, $t7, 1
	addi $sp, $sp, -4
	lw $ra, 0($sp)
	j LOOP_CHEGADA
	NAO_E_W:
		seq $t0, $a0, 'a'
		seq $t1, $a0, 'A'
		or $t0, $t1, $t0
		beq $t0, 0, NAO_E_A
		lw $t1, COORD_SAPO+4($zero)
		addi $t1, $t1, -8
		li $a0, 64
		li $a1, 1000
		li $a2, 120
		li $a3, 100
		li $v0, 31
		syscall
		la $a0, FSAPOE
		blt $t1, 0, SAI_TECLA
			sw $t1, COORD_SAPO+4($zero)
		j SAI_TECLA
		NAO_E_A:
			seq $t0, $a0, 's'
			seq $t1, $a0, 'S'
			or $t0, $t1, $t0
			beq $t0, 0, NAO_E_S
			lw $t1, COORD_SAPO($zero)
			addi $t1, $t1, 16
			li $a0, 64
			li $a1, 1000
			li $a2, 120
			li $a3, 100
			li $v0, 31
			syscall
			la $a0, FSAPOB
			bge $t1, 224, NAO_E_S
				sw $t1, COORD_SAPO($zero)
			j SAI_TECLA
			NAO_E_S:
				seq $t0, $a0, 'd'
				seq $t1, $a0, 'D'
				or $t0, $t1, $t0
				li $a0, 64
				li $a1, 1000
				li $a2, 120
				li $a3, 100
				li $v0, 31
				syscall
				la $a0, FSAPO
				beq $t0, 0, SAI_TECLA
				lw $t1, COORD_SAPO+4($zero)
				addi $t1, $t1, 8
				la $a0, FSAPOD
				bgt $t1, 304, SAI_TECLA
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

COPIA_ESPACO_HALF:
	sub $t0, $a3, $a1
	li $t1, 320
	sub $t1, $t1, $t0
	add $t0, $t0, $v0
	LOOP_COPIAR_HALF: bge $v0, $v1, FORA_LOOP_COPIAR_HALF
		la $t3, BACKGROUND 
		addu $t3, $t3, $v0
		lh $t2, 0($t3)
		lui $t3, 0xFF00
		addu $t3, $t3, $v0
		sh $t2, 0($t3)
		bne $v0, $t0, PROX_LINE_HALF
			add $v0, $v0, $t1
			addi $t0, $t0, 320
			addi $v0, $v0, -2
		PROX_LINE_HALF:
		addi $v0, $v0, 2
		j LOOP_COPIAR_HALF
	FORA_LOOP_COPIAR_HALF:
jr $ra

COPIA_ESPACO_BIT:
	sub $t0, $a3, $a1
	li $t1, 320
	sub $t1, $t1, $t0
	add $t0, $t0, $v0
	LOOP_COPIAR_BIT: bge $v0, $v1, FORA_LOOP_COPIAR_BIT
		la $t3, BACKGROUND 
		addu $t3, $t3, $v0
		lb $t2, 0($t3)
		lui $t3, 0xFF00
		addu $t3, $t3, $v0
		sb $t2, 0($t3)
		bne $v0, $t0, PROX_LINE_BIT
			add $v0, $v0, $t1
			addi $t0, $t0, 320
			addi $v0, $v0, -1
		PROX_LINE_BIT:
		addi $v0, $v0, 1
		j LOOP_COPIAR_BIT
	FORA_LOOP_COPIAR_BIT:
jr $ra

TRANSFORMA_DUAS_COORD_EM_UMA:
	mul $v0, $a0, 320
	add $v0, $v0, $a1
	mul $v1, $a2, 320
	add $v1, $v1, $a3
jr $ra

DETECTA_COLOSAO:	# $t0 $t1 $a0 $a1 $a2 $a3
			# a,  b,  x1, y1, x2, y2
	#blt $a0 ,320, RESTO1
		sge $v1, $t0, $a0
		sge $t2, $t1, $a1
		sle $t3, $t0, $a2
		sle $t4, $t1, $a3
		and $v1, $v1, $t2
		and $t3, $t3, $t4
		and $v1, $v1, $t3
	#RESTO2:
	addi $t0, $t0, 320
	sge $v0, $t0, $a0
	sge $t2, $t1, $a1
	sle $t3, $t0, $a2
	sle $t4, $t1, $a3
	and $v0, $v0, $t2
	and $t3, $t3, $t4
	and $v0, $v0, $t3
	or $v0, $v0, $v1
jr $ra

PERDEU:
	li $a0, 40
	li $a1, 4000
	li $a2,  127
	li $a3, 250
	li $v0, 31
	syscall
	li $a0, -20
	jal ADD_PONTOS
	lw $t0, N_VIDAS($0)
	addi $t0, $t0, -1
	sw $t0, N_VIDAS($0)
	beq $t0, 0, GAME_OVER
j INIT_JOGO

GAME_OVER:

	lw $t0, PONTOS($0)
	lw $t1, MELHOR_PONTUACAO($0)
	bge $t1, $t0, NAO_ALTERA_A_MELHOR_PONTUACAO
		sw $t0, MELHOR_PONTUACAO($0)
		
		la $a0, FMELHORPONTUACAO
		li $a1, 1
		li $a2, 0
		li $v0, 13
		syscall
		
		move $a0,$v0
		la $a1, MELHOR_PONTUACAO
		li $a2, 4
		li $v0, 15
		syscall
	
		li $v0, 16
		syscall
	NAO_ALTERA_A_MELHOR_PONTUACAO:
	
	la $a0, FGAMEOVER
	li $a1, 0
	li $a2, 0
	li $v0, 13
	syscall
	
	move $a0,$v0
	la $a1, 0xFF000000
	li $a2, 76800
	li $v0, 14
	syscall
	
	li $v0, 16
	syscall
	
	li $t4, 0
	LOOP_MUSICA_GAME_OVER: bge $t4, 108, FORA_LOOP_MUSICA_GAME_OVER
		la $t5, DADOS_MUSICA_GAME_OVER
		add $t5, $t5, $t4
		lw $a0, 0($t5)
		lw $a1, 4($t5)
		li $a2, 1 #ou 71
		li $a3, 100	#re
		li $v0, 31
		syscall
		lw $a0, 8($t5)
		li $v0, 32
		syscall
		addi $t4, $t4, 12
		j LOOP_MUSICA_GAME_OVER
	FORA_LOOP_MUSICA_GAME_OVER:
	
	jal LE_TECLA_2
	
j TELA_INICIAL


GANHOU:
	li $a0, 0x53
	li $a1, 3000
	li $a2, 121
	li $a3, 100
	li $v0, 33
	syscall
	li $a0, 50
	jal ADD_PONTOS
	li $t1, 1
	li $t2, 1
	sb $t1, CASAS_CHEGADAS($t7)
	lb $t1, CASAS_CHEGADAS($zero)
	and $t2, $t2, $t1 
	lb $t1, CASAS_CHEGADAS+1($zero)
	and $t2, $t2, $t1 
	lb $t1, CASAS_CHEGADAS+2($zero)
	and $t2, $t2, $t1 
	lb $t1, CASAS_CHEGADAS+3($zero)
	and $t2, $t2, $t1 
	lb $t1, CASAS_CHEGADAS+4($zero)
	and $t2, $t2, $t1 
	beqz $t2, INIT_JOGO
		sb $0, CASAS_CHEGADAS($zero)
		sb $0, CASAS_CHEGADAS+1($zero)
		sb $0, CASAS_CHEGADAS+2($zero)
		sb $0, CASAS_CHEGADAS+3($zero)
		sb $0, CASAS_CHEGADAS+4($zero)
		li $t1, 2
		lb $t0, VELOCIDADE_CARROS_5($0)
		addi $t0, $t0, 2
		sb $t0, VELOCIDADE_CARROS_5($0)
		sb $t0, VELOCIDADE_TART_2($0)
		bne $t0, 8, NAO_AUMENTA_AVELOCIDADE
			sb $t1, VELOCIDADE_CARROS_5($0)
			sb $t1, VELOCIDADE_TART_2($0)
			lb $t0, VELOCIDADE_CARROS_4($0)
			addi $t0, $t0, 2
			sb $t0, VELOCIDADE_CARROS_4($0)
			sb $t0, VELOCIDADE_TRONCO_3($0)
			bne $t0, 8, NAO_AUMENTA_AVELOCIDADE
				sb $t1, VELOCIDADE_CARROS_4($0)
				sb $t1, VELOCIDADE_TRONCO_3($0)
				lb $t0, VELOCIDADE_CARROS_3($0)
				addi $t0, $t0, 2
				sb $t0, VELOCIDADE_CARROS_3($0)
				sb $t0, VELOCIDADE_TRONCO_2($0)
				bne $t0, 8, NAO_AUMENTA_AVELOCIDADE
					sb $t1, VELOCIDADE_CARROS_3($0)
					sb $t1, VELOCIDADE_TRONCO_2($0)
					lb $t0, VELOCIDADE_CARROS_2($0)
					addi $t0, $t0, 2
					sb $t0, VELOCIDADE_CARROS_2($0)
					sb $t0, VELOCIDADE_TART_1($0)
					bne $t0, 8, NAO_AUMENTA_AVELOCIDADE
						sb $t1, VELOCIDADE_CARROS_2($0)
						sb $t1, VELOCIDADE_TART_1($0)
						lb $t0, VELOCIDADE_CARROS_1($0)
						addi $t0, $t0, 2
						sb $t0, VELOCIDADE_CARROS_1($0)
						sb $t0, VELOCIDADE_TRONCO_1($0)
						bne $t0, 16, NAO_AUMENTA_AVELOCIDADE
							li $t0, 0
		NAO_AUMENTA_AVELOCIDADE:
		beqz $t0, CREDITO
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
	
	lw $t0, N_VIDAS($0)
	addi $t0, $t0, 1
	bge $t0, 5, NAO_ALTERA_VIDA
		sw $t0, N_VIDAS($0)
	NAO_ALTERA_VIDA:
	beq $t0, 0, GAME_OVER
	
	j INIT_JOGO
EXIT:
	li $v0, 10
	syscall
