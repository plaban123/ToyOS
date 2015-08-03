my_print_function:
	pusha			;pushes current register values to stack
	mov bx, 10
	add bx, 20		;bx value is 30 here
	mov ah, 0x0e
	int 0x10		;prints the character in al
	popa			;restores the previous value in registers
	ret
