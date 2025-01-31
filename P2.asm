# CPSC 440 PA1-2
# Erl-John Tauto-An

    .text                   # Text segment
main:
    # Load decimal 15 into register 8 ($t0)
    li $t0, 0x0F             # Decimal 15

    # OR with decimal 240 and store result in register 9 ($t1)
    ori $t1, $t0, 0xF0

    # Print result
    li $v0, 1               # Load syscall code 1 (print integers)
    move $a0, $t1           # Move the result to $a0
    syscall                 # Make the system call to print the value

    # Exit program
    li $v0, 10              # Load syscall code 10 (exit)
    syscall                 # Make the system call to exit the program
