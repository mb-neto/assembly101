#comentários

.text

main:

#valores
#	addi $s1, $zero, 15
#	addi $s2, $zero, 3
#	addi $s3, $zero, 3
#	addi $s4, $zero, 14
#	addi $s5, $zero, 1
#	addi $s6, $zero, 2

	lw $s1,A
	lw $s2,B
	lw $s3,C
	lw $s4,D
	lw $s5,E
	lw $s6,F


#operações
	mult $s2, $s3
	mflo $t0
	add $t1,$s1,$t0	
	mult $s5,$s6
	mflo $t0
	sub $t0,$s4,$t0
	div $t1,$t0
	mflo $s0
	syscall

.data

A: .word 15
B: .word 3
C: .word 3
D: .word 14
E: .word 1
F: .word 2