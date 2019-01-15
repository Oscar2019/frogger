.data

FILE: .asciiz "display.bin"

.macro end_de_tres(%a, %b, %x1, %y1, %x2, %y2)
	.text
		sge $t0, %a, %x1
		sge $t1, %b, %y1
		sle $t2, %a, %x2
		sle $t3, %b, %y2
		and $t0, $t0, $t1
		and $t1, $t2, $t3
		and $t0, $t0, $t1
.end_macro

.text

li $s0, 0xFF000000
#li cor
li $s2, 0xFF0C1200
move $t5, $zero # x ou a
move $t6, $zero # y ou b
LOOP:
	beq $s0, $s2, FORA 
	li $s1, 0x00000000
	end_de_tres($t5, $t6, 16, 16, 303, 223)
	beq $t0, $zero, PULA
		li $s1, 0xAAAAAAAA
		end_de_tres($t5, $t6, 16, 16, 47, 31)
		move $t7, $t0
		end_de_tres($t5, $t6, 80, 16, 111, 31)
		or $t7, $t7, $t0
		end_de_tres($t5, $t6, 144, 16, 175, 31)
		or $t7, $t7, $t0
		end_de_tres($t5, $t6, 208, 16, 239, 31)
		or $t7, $t7, $t0
		end_de_tres($t5, $t6, 272, 16, 303, 31)
		or $t7, $t7, $t0
		beqz $t7, PULA1
			li $s1, 0x3A3A3A3A
			j PULA
		PULA1:
			end_de_tres($t5, $t6, 16, 112, 303, 127)
			move $t7, $t0
			end_de_tres($t5, $t6, 16, 208, 303, 223)
			or $t7, $t7, $t0
			beqz $t7, PULA2
				li $s1, 0x3F3F3F3F
			PULA2:
				end_de_tres($t5, $t6, 16, 128, 303, 207)
				beqz $t0, PULA
					li $s1, 0x02020202
	PULA:
	sw $s1, 0($s0)
	addi $s0, $s0, 1
	addi $t5, $t5, 1
	bne $t5, 320, LOOP
	addi $t6, $t6, 1
	move $t5, $zero
j LOOP
FORA:

# Abre o arquivo
	la $a0,FILE
	li $a1,1
	li $a2,0
	li $v0,13
	syscall

# Le o arquivos para a memoria VGA
	move $a0,$v0
	la $a1,0xFF000000
	li $a2,76800
	li $v0,15
	syscall

#Fecha o arquivo
	li $v0,16
	syscall

EXIT:
la $v0, 10
syscall

