.data 
vetor: .space 40
.text

li $t0, 0
MAIN:
li $s0, 0
li $s1, 2
li $s2, 3
li $s3, 4

sw $s1, vetor($t0)
lw $t6, vetor($t0)
addi $t0, $t0, 4
j MAIN