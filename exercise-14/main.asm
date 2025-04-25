; exercise 6.2.1.14

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data
bArray BYTE 20 DUP(1)   ; 20 unsigned bytes initialized to 1

.code
main PROC
  lea edx, bArray       ; load the address of the array into EDX

  INVOKE ExitProcess, 0
main ENDP

END main
