; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/fman/fman_sp.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/fman/fman_sp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fman_sp_set_buf_pools_in_asc_order_of_buf_sizes\22, \22a\22\09"
module asm "\09.weak\09__crc_fman_sp_set_buf_pools_in_asc_order_of_buf_sizes\09\09\09\09"
module asm "\09.long\09__crc_fman_sp_set_buf_pools_in_asc_order_of_buf_sizes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fman_sp_set_buf_pools_in_asc_order_of_buf_sizes:\09\09\09\09\09"
module asm "\09.asciz \09\22fman_sp_set_buf_pools_in_asc_order_of_buf_sizes\22\09\09\09\09\09"
module asm "__kstrtabns_fman_sp_set_buf_pools_in_asc_order_of_buf_sizes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fman_sp_build_buffer_struct\22, \22a\22\09"
module asm "\09.weak\09__crc_fman_sp_build_buffer_struct\09\09\09\09"
module asm "\09.long\09__crc_fman_sp_build_buffer_struct\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fman_sp_build_buffer_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22fman_sp_build_buffer_struct\22\09\09\09\09\09"
module asm "__kstrtabns_fman_sp_build_buffer_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fman_ext_pools = type { i8, [8 x %struct.fman_ext_pool_params] }
%struct.fman_ext_pool_params = type { i8, i16 }
%struct.fman_sp_buffer_offsets = type { i32, i32, i32, i32 }
%struct.fman_buffer_prefix_content = type { i16, i8, i8, i8, i16 }
%struct.fman_sp_int_context_data_copy = type { i16, i8, i16 }

@__kstrtab_fman_sp_set_buf_pools_in_asc_order_of_buf_sizes = external dso_local constant [0 x i8], align 1
@__kstrtabns_fman_sp_set_buf_pools_in_asc_order_of_buf_sizes = external dso_local constant [0 x i8], align 1
@__ksymtab_fman_sp_set_buf_pools_in_asc_order_of_buf_sizes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fman_sp_set_buf_pools_in_asc_order_of_buf_sizes to i32), ptr @__kstrtab_fman_sp_set_buf_pools_in_asc_order_of_buf_sizes, ptr @__kstrtabns_fman_sp_set_buf_pools_in_asc_order_of_buf_sizes }, section "___ksymtab+fman_sp_set_buf_pools_in_asc_order_of_buf_sizes", align 4
@__kstrtab_fman_sp_build_buffer_struct = external dso_local constant [0 x i8], align 1
@__kstrtabns_fman_sp_build_buffer_struct = external dso_local constant [0 x i8], align 1
@__ksymtab_fman_sp_build_buffer_struct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fman_sp_build_buffer_struct to i32), ptr @__kstrtab_fman_sp_build_buffer_struct, ptr @__kstrtabns_fman_sp_build_buffer_struct }, section "___ksymtab+fman_sp_build_buffer_struct", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_fman_sp_build_buffer_struct, ptr @__ksymtab_fman_sp_set_buf_pools_in_asc_order_of_buf_sizes], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fman_sp_set_buf_pools_in_asc_order_of_buf_sizes(ptr nocapture noundef readonly %fm_ext_pools, ptr nocapture noundef %ordered_array, ptr nocapture noundef %sizes_array) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fm_ext_pools to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fm_ext_pools, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp73.not = icmp eq i8 %1, 0
  br i1 %cmp73.not, label %entry.for.end38_crit_edge, label %entry.for.body8.lr.ph_crit_edge

entry.for.body8.lr.ph_crit_edge:                  ; preds = %entry
  br label %for.body8.lr.ph

entry.for.end38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end38

for.body8.lr.ph:                                  ; preds = %for.inc36.for.body8.lr.ph_crit_edge, %entry.for.body8.lr.ph_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc36.for.body8.lr.ph_crit_edge ], [ 1, %entry.for.body8.lr.ph_crit_edge ]
  %i.074 = phi i32 [ %inc37, %for.inc36.for.body8.lr.ph_crit_edge ], [ 0, %entry.for.body8.lr.ph_crit_edge ]
  %arrayidx = getelementptr %struct.fman_ext_pools, ptr %fm_ext_pools, i32 0, i32 1, i32 %i.074
  %size = getelementptr %struct.fman_ext_pools, ptr %fm_ext_pools, i32 0, i32 1, i32 %i.074, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %size, align 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 2
  %idxprom = zext i8 %5 to i32
  %arrayidx4 = getelementptr i16, ptr %sizes_array, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %3, ptr %arrayidx4, align 2
  %arrayidx14 = getelementptr i8, ptr %ordered_array, i32 %i.074
  br label %for.body8

for.body8:                                        ; preds = %for.inc34.for.body8_crit_edge, %for.body8.lr.ph
  %j.068 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.inc34.for.body8_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.068, i32 %i.074)
  %cmp9 = icmp eq i32 %j.068, %i.074
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 2
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx14, align 1
  br label %for.inc34

if.else:                                          ; preds = %for.body8
  %arrayidx16 = getelementptr i8, ptr %ordered_array, i32 %j.068
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16, align 1
  %idxprom17 = zext i8 %11 to i32
  %arrayidx18 = getelementptr i16, ptr %sizes_array, i32 %idxprom17
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx18, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %13)
  %cmp20 = icmp ult i16 %3, %13
  br i1 %cmp20, label %for.cond23.preheader, label %if.else.for.inc34_crit_edge

if.else.for.inc34_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc34

for.cond23.preheader:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %i.074, i32 %j.068)
  %cmp2470 = icmp ugt i32 %i.074, %j.068
  br i1 %cmp2470, label %for.cond23.preheader.for.body26_crit_edge, label %for.cond23.preheader.for.end_crit_edge

for.cond23.preheader.for.end_crit_edge:           ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.cond23.preheader.for.body26_crit_edge:        ; preds = %for.cond23.preheader
  br label %for.body26

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.cond23.preheader.for.body26_crit_edge
  %k.071 = phi i32 [ %sub, %for.body26.for.body26_crit_edge ], [ %i.074, %for.cond23.preheader.for.body26_crit_edge ]
  %sub = add nsw i32 %k.071, -1
  %arrayidx27 = getelementptr i8, ptr %ordered_array, i32 %sub
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx27, align 1
  %arrayidx28 = getelementptr i8, ptr %ordered_array, i32 %k.071
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx28, align 1
  %cmp24 = icmp sgt i32 %sub, %j.068
  br i1 %cmp24, label %for.body26.for.body26_crit_edge, label %for.body26.for.end_crit_edge

for.body26.for.end_crit_edge:                     ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body26

for.end:                                          ; preds = %for.body26.for.end_crit_edge, %for.cond23.preheader.for.end_crit_edge
  %k.0.lcssa = phi i32 [ %i.074, %for.cond23.preheader.for.end_crit_edge ], [ %j.068, %for.body26.for.end_crit_edge ]
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 2
  %arrayidx32 = getelementptr i8, ptr %ordered_array, i32 %k.0.lcssa
  %19 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx32, align 1
  br label %for.inc36

for.inc34:                                        ; preds = %if.else.for.inc34_crit_edge, %if.then
  %inc = add nuw nsw i32 %j.068, 1
  %exitcond = icmp eq i32 %inc, %indvars.iv
  br i1 %exitcond, label %for.inc34.for.inc36_crit_edge, label %for.inc34.for.body8_crit_edge

for.inc34.for.body8_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body8

for.inc34.for.inc36_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc36

for.inc36:                                        ; preds = %for.inc34.for.inc36_crit_edge, %for.end
  %inc37 = add nuw nsw i32 %i.074, 1
  %20 = ptrtoint ptr %fm_ext_pools to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fm_ext_pools, align 2
  %conv = zext i8 %21 to i32
  %cmp = icmp ult i32 %inc37, %conv
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  br i1 %cmp, label %for.inc36.for.body8.lr.ph_crit_edge, label %for.inc36.for.end38_crit_edge

for.inc36.for.end38_crit_edge:                    ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end38

for.inc36.for.body8.lr.ph_crit_edge:              ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body8.lr.ph

for.end38:                                        ; preds = %for.inc36.for.end38_crit_edge, %entry.for.end38_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fman_sp_build_buffer_struct(ptr nocapture noundef %int_context_data_copy, ptr nocapture noundef readonly %buffer_prefix_content, ptr nocapture noundef %buf_margins, ptr nocapture noundef writeonly %buffer_offsets, ptr nocapture readnone %internal_buf_offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buffer_prefix_content to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %buffer_prefix_content, align 2
  %.biased = add i16 %1, 15
  %cond = and i16 %.biased, -16
  %2 = ptrtoint ptr %int_context_data_copy to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %cond, ptr %int_context_data_copy, align 2
  %prs_result_offset = getelementptr inbounds %struct.fman_sp_buffer_offsets, ptr %buffer_offsets, i32 0, i32 1
  %3 = ptrtoint ptr %prs_result_offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %prs_result_offset, align 4
  %time_stamp_offset = getelementptr inbounds %struct.fman_sp_buffer_offsets, ptr %buffer_offsets, i32 0, i32 2
  %4 = ptrtoint ptr %time_stamp_offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %time_stamp_offset, align 4
  %hash_result_offset = getelementptr inbounds %struct.fman_sp_buffer_offsets, ptr %buffer_offsets, i32 0, i32 3
  %5 = ptrtoint ptr %hash_result_offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %hash_result_offset, align 4
  %pass_prs_result = getelementptr inbounds %struct.fman_buffer_prefix_content, ptr %buffer_prefix_content, i32 0, i32 1
  %6 = ptrtoint ptr %pass_prs_result to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pass_prs_result, align 2, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  %cond9 = select i1 %tobool7.not, i16 0, i16 32
  %pass_time_stamp = getelementptr inbounds %struct.fman_buffer_prefix_content, ptr %buffer_prefix_content, i32 0, i32 2
  %8 = ptrtoint ptr %pass_time_stamp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pass_time_stamp, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool10.not = icmp eq i8 %9, 0
  br i1 %tobool10.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %pass_hash_result = getelementptr inbounds %struct.fman_buffer_prefix_content, ptr %buffer_prefix_content, i32 0, i32 3
  %10 = ptrtoint ptr %pass_hash_result to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pass_hash_result, align 2, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not = icmp eq i8 %11, 0
  %phi.sel = select i1 %tobool12.not, i16 0, i16 16
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %12 = phi i16 [ 16, %entry.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ]
  %add15 = or i16 %12, %cond9
  %size = getelementptr inbounds %struct.fman_sp_int_context_data_copy, ptr %int_context_data_copy, i32 0, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %add15, ptr %size, align 2
  %14 = ptrtoint ptr %pass_prs_result to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pass_prs_result, align 2, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool18.not = icmp eq i8 %15, 0
  br i1 %tobool18.not, label %cond.false21, label %lor.end.cond.end31_crit_edge

lor.end.cond.end31_crit_edge:                     ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end31

cond.false21:                                     ; preds = %lor.end
  %16 = ptrtoint ptr %pass_time_stamp to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pass_time_stamp, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool23.not = icmp eq i8 %17, 0
  br i1 %tobool23.not, label %lor.rhs25, label %cond.false21.cond.end31_crit_edge

cond.false21.cond.end31_crit_edge:                ; preds = %cond.false21
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end31

lor.rhs25:                                        ; preds = %cond.false21
  call void @__sanitizer_cov_trace_pc() #4
  %pass_hash_result26 = getelementptr inbounds %struct.fman_buffer_prefix_content, ptr %buffer_prefix_content, i32 0, i32 3
  %18 = ptrtoint ptr %pass_hash_result26 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pass_hash_result26, align 2, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool27.not = icmp eq i8 %19, 0
  %phi.sel138 = select i1 %tobool27.not, i8 0, i8 64
  br label %cond.end31

cond.end31:                                       ; preds = %lor.rhs25, %cond.false21.cond.end31_crit_edge, %lor.end.cond.end31_crit_edge
  %cond32 = phi i8 [ 32, %lor.end.cond.end31_crit_edge ], [ 64, %cond.false21.cond.end31_crit_edge ], [ %phi.sel138, %lor.rhs25 ]
  %int_context_offset = getelementptr inbounds %struct.fman_sp_int_context_data_copy, ptr %int_context_data_copy, i32 0, i32 1
  %20 = ptrtoint ptr %int_context_offset to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %cond32, ptr %int_context_offset, align 2
  %21 = ptrtoint ptr %pass_prs_result to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pass_prs_result, align 2, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool35.not = icmp eq i8 %22, 0
  br i1 %tobool35.not, label %cond.end31.if.end_crit_edge, label %if.then

cond.end31.if.end_crit_edge:                      ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #4
  %23 = ptrtoint ptr %int_context_data_copy to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %int_context_data_copy, align 2
  %conv37 = zext i16 %24 to i32
  %25 = ptrtoint ptr %prs_result_offset to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv37, ptr %prs_result_offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end31.if.end_crit_edge
  %26 = ptrtoint ptr %pass_time_stamp to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pass_time_stamp, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool40.not = icmp eq i8 %27, 0
  br i1 %tobool40.not, label %if.end.if.end55_crit_edge, label %if.then41

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end55

if.then41:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %28 = ptrtoint ptr %pass_prs_result to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pass_prs_result, align 2, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool43.not = icmp eq i8 %29, 0
  %30 = ptrtoint ptr %int_context_data_copy to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %int_context_data_copy, align 2
  %conv51 = zext i16 %31 to i32
  %add48 = add nuw nsw i32 %conv51, 32
  %cond53 = select i1 %tobool43.not, i32 %conv51, i32 %add48
  %32 = ptrtoint ptr %time_stamp_offset to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond53, ptr %time_stamp_offset, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then41, %if.end.if.end55_crit_edge
  %pass_hash_result56 = getelementptr inbounds %struct.fman_buffer_prefix_content, ptr %buffer_prefix_content, i32 0, i32 3
  %33 = ptrtoint ptr %pass_hash_result56 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pass_hash_result56, align 2, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool57.not = icmp eq i8 %34, 0
  br i1 %tobool57.not, label %if.end55.if.end74_crit_edge, label %if.then58

if.end55.if.end74_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end74

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #4
  %35 = ptrtoint ptr %pass_prs_result to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pass_prs_result, align 2, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool60.not = icmp eq i8 %36, 0
  %37 = ptrtoint ptr %int_context_data_copy to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %int_context_data_copy, align 2
  %conv69 = zext i16 %38 to i32
  %add65 = add nuw nsw i32 %conv69, 32
  %cond72.in = select i1 %tobool60.not, i32 %conv69, i32 %add65
  %cond72 = add nuw nsw i32 %cond72.in, 8
  %39 = ptrtoint ptr %hash_result_offset to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond72, ptr %hash_result_offset, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then58, %if.end55.if.end74_crit_edge
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool76.not = icmp eq i16 %41, 0
  br i1 %tobool76.not, label %if.else, label %if.then77

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #4
  %42 = ptrtoint ptr %int_context_data_copy to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %int_context_data_copy, align 2
  %add82 = add i16 %43, %41
  br label %if.end86

if.else:                                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #4
  %44 = ptrtoint ptr %buffer_prefix_content to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %buffer_prefix_content, align 2
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.then77
  %storemerge = phi i16 [ %45, %if.else ], [ %add82, %if.then77 ]
  %46 = ptrtoint ptr %buf_margins to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %storemerge, ptr %buf_margins, align 2
  %data_align = getelementptr inbounds %struct.fman_buffer_prefix_content, ptr %buffer_prefix_content, i32 0, i32 4
  %47 = ptrtoint ptr %data_align to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %data_align, align 2
  %49 = urem i16 %storemerge, %48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool90.not = icmp eq i16 %49, 0
  br i1 %tobool90.not, label %if.end86.if.end98_crit_edge, label %if.then91

if.end86.if.end98_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end98

if.then91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #4
  %50 = add i16 %48, %storemerge
  %conv97 = sub i16 %50, %49
  %51 = ptrtoint ptr %buf_margins to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv97, ptr %buf_margins, align 2
  br label %if.end98

if.end98:                                         ; preds = %if.then91, %if.end86.if.end98_crit_edge
  %52 = ptrtoint ptr %buf_margins to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %buf_margins, align 2
  %conv100 = zext i16 %53 to i32
  %54 = ptrtoint ptr %buffer_offsets to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv100, ptr %buffer_offsets, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_fman_sp_set_buf_pools_in_asc_order_of_buf_sizes, !1, !"__ksymtab_fman_sp_set_buf_pools_in_asc_order_of_buf_sizes", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/fman/fman_sp.c", i32 83, i32 1}
!2 = !{ptr @__ksymtab_fman_sp_build_buffer_struct, !3, !"__ksymtab_fman_sp_build_buffer_struct", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/freescale/fman/fman_sp.c", i32 168, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i8 0, i8 2}
