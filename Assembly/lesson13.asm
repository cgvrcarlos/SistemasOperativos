;***************************************************************
;		    		Calculator Subtraction
;	
;Compilar:
;	nasm -f elf lesson13.asm
;	ld -m elf_i386	lesson13.o -o lesson13
;***************************************************************

%include		'functions.asm'

SECTION	.text
global	_start

_start:
	mov	eax,		90
	mov	ebx,		9
	sub	eax,		ebx
	call	iprintLF

	call	quit
