; ModuleID = '/llk/IR_all_yes/kernel/locking/rtmutex_api.c_pt.bc'
source_filename = "../kernel/locking/rtmutex_api.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rt_mutex_base_init\22, \22a\22\09"
module asm "\09.weak\09__crc_rt_mutex_base_init\09\09\09\09"
module asm "\09.long\09__crc_rt_mutex_base_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt_mutex_base_init:\09\09\09\09\09"
module asm "\09.asciz \09\22rt_mutex_base_init\22\09\09\09\09\09"
module asm "__kstrtabns_rt_mutex_base_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt_mutex_lock_nested\22, \22a\22\09"
module asm "\09.weak\09__crc_rt_mutex_lock_nested\09\09\09\09"
module asm "\09.long\09__crc_rt_mutex_lock_nested\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt_mutex_lock_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22rt_mutex_lock_nested\22\09\09\09\09\09"
module asm "__kstrtabns_rt_mutex_lock_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+_rt_mutex_lock_nest_lock\22, \22a\22\09"
module asm "\09.weak\09__crc__rt_mutex_lock_nest_lock\09\09\09\09"
module asm "\09.long\09__crc__rt_mutex_lock_nest_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__rt_mutex_lock_nest_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22_rt_mutex_lock_nest_lock\22\09\09\09\09\09"
module asm "__kstrtabns__rt_mutex_lock_nest_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt_mutex_lock_interruptible\22, \22a\22\09"
module asm "\09.weak\09__crc_rt_mutex_lock_interruptible\09\09\09\09"
module asm "\09.long\09__crc_rt_mutex_lock_interruptible\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt_mutex_lock_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22rt_mutex_lock_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_rt_mutex_lock_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt_mutex_lock_killable\22, \22a\22\09"
module asm "\09.weak\09__crc_rt_mutex_lock_killable\09\09\09\09"
module asm "\09.long\09__crc_rt_mutex_lock_killable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt_mutex_lock_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22rt_mutex_lock_killable\22\09\09\09\09\09"
module asm "__kstrtabns_rt_mutex_lock_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt_mutex_trylock\22, \22a\22\09"
module asm "\09.weak\09__crc_rt_mutex_trylock\09\09\09\09"
module asm "\09.long\09__crc_rt_mutex_trylock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt_mutex_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22rt_mutex_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_rt_mutex_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rt_mutex_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc_rt_mutex_unlock\09\09\09\09"
module asm "\09.long\09__crc_rt_mutex_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt_mutex_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22rt_mutex_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_rt_mutex_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__rt_mutex_init\22, \22a\22\09"
module asm "\09.weak\09__crc___rt_mutex_init\09\09\09\09"
module asm "\09.long\09__crc___rt_mutex_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___rt_mutex_init:\09\09\09\09\09"
module asm "\09.asciz \09\22__rt_mutex_init\22\09\09\09\09\09"
module asm "__kstrtabns___rt_mutex_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rt_mutex_waiter = type { %struct.rb_node, %struct.rb_node, ptr, ptr, i32, i32, i64, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rt_wake_q_head = type { %struct.wake_q_head, ptr }
%struct.wake_q_head = type { ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.35, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.35 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }

@max_lock_depth = dso_local global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__kstrtab_rt_mutex_base_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt_mutex_base_init = external dso_local constant [0 x i8], align 1
@__ksymtab_rt_mutex_base_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt_mutex_base_init to i32), ptr @__kstrtab_rt_mutex_base_init, ptr @__kstrtabns_rt_mutex_base_init }, section "___ksymtab+rt_mutex_base_init", align 4
@__kstrtab_rt_mutex_lock_nested = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt_mutex_lock_nested = external dso_local constant [0 x i8], align 1
@__ksymtab_rt_mutex_lock_nested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt_mutex_lock_nested to i32), ptr @__kstrtab_rt_mutex_lock_nested, ptr @__kstrtabns_rt_mutex_lock_nested }, section "___ksymtab_gpl+rt_mutex_lock_nested", align 4
@__kstrtab__rt_mutex_lock_nest_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns__rt_mutex_lock_nest_lock = external dso_local constant [0 x i8], align 1
@__ksymtab__rt_mutex_lock_nest_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_rt_mutex_lock_nest_lock to i32), ptr @__kstrtab__rt_mutex_lock_nest_lock, ptr @__kstrtabns__rt_mutex_lock_nest_lock }, section "___ksymtab_gpl+_rt_mutex_lock_nest_lock", align 4
@__kstrtab_rt_mutex_lock_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt_mutex_lock_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_rt_mutex_lock_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt_mutex_lock_interruptible to i32), ptr @__kstrtab_rt_mutex_lock_interruptible, ptr @__kstrtabns_rt_mutex_lock_interruptible }, section "___ksymtab_gpl+rt_mutex_lock_interruptible", align 4
@__kstrtab_rt_mutex_lock_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt_mutex_lock_killable = external dso_local constant [0 x i8], align 1
@__ksymtab_rt_mutex_lock_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt_mutex_lock_killable to i32), ptr @__kstrtab_rt_mutex_lock_killable, ptr @__kstrtabns_rt_mutex_lock_killable }, section "___ksymtab_gpl+rt_mutex_lock_killable", align 4
@rt_mutex_trylock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kernel/locking/rtmutex_api.c\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_rt_mutex_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt_mutex_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_rt_mutex_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt_mutex_trylock to i32), ptr @__kstrtab_rt_mutex_trylock, ptr @__kstrtabns_rt_mutex_trylock }, section "___ksymtab_gpl+rt_mutex_trylock", align 4
@__kstrtab_rt_mutex_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt_mutex_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_rt_mutex_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt_mutex_unlock to i32), ptr @__kstrtab_rt_mutex_unlock, ptr @__kstrtabns_rt_mutex_unlock }, section "___ksymtab_gpl+rt_mutex_unlock", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__kstrtab___rt_mutex_init = external dso_local constant [0 x i8], align 1
@__kstrtabns___rt_mutex_init = external dso_local constant [0 x i8], align 1
@__ksymtab___rt_mutex_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__rt_mutex_init to i32), ptr @__kstrtab___rt_mutex_init, ptr @__kstrtabns___rt_mutex_init }, section "___ksymtab_gpl+__rt_mutex_init", align 4
@rt_mutex_init_proxy_locked.pi_futex_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&pi_futex_key\00", [18 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"!RB_EMPTY_ROOT(&task->pi_waiters.rb_root)\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"task->pi_blocked_on\00", [44 x i8] zeroinitializer }, align 32
@__rt_mutex_base_init.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&lock->wait_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kernel/locking/rtmutex.c\00", [39 x i8] zeroinitializer }, align 32
@__rt_mutex_slowlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtmutex deadlock detected\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"kernel/locking/rtmutex_common.h\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rt_mutex_owner(lock) != current\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"!rt_mutex_owner(lock)\00", [42 x i8] zeroinitializer }, align 32
@rt_mutex_slowlock_block.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rt_mutex_adjust_prio_chain.prev_max = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rt_mutex_adjust_prio_chain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014Maximum lock depth %d reached task: %s (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rt_mutex_adjust_prio_chain\00", [37 x i8] zeroinitializer }, align 32
@rt_mutex_adjust_prio_chain._entry_ptr = internal global ptr @rt_mutex_adjust_prio_chain._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"max_lock_depth\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 14, i32 5 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 122, i32 45 }
@___asan_gen_.24 = private unnamed_addr constant [13 x i8] c"pi_futex_key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 239, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 251, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 487, i32 2 }
@___asan_gen_.37 = private constant [32 x i8] c"../kernel/locking/rtmutex_api.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 488, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 160, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1569, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1544, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 169, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [35 x i8] c"../kernel/locking/rtmutex_common.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 175, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 695, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 723, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [9 x i8] c"prev_max\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 601, i32 14 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [28 x i8] c"../kernel/locking/rtmutex.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 609, i32 4 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__ksymtab___rt_mutex_init, ptr @__ksymtab__rt_mutex_lock_nest_lock, ptr @__ksymtab_rt_mutex_base_init, ptr @__ksymtab_rt_mutex_lock_interruptible, ptr @__ksymtab_rt_mutex_lock_killable, ptr @__ksymtab_rt_mutex_lock_nested, ptr @__ksymtab_rt_mutex_trylock, ptr @__ksymtab_rt_mutex_unlock, ptr @rt_mutex_adjust_prio_chain._entry, ptr @rt_mutex_adjust_prio_chain._entry_ptr, ptr @max_lock_depth, ptr @.str, ptr @rt_mutex_init_proxy_locked.pi_futex_key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rt_mutex_adjust_prio_chain.prev_max, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_lock_depth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt_mutex_init_proxy_locked.pi_futex_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt_mutex_adjust_prio_chain.prev_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt_mutex_adjust_prio_chain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt_mutex_base_init(ptr noundef %rtb) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %rtb, ptr noundef nonnull @.str.5, ptr noundef nonnull @__rt_mutex_base_init.__key, i16 noundef signext 2) #8
  %waiters.i = getelementptr inbounds %struct.rt_mutex_base, ptr %rtb, i32 0, i32 1
  %0 = ptrtoint ptr %waiters.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %waiters.i, align 4
  %.compoundliteral.sroa.2.0.waiters.sroa_idx.i = getelementptr inbounds %struct.rt_mutex_base, ptr %rtb, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0.waiters.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %.compoundliteral.sroa.2.0.waiters.sroa_idx.i, align 4
  %owner.i = getelementptr inbounds %struct.rt_mutex_base, ptr %rtb, i32 0, i32 2
  %2 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %owner.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt_mutex_lock_nested(ptr noundef %lock, i32 noundef %subclass) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %waiter.i.i.i.i = alloca %struct.rt_mutex_waiter, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 29) #8
  %dep_map.i = getelementptr inbounds %struct.rt_mutex, ptr %lock, i32 0, i32 1
  %0 = tail call ptr @llvm.returnaddress(i32 0) #8
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef %subclass, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #8
  %call.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %waiter.i.i.i.i) #8
  %2 = call ptr @memset(ptr %waiter.i.i.i.i, i32 17, i32 56)
  %pi_tree_entry.i.i.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter.i.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pi_tree_entry.i.i.i.i.i to i32
  %4 = ptrtoint ptr %pi_tree_entry.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pi_tree_entry.i.i.i.i.i, align 4
  %5 = ptrtoint ptr %waiter.i.i.i.i to i32
  %6 = ptrtoint ptr %waiter.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %waiter.i.i.i.i, align 8
  %wake_state.i.i.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter.i.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %wake_state.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %wake_state.i.i.i.i.i, align 8
  %task.i.i.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter.i.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %task.i.i.i.i.i, align 8
  %ww_ctx1.i.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter.i.i.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %ww_ctx1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ww_ctx1.i.i.i.i, align 8
  %call.i.i.i.i = call fastcc i32 @__rt_mutex_slowlock(ptr noundef %lock, ptr noundef null, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %waiter.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %waiter.i.i.i.i) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call.i.i.i) #8
  %tobool.not.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i, label %__rt_mutex_lock_common.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @lock_release(ptr noundef %dep_map.i, i32 noundef %1) #8
  br label %__rt_mutex_lock_common.exit

__rt_mutex_lock_common.exit:                      ; preds = %if.then.i, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rt_mutex_lock_nest_lock(ptr noundef %lock, ptr noundef %nest_lock) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %waiter.i.i.i.i = alloca %struct.rt_mutex_waiter, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 29) #8
  %dep_map.i = getelementptr inbounds %struct.rt_mutex, ptr %lock, i32 0, i32 1
  %0 = tail call ptr @llvm.returnaddress(i32 0) #8
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %nest_lock, i32 noundef %1) #8
  %call.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %waiter.i.i.i.i) #8
  %2 = call ptr @memset(ptr %waiter.i.i.i.i, i32 17, i32 56)
  %pi_tree_entry.i.i.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter.i.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pi_tree_entry.i.i.i.i.i to i32
  %4 = ptrtoint ptr %pi_tree_entry.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pi_tree_entry.i.i.i.i.i, align 4
  %5 = ptrtoint ptr %waiter.i.i.i.i to i32
  %6 = ptrtoint ptr %waiter.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %waiter.i.i.i.i, align 8
  %wake_state.i.i.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter.i.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %wake_state.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %wake_state.i.i.i.i.i, align 8
  %task.i.i.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter.i.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %task.i.i.i.i.i, align 8
  %ww_ctx1.i.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter.i.i.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %ww_ctx1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ww_ctx1.i.i.i.i, align 8
  %call.i.i.i.i = call fastcc i32 @__rt_mutex_slowlock(ptr noundef %lock, ptr noundef null, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %waiter.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %waiter.i.i.i.i) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call.i.i.i) #8
  %tobool.not.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i, label %__rt_mutex_lock_common.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @lock_release(ptr noundef %dep_map.i, i32 noundef %1) #8
  br label %__rt_mutex_lock_common.exit

__rt_mutex_lock_common.exit:                      ; preds = %if.then.i, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt_mutex_lock_interruptible(ptr noundef %lock) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %waiter.i.i.i.i = alloca %struct.rt_mutex_waiter, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 29) #8
  %dep_map.i = getelementptr inbounds %struct.rt_mutex, ptr %lock, i32 0, i32 1
  %0 = tail call ptr @llvm.returnaddress(i32 0) #8
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #8
  %call.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %waiter.i.i.i.i) #8
  %2 = call ptr @memset(ptr %waiter.i.i.i.i, i32 17, i32 56)
  %pi_tree_entry.i.i.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter.i.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pi_tree_entry.i.i.i.i.i to i32
  %4 = ptrtoint ptr %pi_tree_entry.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pi_tree_entry.i.i.i.i.i, align 4
  %5 = ptrtoint ptr %waiter.i.i.i.i to i32
  %6 = ptrtoint ptr %waiter.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %waiter.i.i.i.i, align 8
  %wake_state.i.i.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter.i.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %wake_state.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %wake_state.i.i.i.i.i, align 8
  %task.i.i.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter.i.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %task.i.i.i.i.i, align 8
  %ww_ctx1.i.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter.i.i.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %ww_ctx1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ww_ctx1.i.i.i.i, align 8
  %call.i.i.i.i = call fastcc i32 @__rt_mutex_slowlock(ptr noundef %lock, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %waiter.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %waiter.i.i.i.i) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call.i.i.i) #8
  %tobool.not.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i, label %__rt_mutex_lock_common.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @lock_release(ptr noundef %dep_map.i, i32 noundef %1) #8
  br label %__rt_mutex_lock_common.exit

__rt_mutex_lock_common.exit:                      ; preds = %if.then.i, %entry
  ret i32 %call.i.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt_mutex_lock_killable(ptr noundef %lock) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %waiter.i.i.i.i = alloca %struct.rt_mutex_waiter, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 29) #8
  %dep_map.i = getelementptr inbounds %struct.rt_mutex, ptr %lock, i32 0, i32 1
  %0 = tail call ptr @llvm.returnaddress(i32 0) #8
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #8
  %call.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %waiter.i.i.i.i) #8
  %2 = call ptr @memset(ptr %waiter.i.i.i.i, i32 17, i32 56)
  %pi_tree_entry.i.i.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter.i.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pi_tree_entry.i.i.i.i.i to i32
  %4 = ptrtoint ptr %pi_tree_entry.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pi_tree_entry.i.i.i.i.i, align 4
  %5 = ptrtoint ptr %waiter.i.i.i.i to i32
  %6 = ptrtoint ptr %waiter.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %waiter.i.i.i.i, align 8
  %wake_state.i.i.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter.i.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %wake_state.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %wake_state.i.i.i.i.i, align 8
  %task.i.i.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter.i.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %task.i.i.i.i.i, align 8
  %ww_ctx1.i.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter.i.i.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %ww_ctx1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ww_ctx1.i.i.i.i, align 8
  %call.i.i.i.i = call fastcc i32 @__rt_mutex_slowlock(ptr noundef %lock, ptr noundef null, i32 noundef 258, i32 noundef 0, ptr noundef nonnull %waiter.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %waiter.i.i.i.i) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call.i.i.i) #8
  %tobool.not.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i, label %__rt_mutex_lock_common.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @lock_release(ptr noundef %dep_map.i, i32 noundef %1) #8
  br label %__rt_mutex_lock_common.exit

__rt_mutex_lock_common.exit:                      ; preds = %if.then.i, %entry
  ret i32 %call.i.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt_mutex_trylock(ptr noundef %lock) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i57 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i57 to ptr
  %preempt_count.i58 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i58 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i58, align 4
  %and2 = and i32 %7, 983040
  %or = or i32 %and2, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i59 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i59 to ptr
  %preempt_count.i60 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i60 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i60, align 4
  %and5 = and i32 %11, 256
  %or6 = or i32 %or, %and5
  %tobool.not = icmp eq i32 %or6, 0
  br i1 %tobool.not, label %if.end46, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b55 = load i1, ptr @rt_mutex_trylock.__already_done, align 1
  br i1 %.b55, label %cleanup, label %if.then, !prof !78

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @rt_mutex_trylock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end46:                                         ; preds = %entry
  %owner1.i.i.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %12 = ptrtoint ptr %owner1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %owner1.i.i.i, align 4
  %tobool.not.i.i = icmp ult ptr %13, inttoptr (i32 2 to ptr)
  br i1 %tobool.not.i.i, label %do.body.i.i, label %cleanup

do.body.i.i:                                      ; preds = %if.end46
  %call1.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %14 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i3.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i3.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i.i.i, align 8
  %call1.i.i.i = tail call fastcc i32 @try_to_take_rt_mutex(ptr noundef %lock, ptr noundef %17, ptr noundef null) #8
  %waiters.i.i.i.i.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1
  %18 = ptrtoint ptr %waiters.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %waiters.i.i.i.i.i, align 4
  %cmp.i.not.i.i.i.i = icmp eq ptr %19, null
  br i1 %cmp.i.not.i.i.i.i, label %do.end.i.i.i.i, label %__rt_mutex_trylock.exit

do.end.i.i.i.i:                                   ; preds = %do.body.i.i
  %20 = ptrtoint ptr %owner1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %owner1.i.i.i, align 4
  %and.i.i.i.i = and i32 %21, 1
  %tobool2.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %__rt_mutex_trylock.exit, label %do.body8.i.i.i.i

do.body8.i.i.i.i:                                 ; preds = %do.end.i.i.i.i
  %and9.i.i.i.i = and i32 %21, -2
  %22 = ptrtoint ptr %owner1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %and9.i.i.i.i, ptr %owner1.i.i.i, align 4
  br label %__rt_mutex_trylock.exit

__rt_mutex_trylock.exit:                          ; preds = %do.body8.i.i.i.i, %do.end.i.i.i.i, %do.body.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1.i.i) #8
  %tobool48.not = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool48.not, label %cleanup, label %if.then49

if.then49:                                        ; preds = %__rt_mutex_trylock.exit
  %dep_map = getelementptr inbounds %struct.rt_mutex, ptr %lock, i32 0, i32 1
  %23 = tail call ptr @llvm.returnaddress(i32 0)
  %24 = ptrtoint ptr %23 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %24) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %__rt_mutex_trylock.exit, %if.end46, %if.then, %land.rhs
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1.i.i.i, %if.then49 ], [ 0, %__rt_mutex_trylock.exit ], [ 0, %land.rhs ], [ 0, %if.end46 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt_mutex_unlock(ptr noundef %lock) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %wqh.i.i = alloca %struct.rt_wake_q_head, align 4
  %dep_map = getelementptr inbounds %struct.rt_mutex, ptr %lock, i32 0, i32 1
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wqh.i.i) #8
  %2 = getelementptr inbounds %struct.wake_q_head, ptr %wqh.i.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.rt_wake_q_head, ptr %wqh.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %wqh.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 1 to ptr), ptr %wqh.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %wqh.i.i, ptr %2, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %3, align 4
  %call.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %7 = load i32, ptr @oops_in_progress, align 4
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %debug_rt_mutex_unlock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %owner1.i.i.i.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %8 = ptrtoint ptr %owner1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %owner1.i.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %and.i.i.i.i = and i32 %10, -2
  %11 = inttoptr i32 %and.i.i.i.i to ptr
  %12 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i39.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i39.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i.i, align 8
  %cmp.not.i.i.i = icmp eq ptr %15, %11
  br i1 %cmp.not.i.i.i, label %debug_rt_mutex_unlock.exit.i.i, label %do.end.i.i.i, !prof !78

do.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call4.i.i.i = call i32 @debug_locks_off() #8
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %debug_rt_mutex_unlock.exit.i.i, label %land.lhs.true6.i.i.i

land.lhs.true6.i.i.i:                             ; preds = %do.end.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %16 = load i32, ptr @debug_locks_silent, align 4
  %tobool7.not.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool7.not.i.i.i, label %do.end20.i.i.i, label %debug_rt_mutex_unlock.exit.i.i

do.end20.i.i.i:                                   ; preds = %land.lhs.true6.i.i.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10) #8
  br label %debug_rt_mutex_unlock.exit.i.i

debug_rt_mutex_unlock.exit.i.i:                   ; preds = %do.end20.i.i.i, %land.lhs.true6.i.i.i, %do.end.i.i.i, %land.lhs.true.i.i.i, %entry
  %waiters.i.i.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1
  %17 = ptrtoint ptr %waiters.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %waiters.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %18, null
  br i1 %cmp.i.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %debug_rt_mutex_unlock.exit.i.i
  %owner.i.i.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %19 = ptrtoint ptr %owner.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %owner.i.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call.i.i) #8
  br label %__rt_mutex_unlock.exit

while.end.i.i:                                    ; preds = %debug_rt_mutex_unlock.exit.i.i
  call fastcc void @mark_wakeup_next_waiter(ptr noundef nonnull %wqh.i.i, ptr noundef %lock) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call.i.i) #8
  %20 = ptrtoint ptr %wqh.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wqh.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %21, inttoptr (i32 1 to ptr)
  br i1 %cmp.i.i.i.i, label %rt_mutex_wake_up_q.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %while.end.i.i
  call void @wake_up_q(ptr noundef nonnull %wqh.i.i) #8
  br label %rt_mutex_wake_up_q.exit.i.i

rt_mutex_wake_up_q.exit.i.i:                      ; preds = %if.then.i.i.i, %while.end.i.i
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  %22 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  br label %__rt_mutex_unlock.exit

__rt_mutex_unlock.exit:                           ; preds = %rt_mutex_wake_up_q.exit.i.i, %while.body.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wqh.i.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt_mutex_futex_trylock(ptr noundef %lock) local_unnamed_addr #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %owner1.i.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %0 = ptrtoint ptr %owner1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %owner1.i.i, align 4
  %tobool.not.i = icmp ult ptr %1, inttoptr (i32 2 to ptr)
  br i1 %tobool.not.i, label %do.body.i, label %rt_mutex_slowtrylock.exit

do.body.i:                                        ; preds = %entry
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %2 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i3.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i3.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i.i, align 8
  %call1.i.i = tail call fastcc i32 @try_to_take_rt_mutex(ptr noundef %lock, ptr noundef %5, ptr noundef null) #8
  %waiters.i.i.i.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1
  %6 = ptrtoint ptr %waiters.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %waiters.i.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %7, null
  br i1 %cmp.i.not.i.i.i, label %do.end.i.i.i, label %__rt_mutex_slowtrylock.exit.i

do.end.i.i.i:                                     ; preds = %do.body.i
  %8 = ptrtoint ptr %owner1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %owner1.i.i, align 4
  %and.i.i.i = and i32 %9, 1
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %__rt_mutex_slowtrylock.exit.i, label %do.body8.i.i.i

do.body8.i.i.i:                                   ; preds = %do.end.i.i.i
  %and9.i.i.i = and i32 %9, -2
  %10 = ptrtoint ptr %owner1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %and9.i.i.i, ptr %owner1.i.i, align 4
  br label %__rt_mutex_slowtrylock.exit.i

__rt_mutex_slowtrylock.exit.i:                    ; preds = %do.body8.i.i.i, %do.end.i.i.i, %do.body.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1.i) #8
  br label %rt_mutex_slowtrylock.exit

rt_mutex_slowtrylock.exit:                        ; preds = %__rt_mutex_slowtrylock.exit.i, %entry
  %retval.0.i = phi i32 [ %call1.i.i, %__rt_mutex_slowtrylock.exit.i ], [ 0, %entry ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__rt_mutex_futex_trylock(ptr noundef %lock) local_unnamed_addr #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i3.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i3.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %call1.i = tail call fastcc i32 @try_to_take_rt_mutex(ptr noundef %lock, ptr noundef %3, ptr noundef null) #8
  %owner1.i.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %waiters.i.i.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1
  %4 = ptrtoint ptr %waiters.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %waiters.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %5, null
  br i1 %cmp.i.not.i.i, label %do.end.i.i, label %__rt_mutex_slowtrylock.exit

do.end.i.i:                                       ; preds = %entry
  %6 = ptrtoint ptr %owner1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %owner1.i.i, align 4
  %and.i.i = and i32 %7, 1
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %__rt_mutex_slowtrylock.exit, label %do.body8.i.i

do.body8.i.i:                                     ; preds = %do.end.i.i
  %and9.i.i = and i32 %7, -2
  %8 = ptrtoint ptr %owner1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %and9.i.i, ptr %owner1.i.i, align 4
  br label %__rt_mutex_slowtrylock.exit

__rt_mutex_slowtrylock.exit:                      ; preds = %do.body8.i.i, %do.end.i.i, %entry
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__rt_mutex_futex_unlock(ptr noundef %lock, ptr noundef %wqh) local_unnamed_addr #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %if.end, !prof !80

do.end:                                           ; preds = %land.rhs
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 168, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %1 = load i32, ptr @oops_in_progress, align 4
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %debug_rt_mutex_unlock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %owner1.i.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %2 = ptrtoint ptr %owner1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %owner1.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  %and.i.i = and i32 %4, -2
  %5 = inttoptr i32 %and.i.i to ptr
  %6 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i39.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i39.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %cmp.not.i = icmp eq ptr %9, %5
  br i1 %cmp.not.i, label %debug_rt_mutex_unlock.exit, label %do.end.i, !prof !78

do.end.i:                                         ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @debug_locks_off() #8
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %debug_rt_mutex_unlock.exit, label %land.lhs.true6.i

land.lhs.true6.i:                                 ; preds = %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %10 = load i32, ptr @debug_locks_silent, align 4
  %tobool7.not.i = icmp eq i32 %10, 0
  br i1 %tobool7.not.i, label %do.end20.i, label %debug_rt_mutex_unlock.exit

do.end20.i:                                       ; preds = %land.lhs.true6.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10) #8
  br label %debug_rt_mutex_unlock.exit

debug_rt_mutex_unlock.exit:                       ; preds = %do.end20.i, %land.lhs.true6.i, %do.end.i, %land.lhs.true.i, %if.end
  %waiters.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1
  %11 = ptrtoint ptr %waiters.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %waiters.i, align 4
  %cmp.i.not = icmp eq ptr %12, null
  br i1 %cmp.i.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %debug_rt_mutex_unlock.exit
  %owner = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %13 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %owner, align 4
  br label %return

if.end27:                                         ; preds = %debug_rt_mutex_unlock.exit
  tail call fastcc void @mark_wakeup_next_waiter(ptr noundef %wqh, ptr noundef %lock)
  br label %return

return:                                           ; preds = %if.end27, %if.then26
  %14 = xor i1 %cmp.i.not, true
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mark_wakeup_next_waiter(ptr noundef %wqh, ptr noundef %lock) unnamed_addr #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 128
  tail call void @_raw_spin_lock(ptr noundef %pi_lock) #8
  %rb_leftmost.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not.i15 = icmp eq ptr %5, null
  br i1 %tobool.not.i15, label %rt_mutex_top_waiter.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %lock1.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %lock1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock1.i, align 4
  %cmp.not.i16 = icmp eq ptr %7, %lock
  br i1 %cmp.not.i16, label %rt_mutex_top_waiter.exit, label %do.body5.i, !prof !78

do.body5.i:                                       ; preds = %if.then.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

rt_mutex_top_waiter.exit:                         ; preds = %if.then.i, %entry
  %pi_tree_entry.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %pi_tree_entry.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pi_tree_entry.i, align 4
  %10 = ptrtoint ptr %pi_tree_entry.i to i32
  %cmp.i = icmp eq i32 %9, %10
  br i1 %cmp.i, label %rt_mutex_dequeue_pi.exit, label %if.end.i

if.end.i:                                         ; preds = %rt_mutex_top_waiter.exit
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %pi_waiters.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 130
  %rb_leftmost.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 130, i32 1
  %13 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rb_leftmost.i.i, align 4
  %cmp.i.i = icmp eq ptr %14, %pi_tree_entry.i
  br i1 %cmp.i.i, label %if.then.i.i, label %rb_erase_cached.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %call.i.i = tail call ptr @rb_next(ptr noundef %pi_tree_entry.i) #8
  %15 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %rb_leftmost.i.i, align 4
  br label %rb_erase_cached.exit.i

rb_erase_cached.exit.i:                           ; preds = %if.then.i.i, %if.end.i
  tail call void @rb_erase(ptr noundef %pi_tree_entry.i, ptr noundef %pi_waiters.i) #8
  %16 = ptrtoint ptr %pi_tree_entry.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %10, ptr %pi_tree_entry.i, align 4
  br label %rt_mutex_dequeue_pi.exit

rt_mutex_dequeue_pi.exit:                         ; preds = %rb_erase_cached.exit.i, %rt_mutex_top_waiter.exit
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %19 = load i32, ptr @debug_locks, align 4
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end.i12, label %land.rhs.i

land.rhs.i:                                       ; preds = %rt_mutex_dequeue_pi.exit
  %dep_map.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 128, i32 4
  %call.i.i11 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  %cmp.not.i = icmp eq i32 %call.i.i11, 0
  br i1 %cmp.not.i, label %do.end.i, label %if.end.i12, !prof !80

do.end.i:                                         ; preds = %land.rhs.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 440, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i12

if.end.i12:                                       ; preds = %do.end.i, %land.rhs.i, %rt_mutex_dequeue_pi.exit
  %pi_waiters.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 130
  %20 = ptrtoint ptr %pi_waiters.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %pi_waiters.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %21, null
  br i1 %cmp.i.not.i, label %rt_mutex_adjust_prio.exit, label %if.then26.i

if.then26.i:                                      ; preds = %if.end.i12
  %rb_leftmost.i.i13 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 130, i32 1
  %22 = ptrtoint ptr %rb_leftmost.i.i13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rb_leftmost.i.i13, align 4
  %task.i = getelementptr i8, ptr %23, i32 12
  %24 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i, align 8
  br label %rt_mutex_adjust_prio.exit

rt_mutex_adjust_prio.exit:                        ; preds = %if.then26.i, %if.end.i12
  %pi_task.0.i = phi ptr [ %25, %if.then26.i ], [ null, %if.end.i12 ]
  tail call void @rt_mutex_setprio(ptr noundef %18, ptr noundef %pi_task.0.i) #8
  %owner = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %26 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 1 to ptr), ptr %owner, align 4
  %27 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %30, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !82
  %task.i14 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %5, i32 0, i32 2
  %31 = ptrtoint ptr %task.i14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i14, align 8
  tail call void @wake_q_add(ptr noundef %wqh, ptr noundef %32) #8
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %pi_lock8 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 128
  tail call void @_raw_spin_unlock(ptr noundef %pi_lock8) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt_mutex_futex_unlock(ptr noundef %lock) local_unnamed_addr #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %wqh = alloca %struct.rt_wake_q_head, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wqh) #8
  %0 = getelementptr inbounds %struct.wake_q_head, ptr %wqh, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rt_wake_q_head, ptr %wqh, i32 0, i32 1
  %2 = ptrtoint ptr %wqh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 1 to ptr), ptr %wqh, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %wqh, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %1, align 4
  %call = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call3 = call zeroext i1 @__rt_mutex_futex_unlock(ptr noundef %lock, ptr noundef nonnull %wqh)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #8
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %wqh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wqh, align 4
  %cmp.i.i.i = icmp eq ptr %6, inttoptr (i32 1 to ptr)
  br i1 %cmp.i.i.i, label %rt_mutex_postunlock.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @wake_up_q(ptr noundef nonnull %wqh) #8
  br label %rt_mutex_postunlock.exit

rt_mutex_postunlock.exit:                         ; preds = %if.then.i.i, %if.then
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  %7 = call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %rt_mutex_postunlock.exit, %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wqh) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt_mutex_postunlock(ptr noundef %wqh) local_unnamed_addr #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wqh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wqh, align 4
  %cmp.i.i = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %cmp.i.i, label %rt_mutex_wake_up_q.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void @wake_up_q(ptr noundef %wqh) #8
  br label %rt_mutex_wake_up_q.exit

rt_mutex_wake_up_q.exit:                          ; preds = %if.then.i, %entry
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !79
  %2 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %5, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rt_mutex_init(ptr noundef %lock, ptr noundef %name, ptr noundef %key) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_check_no_locks_freed(ptr noundef %lock, i32 noundef 84) #8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @__rt_mutex_base_init.__key, i16 noundef signext 2) #8
  %waiters.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1
  %0 = ptrtoint ptr %waiters.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %waiters.i, align 4
  %.compoundliteral.sroa.2.0.waiters.sroa_idx.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0.waiters.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %.compoundliteral.sroa.2.0.waiters.sroa_idx.i, align 4
  %owner.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %2 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %owner.i, align 4
  %dep_map = getelementptr inbounds %struct.rt_mutex, ptr %lock, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef %name, ptr noundef %key, i32 noundef 0, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt_mutex_init_proxy_locked(ptr noundef %lock, ptr noundef %proxy_owner) local_unnamed_addr #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @__rt_mutex_base_init.__key, i16 noundef signext 2) #8
  %waiters.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1
  %0 = ptrtoint ptr %waiters.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %waiters.i, align 4
  %.compoundliteral.sroa.2.0.waiters.sroa_idx.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0.waiters.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %.compoundliteral.sroa.2.0.waiters.sroa_idx.i, align 4
  %owner.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %2 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %owner.i, align 4
  %dep_map = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %wait_type_inner = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4, i32 4
  %3 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @rt_mutex_init_proxy_locked.pi_futex_key, i32 noundef 0, i8 noundef zeroext %4, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %5 = ptrtoint ptr %proxy_owner to i32
  %6 = ptrtoint ptr %waiters.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %waiters.i, align 4
  %cmp.i.not.i = icmp ne ptr %7, null
  %or.i = zext i1 %cmp.i.not.i to i32
  %spec.select.i = or i32 %or.i, %5
  %8 = inttoptr i32 %spec.select.i to ptr
  %9 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %owner.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt_mutex_proxy_unlock(ptr noundef %lock) local_unnamed_addr #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %debug_rt_mutex_proxy_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %owner1.i.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %1 = ptrtoint ptr %owner1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %owner1.i.i, align 4
  %tobool1.not.i = icmp ult ptr %2, inttoptr (i32 2 to ptr)
  br i1 %tobool1.not.i, label %do.end.i, label %debug_rt_mutex_proxy_unlock.exit, !prof !80

do.end.i:                                         ; preds = %land.lhs.true.i
  %call5.i = tail call i32 @debug_locks_off() #8
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %debug_rt_mutex_proxy_unlock.exit, label %land.lhs.true7.i

land.lhs.true7.i:                                 ; preds = %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  %tobool8.not.i = icmp eq i32 %3, 0
  br i1 %tobool8.not.i, label %do.end21.i, label %debug_rt_mutex_proxy_unlock.exit

do.end21.i:                                       ; preds = %land.lhs.true7.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 175, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11) #8
  br label %debug_rt_mutex_proxy_unlock.exit

debug_rt_mutex_proxy_unlock.exit:                 ; preds = %do.end21.i, %land.lhs.true7.i, %do.end.i, %land.lhs.true.i, %entry
  %waiters.i.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1
  %4 = ptrtoint ptr %waiters.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %waiters.i.i, align 4
  %cmp.i.not.i = icmp ne ptr %5, null
  %or.i = zext i1 %cmp.i.not.i to i32
  %6 = inttoptr i32 %or.i to ptr
  %owner3.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %7 = ptrtoint ptr %owner3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %6, ptr %owner3.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__rt_mutex_start_proxy_lock(ptr noundef %lock, ptr noundef %waiter, ptr noundef %task) local_unnamed_addr #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %if.end, !prof !80

do.end:                                           ; preds = %land.rhs
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 298, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs, %entry
  %call24 = tail call fastcc i32 @try_to_take_rt_mutex(ptr noundef %lock, ptr noundef %task, ptr noundef null)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %cleanup

if.end27:                                         ; preds = %if.end
  %call28 = tail call fastcc i32 @task_blocks_on_rt_mutex(ptr noundef %lock, ptr noundef %waiter, ptr noundef %task)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end27
  %owner1.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %1 = ptrtoint ptr %owner1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %owner1.i, align 4
  %tobool31.not = icmp ult ptr %2, inttoptr (i32 2 to ptr)
  %spec.select = select i1 %tobool31.not, i32 0, i32 %call28
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end27, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.end27 ], [ %spec.select, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @try_to_take_rt_mutex(ptr noundef %lock, ptr noundef %task, ptr noundef %waiter) unnamed_addr #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %if.end, !prof !80

do.end:                                           ; preds = %land.rhs
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 972, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs, %entry
  %owner.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %1 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner.i, align 4
  %3 = ptrtoint ptr %2 to i32
  %or.i = or i32 %3, 1
  %4 = inttoptr i32 %or.i to ptr
  store ptr %4, ptr %owner.i, align 4
  %5 = load volatile ptr, ptr %owner.i, align 4
  %tobool25.not = icmp ult ptr %5, inttoptr (i32 2 to ptr)
  br i1 %tobool25.not, label %if.end27, label %return

if.end27:                                         ; preds = %if.end
  %tobool28.not = icmp eq ptr %waiter, null
  br i1 %tobool28.not, label %if.else35, label %if.then29

if.then29:                                        ; preds = %if.end27
  %rb_leftmost.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %rt_mutex_top_waiter.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then29
  %lock1.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %lock1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock1.i, align 4
  %cmp.not.i = icmp eq ptr %9, %lock
  br i1 %cmp.not.i, label %rt_mutex_top_waiter.exit, label %do.body5.i, !prof !78

do.body5.i:                                       ; preds = %if.then.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

rt_mutex_top_waiter.exit:                         ; preds = %if.then.i, %if.then29
  %cmp31 = icmp eq ptr %7, %waiter
  br i1 %cmp31, label %if.then33.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %rt_mutex_top_waiter.exit
  %prio.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter, i32 0, i32 5
  %10 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prio.i.i, align 4
  %prio1.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %prio1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prio1.i.i, align 4
  %cmp.i.i78 = icmp slt i32 %11, %13
  br i1 %cmp.i.i78, label %if.then33, label %if.end.i.i

if.end.i.i:                                       ; preds = %lor.lhs.false
  %tobool.not.i.i79 = icmp sgt i32 %11, -1
  br i1 %tobool.not.i.i79, label %return, label %rt_mutex_steal.exit

rt_mutex_steal.exit:                              ; preds = %if.end.i.i
  %deadline.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter, i32 0, i32 6
  %14 = ptrtoint ptr %deadline.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %deadline.i.i, align 8
  %deadline4.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 6
  %16 = ptrtoint ptr %deadline4.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %deadline4.i.i, align 8
  %sub.i.i.i = sub i64 %15, %17
  %phi.cmp.i = icmp slt i64 %sub.i.i.i, 0
  br i1 %phi.cmp.i, label %if.then33, label %return

if.then33:                                        ; preds = %rt_mutex_steal.exit, %lor.lhs.false
  %18 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %waiter, align 8
  %20 = ptrtoint ptr %waiter to i32
  %cmp.i = icmp eq i32 %19, %20
  br i1 %cmp.i, label %if.end49, label %rb_erase_cached.exit.i

if.then33.thread:                                 ; preds = %rt_mutex_top_waiter.exit
  %21 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %waiter, align 8
  %23 = ptrtoint ptr %waiter to i32
  %cmp.i114 = icmp eq i32 %22, %23
  br i1 %cmp.i114, label %if.end49, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then33.thread
  %call.i.i = tail call ptr @rb_next(ptr noundef nonnull %waiter) #8
  %24 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.i, ptr %rb_leftmost.i, align 4
  br label %rb_erase_cached.exit.i

rb_erase_cached.exit.i:                           ; preds = %if.then.i.i, %if.then33
  %25 = phi i32 [ %23, %if.then.i.i ], [ %20, %if.then33 ]
  %waiters.i116 = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1
  tail call void @rb_erase(ptr noundef nonnull %waiter, ptr noundef %waiters.i116) #8
  %26 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %waiter, align 8
  br label %if.end49

if.else35:                                        ; preds = %if.end27
  %waiters.i80 = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1
  %27 = ptrtoint ptr %waiters.i80 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %waiters.i80, align 4
  %cmp.i81.not = icmp eq ptr %28, null
  br i1 %cmp.i81.not, label %takeit, label %if.then38

if.then38:                                        ; preds = %if.else35
  %prio1.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 13
  %29 = ptrtoint ptr %prio1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %prio1.i, align 8
  %cmp.i.i76 = icmp sgt i32 %30, 99
  %..i = select i1 %cmp.i.i76, i32 120, i32 %30
  %deadline42 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 20, i32 7
  %31 = ptrtoint ptr %deadline42 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %deadline42, align 8
  %rb_leftmost.i82 = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %rb_leftmost.i82 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rb_leftmost.i82, align 4
  %tobool.not.i83 = icmp eq ptr %34, null
  br i1 %tobool.not.i83, label %rt_mutex_top_waiter.exit88, label %if.then.i86

if.then.i86:                                      ; preds = %if.then38
  %lock1.i84 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %lock1.i84 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lock1.i84, align 4
  %cmp.not.i85 = icmp eq ptr %36, %lock
  br i1 %cmp.not.i85, label %rt_mutex_top_waiter.exit88, label %do.body5.i87, !prof !78

do.body5.i87:                                     ; preds = %if.then.i86
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

rt_mutex_top_waiter.exit88:                       ; preds = %if.then.i86, %if.then38
  %prio1.i.i90 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %34, i32 0, i32 5
  %37 = ptrtoint ptr %prio1.i.i90 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prio1.i.i90, align 4
  %cmp.i.i91 = icmp slt i32 %..i, %38
  br i1 %cmp.i.i91, label %if.end49, label %if.end.i.i93

if.end.i.i93:                                     ; preds = %rt_mutex_top_waiter.exit88
  %tobool.not.i.i92 = icmp sgt i32 %..i, -1
  br i1 %tobool.not.i.i92, label %return, label %rt_mutex_steal.exit100

rt_mutex_steal.exit100:                           ; preds = %if.end.i.i93
  %deadline4.i.i95 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %34, i32 0, i32 6
  %39 = ptrtoint ptr %deadline4.i.i95 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %deadline4.i.i95, align 8
  %sub.i.i.i96 = sub i64 %32, %40
  %phi.cmp.i97 = icmp slt i64 %sub.i.i.i96, 0
  br i1 %phi.cmp.i97, label %if.end49, label %return

if.end49:                                         ; preds = %rt_mutex_steal.exit100, %rt_mutex_top_waiter.exit88, %rb_erase_cached.exit.i, %if.then33.thread, %if.then33
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 128
  tail call void @_raw_spin_lock(ptr noundef %pi_lock) #8
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 132
  %41 = ptrtoint ptr %pi_blocked_on to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %pi_blocked_on, align 32
  %waiters.i101 = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1
  %42 = ptrtoint ptr %waiters.i101 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %waiters.i101, align 4
  %cmp.i102.not = icmp eq ptr %43, null
  br i1 %cmp.i102.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end49
  %rb_leftmost.i104 = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %rb_leftmost.i104 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rb_leftmost.i104, align 4
  %tobool.not.i105 = icmp eq ptr %45, null
  br i1 %tobool.not.i105, label %rt_mutex_top_waiter.exit110, label %if.then.i108

if.then.i108:                                     ; preds = %if.then52
  %lock1.i106 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %lock1.i106 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lock1.i106, align 4
  %cmp.not.i107 = icmp eq ptr %47, %lock
  br i1 %cmp.not.i107, label %rt_mutex_top_waiter.exit110, label %do.body5.i109, !prof !78

do.body5.i109:                                    ; preds = %if.then.i108
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

rt_mutex_top_waiter.exit110:                      ; preds = %if.then.i108, %if.then52
  %pi_tree_entry.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %45, i32 0, i32 1
  %pi_waiters.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 130
  %48 = ptrtoint ptr %pi_waiters.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pi_waiters.i, align 4
  %tobool.not2.i.i = icmp eq ptr %49, null
  br i1 %tobool.not2.i.i, label %if.then.i.critedge.i.i, label %while.body.i.preheader.i

while.body.i.preheader.i:                         ; preds = %rt_mutex_top_waiter.exit110
  %prio.i.i.i = getelementptr %struct.rt_mutex_waiter, ptr %45, i32 0, i32 5
  %50 = ptrtoint ptr %prio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %prio.i.i.i, align 4
  %tobool.not.i.i.i = icmp sgt i32 %51, -1
  %deadline.i.i.i = getelementptr %struct.rt_mutex_waiter, ptr %45, i32 0, i32 6
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %59, %while.body.i.preheader.i
  %52 = phi ptr [ %62, %59 ], [ %49, %while.body.i.preheader.i ]
  %leftmost.0.off03.i.i = phi i1 [ %retval.0.i.i4.i, %59 ], [ true, %while.body.i.preheader.i ]
  %prio1.i.i.i = getelementptr i8, ptr %52, i32 24
  %53 = ptrtoint ptr %prio1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %prio1.i.i.i, align 4
  %cmp.i.i.i = icmp slt i32 %51, %54
  br i1 %cmp.i.i.i, label %__pi_waiter_less.exit.thread.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i
  br i1 %tobool.not.i.i.i, label %__pi_waiter_less.exit.thread7.i, label %__pi_waiter_less.exit.i

__pi_waiter_less.exit.thread7.i:                  ; preds = %if.end.i.i.i
  %rb_right.i10.i = getelementptr inbounds %struct.rb_node, ptr %52, i32 0, i32 1
  br label %59

__pi_waiter_less.exit.i:                          ; preds = %if.end.i.i.i
  %55 = ptrtoint ptr %deadline.i.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %deadline.i.i.i, align 8
  %deadline4.i.i.i = getelementptr i8, ptr %52, i32 28
  %57 = ptrtoint ptr %deadline4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %deadline4.i.i.i, align 8
  %sub.i.i.i.i = sub i64 %56, %58
  %phi.cmp.i.i = icmp slt i64 %sub.i.i.i.i, 0
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %52, i32 0, i32 1
  br i1 %phi.cmp.i.i, label %__pi_waiter_less.exit.thread.i, label %59

__pi_waiter_less.exit.thread.i:                   ; preds = %__pi_waiter_less.exit.i, %while.body.i.i
  %rb_left.i6.i = getelementptr inbounds %struct.rb_node, ptr %52, i32 0, i32 2
  br label %59

59:                                               ; preds = %__pi_waiter_less.exit.thread.i, %__pi_waiter_less.exit.i, %__pi_waiter_less.exit.thread7.i
  %retval.0.i.i4.i = phi i1 [ %leftmost.0.off03.i.i, %__pi_waiter_less.exit.thread.i ], [ false, %__pi_waiter_less.exit.i ], [ false, %__pi_waiter_less.exit.thread7.i ]
  %60 = phi ptr [ %rb_left.i6.i, %__pi_waiter_less.exit.thread.i ], [ %rb_right.i.i, %__pi_waiter_less.exit.i ], [ %rb_right.i10.i, %__pi_waiter_less.exit.thread7.i ]
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %tobool.not.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %59
  %phi.cast.le.i.i = ptrtoint ptr %52 to i32
  %63 = ptrtoint ptr %pi_tree_entry.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %phi.cast.le.i.i, ptr %pi_tree_entry.i, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %45, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %45, i32 0, i32 1, i32 2
  %65 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %66 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %pi_tree_entry.i, ptr %60, align 4
  br i1 %retval.0.i.i4.i, label %if.then.i.i.i, label %rt_mutex_enqueue_pi.exit

if.then.i.critedge.i.i:                           ; preds = %rt_mutex_top_waiter.exit110
  %67 = ptrtoint ptr %pi_tree_entry.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %pi_tree_entry.i, align 4
  %rb_right.i.c.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %45, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %rb_right.i.c.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %rb_right.i.c.i.i, align 4
  %rb_left.i.c.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %45, i32 0, i32 1, i32 2
  %69 = ptrtoint ptr %rb_left.i.c.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %rb_left.i.c.i.i, align 4
  %70 = ptrtoint ptr %pi_waiters.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %pi_tree_entry.i, ptr %pi_waiters.i, align 4
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.critedge.i.i, %while.cond.while.end_crit_edge.i.i
  %rb_leftmost.i.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 130, i32 1
  %71 = ptrtoint ptr %rb_leftmost.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %pi_tree_entry.i, ptr %rb_leftmost.i.i.i, align 4
  br label %rt_mutex_enqueue_pi.exit

rt_mutex_enqueue_pi.exit:                         ; preds = %if.then.i.i.i, %while.cond.while.end_crit_edge.i.i
  tail call void @rb_insert_color(ptr noundef %pi_tree_entry.i, ptr noundef %pi_waiters.i) #8
  br label %if.end54

if.end54:                                         ; preds = %rt_mutex_enqueue_pi.exit, %if.end49
  tail call void @_raw_spin_unlock(ptr noundef %pi_lock) #8
  br label %takeit

takeit:                                           ; preds = %if.end54, %if.else35
  %72 = ptrtoint ptr %task to i32
  %waiters.i.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1
  %73 = ptrtoint ptr %waiters.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %waiters.i.i, align 4
  %cmp.i.not.i = icmp ne ptr %74, null
  %or.i77 = zext i1 %cmp.i.not.i to i32
  %spec.select.i = or i32 %or.i77, %72
  %75 = inttoptr i32 %spec.select.i to ptr
  %76 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %75, ptr %owner.i, align 4
  br label %return

return:                                           ; preds = %takeit, %rt_mutex_steal.exit100, %if.end.i.i93, %rt_mutex_steal.exit, %if.end.i.i, %if.end
  %retval.1 = phi i32 [ 1, %takeit ], [ 0, %if.end ], [ 0, %rt_mutex_steal.exit100 ], [ 0, %rt_mutex_steal.exit ], [ 0, %if.end.i.i ], [ 0, %if.end.i.i93 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @task_blocks_on_rt_mutex(ptr noundef %lock, ptr noundef %waiter, ptr noundef %task) unnamed_addr #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %owner1.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %0 = ptrtoint ptr %owner1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %owner1.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, -2
  %3 = inttoptr i32 %and.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %if.end, !prof !80

do.end:                                           ; preds = %land.rhs
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1096, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs, %entry
  %cmp25 = icmp eq ptr %3, %task
  br i1 %cmp25, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.end
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 128
  tail call void @_raw_spin_lock(ptr noundef %pi_lock) #8
  %task28 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter, i32 0, i32 2
  %5 = ptrtoint ptr %task28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %task, ptr %task28, align 8
  %lock29 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter, i32 0, i32 3
  %6 = ptrtoint ptr %lock29 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lock, ptr %lock29, align 4
  %prio1.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 13
  %7 = ptrtoint ptr %prio1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %prio1.i.i, align 8
  %cmp.i.i.i = icmp sgt i32 %8, 99
  %..i.i = select i1 %cmp.i.i.i, i32 120, i32 %8
  %prio.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter, i32 0, i32 5
  %9 = ptrtoint ptr %prio.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %..i.i, ptr %prio.i, align 4
  %deadline.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 20, i32 7
  %10 = ptrtoint ptr %deadline.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %deadline.i, align 8
  %deadline1.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter, i32 0, i32 6
  %12 = ptrtoint ptr %deadline1.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %deadline1.i, align 8
  %waiters.i37 = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1
  %13 = ptrtoint ptr %waiters.i37 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %waiters.i37, align 4
  %cmp.i38.not = icmp eq ptr %14, null
  br i1 %cmp.i38.not, label %if.then.i.critedge.i.i, label %if.then32

if.then32:                                        ; preds = %if.end27
  %rb_leftmost.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not.i39 = icmp eq ptr %16, null
  br i1 %tobool.not.i39, label %while.body.i.preheader.i, label %if.then.i

if.then.i:                                        ; preds = %if.then32
  %lock1.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %lock1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock1.i, align 4
  %cmp.not.i40 = icmp eq ptr %18, %lock
  br i1 %cmp.not.i40, label %while.body.i.preheader.i, label %do.body5.i, !prof !78

do.body5.i:                                       ; preds = %if.then.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

while.body.i.preheader.i:                         ; preds = %if.then.i, %if.then32
  %tobool.not.i.i.i = icmp sgt i32 %..i.i, -1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %24, %while.body.i.preheader.i
  %19 = phi ptr [ %27, %24 ], [ %14, %while.body.i.preheader.i ]
  %leftmost.0.off03.i.i = phi i1 [ %retval.0.i.i4.i, %24 ], [ true, %while.body.i.preheader.i ]
  %prio1.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %prio1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prio1.i.i.i, align 4
  %cmp.i.i.i2 = icmp slt i32 %..i.i, %21
  br i1 %cmp.i.i.i2, label %__waiter_less.exit.thread.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i
  br i1 %tobool.not.i.i.i, label %__waiter_less.exit.thread7.i, label %__waiter_less.exit.i

__waiter_less.exit.thread7.i:                     ; preds = %if.end.i.i.i
  %rb_right.i10.i = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 1
  br label %24

__waiter_less.exit.i:                             ; preds = %if.end.i.i.i
  %deadline4.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %19, i32 0, i32 6
  %22 = ptrtoint ptr %deadline4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %deadline4.i.i.i, align 8
  %sub.i.i.i.i = sub i64 %11, %23
  %phi.cmp.i.i = icmp slt i64 %sub.i.i.i.i, 0
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 1
  br i1 %phi.cmp.i.i, label %__waiter_less.exit.thread.i, label %24

__waiter_less.exit.thread.i:                      ; preds = %__waiter_less.exit.i, %while.body.i.i
  %rb_left.i6.i = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 2
  br label %24

24:                                               ; preds = %__waiter_less.exit.thread.i, %__waiter_less.exit.i, %__waiter_less.exit.thread7.i
  %retval.0.i.i4.i = phi i1 [ %leftmost.0.off03.i.i, %__waiter_less.exit.thread.i ], [ false, %__waiter_less.exit.i ], [ false, %__waiter_less.exit.thread7.i ]
  %25 = phi ptr [ %rb_left.i6.i, %__waiter_less.exit.thread.i ], [ %rb_right.i.i, %__waiter_less.exit.i ], [ %rb_right.i10.i, %__waiter_less.exit.thread7.i ]
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %24
  %phi.cast.le.i.i = ptrtoint ptr %19 to i32
  %28 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %phi.cast.le.i.i, ptr %waiter, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %waiter, i32 0, i32 1
  %29 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %waiter, i32 0, i32 2
  %30 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %waiter, ptr %25, align 4
  br i1 %retval.0.i.i4.i, label %if.then.i.i.i, label %rt_mutex_enqueue.exit

if.then.i.critedge.i.i:                           ; preds = %if.end27
  %32 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %waiter, align 4
  %rb_right.i.c.i.i = getelementptr inbounds %struct.rb_node, ptr %waiter, i32 0, i32 1
  %33 = ptrtoint ptr %rb_right.i.c.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %rb_right.i.c.i.i, align 4
  %rb_left.i.c.i.i = getelementptr inbounds %struct.rb_node, ptr %waiter, i32 0, i32 2
  %34 = ptrtoint ptr %rb_left.i.c.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %rb_left.i.c.i.i, align 4
  %35 = ptrtoint ptr %waiters.i37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %waiter, ptr %waiters.i37, align 4
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.critedge.i.i, %while.cond.while.end_crit_edge.i.i
  %top_waiter.059 = phi ptr [ %waiter, %if.then.i.critedge.i.i ], [ %16, %while.cond.while.end_crit_edge.i.i ]
  %rb_leftmost.i.i.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %rb_leftmost.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %waiter, ptr %rb_leftmost.i.i.i, align 4
  br label %rt_mutex_enqueue.exit

rt_mutex_enqueue.exit:                            ; preds = %if.then.i.i.i, %while.cond.while.end_crit_edge.i.i
  %top_waiter.058 = phi ptr [ %16, %while.cond.while.end_crit_edge.i.i ], [ %top_waiter.059, %if.then.i.i.i ]
  tail call void @rb_insert_color(ptr noundef %waiter, ptr noundef %waiters.i37) #8
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 132
  %37 = ptrtoint ptr %pi_blocked_on to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %waiter, ptr %pi_blocked_on, align 32
  tail call void @_raw_spin_unlock(ptr noundef %pi_lock) #8
  %tobool36.not = icmp eq i32 %and.i, 0
  br i1 %tobool36.not, label %cleanup, label %if.end38

if.end38:                                         ; preds = %rt_mutex_enqueue.exit
  %pi_lock39 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 128
  tail call void @_raw_spin_lock(ptr noundef %pi_lock39) #8
  %rb_leftmost.i41 = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %rb_leftmost.i41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rb_leftmost.i41, align 4
  %tobool.not.i42 = icmp eq ptr %39, null
  br i1 %tobool.not.i42, label %rt_mutex_top_waiter.exit47, label %if.then.i45

if.then.i45:                                      ; preds = %if.end38
  %lock1.i43 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %lock1.i43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lock1.i43, align 4
  %cmp.not.i44 = icmp eq ptr %41, %lock
  br i1 %cmp.not.i44, label %rt_mutex_top_waiter.exit47, label %do.body5.i46, !prof !78

do.body5.i46:                                     ; preds = %if.then.i45
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

rt_mutex_top_waiter.exit47:                       ; preds = %if.then.i45, %if.end38
  %cmp41 = icmp eq ptr %39, %waiter
  br i1 %cmp41, label %if.then42, label %if.end50

if.then42:                                        ; preds = %rt_mutex_top_waiter.exit47
  %pi_tree_entry.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %top_waiter.058, i32 0, i32 1
  %42 = ptrtoint ptr %pi_tree_entry.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pi_tree_entry.i, align 4
  %44 = ptrtoint ptr %pi_tree_entry.i to i32
  %cmp.i = icmp eq i32 %43, %44
  br i1 %cmp.i, label %rt_mutex_dequeue_pi.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then42
  %pi_waiters.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 130
  %rb_leftmost.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 130, i32 1
  %45 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rb_leftmost.i.i, align 4
  %cmp.i.i = icmp eq ptr %46, %pi_tree_entry.i
  br i1 %cmp.i.i, label %if.then.i.i, label %rb_erase_cached.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %call.i.i = tail call ptr @rb_next(ptr noundef %pi_tree_entry.i) #8
  %47 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i.i, ptr %rb_leftmost.i.i, align 4
  br label %rb_erase_cached.exit.i

rb_erase_cached.exit.i:                           ; preds = %if.then.i.i, %if.end.i
  tail call void @rb_erase(ptr noundef %pi_tree_entry.i, ptr noundef %pi_waiters.i) #8
  %48 = ptrtoint ptr %pi_tree_entry.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %44, ptr %pi_tree_entry.i, align 4
  br label %rt_mutex_dequeue_pi.exit

rt_mutex_dequeue_pi.exit:                         ; preds = %rb_erase_cached.exit.i, %if.then42
  %pi_tree_entry.i3 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter, i32 0, i32 1
  %pi_waiters.i4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 130
  %49 = ptrtoint ptr %pi_waiters.i4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pi_waiters.i4, align 4
  %tobool.not2.i.i5 = icmp eq ptr %50, null
  br i1 %tobool.not2.i.i5, label %if.then.i.critedge.i.i29, label %while.body.i.preheader.i9

while.body.i.preheader.i9:                        ; preds = %rt_mutex_dequeue_pi.exit
  %51 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %prio.i, align 4
  %tobool.not.i.i.i7 = icmp sgt i32 %52, -1
  br label %while.body.i.i13

while.body.i.i13:                                 ; preds = %60, %while.body.i.preheader.i9
  %53 = phi ptr [ %63, %60 ], [ %50, %while.body.i.preheader.i9 ]
  %leftmost.0.off03.i.i10 = phi i1 [ %retval.0.i.i4.i21, %60 ], [ true, %while.body.i.preheader.i9 ]
  %prio1.i.i.i11 = getelementptr i8, ptr %53, i32 24
  %54 = ptrtoint ptr %prio1.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %prio1.i.i.i11, align 4
  %cmp.i.i.i12 = icmp slt i32 %52, %55
  br i1 %cmp.i.i.i12, label %__pi_waiter_less.exit.thread.i, label %if.end.i.i.i14

if.end.i.i.i14:                                   ; preds = %while.body.i.i13
  br i1 %tobool.not.i.i.i7, label %__pi_waiter_less.exit.thread7.i, label %__pi_waiter_less.exit.i

__pi_waiter_less.exit.thread7.i:                  ; preds = %if.end.i.i.i14
  %rb_right.i10.i15 = getelementptr inbounds %struct.rb_node, ptr %53, i32 0, i32 1
  br label %60

__pi_waiter_less.exit.i:                          ; preds = %if.end.i.i.i14
  %56 = ptrtoint ptr %deadline1.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %deadline1.i, align 8
  %deadline4.i.i.i16 = getelementptr i8, ptr %53, i32 28
  %58 = ptrtoint ptr %deadline4.i.i.i16 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %deadline4.i.i.i16, align 8
  %sub.i.i.i.i17 = sub i64 %57, %59
  %phi.cmp.i.i18 = icmp slt i64 %sub.i.i.i.i17, 0
  %rb_right.i.i19 = getelementptr inbounds %struct.rb_node, ptr %53, i32 0, i32 1
  br i1 %phi.cmp.i.i18, label %__pi_waiter_less.exit.thread.i, label %60

__pi_waiter_less.exit.thread.i:                   ; preds = %__pi_waiter_less.exit.i, %while.body.i.i13
  %rb_left.i6.i20 = getelementptr inbounds %struct.rb_node, ptr %53, i32 0, i32 2
  br label %60

60:                                               ; preds = %__pi_waiter_less.exit.thread.i, %__pi_waiter_less.exit.i, %__pi_waiter_less.exit.thread7.i
  %retval.0.i.i4.i21 = phi i1 [ %leftmost.0.off03.i.i10, %__pi_waiter_less.exit.thread.i ], [ false, %__pi_waiter_less.exit.i ], [ false, %__pi_waiter_less.exit.thread7.i ]
  %61 = phi ptr [ %rb_left.i6.i20, %__pi_waiter_less.exit.thread.i ], [ %rb_right.i.i19, %__pi_waiter_less.exit.i ], [ %rb_right.i10.i15, %__pi_waiter_less.exit.thread7.i ]
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %tobool.not.i.i22 = icmp eq ptr %63, null
  br i1 %tobool.not.i.i22, label %while.cond.while.end_crit_edge.i.i26, label %while.body.i.i13

while.cond.while.end_crit_edge.i.i26:             ; preds = %60
  %phi.cast.le.i.i23 = ptrtoint ptr %53 to i32
  %64 = ptrtoint ptr %pi_tree_entry.i3 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %phi.cast.le.i.i23, ptr %pi_tree_entry.i3, align 4
  %rb_right.i.i.i24 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %rb_right.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %rb_right.i.i.i24, align 4
  %rb_left.i.i.i25 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter, i32 0, i32 1, i32 2
  %66 = ptrtoint ptr %rb_left.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %rb_left.i.i.i25, align 4
  %67 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %pi_tree_entry.i3, ptr %61, align 4
  br i1 %retval.0.i.i4.i21, label %if.then.i.i.i31, label %rt_mutex_enqueue_pi.exit

if.then.i.critedge.i.i29:                         ; preds = %rt_mutex_dequeue_pi.exit
  %68 = ptrtoint ptr %pi_tree_entry.i3 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %pi_tree_entry.i3, align 4
  %rb_right.i.c.i.i27 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %rb_right.i.c.i.i27 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %rb_right.i.c.i.i27, align 4
  %rb_left.i.c.i.i28 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter, i32 0, i32 1, i32 2
  %70 = ptrtoint ptr %rb_left.i.c.i.i28 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %rb_left.i.c.i.i28, align 4
  %71 = ptrtoint ptr %pi_waiters.i4 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %pi_tree_entry.i3, ptr %pi_waiters.i4, align 4
  br label %if.then.i.i.i31

if.then.i.i.i31:                                  ; preds = %if.then.i.critedge.i.i29, %while.cond.while.end_crit_edge.i.i26
  %rb_leftmost.i.i.i30 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 130, i32 1
  %72 = ptrtoint ptr %rb_leftmost.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %pi_tree_entry.i3, ptr %rb_leftmost.i.i.i30, align 4
  br label %rt_mutex_enqueue_pi.exit

rt_mutex_enqueue_pi.exit:                         ; preds = %if.then.i.i.i31, %while.cond.while.end_crit_edge.i.i26
  tail call void @rb_insert_color(ptr noundef %pi_tree_entry.i3, ptr noundef %pi_waiters.i4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %73 = load i32, ptr @debug_locks, align 4
  %tobool.not.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i, label %if.end.i33, label %land.rhs.i

land.rhs.i:                                       ; preds = %rt_mutex_enqueue_pi.exit
  %dep_map.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 128, i32 4
  %call.i.i32 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  %cmp.not.i = icmp eq i32 %call.i.i32, 0
  br i1 %cmp.not.i, label %do.end.i, label %if.end.i33, !prof !80

do.end.i:                                         ; preds = %land.rhs.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 440, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i33

if.end.i33:                                       ; preds = %do.end.i, %land.rhs.i, %rt_mutex_enqueue_pi.exit
  %74 = ptrtoint ptr %pi_waiters.i4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %pi_waiters.i4, align 4
  %cmp.i.not.i = icmp eq ptr %75, null
  br i1 %cmp.i.not.i, label %rt_mutex_adjust_prio.exit, label %if.then26.i

if.then26.i:                                      ; preds = %if.end.i33
  %rb_leftmost.i.i34 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 130, i32 1
  %76 = ptrtoint ptr %rb_leftmost.i.i34 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rb_leftmost.i.i34, align 4
  %task.i = getelementptr i8, ptr %77, i32 12
  %78 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task.i, align 8
  br label %rt_mutex_adjust_prio.exit

rt_mutex_adjust_prio.exit:                        ; preds = %if.then26.i, %if.end.i33
  %pi_task.0.i = phi ptr [ %79, %if.then26.i ], [ null, %if.end.i33 ]
  tail call void @rt_mutex_setprio(ptr noundef nonnull %3, ptr noundef %pi_task.0.i) #8
  %pi_blocked_on43 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 132
  %80 = ptrtoint ptr %pi_blocked_on43 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pi_blocked_on43, align 32
  br label %if.end50

if.end50:                                         ; preds = %rt_mutex_adjust_prio.exit, %rt_mutex_top_waiter.exit47
  %tobool53.not.in = phi ptr [ %81, %rt_mutex_adjust_prio.exit ], [ %waiter, %rt_mutex_top_waiter.exit47 ]
  %pi_blocked_on.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 132
  %82 = ptrtoint ptr %pi_blocked_on.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pi_blocked_on.i, align 32
  %tobool.not.i36 = icmp eq ptr %83, null
  br i1 %tobool.not.i36, label %task_blocked_on_lock.exit.thread, label %task_blocked_on_lock.exit

task_blocked_on_lock.exit.thread:                 ; preds = %if.end50
  tail call void @_raw_spin_unlock(ptr noundef %pi_lock39) #8
  br label %cleanup

task_blocked_on_lock.exit:                        ; preds = %if.end50
  %tobool53.not = icmp eq ptr %tobool53.not.in, null
  %lock.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %lock.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %pi_lock39) #8
  %tobool54.not = icmp eq ptr %85, null
  %or.cond = select i1 %tobool53.not, i1 true, i1 %tobool54.not
  br i1 %or.cond, label %cleanup, label %if.end56

if.end56:                                         ; preds = %task_blocked_on_lock.exit
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #8
  %86 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #8, !srcloc !83
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %86, 0
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end15.sink.split.i.i.i.i, label %if.else.i.i.i.i, !prof !80

if.else.i.i.i.i:                                  ; preds = %if.end56
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %87 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %87, -1
  br i1 %.not.i.i.i.i, label %get_task_struct.exit, label %if.end15.sink.split.i.i.i.i, !prof !78

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i, %if.end56
  %.sink.i.i.i.i = phi i32 [ 2, %if.end56 ], [ 1, %if.else.i.i.i.i ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #8
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %call59 = tail call fastcc i32 @rt_mutex_adjust_prio_chain(ptr noundef nonnull %3, ptr noundef %lock, ptr noundef nonnull %85, ptr noundef %waiter, ptr noundef %task)
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %get_task_struct.exit, %task_blocked_on_lock.exit, %task_blocked_on_lock.exit.thread, %rt_mutex_enqueue.exit, %if.end
  %retval.0 = phi i32 [ %call59, %get_task_struct.exit ], [ -35, %if.end ], [ 0, %rt_mutex_enqueue.exit ], [ 0, %task_blocked_on_lock.exit ], [ 0, %task_blocked_on_lock.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt_mutex_start_proxy_lock(ptr noundef %lock, ptr noundef %waiter, ptr noundef %task) local_unnamed_addr #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %if.end.i, !prof !80

do.end.i:                                         ; preds = %land.rhs.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 298, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i, %entry
  %call24.i = tail call fastcc i32 @try_to_take_rt_mutex(ptr noundef %lock, ptr noundef %task, ptr noundef null) #8
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.then

if.end27.i:                                       ; preds = %if.end.i
  %call28.i = tail call fastcc i32 @task_blocks_on_rt_mutex(ptr noundef %lock, ptr noundef %waiter, ptr noundef %task) #8
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end27.i
  %owner1.i.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %1 = ptrtoint ptr %owner1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %owner1.i.i, align 4
  %tobool31.not.i = icmp ult ptr %2, inttoptr (i32 2 to ptr)
  br i1 %tobool31.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.i, %if.end.i
  %retval.0.i = phi i32 [ 1, %if.end.i ], [ %call28.i, %land.lhs.true.i ]
  tail call fastcc void @remove_waiter(ptr noundef %lock, ptr noundef %waiter)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.i, %if.end27.i
  %retval.0.i11 = phi i32 [ %retval.0.i, %if.then ], [ 0, %if.end27.i ], [ 0, %land.lhs.true.i ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  ret i32 %retval.0.i11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remove_waiter(ptr noundef %lock, ptr noundef %waiter) unnamed_addr #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rb_leftmost.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not.i89 = icmp eq ptr %1, null
  br i1 %tobool.not.i89, label %rt_mutex_top_waiter.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %lock1.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %lock1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock1.i, align 4
  %cmp.not.i90 = icmp eq ptr %3, %lock
  br i1 %cmp.not.i90, label %rt_mutex_top_waiter.exit, label %do.body5.i, !prof !78

do.body5.i:                                       ; preds = %if.then.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

rt_mutex_top_waiter.exit:                         ; preds = %if.then.i, %entry
  %cmp = icmp ne ptr %1, %waiter
  %owner1.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %4 = ptrtoint ptr %owner1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %owner1.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %and.i = and i32 %6, -2
  %7 = inttoptr i32 %and.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %rt_mutex_top_waiter.exit
  %dep_map = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  %cmp3.not = icmp eq i32 %call.i, 0
  br i1 %cmp3.not, label %do.end, label %if.end, !prof !80

do.end:                                           ; preds = %land.rhs
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1424, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs, %rt_mutex_top_waiter.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i91 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i91 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 128
  tail call void @_raw_spin_lock(ptr noundef %pi_lock) #8
  %13 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %waiter, align 8
  %15 = ptrtoint ptr %waiter to i32
  %cmp.i = icmp eq i32 %14, %15
  br i1 %cmp.i, label %rt_mutex_dequeue.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %waiters.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1
  %16 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i.i = icmp eq ptr %17, %waiter
  br i1 %cmp.i.i, label %if.then.i.i, label %rb_erase_cached.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %call.i.i = tail call ptr @rb_next(ptr noundef %waiter) #8
  %18 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i, ptr %rb_leftmost.i, align 4
  br label %rb_erase_cached.exit.i

rb_erase_cached.exit.i:                           ; preds = %if.then.i.i, %if.end.i
  tail call void @rb_erase(ptr noundef %waiter, ptr noundef %waiters.i) #8
  %19 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %waiter, align 8
  br label %rt_mutex_dequeue.exit

rt_mutex_dequeue.exit:                            ; preds = %rb_erase_cached.exit.i, %if.end
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 132
  %22 = ptrtoint ptr %pi_blocked_on to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %pi_blocked_on, align 32
  %23 = load ptr, ptr %task, align 8
  %pi_lock32 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 128
  tail call void @_raw_spin_unlock(ptr noundef %pi_lock32) #8
  %tobool33.not = icmp eq i32 %and.i, 0
  %brmerge = select i1 %tobool33.not, i1 true, i1 %cmp
  br i1 %brmerge, label %cleanup, label %if.end36

if.end36:                                         ; preds = %rt_mutex_dequeue.exit
  %pi_lock37 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 128
  tail call void @_raw_spin_lock(ptr noundef %pi_lock37) #8
  %pi_tree_entry.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %waiter, i32 0, i32 1
  %24 = ptrtoint ptr %pi_tree_entry.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pi_tree_entry.i, align 4
  %26 = ptrtoint ptr %pi_tree_entry.i to i32
  %cmp.i76 = icmp eq i32 %25, %26
  br i1 %cmp.i76, label %rt_mutex_dequeue_pi.exit, label %if.end.i79

if.end.i79:                                       ; preds = %if.end36
  %pi_waiters.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 130
  %rb_leftmost.i.i77 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 130, i32 1
  %27 = ptrtoint ptr %rb_leftmost.i.i77 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rb_leftmost.i.i77, align 4
  %cmp.i.i78 = icmp eq ptr %28, %pi_tree_entry.i
  br i1 %cmp.i.i78, label %if.then.i.i81, label %rb_erase_cached.exit.i82

if.then.i.i81:                                    ; preds = %if.end.i79
  %call.i.i80 = tail call ptr @rb_next(ptr noundef %pi_tree_entry.i) #8
  %29 = ptrtoint ptr %rb_leftmost.i.i77 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i80, ptr %rb_leftmost.i.i77, align 4
  br label %rb_erase_cached.exit.i82

rb_erase_cached.exit.i82:                         ; preds = %if.then.i.i81, %if.end.i79
  tail call void @rb_erase(ptr noundef %pi_tree_entry.i, ptr noundef %pi_waiters.i) #8
  %30 = ptrtoint ptr %pi_tree_entry.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %26, ptr %pi_tree_entry.i, align 4
  br label %rt_mutex_dequeue_pi.exit

rt_mutex_dequeue_pi.exit:                         ; preds = %rb_erase_cached.exit.i82, %if.end36
  %waiters.i92 = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1
  %31 = ptrtoint ptr %waiters.i92 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %waiters.i92, align 4
  %cmp.i93.not = icmp eq ptr %32, null
  br i1 %cmp.i93.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %rt_mutex_dequeue_pi.exit
  %33 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not.i95 = icmp eq ptr %34, null
  br i1 %tobool.not.i95, label %rt_mutex_top_waiter.exit100, label %if.then.i98

if.then.i98:                                      ; preds = %if.then40
  %lock1.i96 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %lock1.i96 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lock1.i96, align 4
  %cmp.not.i97 = icmp eq ptr %36, %lock
  br i1 %cmp.not.i97, label %rt_mutex_top_waiter.exit100, label %do.body5.i99, !prof !78

do.body5.i99:                                     ; preds = %if.then.i98
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

rt_mutex_top_waiter.exit100:                      ; preds = %if.then.i98, %if.then40
  %pi_tree_entry.i83 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %34, i32 0, i32 1
  %pi_waiters.i84 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 130
  %37 = ptrtoint ptr %pi_waiters.i84 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pi_waiters.i84, align 4
  %tobool.not2.i.i = icmp eq ptr %38, null
  br i1 %tobool.not2.i.i, label %if.then.i.critedge.i.i, label %while.body.i.preheader.i

while.body.i.preheader.i:                         ; preds = %rt_mutex_top_waiter.exit100
  %prio.i.i.i = getelementptr %struct.rt_mutex_waiter, ptr %34, i32 0, i32 5
  %39 = ptrtoint ptr %prio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %prio.i.i.i, align 4
  %tobool.not.i.i.i = icmp sgt i32 %40, -1
  %deadline.i.i.i = getelementptr %struct.rt_mutex_waiter, ptr %34, i32 0, i32 6
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %48, %while.body.i.preheader.i
  %41 = phi ptr [ %51, %48 ], [ %38, %while.body.i.preheader.i ]
  %leftmost.0.off03.i.i = phi i1 [ %retval.0.i.i4.i, %48 ], [ true, %while.body.i.preheader.i ]
  %prio1.i.i.i = getelementptr i8, ptr %41, i32 24
  %42 = ptrtoint ptr %prio1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %prio1.i.i.i, align 4
  %cmp.i.i.i = icmp slt i32 %40, %43
  br i1 %cmp.i.i.i, label %__pi_waiter_less.exit.thread.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i
  br i1 %tobool.not.i.i.i, label %__pi_waiter_less.exit.thread7.i, label %__pi_waiter_less.exit.i

__pi_waiter_less.exit.thread7.i:                  ; preds = %if.end.i.i.i
  %rb_right.i10.i = getelementptr inbounds %struct.rb_node, ptr %41, i32 0, i32 1
  br label %48

__pi_waiter_less.exit.i:                          ; preds = %if.end.i.i.i
  %44 = ptrtoint ptr %deadline.i.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %deadline.i.i.i, align 8
  %deadline4.i.i.i = getelementptr i8, ptr %41, i32 28
  %46 = ptrtoint ptr %deadline4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %deadline4.i.i.i, align 8
  %sub.i.i.i.i = sub i64 %45, %47
  %phi.cmp.i.i = icmp slt i64 %sub.i.i.i.i, 0
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %41, i32 0, i32 1
  br i1 %phi.cmp.i.i, label %__pi_waiter_less.exit.thread.i, label %48

__pi_waiter_less.exit.thread.i:                   ; preds = %__pi_waiter_less.exit.i, %while.body.i.i
  %rb_left.i6.i = getelementptr inbounds %struct.rb_node, ptr %41, i32 0, i32 2
  br label %48

48:                                               ; preds = %__pi_waiter_less.exit.thread.i, %__pi_waiter_less.exit.i, %__pi_waiter_less.exit.thread7.i
  %retval.0.i.i4.i = phi i1 [ %leftmost.0.off03.i.i, %__pi_waiter_less.exit.thread.i ], [ false, %__pi_waiter_less.exit.i ], [ false, %__pi_waiter_less.exit.thread7.i ]
  %49 = phi ptr [ %rb_left.i6.i, %__pi_waiter_less.exit.thread.i ], [ %rb_right.i.i, %__pi_waiter_less.exit.i ], [ %rb_right.i10.i, %__pi_waiter_less.exit.thread7.i ]
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %tobool.not.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %48
  %phi.cast.le.i.i = ptrtoint ptr %41 to i32
  %52 = ptrtoint ptr %pi_tree_entry.i83 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %phi.cast.le.i.i, ptr %pi_tree_entry.i83, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %34, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %34, i32 0, i32 1, i32 2
  %54 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %55 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %pi_tree_entry.i83, ptr %49, align 4
  br i1 %retval.0.i.i4.i, label %if.then.i.i.i, label %rt_mutex_enqueue_pi.exit

if.then.i.critedge.i.i:                           ; preds = %rt_mutex_top_waiter.exit100
  %56 = ptrtoint ptr %pi_tree_entry.i83 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %pi_tree_entry.i83, align 4
  %rb_right.i.c.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %34, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %rb_right.i.c.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %rb_right.i.c.i.i, align 4
  %rb_left.i.c.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %34, i32 0, i32 1, i32 2
  %58 = ptrtoint ptr %rb_left.i.c.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %rb_left.i.c.i.i, align 4
  %59 = ptrtoint ptr %pi_waiters.i84 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %pi_tree_entry.i83, ptr %pi_waiters.i84, align 4
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.critedge.i.i, %while.cond.while.end_crit_edge.i.i
  %rb_leftmost.i.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 130, i32 1
  %60 = ptrtoint ptr %rb_leftmost.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %pi_tree_entry.i83, ptr %rb_leftmost.i.i.i, align 4
  br label %rt_mutex_enqueue_pi.exit

rt_mutex_enqueue_pi.exit:                         ; preds = %if.then.i.i.i, %while.cond.while.end_crit_edge.i.i
  tail call void @rb_insert_color(ptr noundef %pi_tree_entry.i83, ptr noundef %pi_waiters.i84) #8
  br label %if.end42

if.end42:                                         ; preds = %rt_mutex_enqueue_pi.exit, %rt_mutex_dequeue_pi.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %61 = load i32, ptr @debug_locks, align 4
  %tobool.not.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i, label %if.end.i86, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end42
  %dep_map.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 128, i32 4
  %call.i.i85 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  %cmp.not.i = icmp eq i32 %call.i.i85, 0
  br i1 %cmp.not.i, label %do.end.i, label %if.end.i86, !prof !80

do.end.i:                                         ; preds = %land.rhs.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 440, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i86

if.end.i86:                                       ; preds = %do.end.i, %land.rhs.i, %if.end42
  %pi_waiters.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 130
  %62 = ptrtoint ptr %pi_waiters.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %pi_waiters.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %63, null
  br i1 %cmp.i.not.i, label %rt_mutex_adjust_prio.exit, label %if.then26.i

if.then26.i:                                      ; preds = %if.end.i86
  %rb_leftmost.i.i87 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 130, i32 1
  %64 = ptrtoint ptr %rb_leftmost.i.i87 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rb_leftmost.i.i87, align 4
  %task.i = getelementptr i8, ptr %65, i32 12
  %66 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i, align 8
  br label %rt_mutex_adjust_prio.exit

rt_mutex_adjust_prio.exit:                        ; preds = %if.then26.i, %if.end.i86
  %pi_task.0.i = phi ptr [ %67, %if.then26.i ], [ null, %if.end.i86 ]
  tail call void @rt_mutex_setprio(ptr noundef %7, ptr noundef %pi_task.0.i) #8
  %pi_blocked_on.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 132
  %68 = ptrtoint ptr %pi_blocked_on.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pi_blocked_on.i, align 32
  %tobool.not.i88 = icmp eq ptr %69, null
  br i1 %tobool.not.i88, label %task_blocked_on_lock.exit.thread, label %task_blocked_on_lock.exit

task_blocked_on_lock.exit.thread:                 ; preds = %rt_mutex_adjust_prio.exit
  tail call void @_raw_spin_unlock(ptr noundef %pi_lock37) #8
  br label %cleanup

task_blocked_on_lock.exit:                        ; preds = %rt_mutex_adjust_prio.exit
  %lock.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lock.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %pi_lock37) #8
  %tobool45.not = icmp eq ptr %71, null
  br i1 %tobool45.not, label %cleanup, label %if.end47

if.end47:                                         ; preds = %task_blocked_on_lock.exit
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #8
  %72 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #8, !srcloc !83
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %72, 0
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end15.sink.split.i.i.i.i, label %if.else.i.i.i.i, !prof !80

if.else.i.i.i.i:                                  ; preds = %if.end47
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %73 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %73, -1
  br i1 %.not.i.i.i.i, label %get_task_struct.exit, label %if.end15.sink.split.i.i.i.i, !prof !78

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i, %if.end47
  %.sink.i.i.i.i = phi i32 [ 2, %if.end47 ], [ 1, %if.else.i.i.i.i ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #8
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %74 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task, align 8
  %76 = tail call fastcc i32 @rt_mutex_adjust_prio_chain(ptr noundef nonnull %7, ptr noundef %lock, ptr noundef nonnull %71, ptr noundef null, ptr noundef %75)
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %get_task_struct.exit, %task_blocked_on_lock.exit, %task_blocked_on_lock.exit.thread, %rt_mutex_dequeue.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt_mutex_wait_proxy_lock(ptr noundef %lock, ptr noundef %to, ptr noundef %waiter) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  br label %__here

__here:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i67 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i67 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@rt_mutex_wait_proxy_lock, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !84
  %call60 = tail call fastcc i32 @rt_mutex_slowlock_block(ptr noundef %lock, ptr noundef null, i32 noundef 1, ptr noundef %to, ptr noundef %waiter)
  %owner1.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %waiters.i.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1
  %7 = ptrtoint ptr %waiters.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %waiters.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, null
  br i1 %cmp.i.not.i, label %do.end.i, label %fixup_rt_mutex_waiters.exit

do.end.i:                                         ; preds = %__here
  %9 = ptrtoint ptr %owner1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %owner1.i, align 4
  %and.i = and i32 %10, 1
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %fixup_rt_mutex_waiters.exit, label %do.body8.i

do.body8.i:                                       ; preds = %do.end.i
  %and9.i = and i32 %10, -2
  %11 = ptrtoint ptr %owner1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %and9.i, ptr %owner1.i, align 4
  br label %fixup_rt_mutex_waiters.exit

fixup_rt_mutex_waiters.exit:                      ; preds = %do.body8.i, %do.end.i, %__here
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  ret i32 %call60
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt_mutex_slowlock_block(ptr noundef %lock, ptr nocapture noundef readnone %ww_ctx, i32 noundef %state, ptr noundef readonly %timeout, ptr noundef %waiter) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i193 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i193 to ptr
  %task194 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task194 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task194, align 8
  %call1195 = tail call fastcc i32 @try_to_take_rt_mutex(ptr noundef %lock, ptr noundef %3, ptr noundef %waiter)
  %tobool.not196 = icmp eq i32 %call1195, 0
  br i1 %tobool.not196, label %if.end.lr.ph, label %__here140

if.end.lr.ph:                                     ; preds = %entry
  %tobool2.not = icmp eq ptr %timeout, null
  %task3 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %timeout, i32 0, i32 1
  %and.i178 = and i32 %state, 257
  %tobool.not.i = icmp eq i32 %and.i178, 0
  %and4.i = and i32 %state, 1
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %rb_leftmost.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1, i32 1
  %owner1.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %and = and i32 %state, 204
  %tobool23.not = icmp eq i32 %and, 0
  br label %if.end

if.end:                                           ; preds = %__here, %if.end.lr.ph
  %task197 = phi ptr [ %task194, %if.end.lr.ph ], [ %task, %__here ]
  br i1 %tobool2.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %task3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task3, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %__here140, label %if.end6

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %6 = ptrtoint ptr %task197 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task197, align 8
  br i1 %tobool.not.i, label %if.end12, label %if.end.i

if.end.i:                                         ; preds = %if.end6
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %12 = and i32 %11, 256
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end3.i, !prof !78

signal_pending.exit.i:                            ; preds = %if.end.i
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %9, align 4
  %and1.i.i.i.i.i.i = and i32 %14, 1
  %tobool1.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i, label %if.end12, label %if.end3.i

if.end3.i:                                        ; preds = %signal_pending.exit.i, %if.end.i
  br i1 %tobool5.not.i, label %signal_pending_state.exit, label %__here140

signal_pending_state.exit:                        ; preds = %if.end3.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 116, i32 1
  %15 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %signal.i.i, align 4
  %17 = and i32 %16, 256
  %tobool10.not = icmp eq i32 %17, 0
  br i1 %tobool10.not, label %if.end12, label %__here140

if.end12:                                         ; preds = %signal_pending_state.exit, %signal_pending.exit.i, %if.end6
  %18 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rb_leftmost.i, align 4
  %tobool.not.i179 = icmp eq ptr %19, null
  br i1 %tobool.not.i179, label %rt_mutex_top_waiter.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end12
  %lock1.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %lock1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lock1.i, align 4
  %cmp.not.i = icmp eq ptr %21, %lock
  br i1 %cmp.not.i, label %rt_mutex_top_waiter.exit, label %do.body5.i, !prof !78

do.body5.i:                                       ; preds = %if.then.i
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

rt_mutex_top_waiter.exit:                         ; preds = %if.then.i, %if.end12
  %cmp = icmp eq ptr %19, %waiter
  br i1 %cmp, label %if.end16, label %if.end16.thread

if.end16.thread:                                  ; preds = %rt_mutex_top_waiter.exit
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %if.then19

if.end16:                                         ; preds = %rt_mutex_top_waiter.exit
  %22 = ptrtoint ptr %owner1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %owner1.i, align 4
  %24 = ptrtoint ptr %23 to i32
  %and.i180 = and i32 %24, -2
  %25 = inttoptr i32 %and.i180 to ptr
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %tobool17.not = icmp eq i32 %and.i180, 0
  br i1 %tobool17.not, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end16
  %26 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !85
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %rcu_read_lock.exit.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool.not.i.i181 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i181, label %rcu_read_lock.exit.i, label %land.lhs.true2.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %rcu_read_lock.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i, %land.lhs.true.i.i, %lor.lhs.false
  %stack.i.i.i182 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %owner1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %owner1.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %and.i25.i = and i32 %32, -2
  %33 = inttoptr i32 %and.i25.i to ptr
  %cmp.not26.i = icmp eq ptr %33, %25
  br i1 %cmp.not26.i, label %if.end.lr.ph.i, label %for.end.i

if.end.lr.ph.i:                                   ; preds = %rcu_read_lock.exit.i
  %on_cpu.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 5
  br label %if.end.i183

if.end.i183:                                      ; preds = %do.end.i, %if.end.lr.ph.i
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !86
  %34 = ptrtoint ptr %on_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %on_cpu.i.i, align 4
  %tobool.not.i15.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i15.i, label %for.end.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i183
  %36 = ptrtoint ptr %stack.i.i.i182 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %stack.i.i.i182, align 4
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %cpu.i.i.i, align 4
  %40 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 16384
  %44 = and i32 %43, 2
  %tobool.i.not.i = icmp eq i32 %44, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false3.i, label %for.end.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %45 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rb_leftmost.i, align 4
  %cmp.i.i = icmp eq ptr %46, %waiter
  br i1 %cmp.i.i, label %do.end.i, label %for.end.i

do.end.i:                                         ; preds = %lor.lhs.false3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !88
  %47 = ptrtoint ptr %owner1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %owner1.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %and.i.i = and i32 %49, -2
  %50 = inttoptr i32 %and.i.i to ptr
  %cmp.not.i184 = icmp eq ptr %50, %25
  br i1 %cmp.not.i184, label %if.end.i183, label %for.end.i

for.end.i:                                        ; preds = %do.end.i, %lor.lhs.false3.i, %lor.lhs.false.i, %if.end.i183, %rcu_read_lock.exit.i
  %cmp.not.lcssa.i = phi i1 [ true, %rcu_read_lock.exit.i ], [ true, %do.end.i ], [ false, %lor.lhs.false3.i ], [ false, %lor.lhs.false.i ], [ false, %if.end.i183 ]
  %call.i16.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i16.i, label %rtmutex_spin_on_owner.exit, label %land.lhs.true.i19.i

land.lhs.true.i19.i:                              ; preds = %for.end.i
  %call1.i17.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool.not.i18.i = icmp eq i32 %call1.i17.i, 0
  br i1 %tobool.not.i18.i, label %rtmutex_spin_on_owner.exit, label %land.lhs.true2.i21.i

land.lhs.true2.i21.i:                             ; preds = %land.lhs.true.i19.i
  %.b4.i20.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20.i, label %rtmutex_spin_on_owner.exit, label %if.then.i22.i

if.then.i22.i:                                    ; preds = %land.lhs.true2.i21.i
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #8
  br label %rtmutex_spin_on_owner.exit

rtmutex_spin_on_owner.exit:                       ; preds = %if.then.i22.i, %land.lhs.true2.i21.i, %land.lhs.true.i19.i, %for.end.i
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !89
  %51 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i.i.i.i.i23.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i23.i to ptr
  %preempt_count.i.i.i.i24.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i24.i, align 4
  %sub.i.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i24.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br i1 %cmp.not.lcssa.i, label %if.end20, label %if.then19

if.then19:                                        ; preds = %rtmutex_spin_on_owner.exit, %if.end16, %if.end16.thread
  tail call void @schedule() #8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %rtmutex_spin_on_owner.exit
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  br i1 %tobool23.not, label %__here, label %land.rhs

land.rhs:                                         ; preds = %if.end20
  %.b177 = load i1, ptr @rt_mutex_slowlock_block.__already_done, align 1
  br i1 %.b177, label %__here, label %if.then31, !prof !78

if.then31:                                        ; preds = %land.rhs
  store i1 true, ptr @rt_mutex_slowlock_block.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1521, i32 noundef 9, ptr noundef null) #8
  br label %__here

__here:                                           ; preds = %if.then31, %land.rhs, %if.end20
  %55 = ptrtoint ptr %task197 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task197, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 212
  %57 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 ptrtoint (ptr blockaddress(@rt_mutex_slowlock_block, %__here) to i32), ptr %task_state_change, align 4
  %58 = load ptr, ptr %task197, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 %state, ptr %58, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !90
  %60 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task, align 8
  %call1 = tail call fastcc i32 @try_to_take_rt_mutex(ptr noundef %lock, ptr noundef %63, ptr noundef %waiter)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %__here140

__here140:                                        ; preds = %__here, %signal_pending_state.exit, %if.end3.i, %land.lhs.true, %entry
  %task.lcssa = phi ptr [ %task194, %entry ], [ %task197, %if.end3.i ], [ %task, %__here ], [ %task197, %land.lhs.true ], [ %task197, %signal_pending_state.exit ]
  %ret.0 = phi i32 [ 0, %entry ], [ -4, %if.end3.i ], [ 0, %__here ], [ -110, %land.lhs.true ], [ -4, %signal_pending_state.exit ]
  %64 = ptrtoint ptr %task.lcssa to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task.lcssa, align 8
  %task_state_change144 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 212
  %66 = ptrtoint ptr %task_state_change144 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 ptrtoint (ptr blockaddress(@rt_mutex_slowlock_block, %__here140) to i32), ptr %task_state_change144, align 4
  %67 = load ptr, ptr %task.lcssa, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 0, ptr %67, align 128
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rt_mutex_cleanup_proxy_lock(ptr noundef %lock, ptr noundef %waiter) local_unnamed_addr #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i13 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i13 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %call1 = tail call fastcc i32 @try_to_take_rt_mutex(ptr noundef %lock, ptr noundef %3, ptr noundef %waiter)
  %owner1.i14 = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %4 = ptrtoint ptr %owner1.i14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %owner1.i14, align 4
  %6 = ptrtoint ptr %5 to i32
  %and.i15 = and i32 %6, -2
  %7 = inttoptr i32 %and.i15 to ptr
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %9, %7
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @remove_waiter(ptr noundef %lock, ptr noundef %waiter)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %waiters.i.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1
  %10 = ptrtoint ptr %waiters.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %waiters.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, null
  br i1 %cmp.i.not.i, label %do.end.i, label %fixup_rt_mutex_waiters.exit

do.end.i:                                         ; preds = %if.end
  %12 = ptrtoint ptr %owner1.i14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %owner1.i14, align 4
  %and.i = and i32 %13, 1
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %fixup_rt_mutex_waiters.exit, label %do.body8.i

do.body8.i:                                       ; preds = %do.end.i
  %and9.i = and i32 %13, -2
  %14 = ptrtoint ptr %owner1.i14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %and9.i, ptr %owner1.i14, align 4
  br label %fixup_rt_mutex_waiters.exit

fixup_rt_mutex_waiters.exit:                      ; preds = %do.body8.i, %do.end.i, %if.end
  %15 = xor i1 %cmp.not, true
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt_mutex_adjust_pi(ptr noundef %task) local_unnamed_addr #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 128
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pi_lock) #8
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 132
  %0 = ptrtoint ptr %pi_blocked_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi_blocked_on, align 32
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %prio1.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 13
  %2 = ptrtoint ptr %prio1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prio1.i, align 8
  %cmp.i.i = icmp sgt i32 %3, 99
  %..i = select i1 %cmp.i.i, i32 120, i32 %3
  %deadline3 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 20, i32 7
  %4 = ptrtoint ptr %deadline3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %deadline3, align 8
  %prio.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prio.i, align 4
  %cmp.not.i = icmp eq i32 %7, %..i
  br i1 %cmp.not.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %lor.lhs.false
  %tobool.not.i = icmp sgt i32 %..i, -1
  br i1 %tobool.not.i, label %do.body6, label %rt_mutex_waiter_equal.exit

rt_mutex_waiter_equal.exit:                       ; preds = %if.end.i
  %deadline.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %deadline.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %deadline.i, align 8
  %cmp5.i.not = icmp eq i64 %9, %5
  br i1 %cmp5.i.not, label %do.body6, label %if.end

do.body6:                                         ; preds = %rt_mutex_waiter_equal.exit, %if.end.i, %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %rt_mutex_waiter_equal.exit, %lor.lhs.false
  %lock = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock, i32 noundef %call) #8
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #8, !srcloc !83
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end15.sink.split.i.i.i.i, label %if.else.i.i.i.i, !prof !80

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %get_task_struct.exit, label %if.end15.sink.split.i.i.i.i, !prof !78

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i, %if.end
  %.sink.i.i.i.i = phi i32 [ 2, %if.end ], [ 1, %if.else.i.i.i.i ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #8
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i
  %14 = tail call fastcc i32 @rt_mutex_adjust_prio_chain(ptr noundef %task, ptr noundef null, ptr noundef %11, ptr noundef null, ptr noundef %task)
  br label %cleanup

cleanup:                                          ; preds = %get_task_struct.exit, %do.body6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt_mutex_adjust_prio_chain(ptr noundef %task, ptr noundef %orig_lock, ptr noundef readnone %next_lock, ptr noundef readnone %orig_waiter, ptr noundef %top_task) unnamed_addr #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ne ptr %orig_waiter, null
  %0 = load i32, ptr @max_lock_depth, align 4
  %cmp305 = icmp slt i32 %0, 1
  br i1 %cmp305, label %if.then, label %retry.preheader.lr.ph

retry.preheader.lr.ph:                            ; preds = %entry
  %tobool8.not = icmp eq ptr %orig_waiter, null
  %owner1.i = getelementptr inbounds %struct.rt_mutex_base, ptr %orig_lock, i32 0, i32 2
  br label %retry.preheader

retry.preheader:                                  ; preds = %again.backedge, %retry.preheader.lr.ph
  %inc310 = phi i32 [ 1, %retry.preheader.lr.ph ], [ %inc, %again.backedge ]
  %requeue.0.off0309 = phi i1 [ true, %retry.preheader.lr.ph ], [ %requeue.2.off0.mux221, %again.backedge ]
  %top_waiter.0308 = phi ptr [ %orig_waiter, %retry.preheader.lr.ph ], [ %top_waiter.0.be, %again.backedge ]
  %task.addr.0307 = phi ptr [ %task, %retry.preheader.lr.ph ], [ %task.addr.0.be, %again.backedge ]
  %next_lock.addr.0306 = phi ptr [ %next_lock, %retry.preheader.lr.ph ], [ %next_lock.addr.0.be, %again.backedge ]
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %task.addr.0307, i32 0, i32 128
  tail call void @_raw_spin_lock_irq(ptr noundef %pi_lock) #8
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, ptr %task.addr.0307, i32 0, i32 132
  %1 = ptrtoint ptr %pi_blocked_on to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pi_blocked_on, align 32
  %tobool.not288 = icmp eq ptr %2, null
  br i1 %tobool.not288, label %out_unlock_pi, label %if.end7.lr.ph

if.end7.lr.ph:                                    ; preds = %retry.preheader
  %tobool17.not = icmp eq ptr %top_waiter.0308, null
  %pi_waiters.i123 = getelementptr inbounds %struct.task_struct, ptr %task.addr.0307, i32 0, i32 130
  %rb_leftmost.i = getelementptr inbounds %struct.task_struct, ptr %task.addr.0307, i32 0, i32 130, i32 1
  %prio1.i = getelementptr inbounds %struct.task_struct, ptr %task.addr.0307, i32 0, i32 13
  %deadline34 = getelementptr inbounds %struct.task_struct, ptr %task.addr.0307, i32 0, i32 20, i32 7
  br label %if.end7

if.then:                                          ; preds = %again.backedge, %entry
  %task.addr.0.lcssa = phi ptr [ %task, %entry ], [ %task.addr.0.be, %again.backedge ]
  %.lcssa265 = phi i32 [ %0, %entry ], [ %47, %again.backedge ]
  %3 = load i32, ptr @rt_mutex_adjust_prio_chain.prev_max, align 4
  %cmp1.not = icmp eq i32 %3, %.lcssa265
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 %.lcssa265, ptr @rt_mutex_adjust_prio_chain.prev_max, align 4
  %comm = getelementptr inbounds %struct.task_struct, ptr %top_task, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %top_task, i32 0, i32 68
  %4 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid.i, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %.lcssa265, ptr noundef %comm, i32 noundef %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %task.addr.0.lcssa, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #8, !srcloc !92
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %cleanup, label %if.then10.i.i.i.i, !prof !78

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @__put_task_struct(ptr noundef %task.addr.0.lcssa) #8
  br label %cleanup

if.end7:                                          ; preds = %if.then46, %if.end7.lr.ph
  %7 = phi ptr [ %2, %if.end7.lr.ph ], [ %25, %if.then46 ]
  %requeue.1.off0289 = phi i1 [ %requeue.0.off0309, %if.end7.lr.ph ], [ %requeue.2.off0.mux221, %if.then46 ]
  br i1 %tobool8.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %8 = ptrtoint ptr %owner1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %owner1.i, align 4
  %tobool10.not = icmp ult ptr %9, inttoptr (i32 2 to ptr)
  br i1 %tobool10.not, label %out_unlock_pi, label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end7
  %lock13 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %lock13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock13, align 4
  %cmp14.not = icmp eq ptr %next_lock.addr.0306, %11
  br i1 %cmp14.not, label %if.end16, label %out_unlock_pi

if.end16:                                         ; preds = %if.end12
  br i1 %tobool17.not, label %if.end30, label %if.then18

if.then18:                                        ; preds = %if.end16
  %12 = ptrtoint ptr %pi_waiters.i123 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %pi_waiters.i123, align 4
  %cmp.i124.not = icmp eq ptr %13, null
  br i1 %cmp.i124.not, label %out_unlock_pi, label %if.end22

if.end22:                                         ; preds = %if.then18
  %14 = ptrtoint ptr %rb_leftmost.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rb_leftmost.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 -12
  %cmp24.not = icmp eq ptr %top_waiter.0308, %add.ptr.i
  %brmerge = or i1 %cmp.i, %cmp24.not
  %requeue.1.off0.mux = select i1 %cmp24.not, i1 %requeue.1.off0289, i1 false
  br i1 %brmerge, label %if.end30, label %out_unlock_pi

if.end30:                                         ; preds = %if.end22, %if.end16
  %requeue.2.off0 = phi i1 [ %requeue.1.off0.mux, %if.end22 ], [ %requeue.1.off0289, %if.end16 ]
  %16 = ptrtoint ptr %prio1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prio1.i, align 8
  %cmp.i.i = icmp sgt i32 %17, 99
  %..i = select i1 %cmp.i.i, i32 120, i32 %17
  %18 = ptrtoint ptr %deadline34 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %deadline34, align 8
  %prio.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 5
  %20 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prio.i, align 4
  %cmp.not.i = icmp eq i32 %21, %..i
  br i1 %cmp.not.i, label %if.end.i, label %if.end42

if.end.i:                                         ; preds = %if.end30
  %tobool.not.i = icmp sgt i32 %..i, -1
  br i1 %tobool.not.i, label %rt_mutex_waiter_equal.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %deadline.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 6
  %22 = ptrtoint ptr %deadline.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %deadline.i, align 8
  %cmp5.i = icmp eq i64 %23, %19
  %conv.i = zext i1 %cmp5.i to i32
  br label %rt_mutex_waiter_equal.exit

rt_mutex_waiter_equal.exit:                       ; preds = %if.then3.i, %if.end.i
  %retval.0.i = phi i32 [ %conv.i, %if.then3.i ], [ 1, %if.end.i ]
  %tobool36.not = icmp eq i32 %retval.0.i, 0
  %brmerge7 = or i1 %cmp.i, %tobool36.not
  %requeue.2.off0.mux = select i1 %tobool36.not, i1 %requeue.2.off0, i1 false
  br i1 %brmerge7, label %if.end42, label %out_unlock_pi

if.end42:                                         ; preds = %rt_mutex_waiter_equal.exit, %if.end30
  %requeue.2.off0.mux221 = phi i1 [ %requeue.2.off0.mux, %rt_mutex_waiter_equal.exit ], [ %requeue.2.off0, %if.end30 ]
  %call44 = tail call i32 @_raw_spin_trylock(ptr noundef %next_lock.addr.0306) #8
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.end57

if.then46:                                        ; preds = %if.end42
  tail call void @_raw_spin_unlock_irq(ptr noundef %pi_lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !95
  tail call void @_raw_spin_lock_irq(ptr noundef %pi_lock) #8
  %24 = ptrtoint ptr %pi_blocked_on to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pi_blocked_on, align 32
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %out_unlock_pi, label %if.end7

if.end57:                                         ; preds = %if.end42
  %prio.i.le = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 5
  %cmp58 = icmp eq ptr %next_lock.addr.0306, %orig_lock
  br i1 %cmp58, label %if.then61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end57
  %owner1.i125 = getelementptr inbounds %struct.rt_mutex_base, ptr %next_lock.addr.0306, i32 0, i32 2
  %26 = ptrtoint ptr %owner1.i125 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %owner1.i125, align 4
  %28 = ptrtoint ptr %27 to i32
  %and.i126 = and i32 %28, -2
  %29 = inttoptr i32 %and.i126 to ptr
  %cmp60 = icmp eq ptr %29, %top_task
  br i1 %cmp60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %lor.lhs.false, %if.end57
  %.lcssa.lcssa = phi ptr [ %next_lock.addr.0306, %lor.lhs.false ], [ %orig_lock, %if.end57 ]
  tail call void @_raw_spin_unlock(ptr noundef %.lcssa.lcssa) #8
  br label %out_unlock_pi

if.end63:                                         ; preds = %lor.lhs.false
  br i1 %requeue.2.off0.mux221, label %if.end82, label %if.then65

if.then65:                                        ; preds = %if.end63
  tail call void @_raw_spin_unlock(ptr noundef %pi_lock) #8
  %usage.i127 = getelementptr inbounds %struct.task_struct, ptr %task.addr.0307, i32 0, i32 2
  %call.i.i.i.i.i.i128 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i127, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @llvm.prefetch.p0(ptr %usage.i127, i32 1, i32 3, i32 1) #8
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i127, ptr %usage.i127, i32 1, ptr elementtype(i32) %usage.i127) #8, !srcloc !92
  %asmresult.i.i.i.i.i.i.i129 = extractvalue { i32, i32, i32 } %30, 0
  %cmp.i.i.i.i130 = icmp eq i32 %asmresult.i.i.i.i.i.i.i129, 1
  br i1 %cmp.i.i.i.i130, label %if.then.i134, label %if.end5.i.i.i.i132

if.end5.i.i.i.i132:                               ; preds = %if.then65
  %.not.i.i.i.i131 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i129, 0
  br i1 %.not.i.i.i.i131, label %put_task_struct.exit136, label %if.then10.i.i.i.i133, !prof !78

if.then10.i.i.i.i133:                             ; preds = %if.end5.i.i.i.i132
  tail call void @refcount_warn_saturate(ptr noundef %usage.i127, i32 noundef 3) #8
  br label %put_task_struct.exit136

if.then.i134:                                     ; preds = %if.then65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @__put_task_struct(ptr noundef %task.addr.0307) #8
  br label %put_task_struct.exit136

put_task_struct.exit136:                          ; preds = %if.then.i134, %if.then10.i.i.i.i133, %if.end5.i.i.i.i132
  %31 = ptrtoint ptr %owner1.i125 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %owner1.i125, align 4
  %tobool68.not = icmp ult ptr %32, inttoptr (i32 2 to ptr)
  br i1 %tobool68.not, label %if.then69, label %if.end71

if.then69:                                        ; preds = %put_task_struct.exit136
  tail call void @_raw_spin_unlock_irq(ptr noundef %next_lock.addr.0306) #8
  br label %cleanup

if.end71:                                         ; preds = %put_task_struct.exit136
  %33 = ptrtoint ptr %owner1.i125 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %owner1.i125, align 4
  %35 = ptrtoint ptr %34 to i32
  %and.i140 = and i32 %35, -2
  %36 = inttoptr i32 %and.i140 to ptr
  %usage.i141 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 2
  %call.i.i.i.i.i.i142 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i141, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage.i141, i32 1, i32 3, i32 1) #8
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i141, ptr %usage.i141, i32 1, ptr elementtype(i32) %usage.i141) #8, !srcloc !83
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end15.sink.split.i.i.i.i, label %if.else.i.i.i.i, !prof !80

if.else.i.i.i.i:                                  ; preds = %if.end71
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %38 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  %.not.i.i.i.i143 = icmp sgt i32 %38, -1
  br i1 %.not.i.i.i.i143, label %get_task_struct.exit, label %if.end15.sink.split.i.i.i.i, !prof !78

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i, %if.end71
  %.sink.i.i.i.i = phi i32 [ 2, %if.end71 ], [ 1, %if.else.i.i.i.i ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i141, i32 noundef %.sink.i.i.i.i) #8
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i
  %pi_lock74 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 128
  tail call void @_raw_spin_lock(ptr noundef %pi_lock74) #8
  %pi_blocked_on.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 132
  %39 = ptrtoint ptr %pi_blocked_on.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pi_blocked_on.i, align 32
  %tobool.not.i10 = icmp eq ptr %40, null
  br i1 %tobool.not.i10, label %task_blocked_on_lock.exit, label %cond.true.i

cond.true.i:                                      ; preds = %get_task_struct.exit
  %lock.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lock.i, align 4
  br label %task_blocked_on_lock.exit

task_blocked_on_lock.exit:                        ; preds = %cond.true.i, %get_task_struct.exit
  %cond.i = phi ptr [ %42, %cond.true.i ], [ null, %get_task_struct.exit ]
  %rb_leftmost.i144 = getelementptr inbounds %struct.rt_mutex_base, ptr %next_lock.addr.0306, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %rb_leftmost.i144 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rb_leftmost.i144, align 4
  %tobool.not.i145 = icmp eq ptr %44, null
  br i1 %tobool.not.i145, label %rt_mutex_top_waiter.exit, label %if.then.i147

if.then.i147:                                     ; preds = %task_blocked_on_lock.exit
  %lock1.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %lock1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lock1.i, align 4
  %cmp.not.i146 = icmp eq ptr %46, %next_lock.addr.0306
  br i1 %cmp.not.i146, label %rt_mutex_top_waiter.exit, label %do.body5.i, !prof !78

do.body5.i:                                       ; preds = %if.then.i147
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

rt_mutex_top_waiter.exit:                         ; preds = %if.then.i147, %task_blocked_on_lock.exit
  tail call void @_raw_spin_unlock(ptr noundef %pi_lock74) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %next_lock.addr.0306) #8
  %tobool79.not = icmp eq ptr %cond.i, null
  br i1 %tobool79.not, label %out_put_task.loopexit, label %again.backedge

again.backedge:                                   ; preds = %rt_mutex_top_waiter.exit206, %rt_mutex_top_waiter.exit
  %next_lock.addr.0.be = phi ptr [ %cond.i, %rt_mutex_top_waiter.exit ], [ %cond.i120, %rt_mutex_top_waiter.exit206 ]
  %task.addr.0.be = phi ptr [ %36, %rt_mutex_top_waiter.exit ], [ %97, %rt_mutex_top_waiter.exit206 ]
  %top_waiter.0.be = phi ptr [ %44, %rt_mutex_top_waiter.exit ], [ %185, %rt_mutex_top_waiter.exit206 ]
  %inc = add i32 %inc310, 1
  %47 = load i32, ptr @max_lock_depth, align 4
  %cmp = icmp sgt i32 %inc, %47
  br i1 %cmp, label %if.then, label %retry.preheader

if.end82:                                         ; preds = %if.end63
  %rb_leftmost.i148 = getelementptr inbounds %struct.rt_mutex_base, ptr %next_lock.addr.0306, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %rb_leftmost.i148 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rb_leftmost.i148, align 4
  %tobool.not.i149 = icmp eq ptr %49, null
  br i1 %tobool.not.i149, label %rt_mutex_top_waiter.exit154, label %if.then.i152

if.then.i152:                                     ; preds = %if.end82
  %lock1.i150 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %lock1.i150 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lock1.i150, align 4
  %cmp.not.i151 = icmp eq ptr %51, %next_lock.addr.0306
  br i1 %cmp.not.i151, label %rt_mutex_top_waiter.exit154, label %do.body5.i153, !prof !78

do.body5.i153:                                    ; preds = %if.then.i152
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

rt_mutex_top_waiter.exit154:                      ; preds = %if.then.i152, %if.end82
  %52 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %7, align 8
  %54 = ptrtoint ptr %7 to i32
  %cmp.i11 = icmp eq i32 %53, %54
  br i1 %cmp.i11, label %rt_mutex_dequeue.exit, label %if.end.i13

if.end.i13:                                       ; preds = %rt_mutex_top_waiter.exit154
  %waiters.i = getelementptr inbounds %struct.rt_mutex_base, ptr %next_lock.addr.0306, i32 0, i32 1
  %cmp.i.i12 = icmp eq ptr %49, %7
  br i1 %cmp.i.i12, label %if.then.i.i, label %rb_erase_cached.exit.i

if.then.i.i:                                      ; preds = %if.end.i13
  %call.i.i = tail call ptr @rb_next(ptr noundef nonnull %7) #8
  %55 = ptrtoint ptr %rb_leftmost.i148 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i.i, ptr %rb_leftmost.i148, align 4
  br label %rb_erase_cached.exit.i

rb_erase_cached.exit.i:                           ; preds = %if.then.i.i, %if.end.i13
  tail call void @rb_erase(ptr noundef nonnull %7, ptr noundef %waiters.i) #8
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %54, ptr %7, align 8
  br label %rt_mutex_dequeue.exit

rt_mutex_dequeue.exit:                            ; preds = %rb_erase_cached.exit.i, %rt_mutex_top_waiter.exit154
  %57 = ptrtoint ptr %prio1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %prio1.i, align 8
  %cmp.i.i.i = icmp sgt i32 %58, 99
  %..i.i = select i1 %cmp.i.i.i, i32 120, i32 %58
  %59 = ptrtoint ptr %prio.i.le to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %..i.i, ptr %prio.i.le, align 4
  %60 = ptrtoint ptr %deadline34 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %deadline34, align 8
  %deadline1.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 6
  %62 = ptrtoint ptr %deadline1.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %deadline1.i, align 8
  %waiters.i16 = getelementptr inbounds %struct.rt_mutex_base, ptr %next_lock.addr.0306, i32 0, i32 1
  %63 = ptrtoint ptr %waiters.i16 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %waiters.i16, align 4
  %tobool.not2.i.i = icmp eq ptr %64, null
  br i1 %tobool.not2.i.i, label %if.then.i.critedge.i.i, label %while.body.i.preheader.i

while.body.i.preheader.i:                         ; preds = %rt_mutex_dequeue.exit
  %tobool.not.i.i.i = icmp sgt i32 %..i.i, -1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %70, %while.body.i.preheader.i
  %65 = phi ptr [ %73, %70 ], [ %64, %while.body.i.preheader.i ]
  %leftmost.0.off03.i.i = phi i1 [ %retval.0.i.i4.i, %70 ], [ true, %while.body.i.preheader.i ]
  %prio1.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %prio1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %prio1.i.i.i, align 4
  %cmp.i.i.i17 = icmp slt i32 %..i.i, %67
  br i1 %cmp.i.i.i17, label %__waiter_less.exit.thread.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i
  br i1 %tobool.not.i.i.i, label %__waiter_less.exit.thread7.i, label %__waiter_less.exit.i

__waiter_less.exit.thread7.i:                     ; preds = %if.end.i.i.i
  %rb_right.i10.i = getelementptr inbounds %struct.rb_node, ptr %65, i32 0, i32 1
  br label %70

__waiter_less.exit.i:                             ; preds = %if.end.i.i.i
  %deadline4.i.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %65, i32 0, i32 6
  %68 = ptrtoint ptr %deadline4.i.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %deadline4.i.i.i, align 8
  %sub.i.i.i.i = sub i64 %61, %69
  %phi.cmp.i.i = icmp slt i64 %sub.i.i.i.i, 0
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %65, i32 0, i32 1
  br i1 %phi.cmp.i.i, label %__waiter_less.exit.thread.i, label %70

__waiter_less.exit.thread.i:                      ; preds = %__waiter_less.exit.i, %while.body.i.i
  %rb_left.i6.i = getelementptr inbounds %struct.rb_node, ptr %65, i32 0, i32 2
  br label %70

70:                                               ; preds = %__waiter_less.exit.thread.i, %__waiter_less.exit.i, %__waiter_less.exit.thread7.i
  %retval.0.i.i4.i = phi i1 [ %leftmost.0.off03.i.i, %__waiter_less.exit.thread.i ], [ false, %__waiter_less.exit.i ], [ false, %__waiter_less.exit.thread7.i ]
  %71 = phi ptr [ %rb_left.i6.i, %__waiter_less.exit.thread.i ], [ %rb_right.i.i, %__waiter_less.exit.i ], [ %rb_right.i10.i, %__waiter_less.exit.thread7.i ]
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %tobool.not.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %70
  %phi.cast.le.i.i = ptrtoint ptr %65 to i32
  %74 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %phi.cast.le.i.i, ptr %7, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1
  %75 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 2
  %76 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %77 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %7, ptr %71, align 4
  br i1 %retval.0.i.i4.i, label %if.then.i.i.i, label %rt_mutex_enqueue.exit

if.then.i.critedge.i.i:                           ; preds = %rt_mutex_dequeue.exit
  %78 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %7, align 4
  %rb_right.i.c.i.i = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1
  %79 = ptrtoint ptr %rb_right.i.c.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %rb_right.i.c.i.i, align 4
  %rb_left.i.c.i.i = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 2
  %80 = ptrtoint ptr %rb_left.i.c.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %rb_left.i.c.i.i, align 4
  %81 = ptrtoint ptr %waiters.i16 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %7, ptr %waiters.i16, align 4
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.critedge.i.i, %while.cond.while.end_crit_edge.i.i
  %82 = ptrtoint ptr %rb_leftmost.i148 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %7, ptr %rb_leftmost.i148, align 4
  br label %rt_mutex_enqueue.exit

rt_mutex_enqueue.exit:                            ; preds = %if.then.i.i.i, %while.cond.while.end_crit_edge.i.i
  tail call void @rb_insert_color(ptr noundef %7, ptr noundef %waiters.i16) #8
  tail call void @_raw_spin_unlock(ptr noundef %pi_lock) #8
  %usage.i155 = getelementptr inbounds %struct.task_struct, ptr %task.addr.0307, i32 0, i32 2
  %call.i.i.i.i.i.i156 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i155, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @llvm.prefetch.p0(ptr %usage.i155, i32 1, i32 3, i32 1) #8
  %83 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i155, ptr %usage.i155, i32 1, ptr elementtype(i32) %usage.i155) #8, !srcloc !92
  %asmresult.i.i.i.i.i.i.i157 = extractvalue { i32, i32, i32 } %83, 0
  %cmp.i.i.i.i158 = icmp eq i32 %asmresult.i.i.i.i.i.i.i157, 1
  br i1 %cmp.i.i.i.i158, label %if.then.i162, label %if.end5.i.i.i.i160

if.end5.i.i.i.i160:                               ; preds = %rt_mutex_enqueue.exit
  %.not.i.i.i.i159 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i157, 0
  br i1 %.not.i.i.i.i159, label %put_task_struct.exit164, label %if.then10.i.i.i.i161, !prof !78

if.then10.i.i.i.i161:                             ; preds = %if.end5.i.i.i.i160
  tail call void @refcount_warn_saturate(ptr noundef %usage.i155, i32 noundef 3) #8
  br label %put_task_struct.exit164

if.then.i162:                                     ; preds = %rt_mutex_enqueue.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @__put_task_struct(ptr noundef %task.addr.0307) #8
  br label %put_task_struct.exit164

put_task_struct.exit164:                          ; preds = %if.then.i162, %if.then10.i.i.i.i161, %if.end5.i.i.i.i160
  %84 = ptrtoint ptr %owner1.i125 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %owner1.i125, align 4
  %tobool86.not = icmp ult ptr %85, inttoptr (i32 2 to ptr)
  br i1 %tobool86.not, label %if.then87, label %if.end95

if.then87:                                        ; preds = %put_task_struct.exit164
  %86 = ptrtoint ptr %rb_leftmost.i148 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rb_leftmost.i148, align 4
  %tobool.not.i168 = icmp eq ptr %87, null
  br i1 %tobool.not.i168, label %rt_mutex_top_waiter.exit173, label %if.then.i171

if.then.i171:                                     ; preds = %if.then87
  %lock1.i169 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %lock1.i169 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lock1.i169, align 4
  %cmp.not.i170 = icmp eq ptr %89, %next_lock.addr.0306
  br i1 %cmp.not.i170, label %rt_mutex_top_waiter.exit173, label %do.body5.i172, !prof !78

do.body5.i172:                                    ; preds = %if.then.i171
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

rt_mutex_top_waiter.exit173:                      ; preds = %if.then.i171, %if.then87
  %cmp89.not = icmp eq ptr %49, %87
  br i1 %cmp89.not, label %if.end93, label %if.then90

if.then90:                                        ; preds = %rt_mutex_top_waiter.exit173
  %task91 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 2
  %90 = ptrtoint ptr %task91 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task91, align 8
  %wake_state = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 4
  %92 = ptrtoint ptr %wake_state to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %wake_state, align 8
  %call92 = tail call i32 @wake_up_state(ptr noundef %91, i32 noundef %93) #8
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %rt_mutex_top_waiter.exit173
  tail call void @_raw_spin_unlock_irq(ptr noundef %next_lock.addr.0306) #8
  br label %cleanup

if.end95:                                         ; preds = %put_task_struct.exit164
  %94 = ptrtoint ptr %owner1.i125 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %owner1.i125, align 4
  %96 = ptrtoint ptr %95 to i32
  %and.i175 = and i32 %96, -2
  %97 = inttoptr i32 %and.i175 to ptr
  %usage.i176 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 2
  %call.i.i.i.i.i.i177 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i176, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage.i176, i32 1, i32 3, i32 1) #8
  %98 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i176, ptr %usage.i176, i32 1, ptr elementtype(i32) %usage.i176) #8, !srcloc !83
  %asmresult.i.i.i.i.i.i178 = extractvalue { i32, i32, i32 } %98, 0
  %tobool1.not.i.i.i.i179 = icmp eq i32 %asmresult.i.i.i.i.i.i178, 0
  br i1 %tobool1.not.i.i.i.i179, label %if.end15.sink.split.i.i.i.i184, label %if.else.i.i.i.i182, !prof !80

if.else.i.i.i.i182:                               ; preds = %if.end95
  %add.i.i.i.i180 = add i32 %asmresult.i.i.i.i.i.i178, 1
  %99 = or i32 %add.i.i.i.i180, %asmresult.i.i.i.i.i.i178
  %.not.i.i.i.i181 = icmp sgt i32 %99, -1
  br i1 %.not.i.i.i.i181, label %get_task_struct.exit185, label %if.end15.sink.split.i.i.i.i184, !prof !78

if.end15.sink.split.i.i.i.i184:                   ; preds = %if.else.i.i.i.i182, %if.end95
  %.sink.i.i.i.i183 = phi i32 [ 2, %if.end95 ], [ 1, %if.else.i.i.i.i182 ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i176, i32 noundef %.sink.i.i.i.i183) #8
  br label %get_task_struct.exit185

get_task_struct.exit185:                          ; preds = %if.end15.sink.split.i.i.i.i184, %if.else.i.i.i.i182
  %pi_lock98 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 128
  tail call void @_raw_spin_lock(ptr noundef %pi_lock98) #8
  %100 = ptrtoint ptr %rb_leftmost.i148 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rb_leftmost.i148, align 4
  %tobool.not.i187 = icmp eq ptr %101, null
  br i1 %tobool.not.i187, label %rt_mutex_top_waiter.exit192, label %if.then.i190

if.then.i190:                                     ; preds = %get_task_struct.exit185
  %lock1.i188 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %lock1.i188 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %lock1.i188, align 4
  %cmp.not.i189 = icmp eq ptr %103, %next_lock.addr.0306
  br i1 %cmp.not.i189, label %rt_mutex_top_waiter.exit192, label %do.body5.i191, !prof !78

do.body5.i191:                                    ; preds = %if.then.i190
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

rt_mutex_top_waiter.exit192:                      ; preds = %if.then.i190, %get_task_struct.exit185
  %cmp100 = icmp eq ptr %7, %101
  br i1 %cmp100, label %if.then101, label %if.else102

if.then101:                                       ; preds = %rt_mutex_top_waiter.exit192
  %pi_tree_entry.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %49, i32 0, i32 1
  %104 = ptrtoint ptr %pi_tree_entry.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pi_tree_entry.i, align 4
  %106 = ptrtoint ptr %pi_tree_entry.i to i32
  %cmp.i18 = icmp eq i32 %105, %106
  br i1 %cmp.i18, label %rt_mutex_dequeue_pi.exit, label %if.end.i21

if.end.i21:                                       ; preds = %if.then101
  %pi_waiters.i = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 130
  %rb_leftmost.i.i19 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 130, i32 1
  %107 = ptrtoint ptr %rb_leftmost.i.i19 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rb_leftmost.i.i19, align 4
  %cmp.i.i20 = icmp eq ptr %108, %pi_tree_entry.i
  br i1 %cmp.i.i20, label %if.then.i.i23, label %rb_erase_cached.exit.i24

if.then.i.i23:                                    ; preds = %if.end.i21
  %call.i.i22 = tail call ptr @rb_next(ptr noundef %pi_tree_entry.i) #8
  %109 = ptrtoint ptr %rb_leftmost.i.i19 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call.i.i22, ptr %rb_leftmost.i.i19, align 4
  br label %rb_erase_cached.exit.i24

rb_erase_cached.exit.i24:                         ; preds = %if.then.i.i23, %if.end.i21
  tail call void @rb_erase(ptr noundef %pi_tree_entry.i, ptr noundef %pi_waiters.i) #8
  %110 = ptrtoint ptr %pi_tree_entry.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %106, ptr %pi_tree_entry.i, align 4
  br label %rt_mutex_dequeue_pi.exit

rt_mutex_dequeue_pi.exit:                         ; preds = %rb_erase_cached.exit.i24, %if.then101
  %pi_tree_entry.i25 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 1
  %pi_waiters.i26 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 130
  %111 = ptrtoint ptr %pi_waiters.i26 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pi_waiters.i26, align 4
  %tobool.not2.i.i27 = icmp eq ptr %112, null
  br i1 %tobool.not2.i.i27, label %if.then.i.critedge.i.i51, label %while.body.i.preheader.i31

while.body.i.preheader.i31:                       ; preds = %rt_mutex_dequeue_pi.exit
  %113 = ptrtoint ptr %prio.i.le to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %prio.i.le, align 4
  %tobool.not.i.i.i29 = icmp sgt i32 %114, -1
  br label %while.body.i.i35

while.body.i.i35:                                 ; preds = %122, %while.body.i.preheader.i31
  %115 = phi ptr [ %125, %122 ], [ %112, %while.body.i.preheader.i31 ]
  %leftmost.0.off03.i.i32 = phi i1 [ %retval.0.i.i4.i43, %122 ], [ true, %while.body.i.preheader.i31 ]
  %prio1.i.i.i33 = getelementptr i8, ptr %115, i32 24
  %116 = ptrtoint ptr %prio1.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %prio1.i.i.i33, align 4
  %cmp.i.i.i34 = icmp slt i32 %114, %117
  br i1 %cmp.i.i.i34, label %__pi_waiter_less.exit.thread.i, label %if.end.i.i.i36

if.end.i.i.i36:                                   ; preds = %while.body.i.i35
  br i1 %tobool.not.i.i.i29, label %__pi_waiter_less.exit.thread7.i, label %__pi_waiter_less.exit.i

__pi_waiter_less.exit.thread7.i:                  ; preds = %if.end.i.i.i36
  %rb_right.i10.i37 = getelementptr inbounds %struct.rb_node, ptr %115, i32 0, i32 1
  br label %122

__pi_waiter_less.exit.i:                          ; preds = %if.end.i.i.i36
  %118 = ptrtoint ptr %deadline1.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %deadline1.i, align 8
  %deadline4.i.i.i38 = getelementptr i8, ptr %115, i32 28
  %120 = ptrtoint ptr %deadline4.i.i.i38 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %deadline4.i.i.i38, align 8
  %sub.i.i.i.i39 = sub i64 %119, %121
  %phi.cmp.i.i40 = icmp slt i64 %sub.i.i.i.i39, 0
  %rb_right.i.i41 = getelementptr inbounds %struct.rb_node, ptr %115, i32 0, i32 1
  br i1 %phi.cmp.i.i40, label %__pi_waiter_less.exit.thread.i, label %122

__pi_waiter_less.exit.thread.i:                   ; preds = %__pi_waiter_less.exit.i, %while.body.i.i35
  %rb_left.i6.i42 = getelementptr inbounds %struct.rb_node, ptr %115, i32 0, i32 2
  br label %122

122:                                              ; preds = %__pi_waiter_less.exit.thread.i, %__pi_waiter_less.exit.i, %__pi_waiter_less.exit.thread7.i
  %retval.0.i.i4.i43 = phi i1 [ %leftmost.0.off03.i.i32, %__pi_waiter_less.exit.thread.i ], [ false, %__pi_waiter_less.exit.i ], [ false, %__pi_waiter_less.exit.thread7.i ]
  %123 = phi ptr [ %rb_left.i6.i42, %__pi_waiter_less.exit.thread.i ], [ %rb_right.i.i41, %__pi_waiter_less.exit.i ], [ %rb_right.i10.i37, %__pi_waiter_less.exit.thread7.i ]
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %tobool.not.i.i44 = icmp eq ptr %125, null
  br i1 %tobool.not.i.i44, label %while.cond.while.end_crit_edge.i.i48, label %while.body.i.i35

while.cond.while.end_crit_edge.i.i48:             ; preds = %122
  %phi.cast.le.i.i45 = ptrtoint ptr %115 to i32
  %126 = ptrtoint ptr %pi_tree_entry.i25 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %phi.cast.le.i.i45, ptr %pi_tree_entry.i25, align 4
  %rb_right.i.i.i46 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 1, i32 1
  %127 = ptrtoint ptr %rb_right.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %rb_right.i.i.i46, align 4
  %rb_left.i.i.i47 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 1, i32 2
  %128 = ptrtoint ptr %rb_left.i.i.i47 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %rb_left.i.i.i47, align 4
  %129 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %pi_tree_entry.i25, ptr %123, align 4
  br i1 %retval.0.i.i4.i43, label %if.then.i.i.i53, label %rt_mutex_enqueue_pi.exit

if.then.i.critedge.i.i51:                         ; preds = %rt_mutex_dequeue_pi.exit
  %130 = ptrtoint ptr %pi_tree_entry.i25 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %pi_tree_entry.i25, align 4
  %rb_right.i.c.i.i49 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 1, i32 1
  %131 = ptrtoint ptr %rb_right.i.c.i.i49 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %rb_right.i.c.i.i49, align 4
  %rb_left.i.c.i.i50 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 1, i32 2
  %132 = ptrtoint ptr %rb_left.i.c.i.i50 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr null, ptr %rb_left.i.c.i.i50, align 4
  %133 = ptrtoint ptr %pi_waiters.i26 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %pi_tree_entry.i25, ptr %pi_waiters.i26, align 4
  br label %if.then.i.i.i53

if.then.i.i.i53:                                  ; preds = %if.then.i.critedge.i.i51, %while.cond.while.end_crit_edge.i.i48
  %rb_leftmost.i.i.i52 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 130, i32 1
  %134 = ptrtoint ptr %rb_leftmost.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %pi_tree_entry.i25, ptr %rb_leftmost.i.i.i52, align 4
  br label %rt_mutex_enqueue_pi.exit

rt_mutex_enqueue_pi.exit:                         ; preds = %if.then.i.i.i53, %while.cond.while.end_crit_edge.i.i48
  tail call void @rb_insert_color(ptr noundef %pi_tree_entry.i25, ptr noundef %pi_waiters.i26) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %135 = load i32, ptr @debug_locks, align 4
  %tobool.not.i54 = icmp eq i32 %135, 0
  br i1 %tobool.not.i54, label %if.end.i57, label %land.rhs.i

land.rhs.i:                                       ; preds = %rt_mutex_enqueue_pi.exit
  %dep_map.i = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 128, i32 4
  %call.i.i55 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  %cmp.not.i56 = icmp eq i32 %call.i.i55, 0
  br i1 %cmp.not.i56, label %do.end.i, label %if.end.i57, !prof !80

do.end.i:                                         ; preds = %land.rhs.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 440, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i57

if.end.i57:                                       ; preds = %do.end.i, %land.rhs.i, %rt_mutex_enqueue_pi.exit
  %136 = ptrtoint ptr %pi_waiters.i26 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile ptr, ptr %pi_waiters.i26, align 4
  %cmp.i.not.i = icmp eq ptr %137, null
  br i1 %cmp.i.not.i, label %if.end108.sink.split, label %if.end108.sink.split.sink.split

if.else102:                                       ; preds = %rt_mutex_top_waiter.exit192
  %cmp103 = icmp eq ptr %49, %7
  br i1 %cmp103, label %if.then104, label %if.end108

if.then104:                                       ; preds = %if.else102
  %pi_tree_entry.i59 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %7, i32 0, i32 1
  %138 = ptrtoint ptr %pi_tree_entry.i59 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %pi_tree_entry.i59, align 4
  %140 = ptrtoint ptr %pi_tree_entry.i59 to i32
  %cmp.i60 = icmp eq i32 %139, %140
  br i1 %cmp.i60, label %rt_mutex_dequeue_pi.exit68, label %if.end.i64

if.end.i64:                                       ; preds = %if.then104
  %pi_waiters.i61 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 130
  %rb_leftmost.i.i62 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 130, i32 1
  %141 = ptrtoint ptr %rb_leftmost.i.i62 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rb_leftmost.i.i62, align 4
  %cmp.i.i63 = icmp eq ptr %142, %pi_tree_entry.i59
  br i1 %cmp.i.i63, label %if.then.i.i66, label %rb_erase_cached.exit.i67

if.then.i.i66:                                    ; preds = %if.end.i64
  %call.i.i65 = tail call ptr @rb_next(ptr noundef %pi_tree_entry.i59) #8
  %143 = ptrtoint ptr %rb_leftmost.i.i62 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call.i.i65, ptr %rb_leftmost.i.i62, align 4
  br label %rb_erase_cached.exit.i67

rb_erase_cached.exit.i67:                         ; preds = %if.then.i.i66, %if.end.i64
  tail call void @rb_erase(ptr noundef %pi_tree_entry.i59, ptr noundef %pi_waiters.i61) #8
  %144 = ptrtoint ptr %pi_tree_entry.i59 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %140, ptr %pi_tree_entry.i59, align 4
  br label %rt_mutex_dequeue_pi.exit68

rt_mutex_dequeue_pi.exit68:                       ; preds = %rb_erase_cached.exit.i67, %if.then104
  %145 = ptrtoint ptr %rb_leftmost.i148 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %rb_leftmost.i148, align 4
  %tobool.not.i194 = icmp eq ptr %146, null
  br i1 %tobool.not.i194, label %rt_mutex_top_waiter.exit199, label %if.then.i197

if.then.i197:                                     ; preds = %rt_mutex_dequeue_pi.exit68
  %lock1.i195 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %146, i32 0, i32 3
  %147 = ptrtoint ptr %lock1.i195 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %lock1.i195, align 4
  %cmp.not.i196 = icmp eq ptr %148, %next_lock.addr.0306
  br i1 %cmp.not.i196, label %rt_mutex_top_waiter.exit199, label %do.body5.i198, !prof !78

do.body5.i198:                                    ; preds = %if.then.i197
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

rt_mutex_top_waiter.exit199:                      ; preds = %if.then.i197, %rt_mutex_dequeue_pi.exit68
  %pi_tree_entry.i69 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %146, i32 0, i32 1
  %pi_waiters.i70 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 130
  %149 = ptrtoint ptr %pi_waiters.i70 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pi_waiters.i70, align 4
  %tobool.not2.i.i71 = icmp eq ptr %150, null
  br i1 %tobool.not2.i.i71, label %if.then.i.critedge.i.i98, label %while.body.i.preheader.i75

while.body.i.preheader.i75:                       ; preds = %rt_mutex_top_waiter.exit199
  %prio.i.i.i72 = getelementptr %struct.rt_mutex_waiter, ptr %146, i32 0, i32 5
  %151 = ptrtoint ptr %prio.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %prio.i.i.i72, align 4
  %tobool.not.i.i.i73 = icmp sgt i32 %152, -1
  %deadline.i.i.i74 = getelementptr %struct.rt_mutex_waiter, ptr %146, i32 0, i32 6
  br label %while.body.i.i79

while.body.i.i79:                                 ; preds = %160, %while.body.i.preheader.i75
  %153 = phi ptr [ %163, %160 ], [ %150, %while.body.i.preheader.i75 ]
  %leftmost.0.off03.i.i76 = phi i1 [ %retval.0.i.i4.i90, %160 ], [ true, %while.body.i.preheader.i75 ]
  %prio1.i.i.i77 = getelementptr i8, ptr %153, i32 24
  %154 = ptrtoint ptr %prio1.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %prio1.i.i.i77, align 4
  %cmp.i.i.i78 = icmp slt i32 %152, %155
  br i1 %cmp.i.i.i78, label %__pi_waiter_less.exit.thread.i89, label %if.end.i.i.i80

if.end.i.i.i80:                                   ; preds = %while.body.i.i79
  br i1 %tobool.not.i.i.i73, label %__pi_waiter_less.exit.thread7.i82, label %__pi_waiter_less.exit.i87

__pi_waiter_less.exit.thread7.i82:                ; preds = %if.end.i.i.i80
  %rb_right.i10.i81 = getelementptr inbounds %struct.rb_node, ptr %153, i32 0, i32 1
  br label %160

__pi_waiter_less.exit.i87:                        ; preds = %if.end.i.i.i80
  %156 = ptrtoint ptr %deadline.i.i.i74 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %deadline.i.i.i74, align 8
  %deadline4.i.i.i83 = getelementptr i8, ptr %153, i32 28
  %158 = ptrtoint ptr %deadline4.i.i.i83 to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %deadline4.i.i.i83, align 8
  %sub.i.i.i.i84 = sub i64 %157, %159
  %phi.cmp.i.i85 = icmp slt i64 %sub.i.i.i.i84, 0
  %rb_right.i.i86 = getelementptr inbounds %struct.rb_node, ptr %153, i32 0, i32 1
  br i1 %phi.cmp.i.i85, label %__pi_waiter_less.exit.thread.i89, label %160

__pi_waiter_less.exit.thread.i89:                 ; preds = %__pi_waiter_less.exit.i87, %while.body.i.i79
  %rb_left.i6.i88 = getelementptr inbounds %struct.rb_node, ptr %153, i32 0, i32 2
  br label %160

160:                                              ; preds = %__pi_waiter_less.exit.thread.i89, %__pi_waiter_less.exit.i87, %__pi_waiter_less.exit.thread7.i82
  %retval.0.i.i4.i90 = phi i1 [ %leftmost.0.off03.i.i76, %__pi_waiter_less.exit.thread.i89 ], [ false, %__pi_waiter_less.exit.i87 ], [ false, %__pi_waiter_less.exit.thread7.i82 ]
  %161 = phi ptr [ %rb_left.i6.i88, %__pi_waiter_less.exit.thread.i89 ], [ %rb_right.i.i86, %__pi_waiter_less.exit.i87 ], [ %rb_right.i10.i81, %__pi_waiter_less.exit.thread7.i82 ]
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  %tobool.not.i.i91 = icmp eq ptr %163, null
  br i1 %tobool.not.i.i91, label %while.cond.while.end_crit_edge.i.i95, label %while.body.i.i79

while.cond.while.end_crit_edge.i.i95:             ; preds = %160
  %phi.cast.le.i.i92 = ptrtoint ptr %153 to i32
  %164 = ptrtoint ptr %pi_tree_entry.i69 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %phi.cast.le.i.i92, ptr %pi_tree_entry.i69, align 4
  %rb_right.i.i.i93 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %146, i32 0, i32 1, i32 1
  %165 = ptrtoint ptr %rb_right.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %rb_right.i.i.i93, align 4
  %rb_left.i.i.i94 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %146, i32 0, i32 1, i32 2
  %166 = ptrtoint ptr %rb_left.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %rb_left.i.i.i94, align 4
  %167 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %pi_tree_entry.i69, ptr %161, align 4
  br i1 %retval.0.i.i4.i90, label %if.then.i.i.i100, label %rt_mutex_enqueue_pi.exit101

if.then.i.critedge.i.i98:                         ; preds = %rt_mutex_top_waiter.exit199
  %168 = ptrtoint ptr %pi_tree_entry.i69 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %pi_tree_entry.i69, align 4
  %rb_right.i.c.i.i96 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %146, i32 0, i32 1, i32 1
  %169 = ptrtoint ptr %rb_right.i.c.i.i96 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %rb_right.i.c.i.i96, align 4
  %rb_left.i.c.i.i97 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %146, i32 0, i32 1, i32 2
  %170 = ptrtoint ptr %rb_left.i.c.i.i97 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr null, ptr %rb_left.i.c.i.i97, align 4
  %171 = ptrtoint ptr %pi_waiters.i70 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %pi_tree_entry.i69, ptr %pi_waiters.i70, align 4
  br label %if.then.i.i.i100

if.then.i.i.i100:                                 ; preds = %if.then.i.critedge.i.i98, %while.cond.while.end_crit_edge.i.i95
  %rb_leftmost.i.i.i99 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 130, i32 1
  %172 = ptrtoint ptr %rb_leftmost.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %pi_tree_entry.i69, ptr %rb_leftmost.i.i.i99, align 4
  br label %rt_mutex_enqueue_pi.exit101

rt_mutex_enqueue_pi.exit101:                      ; preds = %if.then.i.i.i100, %while.cond.while.end_crit_edge.i.i95
  tail call void @rb_insert_color(ptr noundef %pi_tree_entry.i69, ptr noundef %pi_waiters.i70) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %173 = load i32, ptr @debug_locks, align 4
  %tobool.not.i102 = icmp eq i32 %173, 0
  br i1 %tobool.not.i102, label %if.end.i110, label %land.rhs.i106

land.rhs.i106:                                    ; preds = %rt_mutex_enqueue_pi.exit101
  %dep_map.i103 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 128, i32 4
  %call.i.i104 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i103, i32 noundef -1) #8
  %cmp.not.i105 = icmp eq i32 %call.i.i104, 0
  br i1 %cmp.not.i105, label %do.end.i107, label %if.end.i110, !prof !80

do.end.i107:                                      ; preds = %land.rhs.i106
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 440, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i110

if.end.i110:                                      ; preds = %do.end.i107, %land.rhs.i106, %rt_mutex_enqueue_pi.exit101
  %174 = ptrtoint ptr %pi_waiters.i70 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile ptr, ptr %pi_waiters.i70, align 4
  %cmp.i.not.i109 = icmp eq ptr %175, null
  br i1 %cmp.i.not.i109, label %if.end108.sink.split, label %if.end108.sink.split.sink.split

if.end108.sink.split.sink.split:                  ; preds = %if.end.i110, %if.end.i57
  %waiter.0.ph.ph = phi ptr [ %7, %if.end.i57 ], [ %146, %if.end.i110 ]
  %rb_leftmost.i.i111 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 130, i32 1
  %176 = ptrtoint ptr %rb_leftmost.i.i111 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %rb_leftmost.i.i111, align 4
  %task.i112 = getelementptr i8, ptr %177, i32 12
  %178 = ptrtoint ptr %task.i112 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %task.i112, align 8
  br label %if.end108.sink.split

if.end108.sink.split:                             ; preds = %if.end108.sink.split.sink.split, %if.end.i110, %if.end.i57
  %pi_task.0.i114.sink = phi ptr [ null, %if.end.i57 ], [ null, %if.end.i110 ], [ %179, %if.end108.sink.split.sink.split ]
  %waiter.0.ph = phi ptr [ %7, %if.end.i57 ], [ %146, %if.end.i110 ], [ %waiter.0.ph.ph, %if.end108.sink.split.sink.split ]
  tail call void @rt_mutex_setprio(ptr noundef %97, ptr noundef %pi_task.0.i114.sink) #8
  br label %if.end108

if.end108:                                        ; preds = %if.end108.sink.split, %if.else102
  %waiter.0 = phi ptr [ %7, %if.else102 ], [ %waiter.0.ph, %if.end108.sink.split ]
  %pi_blocked_on.i116 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 132
  %180 = ptrtoint ptr %pi_blocked_on.i116 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pi_blocked_on.i116, align 32
  %tobool.not.i117 = icmp eq ptr %181, null
  br i1 %tobool.not.i117, label %task_blocked_on_lock.exit121, label %cond.true.i119

cond.true.i119:                                   ; preds = %if.end108
  %lock.i118 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %lock.i118 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %lock.i118, align 4
  br label %task_blocked_on_lock.exit121

task_blocked_on_lock.exit121:                     ; preds = %cond.true.i119, %if.end108
  %cond.i120 = phi ptr [ %183, %cond.true.i119 ], [ null, %if.end108 ]
  %184 = ptrtoint ptr %rb_leftmost.i148 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %rb_leftmost.i148, align 4
  %tobool.not.i201 = icmp eq ptr %185, null
  br i1 %tobool.not.i201, label %rt_mutex_top_waiter.exit206, label %if.then.i204

if.then.i204:                                     ; preds = %task_blocked_on_lock.exit121
  %lock1.i202 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %185, i32 0, i32 3
  %186 = ptrtoint ptr %lock1.i202 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %lock1.i202, align 4
  %cmp.not.i203 = icmp eq ptr %187, %next_lock.addr.0306
  br i1 %cmp.not.i203, label %rt_mutex_top_waiter.exit206, label %do.body5.i205, !prof !78

do.body5.i205:                                    ; preds = %if.then.i204
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

rt_mutex_top_waiter.exit206:                      ; preds = %if.then.i204, %task_blocked_on_lock.exit121
  tail call void @_raw_spin_unlock(ptr noundef %pi_lock98) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %next_lock.addr.0306) #8
  %tobool113.not = icmp ne ptr %cond.i120, null
  %cmp118.not = icmp eq ptr %waiter.0, %185
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp118.not
  %or.cond8 = select i1 %tobool113.not, i1 %or.cond, i1 false
  br i1 %or.cond8, label %again.backedge, label %out_put_task.loopexit

out_unlock_pi:                                    ; preds = %if.then61, %if.then46, %rt_mutex_waiter_equal.exit, %if.end22, %if.then18, %if.end12, %land.lhs.true, %retry.preheader
  %ret.0 = phi i32 [ -35, %if.then61 ], [ 0, %rt_mutex_waiter_equal.exit ], [ 0, %if.end22 ], [ 0, %if.then18 ], [ 0, %if.end12 ], [ 0, %land.lhs.true ], [ 0, %if.then46 ], [ 0, %retry.preheader ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %pi_lock) #8
  br label %out_put_task

out_put_task.loopexit:                            ; preds = %rt_mutex_top_waiter.exit206, %rt_mutex_top_waiter.exit
  %and.i175.lcssa.sink = phi i32 [ %and.i140, %rt_mutex_top_waiter.exit ], [ %and.i175, %rt_mutex_top_waiter.exit206 ]
  %188 = inttoptr i32 %and.i175.lcssa.sink to ptr
  br label %out_put_task

out_put_task:                                     ; preds = %out_put_task.loopexit, %out_unlock_pi
  %task.addr.1 = phi ptr [ %task.addr.0307, %out_unlock_pi ], [ %188, %out_put_task.loopexit ]
  %ret.1 = phi i32 [ %ret.0, %out_unlock_pi ], [ 0, %out_put_task.loopexit ]
  %usage.i207 = getelementptr inbounds %struct.task_struct, ptr %task.addr.1, i32 0, i32 2
  %call.i.i.i.i.i.i208 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i207, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @llvm.prefetch.p0(ptr %usage.i207, i32 1, i32 3, i32 1) #8
  %189 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i207, ptr %usage.i207, i32 1, ptr elementtype(i32) %usage.i207) #8, !srcloc !92
  %asmresult.i.i.i.i.i.i.i209 = extractvalue { i32, i32, i32 } %189, 0
  %cmp.i.i.i.i210 = icmp eq i32 %asmresult.i.i.i.i.i.i.i209, 1
  br i1 %cmp.i.i.i.i210, label %if.then.i214, label %if.end5.i.i.i.i212

if.end5.i.i.i.i212:                               ; preds = %out_put_task
  %.not.i.i.i.i211 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i209, 0
  br i1 %.not.i.i.i.i211, label %cleanup, label %if.then10.i.i.i.i213, !prof !78

if.then10.i.i.i.i213:                             ; preds = %if.end5.i.i.i.i212
  tail call void @refcount_warn_saturate(ptr noundef %usage.i207, i32 noundef 3) #8
  br label %cleanup

if.then.i214:                                     ; preds = %out_put_task
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @__put_task_struct(ptr noundef %task.addr.1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i214, %if.then10.i.i.i.i213, %if.end5.i.i.i.i212, %if.end93, %if.then69, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i
  %retval.0 = phi i32 [ 0, %if.end93 ], [ 0, %if.then69 ], [ -35, %if.end5.i.i.i.i ], [ -35, %if.then10.i.i.i.i ], [ -35, %if.then.i ], [ %ret.1, %if.end5.i.i.i.i212 ], [ %ret.1, %if.then10.i.i.i.i213 ], [ %ret.1, %if.then.i214 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt_mutex_debug_task_free(ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end90

do.end:                                           ; preds = %entry
  %pi_waiters = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 130
  %1 = ptrtoint ptr %pi_waiters to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %pi_waiters, align 4
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %if.end39, label %do.end6, !prof !78

do.end6:                                          ; preds = %do.end
  %call = tail call i32 @debug_locks_off() #8
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end39, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %do.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  %tobool9.not = icmp eq i32 %3, 0
  br i1 %tobool9.not, label %do.end22, label %if.end39

do.end22:                                         ; preds = %land.lhs.true8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 487, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #8
  br label %if.end39

if.end39:                                         ; preds = %do.end22, %land.lhs.true8, %do.end6, %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %.pr = load i32, ptr @oops_in_progress, align 4
  %tobool42.not = icmp eq i32 %.pr, 0
  br i1 %tobool42.not, label %land.lhs.true43, label %if.end90

land.lhs.true43:                                  ; preds = %if.end39
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 132
  %4 = ptrtoint ptr %pi_blocked_on to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pi_blocked_on, align 32
  %tobool44.not = icmp eq ptr %5, null
  br i1 %tobool44.not, label %if.end90, label %do.end54, !prof !78

do.end54:                                         ; preds = %land.lhs.true43
  %call55 = tail call i32 @debug_locks_off() #8
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end90, label %land.lhs.true57

land.lhs.true57:                                  ; preds = %do.end54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %6 = load i32, ptr @debug_locks_silent, align 4
  %tobool58.not = icmp eq i32 %6, 0
  br i1 %tobool58.not, label %do.end72, label %if.end90

do.end72:                                         ; preds = %land.lhs.true57
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 488, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #8
  br label %if.end90

if.end90:                                         ; preds = %do.end72, %land.lhs.true57, %do.end54, %land.lhs.true43, %if.end39, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__rt_mutex_slowlock(ptr noundef %lock, ptr nocapture noundef readnone %ww_ctx, i32 noundef %state, i32 noundef %chwalk, ptr noundef %waiter) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.raw_spinlock, ptr %lock, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %if.end, !prof !80

do.end:                                           ; preds = %land.rhs
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1569, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs, %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i232 = and i32 %1, -16384
  %2 = inttoptr i32 %and.i232 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %call26 = tail call fastcc i32 @try_to_take_rt_mutex(ptr noundef %lock, ptr noundef %4, ptr noundef null)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body31, label %cleanup

do.body31:                                        ; preds = %if.end
  %and = and i32 %state, 204
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %__here, label %land.rhs38

land.rhs38:                                       ; preds = %do.body31
  %.b231 = load i1, ptr @__rt_mutex_slowlock.__already_done, align 1
  br i1 %.b231, label %__here, label %if.then49, !prof !78

if.then49:                                        ; preds = %land.rhs38
  store i1 true, ptr @__rt_mutex_slowlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1580, i32 noundef 9, ptr noundef null) #8
  br label %__here

__here:                                           ; preds = %if.then49, %land.rhs38, %do.body31
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 212
  %7 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 ptrtoint (ptr blockaddress(@__rt_mutex_slowlock, %__here) to i32), ptr %task_state_change, align 4
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %state, ptr %8, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !96
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %call113 = tail call fastcc i32 @task_blocks_on_rt_mutex(ptr noundef %lock, ptr noundef %waiter, ptr noundef %11)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end125, label %__here186, !prof !78

if.end125:                                        ; preds = %__here
  %call124 = tail call fastcc i32 @rt_mutex_slowlock_block(ptr noundef %lock, ptr noundef null, i32 noundef %state, ptr noundef null, ptr noundef %waiter)
  %tobool126.not = icmp eq i32 %call124, 0
  br i1 %tobool126.not, label %if.end207, label %__here186, !prof !78

__here186:                                        ; preds = %if.end125, %__here
  %ret.0235 = phi i32 [ %call124, %if.end125 ], [ %call113, %__here ]
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %task_state_change190 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 212
  %14 = ptrtoint ptr %task_state_change190 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 ptrtoint (ptr blockaddress(@__rt_mutex_slowlock, %__here186) to i32), ptr %task_state_change190, align 4
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %15, align 128
  tail call fastcc void @remove_waiter(ptr noundef %lock, ptr noundef %waiter)
  tail call fastcc void @rt_mutex_handle_deadlock(i32 noundef %ret.0235, i32 noundef 0, ptr noundef %waiter)
  br label %if.end207

if.end207:                                        ; preds = %__here186, %if.end125
  %ret.0236 = phi i32 [ 0, %if.end125 ], [ %ret.0235, %__here186 ]
  %owner1.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 2
  %waiters.i.i = getelementptr inbounds %struct.rt_mutex_base, ptr %lock, i32 0, i32 1
  %17 = ptrtoint ptr %waiters.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %waiters.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %18, null
  br i1 %cmp.i.not.i, label %do.end.i, label %cleanup

do.end.i:                                         ; preds = %if.end207
  %19 = ptrtoint ptr %owner1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %owner1.i, align 4
  %and.i = and i32 %20, 1
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %cleanup, label %do.body8.i

do.body8.i:                                       ; preds = %do.end.i
  %and9.i = and i32 %20, -2
  %21 = ptrtoint ptr %owner1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %and9.i, ptr %owner1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body8.i, %do.end.i, %if.end207, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %ret.0236, %if.end207 ], [ %ret.0236, %do.end.i ], [ %ret.0236, %do.body8.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt_mutex_handle_deadlock(i32 noundef %res, i32 noundef %detect_deadlock, ptr nocapture noundef readnone %w) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq i32 %res, -35
  br i1 %cmp.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  ret void

do.end:                                           ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1544, i32 noundef 9, ptr noundef nonnull @.str.8) #8
  br label %__here

__here:                                           ; preds = %__here, %do.end
  %0 = tail call i32 @llvm.read_register.i32(metadata !68) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@rt_mutex_handle_deadlock, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @schedule() #8
  br label %__here
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_setprio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !57, !58, !60, !61, !63, !65, !66, !67}
!llvm.named.register.sp = !{!68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @max_lock_depth, !1, !"max_lock_depth", i1 false, i1 false}
!1 = !{!"../kernel/locking/rtmutex_api.c", i32 14, i32 5}
!2 = !{ptr @__ksymtab_rt_mutex_base_init, !3, !"__ksymtab_rt_mutex_base_init", i1 false, i1 false}
!3 = !{!"../kernel/locking/rtmutex_api.c", i32 41, i32 1}
!4 = !{ptr @__ksymtab_rt_mutex_lock_nested, !5, !"__ksymtab_rt_mutex_lock_nested", i1 false, i1 false}
!5 = !{!"../kernel/locking/rtmutex_api.c", i32 54, i32 1}
!6 = !{ptr @__ksymtab__rt_mutex_lock_nest_lock, !7, !"__ksymtab__rt_mutex_lock_nest_lock", i1 false, i1 false}
!7 = !{!"../kernel/locking/rtmutex_api.c", i32 60, i32 1}
!8 = !{ptr @__ksymtab_rt_mutex_lock_interruptible, !9, !"__ksymtab_rt_mutex_lock_interruptible", i1 false, i1 false}
!9 = !{!"../kernel/locking/rtmutex_api.c", i32 89, i32 1}
!10 = !{ptr @__ksymtab_rt_mutex_lock_killable, !11, !"__ksymtab_rt_mutex_lock_killable", i1 false, i1 false}
!11 = !{!"../kernel/locking/rtmutex_api.c", i32 104, i32 1}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../kernel/locking/rtmutex_api.c", i32 122, i32 45}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__ksymtab_rt_mutex_trylock, !16, !"__ksymtab_rt_mutex_trylock", i1 false, i1 false}
!16 = !{!"../kernel/locking/rtmutex_api.c", i32 131, i32 1}
!17 = !{ptr @__ksymtab_rt_mutex_unlock, !18, !"__ksymtab_rt_mutex_unlock", i1 false, i1 false}
!18 = !{!"../kernel/locking/rtmutex_api.c", i32 143, i32 1}
!19 = !{ptr @__ksymtab___rt_mutex_init, !20, !"__ksymtab___rt_mutex_init", i1 false, i1 false}
!20 = !{!"../kernel/locking/rtmutex_api.c", i32 220, i32 1}
!21 = !{ptr @rt_mutex_init_proxy_locked.pi_futex_key, !22, !"pi_futex_key", i1 false, i1 false}
!22 = !{!"../kernel/locking/rtmutex_api.c", i32 239, i32 31}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../kernel/locking/rtmutex_api.c", i32 251, i32 2}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../kernel/locking/rtmutex_api.c", i32 379, i32 2}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/locking/rtmutex_api.c", i32 487, i32 2}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/locking/rtmutex_api.c", i32 488, i32 2}
!32 = !{ptr @__rt_mutex_base_init.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../kernel/locking/rtmutex_common.h", i32 160, i32 2}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/locking/rtmutex.c", i32 1569, i32 2}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../kernel/locking/rtmutex.c", i32 1580, i32 2}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../kernel/locking/rtmutex.c", i32 1594, i32 3}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/locking/rtmutex.c", i32 1544, i32 2}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../kernel/locking/rtmutex.c", i32 1546, i32 3}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/locking/rtmutex_common.h", i32 169, i32 3}
!47 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/locking/rtmutex_common.h", i32 175, i32 3}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../kernel/locking/rtmutex.c", i32 1521, i32 3}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../kernel/locking/rtmutex.c", i32 1524, i32 2}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!56 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!60 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rt_mutex_adjust_prio_chain.prev_max, !62, !"prev_max", i1 false, i1 false}
!62 = !{!"../kernel/locking/rtmutex.c", i32 601, i32 14}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/locking/rtmutex.c", i32 609, i32 4}
!65 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @rt_mutex_adjust_prio_chain._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @rt_mutex_adjust_prio_chain._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{!"sp"}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 2152034396}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i64 2151996547, i64 2151997043, i64 2151996584, i64 2151996640, i64 2151996674, i64 2151996698, i64 2151996739, i64 2151996760, i64 2151996788, i64 2151996822}
!82 = !{i64 2152043678}
!83 = !{i64 2148493640, i64 2148493672, i64 2148493701, i64 2148493735, i64 2148493766, i64 2148493789}
!84 = !{i64 2152105283}
!85 = !{i64 2149399508}
!86 = !{i64 2152046273}
!87 = !{i64 2152046502}
!88 = !{i64 2152046344}
!89 = !{i64 2149399774}
!90 = !{i64 2152054005}
!91 = !{i64 2148581665}
!92 = !{i64 2148496105, i64 2148496137, i64 2148496166, i64 2148496200, i64 2148496231, i64 2148496254}
!93 = !{i64 2149617258}
!94 = !{i64 2152038549}
!95 = !{i64 2152038391}
!96 = !{i64 2152070568}
!97 = !{i64 2152063751}
