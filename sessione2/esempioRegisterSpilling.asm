 	.data
 x:	.word 3
 y:	.word 4
 
 	.text
 	.globl main	# identifica il punto d'ingresso del programma, in maniera globlale visinile dagli altri file
 main:
 	# Carico x
 	la $t0 x
 	lw $t1 0($t0)
 	
 	# Spilling (push)
 	add $sp $sp -4
 	sw $t1 0($sp)
 	
 	# Carico y
 	la $t0 y
 	lw $t1 0($t0)
 	
 	#Spilling (pop)
 	lw $t0 0($sp)
 	add $sp $sp 4
 	
 	mult $t0 $t1
 	mflo $t0
