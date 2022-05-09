; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/hantro_hevc.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/hantro_hevc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_ctrl_hevc_sps = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64 }
%struct.hantro_ctx = type { ptr, %struct.v4l2_fh, i8, i32, i32, ptr, %struct.v4l2_pix_format_mplane, ptr, %struct.v4l2_pix_format_mplane, %struct.v4l2_ctrl_handler, i32, ptr, %struct.hantro_postproc_ctx, %union.anon.114 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hantro_postproc_ctx = type { [32 x %struct.hantro_aux_buf] }
%struct.hantro_aux_buf = type { ptr, i32, i32, i32 }
%union.anon.114 = type { %struct.hantro_vp9_dec_hw_ctx }
%struct.hantro_vp9_dec_hw_ctx = type { %struct.hantro_aux_buf, %struct.hantro_aux_buf, %struct.hantro_aux_buf, %struct.v4l2_vp9_frame_symbol_counts, %struct.v4l2_vp9_frame_context, [4 x %struct.v4l2_vp9_frame_context], %struct.hantro_vp9_frame_info, %struct.hantro_vp9_frame_info, i32, i32, i32, i32, [34 x i16], [64 x i16], i32, i32, i32, i32, i32, [8 x i8], [8 x [4 x i16]] }
%struct.v4l2_vp9_frame_symbol_counts = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [2 x [2 x [6 x [6 x ptr]]]]], [4 x [2 x [2 x [6 x [6 x [2 x ptr]]]]]] }
%struct.v4l2_vp9_frame_context = type { [2 x [1 x i8]], [2 x [2 x i8]], [2 x [3 x i8]], [4 x [2 x [2 x [6 x [6 x [3 x i8]]]]]], [3 x i8], [7 x [3 x i8]], [4 x [2 x i8]], [4 x i8], [5 x i8], [5 x [2 x i8]], [5 x i8], [4 x [9 x i8]], [10 x [9 x i8]], [16 x [3 x i8]], %struct.v4l2_vp9_frame_mv_context }
%struct.v4l2_vp9_frame_mv_context = type { [3 x i8], [2 x i8], [2 x [10 x i8]], [2 x i8], [2 x [10 x i8]], [2 x [2 x [3 x i8]]], [2 x [3 x i8]], [2 x i8], [2 x i8] }
%struct.hantro_vp9_frame_info = type { i16, i32, i64 }
%struct.v4l2_ctrl_hevc_pps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, [20 x i8], [22 x i8], i8, i8, i8, [4 x i8], i64 }
%struct.hantro_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.delayed_work }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/media/hantro/hantro_hevc.c\00", [53 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [46 x i8] c"../drivers/staging/media/hantro/hantro_hevc.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 205, i32 6 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hantro_hevc_chroma_offset(ptr nocapture noundef readonly %sps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_depth_luma_minus8 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %sps, i32 0, i32 2
  %0 = ptrtoint ptr %bit_depth_luma_minus8 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bit_depth_luma_minus8, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %cond = select i1 %cmp, i32 1, i32 2
  %2 = ptrtoint ptr %sps to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sps, align 8
  %conv2 = zext i16 %3 to i32
  %pic_height_in_luma_samples = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %sps, i32 0, i32 1
  %4 = ptrtoint ptr %pic_height_in_luma_samples to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pic_height_in_luma_samples, align 2
  %conv3 = zext i16 %5 to i32
  %mul = mul nuw nsw i32 %cond, %conv2
  %mul4 = mul i32 %mul, %conv3
  ret i32 %mul4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hantro_hevc_motion_vectors_offset(ptr nocapture noundef readonly %sps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_depth_luma_minus8.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %sps, i32 0, i32 2
  %0 = ptrtoint ptr %bit_depth_luma_minus8.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bit_depth_luma_minus8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp eq i8 %1, 0
  %cond.i = select i1 %cmp.i, i32 1, i32 2
  %2 = ptrtoint ptr %sps to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sps, align 8
  %conv2.i = zext i16 %3 to i32
  %pic_height_in_luma_samples.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %sps, i32 0, i32 1
  %4 = ptrtoint ptr %pic_height_in_luma_samples.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pic_height_in_luma_samples.i, align 2
  %conv3.i = zext i16 %5 to i32
  %mul.i = mul nuw nsw i32 %conv2.i, 3
  %mul4.i = mul nuw nsw i32 %mul.i, %cond.i
  %mul = mul i32 %mul4.i, %conv3.i
  %div1 = lshr i32 %mul, 1
  %add = add nuw i32 %div1, 15
  %and = and i32 %add, -16
  ret i32 %and
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_hevc_get_ref_buf(ptr nocapture noundef %ctx, i32 noundef %poc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_bufs_poc = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %ref_bufs_poc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_bufs_poc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %poc)
  %cmp1 = icmp eq i32 %1, %poc
  br i1 %cmp1, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %for.inc.15.if.then_crit_edge, %for.inc.14.if.then_crit_edge, %for.inc.13.if.then_crit_edge, %for.inc.12.if.then_crit_edge, %for.inc.11.if.then_crit_edge, %for.inc.10.if.then_crit_edge, %for.inc.9.if.then_crit_edge, %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.011.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ], [ 8, %for.inc.7.if.then_crit_edge ], [ 9, %for.inc.8.if.then_crit_edge ], [ 10, %for.inc.9.if.then_crit_edge ], [ 11, %for.inc.10.if.then_crit_edge ], [ 12, %for.inc.11.if.then_crit_edge ], [ 13, %for.inc.12.if.then_crit_edge ], [ 14, %for.inc.13.if.then_crit_edge ], [ 15, %for.inc.14.if.then_crit_edge ], [ 16, %for.inc.15.if.then_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.011.lcssa
  %ref_bufs_used = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 5, i32 5
  %2 = ptrtoint ptr %ref_bufs_used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_bufs_used, align 4
  %or = or i32 %3, %shl
  store i32 %or, ptr %ref_bufs_used, align 4
  %ref_bufs = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 4
  %dma = getelementptr [17 x %struct.hantro_aux_buf], ptr %ref_bufs, i32 0, i32 %i.011.lcssa, i32 1
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  br label %cleanup

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %poc)
  %cmp1.1 = icmp eq i32 %7, %poc
  br i1 %cmp1.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %poc)
  %cmp1.2 = icmp eq i32 %9, %poc
  br i1 %cmp1.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %poc)
  %cmp1.3 = icmp eq i32 %11, %poc
  br i1 %cmp1.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 3, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %poc)
  %cmp1.4 = icmp eq i32 %13, %poc
  br i1 %cmp1.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 3, i32 5
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %poc)
  %cmp1.5 = icmp eq i32 %15, %poc
  br i1 %cmp1.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %poc)
  %cmp1.6 = icmp eq i32 %17, %poc
  br i1 %cmp1.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %poc)
  %cmp1.7 = icmp eq i32 %19, %poc
  br i1 %cmp1.7, label %for.inc.6.if.then_crit_edge, label %for.inc.7

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 4, i32 2
  %20 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %poc)
  %cmp1.8 = icmp eq i32 %21, %poc
  br i1 %cmp1.8, label %for.inc.7.if.then_crit_edge, label %for.inc.8

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 4, i32 3
  %22 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %poc)
  %cmp1.9 = icmp eq i32 %23, %poc
  br i1 %cmp1.9, label %for.inc.8.if.then_crit_edge, label %for.inc.9

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 4, i32 4
  %24 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %poc)
  %cmp1.10 = icmp eq i32 %25, %poc
  br i1 %cmp1.10, label %for.inc.9.if.then_crit_edge, label %for.inc.10

for.inc.9.if.then_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 4, i32 5
  %26 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %poc)
  %cmp1.11 = icmp eq i32 %27, %poc
  br i1 %cmp1.11, label %for.inc.10.if.then_crit_edge, label %for.inc.11

for.inc.10.if.then_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 5
  %28 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %poc)
  %cmp1.12 = icmp eq i32 %29, %poc
  br i1 %cmp1.12, label %for.inc.11.if.then_crit_edge, label %for.inc.12

for.inc.11.if.then_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.13 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 5, i32 1
  %30 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %poc)
  %cmp1.13 = icmp eq i32 %31, %poc
  br i1 %cmp1.13, label %for.inc.12.if.then_crit_edge, label %for.inc.13

for.inc.12.if.then_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.14 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 5, i32 2
  %32 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %poc)
  %cmp1.14 = icmp eq i32 %33, %poc
  br i1 %cmp1.14, label %for.inc.13.if.then_crit_edge, label %for.inc.14

for.inc.13.if.then_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.14:                                       ; preds = %for.inc.13
  %arrayidx.15 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 5, i32 3
  %34 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %poc)
  %cmp1.15 = icmp eq i32 %35, %poc
  br i1 %cmp1.15, label %for.inc.14.if.then_crit_edge, label %for.inc.15

for.inc.14.if.then_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.15:                                       ; preds = %for.inc.14
  %arrayidx.16 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 5, i32 4
  %36 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %poc)
  %cmp1.16 = icmp eq i32 %37, %poc
  br i1 %cmp1.16, label %for.inc.15.if.then_crit_edge, label %for.inc.15.cleanup_crit_edge

for.inc.15.cleanup_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.15.if.then_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cleanup:                                          ; preds = %for.inc.15.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ 0, %for.inc.15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_hevc_add_ref_buf(ptr nocapture noundef %ctx, i32 noundef %poc, i32 noundef %addr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_bufs_poc = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %ref_bufs_poc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_bufs_poc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %for.inc.15.if.then_crit_edge, %for.inc.14.if.then_crit_edge, %for.inc.13.if.then_crit_edge, %for.inc.12.if.then_crit_edge, %for.inc.11.if.then_crit_edge, %for.inc.10.if.then_crit_edge, %for.inc.9.if.then_crit_edge, %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.015.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ], [ 8, %for.inc.7.if.then_crit_edge ], [ 9, %for.inc.8.if.then_crit_edge ], [ 10, %for.inc.9.if.then_crit_edge ], [ 11, %for.inc.10.if.then_crit_edge ], [ 12, %for.inc.11.if.then_crit_edge ], [ 13, %for.inc.12.if.then_crit_edge ], [ 14, %for.inc.13.if.then_crit_edge ], [ 15, %for.inc.14.if.then_crit_edge ], [ 16, %for.inc.15.if.then_crit_edge ]
  %arrayidx.le = getelementptr [17 x i32], ptr %ref_bufs_poc, i32 0, i32 %i.015.lcssa
  %shl = shl nuw nsw i32 1, %i.015.lcssa
  %ref_bufs_used = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 5, i32 5
  %2 = ptrtoint ptr %ref_bufs_used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_bufs_used, align 4
  %or = or i32 %3, %shl
  store i32 %or, ptr %ref_bufs_used, align 4
  %4 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %poc, ptr %arrayidx.le, align 4
  %ref_bufs = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 4
  %dma = getelementptr [17 x %struct.hantro_aux_buf], ptr %ref_bufs, i32 0, i32 %i.015.lcssa, i32 1
  %5 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %addr, ptr %dma, align 4
  br label %cleanup

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp1.1 = icmp eq i32 %7, -1
  br i1 %cmp1.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp1.2 = icmp eq i32 %9, -1
  br i1 %cmp1.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp1.3 = icmp eq i32 %11, -1
  br i1 %cmp1.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 3, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp1.4 = icmp eq i32 %13, -1
  br i1 %cmp1.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 3, i32 5
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp1.5 = icmp eq i32 %15, -1
  br i1 %cmp1.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp1.6 = icmp eq i32 %17, -1
  br i1 %cmp1.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp1.7 = icmp eq i32 %19, -1
  br i1 %cmp1.7, label %for.inc.6.if.then_crit_edge, label %for.inc.7

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 4, i32 2
  %20 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp1.8 = icmp eq i32 %21, -1
  br i1 %cmp1.8, label %for.inc.7.if.then_crit_edge, label %for.inc.8

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 4, i32 3
  %22 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp1.9 = icmp eq i32 %23, -1
  br i1 %cmp1.9, label %for.inc.8.if.then_crit_edge, label %for.inc.9

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 4, i32 4
  %24 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp1.10 = icmp eq i32 %25, -1
  br i1 %cmp1.10, label %for.inc.9.if.then_crit_edge, label %for.inc.10

for.inc.9.if.then_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 4, i32 5
  %26 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp1.11 = icmp eq i32 %27, -1
  br i1 %cmp1.11, label %for.inc.10.if.then_crit_edge, label %for.inc.11

for.inc.10.if.then_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 5
  %28 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp1.12 = icmp eq i32 %29, -1
  br i1 %cmp1.12, label %for.inc.11.if.then_crit_edge, label %for.inc.12

for.inc.11.if.then_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.13 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 5, i32 1
  %30 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp1.13 = icmp eq i32 %31, -1
  br i1 %cmp1.13, label %for.inc.12.if.then_crit_edge, label %for.inc.13

for.inc.12.if.then_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.14 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 5, i32 2
  %32 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp1.14 = icmp eq i32 %33, -1
  br i1 %cmp1.14, label %for.inc.13.if.then_crit_edge, label %for.inc.14

for.inc.13.if.then_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.14:                                       ; preds = %for.inc.13
  %arrayidx.15 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 5, i32 3
  %34 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp1.15 = icmp eq i32 %35, -1
  br i1 %cmp1.15, label %for.inc.14.if.then_crit_edge, label %for.inc.15

for.inc.14.if.then_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.15:                                       ; preds = %for.inc.14
  %arrayidx.16 = getelementptr %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 5, i32 4
  %36 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp1.16 = icmp eq i32 %37, -1
  br i1 %cmp1.16, label %for.inc.15.if.then_crit_edge, label %for.inc.15.cleanup_crit_edge

for.inc.15.cleanup_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.15.if.then_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cleanup:                                          ; preds = %for.inc.15.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %for.inc.15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_hevc_ref_remove_unused(ptr nocapture noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_bufs_poc = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 3
  %ref_bufs_used = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 5, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [17 x i32], ptr %ref_bufs_poc, i32 0, i32 %i.012
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %ref_bufs_used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_bufs_used, align 4
  %shl = shl nuw nsw i32 1, %i.012
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_hevc_dec_prepare_run(ptr noundef %ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrls1 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1
  tail call void @hantro_start_prepare_run(ptr noundef %ctx) #4
  %call = tail call ptr @hantro_get_ctrl(ptr noundef %ctx, i32 noundef 10030324) #4
  %0 = ptrtoint ptr %ctrls1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %ctrls1, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 205, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end25:                                         ; preds = %entry
  %call26 = tail call ptr @hantro_get_ctrl(ptr noundef %ctx, i32 noundef 10030323) #4
  %scaling = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %scaling to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call26, ptr %scaling, align 4
  %tobool29.not = icmp eq ptr %call26, null
  br i1 %tobool29.not, label %do.end47, label %if.end63, !prof !11

do.end47:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 210, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end63:                                         ; preds = %if.end25
  %call64 = tail call ptr @hantro_get_ctrl(ptr noundef %ctx, i32 noundef 10030320) #4
  %sps = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %sps to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call64, ptr %sps, align 4
  %tobool67.not = icmp eq ptr %call64, null
  br i1 %tobool67.not, label %do.end85, label %if.end101, !prof !11

do.end85:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 215, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end101:                                        ; preds = %if.end63
  %call102 = tail call ptr @hantro_get_ctrl(ptr noundef %ctx, i32 noundef 10030321) #4
  %pps = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 0, i32 3
  %3 = ptrtoint ptr %pps to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call102, ptr %pps, align 4
  %tobool105.not = icmp eq ptr %call102, null
  br i1 %tobool105.not, label %do.end123, label %if.end139, !prof !11

do.end123:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end139:                                        ; preds = %if.end101
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 8
  %6 = ptrtoint ptr %sps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sps, align 4
  %num_tile_columns_minus1.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %call102, i32 0, i32 7
  %8 = ptrtoint ptr %num_tile_columns_minus1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_tile_columns_minus1.i, align 1
  %conv.i = zext i8 %9 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %pic_height_in_luma_samples.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %pic_height_in_luma_samples.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pic_height_in_luma_samples.i, align 2
  %conv4.i = zext i16 %11 to i32
  %add5.i = add nuw nsw i32 %conv4.i, 63
  %and.i = and i32 %add5.i, 131008
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i = icmp eq i8 %9, 0
  br i1 %cmp.i, label %if.end139.cleanup_crit_edge, label %lor.lhs.false.i

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end139
  %num_tile_cols_allocated.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 1, i32 0, i32 0, i32 5
  %12 = ptrtoint ptr %num_tile_cols_allocated.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tile_cols_allocated.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv.i)
  %cmp7.not.not.i = icmp ugt i32 %13, %conv.i
  br i1 %cmp7.not.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %tile_filter.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1
  %14 = ptrtoint ptr %tile_filter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tile_filter.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i.if.end18.i_crit_edge, label %if.then9.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev10.i = getelementptr inbounds %struct.hantro_dev, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev10.i, align 4
  %size12.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %size12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size12.i, align 4
  %dma.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %17, i32 noundef %19, ptr noundef nonnull %15, i32 noundef %21, i32 noundef 0) #4
  %22 = ptrtoint ptr %tile_filter.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %tile_filter.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then9.i, %if.end.i.if.end18.i_crit_edge
  %tile_sao.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2
  %23 = ptrtoint ptr %tile_sao.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tile_sao.i, align 4
  %tobool20.not.i = icmp eq ptr %24, null
  br i1 %tobool20.not.i, label %if.end18.i.if.end31.i_crit_edge, label %if.then21.i

if.end18.i.if.end31.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev22.i = getelementptr inbounds %struct.hantro_dev, ptr %5, i32 0, i32 6
  %25 = ptrtoint ptr %dev22.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev22.i, align 4
  %size24.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %size24.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size24.i, align 4
  %dma28.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %dma28.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma28.i, align 4
  tail call void @dma_free_attrs(ptr noundef %26, i32 noundef %28, ptr noundef nonnull %24, i32 noundef %30, i32 noundef 0) #4
  %31 = ptrtoint ptr %tile_sao.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %tile_sao.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end31.i_crit_edge
  %tile_bsd.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3
  %32 = ptrtoint ptr %tile_bsd.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tile_bsd.i, align 4
  %tobool33.not.i = icmp eq ptr %33, null
  br i1 %tobool33.not.i, label %if.end31.i.if.end44.i_crit_edge, label %if.then34.i

if.end31.i.if.end44.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev35.i = getelementptr inbounds %struct.hantro_dev, ptr %5, i32 0, i32 6
  %34 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev35.i, align 4
  %size37.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 2
  %36 = ptrtoint ptr %size37.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size37.i, align 4
  %dma41.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %dma41.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma41.i, align 4
  tail call void @dma_free_attrs(ptr noundef %35, i32 noundef %37, ptr noundef nonnull %33, i32 noundef %39, i32 noundef 0) #4
  %40 = ptrtoint ptr %tile_bsd.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %tile_bsd.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then34.i, %if.end31.i.if.end44.i_crit_edge
  %mul.i = shl nuw nsw i32 %and.i, 3
  %mul45.i = mul nuw nsw i32 %mul.i, %conv.i
  %dev46.i = getelementptr inbounds %struct.hantro_dev, ptr %5, i32 0, i32 6
  %41 = ptrtoint ptr %dev46.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev46.i, align 4
  %dma48.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %42, i32 noundef %mul45.i, ptr noundef %dma48.i, i32 noundef 3264, i32 noundef 0) #4
  %43 = ptrtoint ptr %tile_filter.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i.i, ptr %tile_filter.i, align 4
  %tobool53.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool53.not.i, label %if.end44.i.if.end102.i_crit_edge, label %if.end55.i

if.end44.i.if.end102.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102.i

if.end55.i:                                       ; preds = %if.end44.i
  %size57.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %size57.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul45.i, ptr %size57.i, align 4
  %mul58.i = mul nuw nsw i32 %conv.i, 48
  %mul60.i = mul nuw nsw i32 %mul58.i, %and.i
  %45 = ptrtoint ptr %dev46.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev46.i, align 4
  %dma63.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2, i32 1
  %call.i211.i = tail call ptr @dma_alloc_attrs(ptr noundef %46, i32 noundef %mul60.i, ptr noundef %dma63.i, i32 noundef 3264, i32 noundef 0) #4
  %47 = ptrtoint ptr %tile_sao.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i211.i, ptr %tile_sao.i, align 4
  %tobool69.not.i = icmp eq ptr %call.i211.i, null
  br i1 %tobool69.not.i, label %if.end55.i.err_free_tile_buffers.i_crit_edge, label %if.end71.i

if.end55.i.err_free_tile_buffers.i_crit_edge:     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_tile_buffers.i

if.end71.i:                                       ; preds = %if.end55.i
  %size73.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %size73.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul60.i, ptr %size73.i, align 4
  %mul74.i = shl nuw nsw i32 %and.i, 2
  %mul76.i = mul nuw nsw i32 %mul74.i, %conv.i
  %49 = ptrtoint ptr %dev46.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev46.i, align 4
  %dma79.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 1
  %call.i212.i = tail call ptr @dma_alloc_attrs(ptr noundef %50, i32 noundef %mul76.i, ptr noundef %dma79.i, i32 noundef 3264, i32 noundef 0) #4
  %51 = ptrtoint ptr %tile_bsd.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i212.i, ptr %tile_bsd.i, align 4
  %tobool85.not.i = icmp eq ptr %call.i212.i, null
  br i1 %tobool85.not.i, label %if.end71.i.err_free_tile_buffers.i_crit_edge, label %if.end87.i

if.end71.i.err_free_tile_buffers.i_crit_edge:     ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_tile_buffers.i

if.end87.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #6
  %size89.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 2
  %52 = ptrtoint ptr %size89.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul76.i, ptr %size89.i, align 4
  %53 = ptrtoint ptr %num_tile_cols_allocated.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add.i, ptr %num_tile_cols_allocated.i, align 4
  br label %cleanup

err_free_tile_buffers.i:                          ; preds = %if.end71.i.err_free_tile_buffers.i_crit_edge, %if.end55.i.err_free_tile_buffers.i_crit_edge
  %54 = ptrtoint ptr %tile_filter.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr.i = load ptr, ptr %tile_filter.i, align 4
  %tobool93.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool93.not.i, label %err_free_tile_buffers.i.if.end102.i_crit_edge, label %if.then94.i

err_free_tile_buffers.i.if.end102.i_crit_edge:    ; preds = %err_free_tile_buffers.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102.i

if.then94.i:                                      ; preds = %err_free_tile_buffers.i
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %dev46.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev46.i, align 4
  %57 = ptrtoint ptr %size57.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size57.i, align 4
  %59 = ptrtoint ptr %dma48.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dma48.i, align 4
  tail call void @dma_free_attrs(ptr noundef %56, i32 noundef %58, ptr noundef nonnull %.pr.i, i32 noundef %60, i32 noundef 0) #4
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then94.i, %err_free_tile_buffers.i.if.end102.i_crit_edge, %if.end44.i.if.end102.i_crit_edge
  %61 = ptrtoint ptr %tile_filter.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %tile_filter.i, align 4
  %62 = ptrtoint ptr %tile_sao.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tile_sao.i, align 4
  %tobool107.not.i = icmp eq ptr %63, null
  br i1 %tobool107.not.i, label %if.end102.i.if.end116.i_crit_edge, label %if.then108.i

if.end102.i.if.end116.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end116.i

if.then108.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %dev46.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev46.i, align 4
  %size111.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2, i32 2
  %66 = ptrtoint ptr %size111.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size111.i, align 4
  %dma115.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %dma115.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma115.i, align 4
  tail call void @dma_free_attrs(ptr noundef %65, i32 noundef %67, ptr noundef nonnull %63, i32 noundef %69, i32 noundef 0) #4
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.then108.i, %if.end102.i.if.end116.i_crit_edge
  %70 = ptrtoint ptr %tile_sao.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %tile_sao.i, align 4
  %71 = ptrtoint ptr %tile_bsd.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tile_bsd.i, align 4
  %tobool121.not.i = icmp eq ptr %72, null
  br i1 %tobool121.not.i, label %if.end116.i.if.end130.i_crit_edge, label %if.then122.i

if.end116.i.if.end130.i_crit_edge:                ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130.i

if.then122.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #6
  %73 = ptrtoint ptr %dev46.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev46.i, align 4
  %size125.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 2
  %75 = ptrtoint ptr %size125.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size125.i, align 4
  %dma129.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 1
  %77 = ptrtoint ptr %dma129.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dma129.i, align 4
  tail call void @dma_free_attrs(ptr noundef %74, i32 noundef %76, ptr noundef nonnull %72, i32 noundef %78, i32 noundef 0) #4
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.then122.i, %if.end116.i.if.end130.i_crit_edge
  %79 = ptrtoint ptr %tile_bsd.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %tile_bsd.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end130.i, %if.end87.i, %lor.lhs.false.i.cleanup_crit_edge, %if.end139.cleanup_crit_edge, %do.end123, %do.end85, %do.end47, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end47 ], [ -22, %do.end85 ], [ -22, %do.end123 ], [ 0, %if.end87.i ], [ -12, %if.end130.i ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %if.end139.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_start_prepare_run(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hantro_get_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_hevc_dec_exit(ptr nocapture noundef %ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %2 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev1 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  %size = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %dma = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %4, i32 noundef %10, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %scaling_lists = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 2, i32 2
  %12 = ptrtoint ptr %scaling_lists to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %scaling_lists, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.end.if.end18_crit_edge, label %if.then10

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev11 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev11, align 4
  %size13 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 2, i32 4
  %16 = ptrtoint ptr %size13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size13, align 4
  %dma17 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 2, i32 3
  %18 = ptrtoint ptr %dma17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma17, align 4
  tail call void @dma_free_attrs(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %13, i32 noundef %19, i32 noundef 0) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %if.end.if.end18_crit_edge
  %20 = ptrtoint ptr %scaling_lists to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %scaling_lists, align 4
  %tile_filter = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1
  %21 = ptrtoint ptr %tile_filter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tile_filter, align 4
  %tobool22.not = icmp eq ptr %22, null
  br i1 %tobool22.not, label %if.end18.if.end31_crit_edge, label %if.then23

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %dev24 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev24, align 4
  %size26 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %size26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size26, align 4
  %dma30 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %dma30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma30, align 4
  tail call void @dma_free_attrs(ptr noundef %24, i32 noundef %26, ptr noundef nonnull %22, i32 noundef %28, i32 noundef 0) #4
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %if.end18.if.end31_crit_edge
  %29 = ptrtoint ptr %tile_filter to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %tile_filter, align 4
  %tile_sao = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2
  %30 = ptrtoint ptr %tile_sao to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tile_sao, align 4
  %tobool35.not = icmp eq ptr %31, null
  br i1 %tobool35.not, label %if.end31.if.end44_crit_edge, label %if.then36

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %dev37 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev37, align 4
  %size39 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %size39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size39, align 4
  %dma43 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %dma43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma43, align 4
  tail call void @dma_free_attrs(ptr noundef %33, i32 noundef %35, ptr noundef nonnull %31, i32 noundef %37, i32 noundef 0) #4
  br label %if.end44

if.end44:                                         ; preds = %if.then36, %if.end31.if.end44_crit_edge
  %38 = ptrtoint ptr %tile_sao to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %tile_sao, align 4
  %tile_bsd = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3
  %39 = ptrtoint ptr %tile_bsd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tile_bsd, align 4
  %tobool48.not = icmp eq ptr %40, null
  br i1 %tobool48.not, label %if.end44.if.end57_crit_edge, label %if.then49

if.end44.if.end57_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %dev50 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev50, align 4
  %size52 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %size52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size52, align 4
  %dma56 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %dma56 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma56, align 4
  tail call void @dma_free_attrs(ptr noundef %42, i32 noundef %44, ptr noundef nonnull %40, i32 noundef %46, i32 noundef 0) #4
  br label %if.end57

if.end57:                                         ; preds = %if.then49, %if.end44.if.end57_crit_edge
  %47 = ptrtoint ptr %tile_bsd to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %tile_bsd, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_hevc_dec_init(ptr noundef %ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %2 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %3 = call ptr @memset(ptr %2, i32 0, i32 448)
  %dev1 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %dma = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef 3536, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %2, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %size6 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 2
  %7 = ptrtoint ptr %size6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3536, ptr %size6, align 4
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  %scaling_lists = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 2, i32 2
  %dma8 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 2, i32 3
  %call.i33 = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef 1024, ptr noundef %dma8, i32 noundef 3264, i32 noundef 0) #4
  %10 = ptrtoint ptr %scaling_lists to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i33, ptr %scaling_lists, align 4
  %tobool14.not = icmp eq ptr %call.i33, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %size18 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 2, i32 4
  %11 = ptrtoint ptr %size18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1024, ptr %size18, align 4
  %ref_bufs_poc.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 3, i32 22, i32 0, i32 0, i32 1, i32 3
  %12 = call ptr @memset(ptr %ref_bufs_poc.i, i32 255, i32 68)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/hantro_hevc.c", i32 205, i32 6}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
