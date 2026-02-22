	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"Test.cpp"
	.def	_ZN5Tools6Vector3SumITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector3SumITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE,"xr",discard,_ZN5Tools6Vector3SumITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.globl	_ZN5Tools6Vector3SumITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE # -- Begin function _ZN5Tools6Vector3SumITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.p2align	4
_ZN5Tools6Vector3SumITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE: # @_ZN5Tools6Vector3SumITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
# %bb.0:
	movq	(%rcx), %r9
	movq	8(%rcx), %rcx
	cmpq	%rcx, %r9
	je	.LBB0_1
# %bb.2:
	movq	%rcx, %r8
	subq	%r9, %r8
	addq	$-4, %r8
	xorl	%eax, %eax
	cmpq	$28, %r8
	jae	.LBB0_4
# %bb.3:
	movq	%r9, %rdx
	jmp	.LBB0_7
.LBB0_1:
	xorl	%eax, %eax
	retq
.LBB0_4:
	shrq	$2, %r8
	incq	%r8
	movq	%r8, %r10
	andq	$-8, %r10
	leaq	(%r9,%r10,4), %rdx
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	.p2align	4
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movdqu	(%r9,%rax,4), %xmm2
	paddd	%xmm2, %xmm0
	movdqu	16(%r9,%rax,4), %xmm2
	paddd	%xmm2, %xmm1
	addq	$8, %rax
	cmpq	%rax, %r10
	jne	.LBB0_5
# %bb.6:
	paddd	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
	cmpq	%r10, %r8
	je	.LBB0_8
	.p2align	4
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	addl	(%rdx), %eax
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jne	.LBB0_7
.LBB0_8:
	retq
                                        # -- End function
	.def	_ZN5Tools6Vector3SumITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector3SumITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE,"xr",discard,_ZN5Tools6Vector3SumITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.globl	_ZN5Tools6Vector3SumITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE # -- Begin function _ZN5Tools6Vector3SumITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.p2align	4
_ZN5Tools6Vector3SumITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE: # @_ZN5Tools6Vector3SumITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
# %bb.0:
	movq	(%rcx), %r8
	movq	8(%rcx), %rcx
	cmpq	%rcx, %r8
	je	.LBB1_1
# %bb.2:
	movq	%rcx, %r9
	subq	%r8, %r9
	addq	$-8, %r9
	cmpq	$24, %r9
	jae	.LBB1_4
# %bb.3:
	xorl	%eax, %eax
	movq	%r8, %rdx
	jmp	.LBB1_7
.LBB1_1:
	xorl	%eax, %eax
	retq
.LBB1_4:
	shrq	$3, %r9
	incq	%r9
	movq	%r9, %r10
	andq	$-4, %r10
	leaq	(%r8,%r10,8), %rdx
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	.p2align	4
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movdqu	(%r8,%rax,8), %xmm2
	paddq	%xmm2, %xmm0
	movdqu	16(%r8,%rax,8), %xmm2
	paddq	%xmm2, %xmm1
	addq	$4, %rax
	cmpq	%rax, %r10
	jne	.LBB1_5
# %bb.6:
	paddq	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movq	%xmm0, %rax
	cmpq	%r10, %r9
	je	.LBB1_8
	.p2align	4
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	addq	(%rdx), %rax
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	jne	.LBB1_7
.LBB1_8:
	retq
                                        # -- End function
	.def	_ZN5Tools6Vector3SumITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector3SumITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE,"xr",discard,_ZN5Tools6Vector3SumITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.globl	_ZN5Tools6Vector3SumITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE # -- Begin function _ZN5Tools6Vector3SumITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.p2align	4
_ZN5Tools6Vector3SumITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE: # @_ZN5Tools6Vector3SumITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
# %bb.0:
	movq	(%rcx), %rax
	movq	8(%rcx), %rcx
	xorps	%xmm0, %xmm0
	cmpq	%rcx, %rax
	je	.LBB2_3
	.p2align	4
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	addss	(%rax), %xmm0
	addq	$4, %rax
	cmpq	%rcx, %rax
	jne	.LBB2_1
.LBB2_3:
	retq
                                        # -- End function
	.def	_ZN5Tools6Vector3SumITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector3SumITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE,"xr",discard,_ZN5Tools6Vector3SumITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.globl	_ZN5Tools6Vector3SumITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE # -- Begin function _ZN5Tools6Vector3SumITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.p2align	4
_ZN5Tools6Vector3SumITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE: # @_ZN5Tools6Vector3SumITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
# %bb.0:
	movq	(%rcx), %rax
	movq	8(%rcx), %rcx
	xorpd	%xmm0, %xmm0
	cmpq	%rcx, %rax
	je	.LBB3_3
	.p2align	4
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	addsd	(%rax), %xmm0
	addq	$8, %rax
	cmpq	%rcx, %rax
	jne	.LBB3_1
.LBB3_3:
	retq
                                        # -- End function
	.def	_ZN5Tools6Vector7ProductITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector7ProductITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE,"xr",discard,_ZN5Tools6Vector7ProductITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.globl	_ZN5Tools6Vector7ProductITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE # -- Begin function _ZN5Tools6Vector7ProductITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.p2align	4
_ZN5Tools6Vector7ProductITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE: # @_ZN5Tools6Vector7ProductITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
# %bb.0:
	xorl	%eax, %eax
	retq
                                        # -- End function
	.def	_ZN5Tools6Vector7ProductITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector7ProductITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE,"xr",discard,_ZN5Tools6Vector7ProductITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.globl	_ZN5Tools6Vector7ProductITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE # -- Begin function _ZN5Tools6Vector7ProductITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.p2align	4
_ZN5Tools6Vector7ProductITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE: # @_ZN5Tools6Vector7ProductITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
# %bb.0:
	xorl	%eax, %eax
	retq
                                        # -- End function
	.def	_ZN5Tools6Vector7ProductITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector7ProductITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE,"xr",discard,_ZN5Tools6Vector7ProductITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.globl	_ZN5Tools6Vector7ProductITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE # -- Begin function _ZN5Tools6Vector7ProductITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.p2align	4
_ZN5Tools6Vector7ProductITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE: # @_ZN5Tools6Vector7ProductITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
# %bb.0:
	movq	(%rcx), %rax
	movq	8(%rcx), %rcx
	xorps	%xmm0, %xmm0
	cmpq	%rcx, %rax
	je	.LBB6_3
	.p2align	4
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	mulss	(%rax), %xmm0
	addq	$4, %rax
	cmpq	%rcx, %rax
	jne	.LBB6_1
.LBB6_3:
	retq
                                        # -- End function
	.def	_ZN5Tools6Vector7ProductITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector7ProductITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE,"xr",discard,_ZN5Tools6Vector7ProductITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.globl	_ZN5Tools6Vector7ProductITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE # -- Begin function _ZN5Tools6Vector7ProductITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.p2align	4
_ZN5Tools6Vector7ProductITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE: # @_ZN5Tools6Vector7ProductITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
# %bb.0:
	movq	(%rcx), %rax
	movq	8(%rcx), %rcx
	xorpd	%xmm0, %xmm0
	cmpq	%rcx, %rax
	je	.LBB7_3
	.p2align	4
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	mulsd	(%rax), %xmm0
	addq	$8, %rax
	cmpq	%rcx, %rax
	jne	.LBB7_1
.LBB7_3:
	retq
                                        # -- End function
	.def	_ZN5Tools6Vector3AvgITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector3AvgITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE,"xr",discard,_ZN5Tools6Vector3AvgITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.globl	_ZN5Tools6Vector3AvgITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE # -- Begin function _ZN5Tools6Vector3AvgITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.p2align	4
_ZN5Tools6Vector3AvgITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE: # @_ZN5Tools6Vector3AvgITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
# %bb.0:
	movq	(%rcx), %rdx
	movq	8(%rcx), %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rdx
	je	.LBB8_7
# %bb.1:
	movq	%rcx, %r9
	subq	%rdx, %r9
	addq	$-4, %r9
	movq	%rdx, %r8
	cmpq	$28, %r9
	jb	.LBB8_5
# %bb.2:
	shrq	$2, %r9
	incq	%r9
	movq	%r9, %r10
	andq	$-8, %r10
	leaq	(%rdx,%r10,4), %r8
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	.p2align	4
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	movdqu	(%rdx,%rax,4), %xmm2
	paddd	%xmm2, %xmm0
	movdqu	16(%rdx,%rax,4), %xmm2
	paddd	%xmm2, %xmm1
	addq	$8, %rax
	cmpq	%rax, %r10
	jne	.LBB8_3
# %bb.4:
	paddd	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
	cmpq	%r10, %r9
	je	.LBB8_6
	.p2align	4
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	addl	(%r8), %eax
	addq	$4, %r8
	cmpq	%rcx, %r8
	jne	.LBB8_5
.LBB8_6:
	cltq
.LBB8_7:
	subq	%rdx, %rcx
	sarq	$2, %rcx
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	je	.LBB8_8
# %bb.9:
	xorl	%edx, %edx
	divq	%rcx
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB8_8:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
                                        # kill: def $eax killed $eax killed $rax
	retq
                                        # -- End function
	.def	_ZN5Tools6Vector3AvgITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector3AvgITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE,"xr",discard,_ZN5Tools6Vector3AvgITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.globl	_ZN5Tools6Vector3AvgITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE # -- Begin function _ZN5Tools6Vector3AvgITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.p2align	4
_ZN5Tools6Vector3AvgITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE: # @_ZN5Tools6Vector3AvgITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
# %bb.0:
	movq	(%rcx), %rdx
	movq	8(%rcx), %rcx
	cmpq	%rcx, %rdx
	je	.LBB9_1
# %bb.2:
	movq	%rcx, %r9
	subq	%rdx, %r9
	addq	$-8, %r9
	cmpq	$24, %r9
	jae	.LBB9_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rdx, %r8
	jmp	.LBB9_7
.LBB9_1:
	xorl	%eax, %eax
	jmp	.LBB9_8
.LBB9_4:
	shrq	$3, %r9
	incq	%r9
	movq	%r9, %r10
	andq	$-4, %r10
	leaq	(%rdx,%r10,8), %r8
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	.p2align	4
.LBB9_5:                                # =>This Inner Loop Header: Depth=1
	movdqu	(%rdx,%rax,8), %xmm2
	paddq	%xmm2, %xmm0
	movdqu	16(%rdx,%rax,8), %xmm2
	paddq	%xmm2, %xmm1
	addq	$4, %rax
	cmpq	%rax, %r10
	jne	.LBB9_5
# %bb.6:
	paddq	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movq	%xmm0, %rax
	cmpq	%r10, %r9
	je	.LBB9_8
	.p2align	4
.LBB9_7:                                # =>This Inner Loop Header: Depth=1
	addq	(%r8), %rax
	addq	$8, %r8
	cmpq	%rcx, %r8
	jne	.LBB9_7
.LBB9_8:
	subq	%rdx, %rcx
	sarq	$3, %rcx
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	je	.LBB9_9
# %bb.10:
	xorl	%edx, %edx
	divq	%rcx
	retq
.LBB9_9:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
	retq
                                        # -- End function
	.def	_ZN5Tools6Vector3AvgITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector3AvgITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE,"xr",discard,_ZN5Tools6Vector3AvgITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.globl	_ZN5Tools6Vector3AvgITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE # -- Begin function _ZN5Tools6Vector3AvgITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.p2align	4
_ZN5Tools6Vector3AvgITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE: # @_ZN5Tools6Vector3AvgITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
# %bb.0:
	movq	(%rcx), %rdx
	movq	8(%rcx), %rax
	xorps	%xmm0, %xmm0
	cmpq	%rax, %rdx
	je	.LBB10_3
# %bb.1:
	movq	%rdx, %rcx
	.p2align	4
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	addss	(%rcx), %xmm0
	addq	$4, %rcx
	cmpq	%rax, %rcx
	jne	.LBB10_2
.LBB10_3:
	subq	%rdx, %rax
	sarq	$2, %rax
	js	.LBB10_4
# %bb.5:
	cvtsi2ss	%rax, %xmm1
	divss	%xmm1, %xmm0
	retq
.LBB10_4:
	movq	%rax, %rcx
	shrq	%rcx
	andl	$1, %eax
	orq	%rcx, %rax
	cvtsi2ss	%rax, %xmm1
	addss	%xmm1, %xmm1
	divss	%xmm1, %xmm0
	retq
                                        # -- End function
	.def	_ZN5Tools6Vector3AvgITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	4, 0x0                          # -- Begin function _ZN5Tools6Vector3AvgITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
.LCPI11_0:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI11_1:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
	.section	.text$_ZN5Tools6Vector3AvgITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE,"xr",discard,_ZN5Tools6Vector3AvgITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.globl	_ZN5Tools6Vector3AvgITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
	.p2align	4
_ZN5Tools6Vector3AvgITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE: # @_ZN5Tools6Vector3AvgITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE
# %bb.0:
	movq	(%rcx), %rdx
	movq	8(%rcx), %rax
	xorpd	%xmm0, %xmm0
	cmpq	%rax, %rdx
	je	.LBB11_3
# %bb.1:
	movq	%rdx, %rcx
	.p2align	4
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	addsd	(%rcx), %xmm0
	addq	$8, %rcx
	cmpq	%rax, %rcx
	jne	.LBB11_2
.LBB11_3:
	subq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %xmm1
	punpckldq	.LCPI11_0(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI11_1(%rip), %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2                    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	retq
                                        # -- End function
	.def	_ZN5Tools6Vector4SortITk7NumbersiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector4SortITk7NumbersiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_,"xr",discard,_ZN5Tools6Vector4SortITk7NumbersiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
	.globl	_ZN5Tools6Vector4SortITk7NumbersiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_ # -- Begin function _ZN5Tools6Vector4SortITk7NumbersiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
	.p2align	4
_ZN5Tools6Vector4SortITk7NumbersiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_: # @_ZN5Tools6Vector4SortITk7NumbersiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
.Lfunc_begin0:
.seh_proc _ZN5Tools6Vector4SortITk7NumbersiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rcx, %rsi
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	movq	(%rdx), %rbx
	movq	8(%rdx), %r14
	subq	%rbx, %r14
	je	.LBB12_1
# %bb.2:
	js	.LBB12_9
# %bb.3:
	movq	%r14, %rcx
	callq	_Znwy
	movq	%rax, %rdi
	movq	%rax, (%rsi)
	leaq	(%rax,%r14), %r15
	movq	%r15, 16(%rsi)
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r14, %r8
	callq	memcpy
	movq	%r15, %rdx
	movq	%r15, 8(%rsi)
	jmp	.LBB12_4
.LBB12_1:
	xorl	%edx, %edx
	xorl	%edi, %edi
.LBB12_4:
.Ltmp0:
	leaq	47(%rsp), %r8
	movq	%rdi, %rcx
	callq	_ZNSt3__16__sortIRNS_6__lessIiiEEPiEEvT0_S5_T_
.Ltmp1:
# %bb.5:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB12_9:
	callq	_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne210107Ev
.LBB12_6:
.Ltmp2:
	movq	%rax, %rbx
	testq	%rdi, %rdi
	je	.LBB12_8
# %bb.7:
	movq	%rdi, 8(%rsi)
	movq	%rdi, %rcx
	callq	_ZdlPv
.LBB12_8:
	movq	%rbx, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end0:
	.seh_handlerdata
	.section	.text$_ZN5Tools6Vector4SortITk7NumbersiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_,"xr",discard,_ZN5Tools6Vector4SortITk7NumbersiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
	.seh_endproc
	.section	.xdata$_ZN5Tools6Vector4SortITk7NumbersiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table12:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end0-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools6Vector4SortITk7NumbersiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_,"xr",discard,_ZN5Tools6Vector4SortITk7NumbersiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
                                        # -- End function
	.def	_ZN5Tools6Vector4SortITk7NumbersxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector4SortITk7NumbersxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_,"xr",discard,_ZN5Tools6Vector4SortITk7NumbersxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
	.globl	_ZN5Tools6Vector4SortITk7NumbersxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_ # -- Begin function _ZN5Tools6Vector4SortITk7NumbersxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
	.p2align	4
_ZN5Tools6Vector4SortITk7NumbersxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_: # @_ZN5Tools6Vector4SortITk7NumbersxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
.Lfunc_begin1:
.seh_proc _ZN5Tools6Vector4SortITk7NumbersxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rcx, %rsi
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	movq	(%rdx), %rbx
	movq	8(%rdx), %r14
	subq	%rbx, %r14
	je	.LBB13_1
# %bb.2:
	js	.LBB13_9
# %bb.3:
	movq	%r14, %rcx
	callq	_Znwy
	movq	%rax, %rdi
	movq	%rax, (%rsi)
	leaq	(%rax,%r14), %r15
	movq	%r15, 16(%rsi)
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r14, %r8
	callq	memcpy
	movq	%r15, %rdx
	movq	%r15, 8(%rsi)
	jmp	.LBB13_4
.LBB13_1:
	xorl	%edx, %edx
	xorl	%edi, %edi
.LBB13_4:
.Ltmp3:
	leaq	47(%rsp), %r8
	movq	%rdi, %rcx
	callq	_ZNSt3__16__sortIRNS_6__lessIxxEEPxEEvT0_S5_T_
.Ltmp4:
# %bb.5:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB13_9:
	callq	_ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne210107Ev
.LBB13_6:
.Ltmp5:
	movq	%rax, %rbx
	testq	%rdi, %rdi
	je	.LBB13_8
# %bb.7:
	movq	%rdi, 8(%rsi)
	movq	%rdi, %rcx
	callq	_ZdlPv
.LBB13_8:
	movq	%rbx, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end1:
	.seh_handlerdata
	.section	.text$_ZN5Tools6Vector4SortITk7NumbersxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_,"xr",discard,_ZN5Tools6Vector4SortITk7NumbersxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
	.seh_endproc
	.section	.xdata$_ZN5Tools6Vector4SortITk7NumbersxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table13:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin1           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Lfunc_end1-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools6Vector4SortITk7NumbersxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_,"xr",discard,_ZN5Tools6Vector4SortITk7NumbersxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
                                        # -- End function
	.def	_ZN5Tools6Vector4SortITk7NumbersfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector4SortITk7NumbersfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_,"xr",discard,_ZN5Tools6Vector4SortITk7NumbersfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
	.globl	_ZN5Tools6Vector4SortITk7NumbersfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_ # -- Begin function _ZN5Tools6Vector4SortITk7NumbersfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
	.p2align	4
_ZN5Tools6Vector4SortITk7NumbersfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_: # @_ZN5Tools6Vector4SortITk7NumbersfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
.Lfunc_begin2:
.seh_proc _ZN5Tools6Vector4SortITk7NumbersfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rcx, %rsi
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	movq	(%rdx), %rbx
	movq	8(%rdx), %r14
	subq	%rbx, %r14
	je	.LBB14_1
# %bb.2:
	js	.LBB14_9
# %bb.3:
	movq	%r14, %rcx
	callq	_Znwy
	movq	%rax, %rdi
	movq	%rax, (%rsi)
	leaq	(%rax,%r14), %r15
	movq	%r15, 16(%rsi)
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r14, %r8
	callq	memcpy
	movq	%r15, %rdx
	movq	%r15, 8(%rsi)
	jmp	.LBB14_4
.LBB14_1:
	xorl	%edx, %edx
	xorl	%edi, %edi
.LBB14_4:
.Ltmp6:
	leaq	47(%rsp), %r8
	movq	%rdi, %rcx
	callq	_ZNSt3__16__sortIRNS_6__lessIffEEPfEEvT0_S5_T_
.Ltmp7:
# %bb.5:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB14_9:
	callq	_ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne210107Ev
.LBB14_6:
.Ltmp8:
	movq	%rax, %rbx
	testq	%rdi, %rdi
	je	.LBB14_8
# %bb.7:
	movq	%rdi, 8(%rsi)
	movq	%rdi, %rcx
	callq	_ZdlPv
.LBB14_8:
	movq	%rbx, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end2:
	.seh_handlerdata
	.section	.text$_ZN5Tools6Vector4SortITk7NumbersfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_,"xr",discard,_ZN5Tools6Vector4SortITk7NumbersfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
	.seh_endproc
	.section	.xdata$_ZN5Tools6Vector4SortITk7NumbersfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table14:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp6-.Lfunc_begin2           #   Call between .Lfunc_begin2 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin2           # >> Call Site 2 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin2           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin2           # >> Call Site 3 <<
	.uleb128 .Lfunc_end2-.Ltmp7             #   Call between .Ltmp7 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools6Vector4SortITk7NumbersfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_,"xr",discard,_ZN5Tools6Vector4SortITk7NumbersfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
                                        # -- End function
	.def	_ZN5Tools6Vector4SortITk7NumbersdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector4SortITk7NumbersdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_,"xr",discard,_ZN5Tools6Vector4SortITk7NumbersdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
	.globl	_ZN5Tools6Vector4SortITk7NumbersdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_ # -- Begin function _ZN5Tools6Vector4SortITk7NumbersdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
	.p2align	4
_ZN5Tools6Vector4SortITk7NumbersdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_: # @_ZN5Tools6Vector4SortITk7NumbersdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
.Lfunc_begin3:
.seh_proc _ZN5Tools6Vector4SortITk7NumbersdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rcx, %rsi
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	movq	(%rdx), %rbx
	movq	8(%rdx), %r14
	subq	%rbx, %r14
	je	.LBB15_1
# %bb.2:
	js	.LBB15_9
# %bb.3:
	movq	%r14, %rcx
	callq	_Znwy
	movq	%rax, %rdi
	movq	%rax, (%rsi)
	leaq	(%rax,%r14), %r15
	movq	%r15, 16(%rsi)
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	%r14, %r8
	callq	memcpy
	movq	%r15, %rdx
	movq	%r15, 8(%rsi)
	jmp	.LBB15_4
.LBB15_1:
	xorl	%edx, %edx
	xorl	%edi, %edi
.LBB15_4:
.Ltmp9:
	leaq	47(%rsp), %r8
	movq	%rdi, %rcx
	callq	_ZNSt3__16__sortIRNS_6__lessIddEEPdEEvT0_S5_T_
.Ltmp10:
# %bb.5:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB15_9:
	callq	_ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne210107Ev
.LBB15_6:
.Ltmp11:
	movq	%rax, %rbx
	testq	%rdi, %rdi
	je	.LBB15_8
# %bb.7:
	movq	%rdi, 8(%rsi)
	movq	%rdi, %rcx
	callq	_ZdlPv
.LBB15_8:
	movq	%rbx, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end3:
	.seh_handlerdata
	.section	.text$_ZN5Tools6Vector4SortITk7NumbersdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_,"xr",discard,_ZN5Tools6Vector4SortITk7NumbersdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
	.seh_endproc
	.section	.xdata$_ZN5Tools6Vector4SortITk7NumbersdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table15:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp9-.Lfunc_begin3           #   Call between .Lfunc_begin3 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin3           # >> Call Site 2 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin3          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end3-.Ltmp10            #   Call between .Ltmp10 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools6Vector4SortITk7NumbersdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_,"xr",discard,_ZN5Tools6Vector4SortITk7NumbersdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_
                                        # -- End function
	.def	_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy,"xr",discard,_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
	.globl	_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy # -- Begin function _ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
	.p2align	4
_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy: # @_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
.Lfunc_begin4:
.seh_proc _ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	cmpq	%r9, %r8
	ja	.LBB16_3
# %bb.1:
	movq	(%rdx), %r14
	movq	8(%rdx), %rax
	subq	%r14, %rax
	sarq	$2, %rax
	cmpq	%rax, %r8
	jae	.LBB16_3
# %bb.2:
	movq	%r9, %rdi
	cmpq	%rax, %r9
	jae	.LBB16_3
# %bb.6:
	movq	%rcx, %rsi
	leaq	(,%r8,4), %r13
	leaq	4(,%rdi,4), %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	subq	%r13, %rbx
	je	.LBB16_17
# %bb.7:
	js	.LBB16_18
# %bb.8:
	leaq	(%r14,%r8,4), %r15
	leaq	(,%rdi,4), %r12
	movq	%rbx, %rcx
	callq	_Znwy
	movq	%rax, (%rsi)
	addq	%rax, %rbx
	movq	%rbx, 16(%rsi)
	subq	%r13, %r12
	cmpq	$28, %r12
	jb	.LBB16_9
# %bb.10:
	movq	%rax, %rcx
	subq	%r15, %rcx
	cmpq	$32, %rcx
	jb	.LBB16_9
# %bb.11:
	shrq	$2, %r12
	incq	%r12
	movq	%r12, %r8
	andq	$-8, %r8
	leaq	(%r15,%r8,4), %rcx
	leaq	(%rax,%r8,4), %rdx
	addq	$16, %r15
	xorl	%r9d, %r9d
	.p2align	4
.LBB16_12:                              # =>This Inner Loop Header: Depth=1
	movups	-16(%r15,%r9,4), %xmm0
	movups	(%r15,%r9,4), %xmm1
	movups	%xmm0, (%rax,%r9,4)
	movups	%xmm1, 16(%rax,%r9,4)
	addq	$8, %r9
	cmpq	%r9, %r8
	jne	.LBB16_12
# %bb.13:
	cmpq	%r8, %r12
	jne	.LBB16_14
	jmp	.LBB16_16
.LBB16_9:
	movq	%r15, %rcx
	movq	%rax, %rdx
.LBB16_14:
	leaq	(%r14,%rdi,4), %rax
	addq	$4, %rax
	.p2align	4
.LBB16_15:                              # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %r8d
	movl	%r8d, (%rdx)
	addq	$4, %rcx
	addq	$4, %rdx
	cmpq	%rax, %rcx
	jne	.LBB16_15
.LBB16_16:
	movq	%rdx, 8(%rsi)
.LBB16_17:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB16_3:
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
.Ltmp12:
	leaq	.L.str(%rip), %rdx
	movq	%rax, %rcx
	callq	_ZNSt12out_of_rangeC2B8ne210107EPKc
.Ltmp13:
# %bb.4:
	leaq	_ZTISt12out_of_range(%rip), %rdx
	leaq	_ZNSt12out_of_rangeD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
.LBB16_18:
	callq	_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne210107Ev
.LBB16_5:
.Ltmp14:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	__cxa_free_exception
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end4:
	.seh_handlerdata
	.section	.text$_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy,"xr",discard,_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
	.seh_endproc
	.section	.xdata$_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table16:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp12-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin4          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Lfunc_end4-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy,"xr",discard,_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
                                        # -- End function
	.def	_ZNSt12out_of_rangeC2B8ne210107EPKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt12out_of_rangeC2B8ne210107EPKc,"xr",discard,_ZNSt12out_of_rangeC2B8ne210107EPKc
	.globl	_ZNSt12out_of_rangeC2B8ne210107EPKc # -- Begin function _ZNSt12out_of_rangeC2B8ne210107EPKc
	.p2align	4
_ZNSt12out_of_rangeC2B8ne210107EPKc:    # @_ZNSt12out_of_rangeC2B8ne210107EPKc
.seh_proc _ZNSt12out_of_rangeC2B8ne210107EPKc
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	callq	_ZNSt11logic_errorC2EPKc
	movq	.refptr._ZTVSt12out_of_range(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rsi)
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy,"xr",discard,_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
	.globl	_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy # -- Begin function _ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
	.p2align	4
_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy: # @_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
.Lfunc_begin5:
.seh_proc _ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	cmpq	%r9, %r8
	ja	.LBB18_3
# %bb.1:
	movq	(%rdx), %r14
	movq	8(%rdx), %rax
	subq	%r14, %rax
	sarq	$3, %rax
	cmpq	%rax, %r8
	jae	.LBB18_3
# %bb.2:
	movq	%r9, %rdi
	cmpq	%rax, %r9
	jae	.LBB18_3
# %bb.6:
	movq	%rcx, %rsi
	leaq	(,%r8,8), %r13
	leaq	8(,%rdi,8), %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	subq	%r13, %rbx
	je	.LBB18_17
# %bb.7:
	js	.LBB18_18
# %bb.8:
	leaq	(%r14,%r8,8), %r15
	leaq	(,%rdi,8), %r12
	movq	%rbx, %rcx
	callq	_Znwy
	movq	%rax, (%rsi)
	addq	%rax, %rbx
	movq	%rbx, 16(%rsi)
	subq	%r13, %r12
	cmpq	$56, %r12
	jb	.LBB18_9
# %bb.10:
	movq	%rax, %rcx
	subq	%r15, %rcx
	cmpq	$32, %rcx
	jb	.LBB18_9
# %bb.11:
	shrq	$3, %r12
	incq	%r12
	movq	%r12, %r8
	andq	$-4, %r8
	leaq	(%r15,%r8,8), %rcx
	leaq	(%rax,%r8,8), %rdx
	addq	$16, %r15
	xorl	%r9d, %r9d
	.p2align	4
.LBB18_12:                              # =>This Inner Loop Header: Depth=1
	movups	-16(%r15,%r9,8), %xmm0
	movups	(%r15,%r9,8), %xmm1
	movups	%xmm0, (%rax,%r9,8)
	movups	%xmm1, 16(%rax,%r9,8)
	addq	$4, %r9
	cmpq	%r9, %r8
	jne	.LBB18_12
# %bb.13:
	cmpq	%r8, %r12
	jne	.LBB18_14
	jmp	.LBB18_16
.LBB18_9:
	movq	%r15, %rcx
	movq	%rax, %rdx
.LBB18_14:
	leaq	(%r14,%rdi,8), %rax
	addq	$8, %rax
	.p2align	4
.LBB18_15:                              # =>This Inner Loop Header: Depth=1
	movq	(%rcx), %r8
	movq	%r8, (%rdx)
	addq	$8, %rcx
	addq	$8, %rdx
	cmpq	%rax, %rcx
	jne	.LBB18_15
.LBB18_16:
	movq	%rdx, 8(%rsi)
.LBB18_17:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB18_3:
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
.Ltmp15:
	leaq	.L.str(%rip), %rdx
	movq	%rax, %rcx
	callq	_ZNSt12out_of_rangeC2B8ne210107EPKc
.Ltmp16:
# %bb.4:
	leaq	_ZTISt12out_of_range(%rip), %rdx
	leaq	_ZNSt12out_of_rangeD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
.LBB18_18:
	callq	_ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne210107Ev
.LBB18_5:
.Ltmp17:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	__cxa_free_exception
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end5:
	.seh_handlerdata
	.section	.text$_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy,"xr",discard,_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
	.seh_endproc
	.section	.xdata$_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table18:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin5          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Lfunc_end5-.Ltmp16            #   Call between .Ltmp16 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy,"xr",discard,_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
                                        # -- End function
	.def	_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy,"xr",discard,_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
	.globl	_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy # -- Begin function _ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
	.p2align	4
_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy: # @_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
.Lfunc_begin6:
.seh_proc _ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	cmpq	%r9, %r8
	ja	.LBB19_3
# %bb.1:
	movq	(%rdx), %r14
	movq	8(%rdx), %rax
	subq	%r14, %rax
	sarq	$2, %rax
	cmpq	%rax, %r8
	jae	.LBB19_3
# %bb.2:
	movq	%r9, %rdi
	cmpq	%rax, %r9
	jae	.LBB19_3
# %bb.6:
	movq	%rcx, %rsi
	leaq	(,%r8,4), %r13
	leaq	4(,%rdi,4), %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	subq	%r13, %rbx
	je	.LBB19_17
# %bb.7:
	js	.LBB19_18
# %bb.8:
	leaq	(%r14,%r8,4), %r15
	leaq	(,%rdi,4), %r12
	movq	%rbx, %rcx
	callq	_Znwy
	movq	%rax, (%rsi)
	addq	%rax, %rbx
	movq	%rbx, 16(%rsi)
	subq	%r13, %r12
	cmpq	$28, %r12
	jb	.LBB19_9
# %bb.10:
	movq	%rax, %rcx
	subq	%r15, %rcx
	cmpq	$32, %rcx
	jb	.LBB19_9
# %bb.11:
	shrq	$2, %r12
	incq	%r12
	movq	%r12, %r8
	andq	$-8, %r8
	leaq	(%r15,%r8,4), %rcx
	leaq	(%rax,%r8,4), %rdx
	addq	$16, %r15
	xorl	%r9d, %r9d
	.p2align	4
.LBB19_12:                              # =>This Inner Loop Header: Depth=1
	movups	-16(%r15,%r9,4), %xmm0
	movups	(%r15,%r9,4), %xmm1
	movups	%xmm0, (%rax,%r9,4)
	movups	%xmm1, 16(%rax,%r9,4)
	addq	$8, %r9
	cmpq	%r9, %r8
	jne	.LBB19_12
# %bb.13:
	cmpq	%r8, %r12
	jne	.LBB19_14
	jmp	.LBB19_16
.LBB19_9:
	movq	%r15, %rcx
	movq	%rax, %rdx
.LBB19_14:
	leaq	(%r14,%rdi,4), %rax
	addq	$4, %rax
	.p2align	4
.LBB19_15:                              # =>This Inner Loop Header: Depth=1
	movss	(%rcx), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rdx)
	addq	$4, %rcx
	addq	$4, %rdx
	cmpq	%rax, %rcx
	jne	.LBB19_15
.LBB19_16:
	movq	%rdx, 8(%rsi)
.LBB19_17:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB19_3:
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
.Ltmp18:
	leaq	.L.str(%rip), %rdx
	movq	%rax, %rcx
	callq	_ZNSt12out_of_rangeC2B8ne210107EPKc
.Ltmp19:
# %bb.4:
	leaq	_ZTISt12out_of_range(%rip), %rdx
	leaq	_ZNSt12out_of_rangeD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
.LBB19_18:
	callq	_ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne210107Ev
.LBB19_5:
.Ltmp20:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	__cxa_free_exception
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end6:
	.seh_handlerdata
	.section	.text$_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy,"xr",discard,_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
	.seh_endproc
	.section	.xdata$_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table19:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp18-.Lfunc_begin6          #   Call between .Lfunc_begin6 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin6          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Lfunc_end6-.Ltmp19            #   Call between .Ltmp19 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy,"xr",discard,_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
                                        # -- End function
	.def	_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy,"xr",discard,_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
	.globl	_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy # -- Begin function _ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
	.p2align	4
_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy: # @_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
.Lfunc_begin7:
.seh_proc _ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	cmpq	%r9, %r8
	ja	.LBB20_3
# %bb.1:
	movq	(%rdx), %r14
	movq	8(%rdx), %rax
	subq	%r14, %rax
	sarq	$3, %rax
	cmpq	%rax, %r8
	jae	.LBB20_3
# %bb.2:
	movq	%r9, %rdi
	cmpq	%rax, %r9
	jae	.LBB20_3
# %bb.6:
	movq	%rcx, %rsi
	leaq	(,%r8,8), %r13
	leaq	8(,%rdi,8), %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	subq	%r13, %rbx
	je	.LBB20_17
# %bb.7:
	js	.LBB20_18
# %bb.8:
	leaq	(%r14,%r8,8), %r15
	leaq	(,%rdi,8), %r12
	movq	%rbx, %rcx
	callq	_Znwy
	movq	%rax, (%rsi)
	addq	%rax, %rbx
	movq	%rbx, 16(%rsi)
	subq	%r13, %r12
	cmpq	$56, %r12
	jb	.LBB20_9
# %bb.10:
	movq	%rax, %rcx
	subq	%r15, %rcx
	cmpq	$32, %rcx
	jb	.LBB20_9
# %bb.11:
	shrq	$3, %r12
	incq	%r12
	movq	%r12, %r8
	andq	$-4, %r8
	leaq	(%r15,%r8,8), %rcx
	leaq	(%rax,%r8,8), %rdx
	addq	$16, %r15
	xorl	%r9d, %r9d
	.p2align	4
.LBB20_12:                              # =>This Inner Loop Header: Depth=1
	movups	-16(%r15,%r9,8), %xmm0
	movups	(%r15,%r9,8), %xmm1
	movups	%xmm0, (%rax,%r9,8)
	movups	%xmm1, 16(%rax,%r9,8)
	addq	$4, %r9
	cmpq	%r9, %r8
	jne	.LBB20_12
# %bb.13:
	cmpq	%r8, %r12
	jne	.LBB20_14
	jmp	.LBB20_16
.LBB20_9:
	movq	%r15, %rcx
	movq	%rax, %rdx
.LBB20_14:
	leaq	(%r14,%rdi,8), %rax
	addq	$8, %rax
	.p2align	4
.LBB20_15:                              # =>This Inner Loop Header: Depth=1
	movsd	(%rcx), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, (%rdx)
	addq	$8, %rcx
	addq	$8, %rdx
	cmpq	%rax, %rcx
	jne	.LBB20_15
.LBB20_16:
	movq	%rdx, 8(%rsi)
.LBB20_17:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB20_3:
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
.Ltmp21:
	leaq	.L.str(%rip), %rdx
	movq	%rax, %rcx
	callq	_ZNSt12out_of_rangeC2B8ne210107EPKc
.Ltmp22:
# %bb.4:
	leaq	_ZTISt12out_of_range(%rip), %rdx
	leaq	_ZNSt12out_of_rangeD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
.LBB20_18:
	callq	_ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne210107Ev
.LBB20_5:
.Ltmp23:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	__cxa_free_exception
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end7:
	.seh_handlerdata
	.section	.text$_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy,"xr",discard,_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
	.seh_endproc
	.section	.xdata$_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table20:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp21-.Lfunc_begin7          #   Call between .Lfunc_begin7 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin7          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin7          # >> Call Site 3 <<
	.uleb128 .Lfunc_end7-.Ltmp22            #   Call between .Ltmp22 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy,"xr",discard,_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy
                                        # -- End function
	.def	_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y,"xr",discard,_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
	.globl	_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y # -- Begin function _ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
	.p2align	4
_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y: # @_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
.Lfunc_begin8:
.seh_proc _ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	(%rdx), %r14
	movq	8(%rdx), %rax
	subq	%r14, %rax
	sarq	$2, %rax
	cmpq	%rax, %r8
	jae	.LBB21_1
# %bb.4:
	movq	%r8, %rdi
	movq	%rcx, %rsi
	leaq	4(,%r8,4), %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	testq	%rbx, %rbx
	je	.LBB21_15
# %bb.5:
	js	.LBB21_16
# %bb.6:
	movq	%rbx, %rcx
	callq	_Znwy
	movq	%rax, (%rsi)
	addq	%rax, %rbx
	movq	%rbx, 16(%rsi)
	movabsq	$4611686018427387903, %r8       # imm = 0x3FFFFFFFFFFFFFFF
	andq	%rdi, %r8
	cmpq	$7, %r8
	jb	.LBB21_7
# %bb.8:
	movq	%rax, %rcx
	subq	%r14, %rcx
	cmpq	$32, %rcx
	jb	.LBB21_7
# %bb.9:
	incq	%r8
	movq	%r8, %r9
	andq	$-8, %r9
	leaq	(%r14,%r9,4), %rcx
	leaq	(%rax,%r9,4), %rdx
	xorl	%r10d, %r10d
	.p2align	4
.LBB21_10:                              # =>This Inner Loop Header: Depth=1
	movups	(%r14,%r10,4), %xmm0
	movups	16(%r14,%r10,4), %xmm1
	movups	%xmm0, (%rax,%r10,4)
	movups	%xmm1, 16(%rax,%r10,4)
	addq	$8, %r10
	cmpq	%r10, %r9
	jne	.LBB21_10
# %bb.11:
	cmpq	%r9, %r8
	jne	.LBB21_12
	jmp	.LBB21_14
.LBB21_7:
	movq	%r14, %rcx
	movq	%rax, %rdx
.LBB21_12:
	leaq	(%r14,%rdi,4), %rax
	addq	$4, %rax
	.p2align	4
.LBB21_13:                              # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %r8d
	movl	%r8d, (%rdx)
	addq	$4, %rcx
	addq	$4, %rdx
	cmpq	%rax, %rcx
	jne	.LBB21_13
.LBB21_14:
	movq	%rdx, 8(%rsi)
.LBB21_15:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
.LBB21_1:
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
.Ltmp24:
	leaq	.L.str(%rip), %rdx
	movq	%rax, %rcx
	callq	_ZNSt12out_of_rangeC2B8ne210107EPKc
.Ltmp25:
# %bb.2:
	leaq	_ZTISt12out_of_range(%rip), %rdx
	leaq	_ZNSt12out_of_rangeD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
.LBB21_16:
	callq	_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne210107Ev
.LBB21_3:
.Ltmp26:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	__cxa_free_exception
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end8:
	.seh_handlerdata
	.section	.text$_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y,"xr",discard,_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
	.seh_endproc
	.section	.xdata$_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table21:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp24-.Lfunc_begin8          #   Call between .Lfunc_begin8 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin8          # >> Call Site 2 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin8          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin8          # >> Call Site 3 <<
	.uleb128 .Lfunc_end8-.Ltmp25            #   Call between .Ltmp25 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y,"xr",discard,_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
                                        # -- End function
	.def	_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y,"xr",discard,_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
	.globl	_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y # -- Begin function _ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
	.p2align	4
_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y: # @_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
.Lfunc_begin9:
.seh_proc _ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	(%rdx), %r14
	movq	8(%rdx), %rax
	subq	%r14, %rax
	sarq	$3, %rax
	cmpq	%rax, %r8
	jae	.LBB22_1
# %bb.4:
	movq	%r8, %rdi
	movq	%rcx, %rsi
	leaq	8(,%r8,8), %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	testq	%rbx, %rbx
	je	.LBB22_15
# %bb.5:
	js	.LBB22_16
# %bb.6:
	movq	%rbx, %rcx
	callq	_Znwy
	movq	%rax, (%rsi)
	addq	%rax, %rbx
	movq	%rbx, 16(%rsi)
	movabsq	$2305843009213693951, %r8       # imm = 0x1FFFFFFFFFFFFFFF
	andq	%rdi, %r8
	cmpq	$7, %r8
	jb	.LBB22_7
# %bb.8:
	movq	%rax, %rcx
	subq	%r14, %rcx
	cmpq	$32, %rcx
	jb	.LBB22_7
# %bb.9:
	incq	%r8
	movq	%r8, %r9
	andq	$-4, %r9
	leaq	(%r14,%r9,8), %rcx
	leaq	(%rax,%r9,8), %rdx
	xorl	%r10d, %r10d
	.p2align	4
.LBB22_10:                              # =>This Inner Loop Header: Depth=1
	movups	(%r14,%r10,8), %xmm0
	movups	16(%r14,%r10,8), %xmm1
	movups	%xmm0, (%rax,%r10,8)
	movups	%xmm1, 16(%rax,%r10,8)
	addq	$4, %r10
	cmpq	%r10, %r9
	jne	.LBB22_10
# %bb.11:
	cmpq	%r9, %r8
	jne	.LBB22_12
	jmp	.LBB22_14
.LBB22_7:
	movq	%r14, %rcx
	movq	%rax, %rdx
.LBB22_12:
	leaq	(%r14,%rdi,8), %rax
	addq	$8, %rax
	.p2align	4
.LBB22_13:                              # =>This Inner Loop Header: Depth=1
	movq	(%rcx), %r8
	movq	%r8, (%rdx)
	addq	$8, %rcx
	addq	$8, %rdx
	cmpq	%rax, %rcx
	jne	.LBB22_13
.LBB22_14:
	movq	%rdx, 8(%rsi)
.LBB22_15:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
.LBB22_1:
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
.Ltmp27:
	leaq	.L.str(%rip), %rdx
	movq	%rax, %rcx
	callq	_ZNSt12out_of_rangeC2B8ne210107EPKc
.Ltmp28:
# %bb.2:
	leaq	_ZTISt12out_of_range(%rip), %rdx
	leaq	_ZNSt12out_of_rangeD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
.LBB22_16:
	callq	_ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne210107Ev
.LBB22_3:
.Ltmp29:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	__cxa_free_exception
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end9:
	.seh_handlerdata
	.section	.text$_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y,"xr",discard,_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
	.seh_endproc
	.section	.xdata$_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table22:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp27-.Lfunc_begin9          #   Call between .Lfunc_begin9 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin9          # >> Call Site 2 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin9          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin9          # >> Call Site 3 <<
	.uleb128 .Lfunc_end9-.Ltmp28            #   Call between .Ltmp28 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y,"xr",discard,_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
                                        # -- End function
	.def	_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y,"xr",discard,_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
	.globl	_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y # -- Begin function _ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
	.p2align	4
_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y: # @_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
.Lfunc_begin10:
.seh_proc _ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	(%rdx), %r14
	movq	8(%rdx), %rax
	subq	%r14, %rax
	sarq	$2, %rax
	cmpq	%rax, %r8
	jae	.LBB23_1
# %bb.4:
	movq	%r8, %rdi
	movq	%rcx, %rsi
	leaq	4(,%r8,4), %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	testq	%rbx, %rbx
	je	.LBB23_15
# %bb.5:
	js	.LBB23_16
# %bb.6:
	movq	%rbx, %rcx
	callq	_Znwy
	movq	%rax, (%rsi)
	addq	%rax, %rbx
	movq	%rbx, 16(%rsi)
	movabsq	$4611686018427387903, %r8       # imm = 0x3FFFFFFFFFFFFFFF
	andq	%rdi, %r8
	cmpq	$7, %r8
	jb	.LBB23_7
# %bb.8:
	movq	%rax, %rcx
	subq	%r14, %rcx
	cmpq	$32, %rcx
	jb	.LBB23_7
# %bb.9:
	incq	%r8
	movq	%r8, %r9
	andq	$-8, %r9
	leaq	(%r14,%r9,4), %rcx
	leaq	(%rax,%r9,4), %rdx
	xorl	%r10d, %r10d
	.p2align	4
.LBB23_10:                              # =>This Inner Loop Header: Depth=1
	movups	(%r14,%r10,4), %xmm0
	movups	16(%r14,%r10,4), %xmm1
	movups	%xmm0, (%rax,%r10,4)
	movups	%xmm1, 16(%rax,%r10,4)
	addq	$8, %r10
	cmpq	%r10, %r9
	jne	.LBB23_10
# %bb.11:
	cmpq	%r9, %r8
	jne	.LBB23_12
	jmp	.LBB23_14
.LBB23_7:
	movq	%r14, %rcx
	movq	%rax, %rdx
.LBB23_12:
	leaq	(%r14,%rdi,4), %rax
	addq	$4, %rax
	.p2align	4
.LBB23_13:                              # =>This Inner Loop Header: Depth=1
	movss	(%rcx), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rdx)
	addq	$4, %rcx
	addq	$4, %rdx
	cmpq	%rax, %rcx
	jne	.LBB23_13
.LBB23_14:
	movq	%rdx, 8(%rsi)
.LBB23_15:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
.LBB23_1:
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
.Ltmp30:
	leaq	.L.str(%rip), %rdx
	movq	%rax, %rcx
	callq	_ZNSt12out_of_rangeC2B8ne210107EPKc
.Ltmp31:
# %bb.2:
	leaq	_ZTISt12out_of_range(%rip), %rdx
	leaq	_ZNSt12out_of_rangeD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
.LBB23_16:
	callq	_ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne210107Ev
.LBB23_3:
.Ltmp32:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	__cxa_free_exception
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end10:
	.seh_handlerdata
	.section	.text$_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y,"xr",discard,_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
	.seh_endproc
	.section	.xdata$_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table23:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp30-.Lfunc_begin10         #   Call between .Lfunc_begin10 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin10         # >> Call Site 2 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin10         #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin10         # >> Call Site 3 <<
	.uleb128 .Lfunc_end10-.Ltmp31           #   Call between .Ltmp31 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y,"xr",discard,_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
                                        # -- End function
	.def	_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y,"xr",discard,_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
	.globl	_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y # -- Begin function _ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
	.p2align	4
_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y: # @_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
.Lfunc_begin11:
.seh_proc _ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	(%rdx), %r14
	movq	8(%rdx), %rax
	subq	%r14, %rax
	sarq	$3, %rax
	cmpq	%rax, %r8
	jae	.LBB24_1
# %bb.4:
	movq	%r8, %rdi
	movq	%rcx, %rsi
	leaq	8(,%r8,8), %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	movq	$0, 16(%rcx)
	testq	%rbx, %rbx
	je	.LBB24_15
# %bb.5:
	js	.LBB24_16
# %bb.6:
	movq	%rbx, %rcx
	callq	_Znwy
	movq	%rax, (%rsi)
	addq	%rax, %rbx
	movq	%rbx, 16(%rsi)
	movabsq	$2305843009213693951, %r8       # imm = 0x1FFFFFFFFFFFFFFF
	andq	%rdi, %r8
	cmpq	$7, %r8
	jb	.LBB24_7
# %bb.8:
	movq	%rax, %rcx
	subq	%r14, %rcx
	cmpq	$32, %rcx
	jb	.LBB24_7
# %bb.9:
	incq	%r8
	movq	%r8, %r9
	andq	$-4, %r9
	leaq	(%r14,%r9,8), %rcx
	leaq	(%rax,%r9,8), %rdx
	xorl	%r10d, %r10d
	.p2align	4
.LBB24_10:                              # =>This Inner Loop Header: Depth=1
	movups	(%r14,%r10,8), %xmm0
	movups	16(%r14,%r10,8), %xmm1
	movups	%xmm0, (%rax,%r10,8)
	movups	%xmm1, 16(%rax,%r10,8)
	addq	$4, %r10
	cmpq	%r10, %r9
	jne	.LBB24_10
# %bb.11:
	cmpq	%r9, %r8
	jne	.LBB24_12
	jmp	.LBB24_14
.LBB24_7:
	movq	%r14, %rcx
	movq	%rax, %rdx
.LBB24_12:
	leaq	(%r14,%rdi,8), %rax
	addq	$8, %rax
	.p2align	4
.LBB24_13:                              # =>This Inner Loop Header: Depth=1
	movsd	(%rcx), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, (%rdx)
	addq	$8, %rcx
	addq	$8, %rdx
	cmpq	%rax, %rcx
	jne	.LBB24_13
.LBB24_14:
	movq	%rdx, 8(%rsi)
.LBB24_15:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
.LBB24_1:
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
.Ltmp33:
	leaq	.L.str(%rip), %rdx
	movq	%rax, %rcx
	callq	_ZNSt12out_of_rangeC2B8ne210107EPKc
.Ltmp34:
# %bb.2:
	leaq	_ZTISt12out_of_range(%rip), %rdx
	leaq	_ZNSt12out_of_rangeD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
.LBB24_16:
	callq	_ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne210107Ev
.LBB24_3:
.Ltmp35:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	__cxa_free_exception
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end11:
	.seh_handlerdata
	.section	.text$_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y,"xr",discard,_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
	.seh_endproc
	.section	.xdata$_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table24:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp33-.Lfunc_begin11         #   Call between .Lfunc_begin11 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin11         # >> Call Site 2 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin11         #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin11         # >> Call Site 3 <<
	.uleb128 .Lfunc_end11-.Ltmp34           #   Call between .Ltmp34 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y,"xr",discard,_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y
                                        # -- End function
	.def	_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy,"xr",discard,_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
	.globl	_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy # -- Begin function _ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
	.p2align	4
_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy: # @_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
.Lfunc_begin12:
.seh_proc _ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%r8, %r15
	subq	%rdx, %r15
	jb	.LBB25_3
# %bb.1:
	movq	%rcx, %rsi
	movq	(%rcx), %rbx
	movq	8(%rcx), %rdi
	movq	%rdi, %rax
	subq	%rbx, %rax
	sarq	$2, %rax
	cmpq	%rax, %rdx
	jae	.LBB25_3
# %bb.2:
	cmpq	%rax, %r8
	jae	.LBB25_3
# %bb.6:
	testq	%rdx, %rdx
	je	.LBB25_7
# %bb.8:
	leaq	(%rbx,%rdx,4), %rdx
	subq	%rdx, %rdi
	je	.LBB25_9
# %bb.10:
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	memmove
	movq	(%rsi), %rax
	jmp	.LBB25_11
.LBB25_7:
	movq	%rdi, %r14
	movq	%rbx, %rax
	leaq	(%rax,%r15,4), %rax
	addq	$4, %rax
	movq	%r14, %rdx
	subq	%rax, %rdx
	jne	.LBB25_13
	jmp	.LBB25_16
.LBB25_9:
	movq	%rbx, %rax
.LBB25_11:
	addq	%rbx, %rdi
	movq	%rdi, 8(%rsi)
	movq	%rdi, %r14
	movq	%rax, %rbx
	leaq	(%rax,%r15,4), %rax
	addq	$4, %rax
	movq	%r14, %rdx
	subq	%rax, %rdx
	je	.LBB25_16
.LBB25_13:
	leaq	(%rbx,%r15,4), %rbx
	addq	$4, %rbx
	addq	%rbx, %rdx
	subq	%rdx, %r14
	cmpq	%rdx, %rdi
	je	.LBB25_15
# %bb.14:
	movq	%rbx, %rcx
	movq	%r14, %r8
	callq	memmove
.LBB25_15:
	addq	%r14, %rbx
	movq	%rbx, 8(%rsi)
.LBB25_16:
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB25_3:
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
.Ltmp36:
	leaq	.L.str(%rip), %rdx
	movq	%rax, %rcx
	callq	_ZNSt12out_of_rangeC2B8ne210107EPKc
.Ltmp37:
# %bb.4:
	leaq	_ZTISt12out_of_range(%rip), %rdx
	leaq	_ZNSt12out_of_rangeD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
.LBB25_5:
.Ltmp38:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	__cxa_free_exception
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end12:
	.seh_handlerdata
	.section	.text$_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy,"xr",discard,_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
	.seh_endproc
	.section	.xdata$_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table25:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp36-.Lfunc_begin12         #   Call between .Lfunc_begin12 and .Ltmp36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin12         # >> Call Site 2 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin12         #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin12         # >> Call Site 3 <<
	.uleb128 .Lfunc_end12-.Ltmp37           #   Call between .Ltmp37 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy,"xr",discard,_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
                                        # -- End function
	.def	_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy,"xr",discard,_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
	.globl	_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy # -- Begin function _ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
	.p2align	4
_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy: # @_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
.Lfunc_begin13:
.seh_proc _ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%r8, %r15
	subq	%rdx, %r15
	jb	.LBB26_3
# %bb.1:
	movq	%rcx, %rsi
	movq	(%rcx), %rbx
	movq	8(%rcx), %rdi
	movq	%rdi, %rax
	subq	%rbx, %rax
	sarq	$3, %rax
	cmpq	%rax, %rdx
	jae	.LBB26_3
# %bb.2:
	cmpq	%rax, %r8
	jae	.LBB26_3
# %bb.6:
	testq	%rdx, %rdx
	je	.LBB26_7
# %bb.8:
	leaq	(%rbx,%rdx,8), %rdx
	subq	%rdx, %rdi
	je	.LBB26_9
# %bb.10:
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	memmove
	movq	(%rsi), %rax
	jmp	.LBB26_11
.LBB26_7:
	movq	%rdi, %r14
	movq	%rbx, %rax
	leaq	(%rax,%r15,8), %rax
	addq	$8, %rax
	movq	%r14, %rdx
	subq	%rax, %rdx
	jne	.LBB26_13
	jmp	.LBB26_16
.LBB26_9:
	movq	%rbx, %rax
.LBB26_11:
	addq	%rbx, %rdi
	movq	%rdi, 8(%rsi)
	movq	%rdi, %r14
	movq	%rax, %rbx
	leaq	(%rax,%r15,8), %rax
	addq	$8, %rax
	movq	%r14, %rdx
	subq	%rax, %rdx
	je	.LBB26_16
.LBB26_13:
	leaq	(%rbx,%r15,8), %rbx
	addq	$8, %rbx
	addq	%rbx, %rdx
	subq	%rdx, %r14
	cmpq	%rdx, %rdi
	je	.LBB26_15
# %bb.14:
	movq	%rbx, %rcx
	movq	%r14, %r8
	callq	memmove
.LBB26_15:
	addq	%r14, %rbx
	movq	%rbx, 8(%rsi)
.LBB26_16:
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB26_3:
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
.Ltmp39:
	leaq	.L.str(%rip), %rdx
	movq	%rax, %rcx
	callq	_ZNSt12out_of_rangeC2B8ne210107EPKc
.Ltmp40:
# %bb.4:
	leaq	_ZTISt12out_of_range(%rip), %rdx
	leaq	_ZNSt12out_of_rangeD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
.LBB26_5:
.Ltmp41:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	__cxa_free_exception
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end13:
	.seh_handlerdata
	.section	.text$_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy,"xr",discard,_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
	.seh_endproc
	.section	.xdata$_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table26:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Lfunc_begin13-.Lfunc_begin13  # >> Call Site 1 <<
	.uleb128 .Ltmp39-.Lfunc_begin13         #   Call between .Lfunc_begin13 and .Ltmp39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin13         # >> Call Site 2 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin13         #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin13         # >> Call Site 3 <<
	.uleb128 .Lfunc_end13-.Ltmp40           #   Call between .Ltmp40 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy,"xr",discard,_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
                                        # -- End function
	.def	_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy,"xr",discard,_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
	.globl	_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy # -- Begin function _ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
	.p2align	4
_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy: # @_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
.Lfunc_begin14:
.seh_proc _ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%r8, %r15
	subq	%rdx, %r15
	jb	.LBB27_3
# %bb.1:
	movq	%rcx, %rsi
	movq	(%rcx), %rbx
	movq	8(%rcx), %rdi
	movq	%rdi, %rax
	subq	%rbx, %rax
	sarq	$2, %rax
	cmpq	%rax, %rdx
	jae	.LBB27_3
# %bb.2:
	cmpq	%rax, %r8
	jae	.LBB27_3
# %bb.6:
	testq	%rdx, %rdx
	je	.LBB27_7
# %bb.8:
	leaq	(%rbx,%rdx,4), %rdx
	subq	%rdx, %rdi
	je	.LBB27_9
# %bb.10:
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	memmove
	movq	(%rsi), %rax
	jmp	.LBB27_11
.LBB27_7:
	movq	%rdi, %r14
	movq	%rbx, %rax
	leaq	(%rax,%r15,4), %rax
	addq	$4, %rax
	movq	%r14, %rdx
	subq	%rax, %rdx
	jne	.LBB27_13
	jmp	.LBB27_16
.LBB27_9:
	movq	%rbx, %rax
.LBB27_11:
	addq	%rbx, %rdi
	movq	%rdi, 8(%rsi)
	movq	%rdi, %r14
	movq	%rax, %rbx
	leaq	(%rax,%r15,4), %rax
	addq	$4, %rax
	movq	%r14, %rdx
	subq	%rax, %rdx
	je	.LBB27_16
.LBB27_13:
	leaq	(%rbx,%r15,4), %rbx
	addq	$4, %rbx
	addq	%rbx, %rdx
	subq	%rdx, %r14
	cmpq	%rdx, %rdi
	je	.LBB27_15
# %bb.14:
	movq	%rbx, %rcx
	movq	%r14, %r8
	callq	memmove
.LBB27_15:
	addq	%r14, %rbx
	movq	%rbx, 8(%rsi)
.LBB27_16:
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB27_3:
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
.Ltmp42:
	leaq	.L.str(%rip), %rdx
	movq	%rax, %rcx
	callq	_ZNSt12out_of_rangeC2B8ne210107EPKc
.Ltmp43:
# %bb.4:
	leaq	_ZTISt12out_of_range(%rip), %rdx
	leaq	_ZNSt12out_of_rangeD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
.LBB27_5:
.Ltmp44:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	__cxa_free_exception
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end14:
	.seh_handlerdata
	.section	.text$_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy,"xr",discard,_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
	.seh_endproc
	.section	.xdata$_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table27:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Lfunc_begin14-.Lfunc_begin14  # >> Call Site 1 <<
	.uleb128 .Ltmp42-.Lfunc_begin14         #   Call between .Lfunc_begin14 and .Ltmp42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin14         # >> Call Site 2 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin14         #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin14         # >> Call Site 3 <<
	.uleb128 .Lfunc_end14-.Ltmp43           #   Call between .Ltmp43 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy,"xr",discard,_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
                                        # -- End function
	.def	_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy,"xr",discard,_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
	.globl	_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy # -- Begin function _ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
	.p2align	4
_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy: # @_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
.Lfunc_begin15:
.seh_proc _ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%r8, %r15
	subq	%rdx, %r15
	jb	.LBB28_3
# %bb.1:
	movq	%rcx, %rsi
	movq	(%rcx), %rbx
	movq	8(%rcx), %rdi
	movq	%rdi, %rax
	subq	%rbx, %rax
	sarq	$3, %rax
	cmpq	%rax, %rdx
	jae	.LBB28_3
# %bb.2:
	cmpq	%rax, %r8
	jae	.LBB28_3
# %bb.6:
	testq	%rdx, %rdx
	je	.LBB28_7
# %bb.8:
	leaq	(%rbx,%rdx,8), %rdx
	subq	%rdx, %rdi
	je	.LBB28_9
# %bb.10:
	movq	%rbx, %rcx
	movq	%rdi, %r8
	callq	memmove
	movq	(%rsi), %rax
	jmp	.LBB28_11
.LBB28_7:
	movq	%rdi, %r14
	movq	%rbx, %rax
	leaq	(%rax,%r15,8), %rax
	addq	$8, %rax
	movq	%r14, %rdx
	subq	%rax, %rdx
	jne	.LBB28_13
	jmp	.LBB28_16
.LBB28_9:
	movq	%rbx, %rax
.LBB28_11:
	addq	%rbx, %rdi
	movq	%rdi, 8(%rsi)
	movq	%rdi, %r14
	movq	%rax, %rbx
	leaq	(%rax,%r15,8), %rax
	addq	$8, %rax
	movq	%r14, %rdx
	subq	%rax, %rdx
	je	.LBB28_16
.LBB28_13:
	leaq	(%rbx,%r15,8), %rbx
	addq	$8, %rbx
	addq	%rbx, %rdx
	subq	%rdx, %r14
	cmpq	%rdx, %rdi
	je	.LBB28_15
# %bb.14:
	movq	%rbx, %rcx
	movq	%r14, %r8
	callq	memmove
.LBB28_15:
	addq	%r14, %rbx
	movq	%rbx, 8(%rsi)
.LBB28_16:
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB28_3:
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
.Ltmp45:
	leaq	.L.str(%rip), %rdx
	movq	%rax, %rcx
	callq	_ZNSt12out_of_rangeC2B8ne210107EPKc
.Ltmp46:
# %bb.4:
	leaq	_ZTISt12out_of_range(%rip), %rdx
	leaq	_ZNSt12out_of_rangeD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
.LBB28_5:
.Ltmp47:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	__cxa_free_exception
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end15:
	.seh_handlerdata
	.section	.text$_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy,"xr",discard,_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
	.seh_endproc
	.section	.xdata$_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table28:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Lfunc_begin15-.Lfunc_begin15  # >> Call Site 1 <<
	.uleb128 .Ltmp45-.Lfunc_begin15         #   Call between .Lfunc_begin15 and .Ltmp45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin15         # >> Call Site 2 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin15         #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin15         # >> Call Site 3 <<
	.uleb128 .Lfunc_end15-.Ltmp46           #   Call between .Ltmp46 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy,"xr",discard,_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy
                                        # -- End function
	.def	_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy,"xr",discard,_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
	.globl	_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy # -- Begin function _ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
	.p2align	4
_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy: # @_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
.Lfunc_begin16:
.seh_proc _ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	(%rcx), %rax
	movq	8(%rcx), %rsi
	movq	%rsi, %r8
	subq	%rax, %r8
	sarq	$2, %r8
	cmpq	%r8, %rdx
	jae	.LBB29_1
# %bb.4:
	leaq	(%rax,%rdx,4), %rdi
	addq	$4, %rdi
	cmpq	%rsi, %rdi
	je	.LBB29_8
# %bb.5:
	movq	%rsi, %rdx
	subq	%rdi, %rdx
	addq	%rdi, %rdx
	subq	%rdx, %rsi
	je	.LBB29_7
# %bb.6:
	movq	%rcx, %rbx
	movq	%rdi, %rcx
	movq	%rsi, %r8
	callq	memmove
	movq	%rbx, %rcx
.LBB29_7:
	addq	%rsi, %rdi
	movq	%rdi, 8(%rcx)
.LBB29_8:
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
.LBB29_1:
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
.Ltmp48:
	leaq	.L.str(%rip), %rdx
	movq	%rax, %rcx
	callq	_ZNSt12out_of_rangeC2B8ne210107EPKc
.Ltmp49:
# %bb.2:
	leaq	_ZTISt12out_of_range(%rip), %rdx
	leaq	_ZNSt12out_of_rangeD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
.LBB29_3:
.Ltmp50:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	__cxa_free_exception
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end16:
	.seh_handlerdata
	.section	.text$_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy,"xr",discard,_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
	.seh_endproc
	.section	.xdata$_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table29:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Lfunc_begin16-.Lfunc_begin16  # >> Call Site 1 <<
	.uleb128 .Ltmp48-.Lfunc_begin16         #   Call between .Lfunc_begin16 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin16         # >> Call Site 2 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin16         #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin16         # >> Call Site 3 <<
	.uleb128 .Lfunc_end16-.Ltmp49           #   Call between .Ltmp49 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy,"xr",discard,_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
                                        # -- End function
	.def	_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy,"xr",discard,_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
	.globl	_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy # -- Begin function _ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
	.p2align	4
_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy: # @_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
.Lfunc_begin17:
.seh_proc _ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	(%rcx), %rax
	movq	8(%rcx), %rsi
	movq	%rsi, %r8
	subq	%rax, %r8
	sarq	$3, %r8
	cmpq	%r8, %rdx
	jae	.LBB30_1
# %bb.4:
	leaq	(%rax,%rdx,8), %rdi
	addq	$8, %rdi
	cmpq	%rsi, %rdi
	je	.LBB30_8
# %bb.5:
	movq	%rsi, %rdx
	subq	%rdi, %rdx
	addq	%rdi, %rdx
	subq	%rdx, %rsi
	je	.LBB30_7
# %bb.6:
	movq	%rcx, %rbx
	movq	%rdi, %rcx
	movq	%rsi, %r8
	callq	memmove
	movq	%rbx, %rcx
.LBB30_7:
	addq	%rsi, %rdi
	movq	%rdi, 8(%rcx)
.LBB30_8:
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
.LBB30_1:
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
.Ltmp51:
	leaq	.L.str(%rip), %rdx
	movq	%rax, %rcx
	callq	_ZNSt12out_of_rangeC2B8ne210107EPKc
.Ltmp52:
# %bb.2:
	leaq	_ZTISt12out_of_range(%rip), %rdx
	leaq	_ZNSt12out_of_rangeD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
.LBB30_3:
.Ltmp53:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	__cxa_free_exception
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end17:
	.seh_handlerdata
	.section	.text$_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy,"xr",discard,_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
	.seh_endproc
	.section	.xdata$_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table30:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Lfunc_begin17-.Lfunc_begin17  # >> Call Site 1 <<
	.uleb128 .Ltmp51-.Lfunc_begin17         #   Call between .Lfunc_begin17 and .Ltmp51
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin17         # >> Call Site 2 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin17         #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin17         # >> Call Site 3 <<
	.uleb128 .Lfunc_end17-.Ltmp52           #   Call between .Ltmp52 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy,"xr",discard,_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
                                        # -- End function
	.def	_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy,"xr",discard,_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
	.globl	_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy # -- Begin function _ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
	.p2align	4
_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy: # @_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
.Lfunc_begin18:
.seh_proc _ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	(%rcx), %rax
	movq	8(%rcx), %rsi
	movq	%rsi, %r8
	subq	%rax, %r8
	sarq	$2, %r8
	cmpq	%r8, %rdx
	jae	.LBB31_1
# %bb.4:
	leaq	(%rax,%rdx,4), %rdi
	addq	$4, %rdi
	cmpq	%rsi, %rdi
	je	.LBB31_8
# %bb.5:
	movq	%rsi, %rdx
	subq	%rdi, %rdx
	addq	%rdi, %rdx
	subq	%rdx, %rsi
	je	.LBB31_7
# %bb.6:
	movq	%rcx, %rbx
	movq	%rdi, %rcx
	movq	%rsi, %r8
	callq	memmove
	movq	%rbx, %rcx
.LBB31_7:
	addq	%rsi, %rdi
	movq	%rdi, 8(%rcx)
.LBB31_8:
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
.LBB31_1:
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
.Ltmp54:
	leaq	.L.str(%rip), %rdx
	movq	%rax, %rcx
	callq	_ZNSt12out_of_rangeC2B8ne210107EPKc
.Ltmp55:
# %bb.2:
	leaq	_ZTISt12out_of_range(%rip), %rdx
	leaq	_ZNSt12out_of_rangeD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
.LBB31_3:
.Ltmp56:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	__cxa_free_exception
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end18:
	.seh_handlerdata
	.section	.text$_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy,"xr",discard,_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
	.seh_endproc
	.section	.xdata$_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table31:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Lfunc_begin18-.Lfunc_begin18  # >> Call Site 1 <<
	.uleb128 .Ltmp54-.Lfunc_begin18         #   Call between .Lfunc_begin18 and .Ltmp54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin18         # >> Call Site 2 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin18         #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin18         # >> Call Site 3 <<
	.uleb128 .Lfunc_end18-.Ltmp55           #   Call between .Ltmp55 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy,"xr",discard,_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
                                        # -- End function
	.def	_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy,"xr",discard,_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
	.globl	_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy # -- Begin function _ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
	.p2align	4
_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy: # @_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
.Lfunc_begin19:
.seh_proc _ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	(%rcx), %rax
	movq	8(%rcx), %rsi
	movq	%rsi, %r8
	subq	%rax, %r8
	sarq	$3, %r8
	cmpq	%r8, %rdx
	jae	.LBB32_1
# %bb.4:
	leaq	(%rax,%rdx,8), %rdi
	addq	$8, %rdi
	cmpq	%rsi, %rdi
	je	.LBB32_8
# %bb.5:
	movq	%rsi, %rdx
	subq	%rdi, %rdx
	addq	%rdi, %rdx
	subq	%rdx, %rsi
	je	.LBB32_7
# %bb.6:
	movq	%rcx, %rbx
	movq	%rdi, %rcx
	movq	%rsi, %r8
	callq	memmove
	movq	%rbx, %rcx
.LBB32_7:
	addq	%rsi, %rdi
	movq	%rdi, 8(%rcx)
.LBB32_8:
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
.LBB32_1:
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
.Ltmp57:
	leaq	.L.str(%rip), %rdx
	movq	%rax, %rcx
	callq	_ZNSt12out_of_rangeC2B8ne210107EPKc
.Ltmp58:
# %bb.2:
	leaq	_ZTISt12out_of_range(%rip), %rdx
	leaq	_ZNSt12out_of_rangeD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
.LBB32_3:
.Ltmp59:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	__cxa_free_exception
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end19:
	.seh_handlerdata
	.section	.text$_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy,"xr",discard,_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
	.seh_endproc
	.section	.xdata$_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table32:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Lfunc_begin19-.Lfunc_begin19  # >> Call Site 1 <<
	.uleb128 .Ltmp57-.Lfunc_begin19         #   Call between .Lfunc_begin19 and .Ltmp57
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin19         # >> Call Site 2 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin19         #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin19         # >> Call Site 3 <<
	.uleb128 .Lfunc_end19-.Ltmp58           #   Call between .Ltmp58 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy,"xr",discard,_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy
                                        # -- End function
	.def	_Z8vec_testv;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_Z8vec_testv                    # -- Begin function _Z8vec_testv
	.p2align	4
_Z8vec_testv:                           # @_Z8vec_testv
.Lfunc_begin20:
.seh_proc _Z8vec_testv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$448, %rsp                      # imm = 0x1C0
	.seh_stackalloc 448
	.seh_endprologue
	movb	$14, 112(%rsp)
	movl	$1920234342, 113(%rsp)          # imm = 0x72747366
	movl	$1835099506, 116(%rsp)          # imm = 0x6D616572
	movb	$0, 120(%rsp)
	movb	$20, 136(%rsp)
	movabsq	$8391184067251169638, %rax      # imm = 0x74737973656C6966
	movq	%rax, 137(%rsp)
	movw	$28005, 145(%rsp)               # imm = 0x6D65
	movb	$0, 147(%rsp)
	movb	$16, 160(%rsp)
	movabsq	$7507048080188468853, %rax      # imm = 0x682E647473696E75
	movq	%rax, 161(%rsp)
	movb	$0, 169(%rsp)
	movb	$20, 184(%rsp)
	movabsq	$8386112019206732147, %rcx      # imm = 0x746174732F737973
	movq	%rcx, 185(%rsp)
	movw	$26670, 193(%rsp)               # imm = 0x682E
	movb	$0, 195(%rsp)
	movb	$12, 208(%rsp)
	movl	$1685353315, 209(%rsp)          # imm = 0x64747363
	movw	$28521, 213(%rsp)               # imm = 0x6F69
	movb	$0, 215(%rsp)
	movb	$22, 232(%rsp)
	movabsq	$7161124932878033261, %rcx      # imm = 0x63616D2F6863616D
	movq	%rcx, 233(%rsp)
	movl	$1747871843, 240(%rsp)          # imm = 0x682E6863
	movb	$0, 244(%rsp)
	movb	$16, 256(%rsp)
	movq	%rax, 257(%rsp)
	movb	$0, 265(%rsp)
	movb	$22, 280(%rsp)
	movabsq	$7309475735141579123, %rcx      # imm = 0x657079742F737973
	movq	%rcx, 281(%rsp)
	movl	$1747874661, 288(%rsp)          # imm = 0x682E7365
	movb	$0, 292(%rsp)
	movb	$12, 304(%rsp)
	movl	$1701669236, 305(%rsp)          # imm = 0x656D6974
	movw	$26670, 309(%rsp)               # imm = 0x682E
	movb	$0, 311(%rsp)
	movb	$14, 328(%rsp)
	movl	$1747873646, 332(%rsp)          # imm = 0x682E6F6E
	movl	$1852994149, 329(%rsp)          # imm = 0x6E727265
	movb	$0, 336(%rsp)
	movb	$22, 352(%rsp)
	movabsq	$8386669428652341619, %rcx      # imm = 0x74636F692F737973
	movq	%rcx, 353(%rsp)
	movl	$1747872884, 360(%rsp)          # imm = 0x682E6C74
	movb	$0, 364(%rsp)
	movb	$16, 376(%rsp)
	movq	%rax, 377(%rsp)
	movb	$0, 385(%rsp)
	movb	$12, 400(%rsp)
	movw	$28521, 405(%rsp)               # imm = 0x6F69
	movl	$1685353315, 401(%rsp)          # imm = 0x64747363
	movb	$0, 407(%rsp)
	movb	$16, 424(%rsp)
	movabsq	$7881692365129477993, %rax      # imm = 0x6D61657274736F69
	movq	%rax, 425(%rsp)
	movb	$0, 433(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 32(%rsp)
	movq	$0, 48(%rsp)
	leaq	448(%rsp), %r8
.Ltmp60:
	leaq	32(%rsp), %rsi
	leaq	112(%rsp), %rdx
	movl	$14, %r9d
	movq	%rsi, %rcx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__init_with_sizeB8ne210107IPKS6_SB_EEvT_T0_y
.Ltmp61:
# %bb.1:
	testb	$1, 424(%rsp)
	jne	.LBB33_2
# %bb.3:
	testb	$1, 400(%rsp)
	jne	.LBB33_4
.LBB33_5:
	testb	$1, 376(%rsp)
	jne	.LBB33_6
.LBB33_7:
	testb	$1, 352(%rsp)
	jne	.LBB33_8
.LBB33_9:
	testb	$1, 328(%rsp)
	jne	.LBB33_10
.LBB33_11:
	testb	$1, 304(%rsp)
	jne	.LBB33_12
.LBB33_13:
	testb	$1, 280(%rsp)
	jne	.LBB33_14
.LBB33_15:
	testb	$1, 256(%rsp)
	jne	.LBB33_16
.LBB33_17:
	testb	$1, 232(%rsp)
	jne	.LBB33_18
.LBB33_19:
	testb	$1, 208(%rsp)
	jne	.LBB33_20
.LBB33_21:
	testb	$1, 184(%rsp)
	jne	.LBB33_22
.LBB33_23:
	testb	$1, 160(%rsp)
	jne	.LBB33_24
.LBB33_25:
	testb	$1, 136(%rsp)
	jne	.LBB33_26
.LBB33_27:
	testb	$1, 112(%rsp)
	je	.LBB33_29
.LBB33_28:
	movq	128(%rsp), %rcx
	callq	_ZdlPv
.LBB33_29:
	movq	32(%rsp), %rdi
	movq	40(%rsp), %r15
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 128(%rsp)
	movl	$1065353216, 144(%rsp)          # imm = 0x3F800000
	cmpq	%r15, %rdi
	je	.LBB33_33
# %bb.30:
	leaq	64(%rsp), %rbx
	leaq	112(%rsp), %r14
	.p2align	4
.LBB33_31:                              # =>This Inner Loop Header: Depth=1
.Ltmp63:
	movq	%rbx, %rcx
	movq	%r14, %rdx
	movq	%rdi, %r8
	movq	%rdi, %r9
	callq	_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JRS6_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_
.Ltmp64:
# %bb.32:                               #   in Loop: Header=BB33_31 Depth=1
	addq	$24, %rdi
	cmpq	%r15, %rdi
	jne	.LBB33_31
.LBB33_33:
.Ltmp66:
	movl	$1, %ecx
	callq	*__imp___acrt_iob_func(%rip)
.Ltmp67:
# %bb.34:
	leaq	.L.str.12(%rip), %rcx
	movq	%rcx, 96(%rsp)
	movq	$9, 104(%rsp)
	movq	%rsi, 64(%rsp)
	leaq	_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINSt3__16vectorINS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENSB_ISD_EEEEEEvPvRNS0_13parse_contextIcEERS3_(%rip), %rdi
	movq	%rdi, 72(%rsp)
	movq	$15, 80(%rsp)
	leaq	64(%rsp), %rbx
	movq	%rbx, 88(%rsp)
.Ltmp68:
	leaq	96(%rsp), %rdx
	leaq	80(%rsp), %r8
	movq	%rax, %rcx
	callq	_ZN3fmt3v128vprintlnEP6_iobufNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE
.Ltmp69:
# %bb.35:
.Ltmp70:
	leaq	32(%rsp), %rsi
	movl	$1, %edx
	movq	%rsi, %rcx
	xorl	%r8d, %r8d
	callq	_ZN5Tools6Vector19RemoveDuplicatesInlINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEvRNS2_6vectorIT_NS6_ISA_EEEEyb
.Ltmp71:
# %bb.36:
.Ltmp72:
	movl	$1, %ecx
	callq	*__imp___acrt_iob_func(%rip)
.Ltmp73:
# %bb.37:
	leaq	.L.str.13(%rip), %rcx
	movq	%rcx, 96(%rsp)
	movq	$10, 104(%rsp)
	movq	%rsi, 64(%rsp)
	movq	%rdi, 72(%rsp)
	movq	$15, 80(%rsp)
	movq	%rbx, 88(%rsp)
.Ltmp74:
	leaq	96(%rsp), %rdx
	leaq	80(%rsp), %r8
	movq	%rax, %rcx
	callq	_ZN3fmt3v128vprintlnEP6_iobufNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE
.Ltmp75:
# %bb.38:
	movq	128(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB33_39
.LBB33_42:
	movq	112(%rsp), %rcx
	movq	$0, 112(%rsp)
	testq	%rcx, %rcx
	je	.LBB33_44
# %bb.43:
	callq	_ZdlPv
.LBB33_44:
	movq	32(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB33_51
# %bb.45:
	movq	40(%rsp), %rdi
	movq	%rsi, %rcx
	cmpq	%rdi, %rsi
	jne	.LBB33_46
	jmp	.LBB33_50
	.p2align	4
.LBB33_41:                              #   in Loop: Header=BB33_39 Depth=1
	movq	%rsi, %rcx
	callq	_ZdlPv
	movq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.LBB33_42
.LBB33_39:                              # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rdi
	testb	$1, 16(%rsi)
	je	.LBB33_41
# %bb.40:                               #   in Loop: Header=BB33_39 Depth=1
	movq	32(%rsi), %rcx
	callq	_ZdlPv
	jmp	.LBB33_41
	.p2align	4
.LBB33_48:                              #   in Loop: Header=BB33_46 Depth=1
	addq	$-24, %rdi
	cmpq	%rsi, %rdi
	je	.LBB33_49
.LBB33_46:                              # =>This Inner Loop Header: Depth=1
	testb	$1, -24(%rdi)
	je	.LBB33_48
# %bb.47:                               #   in Loop: Header=BB33_46 Depth=1
	movq	-8(%rdi), %rcx
	callq	_ZdlPv
	jmp	.LBB33_48
.LBB33_2:
	movq	440(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 400(%rsp)
	je	.LBB33_5
.LBB33_4:
	movq	416(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 376(%rsp)
	je	.LBB33_7
.LBB33_6:
	movq	392(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 352(%rsp)
	je	.LBB33_9
.LBB33_8:
	movq	368(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 328(%rsp)
	je	.LBB33_11
.LBB33_10:
	movq	344(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 304(%rsp)
	je	.LBB33_13
.LBB33_12:
	movq	320(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 280(%rsp)
	je	.LBB33_15
.LBB33_14:
	movq	296(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 256(%rsp)
	je	.LBB33_17
.LBB33_16:
	movq	272(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 232(%rsp)
	je	.LBB33_19
.LBB33_18:
	movq	248(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 208(%rsp)
	je	.LBB33_21
.LBB33_20:
	movq	224(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 184(%rsp)
	je	.LBB33_23
.LBB33_22:
	movq	200(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 160(%rsp)
	je	.LBB33_25
.LBB33_24:
	movq	176(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 136(%rsp)
	je	.LBB33_27
.LBB33_26:
	movq	152(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 112(%rsp)
	jne	.LBB33_28
	jmp	.LBB33_29
.LBB33_49:
	movq	32(%rsp), %rcx
.LBB33_50:
	movq	%rsi, 40(%rsp)
	callq	_ZdlPv
.LBB33_51:
	nop
	.seh_startepilogue
	addq	$448, %rsp                      # imm = 0x1C0
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB33_52:
.Ltmp62:
	movq	%rax, %rsi
	testb	$1, 424(%rsp)
	jne	.LBB33_53
# %bb.54:
	testb	$1, 400(%rsp)
	jne	.LBB33_55
.LBB33_56:
	testb	$1, 376(%rsp)
	jne	.LBB33_57
.LBB33_58:
	testb	$1, 352(%rsp)
	jne	.LBB33_59
.LBB33_60:
	testb	$1, 328(%rsp)
	jne	.LBB33_61
.LBB33_62:
	testb	$1, 304(%rsp)
	jne	.LBB33_63
.LBB33_64:
	testb	$1, 280(%rsp)
	jne	.LBB33_65
.LBB33_66:
	testb	$1, 256(%rsp)
	jne	.LBB33_67
.LBB33_68:
	testb	$1, 232(%rsp)
	jne	.LBB33_69
.LBB33_70:
	testb	$1, 208(%rsp)
	jne	.LBB33_71
.LBB33_72:
	testb	$1, 184(%rsp)
	jne	.LBB33_73
.LBB33_74:
	testb	$1, 160(%rsp)
	jne	.LBB33_75
.LBB33_76:
	testb	$1, 136(%rsp)
	jne	.LBB33_77
.LBB33_78:
	testb	$1, 112(%rsp)
	jne	.LBB33_79
	jmp	.LBB33_82
.LBB33_53:
	movq	440(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 400(%rsp)
	je	.LBB33_56
.LBB33_55:
	movq	416(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 376(%rsp)
	je	.LBB33_58
.LBB33_57:
	movq	392(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 352(%rsp)
	je	.LBB33_60
.LBB33_59:
	movq	368(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 328(%rsp)
	je	.LBB33_62
.LBB33_61:
	movq	344(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 304(%rsp)
	je	.LBB33_64
.LBB33_63:
	movq	320(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 280(%rsp)
	je	.LBB33_66
.LBB33_65:
	movq	296(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 256(%rsp)
	je	.LBB33_68
.LBB33_67:
	movq	272(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 232(%rsp)
	je	.LBB33_70
.LBB33_69:
	movq	248(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 208(%rsp)
	je	.LBB33_72
.LBB33_71:
	movq	224(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 184(%rsp)
	je	.LBB33_74
.LBB33_73:
	movq	200(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 160(%rsp)
	je	.LBB33_76
.LBB33_75:
	movq	176(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 136(%rsp)
	je	.LBB33_78
.LBB33_77:
	movq	152(%rsp), %rcx
	callq	_ZdlPv
	testb	$1, 112(%rsp)
	je	.LBB33_82
.LBB33_79:
	movq	128(%rsp), %rcx
	callq	_ZdlPv
	movq	%rsi, %rcx
	callq	_Unwind_Resume
.LBB33_80:
.Ltmp76:
	movq	%rax, %rsi
	leaq	112(%rsp), %rcx
	callq	_ZNSt3__113unordered_setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2B8ne210107Ev
	jmp	.LBB33_81
.LBB33_83:
.Ltmp65:
	movq	%rax, %rsi
	leaq	112(%rsp), %rcx
	callq	_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2Ev
.LBB33_81:
	leaq	32(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne210107Ev
.LBB33_82:
	movq	%rsi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end20:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table33:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Ltmp60-.Lfunc_begin20         # >> Call Site 1 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin20         #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin20         # >> Call Site 2 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin20         #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin20         # >> Call Site 3 <<
	.uleb128 .Ltmp75-.Ltmp66                #   Call between .Ltmp66 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin20         #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin20         # >> Call Site 4 <<
	.uleb128 .Lfunc_end20-.Ltmp75           #   Call between .Ltmp75 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN5Tools6Vector19RemoveDuplicatesInlINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEvRNS2_6vectorIT_NS6_ISA_EEEEyb;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools6Vector19RemoveDuplicatesInlINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEvRNS2_6vectorIT_NS6_ISA_EEEEyb,"xr",discard,_ZN5Tools6Vector19RemoveDuplicatesInlINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEvRNS2_6vectorIT_NS6_ISA_EEEEyb
	.globl	_ZN5Tools6Vector19RemoveDuplicatesInlINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEvRNS2_6vectorIT_NS6_ISA_EEEEyb # -- Begin function _ZN5Tools6Vector19RemoveDuplicatesInlINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEvRNS2_6vectorIT_NS6_ISA_EEEEyb
	.p2align	4
_ZN5Tools6Vector19RemoveDuplicatesInlINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEvRNS2_6vectorIT_NS6_ISA_EEEEyb: # @_ZN5Tools6Vector19RemoveDuplicatesInlINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEvRNS2_6vectorIT_NS6_ISA_EEEEyb
.Lfunc_begin21:
.seh_proc _ZN5Tools6Vector19RemoveDuplicatesInlINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEvRNS2_6vectorIT_NS6_ISA_EEEEyb
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$168, %rsp
	.seh_stackalloc 168
	.seh_endprologue
	movq	%rcx, %r13
	testb	%r8b, %r8b
	je	.LBB34_6
# %bb.1:
	movq	(%r13), %rdx
	movq	8(%r13), %r8
	leaq	96(%rsp), %rcx
	leaq	64(%rsp), %r9
	callq	_ZNSt3__18__uniqueB8ne210107INS_17_ClassicAlgPolicyENS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEESA_RNS_10__equal_toEEENS_4pairIT0_SE_EESE_T1_OT2_
	movq	96(%rsp), %rbx
	movq	8(%r13), %rsi
	cmpq	%rsi, %rbx
	je	.LBB34_48
# %bb.2:
	movq	%rsi, %r14
	subq	%rbx, %r14
	addq	%rbx, %r14
	movq	%rbx, %rdi
	cmpq	%rsi, %r14
	jne	.LBB34_4
	jmp	.LBB34_27
	.p2align	4
.LBB34_3:                               #   in Loop: Header=BB34_4 Depth=1
	movq	16(%r14), %rax
	movq	%rax, 16(%rdi)
	movups	(%r14), %xmm0
	movups	%xmm0, (%rdi)
	movw	$0, (%r14)
	addq	$24, %r14
	addq	$24, %rdi
	cmpq	%rsi, %r14
	je	.LBB34_26
.LBB34_4:                               # =>This Inner Loop Header: Depth=1
	testb	$1, (%rdi)
	je	.LBB34_3
# %bb.5:                                #   in Loop: Header=BB34_4 Depth=1
	movq	16(%rdi), %rcx
	callq	_ZdlPv
	jmp	.LBB34_3
.LBB34_6:
	movq	%rdx, %rdi
	testq	%rdx, %rdx
	je	.LBB34_33
# %bb.7:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movl	$1065353216, 128(%rsp)          # imm = 0x3F800000
	movaps	%xmm0, 64(%rsp)
	movq	$0, 80(%rsp)
	movq	8(%r13), %rbx
	subq	(%r13), %rbx
	je	.LBB34_12
# %bb.8:
	movq	%rbx, %rax
	sarq	$3, %rax
	movabsq	$-6148914691236517205, %rcx     # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rax, %rcx
	movabsq	$768614336404564651, %rax       # imm = 0xAAAAAAAAAAAAAAB
	cmpq	%rax, %rcx
	jae	.LBB34_52
# %bb.9:
.Ltmp77:
	movq	%rbx, %rcx
	callq	_Znwy
.Ltmp78:
# %bb.10:
	movq	%rax, %r14
	addq	%rax, %rbx
	movq	64(%rsp), %r15
	movq	72(%rsp), %r8
	subq	%r15, %r8
	movq	%rax, %r12
	subq	%r8, %r12
	movq	%r12, %rcx
	movq	%r15, %rdx
	callq	memcpy
	movq	%r12, 64(%rsp)
	movq	%r14, 72(%rsp)
	movq	%rbx, 80(%rsp)
	testq	%r15, %r15
	je	.LBB34_12
# %bb.11:
	movq	%r15, %rcx
	callq	_ZdlPv
.LBB34_12:
	movq	(%r13), %rbx
	movq	%r13, 88(%rsp)                  # 8-byte Spill
	movq	8(%r13), %r13
	cmpq	%r13, %rbx
	je	.LBB34_38
# %bb.13:
	leaq	144(%rsp), %rsi
	leaq	_ZNSt3__119piecewise_constructE(%rip), %r14
	leaq	152(%rsp), %r15
	leaq	96(%rsp), %r12
	jmp	.LBB34_18
.LBB34_14:                              #   in Loop: Header=BB34_18 Depth=1
	movq	16(%rbx), %rax
	movq	%rax, 16(%rbp)
	movups	(%rbx), %xmm0
	movups	%xmm0, (%rbp)
.LBB34_15:                              #   in Loop: Header=BB34_18 Depth=1
	addq	$24, %rbp
.LBB34_16:                              #   in Loop: Header=BB34_18 Depth=1
	movq	%rbp, 72(%rsp)
.LBB34_17:                              #   in Loop: Header=BB34_18 Depth=1
	addq	$24, %rbx
	cmpq	%r13, %rbx
	je	.LBB34_32
.LBB34_18:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, 144(%rsp)
.Ltmp82:
	leaq	63(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%r15, %rcx
	movq	%r12, %rdx
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_
.Ltmp83:
# %bb.19:                               #   in Loop: Header=BB34_18 Depth=1
	movq	152(%rsp), %rax
	movq	40(%rax), %rcx
	cmpq	%rdi, %rcx
	jae	.LBB34_17
# %bb.20:                               #   in Loop: Header=BB34_18 Depth=1
	incq	%rcx
	movq	%rcx, 40(%rax)
	movq	72(%rsp), %rbp
	cmpq	80(%rsp), %rbp
	jae	.LBB34_24
# %bb.21:                               #   in Loop: Header=BB34_18 Depth=1
	testb	$1, (%rbx)
	je	.LBB34_14
# %bb.22:                               #   in Loop: Header=BB34_18 Depth=1
	movq	8(%rbx), %r8
	movq	16(%rbx), %rdx
.Ltmp87:
	movq	%rbp, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy
.Ltmp88:
	jmp	.LBB34_15
	.p2align	4
.LBB34_24:                              #   in Loop: Header=BB34_18 Depth=1
.Ltmp84:
	leaq	64(%rsp), %rcx
	movq	%rbx, %rdx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__emplace_back_slow_pathIJRKS6_EEEPS6_DpOT_
.Ltmp85:
# %bb.25:                               #   in Loop: Header=BB34_18 Depth=1
	movq	%rax, %rbp
	jmp	.LBB34_16
.LBB34_26:
	movq	8(%r13), %rsi
.LBB34_27:
	movq	%rdi, %r14
	subq	%rbx, %r14
	addq	%rbx, %r14
	cmpq	%rsi, %rdi
	jne	.LBB34_30
.LBB34_28:
	movq	%r14, 8(%r13)
	jmp	.LBB34_48
	.p2align	4
.LBB34_29:                              #   in Loop: Header=BB34_30 Depth=1
	addq	$-24, %rsi
	cmpq	%rdi, %rsi
	je	.LBB34_28
.LBB34_30:                              # =>This Inner Loop Header: Depth=1
	testb	$1, -24(%rsi)
	je	.LBB34_29
# %bb.31:                               #   in Loop: Header=BB34_30 Depth=1
	movq	-8(%rsi), %rcx
	callq	_ZdlPv
	jmp	.LBB34_29
.LBB34_32:
	movq	88(%rsp), %rdi                  # 8-byte Reload
	movq	(%rdi), %rbx
	testq	%rbx, %rbx
	jne	.LBB34_39
	jmp	.LBB34_45
.LBB34_33:
	movq	(%r13), %rsi
	movq	8(%r13), %rdi
	cmpq	%rdi, %rsi
	jne	.LBB34_36
.LBB34_34:
	movq	%rsi, 8(%r13)
	jmp	.LBB34_48
	.p2align	4
.LBB34_35:                              #   in Loop: Header=BB34_36 Depth=1
	addq	$-24, %rdi
	cmpq	%rsi, %rdi
	je	.LBB34_34
.LBB34_36:                              # =>This Inner Loop Header: Depth=1
	testb	$1, -24(%rdi)
	je	.LBB34_35
# %bb.37:                               #   in Loop: Header=BB34_36 Depth=1
	movq	-8(%rdi), %rcx
	callq	_ZdlPv
	jmp	.LBB34_35
.LBB34_38:
	movq	88(%rsp), %rdi                  # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB34_45
.LBB34_39:
	movq	8(%rdi), %rsi
	movq	%rbx, %rcx
	cmpq	%rsi, %rbx
	jne	.LBB34_41
	jmp	.LBB34_44
	.p2align	4
.LBB34_40:                              #   in Loop: Header=BB34_41 Depth=1
	addq	$-24, %rsi
	cmpq	%rbx, %rsi
	je	.LBB34_43
.LBB34_41:                              # =>This Inner Loop Header: Depth=1
	testb	$1, -24(%rsi)
	je	.LBB34_40
# %bb.42:                               #   in Loop: Header=BB34_41 Depth=1
	movq	-8(%rsi), %rcx
	callq	_ZdlPv
	jmp	.LBB34_40
.LBB34_43:
	movq	(%rdi), %rcx
.LBB34_44:
	movq	%rbx, 8(%rdi)
	callq	_ZdlPv
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
.LBB34_45:
	movaps	64(%rsp), %xmm0
	movups	%xmm0, (%rdi)
	movq	80(%rsp), %rax
	movq	%rax, 16(%rdi)
	movq	112(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB34_50
.LBB34_46:
	movq	96(%rsp), %rcx
	movq	$0, 96(%rsp)
	testq	%rcx, %rcx
	je	.LBB34_48
# %bb.47:
	callq	_ZdlPv
.LBB34_48:
	nop
	.seh_startepilogue
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
	.p2align	4
.LBB34_49:                              #   in Loop: Header=BB34_50 Depth=1
	movq	%rsi, %rcx
	callq	_ZdlPv
	movq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.LBB34_46
.LBB34_50:                              # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rdi
	testb	$1, 16(%rsi)
	je	.LBB34_49
# %bb.51:                               #   in Loop: Header=BB34_50 Depth=1
	movq	32(%rsi), %rcx
	callq	_ZdlPv
	jmp	.LBB34_49
.LBB34_52:
.Ltmp79:
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne210107Ev
.Ltmp80:
# %bb.53:
.LBB34_54:
.Ltmp81:
	jmp	.LBB34_57
.LBB34_55:
.Ltmp89:
	movq	%rax, %rsi
	movq	%rbp, 72(%rsp)
	jmp	.LBB34_58
.LBB34_56:
.Ltmp86:
.LBB34_57:
	movq	%rax, %rsi
.LBB34_58:
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne210107Ev
	leaq	96(%rsp), %rcx
	callq	_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyNS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_yEEEEED2B8ne210107Ev
	movq	%rsi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end21:
	.seh_handlerdata
	.section	.text$_ZN5Tools6Vector19RemoveDuplicatesInlINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEvRNS2_6vectorIT_NS6_ISA_EEEEyb,"xr",discard,_ZN5Tools6Vector19RemoveDuplicatesInlINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEvRNS2_6vectorIT_NS6_ISA_EEEEyb
	.seh_endproc
	.section	.xdata$_ZN5Tools6Vector19RemoveDuplicatesInlINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEvRNS2_6vectorIT_NS6_ISA_EEEEyb,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table34:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Lfunc_begin21-.Lfunc_begin21  # >> Call Site 1 <<
	.uleb128 .Ltmp77-.Lfunc_begin21         #   Call between .Lfunc_begin21 and .Ltmp77
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin21         # >> Call Site 2 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp81-.Lfunc_begin21         #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin21         # >> Call Site 3 <<
	.uleb128 .Ltmp82-.Ltmp78                #   Call between .Ltmp78 and .Ltmp82
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin21         # >> Call Site 4 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp86-.Lfunc_begin21         #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin21         # >> Call Site 5 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin21         #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin21         # >> Call Site 6 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin21         #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin21         # >> Call Site 7 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin21         #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin21         # >> Call Site 8 <<
	.uleb128 .Lfunc_end21-.Ltmp80           #   Call between .Ltmp80 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end21:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools6Vector19RemoveDuplicatesInlINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEvRNS2_6vectorIT_NS6_ISA_EEEEyb,"xr",discard,_ZN5Tools6Vector19RemoveDuplicatesInlINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEvRNS2_6vectorIT_NS6_ISA_EEEEyb
                                        # -- End function
	.def	_ZNSt3__113unordered_setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2B8ne210107Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113unordered_setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2B8ne210107Ev,"xr",discard,_ZNSt3__113unordered_setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2B8ne210107Ev
	.globl	_ZNSt3__113unordered_setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2B8ne210107Ev # -- Begin function _ZNSt3__113unordered_setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2B8ne210107Ev
	.p2align	4
_ZNSt3__113unordered_setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2B8ne210107Ev: # @_ZNSt3__113unordered_setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2B8ne210107Ev
.seh_proc _ZNSt3__113unordered_setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2B8ne210107Ev
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	movq	16(%rcx), %rdi
	testq	%rdi, %rdi
	jne	.LBB35_1
.LBB35_4:
	movq	(%rsi), %rcx
	movq	$0, (%rsi)
	testq	%rcx, %rcx
	je	.LBB35_5
# %bb.6:
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	jmp	_ZdlPv                          # TAILCALL
	.p2align	4
.LBB35_3:                               #   in Loop: Header=BB35_1 Depth=1
	movq	%rdi, %rcx
	callq	_ZdlPv
	movq	%rbx, %rdi
	testq	%rbx, %rbx
	je	.LBB35_4
.LBB35_1:                               # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rbx
	testb	$1, 16(%rdi)
	je	.LBB35_3
# %bb.2:                                #   in Loop: Header=BB35_1 Depth=1
	movq	32(%rdi), %rcx
	callq	_ZdlPv
	jmp	.LBB35_3
.LBB35_5:
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne210107Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne210107Ev,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne210107Ev
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne210107Ev # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne210107Ev
	.p2align	4
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne210107Ev: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne210107Ev
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne210107Ev
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB36_7
# %bb.1:
	movq	%rcx, %rsi
	movq	8(%rcx), %rbx
	movq	%rdi, %rcx
	cmpq	%rbx, %rdi
	jne	.LBB36_2
	jmp	.LBB36_6
	.p2align	4
.LBB36_4:                               #   in Loop: Header=BB36_2 Depth=1
	addq	$-24, %rbx
	cmpq	%rdi, %rbx
	je	.LBB36_5
.LBB36_2:                               # =>This Inner Loop Header: Depth=1
	testb	$1, -24(%rbx)
	je	.LBB36_4
# %bb.3:                                #   in Loop: Header=BB36_2 Depth=1
	movq	-8(%rbx), %rcx
	callq	_ZdlPv
	jmp	.LBB36_4
.LBB36_5:
	movq	(%rsi), %rcx
.LBB36_6:
	movq	%rdi, 8(%rsi)
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	jmp	_ZdlPv                          # TAILCALL
.LBB36_7:
	nop
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_Z9ivec_testv;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_Z9ivec_testv                   # -- Begin function _Z9ivec_testv
	.p2align	4
_Z9ivec_testv:                          # @_Z9ivec_testv
.Lfunc_begin22:
.seh_proc _Z9ivec_testv
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	$12, 56(%rsp)
	movl	$288, %ecx                      # imm = 0x120
	callq	_Znay
	movq	%rax, 40(%rsp)
	movb	$18, (%rax)
	movl	$1768972645, 4(%rax)            # imm = 0x69706165
	movl	$1701603686, 1(%rax)            # imm = 0x656C6966
	movq	$26670, 8(%rax)                 # imm = 0x682E
	movb	$18, 24(%rax)
	movl	$1937207140, 28(%rax)           # imm = 0x73776F64
	movl	$1684957559, 25(%rax)           # imm = 0x646E6977
	movq	$26670, 32(%rax)                # imm = 0x682E
	movb	$18, 48(%rax)
	movl	$1768972645, 52(%rax)           # imm = 0x69706165
	movl	$1701603686, 49(%rax)           # imm = 0x656C6966
	movq	$26670, 56(%rax)                # imm = 0x682E
	movb	$18, 72(%rax)
	movl	$1937207140, 76(%rax)           # imm = 0x73776F64
	movl	$1684957559, 73(%rax)           # imm = 0x646E6977
	movq	$26670, 80(%rax)                # imm = 0x682E
	movb	$14, 96(%rax)
	movl	$1852729719, 97(%rax)           # imm = 0x6E6E6977
	movl	$1747874926, 100(%rax)          # imm = 0x682E746E
	movq	$0, 104(%rax)
	movb	$20, 120(%rax)
	movl	$1936615799, 121(%rax)          # imm = 0x736E6977
	movl	$1869574259, 124(%rax)          # imm = 0x6F6F7073
	movq	$6827628, 128(%rax)             # imm = 0x682E6C
	movb	$18, 144(%rax)
	movl	$1701603686, 145(%rax)          # imm = 0x656C6966
	movl	$1768972645, 148(%rax)          # imm = 0x69706165
	movq	$26670, 152(%rax)               # imm = 0x682E
	movb	$18, 168(%rax)
	movl	$1684957559, 169(%rax)          # imm = 0x646E6977
	movl	$1937207140, 172(%rax)          # imm = 0x73776F64
	movq	$26670, 176(%rax)               # imm = 0x682E
	movb	$14, 192(%rax)
	movl	$1852729719, 193(%rax)          # imm = 0x6E6E6977
	movl	$1747874926, 196(%rax)          # imm = 0x682E746E
	movq	$0, 200(%rax)
	movb	$20, 216(%rax)
	movl	$1869574259, 220(%rax)          # imm = 0x6F6F7073
	movl	$1936615799, 217(%rax)          # imm = 0x736E6977
	movq	$6827628, 224(%rax)             # imm = 0x682E6C
	movb	$16, 240(%rax)
	movabsq	$7881692365129477993, %rcx      # imm = 0x6D61657274736F69
	movq	%rcx, 241(%rax)
	movb	$0, 249(%rax)
	movb	$12, 264(%rax)
	movw	$29793, 269(%rax)               # imm = 0x7461
	movl	$1836216166, 265(%rax)          # imm = 0x6D726F66
	movb	$0, 271(%rax)
	movq	$12, 48(%rsp)
.Ltmp90:
	movl	$1, %ecx
	callq	*__imp___acrt_iob_func(%rip)
.Ltmp91:
# %bb.1:
	leaq	.L.str.12(%rip), %rdi
	movq	%rdi, 80(%rsp)
	movq	$9, 88(%rsp)
	leaq	40(%rsp), %rcx
	movq	%rcx, 96(%rsp)
	leaq	_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5Tools4ivecINSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEEvPvRNS0_13parse_contextIcEERS3_(%rip), %rbx
	movq	%rbx, 104(%rsp)
	movq	$15, 64(%rsp)
	leaq	96(%rsp), %r14
	movq	%r14, 72(%rsp)
.Ltmp92:
	leaq	80(%rsp), %rdx
	leaq	64(%rsp), %r8
	movq	%rax, %rcx
	callq	_ZN3fmt3v128vprintlnEP6_iobufNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE
.Ltmp93:
# %bb.2:
.Ltmp94:
	leaq	40(%rsp), %rsi
	movl	$1, %edx
	movq	%rsi, %rcx
	callq	_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE10uniquesInlEy
.Ltmp95:
# %bb.3:
.Ltmp96:
	movl	$1, %ecx
	callq	*__imp___acrt_iob_func(%rip)
.Ltmp97:
# %bb.4:
	movq	%rdi, 80(%rsp)
	movq	$9, 88(%rsp)
	movq	%rsi, 96(%rsp)
	movq	%rbx, 104(%rsp)
	movq	$15, 64(%rsp)
	movq	%r14, 72(%rsp)
.Ltmp98:
	leaq	80(%rsp), %rdx
	leaq	64(%rsp), %r8
	movq	%rax, %rcx
	callq	_ZN3fmt3v128vprintlnEP6_iobufNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE
.Ltmp99:
# %bb.5:
	movq	48(%rsp), %rax
	testq	%rax, %rax
	je	.LBB37_10
# %bb.6:
	movl	$16, %esi
	xorl	%edi, %edi
	jmp	.LBB37_7
	.p2align	4
.LBB37_9:                               #   in Loop: Header=BB37_7 Depth=1
	incq	%rdi
	addq	$24, %rsi
	cmpq	%rax, %rdi
	jae	.LBB37_10
.LBB37_7:                               # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rcx
	testb	$1, -16(%rcx,%rsi)
	je	.LBB37_9
# %bb.8:                                #   in Loop: Header=BB37_7 Depth=1
	movq	(%rcx,%rsi), %rcx
	callq	_ZdlPv
	movq	48(%rsp), %rax
	jmp	.LBB37_9
.LBB37_10:
	movq	40(%rsp), %rcx
	callq	_ZdaPv
	nop
	.seh_startepilogue
	addq	$120, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
.LBB37_11:
.Ltmp100:
	movq	%rax, %rsi
	leaq	40(%rsp), %rcx
	callq	_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEED2Ev
	movq	%rsi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end22:
	.seh_handlerdata
	.text
	.seh_endproc
	.section	.xdata,"dr"
	.p2align	2, 0x0
GCC_except_table37:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Lfunc_begin22-.Lfunc_begin22  # >> Call Site 1 <<
	.uleb128 .Ltmp90-.Lfunc_begin22         #   Call between .Lfunc_begin22 and .Ltmp90
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin22         # >> Call Site 2 <<
	.uleb128 .Ltmp99-.Ltmp90                #   Call between .Ltmp90 and .Ltmp99
	.uleb128 .Ltmp100-.Lfunc_begin22        #     jumps to .Ltmp100
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin22         # >> Call Site 3 <<
	.uleb128 .Lfunc_end22-.Ltmp99           #   Call between .Ltmp99 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end22:
	.p2align	2, 0x0
	.text
                                        # -- End function
	.def	_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE10uniquesInlEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE10uniquesInlEy,"xr",discard,_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE10uniquesInlEy
	.globl	_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE10uniquesInlEy # -- Begin function _ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE10uniquesInlEy
	.p2align	4
_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE10uniquesInlEy: # @_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE10uniquesInlEy
.Lfunc_begin23:
.seh_proc _ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE10uniquesInlEy
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$152, %rsp
	.seh_stackalloc 152
	movaps	%xmm6, 128(%rsp)                # 16-byte Spill
	.seh_savexmm %xmm6, 128
	.seh_endprologue
	testq	%rdx, %rdx
	je	.LBB38_15
# %bb.1:
	movq	%rcx, %rsi
	cmpq	$2, 8(%rcx)
	jb	.LBB38_15
# %bb.2:
	movq	%rdx, %rdi
	xorps	%xmm6, %xmm6
	movaps	%xmm6, 80(%rsp)
	movaps	%xmm6, 64(%rsp)
	movl	$1065353216, 96(%rsp)           # imm = 0x3F800000
	xorl	%r13d, %r13d
	leaq	64(%rsp), %r15
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	jmp	.LBB38_3
	.p2align	4
.LBB38_8:                               #   in Loop: Header=BB38_3 Depth=1
	incq	%rbp
	incq	40(%r14)
.LBB38_19:                              #   in Loop: Header=BB38_3 Depth=1
	incq	%rbx
	addq	$24, %r13
	cmpq	8(%rsi), %rbx
	jae	.LBB38_9
.LBB38_3:                               # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %r12
	addq	%r13, %r12
	movq	%r12, 56(%rsp)
.Ltmp101:
	leaq	55(%rsp), %rax
	movq	%rax, 40(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	112(%rsp), %rcx
	movq	%r15, %rdx
	movq	%r12, %r8
	leaq	_ZNSt3__119piecewise_constructE(%rip), %r9
	callq	_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_
.Ltmp102:
# %bb.4:                                #   in Loop: Header=BB38_3 Depth=1
	movq	112(%rsp), %r14
	cmpq	%rdi, 40(%r14)
	jae	.LBB38_17
# %bb.5:                                #   in Loop: Header=BB38_3 Depth=1
	cmpq	%rbp, %rbx
	je	.LBB38_8
# %bb.6:                                #   in Loop: Header=BB38_3 Depth=1
	movq	(%rsi), %rax
	leaq	(,%rbp,2), %rcx
	addq	%rbp, %rcx
	movq	16(%r12), %rdx
	movq	%rdx, 16(%rax,%rcx,8)
	movups	(%r12), %xmm0
	movups	%xmm0, (%rax,%rcx,8)
	movups	%xmm6, (%r12)
	movq	$0, 16(%r12)
	movq	(%rsi), %rax
	testb	$1, (%rax,%r13)
	je	.LBB38_8
# %bb.7:                                #   in Loop: Header=BB38_3 Depth=1
	movq	16(%rax,%r13), %rcx
	callq	_ZdlPv
	jmp	.LBB38_8
	.p2align	4
.LBB38_17:                              #   in Loop: Header=BB38_3 Depth=1
	movq	(%rsi), %rax
	testb	$1, (%rax,%r13)
	je	.LBB38_19
# %bb.18:                               #   in Loop: Header=BB38_3 Depth=1
	movq	16(%rax,%r13), %rcx
	callq	_ZdlPv
	jmp	.LBB38_19
.LBB38_9:
	movq	80(%rsp), %rdi
	movq	%rbp, 8(%rsi)
	testq	%rdi, %rdi
	jne	.LBB38_10
.LBB38_13:
	movq	64(%rsp), %rcx
	movq	$0, 64(%rsp)
	testq	%rcx, %rcx
	je	.LBB38_15
# %bb.14:
	callq	_ZdlPv
.LBB38_15:
	movaps	128(%rsp), %xmm6                # 16-byte Reload
	.seh_startepilogue
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
	.p2align	4
.LBB38_12:                              #   in Loop: Header=BB38_10 Depth=1
	movq	%rdi, %rcx
	callq	_ZdlPv
	movq	%rsi, %rdi
	testq	%rsi, %rsi
	je	.LBB38_13
.LBB38_10:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rsi
	testb	$1, 16(%rdi)
	je	.LBB38_12
# %bb.11:                               #   in Loop: Header=BB38_10 Depth=1
	movq	32(%rdi), %rcx
	callq	_ZdlPv
	jmp	.LBB38_12
.LBB38_16:
.Ltmp103:
	movq	%rax, %rsi
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyNS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_yEEEEED2B8ne210107Ev
	movq	%rsi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end23:
	.seh_handlerdata
	.section	.text$_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE10uniquesInlEy,"xr",discard,_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE10uniquesInlEy
	.seh_endproc
	.section	.xdata$_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE10uniquesInlEy,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table38:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Ltmp101-.Lfunc_begin23        # >> Call Site 1 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin23        #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Lfunc_end23-.Ltmp102          #   Call between .Ltmp102 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end23:
	.p2align	2, 0x0
	.section	.text$_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE10uniquesInlEy,"xr",discard,_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE10uniquesInlEy
                                        # -- End function
	.def	_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEED2Ev,"xr",discard,_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEED2Ev
	.globl	_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEED2Ev # -- Begin function _ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEED2Ev
	.p2align	4
_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEED2Ev: # @_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEED2Ev
.seh_proc _ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEED2Ev
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	movq	8(%rcx), %rax
	testq	%rax, %rax
	je	.LBB39_5
# %bb.1:
	movl	$16, %edi
	xorl	%ebx, %ebx
	jmp	.LBB39_2
	.p2align	4
.LBB39_4:                               #   in Loop: Header=BB39_2 Depth=1
	incq	%rbx
	addq	$24, %rdi
	cmpq	%rax, %rbx
	jae	.LBB39_5
.LBB39_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rcx
	testb	$1, -16(%rcx,%rdi)
	je	.LBB39_4
# %bb.3:                                #   in Loop: Header=BB39_2 Depth=1
	movq	(%rcx,%rdi), %rcx
	callq	_ZdlPv
	movq	8(%rsi), %rax
	jmp	.LBB39_4
.LBB39_5:
	movq	(%rsi), %rcx
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	jmp	_ZdaPv                          # TAILCALL
	.seh_endproc
                                        # -- End function
	.def	main;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	main                            # -- Begin function main
	.p2align	4
main:                                   # @main
.seh_proc main
# %bb.0:
	pushq	%rbp
	.seh_pushreg %rbp
	subq	$32, %rsp
	.seh_stackalloc 32
	leaq	32(%rsp), %rbp
	.seh_setframe %rbp, 32
	.seh_endprologue
	callq	__main
	callq	_Z8vec_testv
	callq	_Z9ivec_testv
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbp
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne210107Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne210107Ev,"xr",discard,_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne210107Ev
	.globl	_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne210107Ev # -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne210107Ev
	.p2align	4
_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne210107Ev: # @_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne210107Ev
.seh_proc _ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne210107Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str.19(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB8ne210107EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	__clang_call_terminate;
	.scl	2;
	.type	32;
	.endef
	.section	.text$__clang_call_terminate,"xr",discard,__clang_call_terminate
	.globl	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.p2align	4
__clang_call_terminate:                 # @__clang_call_terminate
.seh_proc __clang_call_terminate
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__120__throw_length_errorB8ne210107EPKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__120__throw_length_errorB8ne210107EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB8ne210107EPKc
	.globl	_ZNSt3__120__throw_length_errorB8ne210107EPKc # -- Begin function _ZNSt3__120__throw_length_errorB8ne210107EPKc
	.p2align	4
_ZNSt3__120__throw_length_errorB8ne210107EPKc: # @_ZNSt3__120__throw_length_errorB8ne210107EPKc
.Lfunc_begin24:
.seh_proc _ZNSt3__120__throw_length_errorB8ne210107EPKc
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, %rdi
	movl	$16, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
.Ltmp104:
	movq	%rax, %rcx
	movq	%rdi, %rdx
	callq	_ZNSt12length_errorC2B8ne210107EPKc
.Ltmp105:
# %bb.1:
	leaq	_ZTISt12length_error(%rip), %rdx
	leaq	_ZNSt12length_errorD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
.LBB43_2:
.Ltmp106:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	__cxa_free_exception
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end24:
	.seh_handlerdata
	.section	.text$_ZNSt3__120__throw_length_errorB8ne210107EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB8ne210107EPKc
	.seh_endproc
	.section	.xdata$_ZNSt3__120__throw_length_errorB8ne210107EPKc,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table43:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Lfunc_begin24-.Lfunc_begin24  # >> Call Site 1 <<
	.uleb128 .Ltmp104-.Lfunc_begin24        #   Call between .Lfunc_begin24 and .Ltmp104
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin24        # >> Call Site 2 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin24        #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin24        # >> Call Site 3 <<
	.uleb128 .Lfunc_end24-.Ltmp105          #   Call between .Ltmp105 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end24:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__120__throw_length_errorB8ne210107EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB8ne210107EPKc
                                        # -- End function
	.def	_ZNSt12length_errorC2B8ne210107EPKc;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt12length_errorC2B8ne210107EPKc,"xr",discard,_ZNSt12length_errorC2B8ne210107EPKc
	.globl	_ZNSt12length_errorC2B8ne210107EPKc # -- Begin function _ZNSt12length_errorC2B8ne210107EPKc
	.p2align	4
_ZNSt12length_errorC2B8ne210107EPKc:    # @_ZNSt12length_errorC2B8ne210107EPKc
.seh_proc _ZNSt12length_errorC2B8ne210107EPKc
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	callq	_ZNSt11logic_errorC2EPKc
	movq	.refptr._ZTVSt12length_error(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rsi)
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZSt28__throw_bad_array_new_lengthB8ne210107v;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZSt28__throw_bad_array_new_lengthB8ne210107v,"xr",discard,_ZSt28__throw_bad_array_new_lengthB8ne210107v
	.globl	_ZSt28__throw_bad_array_new_lengthB8ne210107v # -- Begin function _ZSt28__throw_bad_array_new_lengthB8ne210107v
	.p2align	4
_ZSt28__throw_bad_array_new_lengthB8ne210107v: # @_ZSt28__throw_bad_array_new_lengthB8ne210107v
.seh_proc _ZSt28__throw_bad_array_new_lengthB8ne210107v
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movl	$8, %ecx
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
	movq	%rax, %rcx
	callq	_ZNSt20bad_array_new_lengthC1Ev
	leaq	_ZTISt20bad_array_new_length(%rip), %rdx
	leaq	_ZNSt20bad_array_new_lengthD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne210107Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne210107Ev,"xr",discard,_ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne210107Ev
	.globl	_ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne210107Ev # -- Begin function _ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne210107Ev
	.p2align	4
_ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne210107Ev: # @_ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne210107Ev
.seh_proc _ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne210107Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str.19(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB8ne210107EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne210107Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne210107Ev,"xr",discard,_ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne210107Ev
	.globl	_ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne210107Ev # -- Begin function _ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne210107Ev
	.p2align	4
_ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne210107Ev: # @_ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne210107Ev
.seh_proc _ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne210107Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str.19(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB8ne210107EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne210107Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne210107Ev,"xr",discard,_ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne210107Ev
	.globl	_ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne210107Ev # -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne210107Ev
	.p2align	4
_ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne210107Ev: # @_ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne210107Ev
.seh_proc _ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne210107Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str.19(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB8ne210107EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne210107Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne210107Ev,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne210107Ev
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne210107Ev # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne210107Ev
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne210107Ev: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne210107Ev
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne210107Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str.20(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB8ne210107EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__init_with_sizeB8ne210107IPKS6_SB_EEvT_T0_y;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__init_with_sizeB8ne210107IPKS6_SB_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__init_with_sizeB8ne210107IPKS6_SB_EEvT_T0_y
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__init_with_sizeB8ne210107IPKS6_SB_EEvT_T0_y # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__init_with_sizeB8ne210107IPKS6_SB_EEvT_T0_y
	.p2align	4
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__init_with_sizeB8ne210107IPKS6_SB_EEvT_T0_y: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__init_with_sizeB8ne210107IPKS6_SB_EEvT_T0_y
.Lfunc_begin25:
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__init_with_sizeB8ne210107IPKS6_SB_EEvT_T0_y
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$96, %rsp
	.seh_stackalloc 96
	.seh_endprologue
	movq	%rcx, 48(%rsp)
	movb	$0, 56(%rsp)
	testq	%r9, %r9
	je	.LBB50_14
# %bb.1:
	movq	%r9, %r15
	movabsq	$768614336404564651, %rax       # imm = 0xAAAAAAAAAAAAAAB
	cmpq	%rax, %r9
	jae	.LBB50_2
# %bb.4:
	movq	%r8, %rdi
	movq	%rdx, %rbx
	movq	%rcx, %rsi
	leaq	(,%r15,8), %rax
	leaq	(%rax,%rax,2), %rcx
.Ltmp107:
	callq	_Znwy
.Ltmp108:
# %bb.5:
	movq	%rax, %r14
	leaq	16(%rsi), %rax
	movq	%r14, (%rsi)
	movq	%r14, 8(%rsi)
	leaq	(%r15,%r15,2), %rcx
	leaq	(%r14,%rcx,8), %rcx
	movq	%rcx, 16(%rsi)
	movq	%r14, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%rax, 64(%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 80(%rsp)
	movb	$0, 88(%rsp)
	cmpq	%rdi, %rbx
	je	.LBB50_6
# %bb.7:
	movq	%r14, %rcx
	jmp	.LBB50_8
	.p2align	4
.LBB50_9:                               #   in Loop: Header=BB50_8 Depth=1
	movq	16(%rbx), %rax
	movq	%rax, 16(%rcx)
	movups	(%rbx), %xmm0
	movups	%xmm0, (%rcx)
.LBB50_12:                              #   in Loop: Header=BB50_8 Depth=1
	addq	$24, %rbx
	addq	$24, %rcx
	movq	%rcx, 32(%rsp)
	cmpq	%rdi, %rbx
	je	.LBB50_13
.LBB50_8:                               # =>This Inner Loop Header: Depth=1
	testb	$1, (%rbx)
	je	.LBB50_9
# %bb.10:                               #   in Loop: Header=BB50_8 Depth=1
	movq	8(%rbx), %r8
	movq	16(%rbx), %rdx
.Ltmp109:
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy
.Ltmp110:
# %bb.11:                               #   in Loop: Header=BB50_8 Depth=1
	movq	32(%rsp), %rcx
	jmp	.LBB50_12
.LBB50_6:
	movq	%r14, %rcx
.LBB50_13:
	movq	%rcx, 8(%rsi)
.LBB50_14:
	.seh_startepilogue
	addq	$96, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB50_2:
.Ltmp112:
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne210107Ev
.Ltmp113:
# %bb.3:
.LBB50_15:
.Ltmp114:
	movq	%rax, %rdi
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne210107Ev
	movq	%rdi, %rcx
	callq	_Unwind_Resume
.LBB50_17:
.Ltmp111:
	movq	%rax, %rdi
	leaq	64(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne210107Ev
	movq	%r14, 8(%rsi)
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne210107Ev
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end25:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__init_with_sizeB8ne210107IPKS6_SB_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__init_with_sizeB8ne210107IPKS6_SB_EEvT_T0_y
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__init_with_sizeB8ne210107IPKS6_SB_EEvT_T0_y,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table50:
.Lexception25:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end25-.Lcst_begin25
.Lcst_begin25:
	.uleb128 .Ltmp107-.Lfunc_begin25        # >> Call Site 1 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp114-.Lfunc_begin25        #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin25        # >> Call Site 2 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin25        #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin25        # >> Call Site 3 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin25        #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin25        # >> Call Site 4 <<
	.uleb128 .Lfunc_end25-.Ltmp113          #   Call between .Ltmp113 and .Lfunc_end25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end25:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__init_with_sizeB8ne210107IPKS6_SB_EEvT_T0_y,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__init_with_sizeB8ne210107IPKS6_SB_EEvT_T0_y
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne210107Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne210107Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne210107Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne210107Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne210107Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne210107Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne210107Ev
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne210107Ev
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	cmpb	$0, 8(%rcx)
	jne	.LBB51_8
# %bb.1:
	movq	%rcx, %rsi
	movq	(%rcx), %rdi
	movq	(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB51_8
# %bb.2:
	movq	8(%rdi), %r14
	movq	%rbx, %rcx
	cmpq	%r14, %rbx
	jne	.LBB51_3
	jmp	.LBB51_7
	.p2align	4
.LBB51_5:                               #   in Loop: Header=BB51_3 Depth=1
	addq	$-24, %r14
	cmpq	%rbx, %r14
	je	.LBB51_6
.LBB51_3:                               # =>This Inner Loop Header: Depth=1
	testb	$1, -24(%r14)
	je	.LBB51_5
# %bb.4:                                #   in Loop: Header=BB51_3 Depth=1
	movq	-8(%r14), %rcx
	callq	_ZdlPv
	jmp	.LBB51_5
.LBB51_8:
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
.LBB51_6:
	movq	(%rsi), %rax
	movq	(%rax), %rcx
.LBB51_7:
	movq	%rbx, 8(%rdi)
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	jmp	_ZdlPv                          # TAILCALL
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne210107Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne210107Ev,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne210107Ev
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne210107Ev # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne210107Ev
	.p2align	4
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne210107Ev: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne210107Ev
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne210107Ev
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	leaq	.L.str.19(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB8ne210107EPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne210107Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne210107Ev,"xr",discard,_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne210107Ev
	.globl	_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne210107Ev # -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne210107Ev
	.p2align	4
_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne210107Ev: # @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne210107Ev
.seh_proc _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne210107Ev
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	cmpb	$0, 24(%rcx)
	je	.LBB53_1
.LBB53_6:
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
.LBB53_1:
	movq	8(%rcx), %rax
	movq	16(%rcx), %rcx
	movq	(%rcx), %rsi
	movq	(%rax), %rdi
	jmp	.LBB53_2
	.p2align	4
.LBB53_5:                               #   in Loop: Header=BB53_2 Depth=1
	addq	$-24, %rsi
.LBB53_2:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %rsi
	je	.LBB53_6
# %bb.3:                                #   in Loop: Header=BB53_2 Depth=1
	testb	$1, -24(%rsi)
	je	.LBB53_5
# %bb.4:                                #   in Loop: Header=BB53_2 Depth=1
	movq	-8(%rsi), %rcx
	callq	_ZdlPv
	jmp	.LBB53_5
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy,"xr",discard,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy
	.globl	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy # -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy
	.p2align	4
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy: # @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy
.seh_proc _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	cmpq	$22, %r8
	ja	.LBB54_2
# %bb.1:
	leal	(%r8,%r8), %eax
	movb	%al, (%rcx)
	incq	%rcx
	jmp	.LBB54_4
.LBB54_2:
	cmpq	$-9, %r8
	jae	.LBB54_5
# %bb.3:
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	movq	%r8, %rax
	orq	$7, %rax
	leaq	1(%rax), %rcx
	cmpq	$23, %rax
	movl	$26, %esi
	cmovneq	%rcx, %rsi
	movq	%rsi, %rcx
	movq	%r8, %r14
	callq	_Znwy
	movq	%r14, %r8
	movq	%rax, 16(%rbx)
	incq	%rsi
	movq	%rsi, (%rbx)
	movq	%r14, 8(%rbx)
	movq	%rax, %rcx
	movq	%rdi, %rdx
.LBB54_4:
	incq	%r8
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	jmp	memmove                         # TAILCALL
.LBB54_5:
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne210107Ev
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2Ev,"xr",discard,_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2Ev
	.globl	_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2Ev # -- Begin function _ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2Ev
	.p2align	4
_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2Ev: # @_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2Ev
.seh_proc _ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2Ev
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	movq	16(%rcx), %rdi
	testq	%rdi, %rdi
	jne	.LBB55_1
.LBB55_4:
	movq	(%rsi), %rcx
	movq	$0, (%rsi)
	testq	%rcx, %rcx
	je	.LBB55_5
# %bb.6:
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	jmp	_ZdlPv                          # TAILCALL
	.p2align	4
.LBB55_3:                               #   in Loop: Header=BB55_1 Depth=1
	movq	%rdi, %rcx
	callq	_ZdlPv
	movq	%rbx, %rdi
	testq	%rbx, %rbx
	je	.LBB55_4
.LBB55_1:                               # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rbx
	testb	$1, 16(%rdi)
	je	.LBB55_3
# %bb.2:                                #   in Loop: Header=BB55_1 Depth=1
	movq	32(%rdi), %rcx
	callq	_ZdlPv
	jmp	.LBB55_3
.LBB55_5:
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JRS6_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	2, 0x0                          # -- Begin function _ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JRS6_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_
.LCPI56_0:
	.long	0x5f000000                      # float 9.22337203E+18
	.section	.text$_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JRS6_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_,"xr",discard,_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JRS6_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_
	.globl	_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JRS6_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_
	.p2align	4
_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JRS6_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_: # @_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JRS6_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_
.Lfunc_begin26:
.seh_proc _ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JRS6_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%r9, %rsi
	movq	%rdx, %rdi
	movzbl	(%r8), %eax
	leaq	1(%r8), %r12
	movl	%eax, %r13d
	shrl	%r13d
	testb	$1, %al
	cmovneq	16(%r8), %r12
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	cmovneq	8(%r8), %r13
	movq	%r12, %rcx
	movq	%r13, %rdx
	callq	_ZNSt3__113__hash_memoryEPKvy
	movq	%rax, %rbx
	movq	8(%rdi), %rbp
	testq	%rbp, %rbp
	je	.LBB56_1
# %bb.2:
	leaq	-1(%rbp), %r14
	testq	%r14, %rbp
	je	.LBB56_3
# %bb.4:
	movq	%rbx, %r15
	cmpq	%rbp, %rbx
	jb	.LBB56_8
# %bb.5:
	movq	%rbx, %rax
	orq	%rbp, %rax
	shrq	$32, %rax
	je	.LBB56_6
# %bb.7:
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rbp
	movq	%rdx, %r15
	movq	(%rdi), %rax
	movq	(%rax,%r15,8), %rax
	testq	%rax, %rax
	jne	.LBB56_9
	jmp	.LBB56_39
.LBB56_1:
                                        # implicit-def: $r15
	jmp	.LBB56_39
.LBB56_3:
	movq	%r14, %r15
	andq	%rbx, %r15
.LBB56_8:
	movq	(%rdi), %rax
	movq	(%rax,%r15,8), %rax
	testq	%rax, %rax
	je	.LBB56_39
.LBB56_9:
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB56_38
# %bb.10:
	testq	%r14, %rbp
	jne	.LBB56_23
	jmp	.LBB56_11
	.p2align	4
.LBB56_12:                              #   in Loop: Header=BB56_11 Depth=1
	andq	%r14, %rax
	cmpq	%r15, %rax
	jne	.LBB56_38
.LBB56_13:                              #   in Loop: Header=BB56_11 Depth=1
	movq	(%rsi), %rsi
	testq	%rsi, %rsi
	je	.LBB56_38
.LBB56_11:                              # =>This Inner Loop Header: Depth=1
	movq	8(%rsi), %rax
	cmpq	%rbx, %rax
	jne	.LBB56_12
# %bb.14:                               #   in Loop: Header=BB56_11 Depth=1
	movzbl	16(%rsi), %eax
	testb	$1, %al
	je	.LBB56_15
# %bb.16:                               #   in Loop: Header=BB56_11 Depth=1
	movq	24(%rsi), %rcx
	cmpq	%r13, %rcx
	jne	.LBB56_13
	jmp	.LBB56_18
	.p2align	4
.LBB56_15:                              #   in Loop: Header=BB56_11 Depth=1
	movl	%eax, %ecx
	shrl	%ecx
	cmpq	%r13, %rcx
	jne	.LBB56_13
.LBB56_18:                              #   in Loop: Header=BB56_11 Depth=1
	testb	$1, %al
	je	.LBB56_19
# %bb.20:                               #   in Loop: Header=BB56_11 Depth=1
	movq	32(%rsi), %rcx
	jmp	.LBB56_21
.LBB56_19:                              #   in Loop: Header=BB56_11 Depth=1
	leaq	17(%rsi), %rcx
.LBB56_21:                              #   in Loop: Header=BB56_11 Depth=1
	movq	%r12, %rdx
	movq	%r13, %r8
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB56_13
	jmp	.LBB56_22
.LBB56_27:                              #   in Loop: Header=BB56_23 Depth=1
	xorl	%edx, %edx
	divq	%rbp
	movq	%rdx, %rax
.LBB56_28:                              #   in Loop: Header=BB56_23 Depth=1
	cmpq	%r15, %rax
	jne	.LBB56_38
.LBB56_37:                              #   in Loop: Header=BB56_23 Depth=1
	movq	(%rsi), %rsi
	testq	%rsi, %rsi
	je	.LBB56_38
.LBB56_23:                              # =>This Inner Loop Header: Depth=1
	movq	8(%rsi), %rax
	cmpq	%rbx, %rax
	jne	.LBB56_24
# %bb.29:                               #   in Loop: Header=BB56_23 Depth=1
	movzbl	16(%rsi), %eax
	testb	$1, %al
	je	.LBB56_30
# %bb.31:                               #   in Loop: Header=BB56_23 Depth=1
	movq	24(%rsi), %rcx
	cmpq	%r13, %rcx
	jne	.LBB56_37
	jmp	.LBB56_33
	.p2align	4
.LBB56_24:                              #   in Loop: Header=BB56_23 Depth=1
	cmpq	%rbp, %rax
	jb	.LBB56_28
# %bb.25:                               #   in Loop: Header=BB56_23 Depth=1
	movq	%rax, %rcx
	orq	%rbp, %rcx
	shrq	$32, %rcx
	jne	.LBB56_27
# %bb.26:                               #   in Loop: Header=BB56_23 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ebp
	movl	%edx, %eax
	jmp	.LBB56_28
	.p2align	4
.LBB56_30:                              #   in Loop: Header=BB56_23 Depth=1
	movl	%eax, %ecx
	shrl	%ecx
	cmpq	%r13, %rcx
	jne	.LBB56_37
.LBB56_33:                              #   in Loop: Header=BB56_23 Depth=1
	testb	$1, %al
	je	.LBB56_34
# %bb.35:                               #   in Loop: Header=BB56_23 Depth=1
	movq	32(%rsi), %rcx
	jmp	.LBB56_36
.LBB56_34:                              #   in Loop: Header=BB56_23 Depth=1
	leaq	17(%rsi), %rcx
.LBB56_36:                              #   in Loop: Header=BB56_23 Depth=1
	movq	%r12, %rdx
	movq	%r13, %r8
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB56_37
.LBB56_22:
	xorl	%eax, %eax
	movq	40(%rsp), %r8                   # 8-byte Reload
	jmp	.LBB56_90
.LBB56_38:
	movq	32(%rsp), %rsi                  # 8-byte Reload
.LBB56_39:
	leaq	16(%rdi), %r12
	movl	$40, %ecx
	callq	_Znwy
	movq	%rax, 48(%rsp)
	movq	%r12, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	addq	$16, %rax
	testb	$1, (%rsi)
	jne	.LBB56_43
# %bb.40:
	movq	16(%rsi), %rcx
	movq	%rcx, 16(%rax)
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB56_44
.LBB56_43:
	movq	8(%rsi), %r8
	movq	16(%rsi), %rdx
.Ltmp115:
	movq	%rax, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy
.Ltmp116:
.LBB56_44:
	movb	$1, 64(%rsp)
	movq	24(%rdi), %rax
	incq	%rax
	js	.LBB56_45
# %bb.46:
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	jmp	.LBB56_47
.LBB56_45:
	movq	%rax, %rcx
	shrq	%rcx
	andl	$1, %eax
	orq	%rcx, %rax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	addss	%xmm0, %xmm0
.LBB56_47:
	movq	%rbp, %rcx
	shrq	%rcx
	movl	%ebp, %eax
	andl	$1, %eax
	orq	%rcx, %rax
	testq	%rbp, %rbp
	js	.LBB56_48
# %bb.49:
	cvtsi2ss	%rbp, %xmm2
	movss	32(%rdi), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	jne	.LBB56_51
	jmp	.LBB56_53
.LBB56_48:
	cvtsi2ss	%rax, %xmm2
	addss	%xmm2, %xmm2
	movss	32(%rdi), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	je	.LBB56_53
.LBB56_51:
	mulss	%xmm1, %xmm2
	ucomiss	%xmm2, %xmm0
	ja	.LBB56_53
# %bb.52:
	movq	%r15, %rbx
	jmp	.LBB56_79
.LBB56_53:
	leaq	(,%rbp,2), %rax
	movl	$1, %esi
	cmpq	$3, %rbp
	jb	.LBB56_55
# %bb.54:
	leaq	-1(%rbp), %rcx
	xorl	%esi, %esi
	testq	%rcx, %rbp
	setne	%sil
.LBB56_55:
	orq	%rax, %rsi
	divss	%xmm1, %xmm0
	callq	ceilf
	cvttss2si	%xmm0, %rax
	movq	%rax, %rdx
	sarq	$63, %rdx
	subss	.LCPI56_0(%rip), %xmm0
	cvttss2si	%xmm0, %rcx
	andq	%rdx, %rcx
	orq	%rax, %rcx
	cmpq	%rcx, %rsi
	cmovaq	%rsi, %rcx
	movl	$2, %r14d
	cmpq	$1, %rcx
	je	.LBB56_60
# %bb.56:
	leaq	-1(%rcx), %rax
	testq	%rax, %rcx
	je	.LBB56_57
# %bb.58:
.Ltmp118:
	callq	_ZNSt3__112__next_primeEy
.Ltmp119:
# %bb.59:
	movq	%rax, %r14
.LBB56_60:
	movq	8(%rdi), %rsi
	cmpq	%rsi, %r14
	jbe	.LBB56_61
.LBB56_71:
.Ltmp122:
	movq	%rdi, %rcx
	movq	%r14, %rdx
	callq	_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE11__do_rehashILb1EEEvy
.Ltmp123:
	jmp	.LBB56_72
.LBB56_57:
	movq	%rcx, %r14
	movq	8(%rdi), %rsi
	cmpq	%rsi, %r14
	ja	.LBB56_71
.LBB56_61:
	jae	.LBB56_72
# %bb.62:
	movq	24(%rdi), %rax
	testq	%rax, %rax
	js	.LBB56_63
# %bb.64:
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	jmp	.LBB56_65
.LBB56_6:
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%ebp
	movl	%edx, %r15d
	movq	(%rdi), %rax
	movq	(%rax,%r15,8), %rax
	testq	%rax, %rax
	jne	.LBB56_9
	jmp	.LBB56_39
.LBB56_63:
	movq	%rax, %rcx
	shrq	%rcx
	andl	$1, %eax
	orq	%rcx, %rax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	addss	%xmm0, %xmm0
.LBB56_65:
	divss	32(%rdi), %xmm0
	callq	ceilf
	cvttss2si	%xmm0, %rcx
	movq	%rcx, %rdx
	subss	.LCPI56_0(%rip), %xmm0
	cvttss2si	%xmm0, %rax
	sarq	$63, %rdx
	andq	%rdx, %rax
	orq	%rcx, %rax
	cmpq	$3, %rsi
	jb	.LBB56_69
# %bb.66:
	leaq	-1(%rsi), %rcx
	andq	%rsi, %rcx
	jne	.LBB56_69
# %bb.67:
	cmpq	$2, %rax
	jb	.LBB56_70
# %bb.68:
	decq	%rax
	movl	$127, %ecx
	bsrq	%rax, %rcx
	xorl	$63, %ecx
	negb	%cl
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rax
	jmp	.LBB56_70
.LBB56_69:
.Ltmp120:
	movq	%rax, %rcx
	callq	_ZNSt3__112__next_primeEy
.Ltmp121:
.LBB56_70:
	cmpq	%rax, %r14
	cmovbeq	%rax, %r14
	cmpq	%rsi, %r14
	jb	.LBB56_71
.LBB56_72:
	movq	8(%rdi), %rbp
	leaq	-1(%rbp), %rax
	testq	%rax, %rbp
	je	.LBB56_73
# %bb.74:
	cmpq	%rbp, %rbx
	jb	.LBB56_79
# %bb.75:
	movq	%rbx, %rax
	orq	%rbp, %rax
	shrq	$32, %rax
	je	.LBB56_76
# %bb.78:
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rbp
	movq	%rdx, %rbx
	jmp	.LBB56_79
.LBB56_73:
	andq	%rax, %rbx
	jmp	.LBB56_79
.LBB56_76:
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%ebp
	movl	%edx, %ebx
.LBB56_79:
	movq	(%rdi), %rcx
	movq	(%rcx,%rbx,8), %rax
	movq	48(%rsp), %rsi
	testq	%rax, %rax
	je	.LBB56_80
# %bb.88:
	movq	(%rax), %rcx
	movq	%rcx, (%rsi)
	movq	%rsi, (%rax)
	movq	40(%rsp), %r8                   # 8-byte Reload
.LBB56_89:
	incq	24(%rdi)
	movb	$1, %al
.LBB56_90:
	movq	%rsi, (%r8)
	movb	%al, 8(%r8)
	movq	%r8, %rax
	.seh_startepilogue
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB56_80:
	movq	(%r12), %rax
	movq	%rax, (%rsi)
	movq	%rsi, (%r12)
	movq	%r12, (%rcx,%rbx,8)
	movq	(%rsi), %rax
	testq	%rax, %rax
	movq	40(%rsp), %r8                   # 8-byte Reload
	je	.LBB56_89
# %bb.81:
	movq	8(%rax), %rax
	leaq	-1(%rbp), %rdx
	testq	%rdx, %rbp
	je	.LBB56_82
# %bb.83:
	cmpq	%rbp, %rax
	jb	.LBB56_87
# %bb.84:
	movq	%rax, %rdx
	orq	%rbp, %rdx
	shrq	$32, %rdx
	je	.LBB56_85
# %bb.86:
	xorl	%edx, %edx
	divq	%rbp
	movq	%rdx, %rax
.LBB56_87:
	movq	%rsi, (%rcx,%rax,8)
	jmp	.LBB56_89
.LBB56_82:
	andq	%rdx, %rax
	movq	%rsi, (%rcx,%rax,8)
	jmp	.LBB56_89
.LBB56_85:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ebp
	movl	%edx, %eax
	movq	%rsi, (%rcx,%rax,8)
	jmp	.LBB56_89
.LBB56_41:
.Ltmp117:
	jmp	.LBB56_42
.LBB56_77:
.Ltmp124:
.LBB56_42:
	movq	%rax, %rsi
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__110unique_ptrINS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__hash_node_destructorINS5_IS9_EEEEED2B8ne210107Ev
	movq	%rsi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end26:
	.seh_handlerdata
	.section	.text$_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JRS6_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_,"xr",discard,_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JRS6_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_
	.seh_endproc
	.section	.xdata$_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JRS6_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table56:
.Lexception26:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Lfunc_begin26-.Lfunc_begin26  # >> Call Site 1 <<
	.uleb128 .Ltmp115-.Lfunc_begin26        #   Call between .Lfunc_begin26 and .Ltmp115
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin26        # >> Call Site 2 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin26        #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin26        # >> Call Site 3 <<
	.uleb128 .Ltmp118-.Ltmp116              #   Call between .Ltmp116 and .Ltmp118
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin26        # >> Call Site 4 <<
	.uleb128 .Ltmp123-.Ltmp118              #   Call between .Ltmp118 and .Ltmp123
	.uleb128 .Ltmp124-.Lfunc_begin26        #     jumps to .Ltmp124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin26        # >> Call Site 5 <<
	.uleb128 .Ltmp120-.Ltmp123              #   Call between .Ltmp123 and .Ltmp120
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin26        # >> Call Site 6 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp124-.Lfunc_begin26        #     jumps to .Ltmp124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin26        # >> Call Site 7 <<
	.uleb128 .Lfunc_end26-.Ltmp121          #   Call between .Ltmp121 and .Lfunc_end26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end26:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JRS6_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_,"xr",discard,_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JRS6_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_
                                        # -- End function
	.def	_ZNSt3__110unique_ptrINS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__hash_node_destructorINS5_IS9_EEEEED2B8ne210107Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110unique_ptrINS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__hash_node_destructorINS5_IS9_EEEEED2B8ne210107Ev,"xr",discard,_ZNSt3__110unique_ptrINS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__hash_node_destructorINS5_IS9_EEEEED2B8ne210107Ev
	.globl	_ZNSt3__110unique_ptrINS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__hash_node_destructorINS5_IS9_EEEEED2B8ne210107Ev # -- Begin function _ZNSt3__110unique_ptrINS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__hash_node_destructorINS5_IS9_EEEEED2B8ne210107Ev
	.p2align	4
_ZNSt3__110unique_ptrINS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__hash_node_destructorINS5_IS9_EEEEED2B8ne210107Ev: # @_ZNSt3__110unique_ptrINS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__hash_node_destructorINS5_IS9_EEEEED2B8ne210107Ev
.seh_proc _ZNSt3__110unique_ptrINS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__hash_node_destructorINS5_IS9_EEEEED2B8ne210107Ev
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rax
	movq	(%rcx), %rcx
	movq	$0, (%rax)
	testq	%rcx, %rcx
	je	.LBB57_5
# %bb.1:
	cmpb	$1, 16(%rax)
	jne	.LBB57_4
# %bb.2:
	testb	$1, 16(%rcx)
	je	.LBB57_4
# %bb.3:
	movq	32(%rcx), %rax
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	_ZdlPv
	movq	%rsi, %rcx
.LBB57_4:
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	jmp	_ZdlPv                          # TAILCALL
.LBB57_5:
	nop
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE11__do_rehashILb1EEEvy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE11__do_rehashILb1EEEvy,"xr",discard,_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE11__do_rehashILb1EEEvy
	.globl	_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE11__do_rehashILb1EEEvy # -- Begin function _ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE11__do_rehashILb1EEEvy
	.p2align	4
_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE11__do_rehashILb1EEEvy: # @_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE11__do_rehashILb1EEEvy
.seh_proc _ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE11__do_rehashILb1EEEvy
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, %rbx
	testq	%rdx, %rdx
	je	.LBB58_30
# %bb.1:
	movq	%rdx, %rdi
	movq	%rdx, %rax
	shrq	$61, %rax
	jne	.LBB58_34
# %bb.2:
	leaq	(,%rdi,8), %r14
	movq	%r14, %rcx
	callq	_Znwy
	movq	(%rbx), %rcx
	movq	%rax, (%rbx)
	testq	%rcx, %rcx
	je	.LBB58_3
# %bb.4:
	callq	_ZdlPv
	movq	(%rbx), %rsi
	jmp	.LBB58_5
.LBB58_30:
	movq	(%rbx), %rcx
	movq	$0, (%rbx)
	testq	%rcx, %rcx
	je	.LBB58_32
# %bb.31:
	callq	_ZdlPv
.LBB58_32:
	movq	$0, 8(%rbx)
	jmp	.LBB58_33
.LBB58_3:
	movq	%rax, %rsi
.LBB58_5:
	movq	%rdi, 8(%rbx)
	movq	%rsi, %rcx
	xorl	%edx, %edx
	movq	%r14, %r8
	callq	memset
	movq	16(%rbx), %r8
	testq	%r8, %r8
	je	.LBB58_33
# %bb.6:
	addq	$16, %rbx
	movq	8(%r8), %rcx
	leaq	-1(%rdi), %rax
	testq	%rax, %rdi
	je	.LBB58_16
# %bb.7:
	cmpq	%rdi, %rcx
	jb	.LBB58_11
# %bb.8:
	movq	%rcx, %rax
	orq	%rdi, %rax
	shrq	$32, %rax
	je	.LBB58_9
# %bb.10:
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rdi
	movq	%rdx, %rcx
	jmp	.LBB58_11
.LBB58_16:
	andq	%rax, %rcx
	movq	%rbx, (%rsi,%rcx,8)
	jmp	.LBB58_17
	.p2align	4
.LBB58_19:                              #   in Loop: Header=BB58_17 Depth=1
	movq	%rdx, %r8
.LBB58_17:                              # =>This Inner Loop Header: Depth=1
	movq	(%r8), %rdx
	testq	%rdx, %rdx
	je	.LBB58_33
# %bb.18:                               #   in Loop: Header=BB58_17 Depth=1
	movq	8(%rdx), %r9
	andq	%rax, %r9
	cmpq	%rcx, %r9
	je	.LBB58_19
# %bb.20:                               #   in Loop: Header=BB58_17 Depth=1
	cmpq	$0, (%rsi,%r9,8)
	je	.LBB58_22
# %bb.21:                               #   in Loop: Header=BB58_17 Depth=1
	movq	(%rdx), %r10
	movq	%r10, (%r8)
	movq	(%rsi,%r9,8), %r10
	movq	(%r10), %r10
	movq	%r10, (%rdx)
	movq	(%rsi,%r9,8), %r9
	movq	%rdx, (%r9)
	jmp	.LBB58_17
.LBB58_22:                              #   in Loop: Header=BB58_17 Depth=1
	movq	%r8, (%rsi,%r9,8)
	movq	%rdx, %r8
	movq	%r9, %rcx
	jmp	.LBB58_17
.LBB58_9:
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%edx, %ecx
.LBB58_11:
	movq	%rbx, (%rsi,%rcx,8)
	movq	(%r8), %r9
	jmp	.LBB58_12
	.p2align	4
.LBB58_27:                              #   in Loop: Header=BB58_12 Depth=1
	movq	(%r9), %rdx
	movq	%rdx, (%r8)
	movq	(%rsi,%rax,8), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%r9)
	movq	(%rsi,%rax,8), %rax
	movq	%r9, (%rax)
	movq	%r8, %r9
.LBB58_28:                              #   in Loop: Header=BB58_12 Depth=1
	movq	%rcx, %rax
.LBB58_29:                              #   in Loop: Header=BB58_12 Depth=1
	movq	%r9, %r8
	movq	(%r9), %r9
	movq	%rax, %rcx
.LBB58_12:                              # =>This Inner Loop Header: Depth=1
	testq	%r9, %r9
	je	.LBB58_33
# %bb.13:                               #   in Loop: Header=BB58_12 Depth=1
	movq	8(%r9), %rax
	cmpq	%rdi, %rax
	jb	.LBB58_24
# %bb.14:                               #   in Loop: Header=BB58_12 Depth=1
	movq	%rax, %rdx
	orq	%rdi, %rdx
	shrq	$32, %rdx
	je	.LBB58_15
# %bb.23:                               #   in Loop: Header=BB58_12 Depth=1
	xorl	%edx, %edx
	divq	%rdi
	movq	%rdx, %rax
.LBB58_24:                              #   in Loop: Header=BB58_12 Depth=1
	cmpq	%rcx, %rax
	je	.LBB58_28
.LBB58_25:                              #   in Loop: Header=BB58_12 Depth=1
	cmpq	$0, (%rsi,%rax,8)
	jne	.LBB58_27
# %bb.26:                               #   in Loop: Header=BB58_12 Depth=1
	movq	%r8, (%rsi,%rax,8)
	jmp	.LBB58_29
.LBB58_15:                              #   in Loop: Header=BB58_12 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%edi
	movl	%edx, %eax
	cmpq	%rcx, %rax
	je	.LBB58_28
	jmp	.LBB58_25
.LBB58_33:
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
.LBB58_34:
	callq	_ZSt28__throw_bad_array_new_lengthB8ne210107v
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINSt3__16vectorINS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENSB_ISD_EEEEEEvPvRNS0_13parse_contextIcEERS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINSt3__16vectorINS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENSB_ISD_EEEEEEvPvRNS0_13parse_contextIcEERS3_,"xr",discard,_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINSt3__16vectorINS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENSB_ISD_EEEEEEvPvRNS0_13parse_contextIcEERS3_
	.globl	_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINSt3__16vectorINS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENSB_ISD_EEEEEEvPvRNS0_13parse_contextIcEERS3_ # -- Begin function _ZN3fmt3v126detail5valueINS0_7contextEE13format_customINSt3__16vectorINS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENSB_ISD_EEEEEEvPvRNS0_13parse_contextIcEERS3_
	.p2align	4
_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINSt3__16vectorINS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENSB_ISD_EEEEEEvPvRNS0_13parse_contextIcEERS3_: # @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINSt3__16vectorINS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENSB_ISD_EEEEEEvPvRNS0_13parse_contextIcEERS3_
.seh_proc _ZN3fmt3v126detail5valueINS0_7contextEE13format_customINSt3__16vectorINS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENSB_ISD_EEEEEEvPvRNS0_13parse_contextIcEERS3_
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$144, %rsp
	.seh_stackalloc 144
	.seh_endprologue
	movq	%r8, %rsi
	movq	%rdx, %rbx
	movq	%rcx, %rdi
	movl	$32768, 40(%rsp)                # imm = 0x8000
	movb	$32, 44(%rsp)
	movl	$0, 45(%rsp)
	movl	$0, 48(%rsp)
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	movq	%rax, 52(%rsp)
	movl	$0, 72(%rsp)
	leaq	_ZN3fmt3v126detail14string_literalIcJLc44ELc32EEE5valueE(%rip), %rax
	movq	%rax, 88(%rsp)
	movq	$2, 96(%rsp)
	leaq	_ZN3fmt3v126detail14string_literalIcJLc91EEE5valueE(%rip), %rax
	movq	%rax, 104(%rsp)
	movq	$1, 112(%rsp)
	leaq	_ZN3fmt3v126detail14string_literalIcJLc93EEE5valueE(%rip), %rax
	movq	%rax, 120(%rsp)
	movq	$1, 128(%rsp)
	movb	$0, 136(%rsp)
	leaq	40(%rsp), %rcx
	callq	_ZN3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE5parseERNS0_13parse_contextIcEE
	movq	(%rbx), %rcx
	subq	%rcx, %rax
	js	.LBB59_2
# %bb.1:
	addq	%rax, %rcx
	movq	%rcx, (%rbx)
	subq	%rax, 8(%rbx)
	leaq	40(%rsp), %rcx
	movq	%rdi, %rdx
	movq	%rsi, %r8
	callq	_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRKNS2_6vectorIS8_NS6_IS8_EEEENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_
	nop
	.seh_startepilogue
	addq	$144, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
.LBB59_2:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.22(%rip), %r8
	movl	$440, %edx                      # imm = 0x1B8
	callq	_ZN3fmt3v1211assert_failEPKciS2_
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE5parseERNS0_13parse_contextIcEE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE5parseERNS0_13parse_contextIcEE,"xr",discard,_ZN3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE5parseERNS0_13parse_contextIcEE
	.globl	_ZN3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE5parseERNS0_13parse_contextIcEE # -- Begin function _ZN3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE5parseERNS0_13parse_contextIcEE
	.p2align	4
_ZN3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE5parseERNS0_13parse_contextIcEE: # @_ZN3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE5parseERNS0_13parse_contextIcEE
.seh_proc _ZN3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE5parseERNS0_13parse_contextIcEE
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	movl	(%rcx), %ecx
	andl	$-8, %ecx
	leal	1(%rcx), %r10d
	movl	%r10d, (%r8)
	testq	%rdx, %rdx
	je	.LBB60_16
# %bb.1:
	movzbl	(%rax), %r11d
	cmpl	$110, %r11d
	je	.LBB60_7
# %bb.2:
	cmpl	$63, %r11d
	je	.LBB60_4
# %bb.3:
	movq	%rax, %r10
	cmpl	$115, %r11d
	je	.LBB60_6
# %bb.8:
	addq	%rdx, %rax
	movq	%rax, %r11
	cmpq	%rax, %r10
	jne	.LBB60_9
	jmp	.LBB60_12
.LBB60_7:
	leaq	1(%rax), %r10
	xorps	%xmm0, %xmm0
	movups	%xmm0, 80(%r8)
	movups	%xmm0, 64(%r8)
	addq	%rdx, %rax
	movq	%rax, %r11
	cmpq	%rax, %r10
	je	.LBB60_12
.LBB60_9:
	movzbl	(%r10), %eax
	cmpl	$58, %eax
	je	.LBB60_11
# %bb.10:
	movq	%r10, %r11
	cmpl	$125, %eax
	je	.LBB60_12
	jmp	.LBB60_6
.LBB60_11:
	movl	%ecx, (%r8)
	incq	%r10
	movq	%r10, %r11
.LBB60_12:
	movq	(%r9), %rdx
	subq	%rdx, %r11
	js	.LBB60_17
# %bb.13:
	leaq	(%rdx,%r11), %rax
	movq	%rax, (%r9)
	movq	8(%r9), %rcx
	movq	%rcx, %r10
	subq	%r11, %r10
	movq	%r10, 8(%r9)
	je	.LBB60_16
# %bb.14:
	cmpb	$125, (%rax)
	je	.LBB60_16
# %bb.15:
	addq	%rcx, %rdx
	movl	$13, 32(%rsp)
	movq	%rax, %rcx
	callq	_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE
.LBB60_16:
	nop
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
.LBB60_17:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.22(%rip), %r8
	movl	$440, %edx                      # imm = 0x1B8
	callq	_ZN3fmt3v1211assert_failEPKciS2_
.LBB60_4:
	movb	$1, 96(%r8)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 64(%r8)
	movups	%xmm0, 80(%r8)
	cmpq	$1, %rdx
	je	.LBB60_6
# %bb.5:
	cmpb	$115, 1(%rax)
.LBB60_6:
	leaq	.L.str.23(%rip), %rcx
	callq	_ZN3fmt3v1212report_errorEPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE,"xr",discard,_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE
	.globl	_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE # -- Begin function _ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE
	.p2align	4
_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE: # @_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE
.seh_proc _ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%r9, %rdi
	movq	%r8, %rsi
	movq	%rdx, %rbx
	movq	%rcx, %rdx
	movq	%rbx, %rax
	subq	%rcx, %rax
	cmpq	$2, %rax
	jl	.LBB61_4
# %bb.1:
	movzbl	1(%rdx), %eax
	addl	$-60, %eax
	cmpl	$34, %eax
	ja	.LBB61_5
# %bb.2:
	movabsq	$17179869189, %rcx              # imm = 0x400000005
	btq	%rax, %rcx
	jae	.LBB61_5
# %bb.3:
	xorl	%r8d, %r8d
	jmp	.LBB61_6
.LBB61_4:
	cmpq	%rbx, %rdx
	je	.LBB61_64
.LBB61_5:
	movzbl	(%rdx), %r8d
.LBB61_6:
	movl	192(%rsp), %ecx
	leal	-1(%rcx), %r13d
	movl	$1, %ebp
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %ebp
	leaq	32(%rsi), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	leaq	12(%rsi), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	leaq	16(%rsi), %r14
	leaq	8(%rsi), %r12
	xorl	%eax, %eax
	leaq	.LJTI61_0(%rip), %r15
	movzbl	%r8b, %ecx
	leal	-32(%rcx), %r9d
	cmpl	$93, %r9d
	ja	.LBB61_68
	.p2align	4
.LBB61_8:
	movslq	(%r15,%r9,4), %r9
	addq	%r15, %r9
	jmpq	*%r9
.LBB61_30:
	cmpl	$5, %eax
	jae	.LBB61_57
# %bb.31:
	movq	%rdi, 40(%rsp)
	movq	%r14, 32(%rsp)
	leaq	56(%rsp), %rcx
	movq	%rbx, %r8
	movq	%r12, %r9
	callq	_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE
	movl	64(%rsp), %eax
	movl	$-193, %ecx
	andl	(%rsi), %ecx
	shll	$6, %eax
	orl	%ecx, %eax
	movl	%eax, (%rsi)
	movq	56(%rsp), %rdx
	movl	$5, %eax
	jmp	.LBB61_85
.LBB61_9:
	testl	%eax, %eax
	jne	.LBB61_57
# %bb.10:
	cmpb	$60, %r8b
	je	.LBB61_11
# %bb.12:
	cmpl	$94, %ecx
	je	.LBB61_15
# %bb.13:
	cmpl	$62, %ecx
	jne	.LBB61_16
# %bb.14:
	movl	$16, %eax
	jmp	.LBB61_17
.LBB61_18:
	xorl	%ecx, %ecx
	cmpb	$32, %r8b
	sete	%cl
	shll	$10, %ecx
	movl	$-3073, %r8d                    # imm = 0xF3FF
	andl	(%rsi), %r8d
	addl	%r8d, %ecx
	addl	$2048, %ecx                     # imm = 0x800
	movl	%ecx, (%rsi)
.LBB61_19:
	testl	$3626, %ebp                     # imm = 0xE2A
	je	.LBB61_57
# %bb.20:
	cmpl	$2, %eax
	jae	.LBB61_57
# %bb.21:
	incq	%rdx
	movl	$2, %eax
	jmp	.LBB61_85
.LBB61_36:
	cmpl	$10, %r13d
	ja	.LBB61_57
# %bb.37:
	cmpl	$7, %eax
	jae	.LBB61_57
# %bb.38:
	orb	$64, 1(%rsi)
	incq	%rdx
	movl	$7, %eax
	jmp	.LBB61_85
.LBB61_22:
	cmpl	$10, %r13d
	ja	.LBB61_57
# %bb.23:
	cmpl	$3, %eax
	jae	.LBB61_57
# %bb.24:
	orb	$32, 1(%rsi)
	incq	%rdx
	movl	$3, %eax
	jmp	.LBB61_85
.LBB61_32:
	testl	$15872, %ebp                    # imm = 0x3E00
	je	.LBB61_57
# %bb.33:
	cmpl	$6, %eax
	jae	.LBB61_57
# %bb.34:
	incq	%rdx
	cmpq	%rbx, %rdx
	je	.LBB61_88
# %bb.35:
	movq	%rdi, 40(%rsp)
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 32(%rsp)
	leaq	56(%rsp), %rcx
	movq	%rbx, %r8
	movq	72(%rsp), %r9                   # 8-byte Reload
	callq	_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE
	movl	64(%rsp), %eax
	movl	$-769, %ecx                     # imm = 0xFCFF
	andl	(%rsi), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	movl	%eax, (%rsi)
	movq	56(%rsp), %rdx
	movl	$6, %eax
	jmp	.LBB61_85
.LBB61_25:
	cmpl	$4, %eax
	jae	.LBB61_57
# %bb.26:
	cmpl	$11, %r13d
	jae	.LBB61_87
# %bb.27:
	movl	(%rsi), %eax
	testb	$56, %al
	jne	.LBB61_29
# %bb.28:
	movb	$48, 4(%rsi)
	andl	$-229433, %eax                  # imm = 0xFFFC7FC7
	orl	$32800, %eax                    # imm = 0x8020
	movl	%eax, (%rsi)
.LBB61_29:
	incq	%rdx
	movl	$4, %eax
	jmp	.LBB61_85
.LBB61_68:
	movzbl	(%rdx), %r9d
	cmpq	$125, %r9
	je	.LBB61_64
# %bb.69:
	movl	%r9d, %ecx
	shrb	$2, %cl
	andb	$62, %cl
	movabsq	$4203265827220226048, %r8       # imm = 0x3A55000000000000
	shrq	%cl, %r8
	andl	$3, %r8d
	leaq	(%rdx,%r8), %rcx
	incq	%rcx
	movq	%rbx, %r10
	subq	%rcx, %r10
	testq	%r10, %r10
	jle	.LBB61_57
# %bb.70:
	cmpl	$123, %r9d
	je	.LBB61_89
# %bb.71:
	movzbl	(%rcx), %ecx
	cmpl	$60, %ecx
	je	.LBB61_72
# %bb.73:
	cmpl	$94, %ecx
	je	.LBB61_76
# %bb.74:
	cmpl	$62, %ecx
	jne	.LBB61_57
# %bb.75:
	movl	$16, %ecx
	jmp	.LBB61_77
.LBB61_15:
	movl	$24, %eax
	jmp	.LBB61_17
.LBB61_11:
	movl	$8, %eax
	jmp	.LBB61_17
.LBB61_16:
	xorl	%eax, %eax
.LBB61_17:
	movl	(%rsi), %ecx
	andl	$-57, %ecx
	orl	%eax, %ecx
	movl	%ecx, (%rsi)
	incq	%rdx
	jmp	.LBB61_84
.LBB61_76:
	movl	$24, %ecx
	jmp	.LBB61_77
.LBB61_72:
	movl	$8, %ecx
.LBB61_77:
	testl	%eax, %eax
	jne	.LBB61_57
# %bb.78:
	movl	(%rsi), %eax
	movl	$-229377, %r9d                  # imm = 0xFFFC7FFF
	andl	%r9d, %eax
	movl	%r8d, %r9d
	shll	$15, %r9d
	addl	%r9d, %eax
	addl	$32768, %eax                    # imm = 0x8000
	movl	%eax, (%rsi)
	testq	%r8, %r8
	je	.LBB61_79
# %bb.80:
	movzbl	(%rdx), %r9d
	movb	%r9b, 4(%rsi)
	movzbl	1(%rdx), %r9d
	movb	%r9b, 5(%rsi)
	cmpl	$1, %r8d
	je	.LBB61_83
# %bb.81:
	movzbl	2(%rdx), %r9d
	movb	%r9b, 6(%rsi)
	cmpl	$2, %r8d
	je	.LBB61_83
# %bb.82:
	movzbl	3(%rdx), %r9d
	movb	%r9b, 7(%rsi)
	jmp	.LBB61_83
.LBB61_79:
	movzbl	(%rdx), %r9d
	movb	%r9b, 4(%rsi)
	movw	$0, 5(%rsi)
.LBB61_83:
	addq	%r8, %rdx
	andl	$-57, %eax
	orl	%ecx, %eax
	movl	%eax, (%rsi)
	addq	$2, %rdx
.LBB61_84:
	movl	$1, %eax
	.p2align	4
.LBB61_85:
	cmpq	%rbx, %rdx
	je	.LBB61_64
# %bb.86:
	movzbl	(%rdx), %r8d
	movzbl	%r8b, %ecx
	leal	-32(%rcx), %r9d
	cmpl	$93, %r9d
	jbe	.LBB61_8
	jmp	.LBB61_68
.LBB61_58:
	orb	$16, 1(%rsi)
.LBB61_59:
	testl	$3584, %ebp                     # imm = 0xE00
	jne	.LBB61_43
	jmp	.LBB61_57
.LBB61_41:
	orb	$16, 1(%rsi)
.LBB61_42:
	testl	$510, %ebp                      # imm = 0x1FE
	je	.LBB61_57
.LBB61_43:
	movl	(%rsi), %eax
	andl	$-8, %eax
	orl	$4, %eax
	jmp	.LBB61_63
.LBB61_39:
	testl	$510, %ebp                      # imm = 0x1FE
	jne	.LBB61_40
	jmp	.LBB61_57
.LBB61_55:
	orb	$16, 1(%rsi)
.LBB61_56:
	testl	$3584, %ebp                     # imm = 0xE00
	jne	.LBB61_40
	jmp	.LBB61_57
.LBB61_52:
	orb	$16, 1(%rsi)
.LBB61_53:
	testl	$3584, %ebp                     # imm = 0xE00
	jne	.LBB61_54
	jmp	.LBB61_57
.LBB61_66:
	testl	$20480, %ebp                    # imm = 0x5000
	je	.LBB61_57
.LBB61_40:
	movl	(%rsi), %eax
	andl	$-8, %eax
	orl	$3, %eax
	jmp	.LBB61_63
.LBB61_60:
	movl	192(%rsp), %eax
	cmpl	$7, %eax
	je	.LBB61_57
# %bb.61:
	testl	$510, %ebp                      # imm = 0x1FE
	je	.LBB61_57
# %bb.62:
	movl	(%rsi), %eax
	orl	$7, %eax
	jmp	.LBB61_63
.LBB61_65:
	testl	$12416, %ebp                    # imm = 0x3080
	je	.LBB61_57
.LBB61_54:
	movl	(%rsi), %eax
	andl	$-8, %eax
	orl	$2, %eax
	jmp	.LBB61_63
.LBB61_49:
	orb	$16, 1(%rsi)
.LBB61_50:
	testl	$3584, %ebp                     # imm = 0xE00
	jne	.LBB61_51
	jmp	.LBB61_57
.LBB61_44:
	testl	$510, %ebp                      # imm = 0x1FE
	je	.LBB61_57
# %bb.45:
	movl	(%rsi), %eax
	andl	$-8, %eax
	orl	$5, %eax
	jmp	.LBB61_63
.LBB61_46:
	orb	$16, 1(%rsi)
.LBB61_47:
	testl	$510, %ebp                      # imm = 0x1FE
	je	.LBB61_57
# %bb.48:
	movl	(%rsi), %eax
	andl	$-8, %eax
	orl	$6, %eax
	jmp	.LBB61_63
.LBB61_67:
	testl	$12544, %ebp                    # imm = 0x3100
	je	.LBB61_57
.LBB61_51:
	movl	(%rsi), %eax
	andl	$-8, %eax
	incl	%eax
.LBB61_63:
	movl	%eax, (%rsi)
	incq	%rdx
.LBB61_64:
	movq	%rdx, %rax
	.seh_startepilogue
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB61_57:
	leaq	.L.str.23(%rip), %rcx
	callq	_ZN3fmt3v1212report_errorEPKc
.LBB61_87:
	leaq	.L.str.24(%rip), %rcx
	callq	_ZN3fmt3v1212report_errorEPKc
.LBB61_88:
	leaq	.L.str.31(%rip), %rcx
	callq	_ZN3fmt3v1212report_errorEPKc
.LBB61_89:
	leaq	.L.str.25(%rip), %rcx
	callq	_ZN3fmt3v1212report_errorEPKc
	int3
	.section	.rdata,"dr",associative,_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE,unique,0
	.p2align	2, 0x0
.LJTI61_0:
	.long	.LBB61_18-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_22-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_18-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_19-.LJTI61_0
	.long	.LBB61_32-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_25-.LJTI61_0
	.long	.LBB61_30-.LJTI61_0
	.long	.LBB61_30-.LJTI61_0
	.long	.LBB61_30-.LJTI61_0
	.long	.LBB61_30-.LJTI61_0
	.long	.LBB61_30-.LJTI61_0
	.long	.LBB61_30-.LJTI61_0
	.long	.LBB61_30-.LJTI61_0
	.long	.LBB61_30-.LJTI61_0
	.long	.LBB61_30-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_9-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_9-.LJTI61_0
	.long	.LBB61_67-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_58-.LJTI61_0
	.long	.LBB61_46-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_49-.LJTI61_0
	.long	.LBB61_52-.LJTI61_0
	.long	.LBB61_55-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_36-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_41-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_9-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_59-.LJTI61_0
	.long	.LBB61_47-.LJTI61_0
	.long	.LBB61_60-.LJTI61_0
	.long	.LBB61_39-.LJTI61_0
	.long	.LBB61_50-.LJTI61_0
	.long	.LBB61_53-.LJTI61_0
	.long	.LBB61_56-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_44-.LJTI61_0
	.long	.LBB61_66-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_65-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_42-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_30-.LJTI61_0
	.long	.LBB61_68-.LJTI61_0
	.long	.LBB61_64-.LJTI61_0
	.section	.text$_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE,"xr",discard,_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE,"xr",discard,_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE
	.globl	_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE # -- Begin function _ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE
	.p2align	4
_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE: # @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE
.seh_proc _ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$64, %rsp
	.seh_stackalloc 64
	.seh_endprologue
	cmpq	%r8, %rdx
	je	.LBB62_22
# %bb.1:
	movl	$0, 36(%rsp)
	movzbl	(%rdx), %esi
	leal	-48(%rsi), %eax
	cmpb	$9, %al
	ja	.LBB62_11
# %bb.2:
	leaq	1(%rdx), %rdi
	xorl	%eax, %eax
	.p2align	4
.LBB62_3:                               # =>This Inner Loop Header: Depth=1
	movl	%eax, %r11d
	movq	%rdi, %r10
	leal	(%r11,%r11,4), %eax
	movzbl	%sil, %esi
	leal	(%rsi,%rax,2), %eax
	addl	$-48, %eax
	cmpq	%r8, %rdi
	je	.LBB62_6
# %bb.4:                                #   in Loop: Header=BB62_3 Depth=1
	movzbl	(%r10), %esi
	leal	-48(%rsi), %ebx
	leaq	1(%r10), %rdi
	cmpb	$10, %bl
	jb	.LBB62_3
# %bb.5:
	decq	%rdi
	movq	%rdi, %r8
.LBB62_6:
	movq	%r8, %rsi
	subq	%rdx, %rsi
	cmpq	$10, %rsi
	jl	.LBB62_9
# %bb.7:
	jne	.LBB62_23
# %bb.8:
	movl	%r11d, %edx
	leaq	(%rdx,%rdx,4), %rdx
	movsbl	-1(%r10), %r10d
	addl	$-48, %r10d
	andl	$-2, %r10d
	leaq	(%r10,%rdx,2), %rdx
	cmpq	$2147483647, %rdx               # imm = 0x7FFFFFFF
	ja	.LBB62_23
.LBB62_9:
	cmpl	$-1, %eax
	je	.LBB62_23
# %bb.10:
	movl	%eax, (%r9)
	movq	%r8, (%rcx)
	movl	$0, 8(%rcx)
	jmp	.LBB62_21
.LBB62_11:
	cmpb	$123, %sil
	jne	.LBB62_25
# %bb.12:
	incq	%rdx
	cmpq	%r8, %rdx
	je	.LBB62_18
# %bb.13:
	movq	136(%rsp), %r9
	movq	128(%rsp), %rax
	movzbl	(%rdx), %r10d
	cmpl	$125, %r10d
	je	.LBB62_15
# %bb.14:
	cmpl	$58, %r10d
	jne	.LBB62_17
.LBB62_15:
	movl	16(%r9), %r10d
	testl	%r10d, %r10d
	js	.LBB62_24
# %bb.16:
	leal	1(%r10), %r11d
	movl	%r11d, 16(%r9)
	movl	%r10d, (%rax)
	movl	$1, 36(%rsp)
.LBB62_18:
	cmpq	%r8, %rdx
	je	.LBB62_25
.LBB62_19:
	cmpb	$125, (%rdx)
	jne	.LBB62_25
# %bb.20:
	incq	%rdx
	movq	%rdx, (%rcx)
	movl	36(%rsp), %eax
	movl	%eax, 8(%rcx)
.LBB62_21:
	movq	%rcx, %rax
	.seh_startepilogue
	addq	$64, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
.LBB62_17:
	movq	%r9, 40(%rsp)
	movq	%rax, 48(%rsp)
	leaq	36(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	40(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rcx
	movq	%r8, %rdx
	movq	%r8, %rdi
	movq	%rax, %r8
	callq	_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_
	movq	%rdi, %r8
	movq	%rsi, %rcx
	movq	%rax, %rdx
	cmpq	%r8, %rdx
	jne	.LBB62_19
.LBB62_25:
	leaq	.L.str.28(%rip), %rcx
	callq	_ZN3fmt3v1212report_errorEPKc
.LBB62_22:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.26(%rip), %r8
	movl	$1414, %edx                     # imm = 0x586
	callq	_ZN3fmt3v1211assert_failEPKciS2_
.LBB62_23:
	leaq	.L.str.27(%rip), %rcx
	callq	_ZN3fmt3v1212report_errorEPKc
.LBB62_24:
	leaq	.L.str.29(%rip), %rcx
	callq	_ZN3fmt3v1212report_errorEPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_,"xr",discard,_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_
	.globl	_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_ # -- Begin function _ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_
	.p2align	4
_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_: # @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_
.Lfunc_begin27:
.seh_proc _ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movzbl	(%rcx), %r10d
	leal	-48(%r10), %eax
	cmpb	$9, %al
	ja	.LBB63_21
# %bb.1:
	cmpb	$48, %r10b
	jne	.LBB63_2
# %bb.15:
	incq	%rcx
	xorl	%r9d, %r9d
	movq	%rcx, %rax
	jmp	.LBB63_16
.LBB63_21:
	cmpb	$95, %r10b
	je	.LBB63_23
# %bb.22:
	andb	$-33, %r10b
	addb	$-65, %r10b
	cmpb	$25, %r10b
	ja	.LBB63_33
.LBB63_23:
	leaq	1(%rcx), %rax
	.p2align	4
.LBB63_24:                              # =>This Inner Loop Header: Depth=1
	cmpq	%rdx, %rax
	je	.LBB63_25
# %bb.26:                               #   in Loop: Header=BB63_24 Depth=1
	movzbl	(%rax), %r9d
	leal	-48(%r9), %r10d
	incq	%rax
	cmpb	$10, %r10b
	jb	.LBB63_24
# %bb.27:                               #   in Loop: Header=BB63_24 Depth=1
	cmpb	$95, %r9b
	je	.LBB63_24
# %bb.28:                               #   in Loop: Header=BB63_24 Depth=1
	andb	$-33, %r9b
	addb	$-65, %r9b
	cmpb	$26, %r9b
	jb	.LBB63_24
# %bb.29:
	decq	%rax
	jmp	.LBB63_30
.LBB63_25:
	movq	%rdx, %rax
.LBB63_30:
	movq	%rax, %rdx
	subq	%rcx, %rdx
	js	.LBB63_34
# %bb.31:
	movq	8(%r8), %r9
	movq	%rcx, (%r9)
	movq	%rdx, 8(%r9)
	movq	16(%r8), %rcx
	movl	$2, (%rcx)
	movq	(%r8), %rcx
	jmp	.LBB63_32
.LBB63_2:
	cmpq	%rdx, %rcx
	je	.LBB63_6
# %bb.3:
	leaq	1(%rcx), %rax
	xorl	%r9d, %r9d
	.p2align	4
.LBB63_4:                               # =>This Inner Loop Header: Depth=1
	movl	%r9d, %esi
	movq	%rax, %r11
	leal	(%rsi,%rsi,4), %eax
	movzbl	%r10b, %r9d
	leal	(%r9,%rax,2), %r9d
	addl	$-48, %r9d
	cmpq	%rdx, %r11
	je	.LBB63_5
# %bb.8:                                #   in Loop: Header=BB63_4 Depth=1
	movzbl	(%r11), %r10d
	leal	-48(%r10), %edi
	leaq	1(%r11), %rax
	cmpb	$10, %dil
	jb	.LBB63_4
# %bb.9:
	decq	%rax
	movq	%rax, %r10
	subq	%rcx, %r10
	cmpq	$10, %r10
	jge	.LBB63_11
	jmp	.LBB63_16
.LBB63_5:
	movq	%rdx, %rax
	movq	%rax, %r10
	subq	%rcx, %r10
	cmpq	$10, %r10
	jl	.LBB63_16
.LBB63_11:
	jne	.LBB63_13
# %bb.12:
	movl	%esi, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	movsbl	-1(%r11), %r10d
	addl	$-48, %r10d
	andl	$-2, %r10d
	leaq	(%r10,%rcx,2), %rcx
	andq	$-2147483648, %rcx              # imm = 0x80000000
	je	.LBB63_16
.LBB63_13:
	movl	$2147483647, %r9d               # imm = 0x7FFFFFFF
.LBB63_16:
	cmpq	%rdx, %rax
	je	.LBB63_33
# %bb.17:
	movzbl	(%rax), %ecx
	cmpl	$58, %ecx
	je	.LBB63_19
# %bb.18:
	cmpl	$125, %ecx
	jne	.LBB63_33
.LBB63_19:
	movq	8(%r8), %rcx
	movl	%r9d, (%rcx)
	movq	16(%r8), %rcx
	movl	$1, (%rcx)
	movq	(%r8), %rcx
	cmpl	$0, 16(%rcx)
	jg	.LBB63_20
.LBB63_32:
	movl	$-1, 16(%rcx)
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
.LBB63_33:
	leaq	.L.str.28(%rip), %rcx
	callq	_ZN3fmt3v1212report_errorEPKc
.LBB63_34:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.22(%rip), %r8
	movl	$440, %edx                      # imm = 0x1B8
	callq	_ZN3fmt3v1211assert_failEPKciS2_
.LBB63_20:
	leaq	.L.str.30(%rip), %rcx
	callq	_ZN3fmt3v1212report_errorEPKc
.LBB63_6:
.Ltmp125:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.26(%rip), %r8
	movl	$1324, %edx                     # imm = 0x52C
	callq	_ZN3fmt3v1211assert_failEPKciS2_
.Ltmp126:
# %bb.7:
.LBB63_14:
.Ltmp127:
	movq	%rax, %rcx
	callq	__clang_call_terminate
	int3
.Lfunc_end27:
	.seh_handlerdata
	.section	.text$_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_,"xr",discard,_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_
	.seh_endproc
	.section	.xdata$_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table63:
.Lexception27:
	.byte	255                             # @LPStart Encoding = omit
	.byte	0                               # @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end27-.Lcst_begin27
.Lcst_begin27:
	.uleb128 .Lfunc_begin27-.Lfunc_begin27  # >> Call Site 1 <<
	.uleb128 .Ltmp125-.Lfunc_begin27        #   Call between .Lfunc_begin27 and .Ltmp125
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin27        # >> Call Site 2 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp127-.Lfunc_begin27        #     jumps to .Ltmp127
	.byte	1                               #   On action: 1
.Lcst_end27:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
	.section	.text$_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_,"xr",discard,_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_
                                        # -- End function
	.def	_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRKNS2_6vectorIS8_NS6_IS8_EEEENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRKNS2_6vectorIS8_NS6_IS8_EEEENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_,"xr",discard,_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRKNS2_6vectorIS8_NS6_IS8_EEEENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_
	.globl	_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRKNS2_6vectorIS8_NS6_IS8_EEEENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_ # -- Begin function _ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRKNS2_6vectorIS8_NS6_IS8_EEEENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_
	.p2align	4
_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRKNS2_6vectorIS8_NS6_IS8_EEEENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_: # @_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRKNS2_6vectorIS8_NS6_IS8_EEEENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_
.seh_proc _ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRKNS2_6vectorIS8_NS6_IS8_EEEENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	(%r8), %rsi
	cmpb	$0, 96(%rcx)
	jne	.LBB64_86
# %bb.1:
	movq	%r8, %rbx
	movq	%rcx, %rdi
	movq	(%rdx), %r12
	movq	8(%rdx), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	72(%rcx), %r15
	testq	%r15, %r15
	je	.LBB64_27
# %bb.2:
	movq	64(%rdi), %r13
	addq	%r13, %r15
	movq	8(%rsi), %rdx
	jmp	.LBB64_3
	.p2align	4
.LBB64_25:                              #   in Loop: Header=BB64_3 Depth=1
	movq	8(%rsi), %rdx
.LBB64_26:                              #   in Loop: Header=BB64_3 Depth=1
	addq	%rbp, %rdx
	movq	%rdx, 8(%rsi)
	addq	%rbp, %r13
	cmpq	%r15, %r13
	je	.LBB64_27
.LBB64_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB64_19 Depth 2
                                        #     Child Loop BB64_23 Depth 2
                                        #     Child Loop BB64_11 Depth 2
                                        #     Child Loop BB64_14 Depth 2
	movq	%r15, %rbp
	subq	%r13, %rbp
	js	.LBB64_87
# %bb.4:                                #   in Loop: Header=BB64_3 Depth=1
	movq	16(%rsi), %rax
	subq	%rdx, %rax
	cmpq	%rbp, %rax
	jae	.LBB64_6
# %bb.5:                                #   in Loop: Header=BB64_3 Depth=1
	addq	%rbp, %rdx
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rdx
	movq	16(%rsi), %rax
	subq	%rdx, %rax
	cmpq	%rax, %rbp
	cmovaeq	%rax, %rbp
.LBB64_6:                               #   in Loop: Header=BB64_3 Depth=1
	testq	%rbp, %rbp
	je	.LBB64_26
# %bb.7:                                #   in Loop: Header=BB64_3 Depth=1
	movq	(%rsi), %rax
	leaq	(%rax,%rdx), %rcx
	cmpq	$3, %rbp
	jbe	.LBB64_8
# %bb.15:                               #   in Loop: Header=BB64_3 Depth=1
	movq	%rcx, %r8
	subq	%r13, %r8
	cmpq	$32, %r8
	jae	.LBB64_16
.LBB64_8:                               #   in Loop: Header=BB64_3 Depth=1
	xorl	%r8d, %r8d
.LBB64_9:                               #   in Loop: Header=BB64_3 Depth=1
	movq	%rbp, %r10
	movq	%r8, %r9
	andq	$3, %r10
	je	.LBB64_12
# %bb.10:                               #   in Loop: Header=BB64_3 Depth=1
	movq	%r8, %r9
	.p2align	4
.LBB64_11:                              #   Parent Loop BB64_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r13,%r9), %r11d
	movb	%r11b, (%rcx,%r9)
	incq	%r9
	decq	%r10
	jne	.LBB64_11
.LBB64_12:                              #   in Loop: Header=BB64_3 Depth=1
	subq	%rbp, %r8
	cmpq	$-4, %r8
	ja	.LBB64_25
# %bb.13:                               #   in Loop: Header=BB64_3 Depth=1
	addq	%rdx, %rax
	addq	$3, %rax
	.p2align	4
.LBB64_14:                              #   Parent Loop BB64_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r13,%r9), %ecx
	movb	%cl, -3(%rax,%r9)
	movzbl	1(%r13,%r9), %ecx
	movb	%cl, -2(%rax,%r9)
	movzbl	2(%r13,%r9), %ecx
	movb	%cl, -1(%rax,%r9)
	movzbl	3(%r13,%r9), %ecx
	movb	%cl, (%rax,%r9)
	addq	$4, %r9
	cmpq	%r9, %rbp
	jne	.LBB64_14
	jmp	.LBB64_25
.LBB64_16:                              #   in Loop: Header=BB64_3 Depth=1
	cmpq	$32, %rbp
	jae	.LBB64_18
# %bb.17:                               #   in Loop: Header=BB64_3 Depth=1
	xorl	%r8d, %r8d
	jmp	.LBB64_22
.LBB64_18:                              #   in Loop: Header=BB64_3 Depth=1
	movq	%rbp, %r8
	andq	$-32, %r8
	leaq	(%rax,%rdx), %r9
	addq	$16, %r9
	xorl	%r10d, %r10d
	.p2align	4
.LBB64_19:                              #   Parent Loop BB64_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r13,%r10), %xmm0
	movups	16(%r13,%r10), %xmm1
	movups	%xmm0, -16(%r9,%r10)
	movups	%xmm1, (%r9,%r10)
	addq	$32, %r10
	cmpq	%r10, %r8
	jne	.LBB64_19
# %bb.20:                               #   in Loop: Header=BB64_3 Depth=1
	cmpq	%r8, %rbp
	je	.LBB64_25
# %bb.21:                               #   in Loop: Header=BB64_3 Depth=1
	testb	$28, %bpl
	je	.LBB64_9
.LBB64_22:                              #   in Loop: Header=BB64_3 Depth=1
	movq	%r8, %r9
	movq	%rbp, %r8
	andq	$-4, %r8
	.p2align	4
.LBB64_23:                              #   Parent Loop BB64_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r13,%r9), %r10d
	movl	%r10d, (%rcx,%r9)
	addq	$4, %r9
	cmpq	%r9, %r8
	jne	.LBB64_23
# %bb.24:                               #   in Loop: Header=BB64_3 Depth=1
	cmpq	%r8, %rbp
	je	.LBB64_25
	jmp	.LBB64_9
.LBB64_27:
	cmpq	48(%rsp), %r12                  # 8-byte Folded Reload
	je	.LBB64_60
# %bb.28:
	leaq	16(%rdi), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	leaq	32(%rdi), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	xorl	%ebp, %ebp
	jmp	.LBB64_29
	.p2align	4
.LBB64_56:                              #   in Loop: Header=BB64_29 Depth=1
	movzbl	(%r12), %eax
	leaq	1(%r12), %r14
	movl	%eax, %esi
	shrl	%esi
	testb	$1, %al
	cmovneq	16(%r12), %r14
	cmovneq	8(%r12), %rsi
	movzwl	(%rdi), %eax
	testl	$960, %eax                      # imm = 0x3C0
	je	.LBB64_57
# %bb.58:                               #   in Loop: Header=BB64_29 Depth=1
	movups	(%rdi), %xmm0
	movaps	%xmm0, 32(%rsp)
	movl	32(%rsp), %ecx
	shrl	$6, %ecx
	andl	$3, %ecx
	leaq	40(%rsp), %rdx
	movq	80(%rsp), %r8                   # 8-byte Reload
	movq	%rbx, %r9
	callq	_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_
	movl	32(%rsp), %ecx
	shrl	$8, %ecx
	andl	$3, %ecx
	leaq	44(%rsp), %rdx
	movq	72(%rsp), %r8                   # 8-byte Reload
	movq	%rbx, %r9
	callq	_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_
	movq	(%rbx), %rcx
	movq	%r14, 56(%rsp)
	movq	%rsi, 64(%rsp)
	leaq	56(%rsp), %rdx
	leaq	32(%rsp), %r8
.LBB64_59:                              #   in Loop: Header=BB64_29 Depth=1
	callq	_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsE
	movq	%rax, %rsi
	incl	%ebp
	addq	$24, %r12
	cmpq	48(%rsp), %r12                  # 8-byte Folded Reload
	je	.LBB64_60
.LBB64_29:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB64_32 Depth 2
                                        #       Child Loop BB64_48 Depth 3
                                        #       Child Loop BB64_52 Depth 3
                                        #       Child Loop BB64_40 Depth 3
                                        #       Child Loop BB64_43 Depth 3
	testl	%ebp, %ebp
	je	.LBB64_56
# %bb.30:                               #   in Loop: Header=BB64_29 Depth=1
	movq	56(%rdi), %r14
	testq	%r14, %r14
	je	.LBB64_56
# %bb.31:                               #   in Loop: Header=BB64_29 Depth=1
	movq	48(%rdi), %r13
	addq	%r13, %r14
	movq	8(%rsi), %rdx
	jmp	.LBB64_32
	.p2align	4
.LBB64_54:                              #   in Loop: Header=BB64_32 Depth=2
	movq	8(%rsi), %rdx
.LBB64_55:                              #   in Loop: Header=BB64_32 Depth=2
	addq	%r15, %rdx
	movq	%rdx, 8(%rsi)
	addq	%r15, %r13
	cmpq	%r14, %r13
	je	.LBB64_56
.LBB64_32:                              #   Parent Loop BB64_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB64_48 Depth 3
                                        #       Child Loop BB64_52 Depth 3
                                        #       Child Loop BB64_40 Depth 3
                                        #       Child Loop BB64_43 Depth 3
	movq	%r14, %r15
	subq	%r13, %r15
	js	.LBB64_87
# %bb.33:                               #   in Loop: Header=BB64_32 Depth=2
	movq	16(%rsi), %rax
	subq	%rdx, %rax
	cmpq	%r15, %rax
	jae	.LBB64_35
# %bb.34:                               #   in Loop: Header=BB64_32 Depth=2
	addq	%r15, %rdx
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rdx
	movq	16(%rsi), %rax
	subq	%rdx, %rax
	cmpq	%rax, %r15
	cmovaeq	%rax, %r15
.LBB64_35:                              #   in Loop: Header=BB64_32 Depth=2
	testq	%r15, %r15
	je	.LBB64_55
# %bb.36:                               #   in Loop: Header=BB64_32 Depth=2
	movq	(%rsi), %rax
	leaq	(%rax,%rdx), %rcx
	cmpq	$3, %r15
	jbe	.LBB64_37
# %bb.44:                               #   in Loop: Header=BB64_32 Depth=2
	movq	%rcx, %r8
	subq	%r13, %r8
	cmpq	$32, %r8
	jae	.LBB64_45
.LBB64_37:                              #   in Loop: Header=BB64_32 Depth=2
	xorl	%r8d, %r8d
.LBB64_38:                              #   in Loop: Header=BB64_32 Depth=2
	movq	%r15, %r10
	movq	%r8, %r9
	andq	$3, %r10
	je	.LBB64_41
# %bb.39:                               #   in Loop: Header=BB64_32 Depth=2
	movq	%r8, %r9
	.p2align	4
.LBB64_40:                              #   Parent Loop BB64_29 Depth=1
                                        #     Parent Loop BB64_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r13,%r9), %r11d
	movb	%r11b, (%rcx,%r9)
	incq	%r9
	decq	%r10
	jne	.LBB64_40
.LBB64_41:                              #   in Loop: Header=BB64_32 Depth=2
	subq	%r15, %r8
	cmpq	$-4, %r8
	ja	.LBB64_54
# %bb.42:                               #   in Loop: Header=BB64_32 Depth=2
	addq	%rdx, %rax
	addq	$3, %rax
	.p2align	4
.LBB64_43:                              #   Parent Loop BB64_29 Depth=1
                                        #     Parent Loop BB64_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r13,%r9), %ecx
	movb	%cl, -3(%rax,%r9)
	movzbl	1(%r13,%r9), %ecx
	movb	%cl, -2(%rax,%r9)
	movzbl	2(%r13,%r9), %ecx
	movb	%cl, -1(%rax,%r9)
	movzbl	3(%r13,%r9), %ecx
	movb	%cl, (%rax,%r9)
	addq	$4, %r9
	cmpq	%r9, %r15
	jne	.LBB64_43
	jmp	.LBB64_54
.LBB64_45:                              #   in Loop: Header=BB64_32 Depth=2
	cmpq	$32, %r15
	jae	.LBB64_47
# %bb.46:                               #   in Loop: Header=BB64_32 Depth=2
	xorl	%r8d, %r8d
	jmp	.LBB64_51
.LBB64_47:                              #   in Loop: Header=BB64_32 Depth=2
	movq	%r15, %r8
	andq	$-32, %r8
	leaq	(%rax,%rdx), %r9
	addq	$16, %r9
	xorl	%r10d, %r10d
	.p2align	4
.LBB64_48:                              #   Parent Loop BB64_29 Depth=1
                                        #     Parent Loop BB64_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%r13,%r10), %xmm0
	movups	16(%r13,%r10), %xmm1
	movups	%xmm0, -16(%r9,%r10)
	movups	%xmm1, (%r9,%r10)
	addq	$32, %r10
	cmpq	%r10, %r8
	jne	.LBB64_48
# %bb.49:                               #   in Loop: Header=BB64_32 Depth=2
	cmpq	%r8, %r15
	je	.LBB64_54
# %bb.50:                               #   in Loop: Header=BB64_32 Depth=2
	testb	$28, %r15b
	je	.LBB64_38
.LBB64_51:                              #   in Loop: Header=BB64_32 Depth=2
	movq	%r8, %r9
	movq	%r15, %r8
	andq	$-4, %r8
	.p2align	4
.LBB64_52:                              #   Parent Loop BB64_29 Depth=1
                                        #     Parent Loop BB64_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%r13,%r9), %r10d
	movl	%r10d, (%rcx,%r9)
	addq	$4, %r9
	cmpq	%r9, %r8
	jne	.LBB64_52
# %bb.53:                               #   in Loop: Header=BB64_32 Depth=2
	cmpq	%r8, %r15
	je	.LBB64_54
	jmp	.LBB64_38
	.p2align	4
.LBB64_57:                              #   in Loop: Header=BB64_29 Depth=1
	movq	(%rbx), %rcx
	movq	%r14, 56(%rsp)
	movq	%rsi, 64(%rsp)
	leaq	56(%rsp), %rdx
	movq	%rdi, %r8
	jmp	.LBB64_59
.LBB64_60:
	movq	88(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB64_86
# %bb.61:
	movq	80(%rdi), %rdi
	addq	%rdi, %rbx
	movq	8(%rsi), %rdx
	jmp	.LBB64_62
	.p2align	4
.LBB64_84:                              #   in Loop: Header=BB64_62 Depth=1
	movq	8(%rsi), %rdx
.LBB64_85:                              #   in Loop: Header=BB64_62 Depth=1
	addq	%r14, %rdx
	movq	%rdx, 8(%rsi)
	addq	%r14, %rdi
	cmpq	%rbx, %rdi
	je	.LBB64_86
.LBB64_62:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB64_78 Depth 2
                                        #     Child Loop BB64_82 Depth 2
                                        #     Child Loop BB64_70 Depth 2
                                        #     Child Loop BB64_73 Depth 2
	movq	%rbx, %r14
	subq	%rdi, %r14
	js	.LBB64_87
# %bb.63:                               #   in Loop: Header=BB64_62 Depth=1
	movq	16(%rsi), %rax
	subq	%rdx, %rax
	cmpq	%r14, %rax
	jae	.LBB64_65
# %bb.64:                               #   in Loop: Header=BB64_62 Depth=1
	addq	%r14, %rdx
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rdx
	movq	16(%rsi), %rax
	subq	%rdx, %rax
	cmpq	%rax, %r14
	cmovaeq	%rax, %r14
.LBB64_65:                              #   in Loop: Header=BB64_62 Depth=1
	testq	%r14, %r14
	je	.LBB64_85
# %bb.66:                               #   in Loop: Header=BB64_62 Depth=1
	movq	(%rsi), %rax
	leaq	(%rax,%rdx), %rcx
	cmpq	$3, %r14
	jbe	.LBB64_67
# %bb.74:                               #   in Loop: Header=BB64_62 Depth=1
	movq	%rcx, %r8
	subq	%rdi, %r8
	cmpq	$32, %r8
	jae	.LBB64_75
.LBB64_67:                              #   in Loop: Header=BB64_62 Depth=1
	xorl	%r8d, %r8d
.LBB64_68:                              #   in Loop: Header=BB64_62 Depth=1
	movq	%r14, %r10
	movq	%r8, %r9
	andq	$3, %r10
	je	.LBB64_71
# %bb.69:                               #   in Loop: Header=BB64_62 Depth=1
	movq	%r8, %r9
	.p2align	4
.LBB64_70:                              #   Parent Loop BB64_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%r9), %r11d
	movb	%r11b, (%rcx,%r9)
	incq	%r9
	decq	%r10
	jne	.LBB64_70
.LBB64_71:                              #   in Loop: Header=BB64_62 Depth=1
	subq	%r14, %r8
	cmpq	$-4, %r8
	ja	.LBB64_84
# %bb.72:                               #   in Loop: Header=BB64_62 Depth=1
	addq	%rdx, %rax
	addq	$3, %rax
	.p2align	4
.LBB64_73:                              #   Parent Loop BB64_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%r9), %ecx
	movb	%cl, -3(%rax,%r9)
	movzbl	1(%rdi,%r9), %ecx
	movb	%cl, -2(%rax,%r9)
	movzbl	2(%rdi,%r9), %ecx
	movb	%cl, -1(%rax,%r9)
	movzbl	3(%rdi,%r9), %ecx
	movb	%cl, (%rax,%r9)
	addq	$4, %r9
	cmpq	%r9, %r14
	jne	.LBB64_73
	jmp	.LBB64_84
.LBB64_75:                              #   in Loop: Header=BB64_62 Depth=1
	cmpq	$32, %r14
	jae	.LBB64_77
# %bb.76:                               #   in Loop: Header=BB64_62 Depth=1
	xorl	%r8d, %r8d
	jmp	.LBB64_81
.LBB64_77:                              #   in Loop: Header=BB64_62 Depth=1
	movq	%r14, %r8
	andq	$-32, %r8
	leaq	(%rax,%rdx), %r9
	addq	$16, %r9
	xorl	%r10d, %r10d
	.p2align	4
.LBB64_78:                              #   Parent Loop BB64_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%rdi,%r10), %xmm0
	movups	16(%rdi,%r10), %xmm1
	movups	%xmm0, -16(%r9,%r10)
	movups	%xmm1, (%r9,%r10)
	addq	$32, %r10
	cmpq	%r10, %r8
	jne	.LBB64_78
# %bb.79:                               #   in Loop: Header=BB64_62 Depth=1
	cmpq	%r8, %r14
	je	.LBB64_84
# %bb.80:                               #   in Loop: Header=BB64_62 Depth=1
	testb	$28, %r14b
	je	.LBB64_68
.LBB64_81:                              #   in Loop: Header=BB64_62 Depth=1
	movq	%r8, %r9
	movq	%r14, %r8
	andq	$-4, %r8
	.p2align	4
.LBB64_82:                              #   Parent Loop BB64_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi,%r9), %r10d
	movl	%r10d, (%rcx,%r9)
	addq	$4, %r9
	cmpq	%r9, %r8
	jne	.LBB64_82
# %bb.83:                               #   in Loop: Header=BB64_62 Depth=1
	cmpq	%r8, %r14
	je	.LBB64_84
	jmp	.LBB64_68
.LBB64_86:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB64_87:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.22(%rip), %r8
	movl	$440, %edx                      # imm = 0x1B8
	callq	_ZN3fmt3v1211assert_failEPKciS2_
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_,"xr",discard,_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_
	.globl	_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_ # -- Begin function _ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_
	.p2align	4
_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_: # @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_
.seh_proc _ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	testl	%ecx, %ecx
	je	.LBB65_25
# %bb.1:
	movq	%rdx, %rsi
	cmpl	$1, %ecx
	jne	.LBB65_6
# %bb.2:
	movslq	(%r8), %rax
	movl	%eax, %ecx
	movl	$0, 64(%rsp)
	movq	8(%r9), %rdx
	testq	%rdx, %rdx
	js	.LBB65_18
# %bb.3:
	cmpl	$14, %ecx
	ja	.LBB65_22
# %bb.4:
	shll	$2, %ecx
                                        # kill: def $cl killed $cl killed $rcx
	shrq	%cl, %rdx
	andl	$15, %edx
	movl	%edx, 64(%rsp)
	je	.LBB65_22
# %bb.5:
	movq	16(%r9), %rcx
	shlq	$4, %rax
	jmp	.LBB65_20
.LBB65_6:
	movq	8(%r9), %r12
	btq	$62, %r12
	jae	.LBB65_17
# %bb.7:
	movq	16(%r9), %rcx
	xorl	%eax, %eax
	testq	%r12, %r12
	setns	%al
	shll	$4, %eax
	orq	$-32, %rax
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	8(%rcx,%rax), %r13
	testq	%r13, %r13
	je	.LBB65_17
# %bb.8:
	movq	(%r8), %rdi
	movq	8(%r8), %r15
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%rax), %rbp
	addq	$8, %rbp
	jmp	.LBB65_10
	.p2align	4
.LBB65_9:                               #   in Loop: Header=BB65_10 Depth=1
	addq	$16, %rbp
	decq	%r13
	je	.LBB65_17
.LBB65_10:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rbx
	movq	%rbx, %rcx
	callq	strlen
	movq	%rax, %r14
	cmpq	%r15, %rax
	movq	%r15, %r8
	cmovbq	%rax, %r8
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	callq	memcmp
	cmpq	%r15, %r14
	jne	.LBB65_9
# %bb.11:                               #   in Loop: Header=BB65_10 Depth=1
	testl	%eax, %eax
	jne	.LBB65_9
# %bb.12:
	movl	(%rbp), %eax
	testl	%eax, %eax
	js	.LBB65_17
# %bb.13:
	movl	$0, 64(%rsp)
	testq	%r12, %r12
	js	.LBB65_26
# %bb.14:
	cmpl	$14, %eax
	ja	.LBB65_22
# %bb.15:
	leal	(,%rax,4), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %r12
	andl	$15, %r12d
	movl	%r12d, 64(%rsp)
	je	.LBB65_22
# %bb.16:
	shlq	$4, %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	jmp	.LBB65_20
.LBB65_17:
	movl	$0, 64(%rsp)
	jmp	.LBB65_22
.LBB65_18:
	cmpl	%edx, %ecx
	jge	.LBB65_22
# %bb.19:
	movq	16(%r9), %rcx
	shlq	$5, %rax
	movl	16(%rcx,%rax), %edx
	movl	%edx, 64(%rsp)
.LBB65_20:
	movaps	(%rcx,%rax), %xmm0
.LBB65_21:
	movaps	%xmm0, 48(%rsp)
.LBB65_22:
	cmpl	$0, 64(%rsp)
	je	.LBB65_28
# %bb.23:
	leaq	48(%rsp), %rcx
	leaq	39(%rsp), %rdx
	callq	_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_
	testq	$-2147483648, %rax              # imm = 0x80000000
	jne	.LBB65_29
# %bb.24:
	movl	%eax, (%rsi)
.LBB65_25:
	.seh_startepilogue
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB65_26:
	cmpl	%r12d, %eax
	jge	.LBB65_22
# %bb.27:
	shlq	$5, %rax
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movl	16(%rdx,%rax), %ecx
	movl	%ecx, 64(%rsp)
	movaps	(%rdx,%rax), %xmm0
	jmp	.LBB65_21
.LBB65_28:
	leaq	.L.str.37(%rip), %rcx
	callq	_ZN3fmt3v1212report_errorEPKc
.LBB65_29:
	leaq	.L.str.38(%rip), %rcx
	callq	_ZN3fmt3v1212report_errorEPKc
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsE,"xr",discard,_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsE
	.globl	_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsE # -- Begin function _ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsE
	.p2align	4
_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsE: # @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsE
.seh_proc _ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsE
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$152, %rsp
	.seh_stackalloc 152
	.seh_endprologue
	movq	%r8, %rbx
	movl	(%r8), %ebp
	andl	$7, %ebp
	cmpl	$1, %ebp
	sete	55(%rsp)
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movslq	12(%r8), %rax
	testq	%rax, %rax
	jns	.LBB66_32
# %bb.1:
	cmpl	$0, 8(%rbx)
	jne	.LBB66_32
# %bb.2:
	movq	8(%rsi), %rdx
	addq	8(%rdi), %rdx
	cmpq	16(%rsi), %rdx
	jbe	.LBB66_4
# %bb.3:
	movq	%rsi, %rcx
	callq	*24(%rsi)
.LBB66_4:
	cmpl	$1, %ebp
	jne	.LBB66_6
# %bb.5:
	movups	(%rdi), %xmm0
	movaps	%xmm0, 128(%rsp)
	leaq	128(%rsp), %rdx
	movq	%rsi, %rcx
	callq	_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE
	jmp	.LBB66_60
.LBB66_32:
	cmpl	$1, %ebp
	sete	%cl
	testl	%eax, %eax
	movq	$-1, %rdx
	cmovnsq	%rax, %rdx
	movq	%rdx, 120(%rsp)
	setne	%al
	andb	%cl, %al
	movzbl	%al, %eax
	movq	%rax, 72(%rsp)
	movq	%rax, 64(%rsp)
	movq	(%rdi), %r12
	movq	8(%rdi), %r13
	leaq	55(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	120(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	%rdi, 112(%rsp)
	movq	%r12, %r14
	cmpq	$4, %r13
	jb	.LBB66_36
# %bb.33:
	leaq	(%r12,%r13), %rbp
	addq	$-3, %rbp
	leaq	80(%rsp), %r15
	movq	%r12, %r14
	.p2align	4
.LBB66_34:                              # =>This Inner Loop Header: Depth=1
	cmpq	%rbp, %r14
	jae	.LBB66_36
# %bb.35:                               #   in Loop: Header=BB66_34 Depth=1
	movq	%r15, %rcx
	movq	%r14, %rdx
	movq	%r14, %r8
	callq	_ZZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUljNSC_IcEEE_EEvSH_S8_ENKUlPKcSK_E_clESK_SK_
	movq	%rax, %r14
	testq	%rax, %rax
	jne	.LBB66_34
	jmp	.LBB66_59
.LBB66_36:
	addq	%r13, %r12
	movq	%r12, %rax
	subq	%r14, %rax
	js	.LBB66_62
# %bb.37:
	je	.LBB66_59
# %bb.38:
	movl	$0, 59(%rsp)
	movl	$0, 56(%rsp)
	leaq	56(%rsp), %rcx
	cmpq	$4, %rax
	jb	.LBB66_39
# %bb.40:
	movq	%rcx, %r8
	subq	%r14, %r8
	movq	%r14, %rdx
	cmpq	$32, %r8
	jb	.LBB66_51
# %bb.41:
	movabsq	$9223372036854775776, %r8       # imm = 0x7FFFFFFFFFFFFFE0
	cmpq	$32, %rax
	jae	.LBB66_46
# %bb.42:
	xorl	%r9d, %r9d
	jmp	.LBB66_43
.LBB66_6:
	movq	8(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB66_61
# %bb.7:
	movq	(%rdi), %rdi
	addq	%rdi, %rbx
	movq	8(%rsi), %rdx
	jmp	.LBB66_8
	.p2align	4
.LBB66_30:                              #   in Loop: Header=BB66_8 Depth=1
	movq	8(%rsi), %rdx
.LBB66_31:                              #   in Loop: Header=BB66_8 Depth=1
	addq	%r14, %rdx
	movq	%rdx, 8(%rsi)
	addq	%r14, %rdi
	cmpq	%rbx, %rdi
	je	.LBB66_61
.LBB66_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_24 Depth 2
                                        #     Child Loop BB66_28 Depth 2
                                        #     Child Loop BB66_16 Depth 2
                                        #     Child Loop BB66_19 Depth 2
	movq	%rbx, %r14
	subq	%rdi, %r14
	js	.LBB66_62
# %bb.9:                                #   in Loop: Header=BB66_8 Depth=1
	movq	16(%rsi), %rax
	subq	%rdx, %rax
	cmpq	%r14, %rax
	jae	.LBB66_11
# %bb.10:                               #   in Loop: Header=BB66_8 Depth=1
	addq	%r14, %rdx
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rdx
	movq	16(%rsi), %rax
	subq	%rdx, %rax
	cmpq	%rax, %r14
	cmovaeq	%rax, %r14
.LBB66_11:                              #   in Loop: Header=BB66_8 Depth=1
	testq	%r14, %r14
	je	.LBB66_31
# %bb.12:                               #   in Loop: Header=BB66_8 Depth=1
	movq	(%rsi), %rax
	leaq	(%rax,%rdx), %rcx
	cmpq	$3, %r14
	jbe	.LBB66_13
# %bb.20:                               #   in Loop: Header=BB66_8 Depth=1
	movq	%rcx, %r8
	subq	%rdi, %r8
	cmpq	$32, %r8
	jae	.LBB66_21
.LBB66_13:                              #   in Loop: Header=BB66_8 Depth=1
	xorl	%r8d, %r8d
.LBB66_14:                              #   in Loop: Header=BB66_8 Depth=1
	movq	%r14, %r10
	movq	%r8, %r9
	andq	$3, %r10
	je	.LBB66_17
# %bb.15:                               #   in Loop: Header=BB66_8 Depth=1
	movq	%r8, %r9
	.p2align	4
.LBB66_16:                              #   Parent Loop BB66_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%r9), %r11d
	movb	%r11b, (%rcx,%r9)
	incq	%r9
	decq	%r10
	jne	.LBB66_16
.LBB66_17:                              #   in Loop: Header=BB66_8 Depth=1
	subq	%r14, %r8
	cmpq	$-4, %r8
	ja	.LBB66_30
# %bb.18:                               #   in Loop: Header=BB66_8 Depth=1
	addq	%rdx, %rax
	addq	$3, %rax
	.p2align	4
.LBB66_19:                              #   Parent Loop BB66_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%r9), %ecx
	movb	%cl, -3(%rax,%r9)
	movzbl	1(%rdi,%r9), %ecx
	movb	%cl, -2(%rax,%r9)
	movzbl	2(%rdi,%r9), %ecx
	movb	%cl, -1(%rax,%r9)
	movzbl	3(%rdi,%r9), %ecx
	movb	%cl, (%rax,%r9)
	addq	$4, %r9
	cmpq	%r9, %r14
	jne	.LBB66_19
	jmp	.LBB66_30
.LBB66_21:                              #   in Loop: Header=BB66_8 Depth=1
	cmpq	$32, %r14
	jae	.LBB66_23
# %bb.22:                               #   in Loop: Header=BB66_8 Depth=1
	xorl	%r8d, %r8d
	jmp	.LBB66_27
.LBB66_23:                              #   in Loop: Header=BB66_8 Depth=1
	movq	%r14, %r8
	andq	$-32, %r8
	leaq	(%rax,%rdx), %r9
	addq	$16, %r9
	xorl	%r10d, %r10d
	.p2align	4
.LBB66_24:                              #   Parent Loop BB66_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%rdi,%r10), %xmm0
	movups	16(%rdi,%r10), %xmm1
	movups	%xmm0, -16(%r9,%r10)
	movups	%xmm1, (%r9,%r10)
	addq	$32, %r10
	cmpq	%r10, %r8
	jne	.LBB66_24
# %bb.25:                               #   in Loop: Header=BB66_8 Depth=1
	cmpq	%r8, %r14
	je	.LBB66_30
# %bb.26:                               #   in Loop: Header=BB66_8 Depth=1
	testb	$28, %r14b
	je	.LBB66_14
.LBB66_27:                              #   in Loop: Header=BB66_8 Depth=1
	movq	%r8, %r9
	movq	%r14, %r8
	andq	$-4, %r8
	.p2align	4
.LBB66_28:                              #   Parent Loop BB66_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi,%r9), %r10d
	movl	%r10d, (%rcx,%r9)
	addq	$4, %r9
	cmpq	%r9, %r8
	jne	.LBB66_28
# %bb.29:                               #   in Loop: Header=BB66_8 Depth=1
	cmpq	%r8, %r14
	je	.LBB66_30
	jmp	.LBB66_14
.LBB66_39:
	movq	%r14, %rdx
	jmp	.LBB66_51
.LBB66_46:
	movq	%rax, %r9
	andq	%r8, %r9
	xorl	%ecx, %ecx
	.p2align	4
.LBB66_47:                              # =>This Inner Loop Header: Depth=1
	movups	(%r14,%rcx), %xmm0
	movups	16(%r14,%rcx), %xmm1
	movups	%xmm0, 56(%rsp,%rcx)
	movups	%xmm1, 72(%rsp,%rcx)
	addq	$32, %rcx
	cmpq	%rcx, %r9
	jne	.LBB66_47
# %bb.48:
	cmpq	%r9, %rax
	je	.LBB66_56
# %bb.49:
	testb	$28, %al
	je	.LBB66_50
.LBB66_43:
	addq	$28, %r8
	andq	%rax, %r8
	leaq	(%rsp,%r8), %rcx
	addq	$56, %rcx
	leaq	(%r14,%r8), %rdx
	.p2align	4
.LBB66_44:                              # =>This Inner Loop Header: Depth=1
	movl	(%r14,%r9), %r10d
	movl	%r10d, 56(%rsp,%r9)
	addq	$4, %r9
	cmpq	%r9, %r8
	jne	.LBB66_44
# %bb.45:
	cmpq	%r8, %rax
	jne	.LBB66_51
	jmp	.LBB66_56
.LBB66_50:
	leaq	(%rsp,%r9), %rcx
	addq	$56, %rcx
	addq	%r14, %r9
	movq	%r9, %rdx
.LBB66_51:
	movl	%r12d, %r9d
	subl	%edx, %r9d
	movq	%rdx, %r8
	andl	$7, %r9d
	je	.LBB66_53
	.p2align	4
.LBB66_52:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%r8), %r10d
	incq	%r8
	movb	%r10b, (%rcx)
	incq	%rcx
	decq	%r9
	jne	.LBB66_52
.LBB66_53:
	subq	%r12, %rdx
	cmpq	$-8, %rdx
	ja	.LBB66_56
# %bb.54:
	xorl	%edx, %edx
	.p2align	4
.LBB66_55:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%r8,%rdx), %r9d
	movb	%r9b, (%rcx,%rdx)
	movzbl	1(%r8,%rdx), %r9d
	movb	%r9b, 1(%rcx,%rdx)
	movzbl	2(%r8,%rdx), %r9d
	movb	%r9b, 2(%rcx,%rdx)
	movzbl	3(%r8,%rdx), %r9d
	movb	%r9b, 3(%rcx,%rdx)
	movzbl	4(%r8,%rdx), %r9d
	movb	%r9b, 4(%rcx,%rdx)
	movzbl	5(%r8,%rdx), %r9d
	movb	%r9b, 5(%rcx,%rdx)
	movzbl	6(%r8,%rdx), %r9d
	movb	%r9b, 6(%rcx,%rdx)
	movzbl	7(%r8,%rdx), %r9d
	movb	%r9b, 7(%rcx,%rdx)
	leaq	(%r8,%rdx), %r9
	addq	$8, %r9
	addq	$8, %rdx
	cmpq	%r12, %r9
	jne	.LBB66_55
.LBB66_56:
	leaq	(%rsp,%rax), %r13
	addq	$56, %r13
	leaq	56(%rsp), %r15
	leaq	80(%rsp), %r12
	.p2align	4
.LBB66_57:                              # =>This Inner Loop Header: Depth=1
	movq	%r12, %rcx
	movq	%r15, %rdx
	movq	%r14, %r8
	callq	_ZZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUljNSC_IcEEE_EEvSH_S8_ENKUlPKcSK_E_clESK_SK_
	movq	%rax, %rcx
	subq	%r15, %rcx
	testq	%rax, %rax
	cmoveq	%rax, %rcx
	cmovneq	%rax, %r15
	je	.LBB66_59
# %bb.58:                               #   in Loop: Header=BB66_57 Depth=1
	addq	%rcx, %r14
	cmpq	%r13, %r15
	jb	.LBB66_57
.LBB66_59:
	movq	64(%rsp), %r8
	movq	72(%rsp), %r9
	movzbl	55(%rsp), %eax
	movb	%al, 80(%rsp)
	movq	%r8, 88(%rsp)
	movups	(%rdi), %xmm0
	movups	%xmm0, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	%rsi, %rcx
	movq	%rbx, %rdx
	callq	_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEEUlS5_E_EET1_SJ_SH_yyOT2_
.LBB66_60:
	movq	%rax, %rsi
.LBB66_61:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB66_62:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.22(%rip), %r8
	movl	$440, %edx                      # imm = 0x1B8
	callq	_ZN3fmt3v1211assert_failEPKciS2_
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE,"xr",discard,_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE
	.globl	_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE # -- Begin function _ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE
	.p2align	4
_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE: # @_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE
.seh_proc _ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	8(%rcx), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rcx), %rdx
	jbe	.LBB67_2
# %bb.1:
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
.LBB67_2:
	movq	(%rsi), %rcx
	movq	%rdx, 8(%rsi)
	movb	$34, (%rcx,%rax)
	movq	(%rdi), %r15
	movq	8(%rdi), %rdi
	addq	%r15, %rdi
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	.p2align	4
.LBB67_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB67_7 Depth 2
                                        #     Child Loop BB67_25 Depth 2
                                        #     Child Loop BB67_29 Depth 2
                                        #     Child Loop BB67_33 Depth 2
                                        #     Child Loop BB67_36 Depth 2
                                        #     Child Loop BB67_40 Depth 2
                                        #     Child Loop BB67_55 Depth 2
                                        #       Child Loop BB67_71 Depth 3
                                        #       Child Loop BB67_75 Depth 3
                                        #       Child Loop BB67_64 Depth 3
                                        #       Child Loop BB67_67 Depth 3
	movq	%rdi, 56(%rsp)
	movq	$0, 64(%rsp)
	movl	$0, 72(%rsp)
	movq	%rdi, %rax
	subq	%r15, %rax
	js	.LBB67_82
# %bb.4:                                #   in Loop: Header=BB67_3 Depth=1
	cmpq	$4, %rax
	jb	.LBB67_19
# %bb.5:                                #   in Loop: Header=BB67_3 Depth=1
	addq	%r15, %rax
	addq	$-3, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%r15, %r13
	jmp	.LBB67_7
	.p2align	4
.LBB67_6:                               #   in Loop: Header=BB67_7 Depth=2
	incq	%r13
	movq	40(%rsp), %rdi                  # 8-byte Reload
	cmpq	48(%rsp), %r13                  # 8-byte Folded Reload
	jae	.LBB67_16
.LBB67_7:                               #   Parent Loop BB67_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r13), %eax
	movl	%eax, %ecx
	shrl	$3, %ecx
	leaq	.L.str.33(%rip), %rdx
	movsbq	(%rcx,%rdx), %r12
	xorl	%edi, %edi
	movl	$-2130771968, %edx              # imm = 0x80FF0000
	btl	%ecx, %edx
	setb	%dil
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks(%rip), %rcx
	andl	(%rcx,%r12,4), %eax
	shll	$18, %eax
	movzbl	1(%r13), %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	shll	$12, %ecx
	orl	%eax, %ecx
	movzbl	2(%r13), %r8d
	movl	%r8d, %r10d
	andl	$63, %r10d
	shll	$6, %r10d
	orl	%ecx, %r10d
	movzbl	3(%r13), %r9d
	movl	%r9d, %eax
	andl	$63, %eax
	orl	%r10d, %eax
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc(%rip), %rcx
	movzbl	(%rcx,%r12,4), %ecx
	shrl	%cl, %eax
	xorl	%ecx, %ecx
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins(%rip), %r10
	cmpl	(%r10,%r12,4), %eax
	setb	%cl
	shll	$6, %ecx
	movl	%eax, %r11d
	andl	$2147481600, %r11d              # imm = 0x7FFFF800
	xorl	%r10d, %r10d
	cmpl	$55296, %r11d                   # imm = 0xD800
	sete	%r10b
	shll	$7, %r10d
	xorl	%r11d, %r11d
	cmpl	$1114112, %eax                  # imm = 0x110000
	setae	%r11b
	shrl	$2, %edx
	andl	$-16, %edx
	shrl	$6, %r8d
	leal	(%rdx,%r8,4), %ebp
	shrl	$6, %r9d
	orl	%r9d, %ebp
	orl	%ecx, %ebp
	shll	$8, %r11d
	orl	%r11d, %ebp
	orl	%r10d, %ebp
	xorl	$42, %ebp
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte(%rip), %rcx
	movzbl	(%rcx,%r12,4), %ecx
	shrl	%cl, %ebp
	movl	%ebp, %ecx
	negl	%ecx
	movl	$0, %ebx
	sbbl	%ebx, %ebx
	movl	$1, %r14d
	testl	%ebp, %ebp
	jne	.LBB67_9
# %bb.8:                                #   in Loop: Header=BB67_7 Depth=2
	movq	%rdi, %r14
	addq	%r12, %r14
	js	.LBB67_82
.LBB67_9:                               #   in Loop: Header=BB67_7 Depth=2
	orl	%eax, %ebx
	cmpl	$32, %ebx
	jb	.LBB67_23
# %bb.10:                               #   in Loop: Header=BB67_7 Depth=2
	cmpl	$34, %ebx
	je	.LBB67_23
# %bb.11:                               #   in Loop: Header=BB67_7 Depth=2
	cmpl	$92, %ebx
	je	.LBB67_23
# %bb.12:                               #   in Loop: Header=BB67_7 Depth=2
	cmpl	$127, %ebx
	je	.LBB67_23
# %bb.13:                               #   in Loop: Header=BB67_7 Depth=2
	movl	%ebx, %ecx
	callq	_ZN3fmt3v126detail12is_printableEj
	testb	%al, %al
	je	.LBB67_23
# %bb.14:                               #   in Loop: Header=BB67_7 Depth=2
	testl	%ebp, %ebp
	jne	.LBB67_6
# %bb.15:                               #   in Loop: Header=BB67_7 Depth=2
	addq	%rdi, %r13
	addq	%r12, %r13
	movq	40(%rsp), %rdi                  # 8-byte Reload
	cmpq	48(%rsp), %r13                  # 8-byte Folded Reload
	jb	.LBB67_7
.LBB67_16:                              #   in Loop: Header=BB67_3 Depth=1
	movq	%rdi, %rax
	subq	%r13, %rax
	js	.LBB67_82
	.p2align	4
# %bb.17:                               #   in Loop: Header=BB67_3 Depth=1
	movq	%rdi, %rdx
	subq	%r13, %rdx
	je	.LBB67_18
.LBB67_20:                              #   in Loop: Header=BB67_3 Depth=1
	movl	$0, 35(%rsp)
	movl	$0, 32(%rsp)
	cmpq	$4, %rdx
	setb	%cl
	leaq	32(%rsp), %r9
	movq	%r9, %r8
	subq	%r13, %r8
	cmpq	$32, %r8
	setb	%r8b
	orb	%cl, %r8b
	movq	%r9, %rcx
	movq	%r13, %r8
	jne	.LBB67_32
# %bb.21:                               #   in Loop: Header=BB67_3 Depth=1
	cmpq	$32, %rdx
	jae	.LBB67_24
# %bb.22:                               #   in Loop: Header=BB67_3 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB67_28
	.p2align	4
.LBB67_19:                              #   in Loop: Header=BB67_3 Depth=1
	movq	%r15, %r13
	movq	%rdi, %rdx
	subq	%r13, %rdx
	jne	.LBB67_20
	.p2align	4
.LBB67_18:                              #   in Loop: Header=BB67_3 Depth=1
	movq	56(%rsp), %rbx
	cmpq	%rbx, %r15
	jne	.LBB67_52
	jmp	.LBB67_77
	.p2align	4
.LBB67_23:                              #   in Loop: Header=BB67_3 Depth=1
	addq	%r13, %r14
	movq	%r13, 56(%rsp)
	movq	%r14, 64(%rsp)
	jmp	.LBB67_50
.LBB67_24:                              #   in Loop: Header=BB67_3 Depth=1
	movq	%rdx, %r9
	andq	$-32, %r9
	xorl	%ecx, %ecx
	.p2align	4
.LBB67_25:                              #   Parent Loop BB67_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r13,%rcx), %xmm0
	movups	16(%r13,%rcx), %xmm1
	movups	%xmm0, 32(%rsp,%rcx)
	movups	%xmm1, 48(%rsp,%rcx)
	addq	$32, %rcx
	cmpq	%rcx, %r9
	jne	.LBB67_25
# %bb.26:                               #   in Loop: Header=BB67_3 Depth=1
	cmpq	%r9, %rdx
	je	.LBB67_37
# %bb.27:                               #   in Loop: Header=BB67_3 Depth=1
	testb	$28, %dl
	je	.LBB67_31
.LBB67_28:                              #   in Loop: Header=BB67_3 Depth=1
	movq	%rdx, %r10
	andq	$-4, %r10
	leaq	(%rsp,%r10), %rcx
	addq	$32, %rcx
	leaq	(%r10,%r13), %r8
	.p2align	4
.LBB67_29:                              #   Parent Loop BB67_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r13,%r9), %r11d
	movl	%r11d, 32(%rsp,%r9)
	addq	$4, %r9
	cmpq	%r9, %r10
	jne	.LBB67_29
# %bb.30:                               #   in Loop: Header=BB67_3 Depth=1
	cmpq	%r10, %rdx
	jne	.LBB67_32
	jmp	.LBB67_37
.LBB67_31:                              #   in Loop: Header=BB67_3 Depth=1
	leaq	(%rsp,%r9), %rcx
	addq	$32, %rcx
	addq	%r13, %r9
	movq	%r9, %r8
	.p2align	4
.LBB67_32:                              #   in Loop: Header=BB67_3 Depth=1
	movl	%edi, %r9d
	subl	%r8d, %r9d
	movq	%r8, %rdx
	andl	$7, %r9d
	je	.LBB67_34
	.p2align	4
.LBB67_33:                              #   Parent Loop BB67_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx), %r10d
	incq	%rdx
	movb	%r10b, (%rcx)
	incq	%rcx
	decq	%r9
	jne	.LBB67_33
.LBB67_34:                              #   in Loop: Header=BB67_3 Depth=1
	subq	%rdi, %r8
	cmpq	$-8, %r8
	ja	.LBB67_37
# %bb.35:                               #   in Loop: Header=BB67_3 Depth=1
	xorl	%r8d, %r8d
	.p2align	4
.LBB67_36:                              #   Parent Loop BB67_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx,%r8), %r9d
	movb	%r9b, (%rcx,%r8)
	movzbl	1(%rdx,%r8), %r9d
	movb	%r9b, 1(%rcx,%r8)
	movzbl	2(%rdx,%r8), %r9d
	movb	%r9b, 2(%rcx,%r8)
	movzbl	3(%rdx,%r8), %r9d
	movb	%r9b, 3(%rcx,%r8)
	movzbl	4(%rdx,%r8), %r9d
	movb	%r9b, 4(%rcx,%r8)
	movzbl	5(%rdx,%r8), %r9d
	movb	%r9b, 5(%rcx,%r8)
	movzbl	6(%rdx,%r8), %r9d
	movb	%r9b, 6(%rcx,%r8)
	movzbl	7(%rdx,%r8), %r9d
	movb	%r9b, 7(%rcx,%r8)
	leaq	(%rdx,%r8), %r9
	addq	$8, %r9
	addq	$8, %r8
	cmpq	%rdi, %r9
	jne	.LBB67_36
.LBB67_37:                              #   in Loop: Header=BB67_3 Depth=1
	addq	%rsp, %rax
	addq	$32, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	leaq	32(%rsp), %r14
	jmp	.LBB67_40
	.p2align	4
.LBB67_38:                              #   in Loop: Header=BB67_40 Depth=2
	leaq	1(%r14), %rbp
.LBB67_39:                              #   in Loop: Header=BB67_40 Depth=2
	movq	%rbp, %rax
	subq	%r14, %rax
	addq	%rax, %r13
	movq	%rbp, %r14
	cmpq	80(%rsp), %rbp                  # 8-byte Folded Reload
	jae	.LBB67_51
.LBB67_40:                              #   Parent Loop BB67_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14), %eax
	movl	%eax, %ecx
	shrl	$3, %ecx
	leaq	.L.str.33(%rip), %rdx
	movsbq	(%rcx,%rdx), %rbx
	xorl	%ebp, %ebp
	movl	$-2130771968, %edx              # imm = 0x80FF0000
	btl	%ecx, %edx
	setb	%bpl
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks(%rip), %rcx
	andl	(%rcx,%rbx,4), %eax
	shll	$18, %eax
	movzbl	1(%r14), %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	shll	$12, %ecx
	orl	%eax, %ecx
	movzbl	2(%r14), %r8d
	movl	%r8d, %r10d
	andl	$63, %r10d
	shll	$6, %r10d
	orl	%ecx, %r10d
	movzbl	3(%r14), %r9d
	movl	%r9d, %eax
	andl	$63, %eax
	orl	%r10d, %eax
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc(%rip), %rcx
	movzbl	(%rcx,%rbx,4), %ecx
	shrl	%cl, %eax
	xorl	%ecx, %ecx
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins(%rip), %r10
	cmpl	(%r10,%rbx,4), %eax
	setb	%cl
	shll	$6, %ecx
	movl	%eax, %r11d
	andl	$2147481600, %r11d              # imm = 0x7FFFF800
	xorl	%r10d, %r10d
	cmpl	$55296, %r11d                   # imm = 0xD800
	sete	%r10b
	shll	$7, %r10d
	xorl	%r11d, %r11d
	cmpl	$1114112, %eax                  # imm = 0x110000
	setae	%r11b
	shrl	$2, %edx
	andl	$-16, %edx
	shrl	$6, %r8d
	leal	(%rdx,%r8,4), %edi
	shrl	$6, %r9d
	orl	%r9d, %edi
	orl	%ecx, %edi
	shll	$8, %r11d
	orl	%r11d, %edi
	orl	%r10d, %edi
	xorl	$42, %edi
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte(%rip), %rcx
	movq	%rbx, 48(%rsp)                  # 8-byte Spill
	movzbl	(%rcx,%rbx,4), %ecx
	shrl	%cl, %edi
	movl	%edi, %ecx
	negl	%ecx
	movl	$0, %ebx
	sbbl	%ebx, %ebx
	movl	$1, %r12d
	testl	%edi, %edi
	jne	.LBB67_42
# %bb.41:                               #   in Loop: Header=BB67_40 Depth=2
	movq	%rbp, %r12
	addq	48(%rsp), %r12                  # 8-byte Folded Reload
	js	.LBB67_82
.LBB67_42:                              #   in Loop: Header=BB67_40 Depth=2
	orl	%eax, %ebx
	cmpl	$32, %ebx
	jb	.LBB67_49
# %bb.43:                               #   in Loop: Header=BB67_40 Depth=2
	cmpl	$34, %ebx
	je	.LBB67_49
# %bb.44:                               #   in Loop: Header=BB67_40 Depth=2
	cmpl	$92, %ebx
	je	.LBB67_49
# %bb.45:                               #   in Loop: Header=BB67_40 Depth=2
	cmpl	$127, %ebx
	je	.LBB67_49
# %bb.46:                               #   in Loop: Header=BB67_40 Depth=2
	movl	%ebx, %ecx
	callq	_ZN3fmt3v126detail12is_printableEj
	testb	%al, %al
	je	.LBB67_49
# %bb.47:                               #   in Loop: Header=BB67_40 Depth=2
	testl	%edi, %edi
	jne	.LBB67_38
# %bb.48:                               #   in Loop: Header=BB67_40 Depth=2
	addq	%r14, %rbp
	addq	48(%rsp), %rbp                  # 8-byte Folded Reload
	jmp	.LBB67_39
	.p2align	4
.LBB67_49:                              #   in Loop: Header=BB67_3 Depth=1
	addq	%r13, %r12
	movq	%r13, 56(%rsp)
	movq	%r12, 64(%rsp)
.LBB67_50:                              #   in Loop: Header=BB67_3 Depth=1
	movl	%ebx, 72(%rsp)
.LBB67_51:                              #   in Loop: Header=BB67_3 Depth=1
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	56(%rsp), %rbx
	cmpq	%rbx, %r15
	je	.LBB67_77
.LBB67_52:                              #   in Loop: Header=BB67_3 Depth=1
	movq	8(%rsi), %rdx
	jmp	.LBB67_55
	.p2align	4
.LBB67_53:                              #   in Loop: Header=BB67_55 Depth=2
	movq	8(%rsi), %rdx
.LBB67_54:                              #   in Loop: Header=BB67_55 Depth=2
	addq	%r13, %rdx
	movq	%rdx, 8(%rsi)
	addq	%r13, %r15
	cmpq	%rbx, %r15
	je	.LBB67_77
.LBB67_55:                              #   Parent Loop BB67_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB67_71 Depth 3
                                        #       Child Loop BB67_75 Depth 3
                                        #       Child Loop BB67_64 Depth 3
                                        #       Child Loop BB67_67 Depth 3
	movq	%rbx, %r13
	subq	%r15, %r13
	js	.LBB67_82
# %bb.56:                               #   in Loop: Header=BB67_55 Depth=2
	movq	16(%rsi), %rax
	subq	%rdx, %rax
	cmpq	%r13, %rax
	jae	.LBB67_58
# %bb.57:                               #   in Loop: Header=BB67_55 Depth=2
	addq	%r13, %rdx
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rdx
	movq	16(%rsi), %rax
	subq	%rdx, %rax
	cmpq	%rax, %r13
	cmovaeq	%rax, %r13
.LBB67_58:                              #   in Loop: Header=BB67_55 Depth=2
	testq	%r13, %r13
	je	.LBB67_54
# %bb.59:                               #   in Loop: Header=BB67_55 Depth=2
	movq	(%rsi), %rax
	leaq	(%rax,%rdx), %rcx
	cmpq	$3, %r13
	jbe	.LBB67_61
# %bb.60:                               #   in Loop: Header=BB67_55 Depth=2
	movq	%rcx, %r8
	subq	%r15, %r8
	cmpq	$32, %r8
	jae	.LBB67_68
.LBB67_61:                              #   in Loop: Header=BB67_55 Depth=2
	xorl	%r8d, %r8d
.LBB67_62:                              #   in Loop: Header=BB67_55 Depth=2
	movq	%r13, %r10
	movq	%r8, %r9
	andq	$3, %r10
	je	.LBB67_65
# %bb.63:                               #   in Loop: Header=BB67_55 Depth=2
	movq	%r8, %r9
	.p2align	4
.LBB67_64:                              #   Parent Loop BB67_3 Depth=1
                                        #     Parent Loop BB67_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r15,%r9), %r11d
	movb	%r11b, (%rcx,%r9)
	incq	%r9
	decq	%r10
	jne	.LBB67_64
.LBB67_65:                              #   in Loop: Header=BB67_55 Depth=2
	subq	%r13, %r8
	cmpq	$-4, %r8
	ja	.LBB67_53
# %bb.66:                               #   in Loop: Header=BB67_55 Depth=2
	addq	%rdx, %rax
	addq	$3, %rax
	.p2align	4
.LBB67_67:                              #   Parent Loop BB67_3 Depth=1
                                        #     Parent Loop BB67_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r15,%r9), %ecx
	movb	%cl, -3(%rax,%r9)
	movzbl	1(%r15,%r9), %ecx
	movb	%cl, -2(%rax,%r9)
	movzbl	2(%r15,%r9), %ecx
	movb	%cl, -1(%rax,%r9)
	movzbl	3(%r15,%r9), %ecx
	movb	%cl, (%rax,%r9)
	addq	$4, %r9
	cmpq	%r9, %r13
	jne	.LBB67_67
	jmp	.LBB67_53
.LBB67_68:                              #   in Loop: Header=BB67_55 Depth=2
	cmpq	$32, %r13
	jae	.LBB67_70
# %bb.69:                               #   in Loop: Header=BB67_55 Depth=2
	xorl	%r8d, %r8d
	jmp	.LBB67_74
.LBB67_70:                              #   in Loop: Header=BB67_55 Depth=2
	movq	%r13, %r8
	andq	$-32, %r8
	leaq	(%rax,%rdx), %r9
	addq	$16, %r9
	xorl	%r10d, %r10d
	.p2align	4
.LBB67_71:                              #   Parent Loop BB67_3 Depth=1
                                        #     Parent Loop BB67_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%r15,%r10), %xmm0
	movups	16(%r15,%r10), %xmm1
	movups	%xmm0, -16(%r9,%r10)
	movups	%xmm1, (%r9,%r10)
	addq	$32, %r10
	cmpq	%r10, %r8
	jne	.LBB67_71
# %bb.72:                               #   in Loop: Header=BB67_55 Depth=2
	cmpq	%r8, %r13
	je	.LBB67_53
# %bb.73:                               #   in Loop: Header=BB67_55 Depth=2
	testb	$28, %r13b
	je	.LBB67_62
.LBB67_74:                              #   in Loop: Header=BB67_55 Depth=2
	movq	%r8, %r9
	movq	%r13, %r8
	andq	$-4, %r8
	.p2align	4
.LBB67_75:                              #   Parent Loop BB67_3 Depth=1
                                        #     Parent Loop BB67_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%r15,%r9), %r10d
	movl	%r10d, (%rcx,%r9)
	addq	$4, %r9
	cmpq	%r9, %r8
	jne	.LBB67_75
# %bb.76:                               #   in Loop: Header=BB67_55 Depth=2
	cmpq	%r8, %r13
	je	.LBB67_53
	jmp	.LBB67_62
	.p2align	4
.LBB67_77:                              #   in Loop: Header=BB67_3 Depth=1
	movq	64(%rsp), %r15
	testq	%r15, %r15
	je	.LBB67_79
# %bb.78:                               #   in Loop: Header=BB67_3 Depth=1
	movq	%rsi, %rcx
	leaq	56(%rsp), %rdx
	callq	_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE
	movq	%rax, %rsi
	cmpq	%rdi, %r15
	jne	.LBB67_3
.LBB67_79:
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rsi), %rdx
	jbe	.LBB67_81
# %bb.80:
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
.LBB67_81:
	movq	(%rsi), %rcx
	movq	%rdx, 8(%rsi)
	movb	$34, (%rcx,%rax)
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB67_82:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.22(%rip), %r8
	movl	$440, %edx                      # imm = 0x1B8
	callq	_ZN3fmt3v1211assert_failEPKciS2_
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEEUlS5_E_EET1_SJ_SH_yyOT2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEEUlS5_E_EET1_SJ_SH_yyOT2_,"xr",discard,_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEEUlS5_E_EET1_SJ_SH_yyOT2_
	.globl	_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEEUlS5_E_EET1_SJ_SH_yyOT2_ # -- Begin function _ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEEUlS5_E_EET1_SJ_SH_yyOT2_
	.p2align	4
_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEEUlS5_E_EET1_SJ_SH_yyOT2_: # @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEEUlS5_E_EET1_SJ_SH_yyOT2_
.seh_proc _ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEEUlS5_E_EET1_SJ_SH_yyOT2_
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$80, %rsp
	.seh_stackalloc 80
	.seh_endprologue
	movslq	8(%rdx), %rax
	testq	%rax, %rax
	js	.LBB68_36
# %bb.1:
	movq	%rdx, %rsi
	movq	%rcx, %rbx
	xorl	%edi, %edi
	subq	%r9, %rax
	cmovaeq	%rax, %rdi
	movl	(%rdx), %eax
	movl	%eax, %ecx
	shrl	$3, %ecx
	andl	$7, %ecx
	leaq	.L.str.36(%rip), %rdx
	movzbl	(%rcx,%rdx), %ecx
	movq	%rdi, %r14
	shrq	%cl, %r14
	shrl	$15, %eax
	andl	$7, %eax
	addq	8(%rbx), %r8
	imulq	%rdi, %rax
	addq	%rax, %r8
	cmpq	16(%rbx), %r8
	jbe	.LBB68_3
# %bb.2:
	movq	%rbx, %rcx
	movq	%r8, %rdx
	callq	*24(%rbx)
.LBB68_3:
	movq	176(%rsp), %r12
	testq	%r14, %r14
	je	.LBB68_5
# %bb.4:
	movq	%rbx, %rcx
	movq	%r14, %rdx
	movq	%rsi, %r8
	callq	_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_yRKNS0_11basic_specsE
	movq	%rax, %rbx
.LBB68_5:
	cmpb	$1, (%r12)
	jne	.LBB68_7
# %bb.6:
	movq	%rbx, 32(%rsp)
	movq	8(%r12), %rax
	movq	%rax, 40(%rsp)
	movups	16(%r12), %xmm0
	movaps	%xmm0, 48(%rsp)
	leaq	64(%rsp), %rcx
	leaq	32(%rsp), %rdx
	leaq	48(%rsp), %r8
	callq	_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEESB_SB_SD_
	movq	64(%rsp), %rbx
	jmp	.LBB68_33
.LBB68_7:
	movq	8(%r12), %r15
	testq	%r15, %r15
	je	.LBB68_33
# %bb.8:
	movq	16(%r12), %r12
	addq	%r12, %r15
	movq	8(%rbx), %rdx
	jmp	.LBB68_9
	.p2align	4
.LBB68_31:                              #   in Loop: Header=BB68_9 Depth=1
	movq	8(%rbx), %rdx
.LBB68_32:                              #   in Loop: Header=BB68_9 Depth=1
	addq	%r13, %rdx
	movq	%rdx, 8(%rbx)
	addq	%r13, %r12
	cmpq	%r15, %r12
	je	.LBB68_33
.LBB68_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB68_25 Depth 2
                                        #     Child Loop BB68_29 Depth 2
                                        #     Child Loop BB68_17 Depth 2
                                        #     Child Loop BB68_20 Depth 2
	movq	%r15, %r13
	subq	%r12, %r13
	js	.LBB68_36
# %bb.10:                               #   in Loop: Header=BB68_9 Depth=1
	movq	16(%rbx), %rax
	subq	%rdx, %rax
	cmpq	%r13, %rax
	jae	.LBB68_12
# %bb.11:                               #   in Loop: Header=BB68_9 Depth=1
	addq	%r13, %rdx
	movq	%rbx, %rcx
	callq	*24(%rbx)
	movq	8(%rbx), %rdx
	movq	16(%rbx), %rax
	subq	%rdx, %rax
	cmpq	%rax, %r13
	cmovaeq	%rax, %r13
.LBB68_12:                              #   in Loop: Header=BB68_9 Depth=1
	testq	%r13, %r13
	je	.LBB68_32
# %bb.13:                               #   in Loop: Header=BB68_9 Depth=1
	movq	(%rbx), %rax
	leaq	(%rax,%rdx), %rcx
	cmpq	$3, %r13
	jbe	.LBB68_14
# %bb.21:                               #   in Loop: Header=BB68_9 Depth=1
	movq	%rcx, %r8
	subq	%r12, %r8
	cmpq	$32, %r8
	jae	.LBB68_22
.LBB68_14:                              #   in Loop: Header=BB68_9 Depth=1
	xorl	%r8d, %r8d
.LBB68_15:                              #   in Loop: Header=BB68_9 Depth=1
	movq	%r13, %r10
	movq	%r8, %r9
	andq	$3, %r10
	je	.LBB68_18
# %bb.16:                               #   in Loop: Header=BB68_9 Depth=1
	movq	%r8, %r9
	.p2align	4
.LBB68_17:                              #   Parent Loop BB68_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r12,%r9), %r11d
	movb	%r11b, (%rcx,%r9)
	incq	%r9
	decq	%r10
	jne	.LBB68_17
.LBB68_18:                              #   in Loop: Header=BB68_9 Depth=1
	subq	%r13, %r8
	cmpq	$-4, %r8
	ja	.LBB68_31
# %bb.19:                               #   in Loop: Header=BB68_9 Depth=1
	addq	%rdx, %rax
	addq	$3, %rax
	.p2align	4
.LBB68_20:                              #   Parent Loop BB68_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r12,%r9), %ecx
	movb	%cl, -3(%rax,%r9)
	movzbl	1(%r12,%r9), %ecx
	movb	%cl, -2(%rax,%r9)
	movzbl	2(%r12,%r9), %ecx
	movb	%cl, -1(%rax,%r9)
	movzbl	3(%r12,%r9), %ecx
	movb	%cl, (%rax,%r9)
	addq	$4, %r9
	cmpq	%r9, %r13
	jne	.LBB68_20
	jmp	.LBB68_31
.LBB68_22:                              #   in Loop: Header=BB68_9 Depth=1
	cmpq	$32, %r13
	jae	.LBB68_24
# %bb.23:                               #   in Loop: Header=BB68_9 Depth=1
	xorl	%r8d, %r8d
	jmp	.LBB68_28
.LBB68_24:                              #   in Loop: Header=BB68_9 Depth=1
	movq	%r13, %r8
	andq	$-32, %r8
	leaq	(%rax,%rdx), %r9
	addq	$16, %r9
	xorl	%r10d, %r10d
	.p2align	4
.LBB68_25:                              #   Parent Loop BB68_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r12,%r10), %xmm0
	movups	16(%r12,%r10), %xmm1
	movups	%xmm0, -16(%r9,%r10)
	movups	%xmm1, (%r9,%r10)
	addq	$32, %r10
	cmpq	%r10, %r8
	jne	.LBB68_25
# %bb.26:                               #   in Loop: Header=BB68_9 Depth=1
	cmpq	%r8, %r13
	je	.LBB68_31
# %bb.27:                               #   in Loop: Header=BB68_9 Depth=1
	testb	$28, %r13b
	je	.LBB68_15
.LBB68_28:                              #   in Loop: Header=BB68_9 Depth=1
	movq	%r8, %r9
	movq	%r13, %r8
	andq	$-4, %r8
	.p2align	4
.LBB68_29:                              #   Parent Loop BB68_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r12,%r9), %r10d
	movl	%r10d, (%rcx,%r9)
	addq	$4, %r9
	cmpq	%r9, %r8
	jne	.LBB68_29
# %bb.30:                               #   in Loop: Header=BB68_9 Depth=1
	cmpq	%r8, %r13
	je	.LBB68_31
	jmp	.LBB68_15
.LBB68_33:
	cmpq	%r14, %rdi
	je	.LBB68_35
# %bb.34:
	subq	%r14, %rdi
	movq	%rbx, %rcx
	movq	%rdi, %rdx
	movq	%rsi, %r8
	callq	_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_yRKNS0_11basic_specsE
	movq	%rax, %rbx
.LBB68_35:
	movq	%rbx, %rax
	.seh_startepilogue
	addq	$80, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB68_36:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.22(%rip), %r8
	movl	$440, %edx                      # imm = 0x1B8
	callq	_ZN3fmt3v1211assert_failEPKciS2_
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE,"xr",discard,_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE
	.globl	_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE # -- Begin function _ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE
	.p2align	4
_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE: # @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE
.seh_proc _ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	movl	16(%rdx), %edi
	leal	-9(%rdi), %eax
	cmpl	$30, %eax
	ja	.LBB69_1
# %bb.8:
	leaq	.LJTI69_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB69_15:
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rsi), %rdx
	jbe	.LBB69_17
# %bb.16:
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
.LBB69_17:
	movq	(%rsi), %rcx
	movq	%rdx, 8(%rsi)
	movb	$92, (%rcx,%rax)
	movb	$116, %dil
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rsi), %rdx
	ja	.LBB69_6
	jmp	.LBB69_7
.LBB69_1:
	cmpl	$92, %edi
	jne	.LBB69_18
.LBB69_2:
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rsi), %rdx
	jbe	.LBB69_4
# %bb.3:
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
.LBB69_4:
	movq	(%rsi), %rcx
	movq	%rdx, 8(%rsi)
	movb	$92, (%rcx,%rax)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rsi), %rdx
	ja	.LBB69_6
	jmp	.LBB69_7
.LBB69_18:
	cmpl	$255, %edi
	ja	.LBB69_19
# %bb.25:
	movq	%rsi, %rcx
	movb	$120, %dl
	movl	%edi, %r8d
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	jmp	_ZN3fmt3v126detail15write_codepointILy2EcNS0_14basic_appenderIcEEEET1_S5_cj # TAILCALL
.LBB69_12:
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rsi), %rdx
	jbe	.LBB69_14
# %bb.13:
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
.LBB69_14:
	movq	(%rsi), %rcx
	movq	%rdx, 8(%rsi)
	movb	$92, (%rcx,%rax)
	movb	$114, %dil
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rsi), %rdx
	jbe	.LBB69_7
.LBB69_6:
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
.LBB69_7:
	movq	(%rsi), %rcx
	movq	%rdx, 8(%rsi)
	movb	%dil, (%rcx,%rax)
.LBB69_24:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
.LBB69_9:
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rsi), %rdx
	jbe	.LBB69_11
# %bb.10:
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
.LBB69_11:
	movq	(%rsi), %rcx
	movq	%rdx, 8(%rsi)
	movb	$92, (%rcx,%rax)
	movb	$110, %dil
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rsi), %rdx
	ja	.LBB69_6
	jmp	.LBB69_7
.LBB69_19:
	cmpl	$65535, %edi                    # imm = 0xFFFF
	ja	.LBB69_20
# %bb.26:
	movq	%rsi, %rcx
	movb	$117, %dl
	movl	%edi, %r8d
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	jmp	_ZN3fmt3v126detail15write_codepointILy4EcNS0_14basic_appenderIcEEEET1_S5_cj # TAILCALL
.LBB69_20:
	cmpl	$1114111, %edi                  # imm = 0x10FFFF
	ja	.LBB69_21
# %bb.27:
	movq	%rsi, %rcx
	movb	$85, %dl
	movl	%edi, %r8d
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	jmp	_ZN3fmt3v126detail15write_codepointILy8EcNS0_14basic_appenderIcEEEET1_S5_cj # TAILCALL
.LBB69_21:
	movq	(%rdx), %rdi
	movq	8(%rdx), %rbx
	cmpq	%rdi, %rbx
	js	.LBB69_28
# %bb.22:
	je	.LBB69_24
	.p2align	4
.LBB69_23:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %r8d
	movq	%rsi, %rcx
	movb	$120, %dl
	callq	_ZN3fmt3v126detail15write_codepointILy2EcNS0_14basic_appenderIcEEEET1_S5_cj
	movq	%rax, %rsi
	incq	%rdi
	cmpq	%rbx, %rdi
	jne	.LBB69_23
	jmp	.LBB69_24
.LBB69_28:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.22(%rip), %r8
	movl	$440, %edx                      # imm = 0x1B8
	callq	_ZN3fmt3v1211assert_failEPKciS2_
	int3
	.section	.rdata,"dr",associative,_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE,unique,1
	.p2align	2, 0x0
.LJTI69_0:
	.long	.LBB69_15-.LJTI69_0
	.long	.LBB69_9-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_12-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_2-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_18-.LJTI69_0
	.long	.LBB69_2-.LJTI69_0
	.section	.text$_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE,"xr",discard,_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v126detail15write_codepointILy2EcNS0_14basic_appenderIcEEEET1_S5_cj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail15write_codepointILy2EcNS0_14basic_appenderIcEEEET1_S5_cj,"xr",discard,_ZN3fmt3v126detail15write_codepointILy2EcNS0_14basic_appenderIcEEEET1_S5_cj
	.globl	_ZN3fmt3v126detail15write_codepointILy2EcNS0_14basic_appenderIcEEEET1_S5_cj # -- Begin function _ZN3fmt3v126detail15write_codepointILy2EcNS0_14basic_appenderIcEEEET1_S5_cj
	.p2align	4
_ZN3fmt3v126detail15write_codepointILy2EcNS0_14basic_appenderIcEEEET1_S5_cj: # @_ZN3fmt3v126detail15write_codepointILy2EcNS0_14basic_appenderIcEEEET1_S5_cj
.seh_proc _ZN3fmt3v126detail15write_codepointILy2EcNS0_14basic_appenderIcEEEET1_S5_cj
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movl	%r8d, %edi
	movl	%edx, %ebx
	movq	%rcx, %rsi
	movq	8(%rcx), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rcx), %rdx
	jbe	.LBB70_2
# %bb.1:
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
.LBB70_2:
	movq	(%rsi), %rcx
	movq	%rdx, 8(%rsi)
	movb	$92, (%rcx,%rax)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rsi), %rdx
	jbe	.LBB70_4
# %bb.3:
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
.LBB70_4:
	movq	(%rsi), %rcx
	movq	%rdx, 8(%rsi)
	movb	%bl, (%rcx,%rax)
	movw	$12336, 46(%rsp)                # imm = 0x3030
	leaq	47(%rsp), %rax
	leaq	.L.str.35(%rip), %rcx
	movl	%edi, %edx
	.p2align	4
.LBB70_5:                               # =>This Inner Loop Header: Depth=1
	movl	%edi, %r8d
	andl	$15, %r8d
	movzbl	(%r8,%rcx), %r8d
	movb	%r8b, (%rax)
	shrl	$4, %edx
	decq	%rax
	cmpl	$15, %edi
	movl	%edx, %edi
	ja	.LBB70_5
# %bb.6:
	movq	8(%rsi), %rax
	xorl	%ebx, %ebx
	jmp	.LBB70_7
	.p2align	4
.LBB70_12:                              #   in Loop: Header=BB70_7 Depth=1
	addq	%rdi, %rax
	movq	%rax, 8(%rsi)
	addq	%rdi, %rbx
	cmpq	$2, %rbx
	je	.LBB70_13
.LBB70_7:                               # =>This Inner Loop Header: Depth=1
	cmpq	$3, %rbx
	jge	.LBB70_14
# %bb.8:                                #   in Loop: Header=BB70_7 Depth=1
	movl	$2, %edi
	subq	%rbx, %rdi
	movq	16(%rsi), %rcx
	subq	%rax, %rcx
	cmpq	%rdi, %rcx
	jae	.LBB70_10
# %bb.9:                                #   in Loop: Header=BB70_7 Depth=1
	addq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rax, %rdx
	callq	*24(%rsi)
	movq	8(%rsi), %rax
	movq	16(%rsi), %rcx
	subq	%rax, %rcx
	cmpq	%rcx, %rdi
	cmovaeq	%rcx, %rdi
.LBB70_10:                              #   in Loop: Header=BB70_7 Depth=1
	testq	%rdi, %rdi
	je	.LBB70_12
# %bb.11:                               #   in Loop: Header=BB70_7 Depth=1
	leaq	(%rsp,%rbx), %rdx
	addq	$46, %rdx
	addq	(%rsi), %rax
	movq	%rax, %rcx
	movq	%rdi, %r8
	callq	memcpy
	movq	8(%rsi), %rax
	jmp	.LBB70_12
.LBB70_13:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
.LBB70_14:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.22(%rip), %r8
	movl	$440, %edx                      # imm = 0x1B8
	callq	_ZN3fmt3v1211assert_failEPKciS2_
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v126detail15write_codepointILy4EcNS0_14basic_appenderIcEEEET1_S5_cj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail15write_codepointILy4EcNS0_14basic_appenderIcEEEET1_S5_cj,"xr",discard,_ZN3fmt3v126detail15write_codepointILy4EcNS0_14basic_appenderIcEEEET1_S5_cj
	.globl	_ZN3fmt3v126detail15write_codepointILy4EcNS0_14basic_appenderIcEEEET1_S5_cj # -- Begin function _ZN3fmt3v126detail15write_codepointILy4EcNS0_14basic_appenderIcEEEET1_S5_cj
	.p2align	4
_ZN3fmt3v126detail15write_codepointILy4EcNS0_14basic_appenderIcEEEET1_S5_cj: # @_ZN3fmt3v126detail15write_codepointILy4EcNS0_14basic_appenderIcEEEET1_S5_cj
.seh_proc _ZN3fmt3v126detail15write_codepointILy4EcNS0_14basic_appenderIcEEEET1_S5_cj
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movl	%r8d, %edi
	movl	%edx, %ebx
	movq	%rcx, %rsi
	movq	8(%rcx), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rcx), %rdx
	jbe	.LBB71_2
# %bb.1:
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
.LBB71_2:
	movq	(%rsi), %rcx
	movq	%rdx, 8(%rsi)
	movb	$92, (%rcx,%rax)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rsi), %rdx
	jbe	.LBB71_4
# %bb.3:
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
.LBB71_4:
	movq	(%rsi), %rcx
	movq	%rdx, 8(%rsi)
	movb	%bl, (%rcx,%rax)
	movl	$808464432, 44(%rsp)            # imm = 0x30303030
	leaq	47(%rsp), %rax
	leaq	.L.str.35(%rip), %rcx
	movl	%edi, %edx
	.p2align	4
.LBB71_5:                               # =>This Inner Loop Header: Depth=1
	movl	%edi, %r8d
	andl	$15, %r8d
	movzbl	(%r8,%rcx), %r8d
	movb	%r8b, (%rax)
	shrl	$4, %edx
	decq	%rax
	cmpl	$15, %edi
	movl	%edx, %edi
	ja	.LBB71_5
# %bb.6:
	movq	8(%rsi), %rax
	xorl	%ebx, %ebx
	jmp	.LBB71_7
	.p2align	4
.LBB71_12:                              #   in Loop: Header=BB71_7 Depth=1
	addq	%rdi, %rax
	movq	%rax, 8(%rsi)
	addq	%rdi, %rbx
	cmpq	$4, %rbx
	je	.LBB71_13
.LBB71_7:                               # =>This Inner Loop Header: Depth=1
	cmpq	$5, %rbx
	jge	.LBB71_14
# %bb.8:                                #   in Loop: Header=BB71_7 Depth=1
	movl	$4, %edi
	subq	%rbx, %rdi
	movq	16(%rsi), %rcx
	subq	%rax, %rcx
	cmpq	%rdi, %rcx
	jae	.LBB71_10
# %bb.9:                                #   in Loop: Header=BB71_7 Depth=1
	addq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rax, %rdx
	callq	*24(%rsi)
	movq	8(%rsi), %rax
	movq	16(%rsi), %rcx
	subq	%rax, %rcx
	cmpq	%rcx, %rdi
	cmovaeq	%rcx, %rdi
.LBB71_10:                              #   in Loop: Header=BB71_7 Depth=1
	testq	%rdi, %rdi
	je	.LBB71_12
# %bb.11:                               #   in Loop: Header=BB71_7 Depth=1
	leaq	(%rsp,%rbx), %rdx
	addq	$44, %rdx
	addq	(%rsi), %rax
	movq	%rax, %rcx
	movq	%rdi, %r8
	callq	memcpy
	movq	8(%rsi), %rax
	jmp	.LBB71_12
.LBB71_13:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
.LBB71_14:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.22(%rip), %r8
	movl	$440, %edx                      # imm = 0x1B8
	callq	_ZN3fmt3v1211assert_failEPKciS2_
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v126detail15write_codepointILy8EcNS0_14basic_appenderIcEEEET1_S5_cj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail15write_codepointILy8EcNS0_14basic_appenderIcEEEET1_S5_cj,"xr",discard,_ZN3fmt3v126detail15write_codepointILy8EcNS0_14basic_appenderIcEEEET1_S5_cj
	.globl	_ZN3fmt3v126detail15write_codepointILy8EcNS0_14basic_appenderIcEEEET1_S5_cj # -- Begin function _ZN3fmt3v126detail15write_codepointILy8EcNS0_14basic_appenderIcEEEET1_S5_cj
	.p2align	4
_ZN3fmt3v126detail15write_codepointILy8EcNS0_14basic_appenderIcEEEET1_S5_cj: # @_ZN3fmt3v126detail15write_codepointILy8EcNS0_14basic_appenderIcEEEET1_S5_cj
.seh_proc _ZN3fmt3v126detail15write_codepointILy8EcNS0_14basic_appenderIcEEEET1_S5_cj
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movl	%r8d, %edi
	movl	%edx, %ebx
	movq	%rcx, %rsi
	movq	8(%rcx), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rcx), %rdx
	jbe	.LBB72_2
# %bb.1:
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
.LBB72_2:
	movq	(%rsi), %rcx
	movq	%rdx, 8(%rsi)
	movb	$92, (%rcx,%rax)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rsi), %rdx
	jbe	.LBB72_4
# %bb.3:
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
.LBB72_4:
	movq	(%rsi), %rcx
	movq	%rdx, 8(%rsi)
	movb	%bl, (%rcx,%rax)
	movabsq	$3472328296227680304, %rax      # imm = 0x3030303030303030
	movq	%rax, 40(%rsp)
	leaq	47(%rsp), %rax
	leaq	.L.str.35(%rip), %rcx
	movl	%edi, %edx
	.p2align	4
.LBB72_5:                               # =>This Inner Loop Header: Depth=1
	movl	%edi, %r8d
	andl	$15, %r8d
	movzbl	(%r8,%rcx), %r8d
	movb	%r8b, (%rax)
	shrl	$4, %edx
	decq	%rax
	cmpl	$15, %edi
	movl	%edx, %edi
	ja	.LBB72_5
# %bb.6:
	movq	8(%rsi), %rax
	xorl	%ebx, %ebx
	jmp	.LBB72_7
	.p2align	4
.LBB72_12:                              #   in Loop: Header=BB72_7 Depth=1
	addq	%rdi, %rax
	movq	%rax, 8(%rsi)
	addq	%rdi, %rbx
	cmpq	$8, %rbx
	je	.LBB72_13
.LBB72_7:                               # =>This Inner Loop Header: Depth=1
	cmpq	$9, %rbx
	jge	.LBB72_14
# %bb.8:                                #   in Loop: Header=BB72_7 Depth=1
	movl	$8, %edi
	subq	%rbx, %rdi
	movq	16(%rsi), %rcx
	subq	%rax, %rcx
	cmpq	%rdi, %rcx
	jae	.LBB72_10
# %bb.9:                                #   in Loop: Header=BB72_7 Depth=1
	addq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rax, %rdx
	callq	*24(%rsi)
	movq	8(%rsi), %rax
	movq	16(%rsi), %rcx
	subq	%rax, %rcx
	cmpq	%rcx, %rdi
	cmovaeq	%rcx, %rdi
.LBB72_10:                              #   in Loop: Header=BB72_7 Depth=1
	testq	%rdi, %rdi
	je	.LBB72_12
# %bb.11:                               #   in Loop: Header=BB72_7 Depth=1
	leaq	(%rsp,%rbx), %rdx
	addq	$40, %rdx
	addq	(%rsi), %rax
	movq	%rax, %rcx
	movq	%rdi, %r8
	callq	memcpy
	movq	8(%rsi), %rax
	jmp	.LBB72_12
.LBB72_13:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
.LBB72_14:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.22(%rip), %r8
	movl	$440, %edx                      # imm = 0x1B8
	callq	_ZN3fmt3v1211assert_failEPKciS2_
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUljNSC_IcEEE_EEvSH_S8_ENKUlPKcSK_E_clESK_SK_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUljNSC_IcEEE_EEvSH_S8_ENKUlPKcSK_E_clESK_SK_,"xr",discard,_ZZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUljNSC_IcEEE_EEvSH_S8_ENKUlPKcSK_E_clESK_SK_
	.globl	_ZZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUljNSC_IcEEE_EEvSH_S8_ENKUlPKcSK_E_clESK_SK_ # -- Begin function _ZZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUljNSC_IcEEE_EEvSH_S8_ENKUlPKcSK_E_clESK_SK_
	.p2align	4
_ZZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUljNSC_IcEEE_EEvSH_S8_ENKUlPKcSK_E_clESK_SK_: # @_ZZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUljNSC_IcEEE_EEvSH_S8_ENKUlPKcSK_E_clESK_SK_
.seh_proc _ZZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUljNSC_IcEEE_EEvSH_S8_ENKUlPKcSK_E_clESK_SK_
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movq	%rcx, %rax
	movzbl	(%rdx), %ecx
	movl	%ecx, %r9d
	shrl	$3, %r9d
	leaq	.L.str.33(%rip), %r10
	movsbq	(%r9,%r10), %rsi
	movl	$-2130771968, %r11d             # imm = 0x80FF0000
	xorl	%r10d, %r10d
	btl	%r9d, %r11d
	setb	%r10b
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks(%rip), %r9
	andl	(%r9,%rsi,4), %ecx
	shll	$18, %ecx
	movzbl	1(%rdx), %r11d
	movl	%r11d, %r9d
	andl	$63, %r9d
	shll	$12, %r9d
	orl	%ecx, %r9d
	movzbl	2(%rdx), %edi
	movl	%edi, %ecx
	andl	$63, %ecx
	shll	$6, %ecx
	orl	%r9d, %ecx
	movzbl	3(%rdx), %ebx
	movl	%ebx, %r9d
	andl	$63, %r9d
	orl	%ecx, %r9d
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc(%rip), %rcx
	movzbl	(%rcx,%rsi,4), %ecx
	shrl	%cl, %r9d
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins(%rip), %r14
	xorl	%ecx, %ecx
	cmpl	(%r14,%rsi,4), %r9d
	setb	%cl
	shll	$6, %ecx
	movl	%r9d, %r14d
	andl	$2147481600, %r14d              # imm = 0x7FFFF800
	xorl	%ebp, %ebp
	cmpl	$55296, %r14d                   # imm = 0xD800
	sete	%bpl
	shll	$7, %ebp
	xorl	%r14d, %r14d
	cmpl	$1114112, %r9d                  # imm = 0x110000
	setae	%r14b
	shll	$8, %r14d
	shrl	$2, %r11d
	andl	$-16, %r11d
	shrl	$6, %edi
	shrl	$6, %ebx
	leal	(%r11,%rdi,4), %edi
	orl	%ebx, %edi
	orl	%ecx, %edi
	orl	%r14d, %edi
	orl	%ebp, %edi
	xorl	$42, %edi
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte(%rip), %rcx
	movzbl	(%rcx,%rsi,4), %ecx
	shrl	%cl, %edi
	testl	%edi, %edi
	je	.LBB73_2
# %bb.1:
	movl	$1, %ecx
	movl	$-1, %r9d
	jmp	.LBB73_3
.LBB73_2:
	movq	%r10, %rcx
	addq	%rsi, %rcx
	js	.LBB73_4
.LBB73_3:
	leaq	1(%rdx), %rbx
	addq	%rdx, %rsi
	addq	%r10, %rsi
	movq	%r8, 32(%rsp)
	movq	%rcx, 40(%rsp)
	leaq	32(%rsp), %r8
	movq	%rax, %rcx
	movl	%r9d, %edx
	callq	_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEENKUljNSB_IcEEE_clEjSG_
	testl	%edi, %edi
	cmovneq	%rbx, %rsi
	xorl	%ecx, %ecx
	testb	%al, %al
	cmovneq	%rsi, %rcx
	movq	%rcx, %rax
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
.LBB73_4:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.22(%rip), %r8
	movl	$440, %edx                      # imm = 0x1B8
	callq	_ZN3fmt3v1211assert_failEPKciS2_
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEENKUljNSB_IcEEE_clEjSG_;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	4, 0x0                          # -- Begin function _ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEENKUljNSB_IcEEE_clEjSG_
.LCPI74_0:
	.long	4294902016                      # 0xffff0100
	.long	4294901792                      # 0xffff0020
	.long	4294836224                      # 0xfffe0000
	.long	4294839552                      # 0xfffe0d00
.LCPI74_1:
	.long	4294923264                      # 0xffff5400
	.long	4294903552                      # 0xffff0700
	.long	4294902256                      # 0xffff01f0
	.long	4294902224                      # 0xffff01d0
.LCPI74_2:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
.LCPI74_3:
	.long	2147494819                      # 0x80002ba3
	.long	2147484159                      # 0x800001ff
	.long	2147483657                      # 0x80000009
	.long	2147483711                      # 0x8000003f
.LCPI74_4:
	.long	2147483744                      # 0x80000060
	.long	2147483654                      # 0x80000006
	.long	2147549181                      # 0x8000fffd
	.long	2147484495                      # 0x8000034f
	.section	.text$_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEENKUljNSB_IcEEE_clEjSG_,"xr",discard,_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEENKUljNSB_IcEEE_clEjSG_
	.globl	_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEENKUljNSB_IcEEE_clEjSG_
	.p2align	4
_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEENKUljNSB_IcEEE_clEjSG_: # @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEENKUljNSB_IcEEE_clEjSG_
.seh_proc _ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEENKUljNSB_IcEEE_clEjSG_
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$352, %rsp                      # imm = 0x160
	.seh_stackalloc 352
	.seh_endprologue
	movl	%edx, %edi
	movq	%rcx, %rsi
	movq	(%rcx), %rax
	cmpb	$1, (%rax)
	jne	.LBB74_11
# %bb.1:
	cmpl	$32, %edi
	jae	.LBB74_2
.LBB74_6:
	leaq	88(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$256, 72(%rsp)                  # imm = 0x100
	leaq	_ZN3fmt3v126detail15counting_bufferIcE4growERNS1_6bufferIcEEy(%rip), %rax
	movq	%rax, 80(%rsp)
	movq	$0, 344(%rsp)
	movq	(%r8), %rax
	movq	%rax, 32(%rsp)
	movq	%r8, %rbx
	addq	8(%r8), %rax
	movq	%rax, 40(%rsp)
	movl	%edi, 48(%rsp)
	leaq	56(%rsp), %rcx
	leaq	32(%rsp), %rdx
	callq	_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE
	movq	64(%rsp), %r9
	addq	344(%rsp), %r9
	movq	8(%rsi), %rcx
	movq	16(%rsi), %r8
	movq	(%rcx), %rdx
	leaq	(%rdx,%r9), %r11
	movq	(%r8), %r10
	cmpq	%r10, %r11
	setbe	%al
	ja	.LBB74_10
# %bb.7:
	movq	%r11, (%rcx)
	movq	24(%rsi), %rdx
	addq	%r9, (%rdx)
	movq	(%rcx), %r9
	cmpq	(%r8), %r9
	jae	.LBB74_23
# %bb.8:
	movq	(%rbx), %r8
	addq	8(%rbx), %r8
	movq	32(%rsi), %r10
	movq	(%r10), %r11
	addq	8(%r10), %r11
	cmpq	%r11, %r8
	jne	.LBB74_23
# %bb.9:
	incq	%r9
	movq	%r9, (%rcx)
	jmp	.LBB74_22
.LBB74_2:
	cmpl	$34, %edi
	je	.LBB74_6
# %bb.3:
	cmpl	$92, %edi
	je	.LBB74_6
# %bb.4:
	cmpl	$127, %edi
	je	.LBB74_6
# %bb.5:
	movl	%edi, %ecx
	movq	%r8, %rbx
	callq	_ZN3fmt3v126detail12is_printableEj
	movq	%rbx, %r8
	testb	%al, %al
	je	.LBB74_6
.LBB74_11:
	movl	$1, %eax
	cmpl	$4352, %edi                     # imm = 0x1100
	jb	.LBB74_16
# %bb.12:
	cmpl	$4448, %edi                     # imm = 0x1160
	setb	%al
	leal	-9001(%rdi), %ecx
	cmpl	$2, %ecx
	setb	%cl
	orb	%al, %cl
	movl	$2, %eax
	jne	.LBB74_16
# %bb.13:
	leal	-11904(%rdi), %ecx
	cmpl	$30288, %ecx                    # imm = 0x7650
	setb	%cl
	cmpl	$12351, %edi                    # imm = 0x303F
	setne	%dl
	movl	%edi, %r9d
	andl	$-65538, %r9d                   # imm = 0xFFFEFFFE
	movd	%edi, %xmm0
	movd	%r9d, %xmm1
	punpckldq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	pshufd	$80, %xmm0, %xmm2               # xmm2 = xmm0[0,0,1,1]
	punpcklqdq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	paddd	.LCPI74_0(%rip), %xmm2
	paddd	.LCPI74_1(%rip), %xmm0
	movdqa	.LCPI74_2(%rip), %xmm1          # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm1, %xmm0
	pcmpgtd	.LCPI74_3(%rip), %xmm0
	pxor	%xmm1, %xmm2
	pcmpgtd	.LCPI74_4(%rip), %xmm2
	packssdw	%xmm2, %xmm0
	packsswb	%xmm0, %xmm0
	pmovmskb	%xmm0, %r9d
	xorb	$-1, %r9b
	jne	.LBB74_16
# %bb.14:
	andb	%cl, %dl
	jne	.LBB74_16
# %bb.15:
	andl	$-256, %edi
	xorl	%eax, %eax
	cmpl	$129280, %edi                   # imm = 0x1F900
	sete	%al
	incq	%rax
.LBB74_16:
	movq	8(%rsi), %rcx
	movq	16(%rsi), %r9
	addq	(%rcx), %rax
	cmpq	(%r9), %rax
	jbe	.LBB74_18
# %bb.17:
	xorl	%eax, %eax
	jmp	.LBB74_23
.LBB74_18:
	movq	%rax, (%rcx)
	movq	8(%r8), %rax
	movq	24(%rsi), %rdx
	addq	%rax, (%rdx)
	movq	(%rsi), %r10
	movb	$1, %al
	cmpb	$1, (%r10)
	jne	.LBB74_23
# %bb.19:
	movq	(%rcx), %r10
	cmpq	(%r9), %r10
	jae	.LBB74_23
# %bb.20:
	movq	(%r8), %r9
	addq	8(%r8), %r9
	movq	32(%rsi), %r8
	movq	(%r8), %r11
	addq	8(%r8), %r11
	cmpq	%r11, %r9
	jne	.LBB74_23
# %bb.21:
	incq	%r10
	movq	%r10, (%rcx)
.LBB74_22:
	incq	(%rdx)
	jmp	.LBB74_23
.LBB74_10:
	subq	%rdx, %r10
	movq	24(%rsi), %rdx
	addq	%r10, (%rdx)
	movq	(%r8), %rdx
	movq	%rdx, (%rcx)
.LBB74_23:
                                        # kill: def $al killed $al killed $eax
	.seh_startepilogue
	addq	$352, %rsp                      # imm = 0x160
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v126detail15counting_bufferIcE4growERNS1_6bufferIcEEy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail15counting_bufferIcE4growERNS1_6bufferIcEEy,"xr",discard,_ZN3fmt3v126detail15counting_bufferIcE4growERNS1_6bufferIcEEy
	.globl	_ZN3fmt3v126detail15counting_bufferIcE4growERNS1_6bufferIcEEy # -- Begin function _ZN3fmt3v126detail15counting_bufferIcE4growERNS1_6bufferIcEEy
	.p2align	4
_ZN3fmt3v126detail15counting_bufferIcE4growERNS1_6bufferIcEEy: # @_ZN3fmt3v126detail15counting_bufferIcE4growERNS1_6bufferIcEEy
# %bb.0:
	cmpq	$256, 8(%rcx)                   # imm = 0x100
	jne	.LBB75_2
# %bb.1:
	addq	$256, 288(%rcx)                 # imm = 0x100
	movq	$0, 8(%rcx)
.LBB75_2:
	retq
                                        # -- End function
	.def	_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_yRKNS0_11basic_specsE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_yRKNS0_11basic_specsE,"xr",discard,_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_yRKNS0_11basic_specsE
	.globl	_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_yRKNS0_11basic_specsE # -- Begin function _ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_yRKNS0_11basic_specsE
	.p2align	4
_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_yRKNS0_11basic_specsE: # @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_yRKNS0_11basic_specsE
.seh_proc _ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_yRKNS0_11basic_specsE
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movl	(%r8), %eax
	shrl	$15, %eax
	andl	$7, %eax
	leaq	4(%r8), %rbx
	cmpl	$1, %eax
	jne	.LBB76_6
# %bb.1:
	testq	%rdi, %rdi
	je	.LBB76_35
# %bb.2:
	movzbl	(%rbx), %ebx
	jmp	.LBB76_3
	.p2align	4
.LBB76_5:                               #   in Loop: Header=BB76_3 Depth=1
	movq	(%rsi), %rcx
	movq	%rdx, 8(%rsi)
	movb	%bl, (%rcx,%rax)
	decq	%rdi
	je	.LBB76_35
.LBB76_3:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rsi), %rdx
	jbe	.LBB76_5
# %bb.4:                                #   in Loop: Header=BB76_3 Depth=1
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rax
	leaq	1(%rax), %rdx
	jmp	.LBB76_5
.LBB76_6:
	testq	%rdi, %rdi
	je	.LBB76_35
# %bb.7:
	testl	%eax, %eax
	je	.LBB76_35
# %bb.8:
	leaq	(%r8,%rax), %r14
	addq	$4, %r14
	movq	8(%rsi), %rdx
	xorl	%r15d, %r15d
	jmp	.LBB76_9
	.p2align	4
.LBB76_34:                              #   in Loop: Header=BB76_9 Depth=1
	incq	%r15
	cmpq	%rdi, %r15
	je	.LBB76_35
.LBB76_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB76_10 Depth 2
                                        #       Child Loop BB76_26 Depth 3
                                        #       Child Loop BB76_30 Depth 3
                                        #       Child Loop BB76_18 Depth 3
                                        #       Child Loop BB76_21 Depth 3
	movq	%rbx, %r12
	jmp	.LBB76_10
	.p2align	4
.LBB76_32:                              #   in Loop: Header=BB76_10 Depth=2
	movq	8(%rsi), %rdx
.LBB76_33:                              #   in Loop: Header=BB76_10 Depth=2
	addq	%r13, %rdx
	movq	%rdx, 8(%rsi)
	addq	%r13, %r12
	cmpq	%r14, %r12
	je	.LBB76_34
.LBB76_10:                              #   Parent Loop BB76_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB76_26 Depth 3
                                        #       Child Loop BB76_30 Depth 3
                                        #       Child Loop BB76_18 Depth 3
                                        #       Child Loop BB76_21 Depth 3
	movq	%r14, %r13
	subq	%r12, %r13
	js	.LBB76_36
# %bb.11:                               #   in Loop: Header=BB76_10 Depth=2
	movq	16(%rsi), %rax
	subq	%rdx, %rax
	cmpq	%r13, %rax
	jae	.LBB76_13
# %bb.12:                               #   in Loop: Header=BB76_10 Depth=2
	addq	%r13, %rdx
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rdx
	movq	16(%rsi), %rax
	subq	%rdx, %rax
	cmpq	%rax, %r13
	cmovaeq	%rax, %r13
.LBB76_13:                              #   in Loop: Header=BB76_10 Depth=2
	testq	%r13, %r13
	je	.LBB76_33
# %bb.14:                               #   in Loop: Header=BB76_10 Depth=2
	movq	(%rsi), %rax
	leaq	(%rax,%rdx), %rcx
	cmpq	$3, %r13
	jbe	.LBB76_15
# %bb.22:                               #   in Loop: Header=BB76_10 Depth=2
	movq	%rcx, %r8
	subq	%r12, %r8
	cmpq	$32, %r8
	jae	.LBB76_23
.LBB76_15:                              #   in Loop: Header=BB76_10 Depth=2
	xorl	%r8d, %r8d
.LBB76_16:                              #   in Loop: Header=BB76_10 Depth=2
	movq	%r13, %r10
	movq	%r8, %r9
	andq	$3, %r10
	je	.LBB76_19
# %bb.17:                               #   in Loop: Header=BB76_10 Depth=2
	movq	%r8, %r9
	.p2align	4
.LBB76_18:                              #   Parent Loop BB76_9 Depth=1
                                        #     Parent Loop BB76_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r12,%r9), %r11d
	movb	%r11b, (%rcx,%r9)
	incq	%r9
	decq	%r10
	jne	.LBB76_18
.LBB76_19:                              #   in Loop: Header=BB76_10 Depth=2
	subq	%r13, %r8
	cmpq	$-4, %r8
	ja	.LBB76_32
# %bb.20:                               #   in Loop: Header=BB76_10 Depth=2
	addq	%rdx, %rax
	addq	$3, %rax
	.p2align	4
.LBB76_21:                              #   Parent Loop BB76_9 Depth=1
                                        #     Parent Loop BB76_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r12,%r9), %ecx
	movb	%cl, -3(%rax,%r9)
	movzbl	1(%r12,%r9), %ecx
	movb	%cl, -2(%rax,%r9)
	movzbl	2(%r12,%r9), %ecx
	movb	%cl, -1(%rax,%r9)
	movzbl	3(%r12,%r9), %ecx
	movb	%cl, (%rax,%r9)
	addq	$4, %r9
	cmpq	%r9, %r13
	jne	.LBB76_21
	jmp	.LBB76_32
.LBB76_23:                              #   in Loop: Header=BB76_10 Depth=2
	cmpq	$32, %r13
	jae	.LBB76_25
# %bb.24:                               #   in Loop: Header=BB76_10 Depth=2
	xorl	%r8d, %r8d
	jmp	.LBB76_29
.LBB76_25:                              #   in Loop: Header=BB76_10 Depth=2
	movq	%r13, %r8
	andq	$-32, %r8
	leaq	(%rax,%rdx), %r9
	addq	$16, %r9
	xorl	%r10d, %r10d
	.p2align	4
.LBB76_26:                              #   Parent Loop BB76_9 Depth=1
                                        #     Parent Loop BB76_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%r12,%r10), %xmm0
	movups	16(%r12,%r10), %xmm1
	movups	%xmm0, -16(%r9,%r10)
	movups	%xmm1, (%r9,%r10)
	addq	$32, %r10
	cmpq	%r10, %r8
	jne	.LBB76_26
# %bb.27:                               #   in Loop: Header=BB76_10 Depth=2
	cmpq	%r8, %r13
	je	.LBB76_32
# %bb.28:                               #   in Loop: Header=BB76_10 Depth=2
	testb	$28, %r13b
	je	.LBB76_16
.LBB76_29:                              #   in Loop: Header=BB76_10 Depth=2
	movq	%r8, %r9
	movq	%r13, %r8
	andq	$-4, %r8
	.p2align	4
.LBB76_30:                              #   Parent Loop BB76_9 Depth=1
                                        #     Parent Loop BB76_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%r12,%r9), %r10d
	movl	%r10d, (%rcx,%r9)
	addq	$4, %r9
	cmpq	%r9, %r8
	jne	.LBB76_30
# %bb.31:                               #   in Loop: Header=BB76_10 Depth=2
	cmpq	%r8, %r13
	je	.LBB76_32
	jmp	.LBB76_16
.LBB76_35:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB76_36:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.22(%rip), %r8
	movl	$440, %edx                      # imm = 0x1B8
	callq	_ZN3fmt3v1211assert_failEPKciS2_
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEESB_SB_SD_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEESB_SB_SD_,"xr",discard,_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEESB_SB_SD_
	.globl	_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEESB_SB_SD_ # -- Begin function _ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEESB_SB_SD_
	.p2align	4
_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEESB_SB_SD_: # @_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEESB_SB_SD_
.seh_proc _ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEESB_SB_SD_
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$136, %rsp
	.seh_stackalloc 136
	.seh_endprologue
	movq	%rdx, %r14
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	cmpq	$0, 8(%rdx)
	je	.LBB77_4
# %bb.1:
	movq	(%r14), %rbx
	movq	8(%rbx), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rbx), %rdx
	jbe	.LBB77_3
# %bb.2:
	movq	%rbx, %rcx
	movq	%r8, %rsi
	callq	*24(%rbx)
	movq	%rsi, %r8
	movq	8(%rbx), %rax
	leaq	1(%rax), %rdx
.LBB77_3:
	movq	(%rbx), %rcx
	movq	%rdx, 8(%rbx)
	movb	$34, (%rcx,%rax)
	decq	8(%r14)
.LBB77_4:
	movq	(%r8), %r15
	movq	8(%r8), %rdx
	addq	%r15, %rdx
	movq	%r14, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	.p2align	4
.LBB77_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB77_9 Depth 2
                                        #     Child Loop BB77_26 Depth 2
                                        #     Child Loop BB77_30 Depth 2
                                        #     Child Loop BB77_34 Depth 2
                                        #     Child Loop BB77_37 Depth 2
                                        #     Child Loop BB77_41 Depth 2
                                        #     Child Loop BB77_57 Depth 2
	movq	%rdx, 72(%rsp)
	movq	$0, 80(%rsp)
	movl	$0, 88(%rsp)
	movq	%rdx, %rax
	subq	%r15, %rax
	js	.LBB77_70
# %bb.6:                                #   in Loop: Header=BB77_5 Depth=1
	cmpq	$4, %rax
	jb	.LBB77_20
# %bb.7:                                #   in Loop: Header=BB77_5 Depth=1
	leaq	(%r15,%rax), %rsi
	addq	$-3, %rsi
	movq	%r15, %r12
	jmp	.LBB77_9
	.p2align	4
.LBB77_8:                               #   in Loop: Header=BB77_9 Depth=2
	incq	%r12
	cmpq	%rsi, %r12
	jae	.LBB77_18
.LBB77_9:                               #   Parent Loop BB77_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r12), %eax
	movl	%eax, %ecx
	shrl	$3, %ecx
	leaq	.L.str.33(%rip), %rdx
	movsbq	(%rcx,%rdx), %rbx
	xorl	%r13d, %r13d
	movl	$-2130771968, %edx              # imm = 0x80FF0000
	btl	%ecx, %edx
	setb	%r13b
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks(%rip), %rcx
	andl	(%rcx,%rbx,4), %eax
	shll	$18, %eax
	movzbl	1(%r12), %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	shll	$12, %ecx
	orl	%eax, %ecx
	movzbl	2(%r12), %r8d
	movl	%r8d, %r10d
	andl	$63, %r10d
	shll	$6, %r10d
	orl	%ecx, %r10d
	movzbl	3(%r12), %r9d
	movl	%r9d, %eax
	andl	$63, %eax
	orl	%r10d, %eax
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc(%rip), %rcx
	movzbl	(%rcx,%rbx,4), %ecx
	shrl	%cl, %eax
	xorl	%ecx, %ecx
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins(%rip), %r10
	cmpl	(%r10,%rbx,4), %eax
	setb	%cl
	shll	$6, %ecx
	movl	%eax, %r11d
	andl	$2147481600, %r11d              # imm = 0x7FFFF800
	xorl	%r10d, %r10d
	cmpl	$55296, %r11d                   # imm = 0xD800
	sete	%r10b
	shll	$7, %r10d
	xorl	%r11d, %r11d
	cmpl	$1114112, %eax                  # imm = 0x110000
	setae	%r11b
	shrl	$2, %edx
	andl	$-16, %edx
	shrl	$6, %r8d
	leal	(%rdx,%r8,4), %r14d
	shrl	$6, %r9d
	orl	%r9d, %r14d
	orl	%ecx, %r14d
	shll	$8, %r11d
	orl	%r11d, %r14d
	orl	%r10d, %r14d
	xorl	$42, %r14d
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte(%rip), %rcx
	movzbl	(%rcx,%rbx,4), %ecx
	shrl	%cl, %r14d
	movl	%r14d, %ecx
	negl	%ecx
	movl	$0, %ebp
	sbbl	%ebp, %ebp
	movl	$1, %edi
	testl	%r14d, %r14d
	jne	.LBB77_11
# %bb.10:                               #   in Loop: Header=BB77_9 Depth=2
	movq	%r13, %rdi
	addq	%rbx, %rdi
	js	.LBB77_70
.LBB77_11:                              #   in Loop: Header=BB77_9 Depth=2
	orl	%eax, %ebp
	cmpl	$32, %ebp
	jb	.LBB77_24
# %bb.12:                               #   in Loop: Header=BB77_9 Depth=2
	cmpl	$34, %ebp
	je	.LBB77_24
# %bb.13:                               #   in Loop: Header=BB77_9 Depth=2
	cmpl	$92, %ebp
	je	.LBB77_24
# %bb.14:                               #   in Loop: Header=BB77_9 Depth=2
	cmpl	$127, %ebp
	je	.LBB77_24
# %bb.15:                               #   in Loop: Header=BB77_9 Depth=2
	movl	%ebp, %ecx
	callq	_ZN3fmt3v126detail12is_printableEj
	testb	%al, %al
	je	.LBB77_24
# %bb.16:                               #   in Loop: Header=BB77_9 Depth=2
	testl	%r14d, %r14d
	jne	.LBB77_8
# %bb.17:                               #   in Loop: Header=BB77_9 Depth=2
	addq	%r13, %r12
	addq	%rbx, %r12
	cmpq	%rsi, %r12
	jb	.LBB77_9
.LBB77_18:                              #   in Loop: Header=BB77_5 Depth=1
	movq	64(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, %rax
	subq	%r12, %rax
	movq	56(%rsp), %r14                  # 8-byte Reload
	js	.LBB77_70
	.p2align	4
# %bb.19:                               #   in Loop: Header=BB77_5 Depth=1
	subq	%r12, %rdx
	jne	.LBB77_21
	jmp	.LBB77_53
	.p2align	4
.LBB77_20:                              #   in Loop: Header=BB77_5 Depth=1
	movq	%r15, %r12
	subq	%r12, %rdx
	je	.LBB77_53
.LBB77_21:                              #   in Loop: Header=BB77_5 Depth=1
	movl	$0, 43(%rsp)
	movl	$0, 40(%rsp)
	cmpq	$4, %rdx
	setb	%cl
	leaq	40(%rsp), %r9
	movq	%r9, %r8
	subq	%r12, %r8
	cmpq	$32, %r8
	setb	%r8b
	orb	%cl, %r8b
	movq	%r9, %rcx
	movq	%r12, %r8
	movq	64(%rsp), %rsi                  # 8-byte Reload
	jne	.LBB77_33
# %bb.22:                               #   in Loop: Header=BB77_5 Depth=1
	cmpq	$32, %rdx
	jae	.LBB77_25
# %bb.23:                               #   in Loop: Header=BB77_5 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB77_29
	.p2align	4
.LBB77_24:                              #   in Loop: Header=BB77_5 Depth=1
	addq	%r12, %rdi
	movq	%r12, 72(%rsp)
	movq	%rdi, 80(%rsp)
	jmp	.LBB77_51
.LBB77_25:                              #   in Loop: Header=BB77_5 Depth=1
	movq	%rdx, %r9
	andq	$-32, %r9
	xorl	%ecx, %ecx
	.p2align	4
.LBB77_26:                              #   Parent Loop BB77_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r12,%rcx), %xmm0
	movups	16(%r12,%rcx), %xmm1
	movups	%xmm0, 40(%rsp,%rcx)
	movups	%xmm1, 56(%rsp,%rcx)
	addq	$32, %rcx
	cmpq	%rcx, %r9
	jne	.LBB77_26
# %bb.27:                               #   in Loop: Header=BB77_5 Depth=1
	cmpq	%r9, %rdx
	je	.LBB77_38
# %bb.28:                               #   in Loop: Header=BB77_5 Depth=1
	testb	$28, %dl
	je	.LBB77_32
.LBB77_29:                              #   in Loop: Header=BB77_5 Depth=1
	movq	%rdx, %r10
	andq	$-4, %r10
	leaq	(%rsp,%r10), %rcx
	addq	$40, %rcx
	leaq	(%r12,%r10), %r8
	.p2align	4
.LBB77_30:                              #   Parent Loop BB77_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r12,%r9), %r11d
	movl	%r11d, 40(%rsp,%r9)
	addq	$4, %r9
	cmpq	%r9, %r10
	jne	.LBB77_30
# %bb.31:                               #   in Loop: Header=BB77_5 Depth=1
	cmpq	%r10, %rdx
	jne	.LBB77_33
	jmp	.LBB77_38
.LBB77_32:                              #   in Loop: Header=BB77_5 Depth=1
	leaq	(%rsp,%r9), %rcx
	addq	$40, %rcx
	addq	%r12, %r9
	movq	%r9, %r8
	.p2align	4
.LBB77_33:                              #   in Loop: Header=BB77_5 Depth=1
	movl	%esi, %r9d
	subl	%r8d, %r9d
	movq	%r8, %rdx
	andl	$7, %r9d
	je	.LBB77_35
	.p2align	4
.LBB77_34:                              #   Parent Loop BB77_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx), %r10d
	incq	%rdx
	movb	%r10b, (%rcx)
	incq	%rcx
	decq	%r9
	jne	.LBB77_34
.LBB77_35:                              #   in Loop: Header=BB77_5 Depth=1
	subq	%rsi, %r8
	cmpq	$-8, %r8
	ja	.LBB77_38
# %bb.36:                               #   in Loop: Header=BB77_5 Depth=1
	xorl	%r8d, %r8d
	.p2align	4
.LBB77_37:                              #   Parent Loop BB77_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx,%r8), %r9d
	movb	%r9b, (%rcx,%r8)
	movzbl	1(%rdx,%r8), %r9d
	movb	%r9b, 1(%rcx,%r8)
	movzbl	2(%rdx,%r8), %r9d
	movb	%r9b, 2(%rcx,%r8)
	movzbl	3(%rdx,%r8), %r9d
	movb	%r9b, 3(%rcx,%r8)
	movzbl	4(%rdx,%r8), %r9d
	movb	%r9b, 4(%rcx,%r8)
	movzbl	5(%rdx,%r8), %r9d
	movb	%r9b, 5(%rcx,%r8)
	movzbl	6(%rdx,%r8), %r9d
	movb	%r9b, 6(%rcx,%r8)
	movzbl	7(%rdx,%r8), %r9d
	movb	%r9b, 7(%rcx,%r8)
	leaq	(%rdx,%r8), %r9
	addq	$8, %r9
	addq	$8, %r8
	cmpq	%rsi, %r9
	jne	.LBB77_37
.LBB77_38:                              #   in Loop: Header=BB77_5 Depth=1
	addq	%rsp, %rax
	addq	$40, %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	leaq	40(%rsp), %r14
	jmp	.LBB77_41
	.p2align	4
.LBB77_39:                              #   in Loop: Header=BB77_41 Depth=2
	leaq	1(%r14), %rsi
.LBB77_40:                              #   in Loop: Header=BB77_41 Depth=2
	movq	%rsi, %rax
	subq	%r14, %rax
	addq	%rax, %r12
	movq	%rsi, %r14
	cmpq	104(%rsp), %rsi                 # 8-byte Folded Reload
	jae	.LBB77_52
.LBB77_41:                              #   Parent Loop BB77_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14), %eax
	movl	%eax, %ecx
	shrl	$3, %ecx
	leaq	.L.str.33(%rip), %rdx
	movsbq	(%rcx,%rdx), %rdi
	xorl	%esi, %esi
	movl	$-2130771968, %edx              # imm = 0x80FF0000
	btl	%ecx, %edx
	setb	%sil
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks(%rip), %rcx
	andl	(%rcx,%rdi,4), %eax
	shll	$18, %eax
	movzbl	1(%r14), %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	shll	$12, %ecx
	orl	%eax, %ecx
	movzbl	2(%r14), %r8d
	movl	%r8d, %r10d
	andl	$63, %r10d
	shll	$6, %r10d
	orl	%ecx, %r10d
	movzbl	3(%r14), %r9d
	movl	%r9d, %eax
	andl	$63, %eax
	orl	%r10d, %eax
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc(%rip), %rcx
	movzbl	(%rcx,%rdi,4), %ecx
	shrl	%cl, %eax
	xorl	%ecx, %ecx
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins(%rip), %r10
	cmpl	(%r10,%rdi,4), %eax
	setb	%cl
	shll	$6, %ecx
	movl	%eax, %r11d
	andl	$2147481600, %r11d              # imm = 0x7FFFF800
	xorl	%r10d, %r10d
	cmpl	$55296, %r11d                   # imm = 0xD800
	sete	%r10b
	shll	$7, %r10d
	xorl	%r11d, %r11d
	cmpl	$1114112, %eax                  # imm = 0x110000
	setae	%r11b
	shrl	$2, %edx
	andl	$-16, %edx
	shrl	$6, %r8d
	leal	(%rdx,%r8,4), %ebx
	shrl	$6, %r9d
	orl	%r9d, %ebx
	orl	%ecx, %ebx
	shll	$8, %r11d
	orl	%r11d, %ebx
	orl	%r10d, %ebx
	xorl	$42, %ebx
	leaq	.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte(%rip), %rcx
	movzbl	(%rcx,%rdi,4), %ecx
	shrl	%cl, %ebx
	movl	%ebx, %ecx
	negl	%ecx
	movl	$0, %ebp
	sbbl	%ebp, %ebp
	movl	$1, %r13d
	testl	%ebx, %ebx
	jne	.LBB77_43
# %bb.42:                               #   in Loop: Header=BB77_41 Depth=2
	movq	%rsi, %r13
	addq	%rdi, %r13
	js	.LBB77_70
.LBB77_43:                              #   in Loop: Header=BB77_41 Depth=2
	orl	%eax, %ebp
	cmpl	$32, %ebp
	jb	.LBB77_50
# %bb.44:                               #   in Loop: Header=BB77_41 Depth=2
	cmpl	$34, %ebp
	je	.LBB77_50
# %bb.45:                               #   in Loop: Header=BB77_41 Depth=2
	cmpl	$92, %ebp
	je	.LBB77_50
# %bb.46:                               #   in Loop: Header=BB77_41 Depth=2
	cmpl	$127, %ebp
	je	.LBB77_50
# %bb.47:                               #   in Loop: Header=BB77_41 Depth=2
	movl	%ebp, %ecx
	callq	_ZN3fmt3v126detail12is_printableEj
	testb	%al, %al
	je	.LBB77_50
# %bb.48:                               #   in Loop: Header=BB77_41 Depth=2
	testl	%ebx, %ebx
	jne	.LBB77_39
# %bb.49:                               #   in Loop: Header=BB77_41 Depth=2
	addq	%r14, %rsi
	addq	%rdi, %rsi
	jmp	.LBB77_40
	.p2align	4
.LBB77_50:                              #   in Loop: Header=BB77_5 Depth=1
	addq	%r12, %r13
	movq	%r12, 72(%rsp)
	movq	%r13, 80(%rsp)
.LBB77_51:                              #   in Loop: Header=BB77_5 Depth=1
	movl	%ebp, 88(%rsp)
.LBB77_52:                              #   in Loop: Header=BB77_5 Depth=1
	movq	56(%rsp), %r14                  # 8-byte Reload
.LBB77_53:                              #   in Loop: Header=BB77_5 Depth=1
	movq	72(%rsp), %rdi
	movq	(%r14), %r12
	movq	8(%r14), %rsi
	cmpq	%rdi, %r15
	je	.LBB77_62
# %bb.54:                               #   in Loop: Header=BB77_5 Depth=1
	testq	%rsi, %rsi
	je	.LBB77_61
# %bb.55:                               #   in Loop: Header=BB77_5 Depth=1
	movl	$1, %eax
	jmp	.LBB77_57
	.p2align	4
.LBB77_56:                              #   in Loop: Header=BB77_57 Depth=2
	xorl	%eax, %eax
	incq	%r15
	cmpq	%rdi, %r15
	je	.LBB77_62
.LBB77_57:                              #   Parent Loop BB77_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rax, %rax
	je	.LBB77_56
# %bb.58:                               #   in Loop: Header=BB77_57 Depth=2
	movzbl	(%r15), %ebx
	movq	8(%r12), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%r12), %rdx
	jbe	.LBB77_60
# %bb.59:                               #   in Loop: Header=BB77_57 Depth=2
	movq	%r12, %rcx
	callq	*24(%r12)
	movq	8(%r12), %rax
	leaq	1(%rax), %rdx
.LBB77_60:                              #   in Loop: Header=BB77_57 Depth=2
	movq	(%r12), %rcx
	movq	%rdx, 8(%r12)
	movb	%bl, (%rcx,%rax)
	decq	%rsi
	movq	%rsi, %rax
	incq	%r15
	cmpq	%rdi, %r15
	jne	.LBB77_57
	jmp	.LBB77_62
	.p2align	4
.LBB77_61:                              #   in Loop: Header=BB77_5 Depth=1
	xorl	%esi, %esi
.LBB77_62:                              #   in Loop: Header=BB77_5 Depth=1
	movq	%r12, (%r14)
	movq	%rsi, 8(%r14)
	movq	80(%rsp), %r15
	testq	%r15, %r15
	je	.LBB77_65
# %bb.63:                               #   in Loop: Header=BB77_5 Depth=1
	movq	(%r14), %rax
	movq	%rax, 112(%rsp)
	movq	8(%r14), %rax
	movq	%rax, 120(%rsp)
	leaq	40(%rsp), %rcx
	leaq	112(%rsp), %rdx
	leaq	72(%rsp), %r8
	callq	_ZN3fmt3v126detail16write_escaped_cpIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorcEES8_S8_RKNS1_18find_escape_resultISB_EE
	movups	40(%rsp), %xmm0
	movups	%xmm0, (%r14)
	movq	64(%rsp), %rdx                  # 8-byte Reload
	cmpq	%rdx, %r15
	jne	.LBB77_5
# %bb.64:
	movq	8(%r14), %rsi
.LBB77_65:
	testq	%rsi, %rsi
	je	.LBB77_69
# %bb.66:
	movq	(%r14), %rbx
	movq	8(%rbx), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rbx), %rdx
	jbe	.LBB77_68
# %bb.67:
	movq	%rbx, %rcx
	callq	*24(%rbx)
	movq	8(%rbx), %rax
	leaq	1(%rax), %rdx
.LBB77_68:
	movq	(%rbx), %rcx
	movq	%rdx, 8(%rbx)
	movb	$34, (%rcx,%rax)
	decq	8(%r14)
.LBB77_69:
	movups	(%r14), %xmm0
	movq	96(%rsp), %rax                  # 8-byte Reload
	movups	%xmm0, (%rax)
	.seh_startepilogue
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB77_70:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.22(%rip), %r8
	movl	$440, %edx                      # imm = 0x1B8
	callq	_ZN3fmt3v1211assert_failEPKciS2_
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v126detail16write_escaped_cpIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorcEES8_S8_RKNS1_18find_escape_resultISB_EE;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail16write_escaped_cpIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorcEES8_S8_RKNS1_18find_escape_resultISB_EE,"xr",discard,_ZN3fmt3v126detail16write_escaped_cpIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorcEES8_S8_RKNS1_18find_escape_resultISB_EE
	.globl	_ZN3fmt3v126detail16write_escaped_cpIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorcEES8_S8_RKNS1_18find_escape_resultISB_EE # -- Begin function _ZN3fmt3v126detail16write_escaped_cpIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorcEES8_S8_RKNS1_18find_escape_resultISB_EE
	.p2align	4
_ZN3fmt3v126detail16write_escaped_cpIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorcEES8_S8_RKNS1_18find_escape_resultISB_EE: # @_ZN3fmt3v126detail16write_escaped_cpIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorcEES8_S8_RKNS1_18find_escape_resultISB_EE
.seh_proc _ZN3fmt3v126detail16write_escaped_cpIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorcEES8_S8_RKNS1_18find_escape_resultISB_EE
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$120, %rsp
	.seh_stackalloc 120
	.seh_endprologue
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movl	16(%r8), %ebx
	leal	-9(%rbx), %eax
	cmpl	$30, %eax
	ja	.LBB78_1
# %bb.11:
	leaq	.LJTI78_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB78_20:
	cmpq	$0, 8(%rdi)
	je	.LBB78_10
# %bb.21:
	movq	(%rdi), %rbx
	movq	8(%rbx), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rbx), %rdx
	jbe	.LBB78_23
# %bb.22:
	movq	%rbx, %rcx
	callq	*24(%rbx)
	movq	8(%rbx), %rax
	leaq	1(%rax), %rdx
.LBB78_23:
	movq	(%rbx), %rcx
	movq	%rdx, 8(%rbx)
	movb	$92, (%rcx,%rax)
	movq	8(%rdi), %rax
	decq	%rax
	movq	%rax, 8(%rdi)
	movb	$116, %bl
	testq	%rax, %rax
	jne	.LBB78_7
	jmp	.LBB78_10
.LBB78_1:
	cmpl	$92, %ebx
	jne	.LBB78_24
.LBB78_2:
	cmpq	$0, 8(%rdi)
	je	.LBB78_10
# %bb.3:
	movq	(%rdi), %r14
	movq	8(%r14), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%r14), %rdx
	jbe	.LBB78_5
# %bb.4:
	movq	%r14, %rcx
	callq	*24(%r14)
	movq	8(%r14), %rax
	leaq	1(%rax), %rdx
.LBB78_5:
	movq	(%r14), %rcx
	movq	%rdx, 8(%r14)
	movb	$92, (%rcx,%rax)
	movq	8(%rdi), %rax
	decq	%rax
	movq	%rax, 8(%rdi)
	testq	%rax, %rax
	jne	.LBB78_7
	jmp	.LBB78_10
.LBB78_24:
	cmpl	$255, %ebx
	ja	.LBB78_26
# %bb.25:
	movups	(%rdi), %xmm0
	movaps	%xmm0, 80(%rsp)
	leaq	80(%rsp), %rdx
	movq	%rsi, %rcx
	movb	$120, %r8b
	movl	%ebx, %r9d
	callq	_ZN3fmt3v126detail15write_codepointILy2EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj
	jmp	.LBB78_30
.LBB78_16:
	cmpq	$0, 8(%rdi)
	je	.LBB78_10
# %bb.17:
	movq	(%rdi), %rbx
	movq	8(%rbx), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rbx), %rdx
	jbe	.LBB78_19
# %bb.18:
	movq	%rbx, %rcx
	callq	*24(%rbx)
	movq	8(%rbx), %rax
	leaq	1(%rax), %rdx
.LBB78_19:
	movq	(%rbx), %rcx
	movq	%rdx, 8(%rbx)
	movb	$92, (%rcx,%rax)
	movq	8(%rdi), %rax
	decq	%rax
	movq	%rax, 8(%rdi)
	movb	$114, %bl
	testq	%rax, %rax
	jne	.LBB78_7
	jmp	.LBB78_10
.LBB78_12:
	cmpq	$0, 8(%rdi)
	je	.LBB78_10
# %bb.13:
	movq	(%rdi), %rbx
	movq	8(%rbx), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rbx), %rdx
	jbe	.LBB78_15
# %bb.14:
	movq	%rbx, %rcx
	callq	*24(%rbx)
	movq	8(%rbx), %rax
	leaq	1(%rax), %rdx
.LBB78_15:
	movq	(%rbx), %rcx
	movq	%rdx, 8(%rbx)
	movb	$92, (%rcx,%rax)
	movq	8(%rdi), %rax
	decq	%rax
	movq	%rax, 8(%rdi)
	movb	$110, %bl
	testq	%rax, %rax
	je	.LBB78_10
.LBB78_7:
	movq	(%rdi), %r14
	movq	8(%r14), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%r14), %rdx
	jbe	.LBB78_9
# %bb.8:
	movq	%r14, %rcx
	callq	*24(%r14)
	movq	8(%r14), %rax
	leaq	1(%rax), %rdx
.LBB78_9:
	movq	(%r14), %rcx
	movq	%rdx, 8(%r14)
	movb	%bl, (%rcx,%rax)
	decq	8(%rdi)
.LBB78_10:
	movups	(%rdi), %xmm0
	movups	%xmm0, (%rsi)
.LBB78_30:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$120, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB78_26:
	cmpl	$65535, %ebx                    # imm = 0xFFFF
	ja	.LBB78_28
# %bb.27:
	movups	(%rdi), %xmm0
	movaps	%xmm0, 64(%rsp)
	leaq	64(%rsp), %rdx
	movq	%rsi, %rcx
	movb	$117, %r8b
	movl	%ebx, %r9d
	callq	_ZN3fmt3v126detail15write_codepointILy4EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj
	jmp	.LBB78_30
.LBB78_28:
	cmpl	$1114111, %ebx                  # imm = 0x10FFFF
	ja	.LBB78_31
# %bb.29:
	movups	(%rdi), %xmm0
	movaps	%xmm0, 48(%rsp)
	leaq	48(%rsp), %rdx
	movq	%rsi, %rcx
	movb	$85, %r8b
	movl	%ebx, %r9d
	callq	_ZN3fmt3v126detail15write_codepointILy8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj
	jmp	.LBB78_30
.LBB78_31:
	movq	(%r8), %r15
	movq	8(%r8), %r12
	cmpq	%r15, %r12
	js	.LBB78_35
# %bb.32:
	je	.LBB78_10
# %bb.33:
	leaq	104(%rsp), %rbx
	leaq	32(%rsp), %r14
	.p2align	4
.LBB78_34:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %r9d
	movups	(%rdi), %xmm0
	movaps	%xmm0, 32(%rsp)
	movq	%rbx, %rcx
	movq	%r14, %rdx
	movb	$120, %r8b
	callq	_ZN3fmt3v126detail15write_codepointILy2EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj
	movups	104(%rsp), %xmm0
	movups	%xmm0, (%rdi)
	incq	%r15
	cmpq	%r12, %r15
	jne	.LBB78_34
	jmp	.LBB78_10
.LBB78_35:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.22(%rip), %r8
	movl	$440, %edx                      # imm = 0x1B8
	callq	_ZN3fmt3v1211assert_failEPKciS2_
	int3
	.section	.rdata,"dr",associative,_ZN3fmt3v126detail16write_escaped_cpIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorcEES8_S8_RKNS1_18find_escape_resultISB_EE,unique,2
	.p2align	2, 0x0
.LJTI78_0:
	.long	.LBB78_20-.LJTI78_0
	.long	.LBB78_12-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_16-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_2-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_24-.LJTI78_0
	.long	.LBB78_2-.LJTI78_0
	.section	.text$_ZN3fmt3v126detail16write_escaped_cpIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorcEES8_S8_RKNS1_18find_escape_resultISB_EE,"xr",discard,_ZN3fmt3v126detail16write_escaped_cpIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorcEES8_S8_RKNS1_18find_escape_resultISB_EE
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v126detail15write_codepointILy2EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail15write_codepointILy2EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj,"xr",discard,_ZN3fmt3v126detail15write_codepointILy2EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj
	.globl	_ZN3fmt3v126detail15write_codepointILy2EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj # -- Begin function _ZN3fmt3v126detail15write_codepointILy2EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj
	.p2align	4
_ZN3fmt3v126detail15write_codepointILy2EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj: # @_ZN3fmt3v126detail15write_codepointILy2EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj
.seh_proc _ZN3fmt3v126detail15write_codepointILy2EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movl	%r9d, %ebx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	cmpq	$0, 8(%rdx)
	je	.LBB79_8
# %bb.1:
	movl	%r8d, %ebp
	movq	(%rdi), %r14
	movq	8(%r14), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%r14), %rdx
	jbe	.LBB79_3
# %bb.2:
	movq	%r14, %rcx
	callq	*24(%r14)
	movq	8(%r14), %rax
	leaq	1(%rax), %rdx
.LBB79_3:
	movq	(%r14), %rcx
	movq	%rdx, 8(%r14)
	movb	$92, (%rcx,%rax)
	decq	8(%rdi)
	je	.LBB79_8
# %bb.4:
	movq	(%rdi), %r14
	movq	8(%r14), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%r14), %rdx
	jbe	.LBB79_6
# %bb.5:
	movq	%r14, %rcx
	callq	*24(%r14)
	movq	8(%r14), %rax
	leaq	1(%rax), %rdx
.LBB79_6:
	movq	(%r14), %rcx
	movq	%rdx, 8(%r14)
	movb	%bpl, (%rcx,%rax)
	movq	8(%rdi), %r14
	decq	%r14
	movq	%r14, 8(%rdi)
	jmp	.LBB79_9
.LBB79_8:
	xorl	%r14d, %r14d
.LBB79_9:
	movw	$12336, 46(%rsp)                # imm = 0x3030
	leaq	47(%rsp), %rax
	leaq	.L.str.35(%rip), %rcx
	movl	%ebx, %edx
	.p2align	4
.LBB79_10:                              # =>This Inner Loop Header: Depth=1
	movl	%ebx, %r8d
	andl	$15, %r8d
	movzbl	(%r8,%rcx), %r8d
	movb	%r8b, (%rax)
	shrl	$4, %edx
	decq	%rax
	cmpl	$15, %ebx
	movl	%edx, %ebx
	ja	.LBB79_10
# %bb.11:
	movq	(%rdi), %rdi
	testq	%r14, %r14
	je	.LBB79_16
# %bb.12:
	movzbl	46(%rsp), %ebx
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rdi), %rdx
	jbe	.LBB79_14
# %bb.13:
	movq	%rdi, %rcx
	callq	*24(%rdi)
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
.LBB79_14:
	movq	(%rdi), %rcx
	movq	%rdx, 8(%rdi)
	movb	%bl, (%rcx,%rax)
	cmpq	$1, %r14
	jne	.LBB79_17
.LBB79_16:
	xorl	%r14d, %r14d
	jmp	.LBB79_20
.LBB79_17:
	movzbl	47(%rsp), %ebx
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rdi), %rdx
	jbe	.LBB79_19
# %bb.18:
	movq	%rdi, %rcx
	callq	*24(%rdi)
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
.LBB79_19:
	movq	(%rdi), %rcx
	movq	%rdx, 8(%rdi)
	movb	%bl, (%rcx,%rax)
	addq	$-2, %r14
.LBB79_20:
	movq	%rdi, (%rsi)
	movq	%r14, 8(%rsi)
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v126detail15write_codepointILy4EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail15write_codepointILy4EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj,"xr",discard,_ZN3fmt3v126detail15write_codepointILy4EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj
	.globl	_ZN3fmt3v126detail15write_codepointILy4EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj # -- Begin function _ZN3fmt3v126detail15write_codepointILy4EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj
	.p2align	4
_ZN3fmt3v126detail15write_codepointILy4EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj: # @_ZN3fmt3v126detail15write_codepointILy4EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj
.seh_proc _ZN3fmt3v126detail15write_codepointILy4EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movl	%r9d, %ebx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	cmpq	$0, 8(%rdx)
	je	.LBB80_8
# %bb.1:
	movl	%r8d, %ebp
	movq	(%rdi), %r14
	movq	8(%r14), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%r14), %rdx
	jbe	.LBB80_3
# %bb.2:
	movq	%r14, %rcx
	callq	*24(%r14)
	movq	8(%r14), %rax
	leaq	1(%rax), %rdx
.LBB80_3:
	movq	(%r14), %rcx
	movq	%rdx, 8(%r14)
	movb	$92, (%rcx,%rax)
	decq	8(%rdi)
	je	.LBB80_8
# %bb.4:
	movq	(%rdi), %r14
	movq	8(%r14), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%r14), %rdx
	jbe	.LBB80_6
# %bb.5:
	movq	%r14, %rcx
	callq	*24(%r14)
	movq	8(%r14), %rax
	leaq	1(%rax), %rdx
.LBB80_6:
	movq	(%r14), %rcx
	movq	%rdx, 8(%r14)
	movb	%bpl, (%rcx,%rax)
	movq	8(%rdi), %r14
	decq	%r14
	movq	%r14, 8(%rdi)
	jmp	.LBB80_9
.LBB80_8:
	xorl	%r14d, %r14d
.LBB80_9:
	movl	$808464432, 44(%rsp)            # imm = 0x30303030
	leaq	47(%rsp), %rax
	leaq	.L.str.35(%rip), %rcx
	movl	%ebx, %edx
	.p2align	4
.LBB80_10:                              # =>This Inner Loop Header: Depth=1
	movl	%ebx, %r8d
	andl	$15, %r8d
	movzbl	(%r8,%rcx), %r8d
	movb	%r8b, (%rax)
	shrl	$4, %edx
	decq	%rax
	cmpl	$15, %ebx
	movl	%edx, %ebx
	ja	.LBB80_10
# %bb.11:
	movq	(%rdi), %rdi
	testq	%r14, %r14
	je	.LBB80_16
# %bb.12:
	movzbl	44(%rsp), %ebx
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rdi), %rdx
	jbe	.LBB80_14
# %bb.13:
	movq	%rdi, %rcx
	callq	*24(%rdi)
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
.LBB80_14:
	movq	(%rdi), %rcx
	movq	%rdx, 8(%rdi)
	movb	%bl, (%rcx,%rax)
	cmpq	$1, %r14
	je	.LBB80_16
# %bb.17:
	movzbl	45(%rsp), %ebx
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rdi), %rdx
	jbe	.LBB80_19
# %bb.18:
	movq	%rdi, %rcx
	callq	*24(%rdi)
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
.LBB80_19:
	movq	(%rdi), %rcx
	movq	%rdx, 8(%rdi)
	movb	%bl, (%rcx,%rax)
	cmpq	$2, %r14
	je	.LBB80_16
# %bb.21:
	movzbl	46(%rsp), %ebx
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rdi), %rdx
	jbe	.LBB80_23
# %bb.22:
	movq	%rdi, %rcx
	callq	*24(%rdi)
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
.LBB80_23:
	movq	(%rdi), %rcx
	movq	%rdx, 8(%rdi)
	movb	%bl, (%rcx,%rax)
	cmpq	$3, %r14
	jne	.LBB80_25
.LBB80_16:
	xorl	%r14d, %r14d
.LBB80_28:
	movq	%rdi, (%rsi)
	movq	%r14, 8(%rsi)
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
.LBB80_25:
	movzbl	47(%rsp), %ebx
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rdi), %rdx
	jbe	.LBB80_27
# %bb.26:
	movq	%rdi, %rcx
	callq	*24(%rdi)
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
.LBB80_27:
	movq	(%rdi), %rcx
	movq	%rdx, 8(%rdi)
	movb	%bl, (%rcx,%rax)
	addq	$-4, %r14
	jmp	.LBB80_28
	.seh_endproc
                                        # -- End function
	.def	_ZN3fmt3v126detail15write_codepointILy8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail15write_codepointILy8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj,"xr",discard,_ZN3fmt3v126detail15write_codepointILy8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj
	.globl	_ZN3fmt3v126detail15write_codepointILy8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj # -- Begin function _ZN3fmt3v126detail15write_codepointILy8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj
	.p2align	4
_ZN3fmt3v126detail15write_codepointILy8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj: # @_ZN3fmt3v126detail15write_codepointILy8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj
.seh_proc _ZN3fmt3v126detail15write_codepointILy8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$48, %rsp
	.seh_stackalloc 48
	.seh_endprologue
	movl	%r9d, %ebx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	cmpq	$0, 8(%rdx)
	je	.LBB81_8
# %bb.1:
	movl	%r8d, %ebp
	movq	(%rdi), %r14
	movq	8(%r14), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%r14), %rdx
	jbe	.LBB81_3
# %bb.2:
	movq	%r14, %rcx
	callq	*24(%r14)
	movq	8(%r14), %rax
	leaq	1(%rax), %rdx
.LBB81_3:
	movq	(%r14), %rcx
	movq	%rdx, 8(%r14)
	movb	$92, (%rcx,%rax)
	decq	8(%rdi)
	je	.LBB81_8
# %bb.4:
	movq	(%rdi), %r14
	movq	8(%r14), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%r14), %rdx
	jbe	.LBB81_6
# %bb.5:
	movq	%r14, %rcx
	callq	*24(%r14)
	movq	8(%r14), %rax
	leaq	1(%rax), %rdx
.LBB81_6:
	movq	(%r14), %rcx
	movq	%rdx, 8(%r14)
	movb	%bpl, (%rcx,%rax)
	movq	8(%rdi), %r14
	decq	%r14
	movq	%r14, 8(%rdi)
	jmp	.LBB81_9
.LBB81_8:
	xorl	%r14d, %r14d
.LBB81_9:
	movabsq	$3472328296227680304, %rax      # imm = 0x3030303030303030
	movq	%rax, 40(%rsp)
	leaq	47(%rsp), %rax
	leaq	.L.str.35(%rip), %rcx
	movl	%ebx, %edx
	.p2align	4
.LBB81_10:                              # =>This Inner Loop Header: Depth=1
	movl	%ebx, %r8d
	andl	$15, %r8d
	movzbl	(%r8,%rcx), %r8d
	movb	%r8b, (%rax)
	shrl	$4, %edx
	decq	%rax
	cmpl	$15, %ebx
	movl	%edx, %ebx
	ja	.LBB81_10
# %bb.11:
	movq	(%rdi), %rdi
	testq	%r14, %r14
	je	.LBB81_16
# %bb.12:
	movzbl	40(%rsp), %ebx
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rdi), %rdx
	jbe	.LBB81_14
# %bb.13:
	movq	%rdi, %rcx
	callq	*24(%rdi)
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
.LBB81_14:
	movq	(%rdi), %rcx
	movq	%rdx, 8(%rdi)
	movb	%bl, (%rcx,%rax)
	cmpq	$1, %r14
	je	.LBB81_16
# %bb.17:
	movzbl	41(%rsp), %ebx
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rdi), %rdx
	jbe	.LBB81_19
# %bb.18:
	movq	%rdi, %rcx
	callq	*24(%rdi)
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
.LBB81_19:
	movq	(%rdi), %rcx
	movq	%rdx, 8(%rdi)
	movb	%bl, (%rcx,%rax)
	cmpq	$2, %r14
	je	.LBB81_16
# %bb.21:
	movzbl	42(%rsp), %ebx
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rdi), %rdx
	jbe	.LBB81_23
# %bb.22:
	movq	%rdi, %rcx
	callq	*24(%rdi)
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
.LBB81_23:
	movq	(%rdi), %rcx
	movq	%rdx, 8(%rdi)
	movb	%bl, (%rcx,%rax)
	cmpq	$3, %r14
	je	.LBB81_16
# %bb.25:
	movzbl	43(%rsp), %ebx
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rdi), %rdx
	jbe	.LBB81_27
# %bb.26:
	movq	%rdi, %rcx
	callq	*24(%rdi)
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
.LBB81_27:
	movq	(%rdi), %rcx
	movq	%rdx, 8(%rdi)
	movb	%bl, (%rcx,%rax)
	cmpq	$4, %r14
	je	.LBB81_16
# %bb.29:
	movzbl	44(%rsp), %ebx
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rdi), %rdx
	jbe	.LBB81_31
# %bb.30:
	movq	%rdi, %rcx
	callq	*24(%rdi)
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
.LBB81_31:
	movq	(%rdi), %rcx
	movq	%rdx, 8(%rdi)
	movb	%bl, (%rcx,%rax)
	cmpq	$5, %r14
	je	.LBB81_16
# %bb.33:
	movzbl	45(%rsp), %ebx
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rdi), %rdx
	jbe	.LBB81_35
# %bb.34:
	movq	%rdi, %rcx
	callq	*24(%rdi)
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
.LBB81_35:
	movq	(%rdi), %rcx
	movq	%rdx, 8(%rdi)
	movb	%bl, (%rcx,%rax)
	cmpq	$6, %r14
	je	.LBB81_16
# %bb.37:
	movzbl	46(%rsp), %ebx
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rdi), %rdx
	jbe	.LBB81_39
# %bb.38:
	movq	%rdi, %rcx
	callq	*24(%rdi)
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
.LBB81_39:
	movq	(%rdi), %rcx
	movq	%rdx, 8(%rdi)
	movb	%bl, (%rcx,%rax)
	cmpq	$7, %r14
	jne	.LBB81_41
.LBB81_16:
	xorl	%r14d, %r14d
.LBB81_44:
	movq	%rdi, (%rsi)
	movq	%r14, 8(%rsi)
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$48, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
.LBB81_41:
	movzbl	47(%rsp), %ebx
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
	cmpq	16(%rdi), %rdx
	jbe	.LBB81_43
# %bb.42:
	movq	%rdi, %rcx
	callq	*24(%rdi)
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
.LBB81_43:
	movq	(%rdi), %rcx
	movq	%rdx, 8(%rdi)
	movb	%bl, (%rcx,%rax)
	addq	$-8, %r14
	jmp	.LBB81_44
	.seh_endproc
                                        # -- End function
	.def	_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_,"xr",discard,_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_
	.globl	_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_ # -- Begin function _ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_
	.p2align	4
_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_: # @_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_
.seh_proc _ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_
# %bb.0:
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movl	16(%rcx), %eax
	decl	%eax
	cmpl	$14, %eax
	ja	.LBB82_10
# %bb.1:
	leaq	.LJTI82_0(%rip), %rdx
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmpq	*%rax
.LBB82_9:
	movq	(%rcx), %rax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
.LBB82_3:
	movq	(%rcx), %rcx
	jmp	.LBB82_4
.LBB82_5:
	cmpq	$0, 8(%rcx)
	movq	$-1, %rax
	jns	.LBB82_9
# %bb.8:
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
.LBB82_7:
	movl	(%rcx), %eax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
.LBB82_2:
	movslq	(%rcx), %rcx
.LBB82_4:
	testq	%rcx, %rcx
	movq	$-1, %rax
	cmovnsq	%rcx, %rax
	.seh_startepilogue
	addq	$40, %rsp
	.seh_endepilogue
	retq
.LBB82_10:
	leaq	.L.str.39(%rip), %rcx
	callq	_ZN3fmt3v1212report_errorEPKc
	int3
	.section	.rdata,"dr",associative,_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_,unique,3
	.p2align	2, 0x0
.LJTI82_0:
	.long	.LBB82_2-.LJTI82_0
	.long	.LBB82_7-.LJTI82_0
	.long	.LBB82_3-.LJTI82_0
	.long	.LBB82_9-.LJTI82_0
	.long	.LBB82_5-.LJTI82_0
	.long	.LBB82_9-.LJTI82_0
	.long	.LBB82_10-.LJTI82_0
	.long	.LBB82_10-.LJTI82_0
	.long	.LBB82_10-.LJTI82_0
	.long	.LBB82_10-.LJTI82_0
	.long	.LBB82_10-.LJTI82_0
	.long	.LBB82_10-.LJTI82_0
	.long	.LBB82_10-.LJTI82_0
	.long	.LBB82_10-.LJTI82_0
	.long	.LBB82_10-.LJTI82_0
	.section	.text$_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_,"xr",discard,_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyNS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_yEEEEED2B8ne210107Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyNS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_yEEEEED2B8ne210107Ev,"xr",discard,_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyNS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_yEEEEED2B8ne210107Ev
	.globl	_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyNS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_yEEEEED2B8ne210107Ev # -- Begin function _ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyNS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_yEEEEED2B8ne210107Ev
	.p2align	4
_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyNS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_yEEEEED2B8ne210107Ev: # @_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyNS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_yEEEEED2B8ne210107Ev
.seh_proc _ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyNS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_yEEEEED2B8ne210107Ev
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rsi
	movq	16(%rcx), %rdi
	testq	%rdi, %rdi
	jne	.LBB83_1
.LBB83_4:
	movq	(%rsi), %rcx
	movq	$0, (%rsi)
	testq	%rcx, %rcx
	je	.LBB83_5
# %bb.6:
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	jmp	_ZdlPv                          # TAILCALL
	.p2align	4
.LBB83_3:                               #   in Loop: Header=BB83_1 Depth=1
	movq	%rdi, %rcx
	callq	_ZdlPv
	movq	%rbx, %rdi
	testq	%rbx, %rbx
	je	.LBB83_4
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rbx
	testb	$1, 16(%rdi)
	je	.LBB83_3
# %bb.2:                                #   in Loop: Header=BB83_1 Depth=1
	movq	32(%rdi), %rcx
	callq	_ZdlPv
	jmp	.LBB83_3
.LBB83_5:
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__18__uniqueB8ne210107INS_17_ClassicAlgPolicyENS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEESA_RNS_10__equal_toEEENS_4pairIT0_SE_EESE_T1_OT2_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__18__uniqueB8ne210107INS_17_ClassicAlgPolicyENS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEESA_RNS_10__equal_toEEENS_4pairIT0_SE_EESE_T1_OT2_,"xr",discard,_ZNSt3__18__uniqueB8ne210107INS_17_ClassicAlgPolicyENS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEESA_RNS_10__equal_toEEENS_4pairIT0_SE_EESE_T1_OT2_
	.globl	_ZNSt3__18__uniqueB8ne210107INS_17_ClassicAlgPolicyENS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEESA_RNS_10__equal_toEEENS_4pairIT0_SE_EESE_T1_OT2_ # -- Begin function _ZNSt3__18__uniqueB8ne210107INS_17_ClassicAlgPolicyENS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEESA_RNS_10__equal_toEEENS_4pairIT0_SE_EESE_T1_OT2_
	.p2align	4
_ZNSt3__18__uniqueB8ne210107INS_17_ClassicAlgPolicyENS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEESA_RNS_10__equal_toEEENS_4pairIT0_SE_EESE_T1_OT2_: # @_ZNSt3__18__uniqueB8ne210107INS_17_ClassicAlgPolicyENS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEESA_RNS_10__equal_toEEENS_4pairIT0_SE_EESE_T1_OT2_
.seh_proc _ZNSt3__18__uniqueB8ne210107INS_17_ClassicAlgPolicyENS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEESA_RNS_10__equal_toEEENS_4pairIT0_SE_EESE_T1_OT2_
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%r8, %rsi
	movq	%rcx, %rdi
	movq	%r8, %rax
	cmpq	%r8, %rdx
	je	.LBB84_42
# %bb.1:
	leaq	24(%rdx), %rbx
	movq	%rsi, %rax
	cmpq	%rsi, %rbx
	je	.LBB84_42
# %bb.2:
	movzbl	(%rdx), %eax
	jmp	.LBB84_3
	.p2align	4
.LBB84_15:                              #   in Loop: Header=BB84_3 Depth=1
	movq	16(%rbx), %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB84_17
	jmp	.LBB84_19
	.p2align	4
.LBB84_3:                               # =>This Inner Loop Header: Depth=1
	testb	$1, %al
	je	.LBB84_4
# %bb.5:                                #   in Loop: Header=BB84_3 Depth=1
	movq	-16(%rbx), %r8
	movzbl	(%rbx), %ebp
	testb	$1, %bpl
	jne	.LBB84_8
.LBB84_7:                               #   in Loop: Header=BB84_3 Depth=1
	movl	%ebp, %ecx
	shrl	%ecx
	cmpq	%rcx, %r8
	je	.LBB84_10
	jmp	.LBB84_17
	.p2align	4
.LBB84_4:                               #   in Loop: Header=BB84_3 Depth=1
	movl	%eax, %ecx
	shrb	%cl
	movzbl	%cl, %r8d
	movzbl	(%rbx), %ebp
	testb	$1, %bpl
	je	.LBB84_7
.LBB84_8:                               #   in Loop: Header=BB84_3 Depth=1
	movq	8(%rbx), %rcx
	cmpq	%rcx, %r8
	jne	.LBB84_17
.LBB84_10:                              #   in Loop: Header=BB84_3 Depth=1
	testb	$1, %al
	je	.LBB84_11
# %bb.12:                               #   in Loop: Header=BB84_3 Depth=1
	movq	-8(%rbx), %rcx
	testb	$1, %bpl
	jne	.LBB84_15
	jmp	.LBB84_14
	.p2align	4
.LBB84_11:                              #   in Loop: Header=BB84_3 Depth=1
	leaq	-23(%rbx), %rcx
	testb	$1, %bpl
	jne	.LBB84_15
.LBB84_14:                              #   in Loop: Header=BB84_3 Depth=1
	leaq	1(%rbx), %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB84_19
.LBB84_17:                              #   in Loop: Header=BB84_3 Depth=1
	addq	$24, %rbx
	movl	%ebp, %eax
	cmpq	%rsi, %rbx
	jne	.LBB84_3
# %bb.18:
	movq	%rsi, %rbx
	movq	%rsi, %rax
	cmpq	%rbx, %rsi
	jne	.LBB84_21
	jmp	.LBB84_42
.LBB84_19:
	addq	$-24, %rbx
	movq	%rsi, %rax
	cmpq	%rbx, %rsi
	je	.LBB84_42
.LBB84_21:
	leaq	48(%rbx), %r14
	jmp	.LBB84_22
	.p2align	4
.LBB84_39:                              #   in Loop: Header=BB84_22 Depth=1
	addq	$24, %rbx
	movq	16(%r14), %rax
	movq	%rax, 16(%rbx)
	movups	(%r14), %xmm0
	movups	%xmm0, (%rbx)
	movw	$0, (%r14)
.LBB84_40:                              #   in Loop: Header=BB84_22 Depth=1
	addq	$24, %r14
.LBB84_22:                              # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %r14
	je	.LBB84_41
# %bb.23:                               #   in Loop: Header=BB84_22 Depth=1
	movzbl	(%rbx), %eax
	testb	$1, %al
	je	.LBB84_24
# %bb.25:                               #   in Loop: Header=BB84_22 Depth=1
	movq	8(%rbx), %r8
	movzbl	(%r14), %edx
	testb	$1, %dl
	jne	.LBB84_28
.LBB84_27:                              #   in Loop: Header=BB84_22 Depth=1
	movl	%edx, %ecx
	shrl	%ecx
	cmpq	%rcx, %r8
	je	.LBB84_30
	jmp	.LBB84_37
	.p2align	4
.LBB84_24:                              #   in Loop: Header=BB84_22 Depth=1
	movl	%eax, %r8d
	shrl	%r8d
	movzbl	(%r14), %edx
	testb	$1, %dl
	je	.LBB84_27
.LBB84_28:                              #   in Loop: Header=BB84_22 Depth=1
	movq	8(%r14), %rcx
	cmpq	%rcx, %r8
	jne	.LBB84_37
.LBB84_30:                              #   in Loop: Header=BB84_22 Depth=1
	testb	$1, %al
	je	.LBB84_31
# %bb.32:                               #   in Loop: Header=BB84_22 Depth=1
	movq	16(%rbx), %rcx
	testb	$1, %dl
	jne	.LBB84_35
.LBB84_34:                              #   in Loop: Header=BB84_22 Depth=1
	leaq	1(%r14), %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB84_37
	jmp	.LBB84_40
	.p2align	4
.LBB84_31:                              #   in Loop: Header=BB84_22 Depth=1
	leaq	1(%rbx), %rcx
	testb	$1, %dl
	je	.LBB84_34
.LBB84_35:                              #   in Loop: Header=BB84_22 Depth=1
	movq	16(%r14), %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB84_40
	.p2align	4
.LBB84_37:                              #   in Loop: Header=BB84_22 Depth=1
	testb	$1, 24(%rbx)
	je	.LBB84_39
# %bb.38:                               #   in Loop: Header=BB84_22 Depth=1
	movq	40(%rbx), %rcx
	callq	_ZdlPv
	jmp	.LBB84_39
.LBB84_41:
	addq	$24, %rbx
	movq	%rbx, %rax
.LBB84_42:
	movq	%rax, (%rdi)
	movq	%rsi, 8(%rdi)
	movq	%rdi, %rax
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev,"xr",discard,_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev
	.globl	_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev # -- Begin function _ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev
	.p2align	4
_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev: # @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev
.seh_proc _ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, %rsi
	movq	8(%rcx), %rdi
	movq	16(%rcx), %rax
	cmpq	%rax, %rdi
	jne	.LBB85_1
.LBB85_4:
	movq	(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB85_5
# %bb.6:
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	jmp	_ZdlPv                          # TAILCALL
	.p2align	4
.LBB85_3:                               #   in Loop: Header=BB85_1 Depth=1
	movq	%rcx, %rax
	cmpq	%rcx, %rdi
	je	.LBB85_4
.LBB85_1:                               # =>This Inner Loop Header: Depth=1
	leaq	-24(%rax), %rcx
	movq	%rcx, 16(%rsi)
	testb	$1, -24(%rax)
	je	.LBB85_3
# %bb.2:                                #   in Loop: Header=BB85_1 Depth=1
	movq	-8(%rax), %rcx
	callq	_ZdlPv
	movq	16(%rsi), %rcx
	jmp	.LBB85_3
.LBB85_5:
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.rdata,"dr"
	.p2align	2, 0x0                          # -- Begin function _ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_
.LCPI86_0:
	.long	0x5f000000                      # float 9.22337203E+18
	.section	.text$_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_,"xr",discard,_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_
	.globl	_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_
	.p2align	4
_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_: # @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_
.Lfunc_begin28:
.seh_proc _ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$72, %rsp
	.seh_stackalloc 72
	.seh_endprologue
	movq	%rdx, %rdi
	movzbl	(%r8), %eax
	leaq	1(%r8), %r15
	movl	%eax, %r12d
	shrl	%r12d
	testb	$1, %al
	cmovneq	16(%r8), %r15
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	cmovneq	8(%r8), %r12
	movq	%r15, %rcx
	movq	%r12, %rdx
	callq	_ZNSt3__113__hash_memoryEPKvy
	movq	%rax, %rbx
	movq	8(%rdi), %r13
	testq	%r13, %r13
	je	.LBB86_1
# %bb.2:
	leaq	-1(%r13), %r14
	testq	%r14, %r13
	je	.LBB86_3
# %bb.4:
	movq	%rbx, %rsi
	cmpq	%r13, %rbx
	jb	.LBB86_8
# %bb.5:
	movq	%rbx, %rax
	orq	%r13, %rax
	shrq	$32, %rax
	je	.LBB86_6
# %bb.7:
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%r13
	movq	%rdx, %rsi
	movq	(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	jne	.LBB86_9
	jmp	.LBB86_38
.LBB86_1:
                                        # implicit-def: $rsi
	jmp	.LBB86_38
.LBB86_3:
	movq	%r14, %rsi
	andq	%rbx, %rsi
.LBB86_8:
	movq	(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	je	.LBB86_38
.LBB86_9:
	movq	(%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB86_38
# %bb.10:
	testq	%r14, %r13
	jne	.LBB86_23
	jmp	.LBB86_11
	.p2align	4
.LBB86_12:                              #   in Loop: Header=BB86_11 Depth=1
	andq	%r14, %rax
	cmpq	%rsi, %rax
	jne	.LBB86_38
.LBB86_13:                              #   in Loop: Header=BB86_11 Depth=1
	movq	(%rbp), %rbp
	testq	%rbp, %rbp
	je	.LBB86_38
.LBB86_11:                              # =>This Inner Loop Header: Depth=1
	movq	8(%rbp), %rax
	cmpq	%rbx, %rax
	jne	.LBB86_12
# %bb.14:                               #   in Loop: Header=BB86_11 Depth=1
	movzbl	16(%rbp), %eax
	testb	$1, %al
	je	.LBB86_15
# %bb.16:                               #   in Loop: Header=BB86_11 Depth=1
	movq	24(%rbp), %rcx
	cmpq	%r12, %rcx
	jne	.LBB86_13
	jmp	.LBB86_18
	.p2align	4
.LBB86_15:                              #   in Loop: Header=BB86_11 Depth=1
	movl	%eax, %ecx
	shrl	%ecx
	cmpq	%r12, %rcx
	jne	.LBB86_13
.LBB86_18:                              #   in Loop: Header=BB86_11 Depth=1
	testb	$1, %al
	je	.LBB86_19
# %bb.20:                               #   in Loop: Header=BB86_11 Depth=1
	movq	32(%rbp), %rcx
	jmp	.LBB86_21
.LBB86_19:                              #   in Loop: Header=BB86_11 Depth=1
	leaq	17(%rbp), %rcx
.LBB86_21:                              #   in Loop: Header=BB86_11 Depth=1
	movq	%r15, %rdx
	movq	%r12, %r8
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB86_13
	jmp	.LBB86_22
.LBB86_27:                              #   in Loop: Header=BB86_23 Depth=1
	xorl	%edx, %edx
	divq	%r13
	movq	%rdx, %rax
.LBB86_28:                              #   in Loop: Header=BB86_23 Depth=1
	cmpq	%rsi, %rax
	jne	.LBB86_38
.LBB86_37:                              #   in Loop: Header=BB86_23 Depth=1
	movq	(%rbp), %rbp
	testq	%rbp, %rbp
	je	.LBB86_38
.LBB86_23:                              # =>This Inner Loop Header: Depth=1
	movq	8(%rbp), %rax
	cmpq	%rbx, %rax
	jne	.LBB86_24
# %bb.29:                               #   in Loop: Header=BB86_23 Depth=1
	movzbl	16(%rbp), %eax
	testb	$1, %al
	je	.LBB86_30
# %bb.31:                               #   in Loop: Header=BB86_23 Depth=1
	movq	24(%rbp), %rcx
	cmpq	%r12, %rcx
	jne	.LBB86_37
	jmp	.LBB86_33
	.p2align	4
.LBB86_24:                              #   in Loop: Header=BB86_23 Depth=1
	cmpq	%r13, %rax
	jb	.LBB86_28
# %bb.25:                               #   in Loop: Header=BB86_23 Depth=1
	movq	%rax, %rcx
	orq	%r13, %rcx
	shrq	$32, %rcx
	jne	.LBB86_27
# %bb.26:                               #   in Loop: Header=BB86_23 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r13d
	movl	%edx, %eax
	jmp	.LBB86_28
	.p2align	4
.LBB86_30:                              #   in Loop: Header=BB86_23 Depth=1
	movl	%eax, %ecx
	shrl	%ecx
	cmpq	%r12, %rcx
	jne	.LBB86_37
.LBB86_33:                              #   in Loop: Header=BB86_23 Depth=1
	testb	$1, %al
	je	.LBB86_34
# %bb.35:                               #   in Loop: Header=BB86_23 Depth=1
	movq	32(%rbp), %rcx
	jmp	.LBB86_36
.LBB86_34:                              #   in Loop: Header=BB86_23 Depth=1
	leaq	17(%rbp), %rcx
.LBB86_36:                              #   in Loop: Header=BB86_23 Depth=1
	movq	%r15, %rdx
	movq	%r12, %r8
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB86_37
.LBB86_22:
	xorl	%eax, %eax
	movq	40(%rsp), %r8                   # 8-byte Reload
	jmp	.LBB86_89
.LBB86_6:
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%r13d
	movl	%edx, %esi
	movq	(%rdi), %rax
	movq	(%rax,%rsi,8), %rax
	testq	%rax, %rax
	jne	.LBB86_9
.LBB86_38:
	movq	176(%rsp), %r14
	leaq	16(%rdi), %r12
	movl	$48, %ecx
	callq	_Znwy
	movq	%rax, %r15
	movq	%rax, 48(%rsp)
	movq	%r12, 56(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, (%rax)
	movq	%rbx, 8(%rax)
	leaq	16(%rax), %rcx
	movq	(%r14), %rax
	testb	$1, (%rax)
	jne	.LBB86_42
# %bb.39:
	movq	16(%rax), %rdx
	movq	%rdx, 16(%rcx)
	movups	(%rax), %xmm0
	movups	%xmm0, (%rcx)
	jmp	.LBB86_43
.LBB86_42:
	movq	8(%rax), %r8
	movq	16(%rax), %rdx
.Ltmp128:
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy
.Ltmp129:
.LBB86_43:
	movq	$0, 40(%r15)
	movb	$1, 64(%rsp)
	movq	24(%rdi), %rax
	incq	%rax
	js	.LBB86_44
# %bb.45:
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	jmp	.LBB86_46
.LBB86_44:
	movq	%rax, %rcx
	shrq	%rcx
	andl	$1, %eax
	orq	%rcx, %rax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	addss	%xmm0, %xmm0
.LBB86_46:
	movq	%r13, %rcx
	shrq	%rcx
	movl	%r13d, %eax
	andl	$1, %eax
	orq	%rcx, %rax
	testq	%r13, %r13
	js	.LBB86_47
# %bb.48:
	cvtsi2ss	%r13, %xmm2
	movss	32(%rdi), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	jne	.LBB86_50
	jmp	.LBB86_52
.LBB86_47:
	cvtsi2ss	%rax, %xmm2
	addss	%xmm2, %xmm2
	movss	32(%rdi), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	je	.LBB86_52
.LBB86_50:
	mulss	%xmm1, %xmm2
	ucomiss	%xmm2, %xmm0
	ja	.LBB86_52
# %bb.51:
	movq	%rsi, %rbx
	jmp	.LBB86_78
.LBB86_52:
	leaq	(,%r13,2), %rax
	movl	$1, %esi
	cmpq	$3, %r13
	jb	.LBB86_54
# %bb.53:
	leaq	-1(%r13), %rcx
	xorl	%esi, %esi
	testq	%rcx, %r13
	setne	%sil
.LBB86_54:
	orq	%rax, %rsi
	divss	%xmm1, %xmm0
	callq	ceilf
	cvttss2si	%xmm0, %rax
	movq	%rax, %rdx
	sarq	$63, %rdx
	subss	.LCPI86_0(%rip), %xmm0
	cvttss2si	%xmm0, %rcx
	andq	%rdx, %rcx
	orq	%rax, %rcx
	cmpq	%rcx, %rsi
	cmovaq	%rsi, %rcx
	movl	$2, %r14d
	cmpq	$1, %rcx
	je	.LBB86_59
# %bb.55:
	leaq	-1(%rcx), %rax
	testq	%rax, %rcx
	je	.LBB86_56
# %bb.57:
.Ltmp131:
	callq	_ZNSt3__112__next_primeEy
.Ltmp132:
# %bb.58:
	movq	%rax, %r14
.LBB86_59:
	movq	8(%rdi), %rsi
	cmpq	%rsi, %r14
	jbe	.LBB86_60
.LBB86_70:
.Ltmp135:
	movq	%rdi, %rcx
	movq	%r14, %rdx
	callq	_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE11__do_rehashILb1EEEvy
.Ltmp136:
	jmp	.LBB86_71
.LBB86_56:
	movq	%rcx, %r14
	movq	8(%rdi), %rsi
	cmpq	%rsi, %r14
	ja	.LBB86_70
.LBB86_60:
	jae	.LBB86_71
# %bb.61:
	movq	24(%rdi), %rax
	testq	%rax, %rax
	js	.LBB86_62
# %bb.63:
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	jmp	.LBB86_64
.LBB86_62:
	movq	%rax, %rcx
	shrq	%rcx
	andl	$1, %eax
	orq	%rcx, %rax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	addss	%xmm0, %xmm0
.LBB86_64:
	divss	32(%rdi), %xmm0
	callq	ceilf
	cvttss2si	%xmm0, %rcx
	movq	%rcx, %rdx
	subss	.LCPI86_0(%rip), %xmm0
	cvttss2si	%xmm0, %rax
	sarq	$63, %rdx
	andq	%rdx, %rax
	orq	%rcx, %rax
	cmpq	$3, %rsi
	jb	.LBB86_68
# %bb.65:
	leaq	-1(%rsi), %rcx
	andq	%rsi, %rcx
	jne	.LBB86_68
# %bb.66:
	cmpq	$2, %rax
	jb	.LBB86_69
# %bb.67:
	decq	%rax
	movl	$127, %ecx
	bsrq	%rax, %rcx
	xorl	$63, %ecx
	negb	%cl
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rax
	jmp	.LBB86_69
.LBB86_68:
.Ltmp133:
	movq	%rax, %rcx
	callq	_ZNSt3__112__next_primeEy
.Ltmp134:
.LBB86_69:
	cmpq	%rax, %r14
	cmovbeq	%rax, %r14
	cmpq	%rsi, %r14
	jb	.LBB86_70
.LBB86_71:
	movq	8(%rdi), %r13
	leaq	-1(%r13), %rax
	testq	%rax, %r13
	je	.LBB86_72
# %bb.73:
	cmpq	%r13, %rbx
	jb	.LBB86_78
# %bb.74:
	movq	%rbx, %rax
	orq	%r13, %rax
	shrq	$32, %rax
	je	.LBB86_75
# %bb.77:
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%r13
	movq	%rdx, %rbx
	jmp	.LBB86_78
.LBB86_72:
	andq	%rax, %rbx
	jmp	.LBB86_78
.LBB86_75:
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%r13d
	movl	%edx, %ebx
.LBB86_78:
	movq	(%rdi), %rcx
	movq	(%rcx,%rbx,8), %rax
	movq	48(%rsp), %rbp
	testq	%rax, %rax
	je	.LBB86_79
# %bb.87:
	movq	(%rax), %rcx
	movq	%rcx, (%rbp)
	movq	%rbp, (%rax)
	movq	40(%rsp), %r8                   # 8-byte Reload
.LBB86_88:
	incq	24(%rdi)
	movb	$1, %al
.LBB86_89:
	movq	%rbp, (%r8)
	movb	%al, 8(%r8)
	movq	%r8, %rax
	.seh_startepilogue
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB86_79:
	movq	(%r12), %rax
	movq	%rax, (%rbp)
	movq	%rbp, (%r12)
	movq	%r12, (%rcx,%rbx,8)
	movq	(%rbp), %rax
	testq	%rax, %rax
	movq	40(%rsp), %r8                   # 8-byte Reload
	je	.LBB86_88
# %bb.80:
	movq	8(%rax), %rax
	leaq	-1(%r13), %rdx
	testq	%rdx, %r13
	je	.LBB86_81
# %bb.82:
	cmpq	%r13, %rax
	jb	.LBB86_86
# %bb.83:
	movq	%rax, %rdx
	orq	%r13, %rdx
	shrq	$32, %rdx
	je	.LBB86_84
# %bb.85:
	xorl	%edx, %edx
	divq	%r13
	movq	%rdx, %rax
.LBB86_86:
	movq	%rbp, (%rcx,%rax,8)
	jmp	.LBB86_88
.LBB86_81:
	andq	%rdx, %rax
	movq	%rbp, (%rcx,%rax,8)
	jmp	.LBB86_88
.LBB86_84:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r13d
	movl	%edx, %eax
	movq	%rbp, (%rcx,%rax,8)
	jmp	.LBB86_88
.LBB86_40:
.Ltmp130:
	jmp	.LBB86_41
.LBB86_76:
.Ltmp137:
.LBB86_41:
	movq	%rax, %rsi
	leaq	48(%rsp), %rcx
	callq	_ZNSt3__110unique_ptrINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEENS_22__hash_node_destructorINS6_ISB_EEEEED2B8ne210107Ev
	movq	%rsi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end28:
	.seh_handlerdata
	.section	.text$_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_,"xr",discard,_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_
	.seh_endproc
	.section	.xdata$_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table86:
.Lexception28:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end28-.Lcst_begin28
.Lcst_begin28:
	.uleb128 .Lfunc_begin28-.Lfunc_begin28  # >> Call Site 1 <<
	.uleb128 .Ltmp128-.Lfunc_begin28        #   Call between .Lfunc_begin28 and .Ltmp128
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin28        # >> Call Site 2 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin28        #     jumps to .Ltmp130
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin28        # >> Call Site 3 <<
	.uleb128 .Ltmp131-.Ltmp129              #   Call between .Ltmp129 and .Ltmp131
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin28        # >> Call Site 4 <<
	.uleb128 .Ltmp136-.Ltmp131              #   Call between .Ltmp131 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin28        #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin28        # >> Call Site 5 <<
	.uleb128 .Ltmp133-.Ltmp136              #   Call between .Ltmp136 and .Ltmp133
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin28        # >> Call Site 6 <<
	.uleb128 .Ltmp134-.Ltmp133              #   Call between .Ltmp133 and .Ltmp134
	.uleb128 .Ltmp137-.Lfunc_begin28        #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin28        # >> Call Site 7 <<
	.uleb128 .Lfunc_end28-.Ltmp134          #   Call between .Ltmp134 and .Lfunc_end28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end28:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_,"xr",discard,_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_
                                        # -- End function
	.def	_ZNSt3__110unique_ptrINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEENS_22__hash_node_destructorINS6_ISB_EEEEED2B8ne210107Ev;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__110unique_ptrINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEENS_22__hash_node_destructorINS6_ISB_EEEEED2B8ne210107Ev,"xr",discard,_ZNSt3__110unique_ptrINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEENS_22__hash_node_destructorINS6_ISB_EEEEED2B8ne210107Ev
	.globl	_ZNSt3__110unique_ptrINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEENS_22__hash_node_destructorINS6_ISB_EEEEED2B8ne210107Ev # -- Begin function _ZNSt3__110unique_ptrINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEENS_22__hash_node_destructorINS6_ISB_EEEEED2B8ne210107Ev
	.p2align	4
_ZNSt3__110unique_ptrINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEENS_22__hash_node_destructorINS6_ISB_EEEEED2B8ne210107Ev: # @_ZNSt3__110unique_ptrINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEENS_22__hash_node_destructorINS6_ISB_EEEEED2B8ne210107Ev
.seh_proc _ZNSt3__110unique_ptrINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEENS_22__hash_node_destructorINS6_ISB_EEEEED2B8ne210107Ev
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	subq	$32, %rsp
	.seh_stackalloc 32
	.seh_endprologue
	movq	%rcx, %rax
	movq	(%rcx), %rcx
	movq	$0, (%rax)
	testq	%rcx, %rcx
	je	.LBB87_5
# %bb.1:
	cmpb	$1, 16(%rax)
	jne	.LBB87_4
# %bb.2:
	testb	$1, 16(%rcx)
	je	.LBB87_4
# %bb.3:
	movq	32(%rcx), %rax
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	_ZdlPv
	movq	%rsi, %rcx
.LBB87_4:
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	jmp	_ZdlPv                          # TAILCALL
.LBB87_5:
	nop
	.seh_startepilogue
	addq	$32, %rsp
	popq	%rsi
	.seh_endepilogue
	retq
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE11__do_rehashILb1EEEvy;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE11__do_rehashILb1EEEvy,"xr",discard,_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE11__do_rehashILb1EEEvy
	.globl	_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE11__do_rehashILb1EEEvy # -- Begin function _ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE11__do_rehashILb1EEEvy
	.p2align	4
_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE11__do_rehashILb1EEEvy: # @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE11__do_rehashILb1EEEvy
.seh_proc _ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE11__do_rehashILb1EEEvy
# %bb.0:
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$40, %rsp
	.seh_stackalloc 40
	.seh_endprologue
	movq	%rcx, %rbx
	testq	%rdx, %rdx
	je	.LBB88_30
# %bb.1:
	movq	%rdx, %rdi
	movq	%rdx, %rax
	shrq	$61, %rax
	jne	.LBB88_34
# %bb.2:
	leaq	(,%rdi,8), %r14
	movq	%r14, %rcx
	callq	_Znwy
	movq	(%rbx), %rcx
	movq	%rax, (%rbx)
	testq	%rcx, %rcx
	je	.LBB88_3
# %bb.4:
	callq	_ZdlPv
	movq	(%rbx), %rsi
	jmp	.LBB88_5
.LBB88_30:
	movq	(%rbx), %rcx
	movq	$0, (%rbx)
	testq	%rcx, %rcx
	je	.LBB88_32
# %bb.31:
	callq	_ZdlPv
.LBB88_32:
	movq	$0, 8(%rbx)
	jmp	.LBB88_33
.LBB88_3:
	movq	%rax, %rsi
.LBB88_5:
	movq	%rdi, 8(%rbx)
	movq	%rsi, %rcx
	xorl	%edx, %edx
	movq	%r14, %r8
	callq	memset
	movq	16(%rbx), %r8
	testq	%r8, %r8
	je	.LBB88_33
# %bb.6:
	addq	$16, %rbx
	movq	8(%r8), %rcx
	leaq	-1(%rdi), %rax
	testq	%rax, %rdi
	je	.LBB88_16
# %bb.7:
	cmpq	%rdi, %rcx
	jb	.LBB88_11
# %bb.8:
	movq	%rcx, %rax
	orq	%rdi, %rax
	shrq	$32, %rax
	je	.LBB88_9
# %bb.10:
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rdi
	movq	%rdx, %rcx
	jmp	.LBB88_11
.LBB88_16:
	andq	%rax, %rcx
	movq	%rbx, (%rsi,%rcx,8)
	jmp	.LBB88_17
	.p2align	4
.LBB88_19:                              #   in Loop: Header=BB88_17 Depth=1
	movq	%rdx, %r8
.LBB88_17:                              # =>This Inner Loop Header: Depth=1
	movq	(%r8), %rdx
	testq	%rdx, %rdx
	je	.LBB88_33
# %bb.18:                               #   in Loop: Header=BB88_17 Depth=1
	movq	8(%rdx), %r9
	andq	%rax, %r9
	cmpq	%rcx, %r9
	je	.LBB88_19
# %bb.20:                               #   in Loop: Header=BB88_17 Depth=1
	cmpq	$0, (%rsi,%r9,8)
	je	.LBB88_22
# %bb.21:                               #   in Loop: Header=BB88_17 Depth=1
	movq	(%rdx), %r10
	movq	%r10, (%r8)
	movq	(%rsi,%r9,8), %r10
	movq	(%r10), %r10
	movq	%r10, (%rdx)
	movq	(%rsi,%r9,8), %r9
	movq	%rdx, (%r9)
	jmp	.LBB88_17
.LBB88_22:                              #   in Loop: Header=BB88_17 Depth=1
	movq	%r8, (%rsi,%r9,8)
	movq	%rdx, %r8
	movq	%r9, %rcx
	jmp	.LBB88_17
.LBB88_9:
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%edx, %ecx
.LBB88_11:
	movq	%rbx, (%rsi,%rcx,8)
	movq	(%r8), %r9
	jmp	.LBB88_12
	.p2align	4
.LBB88_27:                              #   in Loop: Header=BB88_12 Depth=1
	movq	(%r9), %rdx
	movq	%rdx, (%r8)
	movq	(%rsi,%rax,8), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%r9)
	movq	(%rsi,%rax,8), %rax
	movq	%r9, (%rax)
	movq	%r8, %r9
.LBB88_28:                              #   in Loop: Header=BB88_12 Depth=1
	movq	%rcx, %rax
.LBB88_29:                              #   in Loop: Header=BB88_12 Depth=1
	movq	%r9, %r8
	movq	(%r9), %r9
	movq	%rax, %rcx
.LBB88_12:                              # =>This Inner Loop Header: Depth=1
	testq	%r9, %r9
	je	.LBB88_33
# %bb.13:                               #   in Loop: Header=BB88_12 Depth=1
	movq	8(%r9), %rax
	cmpq	%rdi, %rax
	jb	.LBB88_24
# %bb.14:                               #   in Loop: Header=BB88_12 Depth=1
	movq	%rax, %rdx
	orq	%rdi, %rdx
	shrq	$32, %rdx
	je	.LBB88_15
# %bb.23:                               #   in Loop: Header=BB88_12 Depth=1
	xorl	%edx, %edx
	divq	%rdi
	movq	%rdx, %rax
.LBB88_24:                              #   in Loop: Header=BB88_12 Depth=1
	cmpq	%rcx, %rax
	je	.LBB88_28
.LBB88_25:                              #   in Loop: Header=BB88_12 Depth=1
	cmpq	$0, (%rsi,%rax,8)
	jne	.LBB88_27
# %bb.26:                               #   in Loop: Header=BB88_12 Depth=1
	movq	%r8, (%rsi,%rax,8)
	jmp	.LBB88_29
.LBB88_15:                              #   in Loop: Header=BB88_12 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%edi
	movl	%edx, %eax
	cmpq	%rcx, %rax
	je	.LBB88_28
	jmp	.LBB88_25
.LBB88_33:
	.seh_startepilogue
	addq	$40, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	.seh_endepilogue
	retq
.LBB88_34:
	callq	_ZSt28__throw_bad_array_new_lengthB8ne210107v
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__emplace_back_slow_pathIJRKS6_EEEPS6_DpOT_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__emplace_back_slow_pathIJRKS6_EEEPS6_DpOT_,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__emplace_back_slow_pathIJRKS6_EEEPS6_DpOT_
	.globl	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__emplace_back_slow_pathIJRKS6_EEEPS6_DpOT_ # -- Begin function _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__emplace_back_slow_pathIJRKS6_EEEPS6_DpOT_
	.p2align	4
_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__emplace_back_slow_pathIJRKS6_EEEPS6_DpOT_: # @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__emplace_back_slow_pathIJRKS6_EEEPS6_DpOT_
.Lfunc_begin29:
.seh_proc _ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__emplace_back_slow_pathIJRKS6_EEEPS6_DpOT_
	.seh_handler __gxx_personality_seh0, @unwind, @except
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$80, %rsp
	.seh_stackalloc 80
	.seh_endprologue
	movq	%rdx, %rbx
	movq	%rcx, %rsi
	movabsq	$768614336404564650, %rax       # imm = 0xAAAAAAAAAAAAAAA
	movq	(%rcx), %rcx
	movq	8(%rsi), %rdi
	subq	%rcx, %rdi
	movq	%rdi, %r14
	sarq	$3, %r14
	movabsq	$-6148914691236517205, %rdx     # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rdx, %r14
	incq	%r14
	cmpq	%rax, %r14
	ja	.LBB89_12
# %bb.1:
	movq	16(%rsi), %r8
	subq	%rcx, %r8
	sarq	$3, %r8
	imulq	%rdx, %r8
	leaq	(%r8,%r8), %rcx
	cmpq	%r14, %rcx
	cmovaq	%rcx, %r14
	leaq	16(%rsi), %rcx
	movabsq	$384307168202282325, %rdx       # imm = 0x555555555555555
	cmpq	%rdx, %r8
	cmovaeq	%rax, %r14
	movq	%rcx, 72(%rsp)
	testq	%r14, %r14
	je	.LBB89_2
# %bb.3:
	cmpq	%rax, %r14
	ja	.LBB89_13
# %bb.4:
	leaq	(,%r14,8), %rax
	leaq	(%rax,%rax,2), %rcx
	callq	_Znwy
	jmp	.LBB89_5
.LBB89_2:
	xorl	%eax, %eax
.LBB89_5:
	movq	%rax, 40(%rsp)
	addq	%rax, %rdi
	movq	%rdi, 56(%rsp)
	movq	%rdi, 48(%rsp)
	leaq	(%r14,%r14,2), %rcx
	leaq	(%rax,%rcx,8), %r15
	movq	%r15, 64(%rsp)
	testb	$1, (%rbx)
	jne	.LBB89_7
# %bb.6:
	movq	16(%rbx), %rax
	movq	%rax, 16(%rdi)
	movups	(%rbx), %xmm0
	movups	%xmm0, (%rdi)
	jmp	.LBB89_8
.LBB89_7:
	movq	8(%rbx), %r8
	movq	16(%rbx), %rdx
.Ltmp138:
	movq	%rdi, %rcx
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy
.Ltmp139:
.LBB89_8:
	leaq	24(%rdi), %rbx
	movq	(%rsi), %r14
	movq	8(%rsi), %r8
	subq	%r14, %r8
	subq	%r8, %rdi
	movq	%rdi, %rcx
	movq	%r14, %rdx
	callq	memcpy
	movq	%rdi, (%rsi)
	movq	%rbx, 8(%rsi)
	movq	%r15, 16(%rsi)
	testq	%r14, %r14
	je	.LBB89_10
# %bb.9:
	movq	%r14, %rcx
	callq	_ZdlPv
.LBB89_10:
	movq	%rbx, %rax
	.seh_startepilogue
	addq	$80, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB89_12:
	callq	_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne210107Ev
.LBB89_13:
	callq	_ZSt28__throw_bad_array_new_lengthB8ne210107v
.LBB89_11:
.Ltmp140:
	movq	%rax, %rsi
	leaq	40(%rsp), %rcx
	callq	_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev
	movq	%rsi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end29:
	.seh_handlerdata
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__emplace_back_slow_pathIJRKS6_EEEPS6_DpOT_,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__emplace_back_slow_pathIJRKS6_EEEPS6_DpOT_
	.seh_endproc
	.section	.xdata$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__emplace_back_slow_pathIJRKS6_EEEPS6_DpOT_,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table89:
.Lexception29:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end29-.Lcst_begin29
.Lcst_begin29:
	.uleb128 .Lfunc_begin29-.Lfunc_begin29  # >> Call Site 1 <<
	.uleb128 .Ltmp138-.Lfunc_begin29        #   Call between .Lfunc_begin29 and .Ltmp138
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin29        # >> Call Site 2 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin29        #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin29        # >> Call Site 3 <<
	.uleb128 .Lfunc_end29-.Ltmp139          #   Call between .Ltmp139 and .Lfunc_end29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end29:
	.p2align	2, 0x0
	.section	.text$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__emplace_back_slow_pathIJRKS6_EEEPS6_DpOT_,"xr",discard,_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__emplace_back_slow_pathIJRKS6_EEEPS6_DpOT_
                                        # -- End function
	.def	_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5Tools4ivecINSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEEvPvRNS0_13parse_contextIcEERS3_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5Tools4ivecINSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEEvPvRNS0_13parse_contextIcEERS3_,"xr",discard,_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5Tools4ivecINSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEEvPvRNS0_13parse_contextIcEERS3_
	.globl	_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5Tools4ivecINSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEEvPvRNS0_13parse_contextIcEERS3_ # -- Begin function _ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5Tools4ivecINSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEEvPvRNS0_13parse_contextIcEERS3_
	.p2align	4
_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5Tools4ivecINSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEEvPvRNS0_13parse_contextIcEERS3_: # @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5Tools4ivecINSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEEvPvRNS0_13parse_contextIcEERS3_
.seh_proc _ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5Tools4ivecINSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEEvPvRNS0_13parse_contextIcEERS3_
# %bb.0:
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$144, %rsp
	.seh_stackalloc 144
	.seh_endprologue
	movq	%r8, %rsi
	movq	%rdx, %rbx
	movq	%rcx, %rdi
	movl	$32768, 40(%rsp)                # imm = 0x8000
	movb	$32, 44(%rsp)
	movl	$0, 45(%rsp)
	movl	$0, 48(%rsp)
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	movq	%rax, 52(%rsp)
	movl	$0, 72(%rsp)
	leaq	_ZN3fmt3v126detail14string_literalIcJLc44ELc32EEE5valueE(%rip), %rax
	movq	%rax, 88(%rsp)
	movq	$2, 96(%rsp)
	leaq	_ZN3fmt3v126detail14string_literalIcJLc91EEE5valueE(%rip), %rax
	movq	%rax, 104(%rsp)
	movq	$1, 112(%rsp)
	leaq	_ZN3fmt3v126detail14string_literalIcJLc93EEE5valueE(%rip), %rax
	movq	%rax, 120(%rsp)
	movq	$1, 128(%rsp)
	movb	$0, 136(%rsp)
	leaq	40(%rsp), %rcx
	callq	_ZN3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE5parseERNS0_13parse_contextIcEE
	movq	(%rbx), %rcx
	subq	%rcx, %rax
	js	.LBB90_2
# %bb.1:
	addq	%rax, %rcx
	movq	%rcx, (%rbx)
	subq	%rax, 8(%rbx)
	leaq	40(%rsp), %rcx
	movq	%rdi, %rdx
	movq	%rsi, %r8
	callq	_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRN5Tools4ivecIS8_EENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_
	nop
	.seh_startepilogue
	addq	$144, %rsp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.seh_endepilogue
	retq
.LBB90_2:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.22(%rip), %r8
	movl	$440, %edx                      # imm = 0x1B8
	callq	_ZN3fmt3v1211assert_failEPKciS2_
	int3
	.seh_endproc
                                        # -- End function
	.def	_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRN5Tools4ivecIS8_EENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_;
	.scl	2;
	.type	32;
	.endef
	.section	.text$_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRN5Tools4ivecIS8_EENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_,"xr",discard,_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRN5Tools4ivecIS8_EENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_
	.globl	_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRN5Tools4ivecIS8_EENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_ # -- Begin function _ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRN5Tools4ivecIS8_EENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_
	.p2align	4
_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRN5Tools4ivecIS8_EENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_: # @_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRN5Tools4ivecIS8_EENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_
.seh_proc _ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRN5Tools4ivecIS8_EENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_
# %bb.0:
	pushq	%r15
	.seh_pushreg %r15
	pushq	%r14
	.seh_pushreg %r14
	pushq	%r13
	.seh_pushreg %r13
	pushq	%r12
	.seh_pushreg %r12
	pushq	%rsi
	.seh_pushreg %rsi
	pushq	%rdi
	.seh_pushreg %rdi
	pushq	%rbp
	.seh_pushreg %rbp
	pushq	%rbx
	.seh_pushreg %rbx
	subq	$88, %rsp
	.seh_stackalloc 88
	.seh_endprologue
	movq	(%r8), %rsi
	cmpb	$0, 96(%rcx)
	jne	.LBB91_86
# %bb.1:
	movq	%r8, %rbx
	movq	%rcx, %rdi
	movq	(%rdx), %r12
	movq	8(%rdx), %r14
	movq	72(%rcx), %r15
	testq	%r15, %r15
	je	.LBB91_27
# %bb.2:
	movq	64(%rdi), %r13
	addq	%r13, %r15
	movq	8(%rsi), %rdx
	jmp	.LBB91_3
	.p2align	4
.LBB91_25:                              #   in Loop: Header=BB91_3 Depth=1
	movq	8(%rsi), %rdx
.LBB91_26:                              #   in Loop: Header=BB91_3 Depth=1
	addq	%rbp, %rdx
	movq	%rdx, 8(%rsi)
	addq	%rbp, %r13
	cmpq	%r15, %r13
	je	.LBB91_27
.LBB91_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB91_19 Depth 2
                                        #     Child Loop BB91_23 Depth 2
                                        #     Child Loop BB91_11 Depth 2
                                        #     Child Loop BB91_14 Depth 2
	movq	%r15, %rbp
	subq	%r13, %rbp
	js	.LBB91_87
# %bb.4:                                #   in Loop: Header=BB91_3 Depth=1
	movq	16(%rsi), %rax
	subq	%rdx, %rax
	cmpq	%rbp, %rax
	jae	.LBB91_6
# %bb.5:                                #   in Loop: Header=BB91_3 Depth=1
	addq	%rbp, %rdx
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rdx
	movq	16(%rsi), %rax
	subq	%rdx, %rax
	cmpq	%rax, %rbp
	cmovaeq	%rax, %rbp
.LBB91_6:                               #   in Loop: Header=BB91_3 Depth=1
	testq	%rbp, %rbp
	je	.LBB91_26
# %bb.7:                                #   in Loop: Header=BB91_3 Depth=1
	movq	(%rsi), %rax
	leaq	(%rax,%rdx), %rcx
	cmpq	$3, %rbp
	jbe	.LBB91_8
# %bb.15:                               #   in Loop: Header=BB91_3 Depth=1
	movq	%rcx, %r8
	subq	%r13, %r8
	cmpq	$32, %r8
	jae	.LBB91_16
.LBB91_8:                               #   in Loop: Header=BB91_3 Depth=1
	xorl	%r8d, %r8d
.LBB91_9:                               #   in Loop: Header=BB91_3 Depth=1
	movq	%rbp, %r10
	movq	%r8, %r9
	andq	$3, %r10
	je	.LBB91_12
# %bb.10:                               #   in Loop: Header=BB91_3 Depth=1
	movq	%r8, %r9
	.p2align	4
.LBB91_11:                              #   Parent Loop BB91_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r13,%r9), %r11d
	movb	%r11b, (%rcx,%r9)
	incq	%r9
	decq	%r10
	jne	.LBB91_11
.LBB91_12:                              #   in Loop: Header=BB91_3 Depth=1
	subq	%rbp, %r8
	cmpq	$-4, %r8
	ja	.LBB91_25
# %bb.13:                               #   in Loop: Header=BB91_3 Depth=1
	addq	%rdx, %rax
	addq	$3, %rax
	.p2align	4
.LBB91_14:                              #   Parent Loop BB91_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r13,%r9), %ecx
	movb	%cl, -3(%rax,%r9)
	movzbl	1(%r13,%r9), %ecx
	movb	%cl, -2(%rax,%r9)
	movzbl	2(%r13,%r9), %ecx
	movb	%cl, -1(%rax,%r9)
	movzbl	3(%r13,%r9), %ecx
	movb	%cl, (%rax,%r9)
	addq	$4, %r9
	cmpq	%r9, %rbp
	jne	.LBB91_14
	jmp	.LBB91_25
.LBB91_16:                              #   in Loop: Header=BB91_3 Depth=1
	cmpq	$32, %rbp
	jae	.LBB91_18
# %bb.17:                               #   in Loop: Header=BB91_3 Depth=1
	xorl	%r8d, %r8d
	jmp	.LBB91_22
.LBB91_18:                              #   in Loop: Header=BB91_3 Depth=1
	movq	%rbp, %r8
	andq	$-32, %r8
	leaq	(%rax,%rdx), %r9
	addq	$16, %r9
	xorl	%r10d, %r10d
	.p2align	4
.LBB91_19:                              #   Parent Loop BB91_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r13,%r10), %xmm0
	movups	16(%r13,%r10), %xmm1
	movups	%xmm0, -16(%r9,%r10)
	movups	%xmm1, (%r9,%r10)
	addq	$32, %r10
	cmpq	%r10, %r8
	jne	.LBB91_19
# %bb.20:                               #   in Loop: Header=BB91_3 Depth=1
	cmpq	%r8, %rbp
	je	.LBB91_25
# %bb.21:                               #   in Loop: Header=BB91_3 Depth=1
	testb	$28, %bpl
	je	.LBB91_9
.LBB91_22:                              #   in Loop: Header=BB91_3 Depth=1
	movq	%r8, %r9
	movq	%rbp, %r8
	andq	$-4, %r8
	.p2align	4
.LBB91_23:                              #   Parent Loop BB91_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r13,%r9), %r10d
	movl	%r10d, (%rcx,%r9)
	addq	$4, %r9
	cmpq	%r9, %r8
	jne	.LBB91_23
# %bb.24:                               #   in Loop: Header=BB91_3 Depth=1
	cmpq	%r8, %rbp
	je	.LBB91_25
	jmp	.LBB91_9
.LBB91_27:
	testq	%r14, %r14
	je	.LBB91_60
# %bb.28:
	leaq	(%r14,%r14,2), %rax
	leaq	(%r12,%rax,8), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	leaq	16(%rdi), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	leaq	32(%rdi), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	xorl	%ebp, %ebp
	jmp	.LBB91_29
	.p2align	4
.LBB91_56:                              #   in Loop: Header=BB91_29 Depth=1
	movzbl	(%r12), %eax
	leaq	1(%r12), %r14
	movl	%eax, %esi
	shrl	%esi
	testb	$1, %al
	cmovneq	16(%r12), %r14
	cmovneq	8(%r12), %rsi
	movzwl	(%rdi), %eax
	testl	$960, %eax                      # imm = 0x3C0
	je	.LBB91_57
# %bb.58:                               #   in Loop: Header=BB91_29 Depth=1
	movups	(%rdi), %xmm0
	movaps	%xmm0, 32(%rsp)
	movl	32(%rsp), %ecx
	shrl	$6, %ecx
	andl	$3, %ecx
	leaq	40(%rsp), %rdx
	movq	72(%rsp), %r8                   # 8-byte Reload
	movq	%rbx, %r9
	callq	_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_
	movl	32(%rsp), %ecx
	shrl	$8, %ecx
	andl	$3, %ecx
	leaq	44(%rsp), %rdx
	movq	64(%rsp), %r8                   # 8-byte Reload
	movq	%rbx, %r9
	callq	_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_
	movq	(%rbx), %rcx
	movq	%r14, 48(%rsp)
	movq	%rsi, 56(%rsp)
	leaq	48(%rsp), %rdx
	leaq	32(%rsp), %r8
.LBB91_59:                              #   in Loop: Header=BB91_29 Depth=1
	callq	_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsE
	movq	%rax, %rsi
	incl	%ebp
	addq	$24, %r12
	cmpq	80(%rsp), %r12                  # 8-byte Folded Reload
	je	.LBB91_60
.LBB91_29:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB91_32 Depth 2
                                        #       Child Loop BB91_48 Depth 3
                                        #       Child Loop BB91_52 Depth 3
                                        #       Child Loop BB91_40 Depth 3
                                        #       Child Loop BB91_43 Depth 3
	testl	%ebp, %ebp
	je	.LBB91_56
# %bb.30:                               #   in Loop: Header=BB91_29 Depth=1
	movq	56(%rdi), %r14
	testq	%r14, %r14
	je	.LBB91_56
# %bb.31:                               #   in Loop: Header=BB91_29 Depth=1
	movq	48(%rdi), %r13
	addq	%r13, %r14
	movq	8(%rsi), %rdx
	jmp	.LBB91_32
	.p2align	4
.LBB91_54:                              #   in Loop: Header=BB91_32 Depth=2
	movq	8(%rsi), %rdx
.LBB91_55:                              #   in Loop: Header=BB91_32 Depth=2
	addq	%r15, %rdx
	movq	%rdx, 8(%rsi)
	addq	%r15, %r13
	cmpq	%r14, %r13
	je	.LBB91_56
.LBB91_32:                              #   Parent Loop BB91_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB91_48 Depth 3
                                        #       Child Loop BB91_52 Depth 3
                                        #       Child Loop BB91_40 Depth 3
                                        #       Child Loop BB91_43 Depth 3
	movq	%r14, %r15
	subq	%r13, %r15
	js	.LBB91_87
# %bb.33:                               #   in Loop: Header=BB91_32 Depth=2
	movq	16(%rsi), %rax
	subq	%rdx, %rax
	cmpq	%r15, %rax
	jae	.LBB91_35
# %bb.34:                               #   in Loop: Header=BB91_32 Depth=2
	addq	%r15, %rdx
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rdx
	movq	16(%rsi), %rax
	subq	%rdx, %rax
	cmpq	%rax, %r15
	cmovaeq	%rax, %r15
.LBB91_35:                              #   in Loop: Header=BB91_32 Depth=2
	testq	%r15, %r15
	je	.LBB91_55
# %bb.36:                               #   in Loop: Header=BB91_32 Depth=2
	movq	(%rsi), %rax
	leaq	(%rax,%rdx), %rcx
	cmpq	$3, %r15
	jbe	.LBB91_37
# %bb.44:                               #   in Loop: Header=BB91_32 Depth=2
	movq	%rcx, %r8
	subq	%r13, %r8
	cmpq	$32, %r8
	jae	.LBB91_45
.LBB91_37:                              #   in Loop: Header=BB91_32 Depth=2
	xorl	%r8d, %r8d
.LBB91_38:                              #   in Loop: Header=BB91_32 Depth=2
	movq	%r15, %r10
	movq	%r8, %r9
	andq	$3, %r10
	je	.LBB91_41
# %bb.39:                               #   in Loop: Header=BB91_32 Depth=2
	movq	%r8, %r9
	.p2align	4
.LBB91_40:                              #   Parent Loop BB91_29 Depth=1
                                        #     Parent Loop BB91_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r13,%r9), %r11d
	movb	%r11b, (%rcx,%r9)
	incq	%r9
	decq	%r10
	jne	.LBB91_40
.LBB91_41:                              #   in Loop: Header=BB91_32 Depth=2
	subq	%r15, %r8
	cmpq	$-4, %r8
	ja	.LBB91_54
# %bb.42:                               #   in Loop: Header=BB91_32 Depth=2
	addq	%rdx, %rax
	addq	$3, %rax
	.p2align	4
.LBB91_43:                              #   Parent Loop BB91_29 Depth=1
                                        #     Parent Loop BB91_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r13,%r9), %ecx
	movb	%cl, -3(%rax,%r9)
	movzbl	1(%r13,%r9), %ecx
	movb	%cl, -2(%rax,%r9)
	movzbl	2(%r13,%r9), %ecx
	movb	%cl, -1(%rax,%r9)
	movzbl	3(%r13,%r9), %ecx
	movb	%cl, (%rax,%r9)
	addq	$4, %r9
	cmpq	%r9, %r15
	jne	.LBB91_43
	jmp	.LBB91_54
.LBB91_45:                              #   in Loop: Header=BB91_32 Depth=2
	cmpq	$32, %r15
	jae	.LBB91_47
# %bb.46:                               #   in Loop: Header=BB91_32 Depth=2
	xorl	%r8d, %r8d
	jmp	.LBB91_51
.LBB91_47:                              #   in Loop: Header=BB91_32 Depth=2
	movq	%r15, %r8
	andq	$-32, %r8
	leaq	(%rax,%rdx), %r9
	addq	$16, %r9
	xorl	%r10d, %r10d
	.p2align	4
.LBB91_48:                              #   Parent Loop BB91_29 Depth=1
                                        #     Parent Loop BB91_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%r13,%r10), %xmm0
	movups	16(%r13,%r10), %xmm1
	movups	%xmm0, -16(%r9,%r10)
	movups	%xmm1, (%r9,%r10)
	addq	$32, %r10
	cmpq	%r10, %r8
	jne	.LBB91_48
# %bb.49:                               #   in Loop: Header=BB91_32 Depth=2
	cmpq	%r8, %r15
	je	.LBB91_54
# %bb.50:                               #   in Loop: Header=BB91_32 Depth=2
	testb	$28, %r15b
	je	.LBB91_38
.LBB91_51:                              #   in Loop: Header=BB91_32 Depth=2
	movq	%r8, %r9
	movq	%r15, %r8
	andq	$-4, %r8
	.p2align	4
.LBB91_52:                              #   Parent Loop BB91_29 Depth=1
                                        #     Parent Loop BB91_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%r13,%r9), %r10d
	movl	%r10d, (%rcx,%r9)
	addq	$4, %r9
	cmpq	%r9, %r8
	jne	.LBB91_52
# %bb.53:                               #   in Loop: Header=BB91_32 Depth=2
	cmpq	%r8, %r15
	je	.LBB91_54
	jmp	.LBB91_38
	.p2align	4
.LBB91_57:                              #   in Loop: Header=BB91_29 Depth=1
	movq	(%rbx), %rcx
	movq	%r14, 48(%rsp)
	movq	%rsi, 56(%rsp)
	leaq	48(%rsp), %rdx
	movq	%rdi, %r8
	jmp	.LBB91_59
.LBB91_60:
	movq	88(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB91_86
# %bb.61:
	movq	80(%rdi), %rdi
	addq	%rdi, %rbx
	movq	8(%rsi), %rdx
	jmp	.LBB91_62
	.p2align	4
.LBB91_84:                              #   in Loop: Header=BB91_62 Depth=1
	movq	8(%rsi), %rdx
.LBB91_85:                              #   in Loop: Header=BB91_62 Depth=1
	addq	%r14, %rdx
	movq	%rdx, 8(%rsi)
	addq	%r14, %rdi
	cmpq	%rbx, %rdi
	je	.LBB91_86
.LBB91_62:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB91_78 Depth 2
                                        #     Child Loop BB91_82 Depth 2
                                        #     Child Loop BB91_70 Depth 2
                                        #     Child Loop BB91_73 Depth 2
	movq	%rbx, %r14
	subq	%rdi, %r14
	js	.LBB91_87
# %bb.63:                               #   in Loop: Header=BB91_62 Depth=1
	movq	16(%rsi), %rax
	subq	%rdx, %rax
	cmpq	%r14, %rax
	jae	.LBB91_65
# %bb.64:                               #   in Loop: Header=BB91_62 Depth=1
	addq	%r14, %rdx
	movq	%rsi, %rcx
	callq	*24(%rsi)
	movq	8(%rsi), %rdx
	movq	16(%rsi), %rax
	subq	%rdx, %rax
	cmpq	%rax, %r14
	cmovaeq	%rax, %r14
.LBB91_65:                              #   in Loop: Header=BB91_62 Depth=1
	testq	%r14, %r14
	je	.LBB91_85
# %bb.66:                               #   in Loop: Header=BB91_62 Depth=1
	movq	(%rsi), %rax
	leaq	(%rax,%rdx), %rcx
	cmpq	$3, %r14
	jbe	.LBB91_67
# %bb.74:                               #   in Loop: Header=BB91_62 Depth=1
	movq	%rcx, %r8
	subq	%rdi, %r8
	cmpq	$32, %r8
	jae	.LBB91_75
.LBB91_67:                              #   in Loop: Header=BB91_62 Depth=1
	xorl	%r8d, %r8d
.LBB91_68:                              #   in Loop: Header=BB91_62 Depth=1
	movq	%r14, %r10
	movq	%r8, %r9
	andq	$3, %r10
	je	.LBB91_71
# %bb.69:                               #   in Loop: Header=BB91_62 Depth=1
	movq	%r8, %r9
	.p2align	4
.LBB91_70:                              #   Parent Loop BB91_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%r9), %r11d
	movb	%r11b, (%rcx,%r9)
	incq	%r9
	decq	%r10
	jne	.LBB91_70
.LBB91_71:                              #   in Loop: Header=BB91_62 Depth=1
	subq	%r14, %r8
	cmpq	$-4, %r8
	ja	.LBB91_84
# %bb.72:                               #   in Loop: Header=BB91_62 Depth=1
	addq	%rdx, %rax
	addq	$3, %rax
	.p2align	4
.LBB91_73:                              #   Parent Loop BB91_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%r9), %ecx
	movb	%cl, -3(%rax,%r9)
	movzbl	1(%rdi,%r9), %ecx
	movb	%cl, -2(%rax,%r9)
	movzbl	2(%rdi,%r9), %ecx
	movb	%cl, -1(%rax,%r9)
	movzbl	3(%rdi,%r9), %ecx
	movb	%cl, (%rax,%r9)
	addq	$4, %r9
	cmpq	%r9, %r14
	jne	.LBB91_73
	jmp	.LBB91_84
.LBB91_75:                              #   in Loop: Header=BB91_62 Depth=1
	cmpq	$32, %r14
	jae	.LBB91_77
# %bb.76:                               #   in Loop: Header=BB91_62 Depth=1
	xorl	%r8d, %r8d
	jmp	.LBB91_81
.LBB91_77:                              #   in Loop: Header=BB91_62 Depth=1
	movq	%r14, %r8
	andq	$-32, %r8
	leaq	(%rax,%rdx), %r9
	addq	$16, %r9
	xorl	%r10d, %r10d
	.p2align	4
.LBB91_78:                              #   Parent Loop BB91_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%rdi,%r10), %xmm0
	movups	16(%rdi,%r10), %xmm1
	movups	%xmm0, -16(%r9,%r10)
	movups	%xmm1, (%r9,%r10)
	addq	$32, %r10
	cmpq	%r10, %r8
	jne	.LBB91_78
# %bb.79:                               #   in Loop: Header=BB91_62 Depth=1
	cmpq	%r8, %r14
	je	.LBB91_84
# %bb.80:                               #   in Loop: Header=BB91_62 Depth=1
	testb	$28, %r14b
	je	.LBB91_68
.LBB91_81:                              #   in Loop: Header=BB91_62 Depth=1
	movq	%r8, %r9
	movq	%r14, %r8
	andq	$-4, %r8
	.p2align	4
.LBB91_82:                              #   Parent Loop BB91_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi,%r9), %r10d
	movl	%r10d, (%rcx,%r9)
	addq	$4, %r9
	cmpq	%r9, %r8
	jne	.LBB91_82
# %bb.83:                               #   in Loop: Header=BB91_62 Depth=1
	cmpq	%r8, %r14
	je	.LBB91_84
	jmp	.LBB91_68
.LBB91_86:
	movq	%rsi, %rax
	.seh_startepilogue
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	.seh_endepilogue
	retq
.LBB91_87:
	leaq	.L.str.21(%rip), %rcx
	leaq	.L.str.22(%rip), %r8
	movl	$440, %edx                      # imm = 0x1B8
	callq	_ZN3fmt3v1211assert_failEPKciS2_
	int3
	.seh_endproc
                                        # -- End function
	.section	.rdata,"dr"
.L.str:                                 # @.str
	.asciz	"Invalid slice range"

	.section	.rdata$_ZTISt12out_of_range,"dr",discard,_ZTISt12out_of_range
	.globl	_ZTISt12out_of_range            # @_ZTISt12out_of_range
	.p2align	3, 0x0
_ZTISt12out_of_range:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt12out_of_range
	.quad	_ZTISt11logic_error

	.section	.rdata$_ZTSSt12out_of_range,"dr",discard,_ZTSSt12out_of_range
	.globl	_ZTSSt12out_of_range            # @_ZTSSt12out_of_range
_ZTSSt12out_of_range:
	.asciz	"St12out_of_range"

	.section	.rdata$_ZTISt11logic_error,"dr",discard,_ZTISt11logic_error
	.globl	_ZTISt11logic_error             # @_ZTISt11logic_error
	.p2align	3, 0x0
_ZTISt11logic_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt11logic_error
	.quad	_ZTISt9exception

	.section	.rdata$_ZTSSt11logic_error,"dr",discard,_ZTSSt11logic_error
	.globl	_ZTSSt11logic_error             # @_ZTSSt11logic_error
_ZTSSt11logic_error:
	.asciz	"St11logic_error"

	.section	.rdata$_ZTISt9exception,"dr",discard,_ZTISt9exception
	.globl	_ZTISt9exception                # @_ZTISt9exception
	.p2align	3, 0x0
_ZTISt9exception:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSSt9exception

	.section	.rdata$_ZTSSt9exception,"dr",discard,_ZTSSt9exception
	.globl	_ZTSSt9exception                # @_ZTSSt9exception
_ZTSSt9exception:
	.asciz	"St9exception"

	.section	.rdata,"dr"
.L.str.1:                               # @.str.1
	.asciz	"fstream"

.L.str.2:                               # @.str.2
	.asciz	"filesystem"

.L.str.4:                               # @.str.4
	.asciz	"sys/stat.h"

.L.str.5:                               # @.str.5
	.asciz	"cstdio"

.L.str.6:                               # @.str.6
	.asciz	"mach/mach.h"

.L.str.7:                               # @.str.7
	.asciz	"sys/types.h"

.L.str.8:                               # @.str.8
	.asciz	"time.h"

.L.str.9:                               # @.str.9
	.asciz	"errno.h"

.L.str.10:                              # @.str.10
	.asciz	"sys/ioctl.h"

.L.str.12:                              # @.str.12
	.asciz	"Win32: {}"

.L.str.13:                              # @.str.13
	.asciz	"Win32: {}\n"

.L.str.14:                              # @.str.14
	.asciz	"fileapi.h"

.L.str.15:                              # @.str.15
	.asciz	"windows.h"

.L.str.16:                              # @.str.16
	.asciz	"winnt.h"

.L.str.17:                              # @.str.17
	.asciz	"winspool.h"

.L.str.18:                              # @.str.18
	.asciz	"format"

.L.str.19:                              # @.str.19
	.asciz	"vector"

	.section	.rdata$_ZTISt12length_error,"dr",discard,_ZTISt12length_error
	.globl	_ZTISt12length_error            # @_ZTISt12length_error
	.p2align	3, 0x0
_ZTISt12length_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt12length_error
	.quad	_ZTISt11logic_error

	.section	.rdata$_ZTSSt12length_error,"dr",discard,_ZTSSt12length_error
	.globl	_ZTSSt12length_error            # @_ZTSSt12length_error
_ZTSSt12length_error:
	.asciz	"St12length_error"

	.section	.rdata$_ZTISt20bad_array_new_length,"dr",discard,_ZTISt20bad_array_new_length
	.globl	_ZTISt20bad_array_new_length    # @_ZTISt20bad_array_new_length
	.p2align	3, 0x0
_ZTISt20bad_array_new_length:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt20bad_array_new_length
	.quad	_ZTISt9bad_alloc

	.section	.rdata$_ZTSSt20bad_array_new_length,"dr",discard,_ZTSSt20bad_array_new_length
	.globl	_ZTSSt20bad_array_new_length    # @_ZTSSt20bad_array_new_length
_ZTSSt20bad_array_new_length:
	.asciz	"St20bad_array_new_length"

	.section	.rdata$_ZTISt9bad_alloc,"dr",discard,_ZTISt9bad_alloc
	.globl	_ZTISt9bad_alloc                # @_ZTISt9bad_alloc
	.p2align	3, 0x0
_ZTISt9bad_alloc:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt9bad_alloc
	.quad	_ZTISt9exception

	.section	.rdata$_ZTSSt9bad_alloc,"dr",discard,_ZTSSt9bad_alloc
	.globl	_ZTSSt9bad_alloc                # @_ZTSSt9bad_alloc
_ZTSSt9bad_alloc:
	.asciz	"St9bad_alloc"

	.section	.rdata,"dr"
.L.str.20:                              # @.str.20
	.asciz	"basic_string"

	.section	.rdata$_ZN3fmt3v126detail14string_literalIcJLc44ELc32EEE5valueE,"dr",discard,_ZN3fmt3v126detail14string_literalIcJLc44ELc32EEE5valueE
	.globl	_ZN3fmt3v126detail14string_literalIcJLc44ELc32EEE5valueE # @_ZN3fmt3v126detail14string_literalIcJLc44ELc32EEE5valueE
_ZN3fmt3v126detail14string_literalIcJLc44ELc32EEE5valueE:
	.ascii	", "

	.section	.rdata$_ZN3fmt3v126detail14string_literalIcJLc91EEE5valueE,"dr",discard,_ZN3fmt3v126detail14string_literalIcJLc91EEE5valueE
	.globl	_ZN3fmt3v126detail14string_literalIcJLc91EEE5valueE # @_ZN3fmt3v126detail14string_literalIcJLc91EEE5valueE
_ZN3fmt3v126detail14string_literalIcJLc91EEE5valueE:
	.byte	91

	.section	.rdata$_ZN3fmt3v126detail14string_literalIcJLc93EEE5valueE,"dr",discard,_ZN3fmt3v126detail14string_literalIcJLc93EEE5valueE
	.globl	_ZN3fmt3v126detail14string_literalIcJLc93EEE5valueE # @_ZN3fmt3v126detail14string_literalIcJLc93EEE5valueE
_ZN3fmt3v126detail14string_literalIcJLc93EEE5valueE:
	.byte	93

	.section	.rdata,"dr"
.L.str.21:                              # @.str.21
	.asciz	"D:/Code/Msys2/Files/clang64/include/fmt/base.h"

.L.str.22:                              # @.str.22
	.asciz	"negative value"

.L.str.23:                              # @.str.23
	.asciz	"invalid format specifier"

.L.str.24:                              # @.str.24
	.asciz	"format specifier requires numeric argument"

.L.str.25:                              # @.str.25
	.asciz	"invalid fill character '{'"

.L.str.26:                              # @.str.26
	.zero	1

.L.str.27:                              # @.str.27
	.asciz	"number is too big"

.L.str.28:                              # @.str.28
	.asciz	"invalid format string"

.L.str.29:                              # @.str.29
	.asciz	"cannot switch from manual to automatic argument indexing"

.L.str.30:                              # @.str.30
	.asciz	"cannot switch from automatic to manual argument indexing"

.L.str.31:                              # @.str.31
	.asciz	"invalid precision"

	.p2align	4, 0x0                          # @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks
.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks:
	.long	0                               # 0x0
	.long	127                             # 0x7f
	.long	31                              # 0x1f
	.long	15                              # 0xf
	.long	7                               # 0x7

	.p2align	4, 0x0                          # @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins
.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins:
	.long	4194304                         # 0x400000
	.long	0                               # 0x0
	.long	128                             # 0x80
	.long	2048                            # 0x800
	.long	65536                           # 0x10000

	.p2align	4, 0x0                          # @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc
.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc:
	.long	0                               # 0x0
	.long	18                              # 0x12
	.long	12                              # 0xc
	.long	6                               # 0x6
	.long	0                               # 0x0

	.p2align	4, 0x0                          # @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte
.L__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte:
	.long	0                               # 0x0
	.long	6                               # 0x6
	.long	4                               # 0x4
	.long	2                               # 0x2
	.long	0                               # 0x0

.L.str.33:                              # @.str.33
	.asciz	"\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\000\000\000\000\000\000\000\000\002\002\002\002\003\003\004"

.L.str.35:                              # @.str.35
	.asciz	"0123456789abcdef"

.L.str.36:                              # @.str.36
	.asciz	"\037\037\000\001"

.L.str.37:                              # @.str.37
	.asciz	"argument not found"

.L.str.38:                              # @.str.38
	.asciz	"width/precision is out of range"

.L.str.39:                              # @.str.39
	.asciz	"width/precision is not integer"

	.section	.rdata$_ZNSt3__119piecewise_constructE,"dr",discard,_ZNSt3__119piecewise_constructE
	.globl	_ZNSt3__119piecewise_constructE # @_ZNSt3__119piecewise_constructE
_ZNSt3__119piecewise_constructE:
	.zero	1

	.section	.drectve,"yni"
	.ascii	" -exclude-symbols:__clang_call_terminate"
	.section	.rdata$.refptr._ZTVSt12length_error,"dr",discard,.refptr._ZTVSt12length_error
	.p2align	3, 0x0
	.globl	.refptr._ZTVSt12length_error
.refptr._ZTVSt12length_error:
	.quad	_ZTVSt12length_error
	.section	.rdata$.refptr._ZTVSt12out_of_range,"dr",discard,.refptr._ZTVSt12out_of_range
	.p2align	3, 0x0
	.globl	.refptr._ZTVSt12out_of_range
.refptr._ZTVSt12out_of_range:
	.quad	_ZTVSt12out_of_range
	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	.long	241
	.long	.Ltmp142-.Ltmp141               # Subsection size
.Ltmp141:
	.short	.Ltmp144-.Ltmp143               # Record length
.Ltmp143:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp144:
	.short	.Ltmp146-.Ltmp145               # Record length
.Ltmp145:
	.short	4412                            # Record kind: S_COMPILE3
	.long	1                               # Flags and language
	.short	208                             # CPUType
	.short	21                              # Frontend version
	.short	1
	.short	7
	.short	0
	.short	21017                           # Backend version
	.short	0
	.short	0
	.short	0
	.asciz	"clang version 21.1.7"          # Null-terminated compiler version string
	.p2align	2, 0x0
.Ltmp146:
.Ltmp142:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym _ZN3fmt3v126detail5valueINS0_7contextEE13format_customINSt3__16vectorINS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENSB_ISD_EEEEEEvPvRNS0_13parse_contextIcEERS3_
	.addrsig_sym _ZN3fmt3v126detail15counting_bufferIcE4growERNS1_6bufferIcEEy
	.addrsig_sym _ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5Tools4ivecINSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEEvPvRNS0_13parse_contextIcEERS3_
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZTISt12out_of_range
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTSSt12out_of_range
	.addrsig_sym _ZTISt11logic_error
	.addrsig_sym _ZTSSt11logic_error
	.addrsig_sym _ZTISt9exception
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTSSt9exception
	.addrsig_sym _ZTISt12length_error
	.addrsig_sym _ZTSSt12length_error
	.addrsig_sym _ZTISt20bad_array_new_length
	.addrsig_sym _ZTSSt20bad_array_new_length
	.addrsig_sym _ZTISt9bad_alloc
	.addrsig_sym _ZTSSt9bad_alloc
	.addrsig_sym _ZN3fmt3v126detail14string_literalIcJLc44ELc32EEE5valueE
	.addrsig_sym _ZN3fmt3v126detail14string_literalIcJLc91EEE5valueE
	.addrsig_sym _ZN3fmt3v126detail14string_literalIcJLc93EEE5valueE
	.addrsig_sym _ZNSt3__119piecewise_constructE
