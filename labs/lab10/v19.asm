%include 'in_out.asm'
SECTION .data
filename db 'name.txt', 0h
msg db 'Как вас зовут? ', 0h
name db 'Меня зовут ', 0h
SECTION .bss
contents resb 255
SECTION .text
global _start
_start:
mov eax,msg
call sprintLF
mov ecx, contents
mov edx, 255
call sread
mov ecx, 0777o
mov ebx, filename
mov eax, 8
int 80h
mov edx, 255
mov ecx, name
mov ebx, eax
mov eax, 4
int 80h
mov eax, 5
mov edx, 2
mov ecx, 0
mov ebx, eax
mov eax, 19
int 80h
mov edx, 9
mov ecx, contents
mov eax, 4
int 80h
mov ebx, esi
mov eax, 6
int 80h
call quit
