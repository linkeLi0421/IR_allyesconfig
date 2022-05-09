; ModuleID = '/llk/IR_all_yes/drivers/staging/media/sunxi/cedrus/cedrus_h264.c_pt.bc'
source_filename = "../drivers/staging/media/sunxi/cedrus/cedrus_h264.c"
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
%struct.cedrus_h264_sram_ref_pic = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cedrus_run = type { ptr, ptr, %union.anon.95 }
%union.anon.95 = type { %struct.cedrus_h264_run }
%struct.cedrus_h264_run = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_h264_pps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.v4l2_ctrl_h264_scaling_matrix = type { [6 x [16 x i8]], [6 x [64 x i8]] }
%struct.v4l2_h264_dpb_entry = type { i64, i32, i16, i8, [5 x i8], i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cedrus_buffer = type { %struct.v4l2_m2m_buffer, %union.anon.107 }
%struct.v4l2_m2m_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, i32 }
%struct.v4l2_ctrl_h264_decode_params = type { [16 x %struct.v4l2_h264_dpb_entry], i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_h264_sps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [255 x i32], i32, i32, i16, i16, i32 }
%struct.v4l2_ctrl_h264_slice_params = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [32 x %struct.v4l2_h264_reference], [32 x %struct.v4l2_h264_reference], i32 }
%struct.v4l2_h264_reference = type { i8, i8 }
%struct.v4l2_ctrl_h264_pred_weights = type { i16, i16, [2 x %struct.v4l2_h264_weight_factors] }
%struct.v4l2_h264_weight_factors = type { [32 x i16], [32 x i16], [32 x [2 x i16]], [32 x [2 x i16]] }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }

@cedrus_dec_ops_h264 = dso_local global { %struct.cedrus_dec_ops, [36 x i8] } { %struct.cedrus_dec_ops { ptr @cedrus_h264_irq_clear, ptr @cedrus_h264_irq_disable, ptr @cedrus_h264_irq_status, ptr @cedrus_h264_setup, ptr @cedrus_h264_start, ptr @cedrus_h264_stop, ptr @cedrus_h264_trigger }, [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"cedrus_dec_ops_h264\00", align 1
@___asan_gen_.3 = private constant [52 x i8] c"../drivers/staging/media/sunxi/cedrus/cedrus_h264.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 699, i32 23 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @cedrus_dec_ops_h264], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_dec_ops_h264 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_h264_irq_clear(ptr nocapture noundef readonly %ctx) #0 align 64 {
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
  %add.ptr.i = getelementptr i8, ptr %3, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 117440512) #4, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_h264_irq_disable(ptr nocapture noundef readonly %ctx) #0 align 64 {
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
  %add.ptr.i = getelementptr i8, ptr %3, i32 544
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %5 = and i32 %4, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %7, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %5) #4, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_h264_irq_status(ptr nocapture noundef readonly %ctx) #0 align 64 {
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
  %add.ptr.i = getelementptr i8, ptr %3, i32 552
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !13
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %and = and i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = shl i32 %5, 1
  %6 = and i32 %and2, 2
  %retval.0 = select i1 %tobool.not, i32 %6, i32 1
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_h264_setup(ptr noundef %ctx, ptr nocapture noundef readonly %run) #0 align 64 {
entry:
  %pic_list.i = alloca [18 x %struct.cedrus_h264_sram_ref_pic], align 1
  %used_dpbs.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call i32 @cedrus_engine_enable(ptr noundef %ctx, i32 noundef 1) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !12
  %pic_info_buf_dma = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 5
  %4 = ptrtoint ptr %pic_info_buf_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pic_info_buf_dma, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #4
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 8
  %add.ptr.i14 = getelementptr i8, ptr %8, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %6) #4, !srcloc !12
  %neighbor_info_buf_dma = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 8
  %9 = ptrtoint ptr %neighbor_info_buf_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %neighbor_info_buf_dma, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #4
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 8
  %add.ptr.i16 = getelementptr i8, ptr %13, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %11) #4, !srcloc !12
  %pps1.i = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %pps1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pps1.i, align 4
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags.i, align 2
  %18 = and i16 %17, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i = icmp eq i16 %18, 0
  br i1 %tobool.not.i, label %entry.cedrus_write_scaling_lists.exit_crit_edge, label %if.end.i

entry.cedrus_write_scaling_lists.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_write_scaling_lists.exit

if.end.i:                                         ; preds = %entry
  %19 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1, align 4
  %scaling_matrix.i = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 2
  %21 = ptrtoint ptr %scaling_matrix.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %scaling_matrix.i, align 4
  %scaling_list_8x8.i = getelementptr inbounds %struct.v4l2_ctrl_h264_scaling_matrix, ptr %22, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %base.i.i.i = getelementptr inbounds %struct.cedrus_dev, ptr %20, i32 0, i32 9
  %23 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 524288) #4, !srcloc !12
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.i
  %count.07.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 16, %if.end.i ]
  %buffer.06.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %scaling_list_8x8.i, %if.end.i ]
  %dec.i.i = add nsw i32 %count.07.i.i, -1
  %incdec.ptr.i.i = getelementptr i32, ptr %buffer.06.i.i, i32 1
  %25 = ptrtoint ptr %buffer.06.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buffer.06.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #4
  %28 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %29, i32 740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %27) #4, !srcloc !12
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %cedrus_h264_write_sram.exit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

cedrus_h264_write_sram.exit.i:                    ; preds = %while.body.i.i
  %arrayidx4.i = getelementptr %struct.v4l2_ctrl_h264_scaling_matrix, ptr %22, i32 0, i32 1, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %30 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i.i15.i = getelementptr i8, ptr %31, i32 736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15.i, i32 1074266112) #4, !srcloc !12
  br label %while.body.i22.i

while.body.i22.i:                                 ; preds = %while.body.i22.i.while.body.i22.i_crit_edge, %cedrus_h264_write_sram.exit.i
  %count.07.i16.i = phi i32 [ %dec.i18.i, %while.body.i22.i.while.body.i22.i_crit_edge ], [ 16, %cedrus_h264_write_sram.exit.i ]
  %buffer.06.i17.i = phi ptr [ %incdec.ptr.i19.i, %while.body.i22.i.while.body.i22.i_crit_edge ], [ %arrayidx4.i, %cedrus_h264_write_sram.exit.i ]
  %dec.i18.i = add nsw i32 %count.07.i16.i, -1
  %incdec.ptr.i19.i = getelementptr i32, ptr %buffer.06.i17.i, i32 1
  %32 = ptrtoint ptr %buffer.06.i17.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buffer.06.i17.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #4
  %35 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i4.i20.i = getelementptr i8, ptr %36, i32 740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i20.i, i32 %34) #4, !srcloc !12
  %tobool.not.i21.i = icmp eq i32 %dec.i18.i, 0
  br i1 %tobool.not.i21.i, label %cedrus_h264_write_sram.exit23.i, label %while.body.i22.i.while.body.i22.i_crit_edge

while.body.i22.i.while.body.i22.i_crit_edge:      ; preds = %while.body.i22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i22.i

cedrus_h264_write_sram.exit23.i:                  ; preds = %while.body.i22.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %37 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i.i25.i = getelementptr i8, ptr %38, i32 736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i25.i, i32 -2146959360) #4, !srcloc !12
  br label %while.body.i32.i

while.body.i32.i:                                 ; preds = %while.body.i32.i.while.body.i32.i_crit_edge, %cedrus_h264_write_sram.exit23.i
  %count.07.i26.i = phi i32 [ %dec.i28.i, %while.body.i32.i.while.body.i32.i_crit_edge ], [ 24, %cedrus_h264_write_sram.exit23.i ]
  %buffer.06.i27.i = phi ptr [ %incdec.ptr.i29.i, %while.body.i32.i.while.body.i32.i_crit_edge ], [ %22, %cedrus_h264_write_sram.exit23.i ]
  %dec.i28.i = add nsw i32 %count.07.i26.i, -1
  %incdec.ptr.i29.i = getelementptr i32, ptr %buffer.06.i27.i, i32 1
  %39 = ptrtoint ptr %buffer.06.i27.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buffer.06.i27.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #4
  %42 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i.i, align 8
  %add.ptr.i4.i30.i = getelementptr i8, ptr %43, i32 740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i30.i, i32 %41) #4, !srcloc !12
  %tobool.not.i31.i = icmp eq i32 %dec.i28.i, 0
  br i1 %tobool.not.i31.i, label %while.body.i32.i.cedrus_write_scaling_lists.exit_crit_edge, label %while.body.i32.i.while.body.i32.i_crit_edge

while.body.i32.i.while.body.i32.i_crit_edge:      ; preds = %while.body.i32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i32.i

while.body.i32.i.cedrus_write_scaling_lists.exit_crit_edge: ; preds = %while.body.i32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_write_scaling_lists.exit

cedrus_write_scaling_lists.exit:                  ; preds = %while.body.i32.i.cedrus_write_scaling_lists.exit_crit_edge, %entry.cedrus_write_scaling_lists.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %pic_list.i) #4
  %44 = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %sps1.i = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 4
  %47 = ptrtoint ptr %sps1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sps1.i, align 4
  %49 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %used_dpbs.i) #4
  %51 = ptrtoint ptr %used_dpbs.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %used_dpbs.i, align 4
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %52 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %m2m_ctx.i, align 4
  %call.i = tail call ptr @v4l2_m2m_get_vq(ptr noundef %53, i32 noundef 1) #4
  %54 = call ptr @memset(ptr %pic_list.i, i32 0, i32 576)
  %dst.i = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 1
  %bytesperline.i24.i.i = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 3, i32 4
  %height.i25.i.i = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 3, i32 1
  %mv_col_buf_dma.i.i.i = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 1
  %mv_col_buf_field_size.i.i.i = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %cedrus_write_scaling_lists.exit
  %i.0107.i = phi i32 [ 0, %cedrus_write_scaling_lists.exit ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %output.0106.i = phi i32 [ -1, %cedrus_write_scaling_lists.exit ], [ %output.1.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %46, i32 0, i32 %i.0107.i
  %flags.i18 = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %46, i32 0, i32 %i.0107.i, i32 7
  %55 = ptrtoint ptr %flags.i18 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.i18, align 4
  %and.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i19 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i19, label %for.body.i.cleanup.i_crit_edge, label %if.end.i20

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end.i20:                                       ; preds = %for.body.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx.i, align 8
  %call4.i = tail call i32 @vb2_find_timestamp(ptr noundef %call.i, i64 noundef %58, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i20.cleanup.i_crit_edge, label %if.end7.i

if.end.i20.cleanup.i_crit_edge:                   ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end7.i:                                        ; preds = %if.end.i20
  %arrayidx8.i = getelementptr %struct.vb2_queue, ptr %call.i, i32 0, i32 20, i32 %call4.i
  %59 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx8.i, align 4
  %codec.i = getelementptr inbounds %struct.cedrus_buffer, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %codec.i, align 8
  %shl.i = shl nuw i32 1, %62
  %63 = ptrtoint ptr %used_dpbs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %used_dpbs.i, align 4
  %or.i = or i32 %64, %shl.i
  store i32 %or.i, ptr %used_dpbs.i, align 4
  %65 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dst.i, align 4
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %timestamp.i, align 8
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %68, i64 %70)
  %cmp12.i = icmp eq i64 %68, %70
  br i1 %cmp12.i, label %if.end7.i.cleanup.i_crit_edge, label %if.end14.i

if.end7.i.cleanup.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end14.i:                                       ; preds = %if.end7.i
  %71 = ptrtoint ptr %flags.i18 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i18, align 4
  %and16.i = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.cleanup.i_crit_edge, label %if.end19.i

if.end14.i.cleanup.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end19.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  %top_field_order_cnt.i = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %46, i32 0, i32 %i.0107.i, i32 5
  %73 = ptrtoint ptr %top_field_order_cnt.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %top_field_order_cnt.i, align 4
  %bottom_field_order_cnt.i = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %46, i32 0, i32 %i.0107.i, i32 6
  %75 = ptrtoint ptr %bottom_field_order_cnt.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bottom_field_order_cnt.i, align 8
  %arrayidx20.i = getelementptr [18 x %struct.cedrus_h264_sram_ref_pic], ptr %pic_list.i, i32 0, i32 %62
  %77 = tail call i32 @llvm.bswap.i32(i32 %74) #4
  %78 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %77, ptr %arrayidx20.i, align 1
  %79 = tail call i32 @llvm.bswap.i32(i32 %76) #4
  %bottom_field_order_cnt3.i.i = getelementptr [18 x %struct.cedrus_h264_sram_ref_pic], ptr %pic_list.i, i32 0, i32 %62, i32 1
  %80 = ptrtoint ptr %bottom_field_order_cnt3.i.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %79, ptr %bottom_field_order_cnt3.i.i, align 1
  %pic_type.i.i = getelementptr inbounds %struct.cedrus_buffer, ptr %60, i32 0, i32 1, i32 0, i32 1
  %81 = ptrtoint ptr %pic_type.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pic_type.i.i, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #4
  %84 = lshr i32 %83, 8
  %frame_info.i.i = getelementptr [18 x %struct.cedrus_h264_sram_ref_pic], ptr %pic_list.i, i32 0, i32 %62, i32 2
  %85 = ptrtoint ptr %frame_info.i.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %84, ptr %frame_info.i.i, align 1
  %call.i.i.i.i = tail call ptr @vb2_plane_cookie(ptr noundef %60, i32 noundef 0) #4
  %86 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %call.i.i.i.i, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #4
  %luma_ptr.i.i = getelementptr [18 x %struct.cedrus_h264_sram_ref_pic], ptr %pic_list.i, i32 0, i32 %62, i32 3
  %89 = ptrtoint ptr %luma_ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %88, ptr %luma_ptr.i.i, align 1
  %call.i.i22.i.i = tail call ptr @vb2_plane_cookie(ptr noundef %60, i32 noundef 0) #4
  %90 = ptrtoint ptr %call.i.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %call.i.i22.i.i, align 4
  %92 = ptrtoint ptr %bytesperline.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %bytesperline.i24.i.i, align 4
  %94 = ptrtoint ptr %height.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %height.i25.i.i, align 4
  %mul1.i.i.i = mul i32 %95, %93
  %add.i.i.i = add i32 %mul1.i.i.i, %91
  %96 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #4
  %chroma_ptr.i.i = getelementptr [18 x %struct.cedrus_h264_sram_ref_pic], ptr %pic_list.i, i32 0, i32 %62, i32 4
  %97 = ptrtoint ptr %chroma_ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 4)
  store i32 %96, ptr %chroma_ptr.i.i, align 1
  %98 = ptrtoint ptr %mv_col_buf_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mv_col_buf_dma.i.i.i, align 4
  %100 = ptrtoint ptr %mv_col_buf_field_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mv_col_buf_field_size.i.i.i, align 4
  %mul2.i.i.i = shl i32 %62, 1
  %reass.mul.i.i.i = mul i32 %101, %mul2.i.i.i
  %add6.i.i.i = add i32 %reass.mul.i.i.i, %99
  %102 = tail call i32 @llvm.bswap.i32(i32 %add6.i.i.i) #4
  %mv_col_top_ptr.i.i = getelementptr [18 x %struct.cedrus_h264_sram_ref_pic], ptr %pic_list.i, i32 0, i32 %62, i32 5
  %103 = ptrtoint ptr %mv_col_top_ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 %102, ptr %mv_col_top_ptr.i.i, align 1
  %reass.add.i.i.i = or i32 %mul2.i.i.i, 1
  %reass.mul.i31.i.i = mul i32 %101, %reass.add.i.i.i
  %add6.i32.i.i = add i32 %reass.mul.i31.i.i, %99
  %104 = tail call i32 @llvm.bswap.i32(i32 %add6.i32.i.i) #4
  %mv_col_bot_ptr.i.i = getelementptr [18 x %struct.cedrus_h264_sram_ref_pic], ptr %pic_list.i, i32 0, i32 %62, i32 6
  %105 = ptrtoint ptr %mv_col_bot_ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %104, ptr %mv_col_bot_ptr.i.i, align 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end19.i, %if.end14.i.cleanup.i_crit_edge, %if.end7.i.cleanup.i_crit_edge, %if.end.i20.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %output.1.i = phi i32 [ %output.0106.i, %if.end19.i ], [ %output.0106.i, %for.body.i.cleanup.i_crit_edge ], [ %output.0106.i, %if.end.i20.cleanup.i_crit_edge ], [ %62, %if.end7.i.cleanup.i_crit_edge ], [ %output.0106.i, %if.end14.i.cleanup.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0107.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %output.1.i)
  %cmp23.i = icmp sgt i32 %output.1.i, -1
  br i1 %cmp23.i, label %for.end.i.if.end26.i_crit_edge, label %if.else.i

for.end.i.if.end26.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26.i

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call25.i = call i32 @_find_first_zero_bit_be(ptr noundef nonnull %used_dpbs.i, i32 noundef 18) #4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else.i, %for.end.i.if.end26.i_crit_edge
  %position.0.i = phi i32 [ %call25.i, %if.else.i ], [ %output.1.i, %for.end.i.if.end26.i_crit_edge ]
  %106 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dst.i, align 4
  %codec30.i = getelementptr inbounds %struct.cedrus_buffer, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %codec30.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %position.0.i, ptr %codec30.i, align 8
  %flags32.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %46, i32 0, i32 14
  %109 = ptrtoint ptr %flags32.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags32.i, align 4
  %and33.i = and i32 %110, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.else37.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  %pic_type.i = getelementptr inbounds %struct.cedrus_buffer, ptr %107, i32 0, i32 1, i32 0, i32 1
  %111 = ptrtoint ptr %pic_type.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %pic_type.i, align 4
  br label %if.end48.i

if.else37.i:                                      ; preds = %if.end26.i
  %flags38.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %48, i32 0, i32 17
  %112 = ptrtoint ptr %flags38.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags38.i, align 4
  %and39.i = and i32 %113, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  %pic_type46.i = getelementptr inbounds %struct.cedrus_buffer, ptr %107, i32 0, i32 1, i32 0, i32 1
  br i1 %tobool40.not.i, label %if.else44.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #6
  %114 = ptrtoint ptr %pic_type46.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 2, ptr %pic_type46.i, align 4
  br label %if.end48.i

if.else44.i:                                      ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #6
  %115 = ptrtoint ptr %pic_type46.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %pic_type46.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else44.i, %if.then41.i, %if.then35.i
  %top_field_order_cnt49.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %46, i32 0, i32 3
  %116 = ptrtoint ptr %top_field_order_cnt49.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %top_field_order_cnt49.i, align 4
  %bottom_field_order_cnt50.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %46, i32 0, i32 4
  %118 = ptrtoint ptr %bottom_field_order_cnt50.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %bottom_field_order_cnt50.i, align 8
  %arrayidx51.i = getelementptr [18 x %struct.cedrus_h264_sram_ref_pic], ptr %pic_list.i, i32 0, i32 %position.0.i
  %120 = ptrtoint ptr %codec30.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %codec30.i, align 8
  %122 = call i32 @llvm.bswap.i32(i32 %117) #4
  %123 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_storeN_noabort(i32 %123, i32 4)
  store i32 %122, ptr %arrayidx51.i, align 1
  %124 = call i32 @llvm.bswap.i32(i32 %119) #4
  %bottom_field_order_cnt3.i84.i = getelementptr [18 x %struct.cedrus_h264_sram_ref_pic], ptr %pic_list.i, i32 0, i32 %position.0.i, i32 1
  %125 = ptrtoint ptr %bottom_field_order_cnt3.i84.i to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 %124, ptr %bottom_field_order_cnt3.i84.i, align 1
  %pic_type.i85.i = getelementptr inbounds %struct.cedrus_buffer, ptr %107, i32 0, i32 1, i32 0, i32 1
  %126 = ptrtoint ptr %pic_type.i85.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %pic_type.i85.i, align 4
  %128 = call i32 @llvm.bswap.i32(i32 %127) #4
  %129 = lshr i32 %128, 8
  %frame_info.i86.i = getelementptr [18 x %struct.cedrus_h264_sram_ref_pic], ptr %pic_list.i, i32 0, i32 %position.0.i, i32 2
  %130 = ptrtoint ptr %frame_info.i86.i to i32
  call void @__asan_storeN_noabort(i32 %130, i32 4)
  store i32 %129, ptr %frame_info.i86.i, align 1
  %call.i.i.i88.i = call ptr @vb2_plane_cookie(ptr noundef %107, i32 noundef 0) #4
  %131 = ptrtoint ptr %call.i.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %call.i.i.i88.i, align 4
  %133 = call i32 @llvm.bswap.i32(i32 %132) #4
  %luma_ptr.i89.i = getelementptr [18 x %struct.cedrus_h264_sram_ref_pic], ptr %pic_list.i, i32 0, i32 %position.0.i, i32 3
  %134 = ptrtoint ptr %luma_ptr.i89.i to i32
  call void @__asan_storeN_noabort(i32 %134, i32 4)
  store i32 %133, ptr %luma_ptr.i89.i, align 1
  %call.i.i22.i90.i = call ptr @vb2_plane_cookie(ptr noundef %107, i32 noundef 0) #4
  %135 = ptrtoint ptr %call.i.i22.i90.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %call.i.i22.i90.i, align 4
  %137 = ptrtoint ptr %bytesperline.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %bytesperline.i24.i.i, align 4
  %139 = ptrtoint ptr %height.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %height.i25.i.i, align 4
  %mul1.i.i93.i = mul i32 %140, %138
  %add.i.i94.i = add i32 %mul1.i.i93.i, %136
  %141 = call i32 @llvm.bswap.i32(i32 %add.i.i94.i) #4
  %chroma_ptr.i95.i = getelementptr [18 x %struct.cedrus_h264_sram_ref_pic], ptr %pic_list.i, i32 0, i32 %position.0.i, i32 4
  %142 = ptrtoint ptr %chroma_ptr.i95.i to i32
  call void @__asan_storeN_noabort(i32 %142, i32 4)
  store i32 %141, ptr %chroma_ptr.i95.i, align 1
  %143 = ptrtoint ptr %mv_col_buf_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %mv_col_buf_dma.i.i.i, align 4
  %145 = ptrtoint ptr %mv_col_buf_field_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %mv_col_buf_field_size.i.i.i, align 4
  %mul2.i.i98.i = shl i32 %121, 1
  %reass.mul.i.i99.i = mul i32 %146, %mul2.i.i98.i
  %add6.i.i100.i = add i32 %reass.mul.i.i99.i, %144
  %147 = call i32 @llvm.bswap.i32(i32 %add6.i.i100.i) #4
  %mv_col_top_ptr.i101.i = getelementptr [18 x %struct.cedrus_h264_sram_ref_pic], ptr %pic_list.i, i32 0, i32 %position.0.i, i32 5
  %148 = ptrtoint ptr %mv_col_top_ptr.i101.i to i32
  call void @__asan_storeN_noabort(i32 %148, i32 4)
  store i32 %147, ptr %mv_col_top_ptr.i101.i, align 1
  %reass.add.i.i102.i = or i32 %mul2.i.i98.i, 1
  %reass.mul.i31.i103.i = mul i32 %146, %reass.add.i.i102.i
  %add6.i32.i104.i = add i32 %reass.mul.i31.i103.i, %144
  %149 = call i32 @llvm.bswap.i32(i32 %add6.i32.i104.i) #4
  %mv_col_bot_ptr.i105.i = getelementptr [18 x %struct.cedrus_h264_sram_ref_pic], ptr %pic_list.i, i32 0, i32 %position.0.i, i32 6
  %150 = ptrtoint ptr %mv_col_bot_ptr.i105.i to i32
  call void @__asan_storeN_noabort(i32 %150, i32 4)
  store i32 %149, ptr %mv_col_bot_ptr.i105.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %base.i.i.i21 = getelementptr inbounds %struct.cedrus_dev, ptr %50, i32 0, i32 9
  %151 = ptrtoint ptr %base.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base.i.i.i21, align 8
  %add.ptr.i.i.i22 = getelementptr i8, ptr %152, i32 736
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i22, i32 262144) #4, !srcloc !12
  br label %while.body.i.i29

while.body.i.i29:                                 ; preds = %while.body.i.i29.while.body.i.i29_crit_edge, %if.end48.i
  %count.07.i.i23 = phi i32 [ %dec.i.i25, %while.body.i.i29.while.body.i.i29_crit_edge ], [ 144, %if.end48.i ]
  %buffer.06.i.i24 = phi ptr [ %incdec.ptr.i.i26, %while.body.i.i29.while.body.i.i29_crit_edge ], [ %pic_list.i, %if.end48.i ]
  %dec.i.i25 = add nsw i32 %count.07.i.i23, -1
  %incdec.ptr.i.i26 = getelementptr i32, ptr %buffer.06.i.i24, i32 1
  %153 = ptrtoint ptr %buffer.06.i.i24 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %buffer.06.i.i24, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %155 = call i32 @llvm.bswap.i32(i32 %154) #4
  %156 = ptrtoint ptr %base.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base.i.i.i21, align 8
  %add.ptr.i4.i.i27 = getelementptr i8, ptr %157, i32 740
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i27, i32 %155) #4, !srcloc !12
  %tobool.not.i.i28 = icmp eq i32 %dec.i.i25, 0
  br i1 %tobool.not.i.i28, label %cedrus_write_frame_list.exit, label %while.body.i.i29.while.body.i.i29_crit_edge

while.body.i.i29.while.body.i.i29_crit_edge:      ; preds = %while.body.i.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i29

cedrus_write_frame_list.exit:                     ; preds = %while.body.i.i29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %158 = call i32 @llvm.bswap.i32(i32 %position.0.i) #4
  %159 = ptrtoint ptr %base.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %base.i.i.i21, align 8
  %add.ptr.i.i = getelementptr i8, ptr %160, i32 588
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %158) #4, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %used_dpbs.i) #4
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %pic_list.i) #4
  %161 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %44, align 4
  %slice_params.i = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 3
  %163 = ptrtoint ptr %slice_params.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %slice_params.i, align 4
  %165 = ptrtoint ptr %pps1.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pps1.i, align 4
  %167 = ptrtoint ptr %sps1.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %sps1.i, align 4
  %169 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %run, align 4
  %171 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev1, align 4
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %170, i32 0, i32 4
  %173 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp.not.i.i = icmp eq i32 %174, 0
  br i1 %cmp.not.i.i, label %cedrus_write_frame_list.exit.vb2_get_plane_payload.exit.i_crit_edge, label %if.then.i.i

cedrus_write_frame_list.exit.vb2_get_plane_payload.exit.i_crit_edge: ; preds = %cedrus_write_frame_list.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vb2_get_plane_payload.exit.i

if.then.i.i:                                      ; preds = %cedrus_write_frame_list.exit
  call void @__sanitizer_cov_trace_pc() #6
  %bytesused.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %170, i32 0, i32 10, i32 0, i32 3
  %175 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %bytesused.i.i, align 4
  br label %vb2_get_plane_payload.exit.i

vb2_get_plane_payload.exit.i:                     ; preds = %if.then.i.i, %cedrus_write_frame_list.exit.vb2_get_plane_payload.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %176, %if.then.i.i ], [ 0, %cedrus_write_frame_list.exit.vb2_get_plane_payload.exit.i_crit_edge ]
  %mul.i = shl i32 %retval.0.i.i, 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %177 = call i32 @llvm.bswap.i32(i32 %mul.i) #4
  %base.i.i = getelementptr inbounds %struct.cedrus_dev, ptr %172, i32 0, i32 9
  %178 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i32 = getelementptr i8, ptr %179, i32 568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32, i32 %177) #4, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %180 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i336.i = getelementptr i8, ptr %181, i32 564
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i336.i, i32 0) #4, !srcloc !12
  %call.i.i = call ptr @vb2_plane_cookie(ptr noundef %170, i32 noundef 0) #4
  %182 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %call.i.i, align 4
  %add.i = add i32 %183, %retval.0.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %184 = call i32 @llvm.bswap.i32(i32 %add.i) #4
  %185 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i338.i = getelementptr i8, ptr %186, i32 572
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i338.i, i32 %184) #4, !srcloc !12
  %and.i33 = and i32 %183, 268435440
  %shr.i = lshr i32 %183, 28
  %or.i34 = or i32 %and.i33, %shr.i
  %or7.i = or i32 %or.i34, 1879048192
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %187 = call i32 @llvm.bswap.i32(i32 %or7.i) #4
  %188 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i340.i = getelementptr i8, ptr %189, i32 560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i340.i, i32 %187) #4, !srcloc !12
  %src_fmt.i = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 2
  %190 = ptrtoint ptr %src_fmt.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %src_fmt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %191)
  %cmp.i = icmp ugt i32 %191, 2048
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  call void @arm_heavy_mb() #4
  %192 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i342.i = getelementptr i8, ptr %193, i32 80
  br i1 %cmp.i, label %if.then.i, label %if.else.i35

if.then.i:                                        ; preds = %vb2_get_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i342.i, i32 83886080) #4, !srcloc !12
  %deblk_buf_dma.i = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 10
  %194 = ptrtoint ptr %deblk_buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %deblk_buf_dma.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %196 = call i32 @llvm.bswap.i32(i32 %195) #4
  %197 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i344.i = getelementptr i8, ptr %198, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i344.i, i32 %196) #4, !srcloc !12
  %intra_pred_buf_dma.i = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 13
  %199 = ptrtoint ptr %intra_pred_buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %intra_pred_buf_dma.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %201 = call i32 @llvm.bswap.i32(i32 %200) #4
  %202 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i346.i = getelementptr i8, ptr %203, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i346.i, i32 %201) #4, !srcloc !12
  br label %if.end.i36

if.else.i35:                                      ; preds = %vb2_get_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i342.i, i32 0) #4, !srcloc !12
  br label %if.end.i36

if.end.i36:                                       ; preds = %if.else.i35, %if.then.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %204 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i350.i = getelementptr i8, ptr %205, i32 548
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i350.i, i32 117440512) #4, !srcloc !12
  %206 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp18.i.i = icmp sgt i32 %207, 0
  br i1 %cmp18.i.i, label %if.end.i36.while.body.i.i38_crit_edge, label %if.end.i36.cedrus_skip_bits.exit.i_crit_edge

if.end.i36.cedrus_skip_bits.exit.i_crit_edge:     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_skip_bits.exit.i

if.end.i36.while.body.i.i38_crit_edge:            ; preds = %if.end.i36
  br label %while.body.i.i38

while.body.i.i38:                                 ; preds = %while.end.i.i.while.body.i.i38_crit_edge, %if.end.i36.while.body.i.i38_crit_edge
  %count.019.i.i = phi i32 [ %add.i.i, %while.end.i.i.while.body.i.i38_crit_edge ], [ 0, %if.end.i36.while.body.i.i38_crit_edge ]
  %sub.i.i = sub i32 %207, %count.019.i.i
  %208 = call i32 @llvm.smin.i32(i32 %sub.i.i, i32 32) #4
  %and.i.i = shl i32 %208, 8
  %shl.i.i = and i32 %and.i.i, 16128
  %or.i.i = or i32 %shl.i.i, 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %209 = call i32 @llvm.bswap.i32(i32 %or.i.i) #4
  %210 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i.i37 = getelementptr i8, ptr %211, i32 548
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i37, i32 %209) #4, !srcloc !12
  %212 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i1516.i.i = getelementptr i8, ptr %213, i32 552
  %214 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1516.i.i) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %215 = and i32 %214, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool.not17.i.i = icmp eq i32 %215, 0
  br i1 %tobool.not17.i.i, label %while.body.i.i38.while.end.i.i_crit_edge, label %while.body.i.i38.while.body5.i.i_crit_edge

while.body.i.i38.while.body5.i.i_crit_edge:       ; preds = %while.body.i.i38
  br label %while.body5.i.i

while.body.i.i38.while.end.i.i_crit_edge:         ; preds = %while.body.i.i38
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i

while.body5.i.i:                                  ; preds = %while.body5.i.i.while.body5.i.i_crit_edge, %while.body.i.i38.while.body5.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %216 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %216(i32 noundef 214748) #4
  %217 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i15.i.i = getelementptr i8, ptr %218, i32 552
  %219 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %220 = and i32 %219, 65536
  %tobool.not.i.i39 = icmp eq i32 %220, 0
  br i1 %tobool.not.i.i39, label %while.body5.i.i.while.end.i.i_crit_edge, label %while.body5.i.i.while.body5.i.i_crit_edge

while.body5.i.i.while.body5.i.i_crit_edge:        ; preds = %while.body5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body5.i.i

while.body5.i.i.while.end.i.i_crit_edge:          ; preds = %while.body5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body5.i.i.while.end.i.i_crit_edge, %while.body.i.i38.while.end.i.i_crit_edge
  %add.i.i = add i32 %208, %count.019.i.i
  %cmp.i.i = icmp slt i32 %add.i.i, %207
  br i1 %cmp.i.i, label %while.end.i.i.while.body.i.i38_crit_edge, label %while.end.i.i.cedrus_skip_bits.exit.i_crit_edge

while.end.i.i.cedrus_skip_bits.exit.i_crit_edge:  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_skip_bits.exit.i

while.end.i.i.while.body.i.i38_crit_edge:         ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i38

cedrus_skip_bits.exit.i:                          ; preds = %while.end.i.i.cedrus_skip_bits.exit.i_crit_edge, %if.end.i36.cedrus_skip_bits.exit.i_crit_edge
  %flags.i40 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %166, i32 0, i32 10
  %221 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %flags.i40, align 2
  %223 = and i16 %222, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %223)
  %tobool.not.i41 = icmp eq i16 %223, 0
  br i1 %tobool.not.i41, label %cedrus_skip_bits.exit.i.lor.lhs.false17.i_crit_edge, label %land.lhs.true.i

cedrus_skip_bits.exit.i.lor.lhs.false17.i_crit_edge: ; preds = %cedrus_skip_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false17.i

land.lhs.true.i:                                  ; preds = %cedrus_skip_bits.exit.i
  %slice_type.i = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %164, i32 0, i32 2
  %224 = ptrtoint ptr %slice_type.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %slice_type.i, align 4
  %226 = zext i8 %225 to i64
  call void @__sanitizer_cov_trace_switch(i64 %226, ptr @__sancov_gen_cov_switch_values)
  switch i8 %225, label %land.lhs.true.i.lor.lhs.false17.i_crit_edge [
    i8 0, label %land.lhs.true.i.if.then26.i_crit_edge
    i8 3, label %land.lhs.true.i.if.then26.i_crit_edge44
  ]

land.lhs.true.i.if.then26.i_crit_edge44:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26.i

land.lhs.true.i.if.then26.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26.i

land.lhs.true.i.lor.lhs.false17.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false17.i

lor.lhs.false17.i:                                ; preds = %land.lhs.true.i.lor.lhs.false17.i_crit_edge, %cedrus_skip_bits.exit.i.lor.lhs.false17.i_crit_edge
  %weighted_bipred_idc.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %166, i32 0, i32 5
  %227 = ptrtoint ptr %weighted_bipred_idc.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %weighted_bipred_idc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %228)
  %cmp19.i = icmp eq i8 %228, 1
  br i1 %cmp19.i, label %land.lhs.true21.i, label %lor.lhs.false17.i.if.end27.i_crit_edge

lor.lhs.false17.i.if.end27.i_crit_edge:           ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27.i

land.lhs.true21.i:                                ; preds = %lor.lhs.false17.i
  %slice_type22.i = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %164, i32 0, i32 2
  %229 = ptrtoint ptr %slice_type22.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %slice_type22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %230)
  %cmp24.i = icmp eq i8 %230, 1
  br i1 %cmp24.i, label %land.lhs.true21.i.if.then26.i_crit_edge, label %land.lhs.true21.i.if.end27.i_crit_edge

land.lhs.true21.i.if.end27.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27.i

land.lhs.true21.i.if.then26.i_crit_edge:          ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26.i

if.then26.i:                                      ; preds = %land.lhs.true21.i.if.then26.i_crit_edge, %land.lhs.true.i.if.then26.i_crit_edge, %land.lhs.true.i.if.then26.i_crit_edge44
  %pred_weights.i.i = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 5
  %231 = ptrtoint ptr %pred_weights.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %pred_weights.i.i, align 4
  %233 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev1, align 4
  %chroma_log2_weight_denom.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pred_weights, ptr %232, i32 0, i32 1
  %235 = ptrtoint ptr %chroma_log2_weight_denom.i.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %chroma_log2_weight_denom.i.i, align 2
  %237 = shl i16 %236, 4
  %238 = and i16 %237, 112
  %239 = ptrtoint ptr %232 to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %232, align 2
  %241 = and i16 %240, 7
  %or66.i.i = or i16 %238, %241
  %or.i351.i = zext i16 %or66.i.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %242 = shl nuw nsw i32 %or.i351.i, 24
  %base.i.i352.i = getelementptr inbounds %struct.cedrus_dev, ptr %234, i32 0, i32 9
  %243 = ptrtoint ptr %base.i.i352.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %base.i.i352.i, align 8
  %add.ptr.i.i353.i = getelementptr i8, ptr %244, i32 528
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i353.i, i32 %242) #4, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %245 = ptrtoint ptr %base.i.i352.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %base.i.i352.i, align 8
  %add.ptr.i72.i.i = getelementptr i8, ptr %246, i32 736
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i.i, i32 0) #4, !srcloc !12
  %arrayidx.i.i = getelementptr %struct.v4l2_ctrl_h264_pred_weights, ptr %232, i32 0, i32 2, i32 0
  br label %for.body9.i.i

for.body9.i.i:                                    ; preds = %for.body9.i.i.for.body9.i.i_crit_edge, %if.then26.i
  %j.077.i.i = phi i32 [ 0, %if.then26.i ], [ %inc.i.i, %for.body9.i.i.for.body9.i.i_crit_edge ]
  %arrayidx10.i.i = getelementptr %struct.v4l2_ctrl_h264_pred_weights, ptr %232, i32 0, i32 2, i32 0, i32 1, i32 %j.077.i.i
  %247 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %arrayidx10.i.i, align 2
  %249 = and i16 %248, 511
  %and12.i.i = zext i16 %249 to i32
  %shl13.i.i = shl nuw nsw i32 %and12.i.i, 16
  %arrayidx14.i.i = getelementptr [32 x i16], ptr %arrayidx.i.i, i32 0, i32 %j.077.i.i
  %250 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %arrayidx14.i.i, align 2
  %252 = and i16 %251, 511
  %and16.i.i = zext i16 %252 to i32
  %or17.i.i = or i32 %shl13.i.i, %and16.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %253 = call i32 @llvm.bswap.i32(i32 %or17.i.i) #4
  %254 = ptrtoint ptr %base.i.i352.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %base.i.i352.i, align 8
  %add.ptr.i74.i.i = getelementptr i8, ptr %255, i32 740
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i.i, i32 %253) #4, !srcloc !12
  %inc.i.i = add nuw nsw i32 %j.077.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.body9.i.i.for.cond22.preheader.i.i_crit_edge, label %for.body9.i.i.for.body9.i.i_crit_edge

for.body9.i.i.for.body9.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body9.i.i

for.body9.i.i.for.cond22.preheader.i.i_crit_edge: ; preds = %for.body9.i.i
  br label %for.cond22.preheader.i.i

for.cond22.preheader.i.i:                         ; preds = %for.cond22.preheader.i.i.for.cond22.preheader.i.i_crit_edge, %for.body9.i.i.for.cond22.preheader.i.i_crit_edge
  %j.179.i.i = phi i32 [ %inc41.i.i, %for.cond22.preheader.i.i.for.cond22.preheader.i.i_crit_edge ], [ 0, %for.body9.i.i.for.cond22.preheader.i.i_crit_edge ]
  %arrayidx28.i.i = getelementptr %struct.v4l2_ctrl_h264_pred_weights, ptr %232, i32 0, i32 2, i32 0, i32 3, i32 %j.179.i.i, i32 0
  %256 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %arrayidx28.i.i, align 2
  %258 = and i16 %257, 511
  %and30.i.i = zext i16 %258 to i32
  %shl31.i.i = shl nuw nsw i32 %and30.i.i, 16
  %arrayidx33.i.i = getelementptr %struct.v4l2_ctrl_h264_pred_weights, ptr %232, i32 0, i32 2, i32 0, i32 2, i32 %j.179.i.i, i32 0
  %259 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %arrayidx33.i.i, align 2
  %261 = and i16 %260, 511
  %and35.i.i = zext i16 %261 to i32
  %or36.i.i = or i32 %shl31.i.i, %and35.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %262 = call i32 @llvm.bswap.i32(i32 %or36.i.i) #4
  %263 = ptrtoint ptr %base.i.i352.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %base.i.i352.i, align 8
  %add.ptr.i76.i.i = getelementptr i8, ptr %264, i32 740
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i.i, i32 %262) #4, !srcloc !12
  %arrayidx28.1.i.i = getelementptr %struct.v4l2_ctrl_h264_pred_weights, ptr %232, i32 0, i32 2, i32 0, i32 3, i32 %j.179.i.i, i32 1
  %265 = ptrtoint ptr %arrayidx28.1.i.i to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %arrayidx28.1.i.i, align 2
  %267 = and i16 %266, 511
  %and30.1.i.i = zext i16 %267 to i32
  %shl31.1.i.i = shl nuw nsw i32 %and30.1.i.i, 16
  %arrayidx33.1.i.i = getelementptr %struct.v4l2_ctrl_h264_pred_weights, ptr %232, i32 0, i32 2, i32 0, i32 2, i32 %j.179.i.i, i32 1
  %268 = ptrtoint ptr %arrayidx33.1.i.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %arrayidx33.1.i.i, align 2
  %270 = and i16 %269, 511
  %and35.1.i.i = zext i16 %270 to i32
  %or36.1.i.i = or i32 %shl31.1.i.i, %and35.1.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %271 = call i32 @llvm.bswap.i32(i32 %or36.1.i.i) #4
  %272 = ptrtoint ptr %base.i.i352.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %base.i.i352.i, align 8
  %add.ptr.i76.1.i.i = getelementptr i8, ptr %273, i32 740
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.1.i.i, i32 %271) #4, !srcloc !12
  %inc41.i.i = add nuw nsw i32 %j.179.i.i, 1
  %exitcond81.not.i.i = icmp eq i32 %inc41.i.i, 32
  br i1 %exitcond81.not.i.i, label %for.end42.i.i, label %for.cond22.preheader.i.i.for.cond22.preheader.i.i_crit_edge

for.cond22.preheader.i.i.for.cond22.preheader.i.i_crit_edge: ; preds = %for.cond22.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond22.preheader.i.i

for.end42.i.i:                                    ; preds = %for.cond22.preheader.i.i
  %arrayidx.1.i.i = getelementptr %struct.v4l2_ctrl_h264_pred_weights, ptr %232, i32 0, i32 2, i32 1
  br label %for.body9.1.i.i

for.body9.1.i.i:                                  ; preds = %for.body9.1.i.i.for.body9.1.i.i_crit_edge, %for.end42.i.i
  %j.077.1.i.i = phi i32 [ 0, %for.end42.i.i ], [ %inc.1.i.i, %for.body9.1.i.i.for.body9.1.i.i_crit_edge ]
  %arrayidx10.1.i.i = getelementptr %struct.v4l2_ctrl_h264_pred_weights, ptr %232, i32 0, i32 2, i32 1, i32 1, i32 %j.077.1.i.i
  %274 = ptrtoint ptr %arrayidx10.1.i.i to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %arrayidx10.1.i.i, align 2
  %276 = and i16 %275, 511
  %and12.1.i.i = zext i16 %276 to i32
  %shl13.1.i.i = shl nuw nsw i32 %and12.1.i.i, 16
  %arrayidx14.1.i.i = getelementptr [32 x i16], ptr %arrayidx.1.i.i, i32 0, i32 %j.077.1.i.i
  %277 = ptrtoint ptr %arrayidx14.1.i.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %arrayidx14.1.i.i, align 2
  %279 = and i16 %278, 511
  %and16.1.i.i = zext i16 %279 to i32
  %or17.1.i.i = or i32 %shl13.1.i.i, %and16.1.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %280 = call i32 @llvm.bswap.i32(i32 %or17.1.i.i) #4
  %281 = ptrtoint ptr %base.i.i352.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %base.i.i352.i, align 8
  %add.ptr.i74.1.i.i = getelementptr i8, ptr %282, i32 740
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.1.i.i, i32 %280) #4, !srcloc !12
  %inc.1.i.i = add nuw nsw i32 %j.077.1.i.i, 1
  %exitcond.1.not.i.i = icmp eq i32 %inc.1.i.i, 32
  br i1 %exitcond.1.not.i.i, label %for.body9.1.i.i.for.cond22.preheader.1.i.i_crit_edge, label %for.body9.1.i.i.for.body9.1.i.i_crit_edge

for.body9.1.i.i.for.body9.1.i.i_crit_edge:        ; preds = %for.body9.1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body9.1.i.i

for.body9.1.i.i.for.cond22.preheader.1.i.i_crit_edge: ; preds = %for.body9.1.i.i
  br label %for.cond22.preheader.1.i.i

for.cond22.preheader.1.i.i:                       ; preds = %for.cond22.preheader.1.i.i.for.cond22.preheader.1.i.i_crit_edge, %for.body9.1.i.i.for.cond22.preheader.1.i.i_crit_edge
  %j.179.1.i.i = phi i32 [ %inc41.1.i.i, %for.cond22.preheader.1.i.i.for.cond22.preheader.1.i.i_crit_edge ], [ 0, %for.body9.1.i.i.for.cond22.preheader.1.i.i_crit_edge ]
  %arrayidx28.183.i.i = getelementptr %struct.v4l2_ctrl_h264_pred_weights, ptr %232, i32 0, i32 2, i32 1, i32 3, i32 %j.179.1.i.i, i32 0
  %283 = ptrtoint ptr %arrayidx28.183.i.i to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %arrayidx28.183.i.i, align 2
  %285 = and i16 %284, 511
  %and30.184.i.i = zext i16 %285 to i32
  %shl31.185.i.i = shl nuw nsw i32 %and30.184.i.i, 16
  %arrayidx33.186.i.i = getelementptr %struct.v4l2_ctrl_h264_pred_weights, ptr %232, i32 0, i32 2, i32 1, i32 2, i32 %j.179.1.i.i, i32 0
  %286 = ptrtoint ptr %arrayidx33.186.i.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %arrayidx33.186.i.i, align 2
  %288 = and i16 %287, 511
  %and35.187.i.i = zext i16 %288 to i32
  %or36.188.i.i = or i32 %shl31.185.i.i, %and35.187.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %289 = call i32 @llvm.bswap.i32(i32 %or36.188.i.i) #4
  %290 = ptrtoint ptr %base.i.i352.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %base.i.i352.i, align 8
  %add.ptr.i76.189.i.i = getelementptr i8, ptr %291, i32 740
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.189.i.i, i32 %289) #4, !srcloc !12
  %arrayidx28.1.1.i.i = getelementptr %struct.v4l2_ctrl_h264_pred_weights, ptr %232, i32 0, i32 2, i32 1, i32 3, i32 %j.179.1.i.i, i32 1
  %292 = ptrtoint ptr %arrayidx28.1.1.i.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %arrayidx28.1.1.i.i, align 2
  %294 = and i16 %293, 511
  %and30.1.1.i.i = zext i16 %294 to i32
  %shl31.1.1.i.i = shl nuw nsw i32 %and30.1.1.i.i, 16
  %arrayidx33.1.1.i.i = getelementptr %struct.v4l2_ctrl_h264_pred_weights, ptr %232, i32 0, i32 2, i32 1, i32 2, i32 %j.179.1.i.i, i32 1
  %295 = ptrtoint ptr %arrayidx33.1.1.i.i to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %arrayidx33.1.1.i.i, align 2
  %297 = and i16 %296, 511
  %and35.1.1.i.i = zext i16 %297 to i32
  %or36.1.1.i.i = or i32 %shl31.1.1.i.i, %and35.1.1.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %298 = call i32 @llvm.bswap.i32(i32 %or36.1.1.i.i) #4
  %299 = ptrtoint ptr %base.i.i352.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %base.i.i352.i, align 8
  %add.ptr.i76.1.1.i.i = getelementptr i8, ptr %300, i32 740
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.1.1.i.i, i32 %298) #4, !srcloc !12
  %inc41.1.i.i = add nuw nsw i32 %j.179.1.i.i, 1
  %exitcond81.1.not.i.i = icmp eq i32 %inc41.1.i.i, 32
  br i1 %exitcond81.1.not.i.i, label %for.cond22.preheader.1.i.i.if.end27.i_crit_edge, label %for.cond22.preheader.1.i.i.for.cond22.preheader.1.i.i_crit_edge

for.cond22.preheader.1.i.i.for.cond22.preheader.1.i.i_crit_edge: ; preds = %for.cond22.preheader.1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond22.preheader.1.i.i

for.cond22.preheader.1.i.i.if.end27.i_crit_edge:  ; preds = %for.cond22.preheader.1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27.i

if.end27.i:                                       ; preds = %for.cond22.preheader.1.i.i.if.end27.i_crit_edge, %land.lhs.true21.i.if.end27.i_crit_edge, %lor.lhs.false17.i.if.end27.i_crit_edge
  %slice_type28.i = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %164, i32 0, i32 2
  %301 = ptrtoint ptr %slice_type28.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %slice_type28.i, align 4
  %303 = zext i8 %302 to i64
  call void @__sanitizer_cov_trace_switch(i64 %303, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %302, label %if.end27.i.if.end49.i_crit_edge [
    i8 0, label %if.end27.i.if.end43.i_crit_edge
    i8 3, label %if.end27.i.if.end43.i_crit_edge45
    i8 1, label %if.end27.i.if.end43.i_crit_edge46
  ]

if.end27.i.if.end43.i_crit_edge46:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43.i

if.end27.i.if.end43.i_crit_edge45:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43.i

if.end27.i.if.end43.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43.i

if.end27.i.if.end49.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49.i

if.end43.i:                                       ; preds = %if.end27.i.if.end43.i_crit_edge, %if.end27.i.if.end43.i_crit_edge45, %if.end27.i.if.end43.i_crit_edge46
  %304 = ptrtoint ptr %slice_params.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %slice_params.i, align 4
  %ref_pic_list0.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %305, i32 0, i32 14
  %num_ref_idx_l0_active_minus1.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %305, i32 0, i32 11
  %306 = ptrtoint ptr %num_ref_idx_l0_active_minus1.i.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %num_ref_idx_l0_active_minus1.i.i, align 1
  %add.i354.i = add i8 %307, 1
  call fastcc void @_cedrus_write_ref_list(ptr noundef %ctx, ptr noundef %run, ptr noundef %ref_pic_list0.i.i, i8 noundef zeroext %add.i354.i, i32 noundef 400) #4
  %308 = ptrtoint ptr %slice_type28.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %.pr.i = load i8, ptr %slice_type28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr.i)
  %cmp46.i = icmp eq i8 %.pr.i, 1
  br i1 %cmp46.i, label %if.then48.i, label %if.end43.i.if.end49.i_crit_edge

if.end43.i.if.end49.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49.i

if.then48.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #6
  %309 = ptrtoint ptr %slice_params.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %slice_params.i, align 4
  %ref_pic_list1.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %310, i32 0, i32 15
  %num_ref_idx_l1_active_minus1.i.i = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %310, i32 0, i32 12
  %311 = ptrtoint ptr %num_ref_idx_l1_active_minus1.i.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %num_ref_idx_l1_active_minus1.i.i, align 2
  %add.i356.i = add i8 %312, 1
  call fastcc void @_cedrus_write_ref_list(ptr noundef %ctx, ptr noundef %run, ptr noundef %ref_pic_list1.i.i, i8 noundef zeroext %add.i356.i, i32 noundef 409) #4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then48.i, %if.end43.i.if.end49.i_crit_edge, %if.end27.i.if.end49.i_crit_edge
  %num_ref_idx_l0_active_minus1.i = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %164, i32 0, i32 11
  %313 = ptrtoint ptr %num_ref_idx_l0_active_minus1.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %num_ref_idx_l0_active_minus1.i, align 1
  %315 = and i8 %314, 31
  %and51.i = zext i8 %315 to i32
  %shl.i42 = shl nuw nsw i32 %and51.i, 10
  %num_ref_idx_l1_active_minus1.i = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %164, i32 0, i32 12
  %316 = ptrtoint ptr %num_ref_idx_l1_active_minus1.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %num_ref_idx_l1_active_minus1.i, align 2
  %318 = and i8 %317, 31
  %and54.i = zext i8 %318 to i32
  %shl55.i = shl nuw nsw i32 %and54.i, 5
  %or56.i = or i32 %shl55.i, %shl.i42
  %weighted_bipred_idc57.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %166, i32 0, i32 5
  %319 = ptrtoint ptr %weighted_bipred_idc57.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %weighted_bipred_idc57.i, align 1
  %321 = shl i8 %320, 2
  %322 = and i8 %321, 12
  %shl60.i = zext i8 %322 to i32
  %or61.i = or i32 %or56.i, %shl60.i
  %323 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %flags.i40, align 2
  %325 = shl i16 %324, 15
  %326 = zext i16 %325 to i32
  %327 = or i32 %or61.i, %326
  %328 = shl i16 %324, 2
  %329 = and i16 %328, 16
  %330 = zext i16 %329 to i32
  %331 = or i32 %327, %330
  %332 = lshr i16 %324, 3
  %333 = and i16 %332, 2
  %334 = zext i16 %333 to i32
  %335 = or i32 %331, %334
  %336 = lshr i16 %324, 6
  %337 = and i16 %336, 1
  %338 = zext i16 %337 to i32
  %339 = or i32 %335, %338
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %340 = call i32 @llvm.bswap.i32(i32 %339) #4
  %341 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i358.i = getelementptr i8, ptr %342, i32 516
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i358.i, i32 %340) #4, !srcloc !12
  %chroma_format_idc.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %168, i32 0, i32 4
  %343 = ptrtoint ptr %chroma_format_idc.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %chroma_format_idc.i, align 4
  %345 = and i8 %344, 7
  %and91.i = zext i8 %345 to i32
  %shl92.i = shl nuw nsw i32 %and91.i, 19
  %pic_width_in_mbs_minus1.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %168, i32 0, i32 15
  %346 = ptrtoint ptr %pic_width_in_mbs_minus1.i to i32
  call void @__asan_load2_noabort(i32 %346)
  %347 = load i16, ptr %pic_width_in_mbs_minus1.i, align 4
  %348 = shl i16 %347, 8
  %shl96.i = zext i16 %348 to i32
  %or97.i = or i32 %shl92.i, %shl96.i
  %pic_height_in_map_units_minus1.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %168, i32 0, i32 16
  %349 = ptrtoint ptr %pic_height_in_map_units_minus1.i to i32
  call void @__asan_load2_noabort(i32 %349)
  %350 = load i16, ptr %pic_height_in_map_units_minus1.i, align 2
  %351 = and i16 %350, 255
  %and99.i = zext i16 %351 to i32
  %or100.i = or i32 %or97.i, %and99.i
  %flags101.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %168, i32 0, i32 17
  %352 = ptrtoint ptr %flags101.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %flags101.i, align 4
  %and102.i = shl i32 %353, 14
  %354 = and i32 %and102.i, 262144
  %355 = or i32 %354, %or100.i
  %and108.i = shl i32 %353, 12
  %356 = and i32 %and108.i, 131072
  %357 = or i32 %355, %356
  %and114.i = shl i32 %353, 10
  %358 = and i32 %and114.i, 65536
  %359 = or i32 %357, %358
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %360 = call i32 @llvm.bswap.i32(i32 %359) #4
  %361 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i360.i = getelementptr i8, ptr %362, i32 512
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i360.i, i32 %360) #4, !srcloc !12
  %flags119.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %162, i32 0, i32 14
  %363 = ptrtoint ptr %flags119.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %flags119.i, align 4
  %and120.i = and i32 %364, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool121.not.i, label %land.rhs.i, label %if.end49.i.cedrus_set_params.exit_crit_edge

if.end49.i.cedrus_set_params.exit_crit_edge:      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_set_params.exit

land.rhs.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #6
  %365 = ptrtoint ptr %flags101.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %flags101.i, align 4
  %367 = shl i32 %366, 11
  %phi.bo.i = and i32 %367, 65536
  %phi.bo374.i = add nuw nsw i32 %phi.bo.i, 65536
  br label %cedrus_set_params.exit

cedrus_set_params.exit:                           ; preds = %land.rhs.i, %if.end49.i.cedrus_set_params.exit_crit_edge
  %368 = phi i32 [ 65536, %if.end49.i.cedrus_set_params.exit_crit_edge ], [ %phi.bo374.i, %land.rhs.i ]
  %369 = ptrtoint ptr %pic_width_in_mbs_minus1.i to i32
  call void @__asan_load2_noabort(i32 %369)
  %370 = load i16, ptr %pic_width_in_mbs_minus1.i, align 4
  %conv126.i = zext i16 %370 to i32
  %add127.i = add nuw nsw i32 %conv126.i, 1
  %first_mb_in_slice.i = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %164, i32 0, i32 1
  %371 = ptrtoint ptr %first_mb_in_slice.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %first_mb_in_slice.i, align 4
  %.frozen = freeze i32 %372
  %add127.i.frozen = freeze i32 %add127.i
  %div.i = udiv i32 %.frozen, %add127.i.frozen
  %373 = mul i32 %div.i, %add127.i.frozen
  %rem.i.decomposed = sub i32 %.frozen, %373
  %shl129.i = shl i32 %rem.i.decomposed, 24
  %and136.i = mul i32 %div.i, %368
  %shl137.i = and i32 %and136.i, 16711680
  %or138.i = or i32 %shl137.i, %shl129.i
  %nal_ref_idc.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %162, i32 0, i32 1
  %374 = ptrtoint ptr %nal_ref_idc.i to i32
  call void @__asan_load2_noabort(i32 %374)
  %375 = load i16, ptr %nal_ref_idc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %375)
  %tobool140.not.i = icmp eq i16 %375, 0
  %cond.i = select i1 %tobool140.not.i, i32 0, i32 4096
  %or141.i = or i32 %or138.i, %cond.i
  %376 = ptrtoint ptr %slice_type28.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %slice_type28.i, align 4
  %378 = and i8 %377, 15
  %and144.i = zext i8 %378 to i32
  %shl145.i = shl nuw nsw i32 %and144.i, 8
  %or146.i = or i32 %shl145.i, %or141.i
  %cabac_init_idc.i = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %164, i32 0, i32 5
  %379 = ptrtoint ptr %cabac_init_idc.i to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %cabac_init_idc.i, align 1
  %381 = and i8 %380, 3
  %and148.i = zext i8 %381 to i32
  %or149.i = or i32 %or146.i, %and148.i
  %382 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %m2m_ctx.i, align 4
  %new_frame.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %383, i32 0, i32 1
  %384 = ptrtoint ptr %new_frame.i to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %new_frame.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %385)
  %tobool150.not.i = icmp eq i8 %385, 0
  %or152.i = or i32 %or149.i, 32
  %spec.select334.i = select i1 %tobool150.not.i, i32 %or149.i, i32 %or152.i
  %386 = shl nuw nsw i32 %and120.i, 3
  %and161.i = shl i32 %364, 1
  %387 = and i32 %and161.i, 8
  %flags166.i = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %164, i32 0, i32 16
  %388 = ptrtoint ptr %flags166.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %flags166.i, align 4
  %and167.i = shl i32 %389, 2
  %390 = and i32 %and167.i, 4
  %391 = or i32 %387, %386
  %392 = or i32 %390, %391
  %393 = or i32 %392, %spec.select334.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %394 = call i32 @llvm.bswap.i32(i32 %393) #4
  %395 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i362.i = getelementptr i8, ptr %396, i32 520
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i362.i, i32 %394) #4, !srcloc !12
  %397 = ptrtoint ptr %num_ref_idx_l0_active_minus1.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %num_ref_idx_l0_active_minus1.i, align 1
  %399 = and i8 %398, 31
  %and175.i = zext i8 %399 to i32
  %shl176.i = shl nuw nsw i32 %and175.i, 24
  %400 = ptrtoint ptr %num_ref_idx_l1_active_minus1.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %num_ref_idx_l1_active_minus1.i, align 2
  %402 = and i8 %401, 31
  %and180.i = zext i8 %402 to i32
  %shl181.i = shl nuw nsw i32 %and180.i, 16
  %or177.i = or i32 %shl181.i, %shl176.i
  %disable_deblocking_filter_idc.i = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %164, i32 0, i32 8
  %403 = ptrtoint ptr %disable_deblocking_filter_idc.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %disable_deblocking_filter_idc.i, align 2
  %405 = and i8 %404, 3
  %and184.i = zext i8 %405 to i32
  %shl185.i = shl nuw nsw i32 %and184.i, 8
  %or182.i = or i32 %or177.i, %shl185.i
  %slice_alpha_c0_offset_div2.i = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %164, i32 0, i32 9
  %406 = ptrtoint ptr %slice_alpha_c0_offset_div2.i to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %slice_alpha_c0_offset_div2.i, align 1
  %408 = shl i8 %407, 4
  %shl189.i = zext i8 %408 to i32
  %or186.i = or i32 %or182.i, %shl189.i
  %slice_beta_offset_div2.i = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %164, i32 0, i32 10
  %409 = ptrtoint ptr %slice_beta_offset_div2.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %slice_beta_offset_div2.i, align 4
  %411 = and i8 %410, 15
  %and192.i = zext i8 %411 to i32
  %or190.i = or i32 %or186.i, %and192.i
  %or193.i = or i32 %or190.i, 4096
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %412 = call i32 @llvm.bswap.i32(i32 %or193.i) #4
  %413 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i364.i = getelementptr i8, ptr %414, i32 524
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i364.i, i32 %412) #4, !srcloc !12
  %second_chroma_qp_index_offset.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %166, i32 0, i32 9
  %415 = ptrtoint ptr %second_chroma_qp_index_offset.i to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %second_chroma_qp_index_offset.i, align 1
  %417 = and i8 %416, 63
  %and195.i = zext i8 %417 to i32
  %shl196.i = shl nuw nsw i32 %and195.i, 16
  %chroma_qp_index_offset.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %166, i32 0, i32 8
  %418 = ptrtoint ptr %chroma_qp_index_offset.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %chroma_qp_index_offset.i, align 2
  %420 = and i8 %419, 63
  %and199.i = zext i8 %420 to i32
  %shl200.i = shl nuw nsw i32 %and199.i, 8
  %or201.i = or i32 %shl200.i, %shl196.i
  %pic_init_qp_minus26.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %166, i32 0, i32 6
  %421 = ptrtoint ptr %pic_init_qp_minus26.i to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %pic_init_qp_minus26.i, align 2
  %conv202332.i = zext i8 %422 to i32
  %add203.i = add nuw nsw i32 %conv202332.i, 26
  %slice_qp_delta.i = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %164, i32 0, i32 6
  %423 = ptrtoint ptr %slice_qp_delta.i to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %slice_qp_delta.i, align 4
  %conv204333.i = zext i8 %424 to i32
  %add205.i = add nuw nsw i32 %add203.i, %conv204333.i
  %and206.i = and i32 %add205.i, 63
  %or207.i = or i32 %and206.i, %or201.i
  %425 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_load2_noabort(i32 %425)
  %426 = load i16, ptr %flags.i40, align 2
  %427 = and i16 %426, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %427)
  %tobool211.not.i = icmp eq i16 %427, 0
  %or213.i = or i32 %or207.i, 16777216
  %reg.11.i = select i1 %tobool211.not.i, i32 %or213.i, i32 %or207.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %428 = call i32 @llvm.bswap.i32(i32 %reg.11.i) #4
  %429 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i366.i = getelementptr i8, ptr %430, i32 540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i366.i, i32 %428) #4, !srcloc !12
  %431 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i368.i = getelementptr i8, ptr %432, i32 552
  %433 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i368.i) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %434 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i370.i = getelementptr i8, ptr %435, i32 552
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i370.i, i32 %433) #4, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %436 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i372.i = getelementptr i8, ptr %437, i32 544
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i372.i, i32 117440512) #4, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_h264_start(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %src_fmt = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %cmp = icmp ugt i32 %3, 2048
  %. = select i1 %cmp, i32 294912, i32 73728
  %height = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %mul3 = shl i32 %5, 7
  %add = add i32 %., %mul3
  %6 = tail call i32 @llvm.umax.i32(i32 %add, i32 133120)
  %codec = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7
  %pic_info_buf_size = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 6
  %7 = ptrtoint ptr %pic_info_buf_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pic_info_buf_size, align 4
  %dev7 = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  %pic_info_buf_dma = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 5
  %call = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef %6, ptr noundef %pic_info_buf_dma, i32 noundef 3264, i32 noundef 16) #4
  %pic_info_buf = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 4
  %10 = ptrtoint ptr %pic_info_buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %pic_info_buf, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %entry
  %11 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev7, align 4
  %neighbor_info_buf_dma = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 8
  %call18 = tail call ptr @dma_alloc_attrs(ptr noundef %12, i32 noundef 16384, ptr noundef %neighbor_info_buf_dma, i32 noundef 3264, i32 noundef 16) #4
  %neighbor_info_buf = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 7
  %13 = ptrtoint ptr %neighbor_info_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call18, ptr %neighbor_info_buf, align 4
  %tobool22.not = icmp eq ptr %call18, null
  br i1 %tobool22.not, label %if.end15.err_pic_buf_crit_edge, label %if.end24

if.end15.err_pic_buf_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_pic_buf

if.end24:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src_fmt, align 4
  %sub = add i32 %15, 15
  %div176 = lshr i32 %sub, 4
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %sub31 = add i32 %17, 15
  %div32177 = lshr i32 %sub31, 4
  %mul33 = mul i32 %div32177, %div176
  %mul36 = shl i32 %mul33, 6
  %mv_col_buf_field_size = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 2
  %18 = ptrtoint ptr %mv_col_buf_field_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul36, ptr %mv_col_buf_field_size, align 4
  %mul39 = mul i32 %mul33, 2304
  %mv_col_buf_size = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 3
  %19 = ptrtoint ptr %mv_col_buf_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul39, ptr %mv_col_buf_size, align 4
  %20 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev7, align 4
  %mv_col_buf_dma = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 1
  %call45 = tail call ptr @dma_alloc_attrs(ptr noundef %21, i32 noundef %mul39, ptr noundef %mv_col_buf_dma, i32 noundef 3264, i32 noundef 16) #4
  %22 = ptrtoint ptr %codec to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call45, ptr %codec, align 4
  %tobool49.not = icmp eq ptr %call45, null
  br i1 %tobool49.not, label %if.end24.err_neighbor_buf_crit_edge, label %if.end51

if.end24.err_neighbor_buf_crit_edge:              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_neighbor_buf

if.end51:                                         ; preds = %if.end24
  %23 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %src_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %24)
  %cmp54 = icmp ugt i32 %24, 2048
  br i1 %cmp54, label %if.then55, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then55:                                        ; preds = %if.end51
  %add58 = add i32 %24, 31
  %and = and i32 %add58, -32
  %mul59 = mul i32 %and, 12
  %deblk_buf_size = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 11
  %25 = ptrtoint ptr %deblk_buf_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul59, ptr %deblk_buf_size, align 4
  %26 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev7, align 4
  %deblk_buf_dma = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 10
  %call65 = tail call ptr @dma_alloc_attrs(ptr noundef %27, i32 noundef %mul59, ptr noundef %deblk_buf_dma, i32 noundef 3264, i32 noundef 16) #4
  %deblk_buf = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 9
  %28 = ptrtoint ptr %deblk_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call65, ptr %deblk_buf, align 4
  %tobool69.not = icmp eq ptr %call65, null
  br i1 %tobool69.not, label %if.then55.err_mv_col_buf_crit_edge, label %if.end71

if.then55.err_mv_col_buf_crit_edge:               ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_mv_col_buf

if.end71:                                         ; preds = %if.then55
  %29 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %src_fmt, align 4
  %add74 = add i32 %30, 63
  %and75 = and i32 %add74, -64
  %mul77 = mul i32 %and75, 10
  %intra_pred_buf_size = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 14
  %31 = ptrtoint ptr %intra_pred_buf_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul77, ptr %intra_pred_buf_size, align 4
  %32 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev7, align 4
  %intra_pred_buf_dma = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 13
  %call83 = tail call ptr @dma_alloc_attrs(ptr noundef %33, i32 noundef %mul77, ptr noundef %intra_pred_buf_dma, i32 noundef 3264, i32 noundef 16) #4
  %intra_pred_buf = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 12
  %34 = ptrtoint ptr %intra_pred_buf to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call83, ptr %intra_pred_buf, align 4
  %tobool87.not = icmp eq ptr %call83, null
  br i1 %tobool87.not, label %if.then88, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then88:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev7, align 4
  %37 = ptrtoint ptr %deblk_buf_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %deblk_buf_size, align 4
  %39 = ptrtoint ptr %deblk_buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %deblk_buf, align 4
  %41 = ptrtoint ptr %deblk_buf_dma to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %deblk_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %36, i32 noundef %38, ptr noundef %40, i32 noundef %42, i32 noundef 16) #4
  br label %err_mv_col_buf

err_mv_col_buf:                                   ; preds = %if.then88, %if.then55.err_mv_col_buf_crit_edge
  %43 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev7, align 4
  %45 = ptrtoint ptr %mv_col_buf_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mv_col_buf_size, align 4
  %47 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %codec, align 4
  %49 = ptrtoint ptr %mv_col_buf_dma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mv_col_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %44, i32 noundef %46, ptr noundef %48, i32 noundef %50, i32 noundef 16) #4
  br label %err_neighbor_buf

err_neighbor_buf:                                 ; preds = %err_mv_col_buf, %if.end24.err_neighbor_buf_crit_edge
  %51 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev7, align 4
  %53 = ptrtoint ptr %neighbor_info_buf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %neighbor_info_buf, align 4
  %55 = ptrtoint ptr %neighbor_info_buf_dma to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %neighbor_info_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %52, i32 noundef 16384, ptr noundef %54, i32 noundef %56, i32 noundef 16) #4
  br label %err_pic_buf

err_pic_buf:                                      ; preds = %err_neighbor_buf, %if.end15.err_pic_buf_crit_edge
  %57 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev7, align 4
  %59 = ptrtoint ptr %pic_info_buf_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pic_info_buf_size, align 4
  %61 = ptrtoint ptr %pic_info_buf to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pic_info_buf, align 4
  %63 = ptrtoint ptr %pic_info_buf_dma to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pic_info_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %58, i32 noundef %60, ptr noundef %62, i32 noundef %64, i32 noundef 16) #4
  br label %cleanup

cleanup:                                          ; preds = %err_pic_buf, %if.end71.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_pic_buf ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_h264_stop(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %codec = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7
  %mv_col_buf_size = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 3
  %4 = ptrtoint ptr %mv_col_buf_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mv_col_buf_size, align 4
  %6 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %codec, align 4
  %mv_col_buf_dma = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 1
  %8 = ptrtoint ptr %mv_col_buf_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mv_col_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 16) #4
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %neighbor_info_buf = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 7
  %12 = ptrtoint ptr %neighbor_info_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %neighbor_info_buf, align 4
  %neighbor_info_buf_dma = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 8
  %14 = ptrtoint ptr %neighbor_info_buf_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %neighbor_info_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef 16384, ptr noundef %13, i32 noundef %15, i32 noundef 16) #4
  %16 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2, align 4
  %pic_info_buf_size = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 6
  %18 = ptrtoint ptr %pic_info_buf_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pic_info_buf_size, align 4
  %pic_info_buf = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 4
  %20 = ptrtoint ptr %pic_info_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pic_info_buf, align 4
  %pic_info_buf_dma = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 5
  %22 = ptrtoint ptr %pic_info_buf_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pic_info_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %17, i32 noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef 16) #4
  %deblk_buf_size = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 11
  %24 = ptrtoint ptr %deblk_buf_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %deblk_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev2, align 4
  %deblk_buf = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 9
  %28 = ptrtoint ptr %deblk_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %deblk_buf, align 4
  %deblk_buf_dma = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 10
  %30 = ptrtoint ptr %deblk_buf_dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %deblk_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %27, i32 noundef %25, ptr noundef %29, i32 noundef %31, i32 noundef 16) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %intra_pred_buf_size = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 14
  %32 = ptrtoint ptr %intra_pred_buf_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %intra_pred_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool19.not = icmp eq i32 %33, 0
  br i1 %tobool19.not, label %if.end.if.end26_crit_edge, label %if.then20

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev2, align 4
  %intra_pred_buf = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 12
  %36 = ptrtoint ptr %intra_pred_buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %intra_pred_buf, align 4
  %intra_pred_buf_dma = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 7, i32 0, i32 13
  %38 = ptrtoint ptr %intra_pred_buf_dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %intra_pred_buf_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %35, i32 noundef %33, ptr noundef %37, i32 noundef %39, i32 noundef 16) #4
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.end.if.end26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_h264_trigger(ptr nocapture noundef readonly %ctx) #0 align 64 {
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
  %add.ptr.i = getelementptr i8, ptr %3, i32 548
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
declare dso_local i32 @cedrus_engine_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_find_timestamp(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_cedrus_write_ref_list(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %run, ptr nocapture noundef readonly %ref_list, i8 noundef zeroext %num_ref, i32 noundef %sram) unnamed_addr #0 align 64 {
entry:
  %sram_array = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sram_array) #4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %6, i32 noundef 1) #4
  %7 = call ptr @memset(ptr %sram_array, i32 0, i32 32)
  %conv = zext i8 %num_ref to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_ref)
  %cmp47.not = icmp eq i8 %num_ref, 0
  br i1 %cmp47.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.v4l2_h264_reference, ptr %ref_list, i32 %i.048
  %index = getelementptr %struct.v4l2_h264_reference, ptr %ref_list, i32 %i.048, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %index, align 1
  %idxprom = zext i8 %9 to i32
  %flags = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %2, i32 0, i32 %idxprom, i32 7
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %for.body
  %arrayidx4 = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %2, i32 0, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx4, align 8
  %call5 = tail call i32 @vb2_find_timestamp(ptr noundef %call, i64 noundef %13, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %arrayidx10 = getelementptr %struct.vb2_queue, ptr %call, i32 0, i32 20, i32 %call5
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx10, align 4
  %codec = getelementptr inbounds %struct.cedrus_buffer, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %codec, align 8
  %arrayidx13 = getelementptr [32 x i8], ptr %sram_array, i32 0, i32 %i.048
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx13, align 1
  %.tr = trunc i32 %17 to i8
  %20 = shl i8 %.tr, 1
  %conv15 = or i8 %20, %19
  store i8 %conv15, ptr %arrayidx13, align 1
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp18 = icmp eq i8 %22, 2
  br i1 %cmp18, label %if.then20, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then20:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %23 = or i8 %conv15, 1
  %24 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx13, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %add = add nuw nsw i32 %conv, 3
  %and31 = and i32 %add, 508
  %25 = tail call i32 @llvm.umin.i32(i32 %and31, i32 32)
  %shl.i = shl i32 %sram, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %26 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #4
  %base.i.i = getelementptr inbounds %struct.cedrus_dev, ptr %4, i32 0, i32 9
  %27 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %26) #4, !srcloc !12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not5.i = icmp eq i32 %25, 0
  br i1 %tobool.not5.i, label %for.end.cedrus_h264_write_sram.exit_crit_edge, label %while.body.preheader.i

for.end.cedrus_h264_write_sram.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_h264_write_sram.exit

while.body.preheader.i:                           ; preds = %for.end
  %div2.i = lshr exact i32 %25, 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %count.07.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %div2.i, %while.body.preheader.i ]
  %buffer.06.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %sram_array, %while.body.preheader.i ]
  %dec.i = add nsw i32 %count.07.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %buffer.06.i, i32 1
  %29 = ptrtoint ptr %buffer.06.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buffer.06.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #4
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %33, i32 740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %31) #4, !srcloc !12
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.cedrus_h264_write_sram.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.body.i.cedrus_h264_write_sram.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cedrus_h264_write_sram.exit

cedrus_h264_write_sram.exit:                      ; preds = %while.body.i.cedrus_h264_write_sram.exit_crit_edge, %for.end.cedrus_h264_write_sram.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sram_array) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

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

!0 = !{ptr @cedrus_dec_ops_h264, !1, !"cedrus_dec_ops_h264", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_h264.c", i32 699, i32 23}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2156432670}
!12 = !{i64 5407267}
!13 = !{i64 5407685}
!14 = !{i64 2156433490}
!15 = !{i8 0, i8 2}
