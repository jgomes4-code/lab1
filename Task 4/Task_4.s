.section .bss
.global ram
.lcomm ram, 256             # Reserve 256 bytes of RAM (unitizlized memory)

.section .text
.global fill_ram            # Make function visible to C program

fill_ram:
    movb $0x00, %al      # Clear accumulator

    addb $1, %al
    addb $2, %al
    addb $3, %al
    addb $4, %al
    addb $5, %al
    addb $6, %al
    addb $7, %al
    addb $8, %al
    addb $9, %al
    addb $10, %al

    leaq ram(%rip), %rdi
    movb %al, 0x50(%rdi)     # Store result at 50H

    ret                     # Return control back to C program

.section .note.GNU-stack,"",@progbits
