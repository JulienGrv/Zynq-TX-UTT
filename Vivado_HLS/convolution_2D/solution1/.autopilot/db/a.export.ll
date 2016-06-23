; ModuleID = '/home/darkin/Workspace/Vivado_HLS/convolution_2D/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@hls_KD_KD_LineBuffer_MD_3_MC_s = internal unnamed_addr constant [63 x i8] c"hls::LineBuffer<3, 512, unsigned char, 0>::LineBuffer.1.region\00"
@doImgProc_str = internal unnamed_addr constant [10 x i8] c"doImgProc\00"
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str1810 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str1809 = private unnamed_addr constant [11 x i8] c"KERNEL_BUS\00", align 1
@p_str1808 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1
@p_str1807 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1806 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1805 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i17 @llvm.part.select.i17(i17, i32, i32) nounwind readnone

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @doImgProc(i8* %inStream_V_data_V, i1* %inStream_V_keep_V, i1* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, i8* %outStream_V_data_V, i1* %outStream_V_keep_V, i1* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, [9 x i8]* %kernel, i32 %operation) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inStream_V_data_V), !map !118
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_keep_V), !map !122
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_strb_V), !map !126
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %inStream_V_user_V), !map !130
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_last_V), !map !134
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %inStream_V_id_V), !map !138
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %inStream_V_dest_V), !map !142
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outStream_V_data_V), !map !146
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_keep_V), !map !150
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_strb_V), !map !154
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %outStream_V_user_V), !map !158
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_last_V), !map !162
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %outStream_V_id_V), !map !166
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %outStream_V_dest_V), !map !170
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i8]* %kernel), !map !174
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %operation), !map !180
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @doImgProc_str) nounwind
  %operation_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %operation)
  %lineBuff_val_0 = alloca [512 x i8], align 1
  %lineBuff_val_1 = alloca [512 x i8], align 1
  %lineBuff_val_2 = alloca [512 x i8], align 1
  call void (...)* @_ssdm_op_SpecInterface(i8* %inStream_V_data_V, i1* %inStream_V_keep_V, i1* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %outStream_V_data_V, i1* %outStream_V_keep_V, i1* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1808, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %operation, [10 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1808, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([9 x i8]* %kernel, [1 x i8]* @p_str, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface([9 x i8]* %kernel, [10 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [11 x i8]* @p_str1809, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806) nounwind
  %rbegin_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([63 x i8]* @hls_KD_KD_LineBuffer_MD_3_MC_s) nounwind
  %rend_i = call i32 (...)* @_ssdm_op_SpecRegionEnd([63 x i8]* @hls_KD_KD_LineBuffer_MD_3_MC_s, i32 %rbegin_i) nounwind
  %kernel_addr = getelementptr [9 x i8]* %kernel, i64 0, i64 0
  %kernel_addr_1 = getelementptr [9 x i8]* %kernel, i64 0, i64 1
  %kernel_addr_2 = getelementptr [9 x i8]* %kernel, i64 0, i64 2
  %kernel_addr_3 = getelementptr [9 x i8]* %kernel, i64 0, i64 3
  %kernel_addr_4 = getelementptr [9 x i8]* %kernel, i64 0, i64 4
  %kernel_addr_5 = getelementptr [9 x i8]* %kernel, i64 0, i64 5
  %kernel_addr_6 = getelementptr [9 x i8]* %kernel, i64 0, i64 6
  %kernel_addr_7 = getelementptr [9 x i8]* %kernel, i64 0, i64 7
  %kernel_addr_8 = getelementptr [9 x i8]* %kernel, i64 0, i64 8
  %sel_tmp2 = icmp eq i32 %operation_read, 2
  %sel_tmp5 = icmp eq i32 %operation_read, 1
  %sel_tmp8 = icmp eq i32 %operation_read, 0
  br label %1

; <label>:1                                       ; preds = %._crit_edge75, %0
  %tmp_id_V = phi i5 [ undef, %0 ], [ %tmp_id_V_1, %._crit_edge75 ]
  %tmp_user_V = phi i2 [ undef, %0 ], [ %tmp_user_V_1, %._crit_edge75 ]
  %tmp_strb_V = phi i1 [ undef, %0 ], [ %tmp_strb_V_1, %._crit_edge75 ]
  %tmp_keep_V = phi i1 [ undef, %0 ], [ %tmp_keep_V_1, %._crit_edge75 ]
  %tmp_dest_V = phi i6 [ undef, %0 ], [ %tmp_dest_V_1, %._crit_edge75 ]
  %col_assign = phi i32 [ 0, %0 ], [ %idxCol_1, %._crit_edge75 ]
  %idxRow = phi i32 [ 0, %0 ], [ %idxRow_1, %._crit_edge75 ]
  %pixConvolved = phi i32 [ 0, %0 ], [ %pixConvolved_2, %._crit_edge75 ]
  %countWait = phi i19 [ 1, %0 ], [ %phitmp, %._crit_edge75 ]
  %exitcond1 = icmp eq i19 %countWait, -262143
  br i1 %exitcond1, label %.preheader, label %.preheader.preheader.i.i_ifconv

.preheader.preheader.i.i_ifconv:                  ; preds = %1
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 262144, i64 262144, i64 262144)
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1810)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %empty_10 = call { i8, i1, i1, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P.i2P.i1P.i5P.i6P(i8* %inStream_V_data_V, i1* %inStream_V_keep_V, i1* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V_1 = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_10, 0
  %tmp_keep_V_1 = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_10, 1
  %tmp_strb_V_1 = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_10, 2
  %tmp_user_V_1 = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_10, 3
  %tmp_id_V_1 = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_10, 5
  %tmp_dest_V_1 = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_10, 6
  %tmp_s = zext i32 %col_assign to i64
  %lineBuff_val_1_addr = getelementptr [512 x i8]* %lineBuff_val_1, i64 0, i64 %tmp_s
  %lineBuff_val_1_load = load i8* %lineBuff_val_1_addr, align 1
  %lineBuff_val_0_addr = getelementptr [512 x i8]* %lineBuff_val_0, i64 0, i64 %tmp_s
  store i8 %lineBuff_val_1_load, i8* %lineBuff_val_0_addr, align 1
  %lineBuff_val_2_addr = getelementptr [512 x i8]* %lineBuff_val_2, i64 0, i64 %tmp_s
  %lineBuff_val_2_load = load i8* %lineBuff_val_2_addr, align 1
  store i8 %lineBuff_val_2_load, i8* %lineBuff_val_1_addr, align 1
  store i8 %tmp_data_V_1, i8* %lineBuff_val_2_addr, align 1
  %tmp_7 = zext i32 %pixConvolved to i64
  %lineBuff_val_0_addr_1 = getelementptr [512 x i8]* %lineBuff_val_0, i64 0, i64 %tmp_7
  %lineBuff_val_0_load = load i8* %lineBuff_val_0_addr_1, align 1
  %val = zext i8 %lineBuff_val_0_load to i16
  %kernel_load = load i8* %kernel_addr, align 1
  %tmp_5 = sext i8 %kernel_load to i16
  %window_val_0_0 = mul i16 %tmp_5, %val
  %pixConvolved_3 = add nsw i32 1, %pixConvolved
  %tmp_25_0_1 = zext i32 %pixConvolved_3 to i64
  %lineBuff_val_0_addr_2 = getelementptr [512 x i8]* %lineBuff_val_0, i64 0, i64 %tmp_25_0_1
  %lineBuff_val_0_load_1 = load i8* %lineBuff_val_0_addr_2, align 1
  %val_0_1 = zext i8 %lineBuff_val_0_load_1 to i16
  %kernel_load_1 = load i8* %kernel_addr_1, align 1
  %tmp_29_0_1 = sext i8 %kernel_load_1 to i16
  %window_val_0_1 = mul i16 %tmp_29_0_1, %val_0_1
  %col_assign_1_0_2 = add nsw i32 2, %pixConvolved
  %tmp_25_0_2 = zext i32 %col_assign_1_0_2 to i64
  %lineBuff_val_0_addr_3 = getelementptr [512 x i8]* %lineBuff_val_0, i64 0, i64 %tmp_25_0_2
  %lineBuff_val_0_load_2 = load i8* %lineBuff_val_0_addr_3, align 1
  %val_0_2 = zext i8 %lineBuff_val_0_load_2 to i16
  %kernel_load_2 = load i8* %kernel_addr_2, align 1
  %tmp_29_0_2 = sext i8 %kernel_load_2 to i16
  %window_val_0_2 = mul i16 %tmp_29_0_2, %val_0_2
  %lineBuff_val_1_addr_1 = getelementptr [512 x i8]* %lineBuff_val_1, i64 0, i64 %tmp_7
  %lineBuff_val_1_load_1 = load i8* %lineBuff_val_1_addr_1, align 1
  %val_1 = zext i8 %lineBuff_val_1_load_1 to i16
  %kernel_load_3 = load i8* %kernel_addr_3, align 1
  %tmp_29_1 = sext i8 %kernel_load_3 to i16
  %window_val_1_0 = mul i16 %tmp_29_1, %val_1
  %lineBuff_val_1_addr_2 = getelementptr [512 x i8]* %lineBuff_val_1, i64 0, i64 %tmp_25_0_1
  %lineBuff_val_1_load_2 = load i8* %lineBuff_val_1_addr_2, align 1
  %val_1_1 = zext i8 %lineBuff_val_1_load_2 to i16
  %kernel_load_4 = load i8* %kernel_addr_4, align 1
  %tmp_29_1_1 = sext i8 %kernel_load_4 to i16
  %window_val_1_1 = mul i16 %tmp_29_1_1, %val_1_1
  %lineBuff_val_1_addr_3 = getelementptr [512 x i8]* %lineBuff_val_1, i64 0, i64 %tmp_25_0_2
  %lineBuff_val_1_load_3 = load i8* %lineBuff_val_1_addr_3, align 1
  %val_1_2 = zext i8 %lineBuff_val_1_load_3 to i16
  %kernel_load_5 = load i8* %kernel_addr_5, align 1
  %tmp_29_1_2 = sext i8 %kernel_load_5 to i16
  %window_val_1_2 = mul i16 %tmp_29_1_2, %val_1_2
  %lineBuff_val_2_addr_1 = getelementptr [512 x i8]* %lineBuff_val_2, i64 0, i64 %tmp_7
  %lineBuff_val_2_load_1 = load i8* %lineBuff_val_2_addr_1, align 1
  %val_s = zext i8 %lineBuff_val_2_load_1 to i16
  %kernel_load_6 = load i8* %kernel_addr_6, align 1
  %tmp_29_2 = sext i8 %kernel_load_6 to i16
  %window_val_2_0 = mul i16 %tmp_29_2, %val_s
  %lineBuff_val_2_addr_2 = getelementptr [512 x i8]* %lineBuff_val_2, i64 0, i64 %tmp_25_0_1
  %lineBuff_val_2_load_2 = load i8* %lineBuff_val_2_addr_2, align 1
  %val_233_1 = zext i8 %lineBuff_val_2_load_2 to i16
  %kernel_load_7 = load i8* %kernel_addr_7, align 1
  %tmp_29_2_1 = sext i8 %kernel_load_7 to i16
  %window_val_2_1 = mul i16 %tmp_29_2_1, %val_233_1
  %lineBuff_val_2_addr_3 = getelementptr [512 x i8]* %lineBuff_val_2, i64 0, i64 %tmp_25_0_2
  %lineBuff_val_2_load_3 = load i8* %lineBuff_val_2_addr_3, align 1
  %val_233_2 = zext i8 %lineBuff_val_2_load_3 to i16
  %kernel_load_8 = load i8* %kernel_addr_8, align 1
  %tmp_29_2_2 = sext i8 %kernel_load_8 to i16
  %window_val_2_2 = mul i16 %tmp_29_2_2, %val_233_2
  %tmp_3 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %idxRow, i32 1, i32 31)
  %icmp = icmp sgt i31 %tmp_3, 0
  %tmp_4 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %col_assign, i32 1, i32 31)
  %icmp4 = icmp sgt i31 %tmp_4, 0
  %or_cond = and i1 %icmp, %icmp4
  %tmp1 = add i16 %window_val_2_1, %window_val_2_0
  %tmp2 = add i16 %window_val_1_1, %window_val_1_2
  %tmp3 = add i16 %tmp1, %tmp2
  %tmp4 = add i16 %window_val_0_0, %window_val_0_1
  %tmp5 = add i16 %window_val_2_2, %window_val_0_2
  %tmp6 = add i16 %window_val_1_0, %tmp5
  %tmp7 = add i16 %tmp4, %tmp6
  %valOutput = add i16 %tmp3, %tmp7
  %tmp_18_tr = sext i16 %valOutput to i17
  %tmp_6 = call i1 @_ssdm_op_BitSelect.i1.i16.i32(i16 %valOutput, i32 15)
  %p_neg = sub i17 0, %tmp_18_tr
  %tmp_8 = call i14 @_ssdm_op_PartSelect.i14.i17.i32.i32(i17 %p_neg, i32 3, i32 16)
  %tmp_7_cast = zext i14 %tmp_8 to i15
  %tmp_9 = call i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16 %valOutput, i32 3, i32 15)
  %tmp_1 = sext i13 %tmp_9 to i14
  %tmp_2 = sub i15 0, %tmp_7_cast
  %tmp_10_cast = zext i14 %tmp_1 to i15
  %valOutput_1 = select i1 %tmp_6, i15 %tmp_2, i15 %tmp_10_cast
  %tmp_10 = trunc i15 %valOutput_1 to i8
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i15.i32(i15 %valOutput_1, i32 14)
  %p_s = select i1 %tmp_13, i8 0, i8 %tmp_10
  %tmp_14 = trunc i16 %window_val_0_0 to i8
  %tmp_15 = trunc i16 %window_val_0_1 to i8
  %tmp_5_0_1_i = icmp ult i8 %tmp_15, %tmp_14
  %valInWindow_0_minVal_1_0_1_i = select i1 %tmp_5_0_1_i, i8 %tmp_15, i8 %tmp_14
  %tmp_16 = trunc i16 %window_val_0_2 to i8
  %tmp_5_0_2_i = icmp ult i8 %tmp_16, %valInWindow_0_minVal_1_0_1_i
  %valInWindow_0_minVal_1_0_2_i = select i1 %tmp_5_0_2_i, i8 %tmp_16, i8 %valInWindow_0_minVal_1_0_1_i
  %tmp_17 = trunc i16 %window_val_1_0 to i8
  %tmp_5_1_i = icmp ult i8 %tmp_17, %valInWindow_0_minVal_1_0_2_i
  %valInWindow_0_minVal_1_1_i = select i1 %tmp_5_1_i, i8 %tmp_17, i8 %valInWindow_0_minVal_1_0_2_i
  %tmp_18 = trunc i16 %window_val_1_1 to i8
  %tmp_5_1_1_i = icmp ult i8 %tmp_18, %valInWindow_0_minVal_1_1_i
  %valInWindow_0_minVal_1_1_1_i = select i1 %tmp_5_1_1_i, i8 %tmp_18, i8 %valInWindow_0_minVal_1_1_i
  %tmp_19 = trunc i16 %window_val_1_2 to i8
  %tmp_5_1_2_i = icmp ult i8 %tmp_19, %valInWindow_0_minVal_1_1_1_i
  %valInWindow_0_minVal_1_1_2_i = select i1 %tmp_5_1_2_i, i8 %tmp_19, i8 %valInWindow_0_minVal_1_1_1_i
  %tmp_20 = trunc i16 %window_val_2_0 to i8
  %tmp_5_2_i = icmp ult i8 %tmp_20, %valInWindow_0_minVal_1_1_2_i
  %valInWindow_0_minVal_1_2_i = select i1 %tmp_5_2_i, i8 %tmp_20, i8 %valInWindow_0_minVal_1_1_2_i
  %tmp_21 = trunc i16 %window_val_2_1 to i8
  %tmp_5_2_1_i = icmp ult i8 %tmp_21, %valInWindow_0_minVal_1_2_i
  %valInWindow_0_minVal_1_2_1_i = select i1 %tmp_5_2_1_i, i8 %tmp_21, i8 %valInWindow_0_minVal_1_2_i
  %tmp_22 = trunc i16 %window_val_2_2 to i8
  %tmp_5_2_2_i = icmp ult i8 %tmp_22, %valInWindow_0_minVal_1_2_1_i
  %valInWindow_0_minVal_1_2_2_i = select i1 %tmp_5_2_2_i, i8 %tmp_22, i8 %valInWindow_0_minVal_1_2_1_i
  %tmp_11_0_1_i = icmp ugt i8 %tmp_15, %tmp_14
  %valInWindow_0_maxVal_1_0_1_i = select i1 %tmp_11_0_1_i, i8 %tmp_15, i8 %tmp_14
  %tmp_11_0_2_i = icmp ugt i8 %tmp_16, %valInWindow_0_maxVal_1_0_1_i
  %valInWindow_0_maxVal_1_0_2_i = select i1 %tmp_11_0_2_i, i8 %tmp_16, i8 %valInWindow_0_maxVal_1_0_1_i
  %tmp_11_1_i = icmp ugt i8 %tmp_17, %valInWindow_0_maxVal_1_0_2_i
  %valInWindow_0_maxVal_1_1_i = select i1 %tmp_11_1_i, i8 %tmp_17, i8 %valInWindow_0_maxVal_1_0_2_i
  %tmp_11_1_1_i = icmp ugt i8 %tmp_18, %valInWindow_0_maxVal_1_1_i
  %valInWindow_0_maxVal_1_1_1_i = select i1 %tmp_11_1_1_i, i8 %tmp_18, i8 %valInWindow_0_maxVal_1_1_i
  %tmp_11_1_2_i = icmp ugt i8 %tmp_19, %valInWindow_0_maxVal_1_1_1_i
  %valInWindow_0_maxVal_1_1_2_i = select i1 %tmp_11_1_2_i, i8 %tmp_19, i8 %valInWindow_0_maxVal_1_1_1_i
  %tmp_11_2_i = icmp ugt i8 %tmp_20, %valInWindow_0_maxVal_1_1_2_i
  %valInWindow_0_maxVal_1_2_i = select i1 %tmp_11_2_i, i8 %tmp_20, i8 %valInWindow_0_maxVal_1_1_2_i
  %tmp_11_2_1_i = icmp ugt i8 %tmp_21, %valInWindow_0_maxVal_1_2_i
  %valInWindow_0_maxVal_1_2_1_i = select i1 %tmp_11_2_1_i, i8 %tmp_21, i8 %valInWindow_0_maxVal_1_2_i
  %tmp_11_2_2_i = icmp ugt i8 %tmp_22, %valInWindow_0_maxVal_1_2_1_i
  %valInWindow_0_maxVal_1_2_2_i = select i1 %tmp_11_2_2_i, i8 %tmp_22, i8 %valInWindow_0_maxVal_1_2_1_i
  %sel_tmp1 = select i1 %or_cond, i32 %pixConvolved_3, i32 %pixConvolved
  %sel_tmp3 = and i1 %or_cond, %sel_tmp2
  %sel_tmp4 = select i1 %sel_tmp3, i32 %pixConvolved_3, i32 %sel_tmp1
  %sel_tmp6 = and i1 %or_cond, %sel_tmp5
  %sel_tmp7 = select i1 %sel_tmp6, i32 %pixConvolved_3, i32 %sel_tmp4
  %sel_tmp9 = and i1 %or_cond, %sel_tmp8
  %pixConvolved_1 = select i1 %sel_tmp9, i32 %pixConvolved_3, i32 %sel_tmp7
  %sel_tmp = select i1 %sel_tmp3, i8 %valInWindow_0_maxVal_1_2_2_i, i8 0
  %sel_tmp10 = select i1 %sel_tmp6, i8 %valInWindow_0_minVal_1_2_2_i, i8 %sel_tmp
  %tmp_data_V = select i1 %sel_tmp9, i8 %p_s, i8 %sel_tmp10
  %tmp_11 = icmp slt i32 %col_assign, 511
  %idxCol = add nsw i32 1, %col_assign
  %idxRow_2 = add nsw i32 1, %idxRow
  %idxCol_1 = select i1 %tmp_11, i32 %idxCol, i32 0
  %idxRow_1 = select i1 %tmp_11, i32 %idxRow, i32 %idxRow_2
  %pixConvolved_2 = select i1 %tmp_11, i32 %pixConvolved_1, i32 0
  %tmp_12 = icmp ugt i19 %countWait, 513
  br i1 %tmp_12, label %2, label %._crit_edge75

; <label>:2                                       ; preds = %.preheader.preheader.i.i_ifconv
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P.i2P.i1P.i5P.i6P(i8* %outStream_V_data_V, i1* %outStream_V_keep_V, i1* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, i8 %tmp_data_V, i1 %tmp_keep_V_1, i1 %tmp_strb_V_1, i2 %tmp_user_V_1, i1 false, i5 %tmp_id_V_1, i6 %tmp_dest_V_1)
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %2, %.preheader.preheader.i.i_ifconv
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1810, i32 %tmp)
  %phitmp = add i19 %countWait, 1
  br label %1

.preheader:                                       ; preds = %1, %3
  %countWait_1 = phi i10 [ %countWait_2, %3 ], [ 0, %1 ]
  %exitcond = icmp eq i10 %countWait_1, -511
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 513, i64 513, i64 513)
  %countWait_2 = add i10 %countWait_1, 1
  br i1 %exitcond, label %4, label %3

; <label>:3                                       ; preds = %.preheader
  %tmp_last_V = call i1 @_ssdm_op_BitSelect.i1.i10.i32(i10 %countWait_1, i32 9)
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P.i2P.i1P.i5P.i6P(i8* %outStream_V_data_V, i1* %outStream_V_keep_V, i1* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, i8 0, i1 %tmp_keep_V, i1 %tmp_strb_V, i2 %tmp_user_V, i1 %tmp_last_V, i5 %tmp_id_V, i6 %tmp_dest_V)
  br label %.preheader

; <label>:4                                       ; preds = %.preheader
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

define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
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

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak { i8, i1, i1, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P.i2P.i1P.i5P.i6P(i8*, i1*, i1*, i2*, i1*, i5*, i6*) {
entry:
  %empty = load i8* %0
  %empty_13 = load i1* %1
  %empty_14 = load i1* %2
  %empty_15 = load i2* %3
  %empty_16 = load i1* %4
  %empty_17 = load i5* %5
  %empty_18 = load i6* %6
  %mrv_0 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } undef, i8 %empty, 0
  %mrv1 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv_0, i1 %empty_13, 1
  %mrv2 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv1, i1 %empty_14, 2
  %mrv3 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv2, i2 %empty_15, 3
  %mrv4 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv3, i1 %empty_16, 4
  %mrv5 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv4, i5 %empty_17, 5
  %mrv6 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv5, i6 %empty_18, 6
  ret { i8, i1, i1, i2, i1, i5, i6 } %mrv6
}

declare i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15, i32, i32) nounwind readnone

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_19 = trunc i32 %empty to i31
  ret i31 %empty_19
}

define weak i14 @_ssdm_op_PartSelect.i14.i17.i32.i32(i17, i32, i32) nounwind readnone {
entry:
  %empty = call i17 @llvm.part.select.i17(i17 %0, i32 %1, i32 %2)
  %empty_20 = trunc i17 %empty to i14
  ret i14 %empty_20
}

define weak i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_21 = trunc i16 %empty to i13
  ret i13 %empty_21
}

define weak i1 @_ssdm_op_BitSelect.i1.i16.i32(i16, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i16
  %empty_22 = shl i16 1, %empty
  %empty_23 = and i16 %0, %empty_22
  %empty_24 = icmp ne i16 %empty_23, 0
  ret i1 %empty_24
}

define weak i1 @_ssdm_op_BitSelect.i1.i15.i32(i15, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i15
  %empty_25 = shl i15 1, %empty
  %empty_26 = and i15 %0, %empty_25
  %empty_27 = icmp ne i15 %empty_26, 0
  ret i1 %empty_27
}

define weak i1 @_ssdm_op_BitSelect.i1.i10.i32(i10, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i10
  %empty_28 = shl i10 1, %empty
  %empty_29 = and i10 %0, %empty_28
  %empty_30 = icmp ne i10 %empty_29, 0
  ret i1 %empty_30
}

declare void @_ssdm_SpecDependence(...) nounwind

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !7, !7, !13, !19, !23, !23, !26, !26, !32, !32, !13, !38, !38, !41, !41, !44, !46, !46, !26, !48, !26, !26, !51, !46, !46, !26, !54, !26, !26, !26, !57, !57, !59, !59, !61, !62, !63, !63, !26, !26, !64, !26, !26, !66, !68, !70, !26, !26, !26, !26, !26, !63, !63, !72, !74, !74, !77, !26, !79, !26, !26, !26, !81, !81, !83, !83, !84, !26, !26, !26, !86, !88, !90, !90, !92, !26, !26, !26, !26, !26, !26, !94, !26, !26, !26, !26, !74, !74, !77, !94, !26, !74, !74, !77, !94, !26, !96, !96, !96, !26, !96, !96, !96, !26, !96, !96, !96, !26, !96, !96, !96, !96, !96, !96, !96, !96, !96, !26, !96, !96, !96, !26, !96, !96, !96, !26, !96, !96, !96, !26, !96, !96, !96, !26, !96, !96, !96, !96, !96, !96, !100, !100, !100, !26, !96, !96, !96, !26, !96, !96, !96, !26, !96, !96, !96, !26, !100, !100, !100, !26, !100, !100, !100, !26, !63, !63, !26, !105, !26, !26, !26, !26, !26, !26, !107, !109, !26, !26, !26, !26, !26, !26, !26, !26, !26, !26, !26, !26, !26, !26, !26, !26, !26, !26, !26}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!111}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint_8_side_channel> &", metadata !"hls::stream<int_8_side_channel> &", metadata !"char*", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"inStream", metadata !"outStream", metadata !"kernel", metadata !"operation"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"hls::Window<3, 3, short>*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"window"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"row", metadata !"col"}
!19 = metadata !{null, metadata !20, metadata !9, metadata !21, metadata !11, metadata !22, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis<8, 2, 5, 6> &"}
!22 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!23 = metadata !{null, metadata !20, metadata !9, metadata !24, metadata !11, metadata !25, metadata !6}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"short"}
!25 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!26 = metadata !{null, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !6}
!27 = metadata !{metadata !"kernel_arg_addr_space"}
!28 = metadata !{metadata !"kernel_arg_access_qual"}
!29 = metadata !{metadata !"kernel_arg_type"}
!30 = metadata !{metadata !"kernel_arg_type_qual"}
!31 = metadata !{metadata !"kernel_arg_name"}
!32 = metadata !{null, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !6}
!33 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!34 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"short", metadata !"int", metadata !"int"}
!36 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"value", metadata !"row", metadata !"col"}
!38 = metadata !{null, metadata !14, metadata !15, metadata !39, metadata !17, metadata !40, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"uchar", metadata !"int"}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"value", metadata !"col"}
!41 = metadata !{null, metadata !20, metadata !9, metadata !42, metadata !11, metadata !43, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!43 = metadata !{metadata !"kernel_arg_name", metadata !"col"}
!44 = metadata !{null, metadata !20, metadata !9, metadata !42, metadata !11, metadata !45, metadata !6}
!45 = metadata !{metadata !"kernel_arg_name", metadata !""}
!46 = metadata !{null, metadata !20, metadata !9, metadata !42, metadata !11, metadata !47, metadata !6}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!48 = metadata !{null, metadata !20, metadata !9, metadata !49, metadata !11, metadata !50, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!51 = metadata !{null, metadata !14, metadata !15, metadata !52, metadata !17, metadata !53, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, false> &", metadata !"int"}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!54 = metadata !{null, metadata !14, metadata !15, metadata !55, metadata !17, metadata !56, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, false> &", metadata !"const ap_int_base<32, true> &"}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!57 = metadata !{null, metadata !20, metadata !9, metadata !58, metadata !11, metadata !47, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!59 = metadata !{null, metadata !20, metadata !9, metadata !60, metadata !11, metadata !47, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, false> &"}
!61 = metadata !{null, metadata !14, metadata !15, metadata !52, metadata !17, metadata !56, metadata !6}
!62 = metadata !{null, metadata !20, metadata !9, metadata !58, metadata !11, metadata !50, metadata !6}
!63 = metadata !{null, metadata !20, metadata !9, metadata !42, metadata !11, metadata !25, metadata !6}
!64 = metadata !{null, metadata !20, metadata !9, metadata !65, metadata !11, metadata !50, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<12> &"}
!66 = metadata !{null, metadata !20, metadata !9, metadata !67, metadata !11, metadata !50, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<6> &"}
!68 = metadata !{null, metadata !20, metadata !9, metadata !69, metadata !11, metadata !50, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<5> &"}
!70 = metadata !{null, metadata !20, metadata !9, metadata !71, metadata !11, metadata !50, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<2> &"}
!72 = metadata !{null, metadata !20, metadata !9, metadata !73, metadata !11, metadata !50, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<8> &"}
!74 = metadata !{null, metadata !20, metadata !9, metadata !75, metadata !11, metadata !76, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!76 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!77 = metadata !{null, metadata !20, metadata !9, metadata !75, metadata !11, metadata !78, metadata !6}
!78 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!79 = metadata !{null, metadata !14, metadata !15, metadata !80, metadata !17, metadata !56, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!81 = metadata !{null, metadata !20, metadata !9, metadata !82, metadata !11, metadata !47, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!83 = metadata !{null, metadata !20, metadata !9, metadata !49, metadata !11, metadata !47, metadata !6}
!84 = metadata !{null, metadata !20, metadata !9, metadata !85, metadata !11, metadata !50, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!86 = metadata !{null, metadata !14, metadata !15, metadata !87, metadata !17, metadata !53, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!88 = metadata !{null, metadata !14, metadata !15, metadata !89, metadata !17, metadata !56, metadata !6}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!90 = metadata !{null, metadata !20, metadata !9, metadata !91, metadata !11, metadata !47, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!92 = metadata !{null, metadata !20, metadata !9, metadata !93, metadata !11, metadata !50, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!94 = metadata !{null, metadata !20, metadata !9, metadata !75, metadata !11, metadata !95, metadata !6}
!95 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!96 = metadata !{null, metadata !8, metadata !9, metadata !97, metadata !98, metadata !99, metadata !6}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!98 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!99 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!100 = metadata !{null, metadata !101, metadata !15, metadata !102, metadata !103, metadata !104, metadata !6}
!101 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!103 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!104 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!105 = metadata !{null, metadata !20, metadata !9, metadata !106, metadata !11, metadata !50, metadata !6}
!106 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!107 = metadata !{null, metadata !20, metadata !9, metadata !108, metadata !11, metadata !45, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axiu<8, 2, 5, 6> &"}
!109 = metadata !{null, metadata !20, metadata !9, metadata !110, metadata !11, metadata !50, metadata !6}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!111 = metadata !{metadata !112, [1 x i32]* @llvm_global_ctors_0}
!112 = metadata !{metadata !113}
!113 = metadata !{i32 0, i32 31, metadata !114}
!114 = metadata !{metadata !115}
!115 = metadata !{metadata !"llvm.global_ctors.0", metadata !116, metadata !"", i32 0, i32 31}
!116 = metadata !{metadata !117}
!117 = metadata !{i32 0, i32 0, i32 1}
!118 = metadata !{metadata !119}
!119 = metadata !{i32 0, i32 7, metadata !120}
!120 = metadata !{metadata !121}
!121 = metadata !{metadata !"inStream.V.data.V", metadata !116, metadata !"uint8", i32 0, i32 7}
!122 = metadata !{metadata !123}
!123 = metadata !{i32 0, i32 0, metadata !124}
!124 = metadata !{metadata !125}
!125 = metadata !{metadata !"inStream.V.keep.V", metadata !116, metadata !"uint1", i32 0, i32 0}
!126 = metadata !{metadata !127}
!127 = metadata !{i32 0, i32 0, metadata !128}
!128 = metadata !{metadata !129}
!129 = metadata !{metadata !"inStream.V.strb.V", metadata !116, metadata !"uint1", i32 0, i32 0}
!130 = metadata !{metadata !131}
!131 = metadata !{i32 0, i32 1, metadata !132}
!132 = metadata !{metadata !133}
!133 = metadata !{metadata !"inStream.V.user.V", metadata !116, metadata !"uint2", i32 0, i32 1}
!134 = metadata !{metadata !135}
!135 = metadata !{i32 0, i32 0, metadata !136}
!136 = metadata !{metadata !137}
!137 = metadata !{metadata !"inStream.V.last.V", metadata !116, metadata !"uint1", i32 0, i32 0}
!138 = metadata !{metadata !139}
!139 = metadata !{i32 0, i32 4, metadata !140}
!140 = metadata !{metadata !141}
!141 = metadata !{metadata !"inStream.V.id.V", metadata !116, metadata !"uint5", i32 0, i32 4}
!142 = metadata !{metadata !143}
!143 = metadata !{i32 0, i32 5, metadata !144}
!144 = metadata !{metadata !145}
!145 = metadata !{metadata !"inStream.V.dest.V", metadata !116, metadata !"uint6", i32 0, i32 5}
!146 = metadata !{metadata !147}
!147 = metadata !{i32 0, i32 7, metadata !148}
!148 = metadata !{metadata !149}
!149 = metadata !{metadata !"outStream.V.data.V", metadata !116, metadata !"int8", i32 0, i32 7}
!150 = metadata !{metadata !151}
!151 = metadata !{i32 0, i32 0, metadata !152}
!152 = metadata !{metadata !153}
!153 = metadata !{metadata !"outStream.V.keep.V", metadata !116, metadata !"uint1", i32 0, i32 0}
!154 = metadata !{metadata !155}
!155 = metadata !{i32 0, i32 0, metadata !156}
!156 = metadata !{metadata !157}
!157 = metadata !{metadata !"outStream.V.strb.V", metadata !116, metadata !"uint1", i32 0, i32 0}
!158 = metadata !{metadata !159}
!159 = metadata !{i32 0, i32 1, metadata !160}
!160 = metadata !{metadata !161}
!161 = metadata !{metadata !"outStream.V.user.V", metadata !116, metadata !"uint2", i32 0, i32 1}
!162 = metadata !{metadata !163}
!163 = metadata !{i32 0, i32 0, metadata !164}
!164 = metadata !{metadata !165}
!165 = metadata !{metadata !"outStream.V.last.V", metadata !116, metadata !"uint1", i32 0, i32 0}
!166 = metadata !{metadata !167}
!167 = metadata !{i32 0, i32 4, metadata !168}
!168 = metadata !{metadata !169}
!169 = metadata !{metadata !"outStream.V.id.V", metadata !116, metadata !"uint5", i32 0, i32 4}
!170 = metadata !{metadata !171}
!171 = metadata !{i32 0, i32 5, metadata !172}
!172 = metadata !{metadata !173}
!173 = metadata !{metadata !"outStream.V.dest.V", metadata !116, metadata !"uint6", i32 0, i32 5}
!174 = metadata !{metadata !175}
!175 = metadata !{i32 0, i32 7, metadata !176}
!176 = metadata !{metadata !177}
!177 = metadata !{metadata !"kernel", metadata !178, metadata !"char", i32 0, i32 7}
!178 = metadata !{metadata !179}
!179 = metadata !{i32 0, i32 8, i32 1}
!180 = metadata !{metadata !181}
!181 = metadata !{i32 0, i32 31, metadata !182}
!182 = metadata !{metadata !183}
!183 = metadata !{metadata !"operation", metadata !184, metadata !"int", i32 0, i32 31}
!184 = metadata !{metadata !185}
!185 = metadata !{i32 0, i32 0, i32 0}
