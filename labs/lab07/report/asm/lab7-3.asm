%include 'in_out.asm'

section .data
a dd 44    ;Номер варианта 16
b dd 74
c dd 17
msg db "Минимальное значение: ",0

section .text
global _start
 _start:
     mov eax, [a]    ; eax = a
     mov ebx, [b]    ; ebx = b
     mov ecx, [c]    ; ecx = c

     ; Сравнить a и b
     cmp eax, ebx
     jl compare_c       ; если a<b,перейдите к compare_c
     mov eax, ebx

compare_c:
     cmp eax, ecx
     jl print_result
     mov eax, ebx

print_result:
     push eax
     mov eax, msg
     call sprint
     pop eax
     call iprintLF
     call quit
