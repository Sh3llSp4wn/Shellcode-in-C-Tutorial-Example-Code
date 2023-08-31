.text
.intel_syntax noprefix

.global _write

.equ SYS_write, 1

# just load rax with the number and syscall
.macro direct_syscall syscall_number, symbol
\symbol:
mov rax, \syscall_number
syscall
ret
# end the macro
.endm 

# generate the code
direct_syscall SYS_write, _write
