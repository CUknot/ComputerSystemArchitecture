	.file	"max.c"
	.text
	.p2align 4
	.globl	max1
	.def	max1;	.scl	2;	.type	32;	.endef
	.seh_proc	max1
max1:
	.seh_endprologue
	cmpl	%ecx, %edx
	movl	%ecx, %eax
	cmovge	%edx, %eax
	ret
	.seh_endproc
	.p2align 4
	.globl	max2
	.def	max2;	.scl	2;	.type	32;	.endef
	.seh_proc	max2
max2:
	.seh_endprologue
	cmpl	%edx, %ecx
	movl	%edx, %eax
	cmovge	%ecx, %eax
	ret
	.seh_endproc
	.ident	"GCC: (Rev6, Built by MSYS2 project) 13.1.0"
