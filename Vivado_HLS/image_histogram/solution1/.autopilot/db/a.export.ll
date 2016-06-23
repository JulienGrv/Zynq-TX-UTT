; ModuleID = '/home/darkin/Workspace/Vivado_HLS/image_histogram/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@doHist_str = internal unnamed_addr constant [7 x i8] c"doHist\00"
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str4 = private unnamed_addr constant [5 x i8] c"bram\00", align 1
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @doHist(i8* %inStream_V_data_V, i1* %inStream_V_keep_V, i1* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, [256 x i32]* %histo) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inStream_V_data_V), !map !20
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_keep_V), !map !24
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_strb_V), !map !28
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %inStream_V_user_V), !map !32
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_last_V), !map !36
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %inStream_V_id_V), !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %inStream_V_dest_V), !map !44
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i32]* %histo), !map !48
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @doHist_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %inStream_V_data_V, i1* %inStream_V_keep_V, i1* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([256 x i32]* %histo, [5 x i8]* @p_str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %idxHist = phi i9 [ 0, %0 ], [ %idxHist_1, %2 ]
  %exitcond2 = icmp eq i9 %idxHist, -256
  %idxHist_1 = add i9 %idxHist, 1
  br i1 %exitcond2, label %.preheader, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256)
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp = zext i9 %idxHist to i64
  %histo_addr = getelementptr [256 x i32]* %histo, i64 0, i64 %tmp
  store i32 0, i32* %histo_addr, align 4
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_1)
  br label %1

.preheader:                                       ; preds = %1, %3
  %idxPixel = phi i19 [ %idxPixel_1, %3 ], [ 0, %1 ]
  %exitcond = icmp eq i19 %idxPixel, -262144
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 262144, i64 262144, i64 262144)
  %idxPixel_1 = add i19 %idxPixel, 1
  br i1 %exitcond, label %4, label %3

; <label>:3                                       ; preds = %.preheader
  %empty_4 = call { i8, i1, i1, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P.i2P.i1P.i5P.i6P(i8* %inStream_V_data_V, i1* %inStream_V_keep_V, i1* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_4, 0
  %tmp_3 = zext i8 %tmp_data_V to i64
  %histo_addr_1 = getelementptr [256 x i32]* %histo, i64 0, i64 %tmp_3
  %histo_load = load i32* %histo_addr_1, align 4
  %tmp_4 = add nsw i32 %histo_load, 1
  store i32 %tmp_4, i32* %histo_addr_1, align 4
  br label %.preheader

; <label>:4                                       ; preds = %.preheader
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

define weak { i8, i1, i1, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P.i2P.i1P.i5P.i6P(i8*, i1*, i1*, i2*, i1*, i5*, i6*) {
entry:
  %empty = load i8* %0
  %empty_5 = load i1* %1
  %empty_6 = load i1* %2
  %empty_7 = load i2* %3
  %empty_8 = load i1* %4
  %empty_9 = load i5* %5
  %empty_10 = load i6* %6
  %mrv_0 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } undef, i8 %empty, 0
  %mrv1 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv_0, i1 %empty_5, 1
  %mrv2 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv1, i1 %empty_6, 2
  %mrv3 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv2, i2 %empty_7, 3
  %mrv4 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv3, i1 %empty_8, 4
  %mrv5 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv4, i5 %empty_9, 5
  %mrv6 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv5, i6 %empty_10, 6
  ret { i8, i1, i1, i2, i1, i5, i6 } %mrv6
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!13}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint_8_side_channel> &", metadata !"int*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"inStream", metadata !"histo"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space"}
!9 = metadata !{metadata !"kernel_arg_access_qual"}
!10 = metadata !{metadata !"kernel_arg_type"}
!11 = metadata !{metadata !"kernel_arg_type_qual"}
!12 = metadata !{metadata !"kernel_arg_name"}
!13 = metadata !{metadata !14, [1 x i32]* @llvm_global_ctors_0}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 31, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"llvm.global_ctors.0", metadata !18, metadata !"", i32 0, i32 31}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 0, i32 1}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 7, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"inStream.V.data.V", metadata !18, metadata !"uint8", i32 0, i32 7}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 0, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"inStream.V.keep.V", metadata !18, metadata !"uint1", i32 0, i32 0}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 0, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"inStream.V.strb.V", metadata !18, metadata !"uint1", i32 0, i32 0}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 1, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"inStream.V.user.V", metadata !18, metadata !"uint2", i32 0, i32 1}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 0, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"inStream.V.last.V", metadata !18, metadata !"uint1", i32 0, i32 0}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 4, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"inStream.V.id.V", metadata !18, metadata !"uint5", i32 0, i32 4}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 5, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"inStream.V.dest.V", metadata !18, metadata !"uint6", i32 0, i32 5}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 31, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"histo", metadata !52, metadata !"int", i32 0, i32 31}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 255, i32 1}
