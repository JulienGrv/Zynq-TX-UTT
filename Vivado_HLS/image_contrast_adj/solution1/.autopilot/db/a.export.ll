; ModuleID = '/home/darkin/Workspace/Vivado_HLS/image_contrast_adj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a16]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@doHistStretch_str = internal unnamed_addr constant [14 x i8] c"doHistStretch\00"
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

declare i54 @llvm.part.select.i54(i54, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @doHistStretch(i8* %inStream_V_data_V, i1* %inStream_V_keep_V, i1* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, i8* %outStream_V_data_V, i1* %outStream_V_keep_V, i1* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, i8 zeroext %xMin, i8 zeroext %xMax) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inStream_V_data_V), !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_keep_V), !map !46
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_strb_V), !map !50
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %inStream_V_user_V), !map !54
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_last_V), !map !58
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %inStream_V_id_V), !map !62
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %inStream_V_dest_V), !map !66
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outStream_V_data_V), !map !70
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_keep_V), !map !74
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_strb_V), !map !78
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %outStream_V_user_V), !map !82
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_last_V), !map !86
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %outStream_V_id_V), !map !90
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %outStream_V_dest_V), !map !94
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %xMin), !map !98
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %xMax), !map !104
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @doHistStretch_str) nounwind
  %xMax_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %xMax)
  %xMin_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %xMin)
  call void (...)* @_ssdm_op_SpecInterface(i8* %inStream_V_data_V, i1* %inStream_V_keep_V, i1* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %outStream_V_data_V, i1* %outStream_V_keep_V, i1* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_cast = zext i8 %xMin_read to i9
  call void (...)* @_ssdm_op_SpecInterface(i8 %xMin, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_cast_6 = zext i8 %xMax_read to i9
  call void (...)* @_ssdm_op_SpecInterface(i8 %xMax, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_1 = sub i9 %tmp_cast_6, %tmp_cast
  %xMax_minus_xMin6 = sext i9 %tmp_1 to i32
  %xMax_minus_xMin = sitofp i32 %xMax_minus_xMin6 to float
  br label %1

; <label>:1                                       ; preds = %_ifconv, %0
  %idxPixel = phi i19 [ 0, %0 ], [ %idxPixel_1, %_ifconv ]
  %exitcond = icmp eq i19 %idxPixel, -262144
  %idxPixel_1 = add i19 %idxPixel, 1
  br i1 %exitcond, label %2, label %_ifconv

_ifconv:                                          ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 262144, i64 262144, i64 262144)
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %empty_7 = call { i8, i1, i1, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P.i2P.i1P.i5P.i6P(i8* %inStream_V_data_V, i1* %inStream_V_keep_V, i1* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V_1 = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_7, 0
  %tmp_keep_V = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_7, 1
  %tmp_strb_V = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_7, 2
  %tmp_user_V = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_7, 3
  %tmp_last_V = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_7, 4
  %tmp_id_V = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_7, 5
  %tmp_dest_V = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_7, 6
  %tmp_3_cast = zext i8 %tmp_data_V_1 to i9
  %tmp_4 = sub i9 %tmp_3_cast, %tmp_cast
  %tmp_s = sext i9 %tmp_4 to i32
  %tmp_5 = sitofp i32 %tmp_s to float
  %tmp_6 = fdiv float %tmp_5, %xMax_minus_xMin
  %y_t_float = fmul float %tmp_6, 2.550000e+02
  %p_Val2_s = bitcast float %y_t_float to i32
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_s to i23
  %p_Result_s = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_1) nounwind
  %tmp_2_i_i = zext i24 %p_Result_s to i54
  %tmp_i_i_i_cast1 = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_cast1
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_4_i_i = sub i8 127, %loc_V
  %tmp_4_i_i_cast = sext i8 %tmp_4_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_4_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cast = sext i9 %sh_assign_1 to i24
  %tmp_6_i_i = zext i32 %sh_assign_1_cast to i54
  %tmp_7_i_i = lshr i24 %p_Result_s, %sh_assign_1_cast_cast
  %tmp_9_i_i = shl i54 %tmp_2_i_i, %tmp_6_i_i
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_7_i_i, i32 23)
  %tmp = zext i1 %tmp_9 to i8
  %tmp_3 = call i8 @_ssdm_op_PartSelect.i8.i54.i32.i32(i54 %tmp_9_i_i, i32 23, i32 30)
  %result_V = select i1 %isNeg, i8 %tmp, i8 %tmp_3
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P.i2P.i1P.i5P.i6P(i8* %outStream_V_data_V, i1* %outStream_V_keep_V, i1* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, i8 %result_V, i1 %tmp_keep_V, i1 %tmp_strb_V, i2 %tmp_user_V, i1 %tmp_last_V, i5 %tmp_id_V, i6 %tmp_dest_V)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_2)
  br label %1

; <label>:2                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P.i2P.i1P.i5P.i6P(i8*, i1*, i1*, i2*, i1*, i5*, i6*, i8, i1, i1, i2, i1, i5, i6) {
entry:
  store i8 %7, i8* %0
  store i1 %8, i1* %1
  store i1 %9, i1* %2
  store i2 %10, i2* %3
  store i1 %11, i1* %4
  store i5 %12, i5* %5
  store i6 %13, i6* %6
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.s_axilite.i8(i8) {
entry:
  ret i8 %0
}

define weak { i8, i1, i1, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P.i2P.i1P.i5P.i6P(i8*, i1*, i1*, i2*, i1*, i5*, i6*) {
entry:
  %empty = load i8* %0
  %empty_9 = load i1* %1
  %empty_10 = load i1* %2
  %empty_11 = load i2* %3
  %empty_12 = load i1* %4
  %empty_13 = load i5* %5
  %empty_14 = load i6* %6
  %mrv_0 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } undef, i8 %empty, 0
  %mrv1 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv_0, i1 %empty_9, 1
  %mrv2 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv1, i1 %empty_10, 2
  %mrv3 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv2, i2 %empty_11, 3
  %mrv4 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv3, i1 %empty_12, 4
  %mrv5 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv4, i5 %empty_13, 5
  %mrv6 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv5, i6 %empty_14, 6
  ret { i8, i1, i1, i2, i1, i5, i6 } %mrv6
}

define weak i8 @_ssdm_op_PartSelect.i8.i54.i32.i32(i54, i32, i32) nounwind readnone {
entry:
  %empty = call i54 @llvm.part.select.i54(i54 %0, i32 %1, i32 %2)
  %empty_15 = trunc i54 %empty to i8
  ret i8 %empty_15
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_16 = trunc i32 %empty to i8
  ret i8 %empty_16
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_17 = shl i9 1, %empty
  %empty_18 = and i9 %0, %empty_17
  %empty_19 = icmp ne i9 %empty_18, 0
  ret i1 %empty_19
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_20 = shl i24 1, %empty
  %empty_21 = and i24 %0, %empty_20
  %empty_22 = icmp ne i24 %empty_21, 0
  ret i1 %empty_22
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_23 = zext i23 %1 to i24
  %empty_24 = shl i24 %empty, 23
  %empty_25 = or i24 %empty_24, %empty_23
  ret i24 %empty_25
}

declare void @_GLOBAL__I_a16() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !16, !18, !20, !22, !22, !25, !25, !31, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25, !25}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!33}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint_8_side_channel> &", metadata !"hls::stream<uint_8_side_channel> &", metadata !"uchar", metadata !"uchar"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"inStream", metadata !"outStream", metadata !"xMin", metadata !"xMax"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axiu<8, 2, 5, 6> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<6> &"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!16 = metadata !{null, metadata !8, metadata !9, metadata !17, metadata !11, metadata !15, metadata !6}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<5> &"}
!18 = metadata !{null, metadata !8, metadata !9, metadata !19, metadata !11, metadata !15, metadata !6}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<2> &"}
!20 = metadata !{null, metadata !8, metadata !9, metadata !21, metadata !11, metadata !15, metadata !6}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !24, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"uchar"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!25 = metadata !{null, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !6}
!26 = metadata !{metadata !"kernel_arg_addr_space"}
!27 = metadata !{metadata !"kernel_arg_access_qual"}
!28 = metadata !{metadata !"kernel_arg_type"}
!29 = metadata !{metadata !"kernel_arg_type_qual"}
!30 = metadata !{metadata !"kernel_arg_name"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !15, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!33 = metadata !{metadata !34, [2 x i32]* @llvm_global_ctors_0}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 31, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"llvm.global_ctors.0", metadata !38, metadata !"", i32 0, i32 31}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 1, i32 1}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 7, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"inStream.V.data.V", metadata !44, metadata !"uint8", i32 0, i32 7}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 0, i32 1}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 0, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"inStream.V.keep.V", metadata !44, metadata !"uint1", i32 0, i32 0}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 0, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"inStream.V.strb.V", metadata !44, metadata !"uint1", i32 0, i32 0}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 1, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"inStream.V.user.V", metadata !44, metadata !"uint2", i32 0, i32 1}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 0, i32 0, metadata !60}
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !"inStream.V.last.V", metadata !44, metadata !"uint1", i32 0, i32 0}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 4, metadata !64}
!64 = metadata !{metadata !65}
!65 = metadata !{metadata !"inStream.V.id.V", metadata !44, metadata !"uint5", i32 0, i32 4}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 5, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"inStream.V.dest.V", metadata !44, metadata !"uint6", i32 0, i32 5}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 7, metadata !72}
!72 = metadata !{metadata !73}
!73 = metadata !{metadata !"outStream.V.data.V", metadata !44, metadata !"uint8", i32 0, i32 7}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 0, metadata !76}
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !"outStream.V.keep.V", metadata !44, metadata !"uint1", i32 0, i32 0}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 0, metadata !80}
!80 = metadata !{metadata !81}
!81 = metadata !{metadata !"outStream.V.strb.V", metadata !44, metadata !"uint1", i32 0, i32 0}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 0, i32 1, metadata !84}
!84 = metadata !{metadata !85}
!85 = metadata !{metadata !"outStream.V.user.V", metadata !44, metadata !"uint2", i32 0, i32 1}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 0, i32 0, metadata !88}
!88 = metadata !{metadata !89}
!89 = metadata !{metadata !"outStream.V.last.V", metadata !44, metadata !"uint1", i32 0, i32 0}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 0, i32 4, metadata !92}
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !"outStream.V.id.V", metadata !44, metadata !"uint5", i32 0, i32 4}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 5, metadata !96}
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !"outStream.V.dest.V", metadata !44, metadata !"uint6", i32 0, i32 5}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 0, i32 7, metadata !100}
!100 = metadata !{metadata !101}
!101 = metadata !{metadata !"xMin", metadata !102, metadata !"unsigned char", i32 0, i32 7}
!102 = metadata !{metadata !103}
!103 = metadata !{i32 0, i32 0, i32 0}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 0, i32 7, metadata !106}
!106 = metadata !{metadata !107}
!107 = metadata !{metadata !"xMax", metadata !102, metadata !"unsigned char", i32 0, i32 7}
