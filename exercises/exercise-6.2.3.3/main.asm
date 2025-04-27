; exercise 6.2.3.3
; Write a program that defines symbolic names for several string literals (characters
; between quotes). Use each symbolic name in a variable definition.

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

; symbolic constants
greeting    TEXTEQU <"hello world!">
question    TEXTEQU <"how are you?">

.data
greetingStr BYTE greeting, 0
questionStr BYTE question, 0

.code
main PROC
    lea eax, greetingStr  
    lea ecx, questionStr

    INVOKE ExitProcess, 0
main ENDP

END main
