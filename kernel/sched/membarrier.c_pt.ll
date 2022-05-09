; ModuleID = '/llk/IR_all_yes/kernel/sched/membarrier.c_pt.bc'
source_filename = "../kernel/sched/membarrier.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, [8 x i8], %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [24 x i8], [2 x %struct.uclamp_rq], i32, [76 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, %struct.list_head, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [88 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i64, i64, i64, i32, i32, %struct.__call_single_data, %struct.hrtimer, i64, %struct.sched_info, i64, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.cpu_stop_work, ptr, ptr, i32, i32, %struct.rb_root, i32, i32, i32, i32, i32, i32, i64, [80 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uclamp_rq = type { i32, [5 x %struct.uclamp_bucket] }
%struct.uclamp_bucket = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i32, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg, i64, [120 x i8], %struct.anon.23, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.list_head, ptr, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list_head, [24 x i8] }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon.23 = type { %struct.raw_spinlock, i32, i32, i32, i32, [68 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.24, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock, i32, ptr, ptr }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.24 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.25, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.25 = type { i64, i64 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.19, %struct.trace_event, ptr, ptr, %union.anon.20, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.19 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.20 = type { ptr }
%struct.cpumask = type { [1 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.88, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.88 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_membarrier\00", [43 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__membarrier = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 3, ptr @types__membarrier, ptr @args__membarrier, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__membarrier, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__membarrier, i64 20) }, ptr @event_enter__membarrier, ptr @event_exit__membarrier }, align 4
@event_enter__membarrier = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.19 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.20 zeroinitializer, ptr @__syscall_meta__membarrier, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__membarrier = internal global ptr @event_enter__membarrier, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_membarrier\00", [44 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__membarrier = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.19 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.20 zeroinitializer, ptr @__syscall_meta__membarrier, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__membarrier = internal global ptr @event_exit__membarrier, section "_ftrace_events", align 4
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_membarrier\00", [17 x i8] zeroinitializer }, align 32
@types__membarrier = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.3], [20 x i8] zeroinitializer }, align 32
@args__membarrier = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__membarrier = internal global ptr @__syscall_meta__membarrier, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cpu_id\00", [25 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@membarrier_global_expedited.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/sched/membarrier.c\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@sync_runqueues_membarrier_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@membarrier_private_expedited.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@membarrier_private_expedited.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@membarrier_private_expedited.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@membarrier_register_private_expedited.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.membarrier_register_private_expedited = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 16, i32 64], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"event_enter__membarrier\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [23 x i8] c"event_exit__membarrier\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"types__membarrier\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"args__membarrier\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 580, i32 1 }
@___asan_gen_.55 = private constant [29 x i8] c"../kernel/sched/membarrier.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 286, i32 7 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 695, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 108, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 723, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [51 x i8] c"switch.table.membarrier_register_private_expedited\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__event_enter__membarrier, ptr @__event_exit__membarrier, ptr @__p_syscall_meta__membarrier, ptr @__syscall_meta__membarrier, ptr @event_enter__membarrier, ptr @event_exit__membarrier, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__membarrier, ptr @args__membarrier, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @switch.table.membarrier_register_private_expedited], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__membarrier to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__membarrier to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__membarrier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__membarrier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.membarrier_register_private_expedited to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_membarrier = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_membarrier

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @membarrier_exec_mmap(ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  %membarrier_state = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %membarrier_state, i32 noundef 4) #7
  %0 = ptrtoint ptr %membarrier_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %membarrier_state, align 4
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !52
  %2 = tail call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, ptrtoint (ptr getelementptr inbounds (%struct.rq, ptr @runqueues, i32 0, i32 34) to i32)
  %8 = inttoptr i32 %add to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !53
  %and.i.i = and i32 %10, 128
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %do.end31, !prof !54

if.then:                                          ; preds = %entry
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end31

do.end31:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #7, !srcloc !55
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @membarrier_update_current_mm(ptr noundef %next_mm) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #7
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
  %add = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %add to ptr
  %tobool.not = icmp eq ptr %next_mm, null
  br i1 %tobool.not, label %do.end6, label %if.then

if.then:                                          ; preds = %entry
  %membarrier_state2 = getelementptr inbounds %struct.anon, ptr %next_mm, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %membarrier_state2, i32 noundef 4) #7
  %7 = ptrtoint ptr %membarrier_state2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %membarrier_state2, align 4
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %membarrier_state.0 = phi i32 [ %8, %if.then ], [ 0, %entry ]
  %membarrier_state8 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 34
  %9 = ptrtoint ptr %membarrier_state8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %membarrier_state8, align 4
  %cmp = icmp eq i32 %10, %membarrier_state.0
  br i1 %cmp, label %cleanup, label %do.body15

do.body15:                                        ; preds = %do.end6
  %11 = ptrtoint ptr %membarrier_state8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %membarrier_state.0, ptr %membarrier_state8, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body15, %do.end6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_membarrier(i32 noundef %cmd, i32 noundef %flags, i32 noundef %cpu_id) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tmpmask.i.i = alloca ptr, align 4
  %cond.i = icmp eq i32 %cmd, 128
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %entry
  %0 = icmp ugt i32 %flags, 1
  br i1 %0, label %__do_sys_membarrier.exit, label %sw.epilog.thread.i, !prof !54

sw.epilog.thread.i:                               ; preds = %sw.bb.i
  %tobool12.not61.i = icmp eq i32 %flags, 0
  %spec.select5162.i = select i1 %tobool12.not61.i, i32 -1, i32 %cpu_id
  %call40.i = tail call fastcc i32 @membarrier_private_expedited(i32 noundef 2, i32 noundef %spec.select5162.i) #7
  br label %__do_sys_membarrier.exit

sw.default.i:                                     ; preds = %entry
  %tobool3.not.i = icmp eq i32 %flags, 0
  br i1 %tobool3.not.i, label %sw.epilog.i, label %__do_sys_membarrier.exit, !prof !56

sw.epilog.i:                                      ; preds = %sw.default.i
  switch i32 %cmd, label %__do_sys_membarrier.exit [
    i32 0, label %sw.bb15.i
    i32 1, label %sw.bb19.i
    i32 2, label %sw.bb27.i
    i32 4, label %sw.bb29.i
    i32 8, label %sw.bb31.i
    i32 16, label %sw.bb33.i
    i32 32, label %sw.bb35.i
    i32 64, label %sw.bb37.i
    i32 256, label %sw.bb41.i
  ]

sw.bb15.i:                                        ; preds = %sw.epilog.i
  br label %__do_sys_membarrier.exit

sw.bb19.i:                                        ; preds = %sw.epilog.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %1 = load volatile i32, ptr @__num_online_cpus, align 4
  %cmp24.i = icmp ugt i32 %1, 1
  br i1 %cmp24.i, label %if.then25.i, label %__do_sys_membarrier.exit

if.then25.i:                                      ; preds = %sw.bb19.i
  tail call void @synchronize_rcu() #7
  br label %__do_sys_membarrier.exit

sw.bb27.i:                                        ; preds = %sw.epilog.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpmask.i.i) #7
  %2 = ptrtoint ptr %tmpmask.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmpmask.i.i, align 4, !annotation !57
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %3 = load volatile i32, ptr @__num_online_cpus, align 4
  %cmp.i.i = icmp eq i32 %3, 1
  br i1 %cmp.i.i, label %membarrier_global_expedited.exit.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %sw.bb27.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  %call4.i.i = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %tmpmask.i.i, i32 noundef 3264) #7
  br i1 %call4.i.i, label %if.end6.i.i, label %membarrier_global_expedited.exit.i

if.end6.i.i:                                      ; preds = %do.end.i.i
  call void @cpus_read_lock() #7
  %4 = call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !59
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i.i, label %rcu_read_lock.exit.i.i, label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end6.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %rcu_read_lock.exit.i.i, label %land.lhs.true2.i.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %rcu_read_lock.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #7
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i, %land.lhs.true.i.i.i, %if.end6.i.i
  %call783.i.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp884.i.i = icmp ult i32 %call783.i.i, %8
  br i1 %cmp884.i.i, label %for.body.i.i, label %for.end.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i, %rcu_read_lock.exit.i.i
  %call785.i.i = phi i32 [ %call7.i.i, %cleanup.i.i ], [ %call783.i.i, %rcu_read_lock.exit.i.i ]
  %9 = call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu10.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu10.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu10.i.i, align 4
  %cmp11.i.i = icmp eq i32 %call785.i.i, %12
  br i1 %cmp11.i.i, label %cleanup.i.i, label %do.body17.i.i

do.body17.i.i:                                    ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call785.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %14, ptrtoint (ptr @runqueues to i32)
  %15 = inttoptr i32 %add.i.i to ptr
  %membarrier_state.i.i = getelementptr inbounds %struct.rq, ptr %15, i32 0, i32 34
  %16 = ptrtoint ptr %membarrier_state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %membarrier_state.i.i, align 4
  %and.i.i = and i32 %17, 8
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %cleanup.i.i, label %if.end23.i.i

if.end23.i.i:                                     ; preds = %do.body17.i.i
  %curr.i.i = getelementptr inbounds %struct.rq, ptr %15, i32 0, i32 20
  %18 = ptrtoint ptr %curr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %curr.i.i, align 8
  %call38.i.i = call i32 @rcu_read_lock_held() #7
  %tobool39.not.i.i = icmp eq i32 %call38.i.i, 0
  br i1 %tobool39.not.i.i, label %land.lhs.true.i.i, label %do.end47.i.i

land.lhs.true.i.i:                                ; preds = %if.end23.i.i
  %call40.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  %tobool41.not.i.i = icmp eq i32 %call40.i.i, 0
  br i1 %tobool41.not.i.i, label %do.end47.i.i, label %land.lhs.true42.i.i

land.lhs.true42.i.i:                              ; preds = %land.lhs.true.i.i
  %.b71.i.i = load i1, ptr @membarrier_global_expedited.__warned, align 1
  br i1 %.b71.i.i, label %do.end47.i.i, label %if.then44.i.i

if.then44.i.i:                                    ; preds = %land.lhs.true42.i.i
  store i1 true, ptr @membarrier_global_expedited.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 286, ptr noundef nonnull @.str.9) #7
  br label %do.end47.i.i

do.end47.i.i:                                     ; preds = %if.then44.i.i, %land.lhs.true42.i.i, %land.lhs.true.i.i, %if.end23.i.i
  %mm.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 53
  %20 = ptrtoint ptr %mm.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mm.i.i, align 8
  %tobool49.not.i.i = icmp eq ptr %21, null
  br i1 %tobool49.not.i.i, label %cleanup.i.i, label %if.end51.i.i

if.end51.i.i:                                     ; preds = %do.end47.i.i
  %22 = ptrtoint ptr %tmpmask.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tmpmask.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i.i.i = icmp ugt i32 %24, %call785.i.i
  br i1 %cmp.not.i.i.i.i.i, label %__cpumask_set_cpu.exit.i.i, label %land.rhs.i.i.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %if.end51.i.i
  %.b37.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i, label %__cpumask_set_cpu.exit.i.i, label %if.then.i.i.i.i.i, !prof !56

if.then.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %__cpumask_set_cpu.exit.i.i

__cpumask_set_cpu.exit.i.i:                       ; preds = %if.then.i.i.i.i.i, %land.rhs.i.i.i.i.i, %if.end51.i.i
  %rem.i.i.i.i = and i32 %call785.i.i, 31
  %shl.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i
  %div2.i.i.i.i = lshr i32 %call785.i.i, 5
  %add.ptr.i.i.i.i = getelementptr i32, ptr %23, i32 %div2.i.i.i.i
  %25 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %or.i.i.i.i = or i32 %26, %shl.i.i.i.i
  store i32 %or.i.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %__cpumask_set_cpu.exit.i.i, %do.end47.i.i, %do.body17.i.i, %for.body.i.i
  %call7.i.i = call i32 @cpumask_next(i32 noundef %call785.i.i, ptr noundef nonnull @__cpu_online_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %cmp8.i.i = icmp ult i32 %call7.i.i, %27
  br i1 %cmp8.i.i, label %for.body.i.i, label %for.end.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i, %rcu_read_lock.exit.i.i
  %call.i74.i.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i74.i.i, label %rcu_read_unlock.exit.i.i, label %land.lhs.true.i77.i.i

land.lhs.true.i77.i.i:                            ; preds = %for.end.i.i
  %call1.i75.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  %tobool.not.i76.i.i = icmp eq i32 %call1.i75.i.i, 0
  br i1 %tobool.not.i76.i.i, label %rcu_read_unlock.exit.i.i, label %land.lhs.true2.i79.i.i

land.lhs.true2.i79.i.i:                           ; preds = %land.lhs.true.i77.i.i
  %.b4.i78.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i78.i.i, label %rcu_read_unlock.exit.i.i, label %if.then.i80.i.i

if.then.i80.i.i:                                  ; preds = %land.lhs.true2.i79.i.i
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.13) #7
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i80.i.i, %land.lhs.true2.i79.i.i, %land.lhs.true.i77.i.i, %for.end.i.i
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %28 = call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i.i.i81.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i81.i.i to ptr
  %preempt_count.i.i.i.i82.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i82.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i82.i.i, align 4
  %sub.i.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i82.i.i, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %32 = call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !61
  %36 = ptrtoint ptr %tmpmask.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tmpmask.i.i, align 4
  call void @smp_call_function_many(ptr noundef %37, ptr noundef nonnull @ipi_mb, ptr noundef null, i1 noundef zeroext true) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %38 = call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i72.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i72.i.i to ptr
  %preempt_count.i.i73.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i73.i.i, align 4
  %sub.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i73.i.i, align 4
  %42 = ptrtoint ptr %tmpmask.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tmpmask.i.i, align 4
  call void @free_cpumask_var(ptr noundef %43) #7
  call void @cpus_read_unlock() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  br label %membarrier_global_expedited.exit.i

membarrier_global_expedited.exit.i:               ; preds = %rcu_read_unlock.exit.i.i, %do.end.i.i, %sw.bb27.i
  %retval.0.i.i = phi i32 [ 0, %rcu_read_unlock.exit.i.i ], [ 0, %sw.bb27.i ], [ -12, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpmask.i.i) #7
  br label %__do_sys_membarrier.exit

sw.bb29.i:                                        ; preds = %sw.epilog.i
  %44 = tail call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i52.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i52.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i.i, align 8
  %mm1.i.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 53
  %48 = ptrtoint ptr %mm1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mm1.i.i, align 8
  %membarrier_state.i53.i = getelementptr inbounds %struct.anon, ptr %49, i32 0, i32 9
  %call.i.i.i54.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %membarrier_state.i53.i, i32 noundef 4) #7
  %50 = ptrtoint ptr %membarrier_state.i53.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %membarrier_state.i53.i, align 4
  %and.i55.i = and i32 %51, 4
  %tobool.not.i56.i = icmp eq i32 %and.i55.i, 0
  br i1 %tobool.not.i56.i, label %if.end.i.i, label %__do_sys_membarrier.exit

if.end.i.i:                                       ; preds = %sw.bb29.i
  %call.i.i15.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %membarrier_state.i53.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %membarrier_state.i53.i, i32 1, i32 3, i32 1) #7
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %membarrier_state.i53.i, ptr %membarrier_state.i53.i, i32 8, ptr elementtype(i32) %membarrier_state.i53.i) #7, !srcloc !64
  %call4.i57.i = tail call fastcc i32 @sync_runqueues_membarrier_state(ptr noundef %49) #7
  %tobool5.not.i.i = icmp eq i32 %call4.i57.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %__do_sys_membarrier.exit

if.end7.i.i:                                      ; preds = %if.end.i.i
  %call.i.i16.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %membarrier_state.i53.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %membarrier_state.i53.i, i32 1, i32 3, i32 1) #7
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %membarrier_state.i53.i, ptr %membarrier_state.i53.i, i32 4, ptr elementtype(i32) %membarrier_state.i53.i) #7, !srcloc !64
  br label %__do_sys_membarrier.exit

sw.bb31.i:                                        ; preds = %sw.epilog.i
  %call32.i = tail call fastcc i32 @membarrier_private_expedited(i32 noundef 0, i32 noundef -1) #7
  br label %__do_sys_membarrier.exit

sw.bb33.i:                                        ; preds = %sw.epilog.i
  %call34.i = tail call fastcc i32 @membarrier_register_private_expedited(i32 noundef 0) #7
  br label %__do_sys_membarrier.exit

sw.bb35.i:                                        ; preds = %sw.epilog.i
  %call36.i = tail call fastcc i32 @membarrier_private_expedited(i32 noundef 1, i32 noundef -1) #7
  br label %__do_sys_membarrier.exit

sw.bb37.i:                                        ; preds = %sw.epilog.i
  %call38.i = tail call fastcc i32 @membarrier_register_private_expedited(i32 noundef 1) #7
  br label %__do_sys_membarrier.exit

sw.bb41.i:                                        ; preds = %sw.epilog.i
  %call42.i = tail call fastcc i32 @membarrier_register_private_expedited(i32 noundef 2) #7
  br label %__do_sys_membarrier.exit

__do_sys_membarrier.exit:                         ; preds = %sw.bb41.i, %sw.bb37.i, %sw.bb35.i, %sw.bb33.i, %sw.bb31.i, %if.end7.i.i, %if.end.i.i, %sw.bb29.i, %membarrier_global_expedited.exit.i, %if.then25.i, %sw.bb19.i, %sw.bb15.i, %sw.epilog.i, %sw.default.i, %sw.epilog.thread.i, %sw.bb.i
  %retval.0.i = phi i32 [ %call42.i, %sw.bb41.i ], [ %call40.i, %sw.epilog.thread.i ], [ %call38.i, %sw.bb37.i ], [ %call36.i, %sw.bb35.i ], [ %call34.i, %sw.bb33.i ], [ %call32.i, %sw.bb31.i ], [ %retval.0.i.i, %membarrier_global_expedited.exit.i ], [ 511, %sw.bb15.i ], [ -22, %sw.bb.i ], [ -22, %sw.default.i ], [ 0, %if.then25.i ], [ 0, %sw.bb19.i ], [ -22, %sw.epilog.i ], [ 0, %if.end7.i.i ], [ 0, %sw.bb29.i ], [ %call4.i57.i, %if.end.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @membarrier_private_expedited(i32 noundef %flags, i32 noundef %cpu_id) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tmpmask = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpmask) #7
  %0 = ptrtoint ptr %tmpmask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmpmask, align 4, !annotation !57
  %1 = tail call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 53
  %5 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mm1, align 8
  switch i32 %flags, label %land.rhs [
    i32 1, label %if.then
    i32 2, label %if.then5
    i32 0, label %if.end43
  ]

if.then:                                          ; preds = %entry
  %membarrier_state = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %membarrier_state, i32 noundef 4) #7
  %7 = ptrtoint ptr %membarrier_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %membarrier_state, align 4
  %and = and i32 %8, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup174, label %do.end69

if.then5:                                         ; preds = %entry
  %membarrier_state6 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 9
  %call.i.i208 = tail call zeroext i1 @__kasan_check_read(ptr noundef %membarrier_state6, i32 noundef 4) #7
  %9 = ptrtoint ptr %membarrier_state6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %membarrier_state6, align 4
  %and8 = and i32 %10, 64
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %cleanup174, label %land.lhs.true

land.rhs:                                         ; preds = %entry
  %.b207 = load i1, ptr @membarrier_private_expedited.__already_done, align 1
  br i1 %.b207, label %if.end43, label %if.then21, !prof !56

if.then21:                                        ; preds = %land.rhs
  store i1 true, ptr @membarrier_private_expedited.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 331, i32 noundef 9, ptr noundef null) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then21, %land.rhs, %entry
  %membarrier_state51 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 9
  %call.i.i209 = tail call zeroext i1 @__kasan_check_read(ptr noundef %membarrier_state51, i32 noundef 4) #7
  %11 = ptrtoint ptr %membarrier_state51 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %membarrier_state51, align 4
  %and53 = and i32 %12, 1
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %cleanup174, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end43, %if.then5
  %ipi_func.0.ph = phi ptr [ @ipi_rseq, %if.then5 ], [ @ipi_mb, %if.end43 ]
  %mm_users = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 10
  %call.i.i210 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users, i32 noundef 4) #7
  %13 = ptrtoint ptr %mm_users to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %mm_users, align 4
  %cmp61 = icmp eq i32 %14, 1
  br i1 %cmp61, label %cleanup174, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %15 = load volatile i32, ptr @__num_online_cpus, align 4
  %cmp63 = icmp eq i32 %15, 1
  br i1 %cmp63, label %cleanup174, label %do.end69

do.end69:                                         ; preds = %lor.lhs.false, %if.then
  %cmp59.not250 = phi i1 [ false, %lor.lhs.false ], [ true, %if.then ]
  %ipi_func.0248 = phi ptr [ %ipi_func.0.ph, %lor.lhs.false ], [ @ipi_sync_core, %if.then ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  %cmp72 = icmp slt i32 %cpu_id, 0
  br i1 %cmp72, label %land.lhs.true73, label %if.then78

land.lhs.true73:                                  ; preds = %do.end69
  %call74 = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %tmpmask, i32 noundef 3264) #7
  br i1 %call74, label %if.else112, label %cleanup174

if.then78:                                        ; preds = %do.end69
  tail call void @cpus_read_lock() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp79.not = icmp ugt i32 %16, %cpu_id
  br i1 %cmp79.not, label %cpu_online.exit, label %if.end167

cpu_online.exit:                                  ; preds = %if.then78
  %div1.i.i.i = lshr i32 %cpu_id, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i224 = and i32 %cpu_id, 31
  %19 = shl nuw i32 1, %and.i.i.i224
  %20 = and i32 %18, %19
  %tobool.i.not = icmp eq i32 %20, 0
  br i1 %tobool.i.not, label %if.end167, label %if.end83

if.end83:                                         ; preds = %cpu_online.exit
  %21 = tail call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !59
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end83
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %if.end83
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu_id
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %add = add i32 %26, ptrtoint (ptr @runqueues to i32)
  %27 = inttoptr i32 %add to ptr
  %curr = getelementptr inbounds %struct.rq, ptr %27, i32 0, i32 20
  %28 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %curr, align 8
  %call94 = tail call i32 @rcu_read_lock_held() #7
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %land.lhs.true96, label %do.end104

land.lhs.true96:                                  ; preds = %rcu_read_lock.exit
  %call97 = tail call i32 @debug_lockdep_rcu_enabled() #7
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %do.end104, label %land.lhs.true99

land.lhs.true99:                                  ; preds = %land.lhs.true96
  %.b203206 = load i1, ptr @membarrier_private_expedited.__warned, align 1
  br i1 %.b203206, label %do.end104, label %if.then101

if.then101:                                       ; preds = %land.lhs.true99
  store i1 true, ptr @membarrier_private_expedited.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 358, ptr noundef nonnull @.str.9) #7
  br label %do.end104

do.end104:                                        ; preds = %if.then101, %land.lhs.true99, %land.lhs.true96, %rcu_read_lock.exit
  %tobool106.not = icmp eq ptr %29, null
  br i1 %tobool106.not, label %if.then110, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %do.end104
  %mm108 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 53
  %30 = ptrtoint ptr %mm108 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mm108, align 8
  %cmp109.not = icmp eq ptr %31, %6
  br i1 %cmp109.not, label %if.then151, label %if.then110

if.then110:                                       ; preds = %lor.lhs.false107, %do.end104
  %call.i225 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i225, label %rcu_read_unlock.exit, label %land.lhs.true.i228

land.lhs.true.i228:                               ; preds = %if.then110
  %call1.i226 = tail call i32 @debug_lockdep_rcu_enabled() #7
  %tobool.not.i227 = icmp eq i32 %call1.i226, 0
  br i1 %tobool.not.i227, label %rcu_read_unlock.exit, label %land.lhs.true2.i230

land.lhs.true2.i230:                              ; preds = %land.lhs.true.i228
  %.b4.i229 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i229, label %rcu_read_unlock.exit, label %if.then.i231

if.then.i231:                                     ; preds = %land.lhs.true2.i230
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.13) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i231, %land.lhs.true2.i230, %land.lhs.true.i228, %if.then110
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %32 = tail call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i.i.i232 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i232 to ptr
  %preempt_count.i.i.i.i233 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i233 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i233, align 4
  %sub.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i233, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %if.end167

if.else112:                                       ; preds = %land.lhs.true73
  call void @cpus_read_lock() #7
  %36 = call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i.i.i211 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i211 to ptr
  %preempt_count.i.i.i.i212 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i212 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i212, align 4
  %add.i.i.i213 = add i32 %39, 1
  store volatile i32 %add.i.i.i213, ptr %preempt_count.i.i.i.i212, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !59
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i214 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i214, label %rcu_read_lock.exit221, label %land.lhs.true.i217

land.lhs.true.i217:                               ; preds = %if.else112
  %call1.i215 = call i32 @debug_lockdep_rcu_enabled() #7
  %tobool.not.i216 = icmp eq i32 %call1.i215, 0
  br i1 %tobool.not.i216, label %rcu_read_lock.exit221, label %land.lhs.true2.i219

land.lhs.true2.i219:                              ; preds = %land.lhs.true.i217
  %.b4.i218 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i218, label %rcu_read_lock.exit221, label %if.then.i220

if.then.i220:                                     ; preds = %land.lhs.true2.i219
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #7
  br label %rcu_read_lock.exit221

rcu_read_lock.exit221:                            ; preds = %if.then.i220, %land.lhs.true2.i219, %land.lhs.true.i217, %if.else112
  %call113256 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %40 = load i32, ptr @nr_cpu_ids, align 4
  %cmp114257 = icmp ult i32 %call113256, %40
  br i1 %cmp114257, label %for.body, label %for.end

for.body:                                         ; preds = %if.end148, %rcu_read_lock.exit221
  %call113258 = phi i32 [ %call113, %if.end148 ], [ %call113256, %rcu_read_lock.exit221 ]
  %arrayidx127 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call113258
  %41 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx127, align 4
  %add128 = add i32 %42, ptrtoint (ptr @runqueues to i32)
  %43 = inttoptr i32 %add128 to ptr
  %curr129 = getelementptr inbounds %struct.rq, ptr %43, i32 0, i32 20
  %44 = ptrtoint ptr %curr129 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %curr129, align 8
  %call131 = call i32 @rcu_read_lock_held() #7
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %land.lhs.true133, label %do.end141

land.lhs.true133:                                 ; preds = %for.body
  %call134 = call i32 @debug_lockdep_rcu_enabled() #7
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %do.end141, label %land.lhs.true136

land.lhs.true136:                                 ; preds = %land.lhs.true133
  %.b204205 = load i1, ptr @membarrier_private_expedited.__warned.14, align 1
  br i1 %.b204205, label %do.end141, label %if.then138

if.then138:                                       ; preds = %land.lhs.true136
  store i1 true, ptr @membarrier_private_expedited.__warned.14, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 371, ptr noundef nonnull @.str.9) #7
  br label %do.end141

do.end141:                                        ; preds = %if.then138, %land.lhs.true136, %land.lhs.true133, %for.body
  %tobool143.not = icmp eq ptr %45, null
  br i1 %tobool143.not, label %if.end148, label %land.lhs.true144

land.lhs.true144:                                 ; preds = %do.end141
  %mm145 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 53
  %46 = ptrtoint ptr %mm145 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mm145, align 8
  %cmp146 = icmp eq ptr %47, %6
  br i1 %cmp146, label %if.then147, label %if.end148

if.then147:                                       ; preds = %land.lhs.true144
  %48 = ptrtoint ptr %tmpmask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tmpmask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %50 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i = icmp ugt i32 %50, %call113258
  br i1 %cmp.not.i.i.i, label %__cpumask_set_cpu.exit, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then147
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %__cpumask_set_cpu.exit, label %if.then.i.i.i, !prof !56

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %__cpumask_set_cpu.exit

__cpumask_set_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %if.then147
  %rem.i.i = and i32 %call113258, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %call113258, 5
  %add.ptr.i.i = getelementptr i32, ptr %49, i32 %div2.i.i
  %51 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %52, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %if.end148

if.end148:                                        ; preds = %__cpumask_set_cpu.exit, %land.lhs.true144, %do.end141
  %call113 = call i32 @cpumask_next(i32 noundef %call113258, ptr noundef nonnull @__cpu_online_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %53 = load i32, ptr @nr_cpu_ids, align 4
  %cmp114 = icmp ult i32 %call113, %53
  br i1 %cmp114, label %for.body, label %for.end

for.end:                                          ; preds = %if.end148, %rcu_read_lock.exit221
  %call.i234 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i234, label %if.else153, label %land.lhs.true.i237

land.lhs.true.i237:                               ; preds = %for.end
  %call1.i235 = call i32 @debug_lockdep_rcu_enabled() #7
  %tobool.not.i236 = icmp eq i32 %call1.i235, 0
  br i1 %tobool.not.i236, label %if.else153, label %land.lhs.true2.i239

land.lhs.true2.i239:                              ; preds = %land.lhs.true.i237
  %.b4.i238 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i238, label %if.else153, label %if.then.i240

if.then.i240:                                     ; preds = %land.lhs.true2.i239
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.13) #7
  br label %if.else153

if.then151:                                       ; preds = %lor.lhs.false107
  tail call fastcc void @rcu_read_unlock()
  %call152 = tail call i32 @smp_call_function_single(i32 noundef %cpu_id, ptr noundef nonnull %ipi_func.0248, ptr noundef null, i32 noundef 1) #7
  br label %if.end167

if.else153:                                       ; preds = %if.then.i240, %land.lhs.true2.i239, %land.lhs.true.i237, %for.end
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %54 = call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i.i.i241 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i241 to ptr
  %preempt_count.i.i.i.i242 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i242 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i242, align 4
  %sub.i.i.i243 = add i32 %57, -1
  store volatile i32 %sub.i.i.i243, ptr %preempt_count.i.i.i.i242, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br i1 %cmp59.not250, label %if.else162, label %do.body156

do.body156:                                       ; preds = %if.else153
  %58 = call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %61, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !66
  %62 = ptrtoint ptr %tmpmask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tmpmask, align 4
  call void @smp_call_function_many(ptr noundef %63, ptr noundef nonnull %ipi_func.0248, ptr noundef null, i1 noundef zeroext true) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !67
  %64 = call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i222 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i222 to ptr
  %preempt_count.i.i223 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i223 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i223, align 4
  %sub.i = add i32 %67, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i223, align 4
  br label %if.then166

if.else162:                                       ; preds = %if.else153
  %68 = ptrtoint ptr %tmpmask to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tmpmask, align 4
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull %ipi_func.0248, ptr noundef null, i1 noundef zeroext true, ptr noundef %69) #7
  br label %if.then166

if.then166:                                       ; preds = %if.else162, %do.body156
  %70 = ptrtoint ptr %tmpmask to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tmpmask, align 4
  call void @free_cpumask_var(ptr noundef %71) #7
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %if.then151, %rcu_read_unlock.exit, %cpu_online.exit, %if.then78
  call void @cpus_read_unlock() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !68
  br label %cleanup174

cleanup174:                                       ; preds = %if.end167, %land.lhs.true73, %lor.lhs.false, %land.lhs.true, %if.end43, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.end167 ], [ -1, %if.then ], [ -1, %if.then5 ], [ -1, %if.end43 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ], [ -12, %land.lhs.true73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpmask) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @membarrier_register_private_expedited(i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  %6 = icmp ult i32 %flags, 3
  br i1 %6, label %switch.lookup, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b80 = load i1, ptr @membarrier_register_private_expedited.__already_done, align 1
  br i1 %.b80, label %if.end42, label %if.then12, !prof !56

if.then12:                                        ; preds = %land.rhs
  store i1 true, ptr @membarrier_register_private_expedited.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 521, i32 noundef 9, ptr noundef null) #7
  br label %if.end42

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.membarrier_register_private_expedited, i32 0, i32 %flags
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end42

if.end42:                                         ; preds = %switch.lookup, %if.then12, %land.rhs
  %ready_state.0 = phi i32 [ %switch.load, %switch.lookup ], [ 1, %if.then12 ], [ 1, %land.rhs ]
  %membarrier_state = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %membarrier_state, i32 noundef 4) #7
  %8 = ptrtoint ptr %membarrier_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %membarrier_state, align 4
  %and = and i32 %9, %ready_state.0
  %cmp44 = icmp eq i32 %and, %ready_state.0
  br i1 %cmp44, label %cleanup, label %if.end46

if.end46:                                         ; preds = %if.end42
  %and47 = and i32 %flags, 1
  %tobool48.not = icmp eq i32 %and47, 0
  %spec.select = select i1 %tobool48.not, i32 2, i32 34
  %and51 = shl i32 %flags, 6
  %10 = and i32 %and51, 128
  %11 = or i32 %spec.select, %10
  %call.i.i81 = tail call zeroext i1 @__kasan_check_write(ptr noundef %membarrier_state, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %membarrier_state, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %membarrier_state, ptr %membarrier_state, i32 %11, ptr elementtype(i32) %membarrier_state) #7, !srcloc !64
  %call57 = tail call fastcc i32 @sync_runqueues_membarrier_state(ptr noundef %5)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %cleanup

if.end60:                                         ; preds = %if.end46
  %call.i.i82 = tail call zeroext i1 @__kasan_check_write(ptr noundef %membarrier_state, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %membarrier_state, i32 1, i32 3, i32 1) #7
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %membarrier_state, ptr %membarrier_state, i32 %ready_state.0, ptr elementtype(i32) %membarrier_state) #7, !srcloc !64
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.end46, %if.end42
  %retval.0 = phi i32 [ 0, %if.end60 ], [ 0, %if.end42 ], [ %call57, %if.end46 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #5 align 64 {
entry:
  %call = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call, label %do.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %do.end, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.13) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_call_function_many(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipi_mb(ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sync_runqueues_membarrier_state(ptr noundef %mm) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tmpmask = alloca ptr, align 4
  %membarrier_state1 = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %membarrier_state1, i32 noundef 4) #7
  %0 = ptrtoint ptr %membarrier_state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %membarrier_state1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpmask) #7
  %2 = ptrtoint ptr %tmpmask to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmpmask, align 4, !annotation !57
  %mm_users = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 10
  %call.i.i98 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users, i32 noundef 4) #7
  %3 = ptrtoint ptr %mm_users to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %mm_users, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %do.body5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %5 = load volatile i32, ptr @__num_online_cpus, align 4
  %cmp4 = icmp eq i32 %5, 1
  br i1 %cmp4, label %do.body5, label %if.end49

do.body5:                                         ; preds = %lor.lhs.false, %entry
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !52
  %7 = tail call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu20 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu20, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, ptrtoint (ptr getelementptr inbounds (%struct.rq, ptr @runqueues, i32 0, i32 34) to i32)
  %13 = inttoptr i32 %add to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %1, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !53
  %and.i.i = and i32 %15, 128
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then34, label %do.end36, !prof !54

if.then34:                                        ; preds = %do.body5
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end36

do.end36:                                         ; preds = %if.then34, %do.body5
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !70
  br label %cleanup

if.end49:                                         ; preds = %lor.lhs.false
  %call50 = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %tmpmask, i32 noundef 3264) #7
  br i1 %call50, label %if.end52, label %cleanup

if.end52:                                         ; preds = %if.end49
  call void @synchronize_rcu() #7
  call void @cpus_read_lock() #7
  %16 = call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !59
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end52
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #7
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %if.end52
  %call53108 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp54109 = icmp ult i32 %call53108, %20
  br i1 %cmp54109, label %for.body, label %for.end

for.body:                                         ; preds = %if.end87, %rcu_read_lock.exit
  %call53110 = phi i32 [ %call53, %if.end87 ], [ %call53108, %rcu_read_lock.exit ]
  %arrayidx63 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call53110
  %21 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx63, align 4
  %add64 = add i32 %22, ptrtoint (ptr @runqueues to i32)
  %23 = inttoptr i32 %add64 to ptr
  %curr = getelementptr inbounds %struct.rq, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %curr, align 8
  %call70 = call i32 @rcu_read_lock_held() #7
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %land.lhs.true, label %do.end79

land.lhs.true:                                    ; preds = %for.body
  %call72 = call i32 @debug_lockdep_rcu_enabled() #7
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %do.end79, label %land.lhs.true74

land.lhs.true74:                                  ; preds = %land.lhs.true
  %.b97 = load i1, ptr @sync_runqueues_membarrier_state.__warned, align 1
  br i1 %.b97, label %do.end79, label %if.then76

if.then76:                                        ; preds = %land.lhs.true74
  store i1 true, ptr @sync_runqueues_membarrier_state.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 469, ptr noundef nonnull @.str.9) #7
  br label %do.end79

do.end79:                                         ; preds = %if.then76, %land.lhs.true74, %land.lhs.true, %for.body
  %tobool81.not = icmp eq ptr %25, null
  br i1 %tobool81.not, label %if.end87, label %land.lhs.true82

land.lhs.true82:                                  ; preds = %do.end79
  %mm83 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 53
  %26 = ptrtoint ptr %mm83 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mm83, align 8
  %cmp84 = icmp eq ptr %27, %mm
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %land.lhs.true82
  %28 = ptrtoint ptr %tmpmask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tmpmask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %30 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.not.i.i.i = icmp ugt i32 %30, %call53110
  br i1 %cmp.not.i.i.i, label %__cpumask_set_cpu.exit, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then86
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %__cpumask_set_cpu.exit, label %if.then.i.i.i, !prof !56

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %__cpumask_set_cpu.exit

__cpumask_set_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i, %if.then86
  %rem.i.i = and i32 %call53110, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %call53110, 5
  %add.ptr.i.i = getelementptr i32, ptr %29, i32 %div2.i.i
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %32, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %if.end87

if.end87:                                         ; preds = %__cpumask_set_cpu.exit, %land.lhs.true82, %do.end79
  %call53 = call i32 @cpumask_next(i32 noundef %call53110, ptr noundef nonnull @__cpu_online_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %33 = load i32, ptr @nr_cpu_ids, align 4
  %cmp54 = icmp ult i32 %call53, %33
  br i1 %cmp54, label %for.body, label %for.end

for.end:                                          ; preds = %if.end87, %rcu_read_lock.exit
  %call.i99 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i99, label %rcu_read_unlock.exit, label %land.lhs.true.i102

land.lhs.true.i102:                               ; preds = %for.end
  %call1.i100 = call i32 @debug_lockdep_rcu_enabled() #7
  %tobool.not.i101 = icmp eq i32 %call1.i100, 0
  br i1 %tobool.not.i101, label %rcu_read_unlock.exit, label %land.lhs.true2.i104

land.lhs.true2.i104:                              ; preds = %land.lhs.true.i102
  %.b4.i103 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i103, label %rcu_read_unlock.exit, label %if.then.i105

if.then.i105:                                     ; preds = %land.lhs.true2.i104
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.13) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i105, %land.lhs.true2.i104, %land.lhs.true.i102, %for.end
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !60
  %34 = call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i.i.i106 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i106 to ptr
  %preempt_count.i.i.i.i107 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i107, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i107, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %38 = ptrtoint ptr %tmpmask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tmpmask, align 4
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @ipi_sync_rq_state, ptr noundef %mm, i1 noundef zeroext true, ptr noundef %39) #7
  %40 = ptrtoint ptr %tmpmask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tmpmask, align 4
  call void @free_cpumask_var(ptr noundef %41) #7
  call void @cpus_read_unlock() #7
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end49, %do.end36
  %retval.0 = phi i32 [ 0, %do.end36 ], [ 0, %rcu_read_unlock.exit ], [ -12, %if.end49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpmask) #7
  ret i32 %retval.0
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipi_sync_rq_state(ptr noundef %info) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  %cmp.not = icmp eq ptr %5, %info
  br i1 %cmp.not, label %do.body2, label %cleanup

do.body2:                                         ; preds = %entry
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !52
  %membarrier_state = getelementptr inbounds %struct.anon, ptr %info, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %membarrier_state, i32 noundef 4) #7
  %7 = ptrtoint ptr %membarrier_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %membarrier_state, align 4
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, ptrtoint (ptr getelementptr inbounds (%struct.rq, ptr @runqueues, i32 0, i32 34) to i32)
  %13 = inttoptr i32 %add to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %8, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !53
  %and.i.i = and i32 %15, 128
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then31, label %do.end34, !prof !54

if.then31:                                        ; preds = %do.body2
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %do.body2
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !71
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipi_sync_core(ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !72
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipi_rseq(ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !73
  %0 = tail call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %rseq_event_mask.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 176
  %4 = ptrtoint ptr %rseq_event_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rseq_event_mask.i, align 4
  %or.i.i = or i32 %5, 1
  store i32 %or.i.i, ptr %rseq_event_mask.i, align 4
  %rseq.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 174
  %6 = ptrtoint ptr %rseq.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rseq.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %rseq_preempt.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack.i.i.i, align 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %9) #7
  br label %rseq_preempt.exit

rseq_preempt.exit:                                ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !33, !35, !37, !39}
!llvm.named.register.sp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/sched/membarrier.c", i32 580, i32 1}
!2 = !{ptr @event_enter__membarrier, !1, !"event_enter__membarrier", i1 false, i1 false}
!3 = !{ptr @__event_enter__membarrier, !1, !"__event_enter__membarrier", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__membarrier, !1, !"event_exit__membarrier", i1 false, i1 false}
!6 = !{ptr @__event_exit__membarrier, !1, !"__event_exit__membarrier", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__membarrier, !1, !"__syscall_meta__membarrier", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__membarrier, !1, !"__p_syscall_meta__membarrier", i1 false, i1 false}
!10 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @types__membarrier, !1, !"types__membarrier", i1 false, i1 false}
!13 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @args__membarrier, !1, !"args__membarrier", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../kernel/sched/membarrier.c", i32 286, i32 7}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../kernel/sched/membarrier.c", i32 469, i32 7}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../kernel/sched/membarrier.c", i32 331, i32 3}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../kernel/sched/membarrier.c", i32 358, i32 7}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../kernel/sched/membarrier.c", i32 371, i32 8}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../kernel/sched/membarrier.c", i32 521, i32 3}
!41 = !{!"sp"}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2158463350}
!52 = !{i64 913915, i64 913976}
!53 = !{i64 916647}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i64 916932}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{!"auto-init"}
!58 = !{i64 2158479013}
!59 = !{i64 2149347171}
!60 = !{i64 2149347437}
!61 = !{i64 2158516261}
!62 = !{i64 2158516370}
!63 = !{i64 2158516524}
!64 = !{i64 2148527795, i64 2148527821, i64 2148527850, i64 2148527884, i64 2148527915, i64 2148527938}
!65 = !{i64 2158518796}
!66 = !{i64 2158560262}
!67 = !{i64 2158560371}
!68 = !{i64 2158560537}
!69 = !{i64 2158452827}
!70 = !{i64 2158570210}
!71 = !{i64 2158463198}
!72 = !{i64 2158452979}
!73 = !{i64 2158453131}
