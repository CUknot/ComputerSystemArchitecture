	.file	"testmax.c"
	.text
	.globl	max1
	.def	max1;	.scl	2;	.type	32;	.endef
	.seh_proc	max1
max1:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	24(%rbp), %edx
	movl	16(%rbp), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	popq	%rbp
	ret
	.seh_endproc
	.globl	max2
	.def	max2;	.scl	2;	.type	32;	.endef
	.seh_proc	max2
max2:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	cmpl	24(%rbp), %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L4
	movl	16(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L5
.L4:
	movl	24(%rbp), %eax
	movl	%eax, -4(%rbp)
.L5:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	testmax
	.def	testmax;	.scl	2;	.type	32;	.endef
	.seh_proc	testmax
testmax:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$2, %edx
	movl	$1, %ecx
	call	max1
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (Rev6, Built by MSYS2 project) 13.1.0"
