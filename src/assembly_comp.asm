mov bx, 50

cmp bx , 4
jle lethan
cmp bx, 40
jl lthan
mov al, 'C'
jmp the_end


lthan:
	mov al, 'B'
	jmp the_end

lethan:
	mov al, 'A'

the_end:	

mov ah, 0x0e
int 0x10

jmp $

times 510-($-$$) db 0
dw 0xaa55
