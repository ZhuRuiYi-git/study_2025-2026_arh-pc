%include 'in_out.asm'

SECTION .data
msg_func db "Функция: f(x)=30x-11",0   ; Номер варианта 𝑓(𝑥) 16
msg_result db "Результат: ",0

SECTION .text
global _start

_start:
    pop ecx
    pop edx
    sub ecx, 1
    mov esi, 0

    mov eax, msg_func
    call sprintLF

    cmp ecx, 0
    jz _end

next:
    pop eax
    call atoi

    mov ebx, 30     ; ebx = 30
    imul eax, ebx   ; eax = 30 * x
    sub eax, 11     ; eax = 30x - 11

    add esi, eax

    loop next

_end:
    mov eax, msg_result
    call sprint
    mov eax, esi
    call iprintLF

    call quit
