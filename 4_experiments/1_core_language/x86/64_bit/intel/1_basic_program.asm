.global _start
.intel_syntax noprefix

_start:
    # This program that only starts and exits.
        # Explanation:  
            # instruction 60 in register rax instructs the Linux kernel to exit
                # see "linux kernel system calls" in 1_core_language/4_execution_model/1_structure_of_a_program/0_structure_of_a_program.txt
    
    # This sets 60 to register rax, indicating the system should exit
    mov rax, 60

    # This sets 0 to register rdi. I am setting here an error code of 0, to indicate  no errors. 
    mov rdi, 0
    
    # Instructs the kernel to execute a system
    syscall
