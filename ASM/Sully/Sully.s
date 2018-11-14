%define I 5

section .data
	code: db "%4$cdefine I %5$d%2$c%2$csection .data%2$c	code: db %3$c%1$s%3$c, 0%2$c	cmd: db %3$cnasm -f macho64 Sully_%4$c1$d.s -o Sully_%4$c1$d.o && clang -Wall -Wextra -Werror ./Sully_%4$c1$d.o -o Sully_%4$c1$d && ./Sully_%4$c1$d%3$c, 0%2$c	kid: db %3$cSully_%4$c1$d.s%3$c, 0%2$c	open_flag: db %3$cw%3$c, 0%2$c	file: db __FILE__, 0%2$c%2$csection .text%2$c	global start%2$c	global _main%2$c	extern _fopen%2$c	extern _fclose%2$c	extern _free%2$c	extern _system%2$c	extern _asprintf%2$c	extern _fprintf%2$c	extern _strchr%2$c%2$cstart:%2$c	call _main%2$c	ret%2$c%2$c_exec_kid:%2$c	push rbp%2$c	mov rbp, rsp%2$c	sub rsp, 16%2$c%2$c	mov rdx, rdi%2$c	lea rdi, [rbp - 8]%2$c	lea rsi, [rel cmd]%2$c	call _asprintf%2$c%2$c	mov rdi, [rbp - 8]%2$c	call _system%2$c%2$c	mov rdi, [rbp - 8]%2$c	call _free%2$c%2$c	add rsp, 16%2$c	mov rsp, rbp%2$c	pop rbp%2$c	ret%2$c%2$c_main:%2$c	push rbp%2$c	mov rbp, rsp%2$c	sub rsp, 16%2$c%2$c	mov dword [rbp - 12], I%2$c	cmp dword [rbp - 12], 0%2$c	jle .end%2$c%2$c	lea rdi, [rel file]%2$c	mov rsi, 95%2$c	call _strchr%2$c	cmp rax, 0%2$c	je .skip%2$c	dec dword [rbp - 12]%2$c%2$c	.skip:%2$c	lea rdi, [rel rbp - 8]%2$c	lea rsi, [rel kid]%2$c	mov rdx, [rbp - 12]%2$c	call _asprintf%2$c%2$c	mov rdi, [rbp - 8]%2$c	lea rsi, [rel open_flag]%2$c	call _fopen%2$c	mov r15, rax%2$c	cmp rax, 0%2$c	je .end_with_free%2$c%2$c	mov rdi, r15%2$c	lea rsi, [rel code]%2$c	lea rdx, [rel code]%2$c	mov rcx, 10%2$c	mov r8, 34%2$c	mov r9, 37%2$c	mov dword eax, [rbp - 12]%2$c	mov dword [rsp], eax%2$c	call _fprintf%2$c%2$c	mov rdi, r15%2$c	call _fclose%2$c%2$c	mov rdi, [rbp - 12]%2$c	call _exec_kid%2$c%2$c	.end_with_free:%2$c		mov rdi, [rbp - 8]%2$c		call _free%2$c	.end:%2$c		add rsp, 16%2$c		mov rsp, rbp%2$c		pop rbp%2$c		ret", 0
	cmd: db "nasm -f macho64 Sully_%1$d.s -o Sully_%1$d.o && clang -Wall -Wextra -Werror ./Sully_%1$d.o -o Sully_%1$d && ./Sully_%1$d", 0
	kid: db "Sully_%1$d.s", 0
	open_flag: db "w", 0
	file: db __FILE__, 0

section .text
	global start
	global _main
	extern _fopen
	extern _fclose
	extern _free
	extern _system
	extern _asprintf
	extern _fprintf
	extern _strchr

start:
	call _main
	ret

_exec_kid:
	push rbp
	mov rbp, rsp
	sub rsp, 16

	mov rdx, rdi
	lea rdi, [rbp - 8]
	lea rsi, [rel cmd]
	call _asprintf

	mov rdi, [rbp - 8]
	call _system

	mov rdi, [rbp - 8]
	call _free

	add rsp, 16
	mov rsp, rbp
	pop rbp
	ret

_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16

	mov dword [rbp - 12], I
	cmp dword [rbp - 12], 0
	jle .end

	lea rdi, [rel file]
	mov rsi, 95
	call _strchr
	cmp rax, 0
	je .skip
	dec dword [rbp - 12]

	.skip:
	lea rdi, [rel rbp - 8]
	lea rsi, [rel kid]
	mov rdx, [rbp - 12]
	call _asprintf

	mov rdi, [rbp - 8]
	lea rsi, [rel open_flag]
	call _fopen
	mov r15, rax
	cmp rax, 0
	je .end_with_free

	mov rdi, r15
	lea rsi, [rel code]
	lea rdx, [rel code]
	mov rcx, 10
	mov r8, 34
	mov r9, 37
	mov dword eax, [rbp - 12]
	mov dword [rsp], eax
	call _fprintf

	mov rdi, r15
	call _fclose

	mov rdi, [rbp - 12]
	call _exec_kid

	.end_with_free:
		mov rdi, [rbp - 8]
		call _free
	.end:
		add rsp, 16
		mov rsp, rbp
		pop rbp
		ret