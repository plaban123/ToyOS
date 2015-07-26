mov ah, 0x0e			;scrolling teletype BIOS routine(to print char on screen)

mov bp, 0x8000   		;setting the base pointer of stack above BIOS
mov sp, bp			;initializing stack pointer

push 'A'
push 'B'
push 'C'			;loading values to stack

pop bx				;stack push pop works only with 16bit

mov al, bl			;copying the value of stack to accumulator

int 0x10

pop bx				;stack push pop works only with 16bit

mov al, bl			;copying the value of stack to accumulator

int 0x10

mov al , [0x7ffe] 		;to prove stack grows downward, pre calculated address of last element is used

int 0x10

jmp $

times 510-($-$$) db 0
dw 0xaa55
