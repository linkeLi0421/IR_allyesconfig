; ModuleID = '/llk/IR_all_yes/kernel/locking/mutex-debug.c_pt.bc'
source_filename = "../kernel/locking/mutex-debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mutex_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_mutex_destroy\09\09\09\09"
module asm "\09.long\09__crc_mutex_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mutex_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22mutex_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_mutex_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex_waiter = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kernel/locking/mutex-debug.c\00", [35 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"list_empty(&lock->wait_list)\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"waiter->magic != waiter\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"list_empty(&waiter->list)\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"!list_empty(&waiter->list)\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"waiter->task != task\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"task->blocked_on != waiter\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lock->magic != lock\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"!lock->wait_list.prev && !lock->wait_list.next\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mutex_is_locked(lock)\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_mutex_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_mutex_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_mutex_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mutex_destroy to i32), ptr @__kstrtab_mutex_destroy, ptr @__kstrtabns_mutex_destroy }, section "___ksymtab_gpl+mutex_destroy", align 4
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 38, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 39, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 40, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 41, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 46, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 63, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 64, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 74, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 75, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [32 x i8] c"../kernel/locking/mutex-debug.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 102, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_mutex_destroy, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_mutex_lock_common(ptr nocapture noundef readnone %lock, ptr noundef %waiter) local_unnamed_addr #0 align 64 {
entry:
  %0 = getelementptr inbounds i8, ptr %waiter, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 286331153, ptr %0, align 4
  %magic = getelementptr inbounds %struct.mutex_waiter, ptr %waiter, i32 0, i32 3
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %waiter, ptr %magic, align 4
  %3 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %waiter, ptr %waiter, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %waiter, ptr %prev.i, align 4
  %ww_ctx = getelementptr inbounds %struct.mutex_waiter, ptr %waiter, i32 0, i32 2
  %5 = ptrtoint ptr %ww_ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 1280 to ptr), ptr %ww_ctx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_mutex_wake_waiter(ptr noundef %lock, ptr noundef %waiter) local_unnamed_addr #1 align 64 {
entry:
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 1, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %if.end, !prof !31

do.end:                                           ; preds = %land.rhs
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %1 = load i32, ptr @oops_in_progress, align 4
  %tobool24.not = icmp eq i32 %1, 0
  br i1 %tobool24.not, label %land.lhs.true, label %if.end175

land.lhs.true:                                    ; preds = %if.end
  %wait_list = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 3
  %2 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %wait_list, align 4
  %cmp.i.not = icmp eq ptr %3, %wait_list
  br i1 %cmp.i.not, label %do.end36, label %if.end72, !prof !31

do.end36:                                         ; preds = %land.lhs.true
  %call37 = tail call i32 @debug_locks_off() #4
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end72, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %do.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %4 = load i32, ptr @debug_locks_silent, align 4
  %tobool40.not = icmp eq i32 %4, 0
  br i1 %tobool40.not, label %do.end54, label %if.end72

do.end54:                                         ; preds = %land.lhs.true39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  br label %if.end72

if.end72:                                         ; preds = %do.end54, %land.lhs.true39, %do.end36, %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %.pr = load i32, ptr @oops_in_progress, align 4
  %tobool75.not = icmp eq i32 %.pr, 0
  br i1 %tobool75.not, label %land.lhs.true76, label %if.end175

land.lhs.true76:                                  ; preds = %if.end72
  %magic = getelementptr inbounds %struct.mutex_waiter, ptr %waiter, i32 0, i32 3
  %5 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %magic, align 4
  %cmp77.not = icmp eq ptr %6, %waiter
  br i1 %cmp77.not, label %if.end123, label %do.end87, !prof !32

do.end87:                                         ; preds = %land.lhs.true76
  %call88 = tail call i32 @debug_locks_off() #4
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end123, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %do.end87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  %tobool91.not = icmp eq i32 %7, 0
  br i1 %tobool91.not, label %do.end105, label %if.end123

do.end105:                                        ; preds = %land.lhs.true90
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #4
  br label %if.end123

if.end123:                                        ; preds = %do.end105, %land.lhs.true90, %do.end87, %land.lhs.true76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %.pr187 = load i32, ptr @oops_in_progress, align 4
  %tobool126.not = icmp eq i32 %.pr187, 0
  br i1 %tobool126.not, label %land.lhs.true127, label %if.end175

land.lhs.true127:                                 ; preds = %if.end123
  %8 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %waiter, align 4
  %cmp.i184.not = icmp eq ptr %9, %waiter
  br i1 %cmp.i184.not, label %do.end139, label %if.end175, !prof !31

do.end139:                                        ; preds = %land.lhs.true127
  %call140 = tail call i32 @debug_locks_off() #4
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end175, label %land.lhs.true142

land.lhs.true142:                                 ; preds = %do.end139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %10 = load i32, ptr @debug_locks_silent, align 4
  %tobool143.not = icmp eq i32 %10, 0
  br i1 %tobool143.not, label %do.end157, label %if.end175

do.end157:                                        ; preds = %land.lhs.true142
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #4
  br label %if.end175

if.end175:                                        ; preds = %do.end157, %land.lhs.true142, %do.end139, %land.lhs.true127, %if.end123, %if.end72, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_mutex_free_waiter(ptr noundef %waiter) local_unnamed_addr #1 align 64 {
entry:
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %waiter, align 4
  %cmp.i.not = icmp eq ptr %2, %waiter
  br i1 %cmp.i.not, label %if.end37, label %do.end, !prof !32

do.end:                                           ; preds = %land.lhs.true
  %call5 = tail call i32 @debug_locks_off() #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end37, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  %tobool8.not = icmp eq i32 %3, 0
  br i1 %tobool8.not, label %do.end21, label %if.end37

do.end21:                                         ; preds = %land.lhs.true7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #4
  br label %if.end37

if.end37:                                         ; preds = %do.end21, %land.lhs.true7, %do.end, %land.lhs.true, %entry
  %4 = call ptr @memset(ptr %waiter, i32 34, i32 20)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_mutex_add_waiter(ptr noundef %lock, ptr noundef %waiter, ptr nocapture noundef writeonly %task) local_unnamed_addr #1 align 64 {
entry:
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 1, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %if.end, !prof !31

do.end:                                           ; preds = %land.rhs
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs, %entry
  %blocked_on = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 133
  %1 = ptrtoint ptr %blocked_on to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %waiter, ptr %blocked_on, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_mutex_remove_waiter(ptr nocapture noundef readnone %lock, ptr noundef %waiter, ptr noundef %task) local_unnamed_addr #1 align 64 {
entry:
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end138

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %waiter, align 4
  %cmp.i.not = icmp eq ptr %2, %waiter
  br i1 %cmp.i.not, label %do.end, label %land.lhs.true40, !prof !31

do.end:                                           ; preds = %land.lhs.true
  %call4 = tail call i32 @debug_locks_off() #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end36, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %do.end20, label %if.end36

do.end20:                                         ; preds = %land.lhs.true6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #4
  br label %if.end36

if.end36:                                         ; preds = %do.end20, %land.lhs.true6, %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %.pr.pr = load i32, ptr @oops_in_progress, align 4
  %tobool39.not = icmp eq i32 %.pr.pr, 0
  br i1 %tobool39.not, label %land.lhs.true40, label %if.end138

land.lhs.true40:                                  ; preds = %if.end36, %land.lhs.true
  %task41 = getelementptr inbounds %struct.mutex_waiter, ptr %waiter, i32 0, i32 1
  %4 = ptrtoint ptr %task41 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task41, align 4
  %cmp.not = icmp eq ptr %5, %task
  br i1 %cmp.not, label %if.end87, label %do.end51, !prof !32

do.end51:                                         ; preds = %land.lhs.true40
  %call52 = tail call i32 @debug_locks_off() #4
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end87, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %do.end51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %6 = load i32, ptr @debug_locks_silent, align 4
  %tobool55.not = icmp eq i32 %6, 0
  br i1 %tobool55.not, label %do.end69, label %if.end87

do.end69:                                         ; preds = %land.lhs.true54
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #4
  br label %if.end87

if.end87:                                         ; preds = %do.end69, %land.lhs.true54, %do.end51, %land.lhs.true40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %.pr153 = load i32, ptr @oops_in_progress, align 4
  %tobool90.not = icmp eq i32 %.pr153, 0
  br i1 %tobool90.not, label %land.lhs.true91, label %if.end138

land.lhs.true91:                                  ; preds = %if.end87
  %blocked_on = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 133
  %7 = ptrtoint ptr %blocked_on to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %blocked_on, align 4
  %cmp92.not = icmp eq ptr %8, %waiter
  br i1 %cmp92.not, label %if.end138, label %do.end102, !prof !32

do.end102:                                        ; preds = %land.lhs.true91
  %call103 = tail call i32 @debug_locks_off() #4
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end138, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %do.end102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %9 = load i32, ptr @debug_locks_silent, align 4
  %tobool106.not = icmp eq i32 %9, 0
  br i1 %tobool106.not, label %do.end120, label %if.end138

do.end120:                                        ; preds = %land.lhs.true105
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #4
  br label %if.end138

if.end138:                                        ; preds = %do.end120, %land.lhs.true105, %do.end102, %land.lhs.true91, %if.end87, %if.end36, %entry
  %blocked_on140 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 133
  %10 = ptrtoint ptr %blocked_on140 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %blocked_on140, align 4
  %11 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %waiter, ptr %waiter, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %waiter, ptr %prev.i, align 4
  %task142 = getelementptr inbounds %struct.mutex_waiter, ptr %waiter, i32 0, i32 1
  %13 = ptrtoint ptr %task142 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %task142, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_mutex_unlock(ptr noundef readonly %lock) local_unnamed_addr #1 align 64 {
entry:
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end99, label %if.then, !prof !31

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %1 = load i32, ptr @oops_in_progress, align 4
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end99

land.lhs.true:                                    ; preds = %if.then
  %magic = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 4
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %magic, align 4
  %cmp.not = icmp eq ptr %3, %lock
  br i1 %cmp.not, label %if.end42, label %do.end, !prof !32

do.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @debug_locks_off() #4
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end42, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %4 = load i32, ptr @debug_locks_silent, align 4
  %tobool13.not = icmp eq i32 %4, 0
  br i1 %tobool13.not, label %do.end26, label %if.end42

do.end26:                                         ; preds = %land.lhs.true12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 74, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #4
  br label %if.end42

if.end42:                                         ; preds = %do.end26, %land.lhs.true12, %do.end, %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %.pr = load i32, ptr @oops_in_progress, align 4
  %tobool45.not = icmp eq i32 %.pr, 0
  br i1 %tobool45.not, label %land.lhs.true46, label %if.end99

land.lhs.true46:                                  ; preds = %if.end42
  %prev = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev, align 4
  %tobool47.not = icmp eq ptr %6, null
  br i1 %tobool47.not, label %land.rhs, label %if.end99

land.rhs:                                         ; preds = %land.lhs.true46
  %wait_list = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 3
  %7 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wait_list, align 4
  %tobool49.not = icmp eq ptr %8, null
  br i1 %tobool49.not, label %do.end61, label %if.end99, !prof !31

do.end61:                                         ; preds = %land.rhs
  %call62 = tail call i32 @debug_locks_off() #4
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end99, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %do.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %9 = load i32, ptr @debug_locks_silent, align 4
  %tobool65.not = icmp eq i32 %9, 0
  br i1 %tobool65.not, label %do.end79, label %if.end99

do.end79:                                         ; preds = %land.lhs.true64
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #4
  br label %if.end99

if.end99:                                         ; preds = %do.end79, %land.lhs.true64, %do.end61, %land.rhs, %land.lhs.true46, %if.end42, %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @debug_mutex_init(ptr noundef %lock, ptr noundef %name, ptr noundef %key) local_unnamed_addr #1 align 64 {
entry:
  tail call void @debug_check_no_locks_freed(ptr noundef %lock, i32 noundef 92) #4
  %dep_map = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 5
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef %name, ptr noundef %key, i32 noundef 0, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %magic = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 4
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %lock, ptr %magic, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mutex_destroy(ptr noundef %lock) #1 align 64 {
entry:
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %lock) #4
  br i1 %call, label %do.end, label %if.end35, !prof !31

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end35, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %1 = load i32, ptr @debug_locks_silent, align 4
  %tobool6.not = icmp eq i32 %1, 0
  br i1 %tobool6.not, label %do.end19, label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 102, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10) #4
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5, %do.end, %land.lhs.true, %entry
  %magic = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 4
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %magic, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/locking/mutex-debug.c", i32 38, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/locking/mutex-debug.c", i32 39, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../kernel/locking/mutex-debug.c", i32 40, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../kernel/locking/mutex-debug.c", i32 41, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../kernel/locking/mutex-debug.c", i32 46, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/locking/mutex-debug.c", i32 63, i32 2}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/locking/mutex-debug.c", i32 64, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/locking/mutex-debug.c", i32 74, i32 3}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/locking/mutex-debug.c", i32 75, i32 3}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../kernel/locking/mutex-debug.c", i32 102, i32 2}
!21 = !{ptr @__ksymtab_mutex_destroy, !22, !"__ksymtab_mutex_destroy", i1 false, i1 false}
!22 = !{!"../kernel/locking/mutex-debug.c", i32 106, i32 1}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{!"branch_weights", i32 2000, i32 1}
