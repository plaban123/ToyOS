mov ah, 0x0e			;scrolling teletype BIOS routine(to print char on screen)
mov al, 'H'			;start printing 'Hello'
int 0x10			;execute ISR for printing to screen
mov al, 'e'			;
int 0x10			;
mov al,'l'			;
int 0x10
mov al,'l'			;
int 0x10			;
mov al, 'o'			;
int 0x10			;
jmp $				;

times 510-($-$$) db 0		; pad the remaining bytes with 0

dw 0xaa55           		;add magic number at end of boot sector
