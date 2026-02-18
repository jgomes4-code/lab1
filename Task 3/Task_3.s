.section .bss
.global ram
.lcomm ram, 256             # Reserve 256 bytes of RAM (unitizlized memory)

.section .text
.global fill_ram            # Make function visible to C program

fill_ram:
    leaq ram(%rip), %rdi

    movb $0x00, 0x50(%rdi)
    movb $0x00, 0x51(%rdi)
    movb $0x00, 0x52(%rdi)
    movb $0x00, 0x53(%rdi)
    movb $0x00, 0x54(%rdi)
    movb $0x00, 0x55(%rdi)
    movb $0x00, 0x56(%rdi)
    movb $0x00, 0x57(%rdi)
    movb $0x00, 0x58(%rdi)

    ret                     # Return control back to C program

.section .note.GNU-stack,"",@progbits
