; ModuleID = '/llk/IR_all_yes/drivers/staging/media/sunxi/cedrus/cedrus_h265.c_pt.bc'
source_filename = "../drivers/staging/media/sunxi/cedrus/cedrus_h265.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cedrus_dec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cedrus_ctx = type { %struct.v4l2_fh, ptr, %struct.v4l2_pix_format, %struct.v4l2_pix_format, i32, %struct.v4l2_ctrl_handler, ptr, %union.anon.97 }
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
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.96, i32, i32 }
%union.anon.96 = type { i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.cedrus_dev = type { %struct.v4l2_device, %struct.video_device, %struct.media_device, [2 x %struct.media_pad], ptr, ptr, ptr, [4 x ptr], %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.cedrus_run = type { ptr, ptr, %union.anon.95 }
%union.anon.95 = type { %struct.cedrus_h264_run }
%struct.cedrus_h264_run = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_hevc_slice_params = type { i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [16 x i8], [16 x i8], i8, %struct.v4l2_hevc_pred_weight_table, i64 }
%struct.v4l2_hevc_pred_weight_table = type { [16 x i8], [16 x i8], [16 x [2 x i8]], [16 x [2 x i8]], [16 x i8], [16 x i8], [16 x [2 x i8]], [16 x [2 x i8]], [6 x i8], i8, i8 }
%struct.v4l2_ctrl_hevc_sps = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.v4l2_ctrl_hevc_pps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, [20 x i8], [22 x i8], i8, i8, i8, [4 x i8], i64 }
%struct.v4l2_ctrl_hevc_decode_params = type { i32, i8, [16 x %struct.v4l2_hevc_dpb_entry], i8, i8, i8, [16 x i8], [16 x i8], [16 x i8], i64 }
%struct.v4l2_hevc_dpb_entry = type { i64, i8, i8, [2 x i16], [2 x i8] }
%struct.v4l2_ctrl_hevc_scaling_matrix = type { [6 x [16 x i8]], [6 x [64 x i8]], [6 x [64 x i8]], [2 x [64 x i8]], [6 x i8], [2 x i8] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }
%struct.cedrus_h265_sram_pred_weight = type { i8, i8 }

@cedrus_dec_ops_h265 = dso_local global { %struct.cedrus_dec_ops, [36 x i8] } { %struct.cedrus_dec_ops { ptr @cedrus_h265_irq_clear, ptr @cedrus_h265_irq_disable, ptr @cedrus_h265_irq_status, ptr @cedrus_h265_setup, ptr @cedrus_h265_start, ptr @cedrus_h265_stop, ptr @cedrus_h265_trigger }, [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"cedrus_dec_ops_h265\00", align 1
@___asan_gen_.2 = private constant [52 x i8] c"../drivers/staging/media/sunxi/cedrus/cedrus_h265.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 708, i32 23 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @cedrus_dec_ops_h265], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_dec_ops_h265 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_h265_irq_clear(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 1336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 117440512) #4, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_h265_irq_disable(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 1328
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %5 = and i32 %4, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add.ptr.i5 = getelementptr i8, ptr %7, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %5) #4, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_h265_irq_status(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 1336
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %5 = and i32 %4, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %5)
  %.not = icmp eq i32 %5, 16777216
  %retval.0 = select i1 %.not, i32 2, i32 1
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_h265_setup(ptr noundef %ctx, ptr nocapture noundef readonly %run) #0 align 64 {
entry:
  %pic_order_cnt.i = alloca [2 x i32], align 4
  %pic_order_cnt = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pic_order_cnt) #4
  %2 = ptrtoint ptr %pic_order_cnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pic_order_cnt, align 4, !annotation !15
  %3 = getelementptr inbounds [2 x i32], ptr %pic_order_cnt, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !15
  %5 = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %pps3 = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %pps3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pps3, align 4
  %slice_params4 = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %slice_params4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slice_params4, align 4
  %decode_params5 = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 3
  %12 = ptrtoint ptr %decode_params5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %decode_params5, align 4
  %pred_weight_table6 = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 24
  %log2_min_luma_coding_block_size_minus3 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %7, i32 0, i32 8
  %14 = ptrtoint ptr %log2_min_luma_coding_block_size_minus3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %log2_min_luma_coding_block_size_minus3, align 2
  %conv = zext i8 %15 to i32
  %add = add nuw nsw i32 %conv, 3
  %log2_diff_max_min_luma_coding_block_size = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %7, i32 0, i32 9
  %16 = ptrtoint ptr %log2_diff_max_min_luma_coding_block_size to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %log2_diff_max_min_luma_coding_block_size, align 1
  %conv7 = zext i8 %17 to i32
  %add8 = add nuw nsw i32 %add, %conv7
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %7, align 8
  %conv9 = zext i16 %19 to i32
  %notmask = shl nsw i32 -1, %add8
  %add10 = xor i32 %notmask, -1
  %sub = add i32 %add10, %conv9
  %div633 = lshr i32 %sub, %add8
  %mv_col_buf_size = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 2
  %20 = ptrtoint ptr %mv_col_buf_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mv_col_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then:                                          ; preds = %entry
  %codec = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7
  %dst = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 1
  %22 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dst, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %num_buffers11 = getelementptr inbounds %struct.vb2_queue, ptr %25, i32 0, i32 21
  %26 = ptrtoint ptr %num_buffers11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_buffers11, align 4
  %src_fmt = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 2
  %28 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_fmt, align 4
  %sub13 = add i32 %29, %add10
  %div14634 = lshr i32 %sub13, %add8
  %height = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height, align 4
  %sub17 = add i32 %31, %add10
  %div18635 = lshr i32 %sub17, %add8
  %mul = mul i32 %div14634, 160
  %mul19 = mul i32 %mul, %div18635
  %add20 = add i32 %mul19, 1024
  %mv_col_buf_unit_size = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 3
  %32 = ptrtoint ptr %mv_col_buf_unit_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add20, ptr %mv_col_buf_unit_size, align 4
  %mul24 = mul i32 %add20, %27
  %33 = ptrtoint ptr %mv_col_buf_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul24, ptr %mv_col_buf_size, align 4
  %dev27 = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev27, align 4
  %mv_col_buf_addr = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 1
  %call = tail call ptr @dma_alloc_attrs(ptr noundef %35, i32 noundef %mul24, ptr noundef %mv_col_buf_addr, i32 noundef 3264, i32 noundef 16) #4
  %36 = ptrtoint ptr %codec to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call, ptr %codec, align 4
  %tobool34.not = icmp eq ptr %call, null
  br i1 %tobool34.not, label %if.then35, label %if.then.if.end38_crit_edge

if.then.if.end38_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then35:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %mv_col_buf_size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %mv_col_buf_size, align 4
  br label %cleanup415

if.end38:                                         ; preds = %if.then.if.end38_crit_edge, %entry.if.end38_crit_edge
  %call39 = tail call i32 @cedrus_engine_enable(ptr noundef %ctx, i32 noundef 2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 9
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %39, i32 1348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !12
  %40 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %11, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #4
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 8
  %add.ptr.i642 = getelementptr i8, ptr %44, i32 1352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i642, i32 %42) #4, !srcloc !12
  %45 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %run, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %46, i32 noundef 0) #4
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call.i, align 4
  %shr = lshr i32 %48, 8
  %or43 = or i32 %shr, 1879048192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %49 = tail call i32 @llvm.bswap.i32(i32 %or43) #4
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 8
  %add.ptr.i644 = getelementptr i8, ptr %51, i32 1344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i644, i32 %49) #4, !srcloc !12
  %52 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %11, align 8
  %sub46 = add i32 %53, 7
  %div47636 = lshr i32 %sub46, 3
  %add48 = add i32 %div47636, %48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %54 = tail call i32 @llvm.bswap.i32(i32 %add48)
  %55 = shl i32 %54, 8
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 8
  %add.ptr.i646 = getelementptr i8, ptr %57, i32 1356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i646, i32 %55) #4, !srcloc !12
  %slice_segment_addr = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 20
  %58 = ptrtoint ptr %slice_segment_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %slice_segment_addr, align 4
  %.frozen = freeze i32 %59
  %div633.frozen = freeze i32 %div633
  %div53 = udiv i32 %.frozen, %div633.frozen
  %60 = mul i32 %div53, %div633.frozen
  %rem.decomposed = sub i32 %.frozen, %60
  %and51 = and i32 %rem.decomposed, 1023
  %shl54 = shl i32 %div53, 16
  %and55 = and i32 %shl54, 67043328
  %or56 = or i32 %and55, %and51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %61 = tail call i32 @llvm.bswap.i32(i32 %or56) #4
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 8
  %add.ptr.i648 = getelementptr i8, ptr %63, i32 1324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i648, i32 %61) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 8
  %add.ptr.i650 = getelementptr i8, ptr %65, i32 1384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i650, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 8
  %add.ptr.i652 = getelementptr i8, ptr %67, i32 1388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i652, i32 0) #4, !srcloc !12
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %68 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %m2m_ctx, align 4
  %new_frame = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %new_frame to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %new_frame, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool57.not = icmp eq i8 %71, 0
  br i1 %tobool57.not, label %if.end38.if.end59_crit_edge, label %if.then58

if.end38.if.end59_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

if.then58:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %72 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i, align 8
  %add.ptr.i654 = getelementptr i8, ptr %73, i32 1340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i654, i32 0) #4, !srcloc !12
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end38.if.end59_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 8
  %add.ptr.i656 = getelementptr i8, ptr %75, i32 1332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i656, i32 117440512) #4, !srcloc !12
  %data_bit_offset = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 1
  %76 = ptrtoint ptr %data_bit_offset to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data_bit_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp18.i = icmp sgt i32 %77, 0
  br i1 %cmp18.i, label %if.end59.while.body.i_crit_edge, label %if.end59.cedrus_h265_skip_bits.exit_crit_edge

if.end59.cedrus_h265_skip_bits.exit_crit_edge:    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_h265_skip_bits.exit

if.end59.while.body.i_crit_edge:                  ; preds = %if.end59
  br label %while.body.i

while.body.i:                                     ; preds = %while.end.i.while.body.i_crit_edge, %if.end59.while.body.i_crit_edge
  %count.019.i = phi i32 [ %add.i, %while.end.i.while.body.i_crit_edge ], [ 0, %if.end59.while.body.i_crit_edge ]
  %sub.i = sub i32 %77, %count.019.i
  %78 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 32) #4
  %and.i = shl i32 %78, 8
  %shl.i = and i32 %and.i, 16128
  %or.i = or i32 %shl.i, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %79 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  %80 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %81, i32 1332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %79) #4, !srcloc !12
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 8
  %add.ptr.i1516.i = getelementptr i8, ptr %83, i32 1336
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1516.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %85 = and i32 %84, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not17.i = icmp eq i32 %85, 0
  br i1 %tobool.not17.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body5.i_crit_edge

while.body.i.while.body5.i_crit_edge:             ; preds = %while.body.i
  br label %while.body5.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body5.i:                                    ; preds = %while.body5.i.while.body5.i_crit_edge, %while.body.i.while.body5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748) #4
  %87 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %88, i32 1336
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %90 = and i32 %89, 65536
  %tobool.not.i = icmp eq i32 %90, 0
  br i1 %tobool.not.i, label %while.body5.i.while.end.i_crit_edge, label %while.body5.i.while.body5.i_crit_edge

while.body5.i.while.body5.i_crit_edge:            ; preds = %while.body5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body5.i

while.body5.i.while.end.i_crit_edge:              ; preds = %while.body5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.end.i:                                      ; preds = %while.body5.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %add.i = add i32 %78, %count.019.i
  %cmp.i = icmp slt i32 %add.i, %77
  br i1 %cmp.i, label %while.end.i.while.body.i_crit_edge, label %while.end.i.cedrus_h265_skip_bits.exit_crit_edge

while.end.i.cedrus_h265_skip_bits.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_h265_skip_bits.exit

while.end.i.while.body.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

cedrus_h265_skip_bits.exit:                       ; preds = %while.end.i.cedrus_h265_skip_bits.exit_crit_edge, %if.end59.cedrus_h265_skip_bits.exit_crit_edge
  %nal_unit_type = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 2
  %91 = ptrtoint ptr %nal_unit_type to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %nal_unit_type, align 8
  %93 = and i8 %92, 63
  %and62 = zext i8 %93 to i32
  %nuh_temporal_id_plus1 = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 3
  %94 = ptrtoint ptr %nuh_temporal_id_plus1 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %nuh_temporal_id_plus1, align 1
  %conv63 = zext i8 %95 to i32
  %shl64 = shl nuw nsw i32 %conv63, 6
  %and65 = and i32 %shl64, 448
  %or66 = or i32 %and65, %and62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %96 = tail call i32 @llvm.bswap.i32(i32 %or66) #4
  %97 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i, align 8
  %add.ptr.i658 = getelementptr i8, ptr %98, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i658, i32 %96) #4, !srcloc !12
  %max_transform_hierarchy_depth_intra = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %7, i32 0, i32 13
  %99 = ptrtoint ptr %max_transform_hierarchy_depth_intra to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %max_transform_hierarchy_depth_intra, align 1
  %conv67 = zext i8 %100 to i32
  %shl68 = shl nuw nsw i32 %conv67, 20
  %and69 = and i32 %shl68, 7340032
  %max_transform_hierarchy_depth_inter = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %7, i32 0, i32 12
  %101 = ptrtoint ptr %max_transform_hierarchy_depth_inter to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %max_transform_hierarchy_depth_inter, align 2
  %conv70 = zext i8 %102 to i32
  %shl71 = shl nuw nsw i32 %conv70, 17
  %and72 = and i32 %shl71, 917504
  %or73 = or i32 %and72, %and69
  %log2_diff_max_min_luma_transform_block_size = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %7, i32 0, i32 11
  %103 = ptrtoint ptr %log2_diff_max_min_luma_transform_block_size to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %log2_diff_max_min_luma_transform_block_size, align 1
  %conv74 = zext i8 %104 to i32
  %shl75 = shl nuw nsw i32 %conv74, 15
  %and76 = and i32 %shl75, 98304
  %or77 = or i32 %or73, %and76
  %log2_min_luma_transform_block_size_minus2 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %7, i32 0, i32 10
  %105 = ptrtoint ptr %log2_min_luma_transform_block_size_minus2 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %log2_min_luma_transform_block_size_minus2, align 4
  %conv78 = zext i8 %106 to i32
  %shl79 = shl nuw nsw i32 %conv78, 13
  %and80 = and i32 %shl79, 24576
  %or81 = or i32 %or77, %and80
  %107 = ptrtoint ptr %log2_diff_max_min_luma_coding_block_size to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %log2_diff_max_min_luma_coding_block_size, align 1
  %conv83 = zext i8 %108 to i32
  %shl84 = shl nuw nsw i32 %conv83, 11
  %and85 = and i32 %shl84, 6144
  %or86 = or i32 %or81, %and85
  %109 = ptrtoint ptr %log2_min_luma_coding_block_size_minus3 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %log2_min_luma_coding_block_size_minus3, align 2
  %conv88 = zext i8 %110 to i32
  %shl89 = shl nuw nsw i32 %conv88, 9
  %and90 = and i32 %shl89, 1536
  %or91 = or i32 %or86, %and90
  %bit_depth_chroma_minus8 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %7, i32 0, i32 3
  %111 = ptrtoint ptr %bit_depth_chroma_minus8 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %bit_depth_chroma_minus8, align 1
  %conv92 = zext i8 %112 to i32
  %shl93 = shl nuw nsw i32 %conv92, 6
  %and94 = and i32 %shl93, 448
  %or95 = or i32 %or91, %and94
  %bit_depth_luma_minus8 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %7, i32 0, i32 2
  %113 = ptrtoint ptr %bit_depth_luma_minus8 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %bit_depth_luma_minus8, align 4
  %conv96 = zext i8 %114 to i32
  %shl97 = shl nuw nsw i32 %conv96, 3
  %and98 = and i32 %shl97, 56
  %or99 = or i32 %or95, %and98
  %chroma_format_idc = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %7, i32 0, i32 20
  %115 = ptrtoint ptr %chroma_format_idc to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %chroma_format_idc, align 2
  %117 = and i8 %116, 3
  %and102 = zext i8 %117 to i32
  %or103 = or i32 %or99, %and102
  %flags = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %7, i32 0, i32 22
  %118 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %flags, align 8
  %120 = trunc i64 %119 to i32
  %121 = shl i32 %120, 18
  %122 = and i32 %121, 67108864
  %or106 = or i32 %or103, %122
  %123 = and i32 %121, 33554432
  %or111 = or i32 %or106, %123
  %124 = shl i32 %120, 21
  %125 = and i32 %124, 16777216
  %or116 = or i32 %or111, %125
  %126 = and i32 %124, 8388608
  %or121 = or i32 %or116, %126
  %127 = shl i32 %120, 2
  %128 = and i32 %127, 4
  %or126 = or i32 %or121, %128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %129 = tail call i32 @llvm.bswap.i32(i32 %or126) #4
  %130 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i, align 8
  %add.ptr.i660 = getelementptr i8, ptr %131, i32 1284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i660, i32 %129) #4, !srcloc !12
  %log2_diff_max_min_pcm_luma_coding_block_size = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %7, i32 0, i32 17
  %132 = ptrtoint ptr %log2_diff_max_min_pcm_luma_coding_block_size to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %log2_diff_max_min_pcm_luma_coding_block_size, align 1
  %conv127 = zext i8 %133 to i32
  %shl128 = shl nuw nsw i32 %conv127, 10
  %and129 = and i32 %shl128, 3072
  %log2_min_pcm_luma_coding_block_size_minus3 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %7, i32 0, i32 16
  %134 = ptrtoint ptr %log2_min_pcm_luma_coding_block_size_minus3 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %log2_min_pcm_luma_coding_block_size_minus3, align 2
  %conv130 = zext i8 %135 to i32
  %shl131 = shl nuw nsw i32 %conv130, 8
  %and132 = and i32 %shl131, 768
  %or133 = or i32 %and132, %and129
  %pcm_sample_bit_depth_chroma_minus1 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %7, i32 0, i32 15
  %136 = ptrtoint ptr %pcm_sample_bit_depth_chroma_minus1 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %pcm_sample_bit_depth_chroma_minus1, align 1
  %conv134 = zext i8 %137 to i32
  %shl135 = shl nuw nsw i32 %conv134, 4
  %and136 = and i32 %shl135, 240
  %or137 = or i32 %or133, %and136
  %pcm_sample_bit_depth_luma_minus1 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %7, i32 0, i32 14
  %138 = ptrtoint ptr %pcm_sample_bit_depth_luma_minus1 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %pcm_sample_bit_depth_luma_minus1, align 8
  %140 = and i8 %139, 15
  %and140 = zext i8 %140 to i32
  %or141 = or i32 %or137, %and140
  %141 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %flags, align 8
  %143 = trunc i64 %142 to i32
  %144 = shl i32 %143, 11
  %145 = and i32 %144, 32768
  %or146 = or i32 %or141, %145
  %146 = shl i32 %143, 9
  %147 = and i32 %146, 16384
  %or151 = or i32 %or146, %147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %148 = tail call i32 @llvm.bswap.i32(i32 %or151) #4
  %149 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base.i, align 8
  %add.ptr.i662 = getelementptr i8, ptr %150, i32 1292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i662, i32 %148) #4, !srcloc !12
  %pps_cr_qp_offset = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %9, i32 0, i32 6
  %151 = ptrtoint ptr %pps_cr_qp_offset to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %pps_cr_qp_offset, align 2
  %conv152637 = zext i8 %152 to i32
  %shl153 = shl nuw i32 %conv152637, 24
  %and154 = and i32 %shl153, 1056964608
  %pps_cb_qp_offset = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %9, i32 0, i32 5
  %153 = ptrtoint ptr %pps_cb_qp_offset to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %pps_cb_qp_offset, align 1
  %conv155 = sext i8 %154 to i32
  %shl156 = shl nsw i32 %conv155, 16
  %and157 = and i32 %shl156, 4128768
  %or158 = or i32 %and157, %and154
  %init_qp_minus26 = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %9, i32 0, i32 3
  %155 = ptrtoint ptr %init_qp_minus26 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %init_qp_minus26, align 1
  %conv159 = sext i8 %156 to i32
  %shl160 = shl nsw i32 %conv159, 8
  %and161 = and i32 %shl160, 32512
  %or162 = or i32 %or158, %and161
  %diff_cu_qp_delta_depth = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %9, i32 0, i32 4
  %157 = ptrtoint ptr %diff_cu_qp_delta_depth to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %diff_cu_qp_delta_depth, align 4
  %conv163 = zext i8 %158 to i32
  %shl164 = shl nuw nsw i32 %conv163, 4
  %and165 = and i32 %shl164, 48
  %or166 = or i32 %or162, %and165
  %flags167 = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %9, i32 0, i32 15
  %159 = ptrtoint ptr %flags167 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %flags167, align 8
  %161 = trunc i64 %160 to i32
  %162 = lshr i32 %161, 3
  %163 = and i32 %162, 8
  %or171 = or i32 %or166, %163
  %164 = and i32 %162, 4
  %or176 = or i32 %or171, %164
  %165 = and i32 %162, 2
  %or181 = or i32 %or176, %165
  %166 = lshr i32 %161, 2
  %167 = and i32 %166, 1
  %or186 = or i32 %or181, %167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %168 = tail call i32 @llvm.bswap.i32(i32 %or186) #4
  %169 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %base.i, align 8
  %add.ptr.i664 = getelementptr i8, ptr %170, i32 1296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i664, i32 %168) #4, !srcloc !12
  %log2_parallel_merge_level_minus2 = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %9, i32 0, i32 13
  %171 = ptrtoint ptr %log2_parallel_merge_level_minus2 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %log2_parallel_merge_level_minus2, align 1
  %conv187 = zext i8 %172 to i32
  %shl188 = shl nuw nsw i32 %conv187, 8
  %and189 = and i32 %shl188, 1792
  %173 = ptrtoint ptr %flags167 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %flags167, align 8
  %175 = trunc i64 %174 to i32
  %176 = lshr i32 %175, 8
  %177 = and i32 %176, 64
  %or194 = or i32 %177, %and189
  %178 = and i32 %176, 32
  %or199 = or i32 %or194, %178
  %179 = and i32 %176, 16
  %or204 = or i32 %or199, %179
  %180 = and i32 %176, 4
  %or209 = or i32 %or204, %180
  %181 = and i32 %176, 2
  %or214 = or i32 %or209, %181
  %182 = and i32 %176, 1
  %or219 = or i32 %or214, %182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %183 = tail call i32 @llvm.bswap.i32(i32 %or219) #4
  %184 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %base.i, align 8
  %add.ptr.i666 = getelementptr i8, ptr %185, i32 1300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i666, i32 %183) #4, !srcloc !12
  %pic_struct = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 19
  %186 = ptrtoint ptr %pic_struct to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %pic_struct, align 2
  %conv220 = zext i8 %187 to i32
  %shl221 = shl i32 %conv220, 28
  %and222 = and i32 %shl221, 805306368
  %five_minus_max_num_merge_cand = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 10
  %188 = ptrtoint ptr %five_minus_max_num_merge_cand to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %five_minus_max_num_merge_cand, align 1
  %conv223 = zext i8 %189 to i32
  %shl224 = shl nuw i32 %conv223, 24
  %and225 = and i32 %shl224, 117440512
  %or226 = or i32 %and225, %and222
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 8
  %190 = ptrtoint ptr %num_ref_idx_l1_active_minus1 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %num_ref_idx_l1_active_minus1, align 1
  %conv227 = zext i8 %191 to i32
  %shl228 = shl nuw nsw i32 %conv227, 20
  %and229 = and i32 %shl228, 15728640
  %or230 = or i32 %or226, %and229
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 7
  %192 = ptrtoint ptr %num_ref_idx_l0_active_minus1 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %num_ref_idx_l0_active_minus1, align 2
  %conv231 = zext i8 %193 to i32
  %shl232 = shl nuw nsw i32 %conv231, 16
  %and233 = and i32 %shl232, 983040
  %or234 = or i32 %or230, %and233
  %collocated_ref_idx = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 9
  %194 = ptrtoint ptr %collocated_ref_idx to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %collocated_ref_idx, align 8
  %conv235 = zext i8 %195 to i32
  %shl236 = shl nuw nsw i32 %conv235, 12
  %and237 = and i32 %shl236, 61440
  %or238 = or i32 %or234, %and237
  %colour_plane_id = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 5
  %196 = ptrtoint ptr %colour_plane_id to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %colour_plane_id, align 1
  %conv239 = zext i8 %197 to i32
  %shl240 = shl nuw nsw i32 %conv239, 4
  %and241 = and i32 %shl240, 48
  %or242 = or i32 %or238, %and241
  %slice_type = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 4
  %198 = ptrtoint ptr %slice_type to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %slice_type, align 2
  %conv243 = zext i8 %199 to i32
  %shl244 = shl nuw nsw i32 %conv243, 2
  %and245 = and i32 %shl244, 12
  %or246 = or i32 %or242, %and245
  %flags247 = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 25
  %200 = ptrtoint ptr %flags247 to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %flags247, align 8
  %202 = trunc i64 %201 to i32
  %203 = shl i32 %202, 6
  %204 = and i32 %203, 2048
  %or251 = or i32 %or246, %204
  %205 = and i32 %203, 1024
  %or256 = or i32 %or251, %205
  %206 = and i32 %203, 512
  %or261 = or i32 %or256, %206
  %207 = shl i32 %202, 7
  %208 = and i32 %207, 256
  %or266 = or i32 %or261, %208
  %209 = and i32 %207, 128
  %or271 = or i32 %or266, %209
  %210 = shl i32 %202, 4
  %211 = and i32 %210, 64
  %or276 = or i32 %or271, %211
  %212 = lshr i32 %202, 8
  %213 = and i32 %212, 2
  %or281 = or i32 %or276, %213
  %214 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %m2m_ctx, align 4
  %new_frame284 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %new_frame284 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %new_frame284, align 4, !range !16
  %218 = zext i8 %217 to i32
  %spec.select = or i32 %or281, %218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %219 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #4
  %220 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %base.i, align 8
  %add.ptr.i668 = getelementptr i8, ptr %221, i32 1312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i668, i32 %219) #4, !srcloc !12
  %slice_tc_offset_div2 = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 18
  %222 = ptrtoint ptr %slice_tc_offset_div2 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %slice_tc_offset_div2, align 1
  %conv289638 = zext i8 %223 to i32
  %shl290 = shl i32 %conv289638, 28
  %slice_beta_offset_div2 = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 17
  %224 = ptrtoint ptr %slice_beta_offset_div2 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %slice_beta_offset_div2, align 8
  %conv292639 = zext i8 %225 to i32
  %shl293 = shl nuw i32 %conv292639, 24
  %and294 = and i32 %shl293, 251658240
  %or295 = or i32 %and294, %shl290
  %num_poc_st_curr_after = getelementptr inbounds %struct.v4l2_ctrl_hevc_decode_params, ptr %13, i32 0, i32 4
  %226 = ptrtoint ptr %num_poc_st_curr_after to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %num_poc_st_curr_after, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %cmp = icmp eq i8 %227, 0
  %cond298 = select i1 %cmp, i32 2097152, i32 0
  %or299 = or i32 %or295, %cond298
  %slice_cr_qp_offset = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 13
  %228 = ptrtoint ptr %slice_cr_qp_offset to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %slice_cr_qp_offset, align 4
  %conv300 = sext i8 %229 to i32
  %shl301 = shl nsw i32 %conv300, 16
  %and302 = and i32 %shl301, 2031616
  %or303 = or i32 %or299, %and302
  %slice_cb_qp_offset = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 12
  %230 = ptrtoint ptr %slice_cb_qp_offset to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %slice_cb_qp_offset, align 1
  %conv304 = sext i8 %231 to i32
  %shl305 = shl nsw i32 %conv304, 8
  %and306 = and i32 %shl305, 7936
  %or307 = or i32 %or303, %and306
  %slice_qp_delta = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 11
  %232 = ptrtoint ptr %slice_qp_delta to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %slice_qp_delta, align 2
  %234 = and i8 %233, 127
  %and310 = zext i8 %234 to i32
  %or311 = or i32 %or307, %and310
  %235 = ptrtoint ptr %flags247 to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %flags247, align 8
  %237 = trunc i64 %236 to i32
  %238 = shl i32 %237, 16
  %239 = and i32 %238, 8388608
  %or316 = or i32 %or311, %239
  %240 = shl i32 %237, 14
  %241 = and i32 %240, 4194304
  %or321 = or i32 %or316, %241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %242 = tail call i32 @llvm.bswap.i32(i32 %or321) #4
  %243 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %base.i, align 8
  %add.ptr.i670 = getelementptr i8, ptr %244, i32 1316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i670, i32 %242) #4, !srcloc !12
  %luma_log2_weight_denom = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 24, i32 9
  %245 = ptrtoint ptr %luma_log2_weight_denom to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %luma_log2_weight_denom, align 1
  %conv322 = zext i8 %246 to i32
  %delta_chroma_log2_weight_denom = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 24, i32 10
  %247 = ptrtoint ptr %delta_chroma_log2_weight_denom to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %delta_chroma_log2_weight_denom, align 1
  %conv323 = sext i8 %248 to i32
  %add324 = add nsw i32 %conv323, %conv322
  %shl325 = shl nsw i32 %add324, 4
  %and326 = and i32 %shl325, 112
  %and331 = and i32 %conv322, 7
  %or332 = or i32 %and326, %and331
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %249 = shl nuw nsw i32 %or332, 24
  %250 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %base.i, align 8
  %add.ptr.i672 = getelementptr i8, ptr %251, i32 1320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i672, i32 %249) #4, !srcloc !12
  %src_fmt333 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 2
  %252 = ptrtoint ptr %src_fmt333 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %src_fmt333, align 4
  %and336 = and i32 %253, 16383
  %height338 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 2, i32 1
  %254 = ptrtoint ptr %height338 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %height338, align 4
  %shl339 = shl i32 %255, 16
  %and340 = and i32 %shl339, 1073676288
  %or341 = or i32 %and340, %and336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %256 = tail call i32 @llvm.bswap.i32(i32 %or341) #4
  %257 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %base.i, align 8
  %add.ptr.i674 = getelementptr i8, ptr %258, i32 1288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i674, i32 %256) #4, !srcloc !12
  %259 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %259)
  %260 = load i64, ptr %flags, align 8
  %and343 = and i64 %260, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and343)
  %tobool344.not = icmp eq i64 %and343, 0
  br i1 %tobool344.not, label %cedrus_h265_skip_bits.exit.if.end346_crit_edge, label %if.then345

cedrus_h265_skip_bits.exit.if.end346_crit_edge:   ; preds = %cedrus_h265_skip_bits.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end346

if.then345:                                       ; preds = %cedrus_h265_skip_bits.exit
  %261 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %dev1, align 4
  %scaling_matrix.i = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 4
  %263 = ptrtoint ptr %scaling_matrix.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %scaling_matrix.i, align 4
  %scaling_list_dc_coef_32x32.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 5
  %arrayidx.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 5, i32 1
  %265 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %266 to i32
  %shl.i675 = shl nuw i32 %conv.i, 24
  %267 = ptrtoint ptr %scaling_list_dc_coef_32x32.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %scaling_list_dc_coef_32x32.i, align 1
  %conv4.i = zext i8 %268 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 16
  %or.i676 = or i32 %shl5.i, %shl.i675
  %scaling_list_dc_coef_16x16.i = getelementptr inbounds %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 4
  %arrayidx6.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 4, i32 1
  %269 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %270 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 8
  %or9.i = or i32 %or.i676, %shl8.i
  %271 = ptrtoint ptr %scaling_list_dc_coef_16x16.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %scaling_list_dc_coef_16x16.i, align 1
  %conv12.i = zext i8 %272 to i32
  %or14.i = or i32 %or9.i, %conv12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %273 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #4
  %base.i.i677 = getelementptr inbounds %struct.cedrus_dev, ptr %262, i32 0, i32 9
  %274 = ptrtoint ptr %base.i.i677 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %base.i.i677, align 8
  %add.ptr.i.i678 = getelementptr i8, ptr %275, i32 1400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i678, i32 %273) #4, !srcloc !12
  %arrayidx16.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 4, i32 5
  %276 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %277 to i32
  %shl18.i = shl nuw i32 %conv17.i, 24
  %arrayidx20.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 4, i32 4
  %278 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %279 to i32
  %shl22.i = shl nuw nsw i32 %conv21.i, 16
  %or23.i = or i32 %shl22.i, %shl18.i
  %arrayidx25.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 4, i32 3
  %280 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %281 to i32
  %shl27.i = shl nuw nsw i32 %conv26.i, 8
  %or28.i = or i32 %or23.i, %shl27.i
  %arrayidx30.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 4, i32 2
  %282 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %283 to i32
  %or33.i = or i32 %or28.i, %conv31.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %284 = tail call i32 @llvm.bswap.i32(i32 %or33.i) #4
  %285 = ptrtoint ptr %base.i.i677 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %base.i.i677, align 8
  %add.ptr.i319.i = getelementptr i8, ptr %286, i32 1404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i319.i, i32 %284) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %287 = ptrtoint ptr %base.i.i677 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %base.i.i677, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %288, i32 1504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 524288) #4, !srcloc !12
  br label %for.cond35.preheader.i

for.cond35.preheader.i:                           ; preds = %for.inc76.i.for.cond35.preheader.i_crit_edge, %if.then345
  %i.0330.i = phi i32 [ 0, %if.then345 ], [ %inc77.i, %for.inc76.i.for.cond35.preheader.i_crit_edge ]
  br label %for.cond39.preheader.i

for.cond39.preheader.i:                           ; preds = %for.cond39.preheader.i.for.cond39.preheader.i_crit_edge, %for.cond35.preheader.i
  %j.0329.i = phi i32 [ 0, %for.cond35.preheader.i ], [ %inc.i, %for.cond39.preheader.i.for.cond39.preheader.i_crit_edge ]
  %mul.i = add nuw nsw i32 %j.0329.i, 24
  %mul51.i = add nuw nsw i32 %j.0329.i, 16
  %mul60.i = add nuw nsw i32 %j.0329.i, 8
  %arrayidx45.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 1, i32 %i.0330.i, i32 %mul.i
  %289 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx45.i, align 1
  %conv46.i = zext i8 %290 to i32
  %shl47.i = shl nuw i32 %conv46.i, 24
  %arrayidx53.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 1, i32 %i.0330.i, i32 %mul51.i
  %291 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %292 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 16
  %or56.i = or i32 %shl55.i, %shl47.i
  %arrayidx62.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 1, i32 %i.0330.i, i32 %mul60.i
  %293 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %arrayidx62.i, align 1
  %conv63.i = zext i8 %294 to i32
  %shl64.i = shl nuw nsw i32 %conv63.i, 8
  %or65.i = or i32 %or56.i, %shl64.i
  %arrayidx70.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 1, i32 %i.0330.i, i32 %j.0329.i
  %295 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %arrayidx70.i, align 1
  %conv71.i = zext i8 %296 to i32
  %or72.i = or i32 %or65.i, %conv71.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %297 = tail call i32 @llvm.bswap.i32(i32 %or72.i) #4
  %298 = ptrtoint ptr %base.i.i677 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %base.i.i677, align 8
  %add.ptr.i321.i = getelementptr i8, ptr %299, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i321.i, i32 %297) #4, !srcloc !12
  %add44.1.i = add nuw nsw i32 %j.0329.i, 56
  %arrayidx45.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 1, i32 %i.0330.i, i32 %add44.1.i
  %300 = ptrtoint ptr %arrayidx45.1.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %arrayidx45.1.i, align 1
  %conv46.1.i = zext i8 %301 to i32
  %shl47.1.i = shl nuw i32 %conv46.1.i, 24
  %add52.1.i = add nuw nsw i32 %j.0329.i, 48
  %arrayidx53.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 1, i32 %i.0330.i, i32 %add52.1.i
  %302 = ptrtoint ptr %arrayidx53.1.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %arrayidx53.1.i, align 1
  %conv54.1.i = zext i8 %303 to i32
  %shl55.1.i = shl nuw nsw i32 %conv54.1.i, 16
  %or56.1.i = or i32 %shl55.1.i, %shl47.1.i
  %add61.1.i = add nuw nsw i32 %j.0329.i, 40
  %arrayidx62.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 1, i32 %i.0330.i, i32 %add61.1.i
  %304 = ptrtoint ptr %arrayidx62.1.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx62.1.i, align 1
  %conv63.1.i = zext i8 %305 to i32
  %shl64.1.i = shl nuw nsw i32 %conv63.1.i, 8
  %or65.1.i = or i32 %or56.1.i, %shl64.1.i
  %add69.1.i = add nuw nsw i32 %j.0329.i, 32
  %arrayidx70.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 1, i32 %i.0330.i, i32 %add69.1.i
  %306 = ptrtoint ptr %arrayidx70.1.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %arrayidx70.1.i, align 1
  %conv71.1.i = zext i8 %307 to i32
  %or72.1.i = or i32 %or65.1.i, %conv71.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %308 = tail call i32 @llvm.bswap.i32(i32 %or72.1.i) #4
  %309 = ptrtoint ptr %base.i.i677 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %base.i.i677, align 8
  %add.ptr.i321.1.i = getelementptr i8, ptr %310, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i321.1.i, i32 %308) #4, !srcloc !12
  %inc.i = add nuw nsw i32 %j.0329.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.inc76.i, label %for.cond39.preheader.i.for.cond39.preheader.i_crit_edge

for.cond39.preheader.i.for.cond39.preheader.i_crit_edge: ; preds = %for.cond39.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond39.preheader.i

for.inc76.i:                                      ; preds = %for.cond39.preheader.i
  %inc77.i = add nuw nsw i32 %i.0330.i, 1
  %exitcond339.not.i = icmp eq i32 %inc77.i, 6
  br i1 %exitcond339.not.i, label %for.inc76.i.for.cond87.preheader.i_crit_edge, label %for.inc76.i.for.cond35.preheader.i_crit_edge

for.inc76.i.for.cond35.preheader.i_crit_edge:     ; preds = %for.inc76.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond35.preheader.i

for.inc76.i.for.cond87.preheader.i_crit_edge:     ; preds = %for.inc76.i
  br label %for.cond87.preheader.i

for.cond87.preheader.i:                           ; preds = %for.cond87.preheader.i.for.cond87.preheader.i_crit_edge, %for.inc76.i.for.cond87.preheader.i_crit_edge
  %j.1332.i = phi i32 [ %inc127.i, %for.cond87.preheader.i.for.cond87.preheader.i_crit_edge ], [ 0, %for.inc76.i.for.cond87.preheader.i_crit_edge ]
  %mul93.i = add nuw nsw i32 %j.1332.i, 24
  %mul101.i = add nuw nsw i32 %j.1332.i, 16
  %mul110.i = add nuw nsw i32 %j.1332.i, 8
  %arrayidx95.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 3, i32 0, i32 %mul93.i
  %311 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %arrayidx95.i, align 1
  %conv96.i = zext i8 %312 to i32
  %shl97.i = shl nuw i32 %conv96.i, 24
  %arrayidx103.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 3, i32 0, i32 %mul101.i
  %313 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %arrayidx103.i, align 1
  %conv104.i = zext i8 %314 to i32
  %shl105.i = shl nuw nsw i32 %conv104.i, 16
  %or106.i = or i32 %shl105.i, %shl97.i
  %arrayidx112.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 3, i32 0, i32 %mul110.i
  %315 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %arrayidx112.i, align 1
  %conv113.i = zext i8 %316 to i32
  %shl114.i = shl nuw nsw i32 %conv113.i, 8
  %or115.i = or i32 %or106.i, %shl114.i
  %arrayidx120.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 3, i32 0, i32 %j.1332.i
  %317 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %arrayidx120.i, align 1
  %conv121.i = zext i8 %318 to i32
  %or122.i = or i32 %or115.i, %conv121.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %319 = tail call i32 @llvm.bswap.i32(i32 %or122.i) #4
  %320 = ptrtoint ptr %base.i.i677 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %base.i.i677, align 8
  %add.ptr.i323.i = getelementptr i8, ptr %321, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i323.i, i32 %319) #4, !srcloc !12
  %add94.1.i = add nuw nsw i32 %j.1332.i, 56
  %arrayidx95.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 3, i32 0, i32 %add94.1.i
  %322 = ptrtoint ptr %arrayidx95.1.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx95.1.i, align 1
  %conv96.1.i = zext i8 %323 to i32
  %shl97.1.i = shl nuw i32 %conv96.1.i, 24
  %add102.1.i = add nuw nsw i32 %j.1332.i, 48
  %arrayidx103.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 3, i32 0, i32 %add102.1.i
  %324 = ptrtoint ptr %arrayidx103.1.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %arrayidx103.1.i, align 1
  %conv104.1.i = zext i8 %325 to i32
  %shl105.1.i = shl nuw nsw i32 %conv104.1.i, 16
  %or106.1.i = or i32 %shl105.1.i, %shl97.1.i
  %add111.1.i = add nuw nsw i32 %j.1332.i, 40
  %arrayidx112.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 3, i32 0, i32 %add111.1.i
  %326 = ptrtoint ptr %arrayidx112.1.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx112.1.i, align 1
  %conv113.1.i = zext i8 %327 to i32
  %shl114.1.i = shl nuw nsw i32 %conv113.1.i, 8
  %or115.1.i = or i32 %or106.1.i, %shl114.1.i
  %add119.1.i = add nuw nsw i32 %j.1332.i, 32
  %arrayidx120.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 3, i32 0, i32 %add119.1.i
  %328 = ptrtoint ptr %arrayidx120.1.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx120.1.i, align 1
  %conv121.1.i = zext i8 %329 to i32
  %or122.1.i = or i32 %or115.1.i, %conv121.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %330 = tail call i32 @llvm.bswap.i32(i32 %or122.1.i) #4
  %331 = ptrtoint ptr %base.i.i677 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %base.i.i677, align 8
  %add.ptr.i323.1.i = getelementptr i8, ptr %332, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i323.1.i, i32 %330) #4, !srcloc !12
  %inc127.i = add nuw nsw i32 %j.1332.i, 1
  %exitcond340.not.i = icmp eq i32 %inc127.i, 8
  br i1 %exitcond340.not.i, label %for.cond87.preheader.i.for.cond87.preheader.1.i_crit_edge, label %for.cond87.preheader.i.for.cond87.preheader.i_crit_edge

for.cond87.preheader.i.for.cond87.preheader.i_crit_edge: ; preds = %for.cond87.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond87.preheader.i

for.cond87.preheader.i.for.cond87.preheader.1.i_crit_edge: ; preds = %for.cond87.preheader.i
  br label %for.cond87.preheader.1.i

for.cond87.preheader.1.i:                         ; preds = %for.cond87.preheader.1.i.for.cond87.preheader.1.i_crit_edge, %for.cond87.preheader.i.for.cond87.preheader.1.i_crit_edge
  %j.1332.1.i = phi i32 [ %inc127.1.i, %for.cond87.preheader.1.i.for.cond87.preheader.1.i_crit_edge ], [ 0, %for.cond87.preheader.i.for.cond87.preheader.1.i_crit_edge ]
  %mul93.1.i = add nuw nsw i32 %j.1332.1.i, 24
  %mul101.1.i = add nuw nsw i32 %j.1332.1.i, 16
  %mul110.1.i = add nuw nsw i32 %j.1332.1.i, 8
  %arrayidx95.1342.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 3, i32 1, i32 %mul93.1.i
  %333 = ptrtoint ptr %arrayidx95.1342.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %arrayidx95.1342.i, align 1
  %conv96.1343.i = zext i8 %334 to i32
  %shl97.1344.i = shl nuw i32 %conv96.1343.i, 24
  %arrayidx103.1345.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 3, i32 1, i32 %mul101.1.i
  %335 = ptrtoint ptr %arrayidx103.1345.i to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %arrayidx103.1345.i, align 1
  %conv104.1346.i = zext i8 %336 to i32
  %shl105.1347.i = shl nuw nsw i32 %conv104.1346.i, 16
  %or106.1348.i = or i32 %shl105.1347.i, %shl97.1344.i
  %arrayidx112.1349.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 3, i32 1, i32 %mul110.1.i
  %337 = ptrtoint ptr %arrayidx112.1349.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx112.1349.i, align 1
  %conv113.1350.i = zext i8 %338 to i32
  %shl114.1351.i = shl nuw nsw i32 %conv113.1350.i, 8
  %or115.1352.i = or i32 %or106.1348.i, %shl114.1351.i
  %arrayidx120.1353.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 3, i32 1, i32 %j.1332.1.i
  %339 = ptrtoint ptr %arrayidx120.1353.i to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %arrayidx120.1353.i, align 1
  %conv121.1354.i = zext i8 %340 to i32
  %or122.1355.i = or i32 %or115.1352.i, %conv121.1354.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %341 = tail call i32 @llvm.bswap.i32(i32 %or122.1355.i) #4
  %342 = ptrtoint ptr %base.i.i677 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %base.i.i677, align 8
  %add.ptr.i323.1356.i = getelementptr i8, ptr %343, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i323.1356.i, i32 %341) #4, !srcloc !12
  %add94.1.1.i = add nuw nsw i32 %j.1332.1.i, 56
  %arrayidx95.1.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 3, i32 1, i32 %add94.1.1.i
  %344 = ptrtoint ptr %arrayidx95.1.1.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %arrayidx95.1.1.i, align 1
  %conv96.1.1.i = zext i8 %345 to i32
  %shl97.1.1.i = shl nuw i32 %conv96.1.1.i, 24
  %add102.1.1.i = add nuw nsw i32 %j.1332.1.i, 48
  %arrayidx103.1.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 3, i32 1, i32 %add102.1.1.i
  %346 = ptrtoint ptr %arrayidx103.1.1.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx103.1.1.i, align 1
  %conv104.1.1.i = zext i8 %347 to i32
  %shl105.1.1.i = shl nuw nsw i32 %conv104.1.1.i, 16
  %or106.1.1.i = or i32 %shl105.1.1.i, %shl97.1.1.i
  %add111.1.1.i = add nuw nsw i32 %j.1332.1.i, 40
  %arrayidx112.1.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 3, i32 1, i32 %add111.1.1.i
  %348 = ptrtoint ptr %arrayidx112.1.1.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %arrayidx112.1.1.i, align 1
  %conv113.1.1.i = zext i8 %349 to i32
  %shl114.1.1.i = shl nuw nsw i32 %conv113.1.1.i, 8
  %or115.1.1.i = or i32 %or106.1.1.i, %shl114.1.1.i
  %add119.1.1.i = add nuw nsw i32 %j.1332.1.i, 32
  %arrayidx120.1.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 3, i32 1, i32 %add119.1.1.i
  %350 = ptrtoint ptr %arrayidx120.1.1.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %arrayidx120.1.1.i, align 1
  %conv121.1.1.i = zext i8 %351 to i32
  %or122.1.1.i = or i32 %or115.1.1.i, %conv121.1.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %352 = tail call i32 @llvm.bswap.i32(i32 %or122.1.1.i) #4
  %353 = ptrtoint ptr %base.i.i677 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %base.i.i677, align 8
  %add.ptr.i323.1.1.i = getelementptr i8, ptr %354, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i323.1.1.i, i32 %352) #4, !srcloc !12
  %inc127.1.i = add nuw nsw i32 %j.1332.1.i, 1
  %exitcond340.1.not.i = icmp eq i32 %inc127.1.i, 8
  br i1 %exitcond340.1.not.i, label %for.cond87.preheader.1.i.for.cond136.preheader.i_crit_edge, label %for.cond87.preheader.1.i.for.cond87.preheader.1.i_crit_edge

for.cond87.preheader.1.i.for.cond87.preheader.1.i_crit_edge: ; preds = %for.cond87.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond87.preheader.1.i

for.cond87.preheader.1.i.for.cond136.preheader.i_crit_edge: ; preds = %for.cond87.preheader.1.i
  br label %for.cond136.preheader.i

for.cond136.preheader.i:                          ; preds = %for.inc182.i.for.cond136.preheader.i_crit_edge, %for.cond87.preheader.1.i.for.cond136.preheader.i_crit_edge
  %i.2336.i = phi i32 [ %inc183.i, %for.inc182.i.for.cond136.preheader.i_crit_edge ], [ 0, %for.cond87.preheader.1.i.for.cond136.preheader.i_crit_edge ]
  br label %for.cond140.preheader.i

for.cond140.preheader.i:                          ; preds = %for.cond140.preheader.i.for.cond140.preheader.i_crit_edge, %for.cond136.preheader.i
  %j.2335.i = phi i32 [ 0, %for.cond136.preheader.i ], [ %inc180.i, %for.cond140.preheader.i.for.cond140.preheader.i_crit_edge ]
  %mul146.i = add nuw nsw i32 %j.2335.i, 24
  %mul154.i = add nuw nsw i32 %j.2335.i, 16
  %mul163.i = add nuw nsw i32 %j.2335.i, 8
  %arrayidx148.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 2, i32 %i.2336.i, i32 %mul146.i
  %355 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %arrayidx148.i, align 1
  %conv149.i = zext i8 %356 to i32
  %shl150.i = shl nuw i32 %conv149.i, 24
  %arrayidx156.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 2, i32 %i.2336.i, i32 %mul154.i
  %357 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %arrayidx156.i, align 1
  %conv157.i = zext i8 %358 to i32
  %shl158.i = shl nuw nsw i32 %conv157.i, 16
  %or159.i = or i32 %shl158.i, %shl150.i
  %arrayidx165.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 2, i32 %i.2336.i, i32 %mul163.i
  %359 = ptrtoint ptr %arrayidx165.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %arrayidx165.i, align 1
  %conv166.i = zext i8 %360 to i32
  %shl167.i = shl nuw nsw i32 %conv166.i, 8
  %or168.i = or i32 %or159.i, %shl167.i
  %arrayidx173.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 2, i32 %i.2336.i, i32 %j.2335.i
  %361 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %arrayidx173.i, align 1
  %conv174.i = zext i8 %362 to i32
  %or175.i = or i32 %or168.i, %conv174.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %363 = tail call i32 @llvm.bswap.i32(i32 %or175.i) #4
  %364 = ptrtoint ptr %base.i.i677 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %base.i.i677, align 8
  %add.ptr.i325.i = getelementptr i8, ptr %365, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i325.i, i32 %363) #4, !srcloc !12
  %add147.1.i = add nuw nsw i32 %j.2335.i, 56
  %arrayidx148.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 2, i32 %i.2336.i, i32 %add147.1.i
  %366 = ptrtoint ptr %arrayidx148.1.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %arrayidx148.1.i, align 1
  %conv149.1.i = zext i8 %367 to i32
  %shl150.1.i = shl nuw i32 %conv149.1.i, 24
  %add155.1.i = add nuw nsw i32 %j.2335.i, 48
  %arrayidx156.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 2, i32 %i.2336.i, i32 %add155.1.i
  %368 = ptrtoint ptr %arrayidx156.1.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %arrayidx156.1.i, align 1
  %conv157.1.i = zext i8 %369 to i32
  %shl158.1.i = shl nuw nsw i32 %conv157.1.i, 16
  %or159.1.i = or i32 %shl158.1.i, %shl150.1.i
  %add164.1.i = add nuw nsw i32 %j.2335.i, 40
  %arrayidx165.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 2, i32 %i.2336.i, i32 %add164.1.i
  %370 = ptrtoint ptr %arrayidx165.1.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %arrayidx165.1.i, align 1
  %conv166.1.i = zext i8 %371 to i32
  %shl167.1.i = shl nuw nsw i32 %conv166.1.i, 8
  %or168.1.i = or i32 %or159.1.i, %shl167.1.i
  %add172.1.i = add nuw nsw i32 %j.2335.i, 32
  %arrayidx173.1.i = getelementptr %struct.v4l2_ctrl_hevc_scaling_matrix, ptr %264, i32 0, i32 2, i32 %i.2336.i, i32 %add172.1.i
  %372 = ptrtoint ptr %arrayidx173.1.i to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %arrayidx173.1.i, align 1
  %conv174.1.i = zext i8 %373 to i32
  %or175.1.i = or i32 %or168.1.i, %conv174.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %374 = tail call i32 @llvm.bswap.i32(i32 %or175.1.i) #4
  %375 = ptrtoint ptr %base.i.i677 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %base.i.i677, align 8
  %add.ptr.i325.1.i = getelementptr i8, ptr %376, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i325.1.i, i32 %374) #4, !srcloc !12
  %inc180.i = add nuw nsw i32 %j.2335.i, 1
  %exitcond357.not.i = icmp eq i32 %inc180.i, 8
  br i1 %exitcond357.not.i, label %for.inc182.i, label %for.cond140.preheader.i.for.cond140.preheader.i_crit_edge

for.cond140.preheader.i.for.cond140.preheader.i_crit_edge: ; preds = %for.cond140.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond140.preheader.i

for.inc182.i:                                     ; preds = %for.cond140.preheader.i
  %inc183.i = add nuw nsw i32 %i.2336.i, 1
  %exitcond358.not.i = icmp eq i32 %inc183.i, 6
  br i1 %exitcond358.not.i, label %for.inc182.i.for.cond189.preheader.i_crit_edge, label %for.inc182.i.for.cond136.preheader.i_crit_edge

for.inc182.i.for.cond136.preheader.i_crit_edge:   ; preds = %for.inc182.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond136.preheader.i

for.inc182.i.for.cond189.preheader.i_crit_edge:   ; preds = %for.inc182.i
  br label %for.cond189.preheader.i

for.cond189.preheader.i:                          ; preds = %for.cond189.preheader.i.for.cond189.preheader.i_crit_edge, %for.inc182.i.for.cond189.preheader.i_crit_edge
  %i.3338.i = phi i32 [ %inc221.i, %for.cond189.preheader.i.for.cond189.preheader.i_crit_edge ], [ 0, %for.inc182.i.for.cond189.preheader.i_crit_edge ]
  %arrayidx195.i = getelementptr [6 x [16 x i8]], ptr %264, i32 0, i32 %i.3338.i, i32 12
  %377 = ptrtoint ptr %arrayidx195.i to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %arrayidx195.i, align 1
  %conv196.i = zext i8 %378 to i32
  %shl197.i = shl nuw i32 %conv196.i, 24
  %arrayidx201.i = getelementptr [6 x [16 x i8]], ptr %264, i32 0, i32 %i.3338.i, i32 8
  %379 = ptrtoint ptr %arrayidx201.i to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %arrayidx201.i, align 1
  %conv202.i = zext i8 %380 to i32
  %shl203.i = shl nuw nsw i32 %conv202.i, 16
  %or204.i = or i32 %shl203.i, %shl197.i
  %arrayidx208.i = getelementptr [6 x [16 x i8]], ptr %264, i32 0, i32 %i.3338.i, i32 4
  %381 = ptrtoint ptr %arrayidx208.i to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %arrayidx208.i, align 1
  %conv209.i = zext i8 %382 to i32
  %shl210.i = shl nuw nsw i32 %conv209.i, 8
  %or211.i = or i32 %or204.i, %shl210.i
  %arrayidx214.i = getelementptr [6 x [16 x i8]], ptr %264, i32 0, i32 %i.3338.i, i32 0
  %383 = ptrtoint ptr %arrayidx214.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %arrayidx214.i, align 1
  %conv215.i = zext i8 %384 to i32
  %or216.i = or i32 %or211.i, %conv215.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %385 = tail call i32 @llvm.bswap.i32(i32 %or216.i) #4
  %386 = ptrtoint ptr %base.i.i677 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %base.i.i677, align 8
  %add.ptr.i327.i = getelementptr i8, ptr %387, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i327.i, i32 %385) #4, !srcloc !12
  %arrayidx195.1.i = getelementptr [6 x [16 x i8]], ptr %264, i32 0, i32 %i.3338.i, i32 13
  %388 = ptrtoint ptr %arrayidx195.1.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %arrayidx195.1.i, align 1
  %conv196.1.i = zext i8 %389 to i32
  %shl197.1.i = shl nuw i32 %conv196.1.i, 24
  %arrayidx201.1.i = getelementptr [6 x [16 x i8]], ptr %264, i32 0, i32 %i.3338.i, i32 9
  %390 = ptrtoint ptr %arrayidx201.1.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %arrayidx201.1.i, align 1
  %conv202.1.i = zext i8 %391 to i32
  %shl203.1.i = shl nuw nsw i32 %conv202.1.i, 16
  %or204.1.i = or i32 %shl203.1.i, %shl197.1.i
  %arrayidx208.1.i = getelementptr [6 x [16 x i8]], ptr %264, i32 0, i32 %i.3338.i, i32 5
  %392 = ptrtoint ptr %arrayidx208.1.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %arrayidx208.1.i, align 1
  %conv209.1.i = zext i8 %393 to i32
  %shl210.1.i = shl nuw nsw i32 %conv209.1.i, 8
  %or211.1.i = or i32 %or204.1.i, %shl210.1.i
  %arrayidx214.1.i = getelementptr [6 x [16 x i8]], ptr %264, i32 0, i32 %i.3338.i, i32 1
  %394 = ptrtoint ptr %arrayidx214.1.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %arrayidx214.1.i, align 1
  %conv215.1.i = zext i8 %395 to i32
  %or216.1.i = or i32 %or211.1.i, %conv215.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %396 = tail call i32 @llvm.bswap.i32(i32 %or216.1.i) #4
  %397 = ptrtoint ptr %base.i.i677 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %base.i.i677, align 8
  %add.ptr.i327.1.i = getelementptr i8, ptr %398, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i327.1.i, i32 %396) #4, !srcloc !12
  %arrayidx195.2.i = getelementptr [6 x [16 x i8]], ptr %264, i32 0, i32 %i.3338.i, i32 14
  %399 = ptrtoint ptr %arrayidx195.2.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %arrayidx195.2.i, align 1
  %conv196.2.i = zext i8 %400 to i32
  %shl197.2.i = shl nuw i32 %conv196.2.i, 24
  %arrayidx201.2.i = getelementptr [6 x [16 x i8]], ptr %264, i32 0, i32 %i.3338.i, i32 10
  %401 = ptrtoint ptr %arrayidx201.2.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %arrayidx201.2.i, align 1
  %conv202.2.i = zext i8 %402 to i32
  %shl203.2.i = shl nuw nsw i32 %conv202.2.i, 16
  %or204.2.i = or i32 %shl203.2.i, %shl197.2.i
  %arrayidx208.2.i = getelementptr [6 x [16 x i8]], ptr %264, i32 0, i32 %i.3338.i, i32 6
  %403 = ptrtoint ptr %arrayidx208.2.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %arrayidx208.2.i, align 1
  %conv209.2.i = zext i8 %404 to i32
  %shl210.2.i = shl nuw nsw i32 %conv209.2.i, 8
  %or211.2.i = or i32 %or204.2.i, %shl210.2.i
  %arrayidx214.2.i = getelementptr [6 x [16 x i8]], ptr %264, i32 0, i32 %i.3338.i, i32 2
  %405 = ptrtoint ptr %arrayidx214.2.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %arrayidx214.2.i, align 1
  %conv215.2.i = zext i8 %406 to i32
  %or216.2.i = or i32 %or211.2.i, %conv215.2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %407 = tail call i32 @llvm.bswap.i32(i32 %or216.2.i) #4
  %408 = ptrtoint ptr %base.i.i677 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %base.i.i677, align 8
  %add.ptr.i327.2.i = getelementptr i8, ptr %409, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i327.2.i, i32 %407) #4, !srcloc !12
  %arrayidx195.3.i = getelementptr [6 x [16 x i8]], ptr %264, i32 0, i32 %i.3338.i, i32 15
  %410 = ptrtoint ptr %arrayidx195.3.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %arrayidx195.3.i, align 1
  %conv196.3.i = zext i8 %411 to i32
  %shl197.3.i = shl nuw i32 %conv196.3.i, 24
  %arrayidx201.3.i = getelementptr [6 x [16 x i8]], ptr %264, i32 0, i32 %i.3338.i, i32 11
  %412 = ptrtoint ptr %arrayidx201.3.i to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %arrayidx201.3.i, align 1
  %conv202.3.i = zext i8 %413 to i32
  %shl203.3.i = shl nuw nsw i32 %conv202.3.i, 16
  %or204.3.i = or i32 %shl203.3.i, %shl197.3.i
  %arrayidx208.3.i = getelementptr [6 x [16 x i8]], ptr %264, i32 0, i32 %i.3338.i, i32 7
  %414 = ptrtoint ptr %arrayidx208.3.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %arrayidx208.3.i, align 1
  %conv209.3.i = zext i8 %415 to i32
  %shl210.3.i = shl nuw nsw i32 %conv209.3.i, 8
  %or211.3.i = or i32 %or204.3.i, %shl210.3.i
  %arrayidx214.3.i = getelementptr [6 x [16 x i8]], ptr %264, i32 0, i32 %i.3338.i, i32 3
  %416 = ptrtoint ptr %arrayidx214.3.i to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %arrayidx214.3.i, align 1
  %conv215.3.i = zext i8 %417 to i32
  %or216.3.i = or i32 %or211.3.i, %conv215.3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %418 = tail call i32 @llvm.bswap.i32(i32 %or216.3.i) #4
  %419 = ptrtoint ptr %base.i.i677 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %base.i.i677, align 8
  %add.ptr.i327.3.i = getelementptr i8, ptr %420, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i327.3.i, i32 %418) #4, !srcloc !12
  %inc221.i = add nuw nsw i32 %i.3338.i, 1
  %exitcond360.not.i = icmp eq i32 %inc221.i, 6
  br i1 %exitcond360.not.i, label %for.cond189.preheader.i.if.end346_crit_edge, label %for.cond189.preheader.i.for.cond189.preheader.i_crit_edge

for.cond189.preheader.i.for.cond189.preheader.i_crit_edge: ; preds = %for.cond189.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond189.preheader.i

for.cond189.preheader.i.if.end346_crit_edge:      ; preds = %for.cond189.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end346

if.end346:                                        ; preds = %for.cond189.preheader.i.if.end346_crit_edge, %cedrus_h265_skip_bits.exit.if.end346_crit_edge
  %reg.1 = phi i32 [ 64, %cedrus_h265_skip_bits.exit.if.end346_crit_edge ], [ 128, %for.cond189.preheader.i.if.end346_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %421 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %base.i, align 8
  %add.ptr.i680 = getelementptr i8, ptr %422, i32 1304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i680, i32 %reg.1) #4, !srcloc !12
  %neighbor_info_buf_addr = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 5
  %423 = ptrtoint ptr %neighbor_info_buf_addr to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %neighbor_info_buf_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %425 = tail call i32 @llvm.bswap.i32(i32 %424)
  %426 = shl i32 %425, 8
  %427 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %base.i, align 8
  %add.ptr.i682 = getelementptr i8, ptr %428, i32 1376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i682, i32 %426) #4, !srcloc !12
  %dpb = getelementptr inbounds %struct.v4l2_ctrl_hevc_decode_params, ptr %13, i32 0, i32 2
  %num_active_dpb_entries = getelementptr inbounds %struct.v4l2_ctrl_hevc_decode_params, ptr %13, i32 0, i32 1
  %429 = ptrtoint ptr %num_active_dpb_entries to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %num_active_dpb_entries, align 4
  %431 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %m2m_ctx, align 4
  %call.i683 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %432, i32 noundef 1) #4
  %conv.i684 = zext i8 %430 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %430)
  %cmp22.not.i = icmp eq i8 %430, 0
  br i1 %cmp22.not.i, label %if.end346.cedrus_h265_frame_info_write_dpb.exit_crit_edge, label %for.body.lr.ph.i

if.end346.cedrus_h265_frame_info_write_dpb.exit_crit_edge: ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_h265_frame_info_write_dpb.exit

for.body.lr.ph.i:                                 ; preds = %if.end346
  %433 = getelementptr inbounds [2 x i32], ptr %pic_order_cnt.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.023.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i686, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i685 = getelementptr %struct.v4l2_hevc_dpb_entry, ptr %dpb, i32 %i.023.i
  %434 = ptrtoint ptr %arrayidx.i685 to i32
  call void @__asan_load8_noabort(i32 %434)
  %435 = load i64, ptr %arrayidx.i685, align 8
  %call2.i = tail call i32 @vb2_find_timestamp(ptr noundef %call.i683, i64 noundef %435, i32 noundef 0) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pic_order_cnt.i) #4
  %pic_order_cnt4.i = getelementptr %struct.v4l2_hevc_dpb_entry, ptr %dpb, i32 %i.023.i, i32 3
  %436 = ptrtoint ptr %pic_order_cnt4.i to i32
  call void @__asan_load2_noabort(i32 %436)
  %437 = load i16, ptr %pic_order_cnt4.i, align 2
  %conv6.i = zext i16 %437 to i32
  %438 = ptrtoint ptr %pic_order_cnt.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 %conv6.i, ptr %pic_order_cnt.i, align 4
  %arrayidx9.i = getelementptr %struct.v4l2_hevc_dpb_entry, ptr %dpb, i32 %i.023.i, i32 3, i32 1
  %439 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %439)
  %440 = load i16, ptr %arrayidx9.i, align 2
  %conv10.i = zext i16 %440 to i32
  %441 = ptrtoint ptr %433 to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 %conv10.i, ptr %433, align 4
  %field_pic.i = getelementptr %struct.v4l2_hevc_dpb_entry, ptr %dpb, i32 %i.023.i, i32 2
  %442 = ptrtoint ptr %field_pic.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %field_pic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %443)
  %tobool.i = icmp ne i8 %443, 0
  call fastcc void @cedrus_h265_frame_info_write_single(ptr noundef %ctx, i32 noundef %i.023.i, i1 noundef zeroext %tobool.i, ptr noundef nonnull %pic_order_cnt.i, i32 noundef %call2.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pic_order_cnt.i) #4
  %inc.i686 = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i687 = icmp eq i32 %inc.i686, %conv.i684
  br i1 %exitcond.not.i687, label %for.body.i.cedrus_h265_frame_info_write_dpb.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.cedrus_h265_frame_info_write_dpb.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_h265_frame_info_write_dpb.exit

cedrus_h265_frame_info_write_dpb.exit:            ; preds = %for.body.i.cedrus_h265_frame_info_write_dpb.exit_crit_edge, %if.end346.cedrus_h265_frame_info_write_dpb.exit_crit_edge
  %slice_pic_order_cnt = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 6
  %444 = ptrtoint ptr %slice_pic_order_cnt to i32
  call void @__asan_load2_noabort(i32 %444)
  %445 = load i16, ptr %slice_pic_order_cnt, align 4
  %conv349 = zext i16 %445 to i32
  %446 = ptrtoint ptr %pic_order_cnt to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 %conv349, ptr %pic_order_cnt, align 4
  %447 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %447)
  store i32 %conv349, ptr %3, align 4
  %448 = ptrtoint ptr %pic_struct to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %pic_struct, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %449)
  %cmp355 = icmp ne i8 %449, 0
  %dst358 = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 1
  %450 = ptrtoint ptr %dst358 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %dst358, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %451, i32 0, i32 1
  %452 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %index, align 4
  call fastcc void @cedrus_h265_frame_info_write_single(ptr noundef %ctx, i32 noundef 16, i1 noundef zeroext %cmp355, ptr noundef nonnull %pic_order_cnt, i32 noundef %453)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %454 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %base.i, align 8
  %add.ptr.i689 = getelementptr i8, ptr %455, i32 1372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i689, i32 268435456) #4, !srcloc !12
  %456 = ptrtoint ptr %slice_type to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %slice_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %457)
  %cmp362.not = icmp eq i8 %457, 2
  br i1 %cmp362.not, label %cedrus_h265_frame_info_write_dpb.exit.if.end414_crit_edge, label %if.then364

cedrus_h265_frame_info_write_dpb.exit.if.end414_crit_edge: ; preds = %cedrus_h265_frame_info_write_dpb.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end414

if.then364:                                       ; preds = %cedrus_h265_frame_info_write_dpb.exit
  %ref_idx_l0 = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 21
  %458 = ptrtoint ptr %num_ref_idx_l0_active_minus1 to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %num_ref_idx_l0_active_minus1, align 2
  %add370 = add i8 %459, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %460 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i.i690 = getelementptr i8, ptr %461, i32 1504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i690, i32 786432) #4, !srcloc !12
  %conv.i691 = zext i8 %add370 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add370)
  %cmp32.not.i = icmp eq i8 %add370, 0
  br i1 %cmp32.not.i, label %if.then364.cedrus_h265_ref_pic_list_write.exit_crit_edge, label %for.body.lr.ph.i693

if.then364.cedrus_h265_ref_pic_list_write.exit_crit_edge: ; preds = %if.then364
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_h265_ref_pic_list_write.exit

for.body.lr.ph.i693:                              ; preds = %if.then364
  %sub.i692 = add nsw i32 %conv.i691, -1
  br label %for.body.i699

for.body.i699:                                    ; preds = %if.end19.i.for.body.i699_crit_edge, %for.body.lr.ph.i693
  %word.0.i = phi i32 [ 0, %for.body.lr.ph.i693 ], [ %word.1.i, %if.end19.i.for.body.i699_crit_edge ]
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i693 ], [ %inc.i700, %if.end19.i.for.body.i699_crit_edge ]
  %rem.i = and i32 %i.033.i, 3
  %mul.i694 = shl nuw nsw i32 %rem.i, 3
  %arrayidx.i695 = getelementptr i8, ptr %ref_idx_l0, i32 %i.033.i
  %462 = ptrtoint ptr %arrayidx.i695 to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %arrayidx.i695, align 1
  %conv2.i = zext i8 %463 to i32
  %rps.i = getelementptr %struct.v4l2_hevc_dpb_entry, ptr %dpb, i32 %conv2.i, i32 1
  %464 = ptrtoint ptr %rps.i to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %rps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %465)
  %cmp6.i = icmp eq i8 %465, 3
  %or.i696 = or i8 %463, -128
  %spec.select.i = select i1 %cmp6.i, i8 %or.i696, i8 %463
  %conv10.i697 = zext i8 %spec.select.i to i32
  %shl.i698 = shl nuw i32 %conv10.i697, %mul.i694
  %or11.i = or i32 %shl.i698, %word.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rem.i)
  %cmp13.i = icmp eq i32 %rem.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %i.033.i, i32 %sub.i692)
  %cmp16.i = icmp eq i32 %i.033.i, %sub.i692
  %or.cond.i = select i1 %cmp13.i, i1 true, i1 %cmp16.i
  br i1 %or.cond.i, label %while.body.i.preheader.i, label %for.body.i699.if.end19.i_crit_edge

for.body.i699.if.end19.i_crit_edge:               ; preds = %for.body.i699
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i

while.body.i.preheader.i:                         ; preds = %for.body.i699
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %466 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #4
  %467 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i31.i = getelementptr i8, ptr %468, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i31.i, i32 %466) #4, !srcloc !12
  br label %if.end19.i

if.end19.i:                                       ; preds = %while.body.i.preheader.i, %for.body.i699.if.end19.i_crit_edge
  %word.1.i = phi i32 [ 0, %while.body.i.preheader.i ], [ %or11.i, %for.body.i699.if.end19.i_crit_edge ]
  %inc.i700 = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i701 = icmp eq i32 %inc.i700, %conv.i691
  br i1 %exitcond.not.i701, label %if.end19.i.cedrus_h265_ref_pic_list_write.exit_crit_edge, label %if.end19.i.for.body.i699_crit_edge

if.end19.i.for.body.i699_crit_edge:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i699

if.end19.i.cedrus_h265_ref_pic_list_write.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_h265_ref_pic_list_write.exit

cedrus_h265_ref_pic_list_write.exit:              ; preds = %if.end19.i.cedrus_h265_ref_pic_list_write.exit_crit_edge, %if.then364.cedrus_h265_ref_pic_list_write.exit_crit_edge
  %469 = ptrtoint ptr %flags167 to i32
  call void @__asan_load8_noabort(i32 %469)
  %470 = load i64, ptr %flags167, align 8
  %471 = and i64 %470, 768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %471)
  %472 = icmp eq i64 %471, 0
  br i1 %472, label %cedrus_h265_ref_pic_list_write.exit.if.end388_crit_edge, label %if.then378

cedrus_h265_ref_pic_list_write.exit.if.end388_crit_edge: ; preds = %cedrus_h265_ref_pic_list_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end388

if.then378:                                       ; preds = %cedrus_h265_ref_pic_list_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  %luma_offset_l0 = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 24, i32 1
  %delta_chroma_weight_l0 = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 24, i32 2
  %chroma_offset_l0 = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 24, i32 3
  %473 = ptrtoint ptr %num_ref_idx_l0_active_minus1 to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %num_ref_idx_l0_active_minus1, align 2
  %add385 = add i8 %474, 1
  tail call fastcc void @cedrus_h265_pred_weight_write(ptr noundef %1, ptr noundef %pred_weight_table6, ptr noundef %luma_offset_l0, ptr noundef %delta_chroma_weight_l0, ptr noundef %chroma_offset_l0, i8 noundef zeroext %add385, i32 noundef 0, i32 noundef 32)
  br label %if.end388

if.end388:                                        ; preds = %if.then378, %cedrus_h265_ref_pic_list_write.exit.if.end388_crit_edge
  %475 = ptrtoint ptr %slice_type to i32
  call void @__asan_load1_noabort(i32 %475)
  %.pr = load i8, ptr %slice_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp391 = icmp eq i8 %.pr, 0
  br i1 %cmp391, label %if.then393, label %if.end388.if.end414_crit_edge

if.end388.if.end414_crit_edge:                    ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end414

if.then393:                                       ; preds = %if.end388
  %ref_idx_l1 = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 22
  %476 = ptrtoint ptr %num_ref_idx_l1_active_minus1 to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %num_ref_idx_l1_active_minus1, align 1
  %add399 = add i8 %477, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %478 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i.i703 = getelementptr i8, ptr %479, i32 1504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i703, i32 269221888) #4, !srcloc !12
  %conv.i704 = zext i8 %add399 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add399)
  %cmp32.not.i705 = icmp eq i8 %add399, 0
  br i1 %cmp32.not.i705, label %if.then393.cedrus_h265_ref_pic_list_write.exit731_crit_edge, label %for.body.lr.ph.i707

if.then393.cedrus_h265_ref_pic_list_write.exit731_crit_edge: ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_h265_ref_pic_list_write.exit731

for.body.lr.ph.i707:                              ; preds = %if.then393
  %sub.i706 = add nsw i32 %conv.i704, -1
  br label %for.body.i724

for.body.i724:                                    ; preds = %if.end19.i730.for.body.i724_crit_edge, %for.body.lr.ph.i707
  %word.0.i708 = phi i32 [ 0, %for.body.lr.ph.i707 ], [ %word.1.i727, %if.end19.i730.for.body.i724_crit_edge ]
  %i.033.i709 = phi i32 [ 0, %for.body.lr.ph.i707 ], [ %inc.i728, %if.end19.i730.for.body.i724_crit_edge ]
  %rem.i710 = and i32 %i.033.i709, 3
  %mul.i711 = shl nuw nsw i32 %rem.i710, 3
  %arrayidx.i712 = getelementptr i8, ptr %ref_idx_l1, i32 %i.033.i709
  %480 = ptrtoint ptr %arrayidx.i712 to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %arrayidx.i712, align 1
  %conv2.i713 = zext i8 %481 to i32
  %rps.i714 = getelementptr %struct.v4l2_hevc_dpb_entry, ptr %dpb, i32 %conv2.i713, i32 1
  %482 = ptrtoint ptr %rps.i714 to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %rps.i714, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %483)
  %cmp6.i715 = icmp eq i8 %483, 3
  %or.i716 = or i8 %481, -128
  %spec.select.i717 = select i1 %cmp6.i715, i8 %or.i716, i8 %481
  %conv10.i718 = zext i8 %spec.select.i717 to i32
  %shl.i719 = shl nuw i32 %conv10.i718, %mul.i711
  %or11.i720 = or i32 %shl.i719, %word.0.i708
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rem.i710)
  %cmp13.i721 = icmp eq i32 %rem.i710, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %i.033.i709, i32 %sub.i706)
  %cmp16.i722 = icmp eq i32 %i.033.i709, %sub.i706
  %or.cond.i723 = select i1 %cmp13.i721, i1 true, i1 %cmp16.i722
  br i1 %or.cond.i723, label %while.body.i.preheader.i726, label %for.body.i724.if.end19.i730_crit_edge

for.body.i724.if.end19.i730_crit_edge:            ; preds = %for.body.i724
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19.i730

while.body.i.preheader.i726:                      ; preds = %for.body.i724
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %484 = tail call i32 @llvm.bswap.i32(i32 %or11.i720) #4
  %485 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i31.i725 = getelementptr i8, ptr %486, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i31.i725, i32 %484) #4, !srcloc !12
  br label %if.end19.i730

if.end19.i730:                                    ; preds = %while.body.i.preheader.i726, %for.body.i724.if.end19.i730_crit_edge
  %word.1.i727 = phi i32 [ 0, %while.body.i.preheader.i726 ], [ %or11.i720, %for.body.i724.if.end19.i730_crit_edge ]
  %inc.i728 = add nuw nsw i32 %i.033.i709, 1
  %exitcond.not.i729 = icmp eq i32 %inc.i728, %conv.i704
  br i1 %exitcond.not.i729, label %if.end19.i730.cedrus_h265_ref_pic_list_write.exit731_crit_edge, label %if.end19.i730.for.body.i724_crit_edge

if.end19.i730.for.body.i724_crit_edge:            ; preds = %if.end19.i730
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i724

if.end19.i730.cedrus_h265_ref_pic_list_write.exit731_crit_edge: ; preds = %if.end19.i730
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_h265_ref_pic_list_write.exit731

cedrus_h265_ref_pic_list_write.exit731:           ; preds = %if.end19.i730.cedrus_h265_ref_pic_list_write.exit731_crit_edge, %if.then393.cedrus_h265_ref_pic_list_write.exit731_crit_edge
  %487 = ptrtoint ptr %flags167 to i32
  call void @__asan_load8_noabort(i32 %487)
  %488 = load i64, ptr %flags167, align 8
  %and402 = and i64 %488, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and402)
  %tobool403.not = icmp eq i64 %and402, 0
  br i1 %tobool403.not, label %cedrus_h265_ref_pic_list_write.exit731.if.end414_crit_edge, label %if.then404

cedrus_h265_ref_pic_list_write.exit731.if.end414_crit_edge: ; preds = %cedrus_h265_ref_pic_list_write.exit731
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end414

if.then404:                                       ; preds = %cedrus_h265_ref_pic_list_write.exit731
  call void @__sanitizer_cov_trace_pc() #6
  %delta_luma_weight_l1 = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 24, i32 4
  %luma_offset_l1 = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 24, i32 5
  %delta_chroma_weight_l1 = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 24, i32 6
  %chroma_offset_l1 = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %11, i32 0, i32 24, i32 7
  %489 = ptrtoint ptr %num_ref_idx_l1_active_minus1 to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %num_ref_idx_l1_active_minus1, align 1
  %add411 = add i8 %490, 1
  tail call fastcc void @cedrus_h265_pred_weight_write(ptr noundef %1, ptr noundef %delta_luma_weight_l1, ptr noundef %luma_offset_l1, ptr noundef %delta_chroma_weight_l1, ptr noundef %chroma_offset_l1, i8 noundef zeroext %add411, i32 noundef 96, i32 noundef 128)
  br label %if.end414

if.end414:                                        ; preds = %if.then404, %cedrus_h265_ref_pic_list_write.exit731.if.end414_crit_edge, %if.end388.if.end414_crit_edge, %cedrus_h265_frame_info_write_dpb.exit.if.end414_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %491 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %base.i, align 8
  %add.ptr.i733 = getelementptr i8, ptr %492, i32 1328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i733, i32 117440512) #4, !srcloc !12
  br label %cleanup415

cleanup415:                                       ; preds = %if.end414, %if.then35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pic_order_cnt) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_h265_start(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %mv_col_buf_size = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 2
  %2 = ptrtoint ptr %mv_col_buf_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mv_col_buf_size, align 4
  %dev2 = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 4
  %neighbor_info_buf_addr = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 5
  %call = tail call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef 406528, ptr noundef %neighbor_info_buf_addr, i32 noundef 3264, i32 noundef 16) #4
  %neighbor_info_buf = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 4
  %5 = ptrtoint ptr %neighbor_info_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %neighbor_info_buf, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_h265_stop(ptr nocapture noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %mv_col_buf_size = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 2
  %2 = ptrtoint ptr %mv_col_buf_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mv_col_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %codec = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7
  %dev2 = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %6 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %codec, align 4
  %mv_col_buf_addr = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 1
  %8 = ptrtoint ptr %mv_col_buf_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mv_col_buf_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %3, ptr noundef %7, i32 noundef %9, i32 noundef 16) #4
  %10 = ptrtoint ptr %mv_col_buf_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mv_col_buf_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev9 = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev9, align 4
  %neighbor_info_buf = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 4
  %13 = ptrtoint ptr %neighbor_info_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %neighbor_info_buf, align 4
  %neighbor_info_buf_addr = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 5
  %15 = ptrtoint ptr %neighbor_info_buf_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %neighbor_info_buf_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %12, i32 noundef 406528, ptr noundef %14, i32 noundef %16, i32 noundef 16) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_h265_trigger(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 1332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 134217728) #4, !srcloc !12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cedrus_engine_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cedrus_h265_frame_info_write_single(ptr nocapture noundef readonly %ctx, i32 noundef %index, i1 noundef zeroext %field_pic, ptr nocapture noundef readonly %pic_order_cnt, i32 noundef %buffer_index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buffer_index)
  %cmp.i = icmp slt i32 %buffer_index, 0
  br i1 %cmp.i, label %entry.cedrus_dst_buf_addr.exit51_crit_edge, label %if.end.i

entry.cedrus_dst_buf_addr.exit51_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_dst_buf_addr.exit51

if.end.i:                                         ; preds = %entry
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx.i, align 4
  %call.i = tail call ptr @v4l2_m2m_get_vq(ptr noundef %3, i32 noundef 1) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end.i38_crit_edge, label %if.then1.i

if.end.i.if.end.i38_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i38

if.then1.i:                                       ; preds = %if.end.i
  %num_buffers.i.i = getelementptr inbounds %struct.vb2_queue, ptr %call.i, i32 0, i32 21
  %4 = ptrtoint ptr %num_buffers.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %buffer_index)
  %cmp.i.i = icmp ugt i32 %5, %buffer_index
  br i1 %cmp.i.i, label %if.end3.i, label %if.then1.i.if.end.i38_crit_edge

if.then1.i.if.end.i38_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i38

if.end3.i:                                        ; preds = %if.then1.i
  %arrayidx.i.i = getelementptr %struct.vb2_queue, ptr %call.i, i32 0, i32 20, i32 %buffer_index
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %if.end3.i.if.end.i38_crit_edge, label %cond.true.i

if.end3.i.if.end.i38_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i38

cond.true.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %7, i32 noundef 0) #4
  %8 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i.i.i, align 4
  br label %if.end.i38

if.end.i38:                                       ; preds = %cond.true.i, %if.end3.i.if.end.i38_crit_edge, %if.then1.i.if.end.i38_crit_edge, %if.end.i.if.end.i38_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %if.then1.i.if.end.i38_crit_edge ], [ 0, %if.end.i.if.end.i38_crit_edge ], [ 0, %if.end3.i.if.end.i38_crit_edge ], [ %9, %cond.true.i ]
  %10 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m2m_ctx.i, align 4
  %call.i36 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %11, i32 noundef 1) #4
  %tobool.not.i37 = icmp eq ptr %call.i36, null
  br i1 %tobool.not.i37, label %if.end.i38.cedrus_dst_buf_addr.exit51_crit_edge, label %if.then1.i41

if.end.i38.cedrus_dst_buf_addr.exit51_crit_edge:  ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_dst_buf_addr.exit51

if.then1.i41:                                     ; preds = %if.end.i38
  %num_buffers.i.i39 = getelementptr inbounds %struct.vb2_queue, ptr %call.i36, i32 0, i32 21
  %12 = ptrtoint ptr %num_buffers.i.i39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_buffers.i.i39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %buffer_index)
  %cmp.i.i40 = icmp ugt i32 %13, %buffer_index
  br i1 %cmp.i.i40, label %if.end3.i44, label %if.then1.i41.cedrus_dst_buf_addr.exit51_crit_edge

if.then1.i41.cedrus_dst_buf_addr.exit51_crit_edge: ; preds = %if.then1.i41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_dst_buf_addr.exit51

if.end3.i44:                                      ; preds = %if.then1.i41
  %arrayidx.i.i42 = getelementptr %struct.vb2_queue, ptr %call.i36, i32 0, i32 20, i32 %buffer_index
  %14 = ptrtoint ptr %arrayidx.i.i42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i42, align 4
  %tobool4.not.i43 = icmp eq ptr %15, null
  br i1 %tobool4.not.i43, label %if.end3.i44.cedrus_dst_buf_addr.exit51_crit_edge, label %cond.true.i47

if.end3.i44.cedrus_dst_buf_addr.exit51_crit_edge: ; preds = %if.end3.i44
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_dst_buf_addr.exit51

cond.true.i47:                                    ; preds = %if.end3.i44
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i.i46 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %15, i32 noundef 0) #4
  %16 = ptrtoint ptr %call.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call.i.i.i46, align 4
  %bytesperline.i.i48 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 3, i32 4
  %18 = ptrtoint ptr %bytesperline.i.i48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bytesperline.i.i48, align 4
  %height.i.i49 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %height.i.i49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height.i.i49, align 4
  %mul1.i.i = mul i32 %21, %19
  %add.i.i = add i32 %mul1.i.i, %17
  %phi.bo = lshr i32 %add.i.i, 8
  br label %cedrus_dst_buf_addr.exit51

cedrus_dst_buf_addr.exit51:                       ; preds = %cond.true.i47, %if.end3.i44.cedrus_dst_buf_addr.exit51_crit_edge, %if.then1.i41.cedrus_dst_buf_addr.exit51_crit_edge, %if.end.i38.cedrus_dst_buf_addr.exit51_crit_edge, %entry.cedrus_dst_buf_addr.exit51_crit_edge
  %retval.0.i61 = phi i32 [ %retval.0.i.ph, %cond.true.i47 ], [ %retval.0.i.ph, %if.end3.i44.cedrus_dst_buf_addr.exit51_crit_edge ], [ %retval.0.i.ph, %if.end.i38.cedrus_dst_buf_addr.exit51_crit_edge ], [ %retval.0.i.ph, %if.then1.i41.cedrus_dst_buf_addr.exit51_crit_edge ], [ 0, %entry.cedrus_dst_buf_addr.exit51_crit_edge ]
  %retval.0.i50 = phi i32 [ %phi.bo, %cond.true.i47 ], [ 0, %if.end3.i44.cedrus_dst_buf_addr.exit51_crit_edge ], [ 0, %if.end.i38.cedrus_dst_buf_addr.exit51_crit_edge ], [ 0, %if.then1.i41.cedrus_dst_buf_addr.exit51_crit_edge ], [ 0, %entry.cedrus_dst_buf_addr.exit51_crit_edge ]
  %mv_col_buf_addr.i = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 1
  %22 = ptrtoint ptr %mv_col_buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mv_col_buf_addr.i, align 4
  %mv_col_buf_unit_size.i = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 3
  %24 = ptrtoint ptr %mv_col_buf_unit_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mv_col_buf_unit_size.i, align 4
  %mul.i = mul i32 %25, %buffer_index
  %add.i = add i32 %mul.i, %23
  %.op = lshr i32 %25, 1
  %div8.i = select i1 %field_pic, i32 %.op, i32 0
  %add5.i = add i32 %add.i, %div8.i
  %26 = ptrtoint ptr %pic_order_cnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pic_order_cnt, align 4
  %cond8.in.idx = zext i1 %field_pic to i32
  %cond8.in = getelementptr i32, ptr %pic_order_cnt, i32 %cond8.in.idx
  %28 = ptrtoint ptr %cond8.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %cond8 = load i32, ptr %cond8.in, align 4
  %shr = lshr i32 %add.i, 8
  %shr13 = lshr i32 %add5.i, 8
  %cond18 = select i1 %field_pic, i32 %shr13, i32 %shr
  %mul = shl i32 %index, 5
  %add = add i32 %mul, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %29 = tail call i32 @llvm.bswap.i32(i32 %add) #4
  %base.i.i = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 1504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %29) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i57 = getelementptr i8, ptr %33, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57, i32 %27) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %34 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i57.1 = getelementptr i8, ptr %35, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57.1, i32 %cond8) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %36 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i57.2 = getelementptr i8, ptr %37, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57.2, i32 %shr) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %38 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i57.3 = getelementptr i8, ptr %39, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57.3, i32 %cond18) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %40 = lshr i32 %retval.0.i61, 8
  %41 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i57.4 = getelementptr i8, ptr %42, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57.4, i32 %40) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i57.5 = getelementptr i8, ptr %44, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57.5, i32 %retval.0.i50) #4, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cedrus_h265_pred_weight_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %delta_luma_weight, ptr nocapture noundef readonly %luma_offset, ptr nocapture noundef readonly %delta_chroma_weight, ptr nocapture noundef readonly %chroma_offset, i8 noundef zeroext %num_ref_idx_active, i32 noundef %sram_luma_offset, i32 noundef %sram_chroma_offset) unnamed_addr #0 align 64 {
entry:
  %pred_weight = alloca [2 x %struct.cedrus_h265_sram_pred_weight], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pred_weight) #4
  %0 = ptrtoint ptr %pred_weight to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pred_weight, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %1 = tail call i32 @llvm.bswap.i32(i32 %sram_luma_offset) #4
  %base.i.i = getelementptr inbounds %struct.cedrus_dev, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %1) #4, !srcloc !12
  %conv = zext i8 %num_ref_idx_active to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_ref_idx_active)
  %cmp67.not = icmp eq i8 %num_ref_idx_active, 0
  br i1 %cmp67.not, label %for.end32.critedge, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %conv, -1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %rem = and i32 %i.068, 1
  %arrayidx = getelementptr i8, ptr %delta_luma_weight, i32 %i.068
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr [2 x %struct.cedrus_h265_sram_pred_weight], ptr %pred_weight, i32 0, i32 %rem
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx2, align 2
  %arrayidx3 = getelementptr i8, ptr %luma_offset, i32 %i.068
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3, align 1
  %offset = getelementptr [2 x %struct.cedrus_h265_sram_pred_weight], ptr %pred_weight, i32 0, i32 %rem, i32 1
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %offset, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp5.not = icmp ne i32 %rem, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.068, i32 %sub)
  %cmp8 = icmp eq i32 %i.068, %sub
  %or.cond = select i1 %cmp5.not, i1 true, i1 %cmp8
  br i1 %or.cond, label %while.body.i.preheader, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

while.body.i.preheader:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %pred_weight to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pred_weight, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i55 = getelementptr i8, ptr %14, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55, i32 %12) #4, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %while.body.i.preheader, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %15 = tail call i32 @llvm.bswap.i32(i32 %sram_chroma_offset) #4
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i57 = getelementptr i8, ptr %17, i32 1504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57, i32 %15) #4, !srcloc !12
  br i1 %cmp67.not, label %for.end.for.end32_crit_edge, label %for.cond15.preheader.preheader

for.end.for.end32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end32

for.cond15.preheader.preheader:                   ; preds = %for.end
  %offset26 = getelementptr inbounds [2 x %struct.cedrus_h265_sram_pred_weight], ptr %pred_weight, i32 0, i32 0, i32 1
  %arrayidx21.1 = getelementptr inbounds [2 x %struct.cedrus_h265_sram_pred_weight], ptr %pred_weight, i32 0, i32 1
  %offset26.1 = getelementptr inbounds [2 x %struct.cedrus_h265_sram_pred_weight], ptr %pred_weight, i32 0, i32 1, i32 1
  br label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond15.preheader.for.cond15.preheader_crit_edge, %for.cond15.preheader.preheader
  %i.171 = phi i32 [ %inc31, %for.cond15.preheader.for.cond15.preheader_crit_edge ], [ 0, %for.cond15.preheader.preheader ]
  %arrayidx20 = getelementptr [2 x i8], ptr %delta_chroma_weight, i32 %i.171, i32 0
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx20, align 1
  %20 = ptrtoint ptr %pred_weight to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %pred_weight, align 4
  %arrayidx24 = getelementptr [2 x i8], ptr %chroma_offset, i32 %i.171, i32 0
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx24, align 1
  %23 = ptrtoint ptr %offset26 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %offset26, align 1
  %arrayidx20.1 = getelementptr [2 x i8], ptr %delta_chroma_weight, i32 %i.171, i32 1
  %24 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx20.1, align 1
  %26 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx21.1, align 2
  %arrayidx24.1 = getelementptr [2 x i8], ptr %chroma_offset, i32 %i.171, i32 1
  %27 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx24.1, align 1
  %29 = ptrtoint ptr %offset26.1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %offset26.1, align 1
  %30 = load i32, ptr %pred_weight, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #4
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i62 = getelementptr i8, ptr %33, i32 1508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i62, i32 %31) #4, !srcloc !12
  %inc31 = add nuw nsw i32 %i.171, 1
  %exitcond72.not = icmp eq i32 %inc31, %conv
  br i1 %exitcond72.not, label %for.cond15.preheader.for.end32_crit_edge, label %for.cond15.preheader.for.cond15.preheader_crit_edge

for.cond15.preheader.for.cond15.preheader_crit_edge: ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond15.preheader

for.cond15.preheader.for.end32_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end32

for.end32.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %34 = tail call i32 @llvm.bswap.i32(i32 %sram_chroma_offset) #4
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i57.c = getelementptr i8, ptr %36, i32 1504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57.c, i32 %34) #4, !srcloc !12
  br label %for.end32

for.end32:                                        ; preds = %for.end32.critedge, %for.cond15.preheader.for.end32_crit_edge, %for.end.for.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pred_weight) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_find_timestamp(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @cedrus_dec_ops_h265, !1, !"cedrus_dec_ops_h265", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_h265.c", i32 708, i32 23}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2156436594}
!12 = !{i64 5411191}
!13 = !{i64 5411609}
!14 = !{i64 2156437414}
!15 = !{!"auto-init"}
!16 = !{i8 0, i8 2}
