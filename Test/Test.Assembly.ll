	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 0
	.file	"Test.cpp"
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
	subq	$352, %rsp                      # imm = 0x160
	.seh_stackalloc 352
	leaq	128(%rsp), %rbp
	.seh_setframe %rbp, 128
	.seh_endprologue
	callq	__main
	leaq	.L.str.1(%rip), %rax
	movq	%rax, 32(%rsp)
	leaq	.L.str.2(%rip), %r8
	leaq	.L.str(%rip), %r9
	leaq	64(%rbp), %rsi
	movl	$128, %edx
	movq	%rsi, %rcx
	callq	snprintf
	movl	$202302, 40(%rsp)               # imm = 0x3163E
	movl	$21, 32(%rsp)
	leaq	.L.str.3(%rip), %r8
	leaq	.L.str.4(%rip), %r9
	leaq	-64(%rbp), %rdi
	movl	$128, %edx
	movq	%rdi, %rcx
	callq	snprintf
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	callq	strcat
	movq	%rsi, %rcx
	callq	strlen
	movq	%rax, %rdi
	movl	$128, %r8d
	movq	%rsi, %rcx
	xorl	%edx, %edx
	callq	memchr
	movq	%rax, %rbx
	subq	%rsi, %rbx
	cmpq	$-9, %rbx
	jae	.LBB0_8
# %bb.1:
	leaq	(%rdi,%rsi), %r12
	decq	%r12
	leaq	201(%rbp), %rdi
	cmpq	$23, %rbx
	jae	.LBB0_2
# %bb.3:
	leal	(%rbx,%rbx), %ecx
	movb	%cl, 200(%rbp)
	movq	%rdi, %r14
	cmpq	%rsi, %rax
	jne	.LBB0_4
	jmp	.LBB0_5
.LBB0_2:
	movq	%rbx, %rax
	orq	$7, %rax
	leaq	1(%rax), %rcx
	cmpq	$23, %rax
	movl	$26, %r15d
	cmovneq	%rcx, %r15
	movq	%r15, %rcx
	callq	_Znwy
	movq	%rax, %r14
	movq	%rax, 216(%rbp)
	incq	%r15
	movq	%r15, 200(%rbp)
	movq	%rbx, 208(%rbp)
.LBB0_4:
	leaq	64(%rbp), %rdx
	movq	%r14, %rcx
	movq	%rbx, %r8
	callq	memcpy
.LBB0_5:
	movb	$0, (%r14,%rbx)
	movzbl	200(%rbp), %eax
	movzwl	201(%rbp), %ecx
	movzbl	203(%rbp), %edx
	movl	212(%rbp), %r8d
	movq	204(%rbp), %r9
	movq	216(%rbp), %r10
	movb	%al, 200(%rbp)
	movw	%cx, 201(%rbp)
	movb	%dl, 203(%rbp)
	movq	%r9, 204(%rbp)
	movl	%r8d, 212(%rbp)
	movl	%eax, %r8d
	shrl	%r8d
	testb	$1, %al
	cmovneq	%r10, %rdi
	movq	%r10, 216(%rbp)
	cmovneq	208(%rbp), %r8
	movq	%r12, 40(%rsp)
	movq	%rsi, 32(%rsp)
	leaq	.L.str.6(%rip), %rcx
	movl	$8, %r9d
	movq	%rdi, %rdx
	callq	printf
	testb	$1, 200(%rbp)
	je	.LBB0_7
# %bb.6:
	movq	216(%rbp), %rcx
	callq	_ZdlPv
.LBB0_7:
	xorl	%eax, %eax
	.seh_startepilogue
	addq	$352, %rsp                      # imm = 0x160
	popq	%rbx
	popq	%rdi
	popq	%rsi
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.seh_endepilogue
	retq
.LBB0_8:
	callq	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne210107Ev
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
	leaq	.L.str.36(%rip), %rcx
	callq	_ZNSt3__120__throw_length_errorB8ne210107EPKc
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
.Lfunc_begin0:
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
.Ltmp0:
	movq	%rax, %rcx
	movq	%rdi, %rdx
	callq	_ZNSt12length_errorC2B8ne210107EPKc
.Ltmp1:
# %bb.1:
	leaq	_ZTISt12length_error(%rip), %rdx
	leaq	_ZNSt12length_errorD1Ev(%rip), %r8
	movq	%rsi, %rcx
	callq	__cxa_throw
.LBB2_2:
.Ltmp2:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	callq	__cxa_free_exception
	movq	%rdi, %rcx
	callq	_Unwind_Resume
	int3
.Lfunc_end0:
	.seh_handlerdata
	.section	.text$_ZNSt3__120__throw_length_errorB8ne210107EPKc,"xr",discard,_ZNSt3__120__throw_length_errorB8ne210107EPKc
	.seh_endproc
	.section	.xdata$_ZNSt3__120__throw_length_errorB8ne210107EPKc,"dr"
	.linkonce	discard
	.p2align	2, 0x0
GCC_except_table2:
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
	.section	.rdata,"dr"
.L.str:                                 # @.str
	.asciz	"Tools-cpp is awsome!"

.L.str.1:                               # @.str.1
	.asciz	"v1.0"

.L.str.2:                               # @.str.2
	.asciz	"%s Current verison is %s"

.L.str.3:                               # @.str.3
	.asciz	" using compiler %s version %d with standard %ld"

.L.str.4:                               # @.str.4
	.asciz	"Clang"

.L.str.6:                               # @.str.6
	.asciz	"%s\n\n> That string aboce is %llu char long and took %llu bytes of your memory\n> Pointers are at 0x%p..0x%p"

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
.L.str.36:                              # @.str.36
	.asciz	"basic_string"

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

	.section	.rdata$.refptr._ZTVSt12length_error,"dr",discard,.refptr._ZTVSt12length_error
	.p2align	3, 0x0
	.globl	.refptr._ZTVSt12length_error
.refptr._ZTVSt12length_error:
	.quad	_ZTVSt12length_error
	.section	.debug$S,"dr"
	.p2align	2, 0x0
	.long	4                               # Debug section magic
	.long	241
	.long	.Ltmp4-.Ltmp3                   # Subsection size
.Ltmp3:
	.short	.Ltmp6-.Ltmp5                   # Record length
.Ltmp5:
	.short	4353                            # Record kind: S_OBJNAME
	.long	0                               # Signature
	.byte	0                               # Object name
	.p2align	2, 0x0
.Ltmp6:
	.short	.Ltmp8-.Ltmp7                   # Record length
.Ltmp7:
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
.Ltmp8:
.Ltmp4:
	.p2align	2, 0x0
	.addrsig
	.addrsig_sym __gxx_personality_seh0
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTISt9exception
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTSSt9exception
	.addrsig_sym _ZTISt12length_error
	.addrsig_sym _ZTSSt12length_error
	.addrsig_sym _ZTISt11logic_error
	.addrsig_sym _ZTSSt11logic_error
