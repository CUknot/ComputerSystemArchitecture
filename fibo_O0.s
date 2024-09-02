	.file	"fibo.c"
	.text
	.globl	fibo
	.def	fibo;	.scl	2;	.type	32;	.endef
	.seh_proc	fibo
fibo:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movl	%ecx, 32(%rbp)
	cmpl	$0, 32(%rbp)
	jg	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	cmpl	$1, 32(%rbp)
	jne	.L4
	movl	$1, %eax
	jmp	.L3
.L4:
	movl	32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	call	fibo
	movl	%eax, %ebx
	movl	32(%rbp), %eax
	subl	$2, %eax
	movl	%eax, %ecx
	call	fibo
	addl	%ebx, %eax
.L3:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
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
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	__main
	movl	$1, -4(%rbp)
	jmp	.L6
.L7:
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	fibo
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %r8d
	movl	%eax, %edx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
	addl	$1, -4(%rbp)
.L6:
	cmpl	$44, -4(%rbp)
	jle	.L7
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (Rev6, Built by MSYS2 project) 13.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
