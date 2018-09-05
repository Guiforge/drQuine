%define NEWLINE 10
%define QUOTE 34
%macro FT 0
_main:
	push rbp
	mov rbp, rsp

	;open
	lea rdi, [rel kid]
	lea rsi, [rel open_flag]
	call _fopen
	mov r15, rax
	cmp rax, 0
	je .end

	mov rdi, rax
	lea rsi, [rel code]
	mov rdx, NEWLINE
	mov rcx, QUOTE
	lea r8, [rel code]
	mov r9, 37
	call _fprintf


	.end:
		mov rdi, r15
		call _fclose
		mov rsp, rbp
		pop rbp
		ret
%endmacro

section .data align=16
	code: db "%4$cdefine NEWLINE 10%1$c%4$cdefine QUOTE 34%1$c%4$cmacro FT 0%1$c_main:%1$c	push rbp%1$c	mov rbp, rsp%1$c%1$c	;open%1$c	lea rdi, [rel kid]%1$c	lea rsi, [rel open_flag]%1$c	call _fopen%1$c	mov r15, rax%1$c	cmp rax, 0%1$c	je .end%1$c%1$c	mov rdi, rax%1$c	lea rsi, [rel code]%1$c	mov rdx, NEWLINE%1$c	mov rcx, QUOTE%1$c	lea r8, [rel code]%1$c	mov r9, 37%1$c	call _fprintf%1$c%1$c%1$c	.end:%1$c		mov rdi, r15%1$c		call _fclose%1$c		mov rsp, rbp%1$c		pop rbp%1$c		ret%1$c%4$cendmacro%1$c%1$csection .data align=16%1$c	code: db %2$c%3$s%2$c, 0%1$c	kid: db %2$cGrace_kid.s%2$c, 0%1$c	open_flag: db %2$cw%2$c, 0%1$c%1$csection .text align=16%1$c	global start%1$c	global _main%1$c	extern _fopen%1$c	extern _fprintf%1$c	extern _fclose%1$c%1$cstart:%1$c	call _main%1$c	ret%1$c%1$cFT%1$c", 0
	kid: db "Grace_kid.s", 0
	open_flag: db "w", 0

section .text align=16
	global start
	global _main
	extern _fopen
	extern _fprintf
	extern _fclose

start:
	call _main
	ret

FT
