; exercise 6.2.1.2

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data
message1 BYTE "Segment 1", 0

.data
message2 BYTE "Segment 2", 0

.code
main PROC
    lea edx, message1
    lea edx, message2  ; just testing access — not doing anything visible

    call MyFunction

    INVOKE ExitProcess, 0
main ENDP

.code
MyFunction PROC
    ret
MyFunction ENDP

END main