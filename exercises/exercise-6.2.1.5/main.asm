; exercise 6.2.1.5

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.code
main PROC
    mov eax, 0     ; Clear EAX
    add eax, 5     ; Instruction 1: add 5 to EAX

    mov edx, 0     ; Clear EDX
    add edx, 5     ; Instruction 2: add 5 to EDX

    INVOKE ExitProcess, 0
main ENDP

END main
