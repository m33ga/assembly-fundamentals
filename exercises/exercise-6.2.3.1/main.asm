; exercise 6.2.3.1
; Write a program that defines symbolic constants for all seven days of the week. Create
; an array variable that uses the symbols as initializers.

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

monday    = 1
tuesday   = 2
wednesday = 3
thursday  = 4
friday    = 5
saturday  = 6
sunday    = 7

.data
weekdays DWORD monday, tuesday, wednesday, thursday, friday, saturday, sunday

.code
main PROC
    lea esi, weekdays

    INVOKE ExitProcess, 0
main ENDP

END main
