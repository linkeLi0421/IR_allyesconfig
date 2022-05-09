; ModuleID = '/llk/IR_all_yes/drivers/media/platform/rockchip/rga/rga-buf.c_pt.bc'
source_filename = "../drivers/media/platform/rockchip/rga/rga-buf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rga_frame = type { i32, i32, i32, %struct.v4l2_rect, ptr, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.85, i32 }
%union.anon.85 = type { i32 }
%struct.rga_ctx = type { %struct.v4l2_fh, ptr, %struct.rga_frame, %struct.rga_frame, %struct.v4l2_ctrl_handler, i32, i32, i32, i32, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.rockchip_rga = type { %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rockchip_rga_version, %struct.mutex, %struct.spinlock, ptr, i32, ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.rockchip_rga_version = type { i32, i32 }
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
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@rga_qops = dso_local constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @rga_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @rga_buf_prepare, ptr null, ptr null, ptr @rga_buf_start_streaming, ptr @rga_buf_stop_streaming, ptr @rga_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.1 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@___asan_gen_.2 = private unnamed_addr constant [9 x i8] c"rga_qops\00", align 1
@___asan_gen_.3 = private constant [49 x i8] c"../drivers/media/platform/rockchip/rga/rga-buf.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 100, i32 22 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 1163, i32 7 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @rga_qops, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rga_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  %call1 = tail call ptr @rga_get_frame(ptr noundef %1, i32 noundef %3) #4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sizes, align 4
  %size = getelementptr inbounds %struct.rga_frame, ptr %call1, i32 0, i32 6
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp = icmp ult i32 %8, %10
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %size6 = getelementptr inbounds %struct.rga_frame, ptr %call1, i32 0, i32 6
  %11 = ptrtoint ptr %size6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size6, align 4
  %13 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sizes, align 4
  %14 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %nplanes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %cond, %if.then4 ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rga_buf_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %call2 = tail call ptr @rga_get_frame(ptr noundef %3, i32 noundef %5) #4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %7 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %size = getelementptr inbounds %struct.rga_frame, ptr %call2, i32 0, i32 6
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp1.i = icmp ult i32 %12, %10
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !14

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1163, i32 noundef 9, ptr noundef null) #4
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %14, %if.then38.i ], [ %10, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %15 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end42.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rga_buf_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %rga1 = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rga1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rga1, align 4
  %dev = getelementptr inbounds %struct.rockchip_rga, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #4
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #4, !srcloc !16
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.then_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !17
  br label %if.then

if.then:                                          ; preds = %do.end11.i.i.i.i.i, %if.then.i.if.then_crit_edge
  %7 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %8, i32 0, i32 10
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end26.i, %if.then
  %9 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %q, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.else.i [
    i32 2, label %for.cond.i.if.then.i7_crit_edge
    i32 10, label %for.cond.i.if.then.i7_crit_edge11
    i32 3, label %for.cond.i.if.then.i7_crit_edge12
    i32 8, label %for.cond.i.if.then.i7_crit_edge13
    i32 5, label %for.cond.i.if.then.i7_crit_edge14
    i32 7, label %for.cond.i.if.then.i7_crit_edge15
    i32 12, label %for.cond.i.if.then.i7_crit_edge16
    i32 14, label %for.cond.i.if.then.i7_crit_edge17
  ]

for.cond.i.if.then.i7_crit_edge17:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i7

for.cond.i.if.then.i7_crit_edge16:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i7

for.cond.i.if.then.i7_crit_edge15:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i7

for.cond.i.if.then.i7_crit_edge14:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i7

for.cond.i.if.then.i7_crit_edge13:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i7

for.cond.i.if.then.i7_crit_edge12:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i7

for.cond.i.if.then.i7_crit_edge11:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i7

for.cond.i.if.then.i7_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i7

if.then.i7:                                       ; preds = %for.cond.i.if.then.i7_crit_edge, %for.cond.i.if.then.i7_crit_edge11, %for.cond.i.if.then.i7_crit_edge12, %for.cond.i.if.then.i7_crit_edge13, %for.cond.i.if.then.i7_crit_edge14, %for.cond.i.if.then.i7_crit_edge15, %for.cond.i.if.then.i7_crit_edge16, %for.cond.i.if.then.i7_crit_edge17
  %12 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %13, i32 0, i32 8
  br label %if.end.i

if.else.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %15, i32 0, i32 7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i7
  %cap_q_ctx.i.sink.i = phi ptr [ %cap_q_ctx.i.i, %if.else.i ], [ %out_q_ctx.i.i, %if.then.i7 ]
  %call.i37.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink.i) #4
  %tobool.not.i = icmp eq ptr %call.i37.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end26.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i37.i, i32 noundef 3) #4
  br label %for.cond.i

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rga_buf_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %rga1 = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rga1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rga1, align 4
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end26.i, %entry
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %q, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %5, label %if.else.i [
    i32 2, label %for.cond.i.if.then.i_crit_edge
    i32 10, label %for.cond.i.if.then.i_crit_edge4
    i32 3, label %for.cond.i.if.then.i_crit_edge5
    i32 8, label %for.cond.i.if.then.i_crit_edge6
    i32 5, label %for.cond.i.if.then.i_crit_edge7
    i32 7, label %for.cond.i.if.then.i_crit_edge8
    i32 12, label %for.cond.i.if.then.i_crit_edge9
    i32 14, label %for.cond.i.if.then.i_crit_edge10
  ]

for.cond.i.if.then.i_crit_edge10:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

for.cond.i.if.then.i_crit_edge9:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

for.cond.i.if.then.i_crit_edge8:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

for.cond.i.if.then.i_crit_edge7:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

for.cond.i.if.then.i_crit_edge6:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

for.cond.i.if.then.i_crit_edge5:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

for.cond.i.if.then.i_crit_edge4:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

for.cond.i.if.then.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.then.i:                                        ; preds = %for.cond.i.if.then.i_crit_edge, %for.cond.i.if.then.i_crit_edge4, %for.cond.i.if.then.i_crit_edge5, %for.cond.i.if.then.i_crit_edge6, %for.cond.i.if.then.i_crit_edge7, %for.cond.i.if.then.i_crit_edge8, %for.cond.i.if.then.i_crit_edge9, %for.cond.i.if.then.i_crit_edge10
  %7 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx.i, align 4
  %out_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 8
  br label %if.end.i

if.else.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m2m_ctx.i, align 4
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %10, i32 0, i32 7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %cap_q_ctx.i.sink.i = phi ptr [ %cap_q_ctx.i.i, %if.else.i ], [ %out_q_ctx.i.i, %if.then.i ]
  %call.i37.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink.i) #4
  %tobool.not.i = icmp eq ptr %call.i37.i, null
  br i1 %tobool.not.i, label %rga_buf_return_buffers.exit, label %if.end26.i

if.end26.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i37.i, i32 noundef 6) #4
  br label %for.cond.i

rga_buf_return_buffers.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.rockchip_rga, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 5) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rga_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %5, ptr noundef %vb) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rga_buf_map(ptr noundef %vb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %rga1 = getelementptr inbounds %struct.rga_ctx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %rga1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rga1, align 4
  %type = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %src_mmu_pages = getelementptr inbounds %struct.rockchip_rga, ptr %5, i32 0, i32 15
  %dst_mmu_pages = getelementptr inbounds %struct.rockchip_rga, ptr %5, i32 0, i32 16
  %pages.0.in = select i1 %cmp, ptr %src_mmu_pages, ptr %dst_mmu_pages
  %8 = ptrtoint ptr %pages.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %pages.0 = load ptr, ptr %pages.0.in, align 4
  %call2 = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #4
  %nents = getelementptr inbounds %struct.sg_table, ptr %call2, i32 0, i32 1
  %9 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp432.not = icmp eq i32 %10, 0
  br i1 %cmp432.not, label %entry.for.end14_crit_edge, label %for.body.preheader

entry.for.end14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end14

for.body.preheader:                               ; preds = %entry
  %11 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call2, align 4
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.preheader
  %mapped_size.035 = phi i32 [ %add10, %for.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.034 = phi i32 [ %inc12, %for.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sgl.033 = phi ptr [ %call13, %for.end.for.body_crit_edge ], [ %12, %for.body.preheader ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sgl.033, i32 0, i32 4
  %13 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_length, align 4
  %shr = lshr i32 %14, 12
  %15 = ptrtoint ptr %sgl.033 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sgl.033, align 4
  %and.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_phys.exit, label %do.body2.i.i, !prof !14

do.body2.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #4, !srcloc !18
  unreachable

sg_phys.exit:                                     ; preds = %for.body
  %and.i.i = and i32 %16, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %and.i.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %18 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %18
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sgl.033, i32 0, i32 1
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %14)
  %cmp730.not = icmp ult i32 %14, 4096
  br i1 %cmp730.not, label %sg_phys.exit.for.end_crit_edge, label %for.body8.preheader

sg_phys.exit.for.end_crit_edge:                   ; preds = %sg_phys.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body8.preheader:                              ; preds = %sg_phys.exit
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.body8.preheader
  %p.031 = phi i32 [ %inc, %for.body8.for.body8_crit_edge ], [ 0, %for.body8.preheader ]
  %reass.add = add i32 %add.i, %p.031
  %reass.mul = shl i32 %reass.add, 12
  %add = add i32 %reass.mul, %20
  %add9 = add i32 %p.031, %mapped_size.035
  %arrayidx = getelementptr i32, ptr %pages.0, i32 %add9
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %p.031, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body8.for.end_crit_edge, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body8

for.body8.for.end_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body8.for.end_crit_edge, %sg_phys.exit.for.end_crit_edge
  %add10 = add i32 %shr, %mapped_size.035
  %inc12 = add nuw i32 %i.034, 1
  %call13 = tail call ptr @sg_next(ptr noundef %sgl.033) #4
  %22 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nents, align 4
  %cmp4 = icmp ult i32 %inc12, %23
  br i1 %cmp4, label %for.end.for.body_crit_edge, label %for.end.for.end14_crit_edge

for.end.for.end14_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end14

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end14:                                        ; preds = %for.end.for.end14_crit_edge, %entry.for.end14_crit_edge
  %dev = getelementptr inbounds %struct.rockchip_rga, ptr %5, i32 0, i32 3
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %pages.0 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %26) #4
  tail call void @dma_sync_single_for_device(ptr noundef %25, i32 noundef %call.i, i32 noundef 32768, i32 noundef 0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rga_get_frame(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @rga_qops, !1, !"rga_qops", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/rockchip/rga/rga-buf.c", i32 100, i32 22}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2148485160}
!16 = !{i64 971760, i64 971785, i64 971807, i64 971823, i64 971835, i64 971855, i64 971879, i64 971895, i64 971907}
!17 = !{i64 2148485348}
!18 = !{i64 2156055439, i64 2156055931, i64 2156055476, i64 2156055532, i64 2156055566, i64 2156055590, i64 2156055631, i64 2156055652, i64 2156055680, i64 2156055714}
