.data
newline: .asciiz "\n"

msg1: .asciiz "The result of multiplication is: "
msg2: .asciiz "End main"

.text

.globl	main
main:

li $t0,5
li $t1,7

mul $t3,$t0,$t1

li $v0,4
la $a0,msg1
syscall

li $v0,1
move $a0,$t3
syscall

li $v0,4
la $a0,newline
syscall

la $a0,msg2
syscall

li $v0,10
syscall
