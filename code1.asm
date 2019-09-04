.text

main:
#	Solicitar A
	addi $v0,$zero,4
	la $a0, msg1
	syscall

#	Digitar A
	addi $v0,$zero,5
	syscall
	add $t0,$v0,$zero

#	Solicitar B

	addi $v0,$zero,4
	la $a0, msg2
	syscall

#	Digitar B
	addi $v0,$zero,5
	syscall
	add $t1,$v0,$zero

#	Exibir resul
	addi $v0,$zero,4
	la $a0,msg3
	syscall

	addi $v0,$zero,1
	add $a0,$t0,$t1
	syscall

#	syscall mips é a tabela de instruções, indica o codigo de ação a ser feito

.data

msg1: .asciiz "\n Digite A: "
msg2: .asciiz "\n Digite B: "
msg3: .asciiz "\n A+B = "
