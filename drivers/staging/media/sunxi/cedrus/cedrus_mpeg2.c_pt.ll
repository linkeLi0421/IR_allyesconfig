; ModuleID = '/llk/IR_all_yes/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c_pt.bc'
source_filename = "../drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cedrus_dec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.v4l2_ctrl_mpeg2_quantisation = type { [64 x i8], [64 x i8], [64 x i8], [64 x i8] }
%struct.v4l2_ctrl_mpeg2_picture = type { i64, i64, i32, [2 x [2 x i8]], i8, i8, i8, [5 x i8] }
%struct.v4l2_ctrl_mpeg2_sequence = type { i16, i16, i32, i16, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }

@cedrus_dec_ops_mpeg2 = dso_local global { %struct.cedrus_dec_ops, [36 x i8] } { %struct.cedrus_dec_ops { ptr @cedrus_mpeg2_irq_clear, ptr @cedrus_mpeg2_irq_disable, ptr @cedrus_mpeg2_irq_status, ptr @cedrus_mpeg2_setup, ptr null, ptr null, ptr @cedrus_mpeg2_trigger }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"cedrus_dec_ops_mpeg2\00", align 1
@___asan_gen_.2 = private constant [53 x i8] c"../drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 202, i32 23 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @cedrus_dec_ops_mpeg2], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cedrus_dec_ops_mpeg2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_mpeg2_irq_clear(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 117440512) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_mpeg2_irq_disable(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 276
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %5 = and i32 %4, -939524097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add.ptr.i5 = getelementptr i8, ptr %7, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %5) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cedrus_mpeg2_irq_status(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 284
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !13
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %and = and i32 %5, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %.not = icmp eq i32 %and, 1
  %spec.select = select i1 %.not, i32 2, i32 1
  %retval.0 = select i1 %tobool.not, i32 0, i32 %spec.select
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_mpeg2_setup(ptr noundef %ctx, ptr nocapture noundef readonly %run) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %picture = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %picture to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %picture, align 4
  %quantisation2 = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 2
  %7 = ptrtoint ptr %quantisation2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %quantisation2, align 4
  %call = tail call i32 @cedrus_engine_enable(ptr noundef %ctx, i32 noundef 0) #3
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0374 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %shl = shl nuw nsw i32 %i.0374, 8
  %arrayidx = getelementptr i8, ptr %8, i32 %i.0374
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %or = or i32 %shl, %conv
  %or5 = or i32 %or, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %11 = tail call i32 @llvm.bswap.i32(i32 %or5) #3
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #3, !srcloc !12
  %inc = add nuw nsw i32 %i.0374, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  %non_intra_quantiser_matrix = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_quantisation, ptr %8, i32 0, i32 1
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.end
  %i.1375 = phi i32 [ 0, %for.end ], [ %inc20, %for.body10.for.body10_crit_edge ]
  %shl11 = shl nuw nsw i32 %i.1375, 8
  %arrayidx13 = getelementptr i8, ptr %non_intra_quantiser_matrix, i32 %i.1375
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %15 to i32
  %or17 = or i32 %shl11, %conv14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %16 = tail call i32 @llvm.bswap.i32(i32 %or17) #3
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 8
  %add.ptr.i229 = getelementptr i8, ptr %18, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i229, i32 %16) #3, !srcloc !12
  %inc20 = add nuw nsw i32 %i.1375, 1
  %exitcond382.not = icmp eq i32 %inc20, 64
  br i1 %exitcond382.not, label %for.end21, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body10

for.end21:                                        ; preds = %for.body10
  %picture_coding_type = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %6, i32 0, i32 4
  %19 = ptrtoint ptr %picture_coding_type to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %picture_coding_type, align 8
  %conv22 = zext i8 %20 to i32
  %shl23 = shl i32 %conv22, 28
  %and24 = and i32 %shl23, 1879048192
  %f_code = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %6, i32 0, i32 3
  %21 = ptrtoint ptr %f_code to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %f_code, align 4
  %23 = and i8 %22, 15
  %and28 = zext i8 %23 to i32
  %shl29 = shl nuw nsw i32 %and28, 24
  %or30 = or i32 %shl29, %and24
  %arrayidx33 = getelementptr %struct.v4l2_ctrl_mpeg2_picture, ptr %6, i32 0, i32 3, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx33, align 1
  %26 = and i8 %25, 15
  %and35 = zext i8 %26 to i32
  %shl36 = shl nuw nsw i32 %and35, 20
  %or37 = or i32 %or30, %shl36
  %arrayidx39 = getelementptr %struct.v4l2_ctrl_mpeg2_picture, ptr %6, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx39, align 2
  %29 = and i8 %28, 15
  %and42 = zext i8 %29 to i32
  %shl43 = shl nuw nsw i32 %and42, 16
  %or44 = or i32 %or37, %shl43
  %arrayidx47 = getelementptr %struct.v4l2_ctrl_mpeg2_picture, ptr %6, i32 0, i32 3, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx47, align 1
  %32 = and i8 %31, 15
  %and49 = zext i8 %32 to i32
  %shl50 = shl nuw nsw i32 %and49, 12
  %or51 = or i32 %or44, %shl50
  %intra_dc_precision = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %6, i32 0, i32 6
  %33 = ptrtoint ptr %intra_dc_precision to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %intra_dc_precision, align 2
  %conv52 = zext i8 %34 to i32
  %shl53 = shl nuw nsw i32 %conv52, 10
  %and54 = and i32 %shl53, 3072
  %or55 = or i32 %or51, %and54
  %picture_structure = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %6, i32 0, i32 5
  %35 = ptrtoint ptr %picture_structure to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %picture_structure, align 1
  %conv56 = zext i8 %36 to i32
  %shl57 = shl nuw nsw i32 %conv56, 8
  %and58 = and i32 %shl57, 768
  %or59 = or i32 %or55, %and58
  %flags = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %6, i32 0, i32 2
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 8
  %trunc = trunc i32 %38 to i8
  %rev = call i8 @llvm.bitreverse.i8(i8 %trunc)
  %mask = and i8 %rev, -4
  %or81 = zext i8 %mask to i32
  %or86 = or i32 %or59, %or81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %39 = tail call i32 @llvm.bswap.i32(i32 %or86) #3
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 8
  %add.ptr.i231 = getelementptr i8, ptr %41, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i231, i32 %39) #3, !srcloc !12
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %4, align 4
  %conv89 = zext i16 %43 to i32
  %sub = shl nuw nsw i32 %conv89, 4
  %44 = add nuw nsw i32 %sub, 240
  %and91 = and i32 %44, 65280
  %vertical_size = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_sequence, ptr %4, i32 0, i32 1
  %45 = ptrtoint ptr %vertical_size to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vertical_size, align 2
  %conv92 = zext i16 %46 to i32
  %sub94 = add nuw nsw i32 %conv92, 15
  %div95227 = lshr i32 %sub94, 4
  %and97 = and i32 %div95227, 255
  %or98 = or i32 %and97, %and91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %47 = tail call i32 @llvm.bswap.i32(i32 %or98) #3
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 8
  %add.ptr.i233 = getelementptr i8, ptr %49, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i233, i32 %47) #3, !srcloc !12
  %src_fmt = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 2
  %50 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %src_fmt, align 4
  %shl99 = shl i32 %51, 16
  %and100 = and i32 %shl99, 268369920
  %height = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %height, align 4
  %and103 = and i32 %53, 4095
  %or104 = or i32 %and100, %and103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %54 = tail call i32 @llvm.bswap.i32(i32 %or104) #3
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 8
  %add.ptr.i235 = getelementptr i8, ptr %56, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i235, i32 %54) #3, !srcloc !12
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %57 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %m2m_ctx, align 4
  %call105 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %58, i32 noundef 1) #3
  %forward_ref_ts = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %6, i32 0, i32 1
  %59 = ptrtoint ptr %forward_ref_ts to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %forward_ref_ts, align 8
  %call106 = tail call i32 @vb2_find_timestamp(ptr noundef %call105, i64 noundef %60, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp.i = icmp slt i32 %call106, 0
  br i1 %cmp.i, label %for.end21.cedrus_dst_buf_addr.exit253_crit_edge, label %if.end.i

for.end21.cedrus_dst_buf_addr.exit253_crit_edge:  ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit253

if.end.i:                                         ; preds = %for.end21
  %61 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %m2m_ctx, align 4
  %call.i = tail call ptr @v4l2_m2m_get_vq(ptr noundef %62, i32 noundef 1) #3
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end.i240_crit_edge, label %if.then1.i

if.end.i.if.end.i240_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i240

if.then1.i:                                       ; preds = %if.end.i
  %num_buffers.i.i = getelementptr inbounds %struct.vb2_queue, ptr %call.i, i32 0, i32 21
  %63 = ptrtoint ptr %num_buffers.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_buffers.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %call106)
  %cmp.i.i = icmp ugt i32 %64, %call106
  br i1 %cmp.i.i, label %if.end3.i, label %if.then1.i.if.end.i240_crit_edge

if.then1.i.if.end.i240_crit_edge:                 ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i240

if.end3.i:                                        ; preds = %if.then1.i
  %arrayidx.i.i = getelementptr %struct.vb2_queue, ptr %call.i, i32 0, i32 20, i32 %call106
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool4.not.i = icmp eq ptr %66, null
  br i1 %tobool4.not.i, label %if.end3.i.if.end.i240_crit_edge, label %cond.true.i

if.end3.i.if.end.i240_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i240

cond.true.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %66, i32 noundef 0) #3
  %67 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %call.i.i.i, align 4
  br label %if.end.i240

if.end.i240:                                      ; preds = %cond.true.i, %if.end3.i.if.end.i240_crit_edge, %if.then1.i.if.end.i240_crit_edge, %if.end.i.if.end.i240_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %if.then1.i.if.end.i240_crit_edge ], [ 0, %if.end.i.if.end.i240_crit_edge ], [ 0, %if.end3.i.if.end.i240_crit_edge ], [ %68, %cond.true.i ]
  %69 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %m2m_ctx, align 4
  %call.i238 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %70, i32 noundef 1) #3
  %tobool.not.i239 = icmp eq ptr %call.i238, null
  br i1 %tobool.not.i239, label %if.end.i240.cedrus_dst_buf_addr.exit253_crit_edge, label %if.then1.i243

if.end.i240.cedrus_dst_buf_addr.exit253_crit_edge: ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit253

if.then1.i243:                                    ; preds = %if.end.i240
  %num_buffers.i.i241 = getelementptr inbounds %struct.vb2_queue, ptr %call.i238, i32 0, i32 21
  %71 = ptrtoint ptr %num_buffers.i.i241 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_buffers.i.i241, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %call106)
  %cmp.i.i242 = icmp ugt i32 %72, %call106
  br i1 %cmp.i.i242, label %if.end3.i246, label %if.then1.i243.cedrus_dst_buf_addr.exit253_crit_edge

if.then1.i243.cedrus_dst_buf_addr.exit253_crit_edge: ; preds = %if.then1.i243
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit253

if.end3.i246:                                     ; preds = %if.then1.i243
  %arrayidx.i.i244 = getelementptr %struct.vb2_queue, ptr %call.i238, i32 0, i32 20, i32 %call106
  %73 = ptrtoint ptr %arrayidx.i.i244 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i.i244, align 4
  %tobool4.not.i245 = icmp eq ptr %74, null
  br i1 %tobool4.not.i245, label %if.end3.i246.cedrus_dst_buf_addr.exit253_crit_edge, label %cond.true.i249

if.end3.i246.cedrus_dst_buf_addr.exit253_crit_edge: ; preds = %if.end3.i246
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit253

cond.true.i249:                                   ; preds = %if.end3.i246
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i248 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %74, i32 noundef 0) #3
  %75 = ptrtoint ptr %call.i.i.i248 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %call.i.i.i248, align 4
  %bytesperline.i.i250 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 3, i32 4
  %77 = ptrtoint ptr %bytesperline.i.i250 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bytesperline.i.i250, align 4
  %height.i.i251 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 3, i32 1
  %79 = ptrtoint ptr %height.i.i251 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %height.i.i251, align 4
  %mul1.i.i = mul i32 %80, %78
  %add.i.i = add i32 %mul1.i.i, %76
  br label %cedrus_dst_buf_addr.exit253

cedrus_dst_buf_addr.exit253:                      ; preds = %cond.true.i249, %if.end3.i246.cedrus_dst_buf_addr.exit253_crit_edge, %if.then1.i243.cedrus_dst_buf_addr.exit253_crit_edge, %if.end.i240.cedrus_dst_buf_addr.exit253_crit_edge, %for.end21.cedrus_dst_buf_addr.exit253_crit_edge
  %retval.0.i370 = phi i32 [ %retval.0.i.ph, %cond.true.i249 ], [ %retval.0.i.ph, %if.end3.i246.cedrus_dst_buf_addr.exit253_crit_edge ], [ %retval.0.i.ph, %if.end.i240.cedrus_dst_buf_addr.exit253_crit_edge ], [ %retval.0.i.ph, %if.then1.i243.cedrus_dst_buf_addr.exit253_crit_edge ], [ 0, %for.end21.cedrus_dst_buf_addr.exit253_crit_edge ]
  %retval.0.i252 = phi i32 [ %add.i.i, %cond.true.i249 ], [ 0, %if.end3.i246.cedrus_dst_buf_addr.exit253_crit_edge ], [ 0, %if.end.i240.cedrus_dst_buf_addr.exit253_crit_edge ], [ 0, %if.then1.i243.cedrus_dst_buf_addr.exit253_crit_edge ], [ 0, %for.end21.cedrus_dst_buf_addr.exit253_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %81 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i370) #3
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 8
  %add.ptr.i255 = getelementptr i8, ptr %83, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i255, i32 %81) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %84 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i252) #3
  %85 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i, align 8
  %add.ptr.i257 = getelementptr i8, ptr %86, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i257, i32 %84) #3, !srcloc !12
  %87 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %6, align 8
  %call109 = tail call i32 @vb2_find_timestamp(ptr noundef %call105, i64 noundef %88, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp.i258 = icmp slt i32 %call109, 0
  br i1 %cmp.i258, label %cedrus_dst_buf_addr.exit253.cedrus_dst_buf_addr.exit296_crit_edge, label %if.end.i262

cedrus_dst_buf_addr.exit253.cedrus_dst_buf_addr.exit296_crit_edge: ; preds = %cedrus_dst_buf_addr.exit253
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit296

if.end.i262:                                      ; preds = %cedrus_dst_buf_addr.exit253
  %89 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %m2m_ctx, align 4
  %call.i260 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %90, i32 noundef 1) #3
  %tobool.not.i261 = icmp eq ptr %call.i260, null
  br i1 %tobool.not.i261, label %if.end.i262.if.end.i281_crit_edge, label %if.then1.i265

if.end.i262.if.end.i281_crit_edge:                ; preds = %if.end.i262
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i281

if.then1.i265:                                    ; preds = %if.end.i262
  %num_buffers.i.i263 = getelementptr inbounds %struct.vb2_queue, ptr %call.i260, i32 0, i32 21
  %91 = ptrtoint ptr %num_buffers.i.i263 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_buffers.i.i263, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %call109)
  %cmp.i.i264 = icmp ugt i32 %92, %call109
  br i1 %cmp.i.i264, label %if.end3.i268, label %if.then1.i265.if.end.i281_crit_edge

if.then1.i265.if.end.i281_crit_edge:              ; preds = %if.then1.i265
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i281

if.end3.i268:                                     ; preds = %if.then1.i265
  %arrayidx.i.i266 = getelementptr %struct.vb2_queue, ptr %call.i260, i32 0, i32 20, i32 %call109
  %93 = ptrtoint ptr %arrayidx.i.i266 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i.i266, align 4
  %tobool4.not.i267 = icmp eq ptr %94, null
  br i1 %tobool4.not.i267, label %if.end3.i268.if.end.i281_crit_edge, label %cond.true.i271

if.end3.i268.if.end.i281_crit_edge:               ; preds = %if.end3.i268
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i281

cond.true.i271:                                   ; preds = %if.end3.i268
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i270 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %94, i32 noundef 0) #3
  %95 = ptrtoint ptr %call.i.i.i270 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %call.i.i.i270, align 4
  br label %if.end.i281

if.end.i281:                                      ; preds = %cond.true.i271, %if.end3.i268.if.end.i281_crit_edge, %if.then1.i265.if.end.i281_crit_edge, %if.end.i262.if.end.i281_crit_edge
  %retval.0.i275.ph = phi i32 [ 0, %if.then1.i265.if.end.i281_crit_edge ], [ 0, %if.end.i262.if.end.i281_crit_edge ], [ 0, %if.end3.i268.if.end.i281_crit_edge ], [ %96, %cond.true.i271 ]
  %97 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %m2m_ctx, align 4
  %call.i279 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %98, i32 noundef 1) #3
  %tobool.not.i280 = icmp eq ptr %call.i279, null
  br i1 %tobool.not.i280, label %if.end.i281.cedrus_dst_buf_addr.exit296_crit_edge, label %if.then1.i284

if.end.i281.cedrus_dst_buf_addr.exit296_crit_edge: ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit296

if.then1.i284:                                    ; preds = %if.end.i281
  %num_buffers.i.i282 = getelementptr inbounds %struct.vb2_queue, ptr %call.i279, i32 0, i32 21
  %99 = ptrtoint ptr %num_buffers.i.i282 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_buffers.i.i282, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %call109)
  %cmp.i.i283 = icmp ugt i32 %100, %call109
  br i1 %cmp.i.i283, label %if.end3.i287, label %if.then1.i284.cedrus_dst_buf_addr.exit296_crit_edge

if.then1.i284.cedrus_dst_buf_addr.exit296_crit_edge: ; preds = %if.then1.i284
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit296

if.end3.i287:                                     ; preds = %if.then1.i284
  %arrayidx.i.i285 = getelementptr %struct.vb2_queue, ptr %call.i279, i32 0, i32 20, i32 %call109
  %101 = ptrtoint ptr %arrayidx.i.i285 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i.i285, align 4
  %tobool4.not.i286 = icmp eq ptr %102, null
  br i1 %tobool4.not.i286, label %if.end3.i287.cedrus_dst_buf_addr.exit296_crit_edge, label %cond.true.i290

if.end3.i287.cedrus_dst_buf_addr.exit296_crit_edge: ; preds = %if.end3.i287
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit296

cond.true.i290:                                   ; preds = %if.end3.i287
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i289 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %102, i32 noundef 0) #3
  %103 = ptrtoint ptr %call.i.i.i289 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %call.i.i.i289, align 4
  %bytesperline.i.i291 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 3, i32 4
  %105 = ptrtoint ptr %bytesperline.i.i291 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bytesperline.i.i291, align 4
  %height.i.i292 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 3, i32 1
  %107 = ptrtoint ptr %height.i.i292 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %height.i.i292, align 4
  %mul1.i.i293 = mul i32 %108, %106
  %add.i.i294 = add i32 %mul1.i.i293, %104
  br label %cedrus_dst_buf_addr.exit296

cedrus_dst_buf_addr.exit296:                      ; preds = %cond.true.i290, %if.end3.i287.cedrus_dst_buf_addr.exit296_crit_edge, %if.then1.i284.cedrus_dst_buf_addr.exit296_crit_edge, %if.end.i281.cedrus_dst_buf_addr.exit296_crit_edge, %cedrus_dst_buf_addr.exit253.cedrus_dst_buf_addr.exit296_crit_edge
  %retval.0.i275373 = phi i32 [ %retval.0.i275.ph, %cond.true.i290 ], [ %retval.0.i275.ph, %if.end3.i287.cedrus_dst_buf_addr.exit296_crit_edge ], [ %retval.0.i275.ph, %if.end.i281.cedrus_dst_buf_addr.exit296_crit_edge ], [ %retval.0.i275.ph, %if.then1.i284.cedrus_dst_buf_addr.exit296_crit_edge ], [ 0, %cedrus_dst_buf_addr.exit253.cedrus_dst_buf_addr.exit296_crit_edge ]
  %retval.0.i295 = phi i32 [ %add.i.i294, %cond.true.i290 ], [ 0, %if.end3.i287.cedrus_dst_buf_addr.exit296_crit_edge ], [ 0, %if.end.i281.cedrus_dst_buf_addr.exit296_crit_edge ], [ 0, %if.then1.i284.cedrus_dst_buf_addr.exit296_crit_edge ], [ 0, %cedrus_dst_buf_addr.exit253.cedrus_dst_buf_addr.exit296_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %109 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i275373) #3
  %110 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i, align 8
  %add.ptr.i298 = getelementptr i8, ptr %111, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i298, i32 %109) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %112 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i295) #3
  %113 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i, align 8
  %add.ptr.i300 = getelementptr i8, ptr %114, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i300, i32 %112) #3, !srcloc !12
  %dst = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 1
  %115 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dst, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp.i301 = icmp slt i32 %118, 0
  br i1 %cmp.i301, label %cedrus_dst_buf_addr.exit296.cedrus_dst_buf_addr.exit319_crit_edge, label %if.end.i305

cedrus_dst_buf_addr.exit296.cedrus_dst_buf_addr.exit319_crit_edge: ; preds = %cedrus_dst_buf_addr.exit296
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit319

if.end.i305:                                      ; preds = %cedrus_dst_buf_addr.exit296
  %119 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %m2m_ctx, align 4
  %call.i303 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %120, i32 noundef 1) #3
  %tobool.not.i304 = icmp eq ptr %call.i303, null
  br i1 %tobool.not.i304, label %if.end.i305.cedrus_dst_buf_addr.exit319_crit_edge, label %if.then1.i308

if.end.i305.cedrus_dst_buf_addr.exit319_crit_edge: ; preds = %if.end.i305
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit319

if.then1.i308:                                    ; preds = %if.end.i305
  %num_buffers.i.i306 = getelementptr inbounds %struct.vb2_queue, ptr %call.i303, i32 0, i32 21
  %121 = ptrtoint ptr %num_buffers.i.i306 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %num_buffers.i.i306, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %118)
  %cmp.i.i307 = icmp ugt i32 %122, %118
  br i1 %cmp.i.i307, label %if.end3.i311, label %if.then1.i308.cedrus_dst_buf_addr.exit319_crit_edge

if.then1.i308.cedrus_dst_buf_addr.exit319_crit_edge: ; preds = %if.then1.i308
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit319

if.end3.i311:                                     ; preds = %if.then1.i308
  %arrayidx.i.i309 = getelementptr %struct.vb2_queue, ptr %call.i303, i32 0, i32 20, i32 %118
  %123 = ptrtoint ptr %arrayidx.i.i309 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i.i309, align 4
  %tobool4.not.i310 = icmp eq ptr %124, null
  br i1 %tobool4.not.i310, label %if.end3.i311.cedrus_dst_buf_addr.exit319_crit_edge, label %cond.true.i314

if.end3.i311.cedrus_dst_buf_addr.exit319_crit_edge: ; preds = %if.end3.i311
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit319

cond.true.i314:                                   ; preds = %if.end3.i311
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i313 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %124, i32 noundef 0) #3
  %125 = ptrtoint ptr %call.i.i.i313 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %call.i.i.i313, align 4
  br label %cedrus_dst_buf_addr.exit319

cedrus_dst_buf_addr.exit319:                      ; preds = %cond.true.i314, %if.end3.i311.cedrus_dst_buf_addr.exit319_crit_edge, %if.then1.i308.cedrus_dst_buf_addr.exit319_crit_edge, %if.end.i305.cedrus_dst_buf_addr.exit319_crit_edge, %cedrus_dst_buf_addr.exit296.cedrus_dst_buf_addr.exit319_crit_edge
  %retval.0.i318 = phi i32 [ 0, %cedrus_dst_buf_addr.exit296.cedrus_dst_buf_addr.exit319_crit_edge ], [ %126, %cond.true.i314 ], [ 0, %if.end3.i311.cedrus_dst_buf_addr.exit319_crit_edge ], [ 0, %if.end.i305.cedrus_dst_buf_addr.exit319_crit_edge ], [ 0, %if.then1.i308.cedrus_dst_buf_addr.exit319_crit_edge ]
  %127 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dst, align 4
  %index115 = getelementptr inbounds %struct.vb2_buffer, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %index115 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %index115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp.i320 = icmp slt i32 %130, 0
  br i1 %cmp.i320, label %cedrus_dst_buf_addr.exit319.cedrus_dst_buf_addr.exit339_crit_edge, label %if.end.i324

cedrus_dst_buf_addr.exit319.cedrus_dst_buf_addr.exit339_crit_edge: ; preds = %cedrus_dst_buf_addr.exit319
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit339

if.end.i324:                                      ; preds = %cedrus_dst_buf_addr.exit319
  %131 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %m2m_ctx, align 4
  %call.i322 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %132, i32 noundef 1) #3
  %tobool.not.i323 = icmp eq ptr %call.i322, null
  br i1 %tobool.not.i323, label %if.end.i324.cedrus_dst_buf_addr.exit339_crit_edge, label %if.then1.i327

if.end.i324.cedrus_dst_buf_addr.exit339_crit_edge: ; preds = %if.end.i324
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit339

if.then1.i327:                                    ; preds = %if.end.i324
  %num_buffers.i.i325 = getelementptr inbounds %struct.vb2_queue, ptr %call.i322, i32 0, i32 21
  %133 = ptrtoint ptr %num_buffers.i.i325 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_buffers.i.i325, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %130)
  %cmp.i.i326 = icmp ugt i32 %134, %130
  br i1 %cmp.i.i326, label %if.end3.i330, label %if.then1.i327.cedrus_dst_buf_addr.exit339_crit_edge

if.then1.i327.cedrus_dst_buf_addr.exit339_crit_edge: ; preds = %if.then1.i327
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit339

if.end3.i330:                                     ; preds = %if.then1.i327
  %arrayidx.i.i328 = getelementptr %struct.vb2_queue, ptr %call.i322, i32 0, i32 20, i32 %130
  %135 = ptrtoint ptr %arrayidx.i.i328 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i.i328, align 4
  %tobool4.not.i329 = icmp eq ptr %136, null
  br i1 %tobool4.not.i329, label %if.end3.i330.cedrus_dst_buf_addr.exit339_crit_edge, label %cond.true.i333

if.end3.i330.cedrus_dst_buf_addr.exit339_crit_edge: ; preds = %if.end3.i330
  call void @__sanitizer_cov_trace_pc() #5
  br label %cedrus_dst_buf_addr.exit339

cond.true.i333:                                   ; preds = %if.end3.i330
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i332 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %136, i32 noundef 0) #3
  %137 = ptrtoint ptr %call.i.i.i332 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %call.i.i.i332, align 4
  %bytesperline.i.i334 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 3, i32 4
  %139 = ptrtoint ptr %bytesperline.i.i334 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %bytesperline.i.i334, align 4
  %height.i.i335 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 3, i32 1
  %141 = ptrtoint ptr %height.i.i335 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %height.i.i335, align 4
  %mul1.i.i336 = mul i32 %142, %140
  %add.i.i337 = add i32 %mul1.i.i336, %138
  br label %cedrus_dst_buf_addr.exit339

cedrus_dst_buf_addr.exit339:                      ; preds = %cond.true.i333, %if.end3.i330.cedrus_dst_buf_addr.exit339_crit_edge, %if.then1.i327.cedrus_dst_buf_addr.exit339_crit_edge, %if.end.i324.cedrus_dst_buf_addr.exit339_crit_edge, %cedrus_dst_buf_addr.exit319.cedrus_dst_buf_addr.exit339_crit_edge
  %retval.0.i338 = phi i32 [ 0, %cedrus_dst_buf_addr.exit319.cedrus_dst_buf_addr.exit339_crit_edge ], [ %add.i.i337, %cond.true.i333 ], [ 0, %if.end3.i330.cedrus_dst_buf_addr.exit339_crit_edge ], [ 0, %if.end.i324.cedrus_dst_buf_addr.exit339_crit_edge ], [ 0, %if.then1.i327.cedrus_dst_buf_addr.exit339_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %143 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i318) #3
  %144 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base.i, align 8
  %add.ptr.i341 = getelementptr i8, ptr %145, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i341, i32 %143) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %146 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i338) #3
  %147 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i, align 8
  %add.ptr.i343 = getelementptr i8, ptr %148, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i343, i32 %146) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %149 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base.i, align 8
  %add.ptr.i345 = getelementptr i8, ptr %150, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i345, i32 0) #3, !srcloc !12
  %151 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %run, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %152, i32 0, i32 4
  %153 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp.not.i = icmp eq i32 %154, 0
  br i1 %cmp.not.i, label %cedrus_dst_buf_addr.exit339.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

cedrus_dst_buf_addr.exit339.vb2_get_plane_payload.exit_crit_edge: ; preds = %cedrus_dst_buf_addr.exit339
  call void @__sanitizer_cov_trace_pc() #5
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %cedrus_dst_buf_addr.exit339
  call void @__sanitizer_cov_trace_pc() #5
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %152, i32 0, i32 10, i32 0, i32 3
  %155 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %bytesused.i, align 4
  %phi.bo = shl i32 %156, 3
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %cedrus_dst_buf_addr.exit339.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i346 = phi i32 [ %phi.bo, %if.then.i ], [ 0, %cedrus_dst_buf_addr.exit339.vb2_get_plane_payload.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %157 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i346) #3
  %158 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %base.i, align 8
  %add.ptr.i348 = getelementptr i8, ptr %159, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i348, i32 %157) #3, !srcloc !12
  %160 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %run, align 4
  %call.i349 = tail call ptr @vb2_plane_cookie(ptr noundef %161, i32 noundef 0) #3
  %162 = ptrtoint ptr %call.i349 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %call.i349, align 4
  %and122 = and i32 %163, 268435440
  %shr = lshr i32 %163, 28
  %or124 = or i32 %shr, %and122
  %or127 = or i32 %or124, 1879048192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %164 = tail call i32 @llvm.bswap.i32(i32 %or127) #3
  %165 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base.i, align 8
  %add.ptr.i351 = getelementptr i8, ptr %166, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i351, i32 %164) #3, !srcloc !12
  %167 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %run, align 4
  %num_planes.i352 = getelementptr inbounds %struct.vb2_buffer, ptr %168, i32 0, i32 4
  %169 = ptrtoint ptr %num_planes.i352 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %num_planes.i352, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp.not.i353 = icmp eq i32 %170, 0
  br i1 %cmp.not.i353, label %vb2_get_plane_payload.exit.vb2_get_plane_payload.exit357_crit_edge, label %if.then.i355

vb2_get_plane_payload.exit.vb2_get_plane_payload.exit357_crit_edge: ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %vb2_get_plane_payload.exit357

if.then.i355:                                     ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #5
  %bytesused.i354 = getelementptr inbounds %struct.vb2_buffer, ptr %168, i32 0, i32 10, i32 0, i32 3
  %171 = ptrtoint ptr %bytesused.i354 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %bytesused.i354, align 4
  br label %vb2_get_plane_payload.exit357

vb2_get_plane_payload.exit357:                    ; preds = %if.then.i355, %vb2_get_plane_payload.exit.vb2_get_plane_payload.exit357_crit_edge
  %retval.0.i356 = phi i32 [ %172, %if.then.i355 ], [ 0, %vb2_get_plane_payload.exit.vb2_get_plane_payload.exit357_crit_edge ]
  %add131 = add i32 %retval.0.i356, %163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %173 = tail call i32 @llvm.bswap.i32(i32 %add131) #3
  %174 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %base.i, align 8
  %add.ptr.i359 = getelementptr i8, ptr %175, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i359, i32 %173) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %176 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %base.i, align 8
  %add.ptr.i361 = getelementptr i8, ptr %177, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i361, i32 0) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %178 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base.i, align 8
  %add.ptr.i363 = getelementptr i8, ptr %179, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i363, i32 0) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %180 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %base.i, align 8
  %add.ptr.i365 = getelementptr i8, ptr %181, i32 456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365, i32 0) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %182 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %base.i, align 8
  %add.ptr.i367 = getelementptr i8, ptr %183, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i367, i32 -1207959424) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cedrus_mpeg2_trigger(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %base.i = getelementptr inbounds %struct.cedrus_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 251658370) #3, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cedrus_engine_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_find_timestamp(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.bitreverse.i8(i8) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @cedrus_dec_ops_mpeg2, !1, !"cedrus_dec_ops_mpeg2", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c", i32 202, i32 23}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2156417499}
!12 = !{i64 5384348}
!13 = !{i64 5384766}
!14 = !{i64 2156418319}
