###############################################
#  Programa de exemplo para bitmap display    #
#  ISC Out 2017				      			  #
#  Marcus Vinicius Lamar		      		  #
###############################################

# Cuidar que o arquivo display.bin deve estar no mesmo diretório do Mars45.jar
# Use o programa paint.net (baixar da internet) para gerar o arquivo de imagem .bmp 24 bits/pixel 
# para então usar o programa bmp2oac.exe para gerar o arquivo .bin correspondente

.data 
FILE: .asciiz "vida3.bin"

.text

# Preenche a tela de vermelho
	li $t1,0xFF012C00
	li $s2,0xFF000000
	li $s1,0x07070707
LOOP: 	beq $s2,$t1,FORA
	sw $s1,0($s2)
	addi $s2,$s2,4
	j LOOP
FORA:
# Abre o arquivo
	la $a0,FILE
	li $a1,0
	li $a2,0
	li $v0,13
	syscall

# Le o arquivos para a memoria VGA
	move $a0,$v0
	la $a1,0xFF000000
	li $a2,76800
	li $v0,14
	syscall

#Fecha o arquivo
	li $v0,16
	syscall



FIM:	li $v0,10
	syscall
