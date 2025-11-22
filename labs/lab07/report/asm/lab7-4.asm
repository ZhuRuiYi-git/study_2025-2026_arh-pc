%include 'in_out.asm'

; Номер варианта 16
section .data
msg_x db "x: ",0
msg_a db "a: ",0
msg_res db "Результат: ",0

section .bss
x resb 10
a_val resb 10

section .text
global _start
 _start:
     mov eax, msg_x
     call sprint
     mov ecx, x
     mov edx, 10
     call sread
     mov eax, x
     call atoi
     mov [x], eax

     mov eax, msg_a
     call sprint
     mov ecx, a_val
     mov edx, 10
     call sread
     mov eax, a_val
     call atoi
     mov [a_val], eax

     mov ebx, [x]         ;ebx = x
     mov ecx, [a_val]     ;ecx = a

     cmp ebx, 4
     jl case_x_less

     mov eax, ecx         ; eax = a
     imul eax, ebx        ; eax = a * x
     jmp print_result

case_x_less:
     mov eax, ebx         ; eax = x
     add eax, 4           ; eax = x + 4

print_result:
     push eax
     mov eax, msg_res
     call sprint
     pop eax
     call iprintLF

     call quit
