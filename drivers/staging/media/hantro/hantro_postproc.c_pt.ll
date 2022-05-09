; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/hantro_postproc.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/hantro_postproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hantro_postproc_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hantro_fmt = type { ptr, i32, i32, i32, i32, i32, %struct.v4l2_frmsize_stepwise, i8 }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
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
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.hantro_variant = type { i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i8 }

@hantro_g1_postproc_ops = dso_local constant { %struct.hantro_postproc_ops, [24 x i8] } { %struct.hantro_postproc_ops { ptr @hantro_postproc_g1_enable, ptr @hantro_postproc_g1_disable }, [24 x i8] zeroinitializer }, align 32
@hantro_g2_postproc_ops = dso_local constant { %struct.hantro_postproc_ops, [24 x i8] } { %struct.hantro_postproc_ops { ptr @hantro_postproc_g2_enable, ptr @hantro_postproc_g2_disable }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/staging/media/hantro/hantro_postproc.c\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"output format %d not supported by the post-processor, this wasn't expected.\00", [52 x i8] zeroinitializer }, align 32
@hantro_debug = external dso_local local_unnamed_addr global i32, align 4
@vdpu_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s:%d: 0x%04x = 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdpu_write\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/media/hantro/hantro.h\00", [58 x i8] zeroinitializer }, align 32
@vdpu_write._entry_ptr = internal global ptr @vdpu_write._entry, section ".printk_index", align 4
@vdpu_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.5, ptr @.str.4, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdpu_read\00", [22 x i8] zeroinitializer }, align 32
@vdpu_read._entry_ptr = internal global ptr @vdpu_read._entry, section ".printk_index", align 4
@vdpu_write_relaxed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.6, ptr @.str.4, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vdpu_write_relaxed\00", [45 x i8] zeroinitializer }, align 32
@vdpu_write_relaxed._entry_ptr = internal global ptr @vdpu_write_relaxed._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 875967059, i64 892744275, i64 1178161238]
@___asan_gen_.7 = private unnamed_addr constant [23 x i8] c"hantro_g1_postproc_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 200, i32 34 }
@___asan_gen_.10 = private unnamed_addr constant [23 x i8] c"hantro_g2_postproc_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 205, i32 34 }
@___asan_gen_.17 = private constant [50 x i8] c"../drivers/staging/media/hantro/hantro_postproc.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 79, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 398, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 413, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [41 x i8] c"../drivers/staging/media/hantro/hantro.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 392, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @vdpu_read._entry, ptr @vdpu_read._entry_ptr, ptr @vdpu_write._entry, ptr @vdpu_write._entry_ptr, ptr @vdpu_write_relaxed._entry, ptr @vdpu_write_relaxed._entry_ptr, ptr @hantro_g1_postproc_ops, ptr @hantro_g2_postproc_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_g1_postproc_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_g2_postproc_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write_relaxed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hantro_needs_postproc(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %fmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %is_encoder = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %is_encoder to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_encoder, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %postprocessed = getelementptr inbounds %struct.hantro_fmt, ptr %fmt, i32 0, i32 7
  %2 = ptrtoint ptr %postprocessed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %postprocessed, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1 = icmp ne i8 %3, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool1, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_postproc_free(ptr nocapture noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %postproc = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 12
  %dev1 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.hantro_aux_buf], ptr %postproc, i32 0, i32 %i.012
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %size = getelementptr [32 x %struct.hantro_aux_buf], ptr %postproc, i32 0, i32 %i.012, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %dma = getelementptr [32 x %struct.hantro_aux_buf], ptr %postproc, i32 0, i32 %i.012, i32 1
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma, align 4
  %attrs = getelementptr [32 x %struct.hantro_aux_buf], ptr %postproc, i32 0, i32 %i.012, i32 3
  %10 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %attrs, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %3, i32 noundef %9, i32 noundef %11) #5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_postproc_alloc(ptr noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %m2m_ctx1 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %m2m_ctx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx1, align 4
  %num_buffers2 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 7, i32 0, i32 21
  %4 = ptrtoint ptr %num_buffers2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers2, align 4
  %dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8
  %plane_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 5
  %6 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %plane_fmt, align 4
  %vpu_src_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 5
  %8 = ptrtoint ptr %vpu_src_fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vpu_src_fmt, align 8
  %fourcc = getelementptr inbounds %struct.hantro_fmt, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fourcc, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %entry.if.end27_crit_edge [
    i32 875967059, label %if.then
    i32 1178161238, label %if.then8
    i32 892744275, label %if.then19
  ]

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dst_fmt, align 8
  %height = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %sub.i = shl i32 %14, 2
  %17 = add i32 %sub.i, 60
  %mul.i = and i32 %17, -64
  %sub2.i = add i32 %16, 15
  %div37.i = lshr i32 %sub2.i, 4
  %mul4.i = mul i32 %mul.i, %div37.i
  %add5.i = add i32 %7, 32
  %add = add i32 %add5.i, %mul4.i
  br label %if.end27

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dst_fmt, align 8
  %height12 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %height12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height12, align 4
  %conv.i7.i = and i32 %21, 65535
  %add.i8.i = add nuw nsw i32 %conv.i7.i, 63
  %div2.i9.i = lshr i32 %add.i8.i, 6
  %conv.i.i = shl i32 %19, 4
  %add.i.i = and i32 %conv.i.i, 1048560
  %22 = add nuw nsw i32 %add.i.i, 1008
  %mul.i65 = and i32 %22, 2096128
  %mul6.i = mul nuw nsw i32 %mul.i65, %div2.i9.i
  %add14 = add i32 %mul6.i, %7
  br label %if.end27

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dst_fmt, align 8
  %height23 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %height23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height23, align 4
  %mul.i66 = mul i32 %26, %24
  %div1.i = lshr i32 %mul.i66, 4
  %add25 = add i32 %div1.i, %7
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %if.then8, %if.then, %entry.if.end27_crit_edge
  %buf_size.0 = phi i32 [ %add, %if.then ], [ %add14, %if.then8 ], [ %add25, %if.then19 ], [ %7, %entry.if.end27_crit_edge ]
  %postproc = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2867.not = icmp eq i32 %5, 0
  br i1 %cmp2867.not, label %if.end27.cleanup36_crit_edge, label %for.body.lr.ph

if.end27.cleanup36_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup36

for.body.lr.ph:                                   ; preds = %if.end27
  %dev30 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end35.for.body_crit_edge ]
  %arrayidx29 = getelementptr [32 x %struct.hantro_aux_buf], ptr %postproc, i32 0, i32 %i.068
  %attrs = getelementptr [32 x %struct.hantro_aux_buf], ptr %postproc, i32 0, i32 %i.068, i32 3
  %27 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %attrs, align 4
  %28 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev30, align 4
  %dma = getelementptr [32 x %struct.hantro_aux_buf], ptr %postproc, i32 0, i32 %i.068, i32 1
  %call32 = tail call ptr @dma_alloc_attrs(ptr noundef %29, i32 noundef %buf_size.0, ptr noundef %dma, i32 noundef 3264, i32 noundef 16) #5
  %30 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call32, ptr %arrayidx29, align 4
  %tobool.not = icmp eq ptr %call32, null
  br i1 %tobool.not, label %for.body.cleanup36_crit_edge, label %if.end35

for.body.cleanup36_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup36

if.end35:                                         ; preds = %for.body
  %size = getelementptr [32 x %struct.hantro_aux_buf], ptr %postproc, i32 0, i32 %i.068, i32 2
  %31 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %buf_size.0, ptr %size, align 4
  %inc = add nuw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %if.end35.cleanup36_crit_edge, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end35.cleanup36_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup36

cleanup36:                                        ; preds = %if.end35.cleanup36_crit_edge, %for.body.cleanup36_crit_edge, %if.end27.cleanup36_crit_edge
  %retval.2 = phi i32 [ 0, %if.end27.cleanup36_crit_edge ], [ -12, %for.body.cleanup36_crit_edge ], [ 0, %if.end35.cleanup36_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_postproc_disable(ptr noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %variant = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 8
  %postproc_ops = getelementptr inbounds %struct.hantro_variant, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %postproc_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %postproc_ops, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %disable = getelementptr inbounds %struct.hantro_postproc_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %7(ptr noundef %ctx) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_postproc_enable(ptr noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %variant = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 8
  %postproc_ops = getelementptr inbounds %struct.hantro_variant, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %postproc_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %postproc_ops, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %7(ptr noundef %ctx) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hantro_postproc_g1_enable(ptr nocapture noundef readonly %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 240
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !33
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %6 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.vdpu_read_mask.exit.i_crit_edge, label %do.end.i.i.i

entry.vdpu_read_mask.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef 413, i32 noundef 60, i32 noundef %5) #8
  br label %vdpu_read_mask.exit.i

vdpu_read_mask.exit.i:                            ; preds = %do.end.i.i.i, %entry.vdpu_read_mask.exit.i_crit_edge
  %or.i.i = or i32 %5, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %7 = load i32, ptr @hantro_debug, align 4
  %and.i1.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i)
  %tobool.not.i.i = icmp eq i32 %and.i1.i, 0
  br i1 %tobool.not.i.i, label %vdpu_read_mask.exit.i.hantro_reg_write_s.exit_crit_edge, label %do.end.i.i

vdpu_read_mask.exit.i.hantro_reg_write_s.exit_crit_edge: ; preds = %vdpu_read_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write_s.exit

do.end.i.i:                                       ; preds = %vdpu_read_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 398, i32 noundef 60, i32 noundef %or.i.i) #8
  br label %hantro_reg_write_s.exit

hantro_reg_write_s.exit:                          ; preds = %do.end.i.i, %vdpu_read_mask.exit.i.hantro_reg_write_s.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %9 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #5, !srcloc !36
  %vpu_dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %11 = ptrtoint ptr %vpu_dst_fmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vpu_dst_fmt, align 4
  %fourcc = getelementptr inbounds %struct.hantro_fmt, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %14)
  %cond = icmp eq i32 %14, 1448695129
  br i1 %cond, label %hantro_reg_write_s.exit.sw.epilog_crit_edge, label %do.end

hantro_reg_write_s.exit.sw.epilog_crit_edge:      ; preds = %hantro_reg_write_s.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %hantro_reg_write_s.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %14) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %hantro_reg_write_s.exit.sw.epilog_crit_edge
  %dst_pp_fmt.0 = phi i32 [ 0, %do.end ], [ 201326592, %hantro_reg_write_s.exit.sw.epilog_crit_edge ]
  %m2m_ctx = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %15 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %16, i32 0, i32 7
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #5
  %call.i59 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i, i32 noundef 0) #5
  %17 = ptrtoint ptr %call.i59 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i59, align 4
  %19 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i61 = getelementptr i8, ptr %20, i32 244
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i61) #5, !srcloc !33
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %23 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i62 = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i62)
  %tobool.not.i.i.i63 = icmp eq i32 %and.i.i.i62, 0
  br i1 %tobool.not.i.i.i63, label %sw.epilog.vdpu_read_mask.exit.i69_crit_edge, label %do.end.i.i.i65

sw.epilog.vdpu_read_mask.exit.i69_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i69

do.end.i.i.i65:                                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef 413, i32 noundef 61, i32 noundef %22) #8
  br label %vdpu_read_mask.exit.i69

vdpu_read_mask.exit.i69:                          ; preds = %do.end.i.i.i65, %sw.epilog.vdpu_read_mask.exit.i69_crit_edge
  %or.i.i67 = or i32 %22, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %24 = load i32, ptr @hantro_debug, align 4
  %and.i3.i = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i.i68 = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not.i.i68, label %vdpu_read_mask.exit.i69.hantro_reg_write.exit_crit_edge, label %do.end.i.i71

vdpu_read_mask.exit.i69.hantro_reg_write.exit_crit_edge: ; preds = %vdpu_read_mask.exit.i69
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit

do.end.i.i71:                                     ; preds = %vdpu_read_mask.exit.i69
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef 392, i32 noundef 61, i32 noundef %or.i.i67) #8
  br label %hantro_reg_write.exit

hantro_reg_write.exit:                            ; preds = %do.end.i.i71, %vdpu_read_mask.exit.i69.hantro_reg_write.exit_crit_edge
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i.i67) #5
  %26 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i72 = getelementptr i8, ptr %27, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i72, i32 %25) #5, !srcloc !36
  %28 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i74 = getelementptr i8, ptr %29, i32 244
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i74) #5, !srcloc !33
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %32 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i75 = and i32 %32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i75)
  %tobool.not.i.i.i76 = icmp eq i32 %and.i.i.i75, 0
  br i1 %tobool.not.i.i.i76, label %hantro_reg_write.exit.vdpu_read_mask.exit.i83_crit_edge, label %do.end.i.i.i78

hantro_reg_write.exit.vdpu_read_mask.exit.i83_crit_edge: ; preds = %hantro_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i83

do.end.i.i.i78:                                   ; preds = %hantro_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef 413, i32 noundef 61, i32 noundef %31) #8
  br label %vdpu_read_mask.exit.i83

vdpu_read_mask.exit.i83:                          ; preds = %do.end.i.i.i78, %hantro_reg_write.exit.vdpu_read_mask.exit.i83_crit_edge
  %or.i.i80 = or i32 %31, 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %33 = load i32, ptr @hantro_debug, align 4
  %and.i3.i81 = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i81)
  %tobool.not.i.i82 = icmp eq i32 %and.i3.i81, 0
  br i1 %tobool.not.i.i82, label %vdpu_read_mask.exit.i83.hantro_reg_write.exit87_crit_edge, label %do.end.i.i85

vdpu_read_mask.exit.i83.hantro_reg_write.exit87_crit_edge: ; preds = %vdpu_read_mask.exit.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit87

do.end.i.i85:                                     ; preds = %vdpu_read_mask.exit.i83
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef 392, i32 noundef 61, i32 noundef %or.i.i80) #8
  br label %hantro_reg_write.exit87

hantro_reg_write.exit87:                          ; preds = %do.end.i.i85, %vdpu_read_mask.exit.i83.hantro_reg_write.exit87_crit_edge
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i.i80) #5
  %35 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i86 = getelementptr i8, ptr %36, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i86, i32 %34) #5, !srcloc !36
  %37 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i89 = getelementptr i8, ptr %38, i32 244
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i89) #5, !srcloc !33
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %41 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i90 = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i90)
  %tobool.not.i.i.i91 = icmp eq i32 %and.i.i.i90, 0
  br i1 %tobool.not.i.i.i91, label %hantro_reg_write.exit87.vdpu_read_mask.exit.i98_crit_edge, label %do.end.i.i.i93

hantro_reg_write.exit87.vdpu_read_mask.exit.i98_crit_edge: ; preds = %hantro_reg_write.exit87
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i98

do.end.i.i.i93:                                   ; preds = %hantro_reg_write.exit87
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef 413, i32 noundef 61, i32 noundef %40) #8
  br label %vdpu_read_mask.exit.i98

vdpu_read_mask.exit.i98:                          ; preds = %do.end.i.i.i93, %hantro_reg_write.exit87.vdpu_read_mask.exit.i98_crit_edge
  %or.i.i95 = or i32 %40, 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %42 = load i32, ptr @hantro_debug, align 4
  %and.i3.i96 = and i32 %42, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i96)
  %tobool.not.i.i97 = icmp eq i32 %and.i3.i96, 0
  br i1 %tobool.not.i.i97, label %vdpu_read_mask.exit.i98.hantro_reg_write.exit102_crit_edge, label %do.end.i.i100

vdpu_read_mask.exit.i98.hantro_reg_write.exit102_crit_edge: ; preds = %vdpu_read_mask.exit.i98
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit102

do.end.i.i100:                                    ; preds = %vdpu_read_mask.exit.i98
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef 392, i32 noundef 61, i32 noundef %or.i.i95) #8
  br label %hantro_reg_write.exit102

hantro_reg_write.exit102:                         ; preds = %do.end.i.i100, %vdpu_read_mask.exit.i98.hantro_reg_write.exit102_crit_edge
  %43 = tail call i32 @llvm.bswap.i32(i32 %or.i.i95) #5
  %44 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i101 = getelementptr i8, ptr %45, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i101, i32 %43) #5, !srcloc !36
  %46 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i104 = getelementptr i8, ptr %47, i32 244
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i104) #5, !srcloc !33
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %50 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i105 = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i105)
  %tobool.not.i.i.i106 = icmp eq i32 %and.i.i.i105, 0
  br i1 %tobool.not.i.i.i106, label %hantro_reg_write.exit102.vdpu_read_mask.exit.i113_crit_edge, label %do.end.i.i.i108

hantro_reg_write.exit102.vdpu_read_mask.exit.i113_crit_edge: ; preds = %hantro_reg_write.exit102
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i113

do.end.i.i.i108:                                  ; preds = %hantro_reg_write.exit102
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef 413, i32 noundef 61, i32 noundef %49) #8
  br label %vdpu_read_mask.exit.i113

vdpu_read_mask.exit.i113:                         ; preds = %do.end.i.i.i108, %hantro_reg_write.exit102.vdpu_read_mask.exit.i113_crit_edge
  %and.i.i109 = and i32 %49, -32
  %or.i.i110 = or i32 %and.i.i109, 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %51 = load i32, ptr @hantro_debug, align 4
  %and.i3.i111 = and i32 %51, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i111)
  %tobool.not.i.i112 = icmp eq i32 %and.i3.i111, 0
  br i1 %tobool.not.i.i112, label %vdpu_read_mask.exit.i113.hantro_reg_write.exit117_crit_edge, label %do.end.i.i115

vdpu_read_mask.exit.i113.hantro_reg_write.exit117_crit_edge: ; preds = %vdpu_read_mask.exit.i113
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit117

do.end.i.i115:                                    ; preds = %vdpu_read_mask.exit.i113
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef 392, i32 noundef 61, i32 noundef %or.i.i110) #8
  br label %hantro_reg_write.exit117

hantro_reg_write.exit117:                         ; preds = %do.end.i.i115, %vdpu_read_mask.exit.i113.hantro_reg_write.exit117_crit_edge
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i.i110) #5
  %53 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i116 = getelementptr i8, ptr %54, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i116, i32 %52) #5, !srcloc !36
  %55 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i119 = getelementptr i8, ptr %56, i32 264
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i119) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %58 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i120 = and i32 %58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i120)
  %tobool.not.i.i.i121 = icmp eq i32 %and.i.i.i120, 0
  br i1 %tobool.not.i.i.i121, label %hantro_reg_write.exit117.vdpu_read_mask.exit.i126_crit_edge, label %do.end.i.i.i123

hantro_reg_write.exit117.vdpu_read_mask.exit.i126_crit_edge: ; preds = %hantro_reg_write.exit117
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i126

do.end.i.i.i123:                                  ; preds = %hantro_reg_write.exit117
  call void @__sanitizer_cov_trace_pc() #7
  %59 = tail call i32 @llvm.bswap.i32(i32 %57) #5
  %call4.i.i.i122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef 413, i32 noundef 66, i32 noundef %59) #8
  br label %vdpu_read_mask.exit.i126

vdpu_read_mask.exit.i126:                         ; preds = %do.end.i.i.i123, %hantro_reg_write.exit117.vdpu_read_mask.exit.i126_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %60 = load i32, ptr @hantro_debug, align 4
  %and.i3.i124 = and i32 %60, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i124)
  %tobool.not.i.i125 = icmp eq i32 %and.i3.i124, 0
  br i1 %tobool.not.i.i125, label %vdpu_read_mask.exit.i126.hantro_reg_write.exit130_crit_edge, label %do.end.i.i128

vdpu_read_mask.exit.i126.hantro_reg_write.exit130_crit_edge: ; preds = %vdpu_read_mask.exit.i126
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit130

do.end.i.i128:                                    ; preds = %vdpu_read_mask.exit.i126
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef 392, i32 noundef 66, i32 noundef %18) #8
  br label %hantro_reg_write.exit130

hantro_reg_write.exit130:                         ; preds = %do.end.i.i128, %vdpu_read_mask.exit.i126.hantro_reg_write.exit130_crit_edge
  %61 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %62 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i129 = getelementptr i8, ptr %63, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i129, i32 %61) #5, !srcloc !36
  %dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8
  %64 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dst_fmt, align 8
  %sub = add i32 %65, 15
  %div56 = lshr i32 %sub, 4
  %66 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i132 = getelementptr i8, ptr %67, i32 288
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i132) #5, !srcloc !33
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %70 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i133 = and i32 %70, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i133)
  %tobool.not.i.i.i134 = icmp eq i32 %and.i.i.i133, 0
  br i1 %tobool.not.i.i.i134, label %hantro_reg_write.exit130.vdpu_read_mask.exit.i141_crit_edge, label %do.end.i.i.i136

hantro_reg_write.exit130.vdpu_read_mask.exit.i141_crit_edge: ; preds = %hantro_reg_write.exit130
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i141

do.end.i.i.i136:                                  ; preds = %hantro_reg_write.exit130
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef 413, i32 noundef 72, i32 noundef %69) #8
  br label %vdpu_read_mask.exit.i141

vdpu_read_mask.exit.i141:                         ; preds = %do.end.i.i.i136, %hantro_reg_write.exit130.vdpu_read_mask.exit.i141_crit_edge
  %and.i.i137 = and i32 %69, -512
  %and2.i.i = and i32 %div56, 511
  %or.i.i138 = or i32 %and.i.i137, %and2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %71 = load i32, ptr @hantro_debug, align 4
  %and.i3.i139 = and i32 %71, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i139)
  %tobool.not.i.i140 = icmp eq i32 %and.i3.i139, 0
  br i1 %tobool.not.i.i140, label %vdpu_read_mask.exit.i141.hantro_reg_write.exit145_crit_edge, label %do.end.i.i143

vdpu_read_mask.exit.i141.hantro_reg_write.exit145_crit_edge: ; preds = %vdpu_read_mask.exit.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit145

do.end.i.i143:                                    ; preds = %vdpu_read_mask.exit.i141
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef 392, i32 noundef 72, i32 noundef %or.i.i138) #8
  br label %hantro_reg_write.exit145

hantro_reg_write.exit145:                         ; preds = %do.end.i.i143, %vdpu_read_mask.exit.i141.hantro_reg_write.exit145_crit_edge
  %72 = tail call i32 @llvm.bswap.i32(i32 %or.i.i138) #5
  %73 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i144 = getelementptr i8, ptr %74, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i144, i32 %72) #5, !srcloc !36
  %height = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 1
  %75 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %height, align 4
  %77 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i147 = getelementptr i8, ptr %78, i32 288
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i147) #5, !srcloc !33
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %81 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i148 = and i32 %81, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i148)
  %tobool.not.i.i.i149 = icmp eq i32 %and.i.i.i148, 0
  br i1 %tobool.not.i.i.i149, label %hantro_reg_write.exit145.vdpu_read_mask.exit.i157_crit_edge, label %do.end.i.i.i151

hantro_reg_write.exit145.vdpu_read_mask.exit.i157_crit_edge: ; preds = %hantro_reg_write.exit145
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i157

do.end.i.i.i151:                                  ; preds = %hantro_reg_write.exit145
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef 413, i32 noundef 72, i32 noundef %80) #8
  br label %vdpu_read_mask.exit.i157

vdpu_read_mask.exit.i157:                         ; preds = %do.end.i.i.i151, %hantro_reg_write.exit145.vdpu_read_mask.exit.i157_crit_edge
  %and.i.i152 = and i32 %80, -261633
  %sub20 = shl i32 %76, 5
  %82 = add i32 %sub20, 480
  %shl4.i.i = and i32 %82, 261632
  %or.i.i154 = or i32 %and.i.i152, %shl4.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %83 = load i32, ptr @hantro_debug, align 4
  %and.i3.i155 = and i32 %83, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i155)
  %tobool.not.i.i156 = icmp eq i32 %and.i3.i155, 0
  br i1 %tobool.not.i.i156, label %vdpu_read_mask.exit.i157.hantro_reg_write.exit161_crit_edge, label %do.end.i.i159

vdpu_read_mask.exit.i157.hantro_reg_write.exit161_crit_edge: ; preds = %vdpu_read_mask.exit.i157
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit161

do.end.i.i159:                                    ; preds = %vdpu_read_mask.exit.i157
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef 392, i32 noundef 72, i32 noundef %or.i.i154) #8
  br label %hantro_reg_write.exit161

hantro_reg_write.exit161:                         ; preds = %do.end.i.i159, %vdpu_read_mask.exit.i157.hantro_reg_write.exit161_crit_edge
  %84 = tail call i32 @llvm.bswap.i32(i32 %or.i.i154) #5
  %85 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i160 = getelementptr i8, ptr %86, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i160, i32 %84) #5, !srcloc !36
  %87 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i163 = getelementptr i8, ptr %88, i32 340
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i163) #5, !srcloc !33
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %91 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i164 = and i32 %91, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i164)
  %tobool.not.i.i.i165 = icmp eq i32 %and.i.i.i164, 0
  br i1 %tobool.not.i.i.i165, label %hantro_reg_write.exit161.vdpu_read_mask.exit.i172_crit_edge, label %do.end.i.i.i167

hantro_reg_write.exit161.vdpu_read_mask.exit.i172_crit_edge: ; preds = %hantro_reg_write.exit161
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i172

do.end.i.i.i167:                                  ; preds = %hantro_reg_write.exit161
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef 413, i32 noundef 85, i32 noundef %90) #8
  br label %vdpu_read_mask.exit.i172

vdpu_read_mask.exit.i172:                         ; preds = %do.end.i.i.i167, %hantro_reg_write.exit161.vdpu_read_mask.exit.i172_crit_edge
  %and.i.i168 = and i32 %90, 536870911
  %or.i.i169 = or i32 %and.i.i168, 536870912
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %92 = load i32, ptr @hantro_debug, align 4
  %and.i3.i170 = and i32 %92, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i170)
  %tobool.not.i.i171 = icmp eq i32 %and.i3.i170, 0
  br i1 %tobool.not.i.i171, label %vdpu_read_mask.exit.i172.hantro_reg_write.exit176_crit_edge, label %do.end.i.i174

vdpu_read_mask.exit.i172.hantro_reg_write.exit176_crit_edge: ; preds = %vdpu_read_mask.exit.i172
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit176

do.end.i.i174:                                    ; preds = %vdpu_read_mask.exit.i172
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef 392, i32 noundef 85, i32 noundef %or.i.i169) #8
  br label %hantro_reg_write.exit176

hantro_reg_write.exit176:                         ; preds = %do.end.i.i174, %vdpu_read_mask.exit.i172.hantro_reg_write.exit176_crit_edge
  %93 = tail call i32 @llvm.bswap.i32(i32 %or.i.i169) #5
  %94 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i175 = getelementptr i8, ptr %95, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i175, i32 %93) #5, !srcloc !36
  %96 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i178 = getelementptr i8, ptr %97, i32 340
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i178) #5, !srcloc !33
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %100 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i179 = and i32 %100, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i179)
  %tobool.not.i.i.i180 = icmp eq i32 %and.i.i.i179, 0
  br i1 %tobool.not.i.i.i180, label %hantro_reg_write.exit176.vdpu_read_mask.exit.i189_crit_edge, label %do.end.i.i.i182

hantro_reg_write.exit176.vdpu_read_mask.exit.i189_crit_edge: ; preds = %hantro_reg_write.exit176
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i189

do.end.i.i.i182:                                  ; preds = %hantro_reg_write.exit176
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef 413, i32 noundef 85, i32 noundef %99) #8
  br label %vdpu_read_mask.exit.i189

vdpu_read_mask.exit.i189:                         ; preds = %do.end.i.i.i182, %hantro_reg_write.exit176.vdpu_read_mask.exit.i189_crit_edge
  %and.i.i183 = and i32 %99, -469762049
  %or.i.i186 = or i32 %and.i.i183, %dst_pp_fmt.0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %101 = load i32, ptr @hantro_debug, align 4
  %and.i3.i187 = and i32 %101, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i187)
  %tobool.not.i.i188 = icmp eq i32 %and.i3.i187, 0
  br i1 %tobool.not.i.i188, label %vdpu_read_mask.exit.i189.hantro_reg_write.exit193_crit_edge, label %do.end.i.i191

vdpu_read_mask.exit.i189.hantro_reg_write.exit193_crit_edge: ; preds = %vdpu_read_mask.exit.i189
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit193

do.end.i.i191:                                    ; preds = %vdpu_read_mask.exit.i189
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef 392, i32 noundef 85, i32 noundef %or.i.i186) #8
  br label %hantro_reg_write.exit193

hantro_reg_write.exit193:                         ; preds = %do.end.i.i191, %vdpu_read_mask.exit.i189.hantro_reg_write.exit193_crit_edge
  %102 = tail call i32 @llvm.bswap.i32(i32 %or.i.i186) #5
  %103 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i192 = getelementptr i8, ptr %104, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i192, i32 %102) #5, !srcloc !36
  %105 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dst_fmt, align 8
  %107 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i195 = getelementptr i8, ptr %108, i32 340
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i195) #5, !srcloc !33
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %111 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i196 = and i32 %111, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i196)
  %tobool.not.i.i.i197 = icmp eq i32 %and.i.i.i196, 0
  br i1 %tobool.not.i.i.i197, label %hantro_reg_write.exit193.vdpu_read_mask.exit.i206_crit_edge, label %do.end.i.i.i199

hantro_reg_write.exit193.vdpu_read_mask.exit.i206_crit_edge: ; preds = %hantro_reg_write.exit193
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i206

do.end.i.i.i199:                                  ; preds = %hantro_reg_write.exit193
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef 413, i32 noundef 85, i32 noundef %110) #8
  br label %vdpu_read_mask.exit.i206

vdpu_read_mask.exit.i206:                         ; preds = %do.end.i.i.i199, %hantro_reg_write.exit193.vdpu_read_mask.exit.i206_crit_edge
  %and.i.i200 = and i32 %110, -32753
  %and2.i.i201 = shl i32 %106, 4
  %shl4.i.i202 = and i32 %and2.i.i201, 32752
  %or.i.i203 = or i32 %and.i.i200, %shl4.i.i202
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %112 = load i32, ptr @hantro_debug, align 4
  %and.i3.i204 = and i32 %112, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i204)
  %tobool.not.i.i205 = icmp eq i32 %and.i3.i204, 0
  br i1 %tobool.not.i.i205, label %vdpu_read_mask.exit.i206.hantro_reg_write.exit210_crit_edge, label %do.end.i.i208

vdpu_read_mask.exit.i206.hantro_reg_write.exit210_crit_edge: ; preds = %vdpu_read_mask.exit.i206
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit210

do.end.i.i208:                                    ; preds = %vdpu_read_mask.exit.i206
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef 392, i32 noundef 85, i32 noundef %or.i.i203) #8
  br label %hantro_reg_write.exit210

hantro_reg_write.exit210:                         ; preds = %do.end.i.i208, %vdpu_read_mask.exit.i206.hantro_reg_write.exit210_crit_edge
  %113 = tail call i32 @llvm.bswap.i32(i32 %or.i.i203) #5
  %114 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i209 = getelementptr i8, ptr %115, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i209, i32 %113) #5, !srcloc !36
  %116 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %height, align 4
  %118 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i212 = getelementptr i8, ptr %119, i32 340
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i212) #5, !srcloc !33
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %122 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i213 = and i32 %122, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i213)
  %tobool.not.i.i.i214 = icmp eq i32 %and.i.i.i213, 0
  br i1 %tobool.not.i.i.i214, label %hantro_reg_write.exit210.vdpu_read_mask.exit.i223_crit_edge, label %do.end.i.i.i216

hantro_reg_write.exit210.vdpu_read_mask.exit.i223_crit_edge: ; preds = %hantro_reg_write.exit210
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i223

do.end.i.i.i216:                                  ; preds = %hantro_reg_write.exit210
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef 413, i32 noundef 85, i32 noundef %121) #8
  br label %vdpu_read_mask.exit.i223

vdpu_read_mask.exit.i223:                         ; preds = %do.end.i.i.i216, %hantro_reg_write.exit210.vdpu_read_mask.exit.i223_crit_edge
  %and.i.i217 = and i32 %121, -67076097
  %and2.i.i218 = shl i32 %117, 15
  %shl4.i.i219 = and i32 %and2.i.i218, 67076096
  %or.i.i220 = or i32 %and.i.i217, %shl4.i.i219
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %123 = load i32, ptr @hantro_debug, align 4
  %and.i3.i221 = and i32 %123, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i221)
  %tobool.not.i.i222 = icmp eq i32 %and.i3.i221, 0
  br i1 %tobool.not.i.i222, label %vdpu_read_mask.exit.i223.hantro_reg_write.exit227_crit_edge, label %do.end.i.i225

vdpu_read_mask.exit.i223.hantro_reg_write.exit227_crit_edge: ; preds = %vdpu_read_mask.exit.i223
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit227

do.end.i.i225:                                    ; preds = %vdpu_read_mask.exit.i223
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i224 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef 392, i32 noundef 85, i32 noundef %or.i.i220) #8
  br label %hantro_reg_write.exit227

hantro_reg_write.exit227:                         ; preds = %do.end.i.i225, %vdpu_read_mask.exit.i223.hantro_reg_write.exit227_crit_edge
  %124 = tail call i32 @llvm.bswap.i32(i32 %or.i.i220) #5
  %125 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i226 = getelementptr i8, ptr %126, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i226, i32 %124) #5, !srcloc !36
  %127 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dst_fmt, align 8
  %129 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i229 = getelementptr i8, ptr %130, i32 352
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i229) #5, !srcloc !33
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %133 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i230 = and i32 %133, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i230)
  %tobool.not.i.i.i231 = icmp eq i32 %and.i.i.i230, 0
  br i1 %tobool.not.i.i.i231, label %hantro_reg_write.exit227.vdpu_read_mask.exit.i240_crit_edge, label %do.end.i.i.i233

hantro_reg_write.exit227.vdpu_read_mask.exit.i240_crit_edge: ; preds = %hantro_reg_write.exit227
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i240

do.end.i.i.i233:                                  ; preds = %hantro_reg_write.exit227
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i232 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef 413, i32 noundef 88, i32 noundef %132) #8
  br label %vdpu_read_mask.exit.i240

vdpu_read_mask.exit.i240:                         ; preds = %do.end.i.i.i233, %hantro_reg_write.exit227.vdpu_read_mask.exit.i240_crit_edge
  %and.i.i234 = and i32 %132, 8388607
  %sub29 = shl i32 %128, 19
  %134 = add i32 %sub29, 7864320
  %and2.i.i235 = and i32 %134, -8388608
  %or.i.i237 = or i32 %and.i.i234, %and2.i.i235
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %135 = load i32, ptr @hantro_debug, align 4
  %and.i3.i238 = and i32 %135, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i238)
  %tobool.not.i.i239 = icmp eq i32 %and.i3.i238, 0
  br i1 %tobool.not.i.i239, label %vdpu_read_mask.exit.i240.hantro_reg_write.exit244_crit_edge, label %do.end.i.i242

vdpu_read_mask.exit.i240.hantro_reg_write.exit244_crit_edge: ; preds = %vdpu_read_mask.exit.i240
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit244

do.end.i.i242:                                    ; preds = %vdpu_read_mask.exit.i240
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i241 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef 392, i32 noundef 88, i32 noundef %or.i.i237) #8
  br label %hantro_reg_write.exit244

hantro_reg_write.exit244:                         ; preds = %do.end.i.i242, %vdpu_read_mask.exit.i240.hantro_reg_write.exit244_crit_edge
  %136 = tail call i32 @llvm.bswap.i32(i32 %or.i.i237) #5
  %137 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i243 = getelementptr i8, ptr %138, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i243, i32 %136) #5, !srcloc !36
  %139 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dst_fmt, align 8
  %141 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i246 = getelementptr i8, ptr %142, i32 368
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i246) #5, !srcloc !33
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %145 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i247 = and i32 %145, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i247)
  %tobool.not.i.i.i248 = icmp eq i32 %and.i.i.i247, 0
  br i1 %tobool.not.i.i.i248, label %hantro_reg_write.exit244.vdpu_read_mask.exit.i256_crit_edge, label %do.end.i.i.i250

hantro_reg_write.exit244.vdpu_read_mask.exit.i256_crit_edge: ; preds = %hantro_reg_write.exit244
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i256

do.end.i.i.i250:                                  ; preds = %hantro_reg_write.exit244
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i249 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef 413, i32 noundef 92, i32 noundef %144) #8
  br label %vdpu_read_mask.exit.i256

vdpu_read_mask.exit.i256:                         ; preds = %do.end.i.i.i250, %hantro_reg_write.exit244.vdpu_read_mask.exit.i256_crit_edge
  %and.i.i251 = and i32 %144, -4096
  %and2.i.i252 = and i32 %140, 4095
  %or.i.i253 = or i32 %and.i.i251, %and2.i.i252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %146 = load i32, ptr @hantro_debug, align 4
  %and.i3.i254 = and i32 %146, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i254)
  %tobool.not.i.i255 = icmp eq i32 %and.i3.i254, 0
  br i1 %tobool.not.i.i255, label %vdpu_read_mask.exit.i256.hantro_reg_write.exit260_crit_edge, label %do.end.i.i258

vdpu_read_mask.exit.i256.hantro_reg_write.exit260_crit_edge: ; preds = %vdpu_read_mask.exit.i256
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit260

do.end.i.i258:                                    ; preds = %vdpu_read_mask.exit.i256
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i257 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef 392, i32 noundef 92, i32 noundef %or.i.i253) #8
  br label %hantro_reg_write.exit260

hantro_reg_write.exit260:                         ; preds = %do.end.i.i258, %vdpu_read_mask.exit.i256.hantro_reg_write.exit260_crit_edge
  %147 = tail call i32 @llvm.bswap.i32(i32 %or.i.i253) #5
  %148 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i259 = getelementptr i8, ptr %149, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i259, i32 %147) #5, !srcloc !36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hantro_postproc_g1_disable(ptr nocapture noundef readonly %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 240
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !33
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %6 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.vdpu_read_mask.exit.i_crit_edge, label %do.end.i.i.i

entry.vdpu_read_mask.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef 413, i32 noundef 60, i32 noundef %5) #8
  br label %vdpu_read_mask.exit.i

vdpu_read_mask.exit.i:                            ; preds = %do.end.i.i.i, %entry.vdpu_read_mask.exit.i_crit_edge
  %and.i.i = and i32 %5, -3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %7 = load i32, ptr @hantro_debug, align 4
  %and.i1.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i)
  %tobool.not.i.i = icmp eq i32 %and.i1.i, 0
  br i1 %tobool.not.i.i, label %vdpu_read_mask.exit.i.hantro_reg_write_s.exit_crit_edge, label %do.end.i.i

vdpu_read_mask.exit.i.hantro_reg_write_s.exit_crit_edge: ; preds = %vdpu_read_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write_s.exit

do.end.i.i:                                       ; preds = %vdpu_read_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 398, i32 noundef 60, i32 noundef %and.i.i) #8
  br label %hantro_reg_write_s.exit

hantro_reg_write_s.exit:                          ; preds = %do.end.i.i, %vdpu_read_mask.exit.i.hantro_reg_write_s.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  %9 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #5, !srcloc !36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hantro_postproc_g2_enable(ptr nocapture noundef readonly %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8
  %2 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst_fmt, align 8
  %height = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %mul = mul i32 %5, %3
  %m2m_ctx.i = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 1, i32 10
  %6 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %7, i32 0, i32 7
  %call.i.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i.i) #5
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %call.i.i, i32 noundef 0) #5
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %10 = load i32, ptr @hantro_debug, align 4
  %and.i.i = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.hantro_write_addr.exit_crit_edge, label %do.end.i.i

entry.hantro_write_addr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 398, i32 noundef 175, i32 noundef %9) #8
  br label %hantro_write_addr.exit

hantro_write_addr.exit:                           ; preds = %do.end.i.i, %entry.hantro_write_addr.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  %dec_base.i.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #5, !srcloc !36
  %add = add i32 %9, %mul
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %14 = load i32, ptr @hantro_debug, align 4
  %and.i.i10 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i10)
  %tobool.not.i.i11 = icmp eq i32 %and.i.i10, 0
  br i1 %tobool.not.i.i11, label %hantro_write_addr.exit.hantro_write_addr.exit16_crit_edge, label %do.end.i.i13

hantro_write_addr.exit.hantro_write_addr.exit16_crit_edge: ; preds = %hantro_write_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_write_addr.exit16

do.end.i.i13:                                     ; preds = %hantro_write_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 398, i32 noundef 177, i32 noundef %add) #8
  br label %hantro_write_addr.exit16

hantro_write_addr.exit16:                         ; preds = %do.end.i.i13, %hantro_write_addr.exit.hantro_write_addr.exit16_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %add) #5
  %16 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i.i15 = getelementptr i8, ptr %17, i32 708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15, i32 %15) #5, !srcloc !36
  %18 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !33
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %22 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %hantro_write_addr.exit16.vdpu_read_mask.exit.i_crit_edge, label %do.end.i.i.i

hantro_write_addr.exit16.vdpu_read_mask.exit.i_crit_edge: ; preds = %hantro_write_addr.exit16
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i

do.end.i.i.i:                                     ; preds = %hantro_write_addr.exit16
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef 413, i32 noundef 3, i32 noundef %21) #8
  br label %vdpu_read_mask.exit.i

vdpu_read_mask.exit.i:                            ; preds = %do.end.i.i.i, %hantro_write_addr.exit16.vdpu_read_mask.exit.i_crit_edge
  %or.i.i = or i32 %21, 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %23 = load i32, ptr @hantro_debug, align 4
  %and.i3.i = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i.i18 = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not.i.i18, label %vdpu_read_mask.exit.i.hantro_reg_write.exit_crit_edge, label %do.end.i.i20

vdpu_read_mask.exit.i.hantro_reg_write.exit_crit_edge: ; preds = %vdpu_read_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit

do.end.i.i20:                                     ; preds = %vdpu_read_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef 392, i32 noundef 3, i32 noundef %or.i.i) #8
  br label %hantro_reg_write.exit

hantro_reg_write.exit:                            ; preds = %do.end.i.i20, %vdpu_read_mask.exit.i.hantro_reg_write.exit_crit_edge
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %25 = ptrtoint ptr %dec_base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dec_base.i.i, align 8
  %add.ptr.i.i21 = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21, i32 %24) #5, !srcloc !36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hantro_postproc_g2_disable(ptr nocapture noundef readonly %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dec_base.i.i.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !33
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %6 = load i32, ptr @hantro_debug, align 4
  %and.i.i.i = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.vdpu_read_mask.exit.i_crit_edge, label %do.end.i.i.i

entry.vdpu_read_mask.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read_mask.exit.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef 413, i32 noundef 3, i32 noundef %5) #8
  br label %vdpu_read_mask.exit.i

vdpu_read_mask.exit.i:                            ; preds = %do.end.i.i.i, %entry.vdpu_read_mask.exit.i_crit_edge
  %and.i.i = and i32 %5, -65537
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %7 = load i32, ptr @hantro_debug, align 4
  %and.i3.i = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i.i = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not.i.i, label %vdpu_read_mask.exit.i.hantro_reg_write.exit_crit_edge, label %do.end.i.i

vdpu_read_mask.exit.i.hantro_reg_write.exit_crit_edge: ; preds = %vdpu_read_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hantro_reg_write.exit

do.end.i.i:                                       ; preds = %vdpu_read_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef 392, i32 noundef 3, i32 noundef %and.i.i) #8
  br label %hantro_reg_write.exit

hantro_reg_write.exit:                            ; preds = %do.end.i.i, %vdpu_read_mask.exit.i.hantro_reg_write.exit_crit_edge
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  %9 = ptrtoint ptr %dec_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dec_base.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #5, !srcloc !36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !17, !19, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @hantro_g1_postproc_ops, !1, !"hantro_g1_postproc_ops", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/hantro_postproc.c", i32 200, i32 34}
!2 = !{ptr @hantro_g2_postproc_ops, !3, !"hantro_g2_postproc_ops", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/hantro/hantro_postproc.c", i32 205, i32 34}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/hantro/hantro_postproc.c", i32 79, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/staging/media/hantro/hantro.h", i32 398, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vdpu_write._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @vdpu_write._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/media/hantro/hantro.h", i32 413, i32 2}
!15 = !{ptr @vdpu_read._entry, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @vdpu_read._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"hantro_g1_postproc_regs", i1 false, i1 false}
!18 = !{!"../drivers/staging/media/hantro/hantro_postproc.c", i32 37, i32 42}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/media/hantro/hantro.h", i32 392, i32 2}
!21 = !{ptr @vdpu_write_relaxed._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @vdpu_write_relaxed._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i8 0, i8 2}
!33 = !{i64 6221336}
!34 = !{i64 2156552508}
!35 = !{i64 2156551499}
!36 = !{i64 6220918}
