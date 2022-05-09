; ModuleID = '/llk/IR_all_yes/kernel/time/posix-cpu-timers.c_pt.bc'
source_filename = "../kernel/time/posix-cpu-timers.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.k_clock = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.25 }
%struct.atomic_t = type { i32 }
%union.anon.25 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.67, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.46 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%union.anon.67 = type { %struct.callback_head }
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
%struct.cpu_timer = type { %struct.timerqueue_node, ptr, ptr, %struct.list_head, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_cputime = type { i64, i64, i64 }
%struct.k_itimer = type { %struct.list_head, %struct.hlist_node, %struct.spinlock, ptr, i32, i32, i32, i64, i64, i32, i32, i64, ptr, %union.anon.71, ptr, %union.anon.72, %struct.callback_head }
%union.anon.71 = type { ptr }
%union.anon.72 = type { %struct.anon.74 }
%struct.anon.74 = type { %struct.alarm }
%struct.alarm = type { %struct.timerqueue_node, %struct.hrtimer, ptr, i32, i32, ptr }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }

@thread_group_sample_cputime.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kernel/time/posix-cpu-timers.c\00", [33 x i8] zeroinitializer }, align 32
@run_posix_cpu_timers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@set_process_cpu_timer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@clock_posix_cpu = dso_local constant { %struct.k_clock, [32 x i8] } { %struct.k_clock { ptr @posix_cpu_clock_getres, ptr @posix_cpu_clock_set, ptr @posix_cpu_clock_get, ptr null, ptr null, ptr @posix_cpu_timer_create, ptr @posix_cpu_nsleep, ptr @posix_cpu_timer_set, ptr @posix_cpu_timer_del, ptr @posix_cpu_timer_get, ptr @posix_cpu_timer_rearm, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@clock_process = dso_local constant { %struct.k_clock, [32 x i8] } { %struct.k_clock { ptr @process_cpu_clock_getres, ptr null, ptr @process_cpu_clock_get, ptr null, ptr null, ptr @process_cpu_timer_create, ptr @process_cpu_nsleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@clock_thread = dso_local constant { %struct.k_clock, [32 x i8] } { %struct.k_clock { ptr @thread_cpu_clock_getres, ptr null, ptr @thread_cpu_clock_get, ptr null, ptr null, ptr @thread_cpu_timer_create, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@print_fatal_signals = external dso_local local_unnamed_addr global i32, align 4
@check_rlimit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s Watchdog Timeout (%s): %s[%d]\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check_rlimit\00", [19 x i8] zeroinitializer }, align 32
@check_rlimit._entry_ptr = internal global ptr @check_rlimit._entry, section ".printk_index", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RT\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CPU\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hard\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"soft\00", [27 x i8] zeroinitializer }, align 32
@__tracepoint_itimer_expire = external dso_local global %struct.tracepoint, align 4
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/timer.h\00", [35 x i8] zeroinitializer }, align 32
@trace_itimer_expire.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@cpu_clock_sample.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@do_cpu_nanosleep.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&timer.it_lock\00", [17 x i8] zeroinitializer }, align 32
@do_cpu_nanosleep.zero_it = internal global { %struct.itimerspec64, [32 x i8] } zeroinitializer, align 32
@posix_cpu_timer_del.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 272, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"clock_posix_cpu\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1610, i32 22 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"clock_process\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1622, i32 22 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"clock_thread\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1629, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 876, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [32 x i8] c"../include/trace/events/timer.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 341, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 108, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 695, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 723, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1448, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [8 x i8] c"zero_it\00", align 1
@___asan_gen_.75 = private constant [34 x i8] c"../kernel/time/posix-cpu-timers.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1455, i32 30 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @check_rlimit._entry, ptr @check_rlimit._entry_ptr, ptr @.str, ptr @clock_posix_cpu, ptr @clock_process, ptr @clock_thread, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @do_cpu_nanosleep.__key, ptr @.str.13, ptr @do_cpu_nanosleep.zero_it], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_posix_cpu to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_process to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_thread to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_rlimit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_cpu_nanosleep.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_cpu_nanosleep.zero_it to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @posix_cputimers_group_init(ptr nocapture noundef writeonly %pct, i64 noundef %cpu_limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %pct, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 48)
  %2 = ptrtoint ptr %pct to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %pct, align 8
  %arrayidx2.i = getelementptr [3 x %struct.posix_cputimer_base], ptr %pct, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %arrayidx2.i, align 8
  %arrayidx5.i = getelementptr [3 x %struct.posix_cputimer_base], ptr %pct, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %arrayidx5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %cpu_limit)
  %cmp.not = icmp eq i64 %cpu_limit, 4294967295
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul i64 %cpu_limit, 1000000000
  %5 = ptrtoint ptr %pct to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %mul, ptr %pct, align 8
  %timers_active = getelementptr inbounds %struct.posix_cputimers, ptr %pct, i32 0, i32 1
  %6 = ptrtoint ptr %timers_active to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %timers_active, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_rlimit_cpu(ptr noundef %task, i32 noundef %rlim_new) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %rlim_new, 1000000000
  %conv = zext i32 %mul to i64
  %sighand = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 112
  %0 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %2 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %signal.i, align 16
  %posix_cputimers.i = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 21
  %call.i = tail call fastcc i64 @cpu_clock_sample_group(i32 noundef 0, ptr noundef %task, i1 noundef zeroext true) #8
  %4 = ptrtoint ptr %posix_cputimers.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %posix_cputimers.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp51.i = icmp ugt i64 %5, %conv
  br i1 %cmp51.i, label %if.then52.i, label %entry.set_process_cpu_timer.exit_crit_edge

entry.set_process_cpu_timer.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_process_cpu_timer.exit

if.then52.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %posix_cputimers.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %posix_cputimers.i, align 8
  br label %set_process_cpu_timer.exit

set_process_cpu_timer.exit:                       ; preds = %if.then52.i, %entry.set_process_cpu_timer.exit_crit_edge
  %7 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %8) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_process_cpu_timer(ptr noundef %tsk, i32 noundef %clkid, ptr nocapture noundef %newval, ptr noundef %oldval) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %clkid)
  %cmp = icmp ugt i32 %clkid, 1
  br i1 %cmp, label %land.rhs, label %if.end37

land.rhs:                                         ; preds = %entry
  %.b73 = load i1, ptr @set_process_cpu_timer.__already_done, align 1
  br i1 %.b73, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !60

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @set_process_cpu_timer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1401, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end37:                                         ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 111
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal, align 16
  %posix_cputimers = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 21
  %arrayidx = getelementptr [3 x %struct.posix_cputimer_base], ptr %posix_cputimers, i32 0, i32 %clkid
  %call = tail call fastcc i64 @cpu_clock_sample_group(i32 noundef %clkid, ptr noundef %tsk, i1 noundef zeroext true)
  %tobool39.not = icmp eq ptr %oldval, null
  br i1 %tobool39.not, label %if.end37.if.end50_crit_edge, label %if.then40

if.end37.if.end50_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then40:                                        ; preds = %if.end37
  %2 = ptrtoint ptr %oldval to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %oldval, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool41.not = icmp eq i64 %3, 0
  br i1 %tobool41.not, label %if.then40.if.end46_crit_edge, label %if.then42

if.then40.if.end46_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then42:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %call)
  %cmp43.not = icmp ugt i64 %3, %call
  %sub = sub i64 %3, %call
  %.sink = select i1 %cmp43.not, i64 %sub, i64 10000000
  %4 = ptrtoint ptr %oldval to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %.sink, ptr %oldval, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.then40.if.end46_crit_edge
  %5 = ptrtoint ptr %newval to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %newval, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool47.not = icmp eq i64 %6, 0
  br i1 %tobool47.not, label %if.end46.if.end50_crit_edge, label %if.then48

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i64 %6, %call
  %7 = ptrtoint ptr %newval to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %add, ptr %newval, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end46.if.end50_crit_edge, %if.end37.if.end50_crit_edge
  %8 = ptrtoint ptr %newval to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %newval, align 8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp51 = icmp ult i64 %9, %11
  br i1 %cmp51, label %if.then52, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %9, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end50.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @thread_group_sample_cputime(ptr nocapture noundef readonly %tsk, ptr nocapture noundef writeonly %samples) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %signal = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 111
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal, align 16
  %timers_active = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 21, i32 1
  %2 = ptrtoint ptr %timers_active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timers_active, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %.b42 = load i1, ptr @thread_group_sample_cputime.__already_done, align 1
  br i1 %.b42, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !60

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @thread_group_sample_cputime.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 272, i32 noundef 9, ptr noundef null) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %cputimer1 = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 20
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cputimer1, i32 noundef 8) #8
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %cputimer1) #8
  %stime2.i = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 20, i32 0, i32 1
  %call.i.i7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stime2.i, i32 noundef 8) #8
  %call.i8.i = tail call i64 @generic_atomic64_read(ptr noundef %stime2.i) #8
  %sum_exec_runtime.i = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 20, i32 0, i32 2
  %call.i.i9.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sum_exec_runtime.i, i32 noundef 8) #8
  %call.i10.i = tail call i64 @generic_atomic64_read(ptr noundef %sum_exec_runtime.i) #8
  %add.i.i = add i64 %call.i8.i, %call.i.i
  %4 = ptrtoint ptr %samples to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add.i.i, ptr %samples, align 8
  %arrayidx1.i.i = getelementptr i64, ptr %samples, i32 1
  %5 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call.i.i, ptr %arrayidx1.i.i, align 8
  %arrayidx2.i.i = getelementptr i64, ptr %samples, i32 2
  %6 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i10.i, ptr %arrayidx2.i.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @posix_cpu_timers_exit(ptr noundef %tsk) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tqhead.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 96, i32 0, i32 0, i32 1
  %rb_leftmost.i.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 96, i32 0, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %rb_leftmost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_leftmost.i.i.i, align 4
  %tobool.not5.i.i = icmp eq ptr %1, null
  br i1 %tobool.not5.i.i, label %entry.cleanup_timerqueue.exit.i_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.cleanup_timerqueue.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_timerqueue.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %2 = phi ptr [ %5, %while.body.i.i.while.body.i.i_crit_edge ], [ %1, %entry.while.body.i.i_crit_edge ]
  %call1.i.i = tail call zeroext i1 @timerqueue_del(ptr noundef %tqhead.i, ptr noundef nonnull %2) #8
  %head2.i.i = getelementptr inbounds %struct.cpu_timer, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %head2.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %head2.i.i, align 8
  %4 = ptrtoint ptr %rb_leftmost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rb_leftmost.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %while.body.i.i.cleanup_timerqueue.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.cleanup_timerqueue.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_timerqueue.exit.i

cleanup_timerqueue.exit.i:                        ; preds = %while.body.i.i.cleanup_timerqueue.exit.i_crit_edge, %entry.cleanup_timerqueue.exit.i_crit_edge
  %tqhead3.i = getelementptr %struct.task_struct, ptr %tsk, i32 0, i32 96, i32 0, i32 1, i32 1
  %rb_leftmost.i.i9.i = getelementptr %struct.task_struct, ptr %tsk, i32 0, i32 96, i32 0, i32 1, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %rb_leftmost.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rb_leftmost.i.i9.i, align 4
  %tobool.not5.i10.i = icmp eq ptr %7, null
  br i1 %tobool.not5.i10.i, label %cleanup_timerqueue.exit.i.cleanup_timerqueue.exit15.i_crit_edge, label %cleanup_timerqueue.exit.i.while.body.i14.i_crit_edge

cleanup_timerqueue.exit.i.while.body.i14.i_crit_edge: ; preds = %cleanup_timerqueue.exit.i
  br label %while.body.i14.i

cleanup_timerqueue.exit.i.cleanup_timerqueue.exit15.i_crit_edge: ; preds = %cleanup_timerqueue.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_timerqueue.exit15.i

while.body.i14.i:                                 ; preds = %while.body.i14.i.while.body.i14.i_crit_edge, %cleanup_timerqueue.exit.i.while.body.i14.i_crit_edge
  %8 = phi ptr [ %11, %while.body.i14.i.while.body.i14.i_crit_edge ], [ %7, %cleanup_timerqueue.exit.i.while.body.i14.i_crit_edge ]
  %call1.i11.i = tail call zeroext i1 @timerqueue_del(ptr noundef %tqhead3.i, ptr noundef nonnull %8) #8
  %head2.i12.i = getelementptr inbounds %struct.cpu_timer, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %head2.i12.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %head2.i12.i, align 8
  %10 = ptrtoint ptr %rb_leftmost.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_leftmost.i.i9.i, align 4
  %tobool.not.i13.i = icmp eq ptr %11, null
  br i1 %tobool.not.i13.i, label %while.body.i14.i.cleanup_timerqueue.exit15.i_crit_edge, label %while.body.i14.i.while.body.i14.i_crit_edge

while.body.i14.i.while.body.i14.i_crit_edge:      ; preds = %while.body.i14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i14.i

while.body.i14.i.cleanup_timerqueue.exit15.i_crit_edge: ; preds = %while.body.i14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_timerqueue.exit15.i

cleanup_timerqueue.exit15.i:                      ; preds = %while.body.i14.i.cleanup_timerqueue.exit15.i_crit_edge, %cleanup_timerqueue.exit.i.cleanup_timerqueue.exit15.i_crit_edge
  %tqhead6.i = getelementptr %struct.task_struct, ptr %tsk, i32 0, i32 96, i32 0, i32 2, i32 1
  %rb_leftmost.i.i16.i = getelementptr %struct.task_struct, ptr %tsk, i32 0, i32 96, i32 0, i32 2, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %rb_leftmost.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rb_leftmost.i.i16.i, align 4
  %tobool.not5.i17.i = icmp eq ptr %13, null
  br i1 %tobool.not5.i17.i, label %cleanup_timerqueue.exit15.i.cleanup_timers.exit_crit_edge, label %cleanup_timerqueue.exit15.i.while.body.i21.i_crit_edge

cleanup_timerqueue.exit15.i.while.body.i21.i_crit_edge: ; preds = %cleanup_timerqueue.exit15.i
  br label %while.body.i21.i

cleanup_timerqueue.exit15.i.cleanup_timers.exit_crit_edge: ; preds = %cleanup_timerqueue.exit15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_timers.exit

while.body.i21.i:                                 ; preds = %while.body.i21.i.while.body.i21.i_crit_edge, %cleanup_timerqueue.exit15.i.while.body.i21.i_crit_edge
  %14 = phi ptr [ %17, %while.body.i21.i.while.body.i21.i_crit_edge ], [ %13, %cleanup_timerqueue.exit15.i.while.body.i21.i_crit_edge ]
  %call1.i18.i = tail call zeroext i1 @timerqueue_del(ptr noundef %tqhead6.i, ptr noundef nonnull %14) #8
  %head2.i19.i = getelementptr inbounds %struct.cpu_timer, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %head2.i19.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %head2.i19.i, align 8
  %16 = ptrtoint ptr %rb_leftmost.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rb_leftmost.i.i16.i, align 4
  %tobool.not.i20.i = icmp eq ptr %17, null
  br i1 %tobool.not.i20.i, label %while.body.i21.i.cleanup_timers.exit_crit_edge, label %while.body.i21.i.while.body.i21.i_crit_edge

while.body.i21.i.while.body.i21.i_crit_edge:      ; preds = %while.body.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i21.i

while.body.i21.i.cleanup_timers.exit_crit_edge:   ; preds = %while.body.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_timers.exit

cleanup_timers.exit:                              ; preds = %while.body.i21.i.cleanup_timers.exit_crit_edge, %cleanup_timerqueue.exit15.i.cleanup_timers.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @posix_cpu_timers_exit_group(ptr nocapture noundef readonly %tsk) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %signal = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 111
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal, align 16
  %tqhead.i = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 21, i32 0, i32 0, i32 1
  %rb_leftmost.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 21, i32 0, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %rb_leftmost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb_leftmost.i.i.i, align 4
  %tobool.not5.i.i = icmp eq ptr %3, null
  br i1 %tobool.not5.i.i, label %entry.cleanup_timerqueue.exit.i_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.cleanup_timerqueue.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_timerqueue.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %4 = phi ptr [ %7, %while.body.i.i.while.body.i.i_crit_edge ], [ %3, %entry.while.body.i.i_crit_edge ]
  %call1.i.i = tail call zeroext i1 @timerqueue_del(ptr noundef %tqhead.i, ptr noundef nonnull %4) #8
  %head2.i.i = getelementptr inbounds %struct.cpu_timer, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %head2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %head2.i.i, align 8
  %6 = ptrtoint ptr %rb_leftmost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rb_leftmost.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %while.body.i.i.cleanup_timerqueue.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.cleanup_timerqueue.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_timerqueue.exit.i

cleanup_timerqueue.exit.i:                        ; preds = %while.body.i.i.cleanup_timerqueue.exit.i_crit_edge, %entry.cleanup_timerqueue.exit.i_crit_edge
  %tqhead3.i = getelementptr %struct.signal_struct, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 1
  %rb_leftmost.i.i9.i = getelementptr %struct.signal_struct, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %rb_leftmost.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rb_leftmost.i.i9.i, align 4
  %tobool.not5.i10.i = icmp eq ptr %9, null
  br i1 %tobool.not5.i10.i, label %cleanup_timerqueue.exit.i.cleanup_timerqueue.exit15.i_crit_edge, label %cleanup_timerqueue.exit.i.while.body.i14.i_crit_edge

cleanup_timerqueue.exit.i.while.body.i14.i_crit_edge: ; preds = %cleanup_timerqueue.exit.i
  br label %while.body.i14.i

cleanup_timerqueue.exit.i.cleanup_timerqueue.exit15.i_crit_edge: ; preds = %cleanup_timerqueue.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_timerqueue.exit15.i

while.body.i14.i:                                 ; preds = %while.body.i14.i.while.body.i14.i_crit_edge, %cleanup_timerqueue.exit.i.while.body.i14.i_crit_edge
  %10 = phi ptr [ %13, %while.body.i14.i.while.body.i14.i_crit_edge ], [ %9, %cleanup_timerqueue.exit.i.while.body.i14.i_crit_edge ]
  %call1.i11.i = tail call zeroext i1 @timerqueue_del(ptr noundef %tqhead3.i, ptr noundef nonnull %10) #8
  %head2.i12.i = getelementptr inbounds %struct.cpu_timer, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %head2.i12.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %head2.i12.i, align 8
  %12 = ptrtoint ptr %rb_leftmost.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rb_leftmost.i.i9.i, align 4
  %tobool.not.i13.i = icmp eq ptr %13, null
  br i1 %tobool.not.i13.i, label %while.body.i14.i.cleanup_timerqueue.exit15.i_crit_edge, label %while.body.i14.i.while.body.i14.i_crit_edge

while.body.i14.i.while.body.i14.i_crit_edge:      ; preds = %while.body.i14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i14.i

while.body.i14.i.cleanup_timerqueue.exit15.i_crit_edge: ; preds = %while.body.i14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_timerqueue.exit15.i

cleanup_timerqueue.exit15.i:                      ; preds = %while.body.i14.i.cleanup_timerqueue.exit15.i_crit_edge, %cleanup_timerqueue.exit.i.cleanup_timerqueue.exit15.i_crit_edge
  %tqhead6.i = getelementptr %struct.signal_struct, ptr %1, i32 0, i32 21, i32 0, i32 2, i32 1
  %rb_leftmost.i.i16.i = getelementptr %struct.signal_struct, ptr %1, i32 0, i32 21, i32 0, i32 2, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %rb_leftmost.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rb_leftmost.i.i16.i, align 4
  %tobool.not5.i17.i = icmp eq ptr %15, null
  br i1 %tobool.not5.i17.i, label %cleanup_timerqueue.exit15.i.cleanup_timers.exit_crit_edge, label %cleanup_timerqueue.exit15.i.while.body.i21.i_crit_edge

cleanup_timerqueue.exit15.i.while.body.i21.i_crit_edge: ; preds = %cleanup_timerqueue.exit15.i
  br label %while.body.i21.i

cleanup_timerqueue.exit15.i.cleanup_timers.exit_crit_edge: ; preds = %cleanup_timerqueue.exit15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_timers.exit

while.body.i21.i:                                 ; preds = %while.body.i21.i.while.body.i21.i_crit_edge, %cleanup_timerqueue.exit15.i.while.body.i21.i_crit_edge
  %16 = phi ptr [ %19, %while.body.i21.i.while.body.i21.i_crit_edge ], [ %15, %cleanup_timerqueue.exit15.i.while.body.i21.i_crit_edge ]
  %call1.i18.i = tail call zeroext i1 @timerqueue_del(ptr noundef %tqhead6.i, ptr noundef nonnull %16) #8
  %head2.i19.i = getelementptr inbounds %struct.cpu_timer, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %head2.i19.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %head2.i19.i, align 8
  %18 = ptrtoint ptr %rb_leftmost.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rb_leftmost.i.i16.i, align 4
  %tobool.not.i20.i = icmp eq ptr %19, null
  br i1 %tobool.not.i20.i, label %while.body.i21.i.cleanup_timers.exit_crit_edge, label %while.body.i21.i.while.body.i21.i_crit_edge

while.body.i21.i.while.body.i21.i_crit_edge:      ; preds = %while.body.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i21.i

while.body.i21.i.cleanup_timers.exit_crit_edge:   ; preds = %while.body.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_timers.exit

cleanup_timers.exit:                              ; preds = %while.body.i21.i.cleanup_timers.exit_crit_edge, %cleanup_timerqueue.exit15.i.cleanup_timers.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @run_posix_cpu_timers() local_unnamed_addr #1 align 64 {
entry:
  %samples.i51.i.i = alloca [3 x i64], align 8
  %samples.i.i.i = alloca [3 x i64], align 8
  %flags.i.i = alloca i32, align 4
  %firing.i.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end87_crit_edge, label %land.lhs.true

entry.if.end87_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

land.lhs.true:                                    ; preds = %entry
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %6, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %14 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i111 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i111 to ptr
  %preempt_count.i.i112 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i112 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i112, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %land.rhs, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

land.rhs:                                         ; preds = %land.lhs.true
  %18 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i113 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i113 to ptr
  %preempt_count.i.i114 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i114 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i114, align 4
  %add.i115 = add i32 %21, 1
  store volatile i32 %add.i115, ptr %preempt_count.i.i114, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !63
  %22 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu, align 4
  %arrayidx45 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx45, align 4
  %add46 = add i32 %25, ptrtoint (ptr @hardirqs_enabled to i32)
  %26 = inttoptr i32 %add46 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !64
  %29 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i116 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i116 to ptr
  %preempt_count.i.i117 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i117 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i117, align 4
  %sub.i118 = add i32 %32, -1
  store volatile i32 %sub.i118, ptr %preempt_count.i.i117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool53.not = icmp eq i32 %28, 0
  br i1 %tobool53.not, label %land.rhs.if.end87_crit_edge, label %land.rhs56

land.rhs.if.end87_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

land.rhs56:                                       ; preds = %land.rhs
  %.b107 = load i1, ptr @run_posix_cpu_timers.__already_done, align 1
  br i1 %.b107, label %land.rhs56.if.end87_crit_edge, label %if.then, !prof !60

land.rhs56.if.end87_crit_edge:                    ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then:                                          ; preds = %land.rhs56
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @run_posix_cpu_timers.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1373, i32 noundef 9, ptr noundef null) #8
  br label %if.end87

if.end87:                                         ; preds = %if.then, %land.rhs56.if.end87_crit_edge, %land.rhs.if.end87_crit_edge, %land.lhs.true.if.end87_crit_edge, %entry.if.end87_crit_edge
  %posix_cputimers.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 96
  %33 = ptrtoint ptr %posix_cputimers.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %posix_cputimers.i, align 8
  %arrayidx2.i.i = getelementptr %struct.task_struct, ptr %3, i32 0, i32 96, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx2.i.i, align 8
  %or.demorgan.i.i = and i64 %36, %34
  %arrayidx6.i.i = getelementptr %struct.task_struct, ptr %3, i32 0, i32 96, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx6.i.i, align 8
  %or9.demorgan.i.i = and i64 %or.demorgan.i.i, %38
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %or9.demorgan.i.i)
  %tobool.not.i.i = icmp eq i64 %or9.demorgan.i.i, -1
  br i1 %tobool.not.i.i, label %if.end87.if.end4.i_crit_edge, label %if.then.i

if.end87.if.end4.i_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end87
  %utime1.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 86
  %39 = ptrtoint ptr %utime1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %utime1.i.i.i, align 8
  %stime2.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 87
  %41 = ptrtoint ptr %stime2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %stime2.i.i.i, align 32
  %sum_exec_runtime.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 18, i32 5
  %43 = ptrtoint ptr %sum_exec_runtime.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %sum_exec_runtime.i.i, align 8
  %add.i.i.i = add i64 %42, %40
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %34)
  %cmp2.not.i.i = icmp uge i64 %add.i.i.i, %34
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %36)
  %cmp2.not.1.i.i = icmp uge i64 %40, %36
  %or.cond.i = select i1 %cmp2.not.i.i, i1 true, i1 %cmp2.not.1.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %38)
  %cmp2.not.2.i.i = icmp uge i64 %44, %38
  %or.cond58.i = select i1 %or.cond.i, i1 true, i1 %cmp2.not.2.i.i
  br i1 %or.cond58.i, label %if.then.i.if.end102_crit_edge, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then.i.if.end102_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.end87.if.end4.i_crit_edge
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %45 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %signal.i, align 16
  %posix_cputimers5.i = getelementptr inbounds %struct.signal_struct, ptr %46, i32 0, i32 21
  %timers_active.i = getelementptr inbounds %struct.signal_struct, ptr %46, i32 0, i32 21, i32 1
  %47 = ptrtoint ptr %timers_active.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %timers_active.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i, label %if.end4.i.if.end21.i_crit_edge, label %do.end8.i

if.end4.i.if.end21.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

do.end8.i:                                        ; preds = %if.end4.i
  %expiry_active.i = getelementptr inbounds %struct.signal_struct, ptr %46, i32 0, i32 21, i32 2
  %49 = ptrtoint ptr %expiry_active.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %expiry_active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool10.not.i = icmp eq i32 %50, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %do.end8.i.if.end21.i_crit_edge

do.end8.i.if.end21.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then11.i:                                      ; preds = %do.end8.i
  %cputimer.i = getelementptr inbounds %struct.signal_struct, ptr %46, i32 0, i32 20
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cputimer.i, i32 noundef 8) #8
  %call.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %cputimer.i) #8
  %stime2.i.i = getelementptr inbounds %struct.signal_struct, ptr %46, i32 0, i32 20, i32 0, i32 1
  %call.i.i7.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stime2.i.i, i32 noundef 8) #8
  %call.i8.i.i = tail call i64 @generic_atomic64_read(ptr noundef %stime2.i.i) #8
  %sum_exec_runtime.i41.i = getelementptr inbounds %struct.signal_struct, ptr %46, i32 0, i32 20, i32 0, i32 2
  %call.i.i9.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sum_exec_runtime.i41.i, i32 noundef 8) #8
  %call.i10.i.i = tail call i64 @generic_atomic64_read(ptr noundef %sum_exec_runtime.i41.i) #8
  %add.i.i42.i = add i64 %call.i8.i.i, %call.i.i.i
  %51 = ptrtoint ptr %posix_cputimers5.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %posix_cputimers5.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i42.i, i64 %52)
  %cmp2.not.i45.i = icmp ult i64 %add.i.i42.i, %52
  br i1 %cmp2.not.i45.i, label %for.cond.i49.i, label %if.then11.i.if.end102_crit_edge

if.then11.i.if.end102_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

for.cond.i49.i:                                   ; preds = %if.then11.i
  %arrayidx1.1.i47.i = getelementptr %struct.signal_struct, ptr %46, i32 0, i32 21, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx1.1.i47.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx1.1.i47.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i.i, i64 %54)
  %cmp2.not.1.i48.i = icmp ult i64 %call.i.i.i, %54
  br i1 %cmp2.not.1.i48.i, label %task_cputimers_expired.exit55.i, label %for.cond.i49.i.if.end102_crit_edge

for.cond.i49.i.if.end102_crit_edge:               ; preds = %for.cond.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

task_cputimers_expired.exit55.i:                  ; preds = %for.cond.i49.i
  %arrayidx1.2.i51.i = getelementptr %struct.signal_struct, ptr %46, i32 0, i32 21, i32 0, i32 2
  %55 = ptrtoint ptr %arrayidx1.2.i51.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx1.2.i51.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i10.i.i, i64 %56)
  %cmp2.not.2.i52.not.i = icmp ult i64 %call.i10.i.i, %56
  br i1 %cmp2.not.2.i52.not.i, label %task_cputimers_expired.exit55.i.if.end21.i_crit_edge, label %task_cputimers_expired.exit55.i.if.end102_crit_edge

task_cputimers_expired.exit55.i.if.end102_crit_edge: ; preds = %task_cputimers_expired.exit55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

task_cputimers_expired.exit55.i.if.end21.i_crit_edge: ; preds = %task_cputimers_expired.exit55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.end21.i:                                       ; preds = %task_cputimers_expired.exit55.i.if.end21.i_crit_edge, %do.end8.i.if.end21.i_crit_edge, %if.end4.i.if.end21.i_crit_edge
  %prio.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 13
  %57 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %prio.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %tobool23.not.i = icmp sgt i32 %58, -1
  br i1 %tobool23.not.i, label %if.end21.i.cleanup_crit_edge, label %land.lhs.true24.i

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true24.i:                                ; preds = %if.end21.i
  %dl_overrun.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 20, i32 9
  %59 = ptrtoint ptr %dl_overrun.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load.i = load i8, ptr %dl_overrun.i, align 4
  %60 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool25.not.i = icmp eq i8 %60, 0
  br i1 %tobool25.not.i, label %land.lhs.true24.i.cleanup_crit_edge, label %land.lhs.true24.i.if.end102_crit_edge

land.lhs.true24.i.if.end102_crit_edge:            ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

land.lhs.true24.i.cleanup_crit_edge:              ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end102:                                        ; preds = %land.lhs.true24.i.if.end102_crit_edge, %task_cputimers_expired.exit55.i.if.end102_crit_edge, %for.cond.i49.i.if.end102_crit_edge, %if.then11.i.if.end102_crit_edge, %if.then.i.if.end102_crit_edge
  %61 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task.i, align 8
  %irq_config.i = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 140
  %65 = ptrtoint ptr %irq_config.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %irq_config.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i.i) #8
  %66 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %flags.i.i, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %firing.i.i) #8
  %67 = getelementptr inbounds %struct.list_head, ptr %firing.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %firing.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %firing.i.i, ptr %firing.i.i, align 4
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %firing.i.i, ptr %67, align 4
  %call.i.i.i119 = call ptr @__lock_task_sighand(ptr noundef %3, ptr noundef nonnull %flags.i.i) #8
  %tobool.not.i.i120 = icmp eq ptr %call.i.i.i119, null
  br i1 %tobool.not.i.i120, label %if.end102.__run_posix_cpu_timers.exit_crit_edge, label %do.body.i.i

if.end102.__run_posix_cpu_timers.exit_crit_edge:  ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %__run_posix_cpu_timers.exit

do.body.i.i:                                      ; preds = %if.end102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !66
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %samples.i.i.i) #8
  %71 = getelementptr inbounds [3 x i64], ptr %samples.i.i.i, i32 0, i32 1
  %72 = getelementptr inbounds [3 x i64], ptr %samples.i.i.i, i32 0, i32 2
  %prio.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 13
  %73 = ptrtoint ptr %prio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %prio.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %tobool.not.i.i.i = icmp sgt i32 %74, -1
  br i1 %tobool.not.i.i.i, label %do.body.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

do.body.i.i.if.end.i.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  %dl_overrun.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 20, i32 9
  %75 = ptrtoint ptr %dl_overrun.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load.i.i.i.i = load i8, ptr %dl_overrun.i.i.i.i, align 4
  %76 = and i8 %bf.load.i.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i.i.i.i = icmp eq i8 %76, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i.i

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear4.i.i.i.i = and i8 %bf.load.i.i.i.i, -17
  %77 = ptrtoint ptr %dl_overrun.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %bf.clear4.i.i.i.i, ptr %dl_overrun.i.i.i.i, align 4
  %call.i.i.i.i121 = call i32 @__group_send_sig_info(i32 noundef 24, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %3) #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge, %do.body.i.i.if.end.i.i.i_crit_edge
  %78 = ptrtoint ptr %posix_cputimers.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %posix_cputimers.i, align 8
  %80 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx2.i.i, align 8
  %or.demorgan.i.i.i.i = and i64 %81, %79
  %82 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx6.i.i, align 8
  %or9.demorgan.i.i.i.i = and i64 %or.demorgan.i.i.i.i, %83
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %or9.demorgan.i.i.i.i)
  %tobool.not.i44.i.i.i = icmp eq i64 %or9.demorgan.i.i.i.i, -1
  br i1 %tobool.not.i44.i.i.i, label %if.end.i.i.i.check_thread_timers.exit.i.i_crit_edge, label %if.end3.i.i.i

if.end.i.i.i.check_thread_timers.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_thread_timers.exit.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %utime1.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 86
  %84 = ptrtoint ptr %utime1.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %utime1.i.i.i.i.i, align 8
  %stime2.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 87
  %86 = ptrtoint ptr %stime2.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %stime2.i.i.i.i.i, align 32
  %sum_exec_runtime.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 18, i32 5
  %88 = ptrtoint ptr %sum_exec_runtime.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %sum_exec_runtime.i.i.i.i, align 8
  %add.i.i.i.i.i = add i64 %87, %85
  %90 = ptrtoint ptr %samples.i.i.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %add.i.i.i.i.i, ptr %samples.i.i.i, align 8
  %91 = ptrtoint ptr %71 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %85, ptr %71, align 8
  %92 = ptrtoint ptr %72 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %89, ptr %72, align 8
  call fastcc void @collect_posix_cputimers(ptr noundef %posix_cputimers.i, ptr noundef nonnull %samples.i.i.i, ptr noundef nonnull %firing.i.i) #8
  %signal.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %93 = ptrtoint ptr %signal.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %signal.i.i.i.i, align 16
  %arrayidx.i.i.i.i = getelementptr %struct.signal_struct, ptr %94, i32 0, i32 51, i32 15
  %95 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %arrayidx.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %cmp.not.i.i.i = icmp eq i32 %96, -1
  br i1 %cmp.not.i.i.i, label %if.end3.i.i.i.check_thread_timers.exit.i.i_crit_edge, label %if.then6.i.i.i

if.end3.i.i.i.check_thread_timers.exit.i.i_crit_edge: ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_thread_timers.exit.i.i

if.then6.i.i.i:                                   ; preds = %if.end3.i.i.i
  %timeout.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 19, i32 1
  %97 = ptrtoint ptr %timeout.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %timeout.i.i.i, align 8
  %mul.i.i.i = mul i32 %98, 10000
  %rlim_max.i.i.i.i = getelementptr %struct.signal_struct, ptr %94, i32 0, i32 51, i32 15, i32 1
  %99 = ptrtoint ptr %rlim_max.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %rlim_max.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %100)
  %cmp8.not.i.i.i = icmp eq i32 %100, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i, i32 %100)
  %cmp.i.i.i.i = icmp ult i32 %mul.i.i.i, %100
  %or.cond.i.i.i = select i1 %cmp8.not.i.i.i, i1 true, i1 %cmp.i.i.i.i
  br i1 %or.cond.i.i.i, label %if.end13.i.i.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then6.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @print_fatal_signals to i32))
  %101 = load i32, ptr @print_fatal_signals, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i46.i.i.i = icmp eq i32 %101, 0
  br i1 %tobool.not.i46.i.i.i, label %if.end.i.i.i.i.check_rlimit.exit.thread.i.i.i_crit_edge, label %do.end.i.i.i.i

if.end.i.i.i.i.check_rlimit.exit.thread.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_rlimit.exit.thread.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %102 = call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %task.i.i.i.i, align 8
  %comm.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 101
  %pid.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 68
  %106 = ptrtoint ptr %pid.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pid.i.i.i.i.i, align 8
  %call9.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, ptr noundef %comm.i.i.i.i, i32 noundef %107) #11
  br label %check_rlimit.exit.thread.i.i.i

check_rlimit.exit.thread.i.i.i:                   ; preds = %do.end.i.i.i.i, %if.end.i.i.i.i.check_rlimit.exit.thread.i.i.i_crit_edge
  %108 = call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i14.i.i.i.i = and i32 %108, -16384
  %109 = inttoptr i32 %and.i14.i.i.i.i to ptr
  %task12.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %task12.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %task12.i.i.i.i, align 8
  %call13.i.i.i.i = call i32 @__group_send_sig_info(i32 noundef 9, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %111) #8
  br label %check_thread_timers.exit.i.i

if.end13.i.i.i:                                   ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i, i32 %96)
  %cmp.i47.i.i.i = icmp ult i32 %mul.i.i.i, %96
  br i1 %cmp.i47.i.i.i, label %if.end13.i.i.i.check_thread_timers.exit.i.i_crit_edge, label %if.end.i49.i.i.i

if.end13.i.i.i.check_thread_timers.exit.i.i_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_thread_timers.exit.i.i

if.end.i49.i.i.i:                                 ; preds = %if.end13.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @print_fatal_signals to i32))
  %112 = load i32, ptr @print_fatal_signals, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i48.i.i.i = icmp eq i32 %112, 0
  br i1 %tobool.not.i48.i.i.i, label %if.end.i49.i.i.i.if.then17.i.i.i_crit_edge, label %do.end.i55.i.i.i

if.end.i49.i.i.i.if.then17.i.i.i_crit_edge:       ; preds = %if.end.i49.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i.i.i

do.end.i55.i.i.i:                                 ; preds = %if.end.i49.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %113 = call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i50.i.i.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i50.i.i.i to ptr
  %task.i51.i.i.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %task.i51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %task.i51.i.i.i, align 8
  %comm.i52.i.i.i = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 101
  %pid.i.i53.i.i.i = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 68
  %117 = ptrtoint ptr %pid.i.i53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pid.i.i53.i.i.i, align 8
  %call9.i54.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, ptr noundef %comm.i52.i.i.i, i32 noundef %118) #11
  br label %if.then17.i.i.i

if.then17.i.i.i:                                  ; preds = %do.end.i55.i.i.i, %if.end.i49.i.i.i.if.then17.i.i.i_crit_edge
  %119 = call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i14.i56.i.i.i = and i32 %119, -16384
  %120 = inttoptr i32 %and.i14.i56.i.i.i to ptr
  %task12.i57.i.i.i = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %task12.i57.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %task12.i57.i.i.i, align 8
  %call13.i58.i.i.i = call i32 @__group_send_sig_info(i32 noundef 24, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %122) #8
  %add.i.i.i122 = add i32 %96, 1000000
  %123 = ptrtoint ptr %signal.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %signal.i.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %124, i32 0, i32 51, i32 15
  %125 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %add.i.i.i122, ptr %arrayidx.i.i.i, align 8
  br label %check_thread_timers.exit.i.i

check_thread_timers.exit.i.i:                     ; preds = %if.then17.i.i.i, %if.end13.i.i.i.check_thread_timers.exit.i.i_crit_edge, %check_rlimit.exit.thread.i.i.i, %if.end3.i.i.i.check_thread_timers.exit.i.i_crit_edge, %if.end.i.i.i.check_thread_timers.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %samples.i.i.i) #8
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %126 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %signal.i.i.i, align 16
  %posix_cputimers.i52.i.i = getelementptr inbounds %struct.signal_struct, ptr %127, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %samples.i51.i.i) #8
  %128 = getelementptr inbounds [3 x i64], ptr %samples.i51.i.i, i32 0, i32 1
  %129 = getelementptr inbounds [3 x i64], ptr %samples.i51.i.i, i32 0, i32 2
  %timers_active.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %127, i32 0, i32 21, i32 1
  %130 = ptrtoint ptr %timers_active.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %timers_active.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i53.i.i = icmp eq i32 %131, 0
  br i1 %tobool.not.i53.i.i, label %check_thread_timers.exit.i.i.check_process_timers.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

check_thread_timers.exit.i.i.check_process_timers.exit.i.i_crit_edge: ; preds = %check_thread_timers.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_process_timers.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %check_thread_timers.exit.i.i
  %expiry_active.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %127, i32 0, i32 21, i32 2
  %132 = ptrtoint ptr %expiry_active.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %expiry_active.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool1.not.i.i.i = icmp eq i32 %133, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i57.i.i, label %lor.lhs.false.i.i.i.check_process_timers.exit.i.i_crit_edge

lor.lhs.false.i.i.i.check_process_timers.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_process_timers.exit.i.i

if.end.i57.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %134 = ptrtoint ptr %expiry_active.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %expiry_active.i.i.i, align 4
  %cputimer.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %127, i32 0, i32 20
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %cputimer.i.i.i, i32 noundef 8) #8
  %call.i.i.i.i.i = call i64 @generic_atomic64_read(ptr noundef %cputimer.i.i.i) #8
  %stime2.i.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %127, i32 0, i32 20, i32 0, i32 1
  %call.i.i7.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %stime2.i.i.i.i, i32 noundef 8) #8
  %call.i8.i.i.i.i = call i64 @generic_atomic64_read(ptr noundef %stime2.i.i.i.i) #8
  %sum_exec_runtime.i.i54.i.i = getelementptr inbounds %struct.signal_struct, ptr %127, i32 0, i32 20, i32 0, i32 2
  %call.i.i9.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sum_exec_runtime.i.i54.i.i, i32 noundef 8) #8
  %call.i10.i.i.i.i = call i64 @generic_atomic64_read(ptr noundef %sum_exec_runtime.i.i54.i.i) #8
  %add.i.i.i55.i.i = add i64 %call.i8.i.i.i.i, %call.i.i.i.i.i
  %135 = ptrtoint ptr %samples.i51.i.i to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %add.i.i.i55.i.i, ptr %samples.i51.i.i, align 8
  %136 = ptrtoint ptr %128 to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %call.i.i.i.i.i, ptr %128, align 8
  %137 = ptrtoint ptr %129 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %call.i10.i.i.i.i, ptr %129, align 8
  call fastcc void @collect_posix_cputimers(ptr noundef %posix_cputimers.i52.i.i, ptr noundef nonnull %samples.i51.i.i, ptr noundef nonnull %firing.i.i) #8
  %it.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %127, i32 0, i32 19
  %138 = ptrtoint ptr %it.i.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %it.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %139)
  %tobool.not.i.i56.i.i = icmp eq i64 %139, 0
  br i1 %tobool.not.i.i56.i.i, label %if.end.i57.i.i.check_cpu_itimer.exit.i.i.i_crit_edge, label %if.end.i.i58.i.i

if.end.i57.i.i.check_cpu_itimer.exit.i.i.i_crit_edge: ; preds = %if.end.i57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_cpu_itimer.exit.i.i.i

if.end.i.i58.i.i:                                 ; preds = %if.end.i57.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %139, i64 %add.i.i.i55.i.i)
  %cmp.not.i.i.i.i = icmp ugt i64 %139, %add.i.i.i55.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i58.i.i.land.lhs.true.i.i.i.i_crit_edge, label %if.end12.i.i.i.i

if.end.i.i58.i.i.land.lhs.true.i.i.i.i_crit_edge: ; preds = %if.end.i.i58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i.i.i

if.end12.i.i.i.i:                                 ; preds = %if.end.i.i58.i.i
  %incr.i.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %127, i32 0, i32 19, i32 0, i32 1
  %140 = ptrtoint ptr %incr.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %incr.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %141)
  %tobool4.not.i.i.i.i = icmp eq i64 %141, 0
  %add.i.i.i.i = add i64 %141, %139
  %storemerge.i.i.i.i = select i1 %tobool4.not.i.i.i.i, i64 0, i64 %add.i.i.i.i
  %142 = ptrtoint ptr %it.i.i.i to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %storemerge.i.i.i.i, ptr %it.i.i.i, align 8
  %143 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i.i.i = getelementptr %struct.signal_struct, ptr %144, i32 0, i32 22, i32 1
  %145 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  call fastcc void @trace_itimer_expire(i32 noundef 2, ptr noundef %146, i64 noundef %add.i.i.i55.i.i) #8
  %call11.i.i.i.i = call i32 @__group_send_sig_info(i32 noundef 27, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %3) #8
  %147 = ptrtoint ptr %it.i.i.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %.pr.i.i.i.i = load i64, ptr %it.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr.i.i.i.i)
  %tobool14.not.i.i.i.i = icmp eq i64 %.pr.i.i.i.i, 0
  br i1 %tobool14.not.i.i.i.i, label %if.end12.i.i.i.i.check_cpu_itimer.exit.i.i.i_crit_edge, label %if.end12.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge

if.end12.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge: ; preds = %if.end12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i.i.i.i

if.end12.i.i.i.i.check_cpu_itimer.exit.i.i.i_crit_edge: ; preds = %if.end12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_cpu_itimer.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end12.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge, %if.end.i.i58.i.i.land.lhs.true.i.i.i.i_crit_edge
  %148 = phi i64 [ %.pr.i.i.i.i, %if.end12.i.i.i.i.land.lhs.true.i.i.i.i_crit_edge ], [ %139, %if.end.i.i58.i.i.land.lhs.true.i.i.i.i_crit_edge ]
  %149 = ptrtoint ptr %posix_cputimers.i52.i.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %posix_cputimers.i52.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %148, i64 %150)
  %cmp16.i.i.i.i = icmp ult i64 %148, %150
  br i1 %cmp16.i.i.i.i, label %if.then17.i.i.i.i, label %land.lhs.true.i.i.i.i.check_cpu_itimer.exit.i.i.i_crit_edge

land.lhs.true.i.i.i.i.check_cpu_itimer.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_cpu_itimer.exit.i.i.i

if.then17.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %151 = ptrtoint ptr %posix_cputimers.i52.i.i to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %148, ptr %posix_cputimers.i52.i.i, align 8
  br label %check_cpu_itimer.exit.i.i.i

check_cpu_itimer.exit.i.i.i:                      ; preds = %if.then17.i.i.i.i, %land.lhs.true.i.i.i.i.check_cpu_itimer.exit.i.i.i_crit_edge, %if.end12.i.i.i.i.check_cpu_itimer.exit.i.i.i_crit_edge, %if.end.i57.i.i.check_cpu_itimer.exit.i.i.i_crit_edge
  %arrayidx7.i.i.i = getelementptr %struct.signal_struct, ptr %127, i32 0, i32 19, i32 1
  %arrayidx9.i.i.i = getelementptr %struct.signal_struct, ptr %127, i32 0, i32 21, i32 0, i32 1
  %152 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %arrayidx7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %153)
  %tobool.not.i77.i.i.i = icmp eq i64 %153, 0
  br i1 %tobool.not.i77.i.i.i, label %check_cpu_itimer.exit.i.i.i.check_cpu_itimer.exit93.i.i.i_crit_edge, label %if.end.i79.i.i.i

check_cpu_itimer.exit.i.i.i.check_cpu_itimer.exit93.i.i.i_crit_edge: ; preds = %check_cpu_itimer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_cpu_itimer.exit93.i.i.i

if.end.i79.i.i.i:                                 ; preds = %check_cpu_itimer.exit.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %153, i64 %call.i.i.i.i.i)
  %cmp.not.i78.i.i.i = icmp ugt i64 %153, %call.i.i.i.i.i
  br i1 %cmp.not.i78.i.i.i, label %if.end.i79.i.i.i.land.lhs.true.i91.i.i.i_crit_edge, label %if.end12.i89.i.i.i

if.end.i79.i.i.i.land.lhs.true.i91.i.i.i_crit_edge: ; preds = %if.end.i79.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i91.i.i.i

if.end12.i89.i.i.i:                               ; preds = %if.end.i79.i.i.i
  %incr.i80.i.i.i = getelementptr %struct.signal_struct, ptr %127, i32 0, i32 19, i32 1, i32 1
  %154 = ptrtoint ptr %incr.i80.i.i.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %incr.i80.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %155)
  %tobool4.not.i81.i.i.i = icmp eq i64 %155, 0
  %add.i82.i.i.i = add i64 %155, %153
  %storemerge.i83.i.i.i = select i1 %tobool4.not.i81.i.i.i, i64 0, i64 %add.i82.i.i.i
  %156 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %storemerge.i83.i.i.i, ptr %arrayidx7.i.i.i, align 8
  %157 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i85.i.i.i = getelementptr %struct.signal_struct, ptr %158, i32 0, i32 22, i32 1
  %159 = ptrtoint ptr %arrayidx.i.i85.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i.i85.i.i.i, align 4
  call fastcc void @trace_itimer_expire(i32 noundef 1, ptr noundef %160, i64 noundef %call.i.i.i.i.i) #8
  %call11.i86.i.i.i = call i32 @__group_send_sig_info(i32 noundef 26, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %3) #8
  %161 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %.pr.i87.i.i.i = load i64, ptr %arrayidx7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr.i87.i.i.i)
  %tobool14.not.i88.i.i.i = icmp eq i64 %.pr.i87.i.i.i, 0
  br i1 %tobool14.not.i88.i.i.i, label %if.end12.i89.i.i.i.check_cpu_itimer.exit93.i.i.i_crit_edge, label %if.end12.i89.i.i.i.land.lhs.true.i91.i.i.i_crit_edge

if.end12.i89.i.i.i.land.lhs.true.i91.i.i.i_crit_edge: ; preds = %if.end12.i89.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i91.i.i.i

if.end12.i89.i.i.i.check_cpu_itimer.exit93.i.i.i_crit_edge: ; preds = %if.end12.i89.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_cpu_itimer.exit93.i.i.i

land.lhs.true.i91.i.i.i:                          ; preds = %if.end12.i89.i.i.i.land.lhs.true.i91.i.i.i_crit_edge, %if.end.i79.i.i.i.land.lhs.true.i91.i.i.i_crit_edge
  %162 = phi i64 [ %.pr.i87.i.i.i, %if.end12.i89.i.i.i.land.lhs.true.i91.i.i.i_crit_edge ], [ %153, %if.end.i79.i.i.i.land.lhs.true.i91.i.i.i_crit_edge ]
  %163 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %arrayidx9.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %162, i64 %164)
  %cmp16.i90.i.i.i = icmp ult i64 %162, %164
  br i1 %cmp16.i90.i.i.i, label %if.then17.i92.i.i.i, label %land.lhs.true.i91.i.i.i.check_cpu_itimer.exit93.i.i.i_crit_edge

land.lhs.true.i91.i.i.i.check_cpu_itimer.exit93.i.i.i_crit_edge: ; preds = %land.lhs.true.i91.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_cpu_itimer.exit93.i.i.i

if.then17.i92.i.i.i:                              ; preds = %land.lhs.true.i91.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %165 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %162, ptr %arrayidx9.i.i.i, align 8
  br label %check_cpu_itimer.exit93.i.i.i

check_cpu_itimer.exit93.i.i.i:                    ; preds = %if.then17.i92.i.i.i, %land.lhs.true.i91.i.i.i.check_cpu_itimer.exit93.i.i.i_crit_edge, %if.end12.i89.i.i.i.check_cpu_itimer.exit93.i.i.i_crit_edge, %check_cpu_itimer.exit.i.i.i.check_cpu_itimer.exit93.i.i.i_crit_edge
  %166 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i59.i.i = getelementptr %struct.signal_struct, ptr %167, i32 0, i32 51, i32 0
  %168 = ptrtoint ptr %arrayidx.i.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile i32, ptr %arrayidx.i.i59.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %169)
  %cmp.not.i60.i.i = icmp eq i32 %169, -1
  br i1 %cmp.not.i60.i.i, label %check_cpu_itimer.exit93.i.i.i.if.end41.i.i.i_crit_edge, label %if.then12.i.i.i

check_cpu_itimer.exit93.i.i.i.if.end41.i.i.i_crit_edge: ; preds = %check_cpu_itimer.exit93.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i.i.i

if.then12.i.i.i:                                  ; preds = %check_cpu_itimer.exit93.i.i.i
  %rlim_max.i.i61.i.i = getelementptr %struct.signal_struct, ptr %167, i32 0, i32 51, i32 0, i32 1
  %170 = ptrtoint ptr %rlim_max.i.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %rlim_max.i.i61.i.i, align 4
  %conv.i.i.i = zext i32 %169 to i64
  %mul.i62.i.i = mul nuw nsw i64 %conv.i.i.i, 1000000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %171)
  %cmp17.not.i.i.i = icmp eq i32 %171, -1
  br i1 %cmp17.not.i.i.i, label %if.then12.i.i.i.if.end22.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then12.i.i.i.if.end22.i.i.i_crit_edge:         ; preds = %if.then12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then12.i.i.i
  %conv15.i.i.i = zext i32 %171 to i64
  %mul16.i.i.i = mul nuw nsw i64 %conv15.i.i.i, 1000000000
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i55.i.i, i64 %mul16.i.i.i)
  %cmp.i.i63.i.i = icmp ult i64 %add.i.i.i55.i.i, %mul16.i.i.i
  br i1 %cmp.i.i63.i.i, label %land.lhs.true.i.i.i.if.end22.i.i.i_crit_edge, label %if.end.i96.i.i.i

land.lhs.true.i.i.i.if.end22.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i.i.i

if.end.i96.i.i.i:                                 ; preds = %land.lhs.true.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @print_fatal_signals to i32))
  %172 = load i32, ptr @print_fatal_signals, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.not.i95.i.i.i = icmp eq i32 %172, 0
  br i1 %tobool.not.i95.i.i.i, label %if.end.i96.i.i.i.check_rlimit.exit.thread.i73.i.i_crit_edge, label %do.end.i.i69.i.i

if.end.i96.i.i.i.check_rlimit.exit.thread.i73.i.i_crit_edge: ; preds = %if.end.i96.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_rlimit.exit.thread.i73.i.i

do.end.i.i69.i.i:                                 ; preds = %if.end.i96.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %173 = call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i64.i.i = and i32 %173, -16384
  %174 = inttoptr i32 %and.i.i.i64.i.i to ptr
  %task.i.i65.i.i = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %task.i.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %task.i.i65.i.i, align 8
  %comm.i.i66.i.i = getelementptr inbounds %struct.task_struct, ptr %176, i32 0, i32 101
  %pid.i.i.i67.i.i = getelementptr inbounds %struct.task_struct, ptr %176, i32 0, i32 68
  %177 = ptrtoint ptr %pid.i.i.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %pid.i.i.i67.i.i, align 8
  %call9.i.i68.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %comm.i.i66.i.i, i32 noundef %178) #11
  br label %check_rlimit.exit.thread.i73.i.i

check_rlimit.exit.thread.i73.i.i:                 ; preds = %do.end.i.i69.i.i, %if.end.i96.i.i.i.check_rlimit.exit.thread.i73.i.i_crit_edge
  %179 = call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i14.i.i70.i.i = and i32 %179, -16384
  %180 = inttoptr i32 %and.i14.i.i70.i.i to ptr
  %task12.i.i71.i.i = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 2
  %181 = ptrtoint ptr %task12.i.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %task12.i.i71.i.i, align 8
  %call13.i.i72.i.i = call i32 @__group_send_sig_info(i32 noundef 9, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %182) #8
  br label %check_process_timers.exit.i.i

if.end22.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.if.end22.i.i.i_crit_edge, %if.then12.i.i.i.if.end22.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i55.i.i, i64 %mul.i62.i.i)
  %cmp.i97.i.i.i = icmp ult i64 %add.i.i.i55.i.i, %mul.i62.i.i
  br i1 %cmp.i97.i.i.i, label %if.end22.i.i.i.if.end27.i.i.i_crit_edge, label %if.end.i99.i.i.i

if.end22.i.i.i.if.end27.i.i.i_crit_edge:          ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i.i.i

if.end.i99.i.i.i:                                 ; preds = %if.end22.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @print_fatal_signals to i32))
  %183 = load i32, ptr @print_fatal_signals, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool.not.i98.i.i.i = icmp eq i32 %183, 0
  br i1 %tobool.not.i98.i.i.i, label %if.end.i99.i.i.i.if.then24.i.i.i_crit_edge, label %do.end.i105.i.i.i

if.end.i99.i.i.i.if.then24.i.i.i_crit_edge:       ; preds = %if.end.i99.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.i.i.i

do.end.i105.i.i.i:                                ; preds = %if.end.i99.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %184 = call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i100.i.i.i = and i32 %184, -16384
  %185 = inttoptr i32 %and.i.i100.i.i.i to ptr
  %task.i101.i.i.i = getelementptr inbounds %struct.thread_info, ptr %185, i32 0, i32 2
  %186 = ptrtoint ptr %task.i101.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %task.i101.i.i.i, align 8
  %comm.i102.i.i.i = getelementptr inbounds %struct.task_struct, ptr %187, i32 0, i32 101
  %pid.i.i103.i.i.i = getelementptr inbounds %struct.task_struct, ptr %187, i32 0, i32 68
  %188 = ptrtoint ptr %pid.i.i103.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %pid.i.i103.i.i.i, align 8
  %call9.i104.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, ptr noundef %comm.i102.i.i.i, i32 noundef %189) #11
  br label %if.then24.i.i.i

if.then24.i.i.i:                                  ; preds = %do.end.i105.i.i.i, %if.end.i99.i.i.i.if.then24.i.i.i_crit_edge
  %190 = call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i14.i106.i.i.i = and i32 %190, -16384
  %191 = inttoptr i32 %and.i14.i106.i.i.i to ptr
  %task12.i107.i.i.i = getelementptr inbounds %struct.thread_info, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %task12.i107.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %task12.i107.i.i.i, align 8
  %call13.i108.i.i.i = call i32 @__group_send_sig_info(i32 noundef 24, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %193) #8
  %add.i74.i.i = add nuw i32 %169, 1
  %rlim.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %127, i32 0, i32 51
  %194 = ptrtoint ptr %rlim.i.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %add.i74.i.i, ptr %rlim.i.i.i, align 8
  %add26.i.i.i = add nuw nsw i64 %mul.i62.i.i, 1000000000
  br label %if.end27.i.i.i

if.end27.i.i.i:                                   ; preds = %if.then24.i.i.i, %if.end22.i.i.i.if.end27.i.i.i_crit_edge
  %softns.0.i.i.i = phi i64 [ %add26.i.i.i, %if.then24.i.i.i ], [ %mul.i62.i.i, %if.end22.i.i.i.if.end27.i.i.i_crit_edge ]
  %195 = ptrtoint ptr %posix_cputimers.i52.i.i to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %posix_cputimers.i52.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %softns.0.i.i.i, i64 %196)
  %cmp31.i.i.i = icmp ult i64 %softns.0.i.i.i, %196
  br i1 %cmp31.i.i.i, label %if.then33.i.i.i, label %if.end27.i.i.i.if.end41.i.i.i_crit_edge

if.end27.i.i.i.if.end41.i.i.i_crit_edge:          ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i.i.i

if.then33.i.i.i:                                  ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %197 = ptrtoint ptr %posix_cputimers.i52.i.i to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %softns.0.i.i.i, ptr %posix_cputimers.i52.i.i, align 8
  br label %if.end41.i.i.i

if.end41.i.i.i:                                   ; preds = %if.then33.i.i.i, %if.end27.i.i.i.if.end41.i.i.i_crit_edge, %check_cpu_itimer.exit93.i.i.i.if.end41.i.i.i_crit_edge
  %198 = ptrtoint ptr %posix_cputimers.i52.i.i to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %posix_cputimers.i52.i.i, align 8
  %200 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %arrayidx9.i.i.i, align 8
  %or.demorgan.i.i75.i.i = and i64 %201, %199
  %arrayidx6.i.i76.i.i = getelementptr %struct.signal_struct, ptr %127, i32 0, i32 21, i32 0, i32 2
  %202 = ptrtoint ptr %arrayidx6.i.i76.i.i to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %arrayidx6.i.i76.i.i, align 8
  %or9.demorgan.i.i77.i.i = and i64 %or.demorgan.i.i75.i.i, %203
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %or9.demorgan.i.i77.i.i)
  %tobool.not.i111.i.i.i = icmp eq i64 %or9.demorgan.i.i77.i.i, -1
  br i1 %tobool.not.i111.i.i.i, label %if.then43.i.i.i, label %if.end41.i.i.i.if.end44.i.i.i_crit_edge

if.end41.i.i.i.if.end44.i.i.i_crit_edge:          ; preds = %if.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i.i.i

if.then43.i.i.i:                                  ; preds = %if.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %204 = ptrtoint ptr %timers_active.i.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store volatile i32 0, ptr %timers_active.i.i.i, align 8
  br label %if.end44.i.i.i

if.end44.i.i.i:                                   ; preds = %if.then43.i.i.i, %if.end41.i.i.i.if.end44.i.i.i_crit_edge
  %205 = ptrtoint ptr %expiry_active.i.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 0, ptr %expiry_active.i.i.i, align 4
  br label %check_process_timers.exit.i.i

check_process_timers.exit.i.i:                    ; preds = %if.end44.i.i.i, %check_rlimit.exit.thread.i73.i.i, %lor.lhs.false.i.i.i.check_process_timers.exit.i.i_crit_edge, %check_thread_timers.exit.i.i.check_process_timers.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %samples.i51.i.i) #8
  %sighand.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 112
  %206 = ptrtoint ptr %sighand.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %sighand.i.i.i, align 4
  %208 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %flags.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %207, i32 noundef %209) #8
  %210 = ptrtoint ptr %firing.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %firing.i.i, align 4
  %cmp.not82.i.i = icmp eq ptr %211, %firing.i.i
  br i1 %cmp.not82.i.i, label %check_process_timers.exit.i.i.__run_posix_cpu_timers.exit_crit_edge, label %check_process_timers.exit.i.i.for.body.i.i_crit_edge

check_process_timers.exit.i.i.for.body.i.i_crit_edge: ; preds = %check_process_timers.exit.i.i
  br label %for.body.i.i

check_process_timers.exit.i.i.__run_posix_cpu_timers.exit_crit_edge: ; preds = %check_process_timers.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__run_posix_cpu_timers.exit

for.body.i.i:                                     ; preds = %if.end26.i.i.for.body.i.i_crit_edge, %check_process_timers.exit.i.i.for.body.i.i_crit_edge
  %.pn.in83.i.i = phi ptr [ %.pn86.i.i, %if.end26.i.i.for.body.i.i_crit_edge ], [ %211, %check_process_timers.exit.i.i.for.body.i.i_crit_edge ]
  %timer.085.i.i = getelementptr i8, ptr %.pn.in83.i.i, i32 -160
  %212 = ptrtoint ptr %.pn.in83.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %.pn86.i.i = load ptr, ptr %.pn.in83.i.i, align 8
  %it_lock.i.i = getelementptr i8, ptr %.pn.in83.i.i, i32 -144
  call void @_raw_spin_lock(ptr noundef %it_lock.i.i) #8
  %call.i.i78.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in83.i.i) #8
  br i1 %call.i.i78.i.i, label %if.end.i.i79.i.i, label %for.body.i.i.list_del_init.exit.i.i_crit_edge

for.body.i.i.list_del_init.exit.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i.i

if.end.i.i79.i.i:                                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in83.i.i, i32 0, i32 1
  %213 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %prev.i.i.i.i, align 4
  %215 = ptrtoint ptr %.pn.in83.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %.pn.in83.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %216, i32 0, i32 1
  %217 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %214, ptr %prev1.i.i.i.i.i, align 4
  %218 = ptrtoint ptr %214 to i32
  call void @__asan_store4_noabort(i32 %218)
  store volatile ptr %216, ptr %214, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i79.i.i, %for.body.i.i.list_del_init.exit.i.i_crit_edge
  %219 = ptrtoint ptr %.pn.in83.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile ptr %.pn.in83.i.i, ptr %.pn.in83.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in83.i.i, i32 0, i32 1
  %220 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %.pn.in83.i.i, ptr %prev.i3.i.i.i, align 4
  %firing18.i.i = getelementptr i8, ptr %.pn.in83.i.i, i32 8
  %221 = ptrtoint ptr %firing18.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %firing18.i.i, align 8
  store i32 0, ptr %firing18.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %222)
  %cmp21.i.i = icmp sgt i32 %222, -1
  br i1 %cmp21.i.i, label %if.then25.i.i, label %list_del_init.exit.i.i.if.end26.i.i_crit_edge, !prof !60

list_del_init.exit.i.i.if.end26.i.i_crit_edge:    ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i.i

if.then25.i.i:                                    ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @cpu_timer_fire(ptr noundef %timer.085.i.i) #8
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then25.i.i, %list_del_init.exit.i.i.if.end26.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %it_lock.i.i) #8
  %cmp.not.i.i = icmp eq ptr %.pn86.i.i, %firing.i.i
  br i1 %cmp.not.i.i, label %if.end26.i.i.__run_posix_cpu_timers.exit_crit_edge, label %if.end26.i.i.for.body.i.i_crit_edge

if.end26.i.i.for.body.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end26.i.i.__run_posix_cpu_timers.exit_crit_edge: ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__run_posix_cpu_timers.exit

__run_posix_cpu_timers.exit:                      ; preds = %if.end26.i.i.__run_posix_cpu_timers.exit_crit_edge, %check_process_timers.exit.i.i.__run_posix_cpu_timers.exit_crit_edge, %if.end102.__run_posix_cpu_timers.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %firing.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i) #8
  %223 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %task.i, align 8
  %irq_config4.i = getelementptr inbounds %struct.task_struct, ptr %224, i32 0, i32 140
  %225 = ptrtoint ptr %irq_config4.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %irq_config4.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %__run_posix_cpu_timers.exit, %land.lhs.true24.i.cleanup_crit_edge, %if.end21.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @cpu_clock_sample_group(i32 noundef %clkid, ptr noundef %p, i1 noundef zeroext %start) unnamed_addr #1 align 64 {
entry:
  %ct.i = alloca %struct.task_cputime, align 8
  %sum.i = alloca %struct.task_cputime, align 8
  %samples = alloca [3 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %signal = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %samples) #8
  %2 = getelementptr inbounds [3 x i64], ptr %samples, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i64], ptr %samples, i32 0, i32 2
  %timers_active = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 21, i32 1
  %4 = call ptr @memset(ptr %samples, i32 255, i32 24)
  %5 = ptrtoint ptr %timers_active to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %timers_active, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %if.else6

if.then:                                          ; preds = %entry
  br i1 %start, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %cputimer1.i = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 20
  tail call void @lockdep_assert_task_sighand_held(ptr noundef %p) #8
  %7 = ptrtoint ptr %timers_active to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %timers_active, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then4.thread_group_start_cputime.exit_crit_edge

if.then4.thread_group_start_cputime.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %thread_group_start_cputime.exit

if.then.i:                                        ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sum.i) #8
  %9 = getelementptr inbounds %struct.task_cputime, ptr %sum.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.task_cputime, ptr %sum.i, i32 0, i32 2
  %11 = call ptr @memset(ptr %sum.i, i32 255, i32 24)
  call void @thread_group_cputime(ptr noundef %p, ptr noundef nonnull %sum.i) #8
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %9, align 8
  br label %retry.i.i.i

retry.i.i.i:                                      ; preds = %if.then.i.i.i.retry.i.i.i_crit_edge, %if.then.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %cputimer1.i, i32 noundef 8) #8
  %call.i.i.i.i = call i64 @generic_atomic64_read(ptr noundef %cputimer1.i) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i.i.i, i64 %13)
  %cmp.i.i.i = icmp ult i64 %call.i.i.i.i, %13
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %retry.i.i.i.__update_gt_cputime.exit.i.i_crit_edge

retry.i.i.i.__update_gt_cputime.exit.i.i_crit_edge: ; preds = %retry.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_gt_cputime.exit.i.i

if.then.i.i.i:                                    ; preds = %retry.i.i.i
  %call.i.i9.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cputimer1.i, i32 noundef 8) #8
  %call.i10.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %cputimer1.i, i64 noundef %call.i.i.i.i, i64 noundef %13) #8
  %cmp2.not.i.i.i = icmp eq i64 %call.i10.i.i.i, %call.i.i.i.i
  br i1 %cmp2.not.i.i.i, label %if.then.i.i.i.__update_gt_cputime.exit.i.i_crit_edge, label %if.then.i.i.i.retry.i.i.i_crit_edge

if.then.i.i.i.retry.i.i.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry.i.i.i

if.then.i.i.i.__update_gt_cputime.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_gt_cputime.exit.i.i

__update_gt_cputime.exit.i.i:                     ; preds = %if.then.i.i.i.__update_gt_cputime.exit.i.i_crit_edge, %retry.i.i.i.__update_gt_cputime.exit.i.i_crit_edge
  %stime.i.i = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 20, i32 0, i32 1
  %14 = ptrtoint ptr %sum.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sum.i, align 8
  br label %retry.i11.i.i

retry.i11.i.i:                                    ; preds = %if.then.i15.i.i.retry.i11.i.i_crit_edge, %__update_gt_cputime.exit.i.i
  %call.i.i.i8.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %stime.i.i, i32 noundef 8) #8
  %call.i.i9.i.i = call i64 @generic_atomic64_read(ptr noundef %stime.i.i) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i9.i.i, i64 %15)
  %cmp.i10.i.i = icmp ult i64 %call.i.i9.i.i, %15
  br i1 %cmp.i10.i.i, label %if.then.i15.i.i, label %retry.i11.i.i.__update_gt_cputime.exit16.i.i_crit_edge

retry.i11.i.i.__update_gt_cputime.exit16.i.i_crit_edge: ; preds = %retry.i11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_gt_cputime.exit16.i.i

if.then.i15.i.i:                                  ; preds = %retry.i11.i.i
  %call.i.i9.i12.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %stime.i.i, i32 noundef 8) #8
  %call.i10.i13.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %stime.i.i, i64 noundef %call.i.i9.i.i, i64 noundef %15) #8
  %cmp2.not.i14.i.i = icmp eq i64 %call.i10.i13.i.i, %call.i.i9.i.i
  br i1 %cmp2.not.i14.i.i, label %if.then.i15.i.i.__update_gt_cputime.exit16.i.i_crit_edge, label %if.then.i15.i.i.retry.i11.i.i_crit_edge

if.then.i15.i.i.retry.i11.i.i_crit_edge:          ; preds = %if.then.i15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry.i11.i.i

if.then.i15.i.i.__update_gt_cputime.exit16.i.i_crit_edge: ; preds = %if.then.i15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_gt_cputime.exit16.i.i

__update_gt_cputime.exit16.i.i:                   ; preds = %if.then.i15.i.i.__update_gt_cputime.exit16.i.i_crit_edge, %retry.i11.i.i.__update_gt_cputime.exit16.i.i_crit_edge
  %sum_exec_runtime.i.i = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 20, i32 0, i32 2
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %10, align 8
  br label %retry.i20.i.i

retry.i20.i.i:                                    ; preds = %if.then.i24.i.i.retry.i20.i.i_crit_edge, %__update_gt_cputime.exit16.i.i
  %call.i.i.i17.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sum_exec_runtime.i.i, i32 noundef 8) #8
  %call.i.i18.i.i = call i64 @generic_atomic64_read(ptr noundef %sum_exec_runtime.i.i) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i18.i.i, i64 %17)
  %cmp.i19.i.i = icmp ult i64 %call.i.i18.i.i, %17
  br i1 %cmp.i19.i.i, label %if.then.i24.i.i, label %retry.i20.i.i.update_gt_cputime.exit.i_crit_edge

retry.i20.i.i.update_gt_cputime.exit.i_crit_edge: ; preds = %retry.i20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_gt_cputime.exit.i

if.then.i24.i.i:                                  ; preds = %retry.i20.i.i
  %call.i.i9.i21.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sum_exec_runtime.i.i, i32 noundef 8) #8
  %call.i10.i22.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %sum_exec_runtime.i.i, i64 noundef %call.i.i18.i.i, i64 noundef %17) #8
  %cmp2.not.i23.i.i = icmp eq i64 %call.i10.i22.i.i, %call.i.i18.i.i
  br i1 %cmp2.not.i23.i.i, label %if.then.i24.i.i.update_gt_cputime.exit.i_crit_edge, label %if.then.i24.i.i.retry.i20.i.i_crit_edge

if.then.i24.i.i.retry.i20.i.i_crit_edge:          ; preds = %if.then.i24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry.i20.i.i

if.then.i24.i.i.update_gt_cputime.exit.i_crit_edge: ; preds = %if.then.i24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_gt_cputime.exit.i

update_gt_cputime.exit.i:                         ; preds = %if.then.i24.i.i.update_gt_cputime.exit.i_crit_edge, %retry.i20.i.i.update_gt_cputime.exit.i_crit_edge
  %18 = ptrtoint ptr %timers_active to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %timers_active, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sum.i) #8
  br label %thread_group_start_cputime.exit

thread_group_start_cputime.exit:                  ; preds = %update_gt_cputime.exit.i, %if.then4.thread_group_start_cputime.exit_crit_edge
  %call.i.i.i19.i = call zeroext i1 @__kasan_check_read(ptr noundef %cputimer1.i, i32 noundef 8) #8
  %call.i.i.i = call i64 @generic_atomic64_read(ptr noundef %cputimer1.i) #8
  %stime2.i.i = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 20, i32 0, i32 1
  %call.i.i7.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %stime2.i.i, i32 noundef 8) #8
  %call.i8.i.i = call i64 @generic_atomic64_read(ptr noundef %stime2.i.i) #8
  %sum_exec_runtime.i20.i = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 20, i32 0, i32 2
  %call.i.i9.i21.i = call zeroext i1 @__kasan_check_read(ptr noundef %sum_exec_runtime.i20.i, i32 noundef 8) #8
  %call.i10.i.i = call i64 @generic_atomic64_read(ptr noundef %sum_exec_runtime.i20.i) #8
  %add.i.i.i = add i64 %call.i8.i.i, %call.i.i.i
  %19 = ptrtoint ptr %samples to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %add.i.i.i, ptr %samples, align 8
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call.i.i.i, ptr %2, align 8
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call.i10.i.i, ptr %3, align 8
  br label %if.end8

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ct.i) #8
  %22 = getelementptr inbounds %struct.task_cputime, ptr %ct.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.task_cputime, ptr %ct.i, i32 0, i32 2
  %24 = call ptr @memset(ptr %ct.i, i32 255, i32 24)
  call void @thread_group_cputime(ptr noundef %p, ptr noundef nonnull %ct.i) #8
  %25 = ptrtoint ptr %ct.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ct.i, align 8
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %22, align 8
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %23, align 8
  %add.i.i = add i64 %28, %26
  %31 = ptrtoint ptr %samples to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %add.i.i, ptr %samples, align 8
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %28, ptr %2, align 8
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %30, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ct.i) #8
  br label %if.end8

if.else6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cputimer1 = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 20
  %call.i.i.i12 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cputimer1, i32 noundef 8) #8
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %cputimer1) #8
  %stime2.i = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 20, i32 0, i32 1
  %call.i.i7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stime2.i, i32 noundef 8) #8
  %call.i8.i = tail call i64 @generic_atomic64_read(ptr noundef %stime2.i) #8
  %sum_exec_runtime.i = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 20, i32 0, i32 2
  %call.i.i9.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sum_exec_runtime.i, i32 noundef 8) #8
  %call.i10.i = tail call i64 @generic_atomic64_read(ptr noundef %sum_exec_runtime.i) #8
  %add.i.i13 = add i64 %call.i8.i, %call.i.i
  %34 = ptrtoint ptr %samples to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %add.i.i13, ptr %samples, align 8
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %call.i.i, ptr %2, align 8
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %call.i10.i, ptr %3, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.else, %thread_group_start_cputime.exit
  %arrayidx = getelementptr [3 x i64], ptr %samples, i32 0, i32 %clkid
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %samples) #8
  ret i64 %38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_cpu_clock_getres(i32 noundef %which_clock, ptr nocapture noundef writeonly %tp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @validate_clock_permissions(i32 noundef %which_clock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %tp, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %tp, i32 0, i32 1
  %and = and i32 %which_clock, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp = icmp eq i32 %and, 2
  %spec.store.select = select i1 %cmp, i32 1, i32 10000000
  %1 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.store.select, ptr %tv_nsec, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then, %entry.if.end3_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_cpu_clock_set(i32 noundef %clock, ptr nocapture noundef readnone %tp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @validate_clock_permissions(i32 noundef %clock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 -1, i32 %call
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_cpu_clock_get(i32 noundef %clock, ptr nocapture noundef writeonly %tp) #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %clock, 3
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call fastcc ptr @pid_for_clock(i32 noundef %clock, i1 noundef zeroext true)
  %and.i = lshr i32 %clock, 2
  %and.lobit.i = and i32 %and.i, 1
  %4 = xor i32 %and.lobit.i, 1
  %call2 = tail call ptr @pid_task(ptr noundef %call, i32 noundef %4) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i16, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.then
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %5 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i23 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %and3 = and i32 %clock, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp.not = icmp eq i32 %and3, 0
  br i1 %cmp.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp.i = icmp eq i32 %and, 2
  br i1 %cmp.i, label %if.then.i26, label %if.end.i

if.then.i26:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %call.i25 = tail call i64 @task_sched_runtime(ptr noundef nonnull %call2) #8
  br label %if.end7

if.end.i:                                         ; preds = %if.then4
  %utime1.i.i = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 86
  %9 = ptrtoint ptr %utime1.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %utime1.i.i, align 8
  %11 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %land.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %if.end.i.if.end7_crit_edge
  ]

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %stime2.i.i = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 87
  %12 = ptrtoint ptr %stime2.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %stime2.i.i, align 32
  %add.i = add i64 %13, %10
  br label %if.end7

land.end.i:                                       ; preds = %if.end.i
  %.b42.i = load i1, ptr @cpu_clock_sample.__already_done, align 1
  br i1 %.b42.i, label %land.end.i.if.end7_crit_edge, label %if.then7.i, !prof !60

land.end.i.if.end7_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then7.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_clock_sample.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef null) #8
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call fastcc i64 @cpu_clock_sample_group(i32 noundef %and, ptr noundef nonnull %call2, i1 noundef zeroext false)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then7.i, %land.end.i.if.end7_crit_edge, %sw.bb.i, %if.end.i.if.end7_crit_edge, %if.then.i26
  %t.0 = phi i64 [ %call6, %if.else ], [ %call.i25, %if.then.i26 ], [ %add.i, %sw.bb.i ], [ 0, %if.then7.i ], [ 0, %land.end.i.if.end7_crit_edge ], [ %10, %if.end.i.if.end7_crit_edge ]
  %call.i27 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i27, label %if.end7.rcu_read_unlock.exit37_crit_edge, label %land.lhs.true.i30

if.end7.rcu_read_unlock.exit37_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit37

land.lhs.true.i30:                                ; preds = %if.end7
  %call1.i28 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool.not.i29, label %land.lhs.true.i30.rcu_read_unlock.exit37_crit_edge, label %land.lhs.true2.i32

land.lhs.true.i30.rcu_read_unlock.exit37_crit_edge: ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit37

land.lhs.true2.i32:                               ; preds = %land.lhs.true.i30
  %.b4.i31 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i31, label %land.lhs.true2.i32.rcu_read_unlock.exit37_crit_edge, label %if.then.i33

land.lhs.true2.i32.rcu_read_unlock.exit37_crit_edge: ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit37

if.then.i33:                                      ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit37

rcu_read_unlock.exit37:                           ; preds = %if.then.i33, %land.lhs.true2.i32.rcu_read_unlock.exit37_crit_edge, %land.lhs.true.i30.rcu_read_unlock.exit37_crit_edge, %if.end7.rcu_read_unlock.exit37_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %14 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i34 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i34 to ptr
  %preempt_count.i.i.i.i35 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i35, align 4
  %sub.i.i.i36 = add i32 %17, -1
  store volatile i32 %sub.i.i.i36, ptr %preempt_count.i.i.i.i35, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %t.0) #8
  %18 = call ptr @memcpy(ptr %tp, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit37, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit37 ], [ -22, %rcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_cpu_timer_create(ptr noundef %new_timer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %it_clock = getelementptr inbounds %struct.k_itimer, ptr %new_timer, i32 0, i32 4
  %4 = ptrtoint ptr %it_clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %it_clock, align 8
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  %shr.i = ashr i32 %5, 3
  %neg.i = xor i32 %shr.i, -1
  %and3.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 3
  br i1 %cmp4.i, label %rcu_read_lock.exit.if.then_crit_edge, label %if.end.i

rcu_read_lock.exit.if.then_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.i:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shr.i)
  %cmp5.i = icmp eq i32 %shr.i, -1
  br i1 %cmp5.i, label %if.then6.i, label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i
  %6 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i57.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i57.i to ptr
  %task9.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task9.i, align 8
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 78
  br label %pid_for_clock.exit

cond.false.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 111
  %10 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %11, i32 0, i32 22, i32 1
  br label %pid_for_clock.exit

if.end11.i:                                       ; preds = %if.end.i
  %call12.i = tail call ptr @find_vpid(i32 noundef %neg.i) #8
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.end11.i.if.then_crit_edge, label %if.end15.i

if.end11.i.if.then_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end15.i:                                       ; preds = %if.end11.i
  br i1 %cmp.not.i, label %if.end27.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end15.i
  %call18.i = tail call ptr @pid_task(ptr noundef nonnull %call12.i, i32 noundef 0) #8
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.then17.i.if.then_crit_edge, label %land.lhs.true.i8

if.then17.i.if.then_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.i8:                                 ; preds = %if.then17.i
  %12 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i58.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i58.i to ptr
  %task21.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task21.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task21.i, align 8
  %signal.i59.i = getelementptr inbounds %struct.task_struct, ptr %call18.i, i32 0, i32 111
  %16 = ptrtoint ptr %signal.i59.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %signal.i59.i, align 16
  %signal1.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 111
  %18 = ptrtoint ptr %signal1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %signal1.i.i, align 16
  %cmp.i.i = icmp eq ptr %17, %19
  br i1 %cmp.i.i, label %land.lhs.true.i8.if.then.i19_crit_edge, label %land.lhs.true.i8.if.then_crit_edge

land.lhs.true.i8.if.then_crit_edge:               ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.i8.if.then.i19_crit_edge:           ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i19

if.end27.i:                                       ; preds = %if.end15.i
  %arrayidx.i64.i = getelementptr %struct.pid, ptr %call12.i, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx.i64.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.not.i, label %if.end27.i.if.then_crit_edge, label %if.end27.i.if.then.i19_crit_edge

if.end27.i.if.then.i19_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i19

if.end27.i.if.then_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

pid_for_clock.exit:                               ; preds = %cond.false.i, %cond.true.i
  %retval.0.i.in = phi ptr [ %thread_pid.i.i, %cond.true.i ], [ %arrayidx.i.i, %cond.false.i ]
  %22 = ptrtoint ptr %retval.0.i.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %retval.0.i = load ptr, ptr %retval.0.i.in, align 4
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %pid_for_clock.exit.if.then_crit_edge, label %pid_for_clock.exit.if.then.i19_crit_edge

pid_for_clock.exit.if.then.i19_crit_edge:         ; preds = %pid_for_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i19

pid_for_clock.exit.if.then_crit_edge:             ; preds = %pid_for_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %pid_for_clock.exit.if.then_crit_edge, %if.end27.i.if.then_crit_edge, %land.lhs.true.i8.if.then_crit_edge, %if.then17.i.if.then_crit_edge, %if.end11.i.if.then_crit_edge, %rcu_read_lock.exit.if.then_crit_edge
  %call.i9 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i9, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i12

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i12:                                ; preds = %if.then
  %call1.i10 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13, label %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, label %if.then.i15

land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i15, %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  br label %cleanup

if.then.i19:                                      ; preds = %pid_for_clock.exit.if.then.i19_crit_edge, %if.end27.i.if.then.i19_crit_edge, %land.lhs.true.i8.if.then.i19_crit_edge
  %retval.0.i40 = phi ptr [ %retval.0.i, %pid_for_clock.exit.if.then.i19_crit_edge ], [ %call12.i, %if.end27.i.if.then.i19_crit_edge ], [ %call12.i, %land.lhs.true.i8.if.then.i19_crit_edge ]
  %kclock = getelementptr inbounds %struct.k_itimer, ptr %new_timer, i32 0, i32 3
  %23 = ptrtoint ptr %kclock to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @clock_posix_cpu, ptr %kclock, align 4
  %it = getelementptr inbounds %struct.k_itimer, ptr %new_timer, i32 0, i32 15
  %24 = ptrtoint ptr %it to i32
  %25 = ptrtoint ptr %it to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %it, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %retval.0.i40, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %retval.0.i40, i32 1, i32 3, i32 1) #8
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %retval.0.i40, ptr nonnull %retval.0.i40, i32 1, ptr nonnull elementtype(i32) %retval.0.i40) #8, !srcloc !69
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i19.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !70

if.then.i19.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i19
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %27 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !60

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i19.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i19.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %retval.0.i40, i32 noundef %.sink.i.i.i.i) #8
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge
  %pid3 = getelementptr inbounds %struct.k_itimer, ptr %new_timer, i32 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %pid3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i40, ptr %pid3, align 4
  %call.i21 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i21, label %get_pid.exit.rcu_read_unlock.exit31_crit_edge, label %land.lhs.true.i24

get_pid.exit.rcu_read_unlock.exit31_crit_edge:    ; preds = %get_pid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit31

land.lhs.true.i24:                                ; preds = %get_pid.exit
  %call1.i22 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i24.rcu_read_unlock.exit31_crit_edge, label %land.lhs.true2.i26

land.lhs.true.i24.rcu_read_unlock.exit31_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit31

land.lhs.true2.i26:                               ; preds = %land.lhs.true.i24
  %.b4.i25 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25, label %land.lhs.true2.i26.rcu_read_unlock.exit31_crit_edge, label %if.then.i27

land.lhs.true2.i26.rcu_read_unlock.exit31_crit_edge: ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit31

if.then.i27:                                      ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit31

rcu_read_unlock.exit31:                           ; preds = %if.then.i27, %land.lhs.true2.i26.rcu_read_unlock.exit31_crit_edge, %land.lhs.true.i24.rcu_read_unlock.exit31_crit_edge, %get_pid.exit.rcu_read_unlock.exit31_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit31, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit31 ], [ -22, %rcu_read_unlock.exit ]
  %29 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i28 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i28 to ptr
  %preempt_count.i.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i29, align 4
  %sub.i.i.i30 = add i32 %32, -1
  store volatile i32 %sub.i.i.i30, ptr %preempt_count.i.i.i.i29, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_cpu_nsleep(i32 noundef %which_clock, i32 noundef %flags, ptr nocapture noundef readonly %rqtp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %and = and i32 %which_clock, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %shr = ashr i32 %which_clock, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shr)
  %cmp2 = icmp eq i32 %shr, -1
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %neg = xor i32 %shr, -1
  %call.i = tail call i32 @__task_pid_nr_ns(ptr noundef %3, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %neg)
  %cmp8 = icmp eq i32 %call.i, %neg
  br i1 %cmp8, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %call9 = tail call fastcc i32 @do_cpu_nanosleep(i32 noundef %which_clock, i32 noundef %flags, ptr noundef %rqtp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -516, i32 %call9)
  %cmp10 = icmp eq i32 %call9, -516
  br i1 %cmp10, label %if.then11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %if.end
  %and12 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.end14, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 67, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %which_clock, ptr %4, align 8
  %fn1.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 67, i32 1
  %6 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @posix_cpu_nsleep_restart, ptr %fn1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -514, %if.then11.cleanup_crit_edge ], [ -516, %if.end14 ], [ %call9, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_cpu_timer_set(ptr noundef %timer, i32 noundef %timer_flags, ptr nocapture noundef readonly %new, ptr noundef writeonly %old) #1 align 64 {
entry:
  %flags = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  %tmp90 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %it_clock = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 4
  %0 = ptrtoint ptr %it_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %it_clock, align 8
  %and = and i32 %1, 3
  %it = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !65
  %3 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %pid.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pid.i, align 4
  %9 = ptrtoint ptr %it_clock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %it_clock, align 8
  %and.i.i = lshr i32 %10, 2
  %and.lobit.i.i = and i32 %and.i.i, 1
  %11 = xor i32 %and.lobit.i.i, 1
  %call1.i157 = tail call ptr @pid_task(ptr noundef %8, i32 noundef %11) #8
  %tobool.not = icmp eq ptr %call1.i157, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i158 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i158, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i161

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i161:                               ; preds = %if.then
  %call1.i159 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i159)
  %tobool.not.i160 = icmp eq i32 %call1.i159, 0
  br i1 %tobool.not.i160, label %land.lhs.true.i161.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i163

land.lhs.true.i161.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i161
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i163:                              ; preds = %land.lhs.true.i161
  %.b4.i162 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i162, label %land.lhs.true2.i163.rcu_read_unlock.exit_crit_edge, label %if.then.i164

land.lhs.true2.i163.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i163
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i164:                                     ; preds = %land.lhs.true2.i163
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i164, %land.lhs.true2.i163.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i161.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %12 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i165 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i165 to ptr
  %preempt_count.i.i.i.i166 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i166, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i166, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %new, i32 0, i32 1
  %16 = ptrtoint ptr %it_value to i32
  call void @__asan_load8_noabort(i32 %16)
  %.unpack = load i64, ptr %it_value, align 8
  %.elt152 = getelementptr inbounds %struct.itimerspec64, ptr %new, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %.elt152 to i32
  call void @__asan_load8_noabort(i32 %17)
  %.unpack153 = load i64, ptr %.elt152, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.unpack)
  %cmp.i.i = icmp sgt i64 %.unpack, 9223372035
  %ts.sroa.2.8.extract.shift.i = lshr i64 %.unpack153, 32
  %mul.i.i = mul i64 %.unpack, 1000000000
  %add.i.i = add i64 %ts.sroa.2.8.extract.shift.i, %mul.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %add.i.i, !prof !70
  %call.i167 = call ptr @__lock_task_sighand(ptr noundef nonnull %call1.i157, ptr noundef nonnull %flags) #8
  %cmp = icmp eq ptr %call.i167, null
  br i1 %cmp, label %if.then6, label %if.end7, !prof !70

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @rcu_read_unlock()
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %it_interval = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 11
  %18 = ptrtoint ptr %it_interval to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %it_interval, align 8
  %expires.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %expires.i, align 8
  %firing = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %firing to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %firing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool10.not = icmp eq i32 %23, 0
  br i1 %tobool10.not, label %if.else, label %if.then17, !prof !60

if.then17:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %firing to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %firing, align 8
  br label %if.end21

if.else:                                          ; preds = %if.end7
  %head.i.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %tobool.i.i.not = icmp eq ptr %26, null
  br i1 %tobool.i.i.not, label %if.else.if.end21_crit_edge, label %if.then.i169

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then.i169:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i168 = call zeroext i1 @timerqueue_del(ptr noundef nonnull %26, ptr noundef %it) #8
  %27 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %head.i.i, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then.i169, %if.else.if.end21_crit_edge, %if.then17
  %ret.0 = phi i32 [ 1, %if.then17 ], [ 0, %if.else.if.end21_crit_edge ], [ 0, %if.then.i169 ]
  %28 = ptrtoint ptr %it_clock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %it_clock, align 8
  %and23 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %cmp24.not = icmp eq i32 %and23, 0
  br i1 %cmp24.not, label %if.else27, label %if.then25

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp.i = icmp eq i32 %and, 2
  br i1 %cmp.i, label %if.then.i171, label %if.end.i

if.then.i171:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %call.i170 = call i64 @task_sched_runtime(ptr noundef nonnull %call1.i157) #8
  br label %if.end29

if.end.i:                                         ; preds = %if.then25
  %utime1.i.i = getelementptr inbounds %struct.task_struct, ptr %call1.i157, i32 0, i32 86
  %30 = ptrtoint ptr %utime1.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %utime1.i.i, align 8
  %32 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %and, label %land.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %if.end.i.if.end29_crit_edge
  ]

if.end.i.if.end29_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %stime2.i.i = getelementptr inbounds %struct.task_struct, ptr %call1.i157, i32 0, i32 87
  %33 = ptrtoint ptr %stime2.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %stime2.i.i, align 32
  %add.i = add i64 %34, %31
  br label %if.end29

land.end.i:                                       ; preds = %if.end.i
  %.b42.i = load i1, ptr @cpu_clock_sample.__already_done, align 1
  br i1 %.b42.i, label %land.end.i.if.end29_crit_edge, label %if.then7.i, !prof !60

land.end.i.if.end29_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then7.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_clock_sample.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef null) #8
  br label %if.end29

if.else27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = call fastcc i64 @cpu_clock_sample_group(i32 noundef %and, ptr noundef nonnull %call1.i157, i1 noundef zeroext true)
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then7.i, %land.end.i.if.end29_crit_edge, %sw.bb.i, %if.end.i.if.end29_crit_edge, %if.then.i171
  %val.0 = phi i64 [ %call28, %if.else27 ], [ %call.i170, %if.then.i171 ], [ %add.i, %sw.bb.i ], [ 0, %if.then7.i ], [ 0, %land.end.i.if.end29_crit_edge ], [ %31, %if.end.i.if.end29_crit_edge ]
  %tobool30.not = icmp eq ptr %old, null
  br i1 %tobool30.not, label %if.end29.if.end48_crit_edge, label %if.then31

if.end29.if.end48_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %cmp32 = icmp eq i64 %21, 0
  br i1 %cmp32, label %if.then33, label %if.else36

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %it_value34 = getelementptr inbounds %struct.itimerspec64, ptr %old, i32 0, i32 1
  %35 = ptrtoint ptr %it_value34 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %it_value34, align 8
  %tv_nsec = getelementptr inbounds %struct.itimerspec64, ptr %old, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %tv_nsec, align 8
  br label %if.end48

if.else36:                                        ; preds = %if.then31
  %37 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %expires.i, align 8
  %39 = ptrtoint ptr %it_interval to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %it_interval, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %tobool.not.i172 = icmp eq i64 %40, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %val.0, i64 %38)
  %cmp.i173 = icmp ult i64 %val.0, %38
  %or.cond.i = select i1 %tobool.not.i172, i1 true, i1 %cmp.i173
  br i1 %or.cond.i, label %if.else36.bump_cpu_timer.exit_crit_edge, label %if.end3.i

if.else36.bump_cpu_timer.exit_crit_edge:          ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #10
  br label %bump_cpu_timer.exit

if.end3.i:                                        ; preds = %if.else36
  %add.i174 = sub i64 %val.0, %38
  %sub.i = add i64 %add.i174, %40
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %add.i174)
  %cmp650.i = icmp ult i64 %40, %add.i174
  br i1 %cmp650.i, label %if.end3.i.for.body.i_crit_edge, label %if.end3.i.for.body9.lr.ph.i_crit_edge

if.end3.i.for.body9.lr.ph.i_crit_edge:            ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.lr.ph.i

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  br label %for.body.i

for.cond7.preheader.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %inc.i)
  %cmp854.i = icmp sgt i32 %inc.i, -1
  br i1 %cmp854.i, label %for.cond7.preheader.i.for.body9.lr.ph.i_crit_edge, label %for.cond7.preheader.i.for.end21.i_crit_edge

for.cond7.preheader.i.for.end21.i_crit_edge:      ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21.i

for.cond7.preheader.i.for.body9.lr.ph.i_crit_edge: ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.lr.ph.i

for.body9.lr.ph.i:                                ; preds = %for.cond7.preheader.i.for.body9.lr.ph.i_crit_edge, %if.end3.i.for.body9.lr.ph.i_crit_edge
  %i.0.lcssa63.i = phi i32 [ %inc.i, %for.cond7.preheader.i.for.body9.lr.ph.i_crit_edge ], [ 0, %if.end3.i.for.body9.lr.ph.i_crit_edge ]
  %incr.0.lcssa62.i = phi i64 [ %shl.i, %for.cond7.preheader.i.for.body9.lr.ph.i_crit_edge ], [ %40, %if.end3.i.for.body9.lr.ph.i_crit_edge ]
  %it_overrun.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 7
  br label %for.body9.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end3.i.for.body.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end3.i.for.body.i_crit_edge ]
  %incr.051.i = phi i64 [ %shl.i, %for.body.i.for.body.i_crit_edge ], [ %40, %if.end3.i.for.body.i_crit_edge ]
  %shl.i = shl i64 %incr.051.i, 1
  %inc.i = add i32 %i.052.i, 1
  %sub5.i = sub i64 %sub.i, %shl.i
  %cmp6.i = icmp ult i64 %shl.i, %sub5.i
  br i1 %cmp6.i, label %for.body.i.for.body.i_crit_edge, label %for.cond7.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body9.i:                                      ; preds = %for.inc20.i.for.body9.i_crit_edge, %for.body9.lr.ph.i
  %i.158.i = phi i32 [ %i.0.lcssa63.i, %for.body9.lr.ph.i ], [ %dec.i, %for.inc20.i.for.body9.i_crit_edge ]
  %incr.156.i = phi i64 [ %incr.0.lcssa62.i, %for.body9.lr.ph.i ], [ %shr.i, %for.inc20.i.for.body9.i_crit_edge ]
  %delta.055.i = phi i64 [ %sub.i, %for.body9.lr.ph.i ], [ %delta.1.i, %for.inc20.i.for.body9.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %delta.055.i, i64 %incr.156.i)
  %cmp10.i = icmp ult i64 %delta.055.i, %incr.156.i
  br i1 %cmp10.i, label %for.body9.i.for.inc20.i_crit_edge, label %if.end12.i

for.body9.i.for.inc20.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc20.i

if.end12.i:                                       ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %expires.i, align 8
  %add16.i = add i64 %42, %incr.156.i
  store i64 %add16.i, ptr %expires.i, align 8
  %sh_prom.i = zext i32 %i.158.i to i64
  %shl17.i = shl nuw i64 1, %sh_prom.i
  %43 = ptrtoint ptr %it_overrun.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %it_overrun.i, align 8
  %add18.i = add i64 %44, %shl17.i
  store i64 %add18.i, ptr %it_overrun.i, align 8
  %sub19.i = sub i64 %delta.055.i, %incr.156.i
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %if.end12.i, %for.body9.i.for.inc20.i_crit_edge
  %delta.1.i = phi i64 [ %delta.055.i, %for.body9.i.for.inc20.i_crit_edge ], [ %sub19.i, %if.end12.i ]
  %shr.i = lshr i64 %incr.156.i, 1
  %dec.i = add nsw i32 %i.158.i, -1
  %cmp8.i = icmp sgt i32 %i.158.i, 0
  br i1 %cmp8.i, label %for.inc20.i.for.body9.i_crit_edge, label %for.inc20.i.for.end21.i_crit_edge

for.inc20.i.for.end21.i_crit_edge:                ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21.i

for.inc20.i.for.body9.i_crit_edge:                ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.i

for.end21.i:                                      ; preds = %for.inc20.i.for.end21.i_crit_edge, %for.cond7.preheader.i.for.end21.i_crit_edge
  %45 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %expires.i, align 8
  br label %bump_cpu_timer.exit

bump_cpu_timer.exit:                              ; preds = %for.end21.i, %if.else36.bump_cpu_timer.exit_crit_edge
  %retval.0.i175 = phi i64 [ %46, %for.end21.i ], [ %38, %if.else36.bump_cpu_timer.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i175, i64 %val.0)
  %cmp38 = icmp ugt i64 %retval.0.i175, %val.0
  br i1 %cmp38, label %if.then39, label %if.else41

if.then39:                                        ; preds = %bump_cpu_timer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i64 %retval.0.i175, %val.0
  %it_value40 = getelementptr inbounds %struct.itimerspec64, ptr %old, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %sub) #8
  %47 = call ptr @memcpy(ptr %it_value40, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #8
  br label %if.end48

if.else41:                                        ; preds = %bump_cpu_timer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %it_value42 = getelementptr inbounds %struct.itimerspec64, ptr %old, i32 0, i32 1
  %tv_nsec43 = getelementptr inbounds %struct.itimerspec64, ptr %old, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %tv_nsec43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %tv_nsec43, align 8
  %49 = ptrtoint ptr %it_value42 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %it_value42, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.else41, %if.then39, %if.then33, %if.end29.if.end48_crit_edge
  br i1 %tobool10.not, label %if.end57, label %if.then56, !prof !60

if.then56:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %call1.i157, i32 0, i32 112
  %50 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sighand.i, align 4
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %51, i32 noundef %53) #8
  br label %out

if.end57:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i.i)
  %cmp58.not = icmp eq i64 %retval.0.i.i, 0
  br i1 %cmp58.not, label %if.end62.thread, label %if.end62

if.end62.thread:                                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %expires.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %expires.i, align 8
  br label %if.end67

if.end62:                                         ; preds = %if.end57
  %and59 = and i32 %timer_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  %add = select i1 %tobool60.not, i64 %val.0, i64 0
  %spec.select = add i64 %add, %retval.0.i.i
  %55 = ptrtoint ptr %expires.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %spec.select, ptr %expires.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select)
  %cmp63.not = icmp eq i64 %spec.select, 0
  %cmp63.not.not = xor i1 %cmp63.not, true
  call void @__sanitizer_cov_trace_cmp8(i64 %val.0, i64 %spec.select)
  %cmp65 = icmp ult i64 %val.0, %spec.select
  %or.cond = select i1 %cmp63.not.not, i1 %cmp65, i1 false
  br i1 %or.cond, label %if.then66, label %if.end62.if.end67_crit_edge

if.end62.if.end67_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then66:                                        ; preds = %if.end62
  %56 = ptrtoint ptr %it_clock to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %it_clock, align 8
  %and2.i.i = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %posix_cputimers.i.i = getelementptr inbounds %struct.task_struct, ptr %call1.i157, i32 0, i32 96
  br label %timer_base.exit.i

if.else.i.i:                                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %call1.i157, i32 0, i32 111
  %58 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %signal.i.i, align 16
  %posix_cputimers3.i.i = getelementptr inbounds %struct.signal_struct, ptr %59, i32 0, i32 21
  br label %timer_base.exit.i

timer_base.exit.i:                                ; preds = %if.else.i.i, %if.then.i.i
  %posix_cputimers.pn.i.i = phi ptr [ %posix_cputimers.i.i, %if.then.i.i ], [ %posix_cputimers3.i.i, %if.else.i.i ]
  %and.i.i177 = and i32 %57, 3
  %retval.0.i.i178 = getelementptr %struct.posix_cputimer_base, ptr %posix_cputimers.pn.i.i, i32 %and.i.i177
  %60 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %expires.i, align 8
  %tqhead.i = getelementptr %struct.posix_cputimer_base, ptr %posix_cputimers.pn.i.i, i32 %and.i.i177, i32 1
  %head1.i.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 1
  %62 = ptrtoint ptr %head1.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %tqhead.i, ptr %head1.i.i, align 8
  %call.i.i = call zeroext i1 @timerqueue_add(ptr noundef %tqhead.i, ptr noundef %it) #8
  br i1 %call.i.i, label %if.end.i180, label %timer_base.exit.i.if.end67_crit_edge

timer_base.exit.i.if.end67_crit_edge:             ; preds = %timer_base.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.end.i180:                                      ; preds = %timer_base.exit.i
  %63 = ptrtoint ptr %retval.0.i.i178 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %retval.0.i.i178, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %64)
  %cmp.i179 = icmp ult i64 %61, %64
  br i1 %cmp.i179, label %if.then3.i, label %if.end.i180.if.end67_crit_edge

if.end.i180.if.end67_crit_edge:                   ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then3.i:                                       ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %retval.0.i.i178 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %61, ptr %retval.0.i.i178, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then3.i, %if.end.i180.if.end67_crit_edge, %timer_base.exit.i.if.end67_crit_edge, %if.end62.if.end67_crit_edge, %if.end62.thread
  %cmp65218 = phi i1 [ false, %if.end62.thread ], [ %cmp65, %if.end62.if.end67_crit_edge ], [ true, %timer_base.exit.i.if.end67_crit_edge ], [ true, %if.end.i180.if.end67_crit_edge ], [ true, %if.then3.i ]
  %cmp63.not217 = phi i1 [ true, %if.end62.thread ], [ %cmp63.not, %if.end62.if.end67_crit_edge ], [ %cmp63.not, %timer_base.exit.i.if.end67_crit_edge ], [ %cmp63.not, %if.end.i180.if.end67_crit_edge ], [ %cmp63.not, %if.then3.i ]
  %sighand.i181 = getelementptr inbounds %struct.task_struct, ptr %call1.i157, i32 0, i32 112
  %66 = ptrtoint ptr %sighand.i181 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sighand.i181, align 4
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %67, i32 noundef %69) #8
  %70 = ptrtoint ptr %new to i32
  call void @__asan_load8_noabort(i32 %70)
  %.unpack154 = load i64, ptr %new, align 8
  %.elt155 = getelementptr inbounds [2 x i64], ptr %new, i32 0, i32 1
  %71 = ptrtoint ptr %.elt155 to i32
  call void @__asan_load8_noabort(i32 %71)
  %.unpack156 = load i64, ptr %.elt155, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.unpack154)
  %cmp.i.i182 = icmp sgt i64 %.unpack154, 9223372035
  %ts.sroa.2.8.extract.shift.i183 = lshr i64 %.unpack156, 32
  %mul.i.i184 = mul i64 %.unpack154, 1000000000
  %add.i.i185 = add i64 %ts.sroa.2.8.extract.shift.i183, %mul.i.i184
  %retval.0.i.i186 = select i1 %cmp.i.i182, i64 9223372036854775807, i64 %add.i.i185, !prof !70
  %72 = ptrtoint ptr %it_interval to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %retval.0.i.i186, ptr %it_interval, align 8
  %it_requeue_pending = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 9
  %73 = ptrtoint ptr %it_requeue_pending to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %it_requeue_pending, align 8
  %add71 = add i32 %74, 2
  %and72 = and i32 %add71, -2
  store i32 %and72, ptr %it_requeue_pending, align 8
  %it_overrun_last = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 8
  %75 = ptrtoint ptr %it_overrun_last to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 0, ptr %it_overrun_last, align 8
  %it_overrun = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 7
  %76 = ptrtoint ptr %it_overrun to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 -1, ptr %it_overrun, align 8
  br i1 %cmp65218, label %if.end67.out_crit_edge, label %if.then75

if.end67.out_crit_edge:                           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then75:                                        ; preds = %if.end67
  br i1 %cmp63.not217, label %if.then75.if.end78_crit_edge, label %if.then77

if.then75.if.end78_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then77:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @cpu_timer_fire(ptr noundef %timer)
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.then75.if.end78_crit_edge
  %call.i187 = call ptr @__lock_task_sighand(ptr noundef nonnull %call1.i157, ptr noundef nonnull %flags) #8
  %tobool80.not = icmp eq ptr %call.i187, null
  br i1 %tobool80.not, label %if.end78.out_crit_edge, label %if.end82

if.end78.out_crit_edge:                           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end82:                                         ; preds = %if.end78
  %head.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 1
  %77 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %head.i, align 8
  %tobool.i.not = icmp eq ptr %78, null
  br i1 %tobool.i.not, label %if.then84, label %if.end82.if.end85_crit_edge

if.end82.if.end85_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then84:                                        ; preds = %if.end82
  %79 = ptrtoint ptr %it_clock to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %it_clock, align 8
  %and2.i.i189 = and i32 %80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i189)
  %cmp.not.i.i190 = icmp eq i32 %and2.i.i189, 0
  br i1 %cmp.not.i.i190, label %if.else.i.i195, label %if.then.i.i192

if.then.i.i192:                                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  %posix_cputimers.i.i191 = getelementptr inbounds %struct.task_struct, ptr %call1.i157, i32 0, i32 96
  br label %trigger_base_recalc_expires.exit

if.else.i.i195:                                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  %signal.i.i193 = getelementptr inbounds %struct.task_struct, ptr %call1.i157, i32 0, i32 111
  %81 = ptrtoint ptr %signal.i.i193 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %signal.i.i193, align 16
  %posix_cputimers3.i.i194 = getelementptr inbounds %struct.signal_struct, ptr %82, i32 0, i32 21
  br label %trigger_base_recalc_expires.exit

trigger_base_recalc_expires.exit:                 ; preds = %if.else.i.i195, %if.then.i.i192
  %posix_cputimers.pn.i.i196 = phi ptr [ %posix_cputimers.i.i191, %if.then.i.i192 ], [ %posix_cputimers3.i.i194, %if.else.i.i195 ]
  %and.i.i197 = and i32 %80, 3
  %retval.0.i.i198 = getelementptr %struct.posix_cputimer_base, ptr %posix_cputimers.pn.i.i196, i32 %and.i.i197
  %83 = ptrtoint ptr %retval.0.i.i198 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 0, ptr %retval.0.i.i198, align 8
  br label %if.end85

if.end85:                                         ; preds = %trigger_base_recalc_expires.exit, %if.end82.if.end85_crit_edge
  %84 = ptrtoint ptr %sighand.i181 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sighand.i181, align 4
  %86 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %85, i32 noundef %87) #8
  br label %out

out:                                              ; preds = %if.end85, %if.end78.out_crit_edge, %if.end67.out_crit_edge, %if.then56
  %call.i201 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i201, label %out.rcu_read_unlock.exit211_crit_edge, label %land.lhs.true.i204

out.rcu_read_unlock.exit211_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit211

land.lhs.true.i204:                               ; preds = %out
  %call1.i202 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i202)
  %tobool.not.i203 = icmp eq i32 %call1.i202, 0
  br i1 %tobool.not.i203, label %land.lhs.true.i204.rcu_read_unlock.exit211_crit_edge, label %land.lhs.true2.i206

land.lhs.true.i204.rcu_read_unlock.exit211_crit_edge: ; preds = %land.lhs.true.i204
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit211

land.lhs.true2.i206:                              ; preds = %land.lhs.true.i204
  %.b4.i205 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i205, label %land.lhs.true2.i206.rcu_read_unlock.exit211_crit_edge, label %if.then.i207

land.lhs.true2.i206.rcu_read_unlock.exit211_crit_edge: ; preds = %land.lhs.true2.i206
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit211

if.then.i207:                                     ; preds = %land.lhs.true2.i206
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit211

rcu_read_unlock.exit211:                          ; preds = %if.then.i207, %land.lhs.true2.i206.rcu_read_unlock.exit211_crit_edge, %land.lhs.true.i204.rcu_read_unlock.exit211_crit_edge, %out.rcu_read_unlock.exit211_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %88 = call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i208 = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i.i208 to ptr
  %preempt_count.i.i.i.i209 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i.i.i209 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i.i.i209, align 4
  %sub.i.i.i210 = add i32 %91, -1
  store volatile i32 %sub.i.i.i210, ptr %preempt_count.i.i.i.i209, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br i1 %tobool30.not, label %rcu_read_unlock.exit211.cleanup_crit_edge, label %if.then88

rcu_read_unlock.exit211.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit211
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then88:                                        ; preds = %rcu_read_unlock.exit211
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp90) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp90, i64 noundef %19) #8
  %92 = call ptr @memcpy(ptr %old, ptr %tmp90, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp90) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %rcu_read_unlock.exit211.cleanup_crit_edge, %if.then6, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ -3, %if.then6 ], [ -3, %rcu_read_unlock.exit ], [ %ret.0, %if.then88 ], [ %ret.0, %rcu_read_unlock.exit211.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_cpu_timer_del(ptr noundef %timer) #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %it = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !65
  %1 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %pid.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pid.i, align 4
  %it_clock.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 4
  %7 = ptrtoint ptr %it_clock.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %it_clock.i, align 8
  %and.i.i = lshr i32 %8, 2
  %and.lobit.i.i = and i32 %and.i.i, 1
  %9 = xor i32 %and.lobit.i.i, 1
  %call1.i72 = tail call ptr @pid_task(ptr noundef %6, i32 noundef %9) #8
  %tobool.not = icmp eq ptr %call1.i72, null
  br i1 %tobool.not, label %rcu_read_lock.exit.out_crit_edge, label %if.end

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %rcu_read_lock.exit
  %call.i73 = call ptr @__lock_task_sighand(ptr noundef nonnull %call1.i72, ptr noundef nonnull %flags) #8
  %cmp = icmp eq ptr %call.i73, null
  br i1 %cmp, label %if.then4, label %if.else, !prof !70

if.then4:                                         ; preds = %if.end
  %head = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head, align 8
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %lor.rhs, label %if.then4.land.rhs_crit_edge

if.then4.land.rhs_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

lor.rhs:                                          ; preds = %if.then4
  %12 = ptrtoint ptr %it to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %it, align 8
  %14 = ptrtoint ptr %it to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %14)
  %cmp.i.not = icmp eq i32 %13, %14
  br i1 %cmp.i.not, label %lor.rhs.out_crit_edge, label %lor.rhs.land.rhs_crit_edge

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

lor.rhs.out_crit_edge:                            ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %if.then4.land.rhs_crit_edge
  %.b71 = load i1, ptr @posix_cpu_timer_del.__already_done, align 1
  br i1 %.b71, label %land.rhs.out_crit_edge, label %if.then21, !prof !60

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then21:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @posix_cpu_timer_del.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 488, i32 noundef 9, ptr noundef null) #8
  br label %out

if.else:                                          ; preds = %if.end
  %firing = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %firing to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %firing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool52.not = icmp eq i32 %16, 0
  br i1 %tobool52.not, label %if.else54, label %if.else.if.end55_crit_edge

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.else54:                                        ; preds = %if.else
  %head.i.i.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i.i, align 8
  %tobool.i.i.not.i = icmp eq ptr %18, null
  br i1 %tobool.i.i.not.i, label %if.else54.if.end55_crit_edge, label %if.end.i

if.else54.if.end55_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.end.i:                                         ; preds = %if.else54
  %call1.i.i = call zeroext i1 @timerqueue_del(ptr noundef nonnull %18, ptr noundef %it) #8
  %19 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %head.i.i.i, align 8
  %20 = ptrtoint ptr %it_clock.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %it_clock.i, align 8
  %and2.i.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.not.i.i, label %timer_base.exit.i, label %timer_base.exit.thread.i

timer_base.exit.i:                                ; preds = %if.end.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %call1.i72, i32 0, i32 111
  %22 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %signal.i.i, align 16
  %posix_cputimers3.i.i = getelementptr inbounds %struct.signal_struct, ptr %23, i32 0, i32 21
  %and.i.i74 = and i32 %21, 3
  %retval.0.i.i = getelementptr %struct.posix_cputimer_base, ptr %posix_cputimers3.i.i, i32 %and.i.i74
  %expires.i.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %expires.i.i, align 8
  %26 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %retval.0.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %27)
  %cmp.i75 = icmp eq i64 %25, %27
  br i1 %cmp.i75, label %timer_base.exit.i.trigger_base_recalc_expires.exit.i_crit_edge, label %timer_base.exit.i.if.end55_crit_edge

timer_base.exit.i.if.end55_crit_edge:             ; preds = %timer_base.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

timer_base.exit.i.trigger_base_recalc_expires.exit.i_crit_edge: ; preds = %timer_base.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %trigger_base_recalc_expires.exit.i

timer_base.exit.thread.i:                         ; preds = %if.end.i
  %posix_cputimers.i.i = getelementptr inbounds %struct.task_struct, ptr %call1.i72, i32 0, i32 96
  %and.i12.i = and i32 %21, 3
  %retval.0.i13.i = getelementptr %struct.posix_cputimer_base, ptr %posix_cputimers.i.i, i32 %and.i12.i
  %expires.i14.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %expires.i14.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %expires.i14.i, align 8
  %30 = ptrtoint ptr %retval.0.i13.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %retval.0.i13.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %31)
  %cmp15.i = icmp eq i64 %29, %31
  br i1 %cmp15.i, label %timer_base.exit.thread.i.trigger_base_recalc_expires.exit.i_crit_edge, label %timer_base.exit.thread.i.if.end55_crit_edge

timer_base.exit.thread.i.if.end55_crit_edge:      ; preds = %timer_base.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

timer_base.exit.thread.i.trigger_base_recalc_expires.exit.i_crit_edge: ; preds = %timer_base.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %trigger_base_recalc_expires.exit.i

trigger_base_recalc_expires.exit.i:               ; preds = %timer_base.exit.thread.i.trigger_base_recalc_expires.exit.i_crit_edge, %timer_base.exit.i.trigger_base_recalc_expires.exit.i_crit_edge
  %and.i1618.i = phi i32 [ %and.i12.i, %timer_base.exit.thread.i.trigger_base_recalc_expires.exit.i_crit_edge ], [ %and.i.i74, %timer_base.exit.i.trigger_base_recalc_expires.exit.i_crit_edge ]
  %posix_cputimers.pn.i.i.i = phi ptr [ %posix_cputimers.i.i, %timer_base.exit.thread.i.trigger_base_recalc_expires.exit.i_crit_edge ], [ %posix_cputimers3.i.i, %timer_base.exit.i.trigger_base_recalc_expires.exit.i_crit_edge ]
  %retval.0.i.i.i = getelementptr %struct.posix_cputimer_base, ptr %posix_cputimers.pn.i.i.i, i32 %and.i1618.i
  %32 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %retval.0.i.i.i, align 8
  br label %if.end55

if.end55:                                         ; preds = %trigger_base_recalc_expires.exit.i, %timer_base.exit.thread.i.if.end55_crit_edge, %timer_base.exit.i.if.end55_crit_edge, %if.else54.if.end55_crit_edge, %if.else.if.end55_crit_edge
  %ret.0 = phi i32 [ 1, %if.else.if.end55_crit_edge ], [ 0, %if.else54.if.end55_crit_edge ], [ 0, %timer_base.exit.i.if.end55_crit_edge ], [ 0, %timer_base.exit.thread.i.if.end55_crit_edge ], [ 0, %trigger_base_recalc_expires.exit.i ]
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %call1.i72, i32 0, i32 112
  %33 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sighand.i, align 4
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %36) #8
  br label %out

out:                                              ; preds = %if.end55, %if.then21, %land.rhs.out_crit_edge, %lor.rhs.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end55 ], [ 0, %rcu_read_lock.exit.out_crit_edge ], [ 0, %lor.rhs.out_crit_edge ], [ 0, %if.then21 ], [ 0, %land.rhs.out_crit_edge ]
  %call.i76 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i76, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i79

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i79:                                ; preds = %out
  %call1.i77 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77)
  %tobool.not.i78 = icmp eq i32 %call1.i77, 0
  br i1 %tobool.not.i78, label %land.lhs.true.i79.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i81

land.lhs.true.i79.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i81:                               ; preds = %land.lhs.true.i79
  %.b4.i80 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i80, label %land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge, label %if.then.i82

land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i82:                                      ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i82, %land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i79.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %37 = call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i83 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i83 to ptr
  %preempt_count.i.i.i.i84 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i84, align 4
  %sub.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i84, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool57.not = icmp eq i32 %ret.1, 0
  br i1 %tobool57.not, label %if.then58, label %rcu_read_unlock.exit.if.end59_crit_edge

rcu_read_unlock.exit.if.end59_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then58:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pid.i, align 4
  call void @put_pid(ptr noundef %42) #8
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %rcu_read_unlock.exit.if.end59_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @posix_cpu_timer_get(ptr nocapture noundef readonly %timer, ptr nocapture noundef writeonly %itp) #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  %tmp14 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %it_clock = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 4
  %0 = ptrtoint ptr %it_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %it_clock, align 8
  %and = and i32 %1, 3
  %expires.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %expires.i, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %pid.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pid.i, align 4
  %10 = ptrtoint ptr %it_clock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %it_clock, align 8
  %and.i.i = lshr i32 %11, 2
  %and.lobit.i.i = and i32 %and.i.i, 1
  %12 = xor i32 %and.lobit.i.i, 1
  %call1.i32 = tail call ptr @pid_task(ptr noundef %9, i32 noundef %12) #8
  %tobool.not = icmp eq ptr %call1.i32, null
  br i1 %tobool.not, label %rcu_read_lock.exit.out_crit_edge, label %if.end

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %rcu_read_lock.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #8
  %it_interval2 = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 11
  %13 = ptrtoint ptr %it_interval2 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %it_interval2, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %14) #8
  %15 = call ptr @memcpy(ptr %itp, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool3.not = icmp eq i64 %3, 0
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %if.end
  %16 = ptrtoint ptr %it_clock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %it_clock, align 8
  %and7 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp.not = icmp eq i32 %and7, 0
  br i1 %cmp.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp.i = icmp eq i32 %and, 2
  br i1 %cmp.i, label %if.then.i34, label %if.end.i

if.then.i34:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %call.i33 = call i64 @task_sched_runtime(ptr noundef nonnull %call1.i32) #8
  br label %if.end11

if.end.i:                                         ; preds = %if.then8
  %utime1.i.i = getelementptr inbounds %struct.task_struct, ptr %call1.i32, i32 0, i32 86
  %18 = ptrtoint ptr %utime1.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %utime1.i.i, align 8
  %20 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %and, label %land.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %if.end.i.if.end11_crit_edge
  ]

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %stime2.i.i = getelementptr inbounds %struct.task_struct, ptr %call1.i32, i32 0, i32 87
  %21 = ptrtoint ptr %stime2.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %stime2.i.i, align 32
  %add.i = add i64 %22, %19
  br label %if.end11

land.end.i:                                       ; preds = %if.end.i
  %.b42.i = load i1, ptr @cpu_clock_sample.__already_done, align 1
  br i1 %.b42.i, label %land.end.i.if.then13_crit_edge, label %if.then7.i, !prof !60

land.end.i.if.then13_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then7.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_clock_sample.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef null) #8
  br label %if.then13

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = call fastcc i64 @cpu_clock_sample_group(i32 noundef %and, ptr noundef nonnull %call1.i32, i1 noundef zeroext false)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %sw.bb.i, %if.end.i.if.end11_crit_edge, %if.then.i34
  %now.0 = phi i64 [ %call10, %if.else ], [ %call.i33, %if.then.i34 ], [ %add.i, %sw.bb.i ], [ %19, %if.end.i.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %now.0)
  %cmp12 = icmp ugt i64 %3, %now.0
  br i1 %cmp12, label %if.end11.if.then13_crit_edge, label %if.else15

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %if.end11.if.then13_crit_edge, %if.then7.i, %land.end.i.if.then13_crit_edge
  %now.046 = phi i64 [ %now.0, %if.end11.if.then13_crit_edge ], [ 0, %if.then7.i ], [ 0, %land.end.i.if.then13_crit_edge ]
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %itp, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp14) #8
  %sub = sub i64 %3, %now.046
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp14, i64 noundef %sub) #8
  %23 = call ptr @memcpy(ptr %it_value, ptr %tmp14, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp14) #8
  br label %out

if.else15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %it_value16 = getelementptr inbounds %struct.itimerspec64, ptr %itp, i32 0, i32 1
  %tv_nsec = getelementptr inbounds %struct.itimerspec64, ptr %itp, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %tv_nsec, align 8
  %25 = ptrtoint ptr %it_value16 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %it_value16, align 8
  br label %out

out:                                              ; preds = %if.else15, %if.then13, %if.end.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  %call.i35 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i35, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %out
  %call1.i36 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %26 = call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i42 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @posix_cpu_timer_rearm(ptr noundef %timer) #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %it_clock = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 4
  %0 = ptrtoint ptr %it_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %it_clock, align 8
  %and = and i32 %1, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !65
  %3 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %pid.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pid.i, align 4
  %9 = ptrtoint ptr %it_clock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %it_clock, align 8
  %and.i.i = lshr i32 %10, 2
  %and.lobit.i.i = and i32 %and.i.i, 1
  %11 = xor i32 %and.lobit.i.i, 1
  %call1.i24 = tail call ptr @pid_task(ptr noundef %8, i32 noundef %11) #8
  %tobool.not = icmp eq ptr %call1.i24, null
  br i1 %tobool.not, label %rcu_read_lock.exit.out_crit_edge, label %if.end

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %rcu_read_lock.exit
  %call.i25 = call ptr @__lock_task_sighand(ptr noundef nonnull %call1.i24, ptr noundef nonnull %flags) #8
  %cmp = icmp eq ptr %call.i25, null
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end5, !prof !70

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %if.end
  %12 = ptrtoint ptr %it_clock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %it_clock, align 8
  %and7 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %cmp8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp.i = icmp eq i32 %and, 2
  br i1 %cmp.i, label %if.then.i27, label %if.end.i

if.then.i27:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %call.i26 = call i64 @task_sched_runtime(ptr noundef nonnull %call1.i24) #8
  br label %if.end12

if.end.i:                                         ; preds = %if.then9
  %utime1.i.i = getelementptr inbounds %struct.task_struct, ptr %call1.i24, i32 0, i32 86
  %14 = ptrtoint ptr %utime1.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %utime1.i.i, align 8
  %16 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %and, label %land.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %if.end.i.if.end12_crit_edge
  ]

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %stime2.i.i = getelementptr inbounds %struct.task_struct, ptr %call1.i24, i32 0, i32 87
  %17 = ptrtoint ptr %stime2.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %stime2.i.i, align 32
  %add.i = add i64 %18, %15
  br label %if.end12

land.end.i:                                       ; preds = %if.end.i
  %.b42.i = load i1, ptr @cpu_clock_sample.__already_done, align 1
  br i1 %.b42.i, label %land.end.i.if.end12_crit_edge, label %if.then7.i, !prof !60

land.end.i.if.end12_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then7.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_clock_sample.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef null) #8
  br label %if.end12

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = call fastcc i64 @cpu_clock_sample_group(i32 noundef %and, ptr noundef nonnull %call1.i24, i1 noundef zeroext true)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7.i, %land.end.i.if.end12_crit_edge, %sw.bb.i, %if.end.i.if.end12_crit_edge, %if.then.i27
  %now.0 = phi i64 [ %call11, %if.else ], [ %call.i26, %if.then.i27 ], [ %add.i, %sw.bb.i ], [ 0, %if.then7.i ], [ 0, %land.end.i.if.end12_crit_edge ], [ %15, %if.end.i.if.end12_crit_edge ]
  %expires1.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %expires1.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %expires1.i, align 8
  %it_interval.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 11
  %21 = ptrtoint ptr %it_interval.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %it_interval.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool.not.i28 = icmp eq i64 %22, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %now.0, i64 %20)
  %cmp.i29 = icmp ult i64 %now.0, %20
  %or.cond.i = select i1 %tobool.not.i28, i1 true, i1 %cmp.i29
  br i1 %or.cond.i, label %if.end12.bump_cpu_timer.exit_crit_edge, label %if.end3.i

if.end12.bump_cpu_timer.exit_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %bump_cpu_timer.exit

if.end3.i:                                        ; preds = %if.end12
  %add.i30 = sub i64 %now.0, %20
  %sub.i = add i64 %add.i30, %22
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %add.i30)
  %cmp650.i = icmp ult i64 %22, %add.i30
  br i1 %cmp650.i, label %if.end3.i.for.body.i_crit_edge, label %if.end3.i.for.body9.lr.ph.i_crit_edge

if.end3.i.for.body9.lr.ph.i_crit_edge:            ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.lr.ph.i

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  br label %for.body.i

for.cond7.preheader.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %inc.i)
  %cmp854.i = icmp sgt i32 %inc.i, -1
  br i1 %cmp854.i, label %for.cond7.preheader.i.for.body9.lr.ph.i_crit_edge, label %for.cond7.preheader.i.bump_cpu_timer.exit_crit_edge

for.cond7.preheader.i.bump_cpu_timer.exit_crit_edge: ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bump_cpu_timer.exit

for.cond7.preheader.i.for.body9.lr.ph.i_crit_edge: ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.lr.ph.i

for.body9.lr.ph.i:                                ; preds = %for.cond7.preheader.i.for.body9.lr.ph.i_crit_edge, %if.end3.i.for.body9.lr.ph.i_crit_edge
  %i.0.lcssa63.i = phi i32 [ %inc.i, %for.cond7.preheader.i.for.body9.lr.ph.i_crit_edge ], [ 0, %if.end3.i.for.body9.lr.ph.i_crit_edge ]
  %incr.0.lcssa62.i = phi i64 [ %shl.i, %for.cond7.preheader.i.for.body9.lr.ph.i_crit_edge ], [ %22, %if.end3.i.for.body9.lr.ph.i_crit_edge ]
  %it_overrun.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 7
  br label %for.body9.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end3.i.for.body.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end3.i.for.body.i_crit_edge ]
  %incr.051.i = phi i64 [ %shl.i, %for.body.i.for.body.i_crit_edge ], [ %22, %if.end3.i.for.body.i_crit_edge ]
  %shl.i = shl i64 %incr.051.i, 1
  %inc.i = add i32 %i.052.i, 1
  %sub5.i = sub i64 %sub.i, %shl.i
  %cmp6.i = icmp ult i64 %shl.i, %sub5.i
  br i1 %cmp6.i, label %for.body.i.for.body.i_crit_edge, label %for.cond7.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body9.i:                                      ; preds = %for.inc20.i.for.body9.i_crit_edge, %for.body9.lr.ph.i
  %i.158.i = phi i32 [ %i.0.lcssa63.i, %for.body9.lr.ph.i ], [ %dec.i, %for.inc20.i.for.body9.i_crit_edge ]
  %incr.156.i = phi i64 [ %incr.0.lcssa62.i, %for.body9.lr.ph.i ], [ %shr.i, %for.inc20.i.for.body9.i_crit_edge ]
  %delta.055.i = phi i64 [ %sub.i, %for.body9.lr.ph.i ], [ %delta.1.i, %for.inc20.i.for.body9.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %delta.055.i, i64 %incr.156.i)
  %cmp10.i = icmp ult i64 %delta.055.i, %incr.156.i
  br i1 %cmp10.i, label %for.body9.i.for.inc20.i_crit_edge, label %if.end12.i

for.body9.i.for.inc20.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc20.i

if.end12.i:                                       ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %expires1.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %expires1.i, align 8
  %add16.i = add i64 %24, %incr.156.i
  store i64 %add16.i, ptr %expires1.i, align 8
  %sh_prom.i = zext i32 %i.158.i to i64
  %shl17.i = shl nuw i64 1, %sh_prom.i
  %25 = ptrtoint ptr %it_overrun.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %it_overrun.i, align 8
  %add18.i = add i64 %26, %shl17.i
  store i64 %add18.i, ptr %it_overrun.i, align 8
  %sub19.i = sub i64 %delta.055.i, %incr.156.i
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %if.end12.i, %for.body9.i.for.inc20.i_crit_edge
  %delta.1.i = phi i64 [ %delta.055.i, %for.body9.i.for.inc20.i_crit_edge ], [ %sub19.i, %if.end12.i ]
  %shr.i = lshr i64 %incr.156.i, 1
  %dec.i = add nsw i32 %i.158.i, -1
  %cmp8.i = icmp sgt i32 %i.158.i, 0
  br i1 %cmp8.i, label %for.inc20.i.for.body9.i_crit_edge, label %for.inc20.i.bump_cpu_timer.exit_crit_edge

for.inc20.i.bump_cpu_timer.exit_crit_edge:        ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bump_cpu_timer.exit

for.inc20.i.for.body9.i_crit_edge:                ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.i

bump_cpu_timer.exit:                              ; preds = %for.inc20.i.bump_cpu_timer.exit_crit_edge, %for.cond7.preheader.i.bump_cpu_timer.exit_crit_edge, %if.end12.bump_cpu_timer.exit_crit_edge
  %27 = ptrtoint ptr %it_clock to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %it_clock, align 8
  %and2.i.i = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %bump_cpu_timer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %posix_cputimers.i.i = getelementptr inbounds %struct.task_struct, ptr %call1.i24, i32 0, i32 96
  br label %timer_base.exit.i

if.else.i.i:                                      ; preds = %bump_cpu_timer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %call1.i24, i32 0, i32 111
  %29 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %signal.i.i, align 16
  %posix_cputimers3.i.i = getelementptr inbounds %struct.signal_struct, ptr %30, i32 0, i32 21
  br label %timer_base.exit.i

timer_base.exit.i:                                ; preds = %if.else.i.i, %if.then.i.i
  %posix_cputimers.pn.i.i = phi ptr [ %posix_cputimers.i.i, %if.then.i.i ], [ %posix_cputimers3.i.i, %if.else.i.i ]
  %and.i.i32 = and i32 %28, 3
  %retval.0.i.i = getelementptr %struct.posix_cputimer_base, ptr %posix_cputimers.pn.i.i, i32 %and.i.i32
  %it.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15
  %31 = ptrtoint ptr %expires1.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %expires1.i, align 8
  %tqhead.i = getelementptr %struct.posix_cputimer_base, ptr %posix_cputimers.pn.i.i, i32 %and.i.i32, i32 1
  %head1.i.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %head1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %tqhead.i, ptr %head1.i.i, align 8
  %call.i.i = call zeroext i1 @timerqueue_add(ptr noundef %tqhead.i, ptr noundef %it.i) #8
  br i1 %call.i.i, label %if.end.i34, label %timer_base.exit.i.arm_timer.exit_crit_edge

timer_base.exit.i.arm_timer.exit_crit_edge:       ; preds = %timer_base.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_timer.exit

if.end.i34:                                       ; preds = %timer_base.exit.i
  %34 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %retval.0.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %35)
  %cmp.i33 = icmp ult i64 %32, %35
  br i1 %cmp.i33, label %if.then3.i, label %if.end.i34.arm_timer.exit_crit_edge

if.end.i34.arm_timer.exit_crit_edge:              ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_timer.exit

if.then3.i:                                       ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %32, ptr %retval.0.i.i, align 8
  br label %arm_timer.exit

arm_timer.exit:                                   ; preds = %if.then3.i, %if.end.i34.arm_timer.exit_crit_edge, %timer_base.exit.i.arm_timer.exit_crit_edge
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %call1.i24, i32 0, i32 112
  %37 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sighand.i, align 4
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %40) #8
  br label %out

out:                                              ; preds = %arm_timer.exit, %if.end.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  %call.i35 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i35, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %out
  %call1.i36 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %41 = call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i42 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @process_cpu_clock_getres(i32 noundef %which_clock, ptr nocapture noundef writeonly %tp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @validate_clock_permissions(i32 noundef -6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.posix_cpu_clock_getres.exit_crit_edge

entry.posix_cpu_clock_getres.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %posix_cpu_clock_getres.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %tp, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %tp, i32 0, i32 1
  %1 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %tv_nsec.i, align 8
  br label %posix_cpu_clock_getres.exit

posix_cpu_clock_getres.exit:                      ; preds = %if.then.i, %entry.posix_cpu_clock_getres.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @process_cpu_clock_get(i32 noundef %which_clock, ptr nocapture noundef writeonly %tp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @posix_cpu_clock_get(i32 noundef -6, ptr noundef %tp)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @process_cpu_timer_create(ptr noundef %timer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %it_clock = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 4
  %0 = ptrtoint ptr %it_clock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -6, ptr %it_clock, align 8
  %call1 = tail call i32 @posix_cpu_timer_create(ptr noundef %timer)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @process_cpu_nsleep(i32 noundef %which_clock, i32 noundef %flags, ptr nocapture noundef readonly %rqtp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %call9.i = tail call fastcc i32 @do_cpu_nanosleep(i32 noundef -6, i32 noundef %flags, ptr noundef %rqtp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -516, i32 %call9.i)
  %cmp10.i = icmp eq i32 %call9.i, -516
  br i1 %cmp10.i, label %if.then11.i, label %entry.posix_cpu_nsleep.exit_crit_edge

entry.posix_cpu_nsleep.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %posix_cpu_nsleep.exit

if.then11.i:                                      ; preds = %entry
  %and12.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool.not.i, label %if.end14.i, label %if.then11.i.posix_cpu_nsleep.exit_crit_edge

if.then11.i.posix_cpu_nsleep.exit_crit_edge:      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %posix_cpu_nsleep.exit

if.end14.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 67, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -6, ptr %4, align 8
  %fn1.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 67, i32 1
  %6 = ptrtoint ptr %fn1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @posix_cpu_nsleep_restart, ptr %fn1.i.i, align 4
  br label %posix_cpu_nsleep.exit

posix_cpu_nsleep.exit:                            ; preds = %if.end14.i, %if.then11.i.posix_cpu_nsleep.exit_crit_edge, %entry.posix_cpu_nsleep.exit_crit_edge
  %retval.0.i = phi i32 [ -514, %if.then11.i.posix_cpu_nsleep.exit_crit_edge ], [ -516, %if.end14.i ], [ %call9.i, %entry.posix_cpu_nsleep.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thread_cpu_clock_getres(i32 noundef %which_clock, ptr nocapture noundef writeonly %tp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @validate_clock_permissions(i32 noundef -2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.posix_cpu_clock_getres.exit_crit_edge

entry.posix_cpu_clock_getres.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %posix_cpu_clock_getres.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %tp, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %tp, i32 0, i32 1
  %1 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %tv_nsec.i, align 8
  br label %posix_cpu_clock_getres.exit

posix_cpu_clock_getres.exit:                      ; preds = %if.then.i, %entry.posix_cpu_clock_getres.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thread_cpu_clock_get(i32 noundef %which_clock, ptr nocapture noundef writeonly %tp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @posix_cpu_clock_get(i32 noundef -2, ptr noundef %tp)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thread_cpu_timer_create(ptr noundef %timer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %it_clock = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 4
  %0 = ptrtoint ptr %it_clock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -2, ptr %it_clock, align 8
  %call1 = tail call i32 @posix_cpu_timer_create(ptr noundef %timer)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @timerqueue_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpu_timer_fire(ptr noundef %timer) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %it_sigev_notify = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 10
  %0 = ptrtoint ptr %it_sigev_notify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %it_sigev_notify, align 4
  %and = and i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %expires.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %expires.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %expires.i, align 8
  br label %if.end16

if.else:                                          ; preds = %entry
  %sigq = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 14
  %3 = ptrtoint ptr %sigq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sigq, align 8
  %cmp1 = icmp eq ptr %4, null
  br i1 %cmp1, label %if.then3, label %if.else4, !prof !70

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %5 = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 @wake_up_process(ptr noundef %7) #8
  %expires.i28 = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %expires.i28 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %expires.i28, align 8
  br label %if.end16

if.else4:                                         ; preds = %if.else
  %it_interval = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 11
  %9 = ptrtoint ptr %it_interval to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %it_interval, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool5.not = icmp eq i64 %10, 0
  br i1 %tobool5.not, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @posix_timer_event(ptr noundef %timer, i32 noundef 0) #8
  %expires.i29 = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %expires.i29 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %expires.i29, align 8
  br label %if.end16

if.else8:                                         ; preds = %if.else4
  %it_requeue_pending = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 9
  %12 = ptrtoint ptr %it_requeue_pending to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %it_requeue_pending, align 8
  %inc = add i32 %13, 1
  store i32 %inc, ptr %it_requeue_pending, align 8
  %call9 = tail call i32 @posix_timer_event(ptr noundef %timer, i32 noundef %inc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else8.if.end16_crit_edge, label %if.then11

if.else8.if.end16_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @posix_cpu_timer_rearm(ptr noundef %timer)
  %14 = ptrtoint ptr %it_requeue_pending to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %it_requeue_pending, align 8
  %inc13 = add i32 %15, 1
  store i32 %inc13, ptr %it_requeue_pending, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.else8.if.end16_crit_edge, %if.then6, %if.then3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lock_task_sighand(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @collect_posix_cputimers(ptr nocapture noundef %pct, ptr nocapture noundef readonly %samples, ptr noundef %firing) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %firing, i32 0, i32 1
  %0 = ptrtoint ptr %samples to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %samples, align 8
  %rb_leftmost.i.i = getelementptr inbounds %struct.posix_cputimer_base, ptr %pct, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb_leftmost.i.i, align 4
  %tobool.not14.i = icmp eq ptr %3, null
  br i1 %tobool.not14.i, label %entry.collect_timerqueue.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.collect_timerqueue.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %collect_timerqueue.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %4 = phi ptr [ %18, %cleanup.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %i.015.i = phi i32 [ %inc.i, %cleanup.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %expires.i.i = getelementptr inbounds %struct.timerqueue_node, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %expires.i.i, align 8
  %inc.i = add nuw nsw i32 %i.015.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc.i)
  %cmp.i = icmp eq i32 %inc.i, 20
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %1)
  %cmp2.i = icmp ugt i64 %6, %1
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp2.i
  br i1 %or.cond.i, label %while.body.i.collect_timerqueue.exit_crit_edge, label %if.end.i

while.body.i.collect_timerqueue.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %collect_timerqueue.exit

if.end.i:                                         ; preds = %while.body.i
  %firing3.i = getelementptr inbounds %struct.cpu_timer, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %firing3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %firing3.i, align 8
  %head.i.i.i = getelementptr inbounds %struct.cpu_timer, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i.i, align 8
  %tobool.i.i.not.i = icmp eq ptr %9, null
  br i1 %tobool.i.i.not.i, label %if.end.i.cpu_timer_dequeue.exit.i_crit_edge, label %if.then.i.i

if.end.i.cpu_timer_dequeue.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_timer_dequeue.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = tail call zeroext i1 @timerqueue_del(ptr noundef nonnull %9, ptr noundef nonnull %4) #8
  %10 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %head.i.i.i, align 8
  br label %cpu_timer_dequeue.exit.i

cpu_timer_dequeue.exit.i:                         ; preds = %if.then.i.i, %if.end.i.cpu_timer_dequeue.exit.i_crit_edge
  %elist.i = getelementptr inbounds %struct.cpu_timer, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %elist.i, ptr noundef %12, ptr noundef %firing) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %cpu_timer_dequeue.exit.i.cleanup.i_crit_edge

cpu_timer_dequeue.exit.i.cleanup.i_crit_edge:     ; preds = %cpu_timer_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.i.i.i:                                     ; preds = %cpu_timer_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %elist.i, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %elist.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %firing, ptr %elist.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.cpu_timer, ptr %4, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %elist.i, ptr %12, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.i.i, %cpu_timer_dequeue.exit.i.cleanup.i_crit_edge
  %17 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rb_leftmost.i.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %cleanup.i.collect_timerqueue.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

cleanup.i.collect_timerqueue.exit_crit_edge:      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %collect_timerqueue.exit

collect_timerqueue.exit:                          ; preds = %cleanup.i.collect_timerqueue.exit_crit_edge, %while.body.i.collect_timerqueue.exit_crit_edge, %entry.collect_timerqueue.exit_crit_edge
  %retval.2.i = phi i64 [ -1, %entry.collect_timerqueue.exit_crit_edge ], [ -1, %cleanup.i.collect_timerqueue.exit_crit_edge ], [ %6, %while.body.i.collect_timerqueue.exit_crit_edge ]
  %19 = ptrtoint ptr %pct to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %retval.2.i, ptr %pct, align 8
  %incdec.ptr = getelementptr %struct.posix_cputimer_base, ptr %pct, i32 1
  %arrayidx.1 = getelementptr i64, ptr %samples, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.1, align 8
  %rb_leftmost.i.i.1 = getelementptr %struct.posix_cputimer_base, ptr %pct, i32 1, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %rb_leftmost.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rb_leftmost.i.i.1, align 4
  %tobool.not14.i.1 = icmp eq ptr %23, null
  br i1 %tobool.not14.i.1, label %collect_timerqueue.exit.collect_timerqueue.exit.1_crit_edge, label %collect_timerqueue.exit.while.body.i.1_crit_edge

collect_timerqueue.exit.while.body.i.1_crit_edge: ; preds = %collect_timerqueue.exit
  br label %while.body.i.1

collect_timerqueue.exit.collect_timerqueue.exit.1_crit_edge: ; preds = %collect_timerqueue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %collect_timerqueue.exit.1

while.body.i.1:                                   ; preds = %cleanup.i.1.while.body.i.1_crit_edge, %collect_timerqueue.exit.while.body.i.1_crit_edge
  %24 = phi ptr [ %38, %cleanup.i.1.while.body.i.1_crit_edge ], [ %23, %collect_timerqueue.exit.while.body.i.1_crit_edge ]
  %i.015.i.1 = phi i32 [ %inc.i.1, %cleanup.i.1.while.body.i.1_crit_edge ], [ 0, %collect_timerqueue.exit.while.body.i.1_crit_edge ]
  %expires.i.i.1 = getelementptr inbounds %struct.timerqueue_node, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %expires.i.i.1 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %expires.i.i.1, align 8
  %inc.i.1 = add nuw nsw i32 %i.015.i.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc.i.1)
  %cmp.i.1 = icmp eq i32 %inc.i.1, 20
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %21)
  %cmp2.i.1 = icmp ugt i64 %26, %21
  %or.cond.i.1 = select i1 %cmp.i.1, i1 true, i1 %cmp2.i.1
  br i1 %or.cond.i.1, label %while.body.i.1.collect_timerqueue.exit.1_crit_edge, label %if.end.i.1

while.body.i.1.collect_timerqueue.exit.1_crit_edge: ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %collect_timerqueue.exit.1

if.end.i.1:                                       ; preds = %while.body.i.1
  %firing3.i.1 = getelementptr inbounds %struct.cpu_timer, ptr %24, i32 0, i32 4
  %27 = ptrtoint ptr %firing3.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %firing3.i.1, align 8
  %head.i.i.i.1 = getelementptr inbounds %struct.cpu_timer, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %head.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i.i.1, align 8
  %tobool.i.i.not.i.1 = icmp eq ptr %29, null
  br i1 %tobool.i.i.not.i.1, label %if.end.i.1.cpu_timer_dequeue.exit.i.1_crit_edge, label %if.then.i.i.1

if.end.i.1.cpu_timer_dequeue.exit.i.1_crit_edge:  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_timer_dequeue.exit.i.1

if.then.i.i.1:                                    ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i.1 = tail call zeroext i1 @timerqueue_del(ptr noundef nonnull %29, ptr noundef nonnull %24) #8
  %30 = ptrtoint ptr %head.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %head.i.i.i.1, align 8
  br label %cpu_timer_dequeue.exit.i.1

cpu_timer_dequeue.exit.i.1:                       ; preds = %if.then.i.i.1, %if.end.i.1.cpu_timer_dequeue.exit.i.1_crit_edge
  %elist.i.1 = getelementptr inbounds %struct.cpu_timer, ptr %24, i32 0, i32 3
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %elist.i.1, ptr noundef %32, ptr noundef %firing) #8
  br i1 %call.i.i.i.1, label %if.end.i.i.i.1, label %cpu_timer_dequeue.exit.i.1.cleanup.i.1_crit_edge

cpu_timer_dequeue.exit.i.1.cleanup.i.1_crit_edge: ; preds = %cpu_timer_dequeue.exit.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.1

if.end.i.i.i.1:                                   ; preds = %cpu_timer_dequeue.exit.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %elist.i.1, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %elist.i.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %firing, ptr %elist.i.1, align 4
  %prev3.i.i.i.1 = getelementptr inbounds %struct.cpu_timer, ptr %24, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i.1, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %elist.i.1, ptr %32, align 4
  br label %cleanup.i.1

cleanup.i.1:                                      ; preds = %if.end.i.i.i.1, %cpu_timer_dequeue.exit.i.1.cleanup.i.1_crit_edge
  %37 = ptrtoint ptr %rb_leftmost.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rb_leftmost.i.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %38, null
  br i1 %tobool.not.i.1, label %cleanup.i.1.collect_timerqueue.exit.1_crit_edge, label %cleanup.i.1.while.body.i.1_crit_edge

cleanup.i.1.while.body.i.1_crit_edge:             ; preds = %cleanup.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.1

cleanup.i.1.collect_timerqueue.exit.1_crit_edge:  ; preds = %cleanup.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %collect_timerqueue.exit.1

collect_timerqueue.exit.1:                        ; preds = %cleanup.i.1.collect_timerqueue.exit.1_crit_edge, %while.body.i.1.collect_timerqueue.exit.1_crit_edge, %collect_timerqueue.exit.collect_timerqueue.exit.1_crit_edge
  %retval.2.i.1 = phi i64 [ -1, %collect_timerqueue.exit.collect_timerqueue.exit.1_crit_edge ], [ -1, %cleanup.i.1.collect_timerqueue.exit.1_crit_edge ], [ %26, %while.body.i.1.collect_timerqueue.exit.1_crit_edge ]
  %39 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %retval.2.i.1, ptr %incdec.ptr, align 8
  %arrayidx.2 = getelementptr i64, ptr %samples, i32 2
  %40 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx.2, align 8
  %rb_leftmost.i.i.2 = getelementptr %struct.posix_cputimer_base, ptr %pct, i32 2, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %rb_leftmost.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rb_leftmost.i.i.2, align 4
  %tobool.not14.i.2 = icmp eq ptr %43, null
  br i1 %tobool.not14.i.2, label %collect_timerqueue.exit.1.collect_timerqueue.exit.2_crit_edge, label %collect_timerqueue.exit.1.while.body.i.2_crit_edge

collect_timerqueue.exit.1.while.body.i.2_crit_edge: ; preds = %collect_timerqueue.exit.1
  br label %while.body.i.2

collect_timerqueue.exit.1.collect_timerqueue.exit.2_crit_edge: ; preds = %collect_timerqueue.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %collect_timerqueue.exit.2

while.body.i.2:                                   ; preds = %cleanup.i.2.while.body.i.2_crit_edge, %collect_timerqueue.exit.1.while.body.i.2_crit_edge
  %44 = phi ptr [ %58, %cleanup.i.2.while.body.i.2_crit_edge ], [ %43, %collect_timerqueue.exit.1.while.body.i.2_crit_edge ]
  %i.015.i.2 = phi i32 [ %inc.i.2, %cleanup.i.2.while.body.i.2_crit_edge ], [ 0, %collect_timerqueue.exit.1.while.body.i.2_crit_edge ]
  %expires.i.i.2 = getelementptr inbounds %struct.timerqueue_node, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %expires.i.i.2 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %expires.i.i.2, align 8
  %inc.i.2 = add nuw nsw i32 %i.015.i.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc.i.2)
  %cmp.i.2 = icmp eq i32 %inc.i.2, 20
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %41)
  %cmp2.i.2 = icmp ugt i64 %46, %41
  %or.cond.i.2 = select i1 %cmp.i.2, i1 true, i1 %cmp2.i.2
  br i1 %or.cond.i.2, label %while.body.i.2.collect_timerqueue.exit.2_crit_edge, label %if.end.i.2

while.body.i.2.collect_timerqueue.exit.2_crit_edge: ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %collect_timerqueue.exit.2

if.end.i.2:                                       ; preds = %while.body.i.2
  %firing3.i.2 = getelementptr inbounds %struct.cpu_timer, ptr %44, i32 0, i32 4
  %47 = ptrtoint ptr %firing3.i.2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %firing3.i.2, align 8
  %head.i.i.i.2 = getelementptr inbounds %struct.cpu_timer, ptr %44, i32 0, i32 1
  %48 = ptrtoint ptr %head.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i.i.i.2, align 8
  %tobool.i.i.not.i.2 = icmp eq ptr %49, null
  br i1 %tobool.i.i.not.i.2, label %if.end.i.2.cpu_timer_dequeue.exit.i.2_crit_edge, label %if.then.i.i.2

if.end.i.2.cpu_timer_dequeue.exit.i.2_crit_edge:  ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_timer_dequeue.exit.i.2

if.then.i.i.2:                                    ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i.2 = tail call zeroext i1 @timerqueue_del(ptr noundef nonnull %49, ptr noundef nonnull %44) #8
  %50 = ptrtoint ptr %head.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %head.i.i.i.2, align 8
  br label %cpu_timer_dequeue.exit.i.2

cpu_timer_dequeue.exit.i.2:                       ; preds = %if.then.i.i.2, %if.end.i.2.cpu_timer_dequeue.exit.i.2_crit_edge
  %elist.i.2 = getelementptr inbounds %struct.cpu_timer, ptr %44, i32 0, i32 3
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i.2 = tail call zeroext i1 @__list_add_valid(ptr noundef %elist.i.2, ptr noundef %52, ptr noundef %firing) #8
  br i1 %call.i.i.i.2, label %if.end.i.i.i.2, label %cpu_timer_dequeue.exit.i.2.cleanup.i.2_crit_edge

cpu_timer_dequeue.exit.i.2.cleanup.i.2_crit_edge: ; preds = %cpu_timer_dequeue.exit.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i.2

if.end.i.i.i.2:                                   ; preds = %cpu_timer_dequeue.exit.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %elist.i.2, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %elist.i.2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %firing, ptr %elist.i.2, align 4
  %prev3.i.i.i.2 = getelementptr inbounds %struct.cpu_timer, ptr %44, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i.i.2, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %elist.i.2, ptr %52, align 4
  br label %cleanup.i.2

cleanup.i.2:                                      ; preds = %if.end.i.i.i.2, %cpu_timer_dequeue.exit.i.2.cleanup.i.2_crit_edge
  %57 = ptrtoint ptr %rb_leftmost.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rb_leftmost.i.i.2, align 4
  %tobool.not.i.2 = icmp eq ptr %58, null
  br i1 %tobool.not.i.2, label %cleanup.i.2.collect_timerqueue.exit.2_crit_edge, label %cleanup.i.2.while.body.i.2_crit_edge

cleanup.i.2.while.body.i.2_crit_edge:             ; preds = %cleanup.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.2

cleanup.i.2.collect_timerqueue.exit.2_crit_edge:  ; preds = %cleanup.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %collect_timerqueue.exit.2

collect_timerqueue.exit.2:                        ; preds = %cleanup.i.2.collect_timerqueue.exit.2_crit_edge, %while.body.i.2.collect_timerqueue.exit.2_crit_edge, %collect_timerqueue.exit.1.collect_timerqueue.exit.2_crit_edge
  %retval.2.i.2 = phi i64 [ -1, %collect_timerqueue.exit.1.collect_timerqueue.exit.2_crit_edge ], [ -1, %cleanup.i.2.collect_timerqueue.exit.2_crit_edge ], [ %46, %while.body.i.2.collect_timerqueue.exit.2_crit_edge ]
  %incdec.ptr.1 = getelementptr %struct.posix_cputimer_base, ptr %pct, i32 2
  %59 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %retval.2.i.2, ptr %incdec.ptr.1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__group_send_sig_info(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_itimer_expire(i32 noundef %which, ptr noundef %pid, i64 noundef %now) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_itimer_expire, i32 0, i32 1), ptr blockaddress(@trace_itimer_expire, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !71

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !60

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  %call42 = tail call i32 @__traceiter_itimer_expire(ptr noundef null, i32 noundef %which, ptr noundef %pid, i64 noundef %now) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !73
  %13 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !60

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_itimer_expire, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_itimer_expire, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_itimer_expire.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_itimer_expire.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 361, ptr noundef nonnull @.str.8) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !75
  %31 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_itimer_expire(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_timer_event(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_assert_task_sighand_held(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @thread_group_cputime(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @validate_clock_permissions(i32 noundef %clock) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %and.i = and i32 %clock, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  %shr.i = ashr i32 %clock, 3
  %neg.i = xor i32 %shr.i, -1
  %and3.i = and i32 %clock, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 3
  br i1 %cmp4.i, label %rcu_read_lock.exit.pid_for_clock.exit_crit_edge, label %if.end.i

rcu_read_lock.exit.pid_for_clock.exit_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %pid_for_clock.exit

if.end.i:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shr.i)
  %cmp5.i = icmp eq i32 %shr.i, -1
  br i1 %cmp5.i, label %if.then6.i, label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i
  %4 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i57.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i57.i to ptr
  %task9.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task9.i, align 8
  br i1 %cmp.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 78
  %8 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %thread_pid.i.i, align 16
  br label %pid_for_clock.exit

cond.false.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 111
  %10 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %11, i32 0, i32 22, i32 1
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  br label %pid_for_clock.exit

if.end11.i:                                       ; preds = %if.end.i
  %call12.i = tail call ptr @find_vpid(i32 noundef %neg.i) #8
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.end11.i.pid_for_clock.exit_crit_edge, label %if.end15.i

if.end11.i.pid_for_clock.exit_crit_edge:          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pid_for_clock.exit

if.end15.i:                                       ; preds = %if.end11.i
  br i1 %cmp.not.i, label %if.end27.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end15.i
  %call18.i = tail call ptr @pid_task(ptr noundef nonnull %call12.i, i32 noundef 0) #8
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.then17.i.pid_for_clock.exit_crit_edge, label %land.lhs.true.i1

if.then17.i.pid_for_clock.exit_crit_edge:         ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pid_for_clock.exit

land.lhs.true.i1:                                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i58.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i58.i to ptr
  %task21.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task21.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task21.i, align 8
  %signal.i59.i = getelementptr inbounds %struct.task_struct, ptr %call18.i, i32 0, i32 111
  %18 = ptrtoint ptr %signal.i59.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %signal.i59.i, align 16
  %signal1.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 111
  %20 = ptrtoint ptr %signal1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %signal1.i.i, align 16
  %cmp.i.i = icmp eq ptr %19, %21
  %spec.select.i = select i1 %cmp.i.i, ptr %call12.i, ptr null
  br label %pid_for_clock.exit

if.end27.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i64.i = getelementptr %struct.pid, ptr %call12.i, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx.i64.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %23, null
  %spec.select56.i = select i1 %tobool.not.i.i.not.i, ptr null, ptr %call12.i
  br label %pid_for_clock.exit

pid_for_clock.exit:                               ; preds = %if.end27.i, %land.lhs.true.i1, %if.then17.i.pid_for_clock.exit_crit_edge, %if.end11.i.pid_for_clock.exit_crit_edge, %cond.false.i, %cond.true.i, %rcu_read_lock.exit.pid_for_clock.exit_crit_edge
  %retval.0.i = phi ptr [ %spec.select56.i, %if.end27.i ], [ null, %rcu_read_lock.exit.pid_for_clock.exit_crit_edge ], [ %9, %cond.true.i ], [ %13, %cond.false.i ], [ null, %if.end11.i.pid_for_clock.exit_crit_edge ], [ null, %if.then17.i.pid_for_clock.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i1 ]
  %call.i2 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i2, label %pid_for_clock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

pid_for_clock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %pid_for_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %pid_for_clock.exit
  %call1.i3 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %pid_for_clock.exit.rcu_read_unlock.exit_crit_edge
  %tobool.not = icmp eq ptr %retval.0.i, null
  %cond = select i1 %tobool.not, i32 -22, i32 0
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %24 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i.i9 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pid_for_clock(i32 noundef %clock, i1 noundef zeroext %gettime) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %clock, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %shr = ashr i32 %clock, 3
  %neg = xor i32 %shr, -1
  %and3 = and i32 %clock, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and3)
  %cmp4 = icmp eq i32 %and3, 3
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shr)
  %cmp5 = icmp eq i32 %shr, -1
  br i1 %cmp5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i57 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i57 to ptr
  %task9 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task9, align 8
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 78
  %4 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thread_pid.i, align 16
  br label %cleanup

cond.false:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %6 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %7, i32 0, i32 22, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @find_vpid(i32 noundef %neg) #8
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  br i1 %cmp.not, label %if.end27, label %if.then17

if.then17:                                        ; preds = %if.end15
  %call18 = tail call ptr @pid_task(ptr noundef nonnull %call12, i32 noundef 0) #8
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then17.cleanup_crit_edge, label %land.lhs.true

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %10 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i58 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i58 to ptr
  %task21 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task21, align 8
  %signal.i59 = getelementptr inbounds %struct.task_struct, ptr %call18, i32 0, i32 111
  %14 = ptrtoint ptr %signal.i59 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %signal.i59, align 16
  %signal1.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 111
  %16 = ptrtoint ptr %signal1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %signal1.i, align 16
  %cmp.i = icmp eq ptr %15, %17
  %spec.select = select i1 %cmp.i, ptr %call12, ptr null
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  br i1 %gettime, label %land.lhs.true29, label %if.end27.if.end38_crit_edge

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

land.lhs.true29:                                  ; preds = %if.end27
  %18 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i60 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i60 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task31, align 8
  %thread_pid.i61 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 78
  %22 = ptrtoint ptr %thread_pid.i61 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %thread_pid.i61, align 16
  %cmp33 = icmp eq ptr %call12, %23
  br i1 %cmp33, label %if.then34, label %land.lhs.true29.if.end38_crit_edge

land.lhs.true29.if.end38_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then34:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  %signal.i62 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 111
  %24 = ptrtoint ptr %signal.i62 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %signal.i62, align 16
  %arrayidx.i63 = getelementptr %struct.signal_struct, ptr %25, i32 0, i32 22, i32 1
  %26 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i63, align 4
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true29.if.end38_crit_edge, %if.end27.if.end38_crit_edge
  %arrayidx.i64 = getelementptr %struct.pid, ptr %call12, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %arrayidx.i64, align 4
  %tobool.not.i.i.not = icmp eq ptr %29, null
  %spec.select56 = select i1 %tobool.not.i.i.not, ptr null, ptr %call12
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then34, %land.lhs.true, %if.then17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %cond.false, %cond.true, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %27, %if.then34 ], [ %spec.select56, %if.end38 ], [ null, %entry.cleanup_crit_edge ], [ %5, %cond.true ], [ %9, %cond.false ], [ null, %if.end11.cleanup_crit_edge ], [ null, %if.then17.cleanup_crit_edge ], [ %spec.select, %land.lhs.true ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @task_sched_runtime(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_cpu_nanosleep(i32 noundef %which_clock, i32 noundef %flags, ptr nocapture noundef readonly %rqtp) #1 align 64 {
entry:
  %it = alloca %struct.itimerspec64, align 8
  %timer = alloca %struct.k_itimer, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %it) #8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %timer) #8
  %0 = call ptr @memset(ptr %timer, i32 0, i32 224)
  %it_lock = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %it_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @do_cpu_nanosleep.__key, i16 noundef signext 3) #8
  %it_clock = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 4
  %1 = ptrtoint ptr %it_clock to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %which_clock, ptr %it_clock, align 8
  %it_overrun = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 7
  %2 = ptrtoint ptr %it_overrun to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %it_overrun, align 8
  %call1 = call i32 @posix_cpu_timer_create(ptr noundef nonnull %timer)
  %3 = call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %7 = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup110_crit_edge

entry.cleanup110_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup110

if.then:                                          ; preds = %entry
  %9 = call ptr @memset(ptr %it, i32 0, i32 16)
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %it, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %it_value, ptr %rqtp, i32 16)
  call void @_raw_spin_lock_irq(ptr noundef %it_lock) #8
  %call4 = call i32 @posix_cpu_timer_set(ptr noundef nonnull %timer, i32 noundef %flags, ptr noundef nonnull %it, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %while.cond.preheader, label %if.then6

while.cond.preheader:                             ; preds = %if.then
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %stack.i.i129 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %stack.i.i129 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stack.i.i129, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i130 = icmp eq i32 %17, 0
  br i1 %tobool.not.i130, label %signal_pending.exit.lr.ph, label %while.cond.preheader.while.end_crit_edge, !prof !60

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

signal_pending.exit.lr.ph:                        ; preds = %while.cond.preheader
  %expires.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  br label %signal_pending.exit

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irq(ptr noundef %it_lock) #8
  br label %cleanup110

signal_pending.exit:                              ; preds = %__here.signal_pending.exit_crit_edge, %signal_pending.exit.lr.ph
  %18 = phi ptr [ %14, %signal_pending.exit.lr.ph ], [ %31, %__here.signal_pending.exit_crit_edge ]
  %19 = phi ptr [ %12, %signal_pending.exit.lr.ph ], [ %29, %__here.signal_pending.exit_crit_edge ]
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %18, align 4
  %and1.i.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool11.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool11.not, label %while.body, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %signal_pending.exit
  %22 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %expires.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool14.not = icmp eq i64 %23, 0
  br i1 %tobool14.not, label %if.then15, label %__here

if.then15:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = call i32 @posix_cpu_timer_del(ptr noundef nonnull %timer)
  call void @_raw_spin_unlock_irq(ptr noundef %it_lock) #8
  br label %cleanup110

__here:                                           ; preds = %while.body
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 212
  %24 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 ptrtoint (ptr blockaddress(@do_cpu_nanosleep, %__here) to i32), ptr %task_state_change, align 4
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %26, align 128
  call void @_raw_spin_unlock_irq(ptr noundef %it_lock) #8
  call void @schedule() #8
  call void @_raw_spin_lock_irq(ptr noundef %it_lock) #8
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stack.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %34 = and i32 %33, 256
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %__here.signal_pending.exit_crit_edge, label %__here.while.end_crit_edge, !prof !60

__here.while.end_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

__here.signal_pending.exit_crit_edge:             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %signal_pending.exit

while.end:                                        ; preds = %__here.while.end_crit_edge, %signal_pending.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %expires.i123 = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %expires.i123 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %expires.i123, align 8
  %call82 = call i32 @posix_cpu_timer_set(ptr noundef nonnull %timer, i32 noundef 0, ptr noundef nonnull @do_cpu_nanosleep.zero_it, ptr noundef nonnull %it)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end86.thread, label %if.end86

if.end86.thread:                                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call85 = call i32 @posix_cpu_timer_del(ptr noundef nonnull %timer)
  call void @_raw_spin_unlock_irq(ptr noundef %it_lock) #8
  br label %while.end93

if.end86:                                         ; preds = %while.end
  call void @_raw_spin_unlock_irq(ptr noundef %it_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call82)
  %cmp131 = icmp eq i32 %call82, 1
  br i1 %cmp131, label %if.end86.while.body89_crit_edge, label %if.end86.while.end93_crit_edge

if.end86.while.end93_crit_edge:                   ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end93

if.end86.while.body89_crit_edge:                  ; preds = %if.end86
  br label %while.body89

while.body89:                                     ; preds = %while.body89.while.body89_crit_edge, %if.end86.while.body89_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %it_lock) #8
  %call91 = call i32 @posix_cpu_timer_del(ptr noundef nonnull %timer)
  call void @_raw_spin_unlock_irq(ptr noundef %it_lock) #8
  %cmp = icmp eq i32 %call91, 1
  br i1 %cmp, label %while.body89.while.body89_crit_edge, label %while.body89.while.end93_crit_edge

while.body89.while.end93_crit_edge:               ; preds = %while.body89
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end93

while.body89.while.body89_crit_edge:              ; preds = %while.body89
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body89

while.end93:                                      ; preds = %while.body89.while.end93_crit_edge, %if.end86.while.end93_crit_edge, %if.end86.thread
  %37 = ptrtoint ptr %it_value to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %it_value, align 8
  %tv_nsec = getelementptr inbounds %struct.itimerspec64, ptr %it, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tv_nsec, align 8
  %conv = sext i32 %40 to i64
  %or = or i64 %38, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or)
  %cmp96 = icmp eq i64 %or, 0
  br i1 %cmp96, label %while.end93.cleanup110_crit_edge, label %if.end99

while.end93.cleanup110_crit_edge:                 ; preds = %while.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup110

if.end99:                                         ; preds = %while.end93
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %expires102 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 67, i32 2, i32 0, i32 4
  %43 = ptrtoint ptr %expires102 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %36, ptr %expires102, align 8
  %type = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 67, i32 2, i32 0, i32 1
  %44 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp103.not = icmp eq i32 %45, 0
  br i1 %cmp103.not, label %if.end99.cleanup110_crit_edge, label %if.then105

if.end99.cleanup110_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup110

if.then105:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %restart_block = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 67
  %call107 = call i32 @nanosleep_copyout(ptr noundef %restart_block, ptr noundef %it_value) #8
  br label %cleanup110

cleanup110:                                       ; preds = %if.then105, %if.end99.cleanup110_crit_edge, %while.end93.cleanup110_crit_edge, %if.then15, %if.then6, %entry.cleanup110_crit_edge
  %retval.1 = phi i32 [ %call1, %entry.cleanup110_crit_edge ], [ %call107, %if.then105 ], [ -516, %if.end99.cleanup110_crit_edge ], [ 0, %while.end93.cleanup110_crit_edge ], [ %call4, %if.then6 ], [ 0, %if.then15 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %timer) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %it) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_cpu_nsleep_restart(ptr nocapture noundef readonly %restart_block) #1 align 64 {
entry:
  %t = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.restart_block, ptr %restart_block, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %t) #8
  %expires = getelementptr inbounds %struct.restart_block, ptr %restart_block, i32 0, i32 2, i32 0, i32 4
  %3 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %expires, align 8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %t, i64 noundef %4) #8
  %call = call fastcc i32 @do_cpu_nanosleep(i32 noundef %2, i32 noundef 1, ptr noundef nonnull %t)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %t) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nanosleep_copyout(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @timerqueue_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !39, !41, !43, !44, !46, !48}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../kernel/time/posix-cpu-timers.c", i32 272, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../kernel/time/posix-cpu-timers.c", i32 1373, i32 2}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../kernel/time/posix-cpu-timers.c", i32 1401, i32 6}
!7 = !{ptr @clock_posix_cpu, !8, !"clock_posix_cpu", i1 false, i1 false}
!8 = !{!"../kernel/time/posix-cpu-timers.c", i32 1610, i32 22}
!9 = !{ptr @clock_process, !10, !"clock_process", i1 false, i1 false}
!10 = !{!"../kernel/time/posix-cpu-timers.c", i32 1622, i32 22}
!11 = !{ptr @clock_thread, !12, !"clock_thread", i1 false, i1 false}
!12 = !{!"../kernel/time/posix-cpu-timers.c", i32 1629, i32 22}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/time/posix-cpu-timers.c", i32 876, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @check_rlimit._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @check_rlimit._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/trace/events/timer.h", i32 341, i32 1}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../kernel/time/posix-cpu-timers.c", i32 202, i32 3}
!39 = distinct !{null, !40, !"posix_cpu_timers_key", i1 false, i1 false}
!40 = !{!"../kernel/time/posix-cpu-timers.c", i32 382, i32 31}
!41 = !{ptr @do_cpu_nanosleep.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../kernel/time/posix-cpu-timers.c", i32 1448, i32 2}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @do_cpu_nanosleep.zero_it, !45, !"zero_it", i1 false, i1 false}
!45 = !{!"../kernel/time/posix-cpu-timers.c", i32 1455, i32 30}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../kernel/time/posix-cpu-timers.c", i32 1482, i32 4}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../kernel/time/posix-cpu-timers.c", i32 488, i32 3}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2154589475}
!62 = !{i64 2154594409}
!63 = !{i64 2154616091}
!64 = !{i64 2154620985}
!65 = !{!"auto-init"}
!66 = !{i64 2154357472}
!67 = !{i64 2149228592}
!68 = !{i64 2149228858}
!69 = !{i64 2148361592, i64 2148361624, i64 2148361653, i64 2148361687, i64 2148361718, i64 2148361741}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{i64 2148825541, i64 2148825546, i64 2148825559, i64 2148825603, i64 2148825637, i64 2148825658}
!72 = !{i64 2153535922}
!73 = !{i64 2153536141}
!74 = !{i64 2149237151}
!75 = !{i64 2149238187}
