.data
	promptMessage: .asciiz "Digite um valor: "
	resultMessage: .asciiz "\nO fatorial eh: "
	
.text
	
	

	main:
	     #Le o numero do usuario
	     li $v0,4
	     la $a0,promptMessage
	     syscall
	     
	     #Digita o valor
	     li $v0,5
	     syscall
	     move $a0,$v0
	     
	     
	     move $s0,$a0
	  
	     
	     
	  li $s7,1
	  li $s3,1 #resultado  
	for:
		beq $s0,$s7,exit
		
		mul $s3,$s3,$s0
		
		subi $s0, $s0, 1
			     
	     
	     j for
	     
	     
	exit:   
	     	mtc1	$s3, $f1
		cvt.s.w	$f1, $f1 
	     
	     #Mostra o resultado
	     li $v0,4
	     la $a0,resultMessage
	     syscall
	     
	     li $v0,2
	     mov.s $f12,$f1
	     syscall
	     
	     
	     
	   
	     
	     
	     
	     
	     
	     
	     
	     
	     
	     
	     
	     
	     
	     
	     
	  
