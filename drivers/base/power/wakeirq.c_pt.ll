; ModuleID = '/llk/IR_all_yes/drivers/base/power/wakeirq.c_pt.bc'
source_filename = "../drivers/base/power/wakeirq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dev_pm_set_wake_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_dev_pm_set_wake_irq\09\09\09\09"
module asm "\09.long\09__crc_dev_pm_set_wake_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_set_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_set_wake_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_set_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dev_pm_clear_wake_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_dev_pm_clear_wake_irq\09\09\09\09"
module asm "\09.long\09__crc_dev_pm_clear_wake_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_clear_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_clear_wake_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_clear_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dev_pm_set_dedicated_wake_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_dev_pm_set_dedicated_wake_irq\09\09\09\09"
module asm "\09.long\09__crc_dev_pm_set_dedicated_wake_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_set_dedicated_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_set_dedicated_wake_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_set_dedicated_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dev_pm_set_dedicated_wake_irq_reverse\22, \22a\22\09"
module asm "\09.weak\09__crc_dev_pm_set_dedicated_wake_irq_reverse\09\09\09\09"
module asm "\09.long\09__crc_dev_pm_set_dedicated_wake_irq_reverse\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_set_dedicated_wake_irq_reverse:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_set_dedicated_wake_irq_reverse\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_set_dedicated_wake_irq_reverse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dev_pm_enable_wake_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_dev_pm_enable_wake_irq\09\09\09\09"
module asm "\09.long\09__crc_dev_pm_enable_wake_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_enable_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_enable_wake_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_enable_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dev_pm_disable_wake_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_dev_pm_disable_wake_irq\09\09\09\09"
module asm "\09.long\09__crc_dev_pm_disable_wake_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_disable_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_disable_wake_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_disable_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wake_irq = type { ptr, i32, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_dev_pm_set_wake_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_set_wake_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_set_wake_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_set_wake_irq to i32), ptr @__kstrtab_dev_pm_set_wake_irq, ptr @__kstrtabns_dev_pm_set_wake_irq }, section "___ksymtab_gpl+dev_pm_set_wake_irq", align 4
@__kstrtab_dev_pm_clear_wake_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_clear_wake_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_clear_wake_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_clear_wake_irq to i32), ptr @__kstrtab_dev_pm_clear_wake_irq, ptr @__kstrtabns_dev_pm_clear_wake_irq }, section "___ksymtab_gpl+dev_pm_clear_wake_irq", align 4
@__kstrtab_dev_pm_set_dedicated_wake_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_set_dedicated_wake_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_set_dedicated_wake_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_set_dedicated_wake_irq to i32), ptr @__kstrtab_dev_pm_set_dedicated_wake_irq, ptr @__kstrtabns_dev_pm_set_dedicated_wake_irq }, section "___ksymtab_gpl+dev_pm_set_dedicated_wake_irq", align 4
@__kstrtab_dev_pm_set_dedicated_wake_irq_reverse = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_set_dedicated_wake_irq_reverse = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_set_dedicated_wake_irq_reverse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_set_dedicated_wake_irq_reverse to i32), ptr @__kstrtab_dev_pm_set_dedicated_wake_irq_reverse, ptr @__kstrtabns_dev_pm_set_dedicated_wake_irq_reverse }, section "___ksymtab_gpl+dev_pm_set_dedicated_wake_irq_reverse", align 4
@__kstrtab_dev_pm_enable_wake_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_enable_wake_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_enable_wake_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_enable_wake_irq to i32), ptr @__kstrtab_dev_pm_enable_wake_irq, ptr @__kstrtabns_dev_pm_enable_wake_irq }, section "___ksymtab_gpl+dev_pm_enable_wake_irq", align 4
@__kstrtab_dev_pm_disable_wake_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_disable_wake_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_disable_wake_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_disable_wake_irq to i32), ptr @__kstrtab_dev_pm_disable_wake_irq, ptr @__kstrtabns_dev_pm_disable_wake_irq }, section "___ksymtab_gpl+dev_pm_disable_wake_irq", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dev_pm_attach_wake_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/base/power/wakeirq.c\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s %s: wake irq already initialized\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s:wakeup\00", [22 x i8] zeroinitializer }, align 32
@handle_threaded_wake_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 140, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wake IRQ with no resume: %i\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"handle_threaded_wake_irq\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@handle_threaded_wake_irq._entry_ptr = internal global ptr @handle_threaded_wake_irq._entry, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 27, i32 6 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 157, i32 37 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [32 x i8] c"../drivers/base/power/wakeirq.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 139, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_dev_pm_clear_wake_irq, ptr @__ksymtab_dev_pm_disable_wake_irq, ptr @__ksymtab_dev_pm_enable_wake_irq, ptr @__ksymtab_dev_pm_set_dedicated_wake_irq, ptr @__ksymtab_dev_pm_set_dedicated_wake_irq_reverse, ptr @__ksymtab_dev_pm_set_wake_irq, ptr @handle_threaded_wake_irq._entry, ptr @handle_threaded_wake_irq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_threaded_wake_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dev_pm_set_wake_irq(ptr noundef %dev, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %cmp = icmp slt i32 %irq, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call7.i.i, align 8
  %irq4 = getelementptr inbounds %struct.wake_irq, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %irq4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %irq, ptr %irq4, align 8
  %call5 = tail call fastcc i32 @dev_pm_attach_wake_irq(ptr noundef %dev, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end2.cleanup_crit_edge, label %if.then7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call5, %if.then7 ], [ 0, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dev_pm_attach_wake_irq(ptr noundef %dev, ptr noundef %wirq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  %tobool1.not = icmp eq ptr %wirq, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body2:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %wakeirq = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 12
  %0 = ptrtoint ptr %wakeirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeirq, align 8
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %if.end56, label %land.rhs

land.rhs:                                         ; preds = %do.body2
  %.b74 = load i1, ptr @dev_pm_attach_wake_irq.__already_done, align 1
  br i1 %.b74, label %land.rhs.cleanup.sink.split_crit_edge, label %if.then16, !prof !34

land.rhs.cleanup.sink.split_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.then16:                                        ; preds = %land.rhs
  store i1 true, ptr @dev_pm_attach_wake_irq.__already_done, align 1
  %call29 = tail call ptr @dev_driver_string(ptr noundef nonnull %dev) #4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then16.dev_name.exit_crit_edge

if.then16.dev_name.exit_crit_edge:                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then16.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %if.then16.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call29, ptr noundef %retval.0.i) #4
  br label %cleanup.sink.split

if.end56:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %wakeirq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %wirq, ptr %wakeirq, align 8
  tail call void @device_wakeup_attach_irq(ptr noundef nonnull %dev, ptr noundef nonnull %wirq) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end56, %dev_name.exit, %land.rhs.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end56 ], [ -17, %land.rhs.cleanup.sink.split_crit_edge ], [ -17, %dev_name.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dev_pm_clear_wake_irq(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wakeirq = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 12
  %0 = ptrtoint ptr %wakeirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeirq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  tail call void @device_wakeup_detach_irq(ptr noundef %dev) #4
  %2 = ptrtoint ptr %wakeirq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %wakeirq, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #4
  %status = getelementptr inbounds %struct.wake_irq, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body1.if.end15_crit_edge, label %if.then11

do.body1.if.end15_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then11:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  %irq = getelementptr inbounds %struct.wake_irq, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call12 = tail call ptr @free_irq(i32 noundef %6, ptr noundef nonnull %1) #4
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %and14 = and i32 %8, -8
  store i32 %and14, ptr %status, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %do.body1.if.end15_crit_edge
  %name = getelementptr inbounds %struct.wake_irq, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %10) #4
  tail call void @kfree(ptr noundef nonnull %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_wakeup_detach_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dev_pm_set_dedicated_wake_irq(ptr noundef %dev, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__dev_pm_set_dedicated_wake_irq(ptr noundef %dev, i32 noundef %irq, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dev_pm_set_dedicated_wake_irq(ptr noundef %dev, i32 noundef %irq, i32 noundef %flag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %cmp = icmp slt i32 %irq, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end2.dev_name.exit_crit_edge

if.end2.dev_name.exit_crit_edge:                  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end2.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %2, %if.end2.dev_name.exit_crit_edge ]
  %call4 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i) #4
  %name = getelementptr inbounds %struct.wake_irq, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %name, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %dev_name.exit.err_free_crit_edge, label %if.end8

dev_name.exit.err_free_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free

if.end8:                                          ; preds = %dev_name.exit
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call7.i.i, align 8
  %irq10 = getelementptr inbounds %struct.wake_irq, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %irq10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %irq, ptr %irq10, align 8
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 524288) #4
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call12 = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef null, ptr noundef nonnull @handle_threaded_wake_irq, i32 noundef 532480, ptr noundef %9, ptr noundef nonnull %call7.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end8.err_free_name_crit_edge

if.end8.err_free_name_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_name

if.end15:                                         ; preds = %if.end8
  %call16 = tail call fastcc i32 @dev_pm_attach_wake_irq(ptr noundef %dev, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %err_free_irq

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %flag, 1
  %status = getelementptr inbounds %struct.wake_irq, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %status, align 4
  br label %cleanup

err_free_irq:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %call20 = tail call ptr @free_irq(i32 noundef %irq, ptr noundef nonnull %call7.i.i) #4
  br label %err_free_name

err_free_name:                                    ; preds = %err_free_irq, %if.end8.err_free_name_crit_edge
  %err.0 = phi i32 [ %call12, %if.end8.err_free_name_crit_edge ], [ %call16, %err_free_irq ]
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %12) #4
  br label %err_free

err_free:                                         ; preds = %err_free_name, %dev_name.exit.err_free_crit_edge
  %err.1 = phi i32 [ %err.0, %err_free_name ], [ -12, %dev_name.exit.err_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_free ], [ 0, %if.end19 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dev_pm_set_dedicated_wake_irq_reverse(ptr noundef %dev, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__dev_pm_set_dedicated_wake_irq(ptr noundef %dev, i32 noundef %irq, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dev_pm_enable_wake_irq(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wakeirq = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 12
  %0 = ptrtoint ptr %wakeirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeirq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.wake_irq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %irq = getelementptr inbounds %struct.wake_irq, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dev_pm_disable_wake_irq(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wakeirq = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 12
  %0 = ptrtoint ptr %wakeirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeirq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.wake_irq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %irq = getelementptr inbounds %struct.wake_irq, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dev_pm_enable_wake_irq_check(ptr nocapture noundef readonly %dev, i1 noundef zeroext %can_change_status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wakeirq = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 12
  %0 = ptrtoint ptr %wakeirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeirq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.wake_irq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %and = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %and3 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %enable, !prof !35

if.else:                                          ; preds = %if.end
  br i1 %can_change_status, label %if.then9, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %3, 2
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %status, align 4
  br label %lor.lhs.false14

enable:                                           ; preds = %if.end
  br i1 %can_change_status, label %enable.lor.lhs.false14_crit_edge, label %enable.if.then18_crit_edge

enable.if.then18_crit_edge:                       ; preds = %enable
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18

enable.lor.lhs.false14_crit_edge:                 ; preds = %enable
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %enable.lor.lhs.false14_crit_edge, %if.then9
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and16 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %lor.lhs.false14.if.then18_crit_edge, label %lor.lhs.false14.cleanup_crit_edge

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false14.if.then18_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false14.if.then18_crit_edge, %enable.if.then18_crit_edge
  %irq = getelementptr inbounds %struct.wake_irq, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %8) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %lor.lhs.false14.cleanup_crit_edge, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dev_pm_disable_wake_irq_check(ptr nocapture noundef readonly %dev, i1 noundef zeroext %cond_disable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wakeirq = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 12
  %0 = ptrtoint ptr %wakeirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeirq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.wake_irq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %and = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %and4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp ne i32 %and4, 0
  %or.cond.not = select i1 %cond_disable, i1 %tobool5.not, i1 false
  %and9 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond17 = select i1 %or.cond.not, i1 true, i1 %tobool10.not
  br i1 %or.cond17, label %if.end.cleanup_crit_edge, label %if.then11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %irq = getelementptr inbounds %struct.wake_irq, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dev_pm_enable_wake_irq_complete(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wakeirq = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 12
  %0 = ptrtoint ptr %wakeirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wakeirq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.wake_irq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %.not = icmp eq i32 %4, 6
  br i1 %.not, label %if.then8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %irq = getelementptr inbounds %struct.wake_irq, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %6) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dev_pm_arm_wake_irq(ptr noundef readonly %wirq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wirq, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.end

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %wirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wirq, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.end9_crit_edge, label %device_may_wakeup.exit

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end9_crit_edge, label %if.then1

device_may_wakeup.exit.if.end9_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then1:                                         ; preds = %device_may_wakeup.exit
  %status = getelementptr inbounds %struct.wake_irq, ptr %wirq, i32 0, i32 1
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then1.if.end6_crit_edge, label %land.lhs.true

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true:                                    ; preds = %if.then1
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 18
  %7 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i = icmp eq i32 %8, 2
  br i1 %cmp.i, label %land.lhs.true.if.end6_crit_edge, label %if.then5

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %irq = getelementptr inbounds %struct.wake_irq, ptr %wirq, i32 0, i32 2
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %10) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true.if.end6_crit_edge, %if.then1.if.end6_crit_edge
  %irq7 = getelementptr inbounds %struct.wake_irq, ptr %wirq, i32 0, i32 2
  %11 = ptrtoint ptr %irq7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq7, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %12, i32 noundef 1) #4
  br label %if.end9

if.end9:                                          ; preds = %if.end6, %device_may_wakeup.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dev_pm_disarm_wake_irq(ptr noundef readonly %wirq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wirq, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.end

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %wirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wirq, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.end9_crit_edge, label %device_may_wakeup.exit

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end9_crit_edge, label %if.then1

device_may_wakeup.exit.if.end9_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then1:                                         ; preds = %device_may_wakeup.exit
  %irq = getelementptr inbounds %struct.wake_irq, ptr %wirq, i32 0, i32 2
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #4
  %status = getelementptr inbounds %struct.wake_irq, ptr %wirq, i32 0, i32 1
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then1.if.end9_crit_edge, label %land.lhs.true

if.then1.if.end9_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

land.lhs.true:                                    ; preds = %if.then1
  %9 = ptrtoint ptr %wirq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wirq, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 12, i32 18
  %11 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp eq i32 %12, 2
  br i1 %cmp.i, label %land.lhs.true.if.end9_crit_edge, label %if.then6

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %14) #4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %land.lhs.true.if.end9_crit_edge, %if.then1.if.end9_crit_edge, %device_may_wakeup.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_wakeup_attach_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handle_threaded_wake_irq(i32 noundef %irq, ptr nocapture noundef readonly %_wirq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_get_irq_data(i32 noundef %irq) #4
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %4 = ptrtoint ptr %_wirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_wirq, align 4
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pm_wakeup_dev_event(ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %_wirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_wirq, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !20, !21, !22, !23, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__ksymtab_dev_pm_set_wake_irq, !1, !"__ksymtab_dev_pm_set_wake_irq", i1 false, i1 false}
!1 = !{!"../drivers/base/power/wakeirq.c", i32 71, i32 1}
!2 = !{ptr @__ksymtab_dev_pm_clear_wake_irq, !3, !"__ksymtab_dev_pm_clear_wake_irq", i1 false, i1 false}
!3 = !{!"../drivers/base/power/wakeirq.c", i32 104, i32 1}
!4 = !{ptr @__ksymtab_dev_pm_set_dedicated_wake_irq, !5, !"__ksymtab_dev_pm_set_dedicated_wake_irq", i1 false, i1 false}
!5 = !{!"../drivers/base/power/wakeirq.c", i32 219, i32 1}
!6 = !{ptr @__ksymtab_dev_pm_set_dedicated_wake_irq_reverse, !7, !"__ksymtab_dev_pm_set_dedicated_wake_irq_reverse", i1 false, i1 false}
!7 = !{!"../drivers/base/power/wakeirq.c", i32 245, i32 1}
!8 = !{ptr @__ksymtab_dev_pm_enable_wake_irq, !9, !"__ksymtab_dev_pm_enable_wake_irq", i1 false, i1 false}
!9 = !{!"../drivers/base/power/wakeirq.c", i32 266, i32 1}
!10 = !{ptr @__ksymtab_dev_pm_disable_wake_irq, !11, !"__ksymtab_dev_pm_disable_wake_irq", i1 false, i1 false}
!11 = !{!"../drivers/base/power/wakeirq.c", i32 283, i32 1}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/base/power/wakeirq.c", i32 27, i32 6}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/base/power/wakeirq.c", i32 157, i32 37}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/base/power/wakeirq.c", i32 139, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @handle_threaded_wake_irq._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @handle_threaded_wake_irq._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{!"branch_weights", i32 1, i32 2000}
