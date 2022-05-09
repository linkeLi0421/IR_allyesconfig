; ModuleID = '/llk/IR_all_yes/block/ioprio.c_pt.bc'
source_filename = "../block/ioprio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon, %struct.trace_event, ptr, ptr, %union.anon.3, ptr, i32, i32, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.3 = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.62, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%union.anon.62 = type { %struct.callback_head }
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
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.43 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.43 = type { %struct.callback_head }
%struct.io_context = type { %struct.atomic_t, %struct.atomic_t, i16, %struct.spinlock, %struct.xarray, ptr, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_ioprio_set\00", [43 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__ioprio_set = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 3, ptr @types__ioprio_set, ptr @args__ioprio_set, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__ioprio_set, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__ioprio_set, i64 20) }, ptr @event_enter__ioprio_set, ptr @event_exit__ioprio_set }, align 4
@event_enter__ioprio_set = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__ioprio_set, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__ioprio_set = internal global ptr @event_enter__ioprio_set, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_ioprio_set\00", [44 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__ioprio_set = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__ioprio_set, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__ioprio_set = internal global ptr @event_exit__ioprio_set, section "_ftrace_events", align 4
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_ioprio_set\00", [17 x i8] zeroinitializer }, align 32
@types__ioprio_set = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.6, ptr @.str.6, ptr @.str.6], [20 x i8] zeroinitializer }, align 32
@args__ioprio_set = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__ioprio_set = internal global ptr @__syscall_meta__ioprio_set, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_ioprio_get\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__ioprio_get = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 2, ptr @types__ioprio_get, ptr @args__ioprio_get, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__ioprio_get, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__ioprio_get, i64 20) }, ptr @event_enter__ioprio_get, ptr @event_exit__ioprio_get }, align 4
@event_enter__ioprio_get = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__ioprio_get, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__ioprio_get = internal global ptr @event_enter__ioprio_get, section "_ftrace_events", align 4
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_ioprio_get\00", [44 x i8] zeroinitializer }, align 32
@event_exit__ioprio_get = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__ioprio_get, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__ioprio_get = internal global ptr @event_exit__ioprio_get, section "_ftrace_events", align 4
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_ioprio_get\00", [17 x i8] zeroinitializer }, align 32
@types__ioprio_get = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.6, ptr @.str.6], [24 x i8] zeroinitializer }, align 32
@args__ioprio_get = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.7, ptr @.str.8], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__ioprio_get = internal global ptr @__syscall_meta__ioprio_get, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"which\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"who\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ioprio\00", [25 x i8] zeroinitializer }, align 32
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@__do_sys_ioprio_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"block/ioprio.c\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__do_sys_ioprio_set.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@init_task = external dso_local global %struct.task_struct, align 128
@__do_sys_ioprio_set.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__do_sys_ioprio_set.__warned.16 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__do_sys_ioprio_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__do_sys_ioprio_get.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__do_sys_ioprio_get.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__do_sys_ioprio_get.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.32 = private unnamed_addr constant [24 x i8] c"event_enter__ioprio_set\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [23 x i8] c"event_exit__ioprio_set\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"types__ioprio_set\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"args__ioprio_set\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [24 x i8] c"event_enter__ioprio_get\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [23 x i8] c"event_exit__ioprio_get\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"types__ioprio_get\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"args__ioprio_get\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 167, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 68, i32 1 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 98, i32 4 }
@___asan_gen_.90 = private constant [18 x i8] c"../block/ioprio.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 121, i32 17 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 695, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 723, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__event_enter__ioprio_get, ptr @__event_enter__ioprio_set, ptr @__event_exit__ioprio_get, ptr @__event_exit__ioprio_set, ptr @__p_syscall_meta__ioprio_get, ptr @__p_syscall_meta__ioprio_set, ptr @__syscall_meta__ioprio_get, ptr @__syscall_meta__ioprio_set, ptr @event_enter__ioprio_get, ptr @event_enter__ioprio_set, ptr @event_exit__ioprio_get, ptr @event_exit__ioprio_set, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__ioprio_set, ptr @args__ioprio_set, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__ioprio_get, ptr @args__ioprio_get, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__ioprio_set to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__ioprio_set to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__ioprio_set to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__ioprio_set to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__ioprio_get to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__ioprio_get to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__ioprio_get to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__ioprio_get to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_ioprio_set = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_ioprio_set
@sys_ioprio_get = dso_local alias i32 (i32, i32), ptr @__se_sys_ioprio_get

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ioprio_check_cap(i32 noundef %ioprio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %ioprio, 13
  %and = and i32 %0, 7
  %and1 = and i32 %ioprio, 8191
  %1 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.bb3_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge
    i32 0, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %call, label %sw.bb.sw.bb3_crit_edge, label %land.lhs.true

sw.bb.sw.bb3_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

land.lhs.true:                                    ; preds = %sw.bb
  %call2 = tail call zeroext i1 @capable(i32 noundef 23) #6
  br i1 %call2, label %land.lhs.true.sw.bb3_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.sw.bb3_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

sw.bb3:                                           ; preds = %land.lhs.true.sw.bb3_crit_edge, %sw.bb.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and1)
  %cmp = icmp ugt i32 %and1, 7
  br i1 %cmp, label %sw.bb3.cleanup_crit_edge, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %sw.bb7.sw.epilog_crit_edge, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb7.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_ioprio_set(i32 noundef %which, i32 noundef %who, i32 noundef %ioprio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %ioprio, 13
  %and.i.i = and i32 %0, 7
  %and1.i.i = and i32 %ioprio, 8191
  %1 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %and.i.i, label %entry.__do_sys_ioprio_set.exit_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %entry.sw.bb3.i.i_crit_edge
    i32 3, label %entry.if.end.i_crit_edge
    i32 0, label %sw.bb7.i.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

entry.sw.bb3.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i.i

entry.__do_sys_ioprio_set.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_ioprio_set.exit

sw.bb.i.i:                                        ; preds = %entry
  %call.i282.i = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %call.i282.i, label %sw.bb.i.i.sw.bb3.i.i_crit_edge, label %land.lhs.true.i283.i

sw.bb.i.i.sw.bb3.i.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i.i

land.lhs.true.i283.i:                             ; preds = %sw.bb.i.i
  %call2.i.i = tail call zeroext i1 @capable(i32 noundef 23) #6
  br i1 %call2.i.i, label %land.lhs.true.i283.i.sw.bb3.i.i_crit_edge, label %land.lhs.true.i283.i.__do_sys_ioprio_set.exit_crit_edge

land.lhs.true.i283.i.__do_sys_ioprio_set.exit_crit_edge: ; preds = %land.lhs.true.i283.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_ioprio_set.exit

land.lhs.true.i283.i.sw.bb3.i.i_crit_edge:        ; preds = %land.lhs.true.i283.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i.i

sw.bb3.i.i:                                       ; preds = %land.lhs.true.i283.i.sw.bb3.i.i_crit_edge, %sw.bb.i.i.sw.bb3.i.i_crit_edge, %entry.sw.bb3.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and1.i.i)
  %cmp.i.i = icmp ugt i32 %and1.i.i, 7
  br i1 %cmp.i.i, label %sw.bb3.i.i.__do_sys_ioprio_set.exit_crit_edge, label %sw.bb3.i.i.if.end.i_crit_edge

sw.bb3.i.i.if.end.i_crit_edge:                    ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

sw.bb3.i.i.__do_sys_ioprio_set.exit_crit_edge:    ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_ioprio_set.exit

sw.bb7.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i284.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i284.i, label %sw.bb7.i.i.if.end.i_crit_edge, label %sw.bb7.i.i.__do_sys_ioprio_set.exit_crit_edge

sw.bb7.i.i.__do_sys_ioprio_set.exit_crit_edge:    ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_ioprio_set.exit

sw.bb7.i.i.if.end.i_crit_edge:                    ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %sw.bb7.i.i.if.end.i_crit_edge, %sw.bb3.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !60) #6
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !70
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #6
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %6 = zext i32 %which to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %which, label %rcu_read_lock.exit.i.out.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb10.i
    i32 3, label %sw.bb96.i
  ]

rcu_read_lock.exit.i.out.i_crit_edge:             ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

sw.bb.i:                                          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %who)
  %tobool1.not.i = icmp eq i32 %who, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i32 @llvm.read_register.i32(metadata !60) #6
  %and.i285.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i285.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  br label %if.end5.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call ptr @find_task_by_vpid(i32 noundef %who) #6
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %if.then2.i
  %p.0.i = phi ptr [ %call4.i, %if.else.i ], [ %10, %if.then2.i ]
  %tobool6.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool6.not.i, label %if.end5.i.out.i_crit_edge, label %if.then7.i

if.end5.i.out.i_crit_edge:                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = tail call i32 @set_task_ioprio(ptr noundef nonnull %p.0.i, i32 noundef %ioprio) #6
  br label %out.i

sw.bb10.i:                                        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %who)
  %tobool11.not.i = icmp eq i32 %who, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.else16.i

if.then12.i:                                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = tail call i32 @llvm.read_register.i32(metadata !60) #6
  %and.i286.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i286.i to ptr
  %task14.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task14.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 111
  %15 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %16, i32 0, i32 22, i32 2
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i, align 8
  br label %if.end18.i

if.else16.i:                                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #8
  %call17.i = tail call ptr @find_vpid(i32 noundef %who) #6
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else16.i, %if.then12.i
  %pgrp.0.i = phi ptr [ %call17.i, %if.else16.i ], [ %18, %if.then12.i ]
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #6
  %cmp.not.i = icmp eq ptr %pgrp.0.i, null
  br i1 %cmp.not.i, label %if.end18.i.do.end95.i_crit_edge, label %do.body20.i

if.end18.i.do.end95.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end95.i

do.body20.i:                                      ; preds = %if.end18.i
  %call21.i = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true.i, label %do.body20.i.do.end.i_crit_edge

do.body20.i.do.end.i_crit_edge:                   ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body20.i
  %call23.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true25.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true25.i:                                ; preds = %land.lhs.true.i
  %.b269.i = load i1, ptr @__do_sys_ioprio_set.__warned, align 1
  br i1 %.b269.i, label %land.lhs.true25.i.do.end.i_crit_edge, label %if.then27.i

land.lhs.true25.i.do.end.i_crit_edge:             ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then27.i:                                      ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__do_sys_ioprio_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 98, ptr noundef nonnull @.str.11) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then27.i, %land.lhs.true25.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body20.i.do.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.pid, ptr %pgrp.0.i, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool34.not.i = icmp eq ptr %20, null
  %add.ptr.i = getelementptr i8, ptr %20, i32 -1380
  %tobool36.not342348.i = icmp eq ptr %add.ptr.i, null
  %tobool36.not342.i = or i1 %tobool34.not.i, %tobool36.not342348.i
  br i1 %tobool36.not342.i, label %do.end.i.do.end95.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.do.end95.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end95.i

for.body.i:                                       ; preds = %for.inc74.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %p.1344.i = phi ptr [ %add.ptr88.i, %for.inc74.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %ret.0343.i = phi i32 [ %ret.1.lcssa.i, %for.inc74.i.for.body.i_crit_edge ], [ -3, %do.end.i.for.body.i_crit_edge ]
  %call38.i = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %land.lhs.true40.i, label %for.body.i.do.end48.i_crit_edge

for.body.i.do.end48.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48.i

land.lhs.true40.i:                                ; preds = %for.body.i
  %call41.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %land.lhs.true40.i.do.end48.i_crit_edge, label %land.lhs.true43.i

land.lhs.true40.i.do.end48.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48.i

land.lhs.true43.i:                                ; preds = %land.lhs.true40.i
  %.b262268.i = load i1, ptr @__do_sys_ioprio_set.__warned.12, align 1
  br i1 %.b262268.i, label %land.lhs.true43.i.do.end48.i_crit_edge, label %if.then45.i

land.lhs.true43.i.do.end48.i_crit_edge:           ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end48.i

if.then45.i:                                      ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__do_sys_ioprio_set.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 98, ptr noundef nonnull @.str.11) #6
  br label %do.end48.i

do.end48.i:                                       ; preds = %if.then45.i, %land.lhs.true43.i.do.end48.i_crit_edge, %land.lhs.true40.i.do.end48.i_crit_edge, %for.body.i.do.end48.i_crit_edge
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %p.1344.i, i32 0, i32 111
  %21 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %signal.i, align 16
  %thread_head.i = getelementptr inbounds %struct.signal_struct, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %thread_head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn267337.i = load volatile ptr, ptr %thread_head.i, align 4
  %cmp59.not339.i = icmp eq ptr %.pn267337.i, %thread_head.i
  br i1 %cmp59.not339.i, label %do.end48.i.for.inc74.i_crit_edge, label %do.end48.i.for.body60.i_crit_edge

do.end48.i.for.body60.i_crit_edge:                ; preds = %do.end48.i
  br label %for.body60.i

do.end48.i.for.inc74.i_crit_edge:                 ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc74.i

for.cond56.i:                                     ; preds = %for.body60.i
  %24 = ptrtoint ptr %.pn267340.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn267.i = load volatile ptr, ptr %.pn267340.i, align 4
  %25 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %signal.i, align 16
  %thread_head58.i = getelementptr inbounds %struct.signal_struct, ptr %26, i32 0, i32 3
  %cmp59.not.i = icmp eq ptr %.pn267.i, %thread_head58.i
  br i1 %cmp59.not.i, label %for.cond56.i.for.inc74.i_crit_edge, label %for.cond56.i.for.body60.i_crit_edge

for.cond56.i.for.body60.i_crit_edge:              ; preds = %for.cond56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body60.i

for.cond56.i.for.inc74.i_crit_edge:               ; preds = %for.cond56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc74.i

for.body60.i:                                     ; preds = %for.cond56.i.for.body60.i_crit_edge, %do.end48.i.for.body60.i_crit_edge
  %.pn267340.i = phi ptr [ %.pn267.i, %for.cond56.i.for.body60.i_crit_edge ], [ %.pn267337.i, %do.end48.i.for.body60.i_crit_edge ]
  %p.2.i = getelementptr i8, ptr %.pn267340.i, i32 -1404
  %call61.i = tail call i32 @set_task_ioprio(ptr noundef %p.2.i, i32 noundef %ioprio) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %for.cond56.i, label %cleanup.i

cleanup.i:                                        ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #6
  br label %out.i

for.inc74.i:                                      ; preds = %for.cond56.i.for.inc74.i_crit_edge, %do.end48.i.for.inc74.i_crit_edge
  %ret.1.lcssa.i = phi i32 [ %ret.0343.i, %do.end48.i.for.inc74.i_crit_edge ], [ 0, %for.cond56.i.for.inc74.i_crit_edge ]
  %arrayidx80.i = getelementptr %struct.task_struct, ptr %p.1344.i, i32 0, i32 79, i32 2
  %27 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %arrayidx80.i, align 4
  %tobool84.not.i = icmp eq ptr %28, null
  %add.ptr88.i = getelementptr i8, ptr %28, i32 -1380
  %tobool36.not351.i = icmp eq ptr %add.ptr88.i, null
  %tobool36.not.i = or i1 %tobool84.not.i, %tobool36.not351.i
  br i1 %tobool36.not.i, label %for.inc74.i.do.end95.i_crit_edge, label %for.inc74.i.for.body.i_crit_edge

for.inc74.i.for.body.i_crit_edge:                 ; preds = %for.inc74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc74.i.do.end95.i_crit_edge:                 ; preds = %for.inc74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end95.i

do.end95.i:                                       ; preds = %for.inc74.i.do.end95.i_crit_edge, %do.end.i.do.end95.i_crit_edge, %if.end18.i.do.end95.i_crit_edge
  %ret.3.i = phi i32 [ -3, %if.end18.i.do.end95.i_crit_edge ], [ -3, %do.end.i.do.end95.i_crit_edge ], [ %ret.1.lcssa.i, %for.inc74.i.do.end95.i_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #6
  br label %out.i

sw.bb96.i:                                        ; preds = %rcu_read_lock.exit.i
  %29 = tail call i32 @llvm.read_register.i32(metadata !60) #6
  %and.i287.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i287.i to ptr
  %task104.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task104.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task104.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 99
  %33 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cred.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %34, i32 0, i32 25
  %35 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %user_ns.i, align 4
  %call105.i = tail call i32 @make_kuid(ptr noundef %36, i32 noundef %who) #6
  %.fca.0.insert227.i = insertvalue [1 x i32] poison, i32 %call105.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call105.i)
  %cmp.i288.not.i = icmp eq i32 %call105.i, -1
  br i1 %cmp.i288.not.i, label %sw.bb96.i.out.i_crit_edge, label %if.end109.i

sw.bb96.i.out.i_crit_edge:                        ; preds = %sw.bb96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end109.i:                                      ; preds = %sw.bb96.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %who)
  %tobool110.not.i = icmp eq i32 %who, 0
  br i1 %tobool110.not.i, label %do.end115.i, label %if.else121.i

do.end115.i:                                      ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %task104.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task104.i, align 8
  %cred119.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 99
  %39 = ptrtoint ptr %cred119.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cred119.i, align 16
  %user120.i = getelementptr inbounds %struct.cred, ptr %40, i32 0, i32 24
  %41 = ptrtoint ptr %user120.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %user120.i, align 4
  br label %if.end124.i

if.else121.i:                                     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #8
  %call123.i = tail call ptr @find_user([1 x i32] %.fca.0.insert227.i) #6
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.else121.i, %do.end115.i
  %user.0.i = phi ptr [ %call123.i, %if.else121.i ], [ %42, %do.end115.i ]
  %tobool125.not.i = icmp eq ptr %user.0.i, null
  br i1 %tobool125.not.i, label %if.end124.i.out.i_crit_edge, label %for.cond128.preheader.i

if.end124.i.out.i_crit_edge:                      ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

for.cond128.preheader.i:                          ; preds = %if.end124.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %43 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr137332.i = getelementptr i8, ptr %43, i32 -1136
  %cmp138.not333.i = icmp eq ptr %add.ptr137332.i, @init_task
  br i1 %cmp138.not333.i, label %for.cond128.preheader.i.free_uid.i_crit_edge, label %for.cond128.preheader.i.do.body140.i_crit_edge

for.cond128.preheader.i.do.body140.i_crit_edge:   ; preds = %for.cond128.preheader.i
  br label %do.body140.i

for.cond128.preheader.i.free_uid.i_crit_edge:     ; preds = %for.cond128.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_uid.i

for.cond128.loopexit.i:                           ; preds = %for.inc197.i.for.cond128.loopexit.i_crit_edge, %do.end151.i.for.cond128.loopexit.i_crit_edge
  %ret.5.lcssa.i = phi i32 [ %ret.4334.i, %do.end151.i.for.cond128.loopexit.i_crit_edge ], [ %ret.6.i, %for.inc197.i.for.cond128.loopexit.i_crit_edge ]
  %44 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %46, align 16
  %add.ptr137.i = getelementptr i8, ptr %45, i32 -1136
  %cmp138.not.i = icmp eq ptr %add.ptr137.i, @init_task
  br i1 %cmp138.not.i, label %for.cond128.loopexit.i.free_uid.i_crit_edge, label %for.cond128.loopexit.i.do.body140.i_crit_edge

for.cond128.loopexit.i.do.body140.i_crit_edge:    ; preds = %for.cond128.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body140.i

for.cond128.loopexit.i.free_uid.i_crit_edge:      ; preds = %for.cond128.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_uid.i

do.body140.i:                                     ; preds = %for.cond128.loopexit.i.do.body140.i_crit_edge, %for.cond128.preheader.i.do.body140.i_crit_edge
  %46 = phi ptr [ %45, %for.cond128.loopexit.i.do.body140.i_crit_edge ], [ %43, %for.cond128.preheader.i.do.body140.i_crit_edge ]
  %ret.4334.i = phi i32 [ %ret.5.lcssa.i, %for.cond128.loopexit.i.do.body140.i_crit_edge ], [ -3, %for.cond128.preheader.i.do.body140.i_crit_edge ]
  %call141.i = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141.i)
  %tobool142.not.i = icmp eq i32 %call141.i, 0
  br i1 %tobool142.not.i, label %land.lhs.true143.i, label %do.body140.i.do.end151.i_crit_edge

do.body140.i.do.end151.i_crit_edge:               ; preds = %do.body140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end151.i

land.lhs.true143.i:                               ; preds = %do.body140.i
  %call144.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144.i)
  %tobool145.not.i = icmp eq i32 %call144.i, 0
  br i1 %tobool145.not.i, label %land.lhs.true143.i.do.end151.i_crit_edge, label %land.lhs.true146.i

land.lhs.true143.i.do.end151.i_crit_edge:         ; preds = %land.lhs.true143.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end151.i

land.lhs.true146.i:                               ; preds = %land.lhs.true143.i
  %.b263266.i = load i1, ptr @__do_sys_ioprio_set.__warned.15, align 1
  br i1 %.b263266.i, label %land.lhs.true146.i.do.end151.i_crit_edge, label %if.then148.i

land.lhs.true146.i.do.end151.i_crit_edge:         ; preds = %land.lhs.true146.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end151.i

if.then148.i:                                     ; preds = %land.lhs.true146.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__do_sys_ioprio_set.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 120, ptr noundef nonnull @.str.11) #6
  br label %do.end151.i

do.end151.i:                                      ; preds = %if.then148.i, %land.lhs.true146.i.do.end151.i_crit_edge, %land.lhs.true143.i.do.end151.i_crit_edge, %do.body140.i.do.end151.i_crit_edge
  %signal157.i = getelementptr i8, ptr %46, i32 544
  %47 = ptrtoint ptr %signal157.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %signal157.i, align 16
  %thread_head158.i = getelementptr inbounds %struct.signal_struct, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %thread_head158.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn325.i = load volatile ptr, ptr %thread_head158.i, align 4
  %cmp166.not328.i = icmp eq ptr %.pn325.i, %thread_head158.i
  br i1 %cmp166.not328.i, label %do.end151.i.for.cond128.loopexit.i_crit_edge, label %do.end151.i.for.body167.i_crit_edge

do.end151.i.for.body167.i_crit_edge:              ; preds = %do.end151.i
  br label %for.body167.i

do.end151.i.for.cond128.loopexit.i_crit_edge:     ; preds = %do.end151.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond128.loopexit.i

for.body167.i:                                    ; preds = %for.inc197.i.for.body167.i_crit_edge, %do.end151.i.for.body167.i_crit_edge
  %.pn330.i = phi ptr [ %.pn.i, %for.inc197.i.for.body167.i_crit_edge ], [ %.pn325.i, %do.end151.i.for.body167.i_crit_edge ]
  %ret.5329.i = phi i32 [ %ret.6.i, %for.inc197.i.for.body167.i_crit_edge ], [ %ret.4334.i, %do.end151.i.for.body167.i_crit_edge ]
  %p.4331.i = getelementptr i8, ptr %.pn330.i, i32 -1404
  %50 = tail call i32 @llvm.read_register.i32(metadata !60) #6
  %and.i.i.i.i.i271.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i271.i to ptr
  %preempt_count.i.i.i.i272.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i272.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i272.i, align 4
  %add.i.i.i273.i = add i32 %53, 1
  store volatile i32 %add.i.i.i273.i, ptr %preempt_count.i.i.i.i272.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !70
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i274.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i274.i, label %for.body167.i.rcu_read_lock.exit281.i_crit_edge, label %land.lhs.true.i277.i

for.body167.i.rcu_read_lock.exit281.i_crit_edge:  ; preds = %for.body167.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit281.i

land.lhs.true.i277.i:                             ; preds = %for.body167.i
  %call1.i275.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i275.i)
  %tobool.not.i276.i = icmp eq i32 %call1.i275.i, 0
  br i1 %tobool.not.i276.i, label %land.lhs.true.i277.i.rcu_read_lock.exit281.i_crit_edge, label %land.lhs.true2.i279.i

land.lhs.true.i277.i.rcu_read_lock.exit281.i_crit_edge: ; preds = %land.lhs.true.i277.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit281.i

land.lhs.true2.i279.i:                            ; preds = %land.lhs.true.i277.i
  %.b4.i278.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i278.i, label %land.lhs.true2.i279.i.rcu_read_lock.exit281.i_crit_edge, label %if.then.i280.i

land.lhs.true2.i279.i.rcu_read_lock.exit281.i_crit_edge: ; preds = %land.lhs.true2.i279.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit281.i

if.then.i280.i:                                   ; preds = %land.lhs.true2.i279.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #6
  br label %rcu_read_lock.exit281.i

rcu_read_lock.exit281.i:                          ; preds = %if.then.i280.i, %land.lhs.true2.i279.i.rcu_read_lock.exit281.i_crit_edge, %land.lhs.true.i277.i.rcu_read_lock.exit281.i_crit_edge, %for.body167.i.rcu_read_lock.exit281.i_crit_edge
  %real_cred.i = getelementptr i8, ptr %.pn330.i, i32 208
  %54 = ptrtoint ptr %real_cred.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %real_cred.i, align 4
  %call173.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173.i)
  %tobool174.not.i = icmp eq i32 %call173.i, 0
  br i1 %tobool174.not.i, label %land.lhs.true175.i, label %rcu_read_lock.exit281.i.do.end183.i_crit_edge

rcu_read_lock.exit281.i.do.end183.i_crit_edge:    ; preds = %rcu_read_lock.exit281.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end183.i

land.lhs.true175.i:                               ; preds = %rcu_read_lock.exit281.i
  %call176.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176.i)
  %tobool177.not.i = icmp eq i32 %call176.i, 0
  br i1 %tobool177.not.i, label %land.lhs.true175.i.do.end183.i_crit_edge, label %land.lhs.true178.i

land.lhs.true175.i.do.end183.i_crit_edge:         ; preds = %land.lhs.true175.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end183.i

land.lhs.true178.i:                               ; preds = %land.lhs.true175.i
  %.b264265.i = load i1, ptr @__do_sys_ioprio_set.__warned.16, align 1
  br i1 %.b264265.i, label %land.lhs.true178.i.do.end183.i_crit_edge, label %if.then180.i

land.lhs.true178.i.do.end183.i_crit_edge:         ; preds = %land.lhs.true178.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end183.i

if.then180.i:                                     ; preds = %land.lhs.true178.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__do_sys_ioprio_set.__warned.16, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 121, ptr noundef nonnull @.str.17) #6
  br label %do.end183.i

do.end183.i:                                      ; preds = %if.then180.i, %land.lhs.true178.i.do.end183.i_crit_edge, %land.lhs.true175.i.do.end183.i_crit_edge, %rcu_read_lock.exit281.i.do.end183.i_crit_edge
  %uid185.i = getelementptr inbounds %struct.cred, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %uid185.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %___val.sroa.0.0.copyload.i = load i32, ptr %uid185.i, align 4
  %call.i289.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i289.i, label %do.end183.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i292.i

do.end183.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %do.end183.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true.i292.i:                             ; preds = %do.end183.i
  %call1.i290.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i290.i)
  %tobool.not.i291.i = icmp eq i32 %call1.i290.i, 0
  br i1 %tobool.not.i291.i, label %land.lhs.true.i292.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i294.i

land.lhs.true.i292.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i292.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i294.i:                            ; preds = %land.lhs.true.i292.i
  %.b4.i293.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i293.i, label %land.lhs.true2.i294.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i295.i

land.lhs.true2.i294.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i294.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

if.then.i295.i:                                   ; preds = %land.lhs.true2.i294.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #6
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i295.i, %land.lhs.true2.i294.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i292.i.rcu_read_unlock.exit.i_crit_edge, %do.end183.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !71
  %57 = tail call i32 @llvm.read_register.i32(metadata !60) #6
  %and.i.i.i.i.i296.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i296.i to ptr
  %preempt_count.i.i.i.i297.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i297.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i297.i, align 4
  %sub.i.i.i.i = add i32 %60, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i297.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %___val.sroa.0.0.copyload.i, i32 %call105.i)
  %cmp.i298.i = icmp eq i32 %___val.sroa.0.0.copyload.i, %call105.i
  br i1 %cmp.i298.i, label %lor.lhs.false.i, label %rcu_read_unlock.exit.i.for.inc197.i_crit_edge

rcu_read_unlock.exit.i.for.inc197.i_crit_edge:    ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc197.i

lor.lhs.false.i:                                  ; preds = %rcu_read_unlock.exit.i
  %call.i299.i = tail call i32 @__task_pid_nr_ns(ptr noundef %p.4331.i, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i299.i)
  %tobool190.not.i = icmp eq i32 %call.i299.i, 0
  br i1 %tobool190.not.i, label %lor.lhs.false.i.for.inc197.i_crit_edge, label %if.end192.i

lor.lhs.false.i.for.inc197.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc197.i

if.end192.i:                                      ; preds = %lor.lhs.false.i
  %call193.i = tail call i32 @set_task_ioprio(ptr noundef %p.4331.i, i32 noundef %ioprio) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193.i)
  %tobool194.not.i = icmp eq i32 %call193.i, 0
  br i1 %tobool194.not.i, label %if.end192.i.for.inc197.i_crit_edge, label %if.end192.i.free_uid.i_crit_edge

if.end192.i.free_uid.i_crit_edge:                 ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_uid.i

if.end192.i.for.inc197.i_crit_edge:               ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc197.i

for.inc197.i:                                     ; preds = %if.end192.i.for.inc197.i_crit_edge, %lor.lhs.false.i.for.inc197.i_crit_edge, %rcu_read_unlock.exit.i.for.inc197.i_crit_edge
  %ret.6.i = phi i32 [ 0, %if.end192.i.for.inc197.i_crit_edge ], [ %ret.5329.i, %lor.lhs.false.i.for.inc197.i_crit_edge ], [ %ret.5329.i, %rcu_read_unlock.exit.i.for.inc197.i_crit_edge ]
  %61 = ptrtoint ptr %.pn330.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn.i = load volatile ptr, ptr %.pn330.i, align 4
  %62 = ptrtoint ptr %signal157.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %signal157.i, align 16
  %thread_head165.i = getelementptr inbounds %struct.signal_struct, ptr %63, i32 0, i32 3
  %cmp166.not.i = icmp eq ptr %.pn.i, %thread_head165.i
  br i1 %cmp166.not.i, label %for.inc197.i.for.cond128.loopexit.i_crit_edge, label %for.inc197.i.for.body167.i_crit_edge

for.inc197.i.for.body167.i_crit_edge:             ; preds = %for.inc197.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body167.i

for.inc197.i.for.cond128.loopexit.i_crit_edge:    ; preds = %for.inc197.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond128.loopexit.i

free_uid.i:                                       ; preds = %if.end192.i.free_uid.i_crit_edge, %for.cond128.loopexit.i.free_uid.i_crit_edge, %for.cond128.preheader.i.free_uid.i_crit_edge
  %ret.7.i = phi i32 [ -3, %for.cond128.preheader.i.free_uid.i_crit_edge ], [ %call193.i, %if.end192.i.free_uid.i_crit_edge ], [ %ret.5.lcssa.i, %for.cond128.loopexit.i.free_uid.i_crit_edge ]
  br i1 %tobool110.not.i, label %free_uid.i.out.i_crit_edge, label %if.then210.i

free_uid.i.out.i_crit_edge:                       ; preds = %free_uid.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.then210.i:                                     ; preds = %free_uid.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @free_uid(ptr noundef nonnull %user.0.i) #6
  br label %out.i

out.i:                                            ; preds = %if.then210.i, %free_uid.i.out.i_crit_edge, %if.end124.i.out.i_crit_edge, %sw.bb96.i.out.i_crit_edge, %do.end95.i, %cleanup.i, %if.then7.i, %if.end5.i.out.i_crit_edge, %rcu_read_lock.exit.i.out.i_crit_edge
  %ret.8.i = phi i32 [ %ret.7.i, %if.then210.i ], [ %ret.7.i, %free_uid.i.out.i_crit_edge ], [ -3, %if.end124.i.out.i_crit_edge ], [ -3, %sw.bb96.i.out.i_crit_edge ], [ %call61.i, %cleanup.i ], [ %ret.3.i, %do.end95.i ], [ %call8.i, %if.then7.i ], [ -3, %if.end5.i.out.i_crit_edge ], [ -22, %rcu_read_lock.exit.i.out.i_crit_edge ]
  %call.i300.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i300.i, label %out.i.rcu_read_unlock.exit310.i_crit_edge, label %land.lhs.true.i303.i

out.i.rcu_read_unlock.exit310.i_crit_edge:        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit310.i

land.lhs.true.i303.i:                             ; preds = %out.i
  %call1.i301.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i301.i)
  %tobool.not.i302.i = icmp eq i32 %call1.i301.i, 0
  br i1 %tobool.not.i302.i, label %land.lhs.true.i303.i.rcu_read_unlock.exit310.i_crit_edge, label %land.lhs.true2.i305.i

land.lhs.true.i303.i.rcu_read_unlock.exit310.i_crit_edge: ; preds = %land.lhs.true.i303.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit310.i

land.lhs.true2.i305.i:                            ; preds = %land.lhs.true.i303.i
  %.b4.i304.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i304.i, label %land.lhs.true2.i305.i.rcu_read_unlock.exit310.i_crit_edge, label %if.then.i306.i

land.lhs.true2.i305.i.rcu_read_unlock.exit310.i_crit_edge: ; preds = %land.lhs.true2.i305.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit310.i

if.then.i306.i:                                   ; preds = %land.lhs.true2.i305.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #6
  br label %rcu_read_unlock.exit310.i

rcu_read_unlock.exit310.i:                        ; preds = %if.then.i306.i, %land.lhs.true2.i305.i.rcu_read_unlock.exit310.i_crit_edge, %land.lhs.true.i303.i.rcu_read_unlock.exit310.i_crit_edge, %out.i.rcu_read_unlock.exit310.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !71
  %64 = tail call i32 @llvm.read_register.i32(metadata !60) #6
  %and.i.i.i.i.i307.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i307.i to ptr
  %preempt_count.i.i.i.i308.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i308.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i308.i, align 4
  %sub.i.i.i309.i = add i32 %67, -1
  store volatile i32 %sub.i.i.i309.i, ptr %preempt_count.i.i.i.i308.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %__do_sys_ioprio_set.exit

__do_sys_ioprio_set.exit:                         ; preds = %rcu_read_unlock.exit310.i, %sw.bb7.i.i.__do_sys_ioprio_set.exit_crit_edge, %sw.bb3.i.i.__do_sys_ioprio_set.exit_crit_edge, %land.lhs.true.i283.i.__do_sys_ioprio_set.exit_crit_edge, %entry.__do_sys_ioprio_set.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.8.i, %rcu_read_unlock.exit310.i ], [ -22, %entry.__do_sys_ioprio_set.exit_crit_edge ], [ -22, %sw.bb7.i.i.__do_sys_ioprio_set.exit_crit_edge ], [ -22, %sw.bb3.i.i.__do_sys_ioprio_set.exit_crit_edge ], [ -1, %land.lhs.true.i283.i.__do_sys_ioprio_set.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ioprio_best(i16 noundef zeroext %aprio, i16 noundef zeroext %bprio) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %aprio)
  %0 = icmp sgt i16 %aprio, 8191
  %spec.select = select i1 %0, i16 %aprio, i16 16388
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bprio)
  %1 = icmp sgt i16 %bprio, 8191
  %bprio.addr.0 = select i1 %1, i16 %bprio, i16 16388
  %2 = tail call i16 @llvm.umin.i16(i16 %spec.select, i16 %bprio.addr.0)
  %cond = zext i16 %2 to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_ioprio_get(i32 noundef %which, i32 noundef %who) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #6
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !70
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #6
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = zext i32 %which to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %which, label %rcu_read_lock.exit.i.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb6.i
    i32 3, label %sw.bb98.i
  ]

rcu_read_lock.exit.i.sw.epilog.i_crit_edge:       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %who)
  %tobool.not.i = icmp eq i32 %who, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = tail call i32 @llvm.read_register.i32(metadata !60) #6
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call ptr @find_task_by_vpid(i32 noundef %who) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %p.0.i = phi ptr [ %call1.i, %if.else.i ], [ %8, %if.then.i ]
  %tobool2.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool2.not.i, label %if.end.i.sw.epilog.i_crit_edge, label %if.then3.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i281.i = tail call i32 @security_task_getioprio(ptr noundef nonnull %p.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281.i)
  %tobool.not.i282.i = icmp eq i32 %call.i281.i, 0
  br i1 %tobool.not.i282.i, label %if.end.i.i, label %if.then3.i.sw.epilog.i_crit_edge

if.then3.i.sw.epilog.i_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end.i.i:                                       ; preds = %if.then3.i
  %alloc_lock.i.i.i = getelementptr inbounds %struct.task_struct, ptr %p.0.i, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i.i) #6
  %io_context.i.i = getelementptr inbounds %struct.task_struct, ptr %p.0.i, i32 0, i32 151
  %9 = ptrtoint ptr %io_context.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_context.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end4.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end4.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ioprio.i.i = getelementptr inbounds %struct.io_context, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ioprio.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ioprio.i.i, align 4
  %conv.i.i = zext i16 %12 to i32
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end4.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %conv.i.i, %if.then2.i.i ], [ 16388, %if.end.i.i.if.end4.i.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i.i.i) #6
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %who)
  %tobool7.not.i = icmp eq i32 %who, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.else12.i

if.then8.i:                                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #6
  %and.i283.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i283.i to ptr
  %task10.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task10.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 111
  %17 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %18, i32 0, i32 22, i32 2
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 8
  br label %if.end14.i

if.else12.i:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = tail call ptr @find_vpid(i32 noundef %who) #6
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else12.i, %if.then8.i
  %pgrp.0.i = phi ptr [ %call13.i, %if.else12.i ], [ %20, %if.then8.i ]
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #6
  %cmp.not.i = icmp eq ptr %pgrp.0.i, null
  br i1 %cmp.not.i, label %if.end14.i.do.end97.i_crit_edge, label %do.body16.i

if.end14.i.do.end97.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end97.i

do.body16.i:                                      ; preds = %if.end14.i
  %call17.i = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %land.lhs.true.i, label %do.body16.i.do.end.i_crit_edge

do.body16.i.do.end.i_crit_edge:                   ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body16.i
  %call19.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true21.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true21.i:                                ; preds = %land.lhs.true.i
  %.b268.i = load i1, ptr @__do_sys_ioprio_get.__warned, align 1
  br i1 %.b268.i, label %land.lhs.true21.i.do.end.i_crit_edge, label %if.then23.i

land.lhs.true21.i.do.end.i_crit_edge:             ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then23.i:                                      ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__do_sys_ioprio_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 192, ptr noundef nonnull @.str.11) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then23.i, %land.lhs.true21.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body16.i.do.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.pid, ptr %pgrp.0.i, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool30.not.i = icmp eq ptr %22, null
  %add.ptr.i = getelementptr i8, ptr %22, i32 -1380
  %tobool32.not361365.i = icmp eq ptr %add.ptr.i, null
  %tobool32.not361.i = or i1 %tobool30.not.i, %tobool32.not361365.i
  br i1 %tobool32.not361.i, label %do.end.i.do.end97.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.do.end97.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end97.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %p.1363.i = phi ptr [ %add.ptr90.i, %for.end.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %ret.0362.i = phi i32 [ %ret.1.lcssa.i, %for.end.i.for.body.i_crit_edge ], [ -3, %do.end.i.for.body.i_crit_edge ]
  %call34.i = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %land.lhs.true36.i, label %for.body.i.do.end44.i_crit_edge

for.body.i.do.end44.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44.i

land.lhs.true36.i:                                ; preds = %for.body.i
  %call37.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %land.lhs.true36.i.do.end44.i_crit_edge, label %land.lhs.true39.i

land.lhs.true36.i.do.end44.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44.i

land.lhs.true39.i:                                ; preds = %land.lhs.true36.i
  %.b261267.i = load i1, ptr @__do_sys_ioprio_get.__warned.21, align 1
  br i1 %.b261267.i, label %land.lhs.true39.i.do.end44.i_crit_edge, label %if.then41.i

land.lhs.true39.i.do.end44.i_crit_edge:           ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44.i

if.then41.i:                                      ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__do_sys_ioprio_get.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 192, ptr noundef nonnull @.str.11) #6
  br label %do.end44.i

do.end44.i:                                       ; preds = %if.then41.i, %land.lhs.true39.i.do.end44.i_crit_edge, %land.lhs.true36.i.do.end44.i_crit_edge, %for.body.i.do.end44.i_crit_edge
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %p.1363.i, i32 0, i32 111
  %23 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %signal.i, align 16
  %thread_head.i = getelementptr inbounds %struct.signal_struct, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %thread_head.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn266355.i = load volatile ptr, ptr %thread_head.i, align 4
  %cmp55.not357.i = icmp eq ptr %.pn266355.i, %thread_head.i
  br i1 %cmp55.not357.i, label %do.end44.i.for.end.i_crit_edge, label %do.end44.i.for.body56.i_crit_edge

do.end44.i.for.body56.i_crit_edge:                ; preds = %do.end44.i
  br label %for.body56.i

do.end44.i.for.end.i_crit_edge:                   ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body56.i:                                     ; preds = %for.inc.i.for.body56.i_crit_edge, %do.end44.i.for.body56.i_crit_edge
  %.pn266359.i = phi ptr [ %.pn266.i, %for.inc.i.for.body56.i_crit_edge ], [ %.pn266355.i, %do.end44.i.for.body56.i_crit_edge ]
  %ret.1358.i = phi i32 [ %ret.2.i, %for.inc.i.for.body56.i_crit_edge ], [ %ret.0362.i, %do.end44.i.for.body56.i_crit_edge ]
  %p.2.i = getelementptr i8, ptr %.pn266359.i, i32 -1404
  %call.i284.i = tail call i32 @security_task_getioprio(ptr noundef %p.2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284.i)
  %tobool.not.i285.i = icmp eq i32 %call.i284.i, 0
  br i1 %tobool.not.i285.i, label %if.end.i289.i, label %get_task_ioprio.exit296.i

if.end.i289.i:                                    ; preds = %for.body56.i
  %alloc_lock.i.i286.i = getelementptr i8, ptr %.pn266359.i, i32 380
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i286.i) #6
  %io_context.i287.i = getelementptr i8, ptr %.pn266359.i, i32 2908
  %26 = ptrtoint ptr %io_context.i287.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_context.i287.i, align 8
  %tobool1.not.i288.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i288.i, label %if.end.i289.i.get_task_ioprio.exit296.thread.i_crit_edge, label %if.then2.i292.i

if.end.i289.i.get_task_ioprio.exit296.thread.i_crit_edge: ; preds = %if.end.i289.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_task_ioprio.exit296.thread.i

if.then2.i292.i:                                  ; preds = %if.end.i289.i
  call void @__sanitizer_cov_trace_pc() #8
  %ioprio.i290.i = getelementptr inbounds %struct.io_context, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %ioprio.i290.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ioprio.i290.i, align 4
  %conv.i291.i = zext i16 %29 to i32
  br label %get_task_ioprio.exit296.thread.i

get_task_ioprio.exit296.thread.i:                 ; preds = %if.then2.i292.i, %if.end.i289.i.get_task_ioprio.exit296.thread.i_crit_edge
  %ret.0.i293.i = phi i32 [ %conv.i291.i, %if.then2.i292.i ], [ 16388, %if.end.i289.i.get_task_ioprio.exit296.thread.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i.i286.i) #6
  br label %if.end60.i

get_task_ioprio.exit296.i:                        ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284.i)
  %cmp58.i = icmp slt i32 %call.i284.i, 0
  br i1 %cmp58.i, label %get_task_ioprio.exit296.i.for.inc.i_crit_edge, label %get_task_ioprio.exit296.i.if.end60.i_crit_edge

get_task_ioprio.exit296.i.if.end60.i_crit_edge:   ; preds = %get_task_ioprio.exit296.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60.i

get_task_ioprio.exit296.i.for.inc.i_crit_edge:    ; preds = %get_task_ioprio.exit296.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end60.i:                                       ; preds = %get_task_ioprio.exit296.i.if.end60.i_crit_edge, %get_task_ioprio.exit296.thread.i
  %ret.1.i295338.i = phi i32 [ %ret.0.i293.i, %get_task_ioprio.exit296.thread.i ], [ %call.i284.i, %get_task_ioprio.exit296.i.if.end60.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %ret.1358.i)
  %cmp61.i = icmp eq i32 %ret.1358.i, -3
  br i1 %cmp61.i, label %if.end60.i.for.inc.i_crit_edge, label %if.else63.i

if.end60.i.for.inc.i_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.else63.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %ret.1358.i to i16
  %conv64.i = trunc i32 %ret.1.i295338.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %conv.i)
  %30 = icmp sgt i16 %conv.i, 8191
  %spec.select.i.i = select i1 %30, i16 %conv.i, i16 16388
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %conv64.i)
  %31 = icmp sgt i16 %conv64.i, 8191
  %bprio.addr.0.i.i = select i1 %31, i16 %conv64.i, i16 16388
  %32 = tail call i16 @llvm.umin.i16(i16 %spec.select.i.i, i16 %bprio.addr.0.i.i) #6
  %cond.i.i = zext i16 %32 to i32
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else63.i, %if.end60.i.for.inc.i_crit_edge, %get_task_ioprio.exit296.i.for.inc.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1358.i, %get_task_ioprio.exit296.i.for.inc.i_crit_edge ], [ %cond.i.i, %if.else63.i ], [ %ret.1.i295338.i, %if.end60.i.for.inc.i_crit_edge ]
  %33 = ptrtoint ptr %.pn266359.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn266.i = load volatile ptr, ptr %.pn266359.i, align 4
  %34 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %signal.i, align 16
  %thread_head54.i = getelementptr inbounds %struct.signal_struct, ptr %35, i32 0, i32 3
  %cmp55.not.i = icmp eq ptr %.pn266.i, %thread_head54.i
  br i1 %cmp55.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body56.i_crit_edge

for.inc.i.for.body56.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body56.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end44.i.for.end.i_crit_edge
  %ret.1.lcssa.i = phi i32 [ %ret.0362.i, %do.end44.i.for.end.i_crit_edge ], [ %ret.2.i, %for.inc.i.for.end.i_crit_edge ]
  %arrayidx82.i = getelementptr %struct.task_struct, ptr %p.1363.i, i32 0, i32 79, i32 2
  %36 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %arrayidx82.i, align 4
  %tobool86.not.i = icmp eq ptr %37, null
  %add.ptr90.i = getelementptr i8, ptr %37, i32 -1380
  %tobool32.not366.i = icmp eq ptr %add.ptr90.i, null
  %tobool32.not.i = or i1 %tobool86.not.i, %tobool32.not366.i
  br i1 %tobool32.not.i, label %for.end.i.do.end97.i_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i.do.end97.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end97.i

do.end97.i:                                       ; preds = %for.end.i.do.end97.i_crit_edge, %do.end.i.do.end97.i_crit_edge, %if.end14.i.do.end97.i_crit_edge
  %ret.3.i = phi i32 [ -3, %if.end14.i.do.end97.i_crit_edge ], [ -3, %do.end.i.do.end97.i_crit_edge ], [ %ret.1.lcssa.i, %for.end.i.do.end97.i_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #6
  br label %sw.epilog.i

sw.bb98.i:                                        ; preds = %rcu_read_lock.exit.i
  %38 = tail call i32 @llvm.read_register.i32(metadata !60) #6
  %and.i297.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i297.i to ptr
  %task106.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task106.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task106.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 99
  %42 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cred.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %43, i32 0, i32 25
  %44 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %user_ns.i, align 4
  %call107.i = tail call i32 @make_kuid(ptr noundef %45, i32 noundef %who) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %who)
  %tobool108.not.i = icmp eq i32 %who, 0
  br i1 %tobool108.not.i, label %do.end113.i, label %if.else119.i

do.end113.i:                                      ; preds = %sw.bb98.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %task106.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task106.i, align 8
  %cred117.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 99
  %48 = ptrtoint ptr %cred117.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cred117.i, align 16
  %user118.i = getelementptr inbounds %struct.cred, ptr %49, i32 0, i32 24
  %50 = ptrtoint ptr %user118.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %user118.i, align 4
  br label %if.end122.i

if.else119.i:                                     ; preds = %sw.bb98.i
  call void @__sanitizer_cov_trace_pc() #8
  %.fca.0.insert236.i = insertvalue [1 x i32] poison, i32 %call107.i, 0
  %call121.i = tail call ptr @find_user([1 x i32] %.fca.0.insert236.i) #6
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.else119.i, %do.end113.i
  %user.0.i = phi ptr [ %call121.i, %if.else119.i ], [ %51, %do.end113.i ]
  %tobool123.not.i = icmp eq ptr %user.0.i, null
  br i1 %tobool123.not.i, label %if.end122.i.sw.epilog.i_crit_edge, label %for.cond126.preheader.i

if.end122.i.sw.epilog.i_crit_edge:                ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

for.cond126.preheader.i:                          ; preds = %if.end122.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %52 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr135350.i = getelementptr i8, ptr %52, i32 -1136
  %cmp136.not351.i = icmp eq ptr %add.ptr135350.i, @init_task
  br i1 %cmp136.not351.i, label %for.cond126.preheader.i.for.end218.i_crit_edge, label %do.body139.lr.ph.i

for.cond126.preheader.i.for.end218.i_crit_edge:   ; preds = %for.cond126.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end218.i

do.body139.lr.ph.i:                               ; preds = %for.cond126.preheader.i
  %uid186.i = getelementptr inbounds %struct.user_struct, ptr %user.0.i, i32 0, i32 5
  br label %do.body139.i

for.cond126.loopexit.i:                           ; preds = %for.inc207.i.for.cond126.loopexit.i_crit_edge, %do.end150.i.for.cond126.loopexit.i_crit_edge
  %ret.5.lcssa.i = phi i32 [ %ret.4352.i, %do.end150.i.for.cond126.loopexit.i_crit_edge ], [ %ret.6.i, %for.inc207.i.for.cond126.loopexit.i_crit_edge ]
  %53 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %55, align 16
  %add.ptr135.i = getelementptr i8, ptr %54, i32 -1136
  %cmp136.not.i = icmp eq ptr %add.ptr135.i, @init_task
  br i1 %cmp136.not.i, label %for.cond126.loopexit.i.for.end218.i_crit_edge, label %for.cond126.loopexit.i.do.body139.i_crit_edge

for.cond126.loopexit.i.do.body139.i_crit_edge:    ; preds = %for.cond126.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body139.i

for.cond126.loopexit.i.for.end218.i_crit_edge:    ; preds = %for.cond126.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end218.i

do.body139.i:                                     ; preds = %for.cond126.loopexit.i.do.body139.i_crit_edge, %do.body139.lr.ph.i
  %55 = phi ptr [ %52, %do.body139.lr.ph.i ], [ %54, %for.cond126.loopexit.i.do.body139.i_crit_edge ]
  %ret.4352.i = phi i32 [ -3, %do.body139.lr.ph.i ], [ %ret.5.lcssa.i, %for.cond126.loopexit.i.do.body139.i_crit_edge ]
  %call140.i = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %tobool141.not.i = icmp eq i32 %call140.i, 0
  br i1 %tobool141.not.i, label %land.lhs.true142.i, label %do.body139.i.do.end150.i_crit_edge

do.body139.i.do.end150.i_crit_edge:               ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end150.i

land.lhs.true142.i:                               ; preds = %do.body139.i
  %call143.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143.i)
  %tobool144.not.i = icmp eq i32 %call143.i, 0
  br i1 %tobool144.not.i, label %land.lhs.true142.i.do.end150.i_crit_edge, label %land.lhs.true145.i

land.lhs.true142.i.do.end150.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end150.i

land.lhs.true145.i:                               ; preds = %land.lhs.true142.i
  %.b262265.i = load i1, ptr @__do_sys_ioprio_get.__warned.24, align 1
  br i1 %.b262265.i, label %land.lhs.true145.i.do.end150.i_crit_edge, label %if.then147.i

land.lhs.true145.i.do.end150.i_crit_edge:         ; preds = %land.lhs.true145.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end150.i

if.then147.i:                                     ; preds = %land.lhs.true145.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__do_sys_ioprio_get.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 214, ptr noundef nonnull @.str.11) #6
  br label %do.end150.i

do.end150.i:                                      ; preds = %if.then147.i, %land.lhs.true145.i.do.end150.i_crit_edge, %land.lhs.true142.i.do.end150.i_crit_edge, %do.body139.i.do.end150.i_crit_edge
  %signal156.i = getelementptr i8, ptr %55, i32 544
  %56 = ptrtoint ptr %signal156.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %signal156.i, align 16
  %thread_head157.i = getelementptr inbounds %struct.signal_struct, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %thread_head157.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn343.i = load volatile ptr, ptr %thread_head157.i, align 4
  %cmp165.not346.i = icmp eq ptr %.pn343.i, %thread_head157.i
  br i1 %cmp165.not346.i, label %do.end150.i.for.cond126.loopexit.i_crit_edge, label %do.end150.i.for.body167.i_crit_edge

do.end150.i.for.body167.i_crit_edge:              ; preds = %do.end150.i
  br label %for.body167.i

do.end150.i.for.cond126.loopexit.i_crit_edge:     ; preds = %do.end150.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond126.loopexit.i

for.body167.i:                                    ; preds = %for.inc207.i.for.body167.i_crit_edge, %do.end150.i.for.body167.i_crit_edge
  %.pn348.i = phi ptr [ %.pn.i, %for.inc207.i.for.body167.i_crit_edge ], [ %.pn343.i, %do.end150.i.for.body167.i_crit_edge ]
  %ret.5347.i = phi i32 [ %ret.6.i, %for.inc207.i.for.body167.i_crit_edge ], [ %ret.4352.i, %do.end150.i.for.body167.i_crit_edge ]
  %p.3349.i = getelementptr i8, ptr %.pn348.i, i32 -1404
  %59 = tail call i32 @llvm.read_register.i32(metadata !60) #6
  %and.i.i.i.i.i270.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i270.i to ptr
  %preempt_count.i.i.i.i271.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i271.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i271.i, align 4
  %add.i.i.i272.i = add i32 %62, 1
  store volatile i32 %add.i.i.i272.i, ptr %preempt_count.i.i.i.i271.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !70
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i273.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i273.i, label %for.body167.i.rcu_read_lock.exit280.i_crit_edge, label %land.lhs.true.i276.i

for.body167.i.rcu_read_lock.exit280.i_crit_edge:  ; preds = %for.body167.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit280.i

land.lhs.true.i276.i:                             ; preds = %for.body167.i
  %call1.i274.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i274.i)
  %tobool.not.i275.i = icmp eq i32 %call1.i274.i, 0
  br i1 %tobool.not.i275.i, label %land.lhs.true.i276.i.rcu_read_lock.exit280.i_crit_edge, label %land.lhs.true2.i278.i

land.lhs.true.i276.i.rcu_read_lock.exit280.i_crit_edge: ; preds = %land.lhs.true.i276.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit280.i

land.lhs.true2.i278.i:                            ; preds = %land.lhs.true.i276.i
  %.b4.i277.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i277.i, label %land.lhs.true2.i278.i.rcu_read_lock.exit280.i_crit_edge, label %if.then.i279.i

land.lhs.true2.i278.i.rcu_read_lock.exit280.i_crit_edge: ; preds = %land.lhs.true2.i278.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit280.i

if.then.i279.i:                                   ; preds = %land.lhs.true2.i278.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #6
  br label %rcu_read_lock.exit280.i

rcu_read_lock.exit280.i:                          ; preds = %if.then.i279.i, %land.lhs.true2.i278.i.rcu_read_lock.exit280.i_crit_edge, %land.lhs.true.i276.i.rcu_read_lock.exit280.i_crit_edge, %for.body167.i.rcu_read_lock.exit280.i_crit_edge
  %real_cred.i = getelementptr i8, ptr %.pn348.i, i32 208
  %63 = ptrtoint ptr %real_cred.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %real_cred.i, align 4
  %call173.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173.i)
  %tobool174.not.i = icmp eq i32 %call173.i, 0
  br i1 %tobool174.not.i, label %land.lhs.true175.i, label %rcu_read_lock.exit280.i.do.end183.i_crit_edge

rcu_read_lock.exit280.i.do.end183.i_crit_edge:    ; preds = %rcu_read_lock.exit280.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end183.i

land.lhs.true175.i:                               ; preds = %rcu_read_lock.exit280.i
  %call176.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176.i)
  %tobool177.not.i = icmp eq i32 %call176.i, 0
  br i1 %tobool177.not.i, label %land.lhs.true175.i.do.end183.i_crit_edge, label %land.lhs.true178.i

land.lhs.true175.i.do.end183.i_crit_edge:         ; preds = %land.lhs.true175.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end183.i

land.lhs.true178.i:                               ; preds = %land.lhs.true175.i
  %.b263264.i = load i1, ptr @__do_sys_ioprio_get.__warned.25, align 1
  br i1 %.b263264.i, label %land.lhs.true178.i.do.end183.i_crit_edge, label %if.then180.i

land.lhs.true178.i.do.end183.i_crit_edge:         ; preds = %land.lhs.true178.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end183.i

if.then180.i:                                     ; preds = %land.lhs.true178.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__do_sys_ioprio_get.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 215, ptr noundef nonnull @.str.17) #6
  br label %do.end183.i

do.end183.i:                                      ; preds = %if.then180.i, %land.lhs.true178.i.do.end183.i_crit_edge, %land.lhs.true175.i.do.end183.i_crit_edge, %rcu_read_lock.exit280.i.do.end183.i_crit_edge
  %uid185.i = getelementptr inbounds %struct.cred, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %uid185.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %___val.sroa.0.0.copyload.i = load i32, ptr %uid185.i, align 4
  %call.i298.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i298.i, label %do.end183.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i301.i

do.end183.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %do.end183.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true.i301.i:                             ; preds = %do.end183.i
  %call1.i299.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i299.i)
  %tobool.not.i300.i = icmp eq i32 %call1.i299.i, 0
  br i1 %tobool.not.i300.i, label %land.lhs.true.i301.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i303.i

land.lhs.true.i301.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i301.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i303.i:                            ; preds = %land.lhs.true.i301.i
  %.b4.i302.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i302.i, label %land.lhs.true2.i303.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i304.i

land.lhs.true2.i303.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i303.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

if.then.i304.i:                                   ; preds = %land.lhs.true2.i303.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #6
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i304.i, %land.lhs.true2.i303.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i301.i.rcu_read_unlock.exit.i_crit_edge, %do.end183.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !71
  %66 = tail call i32 @llvm.read_register.i32(metadata !60) #6
  %and.i.i.i.i.i305.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i305.i to ptr
  %preempt_count.i.i.i.i306.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i306.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i306.i, align 4
  %sub.i.i.i.i = add i32 %69, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i306.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %70 = ptrtoint ptr %uid186.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.unpack.i = load i32, ptr %uid186.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %___val.sroa.0.0.copyload.i, i32 %.unpack.i)
  %cmp.i.i = icmp eq i32 %___val.sroa.0.0.copyload.i, %.unpack.i
  br i1 %cmp.i.i, label %lor.lhs.false.i, label %rcu_read_unlock.exit.i.for.inc207.i_crit_edge

rcu_read_unlock.exit.i.for.inc207.i_crit_edge:    ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc207.i

lor.lhs.false.i:                                  ; preds = %rcu_read_unlock.exit.i
  %call.i307.i = tail call i32 @__task_pid_nr_ns(ptr noundef %p.3349.i, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i307.i)
  %tobool191.not.i = icmp eq i32 %call.i307.i, 0
  br i1 %tobool191.not.i, label %lor.lhs.false.i.for.inc207.i_crit_edge, label %if.end193.i

lor.lhs.false.i.for.inc207.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc207.i

if.end193.i:                                      ; preds = %lor.lhs.false.i
  %call.i308.i = tail call i32 @security_task_getioprio(ptr noundef %p.3349.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i308.i)
  %tobool.not.i309.i = icmp eq i32 %call.i308.i, 0
  br i1 %tobool.not.i309.i, label %if.end.i313.i, label %get_task_ioprio.exit320.i

if.end.i313.i:                                    ; preds = %if.end193.i
  %alloc_lock.i.i310.i = getelementptr i8, ptr %.pn348.i, i32 380
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i310.i) #6
  %io_context.i311.i = getelementptr i8, ptr %.pn348.i, i32 2908
  %71 = ptrtoint ptr %io_context.i311.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %io_context.i311.i, align 8
  %tobool1.not.i312.i = icmp eq ptr %72, null
  br i1 %tobool1.not.i312.i, label %if.end.i313.i.get_task_ioprio.exit320.thread.i_crit_edge, label %if.then2.i316.i

if.end.i313.i.get_task_ioprio.exit320.thread.i_crit_edge: ; preds = %if.end.i313.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_task_ioprio.exit320.thread.i

if.then2.i316.i:                                  ; preds = %if.end.i313.i
  call void @__sanitizer_cov_trace_pc() #8
  %ioprio.i314.i = getelementptr inbounds %struct.io_context, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %ioprio.i314.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %ioprio.i314.i, align 4
  %conv.i315.i = zext i16 %74 to i32
  br label %get_task_ioprio.exit320.thread.i

get_task_ioprio.exit320.thread.i:                 ; preds = %if.then2.i316.i, %if.end.i313.i.get_task_ioprio.exit320.thread.i_crit_edge
  %ret.0.i317.i = phi i32 [ %conv.i315.i, %if.then2.i316.i ], [ 16388, %if.end.i313.i.get_task_ioprio.exit320.thread.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i.i310.i) #6
  br label %if.end198.i

get_task_ioprio.exit320.i:                        ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i308.i)
  %cmp195.i = icmp slt i32 %call.i308.i, 0
  br i1 %cmp195.i, label %get_task_ioprio.exit320.i.for.inc207.i_crit_edge, label %get_task_ioprio.exit320.i.if.end198.i_crit_edge

get_task_ioprio.exit320.i.if.end198.i_crit_edge:  ; preds = %get_task_ioprio.exit320.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end198.i

get_task_ioprio.exit320.i.for.inc207.i_crit_edge: ; preds = %get_task_ioprio.exit320.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc207.i

if.end198.i:                                      ; preds = %get_task_ioprio.exit320.i.if.end198.i_crit_edge, %get_task_ioprio.exit320.thread.i
  %ret.1.i319341.i = phi i32 [ %ret.0.i317.i, %get_task_ioprio.exit320.thread.i ], [ %call.i308.i, %get_task_ioprio.exit320.i.if.end198.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %ret.5347.i)
  %cmp199.i = icmp eq i32 %ret.5347.i, -3
  br i1 %cmp199.i, label %if.end198.i.for.inc207.i_crit_edge, label %if.else202.i

if.end198.i.for.inc207.i_crit_edge:               ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc207.i

if.else202.i:                                     ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv203.i = trunc i32 %ret.5347.i to i16
  %conv204.i = trunc i32 %ret.1.i319341.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %conv203.i)
  %75 = icmp sgt i16 %conv203.i, 8191
  %spec.select.i321.i = select i1 %75, i16 %conv203.i, i16 16388
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %conv204.i)
  %76 = icmp sgt i16 %conv204.i, 8191
  %bprio.addr.0.i322.i = select i1 %76, i16 %conv204.i, i16 16388
  %77 = tail call i16 @llvm.umin.i16(i16 %spec.select.i321.i, i16 %bprio.addr.0.i322.i) #6
  %cond.i323.i = zext i16 %77 to i32
  br label %for.inc207.i

for.inc207.i:                                     ; preds = %if.else202.i, %if.end198.i.for.inc207.i_crit_edge, %get_task_ioprio.exit320.i.for.inc207.i_crit_edge, %lor.lhs.false.i.for.inc207.i_crit_edge, %rcu_read_unlock.exit.i.for.inc207.i_crit_edge
  %ret.6.i = phi i32 [ %ret.5347.i, %get_task_ioprio.exit320.i.for.inc207.i_crit_edge ], [ %cond.i323.i, %if.else202.i ], [ %ret.5347.i, %lor.lhs.false.i.for.inc207.i_crit_edge ], [ %ret.5347.i, %rcu_read_unlock.exit.i.for.inc207.i_crit_edge ], [ %ret.1.i319341.i, %if.end198.i.for.inc207.i_crit_edge ]
  %78 = ptrtoint ptr %.pn348.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pn.i = load volatile ptr, ptr %.pn348.i, align 4
  %79 = ptrtoint ptr %signal156.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %signal156.i, align 16
  %thread_head164.i = getelementptr inbounds %struct.signal_struct, ptr %80, i32 0, i32 3
  %cmp165.not.i = icmp eq ptr %.pn.i, %thread_head164.i
  br i1 %cmp165.not.i, label %for.inc207.i.for.cond126.loopexit.i_crit_edge, label %for.inc207.i.for.body167.i_crit_edge

for.inc207.i.for.body167.i_crit_edge:             ; preds = %for.inc207.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body167.i

for.inc207.i.for.cond126.loopexit.i_crit_edge:    ; preds = %for.inc207.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond126.loopexit.i

for.end218.i:                                     ; preds = %for.cond126.loopexit.i.for.end218.i_crit_edge, %for.cond126.preheader.i.for.end218.i_crit_edge
  %ret.4.lcssa.i = phi i32 [ -3, %for.cond126.preheader.i.for.end218.i_crit_edge ], [ %ret.5.lcssa.i, %for.cond126.loopexit.i.for.end218.i_crit_edge ]
  br i1 %tobool108.not.i, label %for.end218.i.sw.epilog.i_crit_edge, label %if.then220.i

for.end218.i.sw.epilog.i_crit_edge:               ; preds = %for.end218.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then220.i:                                     ; preds = %for.end218.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @free_uid(ptr noundef nonnull %user.0.i) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then220.i, %for.end218.i.sw.epilog.i_crit_edge, %if.end122.i.sw.epilog.i_crit_edge, %do.end97.i, %if.end4.i.i, %if.then3.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge, %rcu_read_lock.exit.i.sw.epilog.i_crit_edge
  %ret.7.i = phi i32 [ %ret.4.lcssa.i, %if.then220.i ], [ %ret.4.lcssa.i, %for.end218.i.sw.epilog.i_crit_edge ], [ -3, %if.end122.i.sw.epilog.i_crit_edge ], [ %ret.3.i, %do.end97.i ], [ -3, %if.end.i.sw.epilog.i_crit_edge ], [ -22, %rcu_read_lock.exit.i.sw.epilog.i_crit_edge ], [ %call.i281.i, %if.then3.i.sw.epilog.i_crit_edge ], [ %ret.0.i.i, %if.end4.i.i ]
  %call.i324.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i324.i, label %sw.epilog.i.__do_sys_ioprio_get.exit_crit_edge, label %land.lhs.true.i327.i

sw.epilog.i.__do_sys_ioprio_get.exit_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_ioprio_get.exit

land.lhs.true.i327.i:                             ; preds = %sw.epilog.i
  %call1.i325.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i325.i)
  %tobool.not.i326.i = icmp eq i32 %call1.i325.i, 0
  br i1 %tobool.not.i326.i, label %land.lhs.true.i327.i.__do_sys_ioprio_get.exit_crit_edge, label %land.lhs.true2.i329.i

land.lhs.true.i327.i.__do_sys_ioprio_get.exit_crit_edge: ; preds = %land.lhs.true.i327.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_ioprio_get.exit

land.lhs.true2.i329.i:                            ; preds = %land.lhs.true.i327.i
  %.b4.i328.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i328.i, label %land.lhs.true2.i329.i.__do_sys_ioprio_get.exit_crit_edge, label %if.then.i330.i

land.lhs.true2.i329.i.__do_sys_ioprio_get.exit_crit_edge: ; preds = %land.lhs.true2.i329.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__do_sys_ioprio_get.exit

if.then.i330.i:                                   ; preds = %land.lhs.true2.i329.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #6
  br label %__do_sys_ioprio_get.exit

__do_sys_ioprio_get.exit:                         ; preds = %if.then.i330.i, %land.lhs.true2.i329.i.__do_sys_ioprio_get.exit_crit_edge, %land.lhs.true.i327.i.__do_sys_ioprio_get.exit_crit_edge, %sw.epilog.i.__do_sys_ioprio_get.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !71
  %81 = tail call i32 @llvm.read_register.i32(metadata !60) #6
  %and.i.i.i.i.i331.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i.i.i331.i to ptr
  %preempt_count.i.i.i.i332.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %preempt_count.i.i.i.i332.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %preempt_count.i.i.i.i332.i, align 4
  %sub.i.i.i333.i = add i32 %84, -1
  store volatile i32 %sub.i.i.i333.i, ptr %preempt_count.i.i.i.i332.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  ret i32 %ret.7.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_task_ioprio(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_user([1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_task_getioprio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !35, !37, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !54, !56, !58}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/ioprio.c", i32 68, i32 1}
!2 = !{ptr @event_enter__ioprio_set, !1, !"event_enter__ioprio_set", i1 false, i1 false}
!3 = !{ptr @__event_enter__ioprio_set, !1, !"__event_enter__ioprio_set", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__ioprio_set, !1, !"event_exit__ioprio_set", i1 false, i1 false}
!6 = !{ptr @__event_exit__ioprio_set, !1, !"__event_exit__ioprio_set", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__ioprio_set, !1, !"__syscall_meta__ioprio_set", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__ioprio_set, !1, !"__p_syscall_meta__ioprio_set", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../block/ioprio.c", i32 167, i32 1}
!12 = !{ptr @event_enter__ioprio_get, !11, !"event_enter__ioprio_get", i1 false, i1 false}
!13 = !{ptr @__event_enter__ioprio_get, !11, !"__event_enter__ioprio_get", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__ioprio_get, !11, !"event_exit__ioprio_get", i1 false, i1 false}
!16 = !{ptr @__event_exit__ioprio_get, !11, !"__event_exit__ioprio_get", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__ioprio_get, !11, !"__syscall_meta__ioprio_get", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__ioprio_get, !11, !"__p_syscall_meta__ioprio_get", i1 false, i1 false}
!20 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @types__ioprio_set, !1, !"types__ioprio_set", i1 false, i1 false}
!22 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @args__ioprio_set, !1, !"args__ioprio_set", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../block/ioprio.c", i32 98, i32 4}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../block/ioprio.c", i32 109, i32 20}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../block/ioprio.c", i32 113, i32 12}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../block/ioprio.c", i32 120, i32 4}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../block/ioprio.c", i32 121, i32 17}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @types__ioprio_get, !11, !"types__ioprio_get", i1 false, i1 false}
!48 = !{ptr @args__ioprio_get, !11, !"args__ioprio_get", i1 false, i1 false}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../block/ioprio.c", i32 192, i32 4}
!51 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../block/ioprio.c", i32 205, i32 20}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../block/ioprio.c", i32 207, i32 12}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../block/ioprio.c", i32 214, i32 4}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../block/ioprio.c", i32 215, i32 17}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2149896321}
!71 = !{i64 2149896587}
