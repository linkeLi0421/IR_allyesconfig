; ModuleID = '/llk/IR_all_yes/kernel/sched/stats.c_pt.bc'
source_filename = "../kernel/sched/stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.103 }
%struct.atomic_t = type { i32 }
%union.anon.103 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, [8 x i8], %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [24 x i8], [2 x %struct.uclamp_rq], i32, [76 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, %struct.list_head, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [88 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i64, i64, i64, i32, i32, %struct.__call_single_data, %struct.hrtimer, i64, %struct.sched_info, i64, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.cpu_stop_work, ptr, ptr, i32, i32, %struct.rb_root, i32, i32, i32, i32, i32, i32, i64, [80 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uclamp_rq = type { i32, [5 x %struct.uclamp_bucket] }
%struct.uclamp_bucket = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i32, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg, i64, [120 x i8], %struct.anon, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.list_head, ptr, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list_head, [24 x i8] }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon = type { %struct.raw_spinlock, i32, i32, i32, i32, [68 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.45, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock, i32, ptr, ptr }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.45 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.134, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.134 = type { i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.108, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.47 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.108 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sched_domain = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.anon.135, ptr, i32, [0 x i32] }
%union.anon.135 = type { %struct.callback_head }

@prof_on = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__initcall__kmod_stats__490_232_proc_schedstat_init4 = internal global ptr @proc_schedstat_init, section ".initcall4.init", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/sched/sched.h\00", [43 x i8] zeroinitializer }, align 32
@assert_clock_updated.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rq->clock_update_flags < RQCF_ACT_SKIP\00", [57 x i8] zeroinitializer }, align 32
@__tracepoint_sched_stat_wait = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/sched.h\00", [35 x i8] zeroinitializer }, align 32
@trace_sched_stat_wait.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@latencytop_enabled = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_sched_stat_sleep = external dso_local global %struct.tracepoint, align 4
@trace_sched_stat_sleep.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_sched_stat_iowait = external dso_local global %struct.tracepoint, align 4
@trace_sched_stat_iowait.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_sched_stat_blocked = external dso_local global %struct.tracepoint, align 4
@trace_sched_stat_blocked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"schedstat\00", [22 x i8] zeroinitializer }, align 32
@schedstat_sops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @schedstat_start, ptr @schedstat_stop, ptr @schedstat_next, ptr @show_schedstat }, [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"version %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"timestamp %lu\0A\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cpu%d %u 0 %u %u %u %u %llu %llu %lu\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@show_schedstat.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sched_domains_mutex = external dso_local global %struct.mutex, align 4
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/sched/stats.c\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"domain%d %*pb\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c" %u %u %u %u %u %u %u %u\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" %u %u %u %u %u %u %u %u %u %u %u %u\0A\00", [58 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 1309, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [24 x i8] c"../kernel/sched/sched.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 1459, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [32 x i8] c"../include/trace/events/sched.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 460, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 108, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 229, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"schedstat_sops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 220, i32 36 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 124, i32 19 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 125, i32 19 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 137, i32 7 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 144, i32 19 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 149, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 152, i32 20 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 156, i32 21 }
@___asan_gen_.60 = private constant [24 x i8] c"../kernel/sched/stats.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 167, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 695, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 723, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__initcall__kmod_stats__490_232_proc_schedstat_init4, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @schedstat_sops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @schedstat_sops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__update_stats_wait_start(ptr noundef %rq, ptr noundef readnone %p, ptr nocapture noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %entry
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %1 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %3 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %4, %if.then.i.i.i ], [ %rq, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !62

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1309, i32 noundef 9, ptr noundef null) #8
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %entry
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %5 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %6, 2
  br i1 %cmp.i.i, label %land.rhs.i3.i, label %rq_clock.exit

land.rhs.i3.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock.exit, label %if.then.i.i, !prof !63

if.then.i.i:                                      ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.1) #8
  br label %rq_clock.exit

rq_clock.exit:                                    ; preds = %if.then.i.i, %land.rhs.i3.i, %lockdep_assert_rq_held.exit.i
  %clock.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 26
  %7 = ptrtoint ptr %clock.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %clock.i, align 32
  %9 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %stats, align 128
  %tobool.not = icmp ne ptr %p, null
  %cmp = icmp ugt i64 %8, %10
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  %sub = select i1 %or.cond, i64 %10, i64 0
  %wait_start.0 = sub i64 %8, %sub
  store i64 %wait_start.0, ptr %stats, align 128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__update_stats_wait_end(ptr noundef %rq, ptr noundef %p, ptr nocapture noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %entry
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %1 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %3 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %4, %if.then.i.i.i ], [ %rq, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !62

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1309, i32 noundef 9, ptr noundef null) #8
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %entry
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %5 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %6, 2
  br i1 %cmp.i.i, label %land.rhs.i3.i, label %rq_clock.exit

land.rhs.i3.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock.exit, label %if.then.i.i, !prof !63

if.then.i.i:                                      ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.1) #8
  br label %rq_clock.exit

rq_clock.exit:                                    ; preds = %if.then.i.i, %land.rhs.i3.i, %lockdep_assert_rq_held.exit.i
  %clock.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 26
  %7 = ptrtoint ptr %clock.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %clock.i, align 32
  %9 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %stats, align 128
  %sub = sub i64 %8, %10
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %do.body6, label %if.then

if.then:                                          ; preds = %rq_clock.exit
  %on_rq.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 12
  %11 = ptrtoint ptr %on_rq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %on_rq.i, align 4
  %cmp.i.not = icmp eq i32 %12, 2
  br i1 %cmp.i.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  tail call fastcc void @trace_sched_stat_wait(ptr noundef nonnull %p, i64 noundef %sub)
  br label %do.body6

do.body6:                                         ; preds = %if.end, %rq_clock.exit
  %wait_max = getelementptr inbounds %struct.sched_statistics, ptr %stats, i32 0, i32 1
  %13 = ptrtoint ptr %wait_max to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %wait_max, align 8
  %15 = tail call i64 @llvm.umax.i64(i64 %14, i64 %sub)
  %16 = ptrtoint ptr %wait_max to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %wait_max, align 8
  %wait_count = getelementptr inbounds %struct.sched_statistics, ptr %stats, i32 0, i32 2
  %17 = ptrtoint ptr %wait_count to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %wait_count, align 16
  %inc = add i64 %18, 1
  store i64 %inc, ptr %wait_count, align 16
  %wait_sum = getelementptr inbounds %struct.sched_statistics, ptr %stats, i32 0, i32 3
  %19 = ptrtoint ptr %wait_sum to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %wait_sum, align 8
  %add = add i64 %20, %sub
  store i64 %add, ptr %wait_sum, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %if.then
  %storemerge = phi i64 [ 0, %do.body6 ], [ %sub, %if.then ]
  %21 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %storemerge, ptr %stats, align 128
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sched_stat_wait(ptr noundef %tsk, i64 noundef %delay) unnamed_addr #1 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_wait, i32 0, i32 1), ptr blockaddress(@trace_sched_stat_wait, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !64

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %cpu_online.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_online.exit, label %if.then.i.i.i.i, !prof !63

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %do.body
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end69, label %cleanup.thread

cleanup.thread:                                   ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !65
  %call42 = tail call i32 @__traceiter_sched_stat_wait(ptr noundef null, ptr noundef %tsk, i64 noundef %delay) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !66
  %13 = tail call i32 @llvm.read_register.i32(metadata !52) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %cpu_online.exit85, label %land.rhs.i.i.i.i79

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %cpu_online.exit85, label %if.then.i.i.i.i80, !prof !63

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79, %if.end48
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %if.end69, label %if.then52

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_wait, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_wait, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_sched_stat_wait.__warned, align 1
  br i1 %.b72, label %do.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i1 true, ptr @trace_sched_stat_wait.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 462, ptr noundef nonnull @.str.3) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62, %land.lhs.true, %if.then52
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %31 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85, %cpu_online.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__update_stats_enqueue_sleeper(ptr noundef %rq, ptr noundef %p, ptr nocapture noundef %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_start1 = getelementptr inbounds %struct.sched_statistics, ptr %stats, i32 0, i32 6
  %0 = ptrtoint ptr %sleep_start1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sleep_start1, align 16
  %block_start2 = getelementptr inbounds %struct.sched_statistics, ptr %stats, i32 0, i32 9
  %2 = ptrtoint ptr %block_start2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %block_start2, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end20, label %if.then

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.then
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %5 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %7 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %8, %if.then.i.i.i ], [ %rq, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !62

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1309, i32 noundef 9, ptr noundef null) #8
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %if.then
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %9 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %10, 2
  br i1 %cmp.i.i, label %land.rhs.i3.i, label %rq_clock.exit

land.rhs.i3.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock.exit, label %if.then.i.i, !prof !63

if.then.i.i:                                      ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.1) #8
  br label %rq_clock.exit

rq_clock.exit:                                    ; preds = %if.then.i.i, %land.rhs.i3.i, %lockdep_assert_rq_held.exit.i
  %clock.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 26
  %11 = ptrtoint ptr %clock.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %clock.i, align 32
  %sub = sub i64 %12, %1
  %13 = tail call i64 @llvm.smax.i64(i64 %sub, i64 0)
  %sleep_max = getelementptr inbounds %struct.sched_statistics, ptr %stats, i32 0, i32 7
  %14 = ptrtoint ptr %sleep_max to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sleep_max, align 8
  %cmp4 = icmp ugt i64 %13, %15
  br i1 %cmp4, label %do.body, label %do.body10, !prof !62

do.body:                                          ; preds = %rq_clock.exit
  %16 = ptrtoint ptr %sleep_max to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %13, ptr %sleep_max, align 8
  br label %do.body10

do.body10:                                        ; preds = %do.body, %rq_clock.exit
  %17 = ptrtoint ptr %sleep_start1 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %sleep_start1, align 16
  %sum_sleep_runtime = getelementptr inbounds %struct.sched_statistics, ptr %stats, i32 0, i32 8
  %18 = ptrtoint ptr %sum_sleep_runtime to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sum_sleep_runtime, align 64
  %add = add i64 %19, %13
  store i64 %add, ptr %sum_sleep_runtime, align 64
  %tobool17.not = icmp eq ptr %p, null
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %do.body10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @latencytop_enabled to i32))
  %20 = load i32, ptr @latencytop_enabled, align 4
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %account_scheduler_latency.exit, label %if.then.i, !prof !63

if.then.i:                                        ; preds = %if.then18
  %shr = lshr i64 %13, 10
  %conv = trunc i64 %shr to i32
  tail call void @__account_scheduler_latency(ptr noundef nonnull %p, i32 noundef %conv, i32 noundef 1) #8
  br label %account_scheduler_latency.exit

account_scheduler_latency.exit:                   ; preds = %if.then.i, %if.then18
  tail call fastcc void @trace_sched_stat_sleep(ptr noundef nonnull %p, i64 noundef %13)
  br label %if.end20

if.end20:                                         ; preds = %account_scheduler_latency.exit, %do.body10, %entry
  %tobool21.not = icmp eq i64 %3, 0
  br i1 %tobool21.not, label %if.end85, label %if.then22

if.then22:                                        ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %21 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i125 = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i125, label %lockdep_assert_rq_held.exit.i139, label %land.rhs.i.i128

land.rhs.i.i128:                                  ; preds = %if.then22
  %core_enabled.i.i.i126 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %22 = ptrtoint ptr %core_enabled.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %core_enabled.i.i.i126, align 128
  %tobool.not.i.i.i127 = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i.i127, label %__rq_lockp.exit.i.i135, label %if.then.i.i.i130

if.then.i.i.i130:                                 ; preds = %land.rhs.i.i128
  %core.i.i.i129 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %24 = ptrtoint ptr %core.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core.i.i.i129, align 8
  br label %__rq_lockp.exit.i.i135

__rq_lockp.exit.i.i135:                           ; preds = %if.then.i.i.i130, %land.rhs.i.i128
  %retval.0.i.i.i131 = phi ptr [ %25, %if.then.i.i.i130 ], [ %rq, %land.rhs.i.i128 ]
  %dep_map.i.i132 = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i131, i32 0, i32 4
  %call.i.i.i133 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i132, i32 noundef -1) #8
  %cmp.not.i.i134 = icmp eq i32 %call.i.i.i133, 0
  br i1 %cmp.not.i.i134, label %do.end.i.i136, label %lockdep_assert_rq_held.exit.i139, !prof !62

do.end.i.i136:                                    ; preds = %__rq_lockp.exit.i.i135
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1309, i32 noundef 9, ptr noundef null) #8
  br label %lockdep_assert_rq_held.exit.i139

lockdep_assert_rq_held.exit.i139:                 ; preds = %do.end.i.i136, %__rq_lockp.exit.i.i135, %if.then22
  %clock_update_flags.i.i137 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 25
  %26 = ptrtoint ptr %clock_update_flags.i.i137 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clock_update_flags.i.i137, align 4
  %cmp.i.i138 = icmp ult i32 %27, 2
  br i1 %cmp.i.i138, label %land.rhs.i3.i141, label %rq_clock.exit144

land.rhs.i3.i141:                                 ; preds = %lockdep_assert_rq_held.exit.i139
  %.b37.i.i140 = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i140, label %rq_clock.exit144, label %if.then.i.i142, !prof !63

if.then.i.i142:                                   ; preds = %land.rhs.i3.i141
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.1) #8
  br label %rq_clock.exit144

rq_clock.exit144:                                 ; preds = %if.then.i.i142, %land.rhs.i3.i141, %lockdep_assert_rq_held.exit.i139
  %clock.i143 = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 26
  %28 = ptrtoint ptr %clock.i143 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %clock.i143, align 32
  %sub25 = sub i64 %29, %3
  %30 = tail call i64 @llvm.smax.i64(i64 %sub25, i64 0)
  %block_max = getelementptr inbounds %struct.sched_statistics, ptr %stats, i32 0, i32 10
  %31 = ptrtoint ptr %block_max to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %block_max, align 16
  %cmp30 = icmp ugt i64 %30, %32
  br i1 %cmp30, label %do.body39, label %do.body44, !prof !62

do.body39:                                        ; preds = %rq_clock.exit144
  %33 = ptrtoint ptr %block_max to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %30, ptr %block_max, align 16
  br label %do.body44

do.body44:                                        ; preds = %do.body39, %rq_clock.exit144
  %34 = ptrtoint ptr %block_start2 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %block_start2, align 8
  %sum_sleep_runtime49 = getelementptr inbounds %struct.sched_statistics, ptr %stats, i32 0, i32 8
  %35 = ptrtoint ptr %sum_sleep_runtime49 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %sum_sleep_runtime49, align 64
  %add50 = add i64 %36, %30
  store i64 %add50, ptr %sum_sleep_runtime49, align 64
  %sum_block_runtime = getelementptr inbounds %struct.sched_statistics, ptr %stats, i32 0, i32 11
  %37 = ptrtoint ptr %sum_block_runtime to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %sum_block_runtime, align 8
  %add54 = add i64 %38, %30
  store i64 %add54, ptr %sum_block_runtime, align 8
  %tobool57.not = icmp eq ptr %p, null
  br i1 %tobool57.not, label %if.end85, label %if.then58

if.then58:                                        ; preds = %do.body44
  %in_iowait = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 65
  %39 = ptrtoint ptr %in_iowait to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load = load i16, ptr %in_iowait, align 8
  %40 = and i16 %bf.load, 8192
  %tobool59.not = icmp eq i16 %40, 0
  br i1 %tobool59.not, label %if.end68, label %do.body61

do.body61:                                        ; preds = %if.then58
  %iowait_sum = getelementptr inbounds %struct.sched_statistics, ptr %stats, i32 0, i32 5
  %41 = ptrtoint ptr %iowait_sum to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %iowait_sum, align 8
  %add62 = add i64 %42, %30
  store i64 %add62, ptr %iowait_sum, align 8
  %iowait_count = getelementptr inbounds %struct.sched_statistics, ptr %stats, i32 0, i32 4
  %43 = ptrtoint ptr %iowait_count to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %iowait_count, align 32
  %inc = add i64 %44, 1
  store i64 %inc, ptr %iowait_count, align 32
  tail call fastcc void @trace_sched_stat_iowait(ptr noundef nonnull %p, i64 noundef %30)
  br label %if.end68

if.end68:                                         ; preds = %do.body61, %if.then58
  tail call fastcc void @trace_sched_stat_blocked(ptr noundef nonnull %p, i64 noundef %30)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @prof_on to i32))
  %45 = load i32, ptr @prof_on, align 4
  %cmp69 = icmp eq i32 %45, 3
  br i1 %cmp69, label %if.then77, label %if.end81, !prof !62

if.then77:                                        ; preds = %if.end68
  %call78 = tail call i32 @get_wchan(ptr noundef nonnull %p) #8
  %46 = inttoptr i32 %call78 to ptr
  %shr79 = lshr i64 %30, 20
  %conv80 = trunc i64 %shr79 to i32
  tail call void @profile_hits(i32 noundef 3, ptr noundef %46, i32 noundef %conv80) #8
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.end68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @latencytop_enabled to i32))
  %47 = load i32, ptr @latencytop_enabled, align 4
  %tobool.not.i145 = icmp eq i32 %47, 0
  br i1 %tobool.not.i145, label %if.end85, label %if.then.i146, !prof !63

if.then.i146:                                     ; preds = %if.end81
  %shr82 = lshr i64 %30, 10
  %conv83 = trunc i64 %shr82 to i32
  tail call void @__account_scheduler_latency(ptr noundef nonnull %p, i32 noundef %conv83, i32 noundef 0) #8
  br label %if.end85

if.end85:                                         ; preds = %if.then.i146, %if.end81, %do.body44, %if.end20
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sched_stat_sleep(ptr noundef %tsk, i64 noundef %delay) unnamed_addr #1 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_sleep, i32 0, i32 1), ptr blockaddress(@trace_sched_stat_sleep, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !64

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %cpu_online.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_online.exit, label %if.then.i.i.i.i, !prof !63

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %do.body
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end69, label %cleanup.thread

cleanup.thread:                                   ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !69
  %call42 = tail call i32 @__traceiter_sched_stat_sleep(ptr noundef null, ptr noundef %tsk, i64 noundef %delay) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !70
  %13 = tail call i32 @llvm.read_register.i32(metadata !52) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %cpu_online.exit85, label %land.rhs.i.i.i.i79

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %cpu_online.exit85, label %if.then.i.i.i.i80, !prof !63

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79, %if.end48
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %if.end69, label %if.then52

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_sleep, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_sleep, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_sched_stat_sleep.__warned, align 1
  br i1 %.b72, label %do.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i1 true, ptr @trace_sched_stat_sleep.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 470, ptr noundef nonnull @.str.3) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62, %land.lhs.true, %if.then52
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %31 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85, %cpu_online.exit
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sched_stat_iowait(ptr noundef %tsk, i64 noundef %delay) unnamed_addr #1 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_iowait, i32 0, i32 1), ptr blockaddress(@trace_sched_stat_iowait, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !64

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %cpu_online.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_online.exit, label %if.then.i.i.i.i, !prof !63

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %do.body
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end69, label %cleanup.thread

cleanup.thread:                                   ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !71
  %call42 = tail call i32 @__traceiter_sched_stat_iowait(ptr noundef null, ptr noundef %tsk, i64 noundef %delay) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  %13 = tail call i32 @llvm.read_register.i32(metadata !52) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %cpu_online.exit85, label %land.rhs.i.i.i.i79

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %cpu_online.exit85, label %if.then.i.i.i.i80, !prof !63

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79, %if.end48
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %if.end69, label %if.then52

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_iowait, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_iowait, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_sched_stat_iowait.__warned, align 1
  br i1 %.b72, label %do.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i1 true, ptr @trace_sched_stat_iowait.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 478, ptr noundef nonnull @.str.3) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62, %land.lhs.true, %if.then52
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %31 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85, %cpu_online.exit
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sched_stat_blocked(ptr noundef %tsk, i64 noundef %delay) unnamed_addr #1 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_blocked, i32 0, i32 1), ptr blockaddress(@trace_sched_stat_blocked, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !64

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %cpu_online.exit, label %land.rhs.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %cpu_online.exit, label %if.then.i.i.i.i, !prof !63

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i, %do.body
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end69, label %cleanup.thread

cleanup.thread:                                   ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !73
  %call42 = tail call i32 @__traceiter_sched_stat_blocked(ptr noundef null, ptr noundef %tsk, i64 noundef %delay) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !74
  %13 = tail call i32 @llvm.read_register.i32(metadata !52) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %cpu_online.exit85, label %land.rhs.i.i.i.i79

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %cpu_online.exit85, label %if.then.i.i.i.i80, !prof !63

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79, %if.end48
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %if.end69, label %if.then52

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_blocked, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_blocked, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_sched_stat_blocked.__warned, align 1
  br i1 %.b72, label %do.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i1 true, ptr @trace_sched_stat_blocked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 485, ptr noundef nonnull @.str.3) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62, %land.lhs.true, %if.then52
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !68
  %31 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85, %cpu_online.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @profile_hits(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_wchan(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_schedstat_init() #3 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.5, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @schedstat_sops, i32 noundef 0, ptr noundef null) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_stat_wait(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__account_scheduler_latency(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_stat_sleep(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_stat_iowait(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_stat_blocked(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @schedstat_start(ptr nocapture noundef readnone %file, ptr nocapture noundef %offset) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %offset, align 8
  %conv = trunc i64 %1 to i32
  switch i32 %conv, label %if.then4 [
    i32 0, label %cleanup
    i32 1, label %if.else
  ]

if.then4:                                         ; preds = %entry
  %sub = add i32 %conv, -2
  %call = tail call i32 @cpumask_next(i32 noundef %sub, ptr noundef nonnull @__cpu_online_mask) #10
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %2) #8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %n.0 = phi i32 [ %call, %if.then4 ], [ %call.i, %if.else ]
  %add = add i32 %n.0, 1
  %conv7 = zext i32 %add to i64
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv7, ptr %offset, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp8 = icmp ult i32 %n.0, %4
  br i1 %cmp8, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end6
  %add11 = add i32 %n.0, 2
  %5 = inttoptr i32 %add11 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end6, %entry
  %retval.0 = phi ptr [ %5, %if.then10 ], [ inttoptr (i32 1 to ptr), %entry ], [ null, %if.end6 ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @schedstat_stop(ptr nocapture noundef %file, ptr nocapture noundef %data) #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @schedstat_next(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %data, ptr nocapture noundef %offset) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %offset, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %offset, align 8
  %conv.i = trunc i64 %inc to i32
  switch i32 %conv.i, label %if.then4.i [
    i32 0, label %schedstat_start.exit
    i32 1, label %if.else.i
  ]

if.then4.i:                                       ; preds = %entry
  %sub.i = add i32 %conv.i, -2
  %call.i = tail call i32 @cpumask_next(i32 noundef %sub.i, ptr noundef nonnull @__cpu_online_mask) #10
  br label %if.end6.i

if.else.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %2) #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then4.i
  %n.0.i = phi i32 [ %call.i, %if.then4.i ], [ %call.i.i, %if.else.i ]
  %add.i = add i32 %n.0.i, 1
  %conv7.i = zext i32 %add.i to i64
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv7.i, ptr %offset, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp8.i = icmp ult i32 %n.0.i, %4
  br i1 %cmp8.i, label %if.then10.i, label %schedstat_start.exit

if.then10.i:                                      ; preds = %if.end6.i
  %add11.i = add i32 %n.0.i, 2
  %5 = inttoptr i32 %add11.i to ptr
  br label %schedstat_start.exit

schedstat_start.exit:                             ; preds = %if.then10.i, %if.end6.i, %entry
  %retval.0.i = phi ptr [ %5, %if.then10.i ], [ inttoptr (i32 1 to ptr), %entry ], [ null, %if.end6.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_schedstat(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.6, i32 noundef 15) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7, i32 noundef %0) #8
  br label %if.end44

if.else:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %v, i32 -2
  %1 = ptrtoint ptr %add.ptr to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %4 = inttoptr i32 %add to ptr
  %yld_count = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 70
  %5 = ptrtoint ptr %yld_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %yld_count, align 64
  %sched_count = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 71
  %7 = ptrtoint ptr %sched_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sched_count, align 4
  %sched_goidle = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 72
  %9 = ptrtoint ptr %sched_goidle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sched_goidle, align 8
  %ttwu_count = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 73
  %11 = ptrtoint ptr %ttwu_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ttwu_count, align 4
  %ttwu_local = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 74
  %13 = ptrtoint ptr %ttwu_local to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ttwu_local, align 16
  %rq_cpu_time = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 69
  %15 = ptrtoint ptr %rq_cpu_time to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rq_cpu_time, align 8
  %rq_sched_info = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 68
  %run_delay = getelementptr inbounds %struct.rq, ptr %4, i32 0, i32 68, i32 1
  %17 = ptrtoint ptr %run_delay to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %run_delay, align 8
  %19 = ptrtoint ptr %rq_sched_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rq_sched_info, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.8, i32 noundef %1, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i64 noundef %16, i64 noundef %18, i32 noundef %20) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9) #8
  %21 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %if.else
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %add15 = add i32 %26, ptrtoint (ptr @runqueues to i32)
  %27 = inttoptr i32 %add15 to ptr
  %sd16 = getelementptr inbounds %struct.rq, ptr %27, i32 0, i32 36
  %28 = ptrtoint ptr %sd16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %sd16, align 4
  %call.i93 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @sched_domains_mutex, i32 0, i32 5), i32 noundef -1) #8
  %tobool.not = icmp eq i32 %call.i93, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.end26

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %call18 = tail call i32 @rcu_read_lock_held() #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true, label %do.end26

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.end26, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %land.lhs.true
  %.b92 = load i1, ptr @show_schedstat.__warned, align 1
  br i1 %.b92, label %do.end26, label %if.then24

if.then24:                                        ; preds = %land.lhs.true22
  store i1 true, ptr @show_schedstat.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 149, ptr noundef nonnull @.str.3) #8
  br label %do.end26

do.end26:                                         ; preds = %if.then24, %land.lhs.true22, %land.lhs.true, %lor.lhs.false, %rcu_read_lock.exit
  %tobool28.not104 = icmp eq ptr %29, null
  br i1 %tobool28.not104, label %for.end43, label %for.body

for.body:                                         ; preds = %for.body, %do.end26
  %sd.0106 = phi ptr [ %104, %for.body ], [ %29, %do.end26 ]
  %dcount.0105 = phi i32 [ %inc, %for.body ], [ 0, %do.end26 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %30 = load i32, ptr @nr_cpu_ids, align 4
  %span.i = getelementptr inbounds %struct.sched_domain, ptr %sd.0106, i32 0, i32 41
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %dcount.0105, i32 noundef %30, ptr noundef %span.i) #8
  %arrayidx33 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 17, i32 0
  %31 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx33, align 4
  %arrayidx34 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 19, i32 0
  %33 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx34, align 4
  %arrayidx35 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 18, i32 0
  %35 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx35, align 4
  %arrayidx36 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 20, i32 0
  %37 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx36, align 4
  %arrayidx37 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 21, i32 0
  %39 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx37, align 4
  %arrayidx38 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 22, i32 0
  %41 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx38, align 4
  %arrayidx39 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 24, i32 0
  %43 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx39, align 4
  %arrayidx40 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 23, i32 0
  %45 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx40, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.12, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46) #8
  %arrayidx33.1 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 17, i32 1
  %47 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx33.1, align 4
  %arrayidx34.1 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 19, i32 1
  %49 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx34.1, align 4
  %arrayidx35.1 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 18, i32 1
  %51 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx35.1, align 4
  %arrayidx36.1 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 20, i32 1
  %53 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx36.1, align 4
  %arrayidx37.1 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 21, i32 1
  %55 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx37.1, align 4
  %arrayidx38.1 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 22, i32 1
  %57 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx38.1, align 4
  %arrayidx39.1 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 24, i32 1
  %59 = ptrtoint ptr %arrayidx39.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx39.1, align 4
  %arrayidx40.1 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 23, i32 1
  %61 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx40.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.12, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62) #8
  %arrayidx33.2 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 17, i32 2
  %63 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx33.2, align 4
  %arrayidx34.2 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 19, i32 2
  %65 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx34.2, align 4
  %arrayidx35.2 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 18, i32 2
  %67 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx35.2, align 4
  %arrayidx36.2 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 20, i32 2
  %69 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx36.2, align 4
  %arrayidx37.2 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 21, i32 2
  %71 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx37.2, align 4
  %arrayidx38.2 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 22, i32 2
  %73 = ptrtoint ptr %arrayidx38.2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx38.2, align 4
  %arrayidx39.2 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 24, i32 2
  %75 = ptrtoint ptr %arrayidx39.2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx39.2, align 4
  %arrayidx40.2 = getelementptr %struct.sched_domain, ptr %sd.0106, i32 0, i32 23, i32 2
  %77 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx40.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.12, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %78) #8
  %inc = add i32 %dcount.0105, 1
  %alb_count = getelementptr inbounds %struct.sched_domain, ptr %sd.0106, i32 0, i32 25
  %79 = ptrtoint ptr %alb_count to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %alb_count, align 8
  %alb_failed = getelementptr inbounds %struct.sched_domain, ptr %sd.0106, i32 0, i32 26
  %81 = ptrtoint ptr %alb_failed to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %alb_failed, align 4
  %alb_pushed = getelementptr inbounds %struct.sched_domain, ptr %sd.0106, i32 0, i32 27
  %83 = ptrtoint ptr %alb_pushed to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %alb_pushed, align 8
  %sbe_count = getelementptr inbounds %struct.sched_domain, ptr %sd.0106, i32 0, i32 28
  %85 = ptrtoint ptr %sbe_count to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sbe_count, align 4
  %sbe_balanced = getelementptr inbounds %struct.sched_domain, ptr %sd.0106, i32 0, i32 29
  %87 = ptrtoint ptr %sbe_balanced to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sbe_balanced, align 8
  %sbe_pushed = getelementptr inbounds %struct.sched_domain, ptr %sd.0106, i32 0, i32 30
  %89 = ptrtoint ptr %sbe_pushed to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sbe_pushed, align 4
  %sbf_count = getelementptr inbounds %struct.sched_domain, ptr %sd.0106, i32 0, i32 31
  %91 = ptrtoint ptr %sbf_count to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sbf_count, align 8
  %sbf_balanced = getelementptr inbounds %struct.sched_domain, ptr %sd.0106, i32 0, i32 32
  %93 = ptrtoint ptr %sbf_balanced to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sbf_balanced, align 4
  %sbf_pushed = getelementptr inbounds %struct.sched_domain, ptr %sd.0106, i32 0, i32 33
  %95 = ptrtoint ptr %sbf_pushed to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sbf_pushed, align 8
  %ttwu_wake_remote = getelementptr inbounds %struct.sched_domain, ptr %sd.0106, i32 0, i32 34
  %97 = ptrtoint ptr %ttwu_wake_remote to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ttwu_wake_remote, align 4
  %ttwu_move_affine = getelementptr inbounds %struct.sched_domain, ptr %sd.0106, i32 0, i32 35
  %99 = ptrtoint ptr %ttwu_move_affine to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ttwu_move_affine, align 8
  %ttwu_move_balance = getelementptr inbounds %struct.sched_domain, ptr %sd.0106, i32 0, i32 36
  %101 = ptrtoint ptr %ttwu_move_balance to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ttwu_move_balance, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %88, i32 noundef %90, i32 noundef %92, i32 noundef %94, i32 noundef %96, i32 noundef %98, i32 noundef %100, i32 noundef %102) #8
  %103 = ptrtoint ptr %sd.0106 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sd.0106, align 8
  %tobool28.not = icmp eq ptr %104, null
  br i1 %tobool28.not, label %for.end43, label %for.body

for.end43:                                        ; preds = %for.body, %do.end26
  %call.i94 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i94, label %rcu_read_unlock.exit, label %land.lhs.true.i97

land.lhs.true.i97:                                ; preds = %for.end43
  %call1.i95 = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool.not.i96 = icmp eq i32 %call1.i95, 0
  br i1 %tobool.not.i96, label %rcu_read_unlock.exit, label %land.lhs.true2.i99

land.lhs.true2.i99:                               ; preds = %land.lhs.true.i97
  %.b4.i98 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i98, label %rcu_read_unlock.exit, label %if.then.i100

if.then.i100:                                     ; preds = %land.lhs.true2.i99
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i100, %land.lhs.true2.i99, %land.lhs.true.i97, %for.end43
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !76
  %105 = tail call i32 @llvm.read_register.i32(metadata !52) #8
  %and.i.i.i.i.i101 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i.i.i101 to ptr
  %preempt_count.i.i.i.i102 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i.i.i102, align 4
  %sub.i.i.i = add i32 %108, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i102, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %if.end44

if.end44:                                         ; preds = %rcu_read_unlock.exit, %if.then
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #1 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #1 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41, !43, !45, !47, !48, !49, !51}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_stats__490_232_proc_schedstat_init4, !1, !"__initcall__kmod_stats__490_232_proc_schedstat_init4", i1 false, i1 false}
!1 = !{!"../kernel/sched/stats.c", i32 232, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/sched/sched.h", i32 1309, i32 2}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../kernel/sched/sched.h", i32 1459, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/trace/events/sched.h", i32 460, i32 1}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!11 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/trace/events/sched.h", i32 468, i32 1}
!17 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/trace/events/sched.h", i32 476, i32 1}
!20 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/trace/events/sched.h", i32 483, i32 1}
!23 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/sched/stats.c", i32 229, i32 2}
!26 = !{ptr @schedstat_sops, !27, !"schedstat_sops", i1 false, i1 false}
!27 = !{!"../kernel/sched/stats.c", i32 220, i32 36}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/sched/stats.c", i32 124, i32 19}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/sched/stats.c", i32 125, i32 19}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/sched/stats.c", i32 137, i32 7}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/sched/stats.c", i32 144, i32 19}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../kernel/sched/stats.c", i32 149, i32 3}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/sched/stats.c", i32 152, i32 20}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/sched/stats.c", i32 156, i32 21}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/sched/stats.c", i32 167, i32 8}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!51 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!52 = !{!"sp"}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2148319160, i64 2148319165, i64 2148319178, i64 2148319222, i64 2148319256, i64 2148319277}
!65 = !{i64 2157530513}
!66 = !{i64 2157530726}
!67 = !{i64 2149341840}
!68 = !{i64 2149342876}
!69 = !{i64 2157546910}
!70 = !{i64 2157547125}
!71 = !{i64 2157567460}
!72 = !{i64 2157567677}
!73 = !{i64 2157584041}
!74 = !{i64 2157584260}
!75 = !{i64 2149333281}
!76 = !{i64 2149333547}
