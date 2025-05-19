.global _start
.intel_syntax noprefix


_start:
    # sys_write sys call: Hello World Program Code
    mov rax, 1 # system call for system write 
    mov rdi, 1 # stdout file descriptor is value 1
    lea rsi, [message] # lea = Load Effective Address. this takes as parameter the address of a buffer
    mov rdx, 14 # 14 is the number of bytes in buffer we which to write
    syscall

    # sys_exit sys call: Exit Program
    mov rax, 60 # system call for system exit 
    mov rdi, 0 # no error return code
    syscall

# defines new symbol "message"
message:
    # .asciz specifies the symbol's type to be ASCII
        # .asciz is an assembly directive
    .asciz "Hello, World!\n"
