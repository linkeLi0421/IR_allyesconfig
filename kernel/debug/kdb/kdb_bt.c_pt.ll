; ModuleID = '/llk/IR_all_yes/kernel/debug/kdb/kdb_bt.c_pt.bc'
source_filename = "../kernel/debug/kdb/kdb_bt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.debuggerinfo_struct = type { ptr, ptr, i32, i32, i32, i32, i8 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BTAPROMPT\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bta\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PS\00", [29 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@init_task = external dso_local global %struct.task_struct, align 128
@kdb_bt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/debug/kdb/kdb_bt.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@kdb_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"btp\00", [28 x i8] zeroinitializer }, align 32
@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No process with pid == %ld found\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"btt\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"btc\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"btc: cpu status: \00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpu\0A\00", [27 x i8] zeroinitializer }, align 32
@kdb_current_task = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Stack traceback for pid %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Enter <q> to end, <cr> or <space> to continue:\00", [49 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0D\0A q\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@kdb_nextline = external dso_local local_unnamed_addr global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"WARNING: no process for cpu %ld\0A\00", [63 x i8] zeroinitializer }, align 32
@kgdb_info = external dso_local local_unnamed_addr global [0 x %struct.debuggerinfo_struct], align 4
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"WARNING: no task for cpu %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@kdb_trap_printk = external dso_local local_unnamed_addr global i32, align 4
@console_printk = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\010\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 136, i32 15 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 138, i32 22 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 141, i32 49 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 152, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 160, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 170, i32 22 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 171, i32 14 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 173, i32 29 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 180, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 197, i32 15 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 198, i32 14 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 86, i32 13 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 90, i32 14 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 93, i32 20 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 94, i32 14 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 112, i32 14 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 119, i32 14 }
@___asan_gen_.75 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 108, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [29 x i8] c"../kernel/debug/kdb/kdb_bt.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 33, i32 23 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kdb_bt(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #0 align 64 {
entry:
  %btaprompt = alloca i32, align 4
  %nextarg = alloca i32, align 4
  %addr = alloca i32, align 4
  %offset = alloca i32, align 4
  %pid = alloca i32, align 4
  %cpu108 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %btaprompt) #6
  %0 = ptrtoint ptr %btaprompt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %btaprompt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextarg) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #6
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %addr, align 4, !annotation !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #6
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %offset, align 4, !annotation !50
  %call = call i32 @kdbgetintenv(ptr noundef nonnull @.str, ptr noundef nonnull %btaprompt) #6
  %3 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %argv, align 4
  %call1 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(4) @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 0
  br i1 %tobool.not, label %if.then5, label %cond.end

cond.end:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2 = getelementptr ptr, ptr %argv, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call ptr @kdbgetenv(ptr noundef nonnull @.str.2) #6
  call void @kdb_ps_suppressed() #6
  br label %if.end

if.end:                                           ; preds = %if.then5, %cond.end
  %cond184 = phi ptr [ %call3, %if.then5 ], [ %6, %cond.end ]
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %cpu.0 = phi i32 [ -1, %if.end ], [ %call6, %for.body.for.cond_crit_edge ]
  %call6 = call i32 @cpumask_next(i32 noundef %cpu.0, ptr noundef nonnull @__cpu_online_mask) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %7)
  %cmp7 = icmp ult i32 %call6, %7
  br i1 %cmp7, label %for.body, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr198 = getelementptr i8, ptr %8, i32 -1136
  %cmp16.not199 = icmp eq ptr %add.ptr198, @init_task
  br i1 %cmp16.not199, label %for.cond14.preheader.cleanup142_crit_edge, label %for.cond14.preheader.do.body18_crit_edge

for.cond14.preheader.do.body18_crit_edge:         ; preds = %for.cond14.preheader
  br label %do.body18

for.cond14.preheader.cleanup142_crit_edge:        ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup142

for.body:                                         ; preds = %for.cond
  %call8 = call ptr @kdb_curr_task(i32 noundef %call6) #6
  %9 = ptrtoint ptr %btaprompt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %btaprompt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9 = icmp ne i32 %10, 0
  %call10 = call fastcc i32 @kdb_bt1(ptr noundef %call8, ptr noundef %cond184, i1 noundef zeroext %tobool9)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup142_crit_edge

for.body.cleanup142_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup142

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.cond14.loopexit:                              ; preds = %for.inc.for.cond14.loopexit_crit_edge, %do.end28.for.cond14.loopexit_crit_edge
  %11 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %13, align 16
  %add.ptr = getelementptr i8, ptr %12, i32 -1136
  %cmp16.not = icmp eq ptr %add.ptr, @init_task
  br i1 %cmp16.not, label %for.cond14.loopexit.cleanup142_crit_edge, label %for.cond14.loopexit.do.body18_crit_edge

for.cond14.loopexit.do.body18_crit_edge:          ; preds = %for.cond14.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body18

for.cond14.loopexit.cleanup142_crit_edge:         ; preds = %for.cond14.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup142

do.body18:                                        ; preds = %for.cond14.loopexit.do.body18_crit_edge, %for.cond14.preheader.do.body18_crit_edge
  %13 = phi ptr [ %12, %for.cond14.loopexit.do.body18_crit_edge ], [ %8, %for.cond14.preheader.do.body18_crit_edge ]
  %call19 = call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true, label %do.body18.do.end28_crit_edge

do.body18.do.end28_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

land.lhs.true:                                    ; preds = %do.body18
  %call21 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true.do.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true
  %.b180 = load i1, ptr @kdb_bt.__warned, align 1
  br i1 %.b180, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @kdb_bt.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 152, ptr noundef nonnull @.str.4) #6
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true.do.end28_crit_edge, %do.body18.do.end28_crit_edge
  %signal = getelementptr i8, ptr %13, i32 544
  %14 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %thread_head to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn192 = load volatile ptr, ptr %thread_head, align 4
  %cmp40.not195 = icmp eq ptr %.pn192, %thread_head
  br i1 %cmp40.not195, label %do.end28.for.cond14.loopexit_crit_edge, label %do.end28.for.body41_crit_edge

do.end28.for.body41_crit_edge:                    ; preds = %do.end28
  br label %for.body41

do.end28.for.cond14.loopexit_crit_edge:           ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond14.loopexit

for.body41:                                       ; preds = %for.inc.for.body41_crit_edge, %do.end28.for.body41_crit_edge
  %.pn196 = phi ptr [ %.pn, %for.inc.for.body41_crit_edge ], [ %.pn192, %do.end28.for.body41_crit_edge ]
  %p.0197 = getelementptr i8, ptr %.pn196, i32 -1404
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_flags to i32))
  %17 = load i32, ptr @kdb_flags, align 4
  %and = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.end44, label %for.body41.cleanup142_crit_edge

for.body41.cleanup142_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup142

if.end44:                                         ; preds = %for.body41
  %call45 = call i32 @task_curr(ptr noundef %p.0197) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.for.inc_crit_edge

if.end44.for.inc_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end48:                                         ; preds = %if.end44
  %18 = ptrtoint ptr %btaprompt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %btaprompt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool49 = icmp ne i32 %19, 0
  %call50 = call fastcc i32 @kdb_bt1(ptr noundef %p.0197, ptr noundef %cond184, i1 noundef zeroext %tobool49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end48.for.inc_crit_edge, label %if.end48.cleanup142_crit_edge

if.end48.cleanup142_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup142

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end48.for.inc_crit_edge, %if.end44.for.inc_crit_edge
  %20 = ptrtoint ptr %.pn196 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load volatile ptr, ptr %.pn196, align 4
  %21 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %signal, align 16
  %thread_head39 = getelementptr inbounds %struct.signal_struct, ptr %22, i32 0, i32 3
  %cmp40.not = icmp eq ptr %.pn, %thread_head39
  br i1 %cmp40.not, label %for.inc.for.cond14.loopexit_crit_edge, label %for.inc.for.body41_crit_edge

for.inc.for.body41_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body41

for.inc.for.cond14.loopexit_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond14.loopexit

if.else:                                          ; preds = %entry
  %call69 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(4) @.str.5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then71, label %if.else89

if.then71:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pid) #6
  %23 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %pid, align 4, !annotation !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp73.not = icmp eq i32 %argc, 1
  br i1 %cmp73.not, label %if.end75, label %if.then71.cleanup87_crit_edge

if.then71.cleanup87_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup87

if.end75:                                         ; preds = %if.then71
  %arrayidx76 = getelementptr ptr, ptr %argv, i32 1
  %24 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx76, align 4
  %call77 = call i32 @kdbgetularg(ptr noundef %25, ptr noundef nonnull %pid) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end75.cleanup87_crit_edge

if.end75.cleanup87_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup87

if.end80:                                         ; preds = %if.end75
  %26 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid, align 4
  %call81 = call ptr @find_task_by_pid_ns(i32 noundef %27, ptr noundef nonnull @init_pid_ns) #6
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %if.end85, label %if.then83

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %call84 = call fastcc i32 @kdb_bt1(ptr noundef nonnull %call81, ptr noundef nonnull @.str.6, i1 noundef zeroext false)
  br label %cleanup87

if.end85:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid, align 4
  %call86 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.7, i32 noundef %29) #6
  br label %cleanup87

cleanup87:                                        ; preds = %if.end85, %if.then83, %if.end75.cleanup87_crit_edge, %if.then71.cleanup87_crit_edge
  %retval.1 = phi i32 [ %call84, %if.then83 ], [ 0, %if.end85 ], [ -2, %if.then71.cleanup87_crit_edge ], [ %call77, %if.end75.cleanup87_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pid) #6
  br label %cleanup142

if.else89:                                        ; preds = %if.else
  %call91 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(4) @.str.8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp eq i32 %call91, 0
  br i1 %cmp92, label %if.then93, label %if.else103

if.then93:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp94.not = icmp eq i32 %argc, 1
  br i1 %cmp94.not, label %if.end96, label %if.then93.cleanup142_crit_edge

if.then93.cleanup142_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup142

if.end96:                                         ; preds = %if.then93
  %arrayidx97 = getelementptr ptr, ptr %argv, i32 1
  %30 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx97, align 4
  %call98 = call i32 @kdbgetularg(ptr noundef %31, ptr noundef nonnull %addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end96.cleanup142_crit_edge

if.end96.cleanup142_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup142

if.end101:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr, align 4
  %34 = inttoptr i32 %33 to ptr
  %call102 = call fastcc i32 @kdb_bt1(ptr noundef %34, ptr noundef nonnull @.str.6, i1 noundef zeroext false)
  br label %cleanup142

if.else103:                                       ; preds = %if.else89
  %call105 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(4) @.str.9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp eq i32 %call105, 0
  br i1 %cmp106, label %if.then107, label %if.else132

if.then107:                                       ; preds = %if.else103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu108) #6
  %35 = ptrtoint ptr %cpu108 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %cpu108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp109 = icmp sgt i32 %argc, 1
  br i1 %cmp109, label %if.then107.cleanup131_crit_edge, label %if.end111

if.then107.cleanup131_crit_edge:                  ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup131

if.end111:                                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp112 = icmp eq i32 %argc, 1
  br i1 %cmp112, label %if.then113, label %if.end111.if.else122_crit_edge

if.end111.if.else122_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else122

if.then113:                                       ; preds = %if.end111
  %arrayidx114 = getelementptr ptr, ptr %argv, i32 1
  %36 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx114, align 4
  %call115 = call i32 @kdbgetularg(ptr noundef %37, ptr noundef nonnull %cpu108) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end119, label %if.then113.cleanup131_crit_edge

if.then113.cleanup131_crit_edge:                  ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup131

if.end119:                                        ; preds = %if.then113
  %38 = ptrtoint ptr %cpu108 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load i32, ptr %cpu108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp120.not = icmp eq i32 %.pr, -1
  br i1 %cmp120.not, label %if.end119.if.else122_crit_edge, label %if.then121

if.end119.if.else122_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else122

if.then121:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @kdb_bt_cpu(i32 noundef %.pr)
  br label %cleanup131

if.else122:                                       ; preds = %if.end119.if.else122_crit_edge, %if.end111.if.else122_crit_edge
  %call123 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.10) #6
  %call124 = call i32 @kdb_parse(ptr noundef nonnull @.str.11) #6
  %39 = ptrtoint ptr %cpu108 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %cpu108, align 4
  %call126189 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #10
  %40 = ptrtoint ptr %cpu108 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call126189, ptr %cpu108, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %41 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call126189, i32 %41)
  %cmp127190 = icmp ult i32 %call126189, %41
  br i1 %cmp127190, label %if.else122.for.body128_crit_edge, label %if.else122.cleanup131_crit_edge

if.else122.cleanup131_crit_edge:                  ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup131

if.else122.for.body128_crit_edge:                 ; preds = %if.else122
  br label %for.body128

for.body128:                                      ; preds = %for.body128.for.body128_crit_edge, %if.else122.for.body128_crit_edge
  %call126191 = phi i32 [ %call126, %for.body128.for.body128_crit_edge ], [ %call126189, %if.else122.for.body128_crit_edge ]
  call fastcc void @kdb_bt_cpu(i32 noundef %call126191)
  call void @touch_softlockup_watchdog() #6
  %42 = ptrtoint ptr %cpu108 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu108, align 4
  %call126 = call i32 @cpumask_next(i32 noundef %43, ptr noundef nonnull @__cpu_online_mask) #10
  %44 = ptrtoint ptr %cpu108 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call126, ptr %cpu108, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %45 = load i32, ptr @nr_cpu_ids, align 4
  %cmp127 = icmp ult i32 %call126, %45
  br i1 %cmp127, label %for.body128.for.body128_crit_edge, label %for.body128.cleanup131_crit_edge

for.body128.cleanup131_crit_edge:                 ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup131

for.body128.for.body128_crit_edge:                ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body128

cleanup131:                                       ; preds = %for.body128.cleanup131_crit_edge, %if.else122.cleanup131_crit_edge, %if.then121, %if.then113.cleanup131_crit_edge, %if.then107.cleanup131_crit_edge
  %retval.2 = phi i32 [ -2, %if.then107.cleanup131_crit_edge ], [ %call115, %if.then113.cleanup131_crit_edge ], [ 0, %if.then121 ], [ 0, %if.else122.cleanup131_crit_edge ], [ 0, %for.body128.cleanup131_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu108) #6
  br label %cleanup142

if.else132:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %tobool133.not = icmp eq i32 %argc, 0
  br i1 %tobool133.not, label %if.else139, label %if.then134

if.then134:                                       ; preds = %if.else132
  %46 = ptrtoint ptr %nextarg to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %nextarg, align 4
  %call135 = call i32 @kdbgetaddrarg(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull %nextarg, ptr noundef nonnull %addr, ptr noundef nonnull %offset, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end138, label %if.then134.cleanup142_crit_edge

if.then134.cleanup142_crit_edge:                  ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup142

if.end138:                                        ; preds = %if.then134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_current_task to i32))
  %47 = load ptr, ptr @kdb_current_task, align 4
  %48 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addr, align 4
  %50 = inttoptr i32 %49 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_trap_printk to i32))
  %51 = load i32, ptr @kdb_trap_printk, align 4
  %inc.i = add i32 %51, 1
  store i32 %inc.i, ptr @kdb_trap_printk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end138.if.else.i_crit_edge

if.end138.if.else.i_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end138
  %call.i = call i32 @task_curr(ptr noundef %47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  %52 = load i32, ptr @console_printk, align 4
  store i32 15, ptr @console_printk, align 4
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 1
  %53 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stack.i.i.i, align 4
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %cpu.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %57 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i.i = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %57) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %call4.i.i.i.i)
  %cmp.i.i = icmp ugt i32 %56, %call4.i.i.i.i
  %spec.select.i.i = select i1 %cmp.i.i, i32 0, i32 %56
  call void @kdb_dump_stack_on_cpu(i32 noundef %spec.select.i.i) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  store i32 %52, ptr @console_printk, align 4
  br label %kdb_show_stack.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end138.if.else.i_crit_edge
  call void @show_stack(ptr noundef %47, ptr noundef %50, ptr noundef nonnull @.str.19) #6
  br label %kdb_show_stack.exit

kdb_show_stack.exit:                              ; preds = %if.else.i, %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_trap_printk to i32))
  %58 = load i32, ptr @kdb_trap_printk, align 4
  %dec.i = add i32 %58, -1
  store i32 %dec.i, ptr @kdb_trap_printk, align 4
  br label %cleanup142

if.else139:                                       ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_current_task to i32))
  %59 = load ptr, ptr @kdb_current_task, align 4
  %call140 = call fastcc i32 @kdb_bt1(ptr noundef %59, ptr noundef nonnull @.str.6, i1 noundef zeroext false)
  br label %cleanup142

cleanup142:                                       ; preds = %if.else139, %kdb_show_stack.exit, %if.then134.cleanup142_crit_edge, %cleanup131, %if.end101, %if.end96.cleanup142_crit_edge, %if.then93.cleanup142_crit_edge, %cleanup87, %if.end48.cleanup142_crit_edge, %for.body41.cleanup142_crit_edge, %for.cond14.loopexit.cleanup142_crit_edge, %for.body.cleanup142_crit_edge, %for.cond14.preheader.cleanup142_crit_edge
  %retval.3 = phi i32 [ %retval.1, %cleanup87 ], [ %call102, %if.end101 ], [ %retval.2, %cleanup131 ], [ 0, %kdb_show_stack.exit ], [ %call140, %if.else139 ], [ -2, %if.then93.cleanup142_crit_edge ], [ %call98, %if.end96.cleanup142_crit_edge ], [ %call135, %if.then134.cleanup142_crit_edge ], [ 0, %for.cond14.preheader.cleanup142_crit_edge ], [ 0, %for.body41.cleanup142_crit_edge ], [ 0, %if.end48.cleanup142_crit_edge ], [ 0, %for.cond14.loopexit.cleanup142_crit_edge ], [ 0, %for.body.cleanup142_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextarg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %btaprompt) #6
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdbgetintenv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kdbgetenv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kdb_ps_suppressed() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kdb_curr_task(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kdb_bt1(ptr noundef %p, ptr noundef %mask, i1 noundef zeroext %btaprompt) unnamed_addr #0 align 64 {
entry:
  %ch = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ch) #6
  %0 = ptrtoint ptr %ch to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ch, align 1, !annotation !50
  %1 = ptrtoint ptr %p to i32
  %call = call i32 @kdb_getarea_size(ptr noundef nonnull %ch, i32 noundef %1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add.ptr = getelementptr %struct.task_struct, ptr %p, i32 1
  %2 = ptrtoint ptr %add.ptr to i32
  %sub = add i32 %2, -1
  %call1 = call i32 @kdb_getarea_size(ptr noundef nonnull %ch, i32 noundef %sub, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call zeroext i1 @kdb_task_state(ptr noundef %p, ptr noundef %mask) #6
  br i1 %call3, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pid = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 68
  %3 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pid, align 8
  %call6 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.12, i32 noundef %4) #6
  call void @kdb_ps1(ptr noundef %p) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_trap_printk to i32))
  %5 = load i32, ptr @kdb_trap_printk, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr @kdb_trap_printk, align 4
  %call.i = call i32 @task_curr(ptr noundef %p) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  %6 = load i32, ptr @console_printk, align 4
  store i32 15, ptr @console_printk, align 4
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 1
  %7 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stack.i.i.i, align 4
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %cpu.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i.i = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %11) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %call4.i.i.i.i)
  %cmp.i.i = icmp ugt i32 %10, %call4.i.i.i.i
  %spec.select.i.i = select i1 %cmp.i.i, i32 0, i32 %10
  call void @kdb_dump_stack_on_cpu(i32 noundef %spec.select.i.i) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  store i32 %6, ptr @console_printk, align 4
  br label %kdb_show_stack.exit

if.else.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void @show_stack(ptr noundef %p, ptr noundef null, ptr noundef nonnull @.str.19) #6
  br label %kdb_show_stack.exit

kdb_show_stack.exit:                              ; preds = %if.else.i, %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_trap_printk to i32))
  %12 = load i32, ptr @kdb_trap_printk, align 4
  %dec.i = add i32 %12, -1
  store i32 %dec.i, ptr @kdb_trap_printk, align 4
  br i1 %btaprompt, label %if.then8, label %kdb_show_stack.exit.if.end18_crit_edge

kdb_show_stack.exit.if.end18_crit_edge:           ; preds = %kdb_show_stack.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then8:                                         ; preds = %kdb_show_stack.exit
  %call9 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.13) #6
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then8
  %call10 = call zeroext i8 @kdb_getchar() #6
  %13 = ptrtoint ptr %ch to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call10, ptr %ch, align 1
  %conv = zext i8 %call10 to i32
  %memchr = call ptr @memchr(ptr noundef nonnull @.str.14, i32 %conv, i32 5) #9
  %tobool12.not = icmp eq ptr %memchr, null
  br i1 %tobool12.not, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %do.body
  %call13 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.15) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_nextline to i32))
  store i32 1, ptr @kdb_nextline, align 4
  %14 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ch, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 113, i8 %15)
  %cmp = icmp eq i8 %15, 113
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %do.end.if.end18_crit_edge

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %do.end.if.end18_crit_edge, %kdb_show_stack.exit.if.end18_crit_edge
  call void @touch_softlockup_watchdog() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -21, %lor.lhs.false.cleanup_crit_edge ], [ -21, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ch) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_curr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdbgetularg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_pid_ns(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kdb_bt_cpu(i32 noundef %cpu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %0) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i.i, i32 %cpu)
  %cmp.not = icmp ugt i32 %call4.i.i, %cpu
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %1, %cpu
  br i1 %cmp.not.i.i.i.i, label %lor.lhs.false.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

lor.lhs.false.cpu_online.exit_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %lor.lhs.false
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !51

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %lor.lhs.false.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i12 = and i32 %cpu, 31
  %4 = shl nuw i32 1, %and.i.i.i12
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.then_crit_edge, label %if.end

cpu_online.exit.if.then_crit_edge:                ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %cpu_online.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call2 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.16, i32 noundef %cpu) #6
  br label %cleanup

if.end:                                           ; preds = %cpu_online.exit
  %task = getelementptr [0 x %struct.debuggerinfo_struct], ptr @kgdb_info, i32 0, i32 %cpu, i32 1
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.17, i32 noundef %cpu) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call fastcc i32 @kdb_bt1(ptr noundef nonnull %7, ptr noundef nonnull @.str.6, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_parse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdbgetaddrarg(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_getarea_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kdb_task_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kdb_ps1(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @kdb_getchar() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kdb_dump_stack_on_cpu(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_stack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/debug/kdb/kdb_bt.c", i32 136, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/debug/kdb/kdb_bt.c", i32 138, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/debug/kdb/kdb_bt.c", i32 141, i32 49}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../kernel/debug/kdb/kdb_bt.c", i32 152, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/debug/kdb/kdb_bt.c", i32 160, i32 29}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/debug/kdb/kdb_bt.c", i32 170, i32 22}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/debug/kdb/kdb_bt.c", i32 171, i32 14}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/debug/kdb/kdb_bt.c", i32 173, i32 29}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/debug/kdb/kdb_bt.c", i32 180, i32 29}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/debug/kdb/kdb_bt.c", i32 197, i32 15}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/debug/kdb/kdb_bt.c", i32 198, i32 14}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/debug/kdb/kdb_bt.c", i32 86, i32 13}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/debug/kdb/kdb_bt.c", i32 90, i32 14}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/debug/kdb/kdb_bt.c", i32 93, i32 20}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/debug/kdb/kdb_bt.c", i32 94, i32 14}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/debug/kdb/kdb_bt.c", i32 112, i32 14}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/debug/kdb/kdb_bt.c", i32 119, i32 14}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/debug/kdb/kdb_bt.c", i32 33, i32 23}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
!51 = !{!"branch_weights", i32 2000, i32 1}
