; ModuleID = '/llk/IR_all_yes/drivers/media/platform/exynos-gsc/gsc-regs.c_pt.bc'
source_filename = "../drivers/media/platform/exynos-gsc/gsc-regs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.gsc_dev = type { %struct.spinlock, %struct.mutex, ptr, ptr, i16, i32, [4 x ptr], ptr, %struct.wait_queue_head, %struct.gsc_m2m_device, i32, %struct.video_device, %struct.v4l2_device }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.gsc_m2m_device = type { ptr, ptr, ptr, i32 }
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
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.gsc_addr = type { i32, i32, i32 }
%struct.gsc_ctx = type { %struct.gsc_frame, %struct.gsc_frame, i32, i32, %struct.gsc_scaler, i32, i32, i32, i8, ptr, ptr, %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.gsc_ctrls, i8, i32 }
%struct.gsc_frame = type { i32, i32, %struct.v4l2_rect, [8 x i32], %struct.gsc_addr, ptr, i32, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.gsc_scaler = type { i32, i32, i32, i32, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.gsc_ctrls = type { ptr, ptr, ptr, ptr }
%struct.gsc_fmt = type { i32, i32, i32, i32, i32, i16, i16, [8 x i8], i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@gsc_hw_set_input_addr.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exynos_gsc\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gsc_hw_set_input_addr\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/exynos-gsc/gsc-regs.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"src_buf[%d]: %pad, cb: %pad, cr: %pad\00", [58 x i8] zeroinitializer }, align 32
@gsc_hw_set_output_addr.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gsc_hw_set_output_addr\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"dst_buf[%d]: %pad, cb: %pad, cr: %pad\00", [58 x i8] zeroinitializer }, align 32
@gsc_hw_set_global_alpha.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gsc_hw_set_global_alpha\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Not a RGB format\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 270]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 90, i64 180, i64 270]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 89, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 100, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [48 x i8] c"../drivers/media/platform/exynos-gsc/gsc-regs.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 407, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_sw_reset(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #3, !srcloc !24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsc_wait_reset(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %dev, i32 0, i32 7
  %add.neg = sub i32 -5, %0
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub4 = add i32 %add.neg, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4)
  %cmp5 = icmp slt i32 %sub4, 0
  br i1 %cmp5, label %entry.while.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %5
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_frm_done_irq_mask(ptr nocapture noundef readonly %dev, i1 noundef zeroext %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  %3 = and i32 %2, -33554433
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %mask, i32 2, i32 0
  %cfg.0 = or i32 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %5 = tail call i32 @llvm.bswap.i32(i32 %cfg.0)
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #3, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_gsc_irq_enable(ptr nocapture noundef readonly %dev, i1 noundef zeroext %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %3 = and i32 %2, -16777217
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = zext i1 %mask to i32
  %cfg.0 = or i32 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  %5 = tail call i32 @llvm.bswap.i32(i32 %cfg.0)
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #3, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_input_buf_masking(ptr nocapture noundef readonly %dev, i32 noundef %shift, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 76
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !25
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  %shl = shl nuw i32 1, %shift
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %conv = zext i1 %enable to i32
  %shl2 = shl nuw i32 %conv, %shift
  %or = or i32 %and, %shl2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  tail call void @arm_heavy_mb() #3
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr4 = getelementptr i8, ptr %6, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  tail call void @arm_heavy_mb() #3
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %add.ptr9 = getelementptr i8, ptr %8, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %4) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr14 = getelementptr i8, ptr %10, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %4) #3, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_output_buf_masking(ptr nocapture noundef readonly %dev, i32 noundef %shift, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 268
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !25
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  %shl = shl nuw i32 1, %shift
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %conv = zext i1 %enable to i32
  %shl2 = shl nuw i32 %conv, %shift
  %or = or i32 %and, %shl2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr4 = getelementptr i8, ptr %6, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  tail call void @arm_heavy_mb() #3
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %add.ptr9 = getelementptr i8, ptr %8, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %4) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  tail call void @arm_heavy_mb() #3
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr14 = getelementptr i8, ptr %10, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %4) #3, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_input_addr(ptr nocapture noundef readonly %dev, ptr noundef %addr, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_hw_set_input_addr.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_hw_set_input_addr, %if.then)) #3
          to label %do.body3 [label %if.then], !srcloc !39

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %cb = getelementptr inbounds %struct.gsc_addr, ptr %addr, i32 0, i32 1
  %cr = getelementptr inbounds %struct.gsc_addr, ptr %addr, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_hw_set_input_addr.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.3, i32 noundef %index, ptr noundef %addr, ptr noundef %cb, ptr noundef %cr) #3
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  tail call void @arm_heavy_mb() #3
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %dev, i32 0, i32 7
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %mul = shl i32 %index, 2
  %add = add i32 %mul, 80
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %cb8 = getelementptr inbounds %struct.gsc_addr, ptr %addr, i32 0, i32 1
  %5 = ptrtoint ptr %cb8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cb8, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add11 = add i32 %mul, 128
  %add.ptr12 = getelementptr i8, ptr %9, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %7) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  tail call void @arm_heavy_mb() #3
  %cr15 = getelementptr inbounds %struct.gsc_addr, ptr %addr, i32 0, i32 2
  %10 = ptrtoint ptr %cr15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cr15, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add18 = add i32 %mul, 176
  %add.ptr19 = getelementptr i8, ptr %14, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %12) #3, !srcloc !24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_output_addr(ptr nocapture noundef readonly %dev, ptr noundef %addr, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_hw_set_output_addr.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_hw_set_output_addr, %if.then)) #3
          to label %do.body3 [label %if.then], !srcloc !39

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %cb = getelementptr inbounds %struct.gsc_addr, ptr %addr, i32 0, i32 1
  %cr = getelementptr inbounds %struct.gsc_addr, ptr %addr, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_hw_set_output_addr.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.5, i32 noundef %index, ptr noundef %addr, ptr noundef %cb, ptr noundef %cr) #3
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  tail call void @arm_heavy_mb() #3
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %dev, i32 0, i32 7
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %mul = shl i32 %index, 2
  %add = add i32 %mul, 272
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  tail call void @arm_heavy_mb() #3
  %cb8 = getelementptr inbounds %struct.gsc_addr, ptr %addr, i32 0, i32 1
  %5 = ptrtoint ptr %cb8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cb8, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add11 = add i32 %mul, 352
  %add.ptr12 = getelementptr i8, ptr %9, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %7) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %cr15 = getelementptr inbounds %struct.gsc_addr, ptr %addr, i32 0, i32 2
  %10 = ptrtoint ptr %cr15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cr15, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add18 = add i32 %mul, 432
  %add.ptr19 = getelementptr i8, ptr %14, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %12) #3, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_input_path(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  %5 = and i32 %4, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  tail call void @arm_heavy_mb() #3
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #3, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_in_size(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %crop = getelementptr inbounds %struct.gsc_frame, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crop, align 4
  %top = getelementptr inbounds %struct.gsc_frame, ptr %ctx, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %top, align 4
  %shl2 = shl i32 %5, 16
  %or = or i32 %shl2, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  tail call void @arm_heavy_mb() #3
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #3, !srcloc !24
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctx, align 4
  %f_height = getelementptr inbounds %struct.gsc_frame, ptr %ctx, i32 0, i32 1
  %11 = ptrtoint ptr %f_height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_height, align 4
  %shl4 = shl i32 %12, 16
  %or5 = or i32 %shl4, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  tail call void @arm_heavy_mb() #3
  %13 = tail call i32 @llvm.bswap.i32(i32 %or5)
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  %add.ptr10 = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %13) #3, !srcloc !24
  %width = getelementptr inbounds %struct.gsc_frame, ptr %ctx, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.gsc_frame, ptr %ctx, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %shl14 = shl i32 %19, 16
  %or15 = or i32 %shl14, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  tail call void @arm_heavy_mb() #3
  %20 = tail call i32 @llvm.bswap.i32(i32 %or15)
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 8
  %add.ptr20 = getelementptr i8, ptr %22, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %20) #3, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_in_image_rgb(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !25
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  %colorspace = getelementptr inbounds %struct.gsc_frame, ptr %ctx, i32 0, i32 6
  %6 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  %or = or i32 %5, 32768
  %cfg.0 = select i1 %cmp, i32 %or, i32 %5
  %fmt = getelementptr inbounds %struct.gsc_frame, ptr %ctx, i32 0, i32 5
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fmt, align 4
  %pixelformat = getelementptr inbounds %struct.gsc_fmt, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1380075346, i32 %11)
  %cond = icmp eq i32 %11, 1380075346
  %or5 = or i32 %cfg.0, 256
  %cfg.1 = select i1 %cond, i32 %or5, i32 %cfg.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !52
  tail call void @arm_heavy_mb() #3
  %12 = tail call i32 @llvm.bswap.i32(i32 %cfg.1)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add.ptr15 = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %12) #3, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_in_image_format(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  %5 = and i32 %4, -418840577
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !54
  tail call void @arm_heavy_mb() #3
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #3, !srcloc !24
  %fmt = getelementptr inbounds %struct.gsc_frame, ptr %ctx, i32 0, i32 5
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fmt, align 4
  %color = getelementptr inbounds %struct.gsc_fmt, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %color, align 4
  %and4 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %num_planes = getelementptr inbounds %struct.gsc_fmt, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %num_planes to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_planes, align 4
  %conv = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp100.not = icmp eq i16 %14, 0
  br i1 %cmp100.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gsc_dev, align 4
  %regs.i = getelementptr inbounds %struct.gsc_dev, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %18, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !25
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  %colorspace.i = getelementptr inbounds %struct.gsc_frame, ptr %ctx, i32 0, i32 6
  %21 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %colorspace.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp.i = icmp eq i32 %22, 3
  %or.i = or i32 %20, 32768
  %cfg.0.i = select i1 %cmp.i, i32 %or.i, i32 %20
  %23 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fmt, align 4
  %pixelformat.i = getelementptr inbounds %struct.gsc_fmt, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1380075346, i32 %26)
  %cond.i = icmp eq i32 %26, 1380075346
  %or5.i = or i32 %cfg.0.i, 256
  %cfg.1.i = select i1 %cond.i, i32 %or5.i, i32 %cfg.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !52
  tail call void @arm_heavy_mb() #3
  %27 = tail call i32 @llvm.bswap.i32(i32 %cfg.1.i) #3
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %27) #3, !srcloc !24
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0102 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %depth.0101 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gsc_fmt, ptr %10, i32 0, i32 7, i32 %i.0102
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %conv9 = zext i8 %31 to i32
  %add = add i32 %depth.0101, %conv9
  %inc = add nuw nsw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %depth.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %num_comp = getelementptr inbounds %struct.gsc_fmt, ptr %10, i32 0, i32 6
  %32 = ptrtoint ptr %num_comp to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_comp, align 2
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i16 %33, label %for.end.sw.epilog_crit_edge [
    i16 1, label %sw.bb
    i16 2, label %sw.bb27
    i16 3, label %sw.bb44
  ]

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %yorder = getelementptr inbounds %struct.gsc_fmt, ptr %10, i32 0, i32 3
  %35 = ptrtoint ptr %yorder to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %yorder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %36)
  %cmp13 = icmp eq i32 %36, 16
  %cfg.0.v = select i1 %cmp13, i32 1024, i32 9216
  %cfg.0 = or i32 %cfg.0.v, %6
  %corder = getelementptr inbounds %struct.gsc_fmt, ptr %10, i32 0, i32 4
  %37 = ptrtoint ptr %corder to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %corder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %38)
  %cmp20 = icmp eq i32 %38, 32
  %or25 = or i32 %cfg.0, 4096
  %spec.select96 = select i1 %cmp20, i32 %cfg.0, i32 %or25
  br label %sw.epilog

sw.bb27:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %depth.0.lcssa)
  %cmp28 = icmp eq i32 %depth.0.lcssa, 12
  %cfg.1.v = select i1 %cmp28, i32 512, i32 1280
  %cfg.1 = or i32 %cfg.1.v, %6
  %corder36 = getelementptr inbounds %struct.gsc_fmt, ptr %10, i32 0, i32 4
  %39 = ptrtoint ptr %corder36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %corder36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %40)
  %cmp37 = icmp eq i32 %40, 32
  %or42 = or i32 %cfg.1, 4096
  %spec.select97 = select i1 %cmp37, i32 %cfg.1, i32 %or42
  br label %sw.epilog

sw.bb44:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %depth.0.lcssa)
  %cmp45 = icmp eq i32 %depth.0.lcssa, 12
  br i1 %cmp45, label %if.then47, label %if.else49

if.then47:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #5
  %or48 = or i32 %6, 768
  br label %sw.epilog

if.else49:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #5
  %or50 = or i32 %6, 1536
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else49, %if.then47, %sw.bb27, %sw.bb, %for.end.sw.epilog_crit_edge
  %cfg.2 = phi i32 [ %6, %for.end.sw.epilog_crit_edge ], [ %or48, %if.then47 ], [ %or50, %if.else49 ], [ %spec.select96, %sw.bb ], [ %spec.select97, %sw.bb27 ]
  %pixelformat.i98 = getelementptr inbounds %struct.gsc_fmt, ptr %10, i32 0, i32 1
  %41 = ptrtoint ptr %pixelformat.i98 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pixelformat.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842091862, i32 %42)
  %cmp.i99.not = icmp eq i32 %42, 842091862
  %or56 = or i32 %cfg.2, 8
  %spec.select = select i1 %cmp.i99.not, i32 %or56, i32 %cfg.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !55
  tail call void @arm_heavy_mb() #3
  %43 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 8
  %add.ptr62 = getelementptr i8, ptr %45, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %43) #3, !srcloc !24
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_output_path(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !56
  %5 = and i32 %4, -16777217
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %out_path = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 3
  %7 = ptrtoint ptr %out_path to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp ne i32 %8, 2
  %or2 = zext i1 %cmp to i32
  %cfg.0 = or i32 %6, %or2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !57
  tail call void @arm_heavy_mb() #3
  %9 = tail call i32 @llvm.bswap.i32(i32 %cfg.0)
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr4 = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %9) #3, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_out_size(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %out_path = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %out_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %d_frame = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1
  %crop = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crop, align 4
  %top = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1, i32 2, i32 1
  %6 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %top, align 4
  %shl2 = shl i32 %7, 16
  %or = or i32 %shl2, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !58
  tail call void @arm_heavy_mb() #3
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #3, !srcloc !24
  %11 = ptrtoint ptr %d_frame to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %d_frame, align 4
  %f_height = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %f_height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_height, align 4
  %shl4 = shl i32 %14, 16
  %or5 = or i32 %shl4, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !59
  tail call void @arm_heavy_mb() #3
  %15 = tail call i32 @llvm.bswap.i32(i32 %or5)
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %add.ptr10 = getelementptr i8, ptr %17, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %15) #3, !srcloc !24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %gsc_ctrls = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 13
  %18 = ptrtoint ptr %gsc_ctrls to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gsc_ctrls, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %21, label %if.else [
    i32 90, label %if.end.if.then16_crit_edge
    i32 270, label %if.end.if.then16_crit_edge55
  ]

if.end.if.then16_crit_edge55:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

if.then16:                                        ; preds = %if.end.if.then16_crit_edge, %if.end.if.then16_crit_edge55
  %height = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1, i32 2, i32 3
  %width = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1, i32 2, i32 2
  br label %do.body30

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %width23 = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1, i32 2, i32 2
  %height26 = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1, i32 2, i32 3
  br label %do.body30

do.body30:                                        ; preds = %if.else, %if.then16
  %width.sink = phi ptr [ %width, %if.then16 ], [ %height26, %if.else ]
  %.sink.in = phi ptr [ %height, %if.then16 ], [ %width23, %if.else ]
  %23 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %.sink = load i32, ptr %.sink.in, align 4
  %24 = ptrtoint ptr %width.sink to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width.sink, align 4
  %shl20 = shl i32 %25, 16
  %or21 = or i32 %shl20, %.sink
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !60
  tail call void @arm_heavy_mb() #3
  %26 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %regs33 = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %regs33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs33, align 8
  %add.ptr34 = getelementptr i8, ptr %28, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %26) #3, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_out_image_rgb(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !25
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !61
  %colorspace = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  %cfg.0.v = select i1 %cmp, i32 3072, i32 1024
  %cfg.0 = or i32 %cfg.0.v, %5
  %fmt = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fmt, align 4
  %pixelformat = getelementptr inbounds %struct.gsc_fmt, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1380075346, i32 %11)
  %cond = icmp eq i32 %11, 1380075346
  %or5 = or i32 %cfg.0, 16
  %cfg.1 = select i1 %cond, i32 %or5, i32 %cfg.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void @arm_heavy_mb() #3
  %12 = tail call i32 @llvm.bswap.i32(i32 %cfg.1)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add.ptr15 = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %12) #3, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_out_image_format(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  %5 = and i32 %4, -1980694529
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !64
  tail call void @arm_heavy_mb() #3
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #3, !srcloc !24
  %fmt = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1, i32 5
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fmt, align 4
  %color = getelementptr inbounds %struct.gsc_fmt, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %color, align 4
  %and4 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gsc_dev, align 4
  %regs.i = getelementptr inbounds %struct.gsc_dev, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 32
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !25
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !61
  %colorspace.i = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1, i32 6
  %19 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %colorspace.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp.i = icmp eq i32 %20, 3
  %cfg.0.v.i = select i1 %cmp.i, i32 3072, i32 1024
  %cfg.0.i = or i32 %cfg.0.v.i, %18
  %21 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fmt, align 4
  %pixelformat.i = getelementptr inbounds %struct.gsc_fmt, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1380075346, i32 %24)
  %cond.i = icmp eq i32 %24, 1380075346
  %or5.i = or i32 %cfg.0.i, 16
  %cfg.1.i = select i1 %cond.i, i32 %or5.i, i32 %cfg.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void @arm_heavy_mb() #3
  %25 = tail call i32 @llvm.bswap.i32(i32 %cfg.1.i) #3
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %27, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %25) #3, !srcloc !24
  br label %cleanup

if.end:                                           ; preds = %entry
  %out_path = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 3
  %28 = ptrtoint ptr %out_path to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %out_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp.not = icmp eq i32 %29, 2
  br i1 %cmp.not, label %for.cond.preheader, label %if.then5

for.cond.preheader:                               ; preds = %if.end
  %num_planes = getelementptr inbounds %struct.gsc_fmt, ptr %10, i32 0, i32 5
  %30 = ptrtoint ptr %num_planes to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num_planes, align 4
  %conv = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp898.not = icmp eq i16 %31, 0
  br i1 %cmp898.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %or = or i32 %6, 112
  br label %do.body56

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0100 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %depth.099 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gsc_fmt, ptr %10, i32 0, i32 7, i32 %i.0100
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %33 to i32
  %add = add i32 %depth.099, %conv12
  %inc = add nuw nsw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %depth.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %num_comp = getelementptr inbounds %struct.gsc_fmt, ptr %10, i32 0, i32 6
  %34 = ptrtoint ptr %num_comp to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %num_comp, align 2
  %36 = zext i16 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %35, label %for.end.sw.epilog_crit_edge [
    i16 1, label %sw.bb
    i16 2, label %sw.bb31
    i16 3, label %sw.bb48
  ]

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %yorder = getelementptr inbounds %struct.gsc_fmt, ptr %10, i32 0, i32 3
  %37 = ptrtoint ptr %yorder to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %yorder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %38)
  %cmp17 = icmp eq i32 %38, 16
  %cfg.0.v = select i1 %cmp17, i32 64, i32 576
  %cfg.0 = or i32 %cfg.0.v, %6
  %corder = getelementptr inbounds %struct.gsc_fmt, ptr %10, i32 0, i32 4
  %39 = ptrtoint ptr %corder to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %corder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %40)
  %cmp24 = icmp eq i32 %40, 32
  %or29 = or i32 %cfg.0, 256
  %spec.select94 = select i1 %cmp24, i32 %cfg.0, i32 %or29
  br label %sw.epilog

sw.bb31:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %depth.0.lcssa)
  %cmp32 = icmp eq i32 %depth.0.lcssa, 12
  %cfg.1.v = select i1 %cmp32, i32 32, i32 80
  %cfg.1 = or i32 %cfg.1.v, %6
  %corder40 = getelementptr inbounds %struct.gsc_fmt, ptr %10, i32 0, i32 4
  %41 = ptrtoint ptr %corder40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %corder40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %42)
  %cmp41 = icmp eq i32 %42, 32
  %or46 = or i32 %cfg.1, 256
  %spec.select95 = select i1 %cmp41, i32 %cfg.1, i32 %or46
  br label %sw.epilog

sw.bb48:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %or49 = or i32 %6, 48
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb48, %sw.bb31, %sw.bb, %for.end.sw.epilog_crit_edge
  %cfg.2 = phi i32 [ %6, %for.end.sw.epilog_crit_edge ], [ %or49, %sw.bb48 ], [ %spec.select94, %sw.bb ], [ %spec.select95, %sw.bb31 ]
  %pixelformat.i96 = getelementptr inbounds %struct.gsc_fmt, ptr %10, i32 0, i32 1
  %43 = ptrtoint ptr %pixelformat.i96 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pixelformat.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842091862, i32 %44)
  %cmp.i97.not = icmp eq i32 %44, 842091862
  %or54 = or i32 %cfg.2, 2
  %spec.select = select i1 %cmp.i97.not, i32 %or54, i32 %cfg.2
  br label %do.body56

do.body56:                                        ; preds = %sw.epilog, %if.then5
  %cfg.3 = phi i32 [ %or, %if.then5 ], [ %spec.select, %sw.epilog ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !65
  tail call void @arm_heavy_mb() #3
  %45 = tail call i32 @llvm.bswap.i32(i32 %cfg.3)
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 8
  %add.ptr60 = getelementptr i8, ptr %47, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %45) #3, !srcloc !24
  br label %cleanup

cleanup:                                          ; preds = %do.body56, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_prescaler(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %scaler = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %scaler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scaler, align 4
  %shl = shl i32 %3, 28
  %pre_hratio = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %pre_hratio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pre_hratio, align 4
  %or = or i32 %shl, %5
  %pre_vratio = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %pre_vratio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pre_vratio, align 4
  %shl2 = shl i32 %7, 16
  %or3 = or i32 %or, %shl2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !66
  tail call void @arm_heavy_mb() #3
  %8 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #3, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_mainscaler(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %main_hratio = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %main_hratio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %main_hratio, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !67
  tail call void @arm_heavy_mb() #3
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #3, !srcloc !24
  %main_vratio = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %main_vratio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %main_vratio, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !68
  tail call void @arm_heavy_mb() #3
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr6 = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %9) #3, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_rotation(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !69
  %5 = and i32 %4, -1793
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %gsc_ctrls = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 13
  %7 = ptrtoint ptr %gsc_ctrls to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gsc_ctrls, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %10, label %entry.do.body_crit_edge [
    i32 270, label %sw.bb
    i32 180, label %sw.bb2
    i32 90, label %sw.bb4
    i32 0, label %sw.bb16
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or = or i32 %6, 458752
  br label %do.body

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or3 = or i32 %6, 196608
  br label %do.body

sw.bb4:                                           ; preds = %entry
  %hflip = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 13, i32 1
  %12 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hflip, align 4
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  %or7 = or i32 %6, 327680
  br label %do.body

if.else:                                          ; preds = %sw.bb4
  %vflip = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 13, i32 2
  %16 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vflip, align 4
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not = icmp eq i32 %19, 0
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %or12 = or i32 %6, 393216
  br label %do.body

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %or14 = or i32 %6, 262144
  br label %do.body

sw.bb16:                                          ; preds = %entry
  %hflip18 = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 13, i32 1
  %20 = ptrtoint ptr %hflip18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hflip18, align 4
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 22
  %22 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool20.not = icmp eq i32 %23, 0
  br i1 %tobool20.not, label %if.else23, label %if.then21

if.then21:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  %or22 = or i32 %6, 65536
  br label %do.body

if.else23:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  %vflip25 = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 13, i32 2
  %24 = ptrtoint ptr %vflip25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vflip25, align 4
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %25, i32 0, i32 22
  %26 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool27.not = icmp eq i32 %27, 0
  %or29 = or i32 %6, 131072
  %spec.select = select i1 %tobool27.not, i32 %6, i32 %or29
  br label %do.body

do.body:                                          ; preds = %if.else23, %if.then21, %if.else13, %if.then11, %if.then, %sw.bb2, %sw.bb, %entry.do.body_crit_edge
  %cfg.0 = phi i32 [ %6, %entry.do.body_crit_edge ], [ %or22, %if.then21 ], [ %or7, %if.then ], [ %or12, %if.then11 ], [ %or14, %if.else13 ], [ %or3, %sw.bb2 ], [ %or, %sw.bb ], [ %spec.select, %if.else23 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !70
  tail call void @arm_heavy_mb() #3
  %28 = tail call i32 @llvm.bswap.i32(i32 %cfg.0)
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 8
  %add.ptr33 = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %28) #3, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_global_alpha(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmt, align 4
  %color = getelementptr inbounds %struct.gsc_fmt, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %color, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gsc_hw_set_global_alpha.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gsc_hw_set_global_alpha, %if.then4)) #3
          to label %cleanup [label %if.then4], !srcloc !39

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gsc_hw_set_global_alpha.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.7) #3
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 9
  %4 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gsc_dev, align 4
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !71
  %9 = and i32 %8, -256
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %global_alpha = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 13, i32 3
  %11 = ptrtoint ptr %global_alpha to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %global_alpha, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %shl = shl i32 %14, 24
  %or = or i32 %shl, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !72
  tail call void @arm_heavy_mb() #3
  %15 = tail call i32 @llvm.bswap.i32(i32 %or)
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %add.ptr14 = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %15) #3, !srcloc !24
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsc_hw_set_sfr_update(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gsc_dev = getelementptr inbounds %struct.gsc_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %gsc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsc_dev, align 4
  %regs = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #3, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !73
  %5 = or i32 %4, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !74
  tail call void @arm_heavy_mb() #3
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #3, !srcloc !24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/exynos-gsc/gsc-regs.c", i32 89, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @gsc_hw_set_input_addr.__UNIQUE_ID_ddebug299, !1, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/exynos-gsc/gsc-regs.c", i32 100, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @gsc_hw_set_output_addr.__UNIQUE_ID_ddebug300, !7, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/exynos-gsc/gsc-regs.c", i32 407, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @gsc_hw_set_global_alpha.__UNIQUE_ID_ddebug301, !11, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2156448122}
!24 = !{i64 693374}
!25 = !{i64 693792}
!26 = !{i64 2156449160}
!27 = !{i64 2156449650}
!28 = !{i64 2156449886}
!29 = !{i64 2156450547}
!30 = !{i64 2156450783}
!31 = !{i64 2156451444}
!32 = !{i64 2156451662}
!33 = !{i64 2156452054}
!34 = !{i64 2156452446}
!35 = !{i64 2156453112}
!36 = !{i64 2156453332}
!37 = !{i64 2156453727}
!38 = !{i64 2156454122}
!39 = !{i64 2148160531, i64 2148160536, i64 2148160549, i64 2148160593, i64 2148160627, i64 2148160648}
!40 = !{i64 2156457080}
!41 = !{i64 2156457549}
!42 = !{i64 2156458021}
!43 = !{i64 2156461004}
!44 = !{i64 2156461476}
!45 = !{i64 2156461951}
!46 = !{i64 2156462648}
!47 = !{i64 2156462893}
!48 = !{i64 2156463341}
!49 = !{i64 2156463787}
!50 = !{i64 2156464239}
!51 = !{i64 2156464900}
!52 = !{i64 2156465402}
!53 = !{i64 2156466063}
!54 = !{i64 2156466338}
!55 = !{i64 2156466887}
!56 = !{i64 2156467548}
!57 = !{i64 2156467793}
!58 = !{i64 2156468241}
!59 = !{i64 2156468687}
!60 = !{i64 2156469199}
!61 = !{i64 2156469860}
!62 = !{i64 2156470362}
!63 = !{i64 2156471023}
!64 = !{i64 2156471296}
!65 = !{i64 2156471839}
!66 = !{i64 2156472313}
!67 = !{i64 2156472732}
!68 = !{i64 2156473151}
!69 = !{i64 2156473812}
!70 = !{i64 2156474110}
!71 = !{i64 2156476972}
!72 = !{i64 2156477248}
!73 = !{i64 2156477909}
!74 = !{i64 2156478136}
