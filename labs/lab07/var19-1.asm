%include 'in_out.asm'
section .data
msg db "Наименьшее число: ",0h
A dd '46'
B dd '32'
C dd '74'
section .bss
min resb 10
section .text
global _start
_start:
mov eax,B
call atoi
mov [B],eax
mov eax,A
call atoi
mov [A],eax
mov eax,C
call atoi
mov [C],eax
mov ecx,[A]
mov [min],ecx
cmp ecx,[C]
jl check_B
mov ecx,[C]
mov [min],ecx
check_B:
mov ecx,[min]
cmp ecx,[B]
jl final
mov ecx,[B]
mov [min],ecx
final:
mov eax, msg
call sprint
mov eax,[min]
call iprintLF
call quit
