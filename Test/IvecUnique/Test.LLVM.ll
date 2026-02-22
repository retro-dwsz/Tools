; ModuleID = 'Test.cpp'
source_filename = "Test.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%"struct.std::__1::piecewise_construct_t" = type { i8 }
%"class.std::__1::vector" = type { ptr, ptr, %struct.anon }
%struct.anon = type { ptr }
%"struct.std::__1::__less.26" = type { i8 }
%"class.std::__1::vector.0" = type { ptr, ptr, %struct.anon.1 }
%struct.anon.1 = type { ptr }
%"struct.std::__1::__less.36" = type { i8 }
%"class.std::__1::vector.3" = type { ptr, ptr, %struct.anon.4 }
%struct.anon.4 = type { ptr }
%"struct.std::__1::__less.46" = type { i8 }
%"class.std::__1::vector.6" = type { ptr, ptr, %struct.anon.7 }
%struct.anon.7 = type { ptr }
%"struct.std::__1::__less.56" = type { i8 }
%"struct.fmt::v12::detail::format_arg_store" = type { [1 x %"class.fmt::v12::detail::value"] }
%"class.fmt::v12::detail::value" = type { %union.anon.118 }
%union.anon.118 = type { i128 }
%"class.fmt::v12::basic_string_view" = type { ptr, i64 }
%"class.fmt::v12::basic_format_args" = type { i64, %union.anon.119 }
%union.anon.119 = type { ptr }
%"struct.std::__1::pair.113" = type <{ %"class.std::__1::__hash_iterator", i8, [7 x i8] }>
%"class.std::__1::__hash_iterator" = type { ptr }
%"class.std::__1::vector.13" = type { ptr, ptr, %struct.anon.14 }
%struct.anon.14 = type { ptr }
%"class.std::__1::basic_string" = type { %struct.anon.15 }
%struct.anon.15 = type { %"union.std::__1::basic_string<char>::__rep" }
%"union.std::__1::basic_string<char>::__rep" = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.17, i64, ptr }
%struct.anon.17 = type { i64 }
%"class.std::__1::unordered_set" = type { %"class.std::__1::__hash_table" }
%"class.std::__1::__hash_table" = type <{ %"class.std::__1::unique_ptr", %struct.anon.20, %struct.anon.21, %struct.anon.22, [4 x i8] }>
%"class.std::__1::unique_ptr" = type { %struct.anon.18 }
%struct.anon.18 = type { ptr, %"class.std::__1::__bucket_list_deallocator" }
%"class.std::__1::__bucket_list_deallocator" = type { %struct.anon.19 }
%struct.anon.19 = type { i64 }
%struct.anon.20 = type { %"struct.std::__1::__hash_node_base" }
%"struct.std::__1::__hash_node_base" = type { ptr }
%struct.anon.21 = type { i64 }
%struct.anon.22 = type { float }
%"struct.std::__1::pair.158" = type <{ %"class.std::__1::__hash_iterator.159", i8, [7 x i8] }>
%"class.std::__1::__hash_iterator.159" = type { ptr }
%"class.std::__1::tuple" = type { %"struct.std::__1::__tuple_impl" }
%"struct.std::__1::__tuple_impl" = type { %"class.std::__1::__tuple_leaf" }
%"class.std::__1::__tuple_leaf" = type { ptr }
%"class.std::__1::tuple.161" = type { i8 }
%"struct.std::__1::__equal_to" = type { i8 }
%"struct.std::__1::pair.140" = type { %"class.std::__1::__wrap_iter.23", %"class.std::__1::__wrap_iter.23" }
%"class.std::__1::__wrap_iter.23" = type { ptr }
%"class.std::__1::unordered_map" = type { %"class.std::__1::__hash_table.130" }
%"class.std::__1::__hash_table.130" = type <{ %"class.std::__1::unique_ptr.131", %struct.anon.135, %struct.anon.137, %struct.anon.138, [4 x i8] }>
%"class.std::__1::unique_ptr.131" = type { %struct.anon.132 }
%struct.anon.132 = type { ptr, %"class.std::__1::__bucket_list_deallocator.133" }
%"class.std::__1::__bucket_list_deallocator.133" = type { %struct.anon.134 }
%struct.anon.134 = type { i64 }
%struct.anon.135 = type { %"struct.std::__1::__hash_node_base.136" }
%"struct.std::__1::__hash_node_base.136" = type { ptr }
%struct.anon.137 = type { i64 }
%struct.anon.138 = type { float }
%"class.Tools::ivec" = type { ptr, i64, i64 }
%"struct.std::__1::__exception_guard_exceptions.93" = type <{ %"class.std::__1::_AllocatorDestroyRangeReverse.94", i8, [7 x i8] }>
%"class.std::__1::_AllocatorDestroyRangeReverse.94" = type { ptr, ptr, ptr }
%"struct.std::__1::__exception_guard_exceptions.89" = type <{ %"class.std::__1::vector<std::__1::string>::__destroy_vector", i8, [7 x i8] }>
%"class.std::__1::vector<std::__1::string>::__destroy_vector" = type { ptr }
%"class.std::__1::unique_ptr.114" = type { %struct.anon.115 }
%struct.anon.115 = type { ptr, %"class.std::__1::__hash_node_destructor.base", %"class.std::__1::__compressed_pair_padding.116" }
%"class.std::__1::__hash_node_destructor.base" = type <{ ptr, i8 }>
%"class.std::__1::__compressed_pair_padding.116" = type { [7 x i8] }
%"struct.fmt::v12::formatter" = type { %"struct.fmt::v12::range_formatter" }
%"struct.fmt::v12::range_formatter" = type <{ %"class.fmt::v12::formatter", %"class.fmt::v12::basic_string_view", %"class.fmt::v12::basic_string_view", %"class.fmt::v12::basic_string_view", i8, [7 x i8] }>
%"class.fmt::v12::formatter" = type { %"struct.fmt::v12::formatter.120" }
%"struct.fmt::v12::formatter.120" = type { %"struct.fmt::v12::detail::native_formatter" }
%"struct.fmt::v12::detail::native_formatter" = type { %"struct.fmt::v12::detail::dynamic_format_specs" }
%"struct.fmt::v12::detail::dynamic_format_specs" = type { %"struct.fmt::v12::format_specs", %"union.fmt::v12::detail::arg_ref", %"union.fmt::v12::detail::arg_ref" }
%"struct.fmt::v12::format_specs" = type { %"class.fmt::v12::basic_specs", i32, i32 }
%"class.fmt::v12::basic_specs" = type { i32, [4 x i8] }
%"union.fmt::v12::detail::arg_ref" = type { %"class.fmt::v12::basic_string_view" }
%"struct.fmt::v12::detail::parse_dynamic_spec_result" = type { ptr, i32 }
%"struct.fmt::v12::detail::dynamic_spec_handler" = type { ptr, ptr, ptr }
%"class.fmt::v12::basic_format_arg" = type <{ %"class.fmt::v12::detail::value", i32, [12 x i8] }>
%"struct.fmt::v12::detail::dynamic_spec_getter" = type { i8 }
%"struct.fmt::v12::detail::named_arg_info" = type { ptr, i32 }
%class.anon.129 = type { %class.anon }
%class.anon = type { ptr, ptr, ptr, ptr, ptr }
%class.anon.126 = type { i8, i64, %"class.fmt::v12::basic_string_view" }
%"struct.fmt::v12::detail::find_escape_result" = type { ptr, ptr, i32 }
%struct.bounded_output_iterator = type { %"class.fmt::v12::basic_appender", i64 }
%"class.fmt::v12::basic_appender" = type { ptr }
%"class.fmt::v12::detail::counting_buffer" = type { %"class.fmt::v12::detail::buffer", [256 x i8], i64 }
%"class.fmt::v12::detail::buffer" = type { ptr, i64, i64, ptr }
%"class.std::__1::unique_ptr.165" = type { %struct.anon.166 }
%struct.anon.166 = type { ptr, %"class.std::__1::__hash_node_destructor.base.168", %"class.std::__1::__compressed_pair_padding.169" }
%"class.std::__1::__hash_node_destructor.base.168" = type <{ ptr, i8 }>
%"class.std::__1::__compressed_pair_padding.169" = type { [7 x i8] }
%"struct.std::__1::__split_buffer" = type { ptr, ptr, ptr, %struct.anon.155 }
%struct.anon.155 = type { ptr, ptr }
%"struct.fmt::v12::formatter.173" = type { %"struct.fmt::v12::range_formatter" }

$_ZN5Tools6Vector3SumITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE = comdat any

$_ZN5Tools6Vector3SumITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE = comdat any

$_ZN5Tools6Vector3SumITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE = comdat any

$_ZN5Tools6Vector3SumITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE = comdat any

$_ZN5Tools6Vector7ProductITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE = comdat any

$_ZN5Tools6Vector7ProductITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE = comdat any

$_ZN5Tools6Vector7ProductITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE = comdat any

$_ZN5Tools6Vector7ProductITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE = comdat any

$_ZN5Tools6Vector3AvgITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE = comdat any

$_ZN5Tools6Vector3AvgITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE = comdat any

$_ZN5Tools6Vector3AvgITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE = comdat any

$_ZN5Tools6Vector3AvgITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE = comdat any

$_ZN5Tools6Vector4SortITk7NumbersiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_ = comdat any

$_ZN5Tools6Vector4SortITk7NumbersxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_ = comdat any

$_ZN5Tools6Vector4SortITk7NumbersfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_ = comdat any

$_ZN5Tools6Vector4SortITk7NumbersdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_ = comdat any

$_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy = comdat any

$_ZNSt12out_of_rangeC2B8ne210107EPKc = comdat any

$_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy = comdat any

$_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy = comdat any

$_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy = comdat any

$_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y = comdat any

$_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y = comdat any

$_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y = comdat any

$_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y = comdat any

$_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy = comdat any

$_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy = comdat any

$_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy = comdat any

$_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy = comdat any

$_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy = comdat any

$_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy = comdat any

$_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy = comdat any

$_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy = comdat any

$_ZN5Tools6Vector19RemoveDuplicatesInlINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEvRNS2_6vectorIT_NS6_ISA_EEEEyb = comdat any

$_ZNSt3__113unordered_setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2B8ne210107Ev = comdat any

$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne210107Ev = comdat any

$_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE10uniquesInlEy = comdat any

$_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEED2Ev = comdat any

$_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne210107Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt3__120__throw_length_errorB8ne210107EPKc = comdat any

$_ZNSt12length_errorC2B8ne210107EPKc = comdat any

$_ZSt28__throw_bad_array_new_lengthB8ne210107v = comdat any

$_ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne210107Ev = comdat any

$_ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne210107Ev = comdat any

$_ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne210107Ev = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne210107Ev = comdat any

$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__init_with_sizeB8ne210107IPKS6_SB_EEvT_T0_y = comdat any

$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne210107Ev = comdat any

$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne210107Ev = comdat any

$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne210107Ev = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy = comdat any

$_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2Ev = comdat any

$_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JRS6_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_ = comdat any

$_ZNSt3__110unique_ptrINS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__hash_node_destructorINS5_IS9_EEEEED2B8ne210107Ev = comdat any

$_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE11__do_rehashILb1EEEvy = comdat any

$_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINSt3__16vectorINS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENSB_ISD_EEEEEEvPvRNS0_13parse_contextIcEERS3_ = comdat any

$_ZN3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE5parseERNS0_13parse_contextIcEE = comdat any

$_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE = comdat any

$_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE = comdat any

$_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_ = comdat any

$_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRKNS2_6vectorIS8_NS6_IS8_EEEENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_ = comdat any

$_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_ = comdat any

$_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsE = comdat any

$_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE = comdat any

$_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEEUlS5_E_EET1_SJ_SH_yyOT2_ = comdat any

$_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE = comdat any

$_ZN3fmt3v126detail15write_codepointILy2EcNS0_14basic_appenderIcEEEET1_S5_cj = comdat any

$_ZN3fmt3v126detail15write_codepointILy4EcNS0_14basic_appenderIcEEEET1_S5_cj = comdat any

$_ZN3fmt3v126detail15write_codepointILy8EcNS0_14basic_appenderIcEEEET1_S5_cj = comdat any

$_ZZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUljNSC_IcEEE_EEvSH_S8_ENKUlPKcSK_E_clESK_SK_ = comdat any

$_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEENKUljNSB_IcEEE_clEjSG_ = comdat any

$_ZN3fmt3v126detail15counting_bufferIcE4growERNS1_6bufferIcEEy = comdat any

$_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_yRKNS0_11basic_specsE = comdat any

$_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEESB_SB_SD_ = comdat any

$_ZN3fmt3v126detail16write_escaped_cpIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorcEES8_S8_RKNS1_18find_escape_resultISB_EE = comdat any

$_ZN3fmt3v126detail15write_codepointILy2EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj = comdat any

$_ZN3fmt3v126detail15write_codepointILy4EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj = comdat any

$_ZN3fmt3v126detail15write_codepointILy8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj = comdat any

$_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_ = comdat any

$_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyNS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_yEEEEED2B8ne210107Ev = comdat any

$_ZNSt3__18__uniqueB8ne210107INS_17_ClassicAlgPolicyENS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEESA_RNS_10__equal_toEEENS_4pairIT0_SE_EESE_T1_OT2_ = comdat any

$_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev = comdat any

$_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_ = comdat any

$_ZNSt3__110unique_ptrINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEENS_22__hash_node_destructorINS6_ISB_EEEEED2B8ne210107Ev = comdat any

$_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE11__do_rehashILb1EEEvy = comdat any

$_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__emplace_back_slow_pathIJRKS6_EEEPS6_DpOT_ = comdat any

$_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5Tools4ivecINSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEEvPvRNS0_13parse_contextIcEERS3_ = comdat any

$_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRN5Tools4ivecIS8_EENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_ = comdat any

$_ZTISt12out_of_range = comdat any

$_ZTSSt12out_of_range = comdat any

$_ZTISt11logic_error = comdat any

$_ZTSSt11logic_error = comdat any

$_ZTISt9exception = comdat any

$_ZTSSt9exception = comdat any

$_ZTISt12length_error = comdat any

$_ZTSSt12length_error = comdat any

$_ZTISt20bad_array_new_length = comdat any

$_ZTSSt20bad_array_new_length = comdat any

$_ZTISt9bad_alloc = comdat any

$_ZTSSt9bad_alloc = comdat any

$_ZN3fmt3v126detail14string_literalIcJLc44ELc32EEE5valueE = comdat any

$_ZN3fmt3v126detail14string_literalIcJLc91EEE5valueE = comdat any

$_ZN3fmt3v126detail14string_literalIcJLc93EEE5valueE = comdat any

$_ZNSt3__119piecewise_constructE = comdat any

@.str = private unnamed_addr constant [20 x i8] c"Invalid slice range\00", align 1
@_ZTISt12out_of_range = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt12out_of_range, ptr @_ZTISt11logic_error }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt12out_of_range = linkonce_odr dso_local constant [17 x i8] c"St12out_of_range\00", comdat, align 1
@_ZTISt11logic_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt11logic_error, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt11logic_error = linkonce_odr dso_local constant [16 x i8] c"St11logic_error\00", comdat, align 1
@_ZTISt9exception = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt9exception }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt9exception = linkonce_odr dso_local constant [13 x i8] c"St9exception\00", comdat, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fstream\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"filesystem\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"sys/stat.h\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"cstdio\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"mach/mach.h\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"sys/types.h\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"time.h\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"errno.h\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"sys/ioctl.h\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Win32: {}\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Win32: {}\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"fileapi.h\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"windows.h\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"winnt.h\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"winspool.h\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTISt12length_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt12length_error, ptr @_ZTISt11logic_error }, comdat, align 8
@_ZTSSt12length_error = linkonce_odr dso_local constant [17 x i8] c"St12length_error\00", comdat, align 1
@_ZTVSt12length_error = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTISt20bad_array_new_length = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt20bad_array_new_length, ptr @_ZTISt9bad_alloc }, comdat, align 8
@_ZTSSt20bad_array_new_length = linkonce_odr dso_local constant [25 x i8] c"St20bad_array_new_length\00", comdat, align 1
@_ZTISt9bad_alloc = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt9bad_alloc, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt9bad_alloc = linkonce_odr dso_local constant [13 x i8] c"St9bad_alloc\00", comdat, align 1
@_ZTVSt12out_of_range = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.20 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZN3fmt3v126detail14string_literalIcJLc44ELc32EEE5valueE = linkonce_odr dso_local constant [2 x i8] c", ", comdat, align 1
@_ZN3fmt3v126detail14string_literalIcJLc91EEE5valueE = linkonce_odr dso_local constant [1 x i8] c"[", comdat, align 1
@_ZN3fmt3v126detail14string_literalIcJLc93EEE5valueE = linkonce_odr dso_local constant [1 x i8] c"]", comdat, align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"D:/Code/Msys2/Files/clang64/include/fmt/base.h\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"negative value\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"invalid format specifier\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.29 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.30 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.33 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@_ZNSt3__119piecewise_constructE = linkonce_odr dso_local constant %"struct.std::__1::piecewise_construct_t" zeroinitializer, comdat, align 1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN5Tools6Vector3SumITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat {
  %2 = load ptr, ptr %0, align 8, !tbaa !8
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 4) ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 4) ]
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %38, label %6

6:                                                ; preds = %1
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %2 to i64
  %9 = add i64 %7, -4
  %10 = sub i64 %9, %8
  %11 = lshr exact i64 %10, 2
  %12 = add nuw nsw i64 %11, 1
  %13 = icmp ult i64 %10, 28
  br i1 %13, label %35, label %14

14:                                               ; preds = %6
  %15 = and i64 %12, 9223372036854775800
  %16 = shl i64 %15, 2
  %17 = getelementptr i8, ptr %2, i64 %16
  br label %18

18:                                               ; preds = %18, %14
  %19 = phi i64 [ 0, %14 ], [ %29, %18 ]
  %20 = phi <4 x i32> [ zeroinitializer, %14 ], [ %27, %18 ]
  %21 = phi <4 x i32> [ zeroinitializer, %14 ], [ %28, %18 ]
  %22 = shl i64 %19, 2
  %23 = getelementptr i8, ptr %2, i64 %22
  %24 = getelementptr i8, ptr %23, i64 16
  %25 = load <4 x i32>, ptr %23, align 4, !tbaa !16
  %26 = load <4 x i32>, ptr %24, align 4, !tbaa !16
  %27 = add <4 x i32> %25, %20
  %28 = add <4 x i32> %26, %21
  %29 = add nuw i64 %19, 8
  %30 = icmp eq i64 %29, %15
  br i1 %30, label %31, label %18, !llvm.loop !18

31:                                               ; preds = %18
  %32 = add <4 x i32> %28, %27
  %33 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %32)
  %34 = icmp eq i64 %12, %15
  br i1 %34, label %38, label %35

35:                                               ; preds = %6, %31
  %36 = phi i32 [ 0, %6 ], [ %33, %31 ]
  %37 = phi ptr [ %2, %6 ], [ %17, %31 ]
  br label %40

38:                                               ; preds = %40, %31, %1
  %39 = phi i32 [ 0, %1 ], [ %33, %31 ], [ %44, %40 ]
  ret i32 %39

40:                                               ; preds = %35, %40
  %41 = phi i32 [ %44, %40 ], [ %36, %35 ]
  %42 = phi ptr [ %45, %40 ], [ %37, %35 ]
  %43 = load i32, ptr %42, align 4, !tbaa !16
  %44 = add nsw i32 %43, %41
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 4
  %46 = icmp eq ptr %45, %4
  br i1 %46, label %38, label %40, !llvm.loop !21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef i64 @_ZN5Tools6Vector3SumITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat {
  %2 = load ptr, ptr %0, align 8, !tbaa !22
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 8) ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 8) ]
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %38, label %6

6:                                                ; preds = %1
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %2 to i64
  %9 = add i64 %7, -8
  %10 = sub i64 %9, %8
  %11 = lshr exact i64 %10, 3
  %12 = add nuw nsw i64 %11, 1
  %13 = icmp ult i64 %10, 24
  br i1 %13, label %35, label %14

14:                                               ; preds = %6
  %15 = and i64 %12, 4611686018427387900
  %16 = shl i64 %15, 3
  %17 = getelementptr i8, ptr %2, i64 %16
  br label %18

18:                                               ; preds = %18, %14
  %19 = phi i64 [ 0, %14 ], [ %29, %18 ]
  %20 = phi <2 x i64> [ zeroinitializer, %14 ], [ %27, %18 ]
  %21 = phi <2 x i64> [ zeroinitializer, %14 ], [ %28, %18 ]
  %22 = shl i64 %19, 3
  %23 = getelementptr i8, ptr %2, i64 %22
  %24 = getelementptr i8, ptr %23, i64 16
  %25 = load <2 x i64>, ptr %23, align 8, !tbaa !27
  %26 = load <2 x i64>, ptr %24, align 8, !tbaa !27
  %27 = add <2 x i64> %25, %20
  %28 = add <2 x i64> %26, %21
  %29 = add nuw i64 %19, 4
  %30 = icmp eq i64 %29, %15
  br i1 %30, label %31, label %18, !llvm.loop !29

31:                                               ; preds = %18
  %32 = add <2 x i64> %28, %27
  %33 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %32)
  %34 = icmp eq i64 %12, %15
  br i1 %34, label %38, label %35

35:                                               ; preds = %6, %31
  %36 = phi i64 [ 0, %6 ], [ %33, %31 ]
  %37 = phi ptr [ %2, %6 ], [ %17, %31 ]
  br label %40

38:                                               ; preds = %40, %31, %1
  %39 = phi i64 [ 0, %1 ], [ %33, %31 ], [ %44, %40 ]
  ret i64 %39

40:                                               ; preds = %35, %40
  %41 = phi i64 [ %44, %40 ], [ %36, %35 ]
  %42 = phi ptr [ %45, %40 ], [ %37, %35 ]
  %43 = load i64, ptr %42, align 8, !tbaa !27
  %44 = add nsw i64 %43, %41
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 8
  %46 = icmp eq ptr %45, %4
  br i1 %46, label %38, label %40, !llvm.loop !30
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef float @_ZN5Tools6Vector3SumITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat {
  %2 = load ptr, ptr %0, align 8, !tbaa !31
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 4) ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 4) ]
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %8, %1
  %7 = phi float [ 0.000000e+00, %1 ], [ %12, %8 ]
  ret float %7

8:                                                ; preds = %1, %8
  %9 = phi float [ %12, %8 ], [ 0.000000e+00, %1 ]
  %10 = phi ptr [ %13, %8 ], [ %2, %1 ]
  %11 = load float, ptr %10, align 4, !tbaa !36
  %12 = fadd float %9, %11
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %14 = icmp eq ptr %13, %4
  br i1 %14, label %6, label %8
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZN5Tools6Vector3SumITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 8) ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 8) ]
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %8, %1
  %7 = phi double [ 0.000000e+00, %1 ], [ %12, %8 ]
  ret double %7

8:                                                ; preds = %1, %8
  %9 = phi double [ %12, %8 ], [ 0.000000e+00, %1 ]
  %10 = phi ptr [ %13, %8 ], [ %2, %1 ]
  %11 = load double, ptr %10, align 8, !tbaa !43
  %12 = fadd double %9, %11
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %14 = icmp eq ptr %13, %4
  br i1 %14, label %6, label %8
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN5Tools6Vector7ProductITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat {
  %2 = load ptr, ptr %0, align 8, !tbaa !8
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 4) ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 4) ]
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef i64 @_ZN5Tools6Vector7ProductITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat {
  %2 = load ptr, ptr %0, align 8, !tbaa !22
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 8) ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 8) ]
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef float @_ZN5Tools6Vector7ProductITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat {
  %2 = load ptr, ptr %0, align 8, !tbaa !31
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 4) ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 4) ]
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %8, %1
  %7 = phi float [ 0.000000e+00, %1 ], [ %12, %8 ]
  ret float %7

8:                                                ; preds = %1, %8
  %9 = phi float [ %12, %8 ], [ 0.000000e+00, %1 ]
  %10 = phi ptr [ %13, %8 ], [ %2, %1 ]
  %11 = load float, ptr %10, align 4, !tbaa !36
  %12 = fmul float %9, %11
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %14 = icmp eq ptr %13, %4
  br i1 %14, label %6, label %8
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZN5Tools6Vector7ProductITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 8) ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 8) ]
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %8, %1
  %7 = phi double [ 0.000000e+00, %1 ], [ %12, %8 ]
  ret double %7

8:                                                ; preds = %1, %8
  %9 = phi double [ %12, %8 ], [ 0.000000e+00, %1 ]
  %10 = phi ptr [ %13, %8 ], [ %2, %1 ]
  %11 = load double, ptr %10, align 8, !tbaa !43
  %12 = fmul double %9, %11
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %14 = icmp eq ptr %13, %4
  br i1 %14, label %6, label %8
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZN5Tools6Vector3AvgITk7NumbersiEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat {
  %2 = load ptr, ptr %0, align 8, !tbaa !8
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 4) ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 4) ]
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %48, label %6

6:                                                ; preds = %1
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %2 to i64
  %9 = add i64 %7, -4
  %10 = sub i64 %9, %8
  %11 = lshr exact i64 %10, 2
  %12 = add nuw nsw i64 %11, 1
  %13 = icmp ult i64 %10, 28
  br i1 %13, label %35, label %14

14:                                               ; preds = %6
  %15 = and i64 %12, 9223372036854775800
  %16 = shl i64 %15, 2
  %17 = getelementptr i8, ptr %2, i64 %16
  br label %18

18:                                               ; preds = %18, %14
  %19 = phi i64 [ 0, %14 ], [ %29, %18 ]
  %20 = phi <4 x i32> [ zeroinitializer, %14 ], [ %27, %18 ]
  %21 = phi <4 x i32> [ zeroinitializer, %14 ], [ %28, %18 ]
  %22 = shl i64 %19, 2
  %23 = getelementptr i8, ptr %2, i64 %22
  %24 = getelementptr i8, ptr %23, i64 16
  %25 = load <4 x i32>, ptr %23, align 4, !tbaa !16
  %26 = load <4 x i32>, ptr %24, align 4, !tbaa !16
  %27 = add <4 x i32> %25, %20
  %28 = add <4 x i32> %26, %21
  %29 = add nuw i64 %19, 8
  %30 = icmp eq i64 %29, %15
  br i1 %30, label %31, label %18, !llvm.loop !45

31:                                               ; preds = %18
  %32 = add <4 x i32> %28, %27
  %33 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %32)
  %34 = icmp eq i64 %12, %15
  br i1 %34, label %45, label %35

35:                                               ; preds = %6, %31
  %36 = phi i32 [ 0, %6 ], [ %33, %31 ]
  %37 = phi ptr [ %2, %6 ], [ %17, %31 ]
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi i32 [ %42, %38 ], [ %36, %35 ]
  %40 = phi ptr [ %43, %38 ], [ %37, %35 ]
  %41 = load i32, ptr %40, align 4, !tbaa !16
  %42 = add nsw i32 %41, %39
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 4
  %44 = icmp eq ptr %43, %4
  br i1 %44, label %45, label %38, !llvm.loop !46

45:                                               ; preds = %38, %31
  %46 = phi i32 [ %33, %31 ], [ %42, %38 ]
  %47 = sext i32 %46 to i64
  br label %48

48:                                               ; preds = %45, %1
  %49 = phi i64 [ 0, %1 ], [ %47, %45 ]
  %50 = ptrtoint ptr %4 to i64
  %51 = ptrtoint ptr %2 to i64
  %52 = sub i64 %50, %51
  %53 = ashr exact i64 %52, 2
  %54 = udiv i64 %49, %53
  %55 = trunc i64 %54 to i32
  ret i32 %55
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef i64 @_ZN5Tools6Vector3AvgITk7NumbersxEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat {
  %2 = load ptr, ptr %0, align 8, !tbaa !22
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 8) ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 8) ]
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %45, label %6

6:                                                ; preds = %1
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %2 to i64
  %9 = add i64 %7, -8
  %10 = sub i64 %9, %8
  %11 = lshr exact i64 %10, 3
  %12 = add nuw nsw i64 %11, 1
  %13 = icmp ult i64 %10, 24
  br i1 %13, label %35, label %14

14:                                               ; preds = %6
  %15 = and i64 %12, 4611686018427387900
  %16 = shl i64 %15, 3
  %17 = getelementptr i8, ptr %2, i64 %16
  br label %18

18:                                               ; preds = %18, %14
  %19 = phi i64 [ 0, %14 ], [ %29, %18 ]
  %20 = phi <2 x i64> [ zeroinitializer, %14 ], [ %27, %18 ]
  %21 = phi <2 x i64> [ zeroinitializer, %14 ], [ %28, %18 ]
  %22 = shl i64 %19, 3
  %23 = getelementptr i8, ptr %2, i64 %22
  %24 = getelementptr i8, ptr %23, i64 16
  %25 = load <2 x i64>, ptr %23, align 8, !tbaa !27
  %26 = load <2 x i64>, ptr %24, align 8, !tbaa !27
  %27 = add <2 x i64> %25, %20
  %28 = add <2 x i64> %26, %21
  %29 = add nuw i64 %19, 4
  %30 = icmp eq i64 %29, %15
  br i1 %30, label %31, label %18, !llvm.loop !47

31:                                               ; preds = %18
  %32 = add <2 x i64> %28, %27
  %33 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %32)
  %34 = icmp eq i64 %12, %15
  br i1 %34, label %45, label %35

35:                                               ; preds = %6, %31
  %36 = phi i64 [ 0, %6 ], [ %33, %31 ]
  %37 = phi ptr [ %2, %6 ], [ %17, %31 ]
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi i64 [ %42, %38 ], [ %36, %35 ]
  %40 = phi ptr [ %43, %38 ], [ %37, %35 ]
  %41 = load i64, ptr %40, align 8, !tbaa !27
  %42 = add nsw i64 %41, %39
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 8
  %44 = icmp eq ptr %43, %4
  br i1 %44, label %45, label %38, !llvm.loop !48

45:                                               ; preds = %38, %31, %1
  %46 = phi i64 [ 0, %1 ], [ %33, %31 ], [ %42, %38 ]
  %47 = ptrtoint ptr %4 to i64
  %48 = ptrtoint ptr %2 to i64
  %49 = sub i64 %47, %48
  %50 = ashr exact i64 %49, 3
  %51 = udiv i64 %46, %50
  ret i64 %51
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef float @_ZN5Tools6Vector3AvgITk7NumbersfEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat {
  %2 = load ptr, ptr %0, align 8, !tbaa !31
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 4) ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 4) ]
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi float [ %10, %6 ], [ 0.000000e+00, %1 ]
  %8 = phi ptr [ %11, %6 ], [ %2, %1 ]
  %9 = load float, ptr %8, align 4, !tbaa !36
  %10 = fadd float %7, %9
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %13, label %6

13:                                               ; preds = %6, %1
  %14 = phi float [ 0.000000e+00, %1 ], [ %10, %6 ]
  %15 = ptrtoint ptr %4 to i64
  %16 = ptrtoint ptr %2 to i64
  %17 = sub i64 %15, %16
  %18 = ashr exact i64 %17, 2
  %19 = uitofp i64 %18 to float
  %20 = fdiv float %14, %19
  ret float %20
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZN5Tools6Vector3AvgITk7NumbersdEET_RKNSt3__16vectorIS2_NS3_9allocatorIS2_EEEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 8) ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 8) ]
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi double [ %10, %6 ], [ 0.000000e+00, %1 ]
  %8 = phi ptr [ %11, %6 ], [ %2, %1 ]
  %9 = load double, ptr %8, align 8, !tbaa !43
  %10 = fadd double %7, %9
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %12 = icmp eq ptr %11, %4
  br i1 %12, label %13, label %6

13:                                               ; preds = %6, %1
  %14 = phi double [ 0.000000e+00, %1 ], [ %10, %6 ]
  %15 = ptrtoint ptr %4 to i64
  %16 = ptrtoint ptr %2 to i64
  %17 = sub i64 %15, %16
  %18 = ashr exact i64 %17, 3
  %19 = uitofp i64 %18 to double
  %20 = fdiv double %14, %19
  ret double %20
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools6Vector4SortITk7NumbersiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.std::__1::__less.26", align 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %1, align 8, !tbaa !8
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %6 to i64
  %11 = sub i64 %9, %10
  %12 = icmp eq ptr %8, %6
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = icmp slt i64 %11, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne210107Ev() #25
  unreachable

16:                                               ; preds = %13
  %17 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %11) #26
  store ptr %17, ptr %0, align 8, !tbaa !8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %11
  store ptr %18, ptr %5, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %17, ptr align 4 %6, i64 %11, i1 false), !noalias !50
  store ptr %18, ptr %4, align 8, !tbaa !15
  br label %20

19:                                               ; preds = %26, %23
  resume { ptr, i32 } %24

20:                                               ; preds = %2, %16
  %21 = phi ptr [ null, %2 ], [ %18, %16 ]
  %22 = phi ptr [ null, %2 ], [ %17, %16 ]
  call void @llvm.assume(i1 true) [ "align"(ptr %22, i64 4) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %21, i64 4) ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #27
  invoke void @_ZNSt3__16__sortIRNS_6__lessIiiEEPiEEvT0_S5_T_(ptr noundef %22, ptr noundef %21, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %27 unwind label %23

23:                                               ; preds = %20
  %24 = landingpad { ptr, i32 }
          cleanup
  %25 = icmp eq ptr %22, null
  br i1 %25, label %19, label %26

26:                                               ; preds = %23
  store ptr %22, ptr %4, align 8, !tbaa !15
  call void @_ZdlPv(ptr noundef nonnull %22) #28
  br label %19

27:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #27
  ret void
}

declare dso_local i32 @__gxx_personality_seh0(...)

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools6Vector4SortITk7NumbersxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.std::__1::__less.36", align 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %1, align 8, !tbaa !22
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !26
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %6 to i64
  %11 = sub i64 %9, %10
  %12 = icmp eq ptr %8, %6
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = icmp slt i64 %11, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void @_ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne210107Ev() #25
  unreachable

16:                                               ; preds = %13
  %17 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %11) #26
  store ptr %17, ptr %0, align 8, !tbaa !22
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %11
  store ptr %18, ptr %5, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %17, ptr align 8 %6, i64 %11, i1 false), !noalias !60
  store ptr %18, ptr %4, align 8, !tbaa !26
  br label %20

19:                                               ; preds = %26, %23
  resume { ptr, i32 } %24

20:                                               ; preds = %2, %16
  %21 = phi ptr [ null, %2 ], [ %18, %16 ]
  %22 = phi ptr [ null, %2 ], [ %17, %16 ]
  call void @llvm.assume(i1 true) [ "align"(ptr %22, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %21, i64 8) ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #27
  invoke void @_ZNSt3__16__sortIRNS_6__lessIxxEEPxEEvT0_S5_T_(ptr noundef %22, ptr noundef %21, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %27 unwind label %23

23:                                               ; preds = %20
  %24 = landingpad { ptr, i32 }
          cleanup
  %25 = icmp eq ptr %22, null
  br i1 %25, label %19, label %26

26:                                               ; preds = %23
  store ptr %22, ptr %4, align 8, !tbaa !26
  call void @_ZdlPv(ptr noundef nonnull %22) #28
  br label %19

27:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools6Vector4SortITk7NumbersfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.std::__1::__less.46", align 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %1, align 8, !tbaa !31
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %6 to i64
  %11 = sub i64 %9, %10
  %12 = icmp eq ptr %8, %6
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = icmp slt i64 %11, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void @_ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne210107Ev() #25
  unreachable

16:                                               ; preds = %13
  %17 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %11) #26
  store ptr %17, ptr %0, align 8, !tbaa !31
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %11
  store ptr %18, ptr %5, align 8, !tbaa !69
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %17, ptr align 4 %6, i64 %11, i1 false), !noalias !70
  store ptr %18, ptr %4, align 8, !tbaa !35
  br label %20

19:                                               ; preds = %26, %23
  resume { ptr, i32 } %24

20:                                               ; preds = %2, %16
  %21 = phi ptr [ null, %2 ], [ %18, %16 ]
  %22 = phi ptr [ null, %2 ], [ %17, %16 ]
  call void @llvm.assume(i1 true) [ "align"(ptr %22, i64 4) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %21, i64 4) ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #27
  invoke void @_ZNSt3__16__sortIRNS_6__lessIffEEPfEEvT0_S5_T_(ptr noundef %22, ptr noundef %21, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %27 unwind label %23

23:                                               ; preds = %20
  %24 = landingpad { ptr, i32 }
          cleanup
  %25 = icmp eq ptr %22, null
  br i1 %25, label %19, label %26

26:                                               ; preds = %23
  store ptr %22, ptr %4, align 8, !tbaa !35
  call void @_ZdlPv(ptr noundef nonnull %22) #28
  br label %19

27:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools6Vector4SortITk7NumbersdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector.6") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.std::__1::__less.56", align 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %1, align 8, !tbaa !38
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %6 to i64
  %11 = sub i64 %9, %10
  %12 = icmp eq ptr %8, %6
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = icmp slt i64 %11, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void @_ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne210107Ev() #25
  unreachable

16:                                               ; preds = %13
  %17 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %11) #26
  store ptr %17, ptr %0, align 8, !tbaa !38
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 %11
  store ptr %18, ptr %5, align 8, !tbaa !79
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %17, ptr align 8 %6, i64 %11, i1 false), !noalias !80
  store ptr %18, ptr %4, align 8, !tbaa !42
  br label %20

19:                                               ; preds = %26, %23
  resume { ptr, i32 } %24

20:                                               ; preds = %2, %16
  %21 = phi ptr [ null, %2 ], [ %18, %16 ]
  %22 = phi ptr [ null, %2 ], [ %17, %16 ]
  call void @llvm.assume(i1 true) [ "align"(ptr %22, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %21, i64 8) ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #27
  invoke void @_ZNSt3__16__sortIRNS_6__lessIddEEPdEEvT0_S5_T_(ptr noundef %22, ptr noundef %21, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %27 unwind label %23

23:                                               ; preds = %20
  %24 = landingpad { ptr, i32 }
          cleanup
  %25 = icmp eq ptr %22, null
  br i1 %25, label %19, label %26

26:                                               ; preds = %23
  store ptr %22, ptr %4, align 8, !tbaa !42
  call void @_ZdlPv(ptr noundef nonnull %22) #28
  br label %19

27:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = load ptr, ptr %1, align 8, !tbaa !8
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 2
  %12 = icmp uge i64 %2, %11
  %13 = icmp uge i64 %3, %11
  %14 = or i1 %12, %13
  %15 = icmp ugt i64 %2, %3
  %16 = or i1 %15, %14
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = tail call ptr @__cxa_allocate_exception(i64 16) #27
  invoke void @_ZNSt12out_of_rangeC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull @.str)
          to label %19 unwind label %20

19:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #25
  unreachable

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %18) #27
  resume { ptr, i32 } %21

22:                                               ; preds = %4
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 4) ]
  %23 = shl nsw i64 %2, 2
  %24 = add i64 %23, %9
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 4) ]
  %25 = shl nsw i64 %3, 2
  %26 = add i64 %25, 4
  %27 = add i64 %26, %9
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %30 = sub i64 %26, %23
  %31 = icmp eq i64 %26, %23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %31, label %84, label %32

32:                                               ; preds = %22
  %33 = icmp slt i64 %30, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  tail call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne210107Ev() #25
  unreachable

35:                                               ; preds = %32
  %36 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %30) #26
  store ptr %36, ptr %0, align 8, !tbaa !8
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 %30
  store ptr %37, ptr %29, align 8, !tbaa !49
  %38 = inttoptr i64 %27 to ptr
  %39 = inttoptr i64 %24 to ptr
  %40 = sub i64 %25, %23
  %41 = lshr exact i64 %40, 2
  %42 = add nuw nsw i64 %41, 1
  %43 = icmp ult i64 %40, 28
  %44 = ptrtoint ptr %36 to i64
  %45 = sub i64 %44, %24
  %46 = icmp ult i64 %45, 32
  %47 = or i1 %43, %46
  br i1 %47, label %68, label %48

48:                                               ; preds = %35
  %49 = and i64 %42, 9223372036854775800
  %50 = shl i64 %49, 2
  %51 = getelementptr i8, ptr %39, i64 %50
  %52 = shl i64 %49, 2
  %53 = getelementptr i8, ptr %36, i64 %52
  br label %54

54:                                               ; preds = %54, %48
  %55 = phi i64 [ 0, %48 ], [ %64, %54 ]
  %56 = shl i64 %55, 2
  %57 = getelementptr i8, ptr %39, i64 %56
  %58 = shl i64 %55, 2
  %59 = getelementptr i8, ptr %36, i64 %58
  %60 = getelementptr i8, ptr %57, i64 16
  %61 = load <4 x i32>, ptr %57, align 4, !tbaa !16
  %62 = load <4 x i32>, ptr %60, align 4, !tbaa !16
  %63 = getelementptr i8, ptr %59, i64 16
  store <4 x i32> %61, ptr %59, align 4, !tbaa !16
  store <4 x i32> %62, ptr %63, align 4, !tbaa !16
  %64 = add nuw i64 %55, 8
  %65 = icmp eq i64 %64, %49
  br i1 %65, label %66, label %54, !llvm.loop !89

66:                                               ; preds = %54
  %67 = icmp eq i64 %42, %49
  br i1 %67, label %78, label %68

68:                                               ; preds = %35, %66
  %69 = phi ptr [ %39, %35 ], [ %51, %66 ]
  %70 = phi ptr [ %36, %35 ], [ %53, %66 ]
  br label %71

71:                                               ; preds = %68, %71
  %72 = phi ptr [ %75, %71 ], [ %69, %68 ]
  %73 = phi ptr [ %76, %71 ], [ %70, %68 ]
  %74 = load i32, ptr %72, align 4, !tbaa !16
  store i32 %74, ptr %73, align 4, !tbaa !16
  %75 = getelementptr inbounds nuw i8, ptr %72, i64 4
  %76 = getelementptr inbounds nuw i8, ptr %73, i64 4
  %77 = icmp eq ptr %75, %38
  br i1 %77, label %78, label %71, !llvm.loop !91

78:                                               ; preds = %71, %66
  %79 = phi ptr [ %53, %66 ], [ %76, %71 ]
  %80 = ptrtoint ptr %79 to i64
  %81 = ptrtoint ptr %36 to i64
  %82 = sub i64 %80, %81
  %83 = getelementptr inbounds i8, ptr %36, i64 %82
  store ptr %83, ptr %28, align 8, !tbaa !15
  br label %84

84:                                               ; preds = %22, %78
  ret void
}

declare dso_local ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12out_of_rangeC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12out_of_range, i64 16), ptr %0, align 8, !tbaa !92
  ret void
}

declare dso_local void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare dso_local void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold noreturn
declare dso_local void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  %7 = load ptr, ptr %1, align 8, !tbaa !22
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp uge i64 %2, %11
  %13 = icmp uge i64 %3, %11
  %14 = or i1 %12, %13
  %15 = icmp ugt i64 %2, %3
  %16 = or i1 %15, %14
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = tail call ptr @__cxa_allocate_exception(i64 16) #27
  invoke void @_ZNSt12out_of_rangeC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull @.str)
          to label %19 unwind label %20

19:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #25
  unreachable

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %18) #27
  resume { ptr, i32 } %21

22:                                               ; preds = %4
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 8) ]
  %23 = shl nsw i64 %2, 3
  %24 = add i64 %23, %9
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 8) ]
  %25 = shl nsw i64 %3, 3
  %26 = add i64 %25, 8
  %27 = add i64 %26, %9
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %30 = sub i64 %26, %23
  %31 = icmp eq i64 %26, %23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %31, label %84, label %32

32:                                               ; preds = %22
  %33 = icmp slt i64 %30, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  tail call void @_ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne210107Ev() #25
  unreachable

35:                                               ; preds = %32
  %36 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %30) #26
  store ptr %36, ptr %0, align 8, !tbaa !22
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 %30
  store ptr %37, ptr %29, align 8, !tbaa !59
  %38 = inttoptr i64 %27 to ptr
  %39 = inttoptr i64 %24 to ptr
  %40 = sub i64 %25, %23
  %41 = lshr exact i64 %40, 3
  %42 = add nuw nsw i64 %41, 1
  %43 = icmp ult i64 %40, 56
  %44 = ptrtoint ptr %36 to i64
  %45 = sub i64 %44, %24
  %46 = icmp ult i64 %45, 32
  %47 = or i1 %43, %46
  br i1 %47, label %68, label %48

48:                                               ; preds = %35
  %49 = and i64 %42, 4611686018427387900
  %50 = shl i64 %49, 3
  %51 = getelementptr i8, ptr %39, i64 %50
  %52 = shl i64 %49, 3
  %53 = getelementptr i8, ptr %36, i64 %52
  br label %54

54:                                               ; preds = %54, %48
  %55 = phi i64 [ 0, %48 ], [ %64, %54 ]
  %56 = shl i64 %55, 3
  %57 = getelementptr i8, ptr %39, i64 %56
  %58 = shl i64 %55, 3
  %59 = getelementptr i8, ptr %36, i64 %58
  %60 = getelementptr i8, ptr %57, i64 16
  %61 = load <2 x i64>, ptr %57, align 8, !tbaa !27
  %62 = load <2 x i64>, ptr %60, align 8, !tbaa !27
  %63 = getelementptr i8, ptr %59, i64 16
  store <2 x i64> %61, ptr %59, align 8, !tbaa !27
  store <2 x i64> %62, ptr %63, align 8, !tbaa !27
  %64 = add nuw i64 %55, 4
  %65 = icmp eq i64 %64, %49
  br i1 %65, label %66, label %54, !llvm.loop !94

66:                                               ; preds = %54
  %67 = icmp eq i64 %42, %49
  br i1 %67, label %78, label %68

68:                                               ; preds = %35, %66
  %69 = phi ptr [ %39, %35 ], [ %51, %66 ]
  %70 = phi ptr [ %36, %35 ], [ %53, %66 ]
  br label %71

71:                                               ; preds = %68, %71
  %72 = phi ptr [ %75, %71 ], [ %69, %68 ]
  %73 = phi ptr [ %76, %71 ], [ %70, %68 ]
  %74 = load i64, ptr %72, align 8, !tbaa !27
  store i64 %74, ptr %73, align 8, !tbaa !27
  %75 = getelementptr inbounds nuw i8, ptr %72, i64 8
  %76 = getelementptr inbounds nuw i8, ptr %73, i64 8
  %77 = icmp eq ptr %75, %38
  br i1 %77, label %78, label %71, !llvm.loop !95

78:                                               ; preds = %71, %66
  %79 = phi ptr [ %53, %66 ], [ %76, %71 ]
  %80 = ptrtoint ptr %79 to i64
  %81 = ptrtoint ptr %36 to i64
  %82 = sub i64 %80, %81
  %83 = getelementptr inbounds i8, ptr %36, i64 %82
  store ptr %83, ptr %28, align 8, !tbaa !26
  br label %84

84:                                               ; preds = %22, %78
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = load ptr, ptr %1, align 8, !tbaa !31
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 2
  %12 = icmp uge i64 %2, %11
  %13 = icmp uge i64 %3, %11
  %14 = or i1 %12, %13
  %15 = icmp ugt i64 %2, %3
  %16 = or i1 %15, %14
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = tail call ptr @__cxa_allocate_exception(i64 16) #27
  invoke void @_ZNSt12out_of_rangeC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull @.str)
          to label %19 unwind label %20

19:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #25
  unreachable

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %18) #27
  resume { ptr, i32 } %21

22:                                               ; preds = %4
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 4) ]
  %23 = shl nsw i64 %2, 2
  %24 = add i64 %23, %9
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 4) ]
  %25 = shl nsw i64 %3, 2
  %26 = add i64 %25, 4
  %27 = add i64 %26, %9
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %30 = sub i64 %26, %23
  %31 = icmp eq i64 %26, %23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %31, label %84, label %32

32:                                               ; preds = %22
  %33 = icmp slt i64 %30, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  tail call void @_ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne210107Ev() #25
  unreachable

35:                                               ; preds = %32
  %36 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %30) #26
  store ptr %36, ptr %0, align 8, !tbaa !31
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 %30
  store ptr %37, ptr %29, align 8, !tbaa !69
  %38 = inttoptr i64 %27 to ptr
  %39 = inttoptr i64 %24 to ptr
  %40 = sub i64 %25, %23
  %41 = lshr exact i64 %40, 2
  %42 = add nuw nsw i64 %41, 1
  %43 = icmp ult i64 %40, 28
  %44 = ptrtoint ptr %36 to i64
  %45 = sub i64 %44, %24
  %46 = icmp ult i64 %45, 32
  %47 = or i1 %43, %46
  br i1 %47, label %68, label %48

48:                                               ; preds = %35
  %49 = and i64 %42, 9223372036854775800
  %50 = shl i64 %49, 2
  %51 = getelementptr i8, ptr %39, i64 %50
  %52 = shl i64 %49, 2
  %53 = getelementptr i8, ptr %36, i64 %52
  br label %54

54:                                               ; preds = %54, %48
  %55 = phi i64 [ 0, %48 ], [ %64, %54 ]
  %56 = shl i64 %55, 2
  %57 = getelementptr i8, ptr %39, i64 %56
  %58 = shl i64 %55, 2
  %59 = getelementptr i8, ptr %36, i64 %58
  %60 = getelementptr i8, ptr %57, i64 16
  %61 = load <4 x float>, ptr %57, align 4, !tbaa !36
  %62 = load <4 x float>, ptr %60, align 4, !tbaa !36
  %63 = getelementptr i8, ptr %59, i64 16
  store <4 x float> %61, ptr %59, align 4, !tbaa !36
  store <4 x float> %62, ptr %63, align 4, !tbaa !36
  %64 = add nuw i64 %55, 8
  %65 = icmp eq i64 %64, %49
  br i1 %65, label %66, label %54, !llvm.loop !96

66:                                               ; preds = %54
  %67 = icmp eq i64 %42, %49
  br i1 %67, label %78, label %68

68:                                               ; preds = %35, %66
  %69 = phi ptr [ %39, %35 ], [ %51, %66 ]
  %70 = phi ptr [ %36, %35 ], [ %53, %66 ]
  br label %71

71:                                               ; preds = %68, %71
  %72 = phi ptr [ %75, %71 ], [ %69, %68 ]
  %73 = phi ptr [ %76, %71 ], [ %70, %68 ]
  %74 = load float, ptr %72, align 4, !tbaa !36
  store float %74, ptr %73, align 4, !tbaa !36
  %75 = getelementptr inbounds nuw i8, ptr %72, i64 4
  %76 = getelementptr inbounds nuw i8, ptr %73, i64 4
  %77 = icmp eq ptr %75, %38
  br i1 %77, label %78, label %71, !llvm.loop !97

78:                                               ; preds = %71, %66
  %79 = phi ptr [ %53, %66 ], [ %76, %71 ]
  %80 = ptrtoint ptr %79 to i64
  %81 = ptrtoint ptr %36 to i64
  %82 = sub i64 %80, %81
  %83 = getelementptr inbounds i8, ptr %36, i64 %82
  store ptr %83, ptr %28, align 8, !tbaa !35
  br label %84

84:                                               ; preds = %22, %78
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_yy(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector.6") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %1, align 8, !tbaa !38
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp uge i64 %2, %11
  %13 = icmp uge i64 %3, %11
  %14 = or i1 %12, %13
  %15 = icmp ugt i64 %2, %3
  %16 = or i1 %15, %14
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = tail call ptr @__cxa_allocate_exception(i64 16) #27
  invoke void @_ZNSt12out_of_rangeC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull @.str)
          to label %19 unwind label %20

19:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #25
  unreachable

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %18) #27
  resume { ptr, i32 } %21

22:                                               ; preds = %4
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 8) ]
  %23 = shl nsw i64 %2, 3
  %24 = add i64 %23, %9
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 8) ]
  %25 = shl nsw i64 %3, 3
  %26 = add i64 %25, 8
  %27 = add i64 %26, %9
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %30 = sub i64 %26, %23
  %31 = icmp eq i64 %26, %23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %31, label %84, label %32

32:                                               ; preds = %22
  %33 = icmp slt i64 %30, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  tail call void @_ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne210107Ev() #25
  unreachable

35:                                               ; preds = %32
  %36 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %30) #26
  store ptr %36, ptr %0, align 8, !tbaa !38
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 %30
  store ptr %37, ptr %29, align 8, !tbaa !79
  %38 = inttoptr i64 %27 to ptr
  %39 = inttoptr i64 %24 to ptr
  %40 = sub i64 %25, %23
  %41 = lshr exact i64 %40, 3
  %42 = add nuw nsw i64 %41, 1
  %43 = icmp ult i64 %40, 56
  %44 = ptrtoint ptr %36 to i64
  %45 = sub i64 %44, %24
  %46 = icmp ult i64 %45, 32
  %47 = or i1 %43, %46
  br i1 %47, label %68, label %48

48:                                               ; preds = %35
  %49 = and i64 %42, 4611686018427387900
  %50 = shl i64 %49, 3
  %51 = getelementptr i8, ptr %39, i64 %50
  %52 = shl i64 %49, 3
  %53 = getelementptr i8, ptr %36, i64 %52
  br label %54

54:                                               ; preds = %54, %48
  %55 = phi i64 [ 0, %48 ], [ %64, %54 ]
  %56 = shl i64 %55, 3
  %57 = getelementptr i8, ptr %39, i64 %56
  %58 = shl i64 %55, 3
  %59 = getelementptr i8, ptr %36, i64 %58
  %60 = getelementptr i8, ptr %57, i64 16
  %61 = load <2 x double>, ptr %57, align 8, !tbaa !43
  %62 = load <2 x double>, ptr %60, align 8, !tbaa !43
  %63 = getelementptr i8, ptr %59, i64 16
  store <2 x double> %61, ptr %59, align 8, !tbaa !43
  store <2 x double> %62, ptr %63, align 8, !tbaa !43
  %64 = add nuw i64 %55, 4
  %65 = icmp eq i64 %64, %49
  br i1 %65, label %66, label %54, !llvm.loop !98

66:                                               ; preds = %54
  %67 = icmp eq i64 %42, %49
  br i1 %67, label %78, label %68

68:                                               ; preds = %35, %66
  %69 = phi ptr [ %39, %35 ], [ %51, %66 ]
  %70 = phi ptr [ %36, %35 ], [ %53, %66 ]
  br label %71

71:                                               ; preds = %68, %71
  %72 = phi ptr [ %75, %71 ], [ %69, %68 ]
  %73 = phi ptr [ %76, %71 ], [ %70, %68 ]
  %74 = load double, ptr %72, align 8, !tbaa !43
  store double %74, ptr %73, align 8, !tbaa !43
  %75 = getelementptr inbounds nuw i8, ptr %72, i64 8
  %76 = getelementptr inbounds nuw i8, ptr %73, i64 8
  %77 = icmp eq ptr %75, %38
  br i1 %77, label %78, label %71, !llvm.loop !99

78:                                               ; preds = %71, %66
  %79 = phi ptr [ %53, %66 ], [ %76, %71 ]
  %80 = ptrtoint ptr %79 to i64
  %81 = ptrtoint ptr %36 to i64
  %82 = sub i64 %80, %81
  %83 = getelementptr inbounds i8, ptr %36, i64 %82
  store ptr %83, ptr %28, align 8, !tbaa !42
  br label %84

84:                                               ; preds = %22, %78
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools6Vector5SliceIiEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = load ptr, ptr %1, align 8, !tbaa !8
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 2
  %11 = icmp ult i64 %2, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = tail call ptr @__cxa_allocate_exception(i64 16) #27
  invoke void @_ZNSt12out_of_rangeC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str)
          to label %14 unwind label %15

14:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #25
  unreachable

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %13) #27
  resume { ptr, i32 } %16

17:                                               ; preds = %3
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 4) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 4) ]
  %18 = shl nsw i64 %2, 2
  %19 = add i64 %18, 4
  %20 = add i64 %19, %8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = icmp eq i64 %19, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %23, label %74, label %24

24:                                               ; preds = %17
  %25 = icmp slt i64 %19, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne210107Ev() #25
  unreachable

27:                                               ; preds = %24
  %28 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %19) #26
  store ptr %28, ptr %0, align 8, !tbaa !8
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 %19
  store ptr %29, ptr %22, align 8, !tbaa !49
  %30 = inttoptr i64 %20 to ptr
  %31 = and i64 %2, 4611686018427387903
  %32 = add nuw nsw i64 %31, 1
  %33 = icmp samesign ult i64 %31, 7
  %34 = ptrtoint ptr %28 to i64
  %35 = sub i64 %34, %8
  %36 = icmp ult i64 %35, 32
  %37 = or i1 %33, %36
  br i1 %37, label %58, label %38

38:                                               ; preds = %27
  %39 = and i64 %32, 9223372036854775800
  %40 = shl i64 %39, 2
  %41 = getelementptr i8, ptr %6, i64 %40
  %42 = shl i64 %39, 2
  %43 = getelementptr i8, ptr %28, i64 %42
  br label %44

44:                                               ; preds = %44, %38
  %45 = phi i64 [ 0, %38 ], [ %54, %44 ]
  %46 = shl i64 %45, 2
  %47 = getelementptr i8, ptr %6, i64 %46
  %48 = shl i64 %45, 2
  %49 = getelementptr i8, ptr %28, i64 %48
  %50 = getelementptr i8, ptr %47, i64 16
  %51 = load <4 x i32>, ptr %47, align 4, !tbaa !16
  %52 = load <4 x i32>, ptr %50, align 4, !tbaa !16
  %53 = getelementptr i8, ptr %49, i64 16
  store <4 x i32> %51, ptr %49, align 4, !tbaa !16
  store <4 x i32> %52, ptr %53, align 4, !tbaa !16
  %54 = add nuw i64 %45, 8
  %55 = icmp eq i64 %54, %39
  br i1 %55, label %56, label %44, !llvm.loop !100

56:                                               ; preds = %44
  %57 = icmp eq i64 %32, %39
  br i1 %57, label %68, label %58

58:                                               ; preds = %27, %56
  %59 = phi ptr [ %6, %27 ], [ %41, %56 ]
  %60 = phi ptr [ %28, %27 ], [ %43, %56 ]
  br label %61

61:                                               ; preds = %58, %61
  %62 = phi ptr [ %65, %61 ], [ %59, %58 ]
  %63 = phi ptr [ %66, %61 ], [ %60, %58 ]
  %64 = load i32, ptr %62, align 4, !tbaa !16
  store i32 %64, ptr %63, align 4, !tbaa !16
  %65 = getelementptr inbounds nuw i8, ptr %62, i64 4
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 4
  %67 = icmp eq ptr %65, %30
  br i1 %67, label %68, label %61, !llvm.loop !101

68:                                               ; preds = %61, %56
  %69 = phi ptr [ %43, %56 ], [ %66, %61 ]
  %70 = ptrtoint ptr %69 to i64
  %71 = ptrtoint ptr %28 to i64
  %72 = sub i64 %70, %71
  %73 = getelementptr inbounds i8, ptr %28, i64 %72
  store ptr %73, ptr %21, align 8, !tbaa !15
  br label %74

74:                                               ; preds = %17, %68
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools6Vector5SliceIxEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = load ptr, ptr %1, align 8, !tbaa !22
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp ult i64 %2, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = tail call ptr @__cxa_allocate_exception(i64 16) #27
  invoke void @_ZNSt12out_of_rangeC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str)
          to label %14 unwind label %15

14:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #25
  unreachable

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %13) #27
  resume { ptr, i32 } %16

17:                                               ; preds = %3
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 8) ]
  %18 = shl nsw i64 %2, 3
  %19 = add i64 %18, 8
  %20 = add i64 %19, %8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = icmp eq i64 %19, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %23, label %74, label %24

24:                                               ; preds = %17
  %25 = icmp slt i64 %19, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void @_ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne210107Ev() #25
  unreachable

27:                                               ; preds = %24
  %28 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %19) #26
  store ptr %28, ptr %0, align 8, !tbaa !22
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 %19
  store ptr %29, ptr %22, align 8, !tbaa !59
  %30 = inttoptr i64 %20 to ptr
  %31 = and i64 %2, 2305843009213693951
  %32 = add nuw nsw i64 %31, 1
  %33 = icmp samesign ult i64 %31, 7
  %34 = ptrtoint ptr %28 to i64
  %35 = sub i64 %34, %8
  %36 = icmp ult i64 %35, 32
  %37 = or i1 %33, %36
  br i1 %37, label %58, label %38

38:                                               ; preds = %27
  %39 = and i64 %32, 4611686018427387900
  %40 = shl i64 %39, 3
  %41 = getelementptr i8, ptr %6, i64 %40
  %42 = shl i64 %39, 3
  %43 = getelementptr i8, ptr %28, i64 %42
  br label %44

44:                                               ; preds = %44, %38
  %45 = phi i64 [ 0, %38 ], [ %54, %44 ]
  %46 = shl i64 %45, 3
  %47 = getelementptr i8, ptr %6, i64 %46
  %48 = shl i64 %45, 3
  %49 = getelementptr i8, ptr %28, i64 %48
  %50 = getelementptr i8, ptr %47, i64 16
  %51 = load <2 x i64>, ptr %47, align 8, !tbaa !27
  %52 = load <2 x i64>, ptr %50, align 8, !tbaa !27
  %53 = getelementptr i8, ptr %49, i64 16
  store <2 x i64> %51, ptr %49, align 8, !tbaa !27
  store <2 x i64> %52, ptr %53, align 8, !tbaa !27
  %54 = add nuw i64 %45, 4
  %55 = icmp eq i64 %54, %39
  br i1 %55, label %56, label %44, !llvm.loop !102

56:                                               ; preds = %44
  %57 = icmp eq i64 %32, %39
  br i1 %57, label %68, label %58

58:                                               ; preds = %27, %56
  %59 = phi ptr [ %6, %27 ], [ %41, %56 ]
  %60 = phi ptr [ %28, %27 ], [ %43, %56 ]
  br label %61

61:                                               ; preds = %58, %61
  %62 = phi ptr [ %65, %61 ], [ %59, %58 ]
  %63 = phi ptr [ %66, %61 ], [ %60, %58 ]
  %64 = load i64, ptr %62, align 8, !tbaa !27
  store i64 %64, ptr %63, align 8, !tbaa !27
  %65 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %67 = icmp eq ptr %65, %30
  br i1 %67, label %68, label %61, !llvm.loop !103

68:                                               ; preds = %61, %56
  %69 = phi ptr [ %43, %56 ], [ %66, %61 ]
  %70 = ptrtoint ptr %69 to i64
  %71 = ptrtoint ptr %28 to i64
  %72 = sub i64 %70, %71
  %73 = getelementptr inbounds i8, ptr %28, i64 %72
  store ptr %73, ptr %21, align 8, !tbaa !26
  br label %74

74:                                               ; preds = %17, %68
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools6Vector5SliceIfEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = load ptr, ptr %1, align 8, !tbaa !31
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 2
  %11 = icmp ult i64 %2, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = tail call ptr @__cxa_allocate_exception(i64 16) #27
  invoke void @_ZNSt12out_of_rangeC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str)
          to label %14 unwind label %15

14:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #25
  unreachable

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %13) #27
  resume { ptr, i32 } %16

17:                                               ; preds = %3
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 4) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 4) ]
  %18 = shl nsw i64 %2, 2
  %19 = add i64 %18, 4
  %20 = add i64 %19, %8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = icmp eq i64 %19, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %23, label %74, label %24

24:                                               ; preds = %17
  %25 = icmp slt i64 %19, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void @_ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne210107Ev() #25
  unreachable

27:                                               ; preds = %24
  %28 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %19) #26
  store ptr %28, ptr %0, align 8, !tbaa !31
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 %19
  store ptr %29, ptr %22, align 8, !tbaa !69
  %30 = inttoptr i64 %20 to ptr
  %31 = and i64 %2, 4611686018427387903
  %32 = add nuw nsw i64 %31, 1
  %33 = icmp samesign ult i64 %31, 7
  %34 = ptrtoint ptr %28 to i64
  %35 = sub i64 %34, %8
  %36 = icmp ult i64 %35, 32
  %37 = or i1 %33, %36
  br i1 %37, label %58, label %38

38:                                               ; preds = %27
  %39 = and i64 %32, 9223372036854775800
  %40 = shl i64 %39, 2
  %41 = getelementptr i8, ptr %6, i64 %40
  %42 = shl i64 %39, 2
  %43 = getelementptr i8, ptr %28, i64 %42
  br label %44

44:                                               ; preds = %44, %38
  %45 = phi i64 [ 0, %38 ], [ %54, %44 ]
  %46 = shl i64 %45, 2
  %47 = getelementptr i8, ptr %6, i64 %46
  %48 = shl i64 %45, 2
  %49 = getelementptr i8, ptr %28, i64 %48
  %50 = getelementptr i8, ptr %47, i64 16
  %51 = load <4 x float>, ptr %47, align 4, !tbaa !36
  %52 = load <4 x float>, ptr %50, align 4, !tbaa !36
  %53 = getelementptr i8, ptr %49, i64 16
  store <4 x float> %51, ptr %49, align 4, !tbaa !36
  store <4 x float> %52, ptr %53, align 4, !tbaa !36
  %54 = add nuw i64 %45, 8
  %55 = icmp eq i64 %54, %39
  br i1 %55, label %56, label %44, !llvm.loop !104

56:                                               ; preds = %44
  %57 = icmp eq i64 %32, %39
  br i1 %57, label %68, label %58

58:                                               ; preds = %27, %56
  %59 = phi ptr [ %6, %27 ], [ %41, %56 ]
  %60 = phi ptr [ %28, %27 ], [ %43, %56 ]
  br label %61

61:                                               ; preds = %58, %61
  %62 = phi ptr [ %65, %61 ], [ %59, %58 ]
  %63 = phi ptr [ %66, %61 ], [ %60, %58 ]
  %64 = load float, ptr %62, align 4, !tbaa !36
  store float %64, ptr %63, align 4, !tbaa !36
  %65 = getelementptr inbounds nuw i8, ptr %62, i64 4
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 4
  %67 = icmp eq ptr %65, %30
  br i1 %67, label %68, label %61, !llvm.loop !105

68:                                               ; preds = %61, %56
  %69 = phi ptr [ %43, %56 ], [ %66, %61 ]
  %70 = ptrtoint ptr %69 to i64
  %71 = ptrtoint ptr %28 to i64
  %72 = sub i64 %70, %71
  %73 = getelementptr inbounds i8, ptr %28, i64 %72
  store ptr %73, ptr %21, align 8, !tbaa !35
  br label %74

74:                                               ; preds = %17, %68
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools6Vector5SliceIdEENSt3__16vectorIT_NS2_9allocatorIS4_EEEERKS7_y(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector.6") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = load ptr, ptr %1, align 8, !tbaa !38
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp ult i64 %2, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = tail call ptr @__cxa_allocate_exception(i64 16) #27
  invoke void @_ZNSt12out_of_rangeC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str)
          to label %14 unwind label %15

14:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #25
  unreachable

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %13) #27
  resume { ptr, i32 } %16

17:                                               ; preds = %3
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 8) ]
  %18 = shl nsw i64 %2, 3
  %19 = add i64 %18, 8
  %20 = add i64 %19, %8
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %23 = icmp eq i64 %19, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %23, label %74, label %24

24:                                               ; preds = %17
  %25 = icmp slt i64 %19, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void @_ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne210107Ev() #25
  unreachable

27:                                               ; preds = %24
  %28 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %19) #26
  store ptr %28, ptr %0, align 8, !tbaa !38
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 %19
  store ptr %29, ptr %22, align 8, !tbaa !79
  %30 = inttoptr i64 %20 to ptr
  %31 = and i64 %2, 2305843009213693951
  %32 = add nuw nsw i64 %31, 1
  %33 = icmp samesign ult i64 %31, 7
  %34 = ptrtoint ptr %28 to i64
  %35 = sub i64 %34, %8
  %36 = icmp ult i64 %35, 32
  %37 = or i1 %33, %36
  br i1 %37, label %58, label %38

38:                                               ; preds = %27
  %39 = and i64 %32, 4611686018427387900
  %40 = shl i64 %39, 3
  %41 = getelementptr i8, ptr %6, i64 %40
  %42 = shl i64 %39, 3
  %43 = getelementptr i8, ptr %28, i64 %42
  br label %44

44:                                               ; preds = %44, %38
  %45 = phi i64 [ 0, %38 ], [ %54, %44 ]
  %46 = shl i64 %45, 3
  %47 = getelementptr i8, ptr %6, i64 %46
  %48 = shl i64 %45, 3
  %49 = getelementptr i8, ptr %28, i64 %48
  %50 = getelementptr i8, ptr %47, i64 16
  %51 = load <2 x double>, ptr %47, align 8, !tbaa !43
  %52 = load <2 x double>, ptr %50, align 8, !tbaa !43
  %53 = getelementptr i8, ptr %49, i64 16
  store <2 x double> %51, ptr %49, align 8, !tbaa !43
  store <2 x double> %52, ptr %53, align 8, !tbaa !43
  %54 = add nuw i64 %45, 4
  %55 = icmp eq i64 %54, %39
  br i1 %55, label %56, label %44, !llvm.loop !106

56:                                               ; preds = %44
  %57 = icmp eq i64 %32, %39
  br i1 %57, label %68, label %58

58:                                               ; preds = %27, %56
  %59 = phi ptr [ %6, %27 ], [ %41, %56 ]
  %60 = phi ptr [ %28, %27 ], [ %43, %56 ]
  br label %61

61:                                               ; preds = %58, %61
  %62 = phi ptr [ %65, %61 ], [ %59, %58 ]
  %63 = phi ptr [ %66, %61 ], [ %60, %58 ]
  %64 = load double, ptr %62, align 8, !tbaa !43
  store double %64, ptr %63, align 8, !tbaa !43
  %65 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %67 = icmp eq ptr %65, %30
  br i1 %67, label %68, label %61, !llvm.loop !107

68:                                               ; preds = %61, %56
  %69 = phi ptr [ %43, %56 ], [ %66, %61 ]
  %70 = ptrtoint ptr %69 to i64
  %71 = ptrtoint ptr %28 to i64
  %72 = sub i64 %70, %71
  %73 = getelementptr inbounds i8, ptr %28, i64 %72
  store ptr %73, ptr %21, align 8, !tbaa !42
  br label %74

74:                                               ; preds = %17, %68
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = load ptr, ptr %0, align 8, !tbaa !8
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 2
  %11 = icmp uge i64 %1, %10
  %12 = icmp uge i64 %2, %10
  %13 = or i1 %11, %12
  %14 = icmp ugt i64 %1, %2
  %15 = or i1 %14, %13
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = tail call ptr @__cxa_allocate_exception(i64 16) #27
  invoke void @_ZNSt12out_of_rangeC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull @.str)
          to label %18 unwind label %19

18:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #25
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %17) #27
  resume { ptr, i32 } %20

21:                                               ; preds = %3
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 4) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 4) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 4) ]
  %22 = icmp eq i64 %1, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %21
  %24 = shl nsw i64 %1, 2
  %25 = getelementptr inbounds i8, ptr %6, i64 %24
  %26 = ptrtoint ptr %25 to i64
  %27 = sub i64 %7, %26
  %28 = icmp eq ptr %5, %25
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %6, ptr nonnull align 4 %25, i64 %27, i1 false), !noalias !108
  %30 = load ptr, ptr %0, align 8, !tbaa !8
  %31 = ptrtoint ptr %30 to i64
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i64 [ %31, %29 ], [ %8, %23 ]
  %34 = phi ptr [ %30, %29 ], [ %6, %23 ]
  %35 = getelementptr inbounds nuw i8, ptr %6, i64 %27
  store ptr %35, ptr %4, align 8, !tbaa !15
  %36 = ptrtoint ptr %35 to i64
  br label %37

37:                                               ; preds = %21, %32
  %38 = phi i64 [ %7, %21 ], [ %36, %32 ]
  %39 = phi i64 [ %8, %21 ], [ %33, %32 ]
  %40 = phi ptr [ %5, %21 ], [ %35, %32 ]
  %41 = phi ptr [ %6, %21 ], [ %34, %32 ]
  call void @llvm.assume(i1 true) [ "align"(ptr %41, i64 4) ]
  %42 = sub nuw i64 %2, %1
  %43 = shl i64 %42, 2
  %44 = add i64 %43, 4
  %45 = add i64 %44, %39
  call void @llvm.assume(i1 true) [ "align"(ptr %40, i64 4) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %41, i64 4) ]
  %46 = getelementptr inbounds i8, ptr %41, i64 %44
  %47 = icmp eq i64 %45, %38
  br i1 %47, label %57, label %48

48:                                               ; preds = %37
  %49 = sub i64 %38, %45
  %50 = getelementptr inbounds i8, ptr %46, i64 %49
  %51 = ptrtoint ptr %50 to i64
  %52 = sub i64 %38, %51
  %53 = icmp eq ptr %40, %50
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %46, ptr nonnull align 4 %50, i64 %52, i1 false), !noalias !117
  br label %55

55:                                               ; preds = %54, %48
  %56 = getelementptr inbounds nuw i8, ptr %46, i64 %52
  store ptr %56, ptr %4, align 8, !tbaa !15
  br label %57

57:                                               ; preds = %37, %55
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = load ptr, ptr %0, align 8, !tbaa !22
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp uge i64 %1, %10
  %12 = icmp uge i64 %2, %10
  %13 = or i1 %11, %12
  %14 = icmp ugt i64 %1, %2
  %15 = or i1 %14, %13
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = tail call ptr @__cxa_allocate_exception(i64 16) #27
  invoke void @_ZNSt12out_of_rangeC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull @.str)
          to label %18 unwind label %19

18:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #25
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %17) #27
  resume { ptr, i32 } %20

21:                                               ; preds = %3
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 8) ]
  %22 = icmp eq i64 %1, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %21
  %24 = shl nsw i64 %1, 3
  %25 = getelementptr inbounds i8, ptr %6, i64 %24
  %26 = ptrtoint ptr %25 to i64
  %27 = sub i64 %7, %26
  %28 = icmp eq ptr %5, %25
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %6, ptr nonnull align 8 %25, i64 %27, i1 false), !noalias !126
  %30 = load ptr, ptr %0, align 8, !tbaa !22
  %31 = ptrtoint ptr %30 to i64
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i64 [ %31, %29 ], [ %8, %23 ]
  %34 = phi ptr [ %30, %29 ], [ %6, %23 ]
  %35 = getelementptr inbounds nuw i8, ptr %6, i64 %27
  store ptr %35, ptr %4, align 8, !tbaa !26
  %36 = ptrtoint ptr %35 to i64
  br label %37

37:                                               ; preds = %21, %32
  %38 = phi i64 [ %7, %21 ], [ %36, %32 ]
  %39 = phi i64 [ %8, %21 ], [ %33, %32 ]
  %40 = phi ptr [ %5, %21 ], [ %35, %32 ]
  %41 = phi ptr [ %6, %21 ], [ %34, %32 ]
  call void @llvm.assume(i1 true) [ "align"(ptr %41, i64 8) ]
  %42 = sub nuw i64 %2, %1
  %43 = shl i64 %42, 3
  %44 = add i64 %43, 8
  %45 = add i64 %44, %39
  call void @llvm.assume(i1 true) [ "align"(ptr %40, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %41, i64 8) ]
  %46 = getelementptr inbounds i8, ptr %41, i64 %44
  %47 = icmp eq i64 %45, %38
  br i1 %47, label %57, label %48

48:                                               ; preds = %37
  %49 = sub i64 %38, %45
  %50 = getelementptr inbounds i8, ptr %46, i64 %49
  %51 = ptrtoint ptr %50 to i64
  %52 = sub i64 %38, %51
  %53 = icmp eq ptr %40, %50
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %46, ptr nonnull align 8 %50, i64 %52, i1 false), !noalias !135
  br label %55

55:                                               ; preds = %54, %48
  %56 = getelementptr inbounds nuw i8, ptr %46, i64 %52
  store ptr %56, ptr %4, align 8, !tbaa !26
  br label %57

57:                                               ; preds = %37, %55
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = load ptr, ptr %0, align 8, !tbaa !31
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 2
  %11 = icmp uge i64 %1, %10
  %12 = icmp uge i64 %2, %10
  %13 = or i1 %11, %12
  %14 = icmp ugt i64 %1, %2
  %15 = or i1 %14, %13
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = tail call ptr @__cxa_allocate_exception(i64 16) #27
  invoke void @_ZNSt12out_of_rangeC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull @.str)
          to label %18 unwind label %19

18:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #25
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %17) #27
  resume { ptr, i32 } %20

21:                                               ; preds = %3
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 4) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 4) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 4) ]
  %22 = icmp eq i64 %1, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %21
  %24 = shl nsw i64 %1, 2
  %25 = getelementptr inbounds i8, ptr %6, i64 %24
  %26 = ptrtoint ptr %25 to i64
  %27 = sub i64 %7, %26
  %28 = icmp eq ptr %5, %25
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %6, ptr nonnull align 4 %25, i64 %27, i1 false), !noalias !144
  %30 = load ptr, ptr %0, align 8, !tbaa !31
  %31 = ptrtoint ptr %30 to i64
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i64 [ %31, %29 ], [ %8, %23 ]
  %34 = phi ptr [ %30, %29 ], [ %6, %23 ]
  %35 = getelementptr inbounds nuw i8, ptr %6, i64 %27
  store ptr %35, ptr %4, align 8, !tbaa !35
  %36 = ptrtoint ptr %35 to i64
  br label %37

37:                                               ; preds = %21, %32
  %38 = phi i64 [ %7, %21 ], [ %36, %32 ]
  %39 = phi i64 [ %8, %21 ], [ %33, %32 ]
  %40 = phi ptr [ %5, %21 ], [ %35, %32 ]
  %41 = phi ptr [ %6, %21 ], [ %34, %32 ]
  call void @llvm.assume(i1 true) [ "align"(ptr %41, i64 4) ]
  %42 = sub nuw i64 %2, %1
  %43 = shl i64 %42, 2
  %44 = add i64 %43, 4
  %45 = add i64 %44, %39
  call void @llvm.assume(i1 true) [ "align"(ptr %40, i64 4) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %41, i64 4) ]
  %46 = getelementptr inbounds i8, ptr %41, i64 %44
  %47 = icmp eq i64 %45, %38
  br i1 %47, label %57, label %48

48:                                               ; preds = %37
  %49 = sub i64 %38, %45
  %50 = getelementptr inbounds i8, ptr %46, i64 %49
  %51 = ptrtoint ptr %50 to i64
  %52 = sub i64 %38, %51
  %53 = icmp eq ptr %40, %50
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %46, ptr nonnull align 4 %50, i64 %52, i1 false), !noalias !153
  br label %55

55:                                               ; preds = %54, %48
  %56 = getelementptr inbounds nuw i8, ptr %46, i64 %52
  store ptr %56, ptr %4, align 8, !tbaa !35
  br label %57

57:                                               ; preds = %37, %55
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEyy(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = load ptr, ptr %0, align 8, !tbaa !38
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = icmp uge i64 %1, %10
  %12 = icmp uge i64 %2, %10
  %13 = or i1 %11, %12
  %14 = icmp ugt i64 %1, %2
  %15 = or i1 %14, %13
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = tail call ptr @__cxa_allocate_exception(i64 16) #27
  invoke void @_ZNSt12out_of_rangeC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull @.str)
          to label %18 unwind label %19

18:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #25
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %17) #27
  resume { ptr, i32 } %20

21:                                               ; preds = %3
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %6, i64 8) ]
  %22 = icmp eq i64 %1, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %21
  %24 = shl nsw i64 %1, 3
  %25 = getelementptr inbounds i8, ptr %6, i64 %24
  %26 = ptrtoint ptr %25 to i64
  %27 = sub i64 %7, %26
  %28 = icmp eq ptr %5, %25
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %6, ptr nonnull align 8 %25, i64 %27, i1 false), !noalias !162
  %30 = load ptr, ptr %0, align 8, !tbaa !38
  %31 = ptrtoint ptr %30 to i64
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i64 [ %31, %29 ], [ %8, %23 ]
  %34 = phi ptr [ %30, %29 ], [ %6, %23 ]
  %35 = getelementptr inbounds nuw i8, ptr %6, i64 %27
  store ptr %35, ptr %4, align 8, !tbaa !42
  %36 = ptrtoint ptr %35 to i64
  br label %37

37:                                               ; preds = %21, %32
  %38 = phi i64 [ %7, %21 ], [ %36, %32 ]
  %39 = phi i64 [ %8, %21 ], [ %33, %32 ]
  %40 = phi ptr [ %5, %21 ], [ %35, %32 ]
  %41 = phi ptr [ %6, %21 ], [ %34, %32 ]
  call void @llvm.assume(i1 true) [ "align"(ptr %41, i64 8) ]
  %42 = sub nuw i64 %2, %1
  %43 = shl i64 %42, 3
  %44 = add i64 %43, 8
  %45 = add i64 %44, %39
  call void @llvm.assume(i1 true) [ "align"(ptr %40, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %41, i64 8) ]
  %46 = getelementptr inbounds i8, ptr %41, i64 %44
  %47 = icmp eq i64 %45, %38
  br i1 %47, label %57, label %48

48:                                               ; preds = %37
  %49 = sub i64 %38, %45
  %50 = getelementptr inbounds i8, ptr %46, i64 %49
  %51 = ptrtoint ptr %50 to i64
  %52 = sub i64 %38, %51
  %53 = icmp eq ptr %40, %50
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %46, ptr nonnull align 8 %50, i64 %52, i1 false), !noalias !171
  br label %55

55:                                               ; preds = %54, %48
  %56 = getelementptr inbounds nuw i8, ptr %46, i64 %52
  store ptr %56, ptr %4, align 8, !tbaa !42
  br label %57

57:                                               ; preds = %37, %55
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools9VectorInl5SliceIiEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = load ptr, ptr %0, align 8, !tbaa !8
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 2
  %10 = icmp ult i64 %1, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @__cxa_allocate_exception(i64 16) #27
  invoke void @_ZNSt12out_of_rangeC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull @.str)
          to label %13 unwind label %14

13:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #25
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %12) #27
  resume { ptr, i32 } %15

16:                                               ; preds = %2
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 4) ]
  %17 = shl i64 %1, 2
  %18 = add i64 %17, 4
  %19 = add i64 %18, %7
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 4) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 4) ]
  %20 = getelementptr inbounds i8, ptr %5, i64 %18
  %21 = icmp eq i64 %19, %6
  br i1 %21, label %33, label %22

22:                                               ; preds = %16
  %23 = sub i64 %6, %19
  %24 = getelementptr inbounds i8, ptr %20, i64 %23
  %25 = ptrtoint ptr %24 to i64
  %26 = sub i64 %6, %25
  %27 = icmp eq ptr %4, %24
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %20, ptr nonnull align 4 %24, i64 %26, i1 false), !noalias !180
  %29 = load ptr, ptr %0, align 8, !tbaa !8
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %29, %28 ], [ %5, %22 ]
  %32 = getelementptr inbounds nuw i8, ptr %20, i64 %26
  store ptr %32, ptr %3, align 8, !tbaa !15
  br label %33

33:                                               ; preds = %30, %16
  %34 = phi ptr [ %31, %30 ], [ %5, %16 ]
  call void @llvm.assume(i1 true) [ "align"(ptr %34, i64 4) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %34, i64 4) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %34, i64 4) ]
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools9VectorInl5SliceIxEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  %5 = load ptr, ptr %0, align 8, !tbaa !22
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp ult i64 %1, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @__cxa_allocate_exception(i64 16) #27
  invoke void @_ZNSt12out_of_rangeC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull @.str)
          to label %13 unwind label %14

13:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #25
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %12) #27
  resume { ptr, i32 } %15

16:                                               ; preds = %2
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 8) ]
  %17 = shl i64 %1, 3
  %18 = add i64 %17, 8
  %19 = add i64 %18, %7
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 8) ]
  %20 = getelementptr inbounds i8, ptr %5, i64 %18
  %21 = icmp eq i64 %19, %6
  br i1 %21, label %33, label %22

22:                                               ; preds = %16
  %23 = sub i64 %6, %19
  %24 = getelementptr inbounds i8, ptr %20, i64 %23
  %25 = ptrtoint ptr %24 to i64
  %26 = sub i64 %6, %25
  %27 = icmp eq ptr %4, %24
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %20, ptr nonnull align 8 %24, i64 %26, i1 false), !noalias !189
  %29 = load ptr, ptr %0, align 8, !tbaa !22
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %29, %28 ], [ %5, %22 ]
  %32 = getelementptr inbounds nuw i8, ptr %20, i64 %26
  store ptr %32, ptr %3, align 8, !tbaa !26
  br label %33

33:                                               ; preds = %30, %16
  %34 = phi ptr [ %31, %30 ], [ %5, %16 ]
  call void @llvm.assume(i1 true) [ "align"(ptr %34, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %34, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %34, i64 8) ]
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools9VectorInl5SliceIfEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = load ptr, ptr %0, align 8, !tbaa !31
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 2
  %10 = icmp ult i64 %1, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @__cxa_allocate_exception(i64 16) #27
  invoke void @_ZNSt12out_of_rangeC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull @.str)
          to label %13 unwind label %14

13:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #25
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %12) #27
  resume { ptr, i32 } %15

16:                                               ; preds = %2
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 4) ]
  %17 = shl i64 %1, 2
  %18 = add i64 %17, 4
  %19 = add i64 %18, %7
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 4) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 4) ]
  %20 = getelementptr inbounds i8, ptr %5, i64 %18
  %21 = icmp eq i64 %19, %6
  br i1 %21, label %33, label %22

22:                                               ; preds = %16
  %23 = sub i64 %6, %19
  %24 = getelementptr inbounds i8, ptr %20, i64 %23
  %25 = ptrtoint ptr %24 to i64
  %26 = sub i64 %6, %25
  %27 = icmp eq ptr %4, %24
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %20, ptr nonnull align 4 %24, i64 %26, i1 false), !noalias !198
  %29 = load ptr, ptr %0, align 8, !tbaa !31
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %29, %28 ], [ %5, %22 ]
  %32 = getelementptr inbounds nuw i8, ptr %20, i64 %26
  store ptr %32, ptr %3, align 8, !tbaa !35
  br label %33

33:                                               ; preds = %30, %16
  %34 = phi ptr [ %31, %30 ], [ %5, %16 ]
  call void @llvm.assume(i1 true) [ "align"(ptr %34, i64 4) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %34, i64 4) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %34, i64 4) ]
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN5Tools9VectorInl5SliceIdEEvRNSt3__16vectorIT_NS2_9allocatorIS4_EEEEy(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = load ptr, ptr %0, align 8, !tbaa !38
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp ult i64 %1, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @__cxa_allocate_exception(i64 16) #27
  invoke void @_ZNSt12out_of_rangeC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull @.str)
          to label %13 unwind label %14

13:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #25
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %12) #27
  resume { ptr, i32 } %15

16:                                               ; preds = %2
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 8) ]
  %17 = shl i64 %1, 3
  %18 = add i64 %17, 8
  %19 = add i64 %18, %7
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %5, i64 8) ]
  %20 = getelementptr inbounds i8, ptr %5, i64 %18
  %21 = icmp eq i64 %19, %6
  br i1 %21, label %33, label %22

22:                                               ; preds = %16
  %23 = sub i64 %6, %19
  %24 = getelementptr inbounds i8, ptr %20, i64 %23
  %25 = ptrtoint ptr %24 to i64
  %26 = sub i64 %6, %25
  %27 = icmp eq ptr %4, %24
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %20, ptr nonnull align 8 %24, i64 %26, i1 false), !noalias !207
  %29 = load ptr, ptr %0, align 8, !tbaa !38
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %29, %28 ], [ %5, %22 ]
  %32 = getelementptr inbounds nuw i8, ptr %20, i64 %26
  store ptr %32, ptr %3, align 8, !tbaa !42
  br label %33

33:                                               ; preds = %30, %16
  %34 = phi ptr [ %31, %30 ], [ %5, %16 ]
  call void @llvm.assume(i1 true) [ "align"(ptr %34, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %34, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %34, i64 8) ]
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z8vec_testv() local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %1 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16
  %2 = alloca %"class.fmt::v12::basic_string_view", align 8
  %3 = alloca %"class.fmt::v12::basic_format_args", align 8
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16
  %5 = alloca %"class.fmt::v12::basic_string_view", align 8
  %6 = alloca %"class.fmt::v12::basic_format_args", align 8
  %7 = alloca %"struct.std::__1::pair.113", align 8
  %8 = alloca %"class.std::__1::vector.13", align 8
  %9 = alloca [14 x %"class.std::__1::basic_string"], align 8
  %10 = alloca %"class.std::__1::unordered_set", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 336, ptr nonnull %9) #27
  store i8 14, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %11, ptr noundef nonnull align 1 dereferenceable(7) @.str.1, i64 7, i1 false)
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %12, align 8, !tbaa !216
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 20, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %14, ptr noundef nonnull align 1 dereferenceable(10) @.str.2, i64 10, i1 false)
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 35
  store i8 0, ptr %15, align 1, !tbaa !216
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i8 16, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 49
  store i64 7507048080188468853, ptr %17, align 1
  %18 = getelementptr inbounds nuw i8, ptr %9, i64 57
  store i8 0, ptr %18, align 1, !tbaa !216
  %19 = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i8 20, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %9, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %20, ptr noundef nonnull align 1 dereferenceable(10) @.str.4, i64 10, i1 false)
  %21 = getelementptr inbounds nuw i8, ptr %9, i64 83
  store i8 0, ptr %21, align 1, !tbaa !216
  %22 = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i8 12, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %9, i64 97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %23, ptr noundef nonnull align 1 dereferenceable(6) @.str.5, i64 6, i1 false)
  %24 = getelementptr inbounds nuw i8, ptr %9, i64 103
  store i8 0, ptr %24, align 1, !tbaa !216
  %25 = getelementptr inbounds nuw i8, ptr %9, i64 120
  store i8 22, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %9, i64 121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %26, ptr noundef nonnull align 1 dereferenceable(11) @.str.6, i64 11, i1 false)
  %27 = getelementptr inbounds nuw i8, ptr %9, i64 132
  store i8 0, ptr %27, align 4, !tbaa !216
  %28 = getelementptr inbounds nuw i8, ptr %9, i64 144
  store i8 16, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %9, i64 145
  store i64 7507048080188468853, ptr %29, align 1
  %30 = getelementptr inbounds nuw i8, ptr %9, i64 153
  store i8 0, ptr %30, align 1, !tbaa !216
  %31 = getelementptr inbounds nuw i8, ptr %9, i64 168
  store i8 22, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %9, i64 169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %32, ptr noundef nonnull align 1 dereferenceable(11) @.str.7, i64 11, i1 false)
  %33 = getelementptr inbounds nuw i8, ptr %9, i64 180
  store i8 0, ptr %33, align 4, !tbaa !216
  %34 = getelementptr inbounds nuw i8, ptr %9, i64 192
  store i8 12, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %9, i64 193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %35, ptr noundef nonnull align 1 dereferenceable(6) @.str.8, i64 6, i1 false)
  %36 = getelementptr inbounds nuw i8, ptr %9, i64 199
  store i8 0, ptr %36, align 1, !tbaa !216
  %37 = getelementptr inbounds nuw i8, ptr %9, i64 216
  store i8 14, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %9, i64 217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %38, ptr noundef nonnull align 1 dereferenceable(7) @.str.9, i64 7, i1 false)
  %39 = getelementptr inbounds nuw i8, ptr %9, i64 224
  store i8 0, ptr %39, align 8, !tbaa !216
  %40 = getelementptr inbounds nuw i8, ptr %9, i64 240
  store i8 22, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %9, i64 241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %41, ptr noundef nonnull align 1 dereferenceable(11) @.str.10, i64 11, i1 false)
  %42 = getelementptr inbounds nuw i8, ptr %9, i64 252
  store i8 0, ptr %42, align 4, !tbaa !216
  %43 = getelementptr inbounds nuw i8, ptr %9, i64 264
  store i8 16, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %9, i64 265
  store i64 7507048080188468853, ptr %44, align 1
  %45 = getelementptr inbounds nuw i8, ptr %9, i64 273
  store i8 0, ptr %45, align 1, !tbaa !216
  %46 = getelementptr inbounds nuw i8, ptr %9, i64 288
  store i8 12, ptr %46, align 8
  %47 = getelementptr inbounds nuw i8, ptr %9, i64 289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %47, ptr noundef nonnull align 1 dereferenceable(6) @.str.5, i64 6, i1 false)
  %48 = getelementptr inbounds nuw i8, ptr %9, i64 295
  store i8 0, ptr %48, align 1, !tbaa !216
  %49 = getelementptr inbounds nuw i8, ptr %9, i64 312
  store i8 16, ptr %49, align 8
  %50 = getelementptr inbounds nuw i8, ptr %9, i64 313
  store i64 7881692365129477993, ptr %50, align 1
  %51 = getelementptr inbounds nuw i8, ptr %9, i64 321
  store i8 0, ptr %51, align 1, !tbaa !216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %52 = getelementptr inbounds nuw i8, ptr %9, i64 336
  invoke void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__init_with_sizeB8ne210107IPKS6_SB_EEvT_T0_y(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %9, ptr noundef nonnull %52, i64 noundef 14)
          to label %53 unwind label %232

53:                                               ; preds = %0
  %54 = getelementptr inbounds nuw i8, ptr %9, i64 312
  %55 = load i8, ptr %54, align 8
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds nuw i8, ptr %9, i64 328
  %60 = load ptr, ptr %59, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %60) #28
  br label %61

61:                                               ; preds = %53, %58
  %62 = getelementptr inbounds nuw i8, ptr %9, i64 288
  %63 = load i8, ptr %62, align 8
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds nuw i8, ptr %9, i64 304
  %68 = load ptr, ptr %67, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %68) #28
  br label %69

69:                                               ; preds = %66, %61
  %70 = getelementptr inbounds nuw i8, ptr %9, i64 264
  %71 = load i8, ptr %70, align 8
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds nuw i8, ptr %9, i64 280
  %76 = load ptr, ptr %75, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %76) #28
  br label %77

77:                                               ; preds = %74, %69
  %78 = getelementptr inbounds nuw i8, ptr %9, i64 240
  %79 = load i8, ptr %78, align 8
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds nuw i8, ptr %9, i64 256
  %84 = load ptr, ptr %83, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %84) #28
  br label %85

85:                                               ; preds = %82, %77
  %86 = getelementptr inbounds nuw i8, ptr %9, i64 216
  %87 = load i8, ptr %86, align 8
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds nuw i8, ptr %9, i64 232
  %92 = load ptr, ptr %91, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %92) #28
  br label %93

93:                                               ; preds = %90, %85
  %94 = getelementptr inbounds nuw i8, ptr %9, i64 192
  %95 = load i8, ptr %94, align 8
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds nuw i8, ptr %9, i64 208
  %100 = load ptr, ptr %99, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %100) #28
  br label %101

101:                                              ; preds = %98, %93
  %102 = getelementptr inbounds nuw i8, ptr %9, i64 168
  %103 = load i8, ptr %102, align 8
  %104 = and i8 %103, 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds nuw i8, ptr %9, i64 184
  %108 = load ptr, ptr %107, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %108) #28
  br label %109

109:                                              ; preds = %106, %101
  %110 = getelementptr inbounds nuw i8, ptr %9, i64 144
  %111 = load i8, ptr %110, align 8
  %112 = and i8 %111, 1
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds nuw i8, ptr %9, i64 160
  %116 = load ptr, ptr %115, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %116) #28
  br label %117

117:                                              ; preds = %114, %109
  %118 = getelementptr inbounds nuw i8, ptr %9, i64 120
  %119 = load i8, ptr %118, align 8
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds nuw i8, ptr %9, i64 136
  %124 = load ptr, ptr %123, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %124) #28
  br label %125

125:                                              ; preds = %122, %117
  %126 = getelementptr inbounds nuw i8, ptr %9, i64 96
  %127 = load i8, ptr %126, align 8
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds nuw i8, ptr %9, i64 112
  %132 = load ptr, ptr %131, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %132) #28
  br label %133

133:                                              ; preds = %130, %125
  %134 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %135 = load i8, ptr %134, align 8
  %136 = and i8 %135, 1
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds nuw i8, ptr %9, i64 88
  %140 = load ptr, ptr %139, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %140) #28
  br label %141

141:                                              ; preds = %138, %133
  %142 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %143 = load i8, ptr %142, align 8
  %144 = and i8 %143, 1
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds nuw i8, ptr %9, i64 64
  %148 = load ptr, ptr %147, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %148) #28
  br label %149

149:                                              ; preds = %146, %141
  %150 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %151 = load i8, ptr %150, align 8
  %152 = and i8 %151, 1
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %156 = load ptr, ptr %155, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %156) #28
  br label %157

157:                                              ; preds = %154, %149
  %158 = load i8, ptr %9, align 8
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %163 = load ptr, ptr %162, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %163) #28
  br label %164

164:                                              ; preds = %161, %157
  call void @llvm.lifetime.end.p0(i64 336, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #27
  %165 = load ptr, ptr %8, align 8, !tbaa !217
  call void @llvm.assume(i1 true) [ "align"(ptr %165, i64 8) ]
  %166 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %167 = load ptr, ptr %166, align 8, !tbaa !221
  call void @llvm.assume(i1 true) [ "align"(ptr %167, i64 8) ]
  %168 = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 32, i1 false)
  store float 1.000000e+00, ptr %168, align 8, !tbaa !222
  %169 = icmp eq ptr %165, %167
  br i1 %169, label %177, label %170

170:                                              ; preds = %164, %172
  %171 = phi ptr [ %173, %172 ], [ %165, %164 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #27
  invoke void @_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JRS6_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::__1::pair.113") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(24) %171, ptr noundef nonnull align 8 dereferenceable(24) %171)
          to label %172 unwind label %175

172:                                              ; preds = %170
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #27
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 24
  %174 = icmp eq ptr %173, %167
  br i1 %174, label %177, label %170, !llvm.loop !235

175:                                              ; preds = %170
  %176 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #27
  br label %347

177:                                              ; preds = %172, %164
  %178 = invoke ptr @__acrt_iob_func(i32 noundef 1)
          to label %179 unwind label %345

179:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  store ptr @.str.12, ptr %5, align 8
  %180 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 9, ptr %180, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  store ptr %8, ptr %4, align 16, !tbaa !216
  %181 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINSt3__16vectorINS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENSB_ISD_EEEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %181, align 8, !tbaa !216
  store i64 15, ptr %6, align 8, !tbaa !236
  %182 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %182, align 8, !tbaa !216
  invoke void @_ZN3fmt3v128vprintlnEP6_iobufNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %178, ptr noundef nonnull %5, ptr noundef nonnull %6)
          to label %183 unwind label %345

183:                                              ; preds = %179
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  invoke void @_ZN5Tools6Vector19RemoveDuplicatesInlINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEvRNS2_6vectorIT_NS6_ISA_EEEEyb(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef 1, i1 noundef zeroext false)
          to label %184 unwind label %345

184:                                              ; preds = %183
  %185 = invoke ptr @__acrt_iob_func(i32 noundef 1)
          to label %186 unwind label %345

186:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  store ptr @.str.13, ptr %2, align 8
  %187 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 10, ptr %187, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #27
  store ptr %8, ptr %1, align 16, !tbaa !216
  %188 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINSt3__16vectorINS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENSB_ISD_EEEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %188, align 8, !tbaa !216
  store i64 15, ptr %3, align 8, !tbaa !236
  %189 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %189, align 8, !tbaa !216
  invoke void @_ZN3fmt3v128vprintlnEP6_iobufNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %185, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %190 unwind label %345

190:                                              ; preds = %186
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  %191 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %192 = load ptr, ptr %191, align 8, !tbaa !238
  %193 = icmp eq ptr %192, null
  br i1 %193, label %206, label %194

194:                                              ; preds = %190, %204
  %195 = phi ptr [ %196, %204 ], [ %192, %190 ]
  %196 = load ptr, ptr %195, align 8, !tbaa !239
  %197 = getelementptr inbounds nuw i8, ptr %195, i64 16
  %198 = load i8, ptr %197, align 8
  %199 = and i8 %198, 1
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %194
  %202 = getelementptr inbounds nuw i8, ptr %195, i64 32
  %203 = load ptr, ptr %202, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %203) #28
  br label %204

204:                                              ; preds = %201, %194
  call void @_ZdlPv(ptr noundef nonnull %195) #28
  %205 = icmp eq ptr %196, null
  br i1 %205, label %206, label %194, !llvm.loop !240

206:                                              ; preds = %204, %190
  %207 = load ptr, ptr %10, align 8, !tbaa !241
  store ptr null, ptr %10, align 8, !tbaa !241
  %208 = icmp eq ptr %207, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %206
  call void @_ZdlPv(ptr noundef nonnull %207) #28
  br label %210

210:                                              ; preds = %206, %209
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #27
  %211 = load ptr, ptr %8, align 8, !tbaa !217
  %212 = icmp eq ptr %211, null
  br i1 %212, label %231, label %213

213:                                              ; preds = %210
  %214 = load ptr, ptr %166, align 8, !tbaa !221
  %215 = icmp eq ptr %211, %214
  br i1 %215, label %229, label %216

216:                                              ; preds = %213, %225
  %217 = phi ptr [ %218, %225 ], [ %214, %213 ]
  %218 = getelementptr inbounds i8, ptr %217, i64 -24
  %219 = load i8, ptr %218, align 8
  %220 = and i8 %219, 1
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %216
  %223 = getelementptr inbounds i8, ptr %217, i64 -8
  %224 = load ptr, ptr %223, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %224) #28
  br label %225

225:                                              ; preds = %222, %216
  %226 = icmp eq ptr %211, %218
  br i1 %226, label %227, label %216

227:                                              ; preds = %225
  %228 = load ptr, ptr %8, align 8, !tbaa !217
  br label %229

229:                                              ; preds = %227, %213
  %230 = phi ptr [ %228, %227 ], [ %211, %213 ]
  store ptr %211, ptr %166, align 8, !tbaa !221
  call void @_ZdlPv(ptr noundef %230) #28
  br label %231

231:                                              ; preds = %210, %229
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #27
  ret void

232:                                              ; preds = %0
  %233 = landingpad { ptr, i32 }
          cleanup
  %234 = getelementptr inbounds nuw i8, ptr %9, i64 312
  %235 = load i8, ptr %234, align 8
  %236 = and i8 %235, 1
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %232
  %239 = getelementptr inbounds nuw i8, ptr %9, i64 328
  %240 = load ptr, ptr %239, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %240) #28
  br label %241

241:                                              ; preds = %232, %238
  %242 = getelementptr inbounds nuw i8, ptr %9, i64 288
  %243 = load i8, ptr %242, align 8
  %244 = and i8 %243, 1
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %241
  %247 = getelementptr inbounds nuw i8, ptr %9, i64 304
  %248 = load ptr, ptr %247, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %248) #28
  br label %249

249:                                              ; preds = %246, %241
  %250 = getelementptr inbounds nuw i8, ptr %9, i64 264
  %251 = load i8, ptr %250, align 8
  %252 = and i8 %251, 1
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %257, label %254

254:                                              ; preds = %249
  %255 = getelementptr inbounds nuw i8, ptr %9, i64 280
  %256 = load ptr, ptr %255, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %256) #28
  br label %257

257:                                              ; preds = %254, %249
  %258 = getelementptr inbounds nuw i8, ptr %9, i64 240
  %259 = load i8, ptr %258, align 8
  %260 = and i8 %259, 1
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %257
  %263 = getelementptr inbounds nuw i8, ptr %9, i64 256
  %264 = load ptr, ptr %263, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %264) #28
  br label %265

265:                                              ; preds = %262, %257
  %266 = getelementptr inbounds nuw i8, ptr %9, i64 216
  %267 = load i8, ptr %266, align 8
  %268 = and i8 %267, 1
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %265
  %271 = getelementptr inbounds nuw i8, ptr %9, i64 232
  %272 = load ptr, ptr %271, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %272) #28
  br label %273

273:                                              ; preds = %270, %265
  %274 = getelementptr inbounds nuw i8, ptr %9, i64 192
  %275 = load i8, ptr %274, align 8
  %276 = and i8 %275, 1
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %273
  %279 = getelementptr inbounds nuw i8, ptr %9, i64 208
  %280 = load ptr, ptr %279, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %280) #28
  br label %281

281:                                              ; preds = %278, %273
  %282 = getelementptr inbounds nuw i8, ptr %9, i64 168
  %283 = load i8, ptr %282, align 8
  %284 = and i8 %283, 1
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %289, label %286

286:                                              ; preds = %281
  %287 = getelementptr inbounds nuw i8, ptr %9, i64 184
  %288 = load ptr, ptr %287, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %288) #28
  br label %289

289:                                              ; preds = %286, %281
  %290 = getelementptr inbounds nuw i8, ptr %9, i64 144
  %291 = load i8, ptr %290, align 8
  %292 = and i8 %291, 1
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %297, label %294

294:                                              ; preds = %289
  %295 = getelementptr inbounds nuw i8, ptr %9, i64 160
  %296 = load ptr, ptr %295, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %296) #28
  br label %297

297:                                              ; preds = %294, %289
  %298 = getelementptr inbounds nuw i8, ptr %9, i64 120
  %299 = load i8, ptr %298, align 8
  %300 = and i8 %299, 1
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %305, label %302

302:                                              ; preds = %297
  %303 = getelementptr inbounds nuw i8, ptr %9, i64 136
  %304 = load ptr, ptr %303, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %304) #28
  br label %305

305:                                              ; preds = %302, %297
  %306 = getelementptr inbounds nuw i8, ptr %9, i64 96
  %307 = load i8, ptr %306, align 8
  %308 = and i8 %307, 1
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %313, label %310

310:                                              ; preds = %305
  %311 = getelementptr inbounds nuw i8, ptr %9, i64 112
  %312 = load ptr, ptr %311, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %312) #28
  br label %313

313:                                              ; preds = %310, %305
  %314 = getelementptr inbounds nuw i8, ptr %9, i64 72
  %315 = load i8, ptr %314, align 8
  %316 = and i8 %315, 1
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %313
  %319 = getelementptr inbounds nuw i8, ptr %9, i64 88
  %320 = load ptr, ptr %319, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %320) #28
  br label %321

321:                                              ; preds = %318, %313
  %322 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %323 = load i8, ptr %322, align 8
  %324 = and i8 %323, 1
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %329, label %326

326:                                              ; preds = %321
  %327 = getelementptr inbounds nuw i8, ptr %9, i64 64
  %328 = load ptr, ptr %327, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %328) #28
  br label %329

329:                                              ; preds = %326, %321
  %330 = getelementptr inbounds nuw i8, ptr %9, i64 24
  %331 = load i8, ptr %330, align 8
  %332 = and i8 %331, 1
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %329
  %335 = getelementptr inbounds nuw i8, ptr %9, i64 40
  %336 = load ptr, ptr %335, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %336) #28
  br label %337

337:                                              ; preds = %334, %329
  %338 = load i8, ptr %9, align 8
  %339 = and i8 %338, 1
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %344, label %341

341:                                              ; preds = %337
  %342 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %343 = load ptr, ptr %342, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %343) #28
  br label %344

344:                                              ; preds = %341, %337
  call void @llvm.lifetime.end.p0(i64 336, ptr nonnull %9) #27
  br label %349

345:                                              ; preds = %186, %184, %179, %177, %183
  %346 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__113unordered_setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2B8ne210107Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #27
  br label %347

347:                                              ; preds = %175, %345
  %348 = phi { ptr, i32 } [ %346, %345 ], [ %176, %175 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #27
  call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne210107Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #27
  br label %349

349:                                              ; preds = %347, %344
  %350 = phi { ptr, i32 } [ %348, %347 ], [ %233, %344 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #27
  resume { ptr, i32 } %350
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Tools6Vector19RemoveDuplicatesInlINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEvRNS2_6vectorIT_NS6_ISA_EEEEyb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %4 = alloca %"struct.std::__1::pair.158", align 8
  %5 = alloca %"class.std::__1::tuple", align 8
  %6 = alloca %"class.std::__1::tuple.161", align 1
  %7 = alloca %"struct.std::__1::__equal_to", align 1
  %8 = alloca %"struct.std::__1::pair.140", align 8
  %9 = alloca %"class.std::__1::unordered_map", align 8
  %10 = alloca %"class.std::__1::vector.13", align 16
  br i1 %2, label %11, label %65

11:                                               ; preds = %3
  %12 = load ptr, ptr %0, align 8, !tbaa !217
  call void @llvm.assume(i1 true) [ "align"(ptr %12, i64 8) ]
  %13 = ptrtoint ptr %12 to i64
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %15 = load ptr, ptr %14, align 8, !tbaa !221
  call void @llvm.assume(i1 true) [ "align"(ptr %15, i64 8) ]
  %16 = ptrtoint ptr %15 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #27
  call void @_ZNSt3__18__uniqueB8ne210107INS_17_ClassicAlgPolicyENS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEESA_RNS_10__equal_toEEENS_4pairIT0_SE_EESE_T1_OT2_(ptr dead_on_unwind nonnull writable sret(%"struct.std::__1::pair.140") align 8 %8, i64 %13, i64 %16, ptr noundef nonnull align 1 dereferenceable(1) %7)
  %17 = load ptr, ptr %8, align 8, !tbaa !242
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #27
  %18 = ptrtoint ptr %17 to i64
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  %19 = load ptr, ptr %14, align 8, !tbaa !221
  call void @llvm.assume(i1 true) [ "align"(ptr %19, i64 8) ]
  %20 = load ptr, ptr %0, align 8, !tbaa !217
  call void @llvm.assume(i1 true) [ "align"(ptr %20, i64 8) ]
  %21 = ptrtoint ptr %20 to i64
  %22 = sub i64 %18, %21
  %23 = getelementptr inbounds i8, ptr %20, i64 %22
  %24 = icmp eq ptr %17, %19
  br i1 %24, label %205, label %25

25:                                               ; preds = %11
  %26 = ptrtoint ptr %19 to i64
  %27 = sub i64 %26, %18
  %28 = getelementptr inbounds i8, ptr %23, i64 %27
  %29 = icmp eq ptr %28, %19
  br i1 %29, label %46, label %30

30:                                               ; preds = %25, %39
  %31 = phi ptr [ %42, %39 ], [ %23, %25 ]
  %32 = phi ptr [ %41, %39 ], [ %28, %25 ]
  %33 = load i8, ptr %31, align 8, !noalias !243
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds nuw i8, ptr %31, i64 16
  %38 = load ptr, ptr %37, align 8, !tbaa !216, !noalias !243
  call void @_ZdlPv(ptr noundef %38) #28, !noalias !243
  br label %39

39:                                               ; preds = %36, %30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %32, i64 24, i1 false), !tbaa.struct !250, !noalias !243
  store i8 0, ptr %32, align 8, !noalias !243
  %40 = getelementptr inbounds nuw i8, ptr %32, i64 1
  store i8 0, ptr %40, align 1, !tbaa !216, !noalias !243
  %41 = getelementptr inbounds nuw i8, ptr %32, i64 24
  %42 = getelementptr inbounds nuw i8, ptr %31, i64 24
  %43 = icmp eq ptr %41, %19
  br i1 %43, label %44, label %30, !llvm.loop !251

44:                                               ; preds = %39
  %45 = load ptr, ptr %14, align 8, !tbaa !221
  br label %46

46:                                               ; preds = %44, %25
  %47 = phi ptr [ %19, %25 ], [ %45, %44 ]
  %48 = phi ptr [ %23, %25 ], [ %42, %44 ]
  %49 = ptrtoint ptr %48 to i64
  %50 = sub i64 %49, %18
  %51 = getelementptr inbounds i8, ptr %23, i64 %50
  %52 = icmp eq ptr %48, %47
  br i1 %52, label %64, label %53

53:                                               ; preds = %46, %62
  %54 = phi ptr [ %55, %62 ], [ %47, %46 ]
  %55 = getelementptr inbounds i8, ptr %54, i64 -24
  %56 = load i8, ptr %55, align 8
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds i8, ptr %54, i64 -8
  %61 = load ptr, ptr %60, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %61) #28
  br label %62

62:                                               ; preds = %59, %53
  %63 = icmp eq ptr %48, %55
  br i1 %63, label %64, label %53

64:                                               ; preds = %62, %46
  store ptr %51, ptr %14, align 8, !tbaa !221
  br label %205

65:                                               ; preds = %3
  %66 = icmp eq i64 %1, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %65
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %69 = load ptr, ptr %68, align 8, !tbaa !221
  %70 = load ptr, ptr %0, align 8, !tbaa !217
  %71 = icmp eq ptr %70, %69
  br i1 %71, label %83, label %72

72:                                               ; preds = %67, %81
  %73 = phi ptr [ %74, %81 ], [ %69, %67 ]
  %74 = getelementptr inbounds i8, ptr %73, i64 -24
  %75 = load i8, ptr %74, align 8
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds i8, ptr %73, i64 -8
  %80 = load ptr, ptr %79, align 8, !tbaa !216
  tail call void @_ZdlPv(ptr noundef %80) #28
  br label %81

81:                                               ; preds = %78, %72
  %82 = icmp eq ptr %70, %74
  br i1 %82, label %83, label %72

83:                                               ; preds = %81, %67
  store ptr %70, ptr %68, align 8, !tbaa !221
  br label %205

84:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #27
  %85 = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i64 32, i1 false)
  store float 1.000000e+00, ptr %85, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %86 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %87 = load ptr, ptr %86, align 8, !tbaa !221
  %88 = load ptr, ptr %0, align 8, !tbaa !217
  %89 = ptrtoint ptr %87 to i64
  %90 = ptrtoint ptr %88 to i64
  %91 = sub i64 %89, %90
  %92 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %93 = icmp eq ptr %87, %88
  br i1 %93, label %113, label %94

94:                                               ; preds = %84
  %95 = sdiv exact i64 %91, 24
  %96 = icmp ugt i64 %95, 768614336404564650
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  invoke void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne210107Ev() #25
          to label %98 unwind label %166

98:                                               ; preds = %97
  unreachable

99:                                               ; preds = %94
  %100 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %91) #26
          to label %101 unwind label %166

101:                                              ; preds = %99
  %102 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %103 = getelementptr inbounds nuw i8, ptr %100, i64 %91
  %104 = load ptr, ptr %102, align 8, !tbaa !221
  %105 = load ptr, ptr %10, align 16, !tbaa !217
  %106 = ptrtoint ptr %104 to i64
  %107 = ptrtoint ptr %105 to i64
  %108 = sub i64 %106, %107
  %109 = sdiv exact i64 %108, -24
  %110 = getelementptr inbounds %"class.std::__1::basic_string", ptr %100, i64 %109
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %110, ptr align 8 %105, i64 %108, i1 false)
  store ptr %110, ptr %10, align 16, !tbaa !242
  store ptr %100, ptr %102, align 8, !tbaa !242
  store ptr %103, ptr %92, align 16, !tbaa !242
  %111 = icmp eq ptr %105, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %101
  tail call void @_ZdlPv(ptr noundef nonnull %105) #28
  br label %113

113:                                              ; preds = %112, %101, %84
  %114 = load ptr, ptr %0, align 8, !tbaa !217
  call void @llvm.assume(i1 true) [ "align"(ptr %114, i64 8) ]
  %115 = load ptr, ptr %86, align 8, !tbaa !221
  call void @llvm.assume(i1 true) [ "align"(ptr %115, i64 8) ]
  %116 = icmp eq ptr %114, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %168

119:                                              ; preds = %200
  %120 = load ptr, ptr %0, align 8, !tbaa !217
  br label %121

121:                                              ; preds = %119, %113
  %122 = phi ptr [ %120, %119 ], [ %114, %113 ]
  %123 = icmp eq ptr %122, null
  br i1 %123, label %142, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %86, align 8, !tbaa !221
  %126 = icmp eq ptr %122, %125
  br i1 %126, label %140, label %127

127:                                              ; preds = %124, %136
  %128 = phi ptr [ %129, %136 ], [ %125, %124 ]
  %129 = getelementptr inbounds i8, ptr %128, i64 -24
  %130 = load i8, ptr %129, align 8
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %127
  %134 = getelementptr inbounds i8, ptr %128, i64 -8
  %135 = load ptr, ptr %134, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %135) #28
  br label %136

136:                                              ; preds = %133, %127
  %137 = icmp eq ptr %122, %129
  br i1 %137, label %138, label %127

138:                                              ; preds = %136
  %139 = load ptr, ptr %0, align 8, !tbaa !217
  br label %140

140:                                              ; preds = %138, %124
  %141 = phi ptr [ %139, %138 ], [ %122, %124 ]
  store ptr %122, ptr %86, align 8, !tbaa !221
  call void @_ZdlPv(ptr noundef %141) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %142

142:                                              ; preds = %121, %140
  %143 = load <2 x ptr>, ptr %10, align 16, !tbaa !242
  store <2 x ptr> %143, ptr %0, align 8, !tbaa !242
  %144 = load ptr, ptr %92, align 16, !tbaa !264
  %145 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %144, ptr %145, align 8, !tbaa !264
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #27
  %146 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %147 = load ptr, ptr %146, align 8, !tbaa !265
  %148 = icmp eq ptr %147, null
  br i1 %148, label %161, label %149

149:                                              ; preds = %142, %159
  %150 = phi ptr [ %151, %159 ], [ %147, %142 ]
  %151 = load ptr, ptr %150, align 8, !tbaa !266
  %152 = getelementptr inbounds nuw i8, ptr %150, i64 16
  %153 = load i8, ptr %152, align 8
  %154 = and i8 %153, 1
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %149
  %157 = getelementptr inbounds nuw i8, ptr %150, i64 32
  %158 = load ptr, ptr %157, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %158) #28
  br label %159

159:                                              ; preds = %156, %149
  call void @_ZdlPv(ptr noundef nonnull %150) #28
  %160 = icmp eq ptr %151, null
  br i1 %160, label %161, label %149, !llvm.loop !267

161:                                              ; preds = %159, %142
  %162 = load ptr, ptr %9, align 8, !tbaa !268
  store ptr null, ptr %9, align 8, !tbaa !268
  %163 = icmp eq ptr %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  call void @_ZdlPv(ptr noundef nonnull %162) #28
  br label %165

165:                                              ; preds = %161, %164
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #27
  br label %205

166:                                              ; preds = %99, %97
  %167 = landingpad { ptr, i32 }
          cleanup
  br label %203

168:                                              ; preds = %117, %200
  %169 = phi ptr [ %114, %117 ], [ %201, %200 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  store ptr %169, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #27
  invoke void @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::__1::pair.158") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(24) %169, ptr noundef nonnull align 1 dereferenceable(1) @_ZNSt3__119piecewise_constructE, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %170 unwind label %198

170:                                              ; preds = %168
  %171 = load ptr, ptr %4, align 8, !tbaa !269
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 40
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  %173 = load i64, ptr %172, align 8, !tbaa !27
  %174 = icmp ult i64 %173, %1
  br i1 %174, label %175, label %200

175:                                              ; preds = %170
  %176 = add nuw i64 %173, 1
  store i64 %176, ptr %172, align 8, !tbaa !27
  %177 = load ptr, ptr %118, align 8, !tbaa !221
  %178 = load ptr, ptr %92, align 16, !tbaa !264
  %179 = icmp ult ptr %177, %178
  br i1 %179, label %180, label %194

180:                                              ; preds = %175
  %181 = load i8, ptr %169, align 8
  %182 = and i8 %181, 1
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %177, ptr noundef nonnull align 8 dereferenceable(24) %169, i64 24, i1 false), !tbaa.struct !250
  br label %192

185:                                              ; preds = %180
  %186 = getelementptr inbounds nuw i8, ptr %169, i64 16
  %187 = load ptr, ptr %186, align 8, !tbaa !216
  %188 = getelementptr inbounds nuw i8, ptr %169, i64 8
  %189 = load i64, ptr %188, align 8, !tbaa !216
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %177, ptr noundef %187, i64 noundef %189)
          to label %192 unwind label %190

190:                                              ; preds = %185
  %191 = landingpad { ptr, i32 }
          cleanup
  store ptr %177, ptr %118, align 8, !tbaa !221
  br label %203

192:                                              ; preds = %185, %184
  %193 = getelementptr inbounds nuw i8, ptr %177, i64 24
  br label %196

194:                                              ; preds = %175
  %195 = invoke noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__emplace_back_slow_pathIJRKS6_EEEPS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %169)
          to label %196 unwind label %198

196:                                              ; preds = %194, %192
  %197 = phi ptr [ %193, %192 ], [ %195, %194 ]
  store ptr %197, ptr %118, align 8, !tbaa !221
  br label %200

198:                                              ; preds = %194, %168
  %199 = landingpad { ptr, i32 }
          cleanup
  br label %203

200:                                              ; preds = %196, %170
  %201 = getelementptr inbounds nuw i8, ptr %169, i64 24
  %202 = icmp eq ptr %201, %115
  br i1 %202, label %119, label %168

203:                                              ; preds = %198, %190, %166
  %204 = phi { ptr, i32 } [ %167, %166 ], [ %199, %198 ], [ %191, %190 ]
  call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne210107Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #27
  call void @_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyNS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_yEEEEED2B8ne210107Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #27
  resume { ptr, i32 } %204

205:                                              ; preds = %64, %11, %165, %83
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__113unordered_setINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2B8ne210107Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !238
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1, %15
  %6 = phi ptr [ %7, %15 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !239
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !216
  tail call void @_ZdlPv(ptr noundef %14) #28
  br label %15

15:                                               ; preds = %12, %5
  tail call void @_ZdlPv(ptr noundef nonnull %6) #28
  %16 = icmp eq ptr %7, null
  br i1 %16, label %17, label %5, !llvm.loop !240

17:                                               ; preds = %15, %1
  %18 = load ptr, ptr %0, align 8, !tbaa !241
  store ptr null, ptr %0, align 8, !tbaa !241
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef nonnull %18) #28
  br label %21

21:                                               ; preds = %17, %20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne210107Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !217
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !221
  %7 = icmp eq ptr %2, %6
  br i1 %7, label %21, label %8

8:                                                ; preds = %4, %17
  %9 = phi ptr [ %10, %17 ], [ %6, %4 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 -24
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %9, i64 -8
  %16 = load ptr, ptr %15, align 8, !tbaa !216
  tail call void @_ZdlPv(ptr noundef %16) #28
  br label %17

17:                                               ; preds = %14, %8
  %18 = icmp eq ptr %2, %10
  br i1 %18, label %19, label %8

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 8, !tbaa !217
  br label %21

21:                                               ; preds = %19, %4
  %22 = phi ptr [ %20, %19 ], [ %2, %4 ]
  store ptr %2, ptr %5, align 8, !tbaa !221
  tail call void @_ZdlPv(ptr noundef %22) #28
  br label %23

23:                                               ; preds = %1, %21
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z9ivec_testv() local_unnamed_addr #2 personality ptr @__gxx_personality_seh0 {
  %1 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16
  %2 = alloca %"class.fmt::v12::basic_string_view", align 8
  %3 = alloca %"class.fmt::v12::basic_format_args", align 8
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16
  %5 = alloca %"class.fmt::v12::basic_string_view", align 8
  %6 = alloca %"class.fmt::v12::basic_format_args", align 8
  %7 = alloca %"class.Tools::ivec", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #27
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 12, ptr %9, align 8, !tbaa !271
  %10 = tail call noalias noundef nonnull dereferenceable(288) ptr @_Znay(i64 noundef 288) #29
  store ptr %10, ptr %7, align 8, !tbaa !273
  store i8 18, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %11, ptr noundef nonnull align 1 dereferenceable(7) @.str.14, i64 7, i1 false), !tbaa.struct !274
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 26670, ptr %12, align 8
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i8 18, ptr %13, align 8
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %14, ptr noundef nonnull align 1 dereferenceable(7) @.str.15, i64 7, i1 false), !tbaa.struct !274
  %15 = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 26670, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i8 18, ptr %16, align 8
  %17 = getelementptr inbounds nuw i8, ptr %10, i64 49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %17, ptr noundef nonnull align 1 dereferenceable(7) @.str.14, i64 7, i1 false), !tbaa.struct !274
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 56
  store i64 26670, ptr %18, align 8
  %19 = getelementptr inbounds nuw i8, ptr %10, i64 72
  store i8 18, ptr %19, align 8
  %20 = getelementptr inbounds nuw i8, ptr %10, i64 73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %20, ptr noundef nonnull align 1 dereferenceable(7) @.str.15, i64 7, i1 false), !tbaa.struct !274
  %21 = getelementptr inbounds nuw i8, ptr %10, i64 80
  store i64 26670, ptr %21, align 8
  %22 = getelementptr inbounds nuw i8, ptr %10, i64 96
  store i8 14, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %10, i64 97
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %23, ptr noundef nonnull align 1 dereferenceable(7) @.str.16, i64 7, i1 false), !tbaa.struct !274
  %24 = getelementptr inbounds nuw i8, ptr %10, i64 104
  store i64 0, ptr %24, align 8
  %25 = getelementptr inbounds nuw i8, ptr %10, i64 120
  store i8 20, ptr %25, align 8
  %26 = getelementptr inbounds nuw i8, ptr %10, i64 121
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %26, ptr noundef nonnull align 1 dereferenceable(7) @.str.17, i64 7, i1 false), !tbaa.struct !274
  %27 = getelementptr inbounds nuw i8, ptr %10, i64 128
  store i64 6827628, ptr %27, align 8
  %28 = getelementptr inbounds nuw i8, ptr %10, i64 144
  store i8 18, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %10, i64 145
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %29, ptr noundef nonnull align 1 dereferenceable(7) @.str.14, i64 7, i1 false), !tbaa.struct !274
  %30 = getelementptr inbounds nuw i8, ptr %10, i64 152
  store i64 26670, ptr %30, align 8
  %31 = getelementptr inbounds nuw i8, ptr %10, i64 168
  store i8 18, ptr %31, align 8
  %32 = getelementptr inbounds nuw i8, ptr %10, i64 169
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %32, ptr noundef nonnull align 1 dereferenceable(7) @.str.15, i64 7, i1 false), !tbaa.struct !274
  %33 = getelementptr inbounds nuw i8, ptr %10, i64 176
  store i64 26670, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %10, i64 192
  store i8 14, ptr %34, align 8
  %35 = getelementptr inbounds nuw i8, ptr %10, i64 193
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %35, ptr noundef nonnull align 1 dereferenceable(7) @.str.16, i64 7, i1 false), !tbaa.struct !274
  %36 = getelementptr inbounds nuw i8, ptr %10, i64 200
  store i64 0, ptr %36, align 8
  %37 = getelementptr inbounds nuw i8, ptr %10, i64 216
  store i8 20, ptr %37, align 8
  %38 = getelementptr inbounds nuw i8, ptr %10, i64 217
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %38, ptr noundef nonnull align 1 dereferenceable(7) @.str.17, i64 7, i1 false), !tbaa.struct !274
  %39 = getelementptr inbounds nuw i8, ptr %10, i64 224
  store i64 6827628, ptr %39, align 8
  %40 = getelementptr inbounds nuw i8, ptr %10, i64 240
  store i8 16, ptr %40, align 8
  %41 = getelementptr inbounds nuw i8, ptr %10, i64 241
  store i64 7881692365129477993, ptr %41, align 1
  %42 = getelementptr inbounds nuw i8, ptr %10, i64 249
  store i8 0, ptr %42, align 1
  %43 = getelementptr inbounds nuw i8, ptr %10, i64 264
  store i8 12, ptr %43, align 8
  %44 = getelementptr inbounds nuw i8, ptr %10, i64 265
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %44, ptr noundef nonnull align 1 dereferenceable(6) @.str.18, i64 6, i1 false), !tbaa.struct !274
  %45 = getelementptr inbounds nuw i8, ptr %10, i64 271
  store i8 0, ptr %45, align 1
  store i64 12, ptr %8, align 8, !tbaa !275
  %46 = invoke ptr @__acrt_iob_func(i32 noundef 1)
          to label %47 unwind label %79

47:                                               ; preds = %0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  store ptr @.str.12, ptr %5, align 8
  %48 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 9, ptr %48, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  store ptr %7, ptr %4, align 16, !tbaa !216
  %49 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5Tools4ivecINSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %49, align 8, !tbaa !216
  store i64 15, ptr %6, align 8, !tbaa !236
  %50 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %50, align 8, !tbaa !216
  invoke void @_ZN3fmt3v128vprintlnEP6_iobufNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %46, ptr noundef nonnull %5, ptr noundef nonnull %6)
          to label %51 unwind label %79

51:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  invoke void @_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE10uniquesInlEy(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 1)
          to label %52 unwind label %79

52:                                               ; preds = %51
  %53 = invoke ptr @__acrt_iob_func(i32 noundef 1)
          to label %54 unwind label %79

54:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  store ptr @.str.12, ptr %2, align 8
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 9, ptr %55, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #27
  store ptr %7, ptr %1, align 16, !tbaa !216
  %56 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5Tools4ivecINSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %56, align 8, !tbaa !216
  store i64 15, ptr %3, align 8, !tbaa !236
  %57 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %57, align 8, !tbaa !216
  invoke void @_ZN3fmt3v128vprintlnEP6_iobufNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %53, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %58 unwind label %79

58:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  %59 = load i64, ptr %8, align 8, !tbaa !275
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %58, %73
  %62 = phi i64 [ %74, %73 ], [ %59, %58 ]
  %63 = phi i64 [ %75, %73 ], [ 0, %58 ]
  %64 = load ptr, ptr %7, align 8, !tbaa !273
  %65 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %64, i64 %63
  %66 = load i8, ptr %65, align 8
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds nuw i8, ptr %65, i64 16
  %71 = load ptr, ptr %70, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %71) #28
  %72 = load i64, ptr %8, align 8, !tbaa !275
  br label %73

73:                                               ; preds = %69, %61
  %74 = phi i64 [ %62, %61 ], [ %72, %69 ]
  %75 = add nuw i64 %63, 1
  %76 = icmp ult i64 %75, %74
  br i1 %76, label %61, label %77, !llvm.loop !276

77:                                               ; preds = %73, %58
  %78 = load ptr, ptr %7, align 8, !tbaa !273
  call void @_ZdaPv(ptr noundef %78) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #27
  ret void

79:                                               ; preds = %54, %52, %47, %0, %51
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #27
  resume { ptr, i32 } %80
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEE10uniquesInlEy(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.std::__1::pair.158", align 8
  %4 = alloca %"class.std::__1::tuple", align 8
  %5 = alloca %"class.std::__1::tuple.161", align 1
  %6 = alloca %"class.std::__1::unordered_map", align 8
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %78, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !275
  %11 = icmp ult i64 %10, 2
  br i1 %11, label %78, label %12

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #27
  %13 = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 32, i1 false)
  store float 1.000000e+00, ptr %13, align 8, !tbaa !252
  br label %35

14:                                               ; preds = %73
  %15 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %16 = load ptr, ptr %15, align 8, !tbaa !265
  store i64 %74, ptr %9, align 8, !tbaa !275
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %14, %28
  %19 = phi ptr [ %20, %28 ], [ %16, %14 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !266
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %22 = load i8, ptr %21, align 8
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds nuw i8, ptr %19, i64 32
  %27 = load ptr, ptr %26, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %27) #28
  br label %28

28:                                               ; preds = %25, %18
  call void @_ZdlPv(ptr noundef nonnull %19) #28
  %29 = icmp eq ptr %20, null
  br i1 %29, label %30, label %18, !llvm.loop !267

30:                                               ; preds = %28, %14
  %31 = load ptr, ptr %6, align 8, !tbaa !268
  store ptr null, ptr %6, align 8, !tbaa !268
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  call void @_ZdlPv(ptr noundef nonnull %31) #28
  br label %34

34:                                               ; preds = %30, %33
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #27
  br label %78

35:                                               ; preds = %12, %73
  %36 = phi i64 [ %74, %73 ], [ 0, %12 ]
  %37 = phi i64 [ %75, %73 ], [ 0, %12 ]
  %38 = load ptr, ptr %0, align 8, !tbaa !273
  %39 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %38, i64 %37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  store ptr %39, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #27
  invoke void @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::__1::pair.158") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 1 dereferenceable(1) @_ZNSt3__119piecewise_constructE, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %40 unwind label %58

40:                                               ; preds = %35
  %41 = load ptr, ptr %3, align 8, !tbaa !269
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 40
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  %43 = load i64, ptr %42, align 8, !tbaa !27
  %44 = icmp ult i64 %43, %1
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  %46 = icmp eq i64 %36, %37
  br i1 %46, label %60, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %0, align 8, !tbaa !273
  %49 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %48, i64 %36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull align 8 dereferenceable(24) %39, i64 24, i1 false), !tbaa.struct !250
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  %50 = load ptr, ptr %0, align 8, !tbaa !273
  %51 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %50, i64 %37
  %52 = load i8, ptr %51, align 8
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds nuw i8, ptr %51, i64 16
  %57 = load ptr, ptr %56, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %57) #28
  br label %60

58:                                               ; preds = %35
  %59 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyNS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_yEEEEED2B8ne210107Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #27
  resume { ptr, i32 } %59

60:                                               ; preds = %55, %47, %45
  %61 = add i64 %36, 1
  %62 = load i64, ptr %42, align 8, !tbaa !27
  %63 = add i64 %62, 1
  store i64 %63, ptr %42, align 8, !tbaa !27
  br label %73

64:                                               ; preds = %40
  %65 = load ptr, ptr %0, align 8, !tbaa !273
  %66 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %65, i64 %37
  %67 = load i8, ptr %66, align 8
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds nuw i8, ptr %66, i64 16
  %72 = load ptr, ptr %71, align 8, !tbaa !216
  call void @_ZdlPv(ptr noundef %72) #28
  br label %73

73:                                               ; preds = %70, %64, %60
  %74 = phi i64 [ %61, %60 ], [ %36, %64 ], [ %36, %70 ]
  %75 = add nuw i64 %37, 1
  %76 = load i64, ptr %9, align 8, !tbaa !275
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %35, label %14, !llvm.loop !277

78:                                               ; preds = %2, %8, %34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i64, ptr %2, align 8, !tbaa !275
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %19, %1
  %6 = load ptr, ptr %0, align 8, !tbaa !273
  tail call void @_ZdaPv(ptr noundef %6) #27
  ret void

7:                                                ; preds = %1, %19
  %8 = phi i64 [ %20, %19 ], [ %3, %1 ]
  %9 = phi i64 [ %21, %19 ], [ 0, %1 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !273
  %11 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %10, i64 %9
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %17 = load ptr, ptr %16, align 8, !tbaa !216
  tail call void @_ZdlPv(ptr noundef %17) #28
  %18 = load i64, ptr %2, align 8, !tbaa !275
  br label %19

19:                                               ; preds = %7, %15
  %20 = phi i64 [ %8, %7 ], [ %18, %15 ]
  %21 = add nuw i64 %9, 1
  %22 = icmp ult i64 %21, %20
  br i1 %22, label %7, label %5, !llvm.loop !276
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #5 {
  tail call void @_Z8vec_testv()
  tail call void @_Z9ivec_testv()
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ne210107Ev() local_unnamed_addr #8 comdat align 2 {
  tail call void @_ZNSt3__120__throw_length_errorB8ne210107EPKc(ptr noundef nonnull @.str.19) #25
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #27
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare dso_local ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare dso_local void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__120__throw_length_errorB8ne210107EPKc(ptr noundef %0) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_seh0 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #27
  invoke void @_ZNSt12length_errorC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #25
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %2) #27
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12length_errorC2B8ne210107EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !92
  ret void
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare dso_local void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #12

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZSt28__throw_bad_array_new_lengthB8ne210107v() local_unnamed_addr #11 comdat {
  %1 = tail call ptr @__cxa_allocate_exception(i64 8) #27
  tail call void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #27
  tail call void @__cxa_throw(ptr nonnull %1, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #25
  unreachable
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare dso_local void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @_Znwy(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(ptr noundef) local_unnamed_addr #14

declare dso_local void @_ZNSt3__16__sortIRNS_6__lessIiiEEPiEEvT0_S5_T_(ptr noundef, ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #12

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__16vectorIxNS_9allocatorIxEEE20__throw_length_errorB8ne210107Ev() local_unnamed_addr #8 comdat align 2 {
  tail call void @_ZNSt3__120__throw_length_errorB8ne210107EPKc(ptr noundef nonnull @.str.19) #25
  unreachable
}

declare dso_local void @_ZNSt3__16__sortIRNS_6__lessIxxEEPxEEvT0_S5_T_(ptr noundef, ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #12

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne210107Ev() local_unnamed_addr #8 comdat align 2 {
  tail call void @_ZNSt3__120__throw_length_errorB8ne210107EPKc(ptr noundef nonnull @.str.19) #25
  unreachable
}

declare dso_local void @_ZNSt3__16__sortIRNS_6__lessIffEEPfEEvT0_S5_T_(ptr noundef, ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #12

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne210107Ev() local_unnamed_addr #8 comdat align 2 {
  tail call void @_ZNSt3__120__throw_length_errorB8ne210107EPKc(ptr noundef nonnull @.str.19) #25
  unreachable
}

declare dso_local void @_ZNSt3__16__sortIRNS_6__lessIddEEPdEEvT0_S5_T_(ptr noundef, ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #12

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne210107Ev() local_unnamed_addr #8 comdat align 2 {
  tail call void @_ZNSt3__120__throw_length_errorB8ne210107EPKc(ptr noundef nonnull @.str.20) #25
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__init_with_sizeB8ne210107IPKS6_SB_EEvT_T0_y(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::__1::__exception_guard_exceptions.93", align 8
  %8 = alloca %"struct.std::__1::__exception_guard_exceptions.89", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #27
  store ptr %0, ptr %8, align 8, !tbaa !278, !alias.scope !280
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 0, ptr %9, align 8, !tbaa !283, !alias.scope !280
  %10 = icmp eq i64 %3, 0
  br i1 %10, label %57, label %11

11:                                               ; preds = %4
  %12 = icmp ugt i64 %3, 768614336404564650
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  invoke void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne210107Ev() #25
          to label %14 unwind label %53

14:                                               ; preds = %13
  unreachable

15:                                               ; preds = %11
  %16 = mul nuw i64 %3, 24
  %17 = invoke noalias noundef nonnull ptr @_Znwy(i64 noundef %16) #26
          to label %18 unwind label %53

18:                                               ; preds = %15
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %17, ptr %0, align 8, !tbaa !217
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %17, ptr %20, align 8, !tbaa !221
  %21 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %17, i64 %3
  store ptr %21, ptr %19, align 8, !tbaa !264
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %17, ptr %5, align 8, !tbaa !242
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  store ptr %17, ptr %6, align 8, !tbaa !242
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #27
  store ptr %19, ptr %7, align 8
  %22 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %6, ptr %22, align 8
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %5, ptr %23, align 8
  %24 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 0, ptr %24, align 8, !tbaa !287, !alias.scope !292
  %25 = icmp eq ptr %1, %2
  br i1 %25, label %47, label %26

26:                                               ; preds = %18, %40
  %27 = phi ptr [ %43, %40 ], [ %17, %18 ]
  %28 = phi ptr [ %42, %40 ], [ %1, %18 ]
  %29 = load i8, ptr %28, align 8
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %28, i64 24, i1 false), !tbaa.struct !250
  br label %40

33:                                               ; preds = %26
  %34 = getelementptr inbounds nuw i8, ptr %28, i64 16
  %35 = load ptr, ptr %34, align 8, !tbaa !216
  %36 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %37 = load i64, ptr %36, align 8, !tbaa !216
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef %35, i64 noundef %37)
          to label %38 unwind label %45

38:                                               ; preds = %33
  %39 = load ptr, ptr %5, align 8, !tbaa !242
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi ptr [ %39, %38 ], [ %27, %32 ]
  %42 = getelementptr inbounds nuw i8, ptr %28, i64 24
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 24
  store ptr %43, ptr %5, align 8, !tbaa !242
  %44 = icmp eq ptr %42, %2
  br i1 %44, label %47, label %26, !llvm.loop !295

45:                                               ; preds = %33
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne210107Ev(ptr noundef nonnull align 8 dereferenceable(25) %7) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  store ptr %17, ptr %20, align 8, !tbaa !221
  br label %55

47:                                               ; preds = %40, %18
  %48 = phi ptr [ %17, %18 ], [ %43, %40 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  %49 = ptrtoint ptr %48 to i64
  %50 = ptrtoint ptr %17 to i64
  %51 = sub i64 %49, %50
  %52 = getelementptr inbounds i8, ptr %17, i64 %51
  store ptr %52, ptr %20, align 8, !tbaa !221
  br label %57

53:                                               ; preds = %15, %13
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %55

55:                                               ; preds = %45, %53
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %46, %45 ]
  call void @_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne210107Ev(ptr noundef nonnull align 8 dereferenceable(9) %8) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #27
  resume { ptr, i32 } %56

57:                                               ; preds = %47, %4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEED2B8ne210107Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i8, ptr %2, align 8, !tbaa !283, !range !296, !noundef !297
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !298, !nonnull !297, !align !299
  %7 = load ptr, ptr %6, align 8, !tbaa !217
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !221
  %12 = icmp eq ptr %7, %11
  br i1 %12, label %27, label %13

13:                                               ; preds = %9, %22
  %14 = phi ptr [ %15, %22 ], [ %11, %9 ]
  %15 = getelementptr inbounds i8, ptr %14, i64 -24
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8, ptr %14, i64 -8
  %21 = load ptr, ptr %20, align 8, !tbaa !216
  tail call void @_ZdlPv(ptr noundef %21) #28
  br label %22

22:                                               ; preds = %19, %13
  %23 = icmp eq ptr %7, %15
  br i1 %23, label %24, label %13

24:                                               ; preds = %22
  %25 = load ptr, ptr %0, align 8, !tbaa !298
  %26 = load ptr, ptr %25, align 8, !tbaa !217
  br label %27

27:                                               ; preds = %24, %9
  %28 = phi ptr [ %26, %24 ], [ %7, %9 ]
  store ptr %7, ptr %10, align 8, !tbaa !221
  tail call void @_ZdlPv(ptr noundef %28) #28
  br label %29

29:                                               ; preds = %27, %5, %1
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne210107Ev() local_unnamed_addr #8 comdat align 2 {
  tail call void @_ZNSt3__120__throw_length_errorB8ne210107EPKc(ptr noundef nonnull @.str.19) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEED2B8ne210107Ev(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %3 = load i8, ptr %2, align 8, !tbaa !287, !range !296, !noundef !297
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !300, !nonnull !297, !align !299
  %8 = load ptr, ptr %7, align 8, !tbaa !242
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !301, !nonnull !297, !align !299
  %11 = load ptr, ptr %10, align 8, !tbaa !242
  %12 = icmp eq ptr %8, %11
  br i1 %12, label %24, label %13

13:                                               ; preds = %5, %22
  %14 = phi ptr [ %15, %22 ], [ %8, %5 ]
  %15 = getelementptr inbounds i8, ptr %14, i64 -24
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8, ptr %14, i64 -8
  %21 = load ptr, ptr %20, align 8, !tbaa !216
  tail call void @_ZdlPv(ptr noundef %21) #28
  br label %22

22:                                               ; preds = %19, %13
  %23 = icmp eq ptr %15, %11
  br i1 %23, label %24, label %13, !llvm.loop !302

24:                                               ; preds = %22, %5, %1
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %4 = icmp ult i64 %2, 23
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %7 = trunc nuw nsw i64 %2 to i8
  %8 = shl nuw nsw i8 %7, 1
  store i8 %8, ptr %0, align 8
  br label %21

9:                                                ; preds = %3
  %10 = icmp ugt i64 %2, -10
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne210107Ev() #25
  unreachable

12:                                               ; preds = %9
  %13 = or i64 %2, 7
  %14 = icmp eq i64 %13, 23
  %15 = add nuw i64 %13, 1
  %16 = select i1 %14, i64 26, i64 %15
  %17 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %16) #26, !noalias !303
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %17, ptr %18, align 8, !tbaa !216
  %19 = or disjoint i64 %16, 1
  store i64 %19, ptr %0, align 8
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %20, align 8, !tbaa !216
  br label %21

21:                                               ; preds = %12, %5
  %22 = phi ptr [ %6, %5 ], [ %17, %12 ]
  %23 = add nuw i64 %2, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %23, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !238
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1, %15
  %6 = phi ptr [ %7, %15 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !239
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !216
  tail call void @_ZdlPv(ptr noundef %14) #28
  br label %15

15:                                               ; preds = %12, %5
  tail call void @_ZdlPv(ptr noundef nonnull %6) #28
  %16 = icmp eq ptr %7, null
  br i1 %16, label %17, label %5, !llvm.loop !240

17:                                               ; preds = %15, %1
  %18 = load ptr, ptr %0, align 8, !tbaa !241
  store ptr null, ptr %0, align 8, !tbaa !241
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef nonnull %18) #28
  br label %21

21:                                               ; preds = %17, %20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE25__emplace_unique_key_argsIS6_JRS6_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS6_PvEEEEbEERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::__1::pair.113") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %5 = alloca %"class.std::__1::unique_ptr.114", align 8
  %6 = load i8, ptr %2, align 8
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %12 = select i1 %8, ptr %11, ptr %10
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %14 = load i64, ptr %13, align 8
  %15 = lshr i8 %6, 1
  %16 = zext nneg i8 %15 to i64
  %17 = select i1 %8, i64 %16, i64 %14
  %18 = tail call noundef i64 @_ZNSt3__113__hash_memoryEPKvy(ptr noundef captures(none) %12, i64 noundef %17) #31
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %20 = load i64, ptr %19, align 8, !tbaa !310
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %105, label %22

22:                                               ; preds = %4
  %23 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %20)
  %24 = icmp samesign ult i64 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = add i64 %20, -1
  %27 = and i64 %26, %18
  br label %32

28:                                               ; preds = %22
  %29 = icmp ult i64 %18, %20
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = urem i64 %18, %20
  br label %32

32:                                               ; preds = %25, %28, %30
  %33 = phi i64 [ %27, %25 ], [ %31, %30 ], [ %18, %28 ]
  %34 = load ptr, ptr %1, align 8, !tbaa !241
  %35 = getelementptr inbounds nuw ptr, ptr %34, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !311
  %37 = icmp eq ptr %36, null
  br i1 %37, label %105, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %36, align 8, !tbaa !239
  %40 = icmp eq ptr %39, null
  br i1 %40, label %105, label %41

41:                                               ; preds = %38
  %42 = add i64 %20, -1
  br i1 %24, label %43, label %72

43:                                               ; preds = %41, %69
  %44 = phi ptr [ %70, %69 ], [ %39, %41 ]
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %46 = load i64, ptr %45, align 8, !tbaa !312
  %47 = icmp eq i64 %46, %18
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = and i64 %46, %42
  %50 = icmp eq i64 %49, %33
  br i1 %50, label %69, label %105

51:                                               ; preds = %43
  %52 = getelementptr inbounds nuw i8, ptr %44, i64 16
  %53 = load i8, ptr %52, align 8
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  %56 = getelementptr inbounds nuw i8, ptr %44, i64 24
  %57 = load i64, ptr %56, align 8
  %58 = lshr i8 %53, 1
  %59 = zext nneg i8 %58 to i64
  %60 = select i1 %55, i64 %59, i64 %57
  %61 = icmp eq i64 %60, %17
  br i1 %61, label %62, label %69

62:                                               ; preds = %51
  %63 = getelementptr inbounds nuw i8, ptr %44, i64 32
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds nuw i8, ptr %44, i64 17
  %66 = select i1 %55, ptr %65, ptr %64
  %67 = tail call noundef i32 @memcmp(ptr noundef %66, ptr noundef %12, i64 noundef %17) #27
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %234, label %69

69:                                               ; preds = %62, %51, %48
  %70 = load ptr, ptr %44, align 8, !tbaa !239
  %71 = icmp eq ptr %70, null
  br i1 %71, label %105, label %43, !llvm.loop !314

72:                                               ; preds = %41, %102
  %73 = phi ptr [ %103, %102 ], [ %39, %41 ]
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 8
  %75 = load i64, ptr %74, align 8, !tbaa !312
  %76 = icmp eq i64 %75, %18
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = icmp ult i64 %75, %20
  br i1 %78, label %81, label %79

79:                                               ; preds = %77
  %80 = urem i64 %75, %20
  br label %81

81:                                               ; preds = %77, %79
  %82 = phi i64 [ %80, %79 ], [ %75, %77 ]
  %83 = icmp eq i64 %82, %33
  br i1 %83, label %102, label %105

84:                                               ; preds = %72
  %85 = getelementptr inbounds nuw i8, ptr %73, i64 16
  %86 = load i8, ptr %85, align 8
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  %89 = getelementptr inbounds nuw i8, ptr %73, i64 24
  %90 = load i64, ptr %89, align 8
  %91 = lshr i8 %86, 1
  %92 = zext nneg i8 %91 to i64
  %93 = select i1 %88, i64 %92, i64 %90
  %94 = icmp eq i64 %93, %17
  br i1 %94, label %95, label %102

95:                                               ; preds = %84
  %96 = getelementptr inbounds nuw i8, ptr %73, i64 32
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds nuw i8, ptr %73, i64 17
  %99 = select i1 %88, ptr %98, ptr %97
  %100 = tail call noundef i32 @memcmp(ptr noundef %99, ptr noundef %12, i64 noundef %17) #27
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %234, label %102

102:                                              ; preds = %84, %81, %95
  %103 = load ptr, ptr %73, align 8, !tbaa !239
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %72, !llvm.loop !314

105:                                              ; preds = %81, %102, %48, %69, %38, %32, %4
  %106 = phi i64 [ %33, %32 ], [ undef, %4 ], [ %33, %38 ], [ %33, %69 ], [ %33, %48 ], [ %33, %102 ], [ %33, %81 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %108 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwy(i64 noundef 40) #26, !noalias !315
  store ptr %108, ptr %5, align 8, !tbaa !318, !alias.scope !315
  %109 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %107, ptr %109, align 8, !tbaa !325, !alias.scope !315
  %110 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %110, align 8, !alias.scope !315
  store ptr null, ptr %108, align 8, !tbaa !239, !noalias !315
  %111 = getelementptr inbounds nuw i8, ptr %108, i64 8
  store i64 %18, ptr %111, align 8, !tbaa !312, !noalias !315
  %112 = getelementptr inbounds nuw i8, ptr %108, i64 16
  %113 = load i8, ptr %3, align 8, !noalias !315
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %105
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %112, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !250, !noalias !315
  br label %126

117:                                              ; preds = %105
  %118 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %119 = load ptr, ptr %118, align 8, !tbaa !216, !noalias !315
  %120 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %121 = load i64, ptr %120, align 8, !tbaa !216, !noalias !315
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %112, ptr noundef %119, i64 noundef %121)
          to label %126 unwind label %124, !noalias !315

122:                                              ; preds = %200, %124
  %123 = phi { ptr, i32 } [ %125, %124 ], [ %201, %200 ]
  resume { ptr, i32 } %123

124:                                              ; preds = %117
  %125 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110unique_ptrINS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__hash_node_destructorINS5_IS9_EEEEED2B8ne210107Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  br label %122

126:                                              ; preds = %116, %117
  store i8 1, ptr %110, align 8, !tbaa !326, !alias.scope !315
  %127 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %128 = load i64, ptr %127, align 8, !tbaa !27
  %129 = add i64 %128, 1
  %130 = uitofp i64 %129 to float
  %131 = uitofp i64 %20 to float
  %132 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %133 = load float, ptr %132, align 8, !tbaa !36
  %134 = fmul float %133, %131
  %135 = fcmp olt float %134, %130
  %136 = or i1 %21, %135
  br i1 %136, label %137, label %202

137:                                              ; preds = %126
  %138 = shl i64 %20, 1
  %139 = icmp ugt i64 %20, 2
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %20)
  %142 = icmp samesign ugt i64 %141, 1
  %143 = zext i1 %142 to i64
  br label %144

144:                                              ; preds = %140, %137
  %145 = phi i64 [ 1, %137 ], [ %143, %140 ]
  %146 = or disjoint i64 %145, %138
  %147 = fdiv float %130, %133
  %148 = tail call noundef float @llvm.ceil.f32(float %147)
  %149 = fptoui float %148 to i64
  %150 = tail call i64 @llvm.umax.i64(i64 %146, i64 %149)
  %151 = icmp eq i64 %150, 1
  br i1 %151, label %157, label %152

152:                                              ; preds = %144
  %153 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %150)
  %154 = icmp samesign ult i64 %153, 2
  br i1 %154, label %157, label %155

155:                                              ; preds = %152
  %156 = invoke noundef i64 @_ZNSt3__112__next_primeEy(i64 noundef %150)
          to label %157 unwind label %200

157:                                              ; preds = %155, %152, %144
  %158 = phi i64 [ %150, %152 ], [ 2, %144 ], [ %156, %155 ]
  %159 = load i64, ptr %19, align 8, !tbaa !310
  %160 = icmp ugt i64 %158, %159
  br i1 %160, label %187, label %161

161:                                              ; preds = %157
  %162 = icmp ult i64 %158, %159
  br i1 %162, label %163, label %189

163:                                              ; preds = %161
  %164 = icmp ugt i64 %159, 2
  %165 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %159)
  %166 = icmp samesign ult i64 %165, 2
  %167 = select i1 %164, i1 %166, i1 false
  %168 = load i64, ptr %127, align 8, !tbaa !27
  %169 = uitofp i64 %168 to float
  %170 = load float, ptr %132, align 8, !tbaa !36
  %171 = fdiv float %169, %170
  %172 = tail call noundef float @llvm.ceil.f32(float %171)
  %173 = fptoui float %172 to i64
  br i1 %167, label %174, label %181

174:                                              ; preds = %163
  %175 = icmp ult i64 %173, 2
  br i1 %175, label %183, label %176

176:                                              ; preds = %174
  %177 = add i64 %173, -1
  %178 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %177, i1 false)
  %179 = sub nuw nsw i64 64, %178
  %180 = shl nuw i64 1, %179
  br label %183

181:                                              ; preds = %163
  %182 = invoke noundef i64 @_ZNSt3__112__next_primeEy(i64 noundef %173)
          to label %183 unwind label %200

183:                                              ; preds = %181, %176, %174
  %184 = phi i64 [ %180, %176 ], [ %173, %174 ], [ %182, %181 ]
  %185 = tail call i64 @llvm.umax.i64(i64 %158, i64 %184)
  %186 = icmp ult i64 %185, %159
  br i1 %186, label %187, label %189

187:                                              ; preds = %183, %157
  %188 = phi i64 [ %158, %157 ], [ %185, %183 ]
  invoke void @_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE11__do_rehashILb1EEEvy(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %188)
          to label %189 unwind label %200

189:                                              ; preds = %183, %161, %187
  %190 = load i64, ptr %19, align 8, !tbaa !310
  %191 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %190)
  %192 = icmp samesign ult i64 %191, 2
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = add i64 %190, -1
  %195 = and i64 %194, %18
  br label %202

196:                                              ; preds = %189
  %197 = icmp ult i64 %18, %190
  br i1 %197, label %202, label %198

198:                                              ; preds = %196
  %199 = urem i64 %18, %190
  br label %202

200:                                              ; preds = %187, %181, %155
  %201 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110unique_ptrINS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__hash_node_destructorINS5_IS9_EEEEED2B8ne210107Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  br label %122

202:                                              ; preds = %198, %196, %193, %126
  %203 = phi i64 [ %106, %126 ], [ %195, %193 ], [ %199, %198 ], [ %18, %196 ]
  %204 = phi i64 [ %20, %126 ], [ %190, %193 ], [ %190, %198 ], [ %190, %196 ]
  %205 = load ptr, ptr %1, align 8, !tbaa !241
  %206 = getelementptr inbounds nuw ptr, ptr %205, i64 %203
  %207 = load ptr, ptr %206, align 8, !tbaa !311
  %208 = icmp eq ptr %207, null
  %209 = load ptr, ptr %5, align 8, !tbaa !318
  br i1 %208, label %210, label %229

210:                                              ; preds = %202
  %211 = load ptr, ptr %107, align 8, !tbaa !239
  store ptr %211, ptr %209, align 8, !tbaa !239
  store ptr %209, ptr %107, align 8, !tbaa !239
  store ptr %107, ptr %206, align 8, !tbaa !311
  %212 = load ptr, ptr %209, align 8, !tbaa !239
  %213 = icmp eq ptr %212, null
  br i1 %213, label %231, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds nuw i8, ptr %212, i64 8
  %216 = load i64, ptr %215, align 8, !tbaa !312
  %217 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %204)
  %218 = icmp samesign ult i64 %217, 2
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = add i64 %204, -1
  %221 = and i64 %216, %220
  br label %226

222:                                              ; preds = %214
  %223 = icmp ult i64 %216, %204
  br i1 %223, label %226, label %224

224:                                              ; preds = %222
  %225 = urem i64 %216, %204
  br label %226

226:                                              ; preds = %219, %222, %224
  %227 = phi i64 [ %221, %219 ], [ %225, %224 ], [ %216, %222 ]
  %228 = getelementptr inbounds nuw ptr, ptr %205, i64 %227
  store ptr %209, ptr %228, align 8, !tbaa !311
  br label %231

229:                                              ; preds = %202
  %230 = load ptr, ptr %207, align 8, !tbaa !239
  store ptr %230, ptr %209, align 8, !tbaa !239
  store ptr %209, ptr %207, align 8, !tbaa !239
  br label %231

231:                                              ; preds = %229, %226, %210
  %232 = load i64, ptr %127, align 8, !tbaa !27
  %233 = add i64 %232, 1
  store i64 %233, ptr %127, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  br label %234

234:                                              ; preds = %95, %62, %231
  %235 = phi i8 [ 1, %231 ], [ 0, %62 ], [ 0, %95 ]
  %236 = phi ptr [ %209, %231 ], [ %44, %62 ], [ %73, %95 ]
  %237 = ptrtoint ptr %236 to i64
  store i64 %237, ptr %0, align 8, !tbaa !311
  %238 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %235, ptr %238, align 8, !tbaa !327
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__110unique_ptrINS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__hash_node_destructorINS5_IS9_EEEEED2B8ne210107Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !318
  store ptr null, ptr %0, align 8, !tbaa !318
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load i8, ptr %5, align 8, !tbaa !326, !range !296, !noundef !297
  %7 = trunc nuw i8 %6 to i1
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa !216
  tail call void @_ZdlPv(ptr noundef %15) #28
  br label %16

16:                                               ; preds = %13, %8, %4
  tail call void @_ZdlPv(ptr noundef nonnull %2) #28
  br label %17

17:                                               ; preds = %1, %16
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare dso_local noundef i64 @_ZNSt3__113__hash_memoryEPKvy(ptr noundef captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare dso_local i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #15

declare dso_local noundef i64 @_ZNSt3__112__next_primeEy(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE11__do_rehashILb1EEEvy(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %92, label %4

4:                                                ; preds = %2
  %5 = icmp ugt i64 %1, 2305843009213693951
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne210107v() #25
  unreachable

7:                                                ; preds = %4
  %8 = shl nuw i64 %1, 3
  %9 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %8) #26
  %10 = load ptr, ptr %0, align 8, !tbaa !241
  store ptr %9, ptr %0, align 8, !tbaa !241
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef nonnull %10) #28
  %13 = load ptr, ptr %0, align 8, !tbaa !241
  br label %14

14:                                               ; preds = %7, %12
  %15 = phi ptr [ %9, %7 ], [ %13, %12 ]
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %16, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %8, i1 false), !tbaa !311
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load ptr, ptr %17, align 8, !tbaa !239
  %19 = icmp eq ptr %18, null
  br i1 %19, label %98, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %22 = load i64, ptr %21, align 8, !tbaa !312
  %23 = tail call range(i64 1, 62) i64 @llvm.ctpop.i64(i64 %1)
  %24 = icmp samesign ult i64 %23, 2
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = icmp ult i64 %22, %1
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = urem i64 %22, %1
  br label %29

29:                                               ; preds = %25, %27
  %30 = phi i64 [ %28, %27 ], [ %22, %25 ]
  %31 = getelementptr inbounds nuw ptr, ptr %15, i64 %30
  store ptr %17, ptr %31, align 8, !tbaa !311
  %32 = load ptr, ptr %18, align 8, !tbaa !239
  %33 = icmp eq ptr %32, null
  br i1 %33, label %98, label %65

34:                                               ; preds = %20
  %35 = add nsw i64 %1, -1
  %36 = and i64 %22, %35
  %37 = getelementptr inbounds nuw ptr, ptr %15, i64 %36
  store ptr %17, ptr %37, align 8, !tbaa !311
  %38 = load ptr, ptr %18, align 8, !tbaa !239
  %39 = icmp eq ptr %38, null
  br i1 %39, label %98, label %40

40:                                               ; preds = %34
  %41 = add nsw i64 %1, -1
  br label %42

42:                                               ; preds = %40, %60
  %43 = phi ptr [ %63, %60 ], [ %38, %40 ]
  %44 = phi i64 [ %62, %60 ], [ %36, %40 ]
  %45 = phi ptr [ %61, %60 ], [ %18, %40 ]
  %46 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %47 = load i64, ptr %46, align 8, !tbaa !312
  %48 = and i64 %47, %41
  %49 = icmp eq i64 %48, %44
  br i1 %49, label %60, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds nuw ptr, ptr %15, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !311
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %43, align 8, !tbaa !239
  store ptr %55, ptr %45, align 8, !tbaa !239
  %56 = load ptr, ptr %51, align 8, !tbaa !311
  %57 = load ptr, ptr %56, align 8, !tbaa !239
  store ptr %57, ptr %43, align 8, !tbaa !239
  %58 = load ptr, ptr %51, align 8, !tbaa !311
  store ptr %43, ptr %58, align 8, !tbaa !239
  br label %60

59:                                               ; preds = %50
  store ptr %45, ptr %51, align 8, !tbaa !311
  br label %60

60:                                               ; preds = %59, %54, %42
  %61 = phi ptr [ %43, %59 ], [ %45, %54 ], [ %43, %42 ]
  %62 = phi i64 [ %48, %59 ], [ %44, %54 ], [ %44, %42 ]
  %63 = load ptr, ptr %61, align 8, !tbaa !239
  %64 = icmp eq ptr %63, null
  br i1 %64, label %98, label %42, !llvm.loop !330

65:                                               ; preds = %29, %87
  %66 = phi ptr [ %90, %87 ], [ %32, %29 ]
  %67 = phi i64 [ %89, %87 ], [ %30, %29 ]
  %68 = phi ptr [ %88, %87 ], [ %18, %29 ]
  %69 = getelementptr inbounds nuw i8, ptr %66, i64 8
  %70 = load i64, ptr %69, align 8, !tbaa !312
  %71 = icmp ult i64 %70, %1
  br i1 %71, label %74, label %72

72:                                               ; preds = %65
  %73 = urem i64 %70, %1
  br label %74

74:                                               ; preds = %65, %72
  %75 = phi i64 [ %73, %72 ], [ %70, %65 ]
  %76 = icmp eq i64 %75, %67
  br i1 %76, label %87, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds nuw ptr, ptr %15, i64 %75
  %79 = load ptr, ptr %78, align 8, !tbaa !311
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store ptr %68, ptr %78, align 8, !tbaa !311
  br label %87

82:                                               ; preds = %77
  %83 = load ptr, ptr %66, align 8, !tbaa !239
  store ptr %83, ptr %68, align 8, !tbaa !239
  %84 = load ptr, ptr %78, align 8, !tbaa !311
  %85 = load ptr, ptr %84, align 8, !tbaa !239
  store ptr %85, ptr %66, align 8, !tbaa !239
  %86 = load ptr, ptr %78, align 8, !tbaa !311
  store ptr %66, ptr %86, align 8, !tbaa !239
  br label %87

87:                                               ; preds = %74, %82, %81
  %88 = phi ptr [ %66, %81 ], [ %68, %82 ], [ %66, %74 ]
  %89 = phi i64 [ %75, %81 ], [ %67, %82 ], [ %67, %74 ]
  %90 = load ptr, ptr %88, align 8, !tbaa !239
  %91 = icmp eq ptr %90, null
  br i1 %91, label %98, label %65, !llvm.loop !330

92:                                               ; preds = %2
  %93 = load ptr, ptr %0, align 8, !tbaa !241
  store ptr null, ptr %0, align 8, !tbaa !241
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  tail call void @_ZdlPv(ptr noundef nonnull %93) #28
  br label %96

96:                                               ; preds = %92, %95
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %97, align 8, !tbaa !27
  br label %98

98:                                               ; preds = %87, %60, %34, %29, %14, %96
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #18

declare dllimport ptr @__acrt_iob_func(i32 noundef) local_unnamed_addr #12

declare dso_local void @_ZN3fmt3v128vprintlnEP6_iobufNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINSt3__16vectorINS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEENSB_ISD_EEEEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #2 comdat align 2 {
  %4 = alloca %"struct.fmt::v12::formatter", align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %4) #27
  store i32 32768, ptr %4, align 8, !tbaa !331
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 32, ptr %5, align 4, !tbaa !216
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 5
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %6, i8 0, i64 7, i1 false)
  store i32 -1, ptr %7, align 4, !tbaa !333
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %8, align 8, !tbaa !216
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 0, ptr %9, align 8, !tbaa !216
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr @_ZN3fmt3v126detail14string_literalIcJLc44ELc32EEE5valueE, ptr %10, align 8, !tbaa !335, !alias.scope !338
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 2, ptr %11, align 8, !tbaa !341, !alias.scope !338
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr @_ZN3fmt3v126detail14string_literalIcJLc91EEE5valueE, ptr %12, align 8, !tbaa !335, !alias.scope !342
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 1, ptr %13, align 8, !tbaa !341, !alias.scope !342
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store ptr @_ZN3fmt3v126detail14string_literalIcJLc93EEE5valueE, ptr %14, align 8, !tbaa !335, !alias.scope !345
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 1, ptr %15, align 8, !tbaa !341, !alias.scope !345
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i8 0, ptr %16, align 8, !tbaa !348
  %17 = call noundef ptr @_ZN3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE5parseERNS0_13parse_contextIcEE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(20) %1)
  %18 = load ptr, ptr %1, align 8, !tbaa !335
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = icmp sgt i64 %21, -1
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

24:                                               ; preds = %3
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 %21
  store ptr %25, ptr %1, align 8, !tbaa !335
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %27 = load i64, ptr %26, align 8, !tbaa !341
  %28 = sub i64 %27, %21
  store i64 %28, ptr %26, align 8, !tbaa !341
  %29 = call i64 @_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRKNS2_6vectorIS8_NS6_IS8_EEEENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %4) #27
  ret void
}

; Function Attrs: noreturn
declare dso_local void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE5parseERNS0_13parse_contextIcEE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #2 comdat align 2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !335
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !341
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 %5
  %7 = load i32, ptr %0, align 8, !tbaa !331
  %8 = and i32 %7, -8
  %9 = or disjoint i32 %8, 1
  store i32 %9, ptr %0, align 8, !tbaa !331
  %10 = icmp samesign eq i64 %5, 0
  br i1 %10, label %53, label %11

11:                                               ; preds = %2
  %12 = load i8, ptr %3, align 1, !tbaa !216
  switch i8 %12, label %26 [
    i8 110, label %13
    i8 63, label %16
    i8 115, label %25
  ]

13:                                               ; preds = %11
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  br label %26

16:                                               ; preds = %11
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %17, align 8, !tbaa !348
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %19 = icmp samesign eq i64 %5, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false)
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !216
  %23 = icmp eq i8 %22, 115
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %16
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

25:                                               ; preds = %20, %11
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

26:                                               ; preds = %11, %13
  %27 = phi ptr [ %3, %11 ], [ %15, %13 ]
  %28 = icmp eq ptr %27, %6
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load i8, ptr %27, align 1, !tbaa !216
  switch i8 %30, label %31 [
    i8 125, label %34
    i8 58, label %32
  ]

31:                                               ; preds = %29
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

32:                                               ; preds = %29
  store i32 %8, ptr %0, align 8, !tbaa !331
  %33 = getelementptr inbounds nuw i8, ptr %27, i64 1
  br label %34

34:                                               ; preds = %29, %32, %26
  %35 = phi ptr [ %33, %32 ], [ %27, %29 ], [ %6, %26 ]
  %36 = load ptr, ptr %1, align 8, !tbaa !335
  %37 = ptrtoint ptr %35 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = icmp sgt i64 %39, -1
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  tail call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

42:                                               ; preds = %34
  %43 = getelementptr inbounds nuw i8, ptr %36, i64 %39
  store ptr %43, ptr %1, align 8, !tbaa !335
  %44 = load i64, ptr %4, align 8, !tbaa !341
  %45 = sub i64 %44, %39
  store i64 %45, ptr %4, align 8, !tbaa !341
  %46 = getelementptr inbounds nuw i8, ptr %36, i64 %44
  %47 = icmp eq i64 %44, %39
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load i8, ptr %43, align 1, !tbaa !216
  %50 = icmp eq i8 %49, 125
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = tail call noundef ptr @_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %43, ptr noundef nonnull %46, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 13)
  br label %53

53:                                               ; preds = %2, %51, %48, %42
  %54 = phi ptr [ %52, %51 ], [ %43, %48 ], [ %43, %42 ], [ %3, %2 ]
  ret ptr %54
}

; Function Attrs: noreturn
declare dso_local void @_ZN3fmt3v1212report_errorEPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, i32 noundef %4) local_unnamed_addr #2 comdat {
  %6 = alloca %"struct.fmt::v12::detail::parse_dynamic_spec_result", align 8
  %7 = alloca %"struct.fmt::v12::detail::parse_dynamic_spec_result", align 8
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = icmp sgt i64 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !216
  switch i8 %14, label %17 [
    i8 60, label %19
    i8 62, label %19
    i8 94, label %19
  ]

15:                                               ; preds = %5
  %16 = icmp eq ptr %0, %1
  br i1 %16, label %301, label %17

17:                                               ; preds = %15, %12
  %18 = load i8, ptr %0, align 1, !tbaa !216
  br label %19

19:                                               ; preds = %17, %12, %12, %12
  %20 = phi i8 [ 0, %12 ], [ 0, %12 ], [ 0, %12 ], [ %18, %17 ]
  %21 = add i32 %4, -1
  %22 = icmp ult i32 %21, 11
  %23 = shl nuw i32 1, %4
  %24 = and i32 %23, 15872
  %25 = icmp ne i32 %24, 0
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %28 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %31 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %32 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %33 = and i32 %23, 3626
  %34 = icmp ne i32 %33, 0
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %37 = getelementptr inbounds nuw i8, ptr %2, i64 5
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 7
  br label %40

40:                                               ; preds = %296, %19
  %41 = phi ptr [ %0, %19 ], [ %293, %296 ]
  %42 = phi i32 [ 0, %19 ], [ %294, %296 ]
  %43 = phi i8 [ %20, %19 ], [ %297, %296 ]
  switch i8 %43, label %240 [
    i8 60, label %44
    i8 62, label %44
    i8 94, label %44
    i8 43, label %57
    i8 32, label %57
    i8 45, label %63
    i8 35, label %69
    i8 48, label %77
    i8 49, label %91
    i8 50, label %91
    i8 51, label %91
    i8 52, label %91
    i8 53, label %91
    i8 54, label %91
    i8 55, label %91
    i8 56, label %91
    i8 57, label %91
    i8 123, label %91
    i8 46, label %101
    i8 76, label %116
    i8 100, label %124
    i8 88, label %132
    i8 120, label %135
    i8 111, label %143
    i8 66, label %151
    i8 98, label %154
    i8 69, label %162
    i8 101, label %165
    i8 70, label %173
    i8 102, label %176
    i8 71, label %184
    i8 103, label %187
    i8 65, label %195
    i8 97, label %198
    i8 99, label %206
    i8 115, label %216
    i8 112, label %224
    i8 63, label %232
    i8 125, label %301
  ]

44:                                               ; preds = %40, %40, %40
  %45 = icmp eq i32 %42, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %44
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

47:                                               ; preds = %44
  switch i8 %43, label %50 [
    i8 60, label %51
    i8 62, label %48
    i8 94, label %49
  ]

48:                                               ; preds = %47
  br label %51

49:                                               ; preds = %47
  br label %51

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %47, %48, %49, %50
  %52 = phi i32 [ 0, %50 ], [ 16, %48 ], [ 24, %49 ], [ 8, %47 ]
  %53 = load i32, ptr %2, align 8, !tbaa !331
  %54 = and i32 %53, -57
  %55 = or disjoint i32 %54, %52
  store i32 %55, ptr %2, align 8, !tbaa !331
  %56 = getelementptr inbounds nuw i8, ptr %41, i64 1
  br label %292

57:                                               ; preds = %40, %40
  %58 = icmp eq i8 %43, 32
  %59 = select i1 %58, i32 3072, i32 2048
  %60 = load i32, ptr %2, align 8, !tbaa !331
  %61 = and i32 %60, -3073
  %62 = or disjoint i32 %61, %59
  store i32 %62, ptr %2, align 8, !tbaa !331
  br label %63

63:                                               ; preds = %40, %57
  %64 = icmp samesign ult i32 %42, 2
  %65 = and i1 %34, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

67:                                               ; preds = %63
  %68 = getelementptr inbounds nuw i8, ptr %41, i64 1
  br label %292

69:                                               ; preds = %40
  %70 = icmp samesign ult i32 %42, 3
  %71 = and i1 %22, %70
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

73:                                               ; preds = %69
  %74 = load i32, ptr %2, align 8, !tbaa !331
  %75 = or i32 %74, 8192
  store i32 %75, ptr %2, align 8, !tbaa !331
  %76 = getelementptr inbounds nuw i8, ptr %41, i64 1
  br label %292

77:                                               ; preds = %40
  %78 = icmp samesign ult i32 %42, 4
  br i1 %78, label %80, label %79

79:                                               ; preds = %77
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

80:                                               ; preds = %77
  br i1 %22, label %82, label %81

81:                                               ; preds = %80
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.24) #25
  unreachable

82:                                               ; preds = %80
  %83 = load i32, ptr %2, align 8, !tbaa !331
  %84 = and i32 %83, 56
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  store i8 48, ptr %32, align 4, !tbaa !216
  %87 = and i32 %83, -229433
  %88 = or disjoint i32 %87, 32800
  store i32 %88, ptr %2, align 8, !tbaa !331
  br label %89

89:                                               ; preds = %86, %82
  %90 = getelementptr inbounds nuw i8, ptr %41, i64 1
  br label %292

91:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %92 = icmp samesign ult i32 %42, 5
  br i1 %92, label %94, label %93

93:                                               ; preds = %91
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

94:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #27
  call void @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr dead_on_unwind nonnull writable sret(%"struct.fmt::v12::detail::parse_dynamic_spec_result") align 8 %7, ptr noundef nonnull %41, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %30, ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(20) %3)
  %95 = load i32, ptr %31, align 8, !tbaa !354
  %96 = load i32, ptr %2, align 8, !tbaa !331
  %97 = and i32 %96, -193
  %98 = shl i32 %95, 6
  %99 = or i32 %97, %98
  store i32 %99, ptr %2, align 8, !tbaa !331
  %100 = load ptr, ptr %7, align 8, !tbaa !357
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #27
  br label %292

101:                                              ; preds = %40
  %102 = icmp samesign ult i32 %42, 6
  %103 = and i1 %25, %102
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

105:                                              ; preds = %101
  %106 = getelementptr inbounds nuw i8, ptr %41, i64 1
  %107 = icmp eq ptr %106, %1
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.31) #25
  unreachable

109:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #27
  call void @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr dead_on_unwind nonnull writable sret(%"struct.fmt::v12::detail::parse_dynamic_spec_result") align 8 %6, ptr noundef nonnull %106, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %27, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(20) %3)
  %110 = load i32, ptr %28, align 8, !tbaa !354
  %111 = load i32, ptr %2, align 8, !tbaa !331
  %112 = and i32 %111, -769
  %113 = shl i32 %110, 8
  %114 = or i32 %112, %113
  store i32 %114, ptr %2, align 8, !tbaa !331
  %115 = load ptr, ptr %6, align 8, !tbaa !357
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #27
  br label %292

116:                                              ; preds = %40
  %117 = icmp samesign ult i32 %42, 7
  %118 = and i1 %22, %117
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

120:                                              ; preds = %116
  %121 = load i32, ptr %2, align 8, !tbaa !331
  %122 = or i32 %121, 16384
  store i32 %122, ptr %2, align 8, !tbaa !331
  %123 = getelementptr inbounds nuw i8, ptr %41, i64 1
  br label %292

124:                                              ; preds = %40
  %125 = and i32 %23, 510
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

128:                                              ; preds = %124
  %129 = load i32, ptr %2, align 8, !tbaa !331
  %130 = and i32 %129, -8
  %131 = or disjoint i32 %130, 3
  br label %298

132:                                              ; preds = %40
  %133 = load i32, ptr %2, align 8, !tbaa !331
  %134 = or i32 %133, 4096
  store i32 %134, ptr %2, align 8, !tbaa !331
  br label %135

135:                                              ; preds = %40, %132
  %136 = and i32 %23, 510
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

139:                                              ; preds = %135
  %140 = load i32, ptr %2, align 8, !tbaa !331
  %141 = and i32 %140, -8
  %142 = or disjoint i32 %141, 4
  br label %298

143:                                              ; preds = %40
  %144 = and i32 %23, 510
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

147:                                              ; preds = %143
  %148 = load i32, ptr %2, align 8, !tbaa !331
  %149 = and i32 %148, -8
  %150 = or disjoint i32 %149, 5
  br label %298

151:                                              ; preds = %40
  %152 = load i32, ptr %2, align 8, !tbaa !331
  %153 = or i32 %152, 4096
  store i32 %153, ptr %2, align 8, !tbaa !331
  br label %154

154:                                              ; preds = %40, %151
  %155 = and i32 %23, 510
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

158:                                              ; preds = %154
  %159 = load i32, ptr %2, align 8, !tbaa !331
  %160 = and i32 %159, -8
  %161 = or disjoint i32 %160, 6
  br label %298

162:                                              ; preds = %40
  %163 = load i32, ptr %2, align 8, !tbaa !331
  %164 = or i32 %163, 4096
  store i32 %164, ptr %2, align 8, !tbaa !331
  br label %165

165:                                              ; preds = %40, %162
  %166 = and i32 %23, 3584
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

169:                                              ; preds = %165
  %170 = load i32, ptr %2, align 8, !tbaa !331
  %171 = and i32 %170, -8
  %172 = or disjoint i32 %171, 1
  br label %298

173:                                              ; preds = %40
  %174 = load i32, ptr %2, align 8, !tbaa !331
  %175 = or i32 %174, 4096
  store i32 %175, ptr %2, align 8, !tbaa !331
  br label %176

176:                                              ; preds = %40, %173
  %177 = and i32 %23, 3584
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

180:                                              ; preds = %176
  %181 = load i32, ptr %2, align 8, !tbaa !331
  %182 = and i32 %181, -8
  %183 = or disjoint i32 %182, 2
  br label %298

184:                                              ; preds = %40
  %185 = load i32, ptr %2, align 8, !tbaa !331
  %186 = or i32 %185, 4096
  store i32 %186, ptr %2, align 8, !tbaa !331
  br label %187

187:                                              ; preds = %40, %184
  %188 = and i32 %23, 3584
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

191:                                              ; preds = %187
  %192 = load i32, ptr %2, align 8, !tbaa !331
  %193 = and i32 %192, -8
  %194 = or disjoint i32 %193, 3
  br label %298

195:                                              ; preds = %40
  %196 = load i32, ptr %2, align 8, !tbaa !331
  %197 = or i32 %196, 4096
  store i32 %197, ptr %2, align 8, !tbaa !331
  br label %198

198:                                              ; preds = %40, %195
  %199 = and i32 %23, 3584
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

202:                                              ; preds = %198
  %203 = load i32, ptr %2, align 8, !tbaa !331
  %204 = and i32 %203, -8
  %205 = or disjoint i32 %204, 4
  br label %298

206:                                              ; preds = %40
  %207 = icmp eq i32 %4, 7
  br i1 %207, label %208, label %209

208:                                              ; preds = %206
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

209:                                              ; preds = %206
  %210 = and i32 %23, 510
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

213:                                              ; preds = %209
  %214 = load i32, ptr %2, align 8, !tbaa !331
  %215 = or i32 %214, 7
  br label %298

216:                                              ; preds = %40
  %217 = and i32 %23, 12416
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

220:                                              ; preds = %216
  %221 = load i32, ptr %2, align 8, !tbaa !331
  %222 = and i32 %221, -8
  %223 = or disjoint i32 %222, 2
  br label %298

224:                                              ; preds = %40
  %225 = and i32 %23, 20480
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %224
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

228:                                              ; preds = %224
  %229 = load i32, ptr %2, align 8, !tbaa !331
  %230 = and i32 %229, -8
  %231 = or disjoint i32 %230, 3
  br label %298

232:                                              ; preds = %40
  %233 = and i32 %23, 12544
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

236:                                              ; preds = %232
  %237 = load i32, ptr %2, align 8, !tbaa !331
  %238 = and i32 %237, -8
  %239 = or disjoint i32 %238, 1
  br label %298

240:                                              ; preds = %40
  %241 = load i8, ptr %41, align 1, !tbaa !216
  %242 = icmp eq i8 %241, 125
  br i1 %242, label %301, label %243

243:                                              ; preds = %240
  %244 = lshr i8 %241, 2
  %245 = and i8 %244, 62
  %246 = zext nneg i8 %245 to i64
  %247 = lshr i64 4203265827220226048, %246
  %248 = and i64 %247, 3
  %249 = getelementptr inbounds nuw i8, ptr %41, i64 %248
  %250 = getelementptr inbounds nuw i8, ptr %249, i64 1
  %251 = ptrtoint ptr %250 to i64
  %252 = sub i64 %8, %251
  %253 = icmp slt i64 %252, 1
  br i1 %253, label %254, label %255

254:                                              ; preds = %243
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

255:                                              ; preds = %243
  %256 = icmp eq i8 %241, 123
  br i1 %256, label %257, label %258

257:                                              ; preds = %255
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.25) #25
  unreachable

258:                                              ; preds = %255
  %259 = load i8, ptr %250, align 1, !tbaa !216
  switch i8 %259, label %265 [
    i8 60, label %262
    i8 62, label %260
    i8 94, label %261
  ]

260:                                              ; preds = %258
  br label %262

261:                                              ; preds = %258
  br label %262

262:                                              ; preds = %258, %260, %261
  %263 = phi i32 [ 16, %260 ], [ 24, %261 ], [ 8, %258 ]
  %264 = icmp eq i32 %42, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %258, %262
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.23) #25
  unreachable

266:                                              ; preds = %262
  %267 = load i32, ptr %2, align 8, !tbaa !331
  %268 = and i32 %267, -229377
  %269 = trunc nuw nsw i64 %248 to i32
  %270 = shl nuw nsw i32 %269, 15
  %271 = add nuw nsw i32 %270, 32768
  %272 = or disjoint i32 %268, %271
  store i32 %272, ptr %2, align 8, !tbaa !331
  %273 = icmp eq i64 %248, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %266
  %275 = load i8, ptr %41, align 1, !tbaa !216
  store i8 %275, ptr %32, align 4, !tbaa !216
  store i8 0, ptr %35, align 1, !tbaa !216
  store i8 0, ptr %36, align 2, !tbaa !216
  br label %288

276:                                              ; preds = %266
  %277 = load i8, ptr %41, align 1, !tbaa !216
  store i8 %277, ptr %32, align 4, !tbaa !216
  %278 = getelementptr inbounds nuw i8, ptr %41, i64 1
  %279 = load i8, ptr %278, align 1, !tbaa !216
  store i8 %279, ptr %37, align 1, !tbaa !216
  %280 = icmp eq i64 %248, 1
  br i1 %280, label %288, label %281, !llvm.loop !358

281:                                              ; preds = %276
  %282 = getelementptr inbounds nuw i8, ptr %41, i64 2
  %283 = load i8, ptr %282, align 1, !tbaa !216
  store i8 %283, ptr %38, align 2, !tbaa !216
  %284 = icmp eq i64 %248, 2
  br i1 %284, label %288, label %285, !llvm.loop !358

285:                                              ; preds = %281
  %286 = getelementptr inbounds nuw i8, ptr %41, i64 3
  %287 = load i8, ptr %286, align 1, !tbaa !216
  store i8 %287, ptr %39, align 1, !tbaa !216
  br label %288

288:                                              ; preds = %276, %281, %285, %274
  %289 = and i32 %272, -57
  %290 = or disjoint i32 %289, %263
  store i32 %290, ptr %2, align 8, !tbaa !331
  %291 = getelementptr inbounds nuw i8, ptr %249, i64 2
  br label %292

292:                                              ; preds = %288, %120, %109, %94, %89, %73, %67, %51
  %293 = phi ptr [ %291, %288 ], [ %56, %51 ], [ %68, %67 ], [ %76, %73 ], [ %90, %89 ], [ %100, %94 ], [ %115, %109 ], [ %123, %120 ]
  %294 = phi i32 [ 1, %288 ], [ 1, %51 ], [ 2, %67 ], [ 3, %73 ], [ 4, %89 ], [ 5, %94 ], [ 6, %109 ], [ 7, %120 ]
  %295 = icmp eq ptr %293, %1
  br i1 %295, label %301, label %296

296:                                              ; preds = %292
  %297 = load i8, ptr %293, align 1, !tbaa !216
  br label %40, !llvm.loop !359

298:                                              ; preds = %236, %228, %220, %213, %202, %191, %180, %169, %158, %147, %139, %128
  %299 = phi i32 [ %131, %128 ], [ %142, %139 ], [ %150, %147 ], [ %161, %158 ], [ %172, %169 ], [ %183, %180 ], [ %194, %191 ], [ %205, %202 ], [ %215, %213 ], [ %223, %220 ], [ %231, %228 ], [ %239, %236 ]
  store i32 %299, ptr %2, align 8, !tbaa !331
  %300 = getelementptr inbounds nuw i8, ptr %41, i64 1
  br label %301

301:                                              ; preds = %240, %292, %40, %298, %15
  %302 = phi ptr [ %0, %15 ], [ %300, %298 ], [ %41, %40 ], [ %293, %292 ], [ %41, %240 ]
  ret ptr %302
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr dead_on_unwind noalias writable sret(%"struct.fmt::v12::detail::parse_dynamic_spec_result") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(20) %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %7 = alloca i32, align 4
  %8 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler", align 8
  %9 = icmp eq ptr %1, %2
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 1414, ptr noundef nonnull @.str.26) #25
  unreachable

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  store i32 0, ptr %7, align 4, !tbaa !360
  %12 = load i8, ptr %1, align 1, !tbaa !216
  %13 = add i8 %12, -48
  %14 = icmp ult i8 %13, 10
  br i1 %14, label %15, label %57

15:                                               ; preds = %11
  %16 = ptrtoint ptr %2 to i64
  %17 = ptrtoint ptr %1 to i64
  %18 = sub i64 %16, %17
  %19 = getelementptr i8, ptr %1, i64 %18
  br label %20

20:                                               ; preds = %30, %15
  %21 = phi i8 [ %31, %30 ], [ %12, %15 ]
  %22 = phi ptr [ %28, %30 ], [ %1, %15 ]
  %23 = phi i32 [ %27, %30 ], [ 0, %15 ]
  %24 = mul i32 %23, 10
  %25 = zext nneg i8 %21 to i32
  %26 = add nsw i32 %25, -48
  %27 = add i32 %26, %24
  %28 = getelementptr inbounds nuw i8, ptr %22, i64 1
  %29 = icmp eq ptr %28, %2
  br i1 %29, label %34, label %30

30:                                               ; preds = %20
  %31 = load i8, ptr %28, align 1, !tbaa !216
  %32 = add i8 %31, -48
  %33 = icmp ult i8 %32, 10
  br i1 %33, label %20, label %34, !llvm.loop !361

34:                                               ; preds = %30, %20
  %35 = phi ptr [ %28, %30 ], [ %19, %20 ]
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %36, %17
  %38 = icmp slt i64 %37, 10
  br i1 %38, label %52, label %39

39:                                               ; preds = %34
  %40 = icmp eq i64 %37, 10
  br i1 %40, label %41, label %54

41:                                               ; preds = %39
  %42 = zext i32 %23 to i64
  %43 = mul nuw nsw i64 %42, 10
  %44 = load i8, ptr %22, align 1, !tbaa !216
  %45 = sext i8 %44 to i64
  %46 = add nsw i64 %45, 4294967248
  %47 = and i64 %46, 4294967294
  %48 = add nuw nsw i64 %47, %43
  %49 = icmp samesign ugt i64 %48, 2147483647
  %50 = icmp eq i32 %27, -1
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %54, label %55

52:                                               ; preds = %34
  %53 = icmp eq i32 %27, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %41, %39, %52
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.27) #25
  unreachable

55:                                               ; preds = %41, %52
  store i32 %27, ptr %3, align 4, !tbaa !16
  store ptr %35, ptr %0, align 8, !tbaa !357
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %56, align 8, !tbaa !354
  br label %86

57:                                               ; preds = %11
  %58 = icmp eq i8 %12, 123
  br i1 %58, label %59, label %85

59:                                               ; preds = %57
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %61 = icmp eq ptr %60, %2
  br i1 %61, label %75, label %62

62:                                               ; preds = %59
  %63 = load i8, ptr %60, align 1, !tbaa !216
  switch i8 %63, label %71 [
    i8 125, label %64
    i8 58, label %64
  ]

64:                                               ; preds = %62, %62
  %65 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %66 = load i32, ptr %65, align 8, !tbaa !362
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.29) #25
  unreachable

69:                                               ; preds = %64
  %70 = add nuw nsw i32 %66, 1
  store i32 %70, ptr %65, align 8, !tbaa !362
  store i32 %66, ptr %4, align 8
  store i32 1, ptr %7, align 4, !tbaa !360
  br label %75

71:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #27
  store ptr %5, ptr %8, align 8, !tbaa !364
  %72 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %4, ptr %72, align 8, !tbaa !366
  %73 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %7, ptr %73, align 8, !tbaa !368
  %74 = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %60, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %8)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #27
  br label %75

75:                                               ; preds = %69, %71, %59
  %76 = phi ptr [ %60, %59 ], [ %74, %71 ], [ %60, %69 ]
  %77 = icmp eq ptr %76, %2
  br i1 %77, label %85, label %78

78:                                               ; preds = %75
  %79 = load i8, ptr %76, align 1, !tbaa !216
  %80 = icmp eq i8 %79, 125
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = getelementptr inbounds nuw i8, ptr %76, i64 1
  store ptr %82, ptr %0, align 8, !tbaa !357
  %83 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %84 = load i32, ptr %7, align 4, !tbaa !360
  store i32 %84, ptr %83, align 8, !tbaa !354
  br label %86

85:                                               ; preds = %75, %78, %57
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.28) #25
  unreachable

86:                                               ; preds = %55, %81
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %4 = ptrtoint ptr %0 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = load i8, ptr %0, align 1, !tbaa !216
  %7 = add i8 %6, -48
  %8 = icmp ult i8 %7, 10
  br i1 %8, label %9, label %72

9:                                                ; preds = %3
  %10 = icmp eq i8 %6, 48
  br i1 %10, label %52, label %11

11:                                               ; preds = %9
  %12 = icmp eq ptr %0, %1
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = sub i64 %5, %4
  %15 = getelementptr i8, ptr %0, i64 %14
  br label %18

16:                                               ; preds = %11
  invoke void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 1324, ptr noundef nonnull @.str.26) #25
          to label %17 unwind label %49

17:                                               ; preds = %16
  unreachable

18:                                               ; preds = %28, %13
  %19 = phi i8 [ %29, %28 ], [ %6, %13 ]
  %20 = phi ptr [ %26, %28 ], [ %0, %13 ]
  %21 = phi i32 [ %25, %28 ], [ 0, %13 ]
  %22 = mul i32 %21, 10
  %23 = zext nneg i8 %19 to i32
  %24 = add nsw i32 %23, -48
  %25 = add i32 %24, %22
  %26 = getelementptr inbounds nuw i8, ptr %20, i64 1
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = load i8, ptr %26, align 1, !tbaa !216
  %30 = add i8 %29, -48
  %31 = icmp ult i8 %30, 10
  br i1 %31, label %18, label %32, !llvm.loop !361

32:                                               ; preds = %28, %18
  %33 = phi ptr [ %26, %28 ], [ %15, %18 ]
  %34 = ptrtoint ptr %33 to i64
  %35 = sub i64 %34, %4
  %36 = icmp slt i64 %35, 10
  br i1 %36, label %54, label %37

37:                                               ; preds = %32
  %38 = icmp eq i64 %35, 10
  br i1 %38, label %39, label %48

39:                                               ; preds = %37
  %40 = zext i32 %21 to i64
  %41 = mul nuw nsw i64 %40, 10
  %42 = load i8, ptr %20, align 1, !tbaa !216
  %43 = sext i8 %42 to i64
  %44 = add nsw i64 %43, 4294967248
  %45 = and i64 %44, 4294967294
  %46 = add nuw nsw i64 %45, %41
  %47 = icmp samesign ult i64 %46, 2147483648
  br i1 %47, label %54, label %48

48:                                               ; preds = %39, %37
  br label %54

49:                                               ; preds = %16
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  tail call void @__clang_call_terminate(ptr %51) #30
  unreachable

52:                                               ; preds = %9
  %53 = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %54

54:                                               ; preds = %48, %39, %32, %52
  %55 = phi ptr [ %53, %52 ], [ %33, %32 ], [ %33, %39 ], [ %33, %48 ]
  %56 = phi i32 [ 0, %52 ], [ %25, %32 ], [ %25, %39 ], [ 2147483647, %48 ]
  %57 = icmp eq ptr %55, %1
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i8, ptr %55, align 1, !tbaa !216
  switch i8 %59, label %60 [
    i8 125, label %61
    i8 58, label %61
  ]

60:                                               ; preds = %58, %54
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.28) #25
  unreachable

61:                                               ; preds = %58, %58
  %62 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %63 = load ptr, ptr %62, align 8, !tbaa !369, !nonnull !297, !align !299
  store i32 %56, ptr %63, align 8
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %65 = load ptr, ptr %64, align 8, !tbaa !371, !nonnull !297, !align !372
  store i32 1, ptr %65, align 4, !tbaa !360
  %66 = load ptr, ptr %2, align 8, !tbaa !373, !nonnull !297, !align !299
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 16
  %68 = load i32, ptr %67, align 8, !tbaa !362
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.30) #25
  unreachable

71:                                               ; preds = %61
  store i32 -1, ptr %67, align 8, !tbaa !362
  br label %110

72:                                               ; preds = %3
  %73 = and i8 %6, -33
  %74 = add i8 %73, -65
  %75 = icmp ult i8 %74, 26
  %76 = icmp eq i8 %6, 95
  %77 = or i1 %76, %75
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = sub i64 %5, %4
  %80 = getelementptr i8, ptr %0, i64 %79
  br label %82

81:                                               ; preds = %72
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.28) #25
  unreachable

82:                                               ; preds = %78, %86
  %83 = phi ptr [ %84, %86 ], [ %0, %78 ]
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 1
  %85 = icmp eq ptr %84, %1
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = load i8, ptr %84, align 1, !tbaa !216
  %88 = and i8 %87, -33
  %89 = add i8 %88, -65
  %90 = icmp ult i8 %89, 26
  %91 = icmp eq i8 %87, 95
  %92 = or i1 %91, %90
  %93 = add i8 %87, -48
  %94 = icmp ult i8 %93, 10
  %95 = or i1 %94, %92
  br i1 %95, label %82, label %96, !llvm.loop !374

96:                                               ; preds = %86, %82
  %97 = phi ptr [ %84, %86 ], [ %80, %82 ]
  %98 = ptrtoint ptr %97 to i64
  %99 = sub i64 %98, %4
  %100 = icmp sgt i64 %99, -1
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  tail call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

102:                                              ; preds = %96
  %103 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %104 = load ptr, ptr %103, align 8, !tbaa !369, !nonnull !297, !align !299
  store ptr %0, ptr %104, align 8
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 8
  store i64 %99, ptr %105, align 8
  %106 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %107 = load ptr, ptr %106, align 8, !tbaa !371, !nonnull !297, !align !372
  store i32 2, ptr %107, align 4, !tbaa !360
  %108 = load ptr, ptr %2, align 8, !tbaa !373, !nonnull !297, !align !299
  %109 = getelementptr inbounds nuw i8, ptr %108, i64 16
  store i32 -1, ptr %109, align 8, !tbaa !362
  br label %110

110:                                              ; preds = %102, %71
  %111 = phi ptr [ %55, %71 ], [ %97, %102 ]
  ret ptr %111
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRKNS2_6vectorIS8_NS6_IS8_EEEENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 {
  %4 = alloca %"class.fmt::v12::basic_string_view", align 8
  %5 = alloca %"class.fmt::v12::basic_string_view", align 8
  %6 = alloca %"struct.fmt::v12::format_specs", align 4
  %7 = load ptr, ptr %2, align 8, !tbaa !375
  %8 = load ptr, ptr %1, align 8, !tbaa !217
  call void @llvm.assume(i1 true) [ "align"(ptr %8, i64 8) ]
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !221
  call void @llvm.assume(i1 true) [ "align"(ptr %10, i64 8) ]
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %12 = load i8, ptr %11, align 8, !tbaa !348, !range !296, !noundef !297
  %13 = trunc nuw i8 %12 to i1
  br i1 %13, label %419, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %16 = load ptr, ptr %15, align 8, !tbaa !377
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %18 = load i64, ptr %17, align 8, !tbaa !27
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 %18
  %20 = icmp samesign eq i64 %18, 0
  br i1 %20, label %132, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %24 = ptrtoint ptr %19 to i64
  %25 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %26 = load i64, ptr %22, align 8, !tbaa !378
  br label %27

27:                                               ; preds = %108, %21
  %28 = phi i64 [ %26, %21 ], [ %110, %108 ]
  %29 = phi ptr [ %16, %21 ], [ %111, %108 ]
  %30 = ptrtoint ptr %29 to i64
  %31 = sub i64 %24, %30
  %32 = icmp sgt i64 %31, -1
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  tail call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

34:                                               ; preds = %27
  %35 = load i64, ptr %23, align 8, !tbaa !380
  %36 = sub i64 %35, %28
  %37 = icmp ult i64 %36, %31
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load ptr, ptr %25, align 8, !tbaa !381
  %40 = add i64 %31, %28
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %40)
  %41 = load i64, ptr %22, align 8, !tbaa !378
  %42 = load i64, ptr %23, align 8, !tbaa !380
  %43 = sub i64 %42, %41
  %44 = tail call i64 @llvm.umin.i64(i64 %31, i64 %43)
  br label %45

45:                                               ; preds = %38, %34
  %46 = phi i64 [ %41, %38 ], [ %28, %34 ]
  %47 = phi i64 [ %44, %38 ], [ %31, %34 ]
  %48 = load ptr, ptr %7, align 8, !tbaa !382
  %49 = ptrtoint ptr %48 to i64
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 %46
  %51 = icmp eq i64 %47, 0
  br i1 %51, label %108, label %52

52:                                               ; preds = %45
  %53 = icmp ult i64 %47, 4
  br i1 %53, label %54, label %71

54:                                               ; preds = %91, %104, %71, %52
  %55 = phi i64 [ 0, %52 ], [ 0, %71 ], [ %78, %91 ], [ %96, %104 ]
  %56 = and i64 %47, 3
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %54, %58
  %59 = phi i64 [ %64, %58 ], [ %55, %54 ]
  %60 = phi i64 [ %65, %58 ], [ 0, %54 ]
  %61 = getelementptr inbounds nuw i8, ptr %29, i64 %59
  %62 = load i8, ptr %61, align 1, !tbaa !216
  %63 = getelementptr inbounds nuw i8, ptr %50, i64 %59
  store i8 %62, ptr %63, align 1, !tbaa !216
  %64 = add nuw i64 %59, 1
  %65 = add i64 %60, 1
  %66 = icmp eq i64 %65, %56
  br i1 %66, label %67, label %58, !llvm.loop !383

67:                                               ; preds = %58, %54
  %68 = phi i64 [ %55, %54 ], [ %64, %58 ]
  %69 = sub i64 %55, %47
  %70 = icmp ugt i64 %69, -4
  br i1 %70, label %106, label %113

71:                                               ; preds = %52
  %72 = add i64 %46, %49
  %73 = sub i64 %72, %30
  %74 = icmp ult i64 %73, 32
  br i1 %74, label %54, label %75

75:                                               ; preds = %71
  %76 = icmp ult i64 %47, 32
  br i1 %76, label %94, label %77

77:                                               ; preds = %75
  %78 = and i64 %47, -32
  br label %79

79:                                               ; preds = %79, %77
  %80 = phi i64 [ 0, %77 ], [ %87, %79 ]
  %81 = getelementptr inbounds nuw i8, ptr %29, i64 %80
  %82 = getelementptr inbounds nuw i8, ptr %81, i64 16
  %83 = load <16 x i8>, ptr %81, align 1, !tbaa !216
  %84 = load <16 x i8>, ptr %82, align 1, !tbaa !216
  %85 = getelementptr inbounds nuw i8, ptr %50, i64 %80
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 16
  store <16 x i8> %83, ptr %85, align 1, !tbaa !216
  store <16 x i8> %84, ptr %86, align 1, !tbaa !216
  %87 = add nuw i64 %80, 32
  %88 = icmp eq i64 %87, %78
  br i1 %88, label %89, label %79, !llvm.loop !385

89:                                               ; preds = %79
  %90 = icmp eq i64 %47, %78
  br i1 %90, label %106, label %91

91:                                               ; preds = %89
  %92 = and i64 %47, 28
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %54, label %94

94:                                               ; preds = %91, %75
  %95 = phi i64 [ %78, %91 ], [ 0, %75 ]
  %96 = and i64 %47, -4
  br label %97

97:                                               ; preds = %97, %94
  %98 = phi i64 [ %95, %94 ], [ %102, %97 ]
  %99 = getelementptr inbounds nuw i8, ptr %29, i64 %98
  %100 = load <4 x i8>, ptr %99, align 1, !tbaa !216
  %101 = getelementptr inbounds nuw i8, ptr %50, i64 %98
  store <4 x i8> %100, ptr %101, align 1, !tbaa !216
  %102 = add nuw i64 %98, 4
  %103 = icmp eq i64 %102, %96
  br i1 %103, label %104, label %97, !llvm.loop !386

104:                                              ; preds = %97
  %105 = icmp eq i64 %47, %96
  br i1 %105, label %106, label %54

106:                                              ; preds = %67, %113, %104, %89
  %107 = load i64, ptr %22, align 8, !tbaa !378
  br label %108

108:                                              ; preds = %106, %45
  %109 = phi i64 [ %107, %106 ], [ %46, %45 ]
  %110 = add i64 %109, %47
  store i64 %110, ptr %22, align 8, !tbaa !378
  %111 = getelementptr inbounds nuw i8, ptr %29, i64 %47
  %112 = icmp eq ptr %111, %19
  br i1 %112, label %132, label %27, !llvm.loop !387

113:                                              ; preds = %67, %113
  %114 = phi i64 [ %130, %113 ], [ %68, %67 ]
  %115 = getelementptr inbounds nuw i8, ptr %29, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !216
  %117 = getelementptr inbounds nuw i8, ptr %50, i64 %114
  store i8 %116, ptr %117, align 1, !tbaa !216
  %118 = add nuw i64 %114, 1
  %119 = getelementptr inbounds nuw i8, ptr %29, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !216
  %121 = getelementptr inbounds nuw i8, ptr %50, i64 %118
  store i8 %120, ptr %121, align 1, !tbaa !216
  %122 = add nuw i64 %114, 2
  %123 = getelementptr inbounds nuw i8, ptr %29, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !216
  %125 = getelementptr inbounds nuw i8, ptr %50, i64 %122
  store i8 %124, ptr %125, align 1, !tbaa !216
  %126 = add nuw i64 %114, 3
  %127 = getelementptr inbounds nuw i8, ptr %29, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !216
  %129 = getelementptr inbounds nuw i8, ptr %50, i64 %126
  store i8 %128, ptr %129, align 1, !tbaa !216
  %130 = add nuw i64 %114, 4
  %131 = icmp eq i64 %130, %47
  br i1 %131, label %106, label %113, !llvm.loop !388

132:                                              ; preds = %108, %14
  %133 = icmp eq ptr %8, %10
  br i1 %133, label %300, label %134

134:                                              ; preds = %132
  %135 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %136 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %137 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %139 = getelementptr inbounds nuw i8, ptr %6, i64 12
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %141 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %142 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %143

143:                                              ; preds = %134, %294
  %144 = phi i32 [ 0, %134 ], [ %297, %294 ]
  %145 = phi ptr [ %7, %134 ], [ %296, %294 ]
  %146 = phi ptr [ %8, %134 ], [ %298, %294 ]
  %147 = icmp eq i32 %144, 0
  br i1 %147, label %264, label %148

148:                                              ; preds = %143
  %149 = load ptr, ptr %135, align 8, !tbaa !377
  %150 = load i64, ptr %136, align 8, !tbaa !27
  %151 = getelementptr inbounds nuw i8, ptr %149, i64 %150
  %152 = icmp samesign eq i64 %150, 0
  br i1 %152, label %264, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds nuw i8, ptr %145, i64 8
  %155 = getelementptr inbounds nuw i8, ptr %145, i64 16
  %156 = ptrtoint ptr %151 to i64
  %157 = getelementptr inbounds nuw i8, ptr %145, i64 24
  %158 = load i64, ptr %154, align 8, !tbaa !378
  br label %159

159:                                              ; preds = %240, %153
  %160 = phi i64 [ %158, %153 ], [ %242, %240 ]
  %161 = phi ptr [ %149, %153 ], [ %243, %240 ]
  %162 = ptrtoint ptr %161 to i64
  %163 = sub i64 %156, %162
  %164 = icmp sgt i64 %163, -1
  br i1 %164, label %166, label %165

165:                                              ; preds = %159
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

166:                                              ; preds = %159
  %167 = load i64, ptr %155, align 8, !tbaa !380
  %168 = sub i64 %167, %160
  %169 = icmp ult i64 %168, %163
  br i1 %169, label %170, label %177

170:                                              ; preds = %166
  %171 = load ptr, ptr %157, align 8, !tbaa !381
  %172 = add i64 %163, %160
  call void %171(ptr noundef nonnull align 8 dereferenceable(32) %145, i64 noundef %172)
  %173 = load i64, ptr %154, align 8, !tbaa !378
  %174 = load i64, ptr %155, align 8, !tbaa !380
  %175 = sub i64 %174, %173
  %176 = call i64 @llvm.umin.i64(i64 %163, i64 %175)
  br label %177

177:                                              ; preds = %170, %166
  %178 = phi i64 [ %173, %170 ], [ %160, %166 ]
  %179 = phi i64 [ %176, %170 ], [ %163, %166 ]
  %180 = load ptr, ptr %145, align 8, !tbaa !382
  %181 = ptrtoint ptr %180 to i64
  %182 = getelementptr inbounds nuw i8, ptr %180, i64 %178
  %183 = icmp eq i64 %179, 0
  br i1 %183, label %240, label %184

184:                                              ; preds = %177
  %185 = icmp ult i64 %179, 4
  br i1 %185, label %186, label %203

186:                                              ; preds = %223, %236, %203, %184
  %187 = phi i64 [ 0, %184 ], [ 0, %203 ], [ %210, %223 ], [ %228, %236 ]
  %188 = and i64 %179, 3
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %199, label %190

190:                                              ; preds = %186, %190
  %191 = phi i64 [ %196, %190 ], [ %187, %186 ]
  %192 = phi i64 [ %197, %190 ], [ 0, %186 ]
  %193 = getelementptr inbounds nuw i8, ptr %161, i64 %191
  %194 = load i8, ptr %193, align 1, !tbaa !216
  %195 = getelementptr inbounds nuw i8, ptr %182, i64 %191
  store i8 %194, ptr %195, align 1, !tbaa !216
  %196 = add nuw i64 %191, 1
  %197 = add i64 %192, 1
  %198 = icmp eq i64 %197, %188
  br i1 %198, label %199, label %190, !llvm.loop !389

199:                                              ; preds = %190, %186
  %200 = phi i64 [ %187, %186 ], [ %196, %190 ]
  %201 = sub i64 %187, %179
  %202 = icmp ugt i64 %201, -4
  br i1 %202, label %238, label %245

203:                                              ; preds = %184
  %204 = add i64 %178, %181
  %205 = sub i64 %204, %162
  %206 = icmp ult i64 %205, 32
  br i1 %206, label %186, label %207

207:                                              ; preds = %203
  %208 = icmp ult i64 %179, 32
  br i1 %208, label %226, label %209

209:                                              ; preds = %207
  %210 = and i64 %179, -32
  br label %211

211:                                              ; preds = %211, %209
  %212 = phi i64 [ 0, %209 ], [ %219, %211 ]
  %213 = getelementptr inbounds nuw i8, ptr %161, i64 %212
  %214 = getelementptr inbounds nuw i8, ptr %213, i64 16
  %215 = load <16 x i8>, ptr %213, align 1, !tbaa !216
  %216 = load <16 x i8>, ptr %214, align 1, !tbaa !216
  %217 = getelementptr inbounds nuw i8, ptr %182, i64 %212
  %218 = getelementptr inbounds nuw i8, ptr %217, i64 16
  store <16 x i8> %215, ptr %217, align 1, !tbaa !216
  store <16 x i8> %216, ptr %218, align 1, !tbaa !216
  %219 = add nuw i64 %212, 32
  %220 = icmp eq i64 %219, %210
  br i1 %220, label %221, label %211, !llvm.loop !390

221:                                              ; preds = %211
  %222 = icmp eq i64 %179, %210
  br i1 %222, label %238, label %223

223:                                              ; preds = %221
  %224 = and i64 %179, 28
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %186, label %226

226:                                              ; preds = %223, %207
  %227 = phi i64 [ %210, %223 ], [ 0, %207 ]
  %228 = and i64 %179, -4
  br label %229

229:                                              ; preds = %229, %226
  %230 = phi i64 [ %227, %226 ], [ %234, %229 ]
  %231 = getelementptr inbounds nuw i8, ptr %161, i64 %230
  %232 = load <4 x i8>, ptr %231, align 1, !tbaa !216
  %233 = getelementptr inbounds nuw i8, ptr %182, i64 %230
  store <4 x i8> %232, ptr %233, align 1, !tbaa !216
  %234 = add nuw i64 %230, 4
  %235 = icmp eq i64 %234, %228
  br i1 %235, label %236, label %229, !llvm.loop !391

236:                                              ; preds = %229
  %237 = icmp eq i64 %179, %228
  br i1 %237, label %238, label %186

238:                                              ; preds = %199, %245, %236, %221
  %239 = load i64, ptr %154, align 8, !tbaa !378
  br label %240

240:                                              ; preds = %238, %177
  %241 = phi i64 [ %239, %238 ], [ %178, %177 ]
  %242 = add i64 %241, %179
  store i64 %242, ptr %154, align 8, !tbaa !378
  %243 = getelementptr inbounds nuw i8, ptr %161, i64 %179
  %244 = icmp eq ptr %243, %151
  br i1 %244, label %264, label %159, !llvm.loop !387

245:                                              ; preds = %199, %245
  %246 = phi i64 [ %262, %245 ], [ %200, %199 ]
  %247 = getelementptr inbounds nuw i8, ptr %161, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !216
  %249 = getelementptr inbounds nuw i8, ptr %182, i64 %246
  store i8 %248, ptr %249, align 1, !tbaa !216
  %250 = add nuw i64 %246, 1
  %251 = getelementptr inbounds nuw i8, ptr %161, i64 %250
  %252 = load i8, ptr %251, align 1, !tbaa !216
  %253 = getelementptr inbounds nuw i8, ptr %182, i64 %250
  store i8 %252, ptr %253, align 1, !tbaa !216
  %254 = add nuw i64 %246, 2
  %255 = getelementptr inbounds nuw i8, ptr %161, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !216
  %257 = getelementptr inbounds nuw i8, ptr %182, i64 %254
  store i8 %256, ptr %257, align 1, !tbaa !216
  %258 = add nuw i64 %246, 3
  %259 = getelementptr inbounds nuw i8, ptr %161, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !216
  %261 = getelementptr inbounds nuw i8, ptr %182, i64 %258
  store i8 %260, ptr %261, align 1, !tbaa !216
  %262 = add nuw i64 %246, 4
  %263 = icmp eq i64 %262, %179
  br i1 %263, label %238, label %245, !llvm.loop !392

264:                                              ; preds = %240, %148, %143
  %265 = load i8, ptr %146, align 8
  %266 = and i8 %265, 1
  %267 = icmp eq i8 %266, 0
  %268 = getelementptr inbounds nuw i8, ptr %146, i64 16
  %269 = load ptr, ptr %268, align 8
  %270 = getelementptr inbounds nuw i8, ptr %146, i64 1
  %271 = select i1 %267, ptr %270, ptr %269
  %272 = getelementptr inbounds nuw i8, ptr %146, i64 8
  %273 = load i64, ptr %272, align 8
  %274 = lshr i8 %265, 1
  %275 = zext nneg i8 %274 to i64
  %276 = select i1 %267, i64 %275, i64 %273
  %277 = load i32, ptr %0, align 8, !tbaa !331
  %278 = and i32 %277, 960
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %264
  %281 = load ptr, ptr %2, align 8, !tbaa !375
  %282 = ptrtoint ptr %281 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  store ptr %271, ptr %5, align 8
  store i64 %276, ptr %142, align 8
  %283 = call i64 @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsE(i64 %282, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  br label %294

284:                                              ; preds = %264
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 16, i1 false)
  %285 = load i32, ptr %6, align 4, !tbaa !331
  %286 = lshr i32 %285, 6
  %287 = and i32 %286, 3
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %287, ptr noundef nonnull align 4 dereferenceable(4) %137, ptr noundef nonnull align 8 dereferenceable(16) %138, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %288 = load i32, ptr %6, align 4, !tbaa !331
  %289 = lshr i32 %288, 8
  %290 = and i32 %289, 3
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %290, ptr noundef nonnull align 4 dereferenceable(4) %139, ptr noundef nonnull align 8 dereferenceable(16) %140, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %291 = load ptr, ptr %2, align 8, !tbaa !375
  %292 = ptrtoint ptr %291 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  store ptr %271, ptr %4, align 8
  store i64 %276, ptr %141, align 8
  %293 = call i64 @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsE(i64 %292, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #27
  br label %294

294:                                              ; preds = %280, %284
  %295 = phi i64 [ %293, %284 ], [ %283, %280 ]
  %296 = inttoptr i64 %295 to ptr
  %297 = add nuw nsw i32 %144, 1
  %298 = getelementptr inbounds nuw i8, ptr %146, i64 24
  %299 = icmp eq ptr %298, %10
  br i1 %299, label %300, label %143, !llvm.loop !393

300:                                              ; preds = %294, %132
  %301 = phi ptr [ %7, %132 ], [ %296, %294 ]
  %302 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %303 = load ptr, ptr %302, align 8, !tbaa !377
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %305 = load i64, ptr %304, align 8, !tbaa !27
  %306 = getelementptr inbounds nuw i8, ptr %303, i64 %305
  %307 = icmp samesign eq i64 %305, 0
  br i1 %307, label %419, label %308

308:                                              ; preds = %300
  %309 = getelementptr inbounds nuw i8, ptr %301, i64 8
  %310 = getelementptr inbounds nuw i8, ptr %301, i64 16
  %311 = ptrtoint ptr %306 to i64
  %312 = getelementptr inbounds nuw i8, ptr %301, i64 24
  %313 = load i64, ptr %309, align 8, !tbaa !378
  br label %314

314:                                              ; preds = %395, %308
  %315 = phi i64 [ %313, %308 ], [ %397, %395 ]
  %316 = phi ptr [ %303, %308 ], [ %398, %395 ]
  %317 = ptrtoint ptr %316 to i64
  %318 = sub i64 %311, %317
  %319 = icmp sgt i64 %318, -1
  br i1 %319, label %321, label %320

320:                                              ; preds = %314
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

321:                                              ; preds = %314
  %322 = load i64, ptr %310, align 8, !tbaa !380
  %323 = sub i64 %322, %315
  %324 = icmp ult i64 %323, %318
  br i1 %324, label %325, label %332

325:                                              ; preds = %321
  %326 = load ptr, ptr %312, align 8, !tbaa !381
  %327 = add i64 %318, %315
  call void %326(ptr noundef nonnull align 8 dereferenceable(32) %301, i64 noundef %327)
  %328 = load i64, ptr %309, align 8, !tbaa !378
  %329 = load i64, ptr %310, align 8, !tbaa !380
  %330 = sub i64 %329, %328
  %331 = call i64 @llvm.umin.i64(i64 %318, i64 %330)
  br label %332

332:                                              ; preds = %325, %321
  %333 = phi i64 [ %328, %325 ], [ %315, %321 ]
  %334 = phi i64 [ %331, %325 ], [ %318, %321 ]
  %335 = load ptr, ptr %301, align 8, !tbaa !382
  %336 = ptrtoint ptr %335 to i64
  %337 = getelementptr inbounds nuw i8, ptr %335, i64 %333
  %338 = icmp eq i64 %334, 0
  br i1 %338, label %395, label %339

339:                                              ; preds = %332
  %340 = icmp ult i64 %334, 4
  br i1 %340, label %341, label %358

341:                                              ; preds = %378, %391, %358, %339
  %342 = phi i64 [ 0, %339 ], [ 0, %358 ], [ %365, %378 ], [ %383, %391 ]
  %343 = and i64 %334, 3
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %354, label %345

345:                                              ; preds = %341, %345
  %346 = phi i64 [ %351, %345 ], [ %342, %341 ]
  %347 = phi i64 [ %352, %345 ], [ 0, %341 ]
  %348 = getelementptr inbounds nuw i8, ptr %316, i64 %346
  %349 = load i8, ptr %348, align 1, !tbaa !216
  %350 = getelementptr inbounds nuw i8, ptr %337, i64 %346
  store i8 %349, ptr %350, align 1, !tbaa !216
  %351 = add nuw i64 %346, 1
  %352 = add i64 %347, 1
  %353 = icmp eq i64 %352, %343
  br i1 %353, label %354, label %345, !llvm.loop !394

354:                                              ; preds = %345, %341
  %355 = phi i64 [ %342, %341 ], [ %351, %345 ]
  %356 = sub i64 %342, %334
  %357 = icmp ugt i64 %356, -4
  br i1 %357, label %393, label %400

358:                                              ; preds = %339
  %359 = add i64 %333, %336
  %360 = sub i64 %359, %317
  %361 = icmp ult i64 %360, 32
  br i1 %361, label %341, label %362

362:                                              ; preds = %358
  %363 = icmp ult i64 %334, 32
  br i1 %363, label %381, label %364

364:                                              ; preds = %362
  %365 = and i64 %334, -32
  br label %366

366:                                              ; preds = %366, %364
  %367 = phi i64 [ 0, %364 ], [ %374, %366 ]
  %368 = getelementptr inbounds nuw i8, ptr %316, i64 %367
  %369 = getelementptr inbounds nuw i8, ptr %368, i64 16
  %370 = load <16 x i8>, ptr %368, align 1, !tbaa !216
  %371 = load <16 x i8>, ptr %369, align 1, !tbaa !216
  %372 = getelementptr inbounds nuw i8, ptr %337, i64 %367
  %373 = getelementptr inbounds nuw i8, ptr %372, i64 16
  store <16 x i8> %370, ptr %372, align 1, !tbaa !216
  store <16 x i8> %371, ptr %373, align 1, !tbaa !216
  %374 = add nuw i64 %367, 32
  %375 = icmp eq i64 %374, %365
  br i1 %375, label %376, label %366, !llvm.loop !395

376:                                              ; preds = %366
  %377 = icmp eq i64 %334, %365
  br i1 %377, label %393, label %378

378:                                              ; preds = %376
  %379 = and i64 %334, 28
  %380 = icmp eq i64 %379, 0
  br i1 %380, label %341, label %381

381:                                              ; preds = %378, %362
  %382 = phi i64 [ %365, %378 ], [ 0, %362 ]
  %383 = and i64 %334, -4
  br label %384

384:                                              ; preds = %384, %381
  %385 = phi i64 [ %382, %381 ], [ %389, %384 ]
  %386 = getelementptr inbounds nuw i8, ptr %316, i64 %385
  %387 = load <4 x i8>, ptr %386, align 1, !tbaa !216
  %388 = getelementptr inbounds nuw i8, ptr %337, i64 %385
  store <4 x i8> %387, ptr %388, align 1, !tbaa !216
  %389 = add nuw i64 %385, 4
  %390 = icmp eq i64 %389, %383
  br i1 %390, label %391, label %384, !llvm.loop !396

391:                                              ; preds = %384
  %392 = icmp eq i64 %334, %383
  br i1 %392, label %393, label %341

393:                                              ; preds = %354, %400, %391, %376
  %394 = load i64, ptr %309, align 8, !tbaa !378
  br label %395

395:                                              ; preds = %393, %332
  %396 = phi i64 [ %394, %393 ], [ %333, %332 ]
  %397 = add i64 %396, %334
  store i64 %397, ptr %309, align 8, !tbaa !378
  %398 = getelementptr inbounds nuw i8, ptr %316, i64 %334
  %399 = icmp eq ptr %398, %306
  br i1 %399, label %419, label %314, !llvm.loop !387

400:                                              ; preds = %354, %400
  %401 = phi i64 [ %417, %400 ], [ %355, %354 ]
  %402 = getelementptr inbounds nuw i8, ptr %316, i64 %401
  %403 = load i8, ptr %402, align 1, !tbaa !216
  %404 = getelementptr inbounds nuw i8, ptr %337, i64 %401
  store i8 %403, ptr %404, align 1, !tbaa !216
  %405 = add nuw i64 %401, 1
  %406 = getelementptr inbounds nuw i8, ptr %316, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !216
  %408 = getelementptr inbounds nuw i8, ptr %337, i64 %405
  store i8 %407, ptr %408, align 1, !tbaa !216
  %409 = add nuw i64 %401, 2
  %410 = getelementptr inbounds nuw i8, ptr %316, i64 %409
  %411 = load i8, ptr %410, align 1, !tbaa !216
  %412 = getelementptr inbounds nuw i8, ptr %337, i64 %409
  store i8 %411, ptr %412, align 1, !tbaa !216
  %413 = add nuw i64 %401, 3
  %414 = getelementptr inbounds nuw i8, ptr %316, i64 %413
  %415 = load i8, ptr %414, align 1, !tbaa !216
  %416 = getelementptr inbounds nuw i8, ptr %337, i64 %413
  store i8 %415, ptr %416, align 1, !tbaa !216
  %417 = add nuw i64 %401, 4
  %418 = icmp eq i64 %417, %334
  br i1 %418, label %393, label %400, !llvm.loop !397

419:                                              ; preds = %395, %300, %3
  %420 = phi ptr [ %7, %3 ], [ %301, %300 ], [ %301, %395 ]
  %421 = ptrtoint ptr %420 to i64
  ret i64 %421
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat {
  %5 = alloca %"class.fmt::v12::basic_format_arg", align 16
  %6 = alloca %"struct.fmt::v12::detail::dynamic_spec_getter", align 1
  %7 = icmp eq i32 %0, 0
  br i1 %7, label %108, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %9 = icmp eq i32 %0, 1
  br i1 %9, label %10, label %38

10:                                               ; preds = %8
  %11 = load i32, ptr %2, align 8, !tbaa !216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %13, align 16, !tbaa !404, !alias.scope !408
  %14 = load i64, ptr %12, align 8, !tbaa !236, !noalias !408
  %15 = icmp sgt i64 %14, -1
  br i1 %15, label %24, label %16

16:                                               ; preds = %10
  %17 = trunc i64 %14 to i32
  %18 = icmp slt i32 %11, %17
  br i1 %18, label %19, label %97

19:                                               ; preds = %16
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %21 = load ptr, ptr %20, align 8, !tbaa !216, !noalias !408
  %22 = sext i32 %11 to i64
  %23 = getelementptr inbounds %"class.fmt::v12::basic_format_arg", ptr %21, i64 %22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %5, ptr noundef nonnull align 16 dereferenceable(20) %23, i64 20, i1 false), !tbaa.struct !409
  br label %97

24:                                               ; preds = %10
  %25 = icmp ugt i32 %11, 14
  br i1 %25, label %97, label %26

26:                                               ; preds = %24
  %27 = shl nuw nsw i32 %11, 2
  %28 = zext nneg i32 %27 to i64
  %29 = lshr i64 %14, %28
  %30 = trunc i64 %29 to i32
  %31 = and i32 %30, 15
  store i32 %31, ptr %13, align 16, !tbaa !404, !alias.scope !408
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %97, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %35 = load ptr, ptr %34, align 8, !tbaa !216, !noalias !408
  %36 = zext nneg i32 %11 to i64
  %37 = getelementptr inbounds nuw %"class.fmt::v12::detail::value", ptr %35, i64 %36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %37, i64 16, i1 false), !tbaa.struct !411
  br label %97

38:                                               ; preds = %8
  %39 = load ptr, ptr %2, align 8, !tbaa !377
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %41 = load i64, ptr %40, align 8, !tbaa !27
  %42 = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %43 = load i64, ptr %42, align 8, !tbaa !236, !noalias !412
  %44 = and i64 %43, 4611686018427387904
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %95, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %48 = load ptr, ptr %47, align 8, !noalias !412
  %49 = icmp slt i64 %43, 0
  %50 = select i1 %49, i64 -32, i64 -16
  %51 = getelementptr inbounds i8, ptr %48, i64 %50
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 8
  %53 = load i64, ptr %52, align 8, !tbaa !415, !noalias !412
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %95, label %55

55:                                               ; preds = %46
  %56 = load ptr, ptr %51, align 8, !tbaa !418, !noalias !412
  br label %57

57:                                               ; preds = %67, %55
  %58 = phi i64 [ 0, %55 ], [ %68, %67 ]
  %59 = getelementptr inbounds nuw %"struct.fmt::v12::detail::named_arg_info", ptr %56, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !419, !noalias !412
  %61 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %60) #27, !noalias !412
  %62 = tail call noundef i64 @llvm.umin.i64(i64 %61, i64 %41)
  %63 = tail call noundef i32 @memcmp(ptr noundef nonnull %60, ptr noundef %39, i64 noundef %62), !noalias !412
  %64 = icmp eq i32 %63, 0
  %65 = icmp eq i64 %61, %41
  %66 = and i1 %65, %64
  br i1 %66, label %70, label %67

67:                                               ; preds = %57
  %68 = add nuw i64 %58, 1
  %69 = icmp eq i64 %68, %53
  br i1 %69, label %95, label %57, !llvm.loop !421

70:                                               ; preds = %57
  %71 = getelementptr inbounds nuw %"struct.fmt::v12::detail::named_arg_info", ptr %56, i64 %58, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !422, !noalias !412
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %75, align 16, !tbaa !404, !alias.scope !423
  %76 = icmp sgt i64 %43, -1
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = trunc i64 %43 to i32
  %79 = icmp slt i32 %72, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = zext nneg i32 %72 to i64
  %82 = getelementptr inbounds nuw %"class.fmt::v12::basic_format_arg", ptr %48, i64 %81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %5, ptr noundef nonnull align 16 dereferenceable(20) %82, i64 20, i1 false), !tbaa.struct !409
  br label %97

83:                                               ; preds = %74
  %84 = icmp samesign ugt i32 %72, 14
  br i1 %84, label %97, label %85

85:                                               ; preds = %83
  %86 = shl nuw nsw i32 %72, 2
  %87 = zext nneg i32 %86 to i64
  %88 = lshr i64 %43, %87
  %89 = trunc i64 %88 to i32
  %90 = and i32 %89, 15
  store i32 %90, ptr %75, align 16, !tbaa !404, !alias.scope !423
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %85
  %93 = zext nneg i32 %72 to i64
  %94 = getelementptr inbounds nuw %"class.fmt::v12::detail::value", ptr %48, i64 %93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %94, i64 16, i1 false), !tbaa.struct !411
  br label %97

95:                                               ; preds = %67, %70, %46, %38
  %96 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %96, align 16, !tbaa !404, !alias.scope !412
  br label %97

97:                                               ; preds = %95, %92, %85, %83, %80, %77, %33, %26, %24, %19, %16
  %98 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %99 = load i32, ptr %98, align 16, !tbaa !404
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.37) #25
  unreachable

102:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #27
  %103 = call noundef i64 @_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_(ptr noundef nonnull align 16 dereferenceable(20) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #27
  %104 = icmp ugt i64 %103, 2147483647
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.38) #25
  unreachable

106:                                              ; preds = %102
  %107 = trunc nuw nsw i64 %103 to i32
  store i32 %107, ptr %1, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  br label %108

108:                                              ; preds = %4, %106
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsE(i64 %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #2 comdat {
  %4 = alloca %class.anon.129, align 8
  %5 = alloca [7 x i8], align 1
  %6 = ptrtoint ptr %5 to i64
  %7 = alloca i8, align 1
  %8 = alloca %"class.fmt::v12::basic_string_view", align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %class.anon.126, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #27
  %13 = load i32, ptr %2, align 4, !tbaa !331
  %14 = and i32 %13, 7
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i8
  store i8 %16, ptr %7, align 1, !tbaa !426
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %18 = load i32, ptr %17, align 4, !tbaa !333
  %19 = icmp slt i32 %18, 0
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %19, i1 %22, i1 false
  br i1 %23, label %24, label %154

24:                                               ; preds = %3
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !341
  %27 = inttoptr i64 %0 to ptr
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %29 = load i64, ptr %28, align 8, !tbaa !378
  %30 = add i64 %29, %26
  %31 = getelementptr inbounds nuw i8, ptr %27, i64 16
  %32 = load i64, ptr %31, align 8, !tbaa !380
  %33 = icmp ugt i64 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = getelementptr inbounds nuw i8, ptr %27, i64 24
  %36 = load ptr, ptr %35, align 8, !tbaa !381
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(32) %27, i64 noundef %30)
  br label %37

37:                                               ; preds = %24, %34
  br i1 %15, label %38, label %40

38:                                               ; preds = %37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !427
  %39 = call i64 @_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(i64 %0, ptr noundef nonnull %8)
  br label %301

40:                                               ; preds = %37
  %41 = load ptr, ptr %1, align 8, !tbaa !377
  %42 = load i64, ptr %25, align 8, !tbaa !27
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 %42
  %44 = icmp samesign eq i64 %42, 0
  br i1 %44, label %301, label %45

45:                                               ; preds = %40
  %46 = ptrtoint ptr %43 to i64
  %47 = getelementptr inbounds nuw i8, ptr %27, i64 24
  %48 = load i64, ptr %28, align 8, !tbaa !378
  br label %49

49:                                               ; preds = %130, %45
  %50 = phi i64 [ %48, %45 ], [ %132, %130 ]
  %51 = phi ptr [ %41, %45 ], [ %133, %130 ]
  %52 = ptrtoint ptr %51 to i64
  %53 = sub i64 %46, %52
  %54 = icmp sgt i64 %53, -1
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  tail call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

56:                                               ; preds = %49
  %57 = load i64, ptr %31, align 8, !tbaa !380
  %58 = sub i64 %57, %50
  %59 = icmp ult i64 %58, %53
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load ptr, ptr %47, align 8, !tbaa !381
  %62 = add i64 %53, %50
  tail call void %61(ptr noundef nonnull align 8 dereferenceable(32) %27, i64 noundef %62)
  %63 = load i64, ptr %28, align 8, !tbaa !378
  %64 = load i64, ptr %31, align 8, !tbaa !380
  %65 = sub i64 %64, %63
  %66 = tail call i64 @llvm.umin.i64(i64 %53, i64 %65)
  br label %67

67:                                               ; preds = %60, %56
  %68 = phi i64 [ %63, %60 ], [ %50, %56 ]
  %69 = phi i64 [ %66, %60 ], [ %53, %56 ]
  %70 = load ptr, ptr %27, align 8, !tbaa !382
  %71 = ptrtoint ptr %70 to i64
  %72 = getelementptr inbounds nuw i8, ptr %70, i64 %68
  %73 = icmp eq i64 %69, 0
  br i1 %73, label %130, label %74

74:                                               ; preds = %67
  %75 = icmp ult i64 %69, 4
  br i1 %75, label %76, label %93

76:                                               ; preds = %113, %126, %93, %74
  %77 = phi i64 [ 0, %74 ], [ 0, %93 ], [ %100, %113 ], [ %118, %126 ]
  %78 = and i64 %69, 3
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %76, %80
  %81 = phi i64 [ %86, %80 ], [ %77, %76 ]
  %82 = phi i64 [ %87, %80 ], [ 0, %76 ]
  %83 = getelementptr inbounds nuw i8, ptr %51, i64 %81
  %84 = load i8, ptr %83, align 1, !tbaa !216
  %85 = getelementptr inbounds nuw i8, ptr %72, i64 %81
  store i8 %84, ptr %85, align 1, !tbaa !216
  %86 = add nuw i64 %81, 1
  %87 = add i64 %82, 1
  %88 = icmp eq i64 %87, %78
  br i1 %88, label %89, label %80, !llvm.loop !428

89:                                               ; preds = %80, %76
  %90 = phi i64 [ %77, %76 ], [ %86, %80 ]
  %91 = sub i64 %77, %69
  %92 = icmp ugt i64 %91, -4
  br i1 %92, label %128, label %135

93:                                               ; preds = %74
  %94 = add i64 %68, %71
  %95 = sub i64 %94, %52
  %96 = icmp ult i64 %95, 32
  br i1 %96, label %76, label %97

97:                                               ; preds = %93
  %98 = icmp ult i64 %69, 32
  br i1 %98, label %116, label %99

99:                                               ; preds = %97
  %100 = and i64 %69, -32
  br label %101

101:                                              ; preds = %101, %99
  %102 = phi i64 [ 0, %99 ], [ %109, %101 ]
  %103 = getelementptr inbounds nuw i8, ptr %51, i64 %102
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 16
  %105 = load <16 x i8>, ptr %103, align 1, !tbaa !216
  %106 = load <16 x i8>, ptr %104, align 1, !tbaa !216
  %107 = getelementptr inbounds nuw i8, ptr %72, i64 %102
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 16
  store <16 x i8> %105, ptr %107, align 1, !tbaa !216
  store <16 x i8> %106, ptr %108, align 1, !tbaa !216
  %109 = add nuw i64 %102, 32
  %110 = icmp eq i64 %109, %100
  br i1 %110, label %111, label %101, !llvm.loop !429

111:                                              ; preds = %101
  %112 = icmp eq i64 %69, %100
  br i1 %112, label %128, label %113

113:                                              ; preds = %111
  %114 = and i64 %69, 28
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %76, label %116

116:                                              ; preds = %113, %97
  %117 = phi i64 [ %100, %113 ], [ 0, %97 ]
  %118 = and i64 %69, -4
  br label %119

119:                                              ; preds = %119, %116
  %120 = phi i64 [ %117, %116 ], [ %124, %119 ]
  %121 = getelementptr inbounds nuw i8, ptr %51, i64 %120
  %122 = load <4 x i8>, ptr %121, align 1, !tbaa !216
  %123 = getelementptr inbounds nuw i8, ptr %72, i64 %120
  store <4 x i8> %122, ptr %123, align 1, !tbaa !216
  %124 = add nuw i64 %120, 4
  %125 = icmp eq i64 %124, %118
  br i1 %125, label %126, label %119, !llvm.loop !430

126:                                              ; preds = %119
  %127 = icmp eq i64 %69, %118
  br i1 %127, label %128, label %76

128:                                              ; preds = %89, %135, %126, %111
  %129 = load i64, ptr %28, align 8, !tbaa !378
  br label %130

130:                                              ; preds = %128, %67
  %131 = phi i64 [ %129, %128 ], [ %68, %67 ]
  %132 = add i64 %131, %69
  store i64 %132, ptr %28, align 8, !tbaa !378
  %133 = getelementptr inbounds nuw i8, ptr %51, i64 %69
  %134 = icmp eq ptr %133, %43
  br i1 %134, label %301, label %49, !llvm.loop !387

135:                                              ; preds = %89, %135
  %136 = phi i64 [ %152, %135 ], [ %90, %89 ]
  %137 = getelementptr inbounds nuw i8, ptr %51, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !216
  %139 = getelementptr inbounds nuw i8, ptr %72, i64 %136
  store i8 %138, ptr %139, align 1, !tbaa !216
  %140 = add nuw i64 %136, 1
  %141 = getelementptr inbounds nuw i8, ptr %51, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !216
  %143 = getelementptr inbounds nuw i8, ptr %72, i64 %140
  store i8 %142, ptr %143, align 1, !tbaa !216
  %144 = add nuw i64 %136, 2
  %145 = getelementptr inbounds nuw i8, ptr %51, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !216
  %147 = getelementptr inbounds nuw i8, ptr %72, i64 %144
  store i8 %146, ptr %147, align 1, !tbaa !216
  %148 = add nuw i64 %136, 3
  %149 = getelementptr inbounds nuw i8, ptr %51, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !216
  %151 = getelementptr inbounds nuw i8, ptr %72, i64 %148
  store i8 %150, ptr %151, align 1, !tbaa !216
  %152 = add nuw i64 %136, 4
  %153 = icmp eq i64 %152, %69
  br i1 %153, label %128, label %135, !llvm.loop !431

154:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #27
  %155 = zext nneg i32 %18 to i64
  %156 = select i1 %19, i64 -1, i64 %155
  store i64 %156, ptr %9, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #27
  %157 = icmp ne i32 %18, 0
  %158 = and i1 %15, %157
  %159 = zext i1 %158 to i64
  store i64 %159, ptr %10, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #27
  store i64 %159, ptr %11, align 8, !tbaa !27
  %160 = load ptr, ptr %1, align 8, !tbaa !377
  %161 = ptrtoint ptr %160 to i64
  %162 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %163 = load i64, ptr %162, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #27
  store ptr %7, ptr %4, align 8, !tbaa !432
  %164 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %10, ptr %164, align 8, !tbaa !434
  %165 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %9, ptr %165, align 8, !tbaa !434
  %166 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %11, ptr %166, align 8, !tbaa !434
  %167 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %1, ptr %167, align 8, !tbaa !435
  %168 = icmp ugt i64 %163, 3
  br i1 %168, label %169, label %178

169:                                              ; preds = %154
  %170 = getelementptr inbounds nuw i8, ptr %160, i64 %163
  %171 = getelementptr inbounds i8, ptr %170, i64 -3
  br label %172

172:                                              ; preds = %175, %169
  %173 = phi ptr [ %160, %169 ], [ %176, %175 ]
  %174 = icmp ult ptr %173, %171
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = call noundef ptr @_ZZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUljNSC_IcEEE_EEvSH_S8_ENKUlPKcSK_E_clESK_SK_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %173, ptr noundef %173)
  %177 = icmp eq ptr %176, null
  br i1 %177, label %294, label %172, !llvm.loop !437

178:                                              ; preds = %172, %154
  %179 = phi ptr [ %160, %154 ], [ %173, %172 ]
  %180 = getelementptr inbounds nuw i8, ptr %160, i64 %163
  %181 = ptrtoint ptr %180 to i64
  %182 = ptrtoint ptr %179 to i64
  %183 = sub i64 %181, %182
  %184 = icmp sgt i64 %183, -1
  br i1 %184, label %186, label %185

185:                                              ; preds = %178
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

186:                                              ; preds = %178
  %187 = icmp eq ptr %180, %179
  br i1 %187, label %294, label %188

188:                                              ; preds = %186
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %5, i8 0, i64 7, i1 false)
  %189 = icmp ult i64 %183, 4
  %190 = sub i64 %6, %182
  %191 = icmp ult i64 %190, 32
  %192 = or i1 %189, %191
  br i1 %192, label %228, label %193

193:                                              ; preds = %188
  %194 = icmp ult i64 %183, 32
  br i1 %194, label %214, label %195

195:                                              ; preds = %193
  %196 = and i64 %183, 9223372036854775776
  br label %197

197:                                              ; preds = %197, %195
  %198 = phi i64 [ 0, %195 ], [ %205, %197 ]
  %199 = getelementptr i8, ptr %5, i64 %198
  %200 = getelementptr i8, ptr %179, i64 %198
  %201 = getelementptr i8, ptr %200, i64 16
  %202 = load <16 x i8>, ptr %200, align 1, !tbaa !216
  %203 = load <16 x i8>, ptr %201, align 1, !tbaa !216
  %204 = getelementptr i8, ptr %199, i64 16
  store <16 x i8> %202, ptr %199, align 1, !tbaa !216
  store <16 x i8> %203, ptr %204, align 1, !tbaa !216
  %205 = add nuw i64 %198, 32
  %206 = icmp eq i64 %205, %196
  br i1 %206, label %207, label %197, !llvm.loop !438

207:                                              ; preds = %197
  %208 = icmp eq i64 %183, %196
  br i1 %208, label %278, label %209

209:                                              ; preds = %207
  %210 = getelementptr i8, ptr %5, i64 %196
  %211 = getelementptr i8, ptr %179, i64 %196
  %212 = and i64 %183, 28
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %228, label %214

214:                                              ; preds = %209, %193
  %215 = phi i64 [ %196, %209 ], [ 0, %193 ]
  %216 = and i64 %183, 9223372036854775804
  %217 = getelementptr i8, ptr %5, i64 %216
  %218 = getelementptr i8, ptr %179, i64 %216
  br label %219

219:                                              ; preds = %219, %214
  %220 = phi i64 [ %215, %214 ], [ %224, %219 ]
  %221 = getelementptr i8, ptr %5, i64 %220
  %222 = getelementptr i8, ptr %179, i64 %220
  %223 = load <4 x i8>, ptr %222, align 1, !tbaa !216
  store <4 x i8> %223, ptr %221, align 1, !tbaa !216
  %224 = add nuw i64 %220, 4
  %225 = icmp eq i64 %224, %216
  br i1 %225, label %226, label %219, !llvm.loop !439

226:                                              ; preds = %219
  %227 = icmp eq i64 %183, %216
  br i1 %227, label %278, label %228

228:                                              ; preds = %209, %226, %188
  %229 = phi ptr [ %5, %188 ], [ %210, %209 ], [ %217, %226 ]
  %230 = phi ptr [ %179, %188 ], [ %211, %209 ], [ %218, %226 ]
  %231 = add i64 %163, %161
  %232 = ptrtoint ptr %230 to i64
  %233 = sub i64 %231, %232
  %234 = and i64 %233, 7
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %245, label %236

236:                                              ; preds = %228, %236
  %237 = phi ptr [ %242, %236 ], [ %229, %228 ]
  %238 = phi ptr [ %240, %236 ], [ %230, %228 ]
  %239 = phi i64 [ %243, %236 ], [ 0, %228 ]
  %240 = getelementptr inbounds nuw i8, ptr %238, i64 1
  %241 = load i8, ptr %238, align 1, !tbaa !216
  %242 = getelementptr inbounds nuw i8, ptr %237, i64 1
  store i8 %241, ptr %237, align 1, !tbaa !216
  %243 = add i64 %239, 1
  %244 = icmp eq i64 %243, %234
  br i1 %244, label %245, label %236, !llvm.loop !440

245:                                              ; preds = %236, %228
  %246 = phi ptr [ %229, %228 ], [ %242, %236 ]
  %247 = phi ptr [ %230, %228 ], [ %240, %236 ]
  %248 = sub i64 %232, %231
  %249 = icmp ugt i64 %248, -8
  br i1 %249, label %278, label %250

250:                                              ; preds = %245, %250
  %251 = phi ptr [ %276, %250 ], [ %246, %245 ]
  %252 = phi ptr [ %274, %250 ], [ %247, %245 ]
  %253 = getelementptr inbounds nuw i8, ptr %252, i64 1
  %254 = load i8, ptr %252, align 1, !tbaa !216
  %255 = getelementptr inbounds nuw i8, ptr %251, i64 1
  store i8 %254, ptr %251, align 1, !tbaa !216
  %256 = getelementptr inbounds nuw i8, ptr %252, i64 2
  %257 = load i8, ptr %253, align 1, !tbaa !216
  %258 = getelementptr inbounds nuw i8, ptr %251, i64 2
  store i8 %257, ptr %255, align 1, !tbaa !216
  %259 = getelementptr inbounds nuw i8, ptr %252, i64 3
  %260 = load i8, ptr %256, align 1, !tbaa !216
  %261 = getelementptr inbounds nuw i8, ptr %251, i64 3
  store i8 %260, ptr %258, align 1, !tbaa !216
  %262 = getelementptr inbounds nuw i8, ptr %252, i64 4
  %263 = load i8, ptr %259, align 1, !tbaa !216
  %264 = getelementptr inbounds nuw i8, ptr %251, i64 4
  store i8 %263, ptr %261, align 1, !tbaa !216
  %265 = getelementptr inbounds nuw i8, ptr %252, i64 5
  %266 = load i8, ptr %262, align 1, !tbaa !216
  %267 = getelementptr inbounds nuw i8, ptr %251, i64 5
  store i8 %266, ptr %264, align 1, !tbaa !216
  %268 = getelementptr inbounds nuw i8, ptr %252, i64 6
  %269 = load i8, ptr %265, align 1, !tbaa !216
  %270 = getelementptr inbounds nuw i8, ptr %251, i64 6
  store i8 %269, ptr %267, align 1, !tbaa !216
  %271 = getelementptr inbounds nuw i8, ptr %252, i64 7
  %272 = load i8, ptr %268, align 1, !tbaa !216
  %273 = getelementptr inbounds nuw i8, ptr %251, i64 7
  store i8 %272, ptr %270, align 1, !tbaa !216
  %274 = getelementptr inbounds nuw i8, ptr %252, i64 8
  %275 = load i8, ptr %271, align 1, !tbaa !216
  %276 = getelementptr inbounds nuw i8, ptr %251, i64 8
  store i8 %275, ptr %273, align 1, !tbaa !216
  %277 = icmp eq ptr %274, %180
  br i1 %277, label %278, label %250, !llvm.loop !441

278:                                              ; preds = %245, %250, %226, %207
  %279 = getelementptr inbounds nuw i8, ptr %5, i64 %183
  br label %280

280:                                              ; preds = %280, %278
  %281 = phi ptr [ %288, %280 ], [ %5, %278 ]
  %282 = phi ptr [ %290, %280 ], [ %179, %278 ]
  %283 = call noundef ptr @_ZZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUljNSC_IcEEE_EEvSH_S8_ENKUlPKcSK_E_clESK_SK_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %281, ptr noundef %282)
  %284 = icmp ne ptr %283, null
  %285 = ptrtoint ptr %283 to i64
  %286 = ptrtoint ptr %281 to i64
  %287 = sub i64 %285, %286
  %288 = select i1 %284, ptr %283, ptr %281
  %289 = select i1 %284, i64 %287, i64 0
  %290 = getelementptr inbounds i8, ptr %282, i64 %289
  %291 = icmp ult ptr %288, %279
  %292 = select i1 %284, i1 %291, i1 false
  br i1 %292, label %280, label %293, !llvm.loop !442

293:                                              ; preds = %280
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #27
  br label %294

294:                                              ; preds = %175, %186, %293
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #27
  %295 = load i64, ptr %11, align 8, !tbaa !27
  %296 = load i64, ptr %10, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #27
  %297 = load i8, ptr %7, align 1, !tbaa !426, !range !296, !noundef !297
  store i8 %297, ptr %12, align 8, !tbaa !443
  %298 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %295, ptr %298, align 8, !tbaa !445
  %299 = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %299, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !427
  %300 = call i64 @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEEUlS5_E_EET1_SJ_SH_yyOT2_(i64 %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %295, i64 noundef %296, ptr noundef nonnull align 8 dereferenceable(32) %12)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #27
  br label %301

301:                                              ; preds = %130, %40, %38, %294
  %302 = phi i64 [ %300, %294 ], [ %39, %38 ], [ %0, %40 ], [ %0, %130 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #27
  ret i64 %302
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(i64 %0, ptr noundef %1) local_unnamed_addr #2 comdat {
  %3 = alloca [7 x i8], align 1
  %4 = ptrtoint ptr %3 to i64
  %5 = alloca %"struct.fmt::v12::detail::find_escape_result", align 8
  %6 = inttoptr i64 %0 to ptr
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !378
  %9 = add i64 %8, 1
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %11 = load i64, ptr %10, align 8, !tbaa !380
  %12 = icmp ugt i64 %9, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %15 = load ptr, ptr %14, align 8, !tbaa !381
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %9)
  %16 = load i64, ptr %7, align 8, !tbaa !378
  %17 = add i64 %16, 1
  br label %18

18:                                               ; preds = %2, %13
  %19 = phi i64 [ %9, %2 ], [ %17, %13 ]
  %20 = phi i64 [ %8, %2 ], [ %16, %13 ]
  %21 = load ptr, ptr %6, align 8, !tbaa !382
  store i64 %19, ptr %7, align 8, !tbaa !378
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 %20
  store i8 34, ptr %22, align 1, !tbaa !216
  %23 = load ptr, ptr %1, align 8, !tbaa !335
  %24 = ptrtoint ptr %23 to i64
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa !341
  %27 = getelementptr inbounds nuw i8, ptr %23, i64 %26
  %28 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %29 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %30 = ptrtoint ptr %27 to i64
  %31 = add i64 %26, %24
  %32 = add i64 %26, %24
  %33 = add i64 %26, %24
  br label %34

34:                                               ; preds = %431, %18
  %35 = phi ptr [ %6, %18 ], [ %433, %431 ]
  %36 = phi ptr [ %23, %18 ], [ %428, %431 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  store ptr %27, ptr %5, align 8, !tbaa !449, !alias.scope !446
  store ptr null, ptr %28, align 8, !tbaa !451, !alias.scope !446
  store i32 0, ptr %29, align 8, !tbaa !452, !alias.scope !446
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %30, %37
  %39 = icmp sgt i64 %38, -1
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25, !noalias !446
  unreachable

41:                                               ; preds = %34
  %42 = icmp samesign ugt i64 %38, 3
  br i1 %42, label %43, label %130

43:                                               ; preds = %41
  %44 = getelementptr inbounds nuw i8, ptr %36, i64 %38
  %45 = getelementptr inbounds i8, ptr %44, i64 -3
  br label %46

46:                                               ; preds = %43, %122
  %47 = phi ptr [ %123, %122 ], [ %36, %43 ]
  %48 = load i8, ptr %47, align 1, !tbaa !216
  %49 = zext i8 %48 to i32
  %50 = lshr i32 %49, 3
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds nuw [32 x i8], ptr @.str.33, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !216
  %54 = sext i8 %53 to i64
  %55 = getelementptr inbounds i8, ptr %47, i64 %54
  %56 = lshr i32 -2130771968, %50
  %57 = and i32 %56, 1
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds nuw i8, ptr %55, i64 %58
  %60 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 0, i64 %54
  %61 = load i32, ptr %60, align 4, !tbaa !16
  %62 = and i32 %61, %49
  %63 = shl nuw nsw i32 %62, 18
  %64 = getelementptr inbounds nuw i8, ptr %47, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !216
  %66 = and i8 %65, 63
  %67 = zext nneg i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 12
  %69 = or disjoint i32 %68, %63
  %70 = getelementptr inbounds nuw i8, ptr %47, i64 2
  %71 = load i8, ptr %70, align 1, !tbaa !216
  %72 = and i8 %71, 63
  %73 = zext nneg i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 6
  %75 = or disjoint i32 %74, %69
  %76 = getelementptr inbounds nuw i8, ptr %47, i64 3
  %77 = load i8, ptr %76, align 1, !tbaa !216
  %78 = and i8 %77, 63
  %79 = zext nneg i8 %78 to i32
  %80 = or disjoint i32 %75, %79
  %81 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 0, i64 %54
  %82 = load i32, ptr %81, align 4, !tbaa !16
  %83 = lshr i32 %80, %82
  %84 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 0, i64 %54
  %85 = load i32, ptr %84, align 4, !tbaa !16
  %86 = icmp ult i32 %83, %85
  %87 = select i1 %86, i32 64, i32 0
  %88 = and i32 %83, 2147481600
  %89 = icmp eq i32 %88, 55296
  %90 = select i1 %89, i32 128, i32 0
  %91 = icmp samesign ugt i32 %83, 1114111
  %92 = select i1 %91, i32 256, i32 0
  %93 = lshr i8 %65, 2
  %94 = and i8 %93, 48
  %95 = lshr i8 %71, 4
  %96 = and i8 %95, 12
  %97 = lshr i8 %77, 6
  %98 = or disjoint i8 %96, %94
  %99 = or disjoint i8 %98, %97
  %100 = zext nneg i8 %99 to i32
  %101 = or disjoint i32 %87, %100
  %102 = or disjoint i32 %101, %92
  %103 = or disjoint i32 %102, %90
  %104 = xor i32 %103, 42
  %105 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 0, i64 %54
  %106 = load i32, ptr %105, align 4, !tbaa !16
  %107 = lshr i32 %104, %106
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %108, i32 %83, i32 -1
  br i1 %108, label %110, label %114

110:                                              ; preds = %46
  %111 = add nsw i64 %58, %54
  %112 = icmp sgt i64 %111, -1
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

114:                                              ; preds = %110, %46
  %115 = phi i64 [ 1, %46 ], [ %111, %110 ]
  %116 = icmp ult i32 %109, 32
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  switch i32 %109, label %118 [
    i32 127, label %120
    i32 92, label %120
    i32 34, label %120
  ]

118:                                              ; preds = %117
  %119 = call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %109)
  br i1 %119, label %122, label %120

120:                                              ; preds = %114, %117, %117, %117, %118
  %121 = getelementptr inbounds nuw i8, ptr %47, i64 %115
  store ptr %47, ptr %5, align 8, !tbaa !377
  store ptr %121, ptr %28, align 8, !tbaa !377
  store i32 %109, ptr %29, align 8, !tbaa !16
  br label %312

122:                                              ; preds = %118
  %123 = select i1 %108, ptr %59, ptr %64
  %124 = icmp ult ptr %123, %45
  br i1 %124, label %46, label %125, !llvm.loop !453

125:                                              ; preds = %122
  %126 = ptrtoint ptr %123 to i64
  %127 = sub i64 %30, %126
  %128 = icmp sgt i64 %127, -1
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

130:                                              ; preds = %125, %41
  %131 = phi ptr [ %123, %125 ], [ %36, %41 ]
  %132 = phi i64 [ %127, %125 ], [ %38, %41 ]
  %133 = icmp eq ptr %27, %131
  br i1 %133, label %312, label %134

134:                                              ; preds = %130
  %135 = ptrtoint ptr %131 to i64
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #27, !noalias !446
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %3, i8 0, i64 7, i1 false), !noalias !446
  %136 = sub i64 %31, %135
  %137 = icmp ult i64 %136, 4
  %138 = sub i64 %4, %135
  %139 = icmp ult i64 %138, 32
  %140 = or i1 %137, %139
  br i1 %140, label %176, label %141

141:                                              ; preds = %134
  %142 = icmp ult i64 %136, 32
  br i1 %142, label %162, label %143

143:                                              ; preds = %141
  %144 = and i64 %136, -32
  br label %145

145:                                              ; preds = %145, %143
  %146 = phi i64 [ 0, %143 ], [ %153, %145 ]
  %147 = getelementptr i8, ptr %3, i64 %146
  %148 = getelementptr i8, ptr %131, i64 %146
  %149 = getelementptr i8, ptr %148, i64 16
  %150 = load <16 x i8>, ptr %148, align 1, !tbaa !216
  %151 = load <16 x i8>, ptr %149, align 1, !tbaa !216
  %152 = getelementptr i8, ptr %147, i64 16
  store <16 x i8> %150, ptr %147, align 1, !tbaa !216, !noalias !446
  store <16 x i8> %151, ptr %152, align 1, !tbaa !216, !noalias !446
  %153 = add nuw i64 %146, 32
  %154 = icmp eq i64 %153, %144
  br i1 %154, label %155, label %145, !llvm.loop !454

155:                                              ; preds = %145
  %156 = icmp eq i64 %136, %144
  br i1 %156, label %225, label %157

157:                                              ; preds = %155
  %158 = getelementptr i8, ptr %3, i64 %144
  %159 = getelementptr i8, ptr %131, i64 %144
  %160 = and i64 %136, 28
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %176, label %162

162:                                              ; preds = %157, %141
  %163 = phi i64 [ %144, %157 ], [ 0, %141 ]
  %164 = and i64 %136, -4
  %165 = getelementptr i8, ptr %3, i64 %164
  %166 = getelementptr i8, ptr %131, i64 %164
  br label %167

167:                                              ; preds = %167, %162
  %168 = phi i64 [ %163, %162 ], [ %172, %167 ]
  %169 = getelementptr i8, ptr %3, i64 %168
  %170 = getelementptr i8, ptr %131, i64 %168
  %171 = load <4 x i8>, ptr %170, align 1, !tbaa !216
  store <4 x i8> %171, ptr %169, align 1, !tbaa !216, !noalias !446
  %172 = add nuw i64 %168, 4
  %173 = icmp eq i64 %172, %164
  br i1 %173, label %174, label %167, !llvm.loop !455

174:                                              ; preds = %167
  %175 = icmp eq i64 %136, %164
  br i1 %175, label %225, label %176

176:                                              ; preds = %157, %174, %134
  %177 = phi ptr [ %3, %134 ], [ %158, %157 ], [ %165, %174 ]
  %178 = phi ptr [ %131, %134 ], [ %159, %157 ], [ %166, %174 ]
  %179 = ptrtoint ptr %178 to i64
  %180 = sub i64 %32, %179
  %181 = and i64 %180, 7
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %192, label %183

183:                                              ; preds = %176, %183
  %184 = phi ptr [ %189, %183 ], [ %177, %176 ]
  %185 = phi ptr [ %187, %183 ], [ %178, %176 ]
  %186 = phi i64 [ %190, %183 ], [ 0, %176 ]
  %187 = getelementptr inbounds nuw i8, ptr %185, i64 1
  %188 = load i8, ptr %185, align 1, !tbaa !216
  %189 = getelementptr inbounds nuw i8, ptr %184, i64 1
  store i8 %188, ptr %184, align 1, !tbaa !216, !noalias !446
  %190 = add i64 %186, 1
  %191 = icmp eq i64 %190, %181
  br i1 %191, label %192, label %183, !llvm.loop !456

192:                                              ; preds = %183, %176
  %193 = phi ptr [ %177, %176 ], [ %189, %183 ]
  %194 = phi ptr [ %178, %176 ], [ %187, %183 ]
  %195 = sub i64 %179, %33
  %196 = icmp ugt i64 %195, -8
  br i1 %196, label %225, label %197

197:                                              ; preds = %192, %197
  %198 = phi ptr [ %223, %197 ], [ %193, %192 ]
  %199 = phi ptr [ %221, %197 ], [ %194, %192 ]
  %200 = getelementptr inbounds nuw i8, ptr %199, i64 1
  %201 = load i8, ptr %199, align 1, !tbaa !216
  %202 = getelementptr inbounds nuw i8, ptr %198, i64 1
  store i8 %201, ptr %198, align 1, !tbaa !216, !noalias !446
  %203 = getelementptr inbounds nuw i8, ptr %199, i64 2
  %204 = load i8, ptr %200, align 1, !tbaa !216
  %205 = getelementptr inbounds nuw i8, ptr %198, i64 2
  store i8 %204, ptr %202, align 1, !tbaa !216, !noalias !446
  %206 = getelementptr inbounds nuw i8, ptr %199, i64 3
  %207 = load i8, ptr %203, align 1, !tbaa !216
  %208 = getelementptr inbounds nuw i8, ptr %198, i64 3
  store i8 %207, ptr %205, align 1, !tbaa !216, !noalias !446
  %209 = getelementptr inbounds nuw i8, ptr %199, i64 4
  %210 = load i8, ptr %206, align 1, !tbaa !216
  %211 = getelementptr inbounds nuw i8, ptr %198, i64 4
  store i8 %210, ptr %208, align 1, !tbaa !216, !noalias !446
  %212 = getelementptr inbounds nuw i8, ptr %199, i64 5
  %213 = load i8, ptr %209, align 1, !tbaa !216
  %214 = getelementptr inbounds nuw i8, ptr %198, i64 5
  store i8 %213, ptr %211, align 1, !tbaa !216, !noalias !446
  %215 = getelementptr inbounds nuw i8, ptr %199, i64 6
  %216 = load i8, ptr %212, align 1, !tbaa !216
  %217 = getelementptr inbounds nuw i8, ptr %198, i64 6
  store i8 %216, ptr %214, align 1, !tbaa !216, !noalias !446
  %218 = getelementptr inbounds nuw i8, ptr %199, i64 7
  %219 = load i8, ptr %215, align 1, !tbaa !216
  %220 = getelementptr inbounds nuw i8, ptr %198, i64 7
  store i8 %219, ptr %217, align 1, !tbaa !216, !noalias !446
  %221 = getelementptr inbounds nuw i8, ptr %199, i64 8
  %222 = load i8, ptr %218, align 1, !tbaa !216
  %223 = getelementptr inbounds nuw i8, ptr %198, i64 8
  store i8 %222, ptr %220, align 1, !tbaa !216, !noalias !446
  %224 = icmp eq ptr %221, %27
  br i1 %224, label %225, label %197, !llvm.loop !457

225:                                              ; preds = %192, %197, %174, %155
  %226 = getelementptr inbounds nuw i8, ptr %3, i64 %132
  br label %227

227:                                              ; preds = %304, %225
  %228 = phi ptr [ %305, %304 ], [ %3, %225 ]
  %229 = phi ptr [ %309, %304 ], [ %131, %225 ]
  %230 = load i8, ptr %228, align 1, !tbaa !216
  %231 = zext i8 %230 to i32
  %232 = lshr i32 %231, 3
  %233 = zext nneg i32 %232 to i64
  %234 = getelementptr inbounds nuw [32 x i8], ptr @.str.33, i64 0, i64 %233
  %235 = load i8, ptr %234, align 1, !tbaa !216
  %236 = sext i8 %235 to i64
  %237 = getelementptr inbounds i8, ptr %228, i64 %236
  %238 = lshr i32 -2130771968, %232
  %239 = and i32 %238, 1
  %240 = zext nneg i32 %239 to i64
  %241 = getelementptr inbounds nuw i8, ptr %237, i64 %240
  %242 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 0, i64 %236
  %243 = load i32, ptr %242, align 4, !tbaa !16
  %244 = and i32 %243, %231
  %245 = shl nuw nsw i32 %244, 18
  %246 = getelementptr inbounds nuw i8, ptr %228, i64 1
  %247 = load i8, ptr %246, align 1, !tbaa !216
  %248 = and i8 %247, 63
  %249 = zext nneg i8 %248 to i32
  %250 = shl nuw nsw i32 %249, 12
  %251 = or disjoint i32 %250, %245
  %252 = getelementptr inbounds nuw i8, ptr %228, i64 2
  %253 = load i8, ptr %252, align 1, !tbaa !216
  %254 = and i8 %253, 63
  %255 = zext nneg i8 %254 to i32
  %256 = shl nuw nsw i32 %255, 6
  %257 = or disjoint i32 %256, %251
  %258 = getelementptr inbounds nuw i8, ptr %228, i64 3
  %259 = load i8, ptr %258, align 1, !tbaa !216
  %260 = and i8 %259, 63
  %261 = zext nneg i8 %260 to i32
  %262 = or disjoint i32 %257, %261
  %263 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 0, i64 %236
  %264 = load i32, ptr %263, align 4, !tbaa !16
  %265 = lshr i32 %262, %264
  %266 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 0, i64 %236
  %267 = load i32, ptr %266, align 4, !tbaa !16
  %268 = icmp ult i32 %265, %267
  %269 = select i1 %268, i32 64, i32 0
  %270 = and i32 %265, 2147481600
  %271 = icmp eq i32 %270, 55296
  %272 = select i1 %271, i32 128, i32 0
  %273 = icmp samesign ugt i32 %265, 1114111
  %274 = select i1 %273, i32 256, i32 0
  %275 = lshr i8 %247, 2
  %276 = and i8 %275, 48
  %277 = lshr i8 %253, 4
  %278 = and i8 %277, 12
  %279 = lshr i8 %259, 6
  %280 = or disjoint i8 %278, %276
  %281 = or disjoint i8 %280, %279
  %282 = zext nneg i8 %281 to i32
  %283 = or disjoint i32 %269, %282
  %284 = or disjoint i32 %283, %274
  %285 = or disjoint i32 %284, %272
  %286 = xor i32 %285, 42
  %287 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 0, i64 %236
  %288 = load i32, ptr %287, align 4, !tbaa !16
  %289 = lshr i32 %286, %288
  %290 = icmp eq i32 %289, 0
  %291 = select i1 %290, i32 %265, i32 -1
  br i1 %290, label %292, label %296

292:                                              ; preds = %227
  %293 = add nsw i64 %240, %236
  %294 = icmp sgt i64 %293, -1
  br i1 %294, label %296, label %295

295:                                              ; preds = %292
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

296:                                              ; preds = %292, %227
  %297 = phi i64 [ 1, %227 ], [ %293, %292 ]
  %298 = icmp ult i32 %291, 32
  br i1 %298, label %302, label %299

299:                                              ; preds = %296
  switch i32 %291, label %300 [
    i32 127, label %302
    i32 92, label %302
    i32 34, label %302
  ]

300:                                              ; preds = %299
  %301 = call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %291)
  br i1 %301, label %304, label %302

302:                                              ; preds = %296, %299, %299, %299, %300
  %303 = getelementptr inbounds nuw i8, ptr %229, i64 %297
  store ptr %229, ptr %5, align 8, !tbaa !377
  store ptr %303, ptr %28, align 8, !tbaa !377
  store i32 %291, ptr %29, align 8, !tbaa !16
  br label %311

304:                                              ; preds = %300
  %305 = select i1 %290, ptr %241, ptr %246
  %306 = ptrtoint ptr %305 to i64
  %307 = ptrtoint ptr %228 to i64
  %308 = sub i64 %306, %307
  %309 = getelementptr inbounds i8, ptr %229, i64 %308
  %310 = icmp ult ptr %305, %226
  br i1 %310, label %227, label %311, !llvm.loop !458

311:                                              ; preds = %304, %302
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #27, !noalias !446
  br label %312

312:                                              ; preds = %120, %130, %311
  %313 = load ptr, ptr %5, align 8, !tbaa !449
  %314 = ptrtoint ptr %35 to i64
  %315 = icmp eq ptr %36, %313
  br i1 %315, label %427, label %316

316:                                              ; preds = %312
  %317 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %318 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %319 = ptrtoint ptr %313 to i64
  %320 = getelementptr inbounds nuw i8, ptr %35, i64 24
  %321 = load i64, ptr %317, align 8, !tbaa !378
  br label %322

322:                                              ; preds = %403, %316
  %323 = phi i64 [ %321, %316 ], [ %405, %403 ]
  %324 = phi ptr [ %36, %316 ], [ %406, %403 ]
  %325 = ptrtoint ptr %324 to i64
  %326 = sub i64 %319, %325
  %327 = icmp sgt i64 %326, -1
  br i1 %327, label %329, label %328

328:                                              ; preds = %322
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

329:                                              ; preds = %322
  %330 = load i64, ptr %318, align 8, !tbaa !380
  %331 = sub i64 %330, %323
  %332 = icmp ult i64 %331, %326
  br i1 %332, label %333, label %340

333:                                              ; preds = %329
  %334 = load ptr, ptr %320, align 8, !tbaa !381
  %335 = add i64 %326, %323
  call void %334(ptr noundef nonnull align 8 dereferenceable(32) %35, i64 noundef %335)
  %336 = load i64, ptr %317, align 8, !tbaa !378
  %337 = load i64, ptr %318, align 8, !tbaa !380
  %338 = sub i64 %337, %336
  %339 = call i64 @llvm.umin.i64(i64 %326, i64 %338)
  br label %340

340:                                              ; preds = %333, %329
  %341 = phi i64 [ %336, %333 ], [ %323, %329 ]
  %342 = phi i64 [ %339, %333 ], [ %326, %329 ]
  %343 = load ptr, ptr %35, align 8, !tbaa !382
  %344 = ptrtoint ptr %343 to i64
  %345 = getelementptr inbounds nuw i8, ptr %343, i64 %341
  %346 = icmp eq i64 %342, 0
  br i1 %346, label %403, label %347

347:                                              ; preds = %340
  %348 = icmp ult i64 %342, 4
  br i1 %348, label %349, label %366

349:                                              ; preds = %386, %399, %366, %347
  %350 = phi i64 [ 0, %347 ], [ 0, %366 ], [ %373, %386 ], [ %391, %399 ]
  %351 = and i64 %342, 3
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %362, label %353

353:                                              ; preds = %349, %353
  %354 = phi i64 [ %359, %353 ], [ %350, %349 ]
  %355 = phi i64 [ %360, %353 ], [ 0, %349 ]
  %356 = getelementptr inbounds nuw i8, ptr %324, i64 %354
  %357 = load i8, ptr %356, align 1, !tbaa !216
  %358 = getelementptr inbounds nuw i8, ptr %345, i64 %354
  store i8 %357, ptr %358, align 1, !tbaa !216
  %359 = add nuw i64 %354, 1
  %360 = add i64 %355, 1
  %361 = icmp eq i64 %360, %351
  br i1 %361, label %362, label %353, !llvm.loop !459

362:                                              ; preds = %353, %349
  %363 = phi i64 [ %350, %349 ], [ %359, %353 ]
  %364 = sub i64 %350, %342
  %365 = icmp ugt i64 %364, -4
  br i1 %365, label %401, label %408

366:                                              ; preds = %347
  %367 = add i64 %341, %344
  %368 = sub i64 %367, %325
  %369 = icmp ult i64 %368, 32
  br i1 %369, label %349, label %370

370:                                              ; preds = %366
  %371 = icmp ult i64 %342, 32
  br i1 %371, label %389, label %372

372:                                              ; preds = %370
  %373 = and i64 %342, -32
  br label %374

374:                                              ; preds = %374, %372
  %375 = phi i64 [ 0, %372 ], [ %382, %374 ]
  %376 = getelementptr inbounds nuw i8, ptr %324, i64 %375
  %377 = getelementptr inbounds nuw i8, ptr %376, i64 16
  %378 = load <16 x i8>, ptr %376, align 1, !tbaa !216
  %379 = load <16 x i8>, ptr %377, align 1, !tbaa !216
  %380 = getelementptr inbounds nuw i8, ptr %345, i64 %375
  %381 = getelementptr inbounds nuw i8, ptr %380, i64 16
  store <16 x i8> %378, ptr %380, align 1, !tbaa !216
  store <16 x i8> %379, ptr %381, align 1, !tbaa !216
  %382 = add nuw i64 %375, 32
  %383 = icmp eq i64 %382, %373
  br i1 %383, label %384, label %374, !llvm.loop !460

384:                                              ; preds = %374
  %385 = icmp eq i64 %342, %373
  br i1 %385, label %401, label %386

386:                                              ; preds = %384
  %387 = and i64 %342, 28
  %388 = icmp eq i64 %387, 0
  br i1 %388, label %349, label %389

389:                                              ; preds = %386, %370
  %390 = phi i64 [ %373, %386 ], [ 0, %370 ]
  %391 = and i64 %342, -4
  br label %392

392:                                              ; preds = %392, %389
  %393 = phi i64 [ %390, %389 ], [ %397, %392 ]
  %394 = getelementptr inbounds nuw i8, ptr %324, i64 %393
  %395 = load <4 x i8>, ptr %394, align 1, !tbaa !216
  %396 = getelementptr inbounds nuw i8, ptr %345, i64 %393
  store <4 x i8> %395, ptr %396, align 1, !tbaa !216
  %397 = add nuw i64 %393, 4
  %398 = icmp eq i64 %397, %391
  br i1 %398, label %399, label %392, !llvm.loop !461

399:                                              ; preds = %392
  %400 = icmp eq i64 %342, %391
  br i1 %400, label %401, label %349

401:                                              ; preds = %362, %408, %399, %384
  %402 = load i64, ptr %317, align 8, !tbaa !378
  br label %403

403:                                              ; preds = %401, %340
  %404 = phi i64 [ %402, %401 ], [ %341, %340 ]
  %405 = add i64 %404, %342
  store i64 %405, ptr %317, align 8, !tbaa !378
  %406 = getelementptr inbounds nuw i8, ptr %324, i64 %342
  %407 = icmp eq ptr %406, %313
  br i1 %407, label %427, label %322, !llvm.loop !387

408:                                              ; preds = %362, %408
  %409 = phi i64 [ %425, %408 ], [ %363, %362 ]
  %410 = getelementptr inbounds nuw i8, ptr %324, i64 %409
  %411 = load i8, ptr %410, align 1, !tbaa !216
  %412 = getelementptr inbounds nuw i8, ptr %345, i64 %409
  store i8 %411, ptr %412, align 1, !tbaa !216
  %413 = add nuw i64 %409, 1
  %414 = getelementptr inbounds nuw i8, ptr %324, i64 %413
  %415 = load i8, ptr %414, align 1, !tbaa !216
  %416 = getelementptr inbounds nuw i8, ptr %345, i64 %413
  store i8 %415, ptr %416, align 1, !tbaa !216
  %417 = add nuw i64 %409, 2
  %418 = getelementptr inbounds nuw i8, ptr %324, i64 %417
  %419 = load i8, ptr %418, align 1, !tbaa !216
  %420 = getelementptr inbounds nuw i8, ptr %345, i64 %417
  store i8 %419, ptr %420, align 1, !tbaa !216
  %421 = add nuw i64 %409, 3
  %422 = getelementptr inbounds nuw i8, ptr %324, i64 %421
  %423 = load i8, ptr %422, align 1, !tbaa !216
  %424 = getelementptr inbounds nuw i8, ptr %345, i64 %421
  store i8 %423, ptr %424, align 1, !tbaa !216
  %425 = add nuw i64 %409, 4
  %426 = icmp eq i64 %425, %342
  br i1 %426, label %401, label %408, !llvm.loop !462

427:                                              ; preds = %403, %312
  %428 = load ptr, ptr %28, align 8, !tbaa !451
  %429 = icmp eq ptr %428, null
  br i1 %429, label %430, label %431

430:                                              ; preds = %427
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  br label %435

431:                                              ; preds = %427
  %432 = call i64 @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(i64 %314, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %433 = inttoptr i64 %432 to ptr
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  %434 = icmp eq ptr %428, %27
  br i1 %434, label %435, label %34, !llvm.loop !463

435:                                              ; preds = %431, %430
  %436 = phi ptr [ %35, %430 ], [ %433, %431 ]
  %437 = getelementptr inbounds nuw i8, ptr %436, i64 8
  %438 = load i64, ptr %437, align 8, !tbaa !378
  %439 = add i64 %438, 1
  %440 = getelementptr inbounds nuw i8, ptr %436, i64 16
  %441 = load i64, ptr %440, align 8, !tbaa !380
  %442 = icmp ugt i64 %439, %441
  br i1 %442, label %443, label %448

443:                                              ; preds = %435
  %444 = getelementptr inbounds nuw i8, ptr %436, i64 24
  %445 = load ptr, ptr %444, align 8, !tbaa !381
  call void %445(ptr noundef nonnull align 8 dereferenceable(32) %436, i64 noundef %439)
  %446 = load i64, ptr %437, align 8, !tbaa !378
  %447 = add i64 %446, 1
  br label %448

448:                                              ; preds = %435, %443
  %449 = phi i64 [ %439, %435 ], [ %447, %443 ]
  %450 = phi i64 [ %438, %435 ], [ %446, %443 ]
  %451 = ptrtoint ptr %436 to i64
  %452 = load ptr, ptr %436, align 8, !tbaa !382
  store i64 %449, ptr %437, align 8, !tbaa !378
  %453 = getelementptr inbounds nuw i8, ptr %452, i64 %450
  store i8 34, ptr %453, align 1, !tbaa !216
  ret i64 %451
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEEUlS5_E_EET1_SJ_SH_yyOT2_(i64 %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat {
  %6 = alloca %struct.bounded_output_iterator, align 8
  %7 = alloca %struct.bounded_output_iterator, align 8
  %8 = alloca %"class.fmt::v12::basic_string_view", align 8
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !464
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

13:                                               ; preds = %5
  %14 = zext nneg i32 %10 to i64
  %15 = tail call i64 @llvm.usub.sat.i64(i64 %14, i64 %3)
  %16 = load i32, ptr %1, align 4, !tbaa !331
  %17 = lshr i32 %16, 3
  %18 = and i32 %17, 7
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw i8, ptr @.str.36, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !216
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  %24 = lshr i64 %15, %23
  %25 = sub nsw i64 %15, %24
  %26 = lshr i32 %16, 15
  %27 = and i32 %26, 7
  %28 = zext nneg i32 %27 to i64
  %29 = mul nuw nsw i64 %15, %28
  %30 = inttoptr i64 %0 to ptr
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %32 = load i64, ptr %31, align 8, !tbaa !378
  %33 = add i64 %32, %2
  %34 = add i64 %33, %29
  %35 = getelementptr inbounds nuw i8, ptr %30, i64 16
  %36 = load i64, ptr %35, align 8, !tbaa !380
  %37 = icmp ugt i64 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %13
  %39 = getelementptr inbounds nuw i8, ptr %30, i64 24
  %40 = load ptr, ptr %39, align 8, !tbaa !381
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(32) %30, i64 noundef %34)
  br label %41

41:                                               ; preds = %13, %38
  %42 = icmp eq i64 %24, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %41
  %44 = tail call i64 @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_yRKNS0_11basic_specsE(i64 %0, i64 noundef %24, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i64 [ %44, %43 ], [ %0, %41 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8)
  %47 = load i8, ptr %4, align 8, !tbaa !443, !range !296, !noundef !297
  %48 = trunc nuw i8 %47 to i1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #27
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = inttoptr i64 %46 to ptr
  store ptr %50, ptr %7, align 8, !tbaa !375
  %51 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %52 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %53 = load i64, ptr %52, align 8, !tbaa !445
  store i64 %53, ptr %51, align 8, !tbaa !465
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %54, i64 16, i1 false), !tbaa.struct !427
  call void @_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEESB_SB_SD_(ptr dead_on_unwind nonnull writable sret(%struct.bounded_output_iterator) align 8 %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %55 = load ptr, ptr %6, align 8, !tbaa !375
  %56 = ptrtoint ptr %55 to i64
  br label %176

57:                                               ; preds = %45
  %58 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %59 = load ptr, ptr %58, align 8, !tbaa !335
  %60 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %61 = load i64, ptr %60, align 8, !tbaa !445
  %62 = getelementptr inbounds nuw i8, ptr %59, i64 %61
  %63 = inttoptr i64 %46 to ptr
  %64 = icmp samesign eq i64 %61, 0
  br i1 %64, label %176, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %67 = getelementptr inbounds nuw i8, ptr %63, i64 16
  %68 = ptrtoint ptr %62 to i64
  %69 = getelementptr inbounds nuw i8, ptr %63, i64 24
  %70 = load i64, ptr %66, align 8, !tbaa !378
  br label %71

71:                                               ; preds = %152, %65
  %72 = phi i64 [ %70, %65 ], [ %154, %152 ]
  %73 = phi ptr [ %59, %65 ], [ %155, %152 ]
  %74 = ptrtoint ptr %73 to i64
  %75 = sub i64 %68, %74
  %76 = icmp sgt i64 %75, -1
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  tail call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

78:                                               ; preds = %71
  %79 = load i64, ptr %67, align 8, !tbaa !380
  %80 = sub i64 %79, %72
  %81 = icmp ult i64 %80, %75
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load ptr, ptr %69, align 8, !tbaa !381
  %84 = add i64 %75, %72
  tail call void %83(ptr noundef nonnull align 8 dereferenceable(32) %63, i64 noundef %84)
  %85 = load i64, ptr %66, align 8, !tbaa !378
  %86 = load i64, ptr %67, align 8, !tbaa !380
  %87 = sub i64 %86, %85
  %88 = tail call i64 @llvm.umin.i64(i64 %75, i64 %87)
  br label %89

89:                                               ; preds = %82, %78
  %90 = phi i64 [ %85, %82 ], [ %72, %78 ]
  %91 = phi i64 [ %88, %82 ], [ %75, %78 ]
  %92 = load ptr, ptr %63, align 8, !tbaa !382
  %93 = ptrtoint ptr %92 to i64
  %94 = getelementptr inbounds nuw i8, ptr %92, i64 %90
  %95 = icmp eq i64 %91, 0
  br i1 %95, label %152, label %96

96:                                               ; preds = %89
  %97 = icmp ult i64 %91, 4
  br i1 %97, label %98, label %115

98:                                               ; preds = %135, %148, %115, %96
  %99 = phi i64 [ 0, %96 ], [ 0, %115 ], [ %122, %135 ], [ %140, %148 ]
  %100 = and i64 %91, 3
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %98, %102
  %103 = phi i64 [ %108, %102 ], [ %99, %98 ]
  %104 = phi i64 [ %109, %102 ], [ 0, %98 ]
  %105 = getelementptr inbounds nuw i8, ptr %73, i64 %103
  %106 = load i8, ptr %105, align 1, !tbaa !216
  %107 = getelementptr inbounds nuw i8, ptr %94, i64 %103
  store i8 %106, ptr %107, align 1, !tbaa !216
  %108 = add nuw i64 %103, 1
  %109 = add i64 %104, 1
  %110 = icmp eq i64 %109, %100
  br i1 %110, label %111, label %102, !llvm.loop !468

111:                                              ; preds = %102, %98
  %112 = phi i64 [ %99, %98 ], [ %108, %102 ]
  %113 = sub i64 %99, %91
  %114 = icmp ugt i64 %113, -4
  br i1 %114, label %150, label %157

115:                                              ; preds = %96
  %116 = add i64 %90, %93
  %117 = sub i64 %116, %74
  %118 = icmp ult i64 %117, 32
  br i1 %118, label %98, label %119

119:                                              ; preds = %115
  %120 = icmp ult i64 %91, 32
  br i1 %120, label %138, label %121

121:                                              ; preds = %119
  %122 = and i64 %91, -32
  br label %123

123:                                              ; preds = %123, %121
  %124 = phi i64 [ 0, %121 ], [ %131, %123 ]
  %125 = getelementptr inbounds nuw i8, ptr %73, i64 %124
  %126 = getelementptr inbounds nuw i8, ptr %125, i64 16
  %127 = load <16 x i8>, ptr %125, align 1, !tbaa !216
  %128 = load <16 x i8>, ptr %126, align 1, !tbaa !216
  %129 = getelementptr inbounds nuw i8, ptr %94, i64 %124
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 16
  store <16 x i8> %127, ptr %129, align 1, !tbaa !216
  store <16 x i8> %128, ptr %130, align 1, !tbaa !216
  %131 = add nuw i64 %124, 32
  %132 = icmp eq i64 %131, %122
  br i1 %132, label %133, label %123, !llvm.loop !469

133:                                              ; preds = %123
  %134 = icmp eq i64 %91, %122
  br i1 %134, label %150, label %135

135:                                              ; preds = %133
  %136 = and i64 %91, 28
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %98, label %138

138:                                              ; preds = %135, %119
  %139 = phi i64 [ %122, %135 ], [ 0, %119 ]
  %140 = and i64 %91, -4
  br label %141

141:                                              ; preds = %141, %138
  %142 = phi i64 [ %139, %138 ], [ %146, %141 ]
  %143 = getelementptr inbounds nuw i8, ptr %73, i64 %142
  %144 = load <4 x i8>, ptr %143, align 1, !tbaa !216
  %145 = getelementptr inbounds nuw i8, ptr %94, i64 %142
  store <4 x i8> %144, ptr %145, align 1, !tbaa !216
  %146 = add nuw i64 %142, 4
  %147 = icmp eq i64 %146, %140
  br i1 %147, label %148, label %141, !llvm.loop !470

148:                                              ; preds = %141
  %149 = icmp eq i64 %91, %140
  br i1 %149, label %150, label %98

150:                                              ; preds = %111, %157, %148, %133
  %151 = load i64, ptr %66, align 8, !tbaa !378
  br label %152

152:                                              ; preds = %150, %89
  %153 = phi i64 [ %151, %150 ], [ %90, %89 ]
  %154 = add i64 %153, %91
  store i64 %154, ptr %66, align 8, !tbaa !378
  %155 = getelementptr inbounds nuw i8, ptr %73, i64 %91
  %156 = icmp eq ptr %155, %62
  br i1 %156, label %176, label %71, !llvm.loop !387

157:                                              ; preds = %111, %157
  %158 = phi i64 [ %174, %157 ], [ %112, %111 ]
  %159 = getelementptr inbounds nuw i8, ptr %73, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !216
  %161 = getelementptr inbounds nuw i8, ptr %94, i64 %158
  store i8 %160, ptr %161, align 1, !tbaa !216
  %162 = add nuw i64 %158, 1
  %163 = getelementptr inbounds nuw i8, ptr %73, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !216
  %165 = getelementptr inbounds nuw i8, ptr %94, i64 %162
  store i8 %164, ptr %165, align 1, !tbaa !216
  %166 = add nuw i64 %158, 2
  %167 = getelementptr inbounds nuw i8, ptr %73, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !216
  %169 = getelementptr inbounds nuw i8, ptr %94, i64 %166
  store i8 %168, ptr %169, align 1, !tbaa !216
  %170 = add nuw i64 %158, 3
  %171 = getelementptr inbounds nuw i8, ptr %73, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !216
  %173 = getelementptr inbounds nuw i8, ptr %94, i64 %170
  store i8 %172, ptr %173, align 1, !tbaa !216
  %174 = add nuw i64 %158, 4
  %175 = icmp eq i64 %174, %91
  br i1 %175, label %150, label %157, !llvm.loop !471

176:                                              ; preds = %152, %49, %57
  %177 = phi i64 [ %56, %49 ], [ %46, %57 ], [ %46, %152 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8)
  %178 = icmp eq i64 %15, %24
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = call i64 @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_yRKNS0_11basic_specsE(i64 %177, i64 noundef %25, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %181

181:                                              ; preds = %179, %176
  %182 = phi i64 [ %180, %179 ], [ %177, %176 ]
  ret i64 %182
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(i64 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat {
  %3 = inttoptr i64 %0 to ptr
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %5 = load i32, ptr %4, align 8, !tbaa !452
  switch i32 %5, label %75 [
    i32 10, label %6
    i32 13, label %23
    i32 9, label %40
    i32 34, label %57
    i32 39, label %57
    i32 92, label %57
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !378
  %9 = add i64 %8, 1
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %11 = load i64, ptr %10, align 8, !tbaa !380
  %12 = icmp ugt i64 %9, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %15 = load ptr, ptr %14, align 8, !tbaa !381
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %9)
  %16 = load i64, ptr %7, align 8, !tbaa !378
  %17 = add i64 %16, 1
  br label %18

18:                                               ; preds = %6, %13
  %19 = phi i64 [ %9, %6 ], [ %17, %13 ]
  %20 = phi i64 [ %8, %6 ], [ %16, %13 ]
  %21 = load ptr, ptr %3, align 8, !tbaa !382
  store i64 %19, ptr %7, align 8, !tbaa !378
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 %20
  store i8 92, ptr %22, align 1, !tbaa !216
  br label %106

23:                                               ; preds = %2
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %25 = load i64, ptr %24, align 8, !tbaa !378
  %26 = add i64 %25, 1
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %28 = load i64, ptr %27, align 8, !tbaa !380
  %29 = icmp ugt i64 %26, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %32 = load ptr, ptr %31, align 8, !tbaa !381
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %26)
  %33 = load i64, ptr %24, align 8, !tbaa !378
  %34 = add i64 %33, 1
  br label %35

35:                                               ; preds = %23, %30
  %36 = phi i64 [ %26, %23 ], [ %34, %30 ]
  %37 = phi i64 [ %25, %23 ], [ %33, %30 ]
  %38 = load ptr, ptr %3, align 8, !tbaa !382
  store i64 %36, ptr %24, align 8, !tbaa !378
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 %37
  store i8 92, ptr %39, align 1, !tbaa !216
  br label %106

40:                                               ; preds = %2
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %42 = load i64, ptr %41, align 8, !tbaa !378
  %43 = add i64 %42, 1
  %44 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %45 = load i64, ptr %44, align 8, !tbaa !380
  %46 = icmp ugt i64 %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %49 = load ptr, ptr %48, align 8, !tbaa !381
  tail call void %49(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %43)
  %50 = load i64, ptr %41, align 8, !tbaa !378
  %51 = add i64 %50, 1
  br label %52

52:                                               ; preds = %40, %47
  %53 = phi i64 [ %43, %40 ], [ %51, %47 ]
  %54 = phi i64 [ %42, %40 ], [ %50, %47 ]
  %55 = load ptr, ptr %3, align 8, !tbaa !382
  store i64 %53, ptr %41, align 8, !tbaa !378
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 %54
  store i8 92, ptr %56, align 1, !tbaa !216
  br label %106

57:                                               ; preds = %2, %2, %2
  %58 = trunc nuw nsw i32 %5 to i8
  %59 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %60 = load i64, ptr %59, align 8, !tbaa !378
  %61 = add i64 %60, 1
  %62 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %63 = load i64, ptr %62, align 8, !tbaa !380
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %67 = load ptr, ptr %66, align 8, !tbaa !381
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %61)
  %68 = load i64, ptr %59, align 8, !tbaa !378
  %69 = add i64 %68, 1
  br label %70

70:                                               ; preds = %57, %65
  %71 = phi i64 [ %61, %57 ], [ %69, %65 ]
  %72 = phi i64 [ %60, %57 ], [ %68, %65 ]
  %73 = load ptr, ptr %3, align 8, !tbaa !382
  store i64 %71, ptr %59, align 8, !tbaa !378
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 %72
  store i8 92, ptr %74, align 1, !tbaa !216
  br label %106

75:                                               ; preds = %2
  %76 = icmp ult i32 %5, 256
  br i1 %76, label %77, label %79

77:                                               ; preds = %75
  %78 = tail call i64 @_ZN3fmt3v126detail15write_codepointILy2EcNS0_14basic_appenderIcEEEET1_S5_cj(i64 %0, i8 noundef 120, i32 noundef %5)
  br label %124

79:                                               ; preds = %75
  %80 = icmp ult i32 %5, 65536
  br i1 %80, label %81, label %83

81:                                               ; preds = %79
  %82 = tail call i64 @_ZN3fmt3v126detail15write_codepointILy4EcNS0_14basic_appenderIcEEEET1_S5_cj(i64 %0, i8 noundef 117, i32 noundef %5)
  br label %124

83:                                               ; preds = %79
  %84 = icmp ult i32 %5, 1114112
  br i1 %84, label %85, label %87

85:                                               ; preds = %83
  %86 = tail call i64 @_ZN3fmt3v126detail15write_codepointILy8EcNS0_14basic_appenderIcEEEET1_S5_cj(i64 %0, i8 noundef 85, i32 noundef %5)
  br label %124

87:                                               ; preds = %83
  %88 = load ptr, ptr %1, align 8, !tbaa !449
  %89 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %90 = load ptr, ptr %89, align 8, !tbaa !451
  %91 = ptrtoint ptr %90 to i64
  %92 = ptrtoint ptr %88 to i64
  %93 = sub i64 %91, %92
  %94 = icmp sgt i64 %93, -1
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = icmp eq ptr %88, %90
  br i1 %96, label %124, label %98

97:                                               ; preds = %87
  tail call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

98:                                               ; preds = %95, %98
  %99 = phi ptr [ %104, %98 ], [ %88, %95 ]
  %100 = phi i64 [ %103, %98 ], [ %0, %95 ]
  %101 = load i8, ptr %99, align 1, !tbaa !216
  %102 = zext i8 %101 to i32
  %103 = tail call i64 @_ZN3fmt3v126detail15write_codepointILy2EcNS0_14basic_appenderIcEEEET1_S5_cj(i64 %100, i8 noundef 120, i32 noundef %102)
  %104 = getelementptr inbounds nuw i8, ptr %99, i64 1
  %105 = icmp eq ptr %104, %90
  br i1 %105, label %124, label %98

106:                                              ; preds = %70, %52, %35, %18
  %107 = phi i8 [ 110, %18 ], [ 114, %35 ], [ 116, %52 ], [ %58, %70 ]
  %108 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %109 = load i64, ptr %108, align 8, !tbaa !378
  %110 = add i64 %109, 1
  %111 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %112 = load i64, ptr %111, align 8, !tbaa !380
  %113 = icmp ugt i64 %110, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %116 = load ptr, ptr %115, align 8, !tbaa !381
  tail call void %116(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %110)
  %117 = load i64, ptr %108, align 8, !tbaa !378
  %118 = add i64 %117, 1
  br label %119

119:                                              ; preds = %106, %114
  %120 = phi i64 [ %110, %106 ], [ %118, %114 ]
  %121 = phi i64 [ %109, %106 ], [ %117, %114 ]
  %122 = load ptr, ptr %3, align 8, !tbaa !382
  store i64 %120, ptr %108, align 8, !tbaa !378
  %123 = getelementptr inbounds nuw i8, ptr %122, i64 %121
  store i8 %107, ptr %123, align 1, !tbaa !216
  br label %124

124:                                              ; preds = %98, %95, %119, %85, %81, %77
  %125 = phi i64 [ %78, %77 ], [ %82, %81 ], [ %86, %85 ], [ %0, %119 ], [ %0, %95 ], [ %103, %98 ]
  ret i64 %125
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

declare dso_local noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZN3fmt3v126detail15write_codepointILy2EcNS0_14basic_appenderIcEEEET1_S5_cj(i64 %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat {
  %4 = alloca [2 x i8], align 2
  %5 = inttoptr i64 %0 to ptr
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !378
  %8 = add i64 %7, 1
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %10 = load i64, ptr %9, align 8, !tbaa !380
  %11 = icmp ugt i64 %8, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !381
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %8)
  %15 = load i64, ptr %6, align 8, !tbaa !378
  %16 = add i64 %15, 1
  br label %17

17:                                               ; preds = %3, %12
  %18 = phi i64 [ %8, %3 ], [ %16, %12 ]
  %19 = phi i64 [ %7, %3 ], [ %15, %12 ]
  %20 = load ptr, ptr %5, align 8, !tbaa !382
  store i64 %18, ptr %6, align 8, !tbaa !378
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 %19
  store i8 92, ptr %21, align 1, !tbaa !216
  %22 = load i64, ptr %6, align 8, !tbaa !378
  %23 = add i64 %22, 1
  %24 = load i64, ptr %9, align 8, !tbaa !380
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %28 = load ptr, ptr %27, align 8, !tbaa !381
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %23)
  %29 = load i64, ptr %6, align 8, !tbaa !378
  %30 = add i64 %29, 1
  br label %31

31:                                               ; preds = %17, %26
  %32 = phi i64 [ %23, %17 ], [ %30, %26 ]
  %33 = phi i64 [ %22, %17 ], [ %29, %26 ]
  %34 = load ptr, ptr %5, align 8, !tbaa !382
  store i64 %32, ptr %6, align 8, !tbaa !378
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 %33
  store i8 %1, ptr %35, align 1, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #27
  store i16 12336, ptr %4, align 2
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 2
  br label %37

37:                                               ; preds = %37, %31
  %38 = phi i32 [ %45, %37 ], [ %2, %31 ]
  %39 = phi ptr [ %44, %37 ], [ %36, %31 ]
  %40 = and i32 %38, 15
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds nuw i8, ptr @.str.35, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !216
  %44 = getelementptr inbounds i8, ptr %39, i64 -1
  store i8 %43, ptr %44, align 1, !tbaa !216
  %45 = lshr i32 %38, 4
  %46 = icmp ult i32 %38, 16
  br i1 %46, label %47, label %37, !llvm.loop !472

47:                                               ; preds = %37
  %48 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %49 = load i64, ptr %6, align 8, !tbaa !378
  br label %50

50:                                               ; preds = %76, %47
  %51 = phi i64 [ %49, %47 ], [ %78, %76 ]
  %52 = phi i64 [ 0, %47 ], [ %79, %76 ]
  %53 = getelementptr i8, ptr %4, i64 %52
  %54 = sub nsw i64 2, %52
  %55 = icmp slt i64 %52, 3
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  tail call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

57:                                               ; preds = %50
  %58 = load i64, ptr %9, align 8, !tbaa !380
  %59 = sub i64 %58, %51
  %60 = icmp ult i64 %59, %54
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load ptr, ptr %48, align 8, !tbaa !381
  %63 = add i64 %54, %51
  tail call void %62(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %63)
  %64 = load i64, ptr %6, align 8, !tbaa !378
  %65 = load i64, ptr %9, align 8, !tbaa !380
  %66 = sub i64 %65, %64
  %67 = tail call i64 @llvm.umin.i64(i64 %54, i64 %66)
  br label %68

68:                                               ; preds = %61, %57
  %69 = phi i64 [ %64, %61 ], [ %51, %57 ]
  %70 = phi i64 [ %67, %61 ], [ %54, %57 ]
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %5, align 8, !tbaa !382
  %74 = getelementptr i8, ptr %73, i64 %69
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %74, ptr align 1 %53, i64 %70, i1 false), !tbaa !216
  %75 = load i64, ptr %6, align 8, !tbaa !378
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i64 [ %75, %72 ], [ %69, %68 ]
  %78 = add i64 %77, %70
  store i64 %78, ptr %6, align 8, !tbaa !378
  %79 = add nuw nsw i64 %70, %52
  %80 = icmp eq i64 %79, 2
  br i1 %80, label %81, label %50, !llvm.loop !387

81:                                               ; preds = %76
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #27
  ret i64 %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZN3fmt3v126detail15write_codepointILy4EcNS0_14basic_appenderIcEEEET1_S5_cj(i64 %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat {
  %4 = alloca [4 x i8], align 4
  %5 = inttoptr i64 %0 to ptr
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !378
  %8 = add i64 %7, 1
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %10 = load i64, ptr %9, align 8, !tbaa !380
  %11 = icmp ugt i64 %8, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !381
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %8)
  %15 = load i64, ptr %6, align 8, !tbaa !378
  %16 = add i64 %15, 1
  br label %17

17:                                               ; preds = %3, %12
  %18 = phi i64 [ %8, %3 ], [ %16, %12 ]
  %19 = phi i64 [ %7, %3 ], [ %15, %12 ]
  %20 = load ptr, ptr %5, align 8, !tbaa !382
  store i64 %18, ptr %6, align 8, !tbaa !378
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 %19
  store i8 92, ptr %21, align 1, !tbaa !216
  %22 = load i64, ptr %6, align 8, !tbaa !378
  %23 = add i64 %22, 1
  %24 = load i64, ptr %9, align 8, !tbaa !380
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %28 = load ptr, ptr %27, align 8, !tbaa !381
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %23)
  %29 = load i64, ptr %6, align 8, !tbaa !378
  %30 = add i64 %29, 1
  br label %31

31:                                               ; preds = %17, %26
  %32 = phi i64 [ %23, %17 ], [ %30, %26 ]
  %33 = phi i64 [ %22, %17 ], [ %29, %26 ]
  %34 = load ptr, ptr %5, align 8, !tbaa !382
  store i64 %32, ptr %6, align 8, !tbaa !378
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 %33
  store i8 %1, ptr %35, align 1, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  store i32 808464432, ptr %4, align 4
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %37

37:                                               ; preds = %37, %31
  %38 = phi i32 [ %45, %37 ], [ %2, %31 ]
  %39 = phi ptr [ %44, %37 ], [ %36, %31 ]
  %40 = and i32 %38, 15
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds nuw i8, ptr @.str.35, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !216
  %44 = getelementptr inbounds i8, ptr %39, i64 -1
  store i8 %43, ptr %44, align 1, !tbaa !216
  %45 = lshr i32 %38, 4
  %46 = icmp ult i32 %38, 16
  br i1 %46, label %47, label %37, !llvm.loop !472

47:                                               ; preds = %37
  %48 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %49 = load i64, ptr %6, align 8, !tbaa !378
  br label %50

50:                                               ; preds = %76, %47
  %51 = phi i64 [ %49, %47 ], [ %78, %76 ]
  %52 = phi i64 [ 0, %47 ], [ %79, %76 ]
  %53 = getelementptr i8, ptr %4, i64 %52
  %54 = sub nsw i64 4, %52
  %55 = icmp slt i64 %52, 5
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  tail call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

57:                                               ; preds = %50
  %58 = load i64, ptr %9, align 8, !tbaa !380
  %59 = sub i64 %58, %51
  %60 = icmp ult i64 %59, %54
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load ptr, ptr %48, align 8, !tbaa !381
  %63 = add i64 %54, %51
  tail call void %62(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %63)
  %64 = load i64, ptr %6, align 8, !tbaa !378
  %65 = load i64, ptr %9, align 8, !tbaa !380
  %66 = sub i64 %65, %64
  %67 = tail call i64 @llvm.umin.i64(i64 %54, i64 %66)
  br label %68

68:                                               ; preds = %61, %57
  %69 = phi i64 [ %64, %61 ], [ %51, %57 ]
  %70 = phi i64 [ %67, %61 ], [ %54, %57 ]
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %5, align 8, !tbaa !382
  %74 = getelementptr i8, ptr %73, i64 %69
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %74, ptr align 1 %53, i64 %70, i1 false), !tbaa !216
  %75 = load i64, ptr %6, align 8, !tbaa !378
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i64 [ %75, %72 ], [ %69, %68 ]
  %78 = add i64 %77, %70
  store i64 %78, ptr %6, align 8, !tbaa !378
  %79 = add nuw nsw i64 %70, %52
  %80 = icmp eq i64 %79, 4
  br i1 %80, label %81, label %50, !llvm.loop !387

81:                                               ; preds = %76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  ret i64 %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZN3fmt3v126detail15write_codepointILy8EcNS0_14basic_appenderIcEEEET1_S5_cj(i64 %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat {
  %4 = alloca [8 x i8], align 8
  %5 = inttoptr i64 %0 to ptr
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !378
  %8 = add i64 %7, 1
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %10 = load i64, ptr %9, align 8, !tbaa !380
  %11 = icmp ugt i64 %8, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %14 = load ptr, ptr %13, align 8, !tbaa !381
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %8)
  %15 = load i64, ptr %6, align 8, !tbaa !378
  %16 = add i64 %15, 1
  br label %17

17:                                               ; preds = %3, %12
  %18 = phi i64 [ %8, %3 ], [ %16, %12 ]
  %19 = phi i64 [ %7, %3 ], [ %15, %12 ]
  %20 = load ptr, ptr %5, align 8, !tbaa !382
  store i64 %18, ptr %6, align 8, !tbaa !378
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 %19
  store i8 92, ptr %21, align 1, !tbaa !216
  %22 = load i64, ptr %6, align 8, !tbaa !378
  %23 = add i64 %22, 1
  %24 = load i64, ptr %9, align 8, !tbaa !380
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %28 = load ptr, ptr %27, align 8, !tbaa !381
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %23)
  %29 = load i64, ptr %6, align 8, !tbaa !378
  %30 = add i64 %29, 1
  br label %31

31:                                               ; preds = %17, %26
  %32 = phi i64 [ %23, %17 ], [ %30, %26 ]
  %33 = phi i64 [ %22, %17 ], [ %29, %26 ]
  %34 = load ptr, ptr %5, align 8, !tbaa !382
  store i64 %32, ptr %6, align 8, !tbaa !378
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 %33
  store i8 %1, ptr %35, align 1, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  store i64 3472328296227680304, ptr %4, align 8
  %36 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %37

37:                                               ; preds = %37, %31
  %38 = phi i32 [ %45, %37 ], [ %2, %31 ]
  %39 = phi ptr [ %44, %37 ], [ %36, %31 ]
  %40 = and i32 %38, 15
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds nuw i8, ptr @.str.35, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !216
  %44 = getelementptr inbounds i8, ptr %39, i64 -1
  store i8 %43, ptr %44, align 1, !tbaa !216
  %45 = lshr i32 %38, 4
  %46 = icmp ult i32 %38, 16
  br i1 %46, label %47, label %37, !llvm.loop !472

47:                                               ; preds = %37
  %48 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %49 = load i64, ptr %6, align 8, !tbaa !378
  br label %50

50:                                               ; preds = %76, %47
  %51 = phi i64 [ %49, %47 ], [ %78, %76 ]
  %52 = phi i64 [ 0, %47 ], [ %79, %76 ]
  %53 = getelementptr i8, ptr %4, i64 %52
  %54 = sub nsw i64 8, %52
  %55 = icmp slt i64 %52, 9
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  tail call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

57:                                               ; preds = %50
  %58 = load i64, ptr %9, align 8, !tbaa !380
  %59 = sub i64 %58, %51
  %60 = icmp ult i64 %59, %54
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load ptr, ptr %48, align 8, !tbaa !381
  %63 = add i64 %54, %51
  tail call void %62(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %63)
  %64 = load i64, ptr %6, align 8, !tbaa !378
  %65 = load i64, ptr %9, align 8, !tbaa !380
  %66 = sub i64 %65, %64
  %67 = tail call i64 @llvm.umin.i64(i64 %54, i64 %66)
  br label %68

68:                                               ; preds = %61, %57
  %69 = phi i64 [ %64, %61 ], [ %51, %57 ]
  %70 = phi i64 [ %67, %61 ], [ %54, %57 ]
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %5, align 8, !tbaa !382
  %74 = getelementptr i8, ptr %73, i64 %69
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %74, ptr align 1 %53, i64 %70, i1 false), !tbaa !216
  %75 = load i64, ptr %6, align 8, !tbaa !378
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i64 [ %75, %72 ], [ %69, %68 ]
  %78 = add i64 %77, %70
  store i64 %78, ptr %6, align 8, !tbaa !378
  %79 = add nuw nsw i64 %70, %52
  %80 = icmp eq i64 %79, 8
  br i1 %80, label %81, label %50, !llvm.loop !387

81:                                               ; preds = %76
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  ret i64 %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUljNSC_IcEEE_EEvSH_S8_ENKUlPKcSK_E_clESK_SK_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #21 comdat align 2 {
  %4 = alloca %"class.fmt::v12::basic_string_view", align 8
  %5 = load i8, ptr %1, align 1, !tbaa !216
  %6 = zext i8 %5 to i32
  %7 = lshr i32 %6, 3
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds nuw [32 x i8], ptr @.str.33, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !216
  %11 = sext i8 %10 to i64
  %12 = lshr i32 -2130771968, %7
  %13 = and i32 %12, 1
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 0, i64 %11
  %16 = load i32, ptr %15, align 4, !tbaa !16
  %17 = and i32 %16, %6
  %18 = shl nuw nsw i32 %17, 18
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !216
  %21 = and i8 %20, 63
  %22 = zext nneg i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 12
  %24 = or disjoint i32 %23, %18
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !216
  %27 = and i8 %26, 63
  %28 = zext nneg i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 6
  %30 = or disjoint i32 %29, %24
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %32 = load i8, ptr %31, align 1, !tbaa !216
  %33 = and i8 %32, 63
  %34 = zext nneg i8 %33 to i32
  %35 = or disjoint i32 %30, %34
  %36 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 0, i64 %11
  %37 = load i32, ptr %36, align 4, !tbaa !16
  %38 = lshr i32 %35, %37
  %39 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 0, i64 %11
  %40 = load i32, ptr %39, align 4, !tbaa !16
  %41 = icmp ult i32 %38, %40
  %42 = select i1 %41, i32 64, i32 0
  %43 = and i32 %38, 2147481600
  %44 = icmp eq i32 %43, 55296
  %45 = select i1 %44, i32 128, i32 0
  %46 = icmp samesign ugt i32 %38, 1114111
  %47 = select i1 %46, i32 256, i32 0
  %48 = lshr i8 %20, 2
  %49 = and i8 %48, 48
  %50 = lshr i8 %26, 4
  %51 = and i8 %50, 12
  %52 = lshr i8 %32, 6
  %53 = or disjoint i8 %51, %49
  %54 = or disjoint i8 %53, %52
  %55 = zext nneg i8 %54 to i32
  %56 = or disjoint i32 %42, %55
  %57 = or disjoint i32 %56, %47
  %58 = or disjoint i32 %57, %45
  %59 = xor i32 %58, 42
  %60 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 0, i64 %11
  %61 = load i32, ptr %60, align 4, !tbaa !16
  %62 = lshr i32 %59, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %3
  %65 = add nsw i64 %14, %11
  %66 = icmp sgt i64 %65, -1
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  tail call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

68:                                               ; preds = %64, %3
  %69 = phi i32 [ %38, %64 ], [ -1, %3 ]
  %70 = phi i64 [ %65, %64 ], [ 1, %3 ]
  %71 = getelementptr inbounds i8, ptr %1, i64 %11
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 %14
  store ptr %2, ptr %4, align 8, !tbaa !335
  %73 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %70, ptr %73, align 8, !tbaa !341
  %74 = call noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEENKUljNSB_IcEEE_clEjSG_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %69, ptr noundef nonnull %4)
  %75 = select i1 %63, ptr %72, ptr %19
  %76 = select i1 %74, ptr %75, ptr null
  ret ptr %76
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEENKUljNSB_IcEEE_clEjSG_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %4 = alloca %"class.fmt::v12::detail::counting_buffer", align 8
  %5 = alloca %"struct.fmt::v12::detail::find_escape_result", align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !473, !nonnull !297
  %7 = load i8, ptr %6, align 1, !tbaa !426, !range !296, !noundef !297
  %8 = trunc nuw i8 %7 to i1
  br i1 %8, label %9, label %69

9:                                                ; preds = %3
  %10 = icmp ult i32 %1, 32
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  switch i32 %1, label %12 [
    i32 127, label %14
    i32 92, label %14
    i32 34, label %14
  ]

12:                                               ; preds = %11
  %13 = tail call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %1)
  br i1 %13, label %69, label %14

14:                                               ; preds = %9, %11, %11, %11, %12
  call void @llvm.lifetime.start.p0(i64 296, ptr nonnull %4) #27
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %15, ptr %4, align 8, !tbaa !382
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %16, align 8, !tbaa !378
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 256, ptr %17, align 8, !tbaa !380
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN3fmt3v126detail15counting_bufferIcE4growERNS1_6bufferIcEEy, ptr %18, align 8, !tbaa !381
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 288
  store i64 0, ptr %19, align 8, !tbaa !475
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #27
  %20 = load ptr, ptr %2, align 8, !tbaa !335
  store ptr %20, ptr %5, align 8, !tbaa !449
  %21 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %23 = load i64, ptr %22, align 8, !tbaa !341
  %24 = getelementptr inbounds nuw i8, ptr %20, i64 %23
  store ptr %24, ptr %21, align 8, !tbaa !451
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %1, ptr %25, align 8, !tbaa !452
  %26 = ptrtoint ptr %4 to i64
  %27 = call i64 @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(i64 %26, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  %28 = load i64, ptr %19, align 8, !tbaa !475
  %29 = load i64, ptr %16, align 8, !tbaa !378
  %30 = add i64 %29, %28
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %32 = load ptr, ptr %31, align 8, !tbaa !477, !nonnull !297, !align !299
  %33 = load i64, ptr %32, align 8, !tbaa !27
  %34 = add i64 %33, %30
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %36 = load ptr, ptr %35, align 8, !tbaa !478, !nonnull !297, !align !299
  %37 = load i64, ptr %36, align 8, !tbaa !27
  %38 = icmp ule i64 %34, %37
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %38, label %40, label %62

40:                                               ; preds = %14
  store i64 %34, ptr %32, align 8, !tbaa !27
  %41 = load ptr, ptr %39, align 8, !tbaa !479, !nonnull !297, !align !299
  %42 = load i64, ptr %41, align 8, !tbaa !27
  %43 = add i64 %42, %30
  store i64 %43, ptr %41, align 8, !tbaa !27
  %44 = load i64, ptr %32, align 8, !tbaa !27
  %45 = load i64, ptr %36, align 8, !tbaa !27
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %40
  %48 = load ptr, ptr %2, align 8, !tbaa !335
  %49 = load i64, ptr %22, align 8, !tbaa !341
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 %49
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %52 = load ptr, ptr %51, align 8, !tbaa !480, !nonnull !297, !align !299
  %53 = load ptr, ptr %52, align 8, !tbaa !335
  %54 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %55 = load i64, ptr %54, align 8, !tbaa !341
  %56 = getelementptr inbounds nuw i8, ptr %53, i64 %55
  %57 = icmp eq ptr %50, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %47
  %59 = add nuw i64 %44, 1
  store i64 %59, ptr %32, align 8, !tbaa !27
  %60 = load i64, ptr %41, align 8, !tbaa !27
  %61 = add i64 %60, 1
  store i64 %61, ptr %41, align 8, !tbaa !27
  br label %68

62:                                               ; preds = %14
  %63 = sub i64 %37, %33
  %64 = load ptr, ptr %39, align 8, !tbaa !479, !nonnull !297, !align !299
  %65 = load i64, ptr %64, align 8, !tbaa !27
  %66 = add i64 %63, %65
  store i64 %66, ptr %64, align 8, !tbaa !27
  %67 = load i64, ptr %36, align 8, !tbaa !27
  store i64 %67, ptr %32, align 8, !tbaa !27
  br label %68

68:                                               ; preds = %40, %47, %58, %62
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %4) #27
  br label %133

69:                                               ; preds = %12, %3
  %70 = icmp ugt i32 %1, 4351
  br i1 %70, label %71, label %94

71:                                               ; preds = %69
  %72 = icmp ult i32 %1, 4448
  %73 = add i32 %1, -9001
  %74 = icmp ult i32 %73, 2
  %75 = or i1 %72, %74
  br i1 %75, label %94, label %76

76:                                               ; preds = %71
  %77 = add i32 %1, -11904
  %78 = icmp ult i32 %77, 30288
  %79 = icmp ne i32 %1, 12351
  %80 = and i1 %79, %78
  %81 = and i32 %1, -65538
  %82 = insertelement <8 x i32> poison, i32 %1, i64 0
  %83 = insertelement <8 x i32> %82, i32 %81, i64 1
  %84 = shufflevector <8 x i32> %83, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0>
  %85 = add <8 x i32> %84, <i32 -44032, i32 -63744, i32 -65040, i32 -65072, i32 -65280, i32 -65504, i32 -131072, i32 -127744>
  %86 = icmp ult <8 x i32> %85, <i32 11172, i32 512, i32 10, i32 64, i32 97, i32 7, i32 65534, i32 848>
  %87 = bitcast <8 x i1> %86 to i8
  %88 = icmp ne i8 %87, 0
  %89 = or i1 %88, %80
  br i1 %89, label %94, label %90

90:                                               ; preds = %76
  %91 = and i32 %1, -256
  %92 = icmp eq i32 %91, 129280
  %93 = select i1 %92, i64 2, i64 1
  br label %94

94:                                               ; preds = %69, %71, %76, %90
  %95 = phi i64 [ 1, %69 ], [ 2, %71 ], [ %93, %90 ], [ 2, %76 ]
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %97 = load ptr, ptr %96, align 8, !tbaa !477, !nonnull !297, !align !299
  %98 = load i64, ptr %97, align 8, !tbaa !27
  %99 = add i64 %98, %95
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %101 = load ptr, ptr %100, align 8, !tbaa !478, !nonnull !297, !align !299
  %102 = load i64, ptr %101, align 8, !tbaa !27
  %103 = icmp ugt i64 %99, %102
  br i1 %103, label %133, label %104

104:                                              ; preds = %94
  store i64 %99, ptr %97, align 8, !tbaa !27
  %105 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %106 = load i64, ptr %105, align 8, !tbaa !341
  %107 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %108 = load ptr, ptr %107, align 8, !tbaa !479, !nonnull !297, !align !299
  %109 = load i64, ptr %108, align 8, !tbaa !27
  %110 = add i64 %109, %106
  store i64 %110, ptr %108, align 8, !tbaa !27
  %111 = load ptr, ptr %0, align 8, !tbaa !473, !nonnull !297
  %112 = load i8, ptr %111, align 1, !tbaa !426, !range !296, !noundef !297
  %113 = trunc nuw i8 %112 to i1
  br i1 %113, label %114, label %133

114:                                              ; preds = %104
  %115 = load i64, ptr %97, align 8, !tbaa !27
  %116 = load i64, ptr %101, align 8, !tbaa !27
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %114
  %119 = load ptr, ptr %2, align 8, !tbaa !335
  %120 = load i64, ptr %105, align 8, !tbaa !341
  %121 = getelementptr inbounds nuw i8, ptr %119, i64 %120
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %123 = load ptr, ptr %122, align 8, !tbaa !480, !nonnull !297, !align !299
  %124 = load ptr, ptr %123, align 8, !tbaa !335
  %125 = getelementptr inbounds nuw i8, ptr %123, i64 8
  %126 = load i64, ptr %125, align 8, !tbaa !341
  %127 = getelementptr inbounds nuw i8, ptr %124, i64 %126
  %128 = icmp eq ptr %121, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %118
  %130 = add nuw i64 %115, 1
  store i64 %130, ptr %97, align 8, !tbaa !27
  %131 = load i64, ptr %108, align 8, !tbaa !27
  %132 = add i64 %131, 1
  store i64 %132, ptr %108, align 8, !tbaa !27
  br label %133

133:                                              ; preds = %129, %118, %114, %104, %94, %68
  %134 = phi i1 [ %38, %68 ], [ false, %94 ], [ true, %104 ], [ true, %114 ], [ true, %118 ], [ true, %129 ]
  ret i1 %134
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail15counting_bufferIcE4growERNS1_6bufferIcEEy(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #2 comdat align 2 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i64, ptr %3, align 8, !tbaa !378
  %5 = icmp eq i64 %4, 256
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %8 = load i64, ptr %7, align 8, !tbaa !475
  %9 = add i64 %8, 256
  store i64 %9, ptr %7, align 8, !tbaa !475
  store i64 0, ptr %3, align 8, !tbaa !378
  br label %10

10:                                               ; preds = %2, %6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local i64 @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_yRKNS0_11basic_specsE(i64 %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #16 comdat {
  %4 = load i32, ptr %2, align 4, !tbaa !331
  %5 = lshr i32 %4, 15
  %6 = and i32 %5, 7
  %7 = zext nneg i32 %6 to i64
  %8 = icmp eq i32 %6, 1
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 4
  br i1 %8, label %10, label %35

10:                                               ; preds = %3
  %11 = load i8, ptr %9, align 4, !tbaa !216
  %12 = inttoptr i64 %0 to ptr
  %13 = icmp eq i64 %1, 0
  br i1 %13, label %159, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 24
  br label %18

18:                                               ; preds = %28, %14
  %19 = phi i64 [ 0, %14 ], [ %33, %28 ]
  %20 = load i64, ptr %15, align 8, !tbaa !378
  %21 = add i64 %20, 1
  %22 = load i64, ptr %16, align 8, !tbaa !380
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load ptr, ptr %17, align 8, !tbaa !381
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %21)
  %26 = load i64, ptr %15, align 8, !tbaa !378
  %27 = add i64 %26, 1
  br label %28

28:                                               ; preds = %24, %18
  %29 = phi i64 [ %21, %18 ], [ %27, %24 ]
  %30 = phi i64 [ %20, %18 ], [ %26, %24 ]
  %31 = load ptr, ptr %12, align 8, !tbaa !382
  store i64 %29, ptr %15, align 8, !tbaa !378
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 %30
  store i8 %11, ptr %32, align 1, !tbaa !216
  %33 = add nuw i64 %19, 1
  %34 = icmp eq i64 %33, %1
  br i1 %34, label %159, label %18, !llvm.loop !481

35:                                               ; preds = %3
  %36 = icmp eq i64 %1, 0
  br i1 %36, label %159, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds nuw i8, ptr %2, i64 %7
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 4
  %40 = inttoptr i64 %0 to ptr
  %41 = icmp eq i32 %6, 0
  %42 = getelementptr inbounds nuw i8, ptr %40, i64 8
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 16
  %44 = ptrtoint ptr %39 to i64
  %45 = getelementptr inbounds nuw i8, ptr %40, i64 24
  br i1 %41, label %159, label %46

46:                                               ; preds = %37
  %47 = load i64, ptr %42, align 8, !tbaa !378
  br label %48

48:                                               ; preds = %46, %156
  %49 = phi i64 [ %134, %156 ], [ %47, %46 ]
  %50 = phi i64 [ %157, %156 ], [ 0, %46 ]
  br label %51

51:                                               ; preds = %132, %48
  %52 = phi i64 [ %49, %48 ], [ %134, %132 ]
  %53 = phi ptr [ %9, %48 ], [ %135, %132 ]
  %54 = ptrtoint ptr %53 to i64
  %55 = sub i64 %44, %54
  %56 = icmp sgt i64 %55, -1
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  tail call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

58:                                               ; preds = %51
  %59 = load i64, ptr %43, align 8, !tbaa !380
  %60 = sub i64 %59, %52
  %61 = icmp ult i64 %60, %55
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load ptr, ptr %45, align 8, !tbaa !381
  %64 = add i64 %55, %52
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(32) %40, i64 noundef %64)
  %65 = load i64, ptr %42, align 8, !tbaa !378
  %66 = load i64, ptr %43, align 8, !tbaa !380
  %67 = sub i64 %66, %65
  %68 = tail call i64 @llvm.umin.i64(i64 %55, i64 %67)
  br label %69

69:                                               ; preds = %62, %58
  %70 = phi i64 [ %65, %62 ], [ %52, %58 ]
  %71 = phi i64 [ %68, %62 ], [ %55, %58 ]
  %72 = load ptr, ptr %40, align 8, !tbaa !382
  %73 = ptrtoint ptr %72 to i64
  %74 = getelementptr inbounds nuw i8, ptr %72, i64 %70
  %75 = icmp eq i64 %71, 0
  br i1 %75, label %132, label %76

76:                                               ; preds = %69
  %77 = icmp ult i64 %71, 4
  br i1 %77, label %78, label %95

78:                                               ; preds = %115, %128, %95, %76
  %79 = phi i64 [ 0, %76 ], [ 0, %95 ], [ %102, %115 ], [ %120, %128 ]
  %80 = and i64 %71, 3
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %78, %82
  %83 = phi i64 [ %88, %82 ], [ %79, %78 ]
  %84 = phi i64 [ %89, %82 ], [ 0, %78 ]
  %85 = getelementptr inbounds nuw i8, ptr %53, i64 %83
  %86 = load i8, ptr %85, align 1, !tbaa !216
  %87 = getelementptr inbounds nuw i8, ptr %74, i64 %83
  store i8 %86, ptr %87, align 1, !tbaa !216
  %88 = add nuw i64 %83, 1
  %89 = add i64 %84, 1
  %90 = icmp eq i64 %89, %80
  br i1 %90, label %91, label %82, !llvm.loop !482

91:                                               ; preds = %82, %78
  %92 = phi i64 [ %79, %78 ], [ %88, %82 ]
  %93 = sub i64 %79, %71
  %94 = icmp ugt i64 %93, -4
  br i1 %94, label %130, label %137

95:                                               ; preds = %76
  %96 = add i64 %70, %73
  %97 = sub i64 %96, %54
  %98 = icmp ult i64 %97, 32
  br i1 %98, label %78, label %99

99:                                               ; preds = %95
  %100 = icmp ult i64 %71, 32
  br i1 %100, label %118, label %101

101:                                              ; preds = %99
  %102 = and i64 %71, -32
  br label %103

103:                                              ; preds = %103, %101
  %104 = phi i64 [ 0, %101 ], [ %111, %103 ]
  %105 = getelementptr inbounds nuw i8, ptr %53, i64 %104
  %106 = getelementptr inbounds nuw i8, ptr %105, i64 16
  %107 = load <16 x i8>, ptr %105, align 1, !tbaa !216
  %108 = load <16 x i8>, ptr %106, align 1, !tbaa !216
  %109 = getelementptr inbounds nuw i8, ptr %74, i64 %104
  %110 = getelementptr inbounds nuw i8, ptr %109, i64 16
  store <16 x i8> %107, ptr %109, align 1, !tbaa !216
  store <16 x i8> %108, ptr %110, align 1, !tbaa !216
  %111 = add nuw i64 %104, 32
  %112 = icmp eq i64 %111, %102
  br i1 %112, label %113, label %103, !llvm.loop !483

113:                                              ; preds = %103
  %114 = icmp eq i64 %71, %102
  br i1 %114, label %130, label %115

115:                                              ; preds = %113
  %116 = and i64 %71, 28
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %78, label %118

118:                                              ; preds = %115, %99
  %119 = phi i64 [ %102, %115 ], [ 0, %99 ]
  %120 = and i64 %71, -4
  br label %121

121:                                              ; preds = %121, %118
  %122 = phi i64 [ %119, %118 ], [ %126, %121 ]
  %123 = getelementptr inbounds nuw i8, ptr %53, i64 %122
  %124 = load <4 x i8>, ptr %123, align 1, !tbaa !216
  %125 = getelementptr inbounds nuw i8, ptr %74, i64 %122
  store <4 x i8> %124, ptr %125, align 1, !tbaa !216
  %126 = add nuw i64 %122, 4
  %127 = icmp eq i64 %126, %120
  br i1 %127, label %128, label %121, !llvm.loop !484

128:                                              ; preds = %121
  %129 = icmp eq i64 %71, %120
  br i1 %129, label %130, label %78

130:                                              ; preds = %91, %137, %128, %113
  %131 = load i64, ptr %42, align 8, !tbaa !378
  br label %132

132:                                              ; preds = %130, %69
  %133 = phi i64 [ %131, %130 ], [ %70, %69 ]
  %134 = add i64 %133, %71
  store i64 %134, ptr %42, align 8, !tbaa !378
  %135 = getelementptr inbounds nuw i8, ptr %53, i64 %71
  %136 = icmp eq ptr %135, %39
  br i1 %136, label %156, label %51, !llvm.loop !387

137:                                              ; preds = %91, %137
  %138 = phi i64 [ %154, %137 ], [ %92, %91 ]
  %139 = getelementptr inbounds nuw i8, ptr %53, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !216
  %141 = getelementptr inbounds nuw i8, ptr %74, i64 %138
  store i8 %140, ptr %141, align 1, !tbaa !216
  %142 = add nuw i64 %138, 1
  %143 = getelementptr inbounds nuw i8, ptr %53, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !216
  %145 = getelementptr inbounds nuw i8, ptr %74, i64 %142
  store i8 %144, ptr %145, align 1, !tbaa !216
  %146 = add nuw i64 %138, 2
  %147 = getelementptr inbounds nuw i8, ptr %53, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !216
  %149 = getelementptr inbounds nuw i8, ptr %74, i64 %146
  store i8 %148, ptr %149, align 1, !tbaa !216
  %150 = add nuw i64 %138, 3
  %151 = getelementptr inbounds nuw i8, ptr %53, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !216
  %153 = getelementptr inbounds nuw i8, ptr %74, i64 %150
  store i8 %152, ptr %153, align 1, !tbaa !216
  %154 = add nuw i64 %138, 4
  %155 = icmp eq i64 %154, %71
  br i1 %155, label %130, label %137, !llvm.loop !485

156:                                              ; preds = %132
  %157 = add nuw i64 %50, 1
  %158 = icmp eq i64 %157, %1
  br i1 %158, label %159, label %48, !llvm.loop !486

159:                                              ; preds = %156, %28, %37, %35, %10
  ret i64 %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEESB_SB_SD_(ptr dead_on_unwind noalias writable sret(%struct.bounded_output_iterator) align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = alloca [7 x i8], align 1
  %5 = ptrtoint ptr %4 to i64
  %6 = alloca %"struct.fmt::v12::detail::find_escape_result", align 8
  %7 = alloca %struct.bounded_output_iterator, align 8
  %8 = alloca %struct.bounded_output_iterator, align 8
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !465
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %1, align 8, !tbaa !375
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !378
  %16 = add i64 %15, 1
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %18 = load i64, ptr %17, align 8, !tbaa !380
  %19 = icmp ugt i64 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %22 = load ptr, ptr %21, align 8, !tbaa !381
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %16)
  %23 = load i64, ptr %14, align 8, !tbaa !378
  %24 = add i64 %23, 1
  br label %25

25:                                               ; preds = %20, %12
  %26 = phi i64 [ %16, %12 ], [ %24, %20 ]
  %27 = phi i64 [ %15, %12 ], [ %23, %20 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !382
  store i64 %26, ptr %14, align 8, !tbaa !378
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 %27
  store i8 34, ptr %29, align 1, !tbaa !216
  %30 = load i64, ptr %9, align 8, !tbaa !465
  %31 = add i64 %30, -1
  store i64 %31, ptr %9, align 8, !tbaa !465
  br label %32

32:                                               ; preds = %3, %25
  %33 = load ptr, ptr %2, align 8, !tbaa !335
  %34 = ptrtoint ptr %33 to i64
  %35 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %36 = load i64, ptr %35, align 8, !tbaa !341
  %37 = getelementptr inbounds nuw i8, ptr %33, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %39 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %40 = ptrtoint ptr %37 to i64
  %41 = add i64 %36, %34
  %42 = add i64 %36, %34
  %43 = add i64 %36, %34
  br label %44

44:                                               ; preds = %363, %32
  %45 = phi ptr [ %33, %32 ], [ %360, %363 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  store ptr %37, ptr %6, align 8, !tbaa !449, !alias.scope !487
  store ptr null, ptr %38, align 8, !tbaa !451, !alias.scope !487
  store i32 0, ptr %39, align 8, !tbaa !452, !alias.scope !487
  %46 = ptrtoint ptr %45 to i64
  %47 = sub i64 %40, %46
  %48 = icmp sgt i64 %47, -1
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25, !noalias !487
  unreachable

50:                                               ; preds = %44
  %51 = icmp samesign ugt i64 %47, 3
  br i1 %51, label %52, label %139

52:                                               ; preds = %50
  %53 = getelementptr inbounds nuw i8, ptr %45, i64 %47
  %54 = getelementptr inbounds i8, ptr %53, i64 -3
  br label %55

55:                                               ; preds = %52, %131
  %56 = phi ptr [ %132, %131 ], [ %45, %52 ]
  %57 = load i8, ptr %56, align 1, !tbaa !216
  %58 = zext i8 %57 to i32
  %59 = lshr i32 %58, 3
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds nuw [32 x i8], ptr @.str.33, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !216
  %63 = sext i8 %62 to i64
  %64 = getelementptr inbounds i8, ptr %56, i64 %63
  %65 = lshr i32 -2130771968, %59
  %66 = and i32 %65, 1
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds nuw i8, ptr %64, i64 %67
  %69 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 0, i64 %63
  %70 = load i32, ptr %69, align 4, !tbaa !16
  %71 = and i32 %70, %58
  %72 = shl nuw nsw i32 %71, 18
  %73 = getelementptr inbounds nuw i8, ptr %56, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !216
  %75 = and i8 %74, 63
  %76 = zext nneg i8 %75 to i32
  %77 = shl nuw nsw i32 %76, 12
  %78 = or disjoint i32 %77, %72
  %79 = getelementptr inbounds nuw i8, ptr %56, i64 2
  %80 = load i8, ptr %79, align 1, !tbaa !216
  %81 = and i8 %80, 63
  %82 = zext nneg i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 6
  %84 = or disjoint i32 %83, %78
  %85 = getelementptr inbounds nuw i8, ptr %56, i64 3
  %86 = load i8, ptr %85, align 1, !tbaa !216
  %87 = and i8 %86, 63
  %88 = zext nneg i8 %87 to i32
  %89 = or disjoint i32 %84, %88
  %90 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 0, i64 %63
  %91 = load i32, ptr %90, align 4, !tbaa !16
  %92 = lshr i32 %89, %91
  %93 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 0, i64 %63
  %94 = load i32, ptr %93, align 4, !tbaa !16
  %95 = icmp ult i32 %92, %94
  %96 = select i1 %95, i32 64, i32 0
  %97 = and i32 %92, 2147481600
  %98 = icmp eq i32 %97, 55296
  %99 = select i1 %98, i32 128, i32 0
  %100 = icmp samesign ugt i32 %92, 1114111
  %101 = select i1 %100, i32 256, i32 0
  %102 = lshr i8 %74, 2
  %103 = and i8 %102, 48
  %104 = lshr i8 %80, 4
  %105 = and i8 %104, 12
  %106 = lshr i8 %86, 6
  %107 = or disjoint i8 %105, %103
  %108 = or disjoint i8 %107, %106
  %109 = zext nneg i8 %108 to i32
  %110 = or disjoint i32 %96, %109
  %111 = or disjoint i32 %110, %101
  %112 = or disjoint i32 %111, %99
  %113 = xor i32 %112, 42
  %114 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 0, i64 %63
  %115 = load i32, ptr %114, align 4, !tbaa !16
  %116 = lshr i32 %113, %115
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %117, i32 %92, i32 -1
  br i1 %117, label %119, label %123

119:                                              ; preds = %55
  %120 = add nsw i64 %67, %63
  %121 = icmp sgt i64 %120, -1
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

123:                                              ; preds = %119, %55
  %124 = phi i64 [ 1, %55 ], [ %120, %119 ]
  %125 = icmp ult i32 %118, 32
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  switch i32 %118, label %127 [
    i32 127, label %129
    i32 92, label %129
    i32 34, label %129
  ]

127:                                              ; preds = %126
  %128 = call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %118)
  br i1 %128, label %131, label %129

129:                                              ; preds = %123, %126, %126, %126, %127
  %130 = getelementptr inbounds nuw i8, ptr %56, i64 %124
  store ptr %56, ptr %6, align 8, !tbaa !377
  store ptr %130, ptr %38, align 8, !tbaa !377
  store i32 %118, ptr %39, align 8, !tbaa !16
  br label %321

131:                                              ; preds = %127
  %132 = select i1 %117, ptr %68, ptr %73
  %133 = icmp ult ptr %132, %54
  br i1 %133, label %55, label %134, !llvm.loop !453

134:                                              ; preds = %131
  %135 = ptrtoint ptr %132 to i64
  %136 = sub i64 %40, %135
  %137 = icmp sgt i64 %136, -1
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

139:                                              ; preds = %134, %50
  %140 = phi ptr [ %132, %134 ], [ %45, %50 ]
  %141 = phi i64 [ %136, %134 ], [ %47, %50 ]
  %142 = icmp eq ptr %37, %140
  br i1 %142, label %321, label %143

143:                                              ; preds = %139
  %144 = ptrtoint ptr %140 to i64
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #27, !noalias !487
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %4, i8 0, i64 7, i1 false), !noalias !487
  %145 = sub i64 %41, %144
  %146 = icmp ult i64 %145, 4
  %147 = sub i64 %5, %144
  %148 = icmp ult i64 %147, 32
  %149 = or i1 %146, %148
  br i1 %149, label %185, label %150

150:                                              ; preds = %143
  %151 = icmp ult i64 %145, 32
  br i1 %151, label %171, label %152

152:                                              ; preds = %150
  %153 = and i64 %145, -32
  br label %154

154:                                              ; preds = %154, %152
  %155 = phi i64 [ 0, %152 ], [ %162, %154 ]
  %156 = getelementptr i8, ptr %4, i64 %155
  %157 = getelementptr i8, ptr %140, i64 %155
  %158 = getelementptr i8, ptr %157, i64 16
  %159 = load <16 x i8>, ptr %157, align 1, !tbaa !216
  %160 = load <16 x i8>, ptr %158, align 1, !tbaa !216
  %161 = getelementptr i8, ptr %156, i64 16
  store <16 x i8> %159, ptr %156, align 1, !tbaa !216, !noalias !487
  store <16 x i8> %160, ptr %161, align 1, !tbaa !216, !noalias !487
  %162 = add nuw i64 %155, 32
  %163 = icmp eq i64 %162, %153
  br i1 %163, label %164, label %154, !llvm.loop !490

164:                                              ; preds = %154
  %165 = icmp eq i64 %145, %153
  br i1 %165, label %234, label %166

166:                                              ; preds = %164
  %167 = getelementptr i8, ptr %4, i64 %153
  %168 = getelementptr i8, ptr %140, i64 %153
  %169 = and i64 %145, 28
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %185, label %171

171:                                              ; preds = %166, %150
  %172 = phi i64 [ %153, %166 ], [ 0, %150 ]
  %173 = and i64 %145, -4
  %174 = getelementptr i8, ptr %4, i64 %173
  %175 = getelementptr i8, ptr %140, i64 %173
  br label %176

176:                                              ; preds = %176, %171
  %177 = phi i64 [ %172, %171 ], [ %181, %176 ]
  %178 = getelementptr i8, ptr %4, i64 %177
  %179 = getelementptr i8, ptr %140, i64 %177
  %180 = load <4 x i8>, ptr %179, align 1, !tbaa !216
  store <4 x i8> %180, ptr %178, align 1, !tbaa !216, !noalias !487
  %181 = add nuw i64 %177, 4
  %182 = icmp eq i64 %181, %173
  br i1 %182, label %183, label %176, !llvm.loop !491

183:                                              ; preds = %176
  %184 = icmp eq i64 %145, %173
  br i1 %184, label %234, label %185

185:                                              ; preds = %166, %183, %143
  %186 = phi ptr [ %4, %143 ], [ %167, %166 ], [ %174, %183 ]
  %187 = phi ptr [ %140, %143 ], [ %168, %166 ], [ %175, %183 ]
  %188 = ptrtoint ptr %187 to i64
  %189 = sub i64 %42, %188
  %190 = and i64 %189, 7
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %201, label %192

192:                                              ; preds = %185, %192
  %193 = phi ptr [ %198, %192 ], [ %186, %185 ]
  %194 = phi ptr [ %196, %192 ], [ %187, %185 ]
  %195 = phi i64 [ %199, %192 ], [ 0, %185 ]
  %196 = getelementptr inbounds nuw i8, ptr %194, i64 1
  %197 = load i8, ptr %194, align 1, !tbaa !216
  %198 = getelementptr inbounds nuw i8, ptr %193, i64 1
  store i8 %197, ptr %193, align 1, !tbaa !216, !noalias !487
  %199 = add i64 %195, 1
  %200 = icmp eq i64 %199, %190
  br i1 %200, label %201, label %192, !llvm.loop !492

201:                                              ; preds = %192, %185
  %202 = phi ptr [ %186, %185 ], [ %198, %192 ]
  %203 = phi ptr [ %187, %185 ], [ %196, %192 ]
  %204 = sub i64 %188, %43
  %205 = icmp ugt i64 %204, -8
  br i1 %205, label %234, label %206

206:                                              ; preds = %201, %206
  %207 = phi ptr [ %232, %206 ], [ %202, %201 ]
  %208 = phi ptr [ %230, %206 ], [ %203, %201 ]
  %209 = getelementptr inbounds nuw i8, ptr %208, i64 1
  %210 = load i8, ptr %208, align 1, !tbaa !216
  %211 = getelementptr inbounds nuw i8, ptr %207, i64 1
  store i8 %210, ptr %207, align 1, !tbaa !216, !noalias !487
  %212 = getelementptr inbounds nuw i8, ptr %208, i64 2
  %213 = load i8, ptr %209, align 1, !tbaa !216
  %214 = getelementptr inbounds nuw i8, ptr %207, i64 2
  store i8 %213, ptr %211, align 1, !tbaa !216, !noalias !487
  %215 = getelementptr inbounds nuw i8, ptr %208, i64 3
  %216 = load i8, ptr %212, align 1, !tbaa !216
  %217 = getelementptr inbounds nuw i8, ptr %207, i64 3
  store i8 %216, ptr %214, align 1, !tbaa !216, !noalias !487
  %218 = getelementptr inbounds nuw i8, ptr %208, i64 4
  %219 = load i8, ptr %215, align 1, !tbaa !216
  %220 = getelementptr inbounds nuw i8, ptr %207, i64 4
  store i8 %219, ptr %217, align 1, !tbaa !216, !noalias !487
  %221 = getelementptr inbounds nuw i8, ptr %208, i64 5
  %222 = load i8, ptr %218, align 1, !tbaa !216
  %223 = getelementptr inbounds nuw i8, ptr %207, i64 5
  store i8 %222, ptr %220, align 1, !tbaa !216, !noalias !487
  %224 = getelementptr inbounds nuw i8, ptr %208, i64 6
  %225 = load i8, ptr %221, align 1, !tbaa !216
  %226 = getelementptr inbounds nuw i8, ptr %207, i64 6
  store i8 %225, ptr %223, align 1, !tbaa !216, !noalias !487
  %227 = getelementptr inbounds nuw i8, ptr %208, i64 7
  %228 = load i8, ptr %224, align 1, !tbaa !216
  %229 = getelementptr inbounds nuw i8, ptr %207, i64 7
  store i8 %228, ptr %226, align 1, !tbaa !216, !noalias !487
  %230 = getelementptr inbounds nuw i8, ptr %208, i64 8
  %231 = load i8, ptr %227, align 1, !tbaa !216
  %232 = getelementptr inbounds nuw i8, ptr %207, i64 8
  store i8 %231, ptr %229, align 1, !tbaa !216, !noalias !487
  %233 = icmp eq ptr %230, %37
  br i1 %233, label %234, label %206, !llvm.loop !493

234:                                              ; preds = %201, %206, %183, %164
  %235 = getelementptr inbounds nuw i8, ptr %4, i64 %141
  br label %236

236:                                              ; preds = %313, %234
  %237 = phi ptr [ %314, %313 ], [ %4, %234 ]
  %238 = phi ptr [ %318, %313 ], [ %140, %234 ]
  %239 = load i8, ptr %237, align 1, !tbaa !216
  %240 = zext i8 %239 to i32
  %241 = lshr i32 %240, 3
  %242 = zext nneg i32 %241 to i64
  %243 = getelementptr inbounds nuw [32 x i8], ptr @.str.33, i64 0, i64 %242
  %244 = load i8, ptr %243, align 1, !tbaa !216
  %245 = sext i8 %244 to i64
  %246 = getelementptr inbounds i8, ptr %237, i64 %245
  %247 = lshr i32 -2130771968, %241
  %248 = and i32 %247, 1
  %249 = zext nneg i32 %248 to i64
  %250 = getelementptr inbounds nuw i8, ptr %246, i64 %249
  %251 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 0, i64 %245
  %252 = load i32, ptr %251, align 4, !tbaa !16
  %253 = and i32 %252, %240
  %254 = shl nuw nsw i32 %253, 18
  %255 = getelementptr inbounds nuw i8, ptr %237, i64 1
  %256 = load i8, ptr %255, align 1, !tbaa !216
  %257 = and i8 %256, 63
  %258 = zext nneg i8 %257 to i32
  %259 = shl nuw nsw i32 %258, 12
  %260 = or disjoint i32 %259, %254
  %261 = getelementptr inbounds nuw i8, ptr %237, i64 2
  %262 = load i8, ptr %261, align 1, !tbaa !216
  %263 = and i8 %262, 63
  %264 = zext nneg i8 %263 to i32
  %265 = shl nuw nsw i32 %264, 6
  %266 = or disjoint i32 %265, %260
  %267 = getelementptr inbounds nuw i8, ptr %237, i64 3
  %268 = load i8, ptr %267, align 1, !tbaa !216
  %269 = and i8 %268, 63
  %270 = zext nneg i8 %269 to i32
  %271 = or disjoint i32 %266, %270
  %272 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 0, i64 %245
  %273 = load i32, ptr %272, align 4, !tbaa !16
  %274 = lshr i32 %271, %273
  %275 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 0, i64 %245
  %276 = load i32, ptr %275, align 4, !tbaa !16
  %277 = icmp ult i32 %274, %276
  %278 = select i1 %277, i32 64, i32 0
  %279 = and i32 %274, 2147481600
  %280 = icmp eq i32 %279, 55296
  %281 = select i1 %280, i32 128, i32 0
  %282 = icmp samesign ugt i32 %274, 1114111
  %283 = select i1 %282, i32 256, i32 0
  %284 = lshr i8 %256, 2
  %285 = and i8 %284, 48
  %286 = lshr i8 %262, 4
  %287 = and i8 %286, 12
  %288 = lshr i8 %268, 6
  %289 = or disjoint i8 %287, %285
  %290 = or disjoint i8 %289, %288
  %291 = zext nneg i8 %290 to i32
  %292 = or disjoint i32 %278, %291
  %293 = or disjoint i32 %292, %283
  %294 = or disjoint i32 %293, %281
  %295 = xor i32 %294, 42
  %296 = getelementptr inbounds [5 x i32], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 0, i64 %245
  %297 = load i32, ptr %296, align 4, !tbaa !16
  %298 = lshr i32 %295, %297
  %299 = icmp eq i32 %298, 0
  %300 = select i1 %299, i32 %274, i32 -1
  br i1 %299, label %301, label %305

301:                                              ; preds = %236
  %302 = add nsw i64 %249, %245
  %303 = icmp sgt i64 %302, -1
  br i1 %303, label %305, label %304

304:                                              ; preds = %301
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

305:                                              ; preds = %301, %236
  %306 = phi i64 [ 1, %236 ], [ %302, %301 ]
  %307 = icmp ult i32 %300, 32
  br i1 %307, label %311, label %308

308:                                              ; preds = %305
  switch i32 %300, label %309 [
    i32 127, label %311
    i32 92, label %311
    i32 34, label %311
  ]

309:                                              ; preds = %308
  %310 = call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %300)
  br i1 %310, label %313, label %311

311:                                              ; preds = %305, %308, %308, %308, %309
  %312 = getelementptr inbounds nuw i8, ptr %238, i64 %306
  store ptr %238, ptr %6, align 8, !tbaa !377
  store ptr %312, ptr %38, align 8, !tbaa !377
  store i32 %300, ptr %39, align 8, !tbaa !16
  br label %320

313:                                              ; preds = %309
  %314 = select i1 %299, ptr %250, ptr %255
  %315 = ptrtoint ptr %314 to i64
  %316 = ptrtoint ptr %237 to i64
  %317 = sub i64 %315, %316
  %318 = getelementptr inbounds i8, ptr %238, i64 %317
  %319 = icmp ult ptr %314, %235
  br i1 %319, label %236, label %320, !llvm.loop !458

320:                                              ; preds = %313, %311
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #27, !noalias !487
  br label %321

321:                                              ; preds = %129, %139, %320
  %322 = load ptr, ptr %6, align 8, !tbaa !449
  %323 = load ptr, ptr %1, align 8, !tbaa !375
  %324 = load i64, ptr %9, align 8, !tbaa !27
  %325 = icmp eq ptr %45, %322
  br i1 %325, label %358, label %326

326:                                              ; preds = %321
  %327 = icmp eq i64 %324, 0
  br i1 %327, label %358, label %328

328:                                              ; preds = %326
  %329 = getelementptr inbounds nuw i8, ptr %323, i64 8
  %330 = getelementptr inbounds nuw i8, ptr %323, i64 16
  %331 = getelementptr inbounds nuw i8, ptr %323, i64 24
  br label %332

332:                                              ; preds = %328, %354
  %333 = phi i64 [ %355, %354 ], [ %324, %328 ]
  %334 = phi i64 [ %356, %354 ], [ 1, %328 ]
  %335 = phi ptr [ %336, %354 ], [ %45, %328 ]
  %336 = getelementptr inbounds nuw i8, ptr %335, i64 1
  %337 = load i8, ptr %335, align 1, !tbaa !216, !noalias !494
  %338 = icmp eq i64 %334, 0
  br i1 %338, label %354, label %339

339:                                              ; preds = %332
  %340 = load i64, ptr %329, align 8, !tbaa !378, !noalias !494
  %341 = add i64 %340, 1
  %342 = load i64, ptr %330, align 8, !tbaa !380, !noalias !494
  %343 = icmp ugt i64 %341, %342
  br i1 %343, label %344, label %348

344:                                              ; preds = %339
  %345 = load ptr, ptr %331, align 8, !tbaa !381, !noalias !494
  call void %345(ptr noundef nonnull align 8 dereferenceable(32) %323, i64 noundef %341), !noalias !494
  %346 = load i64, ptr %329, align 8, !tbaa !378, !noalias !494
  %347 = add i64 %346, 1
  br label %348

348:                                              ; preds = %344, %339
  %349 = phi i64 [ %341, %339 ], [ %347, %344 ]
  %350 = phi i64 [ %340, %339 ], [ %346, %344 ]
  %351 = load ptr, ptr %323, align 8, !tbaa !382, !noalias !494
  store i64 %349, ptr %329, align 8, !tbaa !378, !noalias !494
  %352 = getelementptr inbounds nuw i8, ptr %351, i64 %350
  store i8 %337, ptr %352, align 1, !tbaa !216, !noalias !494
  %353 = add i64 %333, -1
  br label %354

354:                                              ; preds = %348, %332
  %355 = phi i64 [ %333, %332 ], [ %353, %348 ]
  %356 = phi i64 [ 0, %332 ], [ %353, %348 ]
  %357 = icmp eq ptr %336, %322
  br i1 %357, label %358, label %332, !llvm.loop !497

358:                                              ; preds = %354, %321, %326
  %359 = phi i64 [ %324, %321 ], [ 0, %326 ], [ %355, %354 ]
  store ptr %323, ptr %1, align 8, !tbaa !375
  store i64 %359, ptr %9, align 8, !tbaa !27
  %360 = load ptr, ptr %38, align 8, !tbaa !451
  %361 = icmp eq ptr %360, null
  br i1 %361, label %362, label %363

362:                                              ; preds = %358
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #27
  br label %367

363:                                              ; preds = %358
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !499
  call void @_ZN3fmt3v126detail16write_escaped_cpIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorcEES8_S8_RKNS1_18find_escape_resultISB_EE(ptr dead_on_unwind nonnull writable sret(%struct.bounded_output_iterator) align 8 %7, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !499
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #27
  %364 = icmp eq ptr %360, %37
  br i1 %364, label %365, label %44, !llvm.loop !500

365:                                              ; preds = %363
  %366 = load i64, ptr %9, align 8, !tbaa !465
  br label %367

367:                                              ; preds = %365, %362
  %368 = phi i64 [ %366, %365 ], [ %359, %362 ]
  %369 = icmp eq i64 %368, 0
  br i1 %369, label %390, label %370

370:                                              ; preds = %367
  %371 = load ptr, ptr %1, align 8, !tbaa !375
  %372 = getelementptr inbounds nuw i8, ptr %371, i64 8
  %373 = load i64, ptr %372, align 8, !tbaa !378
  %374 = add i64 %373, 1
  %375 = getelementptr inbounds nuw i8, ptr %371, i64 16
  %376 = load i64, ptr %375, align 8, !tbaa !380
  %377 = icmp ugt i64 %374, %376
  br i1 %377, label %378, label %383

378:                                              ; preds = %370
  %379 = getelementptr inbounds nuw i8, ptr %371, i64 24
  %380 = load ptr, ptr %379, align 8, !tbaa !381
  call void %380(ptr noundef nonnull align 8 dereferenceable(32) %371, i64 noundef %374)
  %381 = load i64, ptr %372, align 8, !tbaa !378
  %382 = add i64 %381, 1
  br label %383

383:                                              ; preds = %378, %370
  %384 = phi i64 [ %374, %370 ], [ %382, %378 ]
  %385 = phi i64 [ %373, %370 ], [ %381, %378 ]
  %386 = load ptr, ptr %371, align 8, !tbaa !382
  store i64 %384, ptr %372, align 8, !tbaa !378
  %387 = getelementptr inbounds nuw i8, ptr %386, i64 %385
  store i8 34, ptr %387, align 1, !tbaa !216
  %388 = load i64, ptr %9, align 8, !tbaa !465
  %389 = add i64 %388, -1
  store i64 %389, ptr %9, align 8, !tbaa !465
  br label %390

390:                                              ; preds = %367, %383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !499
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail16write_escaped_cpIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorcEES8_S8_RKNS1_18find_escape_resultISB_EE(ptr dead_on_unwind noalias writable sret(%struct.bounded_output_iterator) align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
  %4 = alloca %struct.bounded_output_iterator, align 8
  %5 = alloca %struct.bounded_output_iterator, align 8
  %6 = alloca %struct.bounded_output_iterator, align 8
  %7 = alloca %struct.bounded_output_iterator, align 8
  %8 = alloca %struct.bounded_output_iterator, align 8
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %10 = load i32, ptr %9, align 8, !tbaa !452
  switch i32 %10, label %108 [
    i32 10, label %11
    i32 13, label %35
    i32 9, label %59
    i32 34, label %83
    i32 39, label %83
    i32 92, label %83
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !465
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %160, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %1, align 8, !tbaa !375
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %18 = load i64, ptr %17, align 8, !tbaa !378
  %19 = add i64 %18, 1
  %20 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %21 = load i64, ptr %20, align 8, !tbaa !380
  %22 = icmp ugt i64 %19, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = getelementptr inbounds nuw i8, ptr %16, i64 24
  %25 = load ptr, ptr %24, align 8, !tbaa !381
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %19)
  %26 = load i64, ptr %17, align 8, !tbaa !378
  %27 = add i64 %26, 1
  br label %28

28:                                               ; preds = %23, %15
  %29 = phi i64 [ %19, %15 ], [ %27, %23 ]
  %30 = phi i64 [ %18, %15 ], [ %26, %23 ]
  %31 = load ptr, ptr %16, align 8, !tbaa !382
  store i64 %29, ptr %17, align 8, !tbaa !378
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 %30
  store i8 92, ptr %32, align 1, !tbaa !216
  %33 = load i64, ptr %12, align 8, !tbaa !465
  %34 = add i64 %33, -1
  store i64 %34, ptr %12, align 8, !tbaa !465
  br label %135

35:                                               ; preds = %3
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %37 = load i64, ptr %36, align 8, !tbaa !465
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %160, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %1, align 8, !tbaa !375
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 8
  %42 = load i64, ptr %41, align 8, !tbaa !378
  %43 = add i64 %42, 1
  %44 = getelementptr inbounds nuw i8, ptr %40, i64 16
  %45 = load i64, ptr %44, align 8, !tbaa !380
  %46 = icmp ugt i64 %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw i8, ptr %40, i64 24
  %49 = load ptr, ptr %48, align 8, !tbaa !381
  tail call void %49(ptr noundef nonnull align 8 dereferenceable(32) %40, i64 noundef %43)
  %50 = load i64, ptr %41, align 8, !tbaa !378
  %51 = add i64 %50, 1
  br label %52

52:                                               ; preds = %47, %39
  %53 = phi i64 [ %43, %39 ], [ %51, %47 ]
  %54 = phi i64 [ %42, %39 ], [ %50, %47 ]
  %55 = load ptr, ptr %40, align 8, !tbaa !382
  store i64 %53, ptr %41, align 8, !tbaa !378
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 %54
  store i8 92, ptr %56, align 1, !tbaa !216
  %57 = load i64, ptr %36, align 8, !tbaa !465
  %58 = add i64 %57, -1
  store i64 %58, ptr %36, align 8, !tbaa !465
  br label %135

59:                                               ; preds = %3
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %61 = load i64, ptr %60, align 8, !tbaa !465
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %160, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %1, align 8, !tbaa !375
  %65 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %66 = load i64, ptr %65, align 8, !tbaa !378
  %67 = add i64 %66, 1
  %68 = getelementptr inbounds nuw i8, ptr %64, i64 16
  %69 = load i64, ptr %68, align 8, !tbaa !380
  %70 = icmp ugt i64 %67, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = getelementptr inbounds nuw i8, ptr %64, i64 24
  %73 = load ptr, ptr %72, align 8, !tbaa !381
  tail call void %73(ptr noundef nonnull align 8 dereferenceable(32) %64, i64 noundef %67)
  %74 = load i64, ptr %65, align 8, !tbaa !378
  %75 = add i64 %74, 1
  br label %76

76:                                               ; preds = %71, %63
  %77 = phi i64 [ %67, %63 ], [ %75, %71 ]
  %78 = phi i64 [ %66, %63 ], [ %74, %71 ]
  %79 = load ptr, ptr %64, align 8, !tbaa !382
  store i64 %77, ptr %65, align 8, !tbaa !378
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 %78
  store i8 92, ptr %80, align 1, !tbaa !216
  %81 = load i64, ptr %60, align 8, !tbaa !465
  %82 = add i64 %81, -1
  store i64 %82, ptr %60, align 8, !tbaa !465
  br label %135

83:                                               ; preds = %3, %3, %3
  %84 = trunc nuw nsw i32 %10 to i8
  %85 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %86 = load i64, ptr %85, align 8, !tbaa !465
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %160, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr %1, align 8, !tbaa !375
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 8
  %91 = load i64, ptr %90, align 8, !tbaa !378
  %92 = add i64 %91, 1
  %93 = getelementptr inbounds nuw i8, ptr %89, i64 16
  %94 = load i64, ptr %93, align 8, !tbaa !380
  %95 = icmp ugt i64 %92, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = getelementptr inbounds nuw i8, ptr %89, i64 24
  %98 = load ptr, ptr %97, align 8, !tbaa !381
  tail call void %98(ptr noundef nonnull align 8 dereferenceable(32) %89, i64 noundef %92)
  %99 = load i64, ptr %90, align 8, !tbaa !378
  %100 = add i64 %99, 1
  br label %101

101:                                              ; preds = %96, %88
  %102 = phi i64 [ %92, %88 ], [ %100, %96 ]
  %103 = phi i64 [ %91, %88 ], [ %99, %96 ]
  %104 = load ptr, ptr %89, align 8, !tbaa !382
  store i64 %102, ptr %90, align 8, !tbaa !378
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 %103
  store i8 92, ptr %105, align 1, !tbaa !216
  %106 = load i64, ptr %85, align 8, !tbaa !465
  %107 = add i64 %106, -1
  store i64 %107, ptr %85, align 8, !tbaa !465
  br label %135

108:                                              ; preds = %3
  %109 = icmp ult i32 %10, 256
  br i1 %109, label %110, label %111

110:                                              ; preds = %108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !499
  call void @_ZN3fmt3v126detail15write_codepointILy2EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj(ptr dead_on_unwind writable sret(%struct.bounded_output_iterator) align 8 %0, ptr noundef nonnull %4, i8 noundef 120, i32 noundef %10)
  br label %161

111:                                              ; preds = %108
  %112 = icmp ult i32 %10, 65536
  br i1 %112, label %113, label %114

113:                                              ; preds = %111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !499
  call void @_ZN3fmt3v126detail15write_codepointILy4EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj(ptr dead_on_unwind writable sret(%struct.bounded_output_iterator) align 8 %0, ptr noundef nonnull %5, i8 noundef 117, i32 noundef %10)
  br label %161

114:                                              ; preds = %111
  %115 = icmp ult i32 %10, 1114112
  br i1 %115, label %116, label %117

116:                                              ; preds = %114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !499
  call void @_ZN3fmt3v126detail15write_codepointILy8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj(ptr dead_on_unwind writable sret(%struct.bounded_output_iterator) align 8 %0, ptr noundef nonnull %6, i8 noundef 85, i32 noundef %10)
  br label %161

117:                                              ; preds = %114
  %118 = load ptr, ptr %2, align 8, !tbaa !449
  %119 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %120 = load ptr, ptr %119, align 8, !tbaa !451
  %121 = ptrtoint ptr %120 to i64
  %122 = ptrtoint ptr %118 to i64
  %123 = sub i64 %121, %122
  %124 = icmp sgt i64 %123, -1
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = icmp eq ptr %118, %120
  br i1 %126, label %128, label %129

127:                                              ; preds = %117
  tail call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

128:                                              ; preds = %129, %125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !499
  br label %161

129:                                              ; preds = %125, %129
  %130 = phi ptr [ %133, %129 ], [ %118, %125 ]
  %131 = load i8, ptr %130, align 1, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !499
  %132 = zext i8 %131 to i32
  call void @_ZN3fmt3v126detail15write_codepointILy2EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj(ptr dead_on_unwind nonnull writable sret(%struct.bounded_output_iterator) align 8 %7, ptr noundef nonnull %8, i8 noundef 120, i32 noundef %132)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !499
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #27
  %133 = getelementptr inbounds nuw i8, ptr %130, i64 1
  %134 = icmp eq ptr %133, %120
  br i1 %134, label %128, label %129

135:                                              ; preds = %101, %76, %52, %28
  %136 = phi i64 [ %34, %28 ], [ %58, %52 ], [ %82, %76 ], [ %107, %101 ]
  %137 = phi i8 [ 110, %28 ], [ 114, %52 ], [ 116, %76 ], [ %84, %101 ]
  %138 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %139 = icmp eq i64 %136, 0
  br i1 %139, label %160, label %140

140:                                              ; preds = %135
  %141 = load ptr, ptr %1, align 8, !tbaa !375
  %142 = getelementptr inbounds nuw i8, ptr %141, i64 8
  %143 = load i64, ptr %142, align 8, !tbaa !378
  %144 = add i64 %143, 1
  %145 = getelementptr inbounds nuw i8, ptr %141, i64 16
  %146 = load i64, ptr %145, align 8, !tbaa !380
  %147 = icmp ugt i64 %144, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %140
  %149 = getelementptr inbounds nuw i8, ptr %141, i64 24
  %150 = load ptr, ptr %149, align 8, !tbaa !381
  tail call void %150(ptr noundef nonnull align 8 dereferenceable(32) %141, i64 noundef %144)
  %151 = load i64, ptr %142, align 8, !tbaa !378
  %152 = add i64 %151, 1
  br label %153

153:                                              ; preds = %148, %140
  %154 = phi i64 [ %144, %140 ], [ %152, %148 ]
  %155 = phi i64 [ %143, %140 ], [ %151, %148 ]
  %156 = load ptr, ptr %141, align 8, !tbaa !382
  store i64 %154, ptr %142, align 8, !tbaa !378
  %157 = getelementptr inbounds nuw i8, ptr %156, i64 %155
  store i8 %137, ptr %157, align 1, !tbaa !216
  %158 = load i64, ptr %138, align 8, !tbaa !465
  %159 = add i64 %158, -1
  store i64 %159, ptr %138, align 8, !tbaa !465
  br label %160

160:                                              ; preds = %83, %59, %35, %11, %135, %153
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !499
  br label %161

161:                                              ; preds = %160, %128, %116, %113, %110
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail15write_codepointILy2EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj(ptr dead_on_unwind noalias writable sret(%struct.bounded_output_iterator) align 8 %0, ptr noundef %1, i8 noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat {
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !465
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %50, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %1, align 8, !tbaa !375
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !378
  %13 = add i64 %12, 1
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %15 = load i64, ptr %14, align 8, !tbaa !380
  %16 = icmp ugt i64 %13, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %19 = load ptr, ptr %18, align 8, !tbaa !381
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %13)
  %20 = load i64, ptr %11, align 8, !tbaa !378
  %21 = add i64 %20, 1
  br label %22

22:                                               ; preds = %9, %17
  %23 = phi i64 [ %13, %9 ], [ %21, %17 ]
  %24 = phi i64 [ %12, %9 ], [ %20, %17 ]
  %25 = load ptr, ptr %10, align 8, !tbaa !382
  store i64 %23, ptr %11, align 8, !tbaa !378
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %24
  store i8 92, ptr %26, align 1, !tbaa !216
  %27 = load i64, ptr %6, align 8, !tbaa !465
  %28 = add i64 %27, -1
  store i64 %28, ptr %6, align 8, !tbaa !465
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %22
  %31 = load ptr, ptr %1, align 8, !tbaa !375
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %33 = load i64, ptr %32, align 8, !tbaa !378
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds nuw i8, ptr %31, i64 16
  %36 = load i64, ptr %35, align 8, !tbaa !380
  %37 = icmp ugt i64 %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = getelementptr inbounds nuw i8, ptr %31, i64 24
  %40 = load ptr, ptr %39, align 8, !tbaa !381
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(32) %31, i64 noundef %34)
  %41 = load i64, ptr %32, align 8, !tbaa !378
  %42 = add i64 %41, 1
  br label %43

43:                                               ; preds = %38, %30
  %44 = phi i64 [ %34, %30 ], [ %42, %38 ]
  %45 = phi i64 [ %33, %30 ], [ %41, %38 ]
  %46 = load ptr, ptr %31, align 8, !tbaa !382
  store i64 %44, ptr %32, align 8, !tbaa !378
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 %45
  store i8 %2, ptr %47, align 1, !tbaa !216
  %48 = load i64, ptr %6, align 8, !tbaa !465
  %49 = add i64 %48, -1
  store i64 %49, ptr %6, align 8, !tbaa !465
  br label %50

50:                                               ; preds = %4, %22, %43
  %51 = phi i64 [ 0, %4 ], [ 0, %22 ], [ %49, %43 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #27
  store i16 12336, ptr %5, align 2
  %52 = getelementptr inbounds nuw i8, ptr %5, i64 2
  br label %53

53:                                               ; preds = %53, %50
  %54 = phi i32 [ %61, %53 ], [ %3, %50 ]
  %55 = phi ptr [ %60, %53 ], [ %52, %50 ]
  %56 = and i32 %54, 15
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds nuw i8, ptr @.str.35, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !216
  %60 = getelementptr inbounds i8, ptr %55, i64 -1
  store i8 %59, ptr %60, align 1, !tbaa !216
  %61 = lshr i32 %54, 4
  %62 = icmp ult i32 %54, 16
  br i1 %62, label %63, label %53, !llvm.loop !472

63:                                               ; preds = %53
  %64 = load ptr, ptr %1, align 8, !tbaa !375
  %65 = icmp eq i64 %51, 0
  br i1 %65, label %102, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %68 = getelementptr inbounds nuw i8, ptr %64, i64 16
  %69 = getelementptr inbounds nuw i8, ptr %64, i64 24
  %70 = load i8, ptr %5, align 2, !tbaa !216, !noalias !501
  %71 = load i64, ptr %67, align 8, !tbaa !378, !noalias !501
  %72 = add i64 %71, 1
  %73 = load i64, ptr %68, align 8, !tbaa !380, !noalias !501
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load ptr, ptr %69, align 8, !tbaa !381, !noalias !501
  tail call void %76(ptr noundef nonnull align 8 dereferenceable(32) %64, i64 noundef %72), !noalias !501
  %77 = load i64, ptr %67, align 8, !tbaa !378, !noalias !501
  %78 = add i64 %77, 1
  br label %79

79:                                               ; preds = %66, %75
  %80 = phi i64 [ %72, %66 ], [ %78, %75 ]
  %81 = phi i64 [ %71, %66 ], [ %77, %75 ]
  %82 = load ptr, ptr %64, align 8, !tbaa !382, !noalias !501
  store i64 %80, ptr %67, align 8, !tbaa !378, !noalias !501
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 %81
  store i8 %70, ptr %83, align 1, !tbaa !216, !noalias !501
  %84 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !216, !noalias !501
  %86 = icmp eq i64 %51, 1
  br i1 %86, label %102, label %87

87:                                               ; preds = %79
  %88 = load i64, ptr %67, align 8, !tbaa !378, !noalias !501
  %89 = add i64 %88, 1
  %90 = load i64, ptr %68, align 8, !tbaa !380, !noalias !501
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load ptr, ptr %69, align 8, !tbaa !381, !noalias !501
  tail call void %93(ptr noundef nonnull align 8 dereferenceable(32) %64, i64 noundef %89), !noalias !501
  %94 = load i64, ptr %67, align 8, !tbaa !378, !noalias !501
  %95 = add i64 %94, 1
  br label %96

96:                                               ; preds = %92, %87
  %97 = phi i64 [ %89, %87 ], [ %95, %92 ]
  %98 = phi i64 [ %88, %87 ], [ %94, %92 ]
  %99 = load ptr, ptr %64, align 8, !tbaa !382, !noalias !501
  store i64 %97, ptr %67, align 8, !tbaa !378, !noalias !501
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 %98
  store i8 %85, ptr %100, align 1, !tbaa !216, !noalias !501
  %101 = add i64 %51, -2
  br label %102

102:                                              ; preds = %79, %96, %63
  %103 = phi i64 [ 0, %63 ], [ 0, %79 ], [ %101, %96 ]
  store ptr %64, ptr %0, align 8, !tbaa !375
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %103, ptr %104, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail15write_codepointILy4EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj(ptr dead_on_unwind noalias writable sret(%struct.bounded_output_iterator) align 8 %0, ptr noundef %1, i8 noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat {
  %5 = alloca [4 x i8], align 4
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !465
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %50, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %1, align 8, !tbaa !375
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !378
  %13 = add i64 %12, 1
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %15 = load i64, ptr %14, align 8, !tbaa !380
  %16 = icmp ugt i64 %13, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %19 = load ptr, ptr %18, align 8, !tbaa !381
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %13)
  %20 = load i64, ptr %11, align 8, !tbaa !378
  %21 = add i64 %20, 1
  br label %22

22:                                               ; preds = %9, %17
  %23 = phi i64 [ %13, %9 ], [ %21, %17 ]
  %24 = phi i64 [ %12, %9 ], [ %20, %17 ]
  %25 = load ptr, ptr %10, align 8, !tbaa !382
  store i64 %23, ptr %11, align 8, !tbaa !378
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %24
  store i8 92, ptr %26, align 1, !tbaa !216
  %27 = load i64, ptr %6, align 8, !tbaa !465
  %28 = add i64 %27, -1
  store i64 %28, ptr %6, align 8, !tbaa !465
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %22
  %31 = load ptr, ptr %1, align 8, !tbaa !375
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %33 = load i64, ptr %32, align 8, !tbaa !378
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds nuw i8, ptr %31, i64 16
  %36 = load i64, ptr %35, align 8, !tbaa !380
  %37 = icmp ugt i64 %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = getelementptr inbounds nuw i8, ptr %31, i64 24
  %40 = load ptr, ptr %39, align 8, !tbaa !381
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(32) %31, i64 noundef %34)
  %41 = load i64, ptr %32, align 8, !tbaa !378
  %42 = add i64 %41, 1
  br label %43

43:                                               ; preds = %38, %30
  %44 = phi i64 [ %34, %30 ], [ %42, %38 ]
  %45 = phi i64 [ %33, %30 ], [ %41, %38 ]
  %46 = load ptr, ptr %31, align 8, !tbaa !382
  store i64 %44, ptr %32, align 8, !tbaa !378
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 %45
  store i8 %2, ptr %47, align 1, !tbaa !216
  %48 = load i64, ptr %6, align 8, !tbaa !465
  %49 = add i64 %48, -1
  store i64 %49, ptr %6, align 8, !tbaa !465
  br label %50

50:                                               ; preds = %4, %22, %43
  %51 = phi i64 [ 0, %4 ], [ 0, %22 ], [ %49, %43 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  store i32 808464432, ptr %5, align 4
  %52 = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %53

53:                                               ; preds = %53, %50
  %54 = phi i32 [ %61, %53 ], [ %3, %50 ]
  %55 = phi ptr [ %60, %53 ], [ %52, %50 ]
  %56 = and i32 %54, 15
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds nuw i8, ptr @.str.35, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !216
  %60 = getelementptr inbounds i8, ptr %55, i64 -1
  store i8 %59, ptr %60, align 1, !tbaa !216
  %61 = lshr i32 %54, 4
  %62 = icmp ult i32 %54, 16
  br i1 %62, label %63, label %53, !llvm.loop !472

63:                                               ; preds = %53
  %64 = load ptr, ptr %1, align 8, !tbaa !375
  %65 = icmp eq i64 %51, 0
  br i1 %65, label %136, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %68 = getelementptr inbounds nuw i8, ptr %64, i64 16
  %69 = getelementptr inbounds nuw i8, ptr %64, i64 24
  %70 = load i8, ptr %5, align 4, !tbaa !216, !noalias !504
  %71 = load i64, ptr %67, align 8, !tbaa !378, !noalias !504
  %72 = add i64 %71, 1
  %73 = load i64, ptr %68, align 8, !tbaa !380, !noalias !504
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load ptr, ptr %69, align 8, !tbaa !381, !noalias !504
  tail call void %76(ptr noundef nonnull align 8 dereferenceable(32) %64, i64 noundef %72), !noalias !504
  %77 = load i64, ptr %67, align 8, !tbaa !378, !noalias !504
  %78 = add i64 %77, 1
  br label %79

79:                                               ; preds = %66, %75
  %80 = phi i64 [ %72, %66 ], [ %78, %75 ]
  %81 = phi i64 [ %71, %66 ], [ %77, %75 ]
  %82 = load ptr, ptr %64, align 8, !tbaa !382, !noalias !504
  store i64 %80, ptr %67, align 8, !tbaa !378, !noalias !504
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 %81
  store i8 %70, ptr %83, align 1, !tbaa !216, !noalias !504
  %84 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !216, !noalias !504
  %86 = icmp eq i64 %51, 1
  br i1 %86, label %136, label %87

87:                                               ; preds = %79
  %88 = load i64, ptr %67, align 8, !tbaa !378, !noalias !504
  %89 = add i64 %88, 1
  %90 = load i64, ptr %68, align 8, !tbaa !380, !noalias !504
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load ptr, ptr %69, align 8, !tbaa !381, !noalias !504
  tail call void %93(ptr noundef nonnull align 8 dereferenceable(32) %64, i64 noundef %89), !noalias !504
  %94 = load i64, ptr %67, align 8, !tbaa !378, !noalias !504
  %95 = add i64 %94, 1
  br label %96

96:                                               ; preds = %87, %92
  %97 = phi i64 [ %89, %87 ], [ %95, %92 ]
  %98 = phi i64 [ %88, %87 ], [ %94, %92 ]
  %99 = load ptr, ptr %64, align 8, !tbaa !382, !noalias !504
  store i64 %97, ptr %67, align 8, !tbaa !378, !noalias !504
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 %98
  store i8 %85, ptr %100, align 1, !tbaa !216, !noalias !504
  %101 = getelementptr inbounds nuw i8, ptr %5, i64 2
  %102 = load i8, ptr %101, align 2, !tbaa !216, !noalias !504
  %103 = icmp eq i64 %51, 2
  br i1 %103, label %136, label %104

104:                                              ; preds = %96
  %105 = load i64, ptr %67, align 8, !tbaa !378, !noalias !504
  %106 = add i64 %105, 1
  %107 = load i64, ptr %68, align 8, !tbaa !380, !noalias !504
  %108 = icmp ugt i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load ptr, ptr %69, align 8, !tbaa !381, !noalias !504
  tail call void %110(ptr noundef nonnull align 8 dereferenceable(32) %64, i64 noundef %106), !noalias !504
  %111 = load i64, ptr %67, align 8, !tbaa !378, !noalias !504
  %112 = add i64 %111, 1
  br label %113

113:                                              ; preds = %104, %109
  %114 = phi i64 [ %106, %104 ], [ %112, %109 ]
  %115 = phi i64 [ %105, %104 ], [ %111, %109 ]
  %116 = load ptr, ptr %64, align 8, !tbaa !382, !noalias !504
  store i64 %114, ptr %67, align 8, !tbaa !378, !noalias !504
  %117 = getelementptr inbounds nuw i8, ptr %116, i64 %115
  store i8 %102, ptr %117, align 1, !tbaa !216, !noalias !504
  %118 = getelementptr inbounds nuw i8, ptr %5, i64 3
  %119 = load i8, ptr %118, align 1, !tbaa !216, !noalias !504
  %120 = icmp eq i64 %51, 3
  br i1 %120, label %136, label %121

121:                                              ; preds = %113
  %122 = load i64, ptr %67, align 8, !tbaa !378, !noalias !504
  %123 = add i64 %122, 1
  %124 = load i64, ptr %68, align 8, !tbaa !380, !noalias !504
  %125 = icmp ugt i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load ptr, ptr %69, align 8, !tbaa !381, !noalias !504
  tail call void %127(ptr noundef nonnull align 8 dereferenceable(32) %64, i64 noundef %123), !noalias !504
  %128 = load i64, ptr %67, align 8, !tbaa !378, !noalias !504
  %129 = add i64 %128, 1
  br label %130

130:                                              ; preds = %126, %121
  %131 = phi i64 [ %123, %121 ], [ %129, %126 ]
  %132 = phi i64 [ %122, %121 ], [ %128, %126 ]
  %133 = load ptr, ptr %64, align 8, !tbaa !382, !noalias !504
  store i64 %131, ptr %67, align 8, !tbaa !378, !noalias !504
  %134 = getelementptr inbounds nuw i8, ptr %133, i64 %132
  store i8 %119, ptr %134, align 1, !tbaa !216, !noalias !504
  %135 = add i64 %51, -4
  br label %136

136:                                              ; preds = %79, %96, %113, %130, %63
  %137 = phi i64 [ 0, %63 ], [ 0, %113 ], [ %135, %130 ], [ 0, %96 ], [ 0, %79 ]
  store ptr %64, ptr %0, align 8, !tbaa !375
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %137, ptr %138, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail15write_codepointILy8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj(ptr dead_on_unwind noalias writable sret(%struct.bounded_output_iterator) align 8 %0, ptr noundef %1, i8 noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat {
  %5 = alloca [8 x i8], align 8
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !465
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %50, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %1, align 8, !tbaa !375
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !378
  %13 = add i64 %12, 1
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %15 = load i64, ptr %14, align 8, !tbaa !380
  %16 = icmp ugt i64 %13, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %19 = load ptr, ptr %18, align 8, !tbaa !381
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %13)
  %20 = load i64, ptr %11, align 8, !tbaa !378
  %21 = add i64 %20, 1
  br label %22

22:                                               ; preds = %9, %17
  %23 = phi i64 [ %13, %9 ], [ %21, %17 ]
  %24 = phi i64 [ %12, %9 ], [ %20, %17 ]
  %25 = load ptr, ptr %10, align 8, !tbaa !382
  store i64 %23, ptr %11, align 8, !tbaa !378
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 %24
  store i8 92, ptr %26, align 1, !tbaa !216
  %27 = load i64, ptr %6, align 8, !tbaa !465
  %28 = add i64 %27, -1
  store i64 %28, ptr %6, align 8, !tbaa !465
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %22
  %31 = load ptr, ptr %1, align 8, !tbaa !375
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %33 = load i64, ptr %32, align 8, !tbaa !378
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds nuw i8, ptr %31, i64 16
  %36 = load i64, ptr %35, align 8, !tbaa !380
  %37 = icmp ugt i64 %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = getelementptr inbounds nuw i8, ptr %31, i64 24
  %40 = load ptr, ptr %39, align 8, !tbaa !381
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(32) %31, i64 noundef %34)
  %41 = load i64, ptr %32, align 8, !tbaa !378
  %42 = add i64 %41, 1
  br label %43

43:                                               ; preds = %38, %30
  %44 = phi i64 [ %34, %30 ], [ %42, %38 ]
  %45 = phi i64 [ %33, %30 ], [ %41, %38 ]
  %46 = load ptr, ptr %31, align 8, !tbaa !382
  store i64 %44, ptr %32, align 8, !tbaa !378
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 %45
  store i8 %2, ptr %47, align 1, !tbaa !216
  %48 = load i64, ptr %6, align 8, !tbaa !465
  %49 = add i64 %48, -1
  store i64 %49, ptr %6, align 8, !tbaa !465
  br label %50

50:                                               ; preds = %4, %22, %43
  %51 = phi i64 [ 0, %4 ], [ 0, %22 ], [ %49, %43 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  store i64 3472328296227680304, ptr %5, align 8
  %52 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %53

53:                                               ; preds = %53, %50
  %54 = phi i32 [ %61, %53 ], [ %3, %50 ]
  %55 = phi ptr [ %60, %53 ], [ %52, %50 ]
  %56 = and i32 %54, 15
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds nuw i8, ptr @.str.35, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !216
  %60 = getelementptr inbounds i8, ptr %55, i64 -1
  store i8 %59, ptr %60, align 1, !tbaa !216
  %61 = lshr i32 %54, 4
  %62 = icmp ult i32 %54, 16
  br i1 %62, label %63, label %53, !llvm.loop !472

63:                                               ; preds = %53
  %64 = load ptr, ptr %1, align 8, !tbaa !375
  %65 = icmp eq i64 %51, 0
  br i1 %65, label %204, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds nuw i8, ptr %64, i64 8
  %68 = getelementptr inbounds nuw i8, ptr %64, i64 16
  %69 = getelementptr inbounds nuw i8, ptr %64, i64 24
  %70 = load i8, ptr %5, align 8, !tbaa !216, !noalias !507
  %71 = load i64, ptr %67, align 8, !tbaa !378, !noalias !507
  %72 = add i64 %71, 1
  %73 = load i64, ptr %68, align 8, !tbaa !380, !noalias !507
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load ptr, ptr %69, align 8, !tbaa !381, !noalias !507
  tail call void %76(ptr noundef nonnull align 8 dereferenceable(32) %64, i64 noundef %72), !noalias !507
  %77 = load i64, ptr %67, align 8, !tbaa !378, !noalias !507
  %78 = add i64 %77, 1
  br label %79

79:                                               ; preds = %66, %75
  %80 = phi i64 [ %72, %66 ], [ %78, %75 ]
  %81 = phi i64 [ %71, %66 ], [ %77, %75 ]
  %82 = load ptr, ptr %64, align 8, !tbaa !382, !noalias !507
  store i64 %80, ptr %67, align 8, !tbaa !378, !noalias !507
  %83 = getelementptr inbounds nuw i8, ptr %82, i64 %81
  store i8 %70, ptr %83, align 1, !tbaa !216, !noalias !507
  %84 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !216, !noalias !507
  %86 = icmp eq i64 %51, 1
  br i1 %86, label %204, label %87

87:                                               ; preds = %79
  %88 = load i64, ptr %67, align 8, !tbaa !378, !noalias !507
  %89 = add i64 %88, 1
  %90 = load i64, ptr %68, align 8, !tbaa !380, !noalias !507
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load ptr, ptr %69, align 8, !tbaa !381, !noalias !507
  tail call void %93(ptr noundef nonnull align 8 dereferenceable(32) %64, i64 noundef %89), !noalias !507
  %94 = load i64, ptr %67, align 8, !tbaa !378, !noalias !507
  %95 = add i64 %94, 1
  br label %96

96:                                               ; preds = %87, %92
  %97 = phi i64 [ %89, %87 ], [ %95, %92 ]
  %98 = phi i64 [ %88, %87 ], [ %94, %92 ]
  %99 = load ptr, ptr %64, align 8, !tbaa !382, !noalias !507
  store i64 %97, ptr %67, align 8, !tbaa !378, !noalias !507
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 %98
  store i8 %85, ptr %100, align 1, !tbaa !216, !noalias !507
  %101 = getelementptr inbounds nuw i8, ptr %5, i64 2
  %102 = load i8, ptr %101, align 2, !tbaa !216, !noalias !507
  %103 = icmp eq i64 %51, 2
  br i1 %103, label %204, label %104

104:                                              ; preds = %96
  %105 = load i64, ptr %67, align 8, !tbaa !378, !noalias !507
  %106 = add i64 %105, 1
  %107 = load i64, ptr %68, align 8, !tbaa !380, !noalias !507
  %108 = icmp ugt i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load ptr, ptr %69, align 8, !tbaa !381, !noalias !507
  tail call void %110(ptr noundef nonnull align 8 dereferenceable(32) %64, i64 noundef %106), !noalias !507
  %111 = load i64, ptr %67, align 8, !tbaa !378, !noalias !507
  %112 = add i64 %111, 1
  br label %113

113:                                              ; preds = %104, %109
  %114 = phi i64 [ %106, %104 ], [ %112, %109 ]
  %115 = phi i64 [ %105, %104 ], [ %111, %109 ]
  %116 = load ptr, ptr %64, align 8, !tbaa !382, !noalias !507
  store i64 %114, ptr %67, align 8, !tbaa !378, !noalias !507
  %117 = getelementptr inbounds nuw i8, ptr %116, i64 %115
  store i8 %102, ptr %117, align 1, !tbaa !216, !noalias !507
  %118 = getelementptr inbounds nuw i8, ptr %5, i64 3
  %119 = load i8, ptr %118, align 1, !tbaa !216, !noalias !507
  %120 = icmp eq i64 %51, 3
  br i1 %120, label %204, label %121

121:                                              ; preds = %113
  %122 = load i64, ptr %67, align 8, !tbaa !378, !noalias !507
  %123 = add i64 %122, 1
  %124 = load i64, ptr %68, align 8, !tbaa !380, !noalias !507
  %125 = icmp ugt i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load ptr, ptr %69, align 8, !tbaa !381, !noalias !507
  tail call void %127(ptr noundef nonnull align 8 dereferenceable(32) %64, i64 noundef %123), !noalias !507
  %128 = load i64, ptr %67, align 8, !tbaa !378, !noalias !507
  %129 = add i64 %128, 1
  br label %130

130:                                              ; preds = %121, %126
  %131 = phi i64 [ %123, %121 ], [ %129, %126 ]
  %132 = phi i64 [ %122, %121 ], [ %128, %126 ]
  %133 = load ptr, ptr %64, align 8, !tbaa !382, !noalias !507
  store i64 %131, ptr %67, align 8, !tbaa !378, !noalias !507
  %134 = getelementptr inbounds nuw i8, ptr %133, i64 %132
  store i8 %119, ptr %134, align 1, !tbaa !216, !noalias !507
  %135 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %136 = load i8, ptr %135, align 4, !tbaa !216, !noalias !507
  %137 = icmp eq i64 %51, 4
  br i1 %137, label %204, label %138

138:                                              ; preds = %130
  %139 = load i64, ptr %67, align 8, !tbaa !378, !noalias !507
  %140 = add i64 %139, 1
  %141 = load i64, ptr %68, align 8, !tbaa !380, !noalias !507
  %142 = icmp ugt i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load ptr, ptr %69, align 8, !tbaa !381, !noalias !507
  tail call void %144(ptr noundef nonnull align 8 dereferenceable(32) %64, i64 noundef %140), !noalias !507
  %145 = load i64, ptr %67, align 8, !tbaa !378, !noalias !507
  %146 = add i64 %145, 1
  br label %147

147:                                              ; preds = %138, %143
  %148 = phi i64 [ %140, %138 ], [ %146, %143 ]
  %149 = phi i64 [ %139, %138 ], [ %145, %143 ]
  %150 = load ptr, ptr %64, align 8, !tbaa !382, !noalias !507
  store i64 %148, ptr %67, align 8, !tbaa !378, !noalias !507
  %151 = getelementptr inbounds nuw i8, ptr %150, i64 %149
  store i8 %136, ptr %151, align 1, !tbaa !216, !noalias !507
  %152 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %153 = load i8, ptr %152, align 1, !tbaa !216, !noalias !507
  %154 = icmp eq i64 %51, 5
  br i1 %154, label %204, label %155

155:                                              ; preds = %147
  %156 = load i64, ptr %67, align 8, !tbaa !378, !noalias !507
  %157 = add i64 %156, 1
  %158 = load i64, ptr %68, align 8, !tbaa !380, !noalias !507
  %159 = icmp ugt i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load ptr, ptr %69, align 8, !tbaa !381, !noalias !507
  tail call void %161(ptr noundef nonnull align 8 dereferenceable(32) %64, i64 noundef %157), !noalias !507
  %162 = load i64, ptr %67, align 8, !tbaa !378, !noalias !507
  %163 = add i64 %162, 1
  br label %164

164:                                              ; preds = %155, %160
  %165 = phi i64 [ %157, %155 ], [ %163, %160 ]
  %166 = phi i64 [ %156, %155 ], [ %162, %160 ]
  %167 = load ptr, ptr %64, align 8, !tbaa !382, !noalias !507
  store i64 %165, ptr %67, align 8, !tbaa !378, !noalias !507
  %168 = getelementptr inbounds nuw i8, ptr %167, i64 %166
  store i8 %153, ptr %168, align 1, !tbaa !216, !noalias !507
  %169 = getelementptr inbounds nuw i8, ptr %5, i64 6
  %170 = load i8, ptr %169, align 2, !tbaa !216, !noalias !507
  %171 = icmp eq i64 %51, 6
  br i1 %171, label %204, label %172

172:                                              ; preds = %164
  %173 = load i64, ptr %67, align 8, !tbaa !378, !noalias !507
  %174 = add i64 %173, 1
  %175 = load i64, ptr %68, align 8, !tbaa !380, !noalias !507
  %176 = icmp ugt i64 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %172
  %178 = load ptr, ptr %69, align 8, !tbaa !381, !noalias !507
  tail call void %178(ptr noundef nonnull align 8 dereferenceable(32) %64, i64 noundef %174), !noalias !507
  %179 = load i64, ptr %67, align 8, !tbaa !378, !noalias !507
  %180 = add i64 %179, 1
  br label %181

181:                                              ; preds = %172, %177
  %182 = phi i64 [ %174, %172 ], [ %180, %177 ]
  %183 = phi i64 [ %173, %172 ], [ %179, %177 ]
  %184 = load ptr, ptr %64, align 8, !tbaa !382, !noalias !507
  store i64 %182, ptr %67, align 8, !tbaa !378, !noalias !507
  %185 = getelementptr inbounds nuw i8, ptr %184, i64 %183
  store i8 %170, ptr %185, align 1, !tbaa !216, !noalias !507
  %186 = getelementptr inbounds nuw i8, ptr %5, i64 7
  %187 = load i8, ptr %186, align 1, !tbaa !216, !noalias !507
  %188 = icmp eq i64 %51, 7
  br i1 %188, label %204, label %189

189:                                              ; preds = %181
  %190 = load i64, ptr %67, align 8, !tbaa !378, !noalias !507
  %191 = add i64 %190, 1
  %192 = load i64, ptr %68, align 8, !tbaa !380, !noalias !507
  %193 = icmp ugt i64 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = load ptr, ptr %69, align 8, !tbaa !381, !noalias !507
  tail call void %195(ptr noundef nonnull align 8 dereferenceable(32) %64, i64 noundef %191), !noalias !507
  %196 = load i64, ptr %67, align 8, !tbaa !378, !noalias !507
  %197 = add i64 %196, 1
  br label %198

198:                                              ; preds = %194, %189
  %199 = phi i64 [ %191, %189 ], [ %197, %194 ]
  %200 = phi i64 [ %190, %189 ], [ %196, %194 ]
  %201 = load ptr, ptr %64, align 8, !tbaa !382, !noalias !507
  store i64 %199, ptr %67, align 8, !tbaa !378, !noalias !507
  %202 = getelementptr inbounds nuw i8, ptr %201, i64 %200
  store i8 %187, ptr %202, align 1, !tbaa !216, !noalias !507
  %203 = add i64 %51, -8
  br label %204

204:                                              ; preds = %79, %96, %113, %130, %147, %164, %181, %198, %63
  %205 = phi i64 [ 0, %63 ], [ 0, %181 ], [ %203, %198 ], [ 0, %164 ], [ 0, %147 ], [ 0, %130 ], [ 0, %113 ], [ 0, %96 ], [ 0, %79 ]
  store ptr %64, ptr %0, align 8, !tbaa !375
  %206 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %205, ptr %206, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_(ptr noundef nonnull align 16 dereferenceable(20) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #22 comdat align 2 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load i32, ptr %3, align 16, !tbaa !404
  switch i32 %4, label %35 [
    i32 15, label %34
    i32 1, label %5
    i32 2, label %10
    i32 3, label %13
    i32 4, label %16
    i32 5, label %18
    i32 6, label %23
    i32 7, label %26
    i32 8, label %27
    i32 9, label %28
    i32 10, label %29
    i32 11, label %30
    i32 12, label %31
    i32 13, label %32
    i32 14, label %33
  ]

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 16, !tbaa !216
  %7 = icmp slt i32 %6, 0
  %8 = zext nneg i32 %6 to i64
  %9 = select i1 %7, i64 -1, i64 %8
  br label %36

10:                                               ; preds = %2
  %11 = load i32, ptr %0, align 16, !tbaa !216
  %12 = zext i32 %11 to i64
  br label %36

13:                                               ; preds = %2
  %14 = load i64, ptr %0, align 16, !tbaa !216
  %15 = tail call noundef i64 @llvm.smax.i64(i64 %14, i64 -1)
  br label %36

16:                                               ; preds = %2
  %17 = load i64, ptr %0, align 16, !tbaa !216
  br label %36

18:                                               ; preds = %2
  %19 = load i128, ptr %0, align 16, !tbaa !216
  %20 = icmp slt i128 %19, 0
  %21 = trunc i128 %19 to i64
  %22 = select i1 %20, i64 -1, i64 %21
  br label %36

23:                                               ; preds = %2
  %24 = load i128, ptr %0, align 16, !tbaa !216
  %25 = trunc i128 %24 to i64
  br label %36

26:                                               ; preds = %2
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.39) #25
  unreachable

27:                                               ; preds = %2
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.39) #25
  unreachable

28:                                               ; preds = %2
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.39) #25
  unreachable

29:                                               ; preds = %2
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.39) #25
  unreachable

30:                                               ; preds = %2
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.39) #25
  unreachable

31:                                               ; preds = %2
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.39) #25
  unreachable

32:                                               ; preds = %2
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.39) #25
  unreachable

33:                                               ; preds = %2
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.39) #25
  unreachable

34:                                               ; preds = %2
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.39) #25
  unreachable

35:                                               ; preds = %2
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.39) #25
  unreachable

36:                                               ; preds = %23, %18, %16, %13, %10, %5
  %37 = phi i64 [ %9, %5 ], [ %12, %10 ], [ %15, %13 ], [ %17, %16 ], [ %22, %18 ], [ %25, %23 ]
  ret i64 %37
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__113unordered_mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyNS_4hashIS6_EENS_8equal_toIS6_EENS4_INS_4pairIKS6_yEEEEED2B8ne210107Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !265
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1, %15
  %6 = phi ptr [ %7, %15 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !266
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !216
  tail call void @_ZdlPv(ptr noundef %14) #28
  br label %15

15:                                               ; preds = %12, %5
  tail call void @_ZdlPv(ptr noundef nonnull %6) #28
  %16 = icmp eq ptr %7, null
  br i1 %16, label %17, label %5, !llvm.loop !267

17:                                               ; preds = %15, %1
  %18 = load ptr, ptr %0, align 8, !tbaa !268
  store ptr null, ptr %0, align 8, !tbaa !268
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef nonnull %18) #28
  br label %21

21:                                               ; preds = %17, %20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__18__uniqueB8ne210107INS_17_ClassicAlgPolicyENS_11__wrap_iterIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEESA_RNS_10__equal_toEEENS_4pairIT0_SE_EESE_T1_OT2_(ptr dead_on_unwind noalias writable sret(%"struct.std::__1::pair.140") align 8 %0, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_seh0 {
  %5 = inttoptr i64 %2 to ptr
  %6 = inttoptr i64 %1 to ptr
  %7 = icmp eq i64 %1, %2
  br i1 %7, label %106, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %10 = icmp eq ptr %9, %5
  br i1 %10, label %106, label %11

11:                                               ; preds = %8
  %12 = load i8, ptr %6, align 8
  br label %13

13:                                               ; preds = %44, %11
  %14 = phi i8 [ %24, %44 ], [ %12, %11 ]
  %15 = phi ptr [ %45, %44 ], [ %9, %11 ]
  %16 = phi ptr [ %15, %44 ], [ %6, %11 ]
  %17 = and i8 %14, 1
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %20 = load i64, ptr %19, align 8
  %21 = lshr i8 %14, 1
  %22 = zext nneg i8 %21 to i64
  %23 = select i1 %18, i64 %22, i64 %20
  %24 = load i8, ptr %15, align 8
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  %27 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %28 = load i64, ptr %27, align 8
  %29 = lshr i8 %24, 1
  %30 = zext nneg i8 %29 to i64
  %31 = select i1 %26, i64 %30, i64 %28
  %32 = icmp eq i64 %23, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %13
  %34 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds nuw i8, ptr %16, i64 1
  %37 = select i1 %18, ptr %36, ptr %35
  %38 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds nuw i8, ptr %16, i64 25
  %41 = select i1 %26, ptr %40, ptr %39
  %42 = tail call noundef i32 @memcmp(ptr noundef %37, ptr noundef %41, i64 noundef %23) #27
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %33, %13
  %45 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %46 = icmp eq ptr %45, %5
  br i1 %46, label %47, label %13, !llvm.loop !510

47:                                               ; preds = %33, %44
  %48 = phi ptr [ %16, %33 ], [ %5, %44 ]
  %49 = ptrtoint ptr %48 to i64
  %50 = icmp eq i64 %2, %49
  br i1 %50, label %106, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds nuw i8, ptr %48, i64 48
  %53 = icmp eq ptr %52, %5
  br i1 %53, label %102, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds nuw i8, ptr %48, i64 24
  br label %56

56:                                               ; preds = %54, %98
  %57 = phi ptr [ %100, %98 ], [ %52, %54 ]
  %58 = phi ptr [ %57, %98 ], [ %55, %54 ]
  %59 = phi ptr [ %99, %98 ], [ %48, %54 ]
  %60 = load i8, ptr %59, align 8
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  %63 = getelementptr inbounds nuw i8, ptr %59, i64 8
  %64 = load i64, ptr %63, align 8
  %65 = lshr i8 %60, 1
  %66 = zext nneg i8 %65 to i64
  %67 = select i1 %62, i64 %66, i64 %64
  %68 = load i8, ptr %57, align 8
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  %71 = getelementptr inbounds nuw i8, ptr %58, i64 32
  %72 = load i64, ptr %71, align 8
  %73 = lshr i8 %68, 1
  %74 = zext nneg i8 %73 to i64
  %75 = select i1 %70, i64 %74, i64 %72
  %76 = icmp eq i64 %67, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %56
  %78 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds nuw i8, ptr %59, i64 1
  %81 = select i1 %62, ptr %80, ptr %79
  %82 = getelementptr inbounds nuw i8, ptr %58, i64 40
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds nuw i8, ptr %58, i64 25
  %85 = select i1 %70, ptr %84, ptr %83
  %86 = tail call noundef i32 @memcmp(ptr noundef %81, ptr noundef %85, i64 noundef %67) #27
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %56, %77
  %89 = getelementptr inbounds nuw i8, ptr %59, i64 24
  %90 = load i8, ptr %89, align 8
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds nuw i8, ptr %59, i64 40
  %95 = load ptr, ptr %94, align 8, !tbaa !216
  tail call void @_ZdlPv(ptr noundef %95) #28
  br label %96

96:                                               ; preds = %88, %93
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %89, ptr noundef nonnull align 8 dereferenceable(24) %57, i64 24, i1 false), !tbaa.struct !250
  store i8 0, ptr %57, align 8
  %97 = getelementptr inbounds nuw i8, ptr %58, i64 25
  store i8 0, ptr %97, align 1, !tbaa !216
  br label %98

98:                                               ; preds = %96, %77
  %99 = phi ptr [ %59, %77 ], [ %89, %96 ]
  %100 = getelementptr inbounds nuw i8, ptr %57, i64 24
  %101 = icmp eq ptr %100, %5
  br i1 %101, label %102, label %56, !llvm.loop !511

102:                                              ; preds = %98, %51
  %103 = phi ptr [ %48, %51 ], [ %99, %98 ]
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 24
  %105 = ptrtoint ptr %104 to i64
  br label %106

106:                                              ; preds = %47, %4, %8, %102
  %107 = phi i64 [ %105, %102 ], [ %2, %8 ], [ %2, %4 ], [ %2, %47 ]
  store i64 %107, ptr %0, align 8, !tbaa !242
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %108, align 8, !tbaa !242
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !512
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load ptr, ptr %4, align 8, !tbaa !515
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %20, label %7

7:                                                ; preds = %1, %17
  %8 = phi ptr [ %18, %17 ], [ %5, %1 ]
  %9 = getelementptr inbounds i8, ptr %8, i64 -24
  store ptr %9, ptr %4, align 8, !tbaa !515
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds i8, ptr %8, i64 -8
  %15 = load ptr, ptr %14, align 8, !tbaa !216
  tail call void @_ZdlPv(ptr noundef %15) #28
  %16 = load ptr, ptr %4, align 8, !tbaa !515
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %9, %7 ], [ %16, %13 ]
  %19 = icmp eq ptr %3, %18
  br i1 %19, label %20, label %7

20:                                               ; preds = %17, %1
  %21 = load ptr, ptr %0, align 8, !tbaa !516
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @_ZdlPv(ptr noundef nonnull %21) #28
  br label %24

24:                                               ; preds = %23, %20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE25__emplace_unique_key_argsIS7_JRKNS_21piecewise_construct_tENS_5tupleIJRSB_EEENSQ_IJEEEEEENSA_INS_15__hash_iteratorIPNS_11__hash_nodeIS8_PvEEEEbEERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::__1::pair.158") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %7 = alloca %"class.std::__1::unique_ptr.165", align 8
  %8 = load i8, ptr %2, align 8
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %14 = select i1 %10, ptr %13, ptr %12
  %15 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %16 = load i64, ptr %15, align 8
  %17 = lshr i8 %8, 1
  %18 = zext nneg i8 %17 to i64
  %19 = select i1 %10, i64 %18, i64 %16
  %20 = tail call noundef i64 @_ZNSt3__113__hash_memoryEPKvy(ptr noundef captures(none) %14, i64 noundef %19) #31
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %22 = load i64, ptr %21, align 8, !tbaa !517
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %107, label %24

24:                                               ; preds = %6
  %25 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %22)
  %26 = icmp samesign ult i64 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = add i64 %22, -1
  %29 = and i64 %28, %20
  br label %34

30:                                               ; preds = %24
  %31 = icmp ult i64 %20, %22
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = urem i64 %20, %22
  br label %34

34:                                               ; preds = %27, %30, %32
  %35 = phi i64 [ %29, %27 ], [ %33, %32 ], [ %20, %30 ]
  %36 = load ptr, ptr %1, align 8, !tbaa !268
  %37 = getelementptr inbounds nuw ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !518
  %39 = icmp eq ptr %38, null
  br i1 %39, label %107, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %38, align 8, !tbaa !266
  %42 = icmp eq ptr %41, null
  br i1 %42, label %107, label %43

43:                                               ; preds = %40
  %44 = add i64 %22, -1
  br i1 %26, label %45, label %74

45:                                               ; preds = %43, %71
  %46 = phi ptr [ %72, %71 ], [ %41, %43 ]
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 8
  %48 = load i64, ptr %47, align 8, !tbaa !519
  %49 = icmp eq i64 %48, %20
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = and i64 %48, %44
  %52 = icmp eq i64 %51, %35
  br i1 %52, label %71, label %107

53:                                               ; preds = %45
  %54 = getelementptr inbounds nuw i8, ptr %46, i64 16
  %55 = load i8, ptr %54, align 8
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  %58 = getelementptr inbounds nuw i8, ptr %46, i64 24
  %59 = load i64, ptr %58, align 8
  %60 = lshr i8 %55, 1
  %61 = zext nneg i8 %60 to i64
  %62 = select i1 %57, i64 %61, i64 %59
  %63 = icmp eq i64 %62, %19
  br i1 %63, label %64, label %71

64:                                               ; preds = %53
  %65 = getelementptr inbounds nuw i8, ptr %46, i64 32
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds nuw i8, ptr %46, i64 17
  %68 = select i1 %57, ptr %67, ptr %66
  %69 = tail call noundef i32 @memcmp(ptr noundef %68, ptr noundef %14, i64 noundef %19) #27
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %238, label %71

71:                                               ; preds = %64, %53, %50
  %72 = load ptr, ptr %46, align 8, !tbaa !266
  %73 = icmp eq ptr %72, null
  br i1 %73, label %107, label %45, !llvm.loop !521

74:                                               ; preds = %43, %104
  %75 = phi ptr [ %105, %104 ], [ %41, %43 ]
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 8
  %77 = load i64, ptr %76, align 8, !tbaa !519
  %78 = icmp eq i64 %77, %20
  br i1 %78, label %86, label %79

79:                                               ; preds = %74
  %80 = icmp ult i64 %77, %22
  br i1 %80, label %83, label %81

81:                                               ; preds = %79
  %82 = urem i64 %77, %22
  br label %83

83:                                               ; preds = %79, %81
  %84 = phi i64 [ %82, %81 ], [ %77, %79 ]
  %85 = icmp eq i64 %84, %35
  br i1 %85, label %104, label %107

86:                                               ; preds = %74
  %87 = getelementptr inbounds nuw i8, ptr %75, i64 16
  %88 = load i8, ptr %87, align 8
  %89 = and i8 %88, 1
  %90 = icmp eq i8 %89, 0
  %91 = getelementptr inbounds nuw i8, ptr %75, i64 24
  %92 = load i64, ptr %91, align 8
  %93 = lshr i8 %88, 1
  %94 = zext nneg i8 %93 to i64
  %95 = select i1 %90, i64 %94, i64 %92
  %96 = icmp eq i64 %95, %19
  br i1 %96, label %97, label %104

97:                                               ; preds = %86
  %98 = getelementptr inbounds nuw i8, ptr %75, i64 32
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr inbounds nuw i8, ptr %75, i64 17
  %101 = select i1 %90, ptr %100, ptr %99
  %102 = tail call noundef i32 @memcmp(ptr noundef %101, ptr noundef %14, i64 noundef %19) #27
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %238, label %104

104:                                              ; preds = %86, %83, %97
  %105 = load ptr, ptr %75, align 8, !tbaa !266
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %74, !llvm.loop !521

107:                                              ; preds = %83, %104, %50, %71, %40, %34, %6
  %108 = phi i64 [ %35, %34 ], [ undef, %6 ], [ %35, %40 ], [ %35, %71 ], [ %35, %50 ], [ %35, %104 ], [ %35, %83 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %109 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %110 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwy(i64 noundef 48) #26, !noalias !522
  store ptr %110, ptr %7, align 8, !tbaa !525, !alias.scope !522
  %111 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %109, ptr %111, align 8, !tbaa !532, !alias.scope !522
  %112 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %112, align 8, !alias.scope !522
  store ptr null, ptr %110, align 8, !tbaa !266, !noalias !522
  %113 = getelementptr inbounds nuw i8, ptr %110, i64 8
  store i64 %20, ptr %113, align 8, !tbaa !519, !noalias !522
  %114 = getelementptr inbounds nuw i8, ptr %110, i64 16
  %115 = load ptr, ptr %4, align 8, !noalias !522
  %116 = load i8, ptr %115, align 8, !noalias !522
  %117 = and i8 %116, 1
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %107
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(24) %115, i64 24, i1 false), !tbaa.struct !250, !noalias !522
  br label %129

120:                                              ; preds = %107
  %121 = getelementptr inbounds nuw i8, ptr %115, i64 16
  %122 = load ptr, ptr %121, align 8, !tbaa !216, !noalias !522
  %123 = getelementptr inbounds nuw i8, ptr %115, i64 8
  %124 = load i64, ptr %123, align 8, !tbaa !216, !noalias !522
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef %122, i64 noundef %124)
          to label %129 unwind label %127, !noalias !522

125:                                              ; preds = %204, %127
  %126 = phi { ptr, i32 } [ %128, %127 ], [ %205, %204 ]
  resume { ptr, i32 } %126

127:                                              ; preds = %120
  %128 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110unique_ptrINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEENS_22__hash_node_destructorINS6_ISB_EEEEED2B8ne210107Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #27
  br label %125

129:                                              ; preds = %119, %120
  %130 = getelementptr inbounds nuw i8, ptr %110, i64 40
  store i64 0, ptr %130, align 8, !tbaa !533, !noalias !522
  store i8 1, ptr %112, align 8, !tbaa !537, !alias.scope !522
  %131 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %132 = load i64, ptr %131, align 8, !tbaa !27
  %133 = add i64 %132, 1
  %134 = uitofp i64 %133 to float
  %135 = uitofp i64 %22 to float
  %136 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %137 = load float, ptr %136, align 8, !tbaa !36
  %138 = fmul float %137, %135
  %139 = fcmp olt float %138, %134
  %140 = or i1 %23, %139
  br i1 %140, label %141, label %206

141:                                              ; preds = %129
  %142 = shl i64 %22, 1
  %143 = icmp ugt i64 %22, 2
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %22)
  %146 = icmp samesign ugt i64 %145, 1
  %147 = zext i1 %146 to i64
  br label %148

148:                                              ; preds = %144, %141
  %149 = phi i64 [ 1, %141 ], [ %147, %144 ]
  %150 = or disjoint i64 %149, %142
  %151 = fdiv float %134, %137
  %152 = tail call noundef float @llvm.ceil.f32(float %151)
  %153 = fptoui float %152 to i64
  %154 = tail call i64 @llvm.umax.i64(i64 %150, i64 %153)
  %155 = icmp eq i64 %154, 1
  br i1 %155, label %161, label %156

156:                                              ; preds = %148
  %157 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %154)
  %158 = icmp samesign ult i64 %157, 2
  br i1 %158, label %161, label %159

159:                                              ; preds = %156
  %160 = invoke noundef i64 @_ZNSt3__112__next_primeEy(i64 noundef %154)
          to label %161 unwind label %204

161:                                              ; preds = %159, %156, %148
  %162 = phi i64 [ %154, %156 ], [ 2, %148 ], [ %160, %159 ]
  %163 = load i64, ptr %21, align 8, !tbaa !517
  %164 = icmp ugt i64 %162, %163
  br i1 %164, label %191, label %165

165:                                              ; preds = %161
  %166 = icmp ult i64 %162, %163
  br i1 %166, label %167, label %193

167:                                              ; preds = %165
  %168 = icmp ugt i64 %163, 2
  %169 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %163)
  %170 = icmp samesign ult i64 %169, 2
  %171 = select i1 %168, i1 %170, i1 false
  %172 = load i64, ptr %131, align 8, !tbaa !27
  %173 = uitofp i64 %172 to float
  %174 = load float, ptr %136, align 8, !tbaa !36
  %175 = fdiv float %173, %174
  %176 = tail call noundef float @llvm.ceil.f32(float %175)
  %177 = fptoui float %176 to i64
  br i1 %171, label %178, label %185

178:                                              ; preds = %167
  %179 = icmp ult i64 %177, 2
  br i1 %179, label %187, label %180

180:                                              ; preds = %178
  %181 = add i64 %177, -1
  %182 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %181, i1 false)
  %183 = sub nuw nsw i64 64, %182
  %184 = shl nuw i64 1, %183
  br label %187

185:                                              ; preds = %167
  %186 = invoke noundef i64 @_ZNSt3__112__next_primeEy(i64 noundef %177)
          to label %187 unwind label %204

187:                                              ; preds = %185, %180, %178
  %188 = phi i64 [ %184, %180 ], [ %177, %178 ], [ %186, %185 ]
  %189 = tail call i64 @llvm.umax.i64(i64 %162, i64 %188)
  %190 = icmp ult i64 %189, %163
  br i1 %190, label %191, label %193

191:                                              ; preds = %187, %161
  %192 = phi i64 [ %162, %161 ], [ %189, %187 ]
  invoke void @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE11__do_rehashILb1EEEvy(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %192)
          to label %193 unwind label %204

193:                                              ; preds = %187, %165, %191
  %194 = load i64, ptr %21, align 8, !tbaa !517
  %195 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %194)
  %196 = icmp samesign ult i64 %195, 2
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = add i64 %194, -1
  %199 = and i64 %198, %20
  br label %206

200:                                              ; preds = %193
  %201 = icmp ult i64 %20, %194
  br i1 %201, label %206, label %202

202:                                              ; preds = %200
  %203 = urem i64 %20, %194
  br label %206

204:                                              ; preds = %191, %185, %159
  %205 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110unique_ptrINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEENS_22__hash_node_destructorINS6_ISB_EEEEED2B8ne210107Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #27
  br label %125

206:                                              ; preds = %202, %200, %197, %129
  %207 = phi i64 [ %108, %129 ], [ %199, %197 ], [ %203, %202 ], [ %20, %200 ]
  %208 = phi i64 [ %22, %129 ], [ %194, %197 ], [ %194, %202 ], [ %194, %200 ]
  %209 = load ptr, ptr %1, align 8, !tbaa !268
  %210 = getelementptr inbounds nuw ptr, ptr %209, i64 %207
  %211 = load ptr, ptr %210, align 8, !tbaa !518
  %212 = icmp eq ptr %211, null
  %213 = load ptr, ptr %7, align 8, !tbaa !525
  br i1 %212, label %214, label %233

214:                                              ; preds = %206
  %215 = load ptr, ptr %109, align 8, !tbaa !266
  store ptr %215, ptr %213, align 8, !tbaa !266
  store ptr %213, ptr %109, align 8, !tbaa !266
  store ptr %109, ptr %210, align 8, !tbaa !518
  %216 = load ptr, ptr %213, align 8, !tbaa !266
  %217 = icmp eq ptr %216, null
  br i1 %217, label %235, label %218

218:                                              ; preds = %214
  %219 = getelementptr inbounds nuw i8, ptr %216, i64 8
  %220 = load i64, ptr %219, align 8, !tbaa !519
  %221 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %208)
  %222 = icmp samesign ult i64 %221, 2
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = add i64 %208, -1
  %225 = and i64 %220, %224
  br label %230

226:                                              ; preds = %218
  %227 = icmp ult i64 %220, %208
  br i1 %227, label %230, label %228

228:                                              ; preds = %226
  %229 = urem i64 %220, %208
  br label %230

230:                                              ; preds = %223, %226, %228
  %231 = phi i64 [ %225, %223 ], [ %229, %228 ], [ %220, %226 ]
  %232 = getelementptr inbounds nuw ptr, ptr %209, i64 %231
  store ptr %213, ptr %232, align 8, !tbaa !518
  br label %235

233:                                              ; preds = %206
  %234 = load ptr, ptr %211, align 8, !tbaa !266
  store ptr %234, ptr %213, align 8, !tbaa !266
  store ptr %213, ptr %211, align 8, !tbaa !266
  br label %235

235:                                              ; preds = %233, %230, %214
  %236 = load i64, ptr %131, align 8, !tbaa !27
  %237 = add i64 %236, 1
  store i64 %237, ptr %131, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #27
  br label %238

238:                                              ; preds = %97, %64, %235
  %239 = phi i8 [ 1, %235 ], [ 0, %64 ], [ 0, %97 ]
  %240 = phi ptr [ %213, %235 ], [ %46, %64 ], [ %75, %97 ]
  %241 = ptrtoint ptr %240 to i64
  store i64 %241, ptr %0, align 8, !tbaa !518
  %242 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %239, ptr %242, align 8, !tbaa !538
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__110unique_ptrINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEENS_22__hash_node_destructorINS6_ISB_EEEEED2B8ne210107Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !525
  store ptr null, ptr %0, align 8, !tbaa !525
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load i8, ptr %5, align 8, !tbaa !537, !range !296, !noundef !297
  %7 = trunc nuw i8 %6 to i1
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %15 = load ptr, ptr %14, align 8, !tbaa !216
  tail call void @_ZdlPv(ptr noundef %15) #28
  br label %16

16:                                               ; preds = %13, %8, %4
  tail call void @_ZdlPv(ptr noundef nonnull %2) #28
  br label %17

17:                                               ; preds = %1, %16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE11__do_rehashILb1EEEvy(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %92, label %4

4:                                                ; preds = %2
  %5 = icmp ugt i64 %1, 2305843009213693951
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne210107v() #25
  unreachable

7:                                                ; preds = %4
  %8 = shl nuw i64 %1, 3
  %9 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %8) #26
  %10 = load ptr, ptr %0, align 8, !tbaa !268
  store ptr %9, ptr %0, align 8, !tbaa !268
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef nonnull %10) #28
  %13 = load ptr, ptr %0, align 8, !tbaa !268
  br label %14

14:                                               ; preds = %7, %12
  %15 = phi ptr [ %9, %7 ], [ %13, %12 ]
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %16, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %8, i1 false), !tbaa !518
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %18 = load ptr, ptr %17, align 8, !tbaa !266
  %19 = icmp eq ptr %18, null
  br i1 %19, label %98, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %22 = load i64, ptr %21, align 8, !tbaa !519
  %23 = tail call range(i64 1, 62) i64 @llvm.ctpop.i64(i64 %1)
  %24 = icmp samesign ult i64 %23, 2
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = icmp ult i64 %22, %1
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = urem i64 %22, %1
  br label %29

29:                                               ; preds = %25, %27
  %30 = phi i64 [ %28, %27 ], [ %22, %25 ]
  %31 = getelementptr inbounds nuw ptr, ptr %15, i64 %30
  store ptr %17, ptr %31, align 8, !tbaa !518
  %32 = load ptr, ptr %18, align 8, !tbaa !266
  %33 = icmp eq ptr %32, null
  br i1 %33, label %98, label %65

34:                                               ; preds = %20
  %35 = add nsw i64 %1, -1
  %36 = and i64 %22, %35
  %37 = getelementptr inbounds nuw ptr, ptr %15, i64 %36
  store ptr %17, ptr %37, align 8, !tbaa !518
  %38 = load ptr, ptr %18, align 8, !tbaa !266
  %39 = icmp eq ptr %38, null
  br i1 %39, label %98, label %40

40:                                               ; preds = %34
  %41 = add nsw i64 %1, -1
  br label %42

42:                                               ; preds = %40, %60
  %43 = phi ptr [ %63, %60 ], [ %38, %40 ]
  %44 = phi i64 [ %62, %60 ], [ %36, %40 ]
  %45 = phi ptr [ %61, %60 ], [ %18, %40 ]
  %46 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %47 = load i64, ptr %46, align 8, !tbaa !519
  %48 = and i64 %47, %41
  %49 = icmp eq i64 %48, %44
  br i1 %49, label %60, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds nuw ptr, ptr %15, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !518
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %43, align 8, !tbaa !266
  store ptr %55, ptr %45, align 8, !tbaa !266
  %56 = load ptr, ptr %51, align 8, !tbaa !518
  %57 = load ptr, ptr %56, align 8, !tbaa !266
  store ptr %57, ptr %43, align 8, !tbaa !266
  %58 = load ptr, ptr %51, align 8, !tbaa !518
  store ptr %43, ptr %58, align 8, !tbaa !266
  br label %60

59:                                               ; preds = %50
  store ptr %45, ptr %51, align 8, !tbaa !518
  br label %60

60:                                               ; preds = %59, %54, %42
  %61 = phi ptr [ %43, %59 ], [ %45, %54 ], [ %43, %42 ]
  %62 = phi i64 [ %48, %59 ], [ %44, %54 ], [ %44, %42 ]
  %63 = load ptr, ptr %61, align 8, !tbaa !266
  %64 = icmp eq ptr %63, null
  br i1 %64, label %98, label %42, !llvm.loop !540

65:                                               ; preds = %29, %87
  %66 = phi ptr [ %90, %87 ], [ %32, %29 ]
  %67 = phi i64 [ %89, %87 ], [ %30, %29 ]
  %68 = phi ptr [ %88, %87 ], [ %18, %29 ]
  %69 = getelementptr inbounds nuw i8, ptr %66, i64 8
  %70 = load i64, ptr %69, align 8, !tbaa !519
  %71 = icmp ult i64 %70, %1
  br i1 %71, label %74, label %72

72:                                               ; preds = %65
  %73 = urem i64 %70, %1
  br label %74

74:                                               ; preds = %65, %72
  %75 = phi i64 [ %73, %72 ], [ %70, %65 ]
  %76 = icmp eq i64 %75, %67
  br i1 %76, label %87, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds nuw ptr, ptr %15, i64 %75
  %79 = load ptr, ptr %78, align 8, !tbaa !518
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store ptr %68, ptr %78, align 8, !tbaa !518
  br label %87

82:                                               ; preds = %77
  %83 = load ptr, ptr %66, align 8, !tbaa !266
  store ptr %83, ptr %68, align 8, !tbaa !266
  %84 = load ptr, ptr %78, align 8, !tbaa !518
  %85 = load ptr, ptr %84, align 8, !tbaa !266
  store ptr %85, ptr %66, align 8, !tbaa !266
  %86 = load ptr, ptr %78, align 8, !tbaa !518
  store ptr %66, ptr %86, align 8, !tbaa !266
  br label %87

87:                                               ; preds = %74, %82, %81
  %88 = phi ptr [ %66, %81 ], [ %68, %82 ], [ %66, %74 ]
  %89 = phi i64 [ %75, %81 ], [ %67, %82 ], [ %67, %74 ]
  %90 = load ptr, ptr %88, align 8, !tbaa !266
  %91 = icmp eq ptr %90, null
  br i1 %91, label %98, label %65, !llvm.loop !540

92:                                               ; preds = %2
  %93 = load ptr, ptr %0, align 8, !tbaa !268
  store ptr null, ptr %0, align 8, !tbaa !268
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  tail call void @_ZdlPv(ptr noundef nonnull %93) #28
  br label %96

96:                                               ; preds = %92, %95
  %97 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %97, align 8, !tbaa !27
  br label %98

98:                                               ; preds = %87, %60, %34, %29, %14, %96
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__emplace_back_slow_pathIJRKS6_EEEPS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_seh0 {
  %3 = alloca %"struct.std::__1::__split_buffer", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #27
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load ptr, ptr %4, align 8, !tbaa !221
  %6 = load ptr, ptr %0, align 8, !tbaa !217
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 24
  %11 = add nsw i64 %10, 1
  %12 = icmp ugt i64 %11, 768614336404564650
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE20__throw_length_errorB8ne210107Ev() #25
  unreachable

14:                                               ; preds = %2
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %16 = load ptr, ptr %15, align 8, !tbaa !264
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %8
  %19 = sdiv exact i64 %18, 24
  %20 = icmp ult i64 %19, 384307168202282325
  %21 = shl nuw nsw i64 %19, 1
  %22 = tail call i64 @llvm.umax.i64(i64 %21, i64 %11)
  %23 = select i1 %20, i64 %22, i64 768614336404564650
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %25 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %15, ptr %25, align 8, !tbaa !541
  %26 = icmp eq i64 %23, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %14
  %28 = icmp ugt i64 %23, 768614336404564650
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne210107v() #25, !noalias !542
  unreachable

30:                                               ; preds = %27
  %31 = mul nuw i64 %23, 24
  %32 = tail call noalias noundef nonnull ptr @_Znwy(i64 noundef %31) #26, !noalias !542
  br label %33

33:                                               ; preds = %14, %30
  %34 = phi ptr [ %32, %30 ], [ null, %14 ]
  store ptr %34, ptr %3, align 8, !tbaa !516
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 %9
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %35, ptr %36, align 8, !tbaa !515
  %37 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %35, ptr %37, align 8, !tbaa !512
  %38 = getelementptr inbounds nuw %"class.std::__1::basic_string", ptr %34, i64 %23
  store ptr %38, ptr %24, align 8, !tbaa !549
  %39 = load i8, ptr %1, align 8
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !250
  br label %48

43:                                               ; preds = %33
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %45 = load ptr, ptr %44, align 8, !tbaa !216
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %47 = load i64, ptr %46, align 8, !tbaa !216
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcy(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef %45, i64 noundef %47)
          to label %48 unwind label %60

48:                                               ; preds = %43, %42
  %49 = getelementptr inbounds nuw i8, ptr %35, i64 24
  %50 = load ptr, ptr %4, align 8, !tbaa !221
  %51 = load ptr, ptr %0, align 8, !tbaa !217
  %52 = ptrtoint ptr %50 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, -24
  %56 = getelementptr inbounds %"class.std::__1::basic_string", ptr %35, i64 %55
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 8 %51, i64 %54, i1 false)
  store ptr %56, ptr %0, align 8, !tbaa !242
  store ptr %49, ptr %4, align 8, !tbaa !242
  store ptr %38, ptr %15, align 8, !tbaa !242
  %57 = icmp eq ptr %51, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %48
  tail call void @_ZdlPv(ptr noundef nonnull %51) #28
  br label %59

59:                                               ; preds = %48, %58
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #27
  ret ptr %49

60:                                               ; preds = %43
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #27
  resume { ptr, i32 } %61
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @_Znay(i64 noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN5Tools4ivecINSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #2 comdat align 2 {
  %4 = alloca %"struct.fmt::v12::formatter.173", align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %4) #27
  store i32 32768, ptr %4, align 8, !tbaa !331
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 32, ptr %5, align 4, !tbaa !216
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 5
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %6, i8 0, i64 7, i1 false)
  store i32 -1, ptr %7, align 4, !tbaa !333
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %8, align 8, !tbaa !216
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 0, ptr %9, align 8, !tbaa !216
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr @_ZN3fmt3v126detail14string_literalIcJLc44ELc32EEE5valueE, ptr %10, align 8, !tbaa !335, !alias.scope !550
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 2, ptr %11, align 8, !tbaa !341, !alias.scope !550
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr @_ZN3fmt3v126detail14string_literalIcJLc91EEE5valueE, ptr %12, align 8, !tbaa !335, !alias.scope !553
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 1, ptr %13, align 8, !tbaa !341, !alias.scope !553
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store ptr @_ZN3fmt3v126detail14string_literalIcJLc93EEE5valueE, ptr %14, align 8, !tbaa !335, !alias.scope !556
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 1, ptr %15, align 8, !tbaa !341, !alias.scope !556
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i8 0, ptr %16, align 8, !tbaa !348
  %17 = call noundef ptr @_ZN3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE5parseERNS0_13parse_contextIcEE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(20) %1)
  %18 = load ptr, ptr %1, align 8, !tbaa !335
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = icmp sgt i64 %21, -1
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

24:                                               ; preds = %3
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 %21
  store ptr %25, ptr %1, align 8, !tbaa !335
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %27 = load i64, ptr %26, align 8, !tbaa !341
  %28 = sub i64 %27, %21
  store i64 %28, ptr %26, align 8, !tbaa !341
  %29 = call i64 @_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRN5Tools4ivecIS8_EENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %4) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i64 @_ZNK3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvE6formatIRN5Tools4ivecIS8_EENS0_7contextEEEDTcldtfp0_3outEEOT_RT0_(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 {
  %4 = alloca %"class.fmt::v12::basic_string_view", align 8
  %5 = alloca %"class.fmt::v12::basic_string_view", align 8
  %6 = alloca %"struct.fmt::v12::format_specs", align 4
  %7 = load ptr, ptr %2, align 8, !tbaa !375
  %8 = load ptr, ptr %1, align 8, !tbaa !273
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !275
  %11 = mul nuw nsw i64 %10, 24
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 %11
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %14 = load i8, ptr %13, align 8, !tbaa !348, !range !296, !noundef !297
  %15 = trunc nuw i8 %14 to i1
  br i1 %15, label %421, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %18 = load ptr, ptr %17, align 8, !tbaa !377
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %20 = load i64, ptr %19, align 8, !tbaa !27
  %21 = getelementptr inbounds nuw i8, ptr %18, i64 %20
  %22 = icmp samesign eq i64 %20, 0
  br i1 %22, label %134, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %25 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %26 = ptrtoint ptr %21 to i64
  %27 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %28 = load i64, ptr %24, align 8, !tbaa !378
  br label %29

29:                                               ; preds = %110, %23
  %30 = phi i64 [ %28, %23 ], [ %112, %110 ]
  %31 = phi ptr [ %18, %23 ], [ %113, %110 ]
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %26, %32
  %34 = icmp sgt i64 %33, -1
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  tail call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

36:                                               ; preds = %29
  %37 = load i64, ptr %25, align 8, !tbaa !380
  %38 = sub i64 %37, %30
  %39 = icmp ult i64 %38, %33
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load ptr, ptr %27, align 8, !tbaa !381
  %42 = add i64 %33, %30
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %42)
  %43 = load i64, ptr %24, align 8, !tbaa !378
  %44 = load i64, ptr %25, align 8, !tbaa !380
  %45 = sub i64 %44, %43
  %46 = tail call i64 @llvm.umin.i64(i64 %33, i64 %45)
  br label %47

47:                                               ; preds = %40, %36
  %48 = phi i64 [ %43, %40 ], [ %30, %36 ]
  %49 = phi i64 [ %46, %40 ], [ %33, %36 ]
  %50 = load ptr, ptr %7, align 8, !tbaa !382
  %51 = ptrtoint ptr %50 to i64
  %52 = getelementptr inbounds nuw i8, ptr %50, i64 %48
  %53 = icmp eq i64 %49, 0
  br i1 %53, label %110, label %54

54:                                               ; preds = %47
  %55 = icmp ult i64 %49, 4
  br i1 %55, label %56, label %73

56:                                               ; preds = %93, %106, %73, %54
  %57 = phi i64 [ 0, %54 ], [ 0, %73 ], [ %80, %93 ], [ %98, %106 ]
  %58 = and i64 %49, 3
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %56, %60
  %61 = phi i64 [ %66, %60 ], [ %57, %56 ]
  %62 = phi i64 [ %67, %60 ], [ 0, %56 ]
  %63 = getelementptr inbounds nuw i8, ptr %31, i64 %61
  %64 = load i8, ptr %63, align 1, !tbaa !216
  %65 = getelementptr inbounds nuw i8, ptr %52, i64 %61
  store i8 %64, ptr %65, align 1, !tbaa !216
  %66 = add nuw i64 %61, 1
  %67 = add i64 %62, 1
  %68 = icmp eq i64 %67, %58
  br i1 %68, label %69, label %60, !llvm.loop !559

69:                                               ; preds = %60, %56
  %70 = phi i64 [ %57, %56 ], [ %66, %60 ]
  %71 = sub i64 %57, %49
  %72 = icmp ugt i64 %71, -4
  br i1 %72, label %108, label %115

73:                                               ; preds = %54
  %74 = add i64 %48, %51
  %75 = sub i64 %74, %32
  %76 = icmp ult i64 %75, 32
  br i1 %76, label %56, label %77

77:                                               ; preds = %73
  %78 = icmp ult i64 %49, 32
  br i1 %78, label %96, label %79

79:                                               ; preds = %77
  %80 = and i64 %49, -32
  br label %81

81:                                               ; preds = %81, %79
  %82 = phi i64 [ 0, %79 ], [ %89, %81 ]
  %83 = getelementptr inbounds nuw i8, ptr %31, i64 %82
  %84 = getelementptr inbounds nuw i8, ptr %83, i64 16
  %85 = load <16 x i8>, ptr %83, align 1, !tbaa !216
  %86 = load <16 x i8>, ptr %84, align 1, !tbaa !216
  %87 = getelementptr inbounds nuw i8, ptr %52, i64 %82
  %88 = getelementptr inbounds nuw i8, ptr %87, i64 16
  store <16 x i8> %85, ptr %87, align 1, !tbaa !216
  store <16 x i8> %86, ptr %88, align 1, !tbaa !216
  %89 = add nuw i64 %82, 32
  %90 = icmp eq i64 %89, %80
  br i1 %90, label %91, label %81, !llvm.loop !560

91:                                               ; preds = %81
  %92 = icmp eq i64 %49, %80
  br i1 %92, label %108, label %93

93:                                               ; preds = %91
  %94 = and i64 %49, 28
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %56, label %96

96:                                               ; preds = %93, %77
  %97 = phi i64 [ %80, %93 ], [ 0, %77 ]
  %98 = and i64 %49, -4
  br label %99

99:                                               ; preds = %99, %96
  %100 = phi i64 [ %97, %96 ], [ %104, %99 ]
  %101 = getelementptr inbounds nuw i8, ptr %31, i64 %100
  %102 = load <4 x i8>, ptr %101, align 1, !tbaa !216
  %103 = getelementptr inbounds nuw i8, ptr %52, i64 %100
  store <4 x i8> %102, ptr %103, align 1, !tbaa !216
  %104 = add nuw i64 %100, 4
  %105 = icmp eq i64 %104, %98
  br i1 %105, label %106, label %99, !llvm.loop !561

106:                                              ; preds = %99
  %107 = icmp eq i64 %49, %98
  br i1 %107, label %108, label %56

108:                                              ; preds = %69, %115, %106, %91
  %109 = load i64, ptr %24, align 8, !tbaa !378
  br label %110

110:                                              ; preds = %108, %47
  %111 = phi i64 [ %109, %108 ], [ %48, %47 ]
  %112 = add i64 %111, %49
  store i64 %112, ptr %24, align 8, !tbaa !378
  %113 = getelementptr inbounds nuw i8, ptr %31, i64 %49
  %114 = icmp eq ptr %113, %21
  br i1 %114, label %134, label %29, !llvm.loop !387

115:                                              ; preds = %69, %115
  %116 = phi i64 [ %132, %115 ], [ %70, %69 ]
  %117 = getelementptr inbounds nuw i8, ptr %31, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !216
  %119 = getelementptr inbounds nuw i8, ptr %52, i64 %116
  store i8 %118, ptr %119, align 1, !tbaa !216
  %120 = add nuw i64 %116, 1
  %121 = getelementptr inbounds nuw i8, ptr %31, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !216
  %123 = getelementptr inbounds nuw i8, ptr %52, i64 %120
  store i8 %122, ptr %123, align 1, !tbaa !216
  %124 = add nuw i64 %116, 2
  %125 = getelementptr inbounds nuw i8, ptr %31, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !216
  %127 = getelementptr inbounds nuw i8, ptr %52, i64 %124
  store i8 %126, ptr %127, align 1, !tbaa !216
  %128 = add nuw i64 %116, 3
  %129 = getelementptr inbounds nuw i8, ptr %31, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !216
  %131 = getelementptr inbounds nuw i8, ptr %52, i64 %128
  store i8 %130, ptr %131, align 1, !tbaa !216
  %132 = add nuw i64 %116, 4
  %133 = icmp eq i64 %132, %49
  br i1 %133, label %108, label %115, !llvm.loop !562

134:                                              ; preds = %110, %16
  %135 = icmp eq i64 %10, 0
  br i1 %135, label %302, label %136

136:                                              ; preds = %134
  %137 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %139 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %140 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %141 = getelementptr inbounds nuw i8, ptr %6, i64 12
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %143 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %144 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %145

145:                                              ; preds = %136, %296
  %146 = phi ptr [ %8, %136 ], [ %300, %296 ]
  %147 = phi i32 [ 0, %136 ], [ %299, %296 ]
  %148 = phi ptr [ %7, %136 ], [ %298, %296 ]
  %149 = icmp eq i32 %147, 0
  br i1 %149, label %266, label %150

150:                                              ; preds = %145
  %151 = load ptr, ptr %137, align 8, !tbaa !377
  %152 = load i64, ptr %138, align 8, !tbaa !27
  %153 = getelementptr inbounds nuw i8, ptr %151, i64 %152
  %154 = icmp samesign eq i64 %152, 0
  br i1 %154, label %266, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds nuw i8, ptr %148, i64 8
  %157 = getelementptr inbounds nuw i8, ptr %148, i64 16
  %158 = ptrtoint ptr %153 to i64
  %159 = getelementptr inbounds nuw i8, ptr %148, i64 24
  %160 = load i64, ptr %156, align 8, !tbaa !378
  br label %161

161:                                              ; preds = %242, %155
  %162 = phi i64 [ %160, %155 ], [ %244, %242 ]
  %163 = phi ptr [ %151, %155 ], [ %245, %242 ]
  %164 = ptrtoint ptr %163 to i64
  %165 = sub i64 %158, %164
  %166 = icmp sgt i64 %165, -1
  br i1 %166, label %168, label %167

167:                                              ; preds = %161
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

168:                                              ; preds = %161
  %169 = load i64, ptr %157, align 8, !tbaa !380
  %170 = sub i64 %169, %162
  %171 = icmp ult i64 %170, %165
  br i1 %171, label %172, label %179

172:                                              ; preds = %168
  %173 = load ptr, ptr %159, align 8, !tbaa !381
  %174 = add i64 %165, %162
  call void %173(ptr noundef nonnull align 8 dereferenceable(32) %148, i64 noundef %174)
  %175 = load i64, ptr %156, align 8, !tbaa !378
  %176 = load i64, ptr %157, align 8, !tbaa !380
  %177 = sub i64 %176, %175
  %178 = call i64 @llvm.umin.i64(i64 %165, i64 %177)
  br label %179

179:                                              ; preds = %172, %168
  %180 = phi i64 [ %175, %172 ], [ %162, %168 ]
  %181 = phi i64 [ %178, %172 ], [ %165, %168 ]
  %182 = load ptr, ptr %148, align 8, !tbaa !382
  %183 = ptrtoint ptr %182 to i64
  %184 = getelementptr inbounds nuw i8, ptr %182, i64 %180
  %185 = icmp eq i64 %181, 0
  br i1 %185, label %242, label %186

186:                                              ; preds = %179
  %187 = icmp ult i64 %181, 4
  br i1 %187, label %188, label %205

188:                                              ; preds = %225, %238, %205, %186
  %189 = phi i64 [ 0, %186 ], [ 0, %205 ], [ %212, %225 ], [ %230, %238 ]
  %190 = and i64 %181, 3
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %201, label %192

192:                                              ; preds = %188, %192
  %193 = phi i64 [ %198, %192 ], [ %189, %188 ]
  %194 = phi i64 [ %199, %192 ], [ 0, %188 ]
  %195 = getelementptr inbounds nuw i8, ptr %163, i64 %193
  %196 = load i8, ptr %195, align 1, !tbaa !216
  %197 = getelementptr inbounds nuw i8, ptr %184, i64 %193
  store i8 %196, ptr %197, align 1, !tbaa !216
  %198 = add nuw i64 %193, 1
  %199 = add i64 %194, 1
  %200 = icmp eq i64 %199, %190
  br i1 %200, label %201, label %192, !llvm.loop !563

201:                                              ; preds = %192, %188
  %202 = phi i64 [ %189, %188 ], [ %198, %192 ]
  %203 = sub i64 %189, %181
  %204 = icmp ugt i64 %203, -4
  br i1 %204, label %240, label %247

205:                                              ; preds = %186
  %206 = add i64 %180, %183
  %207 = sub i64 %206, %164
  %208 = icmp ult i64 %207, 32
  br i1 %208, label %188, label %209

209:                                              ; preds = %205
  %210 = icmp ult i64 %181, 32
  br i1 %210, label %228, label %211

211:                                              ; preds = %209
  %212 = and i64 %181, -32
  br label %213

213:                                              ; preds = %213, %211
  %214 = phi i64 [ 0, %211 ], [ %221, %213 ]
  %215 = getelementptr inbounds nuw i8, ptr %163, i64 %214
  %216 = getelementptr inbounds nuw i8, ptr %215, i64 16
  %217 = load <16 x i8>, ptr %215, align 1, !tbaa !216
  %218 = load <16 x i8>, ptr %216, align 1, !tbaa !216
  %219 = getelementptr inbounds nuw i8, ptr %184, i64 %214
  %220 = getelementptr inbounds nuw i8, ptr %219, i64 16
  store <16 x i8> %217, ptr %219, align 1, !tbaa !216
  store <16 x i8> %218, ptr %220, align 1, !tbaa !216
  %221 = add nuw i64 %214, 32
  %222 = icmp eq i64 %221, %212
  br i1 %222, label %223, label %213, !llvm.loop !564

223:                                              ; preds = %213
  %224 = icmp eq i64 %181, %212
  br i1 %224, label %240, label %225

225:                                              ; preds = %223
  %226 = and i64 %181, 28
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %188, label %228

228:                                              ; preds = %225, %209
  %229 = phi i64 [ %212, %225 ], [ 0, %209 ]
  %230 = and i64 %181, -4
  br label %231

231:                                              ; preds = %231, %228
  %232 = phi i64 [ %229, %228 ], [ %236, %231 ]
  %233 = getelementptr inbounds nuw i8, ptr %163, i64 %232
  %234 = load <4 x i8>, ptr %233, align 1, !tbaa !216
  %235 = getelementptr inbounds nuw i8, ptr %184, i64 %232
  store <4 x i8> %234, ptr %235, align 1, !tbaa !216
  %236 = add nuw i64 %232, 4
  %237 = icmp eq i64 %236, %230
  br i1 %237, label %238, label %231, !llvm.loop !565

238:                                              ; preds = %231
  %239 = icmp eq i64 %181, %230
  br i1 %239, label %240, label %188

240:                                              ; preds = %201, %247, %238, %223
  %241 = load i64, ptr %156, align 8, !tbaa !378
  br label %242

242:                                              ; preds = %240, %179
  %243 = phi i64 [ %241, %240 ], [ %180, %179 ]
  %244 = add i64 %243, %181
  store i64 %244, ptr %156, align 8, !tbaa !378
  %245 = getelementptr inbounds nuw i8, ptr %163, i64 %181
  %246 = icmp eq ptr %245, %153
  br i1 %246, label %266, label %161, !llvm.loop !387

247:                                              ; preds = %201, %247
  %248 = phi i64 [ %264, %247 ], [ %202, %201 ]
  %249 = getelementptr inbounds nuw i8, ptr %163, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !216
  %251 = getelementptr inbounds nuw i8, ptr %184, i64 %248
  store i8 %250, ptr %251, align 1, !tbaa !216
  %252 = add nuw i64 %248, 1
  %253 = getelementptr inbounds nuw i8, ptr %163, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !216
  %255 = getelementptr inbounds nuw i8, ptr %184, i64 %252
  store i8 %254, ptr %255, align 1, !tbaa !216
  %256 = add nuw i64 %248, 2
  %257 = getelementptr inbounds nuw i8, ptr %163, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !216
  %259 = getelementptr inbounds nuw i8, ptr %184, i64 %256
  store i8 %258, ptr %259, align 1, !tbaa !216
  %260 = add nuw i64 %248, 3
  %261 = getelementptr inbounds nuw i8, ptr %163, i64 %260
  %262 = load i8, ptr %261, align 1, !tbaa !216
  %263 = getelementptr inbounds nuw i8, ptr %184, i64 %260
  store i8 %262, ptr %263, align 1, !tbaa !216
  %264 = add nuw i64 %248, 4
  %265 = icmp eq i64 %264, %181
  br i1 %265, label %240, label %247, !llvm.loop !566

266:                                              ; preds = %242, %150, %145
  %267 = load i8, ptr %146, align 8
  %268 = and i8 %267, 1
  %269 = icmp eq i8 %268, 0
  %270 = getelementptr inbounds nuw i8, ptr %146, i64 16
  %271 = load ptr, ptr %270, align 8
  %272 = getelementptr inbounds nuw i8, ptr %146, i64 1
  %273 = select i1 %269, ptr %272, ptr %271
  %274 = getelementptr inbounds nuw i8, ptr %146, i64 8
  %275 = load i64, ptr %274, align 8
  %276 = lshr i8 %267, 1
  %277 = zext nneg i8 %276 to i64
  %278 = select i1 %269, i64 %277, i64 %275
  %279 = load i32, ptr %0, align 8, !tbaa !331
  %280 = and i32 %279, 960
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %266
  %283 = load ptr, ptr %2, align 8, !tbaa !375
  %284 = ptrtoint ptr %283 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  store ptr %273, ptr %5, align 8
  store i64 %278, ptr %144, align 8
  %285 = call i64 @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsE(i64 %284, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  br label %296

286:                                              ; preds = %266
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 16, i1 false)
  %287 = load i32, ptr %6, align 4, !tbaa !331
  %288 = lshr i32 %287, 6
  %289 = and i32 %288, 3
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %289, ptr noundef nonnull align 4 dereferenceable(4) %139, ptr noundef nonnull align 8 dereferenceable(16) %140, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %290 = load i32, ptr %6, align 4, !tbaa !331
  %291 = lshr i32 %290, 8
  %292 = and i32 %291, 3
  call void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %292, ptr noundef nonnull align 4 dereferenceable(4) %141, ptr noundef nonnull align 8 dereferenceable(16) %142, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %293 = load ptr, ptr %2, align 8, !tbaa !375
  %294 = ptrtoint ptr %293 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  store ptr %273, ptr %4, align 8
  store i64 %278, ptr %143, align 8
  %295 = call i64 @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsE(i64 %294, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #27
  br label %296

296:                                              ; preds = %282, %286
  %297 = phi i64 [ %295, %286 ], [ %285, %282 ]
  %298 = inttoptr i64 %297 to ptr
  %299 = add nuw nsw i32 %147, 1
  %300 = getelementptr inbounds nuw i8, ptr %146, i64 24
  %301 = icmp eq ptr %300, %12
  br i1 %301, label %302, label %145, !llvm.loop !567

302:                                              ; preds = %296, %134
  %303 = phi ptr [ %7, %134 ], [ %298, %296 ]
  %304 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %305 = load ptr, ptr %304, align 8, !tbaa !377
  %306 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %307 = load i64, ptr %306, align 8, !tbaa !27
  %308 = getelementptr inbounds nuw i8, ptr %305, i64 %307
  %309 = icmp samesign eq i64 %307, 0
  br i1 %309, label %421, label %310

310:                                              ; preds = %302
  %311 = getelementptr inbounds nuw i8, ptr %303, i64 8
  %312 = getelementptr inbounds nuw i8, ptr %303, i64 16
  %313 = ptrtoint ptr %308 to i64
  %314 = getelementptr inbounds nuw i8, ptr %303, i64 24
  %315 = load i64, ptr %311, align 8, !tbaa !378
  br label %316

316:                                              ; preds = %397, %310
  %317 = phi i64 [ %315, %310 ], [ %399, %397 ]
  %318 = phi ptr [ %305, %310 ], [ %400, %397 ]
  %319 = ptrtoint ptr %318 to i64
  %320 = sub i64 %313, %319
  %321 = icmp sgt i64 %320, -1
  br i1 %321, label %323, label %322

322:                                              ; preds = %316
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.21, i32 noundef 440, ptr noundef nonnull @.str.22) #25
  unreachable

323:                                              ; preds = %316
  %324 = load i64, ptr %312, align 8, !tbaa !380
  %325 = sub i64 %324, %317
  %326 = icmp ult i64 %325, %320
  br i1 %326, label %327, label %334

327:                                              ; preds = %323
  %328 = load ptr, ptr %314, align 8, !tbaa !381
  %329 = add i64 %320, %317
  call void %328(ptr noundef nonnull align 8 dereferenceable(32) %303, i64 noundef %329)
  %330 = load i64, ptr %311, align 8, !tbaa !378
  %331 = load i64, ptr %312, align 8, !tbaa !380
  %332 = sub i64 %331, %330
  %333 = call i64 @llvm.umin.i64(i64 %320, i64 %332)
  br label %334

334:                                              ; preds = %327, %323
  %335 = phi i64 [ %330, %327 ], [ %317, %323 ]
  %336 = phi i64 [ %333, %327 ], [ %320, %323 ]
  %337 = load ptr, ptr %303, align 8, !tbaa !382
  %338 = ptrtoint ptr %337 to i64
  %339 = getelementptr inbounds nuw i8, ptr %337, i64 %335
  %340 = icmp eq i64 %336, 0
  br i1 %340, label %397, label %341

341:                                              ; preds = %334
  %342 = icmp ult i64 %336, 4
  br i1 %342, label %343, label %360

343:                                              ; preds = %380, %393, %360, %341
  %344 = phi i64 [ 0, %341 ], [ 0, %360 ], [ %367, %380 ], [ %385, %393 ]
  %345 = and i64 %336, 3
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %356, label %347

347:                                              ; preds = %343, %347
  %348 = phi i64 [ %353, %347 ], [ %344, %343 ]
  %349 = phi i64 [ %354, %347 ], [ 0, %343 ]
  %350 = getelementptr inbounds nuw i8, ptr %318, i64 %348
  %351 = load i8, ptr %350, align 1, !tbaa !216
  %352 = getelementptr inbounds nuw i8, ptr %339, i64 %348
  store i8 %351, ptr %352, align 1, !tbaa !216
  %353 = add nuw i64 %348, 1
  %354 = add i64 %349, 1
  %355 = icmp eq i64 %354, %345
  br i1 %355, label %356, label %347, !llvm.loop !568

356:                                              ; preds = %347, %343
  %357 = phi i64 [ %344, %343 ], [ %353, %347 ]
  %358 = sub i64 %344, %336
  %359 = icmp ugt i64 %358, -4
  br i1 %359, label %395, label %402

360:                                              ; preds = %341
  %361 = add i64 %335, %338
  %362 = sub i64 %361, %319
  %363 = icmp ult i64 %362, 32
  br i1 %363, label %343, label %364

364:                                              ; preds = %360
  %365 = icmp ult i64 %336, 32
  br i1 %365, label %383, label %366

366:                                              ; preds = %364
  %367 = and i64 %336, -32
  br label %368

368:                                              ; preds = %368, %366
  %369 = phi i64 [ 0, %366 ], [ %376, %368 ]
  %370 = getelementptr inbounds nuw i8, ptr %318, i64 %369
  %371 = getelementptr inbounds nuw i8, ptr %370, i64 16
  %372 = load <16 x i8>, ptr %370, align 1, !tbaa !216
  %373 = load <16 x i8>, ptr %371, align 1, !tbaa !216
  %374 = getelementptr inbounds nuw i8, ptr %339, i64 %369
  %375 = getelementptr inbounds nuw i8, ptr %374, i64 16
  store <16 x i8> %372, ptr %374, align 1, !tbaa !216
  store <16 x i8> %373, ptr %375, align 1, !tbaa !216
  %376 = add nuw i64 %369, 32
  %377 = icmp eq i64 %376, %367
  br i1 %377, label %378, label %368, !llvm.loop !569

378:                                              ; preds = %368
  %379 = icmp eq i64 %336, %367
  br i1 %379, label %395, label %380

380:                                              ; preds = %378
  %381 = and i64 %336, 28
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %343, label %383

383:                                              ; preds = %380, %364
  %384 = phi i64 [ %367, %380 ], [ 0, %364 ]
  %385 = and i64 %336, -4
  br label %386

386:                                              ; preds = %386, %383
  %387 = phi i64 [ %384, %383 ], [ %391, %386 ]
  %388 = getelementptr inbounds nuw i8, ptr %318, i64 %387
  %389 = load <4 x i8>, ptr %388, align 1, !tbaa !216
  %390 = getelementptr inbounds nuw i8, ptr %339, i64 %387
  store <4 x i8> %389, ptr %390, align 1, !tbaa !216
  %391 = add nuw i64 %387, 4
  %392 = icmp eq i64 %391, %385
  br i1 %392, label %393, label %386, !llvm.loop !570

393:                                              ; preds = %386
  %394 = icmp eq i64 %336, %385
  br i1 %394, label %395, label %343

395:                                              ; preds = %356, %402, %393, %378
  %396 = load i64, ptr %311, align 8, !tbaa !378
  br label %397

397:                                              ; preds = %395, %334
  %398 = phi i64 [ %396, %395 ], [ %335, %334 ]
  %399 = add i64 %398, %336
  store i64 %399, ptr %311, align 8, !tbaa !378
  %400 = getelementptr inbounds nuw i8, ptr %318, i64 %336
  %401 = icmp eq ptr %400, %308
  br i1 %401, label %421, label %316, !llvm.loop !387

402:                                              ; preds = %356, %402
  %403 = phi i64 [ %419, %402 ], [ %357, %356 ]
  %404 = getelementptr inbounds nuw i8, ptr %318, i64 %403
  %405 = load i8, ptr %404, align 1, !tbaa !216
  %406 = getelementptr inbounds nuw i8, ptr %339, i64 %403
  store i8 %405, ptr %406, align 1, !tbaa !216
  %407 = add nuw i64 %403, 1
  %408 = getelementptr inbounds nuw i8, ptr %318, i64 %407
  %409 = load i8, ptr %408, align 1, !tbaa !216
  %410 = getelementptr inbounds nuw i8, ptr %339, i64 %407
  store i8 %409, ptr %410, align 1, !tbaa !216
  %411 = add nuw i64 %403, 2
  %412 = getelementptr inbounds nuw i8, ptr %318, i64 %411
  %413 = load i8, ptr %412, align 1, !tbaa !216
  %414 = getelementptr inbounds nuw i8, ptr %339, i64 %411
  store i8 %413, ptr %414, align 1, !tbaa !216
  %415 = add nuw i64 %403, 3
  %416 = getelementptr inbounds nuw i8, ptr %318, i64 %415
  %417 = load i8, ptr %416, align 1, !tbaa !216
  %418 = getelementptr inbounds nuw i8, ptr %339, i64 %415
  store i8 %417, ptr %418, align 1, !tbaa !216
  %419 = add nuw i64 %403, 4
  %420 = icmp eq i64 %419, %336
  br i1 %420, label %395, label %402, !llvm.loop !571

421:                                              ; preds = %397, %302, %3
  %422 = phi ptr [ %7, %3 ], [ %303, %302 ], [ %303, %397 ]
  %423 = ptrtoint ptr %422 to i64
  ret i64 %423
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #23

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { allocsize(0) }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 21.1.7", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Test.cpp", directory: "D:/Code/_CLIB/Tools/Test/IvecUnique")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 1, !"MaxTLSAlign", i32 65536}
!7 = !{!"clang version 21.1.7"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt3__16vectorIiNS_9allocatorIiEEEE", !10, i64 0, !10, i64 8, !14, i64 16}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"_ZTSNSt3__16vectorIiNS_9allocatorIiEEEUt_E", !10, i64 0}
!15 = !{!9, !10, i64 8}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !12, i64 0}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !20, !19}
!22 = !{!23, !24, i64 0}
!23 = !{!"_ZTSNSt3__16vectorIxNS_9allocatorIxEEEE", !24, i64 0, !24, i64 8, !25, i64 16}
!24 = !{!"p1 long long", !11, i64 0}
!25 = !{!"_ZTSNSt3__16vectorIxNS_9allocatorIxEEEUt_E", !24, i64 0}
!26 = !{!23, !24, i64 8}
!27 = !{!28, !28, i64 0}
!28 = !{!"long long", !12, i64 0}
!29 = distinct !{!29, !19, !20}
!30 = distinct !{!30, !20, !19}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSNSt3__16vectorIfNS_9allocatorIfEEEE", !33, i64 0, !33, i64 8, !34, i64 16}
!33 = !{!"p1 float", !11, i64 0}
!34 = !{!"_ZTSNSt3__16vectorIfNS_9allocatorIfEEEUt_E", !33, i64 0}
!35 = !{!32, !33, i64 8}
!36 = !{!37, !37, i64 0}
!37 = !{!"float", !12, i64 0}
!38 = !{!39, !40, i64 0}
!39 = !{!"_ZTSNSt3__16vectorIdNS_9allocatorIdEEEE", !40, i64 0, !40, i64 8, !41, i64 16}
!40 = !{!"p1 double", !11, i64 0}
!41 = !{!"_ZTSNSt3__16vectorIdNS_9allocatorIdEEEUt_E", !40, i64 0}
!42 = !{!39, !40, i64 8}
!43 = !{!44, !44, i64 0}
!44 = !{!"double", !12, i64 0}
!45 = distinct !{!45, !19, !20}
!46 = distinct !{!46, !20, !19}
!47 = distinct !{!47, !19, !20}
!48 = distinct !{!48, !20, !19}
!49 = !{!9, !10, i64 16}
!50 = !{!51, !53, !55, !57}
!51 = distinct !{!51, !52, !"_ZNSt3__119__copy_trivial_implB8ne210107IiiEENS_4pairIPT_PT0_EES3_S3_S5_: argument 0"}
!52 = distinct !{!52, !"_ZNSt3__119__copy_trivial_implB8ne210107IiiEENS_4pairIPT_PT0_EES3_S3_S5_"}
!53 = distinct !{!53, !54, !"_ZNKSt3__111__copy_implclB8ne210107IiiTnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS3_PS4_EES8_S8_S9_: argument 0"}
!54 = distinct !{!54, !"_ZNKSt3__111__copy_implclB8ne210107IiiTnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS3_PS4_EES8_S8_S9_"}
!55 = distinct !{!55, !56, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__copy_implEPiS2_S2_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS4_S5_EES4_T1_S5_: argument 0"}
!56 = distinct !{!56, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__copy_implEPiS2_S2_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS4_S5_EES4_T1_S5_"}
!57 = distinct !{!57, !58, !"_ZNSt3__16__copyB8ne210107IPiS1_S1_EENS_4pairIT_T1_EES3_T0_S4_: argument 0"}
!58 = distinct !{!58, !"_ZNSt3__16__copyB8ne210107IPiS1_S1_EENS_4pairIT_T1_EES3_T0_S4_"}
!59 = !{!23, !24, i64 16}
!60 = !{!61, !63, !65, !67}
!61 = distinct !{!61, !62, !"_ZNSt3__119__copy_trivial_implB8ne210107IxxEENS_4pairIPT_PT0_EES3_S3_S5_: argument 0"}
!62 = distinct !{!62, !"_ZNSt3__119__copy_trivial_implB8ne210107IxxEENS_4pairIPT_PT0_EES3_S3_S5_"}
!63 = distinct !{!63, !64, !"_ZNKSt3__111__copy_implclB8ne210107IxxTnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS3_PS4_EES8_S8_S9_: argument 0"}
!64 = distinct !{!64, !"_ZNKSt3__111__copy_implclB8ne210107IxxTnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS3_PS4_EES8_S8_S9_"}
!65 = distinct !{!65, !66, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__copy_implEPxS2_S2_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS4_S5_EES4_T1_S5_: argument 0"}
!66 = distinct !{!66, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__copy_implEPxS2_S2_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS4_S5_EES4_T1_S5_"}
!67 = distinct !{!67, !68, !"_ZNSt3__16__copyB8ne210107IPxS1_S1_EENS_4pairIT_T1_EES3_T0_S4_: argument 0"}
!68 = distinct !{!68, !"_ZNSt3__16__copyB8ne210107IPxS1_S1_EENS_4pairIT_T1_EES3_T0_S4_"}
!69 = !{!32, !33, i64 16}
!70 = !{!71, !73, !75, !77}
!71 = distinct !{!71, !72, !"_ZNSt3__119__copy_trivial_implB8ne210107IffEENS_4pairIPT_PT0_EES3_S3_S5_: argument 0"}
!72 = distinct !{!72, !"_ZNSt3__119__copy_trivial_implB8ne210107IffEENS_4pairIPT_PT0_EES3_S3_S5_"}
!73 = distinct !{!73, !74, !"_ZNKSt3__111__copy_implclB8ne210107IffTnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS3_PS4_EES8_S8_S9_: argument 0"}
!74 = distinct !{!74, !"_ZNKSt3__111__copy_implclB8ne210107IffTnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS3_PS4_EES8_S8_S9_"}
!75 = distinct !{!75, !76, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__copy_implEPfS2_S2_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS4_S5_EES4_T1_S5_: argument 0"}
!76 = distinct !{!76, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__copy_implEPfS2_S2_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS4_S5_EES4_T1_S5_"}
!77 = distinct !{!77, !78, !"_ZNSt3__16__copyB8ne210107IPfS1_S1_EENS_4pairIT_T1_EES3_T0_S4_: argument 0"}
!78 = distinct !{!78, !"_ZNSt3__16__copyB8ne210107IPfS1_S1_EENS_4pairIT_T1_EES3_T0_S4_"}
!79 = !{!39, !40, i64 16}
!80 = !{!81, !83, !85, !87}
!81 = distinct !{!81, !82, !"_ZNSt3__119__copy_trivial_implB8ne210107IddEENS_4pairIPT_PT0_EES3_S3_S5_: argument 0"}
!82 = distinct !{!82, !"_ZNSt3__119__copy_trivial_implB8ne210107IddEENS_4pairIPT_PT0_EES3_S3_S5_"}
!83 = distinct !{!83, !84, !"_ZNKSt3__111__copy_implclB8ne210107IddTnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS3_PS4_EES8_S8_S9_: argument 0"}
!84 = distinct !{!84, !"_ZNKSt3__111__copy_implclB8ne210107IddTnNS_9enable_ifIXsr38__can_lower_copy_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS3_PS4_EES8_S8_S9_"}
!85 = distinct !{!85, !86, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__copy_implEPdS2_S2_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS4_S5_EES4_T1_S5_: argument 0"}
!86 = distinct !{!86, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__copy_implEPdS2_S2_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS4_S5_EES4_T1_S5_"}
!87 = distinct !{!87, !88, !"_ZNSt3__16__copyB8ne210107IPdS1_S1_EENS_4pairIT_T1_EES3_T0_S4_: argument 0"}
!88 = distinct !{!88, !"_ZNSt3__16__copyB8ne210107IPdS1_S1_EENS_4pairIT_T1_EES3_T0_S4_"}
!89 = distinct !{!89, !90, !19, !20}
!90 = !{!"llvm.loop.mustprogress"}
!91 = distinct !{!91, !90, !19}
!92 = !{!93, !93, i64 0}
!93 = !{!"vtable pointer", !13, i64 0}
!94 = distinct !{!94, !90, !19, !20}
!95 = distinct !{!95, !90, !19}
!96 = distinct !{!96, !90, !19, !20}
!97 = distinct !{!97, !90, !19}
!98 = distinct !{!98, !90, !19, !20}
!99 = distinct !{!99, !90, !19}
!100 = distinct !{!100, !90, !19, !20}
!101 = distinct !{!101, !90, !19}
!102 = distinct !{!102, !90, !19, !20}
!103 = distinct !{!103, !90, !19}
!104 = distinct !{!104, !90, !19, !20}
!105 = distinct !{!105, !90, !19}
!106 = distinct !{!106, !90, !19, !20}
!107 = distinct !{!107, !90, !19}
!108 = !{!109, !111, !113, !115}
!109 = distinct !{!109, !110, !"_ZNSt3__119__copy_trivial_implB8ne210107IiiEENS_4pairIPT_PT0_EES3_S3_S5_: argument 0"}
!110 = distinct !{!110, !"_ZNSt3__119__copy_trivial_implB8ne210107IiiEENS_4pairIPT_PT0_EES3_S3_S5_"}
!111 = distinct !{!111, !112, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IiiTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_: argument 0"}
!112 = distinct !{!112, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IiiTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_"}
!113 = distinct !{!113, !114, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPiS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_: argument 0"}
!114 = distinct !{!114, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPiS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_"}
!115 = distinct !{!115, !116, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_: argument 0"}
!116 = distinct !{!116, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_"}
!117 = !{!118, !120, !122, !124}
!118 = distinct !{!118, !119, !"_ZNSt3__119__copy_trivial_implB8ne210107IiiEENS_4pairIPT_PT0_EES3_S3_S5_: argument 0"}
!119 = distinct !{!119, !"_ZNSt3__119__copy_trivial_implB8ne210107IiiEENS_4pairIPT_PT0_EES3_S3_S5_"}
!120 = distinct !{!120, !121, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IiiTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_: argument 0"}
!121 = distinct !{!121, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IiiTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_"}
!122 = distinct !{!122, !123, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPiS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_: argument 0"}
!123 = distinct !{!123, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPiS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_"}
!124 = distinct !{!124, !125, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_: argument 0"}
!125 = distinct !{!125, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_"}
!126 = !{!127, !129, !131, !133}
!127 = distinct !{!127, !128, !"_ZNSt3__119__copy_trivial_implB8ne210107IxxEENS_4pairIPT_PT0_EES3_S3_S5_: argument 0"}
!128 = distinct !{!128, !"_ZNSt3__119__copy_trivial_implB8ne210107IxxEENS_4pairIPT_PT0_EES3_S3_S5_"}
!129 = distinct !{!129, !130, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IxxTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_: argument 0"}
!130 = distinct !{!130, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IxxTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_"}
!131 = distinct !{!131, !132, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPxS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_: argument 0"}
!132 = distinct !{!132, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPxS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_"}
!133 = distinct !{!133, !134, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPxS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_: argument 0"}
!134 = distinct !{!134, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPxS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_"}
!135 = !{!136, !138, !140, !142}
!136 = distinct !{!136, !137, !"_ZNSt3__119__copy_trivial_implB8ne210107IxxEENS_4pairIPT_PT0_EES3_S3_S5_: argument 0"}
!137 = distinct !{!137, !"_ZNSt3__119__copy_trivial_implB8ne210107IxxEENS_4pairIPT_PT0_EES3_S3_S5_"}
!138 = distinct !{!138, !139, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IxxTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_: argument 0"}
!139 = distinct !{!139, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IxxTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_"}
!140 = distinct !{!140, !141, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPxS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_: argument 0"}
!141 = distinct !{!141, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPxS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_"}
!142 = distinct !{!142, !143, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPxS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_: argument 0"}
!143 = distinct !{!143, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPxS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_"}
!144 = !{!145, !147, !149, !151}
!145 = distinct !{!145, !146, !"_ZNSt3__119__copy_trivial_implB8ne210107IffEENS_4pairIPT_PT0_EES3_S3_S5_: argument 0"}
!146 = distinct !{!146, !"_ZNSt3__119__copy_trivial_implB8ne210107IffEENS_4pairIPT_PT0_EES3_S3_S5_"}
!147 = distinct !{!147, !148, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IffTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_: argument 0"}
!148 = distinct !{!148, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IffTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_"}
!149 = distinct !{!149, !150, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPfS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_: argument 0"}
!150 = distinct !{!150, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPfS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_"}
!151 = distinct !{!151, !152, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPfS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_: argument 0"}
!152 = distinct !{!152, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPfS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_"}
!153 = !{!154, !156, !158, !160}
!154 = distinct !{!154, !155, !"_ZNSt3__119__copy_trivial_implB8ne210107IffEENS_4pairIPT_PT0_EES3_S3_S5_: argument 0"}
!155 = distinct !{!155, !"_ZNSt3__119__copy_trivial_implB8ne210107IffEENS_4pairIPT_PT0_EES3_S3_S5_"}
!156 = distinct !{!156, !157, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IffTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_: argument 0"}
!157 = distinct !{!157, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IffTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_"}
!158 = distinct !{!158, !159, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPfS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_: argument 0"}
!159 = distinct !{!159, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPfS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_"}
!160 = distinct !{!160, !161, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPfS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_: argument 0"}
!161 = distinct !{!161, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPfS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_"}
!162 = !{!163, !165, !167, !169}
!163 = distinct !{!163, !164, !"_ZNSt3__119__copy_trivial_implB8ne210107IddEENS_4pairIPT_PT0_EES3_S3_S5_: argument 0"}
!164 = distinct !{!164, !"_ZNSt3__119__copy_trivial_implB8ne210107IddEENS_4pairIPT_PT0_EES3_S3_S5_"}
!165 = distinct !{!165, !166, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IddTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_: argument 0"}
!166 = distinct !{!166, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IddTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_"}
!167 = distinct !{!167, !168, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPdS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_: argument 0"}
!168 = distinct !{!168, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPdS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_"}
!169 = distinct !{!169, !170, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPdS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_: argument 0"}
!170 = distinct !{!170, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPdS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_"}
!171 = !{!172, !174, !176, !178}
!172 = distinct !{!172, !173, !"_ZNSt3__119__copy_trivial_implB8ne210107IddEENS_4pairIPT_PT0_EES3_S3_S5_: argument 0"}
!173 = distinct !{!173, !"_ZNSt3__119__copy_trivial_implB8ne210107IddEENS_4pairIPT_PT0_EES3_S3_S5_"}
!174 = distinct !{!174, !175, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IddTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_: argument 0"}
!175 = distinct !{!175, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IddTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_"}
!176 = distinct !{!176, !177, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPdS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_: argument 0"}
!177 = distinct !{!177, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPdS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_"}
!178 = distinct !{!178, !179, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPdS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_: argument 0"}
!179 = distinct !{!179, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPdS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_"}
!180 = !{!181, !183, !185, !187}
!181 = distinct !{!181, !182, !"_ZNSt3__119__copy_trivial_implB8ne210107IiiEENS_4pairIPT_PT0_EES3_S3_S5_: argument 0"}
!182 = distinct !{!182, !"_ZNSt3__119__copy_trivial_implB8ne210107IiiEENS_4pairIPT_PT0_EES3_S3_S5_"}
!183 = distinct !{!183, !184, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IiiTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_: argument 0"}
!184 = distinct !{!184, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IiiTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_"}
!185 = distinct !{!185, !186, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPiS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_: argument 0"}
!186 = distinct !{!186, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPiS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_"}
!187 = distinct !{!187, !188, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_: argument 0"}
!188 = distinct !{!188, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_"}
!189 = !{!190, !192, !194, !196}
!190 = distinct !{!190, !191, !"_ZNSt3__119__copy_trivial_implB8ne210107IxxEENS_4pairIPT_PT0_EES3_S3_S5_: argument 0"}
!191 = distinct !{!191, !"_ZNSt3__119__copy_trivial_implB8ne210107IxxEENS_4pairIPT_PT0_EES3_S3_S5_"}
!192 = distinct !{!192, !193, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IxxTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_: argument 0"}
!193 = distinct !{!193, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IxxTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_"}
!194 = distinct !{!194, !195, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPxS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_: argument 0"}
!195 = distinct !{!195, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPxS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_"}
!196 = distinct !{!196, !197, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPxS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_: argument 0"}
!197 = distinct !{!197, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPxS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_"}
!198 = !{!199, !201, !203, !205}
!199 = distinct !{!199, !200, !"_ZNSt3__119__copy_trivial_implB8ne210107IffEENS_4pairIPT_PT0_EES3_S3_S5_: argument 0"}
!200 = distinct !{!200, !"_ZNSt3__119__copy_trivial_implB8ne210107IffEENS_4pairIPT_PT0_EES3_S3_S5_"}
!201 = distinct !{!201, !202, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IffTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_: argument 0"}
!202 = distinct !{!202, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IffTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_"}
!203 = distinct !{!203, !204, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPfS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_: argument 0"}
!204 = distinct !{!204, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPfS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_"}
!205 = distinct !{!205, !206, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPfS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_: argument 0"}
!206 = distinct !{!206, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPfS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_"}
!207 = !{!208, !210, !212, !214}
!208 = distinct !{!208, !209, !"_ZNSt3__119__copy_trivial_implB8ne210107IddEENS_4pairIPT_PT0_EES3_S3_S5_: argument 0"}
!209 = distinct !{!209, !"_ZNSt3__119__copy_trivial_implB8ne210107IddEENS_4pairIPT_PT0_EES3_S3_S5_"}
!210 = distinct !{!210, !211, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IddTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_: argument 0"}
!211 = distinct !{!211, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IddTnNS_9enable_ifIXsr38__can_lower_move_assignment_to_memmoveIT_T0_EE5valueEiE4typeELi0EEENS_4pairIPS5_PS6_EESA_SA_SB_"}
!212 = distinct !{!212, !213, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPdS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_: argument 0"}
!213 = distinct !{!213, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPdS4_S4_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairIS6_S7_EES6_T1_S7_"}
!214 = distinct !{!214, !215, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPdS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_: argument 0"}
!215 = distinct !{!215, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPdS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_"}
!216 = !{!12, !12, i64 0}
!217 = !{!218, !219, i64 0}
!218 = !{!"_ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !219, i64 0, !219, i64 8, !220, i64 16}
!219 = !{!"p1 _ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !11, i64 0}
!220 = !{!"_ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEUt_E", !219, i64 0}
!221 = !{!218, !219, i64 8}
!222 = !{!223, !37, i64 32}
!223 = !{!"_ZTSNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEEE", !224, i64 0, !230, i64 16, !233, i64 24, !234, i64 32}
!224 = !{!"_ZTSNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEEEENS_25__bucket_list_deallocatorINS6_ISD_EEEEEE", !225, i64 0}
!225 = !{!"_ZTSNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEEEENS_25__bucket_list_deallocatorINS6_ISD_EEEEEUt_E", !226, i64 0, !228, i64 8}
!226 = !{!"p2 _ZTSNSt3__116__hash_node_baseIPNS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEEEE", !227, i64 0}
!227 = !{!"any p2 pointer", !11, i64 0}
!228 = !{!"_ZTSNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEEEE", !229, i64 0}
!229 = !{!"_ZTSNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEEEUt_E", !28, i64 0}
!230 = !{!"_ZTSNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEEUt_E", !231, i64 0}
!231 = !{!"_ZTSNSt3__116__hash_node_baseIPNS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEEEE", !232, i64 0}
!232 = !{!"p1 _ZTSNSt3__116__hash_node_baseIPNS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEEEE", !11, i64 0}
!233 = !{!"_ZTSNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEEUt0_E", !28, i64 0}
!234 = !{!"_ZTSNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEEUt1_E", !37, i64 0}
!235 = distinct !{!235, !90}
!236 = !{!237, !28, i64 0}
!237 = !{!"_ZTSN3fmt3v1217basic_format_argsINS0_7contextEEE", !28, i64 0, !12, i64 8}
!238 = !{!223, !232, i64 16}
!239 = !{!231, !232, i64 0}
!240 = distinct !{!240, !90}
!241 = !{!224, !226, i64 0}
!242 = !{!219, !219, i64 0}
!243 = !{!244, !246, !248}
!244 = distinct !{!244, !245, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_SA_EENS_4pairIT_T1_EESC_T0_SD_: argument 0"}
!245 = distinct !{!245, !"_ZNKSt3__111__move_implINS_17_ClassicAlgPolicyEEclB8ne210107IPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_SA_EENS_4pairIT_T1_EESC_T0_SD_"}
!246 = distinct !{!246, !247, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_SA_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISC_SD_EESC_T1_SD_: argument 0"}
!247 = distinct !{!247, !"_ZNSt3__124__copy_move_unwrap_itersB8ne210107INS_11__move_implINS_17_ClassicAlgPolicyEEEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEESA_SA_TnNS_9enable_ifIXsr12__can_rewrapIT0_T2_EE5valueEiE4typeELi0EEENS_4pairISC_SD_EESC_T1_SD_"}
!248 = distinct !{!248, !249, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_S8_EENS_4pairIT0_T2_EESA_T1_SB_: argument 0"}
!249 = distinct !{!249, !"_ZNSt3__16__moveB8ne210107INS_17_ClassicAlgPolicyEPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_S8_EENS_4pairIT0_T2_EESA_T1_SB_"}
!250 = !{i64 0, i64 24, !216}
!251 = distinct !{!251, !90}
!252 = !{!253, !37, i64 32}
!253 = !{!"_ZTSNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEEE", !254, i64 0, !259, i64 16, !262, i64 24, !263, i64 32}
!254 = !{!"_ZTSNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEEEENS_25__bucket_list_deallocatorINS7_ISF_EEEEEE", !255, i64 0}
!255 = !{!"_ZTSNSt3__110unique_ptrIA_PNS_16__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEEEENS_25__bucket_list_deallocatorINS7_ISF_EEEEEUt_E", !256, i64 0, !257, i64 8}
!256 = !{!"p2 _ZTSNSt3__116__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEEEE", !227, i64 0}
!257 = !{!"_ZTSNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEyEEPvEEEEEEEE", !258, i64 0}
!258 = !{!"_ZTSNSt3__125__bucket_list_deallocatorINS_9allocatorIPNS_16__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEyEEPvEEEEEEEUt_E", !28, i64 0}
!259 = !{!"_ZTSNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEEUt_E", !260, i64 0}
!260 = !{!"_ZTSNSt3__116__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEEEE", !261, i64 0}
!261 = !{!"p1 _ZTSNSt3__116__hash_node_baseIPNS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEEEE", !11, i64 0}
!262 = !{!"_ZTSNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEEUt0_E", !28, i64 0}
!263 = !{!"_ZTSNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEEUt1_E", !37, i64 0}
!264 = !{!218, !219, i64 16}
!265 = !{!253, !261, i64 16}
!266 = !{!260, !261, i64 0}
!267 = distinct !{!267, !90}
!268 = !{!254, !256, i64 0}
!269 = !{!270, !261, i64 0}
!270 = !{!"_ZTSNSt3__115__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEEEE", !261, i64 0}
!271 = !{!272, !28, i64 16}
!272 = !{!"_ZTSN5Tools4ivecINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEE", !219, i64 0, !28, i64 8, !28, i64 16}
!273 = !{!272, !219, i64 0}
!274 = !{i64 0, i64 23, !216}
!275 = !{!272, !28, i64 8}
!276 = distinct !{!276, !90}
!277 = distinct !{!277, !90}
!278 = !{!279, !279, i64 0}
!279 = !{!"p1 _ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE", !11, i64 0}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_ZNSt3__122__make_exception_guardB8ne210107INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_: argument 0"}
!282 = distinct !{!282, !"_ZNSt3__122__make_exception_guardB8ne210107INS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EESC_"}
!283 = !{!284, !286, i64 8}
!284 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEE16__destroy_vectorEEE", !285, i64 0, !286, i64 8}
!285 = !{!"_ZTSNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorE", !279, i64 0}
!286 = !{!"bool", !12, i64 0}
!287 = !{!288, !286, i64 24}
!288 = !{!"_ZTSNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEE", !289, i64 0, !286, i64 24}
!289 = !{!"_ZTSNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEPS6_EE", !290, i64 0, !291, i64 8, !291, i64 16}
!290 = !{!"p1 _ZTSNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEEE", !11, i64 0}
!291 = !{!"p2 _ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !227, i64 0}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_ZNSt3__122__make_exception_guardB8ne210107INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_: argument 0"}
!294 = distinct !{!294, !"_ZNSt3__122__make_exception_guardB8ne210107INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEEEPS7_EEEENS_28__exception_guard_exceptionsIT_EESC_"}
!295 = distinct !{!295, !90}
!296 = !{i8 0, i8 2}
!297 = !{}
!298 = !{!285, !279, i64 0}
!299 = !{i64 8}
!300 = !{!289, !291, i64 16}
!301 = !{!289, !291, i64 8}
!302 = distinct !{!302, !90}
!303 = !{!304, !306, !308}
!304 = distinct !{!304, !305, !"_ZNSt3__19allocatorIcE17allocate_at_leastB8ne210107Ey: argument 0"}
!305 = distinct !{!305, !"_ZNSt3__19allocatorIcE17allocate_at_leastB8ne210107Ey"}
!306 = distinct !{!306, !307, !"_ZNSt3__116allocator_traitsINS_9allocatorIcEEE17allocate_at_leastB8ne210107IS2_EENS_17allocation_resultIPcyEERT_y: argument 0"}
!307 = distinct !{!307, !"_ZNSt3__116allocator_traitsINS_9allocatorIcEEE17allocate_at_leastB8ne210107IS2_EENS_17allocation_resultIPcyEERT_y"}
!308 = distinct !{!308, !309, !"_ZNSt3__119__allocate_at_leastB8ne210107INS_9allocatorIcEEEEDaRT_y: argument 0"}
!309 = distinct !{!309, !"_ZNSt3__119__allocate_at_leastB8ne210107INS_9allocatorIcEEEEDaRT_y"}
!310 = !{!228, !28, i64 0}
!311 = !{!232, !232, i64 0}
!312 = !{!313, !28, i64 8}
!313 = !{!"_ZTSNSt3__111__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEE", !231, i64 0, !28, i64 8, !12, i64 16}
!314 = distinct !{!314, !90}
!315 = !{!316}
!316 = distinct !{!316, !317, !"_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE21__construct_node_hashIRS6_JEEENS_10unique_ptrINS_11__hash_nodeIS6_PvEENS_22__hash_node_destructorINS4_ISI_EEEEEEyOT_DpOT0_: argument 0"}
!317 = distinct !{!317, !"_ZNSt3__112__hash_tableINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIS6_EENS_8equal_toIS6_EENS4_IS6_EEE21__construct_node_hashIRS6_JEEENS_10unique_ptrINS_11__hash_nodeIS6_PvEENS_22__hash_node_destructorINS4_ISI_EEEEEEyOT_DpOT0_"}
!318 = !{!319, !321, i64 0}
!319 = !{!"_ZTSNSt3__110unique_ptrINS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__hash_node_destructorINS5_IS9_EEEEEE", !320, i64 0}
!320 = !{!"_ZTSNSt3__110unique_ptrINS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEENS_22__hash_node_destructorINS5_IS9_EEEEEUt_E", !321, i64 0, !322, i64 8, !324, i64 17}
!321 = !{!"p1 _ZTSNSt3__111__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEE", !11, i64 0}
!322 = !{!"_ZTSNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEPvEEEEEE", !323, i64 0, !286, i64 8}
!323 = !{!"p1 _ZTSNSt3__19allocatorINS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEPvEEEE", !11, i64 0}
!324 = !{!"_ZTSNSt3__125__compressed_pair_paddingINS_22__hash_node_destructorINS_9allocatorINS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEPvEEEEEELb0EEE", !12, i64 0}
!325 = !{!323, !323, i64 0}
!326 = !{!322, !286, i64 8}
!327 = !{!328, !286, i64 8}
!328 = !{!"_ZTSNSt3__14pairINS_15__hash_iteratorIPNS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEEEEbEE", !329, i64 0, !286, i64 8}
!329 = !{!"_ZTSNSt3__115__hash_iteratorIPNS_11__hash_nodeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvEEEE", !232, i64 0}
!330 = distinct !{!330, !90}
!331 = !{!332, !17, i64 0}
!332 = !{!"_ZTSN3fmt3v1211basic_specsE", !17, i64 0, !12, i64 4}
!333 = !{!334, !17, i64 12}
!334 = !{!"_ZTSN3fmt3v1212format_specsE", !332, i64 0, !17, i64 8, !17, i64 12}
!335 = !{!336, !337, i64 0}
!336 = !{!"_ZTSN3fmt3v1217basic_string_viewIcEE", !337, i64 0, !28, i64 8}
!337 = !{!"p1 omnipotent char", !11, i64 0}
!338 = !{!339}
!339 = distinct !{!339, !340, !"_ZNK3fmt3v126detail14string_literalIcJLc44ELc32EEEcvNS0_17basic_string_viewIcEEEv: argument 0"}
!340 = distinct !{!340, !"_ZNK3fmt3v126detail14string_literalIcJLc44ELc32EEEcvNS0_17basic_string_viewIcEEEv"}
!341 = !{!336, !28, i64 8}
!342 = !{!343}
!343 = distinct !{!343, !344, !"_ZNK3fmt3v126detail14string_literalIcJLc91EEEcvNS0_17basic_string_viewIcEEEv: argument 0"}
!344 = distinct !{!344, !"_ZNK3fmt3v126detail14string_literalIcJLc91EEEcvNS0_17basic_string_viewIcEEEv"}
!345 = !{!346}
!346 = distinct !{!346, !347, !"_ZNK3fmt3v126detail14string_literalIcJLc93EEEcvNS0_17basic_string_viewIcEEEv: argument 0"}
!347 = distinct !{!347, !"_ZNK3fmt3v126detail14string_literalIcJLc93EEEcvNS0_17basic_string_viewIcEEEv"}
!348 = !{!349, !286, i64 96}
!349 = !{!"_ZTSN3fmt3v1215range_formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvEE", !350, i64 0, !336, i64 48, !336, i64 64, !336, i64 80, !286, i64 96}
!350 = !{!"_ZTSN3fmt3v129formatterINSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEcvEE", !351, i64 0}
!351 = !{!"_ZTSN3fmt3v129formatterINS0_17basic_string_viewIcEEcvEE", !352, i64 0}
!352 = !{!"_ZTSN3fmt3v126detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EEE", !353, i64 0}
!353 = !{!"_ZTSN3fmt3v126detail20dynamic_format_specsIcEE", !334, i64 0, !12, i64 16, !12, i64 32}
!354 = !{!355, !356, i64 8}
!355 = !{!"_ZTSN3fmt3v126detail25parse_dynamic_spec_resultIcEE", !337, i64 0, !356, i64 8}
!356 = !{!"_ZTSN3fmt3v1211arg_id_kindE", !12, i64 0}
!357 = !{!355, !337, i64 0}
!358 = distinct !{!358, !90}
!359 = distinct !{!359, !90}
!360 = !{!356, !356, i64 0}
!361 = distinct !{!361, !90}
!362 = !{!363, !17, i64 16}
!363 = !{!"_ZTSN3fmt3v1213parse_contextIcEE", !336, i64 0, !17, i64 16}
!364 = !{!365, !365, i64 0}
!365 = !{!"p1 _ZTSN3fmt3v1213parse_contextIcEE", !11, i64 0}
!366 = !{!367, !367, i64 0}
!367 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIcEE", !11, i64 0}
!368 = !{!11, !11, i64 0}
!369 = !{!370, !367, i64 8}
!370 = !{!"_ZTSN3fmt3v126detail20dynamic_spec_handlerIcEE", !365, i64 0, !367, i64 8, !11, i64 16}
!371 = !{!370, !11, i64 16}
!372 = !{i64 4}
!373 = !{!370, !365, i64 0}
!374 = distinct !{!374, !90}
!375 = !{!376, !376, i64 0}
!376 = !{!"p1 _ZTSN3fmt3v126detail6bufferIcEE", !11, i64 0}
!377 = !{!337, !337, i64 0}
!378 = !{!379, !28, i64 8}
!379 = !{!"_ZTSN3fmt3v126detail6bufferIcEE", !337, i64 0, !28, i64 8, !28, i64 16, !11, i64 24}
!380 = !{!379, !28, i64 16}
!381 = !{!379, !11, i64 24}
!382 = !{!379, !337, i64 0}
!383 = distinct !{!383, !384}
!384 = !{!"llvm.loop.unroll.disable"}
!385 = distinct !{!385, !90, !19, !20}
!386 = distinct !{!386, !90, !19, !20}
!387 = distinct !{!387, !90}
!388 = distinct !{!388, !90, !19}
!389 = distinct !{!389, !384}
!390 = distinct !{!390, !90, !19, !20}
!391 = distinct !{!391, !90, !19, !20}
!392 = distinct !{!392, !90, !19}
!393 = distinct !{!393, !90}
!394 = distinct !{!394, !384}
!395 = distinct !{!395, !90, !19, !20}
!396 = distinct !{!396, !90, !19, !20}
!397 = distinct !{!397, !90, !19}
!398 = !{!399}
!399 = distinct !{!399, !400, !"_ZNK3fmt3v127context3argEi: argument 0"}
!400 = distinct !{!400, !"_ZNK3fmt3v127context3argEi"}
!401 = !{!402}
!402 = distinct !{!402, !403, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!403 = distinct !{!403, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!404 = !{!405, !407, i64 16}
!405 = !{!"_ZTSN3fmt3v1216basic_format_argINS0_7contextEEE", !406, i64 0, !407, i64 16}
!406 = !{!"_ZTSN3fmt3v126detail5valueINS0_7contextEEE", !12, i64 0}
!407 = !{!"_ZTSN3fmt3v126detail4typeE", !12, i64 0}
!408 = !{!402, !399}
!409 = !{i64 0, i64 16, !216, i64 16, i64 4, !410}
!410 = !{!407, !407, i64 0}
!411 = !{i64 0, i64 16, !216}
!412 = !{!413}
!413 = distinct !{!413, !414, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE: argument 0"}
!414 = distinct !{!414, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE"}
!415 = !{!416, !28, i64 8}
!416 = !{!"_ZTSN3fmt3v126detail15named_arg_valueIcEE", !417, i64 0, !28, i64 8}
!417 = !{!"p1 _ZTSN3fmt3v126detail14named_arg_infoIcEE", !11, i64 0}
!418 = !{!416, !417, i64 0}
!419 = !{!420, !337, i64 0}
!420 = !{!"_ZTSN3fmt3v126detail14named_arg_infoIcEE", !337, i64 0, !17, i64 8}
!421 = distinct !{!421, !90}
!422 = !{!420, !17, i64 8}
!423 = !{!424, !413}
!424 = distinct !{!424, !425, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!425 = distinct !{!425, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!426 = !{!286, !286, i64 0}
!427 = !{i64 0, i64 8, !377, i64 8, i64 8, !27}
!428 = distinct !{!428, !384}
!429 = distinct !{!429, !90, !19, !20}
!430 = distinct !{!430, !90, !19, !20}
!431 = distinct !{!431, !90, !19}
!432 = !{!433, !433, i64 0}
!433 = !{!"p1 bool", !11, i64 0}
!434 = !{!24, !24, i64 0}
!435 = !{!436, !436, i64 0}
!436 = !{!"p1 _ZTSN3fmt3v1217basic_string_viewIcEE", !11, i64 0}
!437 = distinct !{!437, !90}
!438 = distinct !{!438, !90, !19, !20}
!439 = distinct !{!439, !90, !19, !20}
!440 = distinct !{!440, !384}
!441 = distinct !{!441, !90, !19}
!442 = distinct !{!442, !90}
!443 = !{!444, !286, i64 0}
!444 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUlS4_E_", !286, i64 0, !28, i64 8, !336, i64 16}
!445 = !{!444, !28, i64 8}
!446 = !{!447}
!447 = distinct !{!447, !448, !"_ZN3fmt3v126detail11find_escapeEPKcS3_: argument 0"}
!448 = distinct !{!448, !"_ZN3fmt3v126detail11find_escapeEPKcS3_"}
!449 = !{!450, !337, i64 0}
!450 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIcEE", !337, i64 0, !337, i64 8, !17, i64 16}
!451 = !{!450, !337, i64 8}
!452 = !{!450, !17, i64 16}
!453 = distinct !{!453, !90}
!454 = distinct !{!454, !90, !19, !20}
!455 = distinct !{!455, !90, !19, !20}
!456 = distinct !{!456, !384}
!457 = distinct !{!457, !90, !19}
!458 = distinct !{!458, !90}
!459 = distinct !{!459, !384}
!460 = distinct !{!460, !90, !19, !20}
!461 = distinct !{!461, !90, !19, !20}
!462 = distinct !{!462, !90, !19}
!463 = distinct !{!463, !90}
!464 = !{!334, !17, i64 8}
!465 = !{!466, !28, i64 8}
!466 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iterator", !467, i64 0, !28, i64 8}
!467 = !{!"_ZTSN3fmt3v1214basic_appenderIcEE", !376, i64 0}
!468 = distinct !{!468, !384}
!469 = distinct !{!469, !90, !19, !20}
!470 = distinct !{!470, !90, !19, !20}
!471 = distinct !{!471, !90, !19}
!472 = distinct !{!472, !90}
!473 = !{!474, !433, i64 0}
!474 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUljNSB_IcEEE_", !433, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !436, i64 32}
!475 = !{!476, !28, i64 288}
!476 = !{!"_ZTSN3fmt3v126detail15counting_bufferIcEE", !379, i64 0, !12, i64 32, !28, i64 288}
!477 = !{!474, !24, i64 8}
!478 = !{!474, !24, i64 16}
!479 = !{!474, !24, i64 24}
!480 = !{!474, !436, i64 32}
!481 = distinct !{!481, !90}
!482 = distinct !{!482, !384}
!483 = distinct !{!483, !90, !19, !20}
!484 = distinct !{!484, !90, !19, !20}
!485 = distinct !{!485, !90, !19}
!486 = distinct !{!486, !90}
!487 = !{!488}
!488 = distinct !{!488, !489, !"_ZN3fmt3v126detail11find_escapeEPKcS3_: argument 0"}
!489 = distinct !{!489, !"_ZN3fmt3v126detail11find_escapeEPKcS3_"}
!490 = distinct !{!490, !90, !19, !20}
!491 = distinct !{!491, !90, !19, !20}
!492 = distinct !{!492, !384}
!493 = distinct !{!493, !90, !19}
!494 = !{!495}
!495 = distinct !{!495, !496, !"_ZN3fmt3v126detail4copyIcPKcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SD_NS0_17basic_string_viewISA_EERKNS0_12format_specsEE23bounded_output_iteratorTnNS9_IXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendISK_SD_EE5valuesr48has_back_insert_iterator_container_insert_at_endISK_SD_EE5valueEiE4typeELi0EEESK_SD_SD_SK_: argument 0"}
!496 = distinct !{!496, !"_ZN3fmt3v126detail4copyIcPKcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SD_NS0_17basic_string_viewISA_EERKNS0_12format_specsEE23bounded_output_iteratorTnNS9_IXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendISK_SD_EE5valuesr48has_back_insert_iterator_container_insert_at_endISK_SD_EE5valueEiE4typeELi0EEESK_SD_SD_SK_"}
!497 = distinct !{!497, !90, !498}
!498 = !{!"llvm.loop.unswitch.partial.disable"}
!499 = !{i64 0, i64 8, !375, i64 8, i64 8, !27}
!500 = distinct !{!500, !90}
!501 = !{!502}
!502 = distinct !{!502, !503, !"_ZN3fmt3v126detail4copyIcPcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEE23bounded_output_iteratorTnNS8_IXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendISJ_SC_EE5valuesr48has_back_insert_iterator_container_insert_at_endISJ_SC_EE5valueEiE4typeELi0EEESJ_SC_SC_SJ_: argument 0"}
!503 = distinct !{!503, !"_ZN3fmt3v126detail4copyIcPcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEE23bounded_output_iteratorTnNS8_IXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendISJ_SC_EE5valuesr48has_back_insert_iterator_container_insert_at_endISJ_SC_EE5valueEiE4typeELi0EEESJ_SC_SC_SJ_"}
!504 = !{!505}
!505 = distinct !{!505, !506, !"_ZN3fmt3v126detail4copyIcPcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEE23bounded_output_iteratorTnNS8_IXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendISJ_SC_EE5valuesr48has_back_insert_iterator_container_insert_at_endISJ_SC_EE5valueEiE4typeELi0EEESJ_SC_SC_SJ_: argument 0"}
!506 = distinct !{!506, !"_ZN3fmt3v126detail4copyIcPcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEE23bounded_output_iteratorTnNS8_IXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendISJ_SC_EE5valuesr48has_back_insert_iterator_container_insert_at_endISJ_SC_EE5valueEiE4typeELi0EEESJ_SC_SC_SJ_"}
!507 = !{!508}
!508 = distinct !{!508, !509, !"_ZN3fmt3v126detail4copyIcPcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEE23bounded_output_iteratorTnNS8_IXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendISJ_SC_EE5valuesr48has_back_insert_iterator_container_insert_at_endISJ_SC_EE5valueEiE4typeELi0EEESJ_SC_SC_SJ_: argument 0"}
!509 = distinct !{!509, !"_ZN3fmt3v126detail4copyIcPcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SC_NS0_17basic_string_viewIS9_EERKNS0_12format_specsEE23bounded_output_iteratorTnNS8_IXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendISJ_SC_EE5valuesr48has_back_insert_iterator_container_insert_at_endISJ_SC_EE5valueEiE4typeELi0EEESJ_SC_SC_SJ_"}
!510 = distinct !{!510, !90}
!511 = distinct !{!511, !90}
!512 = !{!513, !219, i64 8}
!513 = !{!"_ZTSNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEE", !219, i64 0, !219, i64 8, !219, i64 16, !514, i64 24}
!514 = !{!"_ZTSNSt3__114__split_bufferINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS4_IS6_EEEUt_E", !219, i64 0, !290, i64 8}
!515 = !{!513, !219, i64 16}
!516 = !{!513, !219, i64 0}
!517 = !{!257, !28, i64 0}
!518 = !{!261, !261, i64 0}
!519 = !{!520, !28, i64 8}
!520 = !{!"_ZTSNSt3__111__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEE", !260, i64 0, !28, i64 8, !12, i64 16}
!521 = distinct !{!521, !90}
!522 = !{!523}
!523 = distinct !{!523, !524, !"_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE21__construct_node_hashIRKNS_21piecewise_construct_tEJNS_5tupleIJRSB_EEENSQ_IJEEEEEENS_10unique_ptrINS_11__hash_nodeIS8_PvEENS_22__hash_node_destructorINS5_ISX_EEEEEEyOT_DpOT0_: argument 0"}
!524 = distinct !{!524, !"_ZNSt3__112__hash_tableINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEENS_22__unordered_map_hasherIS7_NS_4pairIKS7_yEENS_4hashIS7_EENS_8equal_toIS7_EELb1EEENS_21__unordered_map_equalIS7_SC_SG_SE_Lb1EEENS5_ISC_EEE21__construct_node_hashIRKNS_21piecewise_construct_tEJNS_5tupleIJRSB_EEENSQ_IJEEEEEENS_10unique_ptrINS_11__hash_nodeIS8_PvEENS_22__hash_node_destructorINS5_ISX_EEEEEEyOT_DpOT0_"}
!525 = !{!526, !528, i64 0}
!526 = !{!"_ZTSNSt3__110unique_ptrINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEENS_22__hash_node_destructorINS6_ISB_EEEEEE", !527, i64 0}
!527 = !{!"_ZTSNSt3__110unique_ptrINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEENS_22__hash_node_destructorINS6_ISB_EEEEEUt_E", !528, i64 0, !529, i64 8, !531, i64 17}
!528 = !{!"p1 _ZTSNSt3__111__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEE", !11, i64 0}
!529 = !{!"_ZTSNSt3__122__hash_node_destructorINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEyEEPvEEEEEE", !530, i64 0, !286, i64 8}
!530 = !{!"p1 _ZTSNSt3__19allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEyEEPvEEEE", !11, i64 0}
!531 = !{!"_ZTSNSt3__125__compressed_pair_paddingINS_22__hash_node_destructorINS_9allocatorINS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS2_IcEEEEyEEPvEEEEEELb0EEE", !12, i64 0}
!532 = !{!530, !530, i64 0}
!533 = !{!534, !28, i64 24}
!534 = !{!"_ZTSNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEE", !535, i64 0, !28, i64 24}
!535 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !536, i64 0}
!536 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEUt0_E", !12, i64 0}
!537 = !{!529, !286, i64 8}
!538 = !{!539, !286, i64 8}
!539 = !{!"_ZTSNSt3__14pairINS_15__hash_iteratorIPNS_11__hash_nodeINS_17__hash_value_typeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEyEEPvEEEEbEE", !270, i64 0, !286, i64 8}
!540 = distinct !{!540, !90}
!541 = !{!290, !290, i64 0}
!542 = !{!543, !545, !547}
!543 = distinct !{!543, !544, !"_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE17allocate_at_leastB8ne210107Ey: argument 0"}
!544 = distinct !{!544, !"_ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE17allocate_at_leastB8ne210107Ey"}
!545 = distinct !{!545, !546, !"_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE17allocate_at_leastB8ne210107IS7_EENS_17allocation_resultIPS6_yEERT_y: argument 0"}
!546 = distinct !{!546, !"_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE17allocate_at_leastB8ne210107IS7_EENS_17allocation_resultIPS6_yEERT_y"}
!547 = distinct !{!547, !548, !"_ZNSt3__119__allocate_at_leastB8ne210107INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_y: argument 0"}
!548 = distinct !{!548, !"_ZNSt3__119__allocate_at_leastB8ne210107INS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEDaRT_y"}
!549 = !{!513, !219, i64 24}
!550 = !{!551}
!551 = distinct !{!551, !552, !"_ZNK3fmt3v126detail14string_literalIcJLc44ELc32EEEcvNS0_17basic_string_viewIcEEEv: argument 0"}
!552 = distinct !{!552, !"_ZNK3fmt3v126detail14string_literalIcJLc44ELc32EEEcvNS0_17basic_string_viewIcEEEv"}
!553 = !{!554}
!554 = distinct !{!554, !555, !"_ZNK3fmt3v126detail14string_literalIcJLc91EEEcvNS0_17basic_string_viewIcEEEv: argument 0"}
!555 = distinct !{!555, !"_ZNK3fmt3v126detail14string_literalIcJLc91EEEcvNS0_17basic_string_viewIcEEEv"}
!556 = !{!557}
!557 = distinct !{!557, !558, !"_ZNK3fmt3v126detail14string_literalIcJLc93EEEcvNS0_17basic_string_viewIcEEEv: argument 0"}
!558 = distinct !{!558, !"_ZNK3fmt3v126detail14string_literalIcJLc93EEEcvNS0_17basic_string_viewIcEEEv"}
!559 = distinct !{!559, !384}
!560 = distinct !{!560, !90, !19, !20}
!561 = distinct !{!561, !90, !19, !20}
!562 = distinct !{!562, !90, !19}
!563 = distinct !{!563, !384}
!564 = distinct !{!564, !90, !19, !20}
!565 = distinct !{!565, !90, !19, !20}
!566 = distinct !{!566, !90, !19}
!567 = distinct !{!567, !90}
!568 = distinct !{!568, !384}
!569 = distinct !{!569, !90, !19, !20}
!570 = distinct !{!570, !90, !19, !20}
!571 = distinct !{!571, !90, !19}
