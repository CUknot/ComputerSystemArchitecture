	.file	"fibo.c"
	.text
	.p2align 4
	.globl	fibo
	.def	fibo;	.scl	2;	.type	32;	.endef
	.seh_proc	fibo
fibo:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$120, %rsp
	.seh_stackalloc	120
	.seh_endprologue
	movl	%ecx, %esi
	testl	%ecx, %ecx
	jle	.L28
	cmpl	$1, %ecx
	je	.L2
	leal	-1(%rcx), %r13d
	xorl	%ebx, %ebx
.L27:
	cmpl	$1, %r13d
	je	.L49
	movl	%ebx, 64(%rsp)
	leal	-1(%r13), %r12d
	xorl	%esi, %esi
	movl	%r13d, 68(%rsp)
	movl	%r12d, %r13d
.L26:
	cmpl	$1, %r13d
	je	.L48
	movl	%esi, 72(%rsp)
	leal	-1(%r13), %eax
	xorl	%ebx, %ebx
	movl	%r12d, 76(%rsp)
	movl	%eax, %ebp
	movl	%eax, %ecx
	movl	%r13d, %r12d
.L25:
	cmpl	$1, %ebp
	je	.L47
	movl	%ebx, 80(%rsp)
	leal	-1(%rbp), %r8d
	xorl	%edi, %edi
	movl	%r12d, %r14d
	movl	%ebp, 84(%rsp)
	movl	%r8d, %r15d
.L24:
	cmpl	$1, %r15d
	je	.L46
	leal	-1(%r15), %r11d
	movl	%edi, 88(%rsp)
	xorl	%r12d, %r12d
	movl	%ecx, 92(%rsp)
	movl	%r11d, %ebx
	movl	%r12d, %esi
	movl	%r8d, 96(%rsp)
	movl	%r11d, 100(%rsp)
.L23:
	cmpl	$1, %ebx
	je	.L45
	movl	%ebx, 104(%rsp)
	leal	-1(%rbx), %r13d
	xorl	%edi, %edi
	movl	%r13d, %r12d
.L22:
	cmpl	$1, %r12d
	je	.L44
	leal	-1(%r12), %eax
	movl	%r13d, 52(%rsp)
	xorl	%ebp, %ebp
	movl	%eax, 108(%rsp)
	movl	%r12d, 56(%rsp)
	movl	%esi, 44(%rsp)
	movl	%ebp, %esi
	movl	%edi, 48(%rsp)
	movl	%eax, %edi
.L21:
	cmpl	$1, %edi
	je	.L43
	leal	-1(%rdi), %ebp
	movl	%edi, %edx
	xorl	%r12d, %r12d
	movl	%esi, %edi
	movl	%ebp, %esi
.L20:
	movl	%esi, %r13d
	cmpl	$1, %esi
	je	.L42
	movl	%esi, 60(%rsp)
	xorl	%ebx, %ebx
	movl	%edx, %esi
.L16:
	leal	-1(%r13), %ecx
	call	fibo
	addl	%eax, %ebx
	subl	$2, %r13d
	je	.L51
	cmpl	$1, %r13d
	jne	.L16
	movl	%esi, %edx
	movl	60(%rsp), %esi
	addl	$1, %ebx
.L18:
	addl	%ebx, %r12d
	subl	$2, %esi
	jne	.L20
.L42:
	movl	%edi, %esi
	leal	1(%r12), %eax
	movl	%edx, %edi
	addl	%eax, %esi
	subl	$2, %edi
	cmpl	$1, %ebp
	jne	.L21
.L43:
	movl	%esi, %ebp
	movl	48(%rsp), %edi
	movl	56(%rsp), %r12d
	addl	$1, %ebp
	movl	44(%rsp), %esi
	movl	52(%rsp), %r13d
	addl	%ebp, %edi
	subl	$2, %r12d
	cmpl	$1, 108(%rsp)
	jne	.L22
.L44:
	movl	104(%rsp), %ebx
	addl	$1, %edi
	addl	%edi, %esi
	subl	$2, %ebx
	cmpl	$1, %r13d
	jne	.L23
.L45:
	movl	88(%rsp), %edi
	movl	%esi, %r12d
	movl	100(%rsp), %r11d
	subl	$2, %r15d
	addl	$1, %r12d
	movl	92(%rsp), %ecx
	movl	96(%rsp), %r8d
	addl	%r12d, %edi
	cmpl	$1, %r11d
	jne	.L24
.L46:
	movl	80(%rsp), %ebx
	movl	84(%rsp), %ebp
	addl	$1, %edi
	movl	%r14d, %r12d
	addl	%edi, %ebx
	subl	$2, %ebp
	cmpl	$1, %r8d
	jne	.L25
.L47:
	movl	72(%rsp), %esi
	movl	%r12d, %r13d
	addl	$1, %ebx
	movl	76(%rsp), %r12d
	subl	$2, %r13d
	addl	%ebx, %esi
	cmpl	$1, %ecx
	jne	.L26
.L48:
	movl	64(%rsp), %ebx
	movl	68(%rsp), %r13d
	addl	$1, %esi
	addl	%esi, %ebx
	subl	$2, %r13d
	cmpl	$1, %r12d
	jne	.L27
.L49:
	movl	%ebx, %esi
	addl	$1, %esi
.L2:
	movl	%esi, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L51:
	movl	%esi, %edx
	movl	60(%rsp), %esi
	jmp	.L18
.L28:
	xorl	%esi, %esi
	jmp	.L2
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "fibo of %ld is %ld\12\0"
	.section	.text.startup,"x"
	.p2align 4
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
	leaq	.LC0(%rip), %rsi
	movl	$2, %ebx
	call	__main
	movl	$1, %r8d
	movl	$1, %edx
	movq	%rsi, %rcx
	call	printf
	.p2align 4,,10
	.p2align 3
.L53:
	movl	%ebx, %r9d
	xorl	%r10d, %r10d
.L54:
	leal	-1(%r9), %ecx
	call	fibo
	addl	%eax, %r10d
	subl	$2, %r9d
	je	.L55
	cmpl	$1, %r9d
	jne	.L54
	addl	$1, %r10d
.L55:
	movl	%ebx, %edx
	movl	%r10d, %r8d
	movq	%rsi, %rcx
	addl	$1, %ebx
	call	printf
	cmpl	$45, %ebx
	jne	.L53
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.ident	"GCC: (Rev6, Built by MSYS2 project) 13.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
