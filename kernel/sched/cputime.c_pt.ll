; ModuleID = '/llk/IR_all_yes/kernel/sched/cputime.c_pt.bc'
source_filename = "../kernel/sched/cputime.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+task_cputime_adjusted\22, \22a\22\09"
module asm "\09.weak\09__crc_task_cputime_adjusted\09\09\09\09"
module asm "\09.long\09__crc_task_cputime_adjusted\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_task_cputime_adjusted:\09\09\09\09\09"
module asm "\09.asciz \09\22task_cputime_adjusted\22\09\09\09\09\09"
module asm "__kstrtabns_task_cputime_adjusted:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.irqtime = type { i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_cpustat = type { [10 x i64] }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, [8 x i8], %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [24 x i8], [2 x %struct.uclamp_rq], i32, [76 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, %struct.list_head, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [88 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i64, i64, i64, i32, i32, %struct.__call_single_data, %struct.hrtimer, i64, %struct.sched_info, i64, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.cpu_stop_work, ptr, ptr, i32, i32, %struct.rb_root, i32, i32, i32, i32, i32, i32, i64, [80 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uclamp_rq = type { i32, [5 x %struct.uclamp_bucket] }
%struct.uclamp_bucket = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i32, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg, i64, [120 x i8], %struct.anon, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.list_head, ptr, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list_head, [24 x i8] }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon = type { %struct.raw_spinlock, i32, i32, i32, i32, [68 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.93, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock, i32, ptr, ptr }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.93 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.94, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.94 = type { i64, i64 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.static_key = type { %struct.atomic_t, %union.anon.56 }
%union.anon.56 = type { i32 }
%struct.static_call_key = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.132, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.132 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.css_set = type { [14 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [14 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.rq_flags = type { i32, %struct.pin_cookie, i32 }
%struct.pin_cookie = type { i32 }
%struct.task_cputime = type { i64, i64, i64 }

@sched_clock_irqtime = internal global { i1, [31 x i8] } zeroinitializer, align 32
@cpu_irqtime = weak dso_local global %struct.irqtime zeroinitializer, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kernel_cpustat = external dso_local global %struct.kernel_cpustat, section ".data..percpu", align 8
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 128
@thread_group_cputime.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kernel/sched/cputime.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_task_cputime_adjusted = external dso_local constant [0 x i8], align 1
@__kstrtabns_task_cputime_adjusted = external dso_local constant [0 x i8], align 1
@__ksymtab_task_cputime_adjusted = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @task_cputime_adjusted to i32), ptr @__kstrtab_task_cputime_adjusted, ptr @__kstrtabns_task_cputime_adjusted }, section "___ksymtab_gpl+task_cputime_adjusted", align 4
@__pcpu_scope_cpu_irqtime = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_cpu_irqtime = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@ksoftirqd = external dso_local global ptr, section ".data..percpu", align 4
@task_css_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@account_other_time.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@paravirt_steal_enabled = external dso_local global %struct.static_key, align 4
@__SCK__pv_steal_clock = external dso_local local_unnamed_addr global %struct.static_call_key, align 4
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"sched_clock_irqtime\00", align 1
@___asan_gen_.14 = private constant [26 x i8] c"../kernel/sched/cputime.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 323, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 271, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 481, i32 9 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 695, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 723, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_task_cputime_adjusted, ptr @sched_clock_irqtime, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_clock_irqtime to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @enable_sched_clock_irqtime() local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @sched_clock_irqtime, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @disable_sched_clock_irqtime() local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 false, ptr @sched_clock_irqtime, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irqtime_account_irq(ptr noundef readnone %curr, i32 noundef %offset) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @cpu_irqtime to i32)
  %6 = inttoptr i32 %add to ptr
  %.b = load i1, ptr @sched_clock_irqtime, align 4
  br i1 %.b, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i64 @sched_clock_cpu(i32 noundef %3) #9
  %irq_start_time = getelementptr inbounds %struct.irqtime, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %irq_start_time to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %irq_start_time, align 8
  %sub = sub i64 %call5, %8
  store i64 %call5, ptr %irq_start_time, align 8
  %9 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i33 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i33 to ptr
  %preempt_count.i34 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i34, align 4
  %and10 = and i32 %16, 983040
  %17 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i35 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i35 to ptr
  %preempt_count.i36 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i36, align 4
  %and12 = and i32 %20, 65280
  %or13 = or i32 %and10, %and12
  %sub14 = sub i32 %or13, %offset
  %and15 = and i32 %sub14, 983040
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else, label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %and18 = and i32 %sub14, 256
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %21 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %24, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !40
  %25 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i37 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i37 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %30, ptrtoint (ptr @ksoftirqd to i32)
  %31 = inttoptr i32 %add.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %31, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !41
  %34 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i19.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i19.i to ptr
  %preempt_count.i.i20.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i20.i, align 4
  %sub.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i20.i, align 4
  %cmp.not = icmp eq ptr %33, %curr
  br i1 %cmp.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true, %if.end
  %.sink = phi i32 [ 4, %if.end ], [ 3, %land.lhs.true ]
  tail call fastcc void @irqtime_account_delta(ptr noundef %6, i64 noundef %sub, i32 noundef %.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true, %if.else, %entry
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock_cpu(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irqtime_account_delta(ptr noundef %irqtime, i64 noundef %delta, i32 noundef %idx) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %u64_stats_update_begin.exit, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
  %9 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %18 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i7.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  %tobool20.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %cmp.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i9.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %29, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !44
  %30 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  %37 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i12.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %40, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  %tobool54.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i.i, label %u64_stats_update_begin.exit, label %land.rhs58.i.i

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %u64_stats_update_begin.exit, label %if.then.i.i, !prof !46

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i, %land.rhs22.i.i, %land.rhs.i.i, %land.lhs.true.i.i, %entry
  %sync = getelementptr inbounds %struct.irqtime, ptr %irqtime, i32 0, i32 3
  %add = add i32 %5, ptrtoint (ptr @kernel_cpustat to i32)
  %41 = inttoptr i32 %add to ptr
  %42 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sync, align 4
  %inc.i.i.i.i = add i32 %43, 1
  store i32 %inc.i.i.i.i, ptr %sync, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  %dep_map.i.i.i = getelementptr inbounds %struct.irqtime, ptr %irqtime, i32 0, i32 3, i32 0, i32 1
  %44 = tail call ptr @llvm.returnaddress(i32 0) #9
  %45 = ptrtoint ptr %44 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %45) #9
  %arrayidx3 = getelementptr i64, ptr %41, i32 %idx
  %46 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx3, align 8
  %add4 = add i64 %47, %delta
  store i64 %add4, ptr %arrayidx3, align 8
  %48 = ptrtoint ptr %irqtime to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %irqtime, align 8
  %add5 = add i64 %49, %delta
  store i64 %add5, ptr %irqtime, align 8
  %tick_delta = getelementptr inbounds %struct.irqtime, ptr %irqtime, i32 0, i32 1
  %50 = ptrtoint ptr %tick_delta to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %tick_delta, align 8
  %add6 = add i64 %51, %delta
  store i64 %add6, ptr %tick_delta, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %45) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  %52 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sync, align 4
  %inc.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i, ptr %sync, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @account_user_time(ptr noundef %p, i64 noundef %cputime) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %utime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 86
  %0 = ptrtoint ptr %utime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %utime, align 8
  %add = add i64 %1, %cputime
  store i64 %add, ptr %utime, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %2 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %signal.i.i, align 16
  %timers_active.i.i = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 21, i32 1
  %4 = ptrtoint ptr %timers_active.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %timers_active.i.i, align 8
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %account_group_user_time.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %sighand.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 112
  %6 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sighand.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i.i, label %account_group_user_time.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i
  %cputimer1.i.i = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 20
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cputimer1.i.i, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef %cputime, ptr noundef nonnull %cputimer1.i.i) #9
  br label %account_group_user_time.exit

account_group_user_time.exit:                     ; preds = %if.end.i, %if.end.i.i, %entry
  %static_prio.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 14
  %8 = ptrtoint ptr %static_prio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %static_prio.i, align 4
  %sub.i = add i32 %9, -120
  %cmp = icmp sgt i32 %sub.i, 0
  %cond = zext i1 %cmp to i32
  tail call fastcc void @task_group_account_field(ptr noundef %p, i32 noundef %cond, i64 noundef %cputime)
  tail call void @acct_account_cputime(ptr noundef %p) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @task_group_account_field(ptr noundef %p, i32 noundef %index, i64 noundef %tmp) unnamed_addr #4 align 64 {
entry:
  %arrayidx = getelementptr [10 x i64], ptr @kernel_cpustat, i32 0, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  %1 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx8 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx8, align 4
  %add = add i32 %6, %0
  %7 = inttoptr i32 %add to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  %add9 = add i64 %9, %tmp
  store i64 %add9, ptr %7, align 8
  tail call void @cpuacct_account_field(ptr noundef %p, i32 noundef %index, i64 noundef %tmp) #9
  %10 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !49
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %rcu_read_lock.exit.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %rcu_read_lock.exit.i, label %land.lhs.true2.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %rcu_read_lock.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i, %land.lhs.true.i.i, %entry
  %cgroups.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 164
  %14 = ptrtoint ptr %cgroups.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %cgroups.i.i.i, align 16
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #9
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %task_dfl_cgroup.exit.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i
  %call.i18.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  %tobool3.not.i.i.i = icmp eq i32 %call.i18.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false4.i.i.i, label %task_dfl_cgroup.exit.i

lor.lhs.false4.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 3
  %16 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %17, 4
  %tobool5.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %lor.lhs.false6.i.i.i, label %task_dfl_cgroup.exit.i

lor.lhs.false6.i.i.i:                             ; preds = %lor.lhs.false4.i.i.i
  %call7.i.i.i = tail call i32 @rcu_read_lock_held() #9
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i, label %task_dfl_cgroup.exit.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false6.i.i.i
  %call9.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  %tobool10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %task_dfl_cgroup.exit.i, label %land.lhs.true11.i.i.i

land.lhs.true11.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %.b17.i.i.i = load i1, ptr @task_css_set.__warned, align 1
  br i1 %.b17.i.i.i, label %task_dfl_cgroup.exit.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true11.i.i.i
  store i1 true, ptr @task_css_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 481, ptr noundef nonnull @.str.5) #9
  br label %task_dfl_cgroup.exit.i

task_dfl_cgroup.exit.i:                           ; preds = %if.then.i.i.i, %land.lhs.true11.i.i.i, %land.lhs.true.i.i.i, %lor.lhs.false6.i.i.i, %lor.lhs.false4.i.i.i, %lor.lhs.false.i.i.i, %rcu_read_lock.exit.i
  %dfl_cgrp.i.i = getelementptr inbounds %struct.css_set, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %dfl_cgrp.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dfl_cgrp.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %task_dfl_cgroup.exit.i
  tail call void @__cgroup_account_cputime_field(ptr noundef %19, i32 noundef %index, i64 noundef %tmp) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %task_dfl_cgroup.exit.i
  %call.i6.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i6.i, label %cgroup_account_cputime_field.exit, label %land.lhs.true.i9.i

land.lhs.true.i9.i:                               ; preds = %if.end.i
  %call1.i7.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  %tobool.not.i8.i = icmp eq i32 %call1.i7.i, 0
  br i1 %tobool.not.i8.i, label %cgroup_account_cputime_field.exit, label %land.lhs.true2.i11.i

land.lhs.true2.i11.i:                             ; preds = %land.lhs.true.i9.i
  %.b4.i10.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10.i, label %cgroup_account_cputime_field.exit, label %if.then.i12.i

if.then.i12.i:                                    ; preds = %land.lhs.true2.i11.i
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #9
  br label %cgroup_account_cputime_field.exit

cgroup_account_cputime_field.exit:                ; preds = %if.then.i12.i, %land.lhs.true2.i11.i, %land.lhs.true.i9.i, %if.end.i
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !50
  %22 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i.i13.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i13.i to ptr
  %preempt_count.i.i.i.i14.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i14.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i14.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @acct_account_cputime(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @account_guest_time(ptr noundef %p, i64 noundef %cputime) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %utime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 86
  %6 = ptrtoint ptr %utime to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %utime, align 8
  %add3 = add i64 %7, %cputime
  store i64 %add3, ptr %utime, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %8 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal.i.i, align 16
  %timers_active.i.i = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 21, i32 1
  %10 = ptrtoint ptr %timers_active.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %timers_active.i.i, align 8
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %account_group_user_time.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %sighand.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 112
  %12 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sighand.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i.i, label %account_group_user_time.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i
  %cputimer1.i.i = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 20
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cputimer1.i.i, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef %cputime, ptr noundef nonnull %cputimer1.i.i) #9
  br label %account_group_user_time.exit

account_group_user_time.exit:                     ; preds = %if.end.i, %if.end.i.i, %entry
  %add = add i32 %5, ptrtoint (ptr @kernel_cpustat to i32)
  %14 = inttoptr i32 %add to ptr
  %gtime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 88
  %15 = ptrtoint ptr %gtime to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %gtime, align 8
  %add4 = add i64 %16, %cputime
  store i64 %add4, ptr %gtime, align 8
  %static_prio.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 14
  %17 = ptrtoint ptr %static_prio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %static_prio.i, align 4
  %sub.i = add i32 %18, -120
  %cmp = icmp sgt i32 %sub.i, 0
  %. = zext i1 %cmp to i32
  %.24 = select i1 %cmp, i32 9, i32 8
  tail call fastcc void @task_group_account_field(ptr noundef %p, i32 noundef %., i64 noundef %cputime)
  %arrayidx8 = getelementptr i64, ptr %14, i32 %.24
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx8, align 8
  %add9 = add i64 %20, %cputime
  store i64 %add9, ptr %arrayidx8, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @account_system_index_time(ptr noundef %p, i64 noundef %cputime, i32 noundef %index) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %stime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 87
  %0 = ptrtoint ptr %stime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %stime, align 32
  %add = add i64 %1, %cputime
  store i64 %add, ptr %stime, align 32
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %2 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %signal.i.i, align 16
  %timers_active.i.i = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 21, i32 1
  %4 = ptrtoint ptr %timers_active.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %timers_active.i.i, align 8
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %account_group_system_time.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %sighand.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 112
  %6 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sighand.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i.i, label %account_group_system_time.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i
  %stime.i = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 20, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stime.i, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef %cputime, ptr noundef %stime.i) #9
  br label %account_group_system_time.exit

account_group_system_time.exit:                   ; preds = %if.end.i, %if.end.i.i, %entry
  tail call fastcc void @task_group_account_field(ptr noundef %p, i32 noundef %index, i64 noundef %cputime)
  tail call void @acct_account_cputime(ptr noundef %p) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @account_system_time(ptr noundef %p, i32 noundef %hardirq_offset, i64 noundef %cputime) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i, align 4
  %and1 = and i32 %5, 15728640
  %6 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i24 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i24 to ptr
  %preempt_count.i25 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i25, align 4
  %and3 = and i32 %9, 983040
  %or = or i32 %and3, %and1
  %10 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i26 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i26 to ptr
  %preempt_count.i27 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i27, align 4
  %and5 = and i32 %13, 65280
  %or6 = or i32 %or, %and5
  %cmp = icmp eq i32 %or6, %hardirq_offset
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @account_guest_time(ptr noundef %p, i64 noundef %cputime)
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %14 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i28 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i28 to ptr
  %preempt_count.i29 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i29, align 4
  %and8 = and i32 %17, 983040
  %tobool10.not = icmp eq i32 %and8, %hardirq_offset
  br i1 %tobool10.not, label %if.else, label %if.end19

if.else:                                          ; preds = %if.end
  %18 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i30 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i30 to ptr
  %preempt_count.i31 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i31, align 4
  %and14 = and i32 %21, 256
  %tobool15.not = icmp eq i32 %and14, 0
  %. = select i1 %tobool15.not, i32 2, i32 3
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  %index.0 = phi i32 [ 4, %if.end ], [ %., %if.else ]
  %stime.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 87
  %22 = ptrtoint ptr %stime.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %stime.i, align 32
  %add.i = add i64 %23, %cputime
  store i64 %add.i, ptr %stime.i, align 32
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %24 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %signal.i.i.i, align 16
  %timers_active.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %25, i32 0, i32 21, i32 1
  %26 = ptrtoint ptr %timers_active.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %timers_active.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %account_system_index_time.exit, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end19
  %sighand.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 112
  %28 = ptrtoint ptr %sighand.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sighand.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool3.not.i.i.i, label %account_system_index_time.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.i
  %stime.i.i = getelementptr inbounds %struct.signal_struct, ptr %25, i32 0, i32 20, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stime.i.i, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef %cputime, ptr noundef %stime.i.i) #9
  br label %account_system_index_time.exit

account_system_index_time.exit:                   ; preds = %if.end.i.i, %if.end.i.i.i, %if.end19
  tail call fastcc void @task_group_account_field(ptr noundef %p, i32 noundef %index.0, i64 noundef %cputime) #9
  tail call void @acct_account_cputime(ptr noundef %p) #9
  br label %cleanup

cleanup:                                          ; preds = %account_system_index_time.exit, %if.then
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @account_steal_time(i64 noundef %cputime) local_unnamed_addr #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @kernel_cpustat to i32)
  %6 = inttoptr i32 %add to ptr
  %arrayidx3 = getelementptr i64, ptr %6, i32 7
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx3, align 8
  %add4 = add i64 %8, %cputime
  store i64 %add4, ptr %arrayidx3, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @account_idle_time(i64 noundef %cputime) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @kernel_cpustat to i32)
  %6 = inttoptr i32 %add to ptr
  %add13 = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %add13 to ptr
  %nr_iowait = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 31
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_iowait, i32 noundef 4) #9
  %8 = ptrtoint ptr %nr_iowait to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %nr_iowait, align 4
  %cmp = icmp sgt i32 %9, 0
  %. = select i1 %cmp, i32 6, i32 5
  %arrayidx17 = getelementptr i64, ptr %6, i32 %.
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx17, align 8
  %add18 = add i64 %11, %cputime
  store i64 %add18, ptr %arrayidx17, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @thread_group_cputime(ptr nocapture noundef readonly %tsk, ptr nocapture noundef %times) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rf.i = alloca %struct.rq_flags, align 4
  %signal = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 111
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal, align 16
  %2 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 111
  %6 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal.i, align 16
  %cmp.i = icmp eq ptr %7, %1
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = tail call i64 @task_sched_runtime(ptr noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !49
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %if.end
  %stats_lock = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 27
  %lock.i.i = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 27, i32 1
  %utime6 = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 28
  %utime7 = getelementptr inbounds %struct.task_cputime, ptr %times, i32 0, i32 1
  %stime8 = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 29
  %sum_sched_runtime = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 50
  %sum_exec_runtime = getelementptr inbounds %struct.task_cputime, ptr %times, i32 0, i32 2
  %12 = getelementptr inbounds %struct.rq_flags, ptr %rf.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.rq_flags, ptr %rf.i, i32 0, i32 2
  %14 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !51
  %and.i.i.i.i = and i32 %14, 128
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %dep_map.c.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 27, i32 0, i32 0, i32 1
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %rcu_read_lock.exit
  call void @trace_hardirqs_off() #9
  %15 = call ptr @llvm.returnaddress(i32 0) #9
  %16 = ptrtoint ptr %15 to i32
  call void @lock_acquire(ptr noundef %dep_map.c.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %16) #9
  call void @lock_release(ptr noundef %dep_map.c.i.i.i, i32 noundef %16) #9
  call void @trace_hardirqs_on() #9
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %rcu_read_lock.exit
  %17 = call ptr @llvm.returnaddress(i32 0) #9
  %18 = ptrtoint ptr %17 to i32
  call void @lock_acquire(ptr noundef %dep_map.c.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %18) #9
  call void @lock_release(ptr noundef %dep_map.c.i.i.i, i32 noundef %18) #9
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %19 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !52
  %and.i.i.i.i.i67 = and i32 %19, 128
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i67, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %seqcount_lockdep_reader_access.exit.i.i, !prof !53

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #9, !srcloc !54
  %20 = ptrtoint ptr %stats_lock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %stats_lock, align 4
  %and18.i.i = and i32 %21, 1
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %read_seqbegin.exit.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i, %seqcount_lockdep_reader_access.exit.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !56
  %22 = ptrtoint ptr %stats_lock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %stats_lock, align 4
  %and.i.i = and i32 %23, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %read_seqbegin.exit.i, label %do.end.i.i

read_seqbegin.exit.i:                             ; preds = %do.end.i.i, %seqcount_lockdep_reader_access.exit.i.i
  %.lcssa.i.i = phi i32 [ %21, %seqcount_lockdep_reader_access.exit.i.i ], [ %23, %do.end.i.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  br label %read_seqbegin_or_lock_irqsave.exit

do.body.i:                                        ; preds = %need_seqretry.exit
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  br label %read_seqbegin_or_lock_irqsave.exit

read_seqbegin_or_lock_irqsave.exit:               ; preds = %do.body.i, %read_seqbegin.exit.i
  %seq.0 = phi i32 [ %.lcssa.i.i, %read_seqbegin.exit.i ], [ 1, %do.body.i ]
  %flags.0.i = phi i32 [ 0, %read_seqbegin.exit.i ], [ %call2.i.i, %do.body.i ]
  %24 = ptrtoint ptr %utime6 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %utime6, align 8
  %26 = ptrtoint ptr %utime7 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %utime7, align 8
  %27 = ptrtoint ptr %stime8 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %stime8, align 8
  %29 = ptrtoint ptr %times to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %times, align 8
  %30 = ptrtoint ptr %sum_sched_runtime to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %sum_sched_runtime, align 8
  %32 = ptrtoint ptr %sum_exec_runtime to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %sum_exec_runtime, align 8
  %call11 = call i32 @rcu_read_lock_any_held() #9
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.end

land.lhs.true:                                    ; preds = %read_seqbegin_or_lock_irqsave.exit
  %call12 = call i32 @debug_lockdep_rcu_enabled() #9
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b63 = load i1, ptr @thread_group_cputime.__warned, align 1
  br i1 %.b63, label %do.end, label %if.then16

if.then16:                                        ; preds = %land.lhs.true14
  store i1 true, ptr @thread_group_cputime.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 323, ptr noundef nonnull @.str.1) #9
  br label %do.end

do.end:                                           ; preds = %if.then16, %land.lhs.true14, %land.lhs.true, %read_seqbegin_or_lock_irqsave.exit
  %33 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %thread_head to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn89 = load volatile ptr, ptr %thread_head, align 4
  %cmp.not91 = icmp eq ptr %.pn89, %thread_head
  br i1 %cmp.not91, label %for.end, label %for.body

for.body:                                         ; preds = %read_sum_exec_runtime.exit, %do.end
  %.pn92 = phi ptr [ %.pn, %read_sum_exec_runtime.exit ], [ %.pn89, %do.end ]
  %t.0 = getelementptr i8, ptr %.pn92, i32 -1404
  %utime1.i = getelementptr i8, ptr %.pn92, i32 28
  %36 = ptrtoint ptr %utime1.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %utime1.i, align 8
  %stime2.i = getelementptr i8, ptr %.pn92, i32 36
  %38 = ptrtoint ptr %stime2.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %stime2.i, align 32
  %40 = ptrtoint ptr %utime7 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %utime7, align 8
  %add = add i64 %41, %37
  store i64 %add, ptr %utime7, align 8
  %42 = ptrtoint ptr %times to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %times, align 8
  %add28 = add i64 %43, %39
  store i64 %add28, ptr %times, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rf.i) #9
  %44 = ptrtoint ptr %rf.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %rf.i, align 4, !annotation !58
  %45 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %12, align 4, !annotation !58
  %46 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %13, align 4, !annotation !58
  %call.i68 = call ptr @task_rq_lock(ptr noundef %t.0, ptr noundef nonnull %rf.i) #9
  %sum_exec_runtime.i = getelementptr i8, ptr %.pn92, i32 -1236
  %47 = ptrtoint ptr %sum_exec_runtime.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %sum_exec_runtime.i, align 8
  %clock_update_flags.i.i.i = getelementptr inbounds %struct.rq, ptr %call.i68, i32 0, i32 25
  %49 = ptrtoint ptr %clock_update_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %clock_update_flags.i.i.i, align 4
  %cmp.i.i.i = icmp ugt i32 %50, 2
  br i1 %cmp.i.i.i, label %if.then.i.i.i69, label %if.end.i.i.i

if.then.i.i.i69:                                  ; preds = %for.body
  %51 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %13, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i69, %for.body
  %core_enabled.i.i.i.i = getelementptr inbounds %struct.rq, ptr %call.i68, i32 0, i32 81
  %52 = ptrtoint ptr %core_enabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %core_enabled.i.i.i.i, align 128
  %tobool.not.i.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i.i.i, label %read_sum_exec_runtime.exit, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %core.i.i.i.i = getelementptr inbounds %struct.rq, ptr %call.i68, i32 0, i32 79
  %54 = ptrtoint ptr %core.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %core.i.i.i.i, align 8
  br label %read_sum_exec_runtime.exit

read_sum_exec_runtime.exit:                       ; preds = %if.then.i.i.i.i, %if.end.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %55, %if.then.i.i.i.i ], [ %call.i68, %if.end.i.i.i ]
  %dep_map.i.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %56 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.unpack.i.i.i = load i32, ptr %12, align 4
  %57 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i, 0
  call void @lock_unpin_lock(ptr noundef %dep_map.i.i.i, [1 x i32] %57) #9
  call void @raw_spin_rq_unlock(ptr noundef %call.i68) #9
  %pi_lock.i.i = getelementptr i8, ptr %.pn92, i32 424
  %58 = ptrtoint ptr %rf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rf.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock.i.i, i32 noundef %59) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rf.i) #9
  %60 = ptrtoint ptr %sum_exec_runtime to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %sum_exec_runtime, align 8
  %add31 = add i64 %61, %48
  store i64 %add31, ptr %sum_exec_runtime, align 8
  %62 = ptrtoint ptr %.pn92 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn = load volatile ptr, ptr %.pn92, align 4
  %63 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %signal, align 16
  %thread_head24 = getelementptr inbounds %struct.signal_struct, ptr %64, i32 0, i32 3
  %cmp.not = icmp eq ptr %.pn, %thread_head24
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %read_sum_exec_runtime.exit, %do.end
  %and.i70 = and i32 %seq.0, 1
  %tobool.not.i71 = icmp eq i32 %and.i70, 0
  br i1 %tobool.not.i71, label %need_seqretry.exit, label %if.then.i75

need_seqretry.exit:                               ; preds = %for.end
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %65 = ptrtoint ptr %stats_lock to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %stats_lock, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %66, %seq.0
  br i1 %cmp.i.i.i.i.not, label %done_seqretry_irqrestore.exit, label %do.body.i

if.then.i75:                                      ; preds = %for.end
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %flags.0.i) #9
  br label %done_seqretry_irqrestore.exit

done_seqretry_irqrestore.exit:                    ; preds = %if.then.i75, %need_seqretry.exit
  %call.i76 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i76, label %rcu_read_unlock.exit, label %land.lhs.true.i79

land.lhs.true.i79:                                ; preds = %done_seqretry_irqrestore.exit
  %call1.i77 = call i32 @debug_lockdep_rcu_enabled() #9
  %tobool.not.i78 = icmp eq i32 %call1.i77, 0
  br i1 %tobool.not.i78, label %rcu_read_unlock.exit, label %land.lhs.true2.i81

land.lhs.true2.i81:                               ; preds = %land.lhs.true.i79
  %.b4.i80 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i80, label %rcu_read_unlock.exit, label %if.then.i82

if.then.i82:                                      ; preds = %land.lhs.true2.i81
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i82, %land.lhs.true2.i81, %land.lhs.true.i79, %done_seqretry_irqrestore.exit
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !50
  %67 = call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i.i83 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i83 to ptr
  %preempt_count.i.i.i.i84 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i84, align 4
  %sub.i.i.i = add i32 %70, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i84, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @task_sched_runtime(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @account_process_tick(ptr noundef %p, i32 noundef %user_tick) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @sched_clock_irqtime, align 4
  br i1 %.b, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  tail call fastcc void @irqtime_account_process_tick(ptr noundef %p, i32 noundef %user_tick, i32 noundef 1)
  br label %cleanup

if.end2:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @paravirt_steal_enabled, ptr blockaddress(@account_process_tick, %if.then.i)) #9
          to label %steal_account_process_time.exit [label %if.then.i], !srcloc !60

if.then.i:                                        ; preds = %if.end2
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__SCK__pv_steal_clock to i32))
  %4 = load ptr, ptr @__SCK__pv_steal_clock, align 4
  %call.i.i = tail call i64 %4(i32 noundef %3) #9
  %5 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, ptrtoint (ptr @runqueues to i32)
  %9 = inttoptr i32 %add.i to ptr
  %prev_steal_time.i = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 61
  %10 = ptrtoint ptr %prev_steal_time.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %prev_steal_time.i, align 8
  %sub.i = sub i64 %call.i.i, %11
  %12 = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 4294967295) #9
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %18, ptrtoint (ptr @kernel_cpustat to i32)
  %19 = inttoptr i32 %add.i.i to ptr
  %arrayidx3.i.i = getelementptr i64, ptr %19, i32 7
  %20 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx3.i.i, align 8
  %add4.i.i = add i64 %21, %12
  store i64 %add4.i.i, ptr %arrayidx3.i.i, align 8
  %22 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i, align 4
  %arrayidx16.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx16.i, align 4
  %add17.i = add i32 %25, ptrtoint (ptr @runqueues to i32)
  %26 = inttoptr i32 %add17.i to ptr
  %prev_steal_time18.i = getelementptr inbounds %struct.rq, ptr %26, i32 0, i32 61
  %27 = ptrtoint ptr %prev_steal_time18.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %prev_steal_time18.i, align 8
  %add19.i = add i64 %28, %12
  store i64 %add19.i, ptr %prev_steal_time18.i, align 8
  br label %steal_account_process_time.exit

steal_account_process_time.exit:                  ; preds = %if.then.i, %if.end2
  %retval.0.i = phi i64 [ %12, %if.then.i ], [ 0, %if.end2 ]
  %cmp = icmp ugt i64 %retval.0.i, 9999999
  br i1 %cmp, label %cleanup, label %if.end5

if.end5:                                          ; preds = %steal_account_process_time.exit
  %sub = sub nuw nsw i64 10000000, %retval.0.i
  %tobool6.not = icmp eq i32 %user_tick, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  %utime.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 86
  %29 = ptrtoint ptr %utime.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %utime.i, align 8
  %add.i37 = add i64 %30, %sub
  store i64 %add.i37, ptr %utime.i, align 8
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %31 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %signal.i.i.i, align 16
  %timers_active.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %32, i32 0, i32 21, i32 1
  %33 = ptrtoint ptr %timers_active.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %timers_active.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i.i, label %account_user_time.exit, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then7
  %sighand.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 112
  %35 = ptrtoint ptr %sighand.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sighand.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool3.not.i.i.i, label %account_user_time.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.i
  %cputimer1.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %32, i32 0, i32 20
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cputimer1.i.i.i, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef %sub, ptr noundef nonnull %cputimer1.i.i.i) #9
  br label %account_user_time.exit

account_user_time.exit:                           ; preds = %if.end.i.i, %if.end.i.i.i, %if.then7
  %static_prio.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 14
  %37 = ptrtoint ptr %static_prio.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %static_prio.i.i, align 4
  %sub.i.i = add i32 %38, -120
  %cmp.i = icmp sgt i32 %sub.i.i, 0
  %cond.i = zext i1 %cmp.i to i32
  tail call fastcc void @task_group_account_field(ptr noundef %p, i32 noundef %cond.i, i64 noundef %sub) #9
  tail call void @acct_account_cputime(ptr noundef %p) #9
  br label %cleanup

if.else:                                          ; preds = %if.end5
  %39 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %add = add i32 %44, ptrtoint (ptr @runqueues to i32)
  %45 = inttoptr i32 %add to ptr
  %idle = getelementptr inbounds %struct.rq, ptr %45, i32 0, i32 21
  %46 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %idle, align 4
  %cmp10.not = icmp eq ptr %47, %p
  br i1 %cmp10.not, label %lor.lhs.false, label %if.then18

lor.lhs.false:                                    ; preds = %if.else
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %49, 15728640
  %50 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i33 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i33 to ptr
  %preempt_count.i34 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i34, align 4
  %and13 = and i32 %53, 983040
  %or = or i32 %and13, %and
  %54 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i35 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i35 to ptr
  %preempt_count.i36 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i36 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i36, align 4
  %and15 = and i32 %57, 65280
  %or16 = or i32 %or, %and15
  %cmp17.not = icmp eq i32 %or16, 65536
  br i1 %cmp17.not, label %if.else19, label %if.then18

if.then18:                                        ; preds = %lor.lhs.false, %if.else
  tail call void @account_system_time(ptr noundef %p, i32 noundef 65536, i64 noundef %sub)
  br label %cleanup

if.else19:                                        ; preds = %lor.lhs.false
  tail call void @account_idle_time(i64 noundef %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.else19, %if.then18, %account_user_time.exit, %steal_account_process_time.exit, %if.then1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irqtime_account_process_tick(ptr noundef %p, i32 noundef %user_tick, i32 noundef %ticks) unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %ticks, 10000000
  %conv = sext i32 %mul to i64
  %call = tail call fastcc i64 @account_other_time()
  %cmp.not = icmp ult i64 %call, %conv
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i64 %conv, %call
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !40
  %4 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, ptrtoint (ptr @ksoftirqd to i32)
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !41
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i19.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i19.i to ptr
  %preempt_count.i.i20.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i20.i, align 4
  %sub.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i20.i, align 4
  %cmp3 = icmp eq ptr %12, %p
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %stime.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 87
  %17 = ptrtoint ptr %stime.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %stime.i, align 32
  %add.i35 = add i64 %18, %sub
  store i64 %add.i35, ptr %stime.i, align 32
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %19 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %signal.i.i.i, align 16
  %timers_active.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %20, i32 0, i32 21, i32 1
  %21 = ptrtoint ptr %timers_active.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %timers_active.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i.i, label %account_system_index_time.exit, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then5
  %sighand.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 112
  %23 = ptrtoint ptr %sighand.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sighand.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool3.not.i.i.i, label %account_system_index_time.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.i
  %stime.i.i = getelementptr inbounds %struct.signal_struct, ptr %20, i32 0, i32 20, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stime.i.i, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef %sub, ptr noundef %stime.i.i) #9
  br label %account_system_index_time.exit

account_system_index_time.exit:                   ; preds = %if.end.i.i, %if.end.i.i.i, %if.then5
  tail call fastcc void @task_group_account_field(ptr noundef %p, i32 noundef 3, i64 noundef %sub) #9
  tail call void @acct_account_cputime(ptr noundef %p) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  %tobool.not = icmp eq i32 %user_tick, 0
  br i1 %tobool.not, label %if.else7, label %if.then6

if.then6:                                         ; preds = %if.else
  %utime.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 86
  %25 = ptrtoint ptr %utime.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %utime.i, align 8
  %add.i36 = add i64 %26, %sub
  store i64 %add.i36, ptr %utime.i, align 8
  %signal.i.i.i37 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %27 = ptrtoint ptr %signal.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %signal.i.i.i37, align 16
  %timers_active.i.i.i38 = getelementptr inbounds %struct.signal_struct, ptr %28, i32 0, i32 21, i32 1
  %29 = ptrtoint ptr %timers_active.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %timers_active.i.i.i38, align 8
  %tobool.not.i.i.i39 = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i.i39, label %account_user_time.exit, label %if.end.i.i.i42

if.end.i.i.i42:                                   ; preds = %if.then6
  %sighand.i.i.i40 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 112
  %31 = ptrtoint ptr %sighand.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sighand.i.i.i40, align 4
  %tobool3.not.i.i.i41 = icmp eq ptr %32, null
  br i1 %tobool3.not.i.i.i41, label %account_user_time.exit, label %if.end.i.i44

if.end.i.i44:                                     ; preds = %if.end.i.i.i42
  %cputimer1.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %28, i32 0, i32 20
  %call.i.i.i.i43 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cputimer1.i.i.i, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef %sub, ptr noundef nonnull %cputimer1.i.i.i) #9
  br label %account_user_time.exit

account_user_time.exit:                           ; preds = %if.end.i.i44, %if.end.i.i.i42, %if.then6
  %static_prio.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 14
  %33 = ptrtoint ptr %static_prio.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %static_prio.i.i, align 4
  %sub.i.i45 = add i32 %34, -120
  %cmp.i = icmp sgt i32 %sub.i.i45, 0
  %cond.i = zext i1 %cmp.i to i32
  tail call fastcc void @task_group_account_field(ptr noundef %p, i32 noundef %cond.i, i64 noundef %sub) #9
  tail call void @acct_account_cputime(ptr noundef %p) #9
  br label %cleanup

if.else7:                                         ; preds = %if.else
  %35 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %add = add i32 %40, ptrtoint (ptr @runqueues to i32)
  %41 = inttoptr i32 %add to ptr
  %idle = getelementptr inbounds %struct.rq, ptr %41, i32 0, i32 21
  %42 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %idle, align 4
  %cmp10 = icmp eq ptr %43, %p
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else7
  %add.i49 = add i32 %40, ptrtoint (ptr @kernel_cpustat to i32)
  %44 = inttoptr i32 %add.i49 to ptr
  %nr_iowait.i = getelementptr inbounds %struct.rq, ptr %41, i32 0, i32 31
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_iowait.i, i32 noundef 4) #9
  %45 = ptrtoint ptr %nr_iowait.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %nr_iowait.i, align 4
  %cmp.i50 = icmp sgt i32 %46, 0
  %..i = select i1 %cmp.i50, i32 6, i32 5
  %arrayidx17.i = getelementptr i64, ptr %44, i32 %..i
  %47 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx17.i, align 8
  %add18.i = add i64 %48, %sub
  store i64 %add18.i, ptr %arrayidx17.i, align 8
  br label %cleanup

if.else13:                                        ; preds = %if.else7
  %flags = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 3
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  %and = and i32 %50, 1
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.else16, label %if.then15

if.then15:                                        ; preds = %if.else13
  tail call void @account_guest_time(ptr noundef %p, i64 noundef %sub)
  br label %cleanup

if.else16:                                        ; preds = %if.else13
  %stime.i51 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 87
  %51 = ptrtoint ptr %stime.i51 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %stime.i51, align 32
  %add.i52 = add i64 %52, %sub
  store i64 %add.i52, ptr %stime.i51, align 32
  %signal.i.i.i53 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %53 = ptrtoint ptr %signal.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %signal.i.i.i53, align 16
  %timers_active.i.i.i54 = getelementptr inbounds %struct.signal_struct, ptr %54, i32 0, i32 21, i32 1
  %55 = ptrtoint ptr %timers_active.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %timers_active.i.i.i54, align 8
  %tobool.not.i.i.i55 = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i.i55, label %account_system_index_time.exit62, label %if.end.i.i.i58

if.end.i.i.i58:                                   ; preds = %if.else16
  %sighand.i.i.i56 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 112
  %57 = ptrtoint ptr %sighand.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sighand.i.i.i56, align 4
  %tobool3.not.i.i.i57 = icmp eq ptr %58, null
  br i1 %tobool3.not.i.i.i57, label %account_system_index_time.exit62, label %if.end.i.i61

if.end.i.i61:                                     ; preds = %if.end.i.i.i58
  %stime.i.i59 = getelementptr inbounds %struct.signal_struct, ptr %54, i32 0, i32 20, i32 0, i32 1
  %call.i.i.i.i60 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stime.i.i59, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef %sub, ptr noundef %stime.i.i59) #9
  br label %account_system_index_time.exit62

account_system_index_time.exit62:                 ; preds = %if.end.i.i61, %if.end.i.i.i58, %if.else16
  tail call fastcc void @task_group_account_field(ptr noundef %p, i32 noundef 2, i64 noundef %sub) #9
  tail call void @acct_account_cputime(ptr noundef %p) #9
  br label %cleanup

cleanup:                                          ; preds = %account_system_index_time.exit62, %if.then15, %if.then12, %account_user_time.exit, %account_system_index_time.exit, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @account_idle_ticks(i32 noundef %ticks) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @sched_clock_irqtime, align 4
  br i1 %.b, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i9 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i9 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  tail call fastcc void @irqtime_account_process_tick(ptr noundef %3, i32 noundef 0, i32 noundef %ticks) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = mul i32 %ticks, 10000000
  %conv = zext i32 %mul to i64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @paravirt_steal_enabled, ptr blockaddress(@account_idle_ticks, %if.then.i)) #9
          to label %steal_account_process_time.exit [label %if.then.i], !srcloc !60

if.then.i:                                        ; preds = %if.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__SCK__pv_steal_clock to i32))
  %8 = load ptr, ptr @__SCK__pv_steal_clock, align 4
  %call.i.i = tail call i64 %8(i32 noundef %7) #9
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, ptrtoint (ptr @runqueues to i32)
  %13 = inttoptr i32 %add.i to ptr
  %prev_steal_time.i = getelementptr inbounds %struct.rq, ptr %13, i32 0, i32 61
  %14 = ptrtoint ptr %prev_steal_time.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %prev_steal_time.i, align 8
  %sub.i = sub i64 %call.i.i, %15
  %16 = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 4294967295) #9
  %17 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %22, ptrtoint (ptr @kernel_cpustat to i32)
  %23 = inttoptr i32 %add.i.i to ptr
  %arrayidx3.i.i = getelementptr i64, ptr %23, i32 7
  %24 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx3.i.i, align 8
  %add4.i.i = add i64 %25, %16
  store i64 %add4.i.i, ptr %arrayidx3.i.i, align 8
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx16.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx16.i, align 4
  %add17.i = add i32 %29, ptrtoint (ptr @runqueues to i32)
  %30 = inttoptr i32 %add17.i to ptr
  %prev_steal_time18.i = getelementptr inbounds %struct.rq, ptr %30, i32 0, i32 61
  %31 = ptrtoint ptr %prev_steal_time18.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %prev_steal_time18.i, align 8
  %add19.i = add i64 %32, %16
  store i64 %add19.i, ptr %prev_steal_time18.i, align 8
  br label %steal_account_process_time.exit

steal_account_process_time.exit:                  ; preds = %if.then.i, %if.end
  %retval.0.i = phi i64 [ %16, %if.then.i ], [ 0, %if.end ]
  %cmp.not = icmp ult i64 %retval.0.i, %conv
  br i1 %cmp.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %steal_account_process_time.exit
  %sub = sub nsw i64 %conv, %retval.0.i
  %33 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i10 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i10 to ptr
  %cpu.i11 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu.i11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i11, align 4
  %arrayidx.i12 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i12, align 4
  %add.i13 = add i32 %38, ptrtoint (ptr @kernel_cpustat to i32)
  %39 = inttoptr i32 %add.i13 to ptr
  %add13.i = add i32 %38, ptrtoint (ptr @runqueues to i32)
  %40 = inttoptr i32 %add13.i to ptr
  %nr_iowait.i = getelementptr inbounds %struct.rq, ptr %40, i32 0, i32 31
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_iowait.i, i32 noundef 4) #9
  %41 = ptrtoint ptr %nr_iowait.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %nr_iowait.i, align 4
  %cmp.i = icmp sgt i32 %42, 0
  %..i = select i1 %cmp.i, i32 6, i32 5
  %arrayidx17.i = getelementptr i64, ptr %39, i32 %..i
  %43 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx17.i, align 8
  %add18.i = add i64 %sub, %44
  store i64 %add18.i, ptr %arrayidx17.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %steal_account_process_time.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cputime_adjust(ptr nocapture noundef readonly %curr, ptr noundef %prev, ptr nocapture noundef writeonly %ut, ptr nocapture noundef writeonly %st) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.prev_cputime, ptr %prev, i32 0, i32 2
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %sum_exec_runtime = getelementptr inbounds %struct.task_cputime, ptr %curr, i32 0, i32 2
  %0 = ptrtoint ptr %sum_exec_runtime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sum_exec_runtime, align 8
  %stime1 = getelementptr inbounds %struct.prev_cputime, ptr %prev, i32 0, i32 1
  %2 = ptrtoint ptr %stime1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %stime1, align 8
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %prev, align 8
  %add = add i64 %5, %3
  %cmp3.not = icmp ult i64 %add, %1
  br i1 %cmp3.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %curr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %curr, align 8
  %utime6 = getelementptr inbounds %struct.task_cputime, ptr %curr, i32 0, i32 1
  %8 = ptrtoint ptr %utime6 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %utime6, align 8
  %cmp7 = icmp eq i64 %7, 0
  br i1 %cmp7, label %update, label %if.end10

if.end10:                                         ; preds = %if.end
  %cmp11 = icmp eq i64 %9, 0
  br i1 %cmp11, label %update, label %if.end14

if.end14:                                         ; preds = %if.end10
  %add15 = add i64 %9, %7
  %call16 = tail call i64 @mul_u64_u64_div_u64(i64 noundef %7, i64 noundef %1, i64 noundef %add15) #9
  br label %update

update:                                           ; preds = %if.end14, %if.end10, %if.end
  %stime.0 = phi i64 [ %call16, %if.end14 ], [ 0, %if.end ], [ %1, %if.end10 ]
  %10 = ptrtoint ptr %stime1 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %stime1, align 8
  %12 = tail call i64 @llvm.umax.i64(i64 %stime.0, i64 %11)
  %sub = sub i64 %1, %12
  %13 = ptrtoint ptr %prev to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %prev, align 8
  %cmp24 = icmp ult i64 %sub, %14
  %sub28 = sub i64 %1, %14
  %15 = tail call i64 @llvm.umax.i64(i64 %sub, i64 %14)
  %stime.2 = select i1 %cmp24, i64 %sub28, i64 %12
  %16 = ptrtoint ptr %stime1 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %stime.2, ptr %stime1, align 8
  %17 = ptrtoint ptr %prev to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %15, ptr %prev, align 8
  br label %out

out:                                              ; preds = %update, %entry
  %18 = ptrtoint ptr %prev to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %prev, align 8
  %20 = ptrtoint ptr %ut to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %ut, align 8
  %21 = ptrtoint ptr %stime1 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %stime1, align 8
  %23 = ptrtoint ptr %st to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %st, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mul_u64_u64_div_u64(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @task_cputime_adjusted(ptr noundef %p, ptr nocapture noundef writeonly %ut, ptr nocapture noundef writeonly %st) #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %sum_exec_runtime1 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 18, i32 5
  %0 = ptrtoint ptr %sum_exec_runtime1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sum_exec_runtime1, align 8
  %utime1.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 86
  %2 = ptrtoint ptr %utime1.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %utime1.i, align 8
  %stime2.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 87
  %4 = ptrtoint ptr %stime2.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %stime2.i, align 32
  %prev_cputime = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 89
  %lock.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 89, i32 2
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %stime1.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 89, i32 1
  %6 = ptrtoint ptr %stime1.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %stime1.i, align 8
  %8 = ptrtoint ptr %prev_cputime to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %prev_cputime, align 8
  %add.i = add i64 %9, %7
  %cmp3.not.i = icmp ult i64 %add.i, %1
  br i1 %cmp3.not.i, label %if.end.i, label %cputime_adjust.exit

if.end.i:                                         ; preds = %entry
  %cmp7.i = icmp eq i64 %5, 0
  br i1 %cmp7.i, label %update.i, label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i
  %cmp11.i = icmp eq i64 %3, 0
  br i1 %cmp11.i, label %update.i, label %if.end14.i

if.end14.i:                                       ; preds = %if.end10.i
  %add15.i = add i64 %5, %3
  %call16.i = tail call i64 @mul_u64_u64_div_u64(i64 noundef %5, i64 noundef %1, i64 noundef %add15.i) #9
  br label %update.i

update.i:                                         ; preds = %if.end14.i, %if.end10.i, %if.end.i
  %stime.0.i = phi i64 [ %call16.i, %if.end14.i ], [ 0, %if.end.i ], [ %1, %if.end10.i ]
  %10 = ptrtoint ptr %stime1.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %stime1.i, align 8
  %12 = tail call i64 @llvm.umax.i64(i64 %stime.0.i, i64 %11) #9
  %sub.i = sub i64 %1, %12
  %13 = ptrtoint ptr %prev_cputime to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %prev_cputime, align 8
  %cmp24.i = icmp ult i64 %sub.i, %14
  %sub28.i = sub i64 %1, %14
  %15 = tail call i64 @llvm.umax.i64(i64 %sub.i, i64 %14) #9
  %stime.2.i = select i1 %cmp24.i, i64 %sub28.i, i64 %12
  %16 = ptrtoint ptr %stime1.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %stime.2.i, ptr %stime1.i, align 8
  %17 = ptrtoint ptr %prev_cputime to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %15, ptr %prev_cputime, align 8
  br label %cputime_adjust.exit

cputime_adjust.exit:                              ; preds = %update.i, %entry
  %18 = ptrtoint ptr %prev_cputime to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %prev_cputime, align 8
  %20 = ptrtoint ptr %ut to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %ut, align 8
  %21 = ptrtoint ptr %stime1.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %stime1.i, align 8
  %23 = ptrtoint ptr %st to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %st, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @thread_group_cputime_adjusted(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %ut, ptr nocapture noundef writeonly %st) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cputime = alloca %struct.task_cputime, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cputime) #9
  %0 = getelementptr inbounds %struct.task_cputime, ptr %cputime, i32 0, i32 2
  %1 = call ptr @memset(ptr %cputime, i32 255, i32 24)
  call void @thread_group_cputime(ptr noundef %p, ptr noundef nonnull %cputime)
  %signal = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %2 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %signal, align 16
  %prev_cputime = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 34
  %lock.i = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 34, i32 2
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %0, align 8
  %stime1.i = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 34, i32 1
  %6 = ptrtoint ptr %stime1.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %stime1.i, align 8
  %8 = ptrtoint ptr %prev_cputime to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %prev_cputime, align 8
  %add.i = add i64 %9, %7
  %cmp3.not.i = icmp ult i64 %add.i, %5
  br i1 %cmp3.not.i, label %if.end.i, label %cputime_adjust.exit

if.end.i:                                         ; preds = %entry
  %10 = getelementptr inbounds %struct.task_cputime, ptr %cputime, i32 0, i32 1
  %11 = ptrtoint ptr %cputime to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %cputime, align 8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %10, align 8
  %cmp7.i = icmp eq i64 %12, 0
  br i1 %cmp7.i, label %update.i, label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i
  %cmp11.i = icmp eq i64 %14, 0
  br i1 %cmp11.i, label %update.i, label %if.end14.i

if.end14.i:                                       ; preds = %if.end10.i
  %add15.i = add i64 %14, %12
  %call16.i = tail call i64 @mul_u64_u64_div_u64(i64 noundef %12, i64 noundef %5, i64 noundef %add15.i) #9
  br label %update.i

update.i:                                         ; preds = %if.end14.i, %if.end10.i, %if.end.i
  %stime.0.i = phi i64 [ %call16.i, %if.end14.i ], [ 0, %if.end.i ], [ %5, %if.end10.i ]
  %15 = ptrtoint ptr %stime1.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %stime1.i, align 8
  %17 = tail call i64 @llvm.umax.i64(i64 %stime.0.i, i64 %16) #9
  %sub.i = sub i64 %5, %17
  %18 = ptrtoint ptr %prev_cputime to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %prev_cputime, align 8
  %cmp24.i = icmp ult i64 %sub.i, %19
  %sub28.i = sub i64 %5, %19
  %20 = tail call i64 @llvm.umax.i64(i64 %sub.i, i64 %19) #9
  %stime.2.i = select i1 %cmp24.i, i64 %sub28.i, i64 %17
  %21 = ptrtoint ptr %stime1.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %stime.2.i, ptr %stime1.i, align 8
  %22 = ptrtoint ptr %prev_cputime to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %20, ptr %prev_cputime, align 8
  br label %cputime_adjust.exit

cputime_adjust.exit:                              ; preds = %update.i, %entry
  %23 = ptrtoint ptr %prev_cputime to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %prev_cputime, align 8
  %25 = ptrtoint ptr %ut to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %ut, align 8
  %26 = ptrtoint ptr %stime1.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %stime1.i, align 8
  %28 = ptrtoint ptr %st to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %st, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cputime) #9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuacct_account_field(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cgroup_account_cputime_field(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_rq_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_unpin_lock(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @account_other_time() unnamed_addr #4 align 64 {
entry:
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end86, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  %5 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !62
  %14 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i5 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i5 to ptr
  %preempt_count.i.i6 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i6, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i6, align 4
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %land.rhs, label %if.end86

land.rhs:                                         ; preds = %land.lhs.true
  %18 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i7 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7 to ptr
  %preempt_count.i.i8 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8, align 4
  %add.i9 = add i32 %21, 1
  store volatile i32 %add.i9, ptr %preempt_count.i.i8, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !63
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %arrayidx44 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %25, ptrtoint (ptr @hardirqs_enabled to i32)
  %26 = inttoptr i32 %add45 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !64
  %29 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i10 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i10 to ptr
  %preempt_count.i.i11 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i11, align 4
  %sub.i12 = add i32 %32, -1
  store volatile i32 %sub.i12, ptr %preempt_count.i.i11, align 4
  %tobool52.not = icmp eq i32 %28, 0
  br i1 %tobool52.not, label %if.end86, label %land.rhs55

land.rhs55:                                       ; preds = %land.rhs
  %.b1 = load i1, ptr @account_other_time.__already_done, align 1
  br i1 %.b1, label %if.end86, label %if.then, !prof !46

if.then:                                          ; preds = %land.rhs55
  store i1 true, ptr @account_other_time.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 260, i32 noundef 9, ptr noundef null) #9
  br label %if.end86

if.end86:                                         ; preds = %if.then, %land.rhs55, %land.rhs, %land.lhs.true, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @paravirt_steal_enabled, ptr blockaddress(@account_other_time, %if.then.i)) #9
          to label %steal_account_process_time.exit [label %if.then.i], !srcloc !60

if.then.i:                                        ; preds = %if.end86
  %33 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__SCK__pv_steal_clock to i32))
  %37 = load ptr, ptr @__SCK__pv_steal_clock, align 4
  %call.i.i = tail call i64 %37(i32 noundef %36) #9
  %38 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %add.i13 = add i32 %41, ptrtoint (ptr @runqueues to i32)
  %42 = inttoptr i32 %add.i13 to ptr
  %prev_steal_time.i = getelementptr inbounds %struct.rq, ptr %42, i32 0, i32 61
  %43 = ptrtoint ptr %prev_steal_time.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %prev_steal_time.i, align 8
  %sub.i14 = sub i64 %call.i.i, %44
  %45 = tail call i64 @llvm.umin.i64(i64 %sub.i14, i64 4294967295) #9
  %46 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i15 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i15 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %51, ptrtoint (ptr @kernel_cpustat to i32)
  %52 = inttoptr i32 %add.i.i to ptr
  %arrayidx3.i.i = getelementptr i64, ptr %52, i32 7
  %53 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx3.i.i, align 8
  %add4.i.i = add i64 %54, %45
  store i64 %add4.i.i, ptr %arrayidx3.i.i, align 8
  %55 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu.i, align 4
  %arrayidx16.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx16.i, align 4
  %add17.i = add i32 %58, ptrtoint (ptr @runqueues to i32)
  %59 = inttoptr i32 %add17.i to ptr
  %prev_steal_time18.i = getelementptr inbounds %struct.rq, ptr %59, i32 0, i32 61
  %60 = ptrtoint ptr %prev_steal_time18.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %prev_steal_time18.i, align 8
  %add19.i = add i64 %61, %45
  store i64 %add19.i, ptr %prev_steal_time18.i, align 8
  br label %steal_account_process_time.exit

steal_account_process_time.exit:                  ; preds = %if.then.i, %if.end86
  %retval.0.i = phi i64 [ %45, %if.then.i ], [ 0, %if.end86 ]
  %cmp.not = icmp eq i64 %retval.0.i, 4294967295
  br i1 %cmp.not, label %if.end100, label %if.then97

if.then97:                                        ; preds = %steal_account_process_time.exit
  %sub = xor i64 %retval.0.i, 4294967295
  %62 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i16 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i16 to ptr
  %cpu.i17 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %cpu.i17 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu.i17, align 4
  %arrayidx.i18 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i18, align 4
  %add.i19 = add i32 %67, ptrtoint (ptr @cpu_irqtime to i32)
  %68 = inttoptr i32 %add.i19 to ptr
  %tick_delta.i = getelementptr inbounds %struct.irqtime, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %tick_delta.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %tick_delta.i, align 8
  %71 = tail call i64 @llvm.umin.i64(i64 %70, i64 %sub) #9
  %sub.i20 = sub i64 %70, %71
  %72 = ptrtoint ptr %tick_delta.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %sub.i20, ptr %tick_delta.i, align 8
  %add99 = add nuw nsw i64 %71, %retval.0.i
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %steal_account_process_time.exit
  %accounted.0 = phi i64 [ %add99, %if.then97 ], [ 4294967295, %steal_account_process_time.exit ]
  ret i64 %accounted.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !10, !12, !14, !15, !17, !19, !20, !21, !23, !24, !25, !27, !28}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../kernel/sched/cputime.c", i32 323, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ksymtab_task_cputime_adjusted, !5, !"__ksymtab_task_cputime_adjusted", i1 false, i1 false}
!5 = !{!"../kernel/sched/cputime.c", i32 622, i32 1}
!6 = !{ptr @__pcpu_scope_cpu_irqtime, !7, !"__pcpu_scope_cpu_irqtime", i1 false, i1 false}
!7 = !{!"../kernel/sched/cputime.c", i32 20, i32 1}
!8 = !{ptr @__pcpu_unique_cpu_irqtime, !7, !"__pcpu_unique_cpu_irqtime", i1 false, i1 false}
!9 = !{ptr @cpu_irqtime, !7, !"cpu_irqtime", i1 false, i1 false}
!10 = distinct !{null, !11, !"sched_clock_irqtime", i1 false, i1 false}
!11 = !{!"../kernel/sched/cputime.c", i32 22, i32 12}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/sched/cputime.c", i32 108, i32 2}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/cgroup.h", i32 481, i32 9}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../kernel/sched/cputime.c", i32 260, i32 2}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2154957335}
!41 = !{i64 2154973093}
!42 = !{i64 2150174252}
!43 = !{i64 2150179186}
!44 = !{i64 2150200904}
!45 = !{i64 2150205798}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2150282325}
!48 = !{i64 2150282650}
!49 = !{i64 2149354469}
!50 = !{i64 2149354735}
!51 = !{i64 921213, i64 921274}
!52 = !{i64 923945}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 924230}
!55 = !{i64 2150296759}
!56 = !{i64 2150296601}
!57 = !{i64 2150296929}
!58 = !{!"auto-init"}
!59 = !{i64 2150282000}
!60 = !{i64 2148340348, i64 2148340353, i64 2148340366, i64 2148340410, i64 2148340444, i64 2148340465}
!61 = !{i64 2158707200}
!62 = !{i64 2158712134}
!63 = !{i64 2158733816}
!64 = !{i64 2158738710}
