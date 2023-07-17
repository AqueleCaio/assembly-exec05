.data
    space: .asciiz " "
    
.text

.globl main


 main:
        li $v0, 5 # syscall para ler inteiro
        
        syscall
        move $t0, $v0 # armaz N
        li $t1, 1 # armazena 1 em $t1 para comparação
loop:
        beq $t0, $t1, end # se N == 1, pule para o final
        move $a0, $t0 # move N para $a0 para imprimir
        li $v0, 1 # syscall para imprimir inteiro
        syscall
        
        la $a0, space # carrega endereço de espaço em $a0
        li $v0, 4 # syscall para imprimir string
        syscall
        
        addi $t0, $t0, -1 # decrementa N
        
        j loop # pula para o início do loop
end:
       move $a0, $t0 # move N para $a0 para imprimir o último número (1)
       li $v0, 1 # syscall para imprimir inteiro
       syscall
       
       li $v0, 10 # syscall para sair
       syscall
