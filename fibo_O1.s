	.file	"fibo.c"
	.text
	.globl	fibo
	.def	fibo;	.scl	2;	.type	32;	.endef
	.seh_proc	fibo
fibo:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	%ecx, %ebx
	movl	$0, %eax
	testl	%ecx, %ecx
	jle	.L1
	movl	%ecx, %eax
	cmpl	$1, %ecx
	je	.L1
	leal	-1(%rcx), %ecx
	call	fibo
	movl	%eax, %esi
	leal	-2(%rbx), %ecx
	call	fibo
	addl	%esi, %eax
.L1:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "fibo of %ld is %ld\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	__main
	movl	$1, %ebx
	leaq	.LC0(%rip), %rsi
.L6:
	movl	%ebx, %ecx
	call	fibo
	movl	%eax, %r8d
	movl	%ebx, %edx
	movq	%rsi, %rcx
	call	printf
	addl	$1, %ebx
	cmpl	$45, %ebx
	jne	.L6
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.ident	"GCC: (Rev6, Built by MSYS2 project) 13.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
