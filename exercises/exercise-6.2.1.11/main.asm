; exercise 6.2.1.11
; Declare a string variable containing the name of your favorite color. Initialize it as
; a nullterminated string.


.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data
favoriteColor BYTE "Blue", 0  ; null-terminated string with favorite color "Blue"

.code
main PROC
  lea edx, favoriteColor   ; load the address of "Blue" into EDX

  INVOKE ExitProcess, 0
main ENDP

END main
