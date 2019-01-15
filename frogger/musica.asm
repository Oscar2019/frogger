.text
li $t0, 0
li $a0, 64
			li $a1, 1000
			li $a2, 126
			li $a3, 100
			li $v0, 33
			syscall
			addi $t0, $t0, 1
