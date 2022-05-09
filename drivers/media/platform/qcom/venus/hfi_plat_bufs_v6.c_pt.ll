; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/venus/hfi_plat_bufs_v6.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/venus/hfi_plat_bufs_v6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dec_bufsize_ops = type { ptr, ptr, ptr }
%struct.enc_bufsize_ops = type { ptr, ptr, ptr, ptr }
%struct.hfi_plat_buffers_params = type { i32, i32, i32, i32, i32, i32, %union.anon }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32, i32, i32, i8 }
%struct.anon = type { i32, i32, i8, i8 }
%struct.hfi_buffer_requirements = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@dec_h264_ops = internal constant { %struct.dec_bufsize_ops, [20 x i8] } { %struct.dec_bufsize_ops { ptr @h264d_scratch_size, ptr @h264d_scratch1_size, ptr @h264d_persist1_size }, [20 x i8] zeroinitializer }, align 32
@dec_h265_ops = internal constant { %struct.dec_bufsize_ops, [20 x i8] } { %struct.dec_bufsize_ops { ptr @h265d_scratch_size, ptr @h265d_scratch1_size, ptr @h265d_persist1_size }, [20 x i8] zeroinitializer }, align 32
@dec_vp8_ops = internal constant { %struct.dec_bufsize_ops, [20 x i8] } { %struct.dec_bufsize_ops { ptr @vpxd_scratch_size, ptr @vp8d_scratch1_size, ptr @vp8d_persist1_size }, [20 x i8] zeroinitializer }, align 32
@dec_vp9_ops = internal constant { %struct.dec_bufsize_ops, [20 x i8] } { %struct.dec_bufsize_ops { ptr @vpxd_scratch_size, ptr @vp9d_scratch1_size, ptr @vp9d_persist1_size }, [20 x i8] zeroinitializer }, align 32
@dec_mpeg2_ops = internal constant { %struct.dec_bufsize_ops, [20 x i8] } { %struct.dec_bufsize_ops { ptr @mpeg2d_scratch_size, ptr @mpeg2d_scratch1_size, ptr @mpeg2d_persist1_size }, [20 x i8] zeroinitializer }, align 32
@enc_h264_ops = internal constant { %struct.enc_bufsize_ops, [16 x i8] } { %struct.enc_bufsize_ops { ptr @h264e_scratch_size, ptr @h264e_scratch1_size, ptr @enc_scratch2_size, ptr @enc_persist_size }, [16 x i8] zeroinitializer }, align 32
@enc_h265_ops = internal constant { %struct.enc_bufsize_ops, [16 x i8] } { %struct.enc_bufsize_ops { ptr @h265e_scratch_size, ptr @h265e_scratch1_size, ptr @enc_scratch2_size, ptr @enc_persist_size }, [16 x i8] zeroinitializer }, align 32
@enc_vp8_ops = internal constant { %struct.enc_bufsize_ops, [16 x i8] } { %struct.enc_bufsize_ops { ptr @vp8e_scratch_size, ptr @vp8e_scratch1_size, ptr @enc_scratch2_size, ptr @enc_persist_size }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 808996950, i64 809062486, i64 843534413, i64 875967048, i64 1129727304]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 809062486, i64 1129727304]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 808996950, i64 875967048, i64 1129727304]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 16777217, i64 16777224]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 16777217, i64 16777224]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 16777217, i64 16777224]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 16777217, i64 16777224]
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"dec_h264_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 1066, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"dec_h265_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 1072, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant [12 x i8] c"dec_vp8_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 1078, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"dec_vp9_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 1084, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"dec_mpeg2_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 1090, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant [13 x i8] c"enc_h264_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 1096, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"enc_h265_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 1103, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"enc_vp8_ops\00", align 1
@___asan_gen_.31 = private constant [56 x i8] c"../drivers/media/platform/qcom/venus/hfi_plat_bufs_v6.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 1110, i32 31 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @dec_h264_ops, ptr @dec_h265_ops, ptr @dec_vp8_ops, ptr @dec_vp9_ops, ptr @dec_mpeg2_ops, ptr @enc_h264_ops, ptr @enc_h265_ops, ptr @enc_vp8_ops], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dec_h264_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dec_h265_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dec_vp8_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dec_vp9_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dec_mpeg2_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_h264_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_h265_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_vp8_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfi_plat_bufreq_v6(ptr nocapture noundef readonly %params, i32 noundef %session_type, i32 noundef %buftype, ptr nocapture noundef %bufreq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %session_type)
  %cmp = icmp eq i32 %session_type, 2
  %version1.i = getelementptr inbounds %struct.hfi_plat_buffers_params, ptr %params, i32 0, i32 4
  %0 = ptrtoint ptr %version1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version1.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %codec2.i = getelementptr inbounds %struct.hfi_plat_buffers_params, ptr %params, i32 0, i32 2
  %2 = ptrtoint ptr %codec2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %codec2.i, align 4
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %params, align 4
  %height4.i = getelementptr inbounds %struct.hfi_plat_buffers_params, ptr %params, i32 0, i32 1
  %6 = ptrtoint ptr %height4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height4.i, align 4
  %8 = getelementptr inbounds %struct.hfi_plat_buffers_params, ptr %params, i32 0, i32 6
  %is_secondary_output5.i = getelementptr inbounds %struct.hfi_plat_buffers_params, ptr %params, i32 0, i32 6, i32 0, i32 2
  %9 = ptrtoint ptr %is_secondary_output5.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_secondary_output5.i, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.i = icmp ne i8 %10, 0
  %is_interlaced6.i = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %is_interlaced6.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_interlaced6.i, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.i = icmp ne i8 %12, 0
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %8, align 4
  %buffer_size_limit10.i = getelementptr inbounds %struct.hfi_plat_buffers_params, ptr %params, i32 0, i32 6, i32 0, i32 1
  %15 = ptrtoint ptr %buffer_size_limit10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buffer_size_limit10.i, align 4
  %num_vpp_pipes11.i = getelementptr inbounds %struct.hfi_plat_buffers_params, ptr %params, i32 0, i32 5
  %17 = ptrtoint ptr %num_vpp_pipes11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_vpp_pipes11.i, align 4
  %19 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.then.return_crit_edge [
    i32 875967048, label %if.then.sw.default.i.i_crit_edge
    i32 1129727304, label %sw.bb12.i
    i32 808996950, label %if.then.sw.epilog.thread120.i_crit_edge
    i32 809062486, label %if.then.output_buffer_count.exit.i_crit_edge
    i32 843534413, label %sw.bb15.i
  ]

if.then.output_buffer_count.exit.i_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %output_buffer_count.exit.i

if.then.sw.epilog.thread120.i_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread120.i

if.then.sw.default.i.i_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb12.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i.i

sw.bb15.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread120.i

sw.epilog.thread120.i:                            ; preds = %sw.bb15.i, %if.then.sw.epilog.thread120.i_crit_edge
  %dec_ops.0.ph119.i = phi ptr [ @dec_mpeg2_ops, %sw.bb15.i ], [ @dec_vp8_ops, %if.then.sw.epilog.thread120.i_crit_edge ]
  br label %output_buffer_count.exit.i

sw.default.i.i:                                   ; preds = %sw.bb12.i, %if.then.sw.default.i.i_crit_edge
  %dec_ops.0.ph.i = phi ptr [ @dec_h264_ops, %if.then.sw.default.i.i_crit_edge ], [ @dec_h265_ops, %sw.bb12.i ]
  br label %output_buffer_count.exit.i

output_buffer_count.exit.i:                       ; preds = %sw.default.i.i, %sw.epilog.thread120.i, %if.then.output_buffer_count.exit.i_crit_edge
  %dec_ops.0116.i = phi ptr [ %dec_ops.0.ph.i, %sw.default.i.i ], [ %dec_ops.0.ph119.i, %sw.epilog.thread120.i ], [ @dec_vp9_ops, %if.then.output_buffer_count.exit.i_crit_edge ]
  %output_min_count.0.i.i = phi i32 [ 18, %sw.default.i.i ], [ 6, %sw.epilog.thread120.i ], [ 11, %if.then.output_buffer_count.exit.i_crit_edge ]
  %count_min.i = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 4
  %20 = ptrtoint ptr %count_min.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count_min.i, align 4
  %22 = ptrtoint ptr %bufreq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %buftype, ptr %bufreq, align 4
  %region_size.i = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 2
  %23 = ptrtoint ptr %region_size.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %region_size.i, align 4
  store i32 1, ptr %count_min.i, align 4
  %count_actual.i = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 5
  %24 = ptrtoint ptr %count_actual.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %count_actual.i, align 4
  %hold_count.i = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 3
  %25 = ptrtoint ptr %hold_count.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %hold_count.i, align 4
  %contiguous.i = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 6
  %26 = ptrtoint ptr %contiguous.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %contiguous.i, align 4
  %alignment.i = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 7
  %27 = ptrtoint ptr %alignment.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 256, ptr %alignment.i, align 4
  %28 = zext i32 %buftype to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %buftype, label %if.else26.i [
    i32 1, label %if.then.i
    i32 2, label %output_buffer_count.exit.i.if.then22.i_crit_edge
    i32 3, label %output_buffer_count.exit.i.if.then22.i_crit_edge28
  ]

output_buffer_count.exit.i.if.then22.i_crit_edge28: ; preds = %output_buffer_count.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22.i

output_buffer_count.exit.i.if.then22.i_crit_edge: ; preds = %output_buffer_count.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22.i

if.then.i:                                        ; preds = %output_buffer_count.exit.i
  %29 = ptrtoint ptr %count_min.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %count_min.i, align 4
  %add.i.i = add i32 %7, 15
  %and.i.i = and i32 %add.i.i, -16
  %add1.i.i = add i32 %5, 15
  %and2.i.i = and i32 %add1.i.i, -16
  %mul.i.i = mul i32 %and.i.i, %and2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9437184, i32 %mul.i.i)
  %cmp.i.i = icmp ugt i32 %mul.i.i, 9437184
  %phi.bo29.i.i = mul i32 %14, 768
  %phi.bo30.i.i = lshr exact i32 %phi.bo29.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 809062486, i32 %3)
  %cmp3.i.i = icmp ne i32 %3, 809062486
  %base_res_mbs.0.i.i = select i1 %cmp.i.i, i32 %phi.bo30.i.i, i32 14155776
  %30 = zext i1 %cmp3.i.i to i32
  %31 = select i1 %cmp.i.i, i32 2, i32 %30
  %div1031.i.i = lshr i32 %base_res_mbs.0.i.i, %31
  %32 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %3, label %if.then.i.calculate_dec_input_frame_size.exit.i_crit_edge [
    i32 809062486, label %if.then.i.if.then13.i.i_crit_edge
    i32 1129727304, label %if.then.i.if.then13.i.i_crit_edge29
  ]

if.then.i.if.then13.i.i_crit_edge29:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13.i.i

if.then.i.if.then13.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13.i.i

if.then.i.calculate_dec_input_frame_size.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %calculate_dec_input_frame_size.exit.i

if.then13.i.i:                                    ; preds = %if.then.i.if.then13.i.i_crit_edge, %if.then.i.if.then13.i.i_crit_edge29
  %shr.i.i = lshr exact i32 %div1031.i.i, 2
  %add14.i.i = add nuw i32 %shr.i.i, %div1031.i.i
  br label %calculate_dec_input_frame_size.exit.i

calculate_dec_input_frame_size.exit.i:            ; preds = %if.then13.i.i, %if.then.i.calculate_dec_input_frame_size.exit.i_crit_edge
  %frame_size.0.i.i = phi i32 [ %add14.i.i, %if.then13.i.i ], [ %div1031.i.i, %if.then.i.calculate_dec_input_frame_size.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp ne i32 %16, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %frame_size.0.i.i, i32 %16)
  %cmp16.i.i = icmp ugt i32 %frame_size.0.i.i, %16
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %cmp16.i.i, i1 false
  %frame_size.1.i.i = select i1 %or.cond.i.i, i32 %16, i32 %frame_size.0.i.i
  %add19.i.i = add i32 %frame_size.1.i.i, 4095
  %and20.i.i = and i32 %add19.i.i, -4096
  br label %return.sink.split

if.then22.i:                                      ; preds = %output_buffer_count.exit.i.if.then22.i_crit_edge, %output_buffer_count.exit.i.if.then22.i_crit_edge28
  %33 = tail call i32 @llvm.umax.i32(i32 %output_min_count.0.i.i, i32 %21) #5
  %34 = ptrtoint ptr %count_min.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %count_min.i, align 4
  %hfi_color_fmt.i = getelementptr inbounds %struct.hfi_plat_buffers_params, ptr %params, i32 0, i32 3
  %35 = ptrtoint ptr %hfi_color_fmt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hfi_color_fmt.i, align 4
  %call24.i = tail call i32 @venus_helper_get_framesz_raw(i32 noundef %36, i32 noundef %5, i32 noundef %7) #5
  br label %return.sink.split

if.else26.i:                                      ; preds = %output_buffer_count.exit.i
  %37 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %38 = icmp eq i32 %37, 2
  %39 = select i1 %38, i32 6, i32 16777217
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %buftype)
  %cmp30.i = icmp eq i32 %39, %buftype
  br i1 %cmp30.i, label %if.then31.i, label %if.else35.i

if.then31.i:                                      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %dec_ops.0116.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dec_ops.0116.i, align 4
  %call33.i = tail call i32 %41(i32 noundef %5, i32 noundef %7, i1 noundef zeroext %tobool7.i) #5
  br label %return.sink.split

if.else35.i:                                      ; preds = %if.else26.i
  %42 = select i1 %38, i32 7, i32 16777221
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %buftype)
  %cmp41.i = icmp eq i32 %42, %buftype
  br i1 %cmp41.i, label %if.then42.i, label %if.else46.i

if.then42.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #7
  %scratch1.i = getelementptr inbounds %struct.dec_bufsize_ops, ptr %dec_ops.0116.i, i32 0, i32 1
  %43 = ptrtoint ptr %scratch1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %scratch1.i, align 4
  %call44.i = tail call i32 %44(i32 noundef %5, i32 noundef %7, i32 noundef 32, i1 noundef zeroext %tobool.i, i32 noundef %18) #5
  br label %return.sink.split

if.else46.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %buftype)
  %cmp47.i = icmp eq i32 %buftype, 5
  br i1 %cmp47.i, label %if.then48.i, label %if.else46.i.return.sink.split_crit_edge

if.else46.i.return.sink.split_crit_edge:          ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

if.then48.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #7
  %persist1.i = getelementptr inbounds %struct.dec_bufsize_ops, ptr %dec_ops.0116.i, i32 0, i32 2
  %45 = ptrtoint ptr %persist1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %persist1.i, align 4
  %call49.i = tail call i32 %46() #5
  br label %return.sink.split

if.else:                                          ; preds = %entry
  %47 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %params, align 4
  %height3.i = getelementptr inbounds %struct.hfi_plat_buffers_params, ptr %params, i32 0, i32 1
  %49 = ptrtoint ptr %height3.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height3.i, align 4
  %51 = getelementptr inbounds %struct.hfi_plat_buffers_params, ptr %params, i32 0, i32 6
  %is_tenbit4.i = getelementptr inbounds %struct.hfi_plat_buffers_params, ptr %params, i32 0, i32 6, i32 0, i32 3
  %52 = ptrtoint ptr %is_tenbit4.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %is_tenbit4.i, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.i6 = icmp ne i8 %53, 0
  %num_b_frames.i = getelementptr inbounds %struct.hfi_plat_buffers_params, ptr %params, i32 0, i32 6, i32 0, i32 2
  %54 = ptrtoint ptr %num_b_frames.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_b_frames.i, align 4
  %codec5.i = getelementptr inbounds %struct.hfi_plat_buffers_params, ptr %params, i32 0, i32 2
  %56 = ptrtoint ptr %codec5.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %codec5.i, align 4
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %51, align 4
  %rc_type7.i = getelementptr inbounds %struct.hfi_plat_buffers_params, ptr %params, i32 0, i32 6, i32 0, i32 1
  %60 = ptrtoint ptr %rc_type7.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rc_type7.i, align 4
  %num_vpp_pipes8.i = getelementptr inbounds %struct.hfi_plat_buffers_params, ptr %params, i32 0, i32 5
  %62 = ptrtoint ptr %num_vpp_pipes8.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_vpp_pipes8.i, align 4
  %64 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %57, label %if.else.return_crit_edge [
    i32 875967048, label %if.else.sw.epilog.i_crit_edge
    i32 1129727304, label %sw.bb9.i
    i32 808996950, label %sw.bb10.i
  ]

if.else.sw.epilog.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb9.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb10.i, %sw.bb9.i, %if.else.sw.epilog.i_crit_edge
  %enc_ops.0.i = phi ptr [ @enc_vp8_ops, %sw.bb10.i ], [ @enc_h265_ops, %sw.bb9.i ], [ @enc_h264_ops, %if.else.sw.epilog.i_crit_edge ]
  %add.i = add i32 %55, 1
  %65 = ptrtoint ptr %bufreq to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %buftype, ptr %bufreq, align 4
  %region_size.i7 = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 2
  %66 = ptrtoint ptr %region_size.i7 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %region_size.i7, align 4
  %count_min.i8 = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 4
  %67 = ptrtoint ptr %count_min.i8 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %count_min.i8, align 4
  %count_actual.i9 = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 5
  %68 = ptrtoint ptr %count_actual.i9 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %count_actual.i9, align 4
  %hold_count.i10 = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 3
  %69 = ptrtoint ptr %hold_count.i10 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %hold_count.i10, align 4
  %contiguous.i11 = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 6
  %70 = ptrtoint ptr %contiguous.i11 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %contiguous.i11, align 4
  %alignment.i12 = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 7
  %71 = ptrtoint ptr %alignment.i12 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 256, ptr %alignment.i12, align 4
  %72 = zext i32 %buftype to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %buftype, label %if.else20.i [
    i32 1, label %if.then.i14
    i32 2, label %sw.epilog.i.if.then15.i_crit_edge
    i32 3, label %sw.epilog.i.if.then15.i_crit_edge30
  ]

sw.epilog.i.if.then15.i_crit_edge30:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15.i

sw.epilog.i.if.then15.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15.i

if.then.i14:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %count_min.i8 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 4, ptr %count_min.i8, align 4
  %hfi_color_fmt.i13 = getelementptr inbounds %struct.hfi_plat_buffers_params, ptr %params, i32 0, i32 3
  %74 = ptrtoint ptr %hfi_color_fmt.i13 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %hfi_color_fmt.i13, align 4
  %call.i = tail call i32 @venus_helper_get_framesz_raw(i32 noundef %75, i32 noundef %48, i32 noundef %50) #5
  br label %return.sink.split

if.then15.i:                                      ; preds = %sw.epilog.i.if.then15.i_crit_edge, %sw.epilog.i.if.then15.i_crit_edge30
  %76 = ptrtoint ptr %count_min.i8 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 4, ptr %count_min.i8, align 4
  %add.i.i15 = add i32 %48, 31
  %and.i.i16 = and i32 %add.i.i15, -32
  %add1.i.i17 = add i32 %50, 31
  %and2.i.i18 = and i32 %add1.i.i17, -32
  %mul.i.i19 = mul i32 %and2.i.i18, %and.i.i16
  %mul7.i.i = mul i32 %50, %48
  %mul8.i.i = mul i32 %mul7.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 921600, i32 %mul.i.i19)
  %cmp.i.i20 = icmp ult i32 %mul.i.i19, 921600
  br i1 %cmp.i.i20, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i.i = mul i32 %mul7.i.i, 6
  br label %if.end13.i.i

if.else.i.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9437440, i32 %mul.i.i19)
  %cmp9.i.i = icmp ult i32 %mul.i.i19, 9437440
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.else11.i.i

if.then10.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i.i21 = lshr i32 %mul8.i.i, 2
  br label %if.end13.i.i

if.else11.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr12.i.i = lshr i32 %mul8.i.i, 3
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.else11.i.i, %if.then10.i.i, %if.then.i.i
  %frame_size.0.i.i22 = phi i32 [ %shl.i.i, %if.then.i.i ], [ %shr.i.i21, %if.then10.i.i ], [ %shr12.i.i, %if.else11.i.i ]
  %77 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %61, label %if.end13.i.i.calculate_enc_output_frame_size.exit.i_crit_edge [
    i32 16777217, label %if.end13.i.i.if.then16.i.i_crit_edge
    i32 16777224, label %if.end13.i.i.if.then16.i.i_crit_edge31
  ]

if.end13.i.i.if.then16.i.i_crit_edge31:           ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end13.i.i.if.then16.i.i_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end13.i.i.calculate_enc_output_frame_size.exit.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %calculate_enc_output_frame_size.exit.i

if.then16.i.i:                                    ; preds = %if.end13.i.i.if.then16.i.i_crit_edge, %if.end13.i.i.if.then16.i.i_crit_edge31
  %shl17.i.i = shl i32 %frame_size.0.i.i22, 1
  br label %calculate_enc_output_frame_size.exit.i

calculate_enc_output_frame_size.exit.i:           ; preds = %if.then16.i.i, %if.end13.i.i.calculate_enc_output_frame_size.exit.i_crit_edge
  %frame_size.1.i.i23 = phi i32 [ %shl17.i.i, %if.then16.i.i ], [ %frame_size.0.i.i22, %if.end13.i.i.calculate_enc_output_frame_size.exit.i_crit_edge ]
  %mul19.i.i = mul i32 %frame_size.1.i.i23, 5
  %div2034.i.i = lshr i32 %mul19.i.i, 2
  %add21.i.i = add nuw nsw i32 %div2034.i.i, 4095
  %and22.i.i = and i32 %add21.i.i, 2147479552
  br label %return.sink.split

if.else20.i:                                      ; preds = %sw.epilog.i
  %78 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %79 = icmp eq i32 %78, 2
  %80 = select i1 %79, i32 6, i32 16777217
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %buftype)
  %cmp24.i = icmp eq i32 %80, %buftype
  br i1 %cmp24.i, label %if.then25.i, label %if.else28.i

if.then25.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %enc_ops.0.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %enc_ops.0.i, align 4
  %call26.i = tail call i32 %82(i32 noundef %48, i32 noundef %50, i32 noundef %59, i32 noundef %63, i32 noundef %61) #5
  br label %return.sink.split

if.else28.i:                                      ; preds = %if.else20.i
  %83 = select i1 %79, i32 7, i32 16777221
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %buftype)
  %cmp34.i = icmp eq i32 %83, %buftype
  br i1 %cmp34.i, label %if.then35.i, label %if.else39.i

if.then35.i:                                      ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #7
  %scratch1.i24 = getelementptr inbounds %struct.enc_bufsize_ops, ptr %enc_ops.0.i, i32 0, i32 1
  %84 = ptrtoint ptr %scratch1.i24 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %scratch1.i24, align 4
  %call37.i = tail call i32 %85(i32 noundef %48, i32 noundef %50, i32 noundef %add.i, i1 noundef zeroext %tobool.i6, i32 noundef %63) #5
  br label %return.sink.split

if.else39.i:                                      ; preds = %if.else28.i
  %86 = select i1 %79, i32 8, i32 16777222
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %buftype)
  %cmp45.i = icmp eq i32 %86, %buftype
  br i1 %cmp45.i, label %if.then46.i, label %if.else50.i

if.then46.i:                                      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #7
  %scratch2.i = getelementptr inbounds %struct.enc_bufsize_ops, ptr %enc_ops.0.i, i32 0, i32 2
  %87 = ptrtoint ptr %scratch2.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %scratch2.i, align 4
  %call48.i = tail call i32 %88(i32 noundef %48, i32 noundef %50, i32 noundef %add.i, i1 noundef zeroext %tobool.i6) #5
  br label %return.sink.split

if.else50.i:                                      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %buftype)
  %cmp51.i = icmp eq i32 %buftype, 4
  br i1 %cmp51.i, label %if.then52.i, label %if.else50.i.return.sink.split_crit_edge

if.else50.i.return.sink.split_crit_edge:          ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

if.then52.i:                                      ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #7
  %persist.i = getelementptr inbounds %struct.enc_bufsize_ops, ptr %enc_ops.0.i, i32 0, i32 3
  %89 = ptrtoint ptr %persist.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %persist.i, align 4
  %call53.i = tail call i32 %90() #5
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then52.i, %if.else50.i.return.sink.split_crit_edge, %if.then46.i, %if.then35.i, %if.then25.i, %calculate_enc_output_frame_size.exit.i, %if.then.i14, %if.then48.i, %if.else46.i.return.sink.split_crit_edge, %if.then42.i, %if.then31.i, %if.then22.i, %calculate_dec_input_frame_size.exit.i
  %call.sink.i.sink = phi i32 [ %and20.i.i, %calculate_dec_input_frame_size.exit.i ], [ %call33.i, %if.then31.i ], [ %call49.i, %if.then48.i ], [ %call44.i, %if.then42.i ], [ %call24.i, %if.then22.i ], [ 0, %if.else46.i.return.sink.split_crit_edge ], [ %call.i, %if.then.i14 ], [ %call26.i, %if.then25.i ], [ %call48.i, %if.then46.i ], [ %call53.i, %if.then52.i ], [ %call37.i, %if.then35.i ], [ %and22.i.i, %calculate_enc_output_frame_size.exit.i ], [ 0, %if.else50.i.return.sink.split_crit_edge ]
  %size.i25 = getelementptr inbounds %struct.hfi_buffer_requirements, ptr %bufreq, i32 0, i32 1
  %91 = ptrtoint ptr %size.i25 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call.sink.i.sink, ptr %size.i25, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.else.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.return_crit_edge ], [ -22, %if.else.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_helper_get_framesz_raw(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @h264d_scratch_size(i32 noundef %width, i32 noundef %height, i1 noundef zeroext %is_interlaced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_interlaced, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add1 = add i32 %height, 15
  %and2 = and i32 %add1, -16
  %add = add i32 %width, 15
  %and = and i32 %add, -16
  %mul.i = mul i32 %and2, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 942081, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 942081
  %mul1.i = mul i32 %mul.i, 3
  %shr.i = lshr exact i32 %mul1.i, 1
  %cond.i = select i1 %cmp.i, i32 1413120, i32 %shr.i
  %mul3.i = mul i32 %cond.i, 3
  %add.i = add nuw i32 %cond.i, 255
  %and.i = and i32 %add.i, -256
  %add4.i = add i32 %mul3.i, 255
  %and5.i = and i32 %add4.i, -256
  %add6.i = add i32 %and5.i, %and.i
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %size.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %add6.i, %if.then ]
  ret i32 %size.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @h264d_scratch1_size(i32 noundef %width, i32 noundef %height, i32 noundef %min_buf_count, i1 noundef zeroext %split_mode_enabled, i32 noundef %num_vpp_pipes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add1.i = add i32 %height, 15
  %mul32.i = and i32 %add1.i, -16
  br i1 %split_mode_enabled, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.i14 = shl i32 %width, 3
  %0 = add i32 %add.i14, 8184
  %add4.i = and i32 %0, -256
  %mul7.i = shl i32 %mul32.i, 5
  %1 = tail call i32 @llvm.umax.i32(i32 %add4.i, i32 %mul7.i) #5
  %mul11.i = shl i32 %mul32.i, 6
  %add21.i = shl i32 %1, 1
  %add23.i17 = add i32 %add21.i, %mul11.i
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vpss_lb_size.0 = phi i32 [ %add23.i17, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %add.i = add i32 %width, 15
  %and7.i = and i32 %add.i, -16
  %mul8.i = mul i32 %and7.i, 1920
  %add16.i = or i32 %mul8.i, 255
  %add27.i = add i32 %and7.i, 255
  %and28.i = and i32 %add27.i, -256
  %add23.i13 = add i32 %add16.i, %and28.i
  %and49.i = shl i32 %add1.i, 6
  %mul50.i = and i32 %and49.i, -1024
  %add29.i = add i32 %add23.i13, %mul50.i
  %shr.i = lshr i32 %add.i, 4
  %mul13.i = shl i32 %shr.i, 6
  %add14.i = add i32 %mul13.i, 255
  %and15.i = and i32 %add14.i, -256
  %add36.i = add i32 %add29.i, %and15.i
  %mul39.i = mul i32 %shr.i, 384
  %add40.i = add i32 %mul39.i, 255
  %and41.i = and i32 %add40.i, -256
  %add42.i = add i32 %add36.i, %and41.i
  %shl.i = shl i32 %shr.i, 7
  %add45.i = add i32 %shl.i, 255
  %and46.i = and i32 %add45.i, -256
  %add47.i = add i32 %add42.i, %and46.i
  %add55.i = shl i32 %width, 1
  %2 = add i32 %add55.i, 126
  %mul59.i = and i32 %2, -128
  %add57.i = add i32 %height, 63
  %shr58.i = lshr i32 %add57.i, 6
  %mul60.i = mul i32 %mul59.i, %shr58.i
  %add61.i = add i32 %mul60.i, 255
  %and62.i = and i32 %add61.i, -256
  %add54.i = add i32 %add47.i, %and62.i
  %add.i.i = add i32 %height, 31
  %and.i.i = lshr i32 %add.i.i, 4
  %shr.i.i = and i32 %and.i.i, 268435454
  %mul2.i.i = mul nuw i32 %shr.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800, i32 %mul2.i.i)
  %cmp.i.i = icmp ult i32 %mul2.i.i, 1800
  %3 = mul i32 %shr.i.i, 7680
  %.op.i = add i32 %3, 65536
  %add5.i9 = select i1 %cmp.i.i, i32 %.op.i, i32 1217536
  %add63.i = add i32 %add54.i, %add5.i9
  %4 = shl i32 %add1.i, 2
  %mul19.i = and i32 %4, -64
  %add20.i11 = add i32 %mul19.i, 255
  %and21.i12 = and i32 %add20.i11, -256
  %add33.i = add i32 %mul32.i, 255
  %and34.i = and i32 %add33.i, -256
  %reass.add.i = add i32 %and21.i12, %and34.i
  %reass.mul.i = mul i32 %reass.add.i, %num_vpp_pipes
  %add64.i = add i32 %add63.i, %reass.mul.i
  %and65.i = and i32 %add64.i, -256
  %shr2.i = lshr i32 %add1.i, 4
  %add7.i = add nuw nsw i32 %shr2.i, 1
  %mul.i = and i32 %add7.i, 536870910
  %shl3.i = shl nuw nsw i32 %shr.i, 2
  %add5.i = add nuw nsw i32 %shl3.i, 15
  %and6.i = and i32 %add5.i, 2147483632
  %add9.i = mul i32 %mul.i, %and6.i
  %and10.i = add i32 %add9.i, 126
  %shl11.i = and i32 %and10.i, -128
  %5 = add i32 %shl11.i, 1023
  %add22.i = and i32 %5, -512
  %mul16.i = shl i32 %shr.i, 8
  %shr8.i = lshr i32 %add7.i, 1
  %shl19.i = mul i32 %mul16.i, %shr8.i
  %add20.i = add i32 %shl19.i, 511
  %and21.i = and i32 %add20.i, -512
  %add23.i = add i32 %add22.i, %and21.i
  %mul24.i = mul i32 %add23.i, %min_buf_count
  %add25.i = add i32 %mul24.i, 512
  %add = add i32 %add25.i, %and65.i
  %add3 = add i32 %add, %vpss_lb_size.0
  ret i32 %add3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @h264d_persist1_size() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 278528
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @h265d_scratch_size(i32 noundef %width, i32 noundef %height, i1 noundef zeroext %is_interlaced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_interlaced, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add1 = add i32 %height, 15
  %and2 = and i32 %add1, -16
  %add = add i32 %width, 15
  %and = and i32 %add, -16
  %mul.i = mul i32 %and2, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 942081, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 942081
  %shr.i = mul i32 %mul.i, 6
  %cond.i = select i1 %cmp.i, i32 5652480, i32 %shr.i
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %size.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %cond.i, %if.then ]
  ret i32 %size.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @h265d_scratch1_size(i32 noundef %width, i32 noundef %height, i32 noundef %min_buf_count, i1 noundef zeroext %split_mode_enabled, i32 noundef %num_vpp_pipes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add1.i = add i32 %height, 15
  br i1 %split_mode_enabled, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.i12 = shl i32 %width, 3
  %0 = add i32 %add.i12, 8184
  %add4.i = and i32 %0, -256
  %and6.i = and i32 %add1.i, -16
  %mul7.i = shl i32 %and6.i, 5
  %1 = tail call i32 @llvm.umax.i32(i32 %add4.i, i32 %mul7.i) #5
  %mul11.i14 = shl i32 %and6.i, 6
  %add21.i = shl i32 %1, 1
  %add23.i = add i32 %add21.i, %mul11.i14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vpss_lb_size.0 = phi i32 [ %add23.i, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %add.i.i = add i32 %width, 63
  %mul27.i = shl i32 %add.i.i, 2
  %and29.i = and i32 %mul27.i, -256
  %add30.i = add i32 %and29.i, 65791
  %and7.i = and i32 %add.i.i, -64
  %add18.i = or i32 %and7.i, 8
  %mul20.i = mul i32 %add18.i, 1280
  %add38.i = add i32 %add30.i, %mul20.i
  %add69.i = shl i32 %height, 7
  %mul71.i = add i32 %add69.i, 1920
  %mul74.i = and i32 %mul71.i, -2048
  %add43.i = add i32 %add38.i, %mul74.i
  %add44.i = add i32 %width, 15
  %2 = shl i32 %add44.i, 3
  %mul45.i = and i32 %2, -128
  %add46.i = add i32 %mul45.i, 255
  %and47.i = and i32 %add46.i, -256
  %add48.i = add i32 %add43.i, %and47.i
  %div51107.i = lshr i32 %add44.i, 4
  %mul52.i = mul i32 %div51107.i, 384
  %add53.i = add i32 %mul52.i, 255
  %and54.i = and i32 %add53.i, -256
  %add55.i = add i32 %add48.i, %and54.i
  %3 = shl i32 %add.i.i, 1
  %mul58.i = and i32 %3, -128
  %add59.i = add i32 %mul58.i, 255
  %and60.i = and i32 %add59.i, -256
  %add61.i = add i32 %add55.i, %and60.i
  %add1.i.i = add i32 %height, 63
  %shr63.i = lshr i32 %add1.i.i, 6
  %mul81.i = mul i32 %mul58.i, %shr63.i
  %add82.i = add i32 %mul81.i, 255
  %and83.i = and i32 %add82.i, -256
  %add68.i = add i32 %add61.i, %and83.i
  %and2.i.i = lshr i32 %add1.i.i, 4
  %div10106.i = and i32 %and2.i.i, 268435452
  %mul.i11 = lshr exact i32 %and7.i, 2
  %mul11.i = mul i32 %div10106.i, %mul.i11
  %add12.i = add i32 %mul11.i, 255
  %and13.i = and i32 %add12.i, -256
  %add75.i = add i32 %add68.i, %and13.i
  %div314.i.i = and i32 %and2.i.i, 134217724
  %and.i.i = lshr i32 %add.i.i, 4
  %div13.i.i = and i32 %and.i.i, 134217724
  %mul.i.i = mul i32 %div314.i.i, %div13.i.i
  %mul4.i.i = shl i32 %mul.i.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 601, i32 %mul4.i.i)
  %cmp.i.i = icmp ult i32 %mul4.i.i, 601
  %4 = mul i32 %mul.i.i, 20480
  %.op.i = or i32 %4, 56320
  %add5.i10 = select i1 %cmp.i.i, i32 %.op.i, i32 442624
  %add84.i = add i32 %add75.i, %add5.i10
  %mul64.i = shl i32 %shr63.i, 7
  %add65.i = add i32 %mul64.i, 255
  %and66.i = and i32 %add65.i, -256
  %mul34.i = shl i32 %and2.i.i, 6
  %and36.i = and i32 %mul34.i, -256
  %reass.add.i = add i32 %and66.i, %and36.i
  %sub.i.i = shl i32 %height, 1
  %5 = add i32 %sub.i.i, 30
  %mul.i117.i = and i32 %5, -16
  %6 = add i32 %sub.i.i, 62
  %mul4.i118.i = and i32 %6, -16
  %7 = tail call i32 @llvm.umax.i32(i32 %mul.i117.i, i32 %mul4.i118.i) #5
  %8 = add i32 %sub.i.i, 126
  %mul8.i.i = and i32 %8, -16
  %9 = tail call i32 @llvm.umax.i32(i32 %7, i32 %mul8.i.i) #5
  %add40.i = add i32 %9, 255
  %and41.i = and i32 %add40.i, -256
  %reass.add119.i = add i32 %reass.add.i, %and41.i
  %reass.mul.i = mul i32 %reass.add119.i, %num_vpp_pipes
  %add85.i = add i32 %add84.i, %reass.mul.i
  %and86.i = and i32 %add85.i, -256
  %add.i = shl i32 %width, 4
  %10 = add i32 %add.i, 240
  %mul.i = and i32 %10, -256
  %shr2.i = lshr i32 %add1.i, 4
  %shl.i = mul i32 %mul.i, %shr2.i
  %add3.i = add i32 %shl.i, 511
  %and.i = and i32 %add3.i, -512
  %mul4.i = mul i32 %and.i, %min_buf_count
  %add = add i32 %mul4.i, 4608
  %add3 = add i32 %add, %and86.i
  %add4 = add i32 %add3, %vpss_lb_size.0
  ret i32 %add4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @h265d_persist1_size() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 119040
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vpxd_scratch_size(i32 noundef %width, i32 noundef %height, i1 noundef zeroext %is_interlaced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_interlaced, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %width, 15
  %and = and i32 %add, -16
  %add1 = add i32 %height, 15
  %and2 = and i32 %add1, -16
  %mul = mul i32 %and2, %and
  %mul3 = mul i32 %mul, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2826240, i32 %mul3)
  %cmp = icmp ugt i32 %mul3, 2826240
  %0 = mul i32 %mul, 6
  %add13 = select i1 %cmp, i32 %0, i32 5652480
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %size.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %add13, %if.then ]
  ret i32 %size.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vp8d_scratch1_size(i32 noundef %width, i32 noundef %height, i32 noundef %min_buf_count, i1 noundef zeroext %split_mode_enabled, i32 noundef %num_vpp_pipes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add1.i = add i32 %height, 15
  %shr.i78 = and i32 %add1.i, -16
  br i1 %split_mode_enabled, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.i82 = shl i32 %width, 3
  %0 = add i32 %add.i82, 8184
  %add4.i83 = and i32 %0, -256
  %mul7.i = shl i32 %shr.i78, 5
  %1 = tail call i32 @llvm.umax.i32(i32 %add4.i83, i32 %mul7.i) #5
  %mul11.i = shl i32 %shr.i78, 6
  %add21.i = shl i32 %1, 1
  %add23.i = add i32 %add21.i, %mul11.i
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vpss_lb_size.0 = phi i32 [ %add23.i, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %add1.i79 = add i32 %height, 31
  %2 = lshr i32 %add1.i79, 1
  %mul3.i80 = and i32 %2, 2147483632
  %3 = tail call i32 @llvm.umax.i32(i32 %shr.i78, i32 %mul3.i80) #5
  %add4.i = add i32 %height, 63
  %4 = lshr i32 %add4.i, 2
  %mul6.i = and i32 %4, 1073741808
  %5 = tail call i32 @llvm.umax.i32(i32 %3, i32 %mul6.i) #5
  %add.i75 = shl i32 %height, 2
  %6 = add i32 %add.i75, 60
  %mul.i = and i32 %6, -64
  %add1.i76 = shl i32 %height, 1
  %7 = add i32 %add1.i76, 62
  %mul3.i = and i32 %7, -64
  %8 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 %mul3.i) #5
  %shr5.i = and i32 %add4.i, -64
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 %shr5.i) #5
  %add.i = add i32 %width, 15
  %shr.i = and i32 %add.i, -16
  %shr2.i = lshr i32 %add1.i, 4
  %mul4.i = mul i32 %shr2.i, %shr.i
  %add = add i32 %9, 255
  %and = and i32 %add, -256
  %add3 = add i32 %5, 255
  %and4 = and i32 %add3, -256
  %mul72 = add i32 %and, %and4
  %add6 = mul i32 %mul72, %num_vpp_pipes
  %10 = shl i32 %add.i, 2
  %mul9 = and i32 %10, -64
  %div73 = lshr exact i32 %mul9, 1
  %add11 = add nuw i32 %div73, 511
  %and12 = and i32 %add11, -256
  %add14 = add i32 %width, 63
  %and15 = and i32 %add14, -64
  %add16 = or i32 %and15, 8
  %mul18 = mul i32 %add16, 20
  %add19 = add i32 %mul18, 255
  %and20 = and i32 %add19, -256
  %add22 = shl i32 %height, 6
  %mul25 = add i32 %add22, 960
  %mul30 = and i32 %mul25, -1024
  %add35 = shl i32 %mul9, 1
  %and36 = add i32 %add35, 510
  %reass.add = and i32 %and36, -512
  %add47 = or i32 %shr.i, 8
  %mul49 = mul i32 %add47, 20
  %add50 = add i32 %mul49, 255
  %and51 = and i32 %add50, -256
  %add13 = add i32 %mul4.i, %mul30
  %add21 = add i32 %add13, %and12
  %add31 = add i32 %add21, %and20
  %add44 = add i32 %add31, %reass.add
  %add52 = add i32 %add44, %and51
  %add53 = add i32 %add52, %add6
  %add55 = add i32 %add53, %vpss_lb_size.0
  ret i32 %add55
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vp8d_persist1_size() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 23040
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vp9d_scratch1_size(i32 noundef %width, i32 noundef %height, i32 noundef %min_buf_count, i1 noundef zeroext %split_mode_enabled, i32 noundef %num_vpp_pipes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i76 = add i32 %height, 15
  %shr.i = and i32 %add.i76, -16
  br i1 %split_mode_enabled, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.i80 = shl i32 %width, 3
  %0 = add i32 %add.i80, 8184
  %add4.i81 = and i32 %0, -256
  %mul7.i = shl i32 %shr.i, 5
  %1 = tail call i32 @llvm.umax.i32(i32 %add4.i81, i32 %mul7.i) #5
  %mul11.i = shl i32 %shr.i, 6
  %add21.i = shl i32 %1, 1
  %add23.i = add i32 %mul11.i, 4096
  %phi.bo = add i32 %add23.i, %add21.i
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vpss_lb_size.0 = phi i32 [ %phi.bo, %if.then ], [ 4096, %entry.if.end_crit_edge ]
  %add1.i77 = add i32 %height, 31
  %2 = lshr i32 %add1.i77, 1
  %mul3.i78 = and i32 %2, 2147483632
  %3 = tail call i32 @llvm.umax.i32(i32 %shr.i, i32 %mul3.i78) #5
  %add4.i = add i32 %height, 63
  %4 = lshr i32 %add4.i, 2
  %mul6.i = and i32 %4, 1073741808
  %5 = tail call i32 @llvm.umax.i32(i32 %3, i32 %mul6.i) #5
  %add.i = shl i32 %height, 2
  %6 = add i32 %add.i, 60
  %mul.i = and i32 %6, -64
  %add1.i = shl i32 %height, 1
  %7 = add i32 %add1.i, 62
  %mul3.i = and i32 %7, -64
  %8 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 %mul3.i) #5
  %shr5.i = and i32 %add4.i, -64
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 %shr5.i) #5
  %add = add i32 %9, 255
  %and = and i32 %add, -256
  %add2 = add i32 %5, 255
  %and3 = and i32 %add2, -256
  %mul74 = add i32 %and, %and3
  %add5 = mul i32 %mul74, %num_vpp_pipes
  %add6 = add i32 %width, 15
  %and7 = and i32 %add6, -16
  %add8 = add i32 %and7, 63
  %mul10 = shl i32 %add8, 3
  %add13 = and i32 %mul10, -512
  %add16 = add i32 %width, 63
  %and17 = and i32 %add16, -64
  %add18 = or i32 %and17, 8
  %mul20 = mul i32 %add18, 20
  %add21 = add i32 %mul20, 255
  %and22 = and i32 %add21, -256
  %add24 = shl i32 %height, 6
  %mul26 = add i32 %add24, 960
  %mul31 = and i32 %mul26, -1024
  %10 = shl i32 %add6, 2
  %mul35 = and i32 %10, -64
  %add36 = add i32 %mul35, 255
  %and37 = and i32 %add36, -256
  %shr = lshr i32 %add8, 6
  %mul44 = mul i32 %shr, 176
  %add45 = add i32 %mul44, 255
  %and46 = and i32 %add45, -256
  %and9 = and i32 %add8, -64
  %add52 = or i32 %and9, 8
  %mul54 = mul i32 %add52, 20
  %add55 = add i32 %mul54, 255
  %and56 = and i32 %add55, -256
  %and14 = or i32 %mul31, 256
  %add15 = add i32 %and14, %add13
  %add23 = add i32 %add15, %and37
  %add32 = add i32 %add23, %and22
  %add38 = add i32 %add32, %and46
  %add47 = add i32 %add38, %and56
  %add57 = add i32 %add47, %add5
  %add60 = add i32 %add57, %vpss_lb_size.0
  ret i32 %add60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vp9d_persist1_size() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 9068288
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mpeg2d_scratch_size(i32 noundef %width, i32 noundef %height, i1 noundef zeroext %is_interlaced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mpeg2d_scratch1_size(i32 noundef %width, i32 noundef %height, i32 noundef %min_buf_count, i1 noundef zeroext %split_mode_enabled, i32 noundef %num_vpp_pipes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i70 = add i32 %height, 15
  %shr.i = and i32 %add.i70, -16
  br i1 %split_mode_enabled, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.i74 = shl i32 %width, 3
  %0 = add i32 %add.i74, 8184
  %add4.i75 = and i32 %0, -256
  %mul7.i = shl i32 %shr.i, 5
  %1 = tail call i32 @llvm.umax.i32(i32 %add4.i75, i32 %mul7.i) #5
  %mul11.i = shl i32 %shr.i, 6
  %add21.i = shl i32 %1, 1
  %add23.i = add i32 %add21.i, %mul11.i
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vpss_lb_size.0 = phi i32 [ %add23.i, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %add1.i71 = add i32 %height, 31
  %2 = lshr i32 %add1.i71, 1
  %mul3.i72 = and i32 %2, 2147483632
  %3 = tail call i32 @llvm.umax.i32(i32 %shr.i, i32 %mul3.i72) #5
  %add4.i = add i32 %height, 63
  %4 = lshr i32 %add4.i, 2
  %mul6.i = and i32 %4, 1073741808
  %5 = tail call i32 @llvm.umax.i32(i32 %3, i32 %mul6.i) #5
  %add.i = shl i32 %height, 2
  %6 = add i32 %add.i, 60
  %mul.i = and i32 %6, -64
  %add1.i = shl i32 %height, 1
  %7 = add i32 %add1.i, 62
  %mul3.i = and i32 %7, -64
  %8 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 %mul3.i) #5
  %shr5.i = and i32 %add4.i, -64
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 %shr5.i) #5
  %add = add i32 %9, 255
  %and = and i32 %add, -256
  %add2 = add i32 %5, 255
  %and3 = and i32 %add2, -256
  %mul67 = add i32 %and, %and3
  %add5 = mul i32 %mul67, %num_vpp_pipes
  %add6 = add i32 %width, 15
  %10 = shl i32 %add6, 2
  %mul8 = and i32 %10, -64
  %div68 = lshr exact i32 %mul8, 1
  %add10 = add nuw i32 %div68, 511
  %and11 = and i32 %add10, -256
  %add13 = add i32 %width, 63
  %and14 = and i32 %add13, -64
  %add15 = or i32 %and14, 8
  %mul17 = mul i32 %add15, 20
  %add18 = add i32 %mul17, 255
  %and19 = and i32 %add18, -256
  %add21 = shl i32 %height, 6
  %mul24 = add i32 %add21, 960
  %mul29 = and i32 %mul24, -1024
  %add34 = shl i32 %mul8, 1
  %and35 = add i32 %add34, 510
  %reass.add = and i32 %and35, -512
  %and7 = and i32 %add6, -16
  %add46 = or i32 %and7, 8
  %mul48 = mul i32 %add46, 20
  %add49 = add i32 %mul48, 255
  %and50 = and i32 %add49, -256
  %add12 = add i32 %and11, %mul29
  %add20 = add i32 %add12, %and19
  %add30 = add i32 %add20, %reass.add
  %add43 = add i32 %add30, %and50
  %add51 = add i32 %add43, %add5
  %add53 = add i32 %add51, %vpss_lb_size.0
  ret i32 %add53
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mpeg2d_persist1_size() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 115968
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @h264e_scratch_size(i32 noundef %width, i32 noundef %height, i32 noundef %work_mode, i32 noundef %num_vpp_pipes, i32 noundef %rc_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i.i = add i32 %width, 31
  %and.i.i = and i32 %add.i.i, -32
  %add1.i.i = add i32 %height, 31
  %and2.i.i = and i32 %add1.i.i, -32
  %mul.i.i = mul i32 %and2.i.i, %and.i.i
  %mul7.i.i = mul i32 %height, %width
  %mul8.i.i = mul i32 %mul7.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 921600, i32 %mul.i.i)
  %cmp.i.i = icmp ult i32 %mul.i.i, 921600
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i.i = mul i32 %mul7.i.i, 6
  br label %if.end13.i.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9437440, i32 %mul.i.i)
  %cmp9.i.i = icmp ult i32 %mul.i.i, 9437440
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.else11.i.i

if.then10.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i.i = lshr i32 %mul8.i.i, 2
  br label %if.end13.i.i

if.else11.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr12.i.i = lshr i32 %mul8.i.i, 3
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.else11.i.i, %if.then10.i.i, %if.then.i.i
  %frame_size.0.i.i = phi i32 [ %shl.i.i, %if.then.i.i ], [ %shr.i.i, %if.then10.i.i ], [ %shr12.i.i, %if.else11.i.i ]
  %0 = zext i32 %rc_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %rc_type, label %if.end13.i.i.calculate_enc_output_frame_size.exit.i_crit_edge [
    i32 16777217, label %if.end13.i.i.if.then16.i.i_crit_edge
    i32 16777224, label %if.end13.i.i.if.then16.i.i_crit_edge1
  ]

if.end13.i.i.if.then16.i.i_crit_edge1:            ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end13.i.i.if.then16.i.i_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end13.i.i.calculate_enc_output_frame_size.exit.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %calculate_enc_output_frame_size.exit.i

if.then16.i.i:                                    ; preds = %if.end13.i.i.if.then16.i.i_crit_edge, %if.end13.i.i.if.then16.i.i_crit_edge1
  %shl17.i.i = shl i32 %frame_size.0.i.i, 1
  br label %calculate_enc_output_frame_size.exit.i

calculate_enc_output_frame_size.exit.i:           ; preds = %if.then16.i.i, %if.end13.i.i.calculate_enc_output_frame_size.exit.i_crit_edge
  %frame_size.1.i.i = phi i32 [ %shl17.i.i, %if.then16.i.i ], [ %frame_size.0.i.i, %if.end13.i.i.calculate_enc_output_frame_size.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %work_mode)
  %cmp.i = icmp eq i32 %work_mode, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %calculate_enc_output_frame_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul19.i.i = mul i32 %frame_size.1.i.i, 5
  %div2034.i.i = lshr i32 %mul19.i.i, 2
  %add21.i.i = add nuw nsw i32 %div2034.i.i, 4095
  %and22.i.i = and i32 %add21.i.i, 2147479552
  %mul.i = mul i32 %and22.i.i, 17
  %div.i = udiv i32 %mul.i, 10
  br label %calculate_enc_scratch_size.exit

if.else.i:                                        ; preds = %calculate_enc_output_frame_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %add3.i = add i32 %height, 15
  %and6.i = and i32 %add3.i, -16
  %add.i = add i32 %width, 15
  %and.i = and i32 %add.i, -16
  %mul11.i = mul i32 %and.i, 3
  %mul12.i = mul i32 %mul11.i, %and6.i
  br label %calculate_enc_scratch_size.exit

calculate_enc_scratch_size.exit:                  ; preds = %if.else.i, %if.then.i
  %total_bitbin_buffers.0.i = phi i32 [ 3, %if.then.i ], [ 1, %if.else.i ]
  %bitbin_size.0.in.in.i = phi i32 [ %div.i, %if.then.i ], [ %mul12.i, %if.else.i ]
  %bitbin_size.0.in.i = add i32 %bitbin_size.0.in.in.i, 255
  %bitbin_size.0.i = and i32 %bitbin_size.0.in.i, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_vpp_pipes)
  %cmp15.i = icmp ugt i32 %num_vpp_pipes, 2
  %div1753.i = zext i1 %cmp15.i to i32
  %size_single_pipe.0.i = lshr exact i32 %bitbin_size.0.i, %div1753.i
  %add20.i = add nuw i32 %size_single_pipe.0.i, 255
  %add22.i = add i32 %width, 32
  %add23.i = add i32 %height, 32
  %mul24.i = mul i32 %add23.i, %add22.i
  %1 = lshr i32 %mul24.i, 4
  %mul25.i = and i32 %1, 268435392
  %and28.i = and i32 %add20.i, -256
  %add29.i = add nuw nsw i32 %mul25.i, 639
  %add30.i = add i32 %add29.i, %and28.i
  %and31.i = and i32 %add30.i, -256
  %mul32.i = mul i32 %total_bitbin_buffers.0.i, %num_vpp_pipes
  %mul35.i = mul i32 %mul32.i, %and31.i
  %add36.i = add i32 %mul35.i, 512
  ret i32 %add36.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @h264e_scratch1_size(i32 noundef %width, i32 noundef %height, i32 noundef %num_ref, i1 noundef zeroext %ten_bit, i32 noundef %num_vpp_pipes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @calculate_enc_scratch1_size(i32 noundef %width, i32 noundef %height, i32 noundef 16, i32 noundef %num_ref, i1 noundef zeroext %ten_bit, i32 noundef %num_vpp_pipes, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enc_scratch2_size(i32 noundef %width, i32 noundef %height, i32 noundef %num_ref, i1 noundef zeroext %ten_bit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add14 = add i32 %height, 31
  %and15 = and i32 %add14, -32
  br i1 %ten_bit, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shr = lshr i32 %height, 1
  %add1 = add nuw i32 %shr, 31
  %and2 = and i32 %add1, -32
  %add3 = add i32 %width, 127
  %and4 = and i32 %add3, -128
  %add.i = add i32 %width, 31
  %add.i68 = add i32 %height, 7
  %div.i6994 = lshr i32 %add.i68, 3
  %add2.i70 = add nuw nsw i32 %div.i6994, 15
  %and.i71 = and i32 %add2.i70, 1073741808
  %add8 = add i32 %and2, %and15
  %mul = mul i32 %add8, %and4
  %0 = lshr i32 %add.i, 4
  %add2.i = and i32 %0, 268435454
  %and.i = add nuw nsw i32 %add2.i, 126
  %mul.i = and i32 %and.i, 536870784
  %add.i72 = mul i32 %mul.i, %and.i71
  %and.i73 = add i32 %add.i72, 8190
  %reass.add = and i32 %and.i73, -8192
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %width, 191
  %1 = urem i32 %sub, 192
  %mul17 = sub i32 %sub, %1
  %div18 = udiv i32 %mul17, 3
  %mul19 = shl i32 %div18, 2
  %add20 = add i32 %mul19, 127
  %and21 = and i32 %add20, -128
  %add23 = add i32 %height, 1
  %shr24 = lshr i32 %add23, 1
  %add25 = add nuw i32 %shr24, 31
  %and26 = and i32 %add25, -32
  %mul2266 = add i32 %and26, %and15
  %add32 = mul i32 %and21, %mul2266
  %add.i78 = add i32 %width, 47
  %div.i79 = udiv i32 %add.i78, 48
  %add.i83 = add i32 %height, 3
  %div.i8495 = lshr i32 %add.i83, 2
  %add2.i85 = add nuw nsw i32 %div.i8495, 15
  %and.i86 = and i32 %add2.i85, 2147483632
  %add2.i80 = shl nuw nsw i32 %div.i79, 1
  %and.i81 = add nuw nsw i32 %add2.i80, 126
  %mul.i87 = and i32 %and.i81, 1073741696
  %add.i88 = mul i32 %mul.i87, %and.i86
  %and.i89 = add i32 %add.i88, 8190
  %reass.add96 = and i32 %and.i89, -8192
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %reass.add96.sink = phi i32 [ %reass.add96, %if.else ], [ %mul, %if.then ]
  %add32.sink = phi i32 [ %add32, %if.else ], [ %reass.add, %if.then ]
  %add38 = add i32 %add32.sink, %reass.add96.sink
  %add39 = add i32 %num_ref, 3
  %mul40 = mul i32 %add38, %add39
  %size.0 = add i32 %mul40, 4096
  ret i32 %size.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enc_persist_size() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 204800
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @calculate_enc_scratch1_size(i32 noundef %width, i32 noundef %height, i32 noundef %lcu_size, i32 noundef %num_ref, i1 noundef zeroext %ten_bit, i32 noundef %num_vpp_pipes, i1 noundef zeroext %is_h265) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %lcu_size, -1
  %sub = add i32 %add, %width
  %div = udiv i32 %sub, %lcu_size
  %sub3 = add i32 %add, %height
  %div4 = udiv i32 %sub3, %lcu_size
  %mul = mul i32 %div4, %div
  %mul5 = mul i32 %div, %lcu_size
  %mul6 = mul i32 %div4, %lcu_size
  br i1 %is_h265, label %cond.true145, label %cond.false152

cond.true145:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add30 = shl i32 %mul6, 1
  %0 = add i32 %add30, 64
  %mul33 = and i32 %0, -64
  %shr72358 = lshr i32 %mul6, 4
  %add147 = and i32 %shr72358, 268435454
  br label %cond.end159

cond.false152:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add34 = add i32 %mul6, 15
  %div35349 = lshr i32 %add34, 4
  %mul37 = mul i32 %div35349, 80
  %shr72 = lshr i32 %mul6, 4
  %add154 = shl nuw nsw i32 %shr72, 1
  br label %cond.end159

cond.end159:                                      ; preds = %cond.false152, %cond.true145
  %add154.sink = phi i32 [ %add154, %cond.false152 ], [ %add147, %cond.true145 ]
  %.sink363 = phi i32 [ 1073741808, %cond.false152 ], [ 536870896, %cond.true145 ]
  %shr72362 = phi i32 [ %shr72, %cond.false152 ], [ %shr72358, %cond.true145 ]
  %cond38359 = phi i32 [ %mul37, %cond.false152 ], [ %mul33, %cond.true145 ]
  %mul185 = mul i32 %mul6, %mul5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8847360, i32 %mul185)
  %cmp186 = icmp ugt i32 %mul185, 8847360
  br i1 %cmp186, label %cond.end159.if.end201_crit_edge, label %if.else

cond.end159.if.end201_crit_edge:                  ; preds = %cond.end159
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end201

if.else:                                          ; preds = %cond.end159
  call void @__sanitizer_cov_trace_const_cmp4(i32 2088960, i32 %mul185)
  %cmp190 = icmp ugt i32 %mul185, 2088960
  br i1 %cmp190, label %if.then192, label %if.else196

if.then192:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %mul193 = mul i32 %mul, 160
  %add195 = add i32 %mul193, 512
  br label %if.end201

if.else196:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %mul197 = shl i32 %mul, 10
  %add199 = or i32 %mul197, 512
  br label %if.end201

if.end201:                                        ; preds = %if.else196, %if.then192, %cond.end159.if.end201_crit_edge
  %se_stats_bufsize.0 = phi i32 [ %add195, %if.then192 ], [ %add199, %if.else196 ], [ 0, %cond.end159.if.end201_crit_edge ]
  %1 = add nuw nsw i32 %add154.sink, 14
  %add156 = and i32 %1, %.sink363
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_vpp_pipes)
  %cmp = icmp ugt i32 %num_vpp_pipes, 1
  %2 = mul nuw i32 %add156, 6
  %add165 = add nuw i32 %2, 3135
  %and166 = and i32 %add165, -256
  %mul167 = mul i32 %and166, %num_vpp_pipes
  %mul161 = add nuw i32 %2, 2880
  %h265e_framerc_bufsize.0 = select i1 %cmp, i32 %mul167, i32 %mul161
  %add128 = shl i32 %div, 2
  %mul130 = add i32 %add128, 28
  %mul131 = and i32 %mul130, -32
  %mul132 = mul i32 %mul131, %div4
  %add136 = add i32 %mul132, 255
  %and137 = and i32 %add136, -256
  %mul138 = mul i32 %and137, %num_vpp_pipes
  %h265e_colrcbuf_size.0 = select i1 %cmp, i32 %mul138, i32 %mul132
  %shl115 = shl i32 %mul, 6
  %mul117 = add i32 %shl115, 512
  %3 = mul i32 %mul, 48
  %mul121 = add i32 %3, 1536
  %cond123 = select i1 %is_h265, i32 %mul117, i32 %mul121
  %4 = shl i32 %mul5, 1
  %mul63 = and i32 %4, -64
  %5 = add i32 %mul5, 256
  %add67 = and i32 %5, -16
  %cond69 = select i1 %is_h265, i32 %mul63, i32 %add67
  %add40 = add i32 %cond38359, 1023
  %and41 = and i32 %add40, -512
  %mul42 = mul i32 %and41, %num_vpp_pipes
  %leftline_buf_ctrl_size.0 = select i1 %cmp, i32 %mul42, i32 %cond38359
  %6 = tail call i32 @llvm.umax.i32(i32 %mul5, i32 %mul6)
  %mul215 = shl i32 %num_vpp_pipes, 16
  %shl211 = shl i32 %mul, 1
  %add212 = add i32 %shl211, 7
  %and213 = and i32 %add212, -8
  %mul214 = mul i32 %and213, 3
  %mul8 = shl i32 %lcu_size, 3
  %add9 = add i32 %mul5, %mul8
  %div10 = udiv i32 %add9, %lcu_size
  %mul11 = shl i32 %div4, 2
  %add205 = mul i32 %mul11, %div10
  %mul207 = add i32 %add205, 28
  %add208 = and i32 %mul207, -32
  %and209 = add i32 %add208, 510
  %mul210 = and i32 %and209, -512
  %add202 = shl i32 %se_stats_bufsize.0, 1
  %and203 = add i32 %add202, 510
  %mul204 = and i32 %and203, -512
  %add183 = add i32 %add67, 255
  %and184 = and i32 %add183, -256
  %shr176 = lshr i32 %mul, 3
  %add178 = add nuw nsw i32 %shr176, 511
  %and179 = and i32 %add178, 1073741568
  %mul172 = shl i32 %mul, 2
  %add174 = add i32 %mul172, 511
  %and175 = and i32 %add174, -256
  %add169 = add i32 %h265e_framerc_bufsize.0, 511
  %and170 = and i32 %add169, -512
  %add140 = add i32 %h265e_colrcbuf_size.0, 255
  %and141 = and i32 %add140, -256
  %add124 = add i32 %cond123, 255
  %and125 = and i32 %add124, -256
  %add126 = add i32 %num_ref, 1
  %mul127 = mul i32 %and125, %add126
  %cond108 = select i1 %ten_bit, i32 3, i32 2
  %mul109 = mul i32 %mul5, %cond108
  %add110 = add i32 %mul109, 255
  %and111 = and i32 %add110, -256
  %7 = select i1 %ten_bit, i32 4, i32 5
  %div100351 = lshr i32 %mul6, %7
  %mul101 = shl i32 %div100351, 6
  %add103 = add i32 %mul101, 511
  %and104 = and i32 %add103, -256
  %8 = select i1 %ten_bit, i32 5, i32 6
  %div90350 = lshr i32 %mul6, %8
  %mul91 = shl i32 %div90350, 6
  %add93 = add i32 %mul91, 511
  %and94 = and i32 %add93, -256
  %mul73 = shl i32 %shr72362, 6
  %sub50 = add i32 %num_vpp_pipes, -1
  %shl51 = shl i32 256, %sub50
  %add77 = or i32 %shl51, 255
  %sub78 = add i32 %add77, %mul73
  %neg = sub i32 0, %shl51
  %and84 = and i32 %sub78, %neg
  %add70 = add i32 %cond69, 255
  %and71 = and i32 %add70, -256
  %mul47 = select i1 %ten_bit, i32 4, i32 2
  %mul48 = mul i32 %mul6, %mul47
  %sub53 = add i32 %add77, %mul48
  %and58 = and i32 %sub53, %neg
  %add43 = add i32 %leftline_buf_ctrl_size.0, 255
  %and44 = and i32 %add43, -256
  %cond = select i1 %ten_bit, i32 10, i32 8
  %mul18 = mul i32 %mul5, %cond
  %add20 = add i32 %mul18, 1279
  %and21 = and i32 %add20, -256
  %and26 = add i32 %mul18, 1534
  %mul27 = and i32 %and26, -512
  %shl = shl i32 %mul, 4
  %add13 = add i32 %shl, 511
  %and = and i32 %add13, -256
  %add223 = shl i32 %6, 7
  %add226 = add i32 %add223, 4480
  %mul227 = and i32 %add226, -512
  %9 = lshr i32 %mul5, 1
  %mul230 = and i32 %9, 2147483632
  %add231 = add nuw i32 %mul230, 255
  %and232 = and i32 %add231, -256
  %and15 = add i32 %4, 510
  %reass.add = and i32 %and15, -512
  %reass.add353 = add i32 %and104, %and94
  %reass.add354 = add i32 %reass.add353, %and84
  %reass.mul = mul i32 %reass.add354, %num_vpp_pipes
  %reass.add355 = add i32 %and170, %and141
  %reass.mul356 = mul i32 %reass.add355, 6
  %add237 = add i32 %mul215, 407360
  %add238 = add i32 %add237, %mul27
  %add239 = add i32 %add238, %and21
  %add240 = add i32 %add239, %reass.add
  %add241 = add i32 %add240, %and111
  %add242 = add i32 %add241, %and58
  %add243 = add i32 %add242, %and175
  %add244 = add i32 %add243, %and179
  %add245 = add i32 %add244, %and184
  %add246 = add i32 %add245, %and232
  %add247 = add i32 %add246, %and
  %add248 = add i32 %add247, %mul227
  %add249 = add i32 %add248, %and71
  %add250 = add i32 %add249, %mul214
  %add255 = add i32 %add250, %mul127
  %add256 = add i32 %add255, %reass.mul
  %add257 = add i32 %add256, %and44
  %add258 = add i32 %add257, %reass.mul356
  %add259 = add i32 %add258, %mul204
  %add260 = add i32 %add259, %mul210
  ret i32 %add260
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @h265e_scratch_size(i32 noundef %width, i32 noundef %height, i32 noundef %work_mode, i32 noundef %num_vpp_pipes, i32 noundef %rc_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i.i = add i32 %width, 31
  %and.i.i = and i32 %add.i.i, -32
  %add1.i.i = add i32 %height, 31
  %and2.i.i = and i32 %add1.i.i, -32
  %mul.i.i = mul i32 %and2.i.i, %and.i.i
  %mul7.i.i = mul i32 %height, %width
  %mul8.i.i = mul i32 %mul7.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 921600, i32 %mul.i.i)
  %cmp.i.i = icmp ult i32 %mul.i.i, 921600
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i.i = mul i32 %mul7.i.i, 6
  br label %if.end13.i.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9437440, i32 %mul.i.i)
  %cmp9.i.i = icmp ult i32 %mul.i.i, 9437440
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.else11.i.i

if.then10.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i.i = lshr i32 %mul8.i.i, 2
  br label %if.end13.i.i

if.else11.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr12.i.i = lshr i32 %mul8.i.i, 3
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.else11.i.i, %if.then10.i.i, %if.then.i.i
  %frame_size.0.i.i = phi i32 [ %shl.i.i, %if.then.i.i ], [ %shr.i.i, %if.then10.i.i ], [ %shr12.i.i, %if.else11.i.i ]
  %0 = zext i32 %rc_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %rc_type, label %if.end13.i.i.calculate_enc_output_frame_size.exit.i_crit_edge [
    i32 16777217, label %if.end13.i.i.if.then16.i.i_crit_edge
    i32 16777224, label %if.end13.i.i.if.then16.i.i_crit_edge1
  ]

if.end13.i.i.if.then16.i.i_crit_edge1:            ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end13.i.i.if.then16.i.i_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end13.i.i.calculate_enc_output_frame_size.exit.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %calculate_enc_output_frame_size.exit.i

if.then16.i.i:                                    ; preds = %if.end13.i.i.if.then16.i.i_crit_edge, %if.end13.i.i.if.then16.i.i_crit_edge1
  %shl17.i.i = shl i32 %frame_size.0.i.i, 1
  br label %calculate_enc_output_frame_size.exit.i

calculate_enc_output_frame_size.exit.i:           ; preds = %if.then16.i.i, %if.end13.i.i.calculate_enc_output_frame_size.exit.i_crit_edge
  %frame_size.1.i.i = phi i32 [ %shl17.i.i, %if.then16.i.i ], [ %frame_size.0.i.i, %if.end13.i.i.calculate_enc_output_frame_size.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %work_mode)
  %cmp.i = icmp eq i32 %work_mode, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %calculate_enc_output_frame_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul19.i.i = mul i32 %frame_size.1.i.i, 5
  %div2034.i.i = lshr i32 %mul19.i.i, 2
  %add21.i.i = add nuw nsw i32 %div2034.i.i, 4095
  %and22.i.i = and i32 %add21.i.i, 2147479552
  %mul.i = mul i32 %and22.i.i, 17
  %div.i = udiv i32 %mul.i, 10
  br label %calculate_enc_scratch_size.exit

if.else.i:                                        ; preds = %calculate_enc_output_frame_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul12.i = mul i32 %mul.i.i, 3
  br label %calculate_enc_scratch_size.exit

calculate_enc_scratch_size.exit:                  ; preds = %if.else.i, %if.then.i
  %total_bitbin_buffers.0.i = phi i32 [ 3, %if.then.i ], [ 1, %if.else.i ]
  %bitbin_size.0.in.in.i = phi i32 [ %div.i, %if.then.i ], [ %mul12.i, %if.else.i ]
  %bitbin_size.0.in.i = add i32 %bitbin_size.0.in.in.i, 255
  %bitbin_size.0.i = and i32 %bitbin_size.0.in.i, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_vpp_pipes)
  %cmp15.i = icmp ugt i32 %num_vpp_pipes, 2
  %div1753.i = zext i1 %cmp15.i to i32
  %size_single_pipe.0.i = lshr exact i32 %bitbin_size.0.i, %div1753.i
  %add20.i = add nuw i32 %size_single_pipe.0.i, 255
  %add22.i = add i32 %width, 32
  %add23.i = add i32 %height, 32
  %mul24.i = mul i32 %add23.i, %add22.i
  %1 = lshr i32 %mul24.i, 4
  %mul25.i = and i32 %1, 268435392
  %and28.i = and i32 %add20.i, -256
  %add29.i = add nuw nsw i32 %mul25.i, 639
  %add30.i = add i32 %add29.i, %and28.i
  %and31.i = and i32 %add30.i, -256
  %mul32.i = mul i32 %total_bitbin_buffers.0.i, %num_vpp_pipes
  %mul35.i = mul i32 %mul32.i, %and31.i
  %add36.i = add i32 %mul35.i, 512
  ret i32 %add36.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @h265e_scratch1_size(i32 noundef %width, i32 noundef %height, i32 noundef %num_ref, i1 noundef zeroext %ten_bit, i32 noundef %num_vpp_pipes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @calculate_enc_scratch1_size(i32 noundef %width, i32 noundef %height, i32 noundef 32, i32 noundef %num_ref, i1 noundef zeroext %ten_bit, i32 noundef %num_vpp_pipes, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vp8e_scratch_size(i32 noundef %width, i32 noundef %height, i32 noundef %work_mode, i32 noundef %num_vpp_pipes, i32 noundef %rc_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i.i = add i32 %width, 31
  %and.i.i = and i32 %add.i.i, -32
  %add1.i.i = add i32 %height, 31
  %and2.i.i = and i32 %add1.i.i, -32
  %mul.i.i = mul i32 %and2.i.i, %and.i.i
  %mul7.i.i = mul i32 %height, %width
  %mul8.i.i = mul i32 %mul7.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 921600, i32 %mul.i.i)
  %cmp.i.i = icmp ult i32 %mul.i.i, 921600
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i.i = mul i32 %mul7.i.i, 6
  br label %if.end13.i.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9437440, i32 %mul.i.i)
  %cmp9.i.i = icmp ult i32 %mul.i.i, 9437440
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.else11.i.i

if.then10.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i.i = lshr i32 %mul8.i.i, 2
  br label %if.end13.i.i

if.else11.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr12.i.i = lshr i32 %mul8.i.i, 3
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.else11.i.i, %if.then10.i.i, %if.then.i.i
  %frame_size.0.i.i = phi i32 [ %shl.i.i, %if.then.i.i ], [ %shr.i.i, %if.then10.i.i ], [ %shr12.i.i, %if.else11.i.i ]
  %0 = zext i32 %rc_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %rc_type, label %if.end13.i.i.calculate_enc_output_frame_size.exit.i_crit_edge [
    i32 16777217, label %if.end13.i.i.if.then16.i.i_crit_edge
    i32 16777224, label %if.end13.i.i.if.then16.i.i_crit_edge1
  ]

if.end13.i.i.if.then16.i.i_crit_edge1:            ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end13.i.i.if.then16.i.i_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end13.i.i.calculate_enc_output_frame_size.exit.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %calculate_enc_output_frame_size.exit.i

if.then16.i.i:                                    ; preds = %if.end13.i.i.if.then16.i.i_crit_edge, %if.end13.i.i.if.then16.i.i_crit_edge1
  %shl17.i.i = shl i32 %frame_size.0.i.i, 1
  br label %calculate_enc_output_frame_size.exit.i

calculate_enc_output_frame_size.exit.i:           ; preds = %if.then16.i.i, %if.end13.i.i.calculate_enc_output_frame_size.exit.i_crit_edge
  %frame_size.1.i.i = phi i32 [ %shl17.i.i, %if.then16.i.i ], [ %frame_size.0.i.i, %if.end13.i.i.calculate_enc_output_frame_size.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %work_mode)
  %cmp.i = icmp eq i32 %work_mode, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %calculate_enc_output_frame_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul19.i.i = mul i32 %frame_size.1.i.i, 5
  %div2034.i.i = lshr i32 %mul19.i.i, 2
  %add21.i.i = add nuw nsw i32 %div2034.i.i, 4095
  %and22.i.i = and i32 %add21.i.i, 2147479552
  %mul.i = mul i32 %and22.i.i, 17
  %div.i = udiv i32 %mul.i, 10
  br label %calculate_enc_scratch_size.exit

if.else.i:                                        ; preds = %calculate_enc_output_frame_size.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %add3.i = add i32 %height, 15
  %and6.i = and i32 %add3.i, -16
  %add.i = add i32 %width, 15
  %and.i = and i32 %add.i, -16
  %mul11.i = mul i32 %and.i, 3
  %mul12.i = mul i32 %mul11.i, %and6.i
  br label %calculate_enc_scratch_size.exit

calculate_enc_scratch_size.exit:                  ; preds = %if.else.i, %if.then.i
  %total_bitbin_buffers.0.i = phi i32 [ 3, %if.then.i ], [ 1, %if.else.i ]
  %bitbin_size.0.in.in.i = phi i32 [ %div.i, %if.then.i ], [ %mul12.i, %if.else.i ]
  %bitbin_size.0.in.i = add i32 %bitbin_size.0.in.in.i, 255
  %bitbin_size.0.i = and i32 %bitbin_size.0.in.i, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_vpp_pipes)
  %cmp15.i = icmp ugt i32 %num_vpp_pipes, 2
  %div1753.i = zext i1 %cmp15.i to i32
  %size_single_pipe.0.i = lshr exact i32 %bitbin_size.0.i, %div1753.i
  %add20.i = add nuw i32 %size_single_pipe.0.i, 255
  %add22.i = add i32 %width, 32
  %add23.i = add i32 %height, 32
  %mul24.i = mul i32 %add23.i, %add22.i
  %1 = lshr i32 %mul24.i, 4
  %mul25.i = and i32 %1, 268435392
  %and28.i = and i32 %add20.i, -256
  %add29.i = add nuw nsw i32 %mul25.i, 639
  %add30.i = add i32 %add29.i, %and28.i
  %and31.i = and i32 %add30.i, -256
  %mul32.i = mul i32 %total_bitbin_buffers.0.i, %num_vpp_pipes
  %mul35.i = mul i32 %mul32.i, %and31.i
  %add36.i = add i32 %mul35.i, 512
  ret i32 %add36.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vp8e_scratch1_size(i32 noundef %width, i32 noundef %height, i32 noundef %num_ref, i1 noundef zeroext %ten_bit, i32 noundef %num_vpp_pipes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @calculate_enc_scratch1_size(i32 noundef %width, i32 noundef %height, i32 noundef 16, i32 noundef %num_ref, i1 noundef zeroext %ten_bit, i32 noundef 1, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @dec_h264_ops, !1, !"dec_h264_ops", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/venus/hfi_plat_bufs_v6.c", i32 1066, i32 31}
!2 = !{ptr @dec_h265_ops, !3, !"dec_h265_ops", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/qcom/venus/hfi_plat_bufs_v6.c", i32 1072, i32 31}
!4 = !{ptr @dec_vp8_ops, !5, !"dec_vp8_ops", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/qcom/venus/hfi_plat_bufs_v6.c", i32 1078, i32 31}
!6 = !{ptr @dec_vp9_ops, !7, !"dec_vp9_ops", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/qcom/venus/hfi_plat_bufs_v6.c", i32 1084, i32 31}
!8 = !{ptr @dec_mpeg2_ops, !9, !"dec_mpeg2_ops", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/qcom/venus/hfi_plat_bufs_v6.c", i32 1090, i32 31}
!10 = !{ptr @enc_h264_ops, !11, !"enc_h264_ops", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/qcom/venus/hfi_plat_bufs_v6.c", i32 1096, i32 31}
!12 = !{ptr @enc_h265_ops, !13, !"enc_h265_ops", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/qcom/venus/hfi_plat_bufs_v6.c", i32 1103, i32 31}
!14 = !{ptr @enc_vp8_ops, !15, !"enc_vp8_ops", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/qcom/venus/hfi_plat_bufs_v6.c", i32 1110, i32 31}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i8 0, i8 2}
