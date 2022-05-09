; ModuleID = '/llk/IR_all_yes/kernel/kcmp.c_pt.bc'
source_filename = "../kernel/kcmp.c"
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kcmp_epoll_slot = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.61 = type { %struct.callback_head }
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

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_enter_kcmp\00", [17 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__kcmp = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 5, ptr @types__kcmp, ptr @args__kcmp, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__kcmp, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__kcmp, i64 20) }, ptr @event_enter__kcmp, ptr @event_exit__kcmp }, align 4
@event_enter__kcmp = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__kcmp, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__kcmp = internal global ptr @event_enter__kcmp, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_exit_kcmp\00", [18 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__kcmp = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__kcmp, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__kcmp = internal global ptr @event_exit__kcmp, section "_ftrace_events", align 4
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_kcmp\00", [23 x i8] zeroinitializer }, align 32
@types__kcmp = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.3, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.5], [44 x i8] zeroinitializer }, align 32
@args__kcmp = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__kcmp = internal global ptr @__syscall_meta__kcmp, section "__syscalls_metadata", align 4
@__initcall__kmod_kcmp__259_239_kcmp_cookies_init3 = internal global ptr @kcmp_cookies_init, section ".initcall3.init", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pid_t\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pid1\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pid2\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idx1\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idx2\00", [27 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@cookies = internal global [8 x [2 x i32]] zeroinitializer, section ".data..read_mostly", align 4
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"event_enter__kcmp\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"event_exit__kcmp\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"types__kcmp\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [11 x i8] c"args__kcmp\00", align 1
@___asan_gen_.60 = private constant [17 x i8] c"../kernel/kcmp.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 135, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 695, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 723, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 156, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__event_enter__kcmp, ptr @__event_exit__kcmp, ptr @__initcall__kmod_kcmp__259_239_kcmp_cookies_init3, ptr @__p_syscall_meta__kcmp, ptr @__syscall_meta__kcmp, ptr @event_enter__kcmp, ptr @event_exit__kcmp, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__kcmp, ptr @args__kcmp, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__kcmp to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__kcmp to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__kcmp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__kcmp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_kcmp = dso_local alias i32 (i32, i32, i32, i32, i32), ptr @__se_sys_kcmp

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_kcmp(i32 noundef %pid1, i32 noundef %pid2, i32 noundef %type, i32 noundef %idx1, i32 noundef %idx2) #0 align 64 {
entry:
  %slot.i = alloca %struct.kcmp_epoll_slot, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !48
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call ptr @find_task_by_vpid(i32 noundef %pid1) #7
  %call1.i = tail call ptr @find_task_by_vpid(i32 noundef %pid2) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  %tobool2.not.i = icmp eq ptr %call1.i, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %err_no_task.i, label %if.end.i

if.end.i:                                         ; preds = %rcu_read_lock.exit.i
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #7, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !50

if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !51

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_task_struct.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %get_task_struct.exit.i

get_task_struct.exit.i:                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge
  %usage.i82.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i83.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i82.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %usage.i82.i, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i82.i, ptr %usage.i82.i, i32 1, ptr elementtype(i32) %usage.i82.i) #7, !srcloc !49
  %asmresult.i.i.i.i.i.i84.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i84.i)
  %tobool1.not.i.i.i.i85.i = icmp eq i32 %asmresult.i.i.i.i.i.i84.i, 0
  br i1 %tobool1.not.i.i.i.i85.i, label %get_task_struct.exit.i.if.end15.sink.split.i.i.i.i90.i_crit_edge, label %if.else.i.i.i.i88.i, !prof !50

get_task_struct.exit.i.if.end15.sink.split.i.i.i.i90.i_crit_edge: ; preds = %get_task_struct.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i90.i

if.else.i.i.i.i88.i:                              ; preds = %get_task_struct.exit.i
  %add.i.i.i.i86.i = add i32 %asmresult.i.i.i.i.i.i84.i, 1
  %7 = or i32 %add.i.i.i.i86.i, %asmresult.i.i.i.i.i.i84.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i87.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i87.i, label %if.else.i.i.i.i88.i.get_task_struct.exit91.i_crit_edge, label %if.else.i.i.i.i88.i.if.end15.sink.split.i.i.i.i90.i_crit_edge, !prof !51

if.else.i.i.i.i88.i.if.end15.sink.split.i.i.i.i90.i_crit_edge: ; preds = %if.else.i.i.i.i88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i90.i

if.else.i.i.i.i88.i.get_task_struct.exit91.i_crit_edge: ; preds = %if.else.i.i.i.i88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_task_struct.exit91.i

if.end15.sink.split.i.i.i.i90.i:                  ; preds = %if.else.i.i.i.i88.i.if.end15.sink.split.i.i.i.i90.i_crit_edge, %get_task_struct.exit.i.if.end15.sink.split.i.i.i.i90.i_crit_edge
  %.sink.i.i.i.i89.i = phi i32 [ 2, %get_task_struct.exit.i.if.end15.sink.split.i.i.i.i90.i_crit_edge ], [ 1, %if.else.i.i.i.i88.i.if.end15.sink.split.i.i.i.i90.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i82.i, i32 noundef %.sink.i.i.i.i89.i) #7
  br label %get_task_struct.exit91.i

get_task_struct.exit91.i:                         ; preds = %if.end15.sink.split.i.i.i.i90.i, %if.else.i.i.i.i88.i.get_task_struct.exit91.i_crit_edge
  %call.i92.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i92.i, label %get_task_struct.exit91.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i95.i

get_task_struct.exit91.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %get_task_struct.exit91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true.i95.i:                              ; preds = %get_task_struct.exit91.i
  %call1.i93.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i93.i)
  %tobool.not.i94.i = icmp eq i32 %call1.i93.i, 0
  br i1 %tobool.not.i94.i, label %land.lhs.true.i95.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i97.i

land.lhs.true.i95.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i97.i:                             ; preds = %land.lhs.true.i95.i
  %.b4.i96.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i96.i, label %land.lhs.true2.i97.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i98.i

land.lhs.true2.i97.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

if.then.i98.i:                                    ; preds = %land.lhs.true2.i97.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #7
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i98.i, %land.lhs.true2.i97.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i95.i.rcu_read_unlock.exit.i_crit_edge, %get_task_struct.exit91.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  %8 = tail call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i99.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i99.i to ptr
  %preempt_count.i.i.i.i100.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i100.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i100.i, align 4
  %sub.i.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i100.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %call.i, i32 0, i32 111
  %12 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal.i, align 16
  %exec_update_lock.i = getelementptr inbounds %struct.signal_struct, ptr %13, i32 0, i32 61
  %signal5.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 111
  %14 = ptrtoint ptr %signal5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %signal5.i, align 16
  %exec_update_lock6.i = getelementptr inbounds %struct.signal_struct, ptr %15, i32 0, i32 61
  %cmp.i.i = icmp ugt ptr %15, %13
  %spec.select.i.i = select i1 %cmp.i.i, ptr %exec_update_lock.i, ptr %exec_update_lock6.i
  %spec.select19.i.i = select i1 %cmp.i.i, ptr %exec_update_lock6.i, ptr %exec_update_lock.i
  %call.i101.i = tail call i32 @down_read_killable(ptr noundef %spec.select19.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i)
  %tobool.not.i102.i = icmp eq i32 %call.i101.i, 0
  br i1 %tobool.not.i102.i, label %land.lhs.true.i103.i, label %rcu_read_unlock.exit.i.err.i_crit_edge

rcu_read_unlock.exit.i.err.i_crit_edge:           ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

land.lhs.true.i103.i:                             ; preds = %rcu_read_unlock.exit.i
  %cmp1.not.i.i = icmp eq ptr %spec.select19.i.i, %spec.select.i.i
  br i1 %cmp1.not.i.i, label %land.lhs.true.i103.i.if.end10.i_crit_edge, label %if.then4.i.i, !prof !50

land.lhs.true.i103.i.if.end10.i_crit_edge:        ; preds = %land.lhs.true.i103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then4.i.i:                                     ; preds = %land.lhs.true.i103.i
  %call5.i.i = tail call i32 @down_read_killable_nested(ptr noundef %spec.select.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.then4.i.i.if.end10.i_crit_edge, label %if.then4.i.i.err.sink.split.i_crit_edge

if.then4.i.i.err.sink.split.i_crit_edge:          ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.sink.split.i

if.then4.i.i.if.end10.i_crit_edge:                ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then4.i.i.if.end10.i_crit_edge, %land.lhs.true.i103.i.if.end10.i_crit_edge
  %call11.i = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %call.i, i32 noundef 17) #7
  br i1 %call11.i, label %lor.lhs.false12.i, label %if.end10.i.err_unlock.i_crit_edge

if.end10.i.err_unlock.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock.i

lor.lhs.false12.i:                                ; preds = %if.end10.i
  %call13.i = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %call1.i, i32 noundef 17) #7
  br i1 %call13.i, label %if.end15.i, label %lor.lhs.false12.i.err_unlock.i_crit_edge

lor.lhs.false12.i.err_unlock.i_crit_edge:         ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock.i

if.end15.i:                                       ; preds = %lor.lhs.false12.i
  %16 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end15.i.err_unlock.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb23.i
    i32 2, label %sw.bb26.i
    i32 3, label %sw.bb29.i
    i32 4, label %sw.bb32.i
    i32 5, label %sw.bb35.i
    i32 6, label %sw.bb38.i
    i32 7, label %sw.bb42.i
  ]

if.end15.i.err_unlock.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock.i

sw.bb.i:                                          ; preds = %if.end15.i
  %call16.i = tail call fastcc ptr @get_file_raw_ptr(ptr noundef nonnull %call.i, i32 noundef %idx1) #7
  %call17.i = tail call fastcc ptr @get_file_raw_ptr(ptr noundef nonnull %call1.i, i32 noundef %idx2) #7
  %tobool18.not.i = icmp eq ptr %call16.i, null
  %tobool19.not.i = icmp eq ptr %call17.i, null
  %or.cond81.i = select i1 %tobool18.not.i, i1 true, i1 %tobool19.not.i
  br i1 %or.cond81.i, label %sw.bb.i.err_unlock.i_crit_edge, label %if.then20.i

sw.bb.i.err_unlock.i_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock.i

if.then20.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call16.i to i32
  %18 = load i32, ptr @cookies, align 4
  %xor.i.i.i = xor i32 %18, %17
  %19 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 0, i32 1), align 4
  %mul.i.i.i = mul i32 %xor.i.i.i, %19
  %20 = ptrtoint ptr %call17.i to i32
  %xor.i8.i.i = xor i32 %18, %20
  %mul.i10.i.i = mul i32 %xor.i8.i.i, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i, i32 %mul.i10.i.i)
  %cmp.i104.i = icmp slt i32 %mul.i.i.i, %mul.i10.i.i
  %conv.i.i = zext i1 %cmp.i104.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i, i32 %mul.i10.i.i)
  %cmp2.i.i = icmp sgt i32 %mul.i.i.i, %mul.i10.i.i
  %shl.i.i = select i1 %cmp2.i.i, i32 2, i32 0
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  br label %err_unlock.i

sw.bb23.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %call.i, i32 0, i32 53
  %21 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mm.i, align 8
  %mm24.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 53
  %23 = ptrtoint ptr %mm24.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mm24.i, align 8
  %25 = ptrtoint ptr %22 to i32
  %26 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 1), align 4
  %xor.i.i105.i = xor i32 %26, %25
  %27 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 1, i32 1), align 4
  %mul.i.i106.i = mul i32 %xor.i.i105.i, %27
  %28 = ptrtoint ptr %24 to i32
  %xor.i8.i107.i = xor i32 %26, %28
  %mul.i10.i108.i = mul i32 %xor.i8.i107.i, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i106.i, i32 %mul.i10.i108.i)
  %cmp.i109.i = icmp slt i32 %mul.i.i106.i, %mul.i10.i108.i
  %conv.i110.i = zext i1 %cmp.i109.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i106.i, i32 %mul.i10.i108.i)
  %cmp2.i111.i = icmp sgt i32 %mul.i.i106.i, %mul.i10.i108.i
  %shl.i112.i = select i1 %cmp2.i111.i, i32 2, i32 0
  %or.i113.i = or i32 %shl.i112.i, %conv.i110.i
  br label %err_unlock.i

sw.bb26.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %files.i = getelementptr inbounds %struct.task_struct, ptr %call.i, i32 0, i32 108
  %29 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %files.i, align 4
  %files27.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 108
  %31 = ptrtoint ptr %files27.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %files27.i, align 4
  %33 = ptrtoint ptr %30 to i32
  %34 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 2), align 4
  %xor.i.i114.i = xor i32 %34, %33
  %35 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 2, i32 1), align 4
  %mul.i.i115.i = mul i32 %xor.i.i114.i, %35
  %36 = ptrtoint ptr %32 to i32
  %xor.i8.i116.i = xor i32 %34, %36
  %mul.i10.i117.i = mul i32 %xor.i8.i116.i, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i115.i, i32 %mul.i10.i117.i)
  %cmp.i118.i = icmp slt i32 %mul.i.i115.i, %mul.i10.i117.i
  %conv.i119.i = zext i1 %cmp.i118.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i115.i, i32 %mul.i10.i117.i)
  %cmp2.i120.i = icmp sgt i32 %mul.i.i115.i, %mul.i10.i117.i
  %shl.i121.i = select i1 %cmp2.i120.i, i32 2, i32 0
  %or.i122.i = or i32 %shl.i121.i, %conv.i119.i
  br label %err_unlock.i

sw.bb29.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %fs.i = getelementptr inbounds %struct.task_struct, ptr %call.i, i32 0, i32 107
  %37 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fs.i, align 128
  %fs30.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 107
  %39 = ptrtoint ptr %fs30.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fs30.i, align 128
  %41 = ptrtoint ptr %38 to i32
  %42 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 3), align 4
  %xor.i.i123.i = xor i32 %42, %41
  %43 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 3, i32 1), align 4
  %mul.i.i124.i = mul i32 %xor.i.i123.i, %43
  %44 = ptrtoint ptr %40 to i32
  %xor.i8.i125.i = xor i32 %42, %44
  %mul.i10.i126.i = mul i32 %xor.i8.i125.i, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i124.i, i32 %mul.i10.i126.i)
  %cmp.i127.i = icmp slt i32 %mul.i.i124.i, %mul.i10.i126.i
  %conv.i128.i = zext i1 %cmp.i127.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i124.i, i32 %mul.i10.i126.i)
  %cmp2.i129.i = icmp sgt i32 %mul.i.i124.i, %mul.i10.i126.i
  %shl.i130.i = select i1 %cmp2.i129.i, i32 2, i32 0
  %or.i131.i = or i32 %shl.i130.i, %conv.i128.i
  br label %err_unlock.i

sw.bb32.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %call.i, i32 0, i32 112
  %45 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sighand.i, align 4
  %sighand33.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 112
  %47 = ptrtoint ptr %sighand33.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sighand33.i, align 4
  %49 = ptrtoint ptr %46 to i32
  %50 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 4), align 4
  %xor.i.i132.i = xor i32 %50, %49
  %51 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 4, i32 1), align 4
  %mul.i.i133.i = mul i32 %xor.i.i132.i, %51
  %52 = ptrtoint ptr %48 to i32
  %xor.i8.i134.i = xor i32 %50, %52
  %mul.i10.i135.i = mul i32 %xor.i8.i134.i, %51
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i133.i, i32 %mul.i10.i135.i)
  %cmp.i136.i = icmp slt i32 %mul.i.i133.i, %mul.i10.i135.i
  %conv.i137.i = zext i1 %cmp.i136.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i133.i, i32 %mul.i10.i135.i)
  %cmp2.i138.i = icmp sgt i32 %mul.i.i133.i, %mul.i10.i135.i
  %shl.i139.i = select i1 %cmp2.i138.i, i32 2, i32 0
  %or.i140.i = or i32 %shl.i139.i, %conv.i137.i
  br label %err_unlock.i

sw.bb35.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %io_context.i = getelementptr inbounds %struct.task_struct, ptr %call.i, i32 0, i32 151
  %53 = ptrtoint ptr %io_context.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io_context.i, align 8
  %io_context36.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 151
  %55 = ptrtoint ptr %io_context36.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_context36.i, align 8
  %57 = ptrtoint ptr %54 to i32
  %58 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 5), align 4
  %xor.i.i141.i = xor i32 %58, %57
  %59 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 5, i32 1), align 4
  %mul.i.i142.i = mul i32 %xor.i.i141.i, %59
  %60 = ptrtoint ptr %56 to i32
  %xor.i8.i143.i = xor i32 %58, %60
  %mul.i10.i144.i = mul i32 %xor.i8.i143.i, %59
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i142.i, i32 %mul.i10.i144.i)
  %cmp.i145.i = icmp slt i32 %mul.i.i142.i, %mul.i10.i144.i
  %conv.i146.i = zext i1 %cmp.i145.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i142.i, i32 %mul.i10.i144.i)
  %cmp2.i147.i = icmp sgt i32 %mul.i.i142.i, %mul.i10.i144.i
  %shl.i148.i = select i1 %cmp2.i147.i, i32 2, i32 0
  %or.i149.i = or i32 %shl.i148.i, %conv.i146.i
  br label %err_unlock.i

sw.bb38.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %sysvsem.i = getelementptr inbounds %struct.task_struct, ptr %call.i, i32 0, i32 103
  %61 = ptrtoint ptr %sysvsem.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sysvsem.i, align 4
  %sysvsem39.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 103
  %63 = ptrtoint ptr %sysvsem39.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sysvsem39.i, align 4
  %65 = ptrtoint ptr %62 to i32
  %66 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 6), align 4
  %xor.i.i150.i = xor i32 %66, %65
  %67 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 6, i32 1), align 4
  %mul.i.i151.i = mul i32 %xor.i.i150.i, %67
  %68 = ptrtoint ptr %64 to i32
  %xor.i8.i152.i = xor i32 %66, %68
  %mul.i10.i153.i = mul i32 %xor.i8.i152.i, %67
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i151.i, i32 %mul.i10.i153.i)
  %cmp.i154.i = icmp slt i32 %mul.i.i151.i, %mul.i10.i153.i
  %conv.i155.i = zext i1 %cmp.i154.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i151.i, i32 %mul.i10.i153.i)
  %cmp2.i156.i = icmp sgt i32 %mul.i.i151.i, %mul.i10.i153.i
  %shl.i157.i = select i1 %cmp2.i156.i, i32 2, i32 0
  %or.i158.i = or i32 %shl.i157.i, %conv.i155.i
  br label %err_unlock.i

sw.bb42.i:                                        ; preds = %if.end15.i
  %69 = inttoptr i32 %idx2 to ptr
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %slot.i) #7
  %70 = ptrtoint ptr %slot.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %slot.i, align 4, !annotation !53
  %71 = getelementptr inbounds %struct.kcmp_epoll_slot, ptr %slot.i, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %71, align 4, !annotation !53
  %73 = getelementptr inbounds %struct.kcmp_epoll_slot, ptr %slot.i, i32 0, i32 2
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %73, align 4, !annotation !53
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #7
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %sw.bb42.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb42.i.if.then11.i.i.i_crit_edge:              ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb42.i
  %75 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %69, i32 12, i32 -1226833920) #10, !srcloc !54
  %asmresult.i.i.i = extractvalue { i32, i32 } %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !51

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %slot.i, i32 noundef 12) #7
  %76 = call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i.i.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 4
  %78 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !55
  %and.i.i.i.i.i = and i32 %78, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %slot.i, ptr noundef %69, i32 noundef 12) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i3, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !51

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb42.i.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 12, %sw.bb42.i.if.then11.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 12, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %slot.i, i32 %sub.i.i.i
  %79 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %kcmp_epoll_target.exit

if.end.i3:                                        ; preds = %if.end.i.i.i
  %call1.i1 = call fastcc ptr @get_file_raw_ptr(ptr noundef nonnull %call.i, i32 noundef %idx1) #7
  %tobool2.not.i2 = icmp eq ptr %call1.i1, null
  br i1 %tobool2.not.i2, label %if.end.i3.kcmp_epoll_target.exit_crit_edge, label %if.end4.i

if.end.i3.kcmp_epoll_target.exit_crit_edge:       ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #9
  br label %kcmp_epoll_target.exit

if.end4.i:                                        ; preds = %if.end.i3
  %80 = ptrtoint ptr %slot.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %slot.i, align 4
  %call5.i = call ptr @fget_task(ptr noundef nonnull %call1.i, i32 noundef %81) #7
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end4.i.kcmp_epoll_target.exit_crit_edge, label %if.end8.i

if.end4.i.kcmp_epoll_target.exit_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kcmp_epoll_target.exit

if.end8.i:                                        ; preds = %if.end4.i
  %82 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %71, align 4
  %84 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %73, align 4
  %call9.i = call ptr @get_epoll_tfile_raw_ptr(ptr noundef nonnull %call5.i, i32 noundef %83, i32 noundef %85) #7
  call void @fput(ptr noundef nonnull %call5.i) #7
  %cmp.i.i4 = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i4, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %call9.i to i32
  br label %kcmp_epoll_target.exit

if.end13.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %call1.i1 to i32
  %88 = load i32, ptr @cookies, align 4
  %xor.i.i.i5 = xor i32 %88, %87
  %89 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 0, i32 1), align 4
  %mul.i.i.i6 = mul i32 %xor.i.i.i5, %89
  %90 = ptrtoint ptr %call9.i to i32
  %xor.i8.i.i7 = xor i32 %88, %90
  %mul.i10.i.i8 = mul i32 %xor.i8.i.i7, %89
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i6, i32 %mul.i10.i.i8)
  %cmp.i23.i = icmp slt i32 %mul.i.i.i6, %mul.i10.i.i8
  %conv.i.i9 = zext i1 %cmp.i23.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i6, i32 %mul.i10.i.i8)
  %cmp2.i.i10 = icmp sgt i32 %mul.i.i.i6, %mul.i10.i.i8
  %shl.i.i11 = select i1 %cmp2.i.i10, i32 2, i32 0
  %or.i.i12 = or i32 %shl.i.i11, %conv.i.i9
  br label %kcmp_epoll_target.exit

kcmp_epoll_target.exit:                           ; preds = %if.end13.i, %if.then11.i, %if.end4.i.kcmp_epoll_target.exit_crit_edge, %if.end.i3.kcmp_epoll_target.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i13 = phi i32 [ %86, %if.then11.i ], [ %or.i.i12, %if.end13.i ], [ -9, %if.end.i3.kcmp_epoll_target.exit_crit_edge ], [ -9, %if.end4.i.kcmp_epoll_target.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %slot.i) #7
  br label %err_unlock.i

err_unlock.i:                                     ; preds = %kcmp_epoll_target.exit, %sw.bb38.i, %sw.bb35.i, %sw.bb32.i, %sw.bb29.i, %sw.bb26.i, %sw.bb23.i, %if.then20.i, %sw.bb.i.err_unlock.i_crit_edge, %if.end15.i.err_unlock.i_crit_edge, %lor.lhs.false12.i.err_unlock.i_crit_edge, %if.end10.i.err_unlock.i_crit_edge
  %ret.1.i = phi i32 [ %retval.0.i13, %kcmp_epoll_target.exit ], [ %or.i158.i, %sw.bb38.i ], [ %or.i149.i, %sw.bb35.i ], [ %or.i140.i, %sw.bb32.i ], [ %or.i131.i, %sw.bb29.i ], [ %or.i122.i, %sw.bb26.i ], [ %or.i113.i, %sw.bb23.i ], [ -1, %lor.lhs.false12.i.err_unlock.i_crit_edge ], [ -1, %if.end10.i.err_unlock.i_crit_edge ], [ %or.i.i, %if.then20.i ], [ -9, %sw.bb.i.err_unlock.i_crit_edge ], [ -22, %if.end15.i.err_unlock.i_crit_edge ]
  %91 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %signal.i, align 16
  %exec_update_lock45.i = getelementptr inbounds %struct.signal_struct, ptr %92, i32 0, i32 61
  %93 = ptrtoint ptr %signal5.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %signal5.i, align 16
  %cmp.not.i.i = icmp eq ptr %94, %92
  br i1 %cmp.not.i.i, label %err_unlock.i.err.sink.split.i_crit_edge, label %if.then.i159.i, !prof !50

err_unlock.i.err.sink.split.i_crit_edge:          ; preds = %err_unlock.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.sink.split.i

if.then.i159.i:                                   ; preds = %err_unlock.i
  call void @__sanitizer_cov_trace_pc() #9
  %exec_update_lock47.i = getelementptr inbounds %struct.signal_struct, ptr %94, i32 0, i32 61
  call void @up_read(ptr noundef %exec_update_lock47.i) #7
  br label %err.sink.split.i

err.sink.split.i:                                 ; preds = %if.then.i159.i, %err_unlock.i.err.sink.split.i_crit_edge, %if.then4.i.i.err.sink.split.i_crit_edge
  %spec.select19.i.sink.i = phi ptr [ %spec.select19.i.i, %if.then4.i.i.err.sink.split.i_crit_edge ], [ %exec_update_lock45.i, %err_unlock.i.err.sink.split.i_crit_edge ], [ %exec_update_lock45.i, %if.then.i159.i ]
  %ret.2.ph.i = phi i32 [ %call5.i.i, %if.then4.i.i.err.sink.split.i_crit_edge ], [ %ret.1.i, %err_unlock.i.err.sink.split.i_crit_edge ], [ %ret.1.i, %if.then.i159.i ]
  call void @up_read(ptr noundef %spec.select19.i.sink.i) #7
  br label %err.i

err.i:                                            ; preds = %err.sink.split.i, %rcu_read_unlock.exit.i.err.i_crit_edge
  %ret.2.i = phi i32 [ %call.i101.i, %rcu_read_unlock.exit.i.err.i_crit_edge ], [ %ret.2.ph.i, %err.sink.split.i ]
  %call.i.i.i.i.i.i161.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #7
  %95 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #7, !srcloc !59
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i163.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %err.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i162.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i162.i, label %if.end5.i.i.i.i.i.put_task_struct.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !51

if.end5.i.i.i.i.i.put_task_struct.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_task_struct.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef 3) #7
  br label %put_task_struct.exit.i

if.then.i163.i:                                   ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @__put_task_struct(ptr noundef nonnull %call.i) #7
  br label %put_task_struct.exit.i

put_task_struct.exit.i:                           ; preds = %if.then.i163.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.put_task_struct.exit.i_crit_edge
  %call.i.i.i.i.i.i165.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i82.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void @llvm.prefetch.p0(ptr %usage.i82.i, i32 1, i32 3, i32 1) #7
  %96 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i82.i, ptr %usage.i82.i, i32 1, ptr elementtype(i32) %usage.i82.i) #7, !srcloc !59
  %asmresult.i.i.i.i.i.i.i166.i = extractvalue { i32, i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i166.i)
  %cmp.i.i.i.i167.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i166.i, 1
  br i1 %cmp.i.i.i.i167.i, label %if.then.i171.i, label %if.end5.i.i.i.i169.i

if.end5.i.i.i.i169.i:                             ; preds = %put_task_struct.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i166.i)
  %.not.i.i.i.i168.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i166.i, 0
  br i1 %.not.i.i.i.i168.i, label %if.end5.i.i.i.i169.i.__do_sys_kcmp.exit_crit_edge, label %if.then10.i.i.i.i170.i, !prof !51

if.end5.i.i.i.i169.i.__do_sys_kcmp.exit_crit_edge: ; preds = %if.end5.i.i.i.i169.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_kcmp.exit

if.then10.i.i.i.i170.i:                           ; preds = %if.end5.i.i.i.i169.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %usage.i82.i, i32 noundef 3) #7
  br label %__do_sys_kcmp.exit

if.then.i171.i:                                   ; preds = %put_task_struct.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #7
  br label %__do_sys_kcmp.exit

err_no_task.i:                                    ; preds = %rcu_read_lock.exit.i
  %call.i173.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i173.i, label %err_no_task.i.rcu_read_unlock.exit183.i_crit_edge, label %land.lhs.true.i176.i

err_no_task.i.rcu_read_unlock.exit183.i_crit_edge: ; preds = %err_no_task.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit183.i

land.lhs.true.i176.i:                             ; preds = %err_no_task.i
  %call1.i174.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i174.i)
  %tobool.not.i175.i = icmp eq i32 %call1.i174.i, 0
  br i1 %tobool.not.i175.i, label %land.lhs.true.i176.i.rcu_read_unlock.exit183.i_crit_edge, label %land.lhs.true2.i178.i

land.lhs.true.i176.i.rcu_read_unlock.exit183.i_crit_edge: ; preds = %land.lhs.true.i176.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit183.i

land.lhs.true2.i178.i:                            ; preds = %land.lhs.true.i176.i
  %.b4.i177.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i177.i, label %land.lhs.true2.i178.i.rcu_read_unlock.exit183.i_crit_edge, label %if.then.i179.i

land.lhs.true2.i178.i.rcu_read_unlock.exit183.i_crit_edge: ; preds = %land.lhs.true2.i178.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit183.i

if.then.i179.i:                                   ; preds = %land.lhs.true2.i178.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #7
  br label %rcu_read_unlock.exit183.i

rcu_read_unlock.exit183.i:                        ; preds = %if.then.i179.i, %land.lhs.true2.i178.i.rcu_read_unlock.exit183.i_crit_edge, %land.lhs.true.i176.i.rcu_read_unlock.exit183.i_crit_edge, %err_no_task.i.rcu_read_unlock.exit183.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  %97 = tail call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i180.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i.i.i180.i to ptr
  %preempt_count.i.i.i.i181.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %preempt_count.i.i.i.i181.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %preempt_count.i.i.i.i181.i, align 4
  %sub.i.i.i182.i = add i32 %100, -1
  store volatile i32 %sub.i.i.i182.i, ptr %preempt_count.i.i.i.i181.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %__do_sys_kcmp.exit

__do_sys_kcmp.exit:                               ; preds = %rcu_read_unlock.exit183.i, %if.then.i171.i, %if.then10.i.i.i.i170.i, %if.end5.i.i.i.i169.i.__do_sys_kcmp.exit_crit_edge
  %retval.0.i = phi i32 [ -3, %rcu_read_unlock.exit183.i ], [ %ret.2.i, %if.end5.i.i.i.i169.i.__do_sys_kcmp.exit_crit_edge ], [ %ret.2.i, %if.then10.i.i.i.i170.i ], [ %ret.2.i, %if.then.i171.i ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kcmp_cookies_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @get_random_bytes(ptr noundef nonnull @cookies, i32 noundef 64) #7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx1 = getelementptr [8 x [2 x i32]], ptr @cookies, i32 0, i32 %i.04, i32 1
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx1, align 4
  %or = or i32 %1, -2147483647
  store i32 %or, ptr %arrayidx1, align 4
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_file_raw_ptr(ptr noundef %task, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !48
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @task_lookup_fd_rcu(ptr noundef %task, i32 noundef %idx) #7
  %call.i1 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i1, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i4

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i4:                                 ; preds = %rcu_read_lock.exit
  %call1.i2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %tobool.not.i3 = icmp eq i32 %call1.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i6

land.lhs.true.i4.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i6:                                ; preds = %land.lhs.true.i4
  %.b4.i5 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5, label %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, label %if.then.i7

land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i7:                                       ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i7, %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  %4 = tail call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i8 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i8 to ptr
  %preempt_count.i.i.i.i9 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i9, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i9, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret ptr %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_lookup_fd_rcu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget_task(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_epoll_tfile_raw_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !33, !34, !36}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/kcmp.c", i32 135, i32 1}
!2 = !{ptr @event_enter__kcmp, !1, !"event_enter__kcmp", i1 false, i1 false}
!3 = !{ptr @__event_enter__kcmp, !1, !"__event_enter__kcmp", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__kcmp, !1, !"event_exit__kcmp", i1 false, i1 false}
!6 = !{ptr @__event_exit__kcmp, !1, !"__event_exit__kcmp", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__kcmp, !1, !"__syscall_meta__kcmp", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__kcmp, !1, !"__p_syscall_meta__kcmp", i1 false, i1 false}
!10 = !{ptr @__initcall__kmod_kcmp__259_239_kcmp_cookies_init3, !11, !"__initcall__kmod_kcmp__259_239_kcmp_cookies_init3", i1 false, i1 false}
!11 = !{!"../kernel/kcmp.c", i32 239, i32 1}
!12 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @types__kcmp, !1, !"types__kcmp", i1 false, i1 false}
!16 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @args__kcmp, !1, !"args__kcmp", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cookies, !30, !"cookies", i1 false, i1 false}
!30 = !{!"../kernel/kcmp.c", i32 37, i32 22}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!33 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2149528642}
!49 = !{i64 2148214801, i64 2148214833, i64 2148214862, i64 2148214896, i64 2148214927, i64 2148214950}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 2149528908}
!53 = !{!"auto-init"}
!54 = !{i64 2152228675, i64 2152228700}
!55 = !{i64 4724230}
!56 = !{i64 4724427}
!57 = !{i64 2152209660}
!58 = !{i64 2148302802}
!59 = !{i64 2148217266, i64 2148217298, i64 2148217327, i64 2148217361, i64 2148217392, i64 2148217415}
!60 = !{i64 2150426840}
