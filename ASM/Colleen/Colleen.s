; comment

section .data align=16
	code db "; comment%1$c%1$csection .data align=16%1$c	code db %2$c%3$s%2$c, 0%1$c	newline db 10%1$c	quote db 34%1$c%1$csection .text align=16%1$cglobal _main%1$cglobal start%1$cglobal _init_print%1$cextern _printf%1$c%1$c_init_print:%1$c	push rbp%1$c	mov rbp, rsp%1$c%1$c	lea rdi, [rel code]%1$c	mov rsi, [rel newline]%1$c	mov rdx, [rel quote]%1$c	lea rcx, [rel code]%1$c%1$c	mov rsp, rbp%1$c	pop rbp%1$c	ret%1$c%1$cstart:%1$c	call _main%1$c	ret%1$c%1$c_main:%1$c	push rbp%1$c	mov rbp, rsp%1$c%1$c; comment2%1$c	call _init_print%1$c	call _printf%1$c%1$c	mov rsp, rbp%1$c	pop rbp%1$c	ret", 0
	newline db 10
	quote db 34

section .text align=16
global _main
global start
global _init_print
extern _printf

_init_print:
	push rbp
	mov rbp, rsp

	lea rdi, [rel code]
	mov rsi, [rel newline]
	mov rdx, [rel quote]
	lea rcx, [rel code]

	mov rsp, rbp
	pop rbp
	ret

start:
	call _main
	ret

_main:
	push rbp
	mov rbp, rsp

; comment2
	call _init_print
	call _printf

	mov rsp, rbp
	pop rbp
	ret