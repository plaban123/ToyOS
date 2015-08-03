%include "my_print_function.asm"
mov al, 'H'
mov bl, 50
call my_print_function 		;making function call
mov bh, 0x0e
mov ax, bx
int 0x10

jmp $

times 510-($-$$) db 0
dw 0xaa55
