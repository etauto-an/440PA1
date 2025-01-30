# CPSC 440 PA1-1
# Erl-John Tauto-An

    .data                   # Data segment
result: .asciiz "3 + 2 = "

    .text                   # Text segment
main:
    # Load values into temporary registers
    li $t0, 3
    li $t1, 2

    # Add values in $t0 and $t1 then store the result in $t2
    add $t2, $t0, $t1

    # Print result message
    li $v0, 4               # Load syscall code 4 (print string)
    la $a0, result          # Load address of the result message into $a0
    syscall                 # Make the system call to print the string

    # Print sum
    li $v0, 1               # Load syscall code 1 (print integers)
    move $a0, $t2           # Move the sum in $t2 into $a0
    syscall                 # Make the system call to print the sum

    # Exit program
    li $v0, 10              # Load syscall code 10 (exit)
    syscall                 # Make the system call to exit the program
