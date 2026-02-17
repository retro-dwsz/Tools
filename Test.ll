; ModuleID = 'Test.cpp'
source_filename = "Test.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%"class.std::__1::basic_string" = type { %struct.anon }
%struct.anon = type { %"union.std::__1::basic_string<char>::__rep" }
%"union.std::__1::basic_string<char>::__rep" = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.1, i64, ptr }
%struct.anon.1 = type { i64 }

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne210107Ev = comdat any

$_ZNSt3__120__throw_length_errorB8ne210107EPKc = comdat any

$_ZNSt12length_errorC2B8ne210107EPKc = comdat any

$_ZTISt9exception = comdat any

$_ZTSSt9exception = comdat any

$_ZTISt12length_error = comdat any

$_ZTSSt12length_error = comdat any

$_ZTISt11logic_error = comdat any

$_ZTSSt11logic_error = comdat any

@.str = private unnamed_addr constant [21 x i8] c"Tools-cpp is awsome!\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"v1.0\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s Current verison is %s\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"%s\0A\0AThat string is %llu char long and took %llu bytes of your memory\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTISt9exception = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt9exception }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt9exception = linkonce_odr dso_local constant [13 x i8] c"St9exception\00", comdat, align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZTISt12length_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt12length_error, ptr @_ZTISt11logic_error }, comdat, align 8
@_ZTSSt12length_error = linkonce_odr dso_local constant [17 x i8] c"St12length_error\00", comdat, align 1
@_ZTISt11logic_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt11logic_error, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt11logic_error = linkonce_odr dso_local constant [16 x i8] c"St11logic_error\00", comdat, align 1
@_ZTVSt12length_error = external unnamed_addr constant { [5 x ptr] }, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 personality ptr @__gxx_personality_seh0 {
  %1 = alloca %"class.std::__1::basic_string", align 8
  %2 = alloca [12 x i8], align 1
  %3 = alloca [128 x i8], align 16
  %4 = alloca %"class.std::__1::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #13
  %5 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %3, i64 noundef 128, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %6 = call noundef ptr @memchr(ptr noundef nonnull align 1 dereferenceable(128) %3, i32 noundef 0, i64 noundef 128) #13, !noalias !8
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %3 to i64
  %9 = sub i64 %7, %8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #13, !noalias !15
  %10 = icmp ugt i64 %9, -10
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne210107Ev() #14, !noalias !15
  unreachable

12:                                               ; preds = %0
  %13 = icmp ult i64 %9, 23
  br i1 %13, label %23, label %14

14:                                               ; preds = %12
  %15 = or i64 %9, 7
  %16 = icmp eq i64 %15, 23
  %17 = add nuw i64 %15, 1
  %18 = select i1 %16, i64 26, i64 %17
  %19 = call noalias noundef nonnull ptr @_Znwy(i64 noundef %18) #15, !noalias !26
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %19, ptr %20, align 8, !tbaa !33, !noalias !15
  %21 = or disjoint i64 %18, 1
  store i64 %21, ptr %1, align 8, !noalias !15
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %9, ptr %22, align 8, !tbaa !33, !noalias !15
  br label %28

23:                                               ; preds = %12
  %24 = trunc nuw nsw i64 %9 to i8
  %25 = shl nuw nsw i8 %24, 1
  store i8 %25, ptr %1, align 8, !noalias !15
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %27 = icmp eq ptr %6, %3
  br i1 %27, label %30, label %28

28:                                               ; preds = %23, %14
  %29 = phi ptr [ %19, %14 ], [ %26, %23 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr nonnull align 16 %3, i64 %9, i1 false), !noalias !15
  br label %30

30:                                               ; preds = %28, %23
  %31 = phi ptr [ %26, %23 ], [ %29, %28 ]
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 %9
  store i8 0, ptr %32, align 1, !tbaa !33, !noalias !15
  %33 = load i8, ptr %1, align 8, !noalias !36
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %35 = load i16, ptr %34, align 1, !noalias !36
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %37 = load i8, ptr %36, align 1, !noalias !36
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %38, i64 12, i1 false), !tbaa.struct !37, !noalias !36
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %40 = load ptr, ptr %39, align 8, !tbaa !33, !noalias !36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #13, !noalias !15
  store i8 %33, ptr %4, align 8
  %41 = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i16 %35, ptr %41, align 1
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 3
  store i8 %37, ptr %42, align 1
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %43, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !37
  %44 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %40, ptr %44, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2)
  %45 = and i8 %33, 1
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, ptr %41, ptr %40
  %48 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %49 = load i64, ptr %48, align 8
  %50 = lshr i8 %33, 1
  %51 = zext nneg i8 %50 to i64
  %52 = select i1 %46, i64 %51, i64 %49
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %47, i64 noundef %52, i64 noundef 8)
  %54 = load i8, ptr %4, align 8
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %30
  %58 = load ptr, ptr %44, align 8, !tbaa !33
  call void @_ZdlPv(ptr noundef %58) #16
  br label %59

59:                                               ; preds = %30, %57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #13
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare dso_local i32 @__gxx_personality_seh0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare dso_local ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare dso_local void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @_Znwy(i64 noundef) local_unnamed_addr #6

declare dso_local void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne210107Ev() local_unnamed_addr #7 comdat align 2 {
  tail call void @_ZNSt3__120__throw_length_errorB8ne210107EPKc(ptr noundef nonnull @.str.34) #14
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__120__throw_length_errorB8ne210107EPKc(ptr noundef %0) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_seh0 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #13
  invoke void @_ZNSt12length_errorC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #14
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %2) #13
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12length_errorC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #9 comdat align 2 {
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

declare dso_local void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #12

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noreturn }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 21.1.7", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Test.cpp", directory: "D:/Code/_CLIB/Tools")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 1, !"MaxTLSAlign", i32 65536}
!7 = !{!"clang version 21.1.7"}
!8 = !{!9, !11, !13}
!9 = distinct !{!9, !10, !"_ZNSt3__18__format19__create_format_argB8ne210107INS_20basic_format_contextINS_20back_insert_iteratorINS0_15__output_bufferIcEEEEcEEA128_cEENS_16basic_format_argIT_EERT0_: argument 0"}
!10 = distinct !{!10, !"_ZNSt3__18__format19__create_format_argB8ne210107INS_20basic_format_contextINS_20back_insert_iteratorINS0_15__output_bufferIcEEEEcEEA128_cEENS_16basic_format_argIT_EERT0_"}
!11 = distinct !{!11, !12, !"_ZNSt3__116make_format_argsB8ne210107INS_20basic_format_contextINS_20back_insert_iteratorINS_8__format15__output_bufferIcEEEEcEEJA128_cEEENS_18__format_arg_storeIT_JDpT0_EEEDpRSB_: argument 0"}
!12 = distinct !{!12, !"_ZNSt3__116make_format_argsB8ne210107INS_20basic_format_contextINS_20back_insert_iteratorINS_8__format15__output_bufferIcEEEEcEEJA128_cEEENS_18__format_arg_storeIT_JDpT0_EEEDpRSB_"}
!13 = distinct !{!13, !14, !"_ZNSt3__16formatB8ne210107IJRA128_cEEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_19basic_format_stringIcJDpNS_13type_identityIT_E4typeEEEEDpOSB_: argument 0"}
!14 = distinct !{!14, !"_ZNSt3__16formatB8ne210107IJRA128_cEEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_19basic_format_stringIcJDpNS_13type_identityIT_E4typeEEEEDpOSB_"}
!15 = !{!16, !18, !20, !22, !24}
!16 = distinct !{!16, !17, !"_ZZNSt3__18__format22__try_constant_foldingB8ne210107IcEENS_8optionalINS_12basic_stringIT_NS_11char_traitsIS4_EENS_9allocatorIS4_EEEEEENS_17basic_string_viewIS4_S6_EENS_17basic_format_argsINS_20basic_format_contextINS_20back_insert_iteratorINS0_15__output_bufferIS4_EEEES4_EEEEENKUlTyOS4_E_clIRNSB_IcNS5_IcEEEEEENS2_INS3_IcSO_NS7_IcEEEEEESL_: argument 0"}
!17 = distinct !{!17, !"_ZZNSt3__18__format22__try_constant_foldingB8ne210107IcEENS_8optionalINS_12basic_stringIT_NS_11char_traitsIS4_EENS_9allocatorIS4_EEEEEENS_17basic_string_viewIS4_S6_EENS_17basic_format_argsINS_20basic_format_contextINS_20back_insert_iteratorINS0_15__output_bufferIS4_EEEES4_EEEEENKUlTyOS4_E_clIRNSB_IcNS5_IcEEEEEENS2_INS3_IcSO_NS7_IcEEEEEESL_"}
!18 = distinct !{!18, !19, !"_ZNSt3__18__invokeB8ne210107IJZNS_8__format22__try_constant_foldingB8ne210107IcEENS_8optionalINS_12basic_stringIT_NS_11char_traitsIS5_EENS_9allocatorIS5_EEEEEENS_17basic_string_viewIS5_S7_EENS_17basic_format_argsINS_20basic_format_contextINS_20back_insert_iteratorINS1_15__output_bufferIS5_EEEES5_EEEEEUlTyOS5_E_RNSC_IcNS6_IcEEEEEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOSS_: argument 0"}
!19 = distinct !{!19, !"_ZNSt3__18__invokeB8ne210107IJZNS_8__format22__try_constant_foldingB8ne210107IcEENS_8optionalINS_12basic_stringIT_NS_11char_traitsIS5_EENS_9allocatorIS5_EEEEEENS_17basic_string_viewIS5_S7_EENS_17basic_format_argsINS_20basic_format_contextINS_20back_insert_iteratorINS1_15__output_bufferIS5_EEEES5_EEEEEUlTyOS5_E_RNSC_IcNS6_IcEEEEEEENS_20__invoke_result_implIvJDpT_EE4typeEDpOSS_"}
!20 = distinct !{!20, !21, !"_ZNSt3__16invokeB8ne210107IZNS_8__format22__try_constant_foldingB8ne210107IcEENS_8optionalINS_12basic_stringIT_NS_11char_traitsIS5_EENS_9allocatorIS5_EEEEEENS_17basic_string_viewIS5_S7_EENS_17basic_format_argsINS_20basic_format_contextINS_20back_insert_iteratorINS1_15__output_bufferIS5_EEEES5_EEEEEUlTyOS5_E_JRNSC_IcNS6_IcEEEEEEENS_20__invoke_result_implIvJS5_DpT0_EE4typeESM_DpOSS_: argument 0"}
!21 = distinct !{!21, !"_ZNSt3__16invokeB8ne210107IZNS_8__format22__try_constant_foldingB8ne210107IcEENS_8optionalINS_12basic_stringIT_NS_11char_traitsIS5_EENS_9allocatorIS5_EEEEEENS_17basic_string_viewIS5_S7_EENS_17basic_format_argsINS_20basic_format_contextINS_20back_insert_iteratorINS1_15__output_bufferIS5_EEEES5_EEEEEUlTyOS5_E_JRNSC_IcNS6_IcEEEEEEENS_20__invoke_result_implIvJS5_DpT0_EE4typeESM_DpOSS_"}
!22 = distinct !{!22, !23, !"_ZNSt3__118__visit_format_argB8ne210107IZNS_8__format22__try_constant_foldingB8ne210107IcEENS_8optionalINS_12basic_stringIT_NS_11char_traitsIS5_EENS_9allocatorIS5_EEEEEENS_17basic_string_viewIS5_S7_EENS_17basic_format_argsINS_20basic_format_contextINS_20back_insert_iteratorINS1_15__output_bufferIS5_EEEES5_EEEEEUlTyOS5_E_NSF_INSG_INSH_IcEEEEcEEEEDcSM_NS_16basic_format_argIT0_EE: argument 0"}
!23 = distinct !{!23, !"_ZNSt3__118__visit_format_argB8ne210107IZNS_8__format22__try_constant_foldingB8ne210107IcEENS_8optionalINS_12basic_stringIT_NS_11char_traitsIS5_EENS_9allocatorIS5_EEEEEENS_17basic_string_viewIS5_S7_EENS_17basic_format_argsINS_20basic_format_contextINS_20back_insert_iteratorINS1_15__output_bufferIS5_EEEES5_EEEEEUlTyOS5_E_NSF_INSG_INSH_IcEEEEcEEEEDcSM_NS_16basic_format_argIT0_EE"}
!24 = distinct !{!24, !25, !"_ZNSt3__17vformatB8ne210107IvEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EENS_17basic_format_argsINS_20basic_format_contextINS_20back_insert_iteratorINS_8__format15__output_bufferIcEEEEcEEEE: argument 0"}
!25 = distinct !{!25, !"_ZNSt3__17vformatB8ne210107IvEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_17basic_string_viewIcS3_EENS_17basic_format_argsINS_20basic_format_contextINS_20back_insert_iteratorINS_8__format15__output_bufferIcEEEEcEEEE"}
!26 = !{!27, !29, !31, !16, !18, !20, !22, !24}
!27 = distinct !{!27, !28, !"_ZNSt3__19allocatorIcE17allocate_at_leastB8ne210107Ey: argument 0"}
!28 = distinct !{!28, !"_ZNSt3__19allocatorIcE17allocate_at_leastB8ne210107Ey"}
!29 = distinct !{!29, !30, !"_ZNSt3__116allocator_traitsINS_9allocatorIcEEE17allocate_at_leastB8ne210107IS2_EENS_17allocation_resultIPcyEERT_y: argument 0"}
!30 = distinct !{!30, !"_ZNSt3__116allocator_traitsINS_9allocatorIcEEE17allocate_at_leastB8ne210107IS2_EENS_17allocation_resultIPcyEERT_y"}
!31 = distinct !{!31, !32, !"_ZNSt3__119__allocate_at_leastB8ne210107INS_9allocatorIcEEEEDaRT_y: argument 0"}
!32 = distinct !{!32, !"_ZNSt3__119__allocate_at_leastB8ne210107INS_9allocatorIcEEEEDaRT_y"}
!33 = !{!34, !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C++ TBAA"}
!36 = !{!24}
!37 = !{i64 0, i64 20, !33}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !35, i64 0}
