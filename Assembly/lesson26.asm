;**************************************************************
;	   	    	File Handling - Close
;Compilar:
;	nasm -f elf lesson26.asm
;	ld -m elf_i386 lesson26.o -o lesson26
;**************************************************************
 
%include    'functions.asm'
 
SECTION .data
filename 	db 	'readme.txt', 		0x0    
contents 	db 	'Hello world!', 	0x0 
 
SECTION .bss
fileContents 	resb 	255          
 
SECTION .text
global  _start
 
_start:
 
    	mov	ecx, 		0777           
    	mov     ebx, 		filename
    	mov     eax, 		8
    	int     0x80
 
    	mov     edx, 		12             
   	mov     ecx, 		contents
    	mov     ebx, 		eax
    	mov     eax, 		4
    	int     0x80
 
    	mov     ecx, 		0              
    	mov     ebx, 		filename
    	mov     eax, 		5
    	int     0x80
 
    	mov     edx, 		12             
    	mov     ecx, 		fileContents
    	mov     ebx, 		eax
    	mov     eax, 		3
    	int     0x80

    	mov     eax, 		fileContents
    	call    sprintLF
 
    	mov     ebx, 		ebx            
    	mov     eax, 		6              
    	int     0x80                 
 
    	call    quit                
