; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp4/mdp4_irq.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp4/mdp4_irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mdp4_kms = type { %struct.mdp_kms, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mdp_irq, i8, ptr, i64 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.93, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.93 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.96, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.96 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }

@mdp4_irq_error_handler.rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 1, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rs.lock\00", [24 x i8] zeroinitializer }, align 32
@mdp4_irq_error_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.mdp4_irq_error_handler = private unnamed_addr constant [23 x i8] c"mdp4_irq_error_handler\00", align 1
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"*ERROR* errors: %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@dumpstate = external dso_local local_unnamed_addr global i8, align 1
@___asan_gen_.4 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 24, i32 9 }
@___asan_gen_.10 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [44 x i8] c"../drivers/gpu/drm/msm/disp/mdp4/mdp4_irq.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 27, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @mdp4_irq_error_handler.rs, ptr @.str, ptr @mdp4_irq_error_handler._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp4_irq_error_handler.rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp4_irq_error_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp4_set_irqmask(ptr nocapture noundef readonly %mdp_kms, i32 noundef %irqmask, i32 noundef %old_irqmask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = xor i32 %old_irqmask, -1
  %xor = and i32 %0, %irqmask
  %mmio.i = getelementptr inbounds %struct.mdp4_kms, ptr %mdp_kms, i32 0, i32 3
  %1 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 88
  tail call void @msm_writel(i32 noundef %xor, ptr noundef %add.ptr.i) #3
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %4, i32 80
  tail call void @msm_writel(i32 noundef %irqmask, ptr noundef %add.ptr.i8) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp4_irq_preinstall(ptr noundef %kms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mdp4_enable(ptr noundef %kms) #3
  %mmio.i = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 3
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 88
  tail call void @msm_writel(i32 noundef -1, ptr noundef %add.ptr.i) #3
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i9 = getelementptr i8, ptr %3, i32 80
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i9) #3
  %call4 = tail call i32 @mdp4_disable(ptr noundef %kms) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp4_irq_postinstall(ptr noundef %kms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %error_handler4 = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 9
  %irq = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mdp4_irq_error_handler, ptr %irq, align 4
  %irqmask = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %irqmask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1280, ptr %irqmask, align 4
  tail call void @mdp_irq_register(ptr noundef %kms, ptr noundef %error_handler4) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_irq_error_handler(ptr nocapture noundef readonly %irq, i32 noundef %irqstatus) #0 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @mdp4_irq_error_handler._rs, ptr noundef nonnull @__func__.mdp4_irq_error_handler) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %irqstatus) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dumpstate to i32))
  %0 = load i8, ptr @dumpstate, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @mdp4_irq_error_handler.rs, ptr noundef nonnull @__func__.mdp4_irq_error_handler) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end7_crit_edge, label %if.then4

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #3
  %1 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %2 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %3 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %dev = getelementptr i8, ptr %irq, i32 -32
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev5, align 4
  %8 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__drm_printfn_info, ptr %p, align 4, !alias.scope !19
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %1, align 4, !alias.scope !19
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %2, align 4, !alias.scope !19
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %3, align 4, !alias.scope !19
  call void @drm_state_dump(ptr noundef %5, ptr noundef nonnull %p) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #3
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_irq_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp4_irq_uninstall(ptr noundef %kms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mdp4_enable(ptr noundef %kms) #3
  %mmio.i = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 3
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 80
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #3
  %call4 = tail call i32 @mdp4_disable(ptr noundef %kms) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp4_irq(ptr noundef %kms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev4 = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 1
  %0 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev4, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mmio.i = getelementptr inbounds %struct.mdp4_kms, ptr %kms, i32 0, i32 3
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 80
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #3
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i21 = getelementptr i8, ptr %7, i32 84
  %call.i22 = tail call i32 @msm_readl(ptr noundef %add.ptr.i21) #3
  %and = and i32 %call.i22, %call.i
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i24 = getelementptr i8, ptr %9, i32 88
  tail call void @msm_writel(i32 noundef %and, ptr noundef %add.ptr.i24) #3
  tail call void @mdp_dispatch_irqs(ptr noundef %kms, i32 noundef %and) #3
  %num_crtcs = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 25
  %10 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_crtcs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp25.not = icmp eq i32 %11, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %id.026 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.msm_drm_private, ptr %3, i32 0, i32 26, i32 %id.026
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call6 = tail call i32 @mdp4_crtc_vblank(ptr noundef %13) #3
  %and7 = and i32 %call6, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %call8 = tail call zeroext i1 @drm_handle_vblank(ptr noundef %1, i32 noundef %id.026) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %id.026, 1
  %14 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_crtcs, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_dispatch_irqs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp4_crtc_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_handle_vblank(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp4_enable_vblank(ptr noundef %kms, ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mdp4_enable(ptr noundef %kms) #3
  %call7 = tail call i32 @mdp4_crtc_vblank(ptr noundef %crtc) #3
  tail call void @mdp_update_vblank_mask(ptr noundef %kms, i32 noundef %call7, i1 noundef zeroext true) #3
  %call8 = tail call i32 @mdp4_disable(ptr noundef %kms) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_update_vblank_mask(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp4_disable_vblank(ptr noundef %kms, ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mdp4_enable(ptr noundef %kms) #3
  %call7 = tail call i32 @mdp4_crtc_vblank(ptr noundef %crtc) #3
  tail call void @mdp_update_vblank_mask(ptr noundef %kms, i32 noundef %call7, i1 noundef zeroext false) #3
  %call8 = tail call i32 @mdp4_disable(ptr noundef %kms) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_state_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_irq.c", i32 24, i32 9}
!2 = !{ptr @mdp4_irq_error_handler.rs, !1, !"rs", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_irq.c", i32 27, i32 2}
!5 = !{ptr @mdp4_irq_error_handler._rs, !4, !"_rs", i1 false, i1 false}
!6 = !{ptr @__func__.mdp4_irq_error_handler, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i8 0, i8 2}
!19 = !{!20}
!20 = distinct !{!20, !21, !"drm_info_printer: %agg.result"}
!21 = distinct !{!21, !"drm_info_printer"}
