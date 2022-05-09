; ModuleID = '/llk/IR_all_yes/kernel/futex/syscalls.c_pt.bc'
source_filename = "../kernel/futex/syscalls.c"
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
%struct.futex_q = type { %struct.plist_node, ptr, ptr, %union.futex_key, ptr, ptr, ptr, i32, %struct.atomic_t }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%union.futex_key = type { %struct.anon.59 }
%struct.anon.59 = type { i64, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.65, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.timespec64 = type { i64, i32 }
%struct.futex_waitv = type { i64, i64, i32, i32 }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }
%struct.futex_vector = type { %struct.futex_waitv, %struct.futex_q }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_enter_set_robust_list\00", [38 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__set_robust_list = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 2, ptr @types__set_robust_list, ptr @args__set_robust_list, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__set_robust_list, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__set_robust_list, i64 20) }, ptr @event_enter__set_robust_list, ptr @event_exit__set_robust_list }, align 4
@event_enter__set_robust_list = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__set_robust_list, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__set_robust_list = internal global ptr @event_enter__set_robust_list, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_exit_set_robust_list\00", [39 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__set_robust_list = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__set_robust_list, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__set_robust_list = internal global ptr @event_exit__set_robust_list, section "_ftrace_events", align 4
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_set_robust_list\00", [44 x i8] zeroinitializer }, align 32
@types__set_robust_list = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.15, ptr @.str.16], [24 x i8] zeroinitializer }, align 32
@args__set_robust_list = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.17, ptr @.str.18], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__set_robust_list = internal global ptr @__syscall_meta__set_robust_list, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_enter_get_robust_list\00", [38 x i8] zeroinitializer }, align 32
@__syscall_meta__get_robust_list = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 3, ptr @types__get_robust_list, ptr @args__get_robust_list, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__get_robust_list, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__get_robust_list, i64 20) }, ptr @event_enter__get_robust_list, ptr @event_exit__get_robust_list }, align 4
@event_enter__get_robust_list = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__get_robust_list, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__get_robust_list = internal global ptr @event_enter__get_robust_list, section "_ftrace_events", align 4
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_exit_get_robust_list\00", [39 x i8] zeroinitializer }, align 32
@event_exit__get_robust_list = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__get_robust_list, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__get_robust_list = internal global ptr @event_exit__get_robust_list, section "_ftrace_events", align 4
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_get_robust_list\00", [44 x i8] zeroinitializer }, align 32
@types__get_robust_list = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21], [20 x i8] zeroinitializer }, align 32
@args__get_robust_list = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__get_robust_list = internal global ptr @__syscall_meta__get_robust_list, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_futex\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__futex = internal global %struct.syscall_metadata { ptr @.str.8, i32 -1, i32 6, ptr @types__futex, ptr @args__futex, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__futex, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__futex, i64 20) }, ptr @event_enter__futex, ptr @event_exit__futex }, align 4
@event_enter__futex = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__futex, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__futex = internal global ptr @event_enter__futex, section "_ftrace_events", align 4
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_futex\00", [17 x i8] zeroinitializer }, align 32
@event_exit__futex = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__futex, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__futex = internal global ptr @event_exit__futex, section "_ftrace_events", align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_futex\00", [22 x i8] zeroinitializer }, align 32
@types__futex = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.29, ptr @.str.19, ptr @.str.30, ptr @.str.31, ptr @.str.29, ptr @.str.30], [40 x i8] zeroinitializer }, align 32
@args__futex = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [40 x i8] zeroinitializer }, align 32
@__p_syscall_meta__futex = internal global ptr @__syscall_meta__futex, section "__syscalls_metadata", align 4
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_futex_waitv\00", [42 x i8] zeroinitializer }, align 32
@__syscall_meta__futex_waitv = internal global %struct.syscall_metadata { ptr @.str.11, i32 -1, i32 5, ptr @types__futex_waitv, ptr @args__futex_waitv, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__futex_waitv, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__futex_waitv, i64 20) }, ptr @event_enter__futex_waitv, ptr @event_exit__futex_waitv }, align 4
@event_enter__futex_waitv = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__futex_waitv, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__futex_waitv = internal global ptr @event_enter__futex_waitv, section "_ftrace_events", align 4
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_futex_waitv\00", [43 x i8] zeroinitializer }, align 32
@event_exit__futex_waitv = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__futex_waitv, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__futex_waitv = internal global ptr @event_exit__futex_waitv, section "_ftrace_events", align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_futex_waitv\00", [16 x i8] zeroinitializer }, align 32
@types__futex_waitv = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.39, ptr @.str.40, ptr @.str.41], [44 x i8] zeroinitializer }, align 32
@args__futex_waitv = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__futex_waitv = internal global ptr @__syscall_meta__futex_waitv, section "__syscalls_metadata", align 4
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_enter_futex_time32\00", [41 x i8] zeroinitializer }, align 32
@__syscall_meta__futex_time32 = internal global %struct.syscall_metadata { ptr @.str.14, i32 -1, i32 6, ptr @types__futex_time32, ptr @args__futex_time32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__futex_time32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__futex_time32, i64 20) }, ptr @event_enter__futex_time32, ptr @event_exit__futex_time32 }, align 4
@event_enter__futex_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__futex_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__futex_time32 = internal global ptr @event_enter__futex_time32, section "_ftrace_events", align 4
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_exit_futex_time32\00", [42 x i8] zeroinitializer }, align 32
@event_exit__futex_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__futex_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__futex_time32 = internal global ptr @event_exit__futex_time32, section "_ftrace_events", align 4
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_futex_time32\00", [47 x i8] zeroinitializer }, align 32
@types__futex_time32 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.29, ptr @.str.19, ptr @.str.30, ptr @.str.50, ptr @.str.29, ptr @.str.30], [40 x i8] zeroinitializer }, align 32
@args__futex_time32 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [40 x i8] zeroinitializer }, align 32
@__p_syscall_meta__futex_time32 = internal global ptr @__syscall_meta__futex_time32, section "__syscalls_metadata", align 4
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"struct robust_list_head *\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"head\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"struct robust_list_head * *\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"size_t *\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"head_ptr\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"len_ptr\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kernel/futex/syscalls.c\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"u32 *\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"const struct __kernel_timespec *\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uaddr\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"op\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"val\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"utime\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uaddr2\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"val3\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"struct futex_waitv *\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"struct __kernel_timespec *\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clockid_t\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"waiters\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nr_futexes\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clockid\00", [24 x i8] zeroinitializer }, align 32
@futex_q_init = external dso_local local_unnamed_addr constant %struct.futex_q, align 8
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"const struct old_timespec32 *\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 11, i64 13]
@__sancov_gen_cov_switch_values.51 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.52 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 6, i64 9, i64 11, i64 13]
@__sancov_gen_cov_switch_values.53 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 6, i64 9, i64 11, i64 13]
@___asan_gen_.57 = private unnamed_addr constant [29 x i8] c"event_enter__set_robust_list\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [28 x i8] c"event_exit__set_robust_list\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [23 x i8] c"types__set_robust_list\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"args__set_robust_list\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [29 x i8] c"event_enter__get_robust_list\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [28 x i8] c"event_exit__get_robust_list\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [23 x i8] c"types__get_robust_list\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [22 x i8] c"args__get_robust_list\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c"event_enter__futex\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"event_exit__futex\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [13 x i8] c"types__futex\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [12 x i8] c"args__futex\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [25 x i8] c"event_enter__futex_waitv\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [24 x i8] c"event_exit__futex_waitv\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [19 x i8] c"types__futex_waitv\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [18 x i8] c"args__futex_waitv\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [26 x i8] c"event_enter__futex_time32\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [25 x i8] c"event_exit__futex_time32\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c"types__futex_time32\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c"args__futex_time32\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 29, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 49, i32 1 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 75, i32 6 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 695, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 723, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 164, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 246, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 156, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.259 = private constant [27 x i8] c"../kernel/futex/syscalls.c\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 356, i32 1 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__event_enter__futex, ptr @__event_enter__futex_time32, ptr @__event_enter__futex_waitv, ptr @__event_enter__get_robust_list, ptr @__event_enter__set_robust_list, ptr @__event_exit__futex, ptr @__event_exit__futex_time32, ptr @__event_exit__futex_waitv, ptr @__event_exit__get_robust_list, ptr @__event_exit__set_robust_list, ptr @__p_syscall_meta__futex, ptr @__p_syscall_meta__futex_time32, ptr @__p_syscall_meta__futex_waitv, ptr @__p_syscall_meta__get_robust_list, ptr @__p_syscall_meta__set_robust_list, ptr @__syscall_meta__futex, ptr @__syscall_meta__futex_time32, ptr @__syscall_meta__futex_waitv, ptr @__syscall_meta__get_robust_list, ptr @__syscall_meta__set_robust_list, ptr @event_enter__futex, ptr @event_enter__futex_time32, ptr @event_enter__futex_waitv, ptr @event_enter__get_robust_list, ptr @event_enter__set_robust_list, ptr @event_exit__futex, ptr @event_exit__futex_time32, ptr @event_exit__futex_waitv, ptr @event_exit__get_robust_list, ptr @event_exit__set_robust_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__set_robust_list, ptr @args__set_robust_list, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__get_robust_list, ptr @args__get_robust_list, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @types__futex, ptr @args__futex, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @types__futex_waitv, ptr @args__futex_waitv, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @types__futex_time32, ptr @args__futex_time32, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__set_robust_list to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__set_robust_list to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__set_robust_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__set_robust_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__get_robust_list to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__get_robust_list to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__get_robust_list to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__get_robust_list to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__futex to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__futex to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__futex to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__futex to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__futex_waitv to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__futex_waitv to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__futex_waitv to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__futex_waitv to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__futex_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__futex_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__futex_time32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__futex_time32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_set_robust_list = dso_local alias i32 (ptr, i32), ptr @__se_sys_set_robust_list
@sys_get_robust_list = dso_local alias i32 (i32, ptr, ptr), ptr @__se_sys_get_robust_list
@sys_futex = dso_local alias i32 (ptr, i32, i32, ptr, ptr, i32), ptr @__se_sys_futex
@sys_futex_waitv = dso_local alias i32 (ptr, i32, i32, ptr, i32), ptr @__se_sys_futex_waitv
@sys_futex_time32 = dso_local alias i32 (ptr, i32, i32, ptr, ptr, i32), ptr @__se_sys_futex_time32

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__se_sys_set_robust_list(i32 noundef %head, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %len)
  %cmp.not.i = icmp eq i32 %len, 12
  br i1 %cmp.not.i, label %if.end.i, label %entry.__do_sys_set_robust_list.exit_crit_edge, !prof !115

entry.__do_sys_set_robust_list.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_set_robust_list.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = inttoptr i32 %head to ptr
  %1 = tail call i32 @llvm.read_register.i32(metadata !105) #7
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %robust_list.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 166
  %5 = ptrtoint ptr %robust_list.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %0, ptr %robust_list.i, align 4
  br label %__do_sys_set_robust_list.exit

__do_sys_set_robust_list.exit:                    ; preds = %if.end.i, %entry.__do_sys_set_robust_list.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %entry.__do_sys_set_robust_list.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_get_robust_list(i32 noundef %pid, i32 noundef %head_ptr, i32 noundef %len_ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %head_ptr to ptr
  %1 = inttoptr i32 %len_ptr to ptr
  %2 = tail call i32 @llvm.read_register.i32(metadata !105) #7
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !116
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pid)
  %tobool.not.i = icmp eq i32 %pid, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call i32 @llvm.read_register.i32(metadata !105) #7
  %and.i37.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i37.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  br label %if.end4.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call ptr @find_task_by_vpid(i32 noundef %pid) #7
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.else.i.err_unlock.i_crit_edge, label %if.else.i.if.end4.i_crit_edge

if.else.i.if.end4.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.else.i.err_unlock.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock.i

if.end4.i:                                        ; preds = %if.else.i.if.end4.i_crit_edge, %if.then.i
  %p.0.i = phi ptr [ %call1.i, %if.else.i.if.end4.i_crit_edge ], [ %9, %if.then.i ]
  %call5.i = tail call zeroext i1 @ptrace_may_access(ptr noundef %p.0.i, i32 noundef 17) #7
  br i1 %call5.i, label %if.end7.i, label %if.end4.i.err_unlock.i_crit_edge

if.end4.i.err_unlock.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock.i

if.end7.i:                                        ; preds = %if.end4.i
  %robust_list.i = getelementptr inbounds %struct.task_struct, ptr %p.0.i, i32 0, i32 166
  %10 = ptrtoint ptr %robust_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %robust_list.i, align 4
  %call.i38.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i38.i, label %if.end7.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i41.i

if.end7.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true.i41.i:                              ; preds = %if.end7.i
  %call1.i39.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39.i)
  %tobool.not.i40.i = icmp eq i32 %call1.i39.i, 0
  br i1 %tobool.not.i40.i, label %land.lhs.true.i41.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i43.i

land.lhs.true.i41.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i43.i:                             ; preds = %land.lhs.true.i41.i
  %.b4.i42.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i42.i, label %land.lhs.true2.i43.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i44.i

land.lhs.true2.i43.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

if.then.i44.i:                                    ; preds = %land.lhs.true2.i43.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #7
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i44.i, %land.lhs.true2.i43.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i41.i.rcu_read_unlock.exit.i_crit_edge, %if.end7.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !117
  %12 = tail call i32 @llvm.read_register.i32(metadata !105) #7
  %and.i.i.i.i.i45.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i45.i to ptr
  %preempt_count.i.i.i.i46.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i46.i, align 4
  %sub.i.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i46.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 75) #7
  %16 = tail call i32 @llvm.read_register.i32(metadata !105) #7
  %and.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #4, !srcloc !118
  %and.i.i = and i32 %18, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #7, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  %19 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 12, i32 -1226833921) #7, !srcloc !121
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #7, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not.i = icmp eq i32 %19, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %rcu_read_unlock.exit.i.__do_sys_get_robust_list.exit_crit_edge

rcu_read_unlock.exit.i.__do_sys_get_robust_list.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_get_robust_list.exit

if.end12.i:                                       ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 77) #7
  %20 = tail call i32 @llvm.read_register.i32(metadata !105) #7
  %and.i.i.i33.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i33.i to ptr
  %cpu_domain.i.i34.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i34.i) #4, !srcloc !118
  %and.i35.i = and i32 %22, -13
  %or.i36.i = or i32 %and.i35.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i36.i) #7, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  %23 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, ptr %11, i32 -1226833921) #7, !srcloc !122
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #7, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  br label %__do_sys_get_robust_list.exit

err_unlock.i:                                     ; preds = %if.end4.i.err_unlock.i_crit_edge, %if.else.i.err_unlock.i_crit_edge
  %ret.0.i = phi i32 [ -1, %if.end4.i.err_unlock.i_crit_edge ], [ -3, %if.else.i.err_unlock.i_crit_edge ]
  %call.i47.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i47.i, label %err_unlock.i.rcu_read_unlock.exit57.i_crit_edge, label %land.lhs.true.i50.i

err_unlock.i.rcu_read_unlock.exit57.i_crit_edge:  ; preds = %err_unlock.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit57.i

land.lhs.true.i50.i:                              ; preds = %err_unlock.i
  %call1.i48.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48.i)
  %tobool.not.i49.i = icmp eq i32 %call1.i48.i, 0
  br i1 %tobool.not.i49.i, label %land.lhs.true.i50.i.rcu_read_unlock.exit57.i_crit_edge, label %land.lhs.true2.i52.i

land.lhs.true.i50.i.rcu_read_unlock.exit57.i_crit_edge: ; preds = %land.lhs.true.i50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit57.i

land.lhs.true2.i52.i:                             ; preds = %land.lhs.true.i50.i
  %.b4.i51.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51.i, label %land.lhs.true2.i52.i.rcu_read_unlock.exit57.i_crit_edge, label %if.then.i53.i

land.lhs.true2.i52.i.rcu_read_unlock.exit57.i_crit_edge: ; preds = %land.lhs.true2.i52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit57.i

if.then.i53.i:                                    ; preds = %land.lhs.true2.i52.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #7
  br label %rcu_read_unlock.exit57.i

rcu_read_unlock.exit57.i:                         ; preds = %if.then.i53.i, %land.lhs.true2.i52.i.rcu_read_unlock.exit57.i_crit_edge, %land.lhs.true.i50.i.rcu_read_unlock.exit57.i_crit_edge, %err_unlock.i.rcu_read_unlock.exit57.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !117
  %24 = tail call i32 @llvm.read_register.i32(metadata !105) #7
  %and.i.i.i.i.i54.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i54.i to ptr
  %preempt_count.i.i.i.i55.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i55.i, align 4
  %sub.i.i.i56.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i56.i, ptr %preempt_count.i.i.i.i55.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %__do_sys_get_robust_list.exit

__do_sys_get_robust_list.exit:                    ; preds = %rcu_read_unlock.exit57.i, %if.end12.i, %rcu_read_unlock.exit.i.__do_sys_get_robust_list.exit_crit_edge
  %retval.0.i = phi i32 [ %23, %if.end12.i ], [ %ret.0.i, %rcu_read_unlock.exit57.i ], [ -14, %rcu_read_unlock.exit.i.__do_sys_get_robust_list.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_futex(ptr noundef %uaddr, i32 noundef %op, i32 noundef %val, ptr noundef %timeout, ptr noundef %uaddr2, i32 noundef %val2, i32 noundef %val3) local_unnamed_addr #2 align 64 {
entry:
  %val3.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val3.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val3, ptr %val3.addr, align 4
  %and = and i32 %op, -385
  %and1 = lshr i32 %op, 7
  %and1.lobit = and i32 %and1, 1
  %1 = xor i32 %and1.lobit, 1
  %and2 = and i32 %op, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %entry.if.end11_crit_edge, label %if.then4

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then4:                                         ; preds = %entry
  %or5 = or i32 %1, 2
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.then4.cleanup_crit_edge [
    i32 9, label %if.then4.if.end11_crit_edge
    i32 11, label %if.then4.if.end11_crit_edge76
    i32 13, label %if.then4.if.end11_crit_edge77
  ]

if.then4.if.end11_crit_edge77:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then4.if.end11_crit_edge76:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.then4.if.end11_crit_edge, %if.then4.if.end11_crit_edge76, %if.then4.if.end11_crit_edge77, %entry.if.end11_crit_edge
  %flags.1 = phi i32 [ %or5, %if.then4.if.end11_crit_edge ], [ %1, %entry.if.end11_crit_edge ], [ %or5, %if.then4.if.end11_crit_edge76 ], [ %or5, %if.then4.if.end11_crit_edge77 ]
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %and, label %if.end11.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 9, label %if.end11.sw.bb12_crit_edge
    i32 1, label %sw.bb13
    i32 10, label %if.end11.sw.bb14_crit_edge
    i32 3, label %sw.bb16
    i32 4, label %sw.bb18
    i32 5, label %sw.bb20
    i32 6, label %sw.bb22
    i32 13, label %if.end11.sw.bb24_crit_edge
    i32 7, label %sw.bb26
    i32 8, label %sw.bb28
    i32 11, label %sw.bb30
    i32 12, label %sw.bb32
  ]

if.end11.sw.bb24_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb24

if.end11.sw.bb14_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

if.end11.sw.bb12_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %val3.addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val3.addr, align 4
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb, %if.end11.sw.bb12_crit_edge
  %5 = ptrtoint ptr %val3.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val3.addr, align 4
  %call = tail call i32 @futex_wait(ptr noundef %uaddr, i32 noundef %flags.1, i32 noundef %val, ptr noundef %timeout, i32 noundef %6) #7
  br label %cleanup

sw.bb13:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val3.addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val3.addr, align 4
  br label %sw.bb14

sw.bb14:                                          ; preds = %sw.bb13, %if.end11.sw.bb14_crit_edge
  %8 = ptrtoint ptr %val3.addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val3.addr, align 4
  %call15 = tail call i32 @futex_wake(ptr noundef %uaddr, i32 noundef %flags.1, i32 noundef %val, i32 noundef %9) #7
  br label %cleanup

sw.bb16:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 @futex_requeue(ptr noundef %uaddr, i32 noundef %flags.1, ptr noundef %uaddr2, i32 noundef %val, i32 noundef %val2, ptr noundef null, i32 noundef 0) #7
  br label %cleanup

sw.bb18:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = call i32 @futex_requeue(ptr noundef %uaddr, i32 noundef %flags.1, ptr noundef %uaddr2, i32 noundef %val, i32 noundef %val2, ptr noundef nonnull %val3.addr, i32 noundef 0) #7
  br label %cleanup

sw.bb20:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 @futex_wake_op(ptr noundef %uaddr, i32 noundef %flags.1, ptr noundef %uaddr2, i32 noundef %val, i32 noundef %val2, i32 noundef %val3) #7
  br label %cleanup

sw.bb22:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %or23 = or i32 %flags.1, 2
  br label %sw.bb24

sw.bb24:                                          ; preds = %sw.bb22, %if.end11.sw.bb24_crit_edge
  %flags.2 = phi i32 [ %flags.1, %if.end11.sw.bb24_crit_edge ], [ %or23, %sw.bb22 ]
  %call25 = tail call i32 @futex_lock_pi(ptr noundef %uaddr, i32 noundef %flags.2, ptr noundef %timeout, i32 noundef 0) #7
  br label %cleanup

sw.bb26:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 @futex_unlock_pi(ptr noundef %uaddr, i32 noundef %flags.1) #7
  br label %cleanup

sw.bb28:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 @futex_lock_pi(ptr noundef %uaddr, i32 noundef %flags.1, ptr noundef null, i32 noundef 1) #7
  br label %cleanup

sw.bb30:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %val3.addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val3.addr, align 4
  %call31 = tail call i32 @futex_wait_requeue_pi(ptr noundef %uaddr, i32 noundef %flags.1, i32 noundef %val, ptr noundef %timeout, i32 noundef -1, ptr noundef %uaddr2) #7
  br label %cleanup

sw.bb32:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = call i32 @futex_requeue(ptr noundef %uaddr, i32 noundef %flags.1, ptr noundef %uaddr2, i32 noundef %val, i32 noundef %val2, ptr noundef nonnull %val3.addr, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %if.end11.cleanup_crit_edge, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %sw.bb32 ], [ %call31, %sw.bb30 ], [ %call29, %sw.bb28 ], [ %call27, %sw.bb26 ], [ %call25, %sw.bb24 ], [ %call21, %sw.bb20 ], [ %call19, %sw.bb18 ], [ %call17, %sw.bb16 ], [ %call15, %sw.bb14 ], [ %call, %sw.bb12 ], [ -38, %if.then4.cleanup_crit_edge ], [ -38, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_wait(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_wake(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_requeue(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_wake_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_lock_pi(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_unlock_pi(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_wait_requeue_pi(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_futex(i32 noundef %uaddr, i32 noundef %op, i32 noundef %val, i32 noundef %utime, i32 noundef %uaddr2, i32 noundef %val3) #2 align 64 {
entry:
  %t.i = alloca i64, align 8
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %uaddr to ptr
  %1 = inttoptr i32 %utime to ptr
  %2 = inttoptr i32 %uaddr2 to ptr
  %and.i = and i32 %op, -385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %t.i) #7
  %3 = ptrtoint ptr %t.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %t.i, align 8, !annotation !123
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #7
  %4 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %utime)
  %tobool.not.i = icmp eq i32 %utime, 0
  br i1 %tobool.not.i, label %entry.if.end16.i_crit_edge, label %land.lhs.true.i

entry.if.end16.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %entry
  %5 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %and.i, label %land.lhs.true.i.if.end16.i_crit_edge [
    i32 0, label %land.lhs.true.i.if.then.i_crit_edge
    i32 6, label %land.lhs.true.i.if.then.i_crit_edge1
    i32 13, label %land.lhs.true.i.if.then.i_crit_edge2
    i32 9, label %land.lhs.true.i.if.then.i_crit_edge3
    i32 11, label %land.lhs.true.i.if.then.i_crit_edge4
  ]

land.lhs.true.i.if.then.i_crit_edge4:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge3:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge2:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge1:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge1, %land.lhs.true.i.if.then.i_crit_edge2, %land.lhs.true.i.if.then.i_crit_edge3, %land.lhs.true.i.if.then.i_crit_edge4
  %and1.i = and i32 %op, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %call3.i = tail call zeroext i1 @should_fail_futex(i1 noundef zeroext %tobool2.not.i) #7
  br i1 %call3.i, label %if.then.i.__do_sys_futex.exit_crit_edge, label %if.end.i, !prof !124

if.then.i.__do_sys_futex.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_futex.exit

if.end.i:                                         ; preds = %if.then.i
  %call8.i = call i32 @get_timespec64(ptr noundef nonnull %ts.i, ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end.i.__do_sys_futex.exit_crit_edge

if.end.i.__do_sys_futex.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_futex.exit

if.end11.i:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp.i.i.i = icmp slt i64 %7, 0
  br i1 %cmp.i.i.i, label %if.end11.i.__do_sys_futex.exit_crit_edge, label %timespec64_valid.exit.i.i

if.end11.i.__do_sys_futex.exit_crit_edge:         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_futex.exit

timespec64_valid.exit.i.i:                        ; preds = %if.end11.i
  %tv_nsec.i.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %8 = ptrtoint ptr %tv_nsec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tv_nsec.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %9)
  %cmp1.i.i.i = icmp ult i32 %9, 1000000000
  br i1 %cmp1.i.i.i, label %if.end.i.i, label %timespec64_valid.exit.i.i.__do_sys_futex.exit_crit_edge

timespec64_valid.exit.i.i.__do_sys_futex.exit_crit_edge: ; preds = %timespec64_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_futex.exit

if.end.i.i:                                       ; preds = %timespec64_valid.exit.i.i
  %10 = ptrtoint ptr %tv_nsec.i.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %.unpack17.i.i = load i64, ptr %tv_nsec.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %7)
  %cmp.i.i.i.i = icmp ugt i64 %7, 9223372035
  %ts.sroa.2.8.extract.shift.i.i.i = lshr i64 %.unpack17.i.i, 32
  %mul.i.i.i.i = mul i64 %7, 1000000000
  %add.i.i.i.i = add i64 %ts.sroa.2.8.extract.shift.i.i.i, %mul.i.i.i.i
  %retval.0.i.i.i.i = select i1 %cmp.i.i.i.i, i64 9223372036854775807, i64 %add.i.i.i.i, !prof !124
  %11 = ptrtoint ptr %t.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %retval.0.i.i.i.i, ptr %t.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cond.i.i = icmp eq i32 %and.i, 0
  br i1 %cond.i.i, label %if.then2.i.i, label %if.end.i.i.if.end16.i_crit_edge

if.end.i.i.if.end16.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i.i = call i64 @ktime_get() #7
  %12 = ptrtoint ptr %t.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %t.i, align 8
  %call4.i.i = call i64 @ktime_add_safe(i64 noundef %call3.i.i, i64 noundef %13) #7
  %14 = ptrtoint ptr %t.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call4.i.i, ptr %t.i, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then2.i.i, %if.end.i.i.if.end16.i_crit_edge, %land.lhs.true.i.if.end16.i_crit_edge, %entry.if.end16.i_crit_edge
  %tp.0.i = phi ptr [ null, %entry.if.end16.i_crit_edge ], [ null, %land.lhs.true.i.if.end16.i_crit_edge ], [ %t.i, %if.then2.i.i ], [ %t.i, %if.end.i.i.if.end16.i_crit_edge ]
  %call17.i = call i32 @do_futex(ptr noundef %0, i32 noundef %op, i32 noundef %val, ptr noundef %tp.0.i, ptr noundef %2, i32 noundef %utime, i32 noundef %val3) #7
  br label %__do_sys_futex.exit

__do_sys_futex.exit:                              ; preds = %if.end16.i, %timespec64_valid.exit.i.i.__do_sys_futex.exit_crit_edge, %if.end11.i.__do_sys_futex.exit_crit_edge, %if.end.i.__do_sys_futex.exit_crit_edge, %if.then.i.__do_sys_futex.exit_crit_edge
  %retval.0.i = phi i32 [ %call17.i, %if.end16.i ], [ -14, %if.then.i.__do_sys_futex.exit_crit_edge ], [ -14, %if.end.i.__do_sys_futex.exit_crit_edge ], [ -22, %timespec64_valid.exit.i.i.__do_sys_futex.exit_crit_edge ], [ -22, %if.end11.i.__do_sys_futex.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %t.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_futex_waitv(i32 noundef %waiters, i32 noundef %nr_futexes, i32 noundef %flags, i32 noundef %timeout, i32 noundef %clockid) #2 align 64 {
entry:
  %aux.i.i = alloca %struct.futex_waitv, align 8
  %to.i = alloca %struct.hrtimer_sleeper, align 8
  %ts.i = alloca %struct.timespec64, align 8
  %time.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %waiters to ptr
  %1 = inttoptr i32 %timeout to ptr
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %to.i) #7
  %2 = call ptr @memset(ptr %to.i, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #7
  %3 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %time.i) #7
  %4 = ptrtoint ptr %time.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %time.i, align 8, !annotation !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not.i = icmp eq i32 %flags, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_futex_waitv.exit_crit_edge

entry.__do_sys_futex_waitv.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_futex_waitv.exit

if.end.i:                                         ; preds = %entry
  %5 = add i32 %nr_futexes, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %5)
  %6 = icmp ult i32 %5, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %waiters)
  %tobool3.not.i = icmp eq i32 %waiters, 0
  %or.cond62.i = or i1 %tobool3.not.i, %6
  br i1 %or.cond62.i, label %if.end.i.__do_sys_futex_waitv.exit_crit_edge, label %if.end5.i

if.end.i.__do_sys_futex_waitv.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_futex_waitv.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool6.not.i = icmp eq i32 %timeout, 0
  br i1 %tobool6.not.i, label %if.end5.i.if.end7.i.i.i_crit_edge, label %if.then7.i

if.end5.i.if.end7.i.i.i_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clockid)
  %cmp8.i = icmp eq i32 %clockid, 0
  %spec.select.i = select i1 %cmp8.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %clockid)
  %switch.i = icmp ult i32 %clockid, 2
  br i1 %switch.i, label %if.end14.i, label %if.then7.i.__do_sys_futex_waitv.exit_crit_edge

if.then7.i.__do_sys_futex_waitv.exit_crit_edge:   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_futex_waitv.exit

if.end14.i:                                       ; preds = %if.then7.i
  %call.i = call i32 @get_timespec64(ptr noundef nonnull %ts.i, ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end14.i.__do_sys_futex_waitv.exit_crit_edge

if.end14.i.__do_sys_futex_waitv.exit_crit_edge:   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_futex_waitv.exit

if.end17.i:                                       ; preds = %if.end14.i
  %7 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp.i.i.i = icmp slt i64 %8, 0
  br i1 %cmp.i.i.i, label %if.end17.i.__do_sys_futex_waitv.exit_crit_edge, label %timespec64_valid.exit.i.i

if.end17.i.__do_sys_futex_waitv.exit_crit_edge:   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_futex_waitv.exit

timespec64_valid.exit.i.i:                        ; preds = %if.end17.i
  %tv_nsec.i.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %9 = ptrtoint ptr %tv_nsec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tv_nsec.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %10)
  %cmp1.i.i.i = icmp ult i32 %10, 1000000000
  br i1 %cmp1.i.i.i, label %cleanup.i, label %timespec64_valid.exit.i.i.__do_sys_futex_waitv.exit_crit_edge

timespec64_valid.exit.i.i.__do_sys_futex_waitv.exit_crit_edge: ; preds = %timespec64_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_futex_waitv.exit

cleanup.i:                                        ; preds = %timespec64_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %tv_nsec.i.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %.unpack17.i.i = load i64, ptr %tv_nsec.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %8)
  %cmp.i.i.i.i = icmp ugt i64 %8, 9223372035
  %ts.sroa.2.8.extract.shift.i.i.i = lshr i64 %.unpack17.i.i, 32
  %mul.i.i.i.i = mul i64 %8, 1000000000
  %add.i.i.i.i = add i64 %ts.sroa.2.8.extract.shift.i.i.i, %mul.i.i.i.i
  %retval.0.i.i.i.i = select i1 %cmp.i.i.i.i, i64 9223372036854775807, i64 %add.i.i.i.i, !prof !124
  %12 = ptrtoint ptr %time.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %retval.0.i.i.i.i, ptr %time.i, align 8
  %call22.i = call ptr @futex_setup_timer(ptr noundef nonnull %time.i, ptr noundef nonnull %to.i, i32 noundef %spec.select.i, i64 noundef 0) #7
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %cleanup.i, %if.end5.i.if.end7.i.i.i_crit_edge
  %13 = mul nuw nsw i32 %nr_futexes, 96
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #10
  %tobool26.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool26.not.i, label %if.end7.i.i.i.__do_sys_futex_waitv.exit_crit_edge, label %if.end28.i

if.end7.i.i.i.__do_sys_futex_waitv.exit_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_futex_waitv.exit

if.end28.i:                                       ; preds = %if.end7.i.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %aux.i.i) #7
  %14 = getelementptr inbounds %struct.futex_waitv, ptr %aux.i.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.futex_waitv, ptr %aux.i.i, i32 0, i32 2
  %16 = getelementptr inbounds %struct.futex_waitv, ptr %aux.i.i, i32 0, i32 3
  %17 = call ptr @memset(ptr %aux.i.i, i32 255, i32 24)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end9.i.i.for.body.i.i_crit_edge, %if.end28.i
  %i.033.i.i = phi i32 [ %inc.i.i, %if.end9.i.i.for.body.i.i_crit_edge ], [ 0, %if.end28.i ]
  %arrayidx.i.i = getelementptr %struct.futex_waitv, ptr %0, i32 %i.033.i.i
  call void @__might_fault(ptr noundef nonnull @.str.49, i32 noundef 156) #7
  %call.i.i.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i.i, label %for.body.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body.i.i.if.then11.i.i.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i
  %18 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx.i.i, i32 24, i32 -1226833920) #11, !srcloc !125
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i.i65.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i.i.i65.i, label %if.end.i.i.i67.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !115

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i.i

if.end.i.i.i67.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %aux.i.i, i32 noundef 24) #7
  %19 = call i32 @llvm.read_register.i32(metadata !105) #7
  %and.i.i.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #4, !srcloc !118
  %and.i.i.i.i.i.i = and i32 %21, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #7, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  %call1.i.i.i.i66.i = call i32 @arm_copy_from_user(ptr noundef nonnull %aux.i.i, ptr noundef %arrayidx.i.i, i32 noundef 24) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #7, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i66.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i66.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i68.i, label %if.end.i.i.i67.i.if.then11.i.i.i.i_crit_edge, !prof !115

if.end.i.i.i67.i.if.then11.i.i.i.i_crit_edge:     ; preds = %if.end.i.i.i67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i67.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %for.body.i.i.if.then11.i.i.i.i_crit_edge
  %res.03.i.i.i.i = phi i32 [ %call1.i.i.i.i66.i, %if.end.i.i.i67.i.if.then11.i.i.i.i_crit_edge ], [ 24, %for.body.i.i.if.then11.i.i.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 24, %res.03.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %aux.i.i, i32 %sub.i.i.i.i
  %22 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.03.i.i.i.i)
  br label %futex_parse_waitv.exit.thread.i

if.end.i68.i:                                     ; preds = %if.end.i.i.i67.i
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %15, align 8
  %and.i.i = and i32 %24, -131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i, label %if.end.i68.i.futex_parse_waitv.exit.thread.i_crit_edge

if.end.i68.i.futex_parse_waitv.exit.thread.i_crit_edge: ; preds = %if.end.i68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %futex_parse_waitv.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end.i68.i
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool2.not.i.i = icmp ne i32 %26, 0
  %and6.i.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %or.cond.i.i = select i1 %tobool2.not.i.i, i1 true, i1 %tobool7.not.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false.i.i.futex_parse_waitv.exit.thread.i_crit_edge, label %if.end9.i.i

lor.lhs.false.i.i.futex_parse_waitv.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %futex_parse_waitv.exit.thread.i

if.end9.i.i:                                      ; preds = %lor.lhs.false.i.i
  %arrayidx11.i.i = getelementptr %struct.futex_vector, ptr %call8.i.i.i, i32 %i.033.i.i
  %flags12.i.i = getelementptr inbounds %struct.futex_waitv, ptr %arrayidx11.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %flags12.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %flags12.i.i, align 16
  %28 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %aux.i.i, align 8
  %30 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %arrayidx11.i.i, align 32
  %31 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %14, align 8
  %uaddr18.i.i = getelementptr inbounds %struct.futex_waitv, ptr %arrayidx11.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %uaddr18.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %uaddr18.i.i, align 8
  %q.i.i = getelementptr %struct.futex_vector, ptr %call8.i.i.i, i32 %i.033.i.i, i32 1
  %34 = call ptr @memcpy(ptr %q.i.i, ptr @futex_q_init, i32 72)
  %inc.i.i = add nuw i32 %i.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %nr_futexes
  br i1 %exitcond.not.i.i, label %if.then31.i, label %if.end9.i.i.for.body.i.i_crit_edge

if.end9.i.i.for.body.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

futex_parse_waitv.exit.thread.i:                  ; preds = %lor.lhs.false.i.i.futex_parse_waitv.exit.thread.i_crit_edge, %if.end.i68.i.futex_parse_waitv.exit.thread.i_crit_edge, %if.then11.i.i.i.i
  %retval.0.i69.ph.i = phi i32 [ -14, %if.then11.i.i.i.i ], [ -22, %if.end.i68.i.futex_parse_waitv.exit.thread.i_crit_edge ], [ -22, %lor.lhs.false.i.i.futex_parse_waitv.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %aux.i.i) #7
  br label %if.end34.i

if.then31.i:                                      ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %aux.i.i) #7
  %to..i = select i1 %tobool6.not.i, ptr null, ptr %to.i
  %call33.i = call i32 @futex_wait_multiple(ptr noundef nonnull %call8.i.i.i, i32 noundef %nr_futexes, ptr noundef %to..i) #7
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %futex_parse_waitv.exit.thread.i
  %ret.0.i = phi i32 [ %call33.i, %if.then31.i ], [ %retval.0.i69.ph.i, %futex_parse_waitv.exit.thread.i ]
  br i1 %tobool6.not.i, label %if.end34.i.if.end39.i_crit_edge, label %if.then36.i

if.end34.i.if.end39.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.then36.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %call37.i = call i32 @hrtimer_cancel(ptr noundef nonnull %to.i) #7
  call void @destroy_hrtimer_on_stack(ptr noundef nonnull %to.i) #7
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then36.i, %if.end34.i.if.end39.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #7
  br label %__do_sys_futex_waitv.exit

__do_sys_futex_waitv.exit:                        ; preds = %if.end39.i, %if.end7.i.i.i.__do_sys_futex_waitv.exit_crit_edge, %timespec64_valid.exit.i.i.__do_sys_futex_waitv.exit_crit_edge, %if.end17.i.__do_sys_futex_waitv.exit_crit_edge, %if.end14.i.__do_sys_futex_waitv.exit_crit_edge, %if.then7.i.__do_sys_futex_waitv.exit_crit_edge, %if.end.i.__do_sys_futex_waitv.exit_crit_edge, %entry.__do_sys_futex_waitv.exit_crit_edge
  %retval.1.i = phi i32 [ %ret.0.i, %if.end39.i ], [ -22, %entry.__do_sys_futex_waitv.exit_crit_edge ], [ -22, %if.end.i.__do_sys_futex_waitv.exit_crit_edge ], [ -12, %if.end7.i.i.i.__do_sys_futex_waitv.exit_crit_edge ], [ -14, %if.end14.i.__do_sys_futex_waitv.exit_crit_edge ], [ -22, %if.then7.i.__do_sys_futex_waitv.exit_crit_edge ], [ -22, %timespec64_valid.exit.i.i.__do_sys_futex_waitv.exit_crit_edge ], [ -22, %if.end17.i.__do_sys_futex_waitv.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %time.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %to.i) #7
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_futex_time32(i32 noundef %uaddr, i32 noundef %op, i32 noundef %val, i32 noundef %utime, i32 noundef %uaddr2, i32 noundef %val3) #2 align 64 {
entry:
  %t.i = alloca i64, align 8
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %uaddr to ptr
  %1 = inttoptr i32 %utime to ptr
  %2 = inttoptr i32 %uaddr2 to ptr
  %and.i = and i32 %op, -385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %t.i) #7
  %3 = ptrtoint ptr %t.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %t.i, align 8, !annotation !123
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #7
  %4 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %utime)
  %tobool.not.i = icmp eq i32 %utime, 0
  br i1 %tobool.not.i, label %entry.if.end8.i_crit_edge, label %land.lhs.true.i

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %entry
  %5 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %and.i, label %land.lhs.true.i.if.end8.i_crit_edge [
    i32 0, label %land.lhs.true.i.if.then.i_crit_edge
    i32 6, label %land.lhs.true.i.if.then.i_crit_edge1
    i32 13, label %land.lhs.true.i.if.then.i_crit_edge2
    i32 9, label %land.lhs.true.i.if.then.i_crit_edge3
    i32 11, label %land.lhs.true.i.if.then.i_crit_edge4
  ]

land.lhs.true.i.if.then.i_crit_edge4:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge3:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge2:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge1:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge1, %land.lhs.true.i.if.then.i_crit_edge2, %land.lhs.true.i.if.then.i_crit_edge3, %land.lhs.true.i.if.then.i_crit_edge4
  %call1.i = call i32 @get_old_timespec32(ptr noundef nonnull %ts.i, ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i.__do_sys_futex_time32.exit_crit_edge

if.then.i.__do_sys_futex_time32.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_futex_time32.exit

if.end.i:                                         ; preds = %if.then.i
  %6 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp.i.i.i = icmp slt i64 %7, 0
  br i1 %cmp.i.i.i, label %if.end.i.__do_sys_futex_time32.exit_crit_edge, label %timespec64_valid.exit.i.i

if.end.i.__do_sys_futex_time32.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_futex_time32.exit

timespec64_valid.exit.i.i:                        ; preds = %if.end.i
  %tv_nsec.i.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %8 = ptrtoint ptr %tv_nsec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tv_nsec.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %9)
  %cmp1.i.i.i = icmp ult i32 %9, 1000000000
  br i1 %cmp1.i.i.i, label %if.end.i.i, label %timespec64_valid.exit.i.i.__do_sys_futex_time32.exit_crit_edge

timespec64_valid.exit.i.i.__do_sys_futex_time32.exit_crit_edge: ; preds = %timespec64_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_futex_time32.exit

if.end.i.i:                                       ; preds = %timespec64_valid.exit.i.i
  %10 = ptrtoint ptr %tv_nsec.i.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %.unpack17.i.i = load i64, ptr %tv_nsec.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %7)
  %cmp.i.i.i.i = icmp ugt i64 %7, 9223372035
  %ts.sroa.2.8.extract.shift.i.i.i = lshr i64 %.unpack17.i.i, 32
  %mul.i.i.i.i = mul i64 %7, 1000000000
  %add.i.i.i.i = add i64 %ts.sroa.2.8.extract.shift.i.i.i, %mul.i.i.i.i
  %retval.0.i.i.i.i = select i1 %cmp.i.i.i.i, i64 9223372036854775807, i64 %add.i.i.i.i, !prof !124
  %11 = ptrtoint ptr %t.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %retval.0.i.i.i.i, ptr %t.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cond.i.i = icmp eq i32 %and.i, 0
  br i1 %cond.i.i, label %if.then2.i.i, label %if.end.i.i.if.end8.i_crit_edge

if.end.i.i.if.end8.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i.i = call i64 @ktime_get() #7
  %12 = ptrtoint ptr %t.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %t.i, align 8
  %call4.i.i = call i64 @ktime_add_safe(i64 noundef %call3.i.i, i64 noundef %13) #7
  %14 = ptrtoint ptr %t.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call4.i.i, ptr %t.i, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then2.i.i, %if.end.i.i.if.end8.i_crit_edge, %land.lhs.true.i.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %tp.0.i = phi ptr [ null, %entry.if.end8.i_crit_edge ], [ null, %land.lhs.true.i.if.end8.i_crit_edge ], [ %t.i, %if.then2.i.i ], [ %t.i, %if.end.i.i.if.end8.i_crit_edge ]
  %call9.i = call i32 @do_futex(ptr noundef %0, i32 noundef %op, i32 noundef %val, ptr noundef %tp.0.i, ptr noundef %2, i32 noundef %utime, i32 noundef %val3) #7
  br label %__do_sys_futex_time32.exit

__do_sys_futex_time32.exit:                       ; preds = %if.end8.i, %timespec64_valid.exit.i.i.__do_sys_futex_time32.exit_crit_edge, %if.end.i.__do_sys_futex_time32.exit_crit_edge, %if.then.i.__do_sys_futex_time32.exit_crit_edge
  %retval.0.i = phi i32 [ %call9.i, %if.end8.i ], [ -14, %if.then.i.__do_sys_futex_time32.exit_crit_edge ], [ -22, %timespec64_valid.exit.i.i.__do_sys_futex_time32.exit_crit_edge ], [ -22, %if.end.i.__do_sys_futex_time32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %t.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
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
declare dso_local zeroext i1 @should_fail_futex(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_add_safe(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_setup_timer(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_wait_multiple(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_hrtimer_on_stack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !66, !68, !69, !70, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !97, !98, !100, !102, !103, !104}
!llvm.named.register.sp = !{!105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/futex/syscalls.c", i32 29, i32 1}
!2 = !{ptr @event_enter__set_robust_list, !1, !"event_enter__set_robust_list", i1 false, i1 false}
!3 = !{ptr @__event_enter__set_robust_list, !1, !"__event_enter__set_robust_list", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__set_robust_list, !1, !"event_exit__set_robust_list", i1 false, i1 false}
!6 = !{ptr @__event_exit__set_robust_list, !1, !"__event_exit__set_robust_list", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__set_robust_list, !1, !"__syscall_meta__set_robust_list", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__set_robust_list, !1, !"__p_syscall_meta__set_robust_list", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/futex/syscalls.c", i32 49, i32 1}
!12 = !{ptr @event_enter__get_robust_list, !11, !"event_enter__get_robust_list", i1 false, i1 false}
!13 = !{ptr @__event_enter__get_robust_list, !11, !"__event_enter__get_robust_list", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__get_robust_list, !11, !"event_exit__get_robust_list", i1 false, i1 false}
!16 = !{ptr @__event_exit__get_robust_list, !11, !"__event_exit__get_robust_list", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__get_robust_list, !11, !"__syscall_meta__get_robust_list", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__get_robust_list, !11, !"__p_syscall_meta__get_robust_list", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/futex/syscalls.c", i32 164, i32 1}
!22 = !{ptr @event_enter__futex, !21, !"event_enter__futex", i1 false, i1 false}
!23 = !{ptr @__event_enter__futex, !21, !"__event_enter__futex", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @event_exit__futex, !21, !"event_exit__futex", i1 false, i1 false}
!26 = !{ptr @__event_exit__futex, !21, !"__event_exit__futex", i1 false, i1 false}
!27 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__syscall_meta__futex, !21, !"__syscall_meta__futex", i1 false, i1 false}
!29 = !{ptr @__p_syscall_meta__futex, !21, !"__p_syscall_meta__futex", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/futex/syscalls.c", i32 246, i32 1}
!32 = !{ptr @event_enter__futex_waitv, !31, !"event_enter__futex_waitv", i1 false, i1 false}
!33 = !{ptr @__event_enter__futex_waitv, !31, !"__event_enter__futex_waitv", i1 false, i1 false}
!34 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @event_exit__futex_waitv, !31, !"event_exit__futex_waitv", i1 false, i1 false}
!36 = !{ptr @__event_exit__futex_waitv, !31, !"__event_exit__futex_waitv", i1 false, i1 false}
!37 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__syscall_meta__futex_waitv, !31, !"__syscall_meta__futex_waitv", i1 false, i1 false}
!39 = !{ptr @__p_syscall_meta__futex_waitv, !31, !"__p_syscall_meta__futex_waitv", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/futex/syscalls.c", i32 356, i32 1}
!42 = !{ptr @event_enter__futex_time32, !41, !"event_enter__futex_time32", i1 false, i1 false}
!43 = !{ptr @__event_enter__futex_time32, !41, !"__event_enter__futex_time32", i1 false, i1 false}
!44 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @event_exit__futex_time32, !41, !"event_exit__futex_time32", i1 false, i1 false}
!46 = !{ptr @__event_exit__futex_time32, !41, !"__event_exit__futex_time32", i1 false, i1 false}
!47 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__syscall_meta__futex_time32, !41, !"__syscall_meta__futex_time32", i1 false, i1 false}
!49 = !{ptr @__p_syscall_meta__futex_time32, !41, !"__p_syscall_meta__futex_time32", i1 false, i1 false}
!50 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.16, !1, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @types__set_robust_list, !1, !"types__set_robust_list", i1 false, i1 false}
!53 = !{ptr @.str.17, !1, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @args__set_robust_list, !1, !"args__set_robust_list", i1 false, i1 false}
!56 = !{ptr @.str.19, !11, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.20, !11, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.21, !11, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @types__get_robust_list, !11, !"types__get_robust_list", i1 false, i1 false}
!60 = !{ptr @.str.22, !11, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.23, !11, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.24, !11, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @args__get_robust_list, !11, !"args__get_robust_list", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../kernel/futex/syscalls.c", i32 75, i32 6}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!72 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.29, !21, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.30, !21, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.31, !21, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @types__futex, !21, !"types__futex", i1 false, i1 false}
!77 = !{ptr @.str.32, !21, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.33, !21, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.34, !21, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.35, !21, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.36, !21, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.37, !21, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @args__futex, !21, !"args__futex", i1 false, i1 false}
!84 = !{ptr @.str.38, !31, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.39, !31, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.40, !31, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.41, !31, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @types__futex_waitv, !31, !"types__futex_waitv", i1 false, i1 false}
!89 = !{ptr @.str.42, !31, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.43, !31, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.44, !31, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.45, !31, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.46, !31, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @args__futex_waitv, !31, !"args__futex_waitv", i1 false, i1 false}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!97 = distinct !{null, !96, !"<string literal>", i1 false, i1 false}
!98 = distinct !{null, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!102 = !{ptr @.str.50, !41, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @types__futex_time32, !41, !"types__futex_time32", i1 false, i1 false}
!104 = !{ptr @args__futex_time32, !41, !"args__futex_time32", i1 false, i1 false}
!105 = !{!"sp"}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{!"branch_weights", i32 2000, i32 1}
!116 = !{i64 2149411130}
!117 = !{i64 2149411396}
!118 = !{i64 4766716}
!119 = !{i64 4766913}
!120 = !{i64 2152252146}
!121 = !{i64 2155059308, i64 2155059588, i64 2155059922, i64 2155060256}
!122 = !{i64 2155068108, i64 2155068388, i64 2155068722, i64 2155069056}
!123 = !{!"auto-init"}
!124 = !{!"branch_weights", i32 1, i32 2000}
!125 = !{i64 2152271161, i64 2152271186}
