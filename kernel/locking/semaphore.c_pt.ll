; ModuleID = '/llk/IR_all_yes/kernel/locking/semaphore.c_pt.bc'
source_filename = "../kernel/locking/semaphore.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+down\22, \22a\22\09"
module asm "\09.weak\09__crc_down\09\09\09\09"
module asm "\09.long\09__crc_down\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down:\09\09\09\09\09"
module asm "\09.asciz \09\22down\22\09\09\09\09\09"
module asm "__kstrtabns_down:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+down_interruptible\22, \22a\22\09"
module asm "\09.weak\09__crc_down_interruptible\09\09\09\09"
module asm "\09.long\09__crc_down_interruptible\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22down_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_down_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+down_killable\22, \22a\22\09"
module asm "\09.weak\09__crc_down_killable\09\09\09\09"
module asm "\09.long\09__crc_down_killable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22down_killable\22\09\09\09\09\09"
module asm "__kstrtabns_down_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+down_trylock\22, \22a\22\09"
module asm "\09.weak\09__crc_down_trylock\09\09\09\09"
module asm "\09.long\09__crc_down_trylock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22down_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_down_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+down_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_down_timeout\09\09\09\09"
module asm "\09.long\09__crc_down_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22down_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_down_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+up\22, \22a\22\09"
module asm "\09.weak\09__crc_up\09\09\09\09"
module asm "\09.long\09__crc_up\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_up:\09\09\09\09\09"
module asm "\09.asciz \09\22up\22\09\09\09\09\09"
module asm "__kstrtabns_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.semaphore_waiter = type { %struct.list_head, ptr, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kernel/locking/semaphore.c\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_down = external dso_local constant [0 x i8], align 1
@__kstrtabns_down = external dso_local constant [0 x i8], align 1
@__ksymtab_down = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down to i32), ptr @__kstrtab_down, ptr @__kstrtabns_down }, section "___ksymtab+down", align 4
@__kstrtab_down_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_down_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_interruptible to i32), ptr @__kstrtab_down_interruptible, ptr @__kstrtabns_down_interruptible }, section "___ksymtab+down_interruptible", align 4
@__kstrtab_down_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_killable = external dso_local constant [0 x i8], align 1
@__ksymtab_down_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_killable to i32), ptr @__kstrtab_down_killable, ptr @__kstrtabns_down_killable }, section "___ksymtab+down_killable", align 4
@__kstrtab_down_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_down_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_trylock to i32), ptr @__kstrtab_down_trylock, ptr @__kstrtabns_down_trylock }, section "___ksymtab+down_trylock", align 4
@__kstrtab_down_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_down_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_timeout to i32), ptr @__kstrtab_down_timeout, ptr @__kstrtabns_down_timeout }, section "___ksymtab+down_timeout", align 4
@__kstrtab_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_up = external dso_local constant [0 x i8], align 1
@__ksymtab_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @up to i32), ptr @__kstrtab_up, ptr @__kstrtabns_up }, section "___ksymtab+up", align 4
@__down_common.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [30 x i8] c"../kernel/locking/semaphore.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 57, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_down, ptr @__ksymtab_down_interruptible, ptr @__ksymtab_down_killable, ptr @__ksymtab_down_timeout, ptr @__ksymtab_down_trylock, ptr @__ksymtab_up, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @down(ptr noundef %sem) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 57) #6
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sem) #6
  %count = getelementptr inbounds %struct.semaphore, ptr %sem, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %if.else, label %if.then, !prof !26

if.then:                                          ; preds = %entry
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %count, align 4
  br label %do.body11

if.else:                                          ; preds = %entry
  tail call fastcc void @__down(ptr noundef %sem)
  br label %do.body11

do.body11:                                        ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sem, i32 noundef %call) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__down(ptr noundef %sem) unnamed_addr #3 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__down_common(ptr noundef %sem, i32 noundef 2, i32 noundef 2147483647)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @down_interruptible(ptr noundef %sem) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 81) #6
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sem) #6
  %count = getelementptr inbounds %struct.semaphore, ptr %sem, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %if.else, label %if.then, !prof !26

if.then:                                          ; preds = %entry
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %count, align 4
  br label %do.body12

if.else:                                          ; preds = %entry
  %call11 = tail call fastcc i32 @__down_interruptible(ptr noundef %sem)
  br label %do.body12

do.body12:                                        ; preds = %if.else, %if.then
  %result.0 = phi i32 [ 0, %if.then ], [ %call11, %if.else ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sem, i32 noundef %call) #6
  ret i32 %result.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__down_interruptible(ptr noundef %sem) unnamed_addr #3 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__down_common(ptr noundef %sem, i32 noundef 1, i32 noundef 2147483647)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @down_killable(ptr noundef %sem) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 108) #6
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sem) #6
  %count = getelementptr inbounds %struct.semaphore, ptr %sem, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %if.else, label %if.then, !prof !26

if.then:                                          ; preds = %entry
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %count, align 4
  br label %do.body12

if.else:                                          ; preds = %entry
  %call11 = tail call fastcc i32 @__down_killable(ptr noundef %sem)
  br label %do.body12

do.body12:                                        ; preds = %if.else, %if.then
  %result.0 = phi i32 [ 0, %if.then ], [ %call11, %if.else ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sem, i32 noundef %call) #6
  ret i32 %result.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__down_killable(ptr noundef %sem) unnamed_addr #3 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__down_common(ptr noundef %sem, i32 noundef 258, i32 noundef 2147483647)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @down_trylock(ptr noundef %sem) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sem) #6
  %count1 = getelementptr inbounds %struct.semaphore, ptr %sem, i32 0, i32 1
  %0 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count1, align 4
  %sub = add i32 %1, -1
  %cmp2 = icmp sgt i32 %sub, -1
  br i1 %cmp2, label %if.then, label %do.body6, !prof !27

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %count1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub, ptr %count1, align 4
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sem, i32 noundef %call) #6
  %sub.lobit = lshr i32 %sub, 31
  ret i32 %sub.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @down_timeout(ptr noundef %sem, i32 noundef %timeout) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 163) #6
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sem) #6
  %count = getelementptr inbounds %struct.semaphore, ptr %sem, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %if.else, label %if.then, !prof !26

if.then:                                          ; preds = %entry
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %count, align 4
  br label %do.body12

if.else:                                          ; preds = %entry
  %call11 = tail call fastcc i32 @__down_timeout(ptr noundef %sem, i32 noundef %timeout)
  br label %do.body12

do.body12:                                        ; preds = %if.else, %if.then
  %result.0 = phi i32 [ 0, %if.then ], [ %call11, %if.else ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sem, i32 noundef %call) #6
  ret i32 %result.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__down_timeout(ptr noundef %sem, i32 noundef %timeout) unnamed_addr #3 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__down_common(ptr noundef %sem, i32 noundef 2, i32 noundef %timeout)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @up(ptr noundef %sem) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sem) #6
  %wait_list = getelementptr inbounds %struct.semaphore, ptr %sem, i32 0, i32 2
  %0 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %wait_list, align 4
  %cmp.i.not = icmp eq ptr %1, %wait_list
  br i1 %cmp.i.not, label %if.then, label %if.else, !prof !27

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.semaphore, ptr %sem, i32 0, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %count, align 4
  br label %do.body4

if.else:                                          ; preds = %entry
  tail call fastcc void @__up(ptr noundef %sem)
  br label %do.body4

do.body4:                                         ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sem, i32 noundef %call) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__up(ptr nocapture noundef readonly %sem) unnamed_addr #3 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %wait_list = getelementptr inbounds %struct.semaphore, ptr %sem, i32 0, i32 2
  %0 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wait_list, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #6
  br i1 %call.i.i, label %if.end.i.i, label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %up = getelementptr inbounds %struct.semaphore_waiter, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %up to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %up, align 4
  %task = getelementptr inbounds %struct.semaphore_waiter, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 4
  %call = tail call i32 @wake_up_process(ptr noundef %12) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__down_common(ptr noundef %sem, i32 noundef %state, i32 noundef %timeout) #4 section ".sched.text" align 64 {
entry:
  %waiter = alloca %struct.semaphore_waiter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %waiter) #6
  %0 = call ptr @memset(ptr %waiter, i32 255, i32 16)
  %wait_list = getelementptr inbounds %struct.semaphore, ptr %sem, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.semaphore, ptr %sem, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %waiter, ptr noundef %2, ptr noundef %wait_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %waiter, ptr %prev.i, align 4
  %4 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %wait_list, ptr %waiter, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %waiter, ptr %2, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry
  %7 = call i32 @llvm.read_register.i32(metadata !16) #6
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %task1 = getelementptr inbounds %struct.semaphore_waiter, ptr %waiter, i32 0, i32 1
  %11 = ptrtoint ptr %task1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %task1, align 4
  %up = getelementptr inbounds %struct.semaphore_waiter, ptr %waiter, i32 0, i32 2
  %12 = ptrtoint ptr %up to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %up, align 4
  %and.i90 = and i32 %state, 257
  %tobool.not.i = icmp eq i32 %and.i90, 0
  %and4.i = and i32 %state, 1
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %and = and i32 %state, 204
  %tobool10.not = icmp eq i32 %and, 0
  br label %for.cond

for.cond:                                         ; preds = %__here, %list_add_tail.exit
  %timeout.addr.0 = phi i32 [ %timeout, %list_add_tail.exit ], [ %call74, %__here ]
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  br i1 %tobool.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %for.cond
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stack.i.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %19 = and i32 %18, 256
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end3.i, !prof !27

signal_pending.exit.i:                            ; preds = %if.end.i
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %16, align 4
  %and1.i.i.i.i.i.i = and i32 %21, 1
  %tobool1.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i, label %if.end, label %if.end3.i

if.end3.i:                                        ; preds = %signal_pending.exit.i, %if.end.i
  br i1 %tobool5.not.i, label %signal_pending_state.exit, label %interrupted

signal_pending_state.exit:                        ; preds = %if.end3.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 116, i32 1
  %22 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %signal.i.i, align 4
  %24 = and i32 %23, 256
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.end, label %interrupted

if.end:                                           ; preds = %signal_pending_state.exit, %signal_pending.exit.i, %for.cond
  %cmp = icmp slt i32 %timeout.addr.0, 1
  br i1 %cmp, label %timed_out, label %do.body9, !prof !26

do.body9:                                         ; preds = %if.end
  br i1 %tobool10.not, label %__here, label %land.rhs

land.rhs:                                         ; preds = %do.body9
  %.b89 = load i1, ptr @__down_common.__already_done, align 1
  br i1 %.b89, label %__here, label %if.then25, !prof !27

if.then25:                                        ; preds = %land.rhs
  store i1 true, ptr @__down_common.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef null) #6
  br label %__here

__here:                                           ; preds = %if.then25, %land.rhs, %do.body9
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 212
  %27 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 ptrtoint (ptr blockaddress(@__down_common, %__here) to i32), ptr %task_state_change, align 4
  %28 = load ptr, ptr %task, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 %state, ptr %28, align 128
  call void @_raw_spin_unlock_irq(ptr noundef %sem) #6
  %call74 = call i32 @schedule_timeout(i32 noundef %timeout.addr.0) #6
  call void @_raw_spin_lock_irq(ptr noundef %sem) #6
  %30 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %up, align 4, !range !28
  %tobool77.not = icmp eq i8 %31, 0
  br i1 %tobool77.not, label %for.cond, label %cleanup

timed_out:                                        ; preds = %if.end
  %call.i.i91 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %waiter) #6
  br i1 %call.i.i91, label %if.end.i.i92, label %cleanup

if.end.i.i92:                                     ; preds = %timed_out
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %waiter, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %cleanup

interrupted:                                      ; preds = %signal_pending_state.exit, %if.end3.i
  %call.i.i94 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %waiter) #6
  br i1 %call.i.i94, label %if.end.i.i97, label %cleanup

if.end.i.i97:                                     ; preds = %interrupted
  %prev.i.i95 = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i95 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i95, align 4
  %40 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %waiter, align 4
  %prev1.i.i.i96 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i96 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i96, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i97, %interrupted, %if.end.i.i92, %timed_out, %__here
  %retval.0 = phi i32 [ -62, %timed_out ], [ -62, %if.end.i.i92 ], [ -4, %interrupted ], [ -4, %if.end.i.i97 ], [ 0, %__here ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %waiter) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.named.register.sp = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/locking/semaphore.c", i32 57, i32 2}
!2 = !{ptr @__ksymtab_down, !3, !"__ksymtab_down", i1 false, i1 false}
!3 = !{!"../kernel/locking/semaphore.c", i32 65, i32 1}
!4 = !{ptr @__ksymtab_down_interruptible, !5, !"__ksymtab_down_interruptible", i1 false, i1 false}
!5 = !{!"../kernel/locking/semaphore.c", i32 91, i32 1}
!6 = !{ptr @__ksymtab_down_killable, !7, !"__ksymtab_down_killable", i1 false, i1 false}
!7 = !{!"../kernel/locking/semaphore.c", i32 118, i32 1}
!8 = !{ptr @__ksymtab_down_trylock, !9, !"__ksymtab_down_trylock", i1 false, i1 false}
!9 = !{!"../kernel/locking/semaphore.c", i32 146, i32 1}
!10 = !{ptr @__ksymtab_down_timeout, !11, !"__ksymtab_down_timeout", i1 false, i1 false}
!11 = !{!"../kernel/locking/semaphore.c", i32 173, i32 1}
!12 = !{ptr @__ksymtab_up, !13, !"__ksymtab_up", i1 false, i1 false}
!13 = !{!"../kernel/locking/semaphore.c", i32 193, i32 1}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../kernel/locking/semaphore.c", i32 222, i32 3}
!16 = !{!"sp"}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i8 0, i8 2}
