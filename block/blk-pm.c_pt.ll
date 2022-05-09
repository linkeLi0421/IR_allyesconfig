; ModuleID = '/llk/IR_all_yes/block/blk-pm.c_pt.bc'
source_filename = "../block/blk-pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+blk_pm_runtime_init\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_pm_runtime_init\09\09\09\09"
module asm "\09.long\09__crc_blk_pm_runtime_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_pm_runtime_init:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_pm_runtime_init\22\09\09\09\09\09"
module asm "__kstrtabns_blk_pm_runtime_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blk_pre_runtime_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_pre_runtime_suspend\09\09\09\09"
module asm "\09.long\09__crc_blk_pre_runtime_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_pre_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_pre_runtime_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_blk_pre_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blk_post_runtime_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_post_runtime_suspend\09\09\09\09"
module asm "\09.long\09__crc_blk_post_runtime_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_post_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_post_runtime_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_blk_post_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blk_pre_runtime_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_pre_runtime_resume\09\09\09\09"
module asm "\09.long\09__crc_blk_pre_runtime_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_pre_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_pre_runtime_resume\22\09\09\09\09\09"
module asm "__kstrtabns_blk_pre_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blk_post_runtime_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_post_runtime_resume\09\09\09\09"
module asm "\09.long\09__crc_blk_post_runtime_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_post_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_post_runtime_resume\22\09\09\09\09\09"
module asm "__kstrtabns_blk_post_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blk_set_runtime_active\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_set_runtime_active\09\09\09\09"
module asm "\09.long\09__crc_blk_set_runtime_active\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_set_runtime_active:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_set_runtime_active\22\09\09\09\09\09"
module asm "__kstrtabns_blk_set_runtime_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@__kstrtab_blk_pm_runtime_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_pm_runtime_init = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_pm_runtime_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_pm_runtime_init to i32), ptr @__kstrtab_blk_pm_runtime_init, ptr @__kstrtabns_blk_pm_runtime_init }, section "___ksymtab+blk_pm_runtime_init", align 4
@blk_pre_runtime_suspend.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"block/blk-pm.c\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_blk_pre_runtime_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_pre_runtime_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_pre_runtime_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_pre_runtime_suspend to i32), ptr @__kstrtab_blk_pre_runtime_suspend, ptr @__kstrtabns_blk_pre_runtime_suspend }, section "___ksymtab+blk_pre_runtime_suspend", align 4
@__kstrtab_blk_post_runtime_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_post_runtime_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_post_runtime_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_post_runtime_suspend to i32), ptr @__kstrtab_blk_post_runtime_suspend, ptr @__kstrtabns_blk_post_runtime_suspend }, section "___ksymtab+blk_post_runtime_suspend", align 4
@__kstrtab_blk_pre_runtime_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_pre_runtime_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_pre_runtime_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_pre_runtime_resume to i32), ptr @__kstrtab_blk_pre_runtime_resume, ptr @__kstrtabns_blk_pre_runtime_resume }, section "___ksymtab+blk_pre_runtime_resume", align 4
@__kstrtab_blk_post_runtime_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_post_runtime_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_post_runtime_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_post_runtime_resume to i32), ptr @__kstrtab_blk_post_runtime_resume, ptr @__kstrtabns_blk_post_runtime_resume }, section "___ksymtab+blk_post_runtime_resume", align 4
@__kstrtab_blk_set_runtime_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_set_runtime_active = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_set_runtime_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_set_runtime_active to i32), ptr @__kstrtab_blk_set_runtime_active, ptr @__kstrtabns_blk_set_runtime_active }, section "___ksymtab+blk_set_runtime_active", align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [18 x i8] c"../block/blk-pm.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 68, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_blk_pm_runtime_init, ptr @__ksymtab_blk_post_runtime_resume, ptr @__ksymtab_blk_post_runtime_suspend, ptr @__ksymtab_blk_pre_runtime_resume, ptr @__ksymtab_blk_pre_runtime_suspend, ptr @__ksymtab_blk_set_runtime_active, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_pm_runtime_init(ptr nocapture noundef %q, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 19
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev1, align 8
  %rpm_status = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 20
  %1 = ptrtoint ptr %rpm_status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rpm_status, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef -1) #2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %3, i1 noundef zeroext true) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_pre_runtime_suspend(ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 19
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %rpm_status = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 20
  %2 = ptrtoint ptr %rpm_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rpm_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end.if.end30_crit_edge, label %land.rhs

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end30

land.rhs:                                         ; preds = %if.end
  %.b68 = load i1, ptr @blk_pre_runtime_suspend.__already_done, align 1
  br i1 %.b68, label %land.rhs.if.end30_crit_edge, label %if.then8, !prof !24

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end30

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #4
  store i1 true, ptr @blk_pre_runtime_suspend.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef null) #2
  br label %if.end30

if.end30:                                         ; preds = %if.then8, %land.rhs.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #2
  %4 = ptrtoint ptr %rpm_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %rpm_status, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #2
  tail call void @blk_set_pm_only(ptr noundef %q) #2
  tail call void @blk_freeze_queue_start(ptr noundef %q) #2
  %q_usage_counter = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 2
  tail call void @percpu_ref_switch_to_atomic_sync(ptr noundef %q_usage_counter) #2
  %call = tail call zeroext i1 @percpu_ref_is_zero(ptr noundef %q_usage_counter) #2
  tail call void @blk_mq_unfreeze_queue(ptr noundef %q) #2
  br i1 %call, label %if.end30.cleanup_crit_edge, label %if.then44

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then44:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #2
  %5 = ptrtoint ptr %rpm_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rpm_status, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #2
  %last_busy.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #2
  tail call void @blk_clear_pm_only(ptr noundef %q) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end30.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -16, %if.then44 ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_set_pm_only(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_freeze_queue_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_switch_to_atomic_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @percpu_ref_is_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_clear_pm_only(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_post_runtime_suspend(ptr noundef %q, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 19
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.end

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9

if.end:                                           ; preds = %entry
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool1.not = icmp eq i32 %err, 0
  %rpm_status = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 20
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %2 = ptrtoint ptr %rpm_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %rpm_status, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #2
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %3 = ptrtoint ptr %rpm_status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %rpm_status, align 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #2
  %last_busy.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 22
  %6 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #2
  tail call void @blk_clear_pm_only(ptr noundef %q) #2
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then2, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_pre_runtime_resume(ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 19
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #2
  %rpm_status = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 20
  %2 = ptrtoint ptr %rpm_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %rpm_status, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_post_runtime_resume(ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 19
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.blk_set_runtime_active.exit_crit_edge, label %if.end.i

entry.blk_set_runtime_active.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %blk_set_runtime_active.exit

if.end.i:                                         ; preds = %entry
  %queue_lock.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock.i) #2
  %rpm_status.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 20
  %2 = ptrtoint ptr %rpm_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rpm_status.i, align 4
  store i32 0, ptr %rpm_status.i, align 4
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #2
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 22
  %6 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  %call.i14.i = tail call i32 @__pm_runtime_suspend(ptr noundef %8, i32 noundef 9) #2
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.end.i.blk_set_runtime_active.exit_crit_edge, label %if.then5.i

if.end.i.blk_set_runtime_active.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %blk_set_runtime_active.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @blk_clear_pm_only(ptr noundef %q) #2
  br label %blk_set_runtime_active.exit

blk_set_runtime_active.exit:                      ; preds = %if.then5.i, %if.end.i.blk_set_runtime_active.exit_crit_edge, %entry.blk_set_runtime_active.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_set_runtime_active(ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 19
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #2
  %rpm_status = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 20
  %2 = ptrtoint ptr %rpm_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rpm_status, align 4
  store i32 0, ptr %rpm_status, align 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #2
  %last_busy.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 22
  %6 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %call.i14 = tail call i32 @__pm_runtime_suspend(ptr noundef %8, i32 noundef 9) #2
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @blk_clear_pm_only(ptr noundef %q) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__ksymtab_blk_pm_runtime_init, !1, !"__ksymtab_blk_pm_runtime_init", i1 false, i1 false}
!1 = !{!"../block/blk-pm.c", i32 38, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../block/blk-pm.c", i32 68, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__ksymtab_blk_pre_runtime_suspend, !6, !"__ksymtab_blk_pre_runtime_suspend", i1 false, i1 false}
!6 = !{!"../block/blk-pm.c", i32 107, i32 1}
!7 = !{ptr @__ksymtab_blk_post_runtime_suspend, !8, !"__ksymtab_blk_post_runtime_suspend", i1 false, i1 false}
!8 = !{!"../block/blk-pm.c", i32 139, i32 1}
!9 = !{ptr @__ksymtab_blk_pre_runtime_resume, !10, !"__ksymtab_blk_pre_runtime_resume", i1 false, i1 false}
!10 = !{!"../block/blk-pm.c", i32 161, i32 1}
!11 = !{ptr @__ksymtab_blk_post_runtime_resume, !12, !"__ksymtab_blk_post_runtime_resume", i1 false, i1 false}
!12 = !{!"../block/blk-pm.c", i32 180, i32 1}
!13 = !{ptr @__ksymtab_blk_set_runtime_active, !14, !"__ksymtab_blk_set_runtime_active", i1 false, i1 false}
!14 = !{!"../block/blk-pm.c", i32 216, i32 1}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 2000, i32 1}
