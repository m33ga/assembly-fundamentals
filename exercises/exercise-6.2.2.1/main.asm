; exercise 6.2.2.1
; Using the AddTwo program as a reference, write a program that calculates
; the following expression, using registers: A = (A + B) - (C + D). Assign integer values to
; the EAX, EBX, ECX, and EDX registers.


.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.code
main PROC
    ; Assign initial values
    mov eax, 10    ; A = 10
    mov ebx, 5     ; B = 5
    mov ecx, 3     ; C = 3
    mov edx, 2     ; D = 2

    ; (A + B)
    add eax, ebx

    ; (C + D)
    add ecx, edx

    ; (A + B) - (C + D) 
    sub eax, ecx

    ; EAX = (A + B) - (C + D)

    INVOKE ExitProcess, eax
main ENDP
END main
