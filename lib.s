global puts
global exit

;; sys/syscall.h
%define SYS_write	1
%define SYS_exit	60

;; unistd.h
%define STDIN		0
%define STDOUT		1
%define STDERR		2

section .text

;; int puts(const char *)
puts:
	mov rsi, rdi
	mov rdx, -1
.count:	inc rdx
	cmp byte [rsi + rdx], 0
	jne .count
	mov rdi, STDOUT
	mov rax, SYS_write
	syscall
	mov rax, 3
	ret

;; void exit(int) -- does not return
exit:
	mov rax, SYS_exit
	syscall
