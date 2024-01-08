%include 'in_out.asm'
SECTION .data
msg1: DB 'f(x)=((1/3)x+5)*7',0
msg2: DB 'Введите X: ',0
rem: DB 'Ответ: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, msg1
call sprintLF
mov eax, msg2
call sprintLF
mov ecx, x
mov edx, 80
call sread
mov eax,x ; вызов подпрограммы преобразования
call atoi ; ASCII кода в число, `eax=x`
xor edx, edx
mov ebx, 3
div ebx
add eax, 5
mov ebx, 7
mul ebx
mov edx, eax
mov eax,rem
call sprint
mov eax,edx
call iprintLF
call quit
