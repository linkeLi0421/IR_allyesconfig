; ModuleID = '/llk/IR_all_yes/kernel/time/posix-timers.c_pt.bc'
source_filename = "../kernel/time/posix-timers.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.33, %struct.trace_event, ptr, ptr, %union.anon.34, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.33 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.34 = type { ptr }
%struct.lock_class_key = type { %union.anon.12 }
%union.anon.12 = type { %struct.hlist_node }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.k_clock = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32, i32, i32 }
%struct.k_itimer = type { %struct.list_head, %struct.hlist_node, %struct.spinlock, ptr, i32, i32, i32, i64, i64, i32, i32, i64, ptr, %union.anon.98, ptr, %union.anon.99, %struct.callback_head }
%union.anon.98 = type { ptr }
%union.anon.99 = type { %struct.anon.101 }
%struct.anon.101 = type { %struct.alarm }
%struct.alarm = type { %struct.timerqueue_node, %struct.hrtimer, ptr, i32, i32, ptr }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.94, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.14 }
%struct.llist_node = type { ptr }
%union.anon.14 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.85 }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.94 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.sigqueue = type { %struct.list_head, i32, %struct.kernel_siginfo, ptr }
%struct.kernel_siginfo = type { %struct.anon }
%struct.sigevent = type { %union.sigval, i32, i32, %union.anon.106 }
%union.sigval = type { i32 }
%union.anon.106 = type { [13 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }

@__initcall__kmod_posix_timers__259_280_init_posix_timers6 = internal global ptr @init_posix_timers, section ".initcall6.init", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_enter_timer_create\00", [41 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__timer_create = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 3, ptr @types__timer_create, ptr @args__timer_create, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__timer_create, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__timer_create, i64 20) }, ptr @event_enter__timer_create, ptr @event_exit__timer_create }, align 4
@event_enter__timer_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.33 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__timer_create, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__timer_create = internal global ptr @event_enter__timer_create, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_exit_timer_create\00", [42 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__timer_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.33 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__timer_create, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__timer_create = internal global ptr @event_exit__timer_create, section "_ftrace_events", align 4
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_timer_create\00", [47 x i8] zeroinitializer }, align 32
@types__timer_create = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.52, ptr @.str.53, ptr @.str.54], [20 x i8] zeroinitializer }, align 32
@args__timer_create = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.57], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__timer_create = internal global ptr @__syscall_meta__timer_create, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_enter_timer_gettime\00", [40 x i8] zeroinitializer }, align 32
@__syscall_meta__timer_gettime = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 2, ptr @types__timer_gettime, ptr @args__timer_gettime, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__timer_gettime, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__timer_gettime, i64 20) }, ptr @event_enter__timer_gettime, ptr @event_exit__timer_gettime }, align 4
@event_enter__timer_gettime = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.33 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__timer_gettime, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__timer_gettime = internal global ptr @event_enter__timer_gettime, section "_ftrace_events", align 4
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_exit_timer_gettime\00", [41 x i8] zeroinitializer }, align 32
@event_exit__timer_gettime = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.33 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__timer_gettime, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__timer_gettime = internal global ptr @event_exit__timer_gettime, section "_ftrace_events", align 4
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_timer_gettime\00", [46 x i8] zeroinitializer }, align 32
@types__timer_gettime = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.68, ptr @.str.69], [24 x i8] zeroinitializer }, align 32
@args__timer_gettime = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.70, ptr @.str.71], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__timer_gettime = internal global ptr @__syscall_meta__timer_gettime, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_enter_timer_gettime32\00", [38 x i8] zeroinitializer }, align 32
@__syscall_meta__timer_gettime32 = internal global %struct.syscall_metadata { ptr @.str.8, i32 -1, i32 2, ptr @types__timer_gettime32, ptr @args__timer_gettime32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__timer_gettime32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__timer_gettime32, i64 20) }, ptr @event_enter__timer_gettime32, ptr @event_exit__timer_gettime32 }, align 4
@event_enter__timer_gettime32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.33 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__timer_gettime32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__timer_gettime32 = internal global ptr @event_enter__timer_gettime32, section "_ftrace_events", align 4
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_exit_timer_gettime32\00", [39 x i8] zeroinitializer }, align 32
@event_exit__timer_gettime32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.33 { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__timer_gettime32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__timer_gettime32 = internal global ptr @event_exit__timer_gettime32, section "_ftrace_events", align 4
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_timer_gettime32\00", [44 x i8] zeroinitializer }, align 32
@types__timer_gettime32 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.68, ptr @.str.72], [24 x i8] zeroinitializer }, align 32
@args__timer_gettime32 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.70, ptr @.str.71], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__timer_gettime32 = internal global ptr @__syscall_meta__timer_gettime32, section "__syscalls_metadata", align 4
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_enter_timer_getoverrun\00", [37 x i8] zeroinitializer }, align 32
@__syscall_meta__timer_getoverrun = internal global %struct.syscall_metadata { ptr @.str.11, i32 -1, i32 1, ptr @types__timer_getoverrun, ptr @args__timer_getoverrun, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__timer_getoverrun, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__timer_getoverrun, i64 20) }, ptr @event_enter__timer_getoverrun, ptr @event_exit__timer_getoverrun }, align 4
@event_enter__timer_getoverrun = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.33 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__timer_getoverrun, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__timer_getoverrun = internal global ptr @event_enter__timer_getoverrun, section "_ftrace_events", align 4
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_exit_timer_getoverrun\00", [38 x i8] zeroinitializer }, align 32
@event_exit__timer_getoverrun = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.33 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__timer_getoverrun, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__timer_getoverrun = internal global ptr @event_exit__timer_getoverrun, section "_ftrace_events", align 4
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_timer_getoverrun\00", [43 x i8] zeroinitializer }, align 32
@types__timer_getoverrun = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.68], [28 x i8] zeroinitializer }, align 32
@args__timer_getoverrun = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.70], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__timer_getoverrun = internal global ptr @__syscall_meta__timer_getoverrun, section "__syscalls_metadata", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_enter_timer_settime\00", [40 x i8] zeroinitializer }, align 32
@__syscall_meta__timer_settime = internal global %struct.syscall_metadata { ptr @.str.14, i32 -1, i32 4, ptr @types__timer_settime, ptr @args__timer_settime, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__timer_settime, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__timer_settime, i64 20) }, ptr @event_enter__timer_settime, ptr @event_exit__timer_settime }, align 4
@event_enter__timer_settime = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.33 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__timer_settime, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__timer_settime = internal global ptr @event_enter__timer_settime, section "_ftrace_events", align 4
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_exit_timer_settime\00", [41 x i8] zeroinitializer }, align 32
@event_exit__timer_settime = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.33 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__timer_settime, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__timer_settime = internal global ptr @event_exit__timer_settime, section "_ftrace_events", align 4
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_timer_settime\00", [46 x i8] zeroinitializer }, align 32
@types__timer_settime = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.68, ptr @.str.73, ptr @.str.74, ptr @.str.69], [16 x i8] zeroinitializer }, align 32
@args__timer_settime = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.70, ptr @.str.75, ptr @.str.76, ptr @.str.77], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__timer_settime = internal global ptr @__syscall_meta__timer_settime, section "__syscalls_metadata", align 4
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_enter_timer_settime32\00", [38 x i8] zeroinitializer }, align 32
@__syscall_meta__timer_settime32 = internal global %struct.syscall_metadata { ptr @.str.17, i32 -1, i32 4, ptr @types__timer_settime32, ptr @args__timer_settime32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__timer_settime32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__timer_settime32, i64 20) }, ptr @event_enter__timer_settime32, ptr @event_exit__timer_settime32 }, align 4
@event_enter__timer_settime32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.33 { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__timer_settime32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__timer_settime32 = internal global ptr @event_enter__timer_settime32, section "_ftrace_events", align 4
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_exit_timer_settime32\00", [39 x i8] zeroinitializer }, align 32
@event_exit__timer_settime32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.33 { ptr @.str.16 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__timer_settime32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__timer_settime32 = internal global ptr @event_exit__timer_settime32, section "_ftrace_events", align 4
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_timer_settime32\00", [44 x i8] zeroinitializer }, align 32
@types__timer_settime32 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.68, ptr @.str.73, ptr @.str.72, ptr @.str.72], [16 x i8] zeroinitializer }, align 32
@args__timer_settime32 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.70, ptr @.str.75, ptr @.str.78, ptr @.str.79], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__timer_settime32 = internal global ptr @__syscall_meta__timer_settime32, section "__syscalls_metadata", align 4
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_enter_timer_delete\00", [41 x i8] zeroinitializer }, align 32
@__syscall_meta__timer_delete = internal global %struct.syscall_metadata { ptr @.str.20, i32 -1, i32 1, ptr @types__timer_delete, ptr @args__timer_delete, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__timer_delete, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__timer_delete, i64 20) }, ptr @event_enter__timer_delete, ptr @event_exit__timer_delete }, align 4
@event_enter__timer_delete = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.33 { ptr @.str.18 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__timer_delete, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__timer_delete = internal global ptr @event_enter__timer_delete, section "_ftrace_events", align 4
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_exit_timer_delete\00", [42 x i8] zeroinitializer }, align 32
@event_exit__timer_delete = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.33 { ptr @.str.19 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__timer_delete, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__timer_delete = internal global ptr @event_exit__timer_delete, section "_ftrace_events", align 4
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_timer_delete\00", [47 x i8] zeroinitializer }, align 32
@types__timer_delete = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.68], [28 x i8] zeroinitializer }, align 32
@args__timer_delete = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.70], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__timer_delete = internal global ptr @__syscall_meta__timer_delete, section "__syscalls_metadata", align 4
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_enter_clock_settime\00", [40 x i8] zeroinitializer }, align 32
@__syscall_meta__clock_settime = internal global %struct.syscall_metadata { ptr @.str.23, i32 -1, i32 2, ptr @types__clock_settime, ptr @args__clock_settime, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__clock_settime, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__clock_settime, i64 20) }, ptr @event_enter__clock_settime, ptr @event_exit__clock_settime }, align 4
@event_enter__clock_settime = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.33 { ptr @.str.21 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_settime, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__clock_settime = internal global ptr @event_enter__clock_settime, section "_ftrace_events", align 4
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_exit_clock_settime\00", [41 x i8] zeroinitializer }, align 32
@event_exit__clock_settime = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.33 { ptr @.str.22 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_settime, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__clock_settime = internal global ptr @event_exit__clock_settime, section "_ftrace_events", align 4
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_clock_settime\00", [46 x i8] zeroinitializer }, align 32
@types__clock_settime = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.52, ptr @.str.80], [24 x i8] zeroinitializer }, align 32
@args__clock_settime = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.55, ptr @.str.81], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__clock_settime = internal global ptr @__syscall_meta__clock_settime, section "__syscalls_metadata", align 4
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_enter_clock_gettime\00", [40 x i8] zeroinitializer }, align 32
@__syscall_meta__clock_gettime = internal global %struct.syscall_metadata { ptr @.str.26, i32 -1, i32 2, ptr @types__clock_gettime, ptr @args__clock_gettime, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__clock_gettime, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__clock_gettime, i64 20) }, ptr @event_enter__clock_gettime, ptr @event_exit__clock_gettime }, align 4
@event_enter__clock_gettime = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.33 { ptr @.str.24 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_gettime, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__clock_gettime = internal global ptr @event_enter__clock_gettime, section "_ftrace_events", align 4
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_exit_clock_gettime\00", [41 x i8] zeroinitializer }, align 32
@event_exit__clock_gettime = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.33 { ptr @.str.25 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_gettime, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__clock_gettime = internal global ptr @event_exit__clock_gettime, section "_ftrace_events", align 4
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_clock_gettime\00", [46 x i8] zeroinitializer }, align 32
@types__clock_gettime = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.52, ptr @.str.82], [24 x i8] zeroinitializer }, align 32
@args__clock_gettime = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.55, ptr @.str.81], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__clock_gettime = internal global ptr @__syscall_meta__clock_gettime, section "__syscalls_metadata", align 4
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_enter_clock_adjtime\00", [40 x i8] zeroinitializer }, align 32
@__syscall_meta__clock_adjtime = internal global %struct.syscall_metadata { ptr @.str.29, i32 -1, i32 2, ptr @types__clock_adjtime, ptr @args__clock_adjtime, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__clock_adjtime, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__clock_adjtime, i64 20) }, ptr @event_enter__clock_adjtime, ptr @event_exit__clock_adjtime }, align 4
@event_enter__clock_adjtime = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.33 { ptr @.str.27 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_adjtime, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__clock_adjtime = internal global ptr @event_enter__clock_adjtime, section "_ftrace_events", align 4
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_exit_clock_adjtime\00", [41 x i8] zeroinitializer }, align 32
@event_exit__clock_adjtime = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.33 { ptr @.str.28 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_adjtime, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__clock_adjtime = internal global ptr @event_exit__clock_adjtime, section "_ftrace_events", align 4
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_clock_adjtime\00", [46 x i8] zeroinitializer }, align 32
@types__clock_adjtime = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.52, ptr @.str.83], [24 x i8] zeroinitializer }, align 32
@args__clock_adjtime = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.55, ptr @.str.84], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__clock_adjtime = internal global ptr @__syscall_meta__clock_adjtime, section "__syscalls_metadata", align 4
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_enter_clock_getres\00", [41 x i8] zeroinitializer }, align 32
@__syscall_meta__clock_getres = internal global %struct.syscall_metadata { ptr @.str.32, i32 -1, i32 2, ptr @types__clock_getres, ptr @args__clock_getres, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__clock_getres, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__clock_getres, i64 20) }, ptr @event_enter__clock_getres, ptr @event_exit__clock_getres }, align 4
@event_enter__clock_getres = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.33 { ptr @.str.30 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_getres, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__clock_getres = internal global ptr @event_enter__clock_getres, section "_ftrace_events", align 4
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_exit_clock_getres\00", [42 x i8] zeroinitializer }, align 32
@event_exit__clock_getres = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.33 { ptr @.str.31 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_getres, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__clock_getres = internal global ptr @event_exit__clock_getres, section "_ftrace_events", align 4
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_clock_getres\00", [47 x i8] zeroinitializer }, align 32
@types__clock_getres = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.52, ptr @.str.82], [24 x i8] zeroinitializer }, align 32
@args__clock_getres = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.55, ptr @.str.81], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__clock_getres = internal global ptr @__syscall_meta__clock_getres, section "__syscalls_metadata", align 4
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_enter_clock_settime32\00", [38 x i8] zeroinitializer }, align 32
@__syscall_meta__clock_settime32 = internal global %struct.syscall_metadata { ptr @.str.35, i32 -1, i32 2, ptr @types__clock_settime32, ptr @args__clock_settime32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__clock_settime32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__clock_settime32, i64 20) }, ptr @event_enter__clock_settime32, ptr @event_exit__clock_settime32 }, align 4
@event_enter__clock_settime32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.33 { ptr @.str.33 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_settime32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__clock_settime32 = internal global ptr @event_enter__clock_settime32, section "_ftrace_events", align 4
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_exit_clock_settime32\00", [39 x i8] zeroinitializer }, align 32
@event_exit__clock_settime32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.33 { ptr @.str.34 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_settime32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__clock_settime32 = internal global ptr @event_exit__clock_settime32, section "_ftrace_events", align 4
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_clock_settime32\00", [44 x i8] zeroinitializer }, align 32
@types__clock_settime32 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.85, ptr @.str.86], [24 x i8] zeroinitializer }, align 32
@args__clock_settime32 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.55, ptr @.str.81], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__clock_settime32 = internal global ptr @__syscall_meta__clock_settime32, section "__syscalls_metadata", align 4
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_enter_clock_gettime32\00", [38 x i8] zeroinitializer }, align 32
@__syscall_meta__clock_gettime32 = internal global %struct.syscall_metadata { ptr @.str.38, i32 -1, i32 2, ptr @types__clock_gettime32, ptr @args__clock_gettime32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__clock_gettime32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__clock_gettime32, i64 20) }, ptr @event_enter__clock_gettime32, ptr @event_exit__clock_gettime32 }, align 4
@event_enter__clock_gettime32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.33 { ptr @.str.36 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_gettime32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__clock_gettime32 = internal global ptr @event_enter__clock_gettime32, section "_ftrace_events", align 4
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_exit_clock_gettime32\00", [39 x i8] zeroinitializer }, align 32
@event_exit__clock_gettime32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.33 { ptr @.str.37 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_gettime32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__clock_gettime32 = internal global ptr @event_exit__clock_gettime32, section "_ftrace_events", align 4
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_clock_gettime32\00", [44 x i8] zeroinitializer }, align 32
@types__clock_gettime32 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.85, ptr @.str.86], [24 x i8] zeroinitializer }, align 32
@args__clock_gettime32 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.55, ptr @.str.81], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__clock_gettime32 = internal global ptr @__syscall_meta__clock_gettime32, section "__syscalls_metadata", align 4
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_enter_clock_adjtime32\00", [38 x i8] zeroinitializer }, align 32
@__syscall_meta__clock_adjtime32 = internal global %struct.syscall_metadata { ptr @.str.41, i32 -1, i32 2, ptr @types__clock_adjtime32, ptr @args__clock_adjtime32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__clock_adjtime32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__clock_adjtime32, i64 20) }, ptr @event_enter__clock_adjtime32, ptr @event_exit__clock_adjtime32 }, align 4
@event_enter__clock_adjtime32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.33 { ptr @.str.39 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_adjtime32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__clock_adjtime32 = internal global ptr @event_enter__clock_adjtime32, section "_ftrace_events", align 4
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_exit_clock_adjtime32\00", [39 x i8] zeroinitializer }, align 32
@event_exit__clock_adjtime32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.33 { ptr @.str.40 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_adjtime32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__clock_adjtime32 = internal global ptr @event_exit__clock_adjtime32, section "_ftrace_events", align 4
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_clock_adjtime32\00", [44 x i8] zeroinitializer }, align 32
@types__clock_adjtime32 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.85, ptr @.str.87], [24 x i8] zeroinitializer }, align 32
@args__clock_adjtime32 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.55, ptr @.str.88], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__clock_adjtime32 = internal global ptr @__syscall_meta__clock_adjtime32, section "__syscalls_metadata", align 4
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sys_enter_clock_getres_time32\00", [34 x i8] zeroinitializer }, align 32
@__syscall_meta__clock_getres_time32 = internal global %struct.syscall_metadata { ptr @.str.44, i32 -1, i32 2, ptr @types__clock_getres_time32, ptr @args__clock_getres_time32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__clock_getres_time32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__clock_getres_time32, i64 20) }, ptr @event_enter__clock_getres_time32, ptr @event_exit__clock_getres_time32 }, align 4
@event_enter__clock_getres_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.33 { ptr @.str.42 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_getres_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__clock_getres_time32 = internal global ptr @event_enter__clock_getres_time32, section "_ftrace_events", align 4
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sys_exit_clock_getres_time32\00", [35 x i8] zeroinitializer }, align 32
@event_exit__clock_getres_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.33 { ptr @.str.43 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_getres_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__clock_getres_time32 = internal global ptr @event_exit__clock_getres_time32, section "_ftrace_events", align 4
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sys_clock_getres_time32\00", [40 x i8] zeroinitializer }, align 32
@types__clock_getres_time32 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.85, ptr @.str.86], [24 x i8] zeroinitializer }, align 32
@args__clock_getres_time32 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.55, ptr @.str.81], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__clock_getres_time32 = internal global ptr @__syscall_meta__clock_getres_time32, section "__syscalls_metadata", align 4
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_enter_clock_nanosleep\00", [38 x i8] zeroinitializer }, align 32
@__syscall_meta__clock_nanosleep = internal global %struct.syscall_metadata { ptr @.str.47, i32 -1, i32 4, ptr @types__clock_nanosleep, ptr @args__clock_nanosleep, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__clock_nanosleep, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__clock_nanosleep, i64 20) }, ptr @event_enter__clock_nanosleep, ptr @event_exit__clock_nanosleep }, align 4
@event_enter__clock_nanosleep = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.33 { ptr @.str.45 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_nanosleep, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__clock_nanosleep = internal global ptr @event_enter__clock_nanosleep, section "_ftrace_events", align 4
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_exit_clock_nanosleep\00", [39 x i8] zeroinitializer }, align 32
@event_exit__clock_nanosleep = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.33 { ptr @.str.46 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_nanosleep, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__clock_nanosleep = internal global ptr @event_exit__clock_nanosleep, section "_ftrace_events", align 4
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_clock_nanosleep\00", [44 x i8] zeroinitializer }, align 32
@types__clock_nanosleep = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.52, ptr @.str.73, ptr @.str.80, ptr @.str.82], [16 x i8] zeroinitializer }, align 32
@args__clock_nanosleep = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.55, ptr @.str.75, ptr @.str.89, ptr @.str.90], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__clock_nanosleep = internal global ptr @__syscall_meta__clock_nanosleep, section "__syscalls_metadata", align 4
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sys_enter_clock_nanosleep_time32\00", [63 x i8] zeroinitializer }, align 32
@__syscall_meta__clock_nanosleep_time32 = internal global %struct.syscall_metadata { ptr @.str.50, i32 -1, i32 4, ptr @types__clock_nanosleep_time32, ptr @args__clock_nanosleep_time32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__clock_nanosleep_time32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__clock_nanosleep_time32, i64 20) }, ptr @event_enter__clock_nanosleep_time32, ptr @event_exit__clock_nanosleep_time32 }, align 4
@event_enter__clock_nanosleep_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.33 { ptr @.str.48 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_nanosleep_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__clock_nanosleep_time32 = internal global ptr @event_enter__clock_nanosleep_time32, section "_ftrace_events", align 4
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sys_exit_clock_nanosleep_time32\00", [32 x i8] zeroinitializer }, align 32
@event_exit__clock_nanosleep_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.33 { ptr @.str.49 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.34 zeroinitializer, ptr @__syscall_meta__clock_nanosleep_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__clock_nanosleep_time32 = internal global ptr @event_exit__clock_nanosleep_time32, section "_ftrace_events", align 4
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_clock_nanosleep_time32\00", [37 x i8] zeroinitializer }, align 32
@types__clock_nanosleep_time32 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.85, ptr @.str.73, ptr @.str.86, ptr @.str.86], [16 x i8] zeroinitializer }, align 32
@args__clock_nanosleep_time32 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.55, ptr @.str.75, ptr @.str.89, ptr @.str.90], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__clock_nanosleep_time32 = internal global ptr @__syscall_meta__clock_nanosleep_time32, section "__syscalls_metadata", align 4
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"posix_timers_cache\00", [45 x i8] zeroinitializer }, align 32
@posix_timers_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"const clockid_t\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"struct sigevent *\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timer_t *\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"which_clock\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"timer_event_spec\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"created_timer_id\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@do_timer_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&new_timer->it_lock\00", [44 x i8] zeroinitializer }, align 32
@hash_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.10 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.62, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@posix_timers_hashtable = internal global { [512 x %struct.hlist_head], [512 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hash_lock\00", [22 x i8] zeroinitializer }, align 32
@__posix_timers_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kernel/time/posix-timers.c\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timer_t\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"struct __kernel_itimerspec *\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timer_id\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setting\00", [24 x i8] zeroinitializer }, align 32
@do_timer_gettime.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"struct old_itimerspec32 *\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"const struct __kernel_itimerspec *\00", [61 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"new_setting\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"old_setting\00", [20 x i8] zeroinitializer }, align 32
@do_timer_settime.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@timer_wait_running.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"new\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"old\00", [28 x i8] zeroinitializer }, align 32
@timer_delete_hook.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"const struct __kernel_timespec *\00", [63 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tp\00", [29 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"struct __kernel_timespec *\00", [37 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"struct __kernel_timex *\00", [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"utx\00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clockid_t\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"struct old_timespec32 *\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"struct old_timex32 *\00", [43 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"utp\00", [28 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rqtp\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmtp\00", [27 x i8] zeroinitializer }, align 32
@clock_posix_dynamic = external dso_local constant %struct.k_clock, align 4
@clock_posix_cpu = external dso_local constant %struct.k_clock, align 4
@posix_clocks = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @clock_realtime, ptr @clock_monotonic, ptr @clock_process, ptr @clock_thread, ptr @clock_monotonic_raw, ptr @clock_realtime_coarse, ptr @clock_monotonic_coarse, ptr @clock_boottime, ptr @alarm_clock, ptr @alarm_clock, ptr null, ptr @clock_tai], [48 x i8] zeroinitializer }, align 32
@clock_realtime = internal constant { %struct.k_clock, [32 x i8] } { %struct.k_clock { ptr @posix_get_hrtimer_res, ptr @posix_clock_realtime_set, ptr @posix_get_realtime_timespec, ptr @posix_get_realtime_ktime, ptr @posix_clock_realtime_adj, ptr @common_timer_create, ptr @common_nsleep, ptr @common_timer_set, ptr @common_timer_del, ptr @common_timer_get, ptr @common_hrtimer_rearm, ptr @common_hrtimer_forward, ptr @common_hrtimer_remaining, ptr @common_hrtimer_try_to_cancel, ptr @common_hrtimer_arm, ptr @common_timer_wait_running }, [32 x i8] zeroinitializer }, align 32
@clock_monotonic = internal constant { %struct.k_clock, [32 x i8] } { %struct.k_clock { ptr @posix_get_hrtimer_res, ptr null, ptr @posix_get_monotonic_timespec, ptr @posix_get_monotonic_ktime, ptr null, ptr @common_timer_create, ptr @common_nsleep_timens, ptr @common_timer_set, ptr @common_timer_del, ptr @common_timer_get, ptr @common_hrtimer_rearm, ptr @common_hrtimer_forward, ptr @common_hrtimer_remaining, ptr @common_hrtimer_try_to_cancel, ptr @common_hrtimer_arm, ptr @common_timer_wait_running }, [32 x i8] zeroinitializer }, align 32
@clock_process = external dso_local constant %struct.k_clock, align 4
@clock_thread = external dso_local constant %struct.k_clock, align 4
@clock_monotonic_raw = internal constant { %struct.k_clock, [32 x i8] } { %struct.k_clock { ptr @posix_get_hrtimer_res, ptr null, ptr @posix_get_monotonic_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@clock_realtime_coarse = internal constant { %struct.k_clock, [32 x i8] } { %struct.k_clock { ptr @posix_get_coarse_res, ptr null, ptr @posix_get_realtime_coarse, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@clock_monotonic_coarse = internal constant { %struct.k_clock, [32 x i8] } { %struct.k_clock { ptr @posix_get_coarse_res, ptr null, ptr @posix_get_monotonic_coarse, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@clock_boottime = internal constant { %struct.k_clock, [32 x i8] } { %struct.k_clock { ptr @posix_get_hrtimer_res, ptr null, ptr @posix_get_boottime_timespec, ptr @posix_get_boottime_ktime, ptr null, ptr @common_timer_create, ptr @common_nsleep_timens, ptr @common_timer_set, ptr @common_timer_del, ptr @common_timer_get, ptr @common_hrtimer_rearm, ptr @common_hrtimer_forward, ptr @common_hrtimer_remaining, ptr @common_hrtimer_try_to_cancel, ptr @common_hrtimer_arm, ptr @common_timer_wait_running }, [32 x i8] zeroinitializer }, align 32
@alarm_clock = external dso_local constant %struct.k_clock, align 4
@clock_tai = internal constant { %struct.k_clock, [32 x i8] } { %struct.k_clock { ptr @posix_get_hrtimer_res, ptr null, ptr @posix_get_tai_timespec, ptr @posix_get_tai_ktime, ptr null, ptr @common_timer_create, ptr @common_nsleep, ptr @common_timer_set, ptr @common_timer_del, ptr @common_timer_get, ptr @common_hrtimer_rearm, ptr @common_hrtimer_forward, ptr @common_hrtimer_remaining, ptr @common_hrtimer_try_to_cancel, ptr @common_hrtimer_arm, ptr @common_timer_wait_running }, [32 x i8] zeroinitializer }, align 32
@hrtimer_resolution = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@___asan_gen_.94 = private unnamed_addr constant [26 x i8] c"event_enter__timer_create\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [25 x i8] c"event_exit__timer_create\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"types__timer_create\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [19 x i8] c"args__timer_create\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"event_enter__timer_gettime\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [26 x i8] c"event_exit__timer_gettime\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [21 x i8] c"types__timer_gettime\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c"args__timer_gettime\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [29 x i8] c"event_enter__timer_gettime32\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [28 x i8] c"event_exit__timer_gettime32\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [23 x i8] c"types__timer_gettime32\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [22 x i8] c"args__timer_gettime32\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [30 x i8] c"event_enter__timer_getoverrun\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [29 x i8] c"event_exit__timer_getoverrun\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [24 x i8] c"types__timer_getoverrun\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [23 x i8] c"args__timer_getoverrun\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 777, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant [27 x i8] c"event_enter__timer_settime\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [26 x i8] c"event_exit__timer_settime\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [21 x i8] c"types__timer_settime\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [20 x i8] c"args__timer_settime\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [29 x i8] c"event_enter__timer_settime32\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [28 x i8] c"event_exit__timer_settime32\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [23 x i8] c"types__timer_settime32\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [22 x i8] c"args__timer_settime32\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [26 x i8] c"event_enter__timer_delete\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [25 x i8] c"event_exit__timer_delete\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [20 x i8] c"types__timer_delete\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [19 x i8] c"args__timer_delete\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1004, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant [27 x i8] c"event_enter__clock_settime\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [26 x i8] c"event_exit__clock_settime\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [21 x i8] c"types__clock_settime\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [20 x i8] c"args__clock_settime\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [27 x i8] c"event_enter__clock_gettime\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [26 x i8] c"event_exit__clock_gettime\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [21 x i8] c"types__clock_gettime\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [20 x i8] c"args__clock_gettime\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [27 x i8] c"event_enter__clock_adjtime\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [26 x i8] c"event_exit__clock_adjtime\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [21 x i8] c"types__clock_adjtime\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [20 x i8] c"args__clock_adjtime\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [26 x i8] c"event_enter__clock_getres\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [25 x i8] c"event_exit__clock_getres\00", align 1
@___asan_gen_.316 = private unnamed_addr constant [20 x i8] c"types__clock_getres\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [19 x i8] c"args__clock_getres\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1129, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant [29 x i8] c"event_enter__clock_settime32\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [28 x i8] c"event_exit__clock_settime32\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [23 x i8] c"types__clock_settime32\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [22 x i8] c"args__clock_settime32\00", align 1
@___asan_gen_.346 = private unnamed_addr constant [29 x i8] c"event_enter__clock_gettime32\00", align 1
@___asan_gen_.352 = private unnamed_addr constant [28 x i8] c"event_exit__clock_gettime32\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [23 x i8] c"types__clock_gettime32\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [22 x i8] c"args__clock_gettime32\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1164, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant [29 x i8] c"event_enter__clock_adjtime32\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [28 x i8] c"event_exit__clock_adjtime32\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [23 x i8] c"types__clock_adjtime32\00", align 1
@___asan_gen_.382 = private unnamed_addr constant [22 x i8] c"args__clock_adjtime32\00", align 1
@___asan_gen_.388 = private unnamed_addr constant [33 x i8] c"event_enter__clock_getres_time32\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [32 x i8] c"event_exit__clock_getres_time32\00", align 1
@___asan_gen_.400 = private unnamed_addr constant [27 x i8] c"types__clock_getres_time32\00", align 1
@___asan_gen_.403 = private unnamed_addr constant [26 x i8] c"args__clock_getres_time32\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1200, i32 1 }
@___asan_gen_.409 = private unnamed_addr constant [29 x i8] c"event_enter__clock_nanosleep\00", align 1
@___asan_gen_.415 = private unnamed_addr constant [28 x i8] c"event_exit__clock_nanosleep\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [23 x i8] c"types__clock_nanosleep\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [22 x i8] c"args__clock_nanosleep\00", align 1
@___asan_gen_.430 = private unnamed_addr constant [36 x i8] c"event_enter__clock_nanosleep_time32\00", align 1
@___asan_gen_.436 = private unnamed_addr constant [35 x i8] c"event_exit__clock_nanosleep_time32\00", align 1
@___asan_gen_.442 = private unnamed_addr constant [30 x i8] c"types__clock_nanosleep_time32\00", align 1
@___asan_gen_.445 = private unnamed_addr constant [29 x i8] c"args__clock_nanosleep_time32\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1272, i32 1 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 275, i32 41 }
@___asan_gen_.451 = private unnamed_addr constant [19 x i8] c"posix_timers_cache\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 50, i32 27 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 577, i32 1 }
@___asan_gen_.473 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 156, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 515, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant [10 x i8] c"hash_lock\00", align 1
@___asan_gen_.484 = private unnamed_addr constant [23 x i8] c"posix_timers_hashtable\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 52, i32 8 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 53, i32 8 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 124, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 695, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 723, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 738, i32 1 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 753, i32 1 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 938, i32 1 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 961, i32 1 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1067, i32 1 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1082, i32 1 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1112, i32 1 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1149, i32 1 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1182, i32 1 }
@___asan_gen_.571 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1245, i32 1 }
@___asan_gen_.574 = private unnamed_addr constant [13 x i8] c"posix_clocks\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1384, i32 37 }
@___asan_gen_.577 = private unnamed_addr constant [15 x i8] c"clock_realtime\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1299, i32 29 }
@___asan_gen_.580 = private unnamed_addr constant [16 x i8] c"clock_monotonic\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1318, i32 29 }
@___asan_gen_.583 = private unnamed_addr constant [20 x i8] c"clock_monotonic_raw\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1335, i32 29 }
@___asan_gen_.586 = private unnamed_addr constant [22 x i8] c"clock_realtime_coarse\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1340, i32 29 }
@___asan_gen_.589 = private unnamed_addr constant [23 x i8] c"clock_monotonic_coarse\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1345, i32 29 }
@___asan_gen_.592 = private unnamed_addr constant [15 x i8] c"clock_boottime\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1367, i32 29 }
@___asan_gen_.595 = private unnamed_addr constant [10 x i8] c"clock_tai\00", align 1
@___asan_gen_.596 = private constant [30 x i8] c"../kernel/time/posix-timers.c\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1350, i32 29 }
@llvm.compiler.used = appending global [238 x ptr] [ptr @__event_enter__clock_adjtime, ptr @__event_enter__clock_adjtime32, ptr @__event_enter__clock_getres, ptr @__event_enter__clock_getres_time32, ptr @__event_enter__clock_gettime, ptr @__event_enter__clock_gettime32, ptr @__event_enter__clock_nanosleep, ptr @__event_enter__clock_nanosleep_time32, ptr @__event_enter__clock_settime, ptr @__event_enter__clock_settime32, ptr @__event_enter__timer_create, ptr @__event_enter__timer_delete, ptr @__event_enter__timer_getoverrun, ptr @__event_enter__timer_gettime, ptr @__event_enter__timer_gettime32, ptr @__event_enter__timer_settime, ptr @__event_enter__timer_settime32, ptr @__event_exit__clock_adjtime, ptr @__event_exit__clock_adjtime32, ptr @__event_exit__clock_getres, ptr @__event_exit__clock_getres_time32, ptr @__event_exit__clock_gettime, ptr @__event_exit__clock_gettime32, ptr @__event_exit__clock_nanosleep, ptr @__event_exit__clock_nanosleep_time32, ptr @__event_exit__clock_settime, ptr @__event_exit__clock_settime32, ptr @__event_exit__timer_create, ptr @__event_exit__timer_delete, ptr @__event_exit__timer_getoverrun, ptr @__event_exit__timer_gettime, ptr @__event_exit__timer_gettime32, ptr @__event_exit__timer_settime, ptr @__event_exit__timer_settime32, ptr @__initcall__kmod_posix_timers__259_280_init_posix_timers6, ptr @__p_syscall_meta__clock_adjtime, ptr @__p_syscall_meta__clock_adjtime32, ptr @__p_syscall_meta__clock_getres, ptr @__p_syscall_meta__clock_getres_time32, ptr @__p_syscall_meta__clock_gettime, ptr @__p_syscall_meta__clock_gettime32, ptr @__p_syscall_meta__clock_nanosleep, ptr @__p_syscall_meta__clock_nanosleep_time32, ptr @__p_syscall_meta__clock_settime, ptr @__p_syscall_meta__clock_settime32, ptr @__p_syscall_meta__timer_create, ptr @__p_syscall_meta__timer_delete, ptr @__p_syscall_meta__timer_getoverrun, ptr @__p_syscall_meta__timer_gettime, ptr @__p_syscall_meta__timer_gettime32, ptr @__p_syscall_meta__timer_settime, ptr @__p_syscall_meta__timer_settime32, ptr @__syscall_meta__clock_adjtime, ptr @__syscall_meta__clock_adjtime32, ptr @__syscall_meta__clock_getres, ptr @__syscall_meta__clock_getres_time32, ptr @__syscall_meta__clock_gettime, ptr @__syscall_meta__clock_gettime32, ptr @__syscall_meta__clock_nanosleep, ptr @__syscall_meta__clock_nanosleep_time32, ptr @__syscall_meta__clock_settime, ptr @__syscall_meta__clock_settime32, ptr @__syscall_meta__timer_create, ptr @__syscall_meta__timer_delete, ptr @__syscall_meta__timer_getoverrun, ptr @__syscall_meta__timer_gettime, ptr @__syscall_meta__timer_gettime32, ptr @__syscall_meta__timer_settime, ptr @__syscall_meta__timer_settime32, ptr @event_enter__clock_adjtime, ptr @event_enter__clock_adjtime32, ptr @event_enter__clock_getres, ptr @event_enter__clock_getres_time32, ptr @event_enter__clock_gettime, ptr @event_enter__clock_gettime32, ptr @event_enter__clock_nanosleep, ptr @event_enter__clock_nanosleep_time32, ptr @event_enter__clock_settime, ptr @event_enter__clock_settime32, ptr @event_enter__timer_create, ptr @event_enter__timer_delete, ptr @event_enter__timer_getoverrun, ptr @event_enter__timer_gettime, ptr @event_enter__timer_gettime32, ptr @event_enter__timer_settime, ptr @event_enter__timer_settime32, ptr @event_exit__clock_adjtime, ptr @event_exit__clock_adjtime32, ptr @event_exit__clock_getres, ptr @event_exit__clock_getres_time32, ptr @event_exit__clock_gettime, ptr @event_exit__clock_gettime32, ptr @event_exit__clock_nanosleep, ptr @event_exit__clock_nanosleep_time32, ptr @event_exit__clock_settime, ptr @event_exit__clock_settime32, ptr @event_exit__timer_create, ptr @event_exit__timer_delete, ptr @event_exit__timer_getoverrun, ptr @event_exit__timer_gettime, ptr @event_exit__timer_gettime32, ptr @event_exit__timer_settime, ptr @event_exit__timer_settime32, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__timer_create, ptr @args__timer_create, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__timer_gettime, ptr @args__timer_gettime, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @types__timer_gettime32, ptr @args__timer_gettime32, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @types__timer_getoverrun, ptr @args__timer_getoverrun, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @types__timer_settime, ptr @args__timer_settime, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @types__timer_settime32, ptr @args__timer_settime32, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @types__timer_delete, ptr @args__timer_delete, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @types__clock_settime, ptr @args__clock_settime, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @types__clock_gettime, ptr @args__clock_gettime, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @types__clock_adjtime, ptr @args__clock_adjtime, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @types__clock_getres, ptr @args__clock_getres, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @types__clock_settime32, ptr @args__clock_settime32, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @types__clock_gettime32, ptr @args__clock_gettime32, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @types__clock_adjtime32, ptr @args__clock_adjtime32, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @types__clock_getres_time32, ptr @args__clock_getres_time32, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @types__clock_nanosleep, ptr @args__clock_nanosleep, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @types__clock_nanosleep_time32, ptr @args__clock_nanosleep_time32, ptr @.str.51, ptr @posix_timers_cache, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.60, ptr @do_timer_create.__key, ptr @.str.61, ptr @hash_lock, ptr @posix_timers_hashtable, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @posix_clocks, ptr @clock_realtime, ptr @clock_monotonic, ptr @clock_monotonic_raw, ptr @clock_realtime_coarse, ptr @clock_monotonic_coarse, ptr @clock_boottime, ptr @clock_tai], section "llvm.metadata"
@0 = internal global [169 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__timer_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__timer_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__timer_create to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__timer_create to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__timer_gettime to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__timer_gettime to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__timer_gettime to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__timer_gettime to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__timer_gettime32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__timer_gettime32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__timer_gettime32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__timer_gettime32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__timer_getoverrun to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__timer_getoverrun to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__timer_getoverrun to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__timer_getoverrun to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__timer_settime to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__timer_settime to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__timer_settime to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__timer_settime to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__timer_settime32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__timer_settime32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__timer_settime32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__timer_settime32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__timer_delete to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__timer_delete to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__timer_delete to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__timer_delete to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__clock_settime to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__clock_settime to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__clock_settime to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__clock_settime to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__clock_gettime to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__clock_gettime to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__clock_gettime to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__clock_gettime to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__clock_adjtime to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__clock_adjtime to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__clock_adjtime to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__clock_adjtime to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__clock_getres to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__clock_getres to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__clock_getres to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__clock_getres to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__clock_settime32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__clock_settime32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__clock_settime32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__clock_settime32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__clock_gettime32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__clock_gettime32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__clock_gettime32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__clock_gettime32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__clock_adjtime32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__clock_adjtime32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__clock_adjtime32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__clock_adjtime32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__clock_getres_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__clock_getres_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__clock_getres_time32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__clock_getres_time32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__clock_nanosleep to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__clock_nanosleep to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__clock_nanosleep to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__clock_nanosleep to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__clock_nanosleep_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__clock_nanosleep_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__clock_nanosleep_time32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__clock_nanosleep_time32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @posix_timers_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_timer_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @posix_timers_hashtable to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @posix_clocks to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_realtime to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_monotonic to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_monotonic_raw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_realtime_coarse to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_monotonic_coarse to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_boottime to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_tai to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_timer_create = dso_local alias i32 (i32, ptr, ptr), ptr @__se_sys_timer_create
@sys_timer_gettime = dso_local alias i32 (i32, ptr), ptr @__se_sys_timer_gettime
@sys_timer_gettime32 = dso_local alias i32 (i32, ptr), ptr @__se_sys_timer_gettime32
@sys_timer_getoverrun = dso_local alias i32 (i32), ptr @__se_sys_timer_getoverrun
@sys_timer_settime = dso_local alias i32 (i32, i32, ptr, ptr), ptr @__se_sys_timer_settime
@sys_timer_settime32 = dso_local alias i32 (i32, i32, ptr, ptr), ptr @__se_sys_timer_settime32
@sys_timer_delete = dso_local alias i32 (i32), ptr @__se_sys_timer_delete
@sys_clock_settime = dso_local alias i32 (i32, ptr), ptr @__se_sys_clock_settime
@sys_clock_gettime = dso_local alias i32 (i32, ptr), ptr @__se_sys_clock_gettime
@sys_clock_adjtime = dso_local alias i32 (i32, ptr), ptr @__se_sys_clock_adjtime
@sys_clock_getres = dso_local alias i32 (i32, ptr), ptr @__se_sys_clock_getres
@sys_clock_settime32 = dso_local alias i32 (i32, ptr), ptr @__se_sys_clock_settime32
@sys_clock_gettime32 = dso_local alias i32 (i32, ptr), ptr @__se_sys_clock_gettime32
@sys_clock_adjtime32 = dso_local alias i32 (i32, ptr), ptr @__se_sys_clock_adjtime32
@sys_clock_getres_time32 = dso_local alias i32 (i32, ptr), ptr @__se_sys_clock_getres_time32
@sys_clock_nanosleep = dso_local alias i32 (i32, i32, ptr, ptr), ptr @__se_sys_clock_nanosleep
@sys_clock_nanosleep_time32 = dso_local alias i32 (i32, i32, ptr, ptr), ptr @__se_sys_clock_nanosleep_time32

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_posix_timers() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.51, i32 noundef 224, i32 noundef 0, i32 noundef 67371008, ptr noundef null) #10
  store ptr %call, ptr @posix_timers_cache, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @posixtimer_rearm(ptr nocapture noundef %info) local_unnamed_addr #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #10
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !299
  %_sifields = getelementptr inbounds %struct.anon, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %_sifields to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %_sifields, align 4
  %call = call fastcc ptr @__lock_timer(i32 noundef %2, ptr noundef nonnull %flags)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %it_interval = getelementptr inbounds %struct.k_itimer, ptr %call, i32 0, i32 11
  %3 = ptrtoint ptr %it_interval to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %it_interval, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool1.not = icmp eq i64 %4, 0
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %it_requeue_pending = getelementptr inbounds %struct.k_itimer, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %it_requeue_pending to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %it_requeue_pending, align 8
  %_sys_private = getelementptr inbounds %struct.anon, ptr %info, i32 0, i32 3, i32 0, i32 3
  %7 = ptrtoint ptr %_sys_private to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %_sys_private, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %if.then3, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %kclock = getelementptr inbounds %struct.k_itimer, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %kclock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kclock, align 4
  %timer_rearm = getelementptr inbounds %struct.k_clock, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %timer_rearm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %timer_rearm, align 4
  tail call void %12(ptr noundef nonnull %call) #10
  %it_active = getelementptr inbounds %struct.k_itimer, ptr %call, i32 0, i32 6
  %13 = ptrtoint ptr %it_active to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %it_active, align 8
  %it_overrun = getelementptr inbounds %struct.k_itimer, ptr %call, i32 0, i32 7
  %14 = ptrtoint ptr %it_overrun to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %it_overrun, align 8
  %it_overrun_last = getelementptr inbounds %struct.k_itimer, ptr %call, i32 0, i32 8
  %16 = ptrtoint ptr %it_overrun_last to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %it_overrun_last, align 8
  store i64 -1, ptr %it_overrun, align 8
  %17 = ptrtoint ptr %it_requeue_pending to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %it_requeue_pending, align 8
  %inc = add i32 %18, 1
  store i32 %inc, ptr %it_requeue_pending, align 8
  %_overrun = getelementptr inbounds %struct.anon, ptr %info, i32 0, i32 3, i32 0, i32 1
  %19 = ptrtoint ptr %_overrun to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %_overrun, align 4
  %conv.i = sext i32 %20 to i64
  %add.i = add i64 %15, %conv.i
  %21 = tail call i64 @llvm.smin.i64(i64 %add.i, i64 2147483647) #10
  %22 = trunc i64 %21 to i32
  %23 = ptrtoint ptr %_overrun to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %_overrun, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %it_lock.i = getelementptr inbounds %struct.k_itimer, ptr %call, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %it_lock.i, i32 noundef %25) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__lock_timer(i32 noundef %timer_id, ptr nocapture noundef writeonly %flags) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timer_id)
  %cmp = icmp slt i32 %timer_id, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !289) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !300
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.65, i32 noundef 696, ptr noundef nonnull @.str.66) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !289) #10
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 111
  %8 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal.i, align 16
  %10 = ptrtoint ptr %9 to i32
  %xor.i.i = xor i32 %10, %timer_id
  %mul.i.i.i.i = mul i32 %xor.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 23
  %arrayidx.i = getelementptr [512 x %struct.hlist_head], ptr @posix_timers_hashtable, i32 0, i32 %shr.i.i.i
  %call2.i = tail call fastcc ptr @__posix_timers_find(ptr noundef %arrayidx.i, ptr noundef %9, i32 noundef %timer_id) #10
  %tobool.not = icmp eq ptr %call2.i, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end16_crit_edge, label %do.body3

rcu_read_lock.exit.if.end16_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.body3:                                         ; preds = %rcu_read_lock.exit
  %it_lock = getelementptr inbounds %struct.k_itimer, ptr %call2.i, i32 0, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %it_lock) #10
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call7, ptr %flags, align 4
  %it_signal = getelementptr inbounds %struct.k_itimer, ptr %call2.i, i32 0, i32 12
  %12 = ptrtoint ptr %it_signal to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %it_signal, align 8
  %14 = tail call i32 @llvm.read_register.i32(metadata !289) #10
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 111
  %18 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %signal, align 16
  %cmp11 = icmp eq ptr %13, %19
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.body3
  %call.i23 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i23, label %if.then13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i26

if.then13.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i26:                                ; preds = %if.then13
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, label %if.then.i29

land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.65, i32 noundef 724, ptr noundef nonnull @.str.67) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i29, %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, %if.then13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !301
  br label %cleanup.sink.split

if.end14:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %it_lock, i32 noundef %call7) #10
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %rcu_read_lock.exit.if.end16_crit_edge
  %call.i32 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i32, label %if.end16.rcu_read_unlock.exit42_crit_edge, label %land.lhs.true.i35

if.end16.rcu_read_unlock.exit42_crit_edge:        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit42

land.lhs.true.i35:                                ; preds = %if.end16
  %call1.i33 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %tobool.not.i34, label %land.lhs.true.i35.rcu_read_unlock.exit42_crit_edge, label %land.lhs.true2.i37

land.lhs.true.i35.rcu_read_unlock.exit42_crit_edge: ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit42

land.lhs.true2.i37:                               ; preds = %land.lhs.true.i35
  %.b4.i36 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i36, label %land.lhs.true2.i37.rcu_read_unlock.exit42_crit_edge, label %if.then.i38

land.lhs.true2.i37.rcu_read_unlock.exit42_crit_edge: ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit42

if.then.i38:                                      ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.65, i32 noundef 724, ptr noundef nonnull @.str.67) #10
  br label %rcu_read_unlock.exit42

rcu_read_unlock.exit42:                           ; preds = %if.then.i38, %land.lhs.true2.i37.rcu_read_unlock.exit42_crit_edge, %land.lhs.true.i35.rcu_read_unlock.exit42_crit_edge, %if.end16.rcu_read_unlock.exit42_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !301
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rcu_read_unlock.exit42, %rcu_read_unlock.exit
  %retval.0.ph = phi ptr [ null, %rcu_read_unlock.exit42 ], [ %call2.i, %rcu_read_unlock.exit ]
  %20 = tail call i32 @llvm.read_register.i32(metadata !289) #10
  %and.i.i.i.i.i30 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %sub.i.i.i41 = add i32 %23, -1
  store volatile i32 %sub.i.i.i41, ptr %preempt_count.i.i.i.i31, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @posix_timer_event(ptr nocapture noundef readonly %timr, i32 noundef %si_private) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sigq = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 14
  %0 = ptrtoint ptr %sigq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sigq, align 8
  %_sys_private = getelementptr inbounds %struct.sigqueue, ptr %1, i32 0, i32 2, i32 0, i32 3, i32 0, i32 3
  %2 = ptrtoint ptr %_sys_private to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %si_private, ptr %_sys_private, align 4
  %it_sigev_notify = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 10
  %3 = ptrtoint ptr %it_sigev_notify to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %it_sigev_notify, align 4
  %and = lshr i32 %4, 2
  %and.lobit = and i32 %and, 1
  %5 = xor i32 %and.lobit, 1
  %6 = load ptr, ptr %sigq, align 8
  %7 = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call = tail call i32 @send_sigqueue(ptr noundef %6, ptr noundef %9, i32 noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sigqueue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timer_create(i32 noundef %which_clock, i32 noundef %timer_event_spec, i32 noundef %created_timer_id) #1 align 64 {
entry:
  %event.i = alloca %struct.sigevent, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %timer_event_spec to ptr
  %1 = inttoptr i32 %created_timer_id to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timer_event_spec)
  %tobool.not.i = icmp eq i32 %timer_event_spec, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %event.i) #10
  %2 = call ptr @memset(ptr %event.i, i32 255, i32 64)
  tail call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 156) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %if.then.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.if.then11.i.i.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %0, i32 64, i32 -1226833920) #13, !srcloc !302
  %asmresult.i.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !303

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %event.i, i32 noundef 64) #10
  %4 = call i32 @llvm.read_register.i32(metadata !289) #10
  %and.i.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !304
  %and.i.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %event.i, ptr noundef nonnull %0, i32 noundef 64) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #10, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !303

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then.i.if.then11.i.i.i_crit_edge
  %res.0.i.i11.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 64, %if.then.i.if.then11.i.i.i_crit_edge ], [ 64, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 64, %res.0.i.i11.i
  %add.ptr.i.i.i = getelementptr i8, ptr %event.i, i32 %sub.i.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i11.i)
  br label %cleanup.i

if.end.i:                                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = call fastcc i32 @do_timer_create(i32 noundef %which_clock, ptr noundef nonnull %event.i, ptr noundef %1) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %event.i) #10
  br label %__do_sys_timer_create.exit

if.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call fastcc i32 @do_timer_create(i32 noundef %which_clock, ptr noundef null, ptr noundef %1) #10
  br label %__do_sys_timer_create.exit

__do_sys_timer_create.exit:                       ; preds = %if.end4.i, %cleanup.i
  %retval.1.i = phi i32 [ %retval.0.i, %cleanup.i ], [ %call5.i, %if.end4.i ]
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @common_timer_get(ptr noundef %timr, ptr nocapture noundef writeonly %cur_setting) #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  %tmp22 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %kclock = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 3
  %0 = ptrtoint ptr %kclock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kclock, align 4
  %it_sigev_notify = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 10
  %2 = ptrtoint ptr %it_sigev_notify to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %it_sigev_notify, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %it_interval = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 11
  %4 = ptrtoint ptr %it_interval to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %it_interval, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %if.else, label %land.lhs.true

if.else:                                          ; preds = %entry
  %it_active = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 6
  %6 = ptrtoint ptr %it_active to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %it_active, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp ne i32 %7, 0
  %brmerge = select i1 %tobool2.not, i1 true, i1 %cmp
  br i1 %brmerge, label %if.end7.thread, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %clock_get_ktime47 = getelementptr inbounds %struct.k_clock, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %clock_get_ktime47 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clock_get_ktime47, align 4
  %it_clock48 = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 4
  %10 = ptrtoint ptr %it_clock48 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %it_clock48, align 8
  %call49 = tail call i64 %9(i32 noundef %11) #10
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %5) #10
  %12 = call ptr @memcpy(ptr %cur_setting, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  %clock_get_ktime = getelementptr inbounds %struct.k_clock, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %clock_get_ktime to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clock_get_ktime, align 4
  %it_clock = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 4
  %15 = ptrtoint ptr %it_clock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %it_clock, align 8
  %call = call i64 %14(i32 noundef %16) #10
  %it_requeue_pending = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 9
  %17 = ptrtoint ptr %it_requeue_pending to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %it_requeue_pending, align 8
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp ne i32 %and, 0
  %brmerge46 = select i1 %tobool9.not, i1 true, i1 %cmp
  br i1 %brmerge46, label %if.then11, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %timer_forward = getelementptr inbounds %struct.k_clock, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %timer_forward to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %timer_forward, align 4
  %call12 = call i64 %20(ptr noundef %timr, i64 noundef %call) #10
  %it_overrun = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 7
  %21 = ptrtoint ptr %it_overrun to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %it_overrun, align 8
  %add = add i64 %22, %call12
  store i64 %add, ptr %it_overrun, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true.if.end13_crit_edge, %if.end7.thread
  %call50 = phi i64 [ %call49, %if.end7.thread ], [ %call, %land.lhs.true.if.end13_crit_edge ], [ %call, %if.then11 ]
  %timer_remaining = getelementptr inbounds %struct.k_clock, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %timer_remaining to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %timer_remaining, align 4
  %call14 = call i64 %24(ptr noundef %timr, i64 noundef %call50) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %call14)
  %cmp15 = icmp slt i64 %call14, 1
  br i1 %cmp15, label %if.then16, label %if.else20

if.then16:                                        ; preds = %if.end13
  br i1 %cmp, label %if.then16.cleanup_crit_edge, label %if.then18

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %tv_nsec = getelementptr inbounds %struct.itimerspec64, ptr %cur_setting, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %tv_nsec, align 8
  br label %cleanup

if.else20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %it_value21 = getelementptr inbounds %struct.itimerspec64, ptr %cur_setting, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp22) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp22, i64 noundef %call14) #10
  %26 = call ptr @memcpy(ptr %it_value21, ptr %tmp22, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp22) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else20, %if.then18, %if.then16.cleanup_crit_edge, %if.else.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timer_gettime(i32 noundef %timer_id, i32 noundef %setting) #1 align 64 {
entry:
  %flags.i.i = alloca i32, align 4
  %cur_setting.i = alloca %struct.itimerspec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %setting to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cur_setting.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i.i) #10
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %flags.i.i, align 4, !annotation !299
  %call.i.i = call fastcc ptr @__lock_timer(i32 noundef %timer_id, ptr noundef nonnull %flags.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do_timer_gettime.exit.thread.i, label %if.end.i.i

do_timer_gettime.exit.thread.i:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i) #10
  br label %__do_sys_timer_gettime.exit

if.end.i.i:                                       ; preds = %entry
  %2 = call ptr @memset(ptr %cur_setting.i, i32 0, i32 32)
  %kclock.i.i = getelementptr inbounds %struct.k_itimer, ptr %call.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %kclock.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kclock.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.land.rhs.i.i_crit_edge, label %lor.rhs.i.i

if.end.i.i.land.rhs.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

lor.rhs.i.i:                                      ; preds = %if.end.i.i
  %timer_get.i.i = getelementptr inbounds %struct.k_clock, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %timer_get.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %timer_get.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i.i, label %lor.rhs.i.i.land.rhs.i.i_crit_edge, label %if.then.i

lor.rhs.i.i.land.rhs.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %lor.rhs.i.i.land.rhs.i.i_crit_edge, %if.end.i.i.land.rhs.i.i_crit_edge
  %.b57.i.i = load i1, ptr @do_timer_gettime.__already_done, align 1
  br i1 %.b57.i.i, label %land.rhs.i.i.do_timer_gettime.exit.thread8.i_crit_edge, label %if.then11.i.i, !prof !303

land.rhs.i.i.do_timer_gettime.exit.thread8.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_timer_gettime.exit.thread8.i

if.then11.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @do_timer_gettime.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 728, i32 noundef 9, ptr noundef null) #10
  br label %do_timer_gettime.exit.thread8.i

do_timer_gettime.exit.thread8.i:                  ; preds = %if.then11.i.i, %land.rhs.i.i.do_timer_gettime.exit.thread8.i_crit_edge
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 4
  %it_lock.i.i11.i = getelementptr inbounds %struct.k_itimer, ptr %call.i.i, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %it_lock.i.i11.i, i32 noundef %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i) #10
  br label %__do_sys_timer_gettime.exit

if.then.i:                                        ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %6(ptr noundef nonnull %call.i.i, ptr noundef nonnull %cur_setting.i) #10
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i.i, align 4
  %it_lock.i.i.i = getelementptr inbounds %struct.k_itimer, ptr %call.i.i, i32 0, i32 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %it_lock.i.i.i, i32 noundef %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i) #10
  %call1.i = call i32 @put_itimerspec64(ptr noundef nonnull %cur_setting.i, ptr noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 0, i32 -14
  br label %__do_sys_timer_gettime.exit

__do_sys_timer_gettime.exit:                      ; preds = %if.then.i, %do_timer_gettime.exit.thread8.i, %do_timer_gettime.exit.thread.i
  %ret.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ -22, %do_timer_gettime.exit.thread.i ], [ -22, %do_timer_gettime.exit.thread8.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cur_setting.i) #10
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timer_gettime32(i32 noundef %timer_id, i32 noundef %setting) #1 align 64 {
entry:
  %flags.i.i = alloca i32, align 4
  %cur_setting.i = alloca %struct.itimerspec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %setting to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cur_setting.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i.i) #10
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %flags.i.i, align 4, !annotation !299
  %call.i.i = call fastcc ptr @__lock_timer(i32 noundef %timer_id, ptr noundef nonnull %flags.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do_timer_gettime.exit.thread.i, label %if.end.i.i

do_timer_gettime.exit.thread.i:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i) #10
  br label %__do_sys_timer_gettime32.exit

if.end.i.i:                                       ; preds = %entry
  %2 = call ptr @memset(ptr %cur_setting.i, i32 0, i32 32)
  %kclock.i.i = getelementptr inbounds %struct.k_itimer, ptr %call.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %kclock.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kclock.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.land.rhs.i.i_crit_edge, label %lor.rhs.i.i

if.end.i.i.land.rhs.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

lor.rhs.i.i:                                      ; preds = %if.end.i.i
  %timer_get.i.i = getelementptr inbounds %struct.k_clock, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %timer_get.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %timer_get.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i.i, label %lor.rhs.i.i.land.rhs.i.i_crit_edge, label %if.then.i

lor.rhs.i.i.land.rhs.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %lor.rhs.i.i.land.rhs.i.i_crit_edge, %if.end.i.i.land.rhs.i.i_crit_edge
  %.b57.i.i = load i1, ptr @do_timer_gettime.__already_done, align 1
  br i1 %.b57.i.i, label %land.rhs.i.i.do_timer_gettime.exit.thread8.i_crit_edge, label %if.then11.i.i, !prof !303

land.rhs.i.i.do_timer_gettime.exit.thread8.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_timer_gettime.exit.thread8.i

if.then11.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @do_timer_gettime.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 728, i32 noundef 9, ptr noundef null) #10
  br label %do_timer_gettime.exit.thread8.i

do_timer_gettime.exit.thread8.i:                  ; preds = %if.then11.i.i, %land.rhs.i.i.do_timer_gettime.exit.thread8.i_crit_edge
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 4
  %it_lock.i.i11.i = getelementptr inbounds %struct.k_itimer, ptr %call.i.i, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %it_lock.i.i11.i, i32 noundef %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i) #10
  br label %__do_sys_timer_gettime32.exit

if.then.i:                                        ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %6(ptr noundef nonnull %call.i.i, ptr noundef nonnull %cur_setting.i) #10
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i.i, align 4
  %it_lock.i.i.i = getelementptr inbounds %struct.k_itimer, ptr %call.i.i, i32 0, i32 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %it_lock.i.i.i, i32 noundef %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i) #10
  %call1.i = call i32 @put_old_itimerspec32(ptr noundef nonnull %cur_setting.i, ptr noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 0, i32 -14
  br label %__do_sys_timer_gettime32.exit

__do_sys_timer_gettime32.exit:                    ; preds = %if.then.i, %do_timer_gettime.exit.thread8.i, %do_timer_gettime.exit.thread.i
  %ret.0.i = phi i32 [ %spec.select.i, %if.then.i ], [ -22, %do_timer_gettime.exit.thread.i ], [ -22, %do_timer_gettime.exit.thread8.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cur_setting.i) #10
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timer_getoverrun(i32 noundef %timer_id) #1 align 64 {
entry:
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #10
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags.i, align 4, !annotation !299
  %call.i = call fastcc ptr @__lock_timer(i32 noundef %timer_id, ptr noundef nonnull %flags.i) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.__do_sys_timer_getoverrun.exit_crit_edge, label %if.end.i

entry.__do_sys_timer_getoverrun.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_timer_getoverrun.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %it_overrun_last.i.i = getelementptr inbounds %struct.k_itimer, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %it_overrun_last.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %it_overrun_last.i.i, align 8
  %3 = tail call i64 @llvm.smin.i64(i64 %2, i64 2147483647) #10
  %4 = trunc i64 %3 to i32
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %it_lock.i.i = getelementptr inbounds %struct.k_itimer, ptr %call.i, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %it_lock.i.i, i32 noundef %6) #10
  br label %__do_sys_timer_getoverrun.exit

__do_sys_timer_getoverrun.exit:                   ; preds = %if.end.i, %entry.__do_sys_timer_getoverrun.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.end.i ], [ -22, %entry.__do_sys_timer_getoverrun.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @common_timer_set(ptr noundef %timr, i32 noundef %flags, ptr nocapture noundef readonly %new_setting, ptr noundef writeonly %old_setting) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %kclock = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 3
  %0 = ptrtoint ptr %kclock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kclock, align 4
  %tobool.not = icmp eq ptr %old_setting, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @common_timer_get(ptr noundef %timr, ptr noundef nonnull %old_setting)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %it_interval = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 11
  %2 = ptrtoint ptr %it_interval to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %it_interval, align 8
  %timer_try_to_cancel = getelementptr inbounds %struct.k_clock, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %timer_try_to_cancel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timer_try_to_cancel, align 4
  %call = tail call i32 %4(ptr noundef %timr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %it_active = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 6
  %5 = ptrtoint ptr %it_active to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %it_active, align 8
  %it_requeue_pending = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 9
  %6 = ptrtoint ptr %it_requeue_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %it_requeue_pending, align 8
  %add = add i32 %7, 2
  %and = and i32 %add, -2
  store i32 %and, ptr %it_requeue_pending, align 8
  %it_overrun_last = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 8
  %8 = ptrtoint ptr %it_overrun_last to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %it_overrun_last, align 8
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %new_setting, i32 0, i32 1
  %9 = ptrtoint ptr %it_value to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %it_value, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool4.not = icmp eq i64 %10, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end2.if.end8_crit_edge

if.end2.if.end8_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end2
  %tv_nsec = getelementptr inbounds %struct.itimerspec64, ptr %new_setting, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tv_nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end2.if.end8_crit_edge
  %13 = ptrtoint ptr %new_setting to i32
  call void @__asan_load8_noabort(i32 %13)
  %.unpack = load i64, ptr %new_setting, align 8
  %.elt47 = getelementptr inbounds [2 x i64], ptr %new_setting, i32 0, i32 1
  %14 = ptrtoint ptr %.elt47 to i32
  call void @__asan_load8_noabort(i32 %14)
  %.unpack48 = load i64, ptr %.elt47, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.unpack)
  %cmp.i.i = icmp sgt i64 %.unpack, 9223372035
  %ts.sroa.2.8.extract.shift.i = lshr i64 %.unpack48, 32
  %mul.i.i = mul i64 %.unpack, 1000000000
  %add.i.i = add i64 %ts.sroa.2.8.extract.shift.i, %mul.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %add.i.i, !prof !307
  %15 = ptrtoint ptr %it_interval to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %retval.0.i.i, ptr %it_interval, align 8
  %16 = ptrtoint ptr %it_value to i32
  call void @__asan_load8_noabort(i32 %16)
  %.unpack49 = load i64, ptr %it_value, align 8
  %.elt50 = getelementptr inbounds %struct.itimerspec64, ptr %new_setting, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %.elt50 to i32
  call void @__asan_load8_noabort(i32 %17)
  %.unpack51 = load i64, ptr %.elt50, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.unpack49)
  %cmp.i.i52 = icmp sgt i64 %.unpack49, 9223372035
  %ts.sroa.2.8.extract.shift.i53 = lshr i64 %.unpack51, 32
  %mul.i.i54 = mul i64 %.unpack49, 1000000000
  %add.i.i55 = add i64 %ts.sroa.2.8.extract.shift.i53, %mul.i.i54
  %retval.0.i.i56 = select i1 %cmp.i.i52, i64 9223372036854775807, i64 %add.i.i55, !prof !307
  %and14 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15 = icmp ne i32 %and14, 0
  %it_sigev_notify = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 10
  %18 = ptrtoint ptr %it_sigev_notify to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %it_sigev_notify, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp19 = icmp eq i32 %19, 1
  %timer_arm = getelementptr inbounds %struct.k_clock, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %timer_arm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %timer_arm, align 4
  tail call void %21(ptr noundef %timr, i64 noundef %retval.0.i.i56, i1 noundef zeroext %tobool15, i1 noundef zeroext %cmp19) #10
  %lnot = xor i1 %cmp19, true
  %lnot.ext = zext i1 %lnot to i32
  %22 = ptrtoint ptr %it_active to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %lnot.ext, ptr %it_active, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timer_settime(i32 noundef %timer_id, i32 noundef %flags, i32 noundef %new_setting, i32 noundef %old_setting) #1 align 64 {
entry:
  %new_spec.i = alloca %struct.itimerspec64, align 8
  %old_spec.i = alloca %struct.itimerspec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %old_setting to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %new_spec.i) #10
  %1 = call ptr @memset(ptr %new_spec.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old_spec.i) #10
  %2 = call ptr @memset(ptr %old_spec.i, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_setting)
  %tobool.not.i = icmp eq i32 %old_setting, 0
  %old_spec..i = select i1 %tobool.not.i, ptr null, ptr %old_spec.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_setting)
  %tobool1.not.i = icmp eq i32 %new_setting, 0
  br i1 %tobool1.not.i, label %entry.__do_sys_timer_settime.exit_crit_edge, label %if.end.i

entry.__do_sys_timer_settime.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_timer_settime.exit

if.end.i:                                         ; preds = %entry
  %3 = inttoptr i32 %new_setting to ptr
  %call.i = call i32 @get_itimerspec64(ptr noundef nonnull %new_spec.i, ptr noundef nonnull %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.__do_sys_timer_settime.exit_crit_edge

if.end.i.__do_sys_timer_settime.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_timer_settime.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call fastcc i32 @do_timer_settime(i32 noundef %timer_id, i32 noundef %flags, ptr noundef nonnull %new_spec.i, ptr noundef %old_spec..i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp ne i32 %call5.i, 0
  %brmerge.i = or i1 %tobool.not.i, %tobool6.not.i
  br i1 %brmerge.i, label %if.end4.i.__do_sys_timer_settime.exit_crit_edge, label %if.then8.i

if.end4.i.__do_sys_timer_settime.exit_crit_edge:  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_timer_settime.exit

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %call9.i = call i32 @put_itimerspec64(ptr noundef nonnull %old_spec.i, ptr noundef nonnull %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  %spec.select.i = select i1 %tobool10.not.i, i32 0, i32 -14
  br label %__do_sys_timer_settime.exit

__do_sys_timer_settime.exit:                      ; preds = %if.then8.i, %if.end4.i.__do_sys_timer_settime.exit_crit_edge, %if.end.i.__do_sys_timer_settime.exit_crit_edge, %entry.__do_sys_timer_settime.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__do_sys_timer_settime.exit_crit_edge ], [ -14, %if.end.i.__do_sys_timer_settime.exit_crit_edge ], [ %call5.i, %if.end4.i.__do_sys_timer_settime.exit_crit_edge ], [ %spec.select.i, %if.then8.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old_spec.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %new_spec.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timer_settime32(i32 noundef %timer_id, i32 noundef %flags, i32 noundef %new, i32 noundef %old) #1 align 64 {
entry:
  %new_spec.i = alloca %struct.itimerspec64, align 8
  %old_spec.i = alloca %struct.itimerspec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %old to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %new_spec.i) #10
  %1 = call ptr @memset(ptr %new_spec.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old_spec.i) #10
  %2 = call ptr @memset(ptr %old_spec.i, i32 255, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old)
  %tobool.not.i = icmp eq i32 %old, 0
  %old_spec..i = select i1 %tobool.not.i, ptr null, ptr %old_spec.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new)
  %tobool1.not.i = icmp eq i32 %new, 0
  br i1 %tobool1.not.i, label %entry.__do_sys_timer_settime32.exit_crit_edge, label %if.end.i

entry.__do_sys_timer_settime32.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_timer_settime32.exit

if.end.i:                                         ; preds = %entry
  %3 = inttoptr i32 %new to ptr
  %call.i = call i32 @get_old_itimerspec32(ptr noundef nonnull %new_spec.i, ptr noundef nonnull %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.__do_sys_timer_settime32.exit_crit_edge

if.end.i.__do_sys_timer_settime32.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_timer_settime32.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call fastcc i32 @do_timer_settime(i32 noundef %timer_id, i32 noundef %flags, ptr noundef nonnull %new_spec.i, ptr noundef %old_spec..i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp ne i32 %call5.i, 0
  %brmerge.i = or i1 %tobool.not.i, %tobool6.not.i
  br i1 %brmerge.i, label %if.end4.i.__do_sys_timer_settime32.exit_crit_edge, label %if.then8.i

if.end4.i.__do_sys_timer_settime32.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_timer_settime32.exit

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %call9.i = call i32 @put_old_itimerspec32(ptr noundef nonnull %old_spec.i, ptr noundef nonnull %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  %spec.select.i = select i1 %tobool10.not.i, i32 0, i32 -14
  br label %__do_sys_timer_settime32.exit

__do_sys_timer_settime32.exit:                    ; preds = %if.then8.i, %if.end4.i.__do_sys_timer_settime32.exit_crit_edge, %if.end.i.__do_sys_timer_settime32.exit_crit_edge, %entry.__do_sys_timer_settime32.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__do_sys_timer_settime32.exit_crit_edge ], [ -14, %if.end.i.__do_sys_timer_settime32.exit_crit_edge ], [ %call5.i, %if.end4.i.__do_sys_timer_settime32.exit_crit_edge ], [ %spec.select.i, %if.then8.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old_spec.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %new_spec.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @common_timer_del(ptr noundef %timer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %kclock = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 3
  %0 = ptrtoint ptr %kclock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kclock, align 4
  %it_interval = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 11
  %2 = ptrtoint ptr %it_interval to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %it_interval, align 8
  %timer_try_to_cancel = getelementptr inbounds %struct.k_clock, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %timer_try_to_cancel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timer_try_to_cancel, align 4
  %call = tail call i32 %4(ptr noundef %timer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %it_active = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 6
  %5 = ptrtoint ptr %it_active to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %it_active, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_timer_delete(i32 noundef %timer_id) #1 align 64 {
entry:
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #10
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags.i, align 4, !annotation !299
  %call.i = call fastcc ptr @__lock_timer(i32 noundef %timer_id, ptr noundef nonnull %flags.i) #10
  %tobool.not25.i = icmp eq ptr %call.i, null
  br i1 %tobool.not25.i, label %entry.__do_sys_timer_delete.exit_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.__do_sys_timer_delete.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_timer_delete.exit

if.end.i:                                         ; preds = %if.then4.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %timer.026.i = phi ptr [ %call5.i, %if.then4.i.if.end.i_crit_edge ], [ %call.i, %entry.if.end.i_crit_edge ]
  %kclock.i.i = getelementptr inbounds %struct.k_itimer, ptr %timer.026.i, i32 0, i32 3
  %1 = ptrtoint ptr %kclock.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %kclock.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end.i.land.rhs.i.i_crit_edge, label %lor.rhs.i.i

if.end.i.land.rhs.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

lor.rhs.i.i:                                      ; preds = %if.end.i
  %timer_del.i.i = getelementptr inbounds %struct.k_clock, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %timer_del.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timer_del.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i.i, label %lor.rhs.i.i.land.rhs.i.i_crit_edge, label %timer_delete_hook.exit.i

lor.rhs.i.i.land.rhs.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %lor.rhs.i.i.land.rhs.i.i_crit_edge, %if.end.i.land.rhs.i.i_crit_edge
  %.b47.i.i = load i1, ptr @timer_delete_hook.__already_done, align 1
  br i1 %.b47.i.i, label %land.rhs.i.i.if.end6.i_crit_edge, label %if.then.i.i, !prof !303

land.rhs.i.i.if.end6.i_crit_edge:                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @timer_delete_hook.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %if.end6.i

timer_delete_hook.exit.i:                         ; preds = %lor.rhs.i.i
  %call.i.i = tail call i32 %4(ptr noundef nonnull %timer.026.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i, label %if.then4.i, label %timer_delete_hook.exit.i.if.end6.i_crit_edge, !prof !307

timer_delete_hook.exit.i.if.end6.i_crit_edge:     ; preds = %timer_delete_hook.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then4.i:                                       ; preds = %timer_delete_hook.exit.i
  %call5.i = call fastcc ptr @timer_wait_running(ptr noundef nonnull %timer.026.i, ptr noundef nonnull %flags.i) #10
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.then4.i.__do_sys_timer_delete.exit_crit_edge, label %if.then4.i.if.end.i_crit_edge

if.then4.i.if.end.i_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then4.i.__do_sys_timer_delete.exit_crit_edge:  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_timer_delete.exit

if.end6.i:                                        ; preds = %timer_delete_hook.exit.i.if.end6.i_crit_edge, %if.then.i.i, %land.rhs.i.i.if.end6.i_crit_edge
  %5 = tail call i32 @llvm.read_register.i32(metadata !289) #10
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 112
  %9 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sighand.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %10) #10
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %timer.026.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.i.list_del.exit.i_crit_edge

if.end6.i.list_del.exit.i_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %timer.026.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %timer.026.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %timer.026.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end6.i.list_del.exit.i_crit_edge
  %17 = ptrtoint ptr %timer.026.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %timer.026.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %timer.026.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %sighand10.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 112
  %21 = ptrtoint ptr %sighand10.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sighand10.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %22) #10
  %it_signal.i = getelementptr inbounds %struct.k_itimer, ptr %timer.026.i, i32 0, i32 12
  %23 = ptrtoint ptr %it_signal.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %it_signal.i, align 8
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %it_lock.i.i = getelementptr inbounds %struct.k_itimer, ptr %timer.026.i, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %it_lock.i.i, i32 noundef %25) #10
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @hash_lock) #10
  %t_hash.i.i = getelementptr inbounds %struct.k_itimer, ptr %timer.026.i, i32 0, i32 1
  %26 = ptrtoint ptr %t_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %t_hash.i.i, align 4
  %pprev2.i.i.i.i = getelementptr inbounds %struct.k_itimer, ptr %timer.026.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %27, ptr %29, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i.i, label %list_del.exit.i.release_posix_timer.exit.i_crit_edge, label %do.body13.i.i.i.i

list_del.exit.i.release_posix_timer.exit.i_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_posix_timer.exit.i

do.body13.i.i.i.i:                                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %27, i32 0, i32 1
  %31 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %pprev14.i.i.i.i, align 4
  br label %release_posix_timer.exit.i

release_posix_timer.exit.i:                       ; preds = %do.body13.i.i.i.i, %list_del.exit.i.release_posix_timer.exit.i_crit_edge
  %32 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @hash_lock, i32 noundef %call2.i.i) #10
  %33 = getelementptr inbounds %struct.k_itimer, ptr %timer.026.i, i32 0, i32 13
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  tail call void @put_pid(ptr noundef %35) #10
  %sigq.i.i = getelementptr inbounds %struct.k_itimer, ptr %timer.026.i, i32 0, i32 14
  %36 = ptrtoint ptr %sigq.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sigq.i.i, align 8
  tail call void @sigqueue_free(ptr noundef %37) #10
  %rcu.i.i = getelementptr inbounds %struct.k_itimer, ptr %timer.026.i, i32 0, i32 16
  tail call void @call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull @k_itimer_rcu_free) #10
  br label %__do_sys_timer_delete.exit

__do_sys_timer_delete.exit:                       ; preds = %release_posix_timer.exit.i, %if.then4.i.__do_sys_timer_delete.exit_crit_edge, %entry.__do_sys_timer_delete.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %release_posix_timer.exit.i ], [ -22, %entry.__do_sys_timer_delete.exit_crit_edge ], [ -22, %if.then4.i.__do_sys_timer_delete.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_itimers(ptr noundef %sig) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %posix_timers = getelementptr inbounds %struct.signal_struct, ptr %sig, i32 0, i32 16
  %0 = ptrtoint ptr %posix_timers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %posix_timers, align 4
  %cmp.i.not4 = icmp eq ptr %1, %posix_timers
  br i1 %cmp.i.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %itimer_delete.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %31, %itimer_delete.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %it_lock.i = getelementptr inbounds %struct.k_itimer, ptr %2, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %it_lock.i) #10
  %kclock.i.i = getelementptr inbounds %struct.k_itimer, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %kclock.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kclock.i.i, align 4
  %tobool.not.i13.i = icmp eq ptr %4, null
  br i1 %tobool.not.i13.i, label %while.body.land.rhs.i.i_crit_edge, label %while.body.lor.rhs.i.i_crit_edge

while.body.lor.rhs.i.i_crit_edge:                 ; preds = %while.body
  br label %lor.rhs.i.i

while.body.land.rhs.i.i_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

lor.rhs.i.i:                                      ; preds = %if.then.i.lor.rhs.i.i_crit_edge, %while.body.lor.rhs.i.i_crit_edge
  %5 = phi ptr [ %9, %if.then.i.lor.rhs.i.i_crit_edge ], [ %4, %while.body.lor.rhs.i.i_crit_edge ]
  %timer_del.i.i = getelementptr inbounds %struct.k_clock, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %timer_del.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %timer_del.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i, label %lor.rhs.i.i.land.rhs.i.i_crit_edge, label %timer_delete_hook.exit.i

lor.rhs.i.i.land.rhs.i.i_crit_edge:               ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.land.rhs.i.i_crit_edge, %lor.rhs.i.i.land.rhs.i.i_crit_edge, %while.body.land.rhs.i.i_crit_edge
  %.b47.i.i = load i1, ptr @timer_delete_hook.__already_done, align 1
  br i1 %.b47.i.i, label %land.rhs.i.i.if.end.i_crit_edge, label %if.then.i.i, !prof !303

land.rhs.i.i.if.end.i_crit_edge:                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @timer_delete_hook.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

timer_delete_hook.exit.i:                         ; preds = %lor.rhs.i.i
  %call.i.i = tail call i32 %7(ptr noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i3 = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i3, label %if.then.i, label %timer_delete_hook.exit.i.if.end.i_crit_edge

timer_delete_hook.exit.i.if.end.i_crit_edge:      ; preds = %timer_delete_hook.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %timer_delete_hook.exit.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %it_lock.i) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %it_lock.i) #10
  %8 = ptrtoint ptr %kclock.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kclock.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.i.land.rhs.i.i_crit_edge, label %if.then.i.lor.rhs.i.i_crit_edge

if.then.i.lor.rhs.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i.i

if.then.i.land.rhs.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

if.end.i:                                         ; preds = %timer_delete_hook.exit.i.if.end.i_crit_edge, %if.then.i.i, %land.rhs.i.i.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %it_lock.i) #10
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @hash_lock) #10
  %t_hash.i.i = getelementptr inbounds %struct.k_itimer, ptr %2, i32 0, i32 1
  %18 = ptrtoint ptr %t_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %t_hash.i.i, align 4
  %pprev2.i.i.i.i = getelementptr inbounds %struct.k_itimer, ptr %2, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %19, ptr %21, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i.i, label %list_del.exit.i.itimer_delete.exit_crit_edge, label %do.body13.i.i.i.i

list_del.exit.i.itimer_delete.exit_crit_edge:     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %itimer_delete.exit

do.body13.i.i.i.i:                                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %pprev14.i.i.i.i, align 4
  br label %itimer_delete.exit

itimer_delete.exit:                               ; preds = %do.body13.i.i.i.i, %list_del.exit.i.itimer_delete.exit_crit_edge
  %24 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @hash_lock, i32 noundef %call2.i.i) #10
  %25 = getelementptr inbounds %struct.k_itimer, ptr %2, i32 0, i32 13
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  tail call void @put_pid(ptr noundef %27) #10
  %sigq.i.i = getelementptr inbounds %struct.k_itimer, ptr %2, i32 0, i32 14
  %28 = ptrtoint ptr %sigq.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sigq.i.i, align 8
  tail call void @sigqueue_free(ptr noundef %29) #10
  %rcu.i.i = getelementptr inbounds %struct.k_itimer, ptr %2, i32 0, i32 16
  tail call void @call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull @k_itimer_rcu_free) #10
  %30 = ptrtoint ptr %posix_timers to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %posix_timers, align 4
  %cmp.i.not = icmp eq ptr %31, %posix_timers
  br i1 %cmp.i.not, label %itimer_delete.exit.while.end_crit_edge, label %itimer_delete.exit.while.body_crit_edge

itimer_delete.exit.while.body_crit_edge:          ; preds = %itimer_delete.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

itimer_delete.exit.while.end_crit_edge:           ; preds = %itimer_delete.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %itimer_delete.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_settime(i32 noundef %which_clock, i32 noundef %tp) #1 align 64 {
entry:
  %new_tp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %tp to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which_clock)
  %cmp.i.i = icmp slt i32 %which_clock, 0
  br i1 %cmp.i.i, label %clockid_to_kclock.exit.thread14.i, label %if.end.i.i

clockid_to_kclock.exit.thread14.i:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i = and i32 %which_clock, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 3
  %cond.i.i = select i1 %cmp1.i.i, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %new_tp.i) #10
  %1 = call ptr @memset(ptr %new_tp.i, i32 255, i32 16)
  br label %lor.lhs.false.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %which_clock)
  %cmp2.i.i = icmp ugt i32 %which_clock, 11
  br i1 %cmp2.i.i, label %clockid_to_kclock.exit.thread.i, label %clockid_to_kclock.exit.i

clockid_to_kclock.exit.thread.i:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %new_tp.i) #10
  br label %__do_sys_clock_settime.exit

clockid_to_kclock.exit.i:                         ; preds = %if.end.i.i
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %which_clock, i32 12) #10, !srcloc !308
  %and8.i.i = and i32 %2, %which_clock
  %arrayidx.i.i = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %and8.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %new_tp.i) #10
  %5 = call ptr @memset(ptr %new_tp.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and8.i.i)
  %tobool.not.i = icmp eq i32 %and8.i.i, 10
  br i1 %tobool.not.i, label %clockid_to_kclock.exit.i.__do_sys_clock_settime.exit_crit_edge, label %clockid_to_kclock.exit.i.lor.lhs.false.i_crit_edge

clockid_to_kclock.exit.i.lor.lhs.false.i_crit_edge: ; preds = %clockid_to_kclock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

clockid_to_kclock.exit.i.__do_sys_clock_settime.exit_crit_edge: ; preds = %clockid_to_kclock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_settime.exit

lor.lhs.false.i:                                  ; preds = %clockid_to_kclock.exit.i.lor.lhs.false.i_crit_edge, %clockid_to_kclock.exit.thread14.i
  %retval.0.i17.i = phi ptr [ %cond.i.i, %clockid_to_kclock.exit.thread14.i ], [ %4, %clockid_to_kclock.exit.i.lor.lhs.false.i_crit_edge ]
  %clock_set.i = getelementptr inbounds %struct.k_clock, ptr %retval.0.i17.i, i32 0, i32 1
  %6 = ptrtoint ptr %clock_set.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clock_set.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.__do_sys_clock_settime.exit_crit_edge, label %if.end.i

lor.lhs.false.i.__do_sys_clock_settime.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_settime.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call2.i = call i32 @get_timespec64(ptr noundef nonnull %new_tp.i, ptr noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.__do_sys_clock_settime.exit_crit_edge

if.end.i.__do_sys_clock_settime.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_settime.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %clock_set.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clock_set.i, align 4
  %call7.i = call i32 %9(i32 noundef %which_clock, ptr noundef nonnull %new_tp.i) #10
  br label %__do_sys_clock_settime.exit

__do_sys_clock_settime.exit:                      ; preds = %if.end5.i, %if.end.i.__do_sys_clock_settime.exit_crit_edge, %lor.lhs.false.i.__do_sys_clock_settime.exit_crit_edge, %clockid_to_kclock.exit.i.__do_sys_clock_settime.exit_crit_edge, %clockid_to_kclock.exit.thread.i
  %retval.0.i = phi i32 [ %call7.i, %if.end5.i ], [ -22, %lor.lhs.false.i.__do_sys_clock_settime.exit_crit_edge ], [ -22, %clockid_to_kclock.exit.i.__do_sys_clock_settime.exit_crit_edge ], [ -14, %if.end.i.__do_sys_clock_settime.exit_crit_edge ], [ -22, %clockid_to_kclock.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %new_tp.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_gettime(i32 noundef %which_clock, i32 noundef %tp) #1 align 64 {
entry:
  %kernel_tp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %tp to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which_clock)
  %cmp.i.i = icmp slt i32 %which_clock, 0
  br i1 %cmp.i.i, label %clockid_to_kclock.exit.thread14.i, label %if.end.i.i

clockid_to_kclock.exit.thread14.i:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i = and i32 %which_clock, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 3
  %cond.i.i = select i1 %cmp1.i.i, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %kernel_tp.i) #10
  %1 = call ptr @memset(ptr %kernel_tp.i, i32 255, i32 16)
  br label %if.end.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %which_clock)
  %cmp2.i.i = icmp ugt i32 %which_clock, 11
  br i1 %cmp2.i.i, label %clockid_to_kclock.exit.thread.i, label %clockid_to_kclock.exit.i

clockid_to_kclock.exit.thread.i:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %kernel_tp.i) #10
  br label %__do_sys_clock_gettime.exit

clockid_to_kclock.exit.i:                         ; preds = %if.end.i.i
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %which_clock, i32 12) #10, !srcloc !308
  %and8.i.i = and i32 %2, %which_clock
  %arrayidx.i.i = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %and8.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %kernel_tp.i) #10
  %5 = call ptr @memset(ptr %kernel_tp.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and8.i.i)
  %tobool.not.i = icmp eq i32 %and8.i.i, 10
  br i1 %tobool.not.i, label %clockid_to_kclock.exit.i.__do_sys_clock_gettime.exit_crit_edge, label %clockid_to_kclock.exit.i.if.end.i_crit_edge

clockid_to_kclock.exit.i.if.end.i_crit_edge:      ; preds = %clockid_to_kclock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

clockid_to_kclock.exit.i.__do_sys_clock_gettime.exit_crit_edge: ; preds = %clockid_to_kclock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_gettime.exit

if.end.i:                                         ; preds = %clockid_to_kclock.exit.i.if.end.i_crit_edge, %clockid_to_kclock.exit.thread14.i
  %retval.0.i17.i = phi ptr [ %cond.i.i, %clockid_to_kclock.exit.thread14.i ], [ %4, %clockid_to_kclock.exit.i.if.end.i_crit_edge ]
  %clock_get_timespec.i = getelementptr inbounds %struct.k_clock, ptr %retval.0.i17.i, i32 0, i32 2
  %6 = ptrtoint ptr %clock_get_timespec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clock_get_timespec.i, align 4
  %call1.i = call i32 %7(i32 noundef %which_clock, ptr noundef nonnull %kernel_tp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %if.end.i.__do_sys_clock_gettime.exit_crit_edge

if.end.i.__do_sys_clock_gettime.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_gettime.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = call i32 @put_timespec64(ptr noundef nonnull %kernel_tp.i, ptr noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 0, i32 -14
  br label %__do_sys_clock_gettime.exit

__do_sys_clock_gettime.exit:                      ; preds = %land.lhs.true.i, %if.end.i.__do_sys_clock_gettime.exit_crit_edge, %clockid_to_kclock.exit.i.__do_sys_clock_gettime.exit_crit_edge, %clockid_to_kclock.exit.thread.i
  %retval.0.i = phi i32 [ -22, %clockid_to_kclock.exit.i.__do_sys_clock_gettime.exit_crit_edge ], [ %call1.i, %if.end.i.__do_sys_clock_gettime.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ], [ -22, %clockid_to_kclock.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %kernel_tp.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_clock_adjtime(i32 noundef %which_clock, ptr noundef %ktx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which_clock)
  %cmp.i = icmp slt i32 %which_clock, 0
  br i1 %cmp.i, label %clockid_to_kclock.exit.thread11, label %if.end.i

clockid_to_kclock.exit.thread11:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i32 %which_clock, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 3
  %cond.i = select i1 %cmp1.i, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %which_clock)
  %cmp2.i = icmp ugt i32 %which_clock, 11
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %clockid_to_kclock.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

clockid_to_kclock.exit:                           ; preds = %if.end.i
  %0 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %which_clock, i32 12) #10, !srcloc !308
  %and8.i = and i32 %0, %which_clock
  %arrayidx.i = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %and8.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and8.i)
  %tobool.not = icmp eq i32 %and8.i, 10
  br i1 %tobool.not, label %clockid_to_kclock.exit.cleanup_crit_edge, label %clockid_to_kclock.exit.if.end_crit_edge

clockid_to_kclock.exit.if.end_crit_edge:          ; preds = %clockid_to_kclock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

clockid_to_kclock.exit.cleanup_crit_edge:         ; preds = %clockid_to_kclock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %clockid_to_kclock.exit.if.end_crit_edge, %clockid_to_kclock.exit.thread11
  %retval.0.i14 = phi ptr [ %cond.i, %clockid_to_kclock.exit.thread11 ], [ %2, %clockid_to_kclock.exit.if.end_crit_edge ]
  %clock_adj = getelementptr inbounds %struct.k_clock, ptr %retval.0.i14, i32 0, i32 4
  %3 = ptrtoint ptr %clock_adj to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clock_adj, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 %4(i32 noundef %which_clock, ptr noundef %ktx) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %clockid_to_kclock.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ -22, %clockid_to_kclock.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_adjtime(i32 noundef %which_clock, i32 noundef %utx) #1 align 64 {
entry:
  %ktx.i = alloca %struct.__kernel_timex, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %utx to ptr
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %ktx.i) #10
  %1 = call ptr @memset(ptr %ktx.i, i32 255, i32 208)
  tail call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 156) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %entry.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.if.then11.i.i.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 208, i32 -1226833920) #13
  %asmresult.i.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !303

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ktx.i, i32 noundef 208) #10
  %3 = call i32 @llvm.read_register.i32(metadata !289) #10
  %and.i.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !304
  %and.i.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ktx.i, ptr noundef %0, i32 noundef 208) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #10, !srcloc !305
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !303

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %entry.if.then11.i.i.i_crit_edge
  %res.0.i.i24.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 208, %entry.if.then11.i.i.i_crit_edge ], [ 208, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 208, %res.0.i.i24.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ktx.i, i32 %sub.i.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i24.i)
  br label %__do_sys_clock_adjtime.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which_clock)
  %cmp.i.i19.i = icmp slt i32 %which_clock, 0
  br i1 %cmp.i.i19.i, label %clockid_to_kclock.exit.thread11.i.i, label %if.end.i.i21.i

clockid_to_kclock.exit.thread11.i.i:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i.i = and i32 %which_clock, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp1.i.i20.i = icmp eq i32 %and.i.i.i, 3
  %cond.i.i.i = select i1 %cmp1.i.i20.i, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  br label %if.end.i.i

if.end.i.i21.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %which_clock)
  %cmp2.i.i.i = icmp ugt i32 %which_clock, 11
  br i1 %cmp2.i.i.i, label %if.end.i.i21.i.if.end5.i_crit_edge, label %clockid_to_kclock.exit.i.i

if.end.i.i21.i.if.end5.i_crit_edge:               ; preds = %if.end.i.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

clockid_to_kclock.exit.i.i:                       ; preds = %if.end.i.i21.i
  %7 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %which_clock, i32 12) #10, !srcloc !308
  %and8.i.i.i = and i32 %7, %which_clock
  %arrayidx.i.i.i = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %and8.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and8.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and8.i.i.i, 10
  br i1 %tobool.not.i.i, label %clockid_to_kclock.exit.i.i.if.end5.i_crit_edge, label %clockid_to_kclock.exit.i.i.if.end.i.i_crit_edge

clockid_to_kclock.exit.i.i.if.end.i.i_crit_edge:  ; preds = %clockid_to_kclock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

clockid_to_kclock.exit.i.i.if.end5.i_crit_edge:   ; preds = %clockid_to_kclock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.end.i.i:                                       ; preds = %clockid_to_kclock.exit.i.i.if.end.i.i_crit_edge, %clockid_to_kclock.exit.thread11.i.i
  %retval.0.i14.i.i = phi ptr [ %cond.i.i.i, %clockid_to_kclock.exit.thread11.i.i ], [ %9, %clockid_to_kclock.exit.i.i.if.end.i.i_crit_edge ]
  %clock_adj.i.i = getelementptr inbounds %struct.k_clock, ptr %retval.0.i14.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %clock_adj.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clock_adj.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end5.i_crit_edge, label %do_clock_adjtime.exit.i

if.end.i.i.if.end5.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

do_clock_adjtime.exit.i:                          ; preds = %if.end.i.i
  %call5.i.i = call i32 %11(i32 noundef %which_clock, ptr noundef nonnull %ktx.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i.i)
  %cmp.i = icmp sgt i32 %call5.i.i, -1
  br i1 %cmp.i, label %if.end59.i.i12.i, label %do_clock_adjtime.exit.i.if.end5.i_crit_edge

do_clock_adjtime.exit.i.if.end5.i_crit_edge:      ; preds = %do_clock_adjtime.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.end59.i.i12.i:                                 ; preds = %do_clock_adjtime.exit.i
  call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 174) #10
  %call.i.i13.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i13.i, label %if.end59.i.i12.i.__do_sys_clock_adjtime.exit_crit_edge, label %copy_to_user.exit.i

if.end59.i.i12.i.__do_sys_clock_adjtime.exit_crit_edge: ; preds = %if.end59.i.i12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_adjtime.exit

copy_to_user.exit.i:                              ; preds = %if.end59.i.i12.i
  %call.i.i.i17.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ktx.i, i32 noundef 208) #10
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %ktx.i, i32 noundef 208) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool3.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool3.not.i, label %copy_to_user.exit.i.if.end5.i_crit_edge, label %copy_to_user.exit.i.__do_sys_clock_adjtime.exit_crit_edge

copy_to_user.exit.i.__do_sys_clock_adjtime.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_adjtime.exit

copy_to_user.exit.i.if.end5.i_crit_edge:          ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %copy_to_user.exit.i.if.end5.i_crit_edge, %do_clock_adjtime.exit.i.if.end5.i_crit_edge, %if.end.i.i.if.end5.i_crit_edge, %clockid_to_kclock.exit.i.i.if.end5.i_crit_edge, %if.end.i.i21.i.if.end5.i_crit_edge
  %retval.0.i29.i = phi i32 [ %call5.i.i, %copy_to_user.exit.i.if.end5.i_crit_edge ], [ %call5.i.i, %do_clock_adjtime.exit.i.if.end5.i_crit_edge ], [ -22, %if.end.i.i21.i.if.end5.i_crit_edge ], [ -95, %if.end.i.i.if.end5.i_crit_edge ], [ -22, %clockid_to_kclock.exit.i.i.if.end5.i_crit_edge ]
  br label %__do_sys_clock_adjtime.exit

__do_sys_clock_adjtime.exit:                      ; preds = %if.end5.i, %copy_to_user.exit.i.__do_sys_clock_adjtime.exit_crit_edge, %if.end59.i.i12.i.__do_sys_clock_adjtime.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %retval.0.i29.i, %if.end5.i ], [ -14, %copy_to_user.exit.i.__do_sys_clock_adjtime.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.end59.i.i12.i.__do_sys_clock_adjtime.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %ktx.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_getres(i32 noundef %which_clock, i32 noundef %tp) #1 align 64 {
entry:
  %rtn_tp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %tp to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which_clock)
  %cmp.i.i = icmp slt i32 %which_clock, 0
  br i1 %cmp.i.i, label %clockid_to_kclock.exit.thread17.i, label %if.end.i.i

clockid_to_kclock.exit.thread17.i:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i = and i32 %which_clock, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 3
  %cond.i.i = select i1 %cmp1.i.i, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rtn_tp.i) #10
  %1 = call ptr @memset(ptr %rtn_tp.i, i32 255, i32 16)
  br label %if.end.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %which_clock)
  %cmp2.i.i = icmp ugt i32 %which_clock, 11
  br i1 %cmp2.i.i, label %clockid_to_kclock.exit.thread.i, label %clockid_to_kclock.exit.i

clockid_to_kclock.exit.thread.i:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rtn_tp.i) #10
  br label %__do_sys_clock_getres.exit

clockid_to_kclock.exit.i:                         ; preds = %if.end.i.i
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %which_clock, i32 12) #10, !srcloc !308
  %and8.i.i = and i32 %2, %which_clock
  %arrayidx.i.i = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %and8.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rtn_tp.i) #10
  %5 = call ptr @memset(ptr %rtn_tp.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and8.i.i)
  %tobool.not.i = icmp eq i32 %and8.i.i, 10
  br i1 %tobool.not.i, label %clockid_to_kclock.exit.i.__do_sys_clock_getres.exit_crit_edge, label %clockid_to_kclock.exit.i.if.end.i_crit_edge

clockid_to_kclock.exit.i.if.end.i_crit_edge:      ; preds = %clockid_to_kclock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

clockid_to_kclock.exit.i.__do_sys_clock_getres.exit_crit_edge: ; preds = %clockid_to_kclock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_getres.exit

if.end.i:                                         ; preds = %clockid_to_kclock.exit.i.if.end.i_crit_edge, %clockid_to_kclock.exit.thread17.i
  %retval.0.i20.i = phi ptr [ %cond.i.i, %clockid_to_kclock.exit.thread17.i ], [ %4, %clockid_to_kclock.exit.i.if.end.i_crit_edge ]
  %6 = ptrtoint ptr %retval.0.i20.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %retval.0.i20.i, align 4
  %call1.i = call i32 %7(i32 noundef %which_clock, ptr noundef nonnull %rtn_tp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %if.end.i.__do_sys_clock_getres.exit_crit_edge

if.end.i.__do_sys_clock_getres.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_getres.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tp)
  %tobool3.not.i = icmp eq i32 %tp, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.__do_sys_clock_getres.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.__do_sys_clock_getres.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_getres.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = call i32 @put_timespec64(ptr noundef nonnull %rtn_tp.i, ptr noundef nonnull %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  %spec.select.i = select i1 %tobool6.not.i, i32 0, i32 -14
  br label %__do_sys_clock_getres.exit

__do_sys_clock_getres.exit:                       ; preds = %land.lhs.true4.i, %land.lhs.true.i.__do_sys_clock_getres.exit_crit_edge, %if.end.i.__do_sys_clock_getres.exit_crit_edge, %clockid_to_kclock.exit.i.__do_sys_clock_getres.exit_crit_edge, %clockid_to_kclock.exit.thread.i
  %retval.0.i = phi i32 [ -22, %clockid_to_kclock.exit.i.__do_sys_clock_getres.exit_crit_edge ], [ %call1.i, %if.end.i.__do_sys_clock_getres.exit_crit_edge ], [ 0, %land.lhs.true.i.__do_sys_clock_getres.exit_crit_edge ], [ %spec.select.i, %land.lhs.true4.i ], [ -22, %clockid_to_kclock.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rtn_tp.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_settime32(i32 noundef %which_clock, i32 noundef %tp) #1 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %tp to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which_clock)
  %cmp.i.i = icmp slt i32 %which_clock, 0
  br i1 %cmp.i.i, label %clockid_to_kclock.exit.thread14.i, label %if.end.i.i

clockid_to_kclock.exit.thread14.i:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i = and i32 %which_clock, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 3
  %cond.i.i = select i1 %cmp1.i.i, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %1 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  br label %lor.lhs.false.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %which_clock)
  %cmp2.i.i = icmp ugt i32 %which_clock, 11
  br i1 %cmp2.i.i, label %clockid_to_kclock.exit.thread.i, label %clockid_to_kclock.exit.i

clockid_to_kclock.exit.thread.i:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  br label %__do_sys_clock_settime32.exit

clockid_to_kclock.exit.i:                         ; preds = %if.end.i.i
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %which_clock, i32 12) #10, !srcloc !308
  %and8.i.i = and i32 %2, %which_clock
  %arrayidx.i.i = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %and8.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %5 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and8.i.i)
  %tobool.not.i = icmp eq i32 %and8.i.i, 10
  br i1 %tobool.not.i, label %clockid_to_kclock.exit.i.__do_sys_clock_settime32.exit_crit_edge, label %clockid_to_kclock.exit.i.lor.lhs.false.i_crit_edge

clockid_to_kclock.exit.i.lor.lhs.false.i_crit_edge: ; preds = %clockid_to_kclock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

clockid_to_kclock.exit.i.__do_sys_clock_settime32.exit_crit_edge: ; preds = %clockid_to_kclock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_settime32.exit

lor.lhs.false.i:                                  ; preds = %clockid_to_kclock.exit.i.lor.lhs.false.i_crit_edge, %clockid_to_kclock.exit.thread14.i
  %retval.0.i17.i = phi ptr [ %cond.i.i, %clockid_to_kclock.exit.thread14.i ], [ %4, %clockid_to_kclock.exit.i.lor.lhs.false.i_crit_edge ]
  %clock_set.i = getelementptr inbounds %struct.k_clock, ptr %retval.0.i17.i, i32 0, i32 1
  %6 = ptrtoint ptr %clock_set.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clock_set.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.__do_sys_clock_settime32.exit_crit_edge, label %if.end.i

lor.lhs.false.i.__do_sys_clock_settime32.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_settime32.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call2.i = call i32 @get_old_timespec32(ptr noundef nonnull %ts.i, ptr noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.__do_sys_clock_settime32.exit_crit_edge

if.end.i.__do_sys_clock_settime32.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_settime32.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %clock_set.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clock_set.i, align 4
  %call7.i = call i32 %9(i32 noundef %which_clock, ptr noundef nonnull %ts.i) #10
  br label %__do_sys_clock_settime32.exit

__do_sys_clock_settime32.exit:                    ; preds = %if.end5.i, %if.end.i.__do_sys_clock_settime32.exit_crit_edge, %lor.lhs.false.i.__do_sys_clock_settime32.exit_crit_edge, %clockid_to_kclock.exit.i.__do_sys_clock_settime32.exit_crit_edge, %clockid_to_kclock.exit.thread.i
  %retval.0.i = phi i32 [ %call7.i, %if.end5.i ], [ -22, %lor.lhs.false.i.__do_sys_clock_settime32.exit_crit_edge ], [ -22, %clockid_to_kclock.exit.i.__do_sys_clock_settime32.exit_crit_edge ], [ -14, %if.end.i.__do_sys_clock_settime32.exit_crit_edge ], [ -22, %clockid_to_kclock.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_gettime32(i32 noundef %which_clock, i32 noundef %tp) #1 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %tp to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which_clock)
  %cmp.i.i = icmp slt i32 %which_clock, 0
  br i1 %cmp.i.i, label %clockid_to_kclock.exit.thread14.i, label %if.end.i.i

clockid_to_kclock.exit.thread14.i:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i = and i32 %which_clock, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 3
  %cond.i.i = select i1 %cmp1.i.i, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %1 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  br label %if.end.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %which_clock)
  %cmp2.i.i = icmp ugt i32 %which_clock, 11
  br i1 %cmp2.i.i, label %clockid_to_kclock.exit.thread.i, label %clockid_to_kclock.exit.i

clockid_to_kclock.exit.thread.i:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  br label %__do_sys_clock_gettime32.exit

clockid_to_kclock.exit.i:                         ; preds = %if.end.i.i
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %which_clock, i32 12) #10, !srcloc !308
  %and8.i.i = and i32 %2, %which_clock
  %arrayidx.i.i = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %and8.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %5 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and8.i.i)
  %tobool.not.i = icmp eq i32 %and8.i.i, 10
  br i1 %tobool.not.i, label %clockid_to_kclock.exit.i.__do_sys_clock_gettime32.exit_crit_edge, label %clockid_to_kclock.exit.i.if.end.i_crit_edge

clockid_to_kclock.exit.i.if.end.i_crit_edge:      ; preds = %clockid_to_kclock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

clockid_to_kclock.exit.i.__do_sys_clock_gettime32.exit_crit_edge: ; preds = %clockid_to_kclock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_gettime32.exit

if.end.i:                                         ; preds = %clockid_to_kclock.exit.i.if.end.i_crit_edge, %clockid_to_kclock.exit.thread14.i
  %retval.0.i17.i = phi ptr [ %cond.i.i, %clockid_to_kclock.exit.thread14.i ], [ %4, %clockid_to_kclock.exit.i.if.end.i_crit_edge ]
  %clock_get_timespec.i = getelementptr inbounds %struct.k_clock, ptr %retval.0.i17.i, i32 0, i32 2
  %6 = ptrtoint ptr %clock_get_timespec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clock_get_timespec.i, align 4
  %call1.i = call i32 %7(i32 noundef %which_clock, ptr noundef nonnull %ts.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %if.end.i.__do_sys_clock_gettime32.exit_crit_edge

if.end.i.__do_sys_clock_gettime32.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_gettime32.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = call i32 @put_old_timespec32(ptr noundef nonnull %ts.i, ptr noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 0, i32 -14
  br label %__do_sys_clock_gettime32.exit

__do_sys_clock_gettime32.exit:                    ; preds = %land.lhs.true.i, %if.end.i.__do_sys_clock_gettime32.exit_crit_edge, %clockid_to_kclock.exit.i.__do_sys_clock_gettime32.exit_crit_edge, %clockid_to_kclock.exit.thread.i
  %retval.0.i = phi i32 [ -22, %clockid_to_kclock.exit.i.__do_sys_clock_gettime32.exit_crit_edge ], [ %call1.i, %if.end.i.__do_sys_clock_gettime32.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ], [ -22, %clockid_to_kclock.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_adjtime32(i32 noundef %which_clock, i32 noundef %utp) #1 align 64 {
entry:
  %ktx.i = alloca %struct.__kernel_timex, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %utp to ptr
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %ktx.i) #10
  %1 = call ptr @memset(ptr %ktx.i, i32 255, i32 208)
  %call.i = call i32 @get_old_timex32(ptr noundef nonnull %ktx.i, ptr noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_clock_adjtime32.exit_crit_edge

entry.__do_sys_clock_adjtime32.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_adjtime32.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which_clock)
  %cmp.i.i.i = icmp slt i32 %which_clock, 0
  br i1 %cmp.i.i.i, label %clockid_to_kclock.exit.thread11.i.i, label %if.end.i.i.i

clockid_to_kclock.exit.thread11.i.i:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i.i = and i32 %which_clock, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp1.i.i.i = icmp eq i32 %and.i.i.i, 3
  %cond.i.i.i = select i1 %cmp1.i.i.i, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %which_clock)
  %cmp2.i.i.i = icmp ugt i32 %which_clock, 11
  br i1 %cmp2.i.i.i, label %if.end.i.i.i.if.end5.i_crit_edge, label %clockid_to_kclock.exit.i.i

if.end.i.i.i.if.end5.i_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

clockid_to_kclock.exit.i.i:                       ; preds = %if.end.i.i.i
  %2 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %which_clock, i32 12) #10, !srcloc !308
  %and8.i.i.i = and i32 %2, %which_clock
  %arrayidx.i.i.i = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %and8.i.i.i
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and8.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and8.i.i.i, 10
  br i1 %tobool.not.i.i, label %clockid_to_kclock.exit.i.i.if.end5.i_crit_edge, label %clockid_to_kclock.exit.i.i.if.end.i.i_crit_edge

clockid_to_kclock.exit.i.i.if.end.i.i_crit_edge:  ; preds = %clockid_to_kclock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

clockid_to_kclock.exit.i.i.if.end5.i_crit_edge:   ; preds = %clockid_to_kclock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.end.i.i:                                       ; preds = %clockid_to_kclock.exit.i.i.if.end.i.i_crit_edge, %clockid_to_kclock.exit.thread11.i.i
  %retval.0.i14.i.i = phi ptr [ %cond.i.i.i, %clockid_to_kclock.exit.thread11.i.i ], [ %4, %clockid_to_kclock.exit.i.i.if.end.i.i_crit_edge ]
  %clock_adj.i.i = getelementptr inbounds %struct.k_clock, ptr %retval.0.i14.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %clock_adj.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clock_adj.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end5.i_crit_edge, label %do_clock_adjtime.exit.i

if.end.i.i.if.end5.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

do_clock_adjtime.exit.i:                          ; preds = %if.end.i.i
  %call5.i.i = call i32 %6(i32 noundef %which_clock, ptr noundef nonnull %ktx.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i.i)
  %cmp.i = icmp sgt i32 %call5.i.i, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %do_clock_adjtime.exit.i.if.end5.i_crit_edge

do_clock_adjtime.exit.i.if.end5.i_crit_edge:      ; preds = %do_clock_adjtime.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %do_clock_adjtime.exit.i
  %call2.i = call i32 @put_old_timex32(ptr noundef %0, ptr noundef nonnull %ktx.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end5.i_crit_edge, label %land.lhs.true.i.__do_sys_clock_adjtime32.exit_crit_edge

land.lhs.true.i.__do_sys_clock_adjtime32.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_adjtime32.exit

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %do_clock_adjtime.exit.i.if.end5.i_crit_edge, %if.end.i.i.if.end5.i_crit_edge, %clockid_to_kclock.exit.i.i.if.end5.i_crit_edge, %if.end.i.i.i.if.end5.i_crit_edge
  %retval.0.i13.i = phi i32 [ %call5.i.i, %land.lhs.true.i.if.end5.i_crit_edge ], [ %call5.i.i, %do_clock_adjtime.exit.i.if.end5.i_crit_edge ], [ -22, %if.end.i.i.i.if.end5.i_crit_edge ], [ -95, %if.end.i.i.if.end5.i_crit_edge ], [ -22, %clockid_to_kclock.exit.i.i.if.end5.i_crit_edge ]
  br label %__do_sys_clock_adjtime32.exit

__do_sys_clock_adjtime32.exit:                    ; preds = %if.end5.i, %land.lhs.true.i.__do_sys_clock_adjtime32.exit_crit_edge, %entry.__do_sys_clock_adjtime32.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i13.i, %if.end5.i ], [ %call.i, %entry.__do_sys_clock_adjtime32.exit_crit_edge ], [ -14, %land.lhs.true.i.__do_sys_clock_adjtime32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %ktx.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_getres_time32(i32 noundef %which_clock, i32 noundef %tp) #1 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %tp to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which_clock)
  %cmp.i.i = icmp slt i32 %which_clock, 0
  br i1 %cmp.i.i, label %clockid_to_kclock.exit.thread17.i, label %if.end.i.i

clockid_to_kclock.exit.thread17.i:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i = and i32 %which_clock, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 3
  %cond.i.i = select i1 %cmp1.i.i, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %1 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  br label %if.end.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %which_clock)
  %cmp2.i.i = icmp ugt i32 %which_clock, 11
  br i1 %cmp2.i.i, label %clockid_to_kclock.exit.thread.i, label %clockid_to_kclock.exit.i

clockid_to_kclock.exit.thread.i:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  br label %__do_sys_clock_getres_time32.exit

clockid_to_kclock.exit.i:                         ; preds = %if.end.i.i
  %2 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %which_clock, i32 12) #10, !srcloc !308
  %and8.i.i = and i32 %2, %which_clock
  %arrayidx.i.i = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %and8.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #10
  %5 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and8.i.i)
  %tobool.not.i = icmp eq i32 %and8.i.i, 10
  br i1 %tobool.not.i, label %clockid_to_kclock.exit.i.__do_sys_clock_getres_time32.exit_crit_edge, label %clockid_to_kclock.exit.i.if.end.i_crit_edge

clockid_to_kclock.exit.i.if.end.i_crit_edge:      ; preds = %clockid_to_kclock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

clockid_to_kclock.exit.i.__do_sys_clock_getres_time32.exit_crit_edge: ; preds = %clockid_to_kclock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_getres_time32.exit

if.end.i:                                         ; preds = %clockid_to_kclock.exit.i.if.end.i_crit_edge, %clockid_to_kclock.exit.thread17.i
  %retval.0.i20.i = phi ptr [ %cond.i.i, %clockid_to_kclock.exit.thread17.i ], [ %4, %clockid_to_kclock.exit.i.if.end.i_crit_edge ]
  %6 = ptrtoint ptr %retval.0.i20.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %retval.0.i20.i, align 4
  %call1.i = call i32 %7(i32 noundef %which_clock, ptr noundef nonnull %ts.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp ne i32 %call1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tp)
  %tobool3.not.i = icmp eq i32 %tp, 0
  %or.cond.i = or i1 %tobool3.not.i, %tobool2.not.i
  br i1 %or.cond.i, label %if.end.i.if.end8.i_crit_edge, label %land.lhs.true4.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

land.lhs.true4.i:                                 ; preds = %if.end.i
  %call5.i = call i32 @put_old_timespec32(ptr noundef nonnull %ts.i, ptr noundef nonnull %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.if.end8.i_crit_edge, label %land.lhs.true4.i.__do_sys_clock_getres_time32.exit_crit_edge

land.lhs.true4.i.__do_sys_clock_getres_time32.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_getres_time32.exit

land.lhs.true4.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %land.lhs.true4.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  br label %__do_sys_clock_getres_time32.exit

__do_sys_clock_getres_time32.exit:                ; preds = %if.end8.i, %land.lhs.true4.i.__do_sys_clock_getres_time32.exit_crit_edge, %clockid_to_kclock.exit.i.__do_sys_clock_getres_time32.exit_crit_edge, %clockid_to_kclock.exit.thread.i
  %retval.0.i = phi i32 [ %call1.i, %if.end8.i ], [ -22, %clockid_to_kclock.exit.i.__do_sys_clock_getres_time32.exit_crit_edge ], [ -14, %land.lhs.true4.i.__do_sys_clock_getres_time32.exit_crit_edge ], [ -22, %clockid_to_kclock.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_nanosleep(i32 noundef %which_clock, i32 noundef %flags, i32 noundef %rqtp, i32 noundef %rmtp) #1 align 64 {
entry:
  %t.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %rqtp to ptr
  %1 = inttoptr i32 %rmtp to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which_clock)
  %cmp.i.i = icmp slt i32 %which_clock, 0
  br i1 %cmp.i.i, label %clockid_to_kclock.exit.thread34.i, label %if.end.i.i

clockid_to_kclock.exit.thread34.i:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i = and i32 %which_clock, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 3
  %cond.i.i = select i1 %cmp1.i.i, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %t.i) #10
  %2 = call ptr @memset(ptr %t.i, i32 255, i32 16)
  br label %if.end.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %which_clock)
  %cmp2.i.i = icmp ugt i32 %which_clock, 11
  br i1 %cmp2.i.i, label %clockid_to_kclock.exit.thread.i, label %clockid_to_kclock.exit.i

clockid_to_kclock.exit.thread.i:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %t.i) #10
  br label %__do_sys_clock_nanosleep.exit

clockid_to_kclock.exit.i:                         ; preds = %if.end.i.i
  %3 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %which_clock, i32 12) #10, !srcloc !308
  %and8.i.i = and i32 %3, %which_clock
  %arrayidx.i.i = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %and8.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %t.i) #10
  %6 = call ptr @memset(ptr %t.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and8.i.i)
  %tobool.not.i = icmp eq i32 %and8.i.i, 10
  br i1 %tobool.not.i, label %clockid_to_kclock.exit.i.__do_sys_clock_nanosleep.exit_crit_edge, label %clockid_to_kclock.exit.i.if.end.i_crit_edge

clockid_to_kclock.exit.i.if.end.i_crit_edge:      ; preds = %clockid_to_kclock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

clockid_to_kclock.exit.i.__do_sys_clock_nanosleep.exit_crit_edge: ; preds = %clockid_to_kclock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_nanosleep.exit

if.end.i:                                         ; preds = %clockid_to_kclock.exit.i.if.end.i_crit_edge, %clockid_to_kclock.exit.thread34.i
  %retval.0.i37.i = phi ptr [ %cond.i.i, %clockid_to_kclock.exit.thread34.i ], [ %5, %clockid_to_kclock.exit.i.if.end.i_crit_edge ]
  %nsleep.i = getelementptr inbounds %struct.k_clock, ptr %retval.0.i37.i, i32 0, i32 6
  %7 = ptrtoint ptr %nsleep.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nsleep.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %if.end.i.__do_sys_clock_nanosleep.exit_crit_edge, label %if.end3.i

if.end.i.__do_sys_clock_nanosleep.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_nanosleep.exit

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = call i32 @get_timespec64(ptr noundef nonnull %t.i, ptr noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end3.i.__do_sys_clock_nanosleep.exit_crit_edge

if.end3.i.__do_sys_clock_nanosleep.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_nanosleep.exit

if.end7.i:                                        ; preds = %if.end3.i
  %9 = ptrtoint ptr %t.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %t.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp.i27.i = icmp slt i64 %10, 0
  br i1 %cmp.i27.i, label %if.end7.i.__do_sys_clock_nanosleep.exit_crit_edge, label %timespec64_valid.exit.i

if.end7.i.__do_sys_clock_nanosleep.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_nanosleep.exit

timespec64_valid.exit.i:                          ; preds = %if.end7.i
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %t.i, i32 0, i32 1
  %11 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tv_nsec.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %12)
  %cmp1.i28.i = icmp ult i32 %12, 1000000000
  br i1 %cmp1.i28.i, label %if.end10.i, label %timespec64_valid.exit.i.__do_sys_clock_nanosleep.exit_crit_edge

timespec64_valid.exit.i.__do_sys_clock_nanosleep.exit_crit_edge: ; preds = %timespec64_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_nanosleep.exit

if.end10.i:                                       ; preds = %timespec64_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool11.not.i, ptr %1, ptr null
  %tobool14.not.i = icmp ne ptr %spec.select.i, null
  %cond.i = zext i1 %tobool14.not.i to i32
  %13 = call i32 @llvm.read_register.i32(metadata !289) #10
  %and.i31.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i31.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %type.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 67, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i, ptr %type.i, align 4
  %18 = load ptr, ptr %task.i, align 8
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 67, i32 2, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %spec.select.i, ptr %19, align 8
  %21 = ptrtoint ptr %nsleep.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nsleep.i, align 4
  %call20.i = call i32 %22(i32 noundef %which_clock, i32 noundef %flags, ptr noundef nonnull %t.i) #10
  br label %__do_sys_clock_nanosleep.exit

__do_sys_clock_nanosleep.exit:                    ; preds = %if.end10.i, %timespec64_valid.exit.i.__do_sys_clock_nanosleep.exit_crit_edge, %if.end7.i.__do_sys_clock_nanosleep.exit_crit_edge, %if.end3.i.__do_sys_clock_nanosleep.exit_crit_edge, %if.end.i.__do_sys_clock_nanosleep.exit_crit_edge, %clockid_to_kclock.exit.i.__do_sys_clock_nanosleep.exit_crit_edge, %clockid_to_kclock.exit.thread.i
  %retval.0.i = phi i32 [ %call20.i, %if.end10.i ], [ -22, %clockid_to_kclock.exit.i.__do_sys_clock_nanosleep.exit_crit_edge ], [ -95, %if.end.i.__do_sys_clock_nanosleep.exit_crit_edge ], [ -14, %if.end3.i.__do_sys_clock_nanosleep.exit_crit_edge ], [ -22, %timespec64_valid.exit.i.__do_sys_clock_nanosleep.exit_crit_edge ], [ -22, %clockid_to_kclock.exit.thread.i ], [ -22, %if.end7.i.__do_sys_clock_nanosleep.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %t.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clock_nanosleep_time32(i32 noundef %which_clock, i32 noundef %flags, i32 noundef %rqtp, i32 noundef %rmtp) #1 align 64 {
entry:
  %t.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %rqtp to ptr
  %1 = inttoptr i32 %rmtp to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which_clock)
  %cmp.i.i = icmp slt i32 %which_clock, 0
  br i1 %cmp.i.i, label %clockid_to_kclock.exit.thread34.i, label %if.end.i.i

clockid_to_kclock.exit.thread34.i:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i = and i32 %which_clock, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 3
  %cond.i.i = select i1 %cmp1.i.i, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %t.i) #10
  %2 = call ptr @memset(ptr %t.i, i32 255, i32 16)
  br label %if.end.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %which_clock)
  %cmp2.i.i = icmp ugt i32 %which_clock, 11
  br i1 %cmp2.i.i, label %clockid_to_kclock.exit.thread.i, label %clockid_to_kclock.exit.i

clockid_to_kclock.exit.thread.i:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %t.i) #10
  br label %__do_sys_clock_nanosleep_time32.exit

clockid_to_kclock.exit.i:                         ; preds = %if.end.i.i
  %3 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %which_clock, i32 12) #10, !srcloc !308
  %and8.i.i = and i32 %3, %which_clock
  %arrayidx.i.i = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %and8.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %t.i) #10
  %6 = call ptr @memset(ptr %t.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and8.i.i)
  %tobool.not.i = icmp eq i32 %and8.i.i, 10
  br i1 %tobool.not.i, label %clockid_to_kclock.exit.i.__do_sys_clock_nanosleep_time32.exit_crit_edge, label %clockid_to_kclock.exit.i.if.end.i_crit_edge

clockid_to_kclock.exit.i.if.end.i_crit_edge:      ; preds = %clockid_to_kclock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

clockid_to_kclock.exit.i.__do_sys_clock_nanosleep_time32.exit_crit_edge: ; preds = %clockid_to_kclock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_nanosleep_time32.exit

if.end.i:                                         ; preds = %clockid_to_kclock.exit.i.if.end.i_crit_edge, %clockid_to_kclock.exit.thread34.i
  %retval.0.i37.i = phi ptr [ %cond.i.i, %clockid_to_kclock.exit.thread34.i ], [ %5, %clockid_to_kclock.exit.i.if.end.i_crit_edge ]
  %nsleep.i = getelementptr inbounds %struct.k_clock, ptr %retval.0.i37.i, i32 0, i32 6
  %7 = ptrtoint ptr %nsleep.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nsleep.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %if.end.i.__do_sys_clock_nanosleep_time32.exit_crit_edge, label %if.end3.i

if.end.i.__do_sys_clock_nanosleep_time32.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_nanosleep_time32.exit

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = call i32 @get_old_timespec32(ptr noundef nonnull %t.i, ptr noundef %0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end3.i.__do_sys_clock_nanosleep_time32.exit_crit_edge

if.end3.i.__do_sys_clock_nanosleep_time32.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_nanosleep_time32.exit

if.end7.i:                                        ; preds = %if.end3.i
  %9 = ptrtoint ptr %t.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %t.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp.i27.i = icmp slt i64 %10, 0
  br i1 %cmp.i27.i, label %if.end7.i.__do_sys_clock_nanosleep_time32.exit_crit_edge, label %timespec64_valid.exit.i

if.end7.i.__do_sys_clock_nanosleep_time32.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_nanosleep_time32.exit

timespec64_valid.exit.i:                          ; preds = %if.end7.i
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %t.i, i32 0, i32 1
  %11 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tv_nsec.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %12)
  %cmp1.i28.i = icmp ult i32 %12, 1000000000
  br i1 %cmp1.i28.i, label %if.end10.i, label %timespec64_valid.exit.i.__do_sys_clock_nanosleep_time32.exit_crit_edge

timespec64_valid.exit.i.__do_sys_clock_nanosleep_time32.exit_crit_edge: ; preds = %timespec64_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_clock_nanosleep_time32.exit

if.end10.i:                                       ; preds = %timespec64_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool11.not.i, ptr %1, ptr null
  %tobool14.not.i = icmp eq ptr %spec.select.i, null
  %cond.i = select i1 %tobool14.not.i, i32 0, i32 2
  %13 = call i32 @llvm.read_register.i32(metadata !289) #10
  %and.i31.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i31.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %type.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 67, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i, ptr %type.i, align 4
  %18 = load ptr, ptr %task.i, align 8
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 67, i32 2, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %spec.select.i, ptr %19, align 8
  %21 = ptrtoint ptr %nsleep.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nsleep.i, align 4
  %call20.i = call i32 %22(i32 noundef %which_clock, i32 noundef %flags, ptr noundef nonnull %t.i) #10
  br label %__do_sys_clock_nanosleep_time32.exit

__do_sys_clock_nanosleep_time32.exit:             ; preds = %if.end10.i, %timespec64_valid.exit.i.__do_sys_clock_nanosleep_time32.exit_crit_edge, %if.end7.i.__do_sys_clock_nanosleep_time32.exit_crit_edge, %if.end3.i.__do_sys_clock_nanosleep_time32.exit_crit_edge, %if.end.i.__do_sys_clock_nanosleep_time32.exit_crit_edge, %clockid_to_kclock.exit.i.__do_sys_clock_nanosleep_time32.exit_crit_edge, %clockid_to_kclock.exit.thread.i
  %retval.0.i = phi i32 [ %call20.i, %if.end10.i ], [ -22, %clockid_to_kclock.exit.i.__do_sys_clock_nanosleep_time32.exit_crit_edge ], [ -95, %if.end.i.__do_sys_clock_nanosleep_time32.exit_crit_edge ], [ -14, %if.end3.i.__do_sys_clock_nanosleep_time32.exit_crit_edge ], [ -22, %timespec64_valid.exit.i.__do_sys_clock_nanosleep_time32.exit_crit_edge ], [ -22, %clockid_to_kclock.exit.thread.i ], [ -22, %if.end7.i.__do_sys_clock_nanosleep_time32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %t.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_timer_create(i32 noundef %which_clock, ptr noundef readonly %event, ptr noundef %created_timer_id) unnamed_addr #1 align 64 {
entry:
  %new_timer_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which_clock)
  %cmp.i = icmp slt i32 %which_clock, 0
  br i1 %cmp.i, label %clockid_to_kclock.exit.thread158, label %if.end.i

clockid_to_kclock.exit.thread158:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i32 %which_clock, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 3
  %cond.i = select i1 %cmp1.i, ptr @clock_posix_dynamic, ptr @clock_posix_cpu
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_timer_id) #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %which_clock)
  %cmp2.i = icmp ugt i32 %which_clock, 11
  br i1 %cmp2.i, label %clockid_to_kclock.exit.thread, label %clockid_to_kclock.exit

clockid_to_kclock.exit.thread:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_timer_id) #10
  br label %cleanup

clockid_to_kclock.exit:                           ; preds = %if.end.i
  %0 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %which_clock, i32 12) #10, !srcloc !308
  %and8.i = and i32 %0, %which_clock
  %arrayidx.i = getelementptr [12 x ptr], ptr @posix_clocks, i32 0, i32 %and8.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_timer_id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and8.i)
  %tobool.not = icmp eq i32 %and8.i, 10
  br i1 %tobool.not, label %clockid_to_kclock.exit.cleanup_crit_edge, label %clockid_to_kclock.exit.if.end_crit_edge

clockid_to_kclock.exit.if.end_crit_edge:          ; preds = %clockid_to_kclock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

clockid_to_kclock.exit.cleanup_crit_edge:         ; preds = %clockid_to_kclock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %clockid_to_kclock.exit.if.end_crit_edge, %clockid_to_kclock.exit.thread158
  %retval.0.i161 = phi ptr [ %cond.i, %clockid_to_kclock.exit.thread158 ], [ %2, %clockid_to_kclock.exit.if.end_crit_edge ]
  %timer_create = getelementptr inbounds %struct.k_clock, ptr %retval.0.i161, i32 0, i32 5
  %3 = ptrtoint ptr %timer_create to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timer_create, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr @posix_timers_cache, align 4
  %call.i.i106 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %5, i32 noundef 3520) #10
  %tobool.not.i107 = icmp eq ptr %call.i.i106, null
  br i1 %tobool.not.i107, label %if.end3.cleanup_crit_edge, label %if.end.i109

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i109:                                      ; preds = %if.end3
  %call1.i108 = tail call ptr @sigqueue_alloc() #10
  %sigq.i = getelementptr inbounds %struct.k_itimer, ptr %call.i.i106, i32 0, i32 14
  %6 = ptrtoint ptr %sigq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1.i108, ptr %sigq.i, align 8
  %tobool2.not.i = icmp eq ptr %call1.i108, null
  br i1 %tobool2.not.i, label %if.then6.i, label %do.body, !prof !307

if.then6.i:                                       ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #12
  %7 = load ptr, ptr @posix_timers_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %7, ptr noundef nonnull %call.i.i106) #10
  br label %cleanup

do.body:                                          ; preds = %if.end.i109
  %info.i = getelementptr inbounds %struct.sigqueue, ptr %call1.i108, i32 0, i32 2
  %8 = call ptr @memset(ptr %info.i, i32 0, i32 32)
  %it_lock = getelementptr inbounds %struct.k_itimer, ptr %call.i.i106, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %it_lock, ptr noundef nonnull @.str.61, ptr noundef nonnull @do_timer_create.__key, i16 noundef signext 3) #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !289) #10
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 111
  %13 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %signal.i, align 16
  %posix_timer_id.i = getelementptr inbounds %struct.signal_struct, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %posix_timer_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %posix_timer_id.i, align 4
  %17 = ptrtoint ptr %14 to i32
  %t_hash.i = getelementptr inbounds %struct.k_itimer, ptr %call.i.i106, i32 0, i32 1
  %pprev.i.i = getelementptr inbounds %struct.k_itimer, ptr %call.i.i106, i32 0, i32 1, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i114.do.body.i_crit_edge, %do.body
  tail call void @_raw_spin_lock(ptr noundef nonnull @hash_lock) #10
  %18 = ptrtoint ptr %posix_timer_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %posix_timer_id.i, align 4
  %xor.i.i = xor i32 %19, %17
  %mul.i.i.i.i = mul i32 %xor.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 23
  %arrayidx.i111 = getelementptr [512 x %struct.hlist_head], ptr @posix_timers_hashtable, i32 0, i32 %shr.i.i.i
  %call4.i = tail call fastcc ptr @__posix_timers_find(ptr noundef %arrayidx.i111, ptr noundef %14, i32 noundef %19) #10
  %tobool.not.i112 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i112, label %if.then.i113, label %do.body.i.if.end.i114_crit_edge

do.body.i.if.end.i114_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i114

if.then.i113:                                     ; preds = %do.body.i
  %20 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i111, align 4
  %22 = ptrtoint ptr %t_hash.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %t_hash.i, align 8
  %23 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %arrayidx.i111, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !309
  %24 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %t_hash.i, ptr %arrayidx.i111, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.then.i113.hlist_add_head_rcu.exit.i_crit_edge, label %do.body49.i.i

if.then.i113.hlist_add_head_rcu.exit.i_crit_edge: ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head_rcu.exit.i

do.body49.i.i:                                    ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %t_hash.i, ptr %pprev51.i.i, align 4
  br label %hlist_add_head_rcu.exit.i

hlist_add_head_rcu.exit.i:                        ; preds = %do.body49.i.i, %if.then.i113.hlist_add_head_rcu.exit.i_crit_edge
  %26 = ptrtoint ptr %posix_timer_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %posix_timer_id.i, align 4
  br label %if.end.i114

if.end.i114:                                      ; preds = %hlist_add_head_rcu.exit.i, %do.body.i.if.end.i114_crit_edge
  %ret.1.i = phi i32 [ -2, %do.body.i.if.end.i114_crit_edge ], [ %27, %hlist_add_head_rcu.exit.i ]
  %28 = ptrtoint ptr %posix_timer_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %posix_timer_id.i, align 4
  %inc.i = add i32 %29, 1
  %30 = tail call i32 @llvm.smax.i32(i32 %inc.i, i32 0) #10
  %31 = ptrtoint ptr %posix_timer_id.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %posix_timer_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %16)
  %cmp11.i = icmp eq i32 %30, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %ret.1.i)
  %cmp12.i = icmp eq i32 %ret.1.i, -2
  %32 = select i1 %cmp11.i, i1 %cmp12.i, i1 false
  %ret.2.i = select i1 %32, i32 -11, i32 %ret.1.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull @hash_lock) #10
  %cmp15.i = icmp eq i32 %ret.2.i, -2
  br i1 %cmp15.i, label %if.end.i114.do.body.i_crit_edge, label %posix_timer_add.exit

if.end.i114.do.body.i_crit_edge:                  ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

posix_timer_add.exit:                             ; preds = %if.end.i114
  %33 = ptrtoint ptr %new_timer_id to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %ret.2.i, ptr %new_timer_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %cmp = icmp slt i32 %ret.2.i, 0
  br i1 %cmp, label %posix_timer_add.exit.release_posix_timer.exit_crit_edge, label %if.end14

posix_timer_add.exit.release_posix_timer.exit_crit_edge: ; preds = %posix_timer_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_posix_timer.exit

if.end14:                                         ; preds = %posix_timer_add.exit
  %it_id = getelementptr inbounds %struct.k_itimer, ptr %call.i.i106, i32 0, i32 5
  %34 = ptrtoint ptr %it_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %ret.2.i, ptr %it_id, align 4
  %it_clock = getelementptr inbounds %struct.k_itimer, ptr %call.i.i106, i32 0, i32 4
  %35 = ptrtoint ptr %it_clock to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %which_clock, ptr %it_clock, align 8
  %kclock = getelementptr inbounds %struct.k_itimer, ptr %call.i.i106, i32 0, i32 3
  %36 = ptrtoint ptr %kclock to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %retval.0.i161, ptr %kclock, align 4
  %it_overrun = getelementptr inbounds %struct.k_itimer, ptr %call.i.i106, i32 0, i32 7
  %37 = ptrtoint ptr %it_overrun to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 -1, ptr %it_overrun, align 8
  %tobool15.not = icmp eq ptr %event, null
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  %38 = tail call i32 @llvm.read_register.i32(metadata !289) #10
  %and.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %41, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !300
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.then16.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then16.rcu_read_lock.exit_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then16
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.65, i32 noundef 696, ptr noundef nonnull @.str.66) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then16.rcu_read_lock.exit_crit_edge
  %42 = tail call i32 @llvm.read_register.i32(metadata !289) #10
  %and.i.i115 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i115 to ptr
  %task.i116 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i116 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i116, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 111
  %46 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %47, i32 0, i32 22, i32 1
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 4
  %sigev_notify.i = getelementptr inbounds %struct.sigevent, ptr %event, i32 0, i32 2
  %50 = ptrtoint ptr %sigev_notify.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sigev_notify.i, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values)
  switch i32 %51, label %rcu_read_lock.exit.get_pid.exit_crit_edge [
    i32 4, label %sw.bb.i
    i32 0, label %rcu_read_lock.exit.sw.bb7.i_crit_edge
    i32 2, label %rcu_read_lock.exit.sw.bb7.i_crit_edge179
    i32 1, label %rcu_read_lock.exit.good_sigevent.exit_crit_edge
  ]

rcu_read_lock.exit.good_sigevent.exit_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %good_sigevent.exit

rcu_read_lock.exit.sw.bb7.i_crit_edge179:         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7.i

rcu_read_lock.exit.sw.bb7.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7.i

rcu_read_lock.exit.get_pid.exit_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid.exit

sw.bb.i:                                          ; preds = %rcu_read_lock.exit
  %_sigev_un.i = getelementptr inbounds %struct.sigevent, ptr %event, i32 0, i32 3
  %53 = ptrtoint ptr %_sigev_un.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %_sigev_un.i, align 4
  %call2.i = tail call ptr @find_vpid(i32 noundef %54) #10
  %call3.i = tail call ptr @pid_task(ptr noundef %call2.i, i32 noundef 0) #10
  %tobool.not.i117 = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i117, label %sw.bb.i.get_pid.exit_crit_edge, label %lor.lhs.false.i

sw.bb.i.get_pid.exit_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid.exit

lor.lhs.false.i:                                  ; preds = %sw.bb.i
  %55 = ptrtoint ptr %task.i116 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i116, align 8
  %signal.i20.i = getelementptr inbounds %struct.task_struct, ptr %call3.i, i32 0, i32 111
  %57 = ptrtoint ptr %signal.i20.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %signal.i20.i, align 16
  %signal1.i.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 111
  %59 = ptrtoint ptr %signal1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %signal1.i.i, align 16
  %cmp.i.i118 = icmp eq ptr %58, %60
  br i1 %cmp.i.i118, label %lor.lhs.false.i.sw.bb7.i_crit_edge, label %lor.lhs.false.i.get_pid.exit_crit_edge

lor.lhs.false.i.get_pid.exit_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid.exit

lor.lhs.false.i.sw.bb7.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7.i

sw.bb7.i:                                         ; preds = %lor.lhs.false.i.sw.bb7.i_crit_edge, %rcu_read_lock.exit.sw.bb7.i_crit_edge, %rcu_read_lock.exit.sw.bb7.i_crit_edge179
  %pid.0.i = phi ptr [ %49, %rcu_read_lock.exit.sw.bb7.i_crit_edge ], [ %49, %rcu_read_lock.exit.sw.bb7.i_crit_edge179 ], [ %call2.i, %lor.lhs.false.i.sw.bb7.i_crit_edge ]
  %sigev_signo.i = getelementptr inbounds %struct.sigevent, ptr %event, i32 0, i32 1
  %61 = ptrtoint ptr %sigev_signo.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sigev_signo.i, align 4
  %63 = add i32 %62, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %63)
  %64 = icmp ult i32 %63, -64
  br i1 %64, label %sw.bb7.i.get_pid.exit_crit_edge, label %sw.bb7.i.good_sigevent.exit_crit_edge

sw.bb7.i.good_sigevent.exit_crit_edge:            ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %good_sigevent.exit

sw.bb7.i.get_pid.exit_crit_edge:                  ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid.exit

good_sigevent.exit:                               ; preds = %sw.bb7.i.good_sigevent.exit_crit_edge, %rcu_read_lock.exit.good_sigevent.exit_crit_edge
  %pid.1.i = phi ptr [ %49, %rcu_read_lock.exit.good_sigevent.exit_crit_edge ], [ %pid.0.i, %sw.bb7.i.good_sigevent.exit_crit_edge ]
  %tobool.not.i120 = icmp eq ptr %pid.1.i, null
  br i1 %tobool.not.i120, label %good_sigevent.exit.get_pid.exit_crit_edge, label %if.then.i121

good_sigevent.exit.get_pid.exit_crit_edge:        ; preds = %good_sigevent.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid.exit

if.then.i121:                                     ; preds = %good_sigevent.exit
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pid.1.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %pid.1.i, i32 1, i32 3, i32 1) #10
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pid.1.i, ptr nonnull %pid.1.i, i32 1, ptr nonnull elementtype(i32) %pid.1.i) #10, !srcloc !310
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i121.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !307

if.then.i121.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i121
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %66 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %.not.i.i.i.i = icmp sgt i32 %66, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !303

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i121.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i121.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %pid.1.i, i32 noundef %.sink.i.i.i.i) #10
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %good_sigevent.exit.get_pid.exit_crit_edge, %sw.bb7.i.get_pid.exit_crit_edge, %lor.lhs.false.i.get_pid.exit_crit_edge, %sw.bb.i.get_pid.exit_crit_edge, %rcu_read_lock.exit.get_pid.exit_crit_edge
  %retval.0.i119168 = phi ptr [ null, %good_sigevent.exit.get_pid.exit_crit_edge ], [ %pid.1.i, %if.else.i.i.i.i.get_pid.exit_crit_edge ], [ %pid.1.i, %if.end15.sink.split.i.i.i.i ], [ null, %lor.lhs.false.i.get_pid.exit_crit_edge ], [ null, %sw.bb.i.get_pid.exit_crit_edge ], [ null, %sw.bb7.i.get_pid.exit_crit_edge ], [ null, %rcu_read_lock.exit.get_pid.exit_crit_edge ]
  %67 = getelementptr inbounds %struct.k_itimer, ptr %call.i.i106, i32 0, i32 13
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %retval.0.i119168, ptr %67, align 4
  %call.i123 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i123, label %get_pid.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i126

get_pid.exit.rcu_read_unlock.exit_crit_edge:      ; preds = %get_pid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i126:                               ; preds = %get_pid.exit
  %call1.i124 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i124)
  %tobool.not.i125 = icmp eq i32 %call1.i124, 0
  br i1 %tobool.not.i125, label %land.lhs.true.i126.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i128

land.lhs.true.i126.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i128:                              ; preds = %land.lhs.true.i126
  %.b4.i127 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i127, label %land.lhs.true2.i128.rcu_read_unlock.exit_crit_edge, label %if.then.i129

land.lhs.true2.i128.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i128
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i129:                                     ; preds = %land.lhs.true2.i128
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.65, i32 noundef 724, ptr noundef nonnull @.str.67) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i129, %land.lhs.true2.i128.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i126.rcu_read_unlock.exit_crit_edge, %get_pid.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !301
  %69 = tail call i32 @llvm.read_register.i32(metadata !289) #10
  %and.i.i.i.i.i130 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i.i130 to ptr
  %preempt_count.i.i.i.i131 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i.i.i131, align 4
  %sub.i.i.i = add i32 %72, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i131, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %73 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %67, align 4
  %tobool19.not = icmp eq ptr %74, null
  br i1 %tobool19.not, label %rcu_read_unlock.exit.if.then.i153_crit_edge, label %if.end21

rcu_read_unlock.exit.if.then.i153_crit_edge:      ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i153

if.end21:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %sigev_notify.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sigev_notify.i, align 4
  %it_sigev_notify = getelementptr inbounds %struct.k_itimer, ptr %call.i.i106, i32 0, i32 10
  %77 = ptrtoint ptr %it_sigev_notify to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %it_sigev_notify, align 4
  %sigev_signo = getelementptr inbounds %struct.sigevent, ptr %event, i32 0, i32 1
  %78 = ptrtoint ptr %sigev_signo to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sigev_signo, align 4
  %80 = ptrtoint ptr %sigq.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sigq.i, align 8
  %info = getelementptr inbounds %struct.sigqueue, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %79, ptr %info, align 4
  %83 = load ptr, ptr %sigq.i, align 8
  %_sigval = getelementptr inbounds %struct.sigqueue, ptr %83, i32 0, i32 2, i32 0, i32 3, i32 0, i32 2
  %84 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %event, align 4
  %86 = ptrtoint ptr %_sigval to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %_sigval, align 4
  br label %if.end40

if.else:                                          ; preds = %if.end14
  %it_sigev_notify24 = getelementptr inbounds %struct.k_itimer, ptr %call.i.i106, i32 0, i32 10
  %87 = ptrtoint ptr %it_sigev_notify24 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %it_sigev_notify24, align 4
  %88 = ptrtoint ptr %sigq.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sigq.i, align 8
  %info26 = getelementptr inbounds %struct.sigqueue, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %info26 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 14, ptr %info26, align 4
  %91 = load ptr, ptr %sigq.i, align 8
  %_sigval31 = getelementptr inbounds %struct.sigqueue, ptr %91, i32 0, i32 2, i32 0, i32 3, i32 0, i32 2
  %92 = ptrtoint ptr %_sigval31 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %_sigval31, align 4
  %93 = ptrtoint ptr %it_id to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %it_id, align 4
  %95 = load ptr, ptr %sigq.i, align 8
  %_sigval36 = getelementptr inbounds %struct.sigqueue, ptr %95, i32 0, i32 2, i32 0, i32 3, i32 0, i32 2
  %96 = ptrtoint ptr %_sigval36 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %94, ptr %_sigval36, align 4
  %97 = tail call i32 @llvm.read_register.i32(metadata !289) #10
  %and.i132 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i132 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task, align 8
  %signal.i133 = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 111
  %101 = ptrtoint ptr %signal.i133 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %signal.i133, align 16
  %arrayidx.i134 = getelementptr %struct.signal_struct, ptr %102, i32 0, i32 22, i32 1
  %103 = ptrtoint ptr %arrayidx.i134 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i134, align 4
  %tobool.not.i135 = icmp eq ptr %104, null
  br i1 %tobool.not.i135, label %if.else.get_pid.exit146_crit_edge, label %if.then.i139

if.else.get_pid.exit146_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid.exit146

if.then.i139:                                     ; preds = %if.else
  %call.i.i.i.i.i.i136 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %104, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %104, i32 1, i32 3, i32 1) #10
  %105 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %104, ptr nonnull %104, i32 1, ptr nonnull elementtype(i32) %104) #10, !srcloc !310
  %asmresult.i.i.i.i.i.i137 = extractvalue { i32, i32, i32 } %105, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i137)
  %tobool1.not.i.i.i.i138 = icmp eq i32 %asmresult.i.i.i.i.i.i137, 0
  br i1 %tobool1.not.i.i.i.i138, label %if.then.i139.if.end15.sink.split.i.i.i.i144_crit_edge, label %if.else.i.i.i.i142, !prof !307

if.then.i139.if.end15.sink.split.i.i.i.i144_crit_edge: ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i144

if.else.i.i.i.i142:                               ; preds = %if.then.i139
  %add.i.i.i.i140 = add i32 %asmresult.i.i.i.i.i.i137, 1
  %106 = or i32 %add.i.i.i.i140, %asmresult.i.i.i.i.i.i137
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %106)
  %.not.i.i.i.i141 = icmp sgt i32 %106, -1
  br i1 %.not.i.i.i.i141, label %if.else.i.i.i.i142.get_pid.exit146_crit_edge, label %if.else.i.i.i.i142.if.end15.sink.split.i.i.i.i144_crit_edge, !prof !303

if.else.i.i.i.i142.if.end15.sink.split.i.i.i.i144_crit_edge: ; preds = %if.else.i.i.i.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i144

if.else.i.i.i.i142.get_pid.exit146_crit_edge:     ; preds = %if.else.i.i.i.i142
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid.exit146

if.end15.sink.split.i.i.i.i144:                   ; preds = %if.else.i.i.i.i142.if.end15.sink.split.i.i.i.i144_crit_edge, %if.then.i139.if.end15.sink.split.i.i.i.i144_crit_edge
  %.sink.i.i.i.i143 = phi i32 [ 2, %if.then.i139.if.end15.sink.split.i.i.i.i144_crit_edge ], [ 1, %if.else.i.i.i.i142.if.end15.sink.split.i.i.i.i144_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %104, i32 noundef %.sink.i.i.i.i143) #10
  br label %get_pid.exit146

get_pid.exit146:                                  ; preds = %if.end15.sink.split.i.i.i.i144, %if.else.i.i.i.i142.get_pid.exit146_crit_edge, %if.else.get_pid.exit146_crit_edge
  %107 = getelementptr inbounds %struct.k_itimer, ptr %call.i.i106, i32 0, i32 13
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %104, ptr %107, align 4
  br label %if.end40

if.end40:                                         ; preds = %get_pid.exit146, %if.end21
  %109 = ptrtoint ptr %it_id to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %it_id, align 4
  %111 = ptrtoint ptr %sigq.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sigq.i, align 8
  %_sifields44 = getelementptr inbounds %struct.sigqueue, ptr %112, i32 0, i32 2, i32 0, i32 3
  %113 = ptrtoint ptr %_sifields44 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %110, ptr %_sifields44, align 4
  %114 = load ptr, ptr %sigq.i, align 8
  %si_code = getelementptr inbounds %struct.sigqueue, ptr %114, i32 0, i32 2, i32 0, i32 2
  %115 = ptrtoint ptr %si_code to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 -2, ptr %si_code, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.60, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end40.if.then.i153_crit_edge, label %if.end.i.i

if.end40.if.then.i153_crit_edge:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i153

if.end.i.i:                                       ; preds = %if.end40
  %116 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %created_timer_id, i32 4, i32 -1226833920) #13, !srcloc !311
  %asmresult.i.i = extractvalue { i32, i32 } %116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.if.then.i153_crit_edge

if.end.i.i.if.then.i153_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i153

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %new_timer_id, i32 noundef 4) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %created_timer_id, ptr noundef nonnull %new_timer_id, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool48.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool48.not, label %if.end50, label %copy_to_user.exit.if.then.i153_crit_edge

copy_to_user.exit.if.then.i153_crit_edge:         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i153

if.end50:                                         ; preds = %copy_to_user.exit
  %117 = ptrtoint ptr %timer_create to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %timer_create, align 4
  %call52 = call i32 %118(ptr noundef nonnull %call.i.i106) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end50.if.then.i153_crit_edge

if.end50.if.then.i153_crit_edge:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i153

if.end55:                                         ; preds = %if.end50
  %119 = call i32 @llvm.read_register.i32(metadata !289) #10
  %and.i147 = and i32 %119, -16384
  %120 = inttoptr i32 %and.i147 to ptr
  %task57 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %task57 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %task57, align 8
  %sighand = getelementptr inbounds %struct.task_struct, ptr %122, i32 0, i32 112
  %123 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %sighand, align 4
  call void @_raw_spin_lock_irq(ptr noundef %124) #10
  %125 = ptrtoint ptr %task57 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %task57, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 111
  %127 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %signal, align 16
  %it_signal = getelementptr inbounds %struct.k_itimer, ptr %call.i.i106, i32 0, i32 12
  %129 = ptrtoint ptr %it_signal to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %128, ptr %it_signal, align 8
  %130 = load ptr, ptr %task57, align 8
  %signal62 = getelementptr inbounds %struct.task_struct, ptr %130, i32 0, i32 111
  %131 = ptrtoint ptr %signal62 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %signal62, align 16
  %posix_timers = getelementptr inbounds %struct.signal_struct, ptr %132, i32 0, i32 16
  %133 = ptrtoint ptr %posix_timers to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %posix_timers, align 4
  %call.i.i148 = call zeroext i1 @__list_add_valid(ptr noundef %call.i.i106, ptr noundef %posix_timers, ptr noundef %134) #10
  br i1 %call.i.i148, label %if.end.i.i149, label %if.end55.list_add.exit_crit_edge

if.end55.list_add.exit_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i149:                                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call.i.i106, ptr %prev1.i.i, align 4
  %136 = ptrtoint ptr %call.i.i106 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %134, ptr %call.i.i106, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i106, i32 0, i32 1
  %137 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %posix_timers, ptr %prev3.i.i, align 4
  %138 = ptrtoint ptr %posix_timers to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %call.i.i106, ptr %posix_timers, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i149, %if.end55.list_add.exit_crit_edge
  %139 = ptrtoint ptr %task57 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %task57, align 8
  %sighand65 = getelementptr inbounds %struct.task_struct, ptr %140, i32 0, i32 112
  %141 = ptrtoint ptr %sighand65 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %sighand65, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %142) #10
  br label %cleanup

if.then.i153:                                     ; preds = %if.end50.if.then.i153_crit_edge, %copy_to_user.exit.if.then.i153_crit_edge, %if.end.i.i.if.then.i153_crit_edge, %if.end40.if.then.i153_crit_edge, %rcu_read_unlock.exit.if.then.i153_crit_edge
  %error.0.ph = phi i32 [ -14, %copy_to_user.exit.if.then.i153_crit_edge ], [ -22, %rcu_read_unlock.exit.if.then.i153_crit_edge ], [ %call52, %if.end50.if.then.i153_crit_edge ], [ -14, %if.end40.if.then.i153_crit_edge ], [ -14, %if.end.i.i.if.then.i153_crit_edge ]
  %call2.i151 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @hash_lock) #10
  %143 = ptrtoint ptr %t_hash.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %t_hash.i, align 8
  %145 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pprev.i.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %144, ptr %146, align 4
  %tobool.not.i.i.i = icmp eq ptr %144, null
  br i1 %tobool.not.i.i.i, label %if.then.i153.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

if.then.i153.hlist_del_rcu.exit.i_crit_edge:      ; preds = %if.then.i153
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %if.then.i153
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %144, i32 0, i32 1
  %148 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %146, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %if.then.i153.hlist_del_rcu.exit.i_crit_edge
  %149 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @hash_lock, i32 noundef %call2.i151) #10
  br label %release_posix_timer.exit

release_posix_timer.exit:                         ; preds = %hlist_del_rcu.exit.i, %posix_timer_add.exit.release_posix_timer.exit_crit_edge
  %error.0178 = phi i32 [ %error.0.ph, %hlist_del_rcu.exit.i ], [ %ret.2.i, %posix_timer_add.exit.release_posix_timer.exit_crit_edge ]
  %150 = getelementptr inbounds %struct.k_itimer, ptr %call.i.i106, i32 0, i32 13
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 4
  call void @put_pid(ptr noundef %152) #10
  %153 = ptrtoint ptr %sigq.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %sigq.i, align 8
  call void @sigqueue_free(ptr noundef %154) #10
  %rcu.i = getelementptr inbounds %struct.k_itimer, ptr %call.i.i106, i32 0, i32 16
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @k_itimer_rcu_free) #10
  br label %cleanup

cleanup:                                          ; preds = %release_posix_timer.exit, %list_add.exit, %if.then6.i, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %clockid_to_kclock.exit.cleanup_crit_edge, %clockid_to_kclock.exit.thread
  %retval.0 = phi i32 [ %error.0178, %release_posix_timer.exit ], [ 0, %list_add.exit ], [ -22, %clockid_to_kclock.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %clockid_to_kclock.exit.thread ], [ -11, %if.then6.i ], [ -11, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_timer_id) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sigqueue_alloc() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__posix_timers_find(ptr noundef %head, ptr noundef readnone %sig, i32 noundef %id) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @hash_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true3.do.end_crit_edge, label %land.lhs.true6

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %.b42 = load i1, ptr @__posix_timers_find.__warned, align 1
  br i1 %.b42, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__posix_timers_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 125, ptr noundef nonnull @.str.64) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head, align 4
  %tobool13.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %tobool15.not4650 = icmp eq ptr %add.ptr, null
  %tobool15.not46 = or i1 %tobool13.not, %tobool15.not4650
  br i1 %tobool15.not46, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %timer.047 = phi ptr [ %add.ptr31, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %it_signal = getelementptr inbounds %struct.k_itimer, ptr %timer.047, i32 0, i32 12
  %2 = ptrtoint ptr %it_signal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %it_signal, align 8
  %cmp = icmp eq ptr %3, %sig
  br i1 %cmp, label %land.lhs.true16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true16:                                  ; preds = %for.body
  %it_id = getelementptr inbounds %struct.k_itimer, ptr %timer.047, i32 0, i32 5
  %4 = ptrtoint ptr %it_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %it_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %id)
  %cmp17 = icmp eq i32 %5, %id
  br i1 %cmp17, label %land.lhs.true16.cleanup_crit_edge, label %land.lhs.true16.for.inc_crit_edge

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true16.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %t_hash = getelementptr inbounds %struct.k_itimer, ptr %timer.047, i32 0, i32 1
  %6 = ptrtoint ptr %t_hash to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %t_hash, align 8
  %tobool27.not = icmp eq ptr %7, null
  %add.ptr31 = getelementptr i8, ptr %7, i32 -8
  %tobool15.not51 = icmp eq ptr %add.ptr31, null
  %tobool15.not = or i1 %tobool27.not, %tobool15.not51
  br i1 %tobool15.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true16.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %timer.0.lcssa = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %timer.047, %land.lhs.true16.cleanup_crit_edge ]
  ret ptr %timer.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sigqueue_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k_itimer_rcu_free(ptr noundef %head) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -216
  %0 = load ptr, ptr @posix_timers_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_itimerspec64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_old_itimerspec32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_itimerspec64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_timer_settime(i32 noundef %timer_id, i32 noundef %tmr_flags, ptr noundef %new_spec64, ptr noundef %old_spec64) unnamed_addr #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #10
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !299
  %1 = ptrtoint ptr %new_spec64 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %new_spec64, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp.i = icmp slt i64 %2, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %timespec64_valid.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

timespec64_valid.exit:                            ; preds = %entry
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %new_spec64, i32 0, i32 1
  %3 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tv_nsec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %4)
  %cmp1.i = icmp ult i32 %4, 1000000000
  br i1 %cmp1.i, label %lor.lhs.false, label %timespec64_valid.exit.cleanup_crit_edge

timespec64_valid.exit.cleanup_crit_edge:          ; preds = %timespec64_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %timespec64_valid.exit
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %new_spec64, i32 0, i32 1
  %5 = ptrtoint ptr %it_value to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %it_value, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp.i75 = icmp slt i64 %6, 0
  br i1 %cmp.i75, label %lor.lhs.false.cleanup_crit_edge, label %timespec64_valid.exit80

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

timespec64_valid.exit80:                          ; preds = %lor.lhs.false
  %tv_nsec.i76 = getelementptr inbounds %struct.itimerspec64, ptr %new_spec64, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %tv_nsec.i76 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tv_nsec.i76, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %8)
  %cmp1.i77 = icmp ult i32 %8, 1000000000
  br i1 %cmp1.i77, label %if.end, label %timespec64_valid.exit80.cleanup_crit_edge

timespec64_valid.exit80.cleanup_crit_edge:        ; preds = %timespec64_valid.exit80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %timespec64_valid.exit80
  %tobool.not = icmp eq ptr %old_spec64, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = call ptr @memset(ptr %old_spec64, i32 0, i32 32)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call4 = call fastcc ptr @__lock_timer(i32 noundef %timer_id, ptr noundef nonnull %flags)
  %tobool5.not89 = icmp eq ptr %call4, null
  br i1 %tobool5.not89, label %if.end3.cleanup_crit_edge, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  br label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.then54.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  %old_spec64.addr.091 = phi ptr [ null, %if.then54.if.end7_crit_edge ], [ %old_spec64, %if.end3.if.end7_crit_edge ]
  %timr.090 = phi ptr [ %call55, %if.then54.if.end7_crit_edge ], [ %call4, %if.end3.if.end7_crit_edge ]
  %kclock = getelementptr inbounds %struct.k_itimer, ptr %timr.090, i32 0, i32 3
  %10 = ptrtoint ptr %kclock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kclock, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.end7.land.rhs_crit_edge, label %lor.rhs

if.end7.land.rhs_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

lor.rhs:                                          ; preds = %if.end7
  %timer_set = getelementptr inbounds %struct.k_clock, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %timer_set to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %timer_set, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %lor.rhs.land.rhs_crit_edge, label %if.end53

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %if.end7.land.rhs_crit_edge
  %.b73 = load i1, ptr @do_timer_settime.__already_done, align 1
  br i1 %.b73, label %land.rhs.if.end56_crit_edge, label %if.then18, !prof !303

land.rhs.if.end56_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then18:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @do_timer_settime.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 920, i32 noundef 9, ptr noundef null) #10
  br label %if.end56

if.end53:                                         ; preds = %lor.rhs
  %call52 = tail call i32 %13(ptr noundef nonnull %timr.090, i32 noundef %tmr_flags, ptr noundef %new_spec64, ptr noundef %old_spec64.addr.091) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call52)
  %cmp = icmp eq i32 %call52, 1
  br i1 %cmp, label %if.then54, label %if.end53.if.end56_crit_edge

if.end53.if.end56_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then54:                                        ; preds = %if.end53
  %call55 = call fastcc ptr @timer_wait_running(ptr noundef nonnull %timr.090, ptr noundef nonnull %flags)
  %tobool5.not = icmp eq ptr %call55, null
  br i1 %tobool5.not, label %if.then54.cleanup_crit_edge, label %if.then54.if.end7_crit_edge

if.then54.if.end7_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end56:                                         ; preds = %if.end53.if.end56_crit_edge, %if.then18, %land.rhs.if.end56_crit_edge
  %error.085 = phi i32 [ -22, %if.then18 ], [ -22, %land.rhs.if.end56_crit_edge ], [ %call52, %if.end53.if.end56_crit_edge ]
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %it_lock.i = getelementptr inbounds %struct.k_itimer, ptr %timr.090, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %it_lock.i, i32 noundef %15) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then54.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %timespec64_valid.exit80.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %timespec64_valid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.085, %if.end56 ], [ -22, %timespec64_valid.exit80.cleanup_crit_edge ], [ -22, %timespec64_valid.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.then54.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @timer_wait_running(ptr noundef %timer, ptr nocapture noundef %flags) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %kclock = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 3
  %0 = ptrtoint ptr %kclock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %kclock, align 4
  %it_id = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 5
  %2 = ptrtoint ptr %it_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %it_id, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !289) #10
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !300
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.65, i32 noundef 696, ptr noundef nonnull @.str.66) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %it_lock.i = getelementptr inbounds %struct.k_itimer, ptr %timer, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %it_lock.i, i32 noundef %9) #10
  %timer_wait_running = getelementptr inbounds %struct.k_clock, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %timer_wait_running to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timer_wait_running, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %land.rhs, label %if.then46.critedge

land.rhs:                                         ; preds = %rcu_read_lock.exit
  %.b57 = load i1, ptr @timer_wait_running.__already_done, align 1
  br i1 %.b57, label %land.rhs.if.end48_crit_edge, label %if.then, !prof !303

land.rhs.if.end48_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @timer_wait_running.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 849, i32 noundef 9, ptr noundef null) #10
  br label %if.end48

if.then46.critedge:                               ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %11(ptr noundef %timer) #10
  br label %if.end48

if.end48:                                         ; preds = %if.then46.critedge, %if.then, %land.rhs.if.end48_crit_edge
  %call.i59 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i59, label %if.end48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i62

if.end48.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i62:                                ; preds = %if.end48
  %call1.i60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i60)
  %tobool.not.i61 = icmp eq i32 %call1.i60, 0
  br i1 %tobool.not.i61, label %land.lhs.true.i62.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i64

land.lhs.true.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i64:                               ; preds = %land.lhs.true.i62
  %.b4.i63 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i63, label %land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge, label %if.then.i65

land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i65:                                      ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.65, i32 noundef 724, ptr noundef nonnull @.str.67) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i65, %land.lhs.true2.i64.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i62.rcu_read_unlock.exit_crit_edge, %if.end48.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !301
  %12 = tail call i32 @llvm.read_register.i32(metadata !289) #10
  %and.i.i.i.i.i66 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i66 to ptr
  %preempt_count.i.i.i.i67 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i67, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i67, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %call = tail call fastcc ptr @__lock_timer(i32 noundef %3, ptr noundef %flags)
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_itimerspec32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timex32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_old_timex32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @posix_get_hrtimer_res(i32 noundef %which_clock, ptr nocapture noundef writeonly %tp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %tp, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hrtimer_resolution to i32))
  %1 = load i32, ptr @hrtimer_resolution, align 4
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %tp, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tv_nsec, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_clock_realtime_set(i32 noundef %which_clock, ptr noundef %tp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @do_sys_settimeofday64(ptr noundef %tp, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_get_realtime_timespec(i32 noundef %which_clock, ptr noundef %tp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ktime_get_real_ts64(ptr noundef %tp) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @posix_get_realtime_ktime(i32 noundef %which_clock) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  ret i64 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_clock_realtime_adj(i32 noundef %which_clock, ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @do_adjtimex(ptr noundef %t) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @common_timer_create(ptr noundef %new_timer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %it = getelementptr inbounds %struct.k_itimer, ptr %new_timer, i32 0, i32 15
  %it_clock = getelementptr inbounds %struct.k_itimer, ptr %new_timer, i32 0, i32 4
  %0 = ptrtoint ptr %it_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %it_clock, align 8
  tail call void @hrtimer_init(ptr noundef %it, i32 noundef %1, i32 noundef 0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @common_nsleep(i32 noundef %which_clock, i32 noundef %flags, ptr nocapture noundef readonly %rqtp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rqtp to i32
  call void @__asan_load8_noabort(i32 %0)
  %.unpack = load i64, ptr %rqtp, align 8
  %.elt2 = getelementptr inbounds [2 x i64], ptr %rqtp, i32 0, i32 1
  %1 = ptrtoint ptr %.elt2 to i32
  call void @__asan_load8_noabort(i32 %1)
  %.unpack3 = load i64, ptr %.elt2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.unpack)
  %cmp.i.i = icmp sgt i64 %.unpack, 9223372035
  %ts.sroa.2.8.extract.shift.i = lshr i64 %.unpack3, 32
  %mul.i.i = mul i64 %.unpack, 1000000000
  %add.i.i = add i64 %ts.sroa.2.8.extract.shift.i, %mul.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %add.i.i, !prof !307
  %and = and i32 %flags, 1
  %2 = xor i32 %and, 1
  %call1 = tail call i32 @hrtimer_nanosleep(i64 noundef %retval.0.i.i, i32 noundef %2, i32 noundef %which_clock) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @common_hrtimer_rearm(ptr noundef %timr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %it = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 15
  %base = getelementptr inbounds %struct.hrtimer, ptr %it, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %get_time = getelementptr inbounds %struct.hrtimer_clock_base, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %get_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_time, align 4
  %call = tail call i64 %3() #10
  %it_interval = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 11
  %4 = ptrtoint ptr %it_interval to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %it_interval, align 8
  %call2 = tail call i64 @hrtimer_forward(ptr noundef %it, i64 noundef %call, i64 noundef %5) #10
  %it_overrun = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 7
  %6 = ptrtoint ptr %it_overrun to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %it_overrun, align 8
  %add = add i64 %7, %call2
  store i64 %add, ptr %it_overrun, align 8
  %_softexpires.i.i.i = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 15, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %_softexpires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %_softexpires.i.i.i, align 8
  %expires.i.i.i = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %expires.i.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %expires.i.i.i, align 8
  %sub.i.i = sub i64 %11, %9
  tail call void @hrtimer_start_range_ns(ptr noundef %it, i64 noundef %9, i64 noundef %sub.i.i, i32 noundef 0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @common_hrtimer_forward(ptr noundef %timr, i64 noundef %now) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %it = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 15
  %it_interval = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 11
  %0 = ptrtoint ptr %it_interval to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %it_interval, align 8
  %call = tail call i64 @hrtimer_forward(ptr noundef %it, i64 noundef %now, i64 noundef %1) #10
  ret i64 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @common_hrtimer_remaining(ptr nocapture noundef readonly %timr, i64 noundef %now) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %expires.i = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %expires.i, align 8
  %sub.i = sub i64 %1, %now
  ret i64 %sub.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @common_hrtimer_try_to_cancel(ptr noundef %timr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %it = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 15
  %call = tail call i32 @hrtimer_try_to_cancel(ptr noundef %it) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @common_hrtimer_arm(ptr noundef %timr, i64 noundef %expires, i1 noundef zeroext %absolute, i1 noundef zeroext %sigev_none) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %it = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 15
  %not.absolute = xor i1 %absolute, true
  %cond = zext i1 %not.absolute to i32
  %it_clock = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 4
  %0 = ptrtoint ptr %it_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %it_clock, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cond4 = select i1 %absolute, ptr @clock_realtime, ptr @clock_monotonic
  %kclock = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 3
  %2 = ptrtoint ptr %kclock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cond4, ptr %kclock, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @hrtimer_init(ptr noundef %it, i32 noundef %1, i32 noundef %cond) #10
  %function = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 15, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2
  %3 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @posix_timer_fn, ptr %function, align 8
  br i1 %absolute, label %if.end.if.end13_crit_edge, label %if.then11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.hrtimer, ptr %it, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %get_time = getelementptr inbounds %struct.hrtimer_clock_base, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %get_time to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_time, align 4
  %call = tail call i64 %7() #10
  %call12 = tail call i64 @ktime_add_safe(i64 noundef %expires, i64 noundef %call) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %expires.addr.0 = phi i64 [ %expires, %if.end.if.end13_crit_edge ], [ %call12, %if.then11 ]
  %expires.i = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 15, i32 0, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %expires.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %expires.addr.0, ptr %expires.i, align 8
  %_softexpires.i = getelementptr inbounds %struct.k_itimer, ptr %timr, i32 0, i32 15, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %expires.addr.0, ptr %_softexpires.i, align 8
  br i1 %sigev_none, label %if.end13.if.end16_crit_edge, label %if.then15

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @hrtimer_start_range_ns(ptr noundef %it, i64 noundef %expires.addr.0, i64 noundef 0, i32 noundef 0) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @common_timer_wait_running(ptr nocapture noundef readnone %timer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !313
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_sys_settimeofday64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_adjtimex(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_nanosleep(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_timer_fn(ptr noundef %timer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %it_lock = getelementptr i8, ptr %timer, i32 -112
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %it_lock) #10
  %it_active = getelementptr i8, ptr %timer, i32 -56
  %0 = ptrtoint ptr %it_active to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %it_active, align 8
  %it_interval = getelementptr i8, ptr %timer, i32 -24
  %1 = ptrtoint ptr %it_interval to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %it_interval, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp6.not = icmp eq i64 %2, 0
  br i1 %cmp6.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %it_requeue_pending = getelementptr i8, ptr %timer, i32 -32
  %3 = ptrtoint ptr %it_requeue_pending to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %it_requeue_pending, align 8
  %inc = add i32 %4, 1
  store i32 %inc, ptr %it_requeue_pending, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %si_private.0 = phi i32 [ %inc, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %sigq.i = getelementptr i8, ptr %timer, i32 -8
  %5 = ptrtoint ptr %sigq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sigq.i, align 8
  %_sys_private.i = getelementptr inbounds %struct.sigqueue, ptr %6, i32 0, i32 2, i32 0, i32 3, i32 0, i32 3
  %7 = ptrtoint ptr %_sys_private.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %si_private.0, ptr %_sys_private.i, align 4
  %it_sigev_notify.i = getelementptr i8, ptr %timer, i32 -28
  %8 = ptrtoint ptr %it_sigev_notify.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %it_sigev_notify.i, align 4
  %and.i = lshr i32 %9, 2
  %and.lobit.i = and i32 %and.i, 1
  %10 = xor i32 %and.lobit.i, 1
  %11 = load ptr, ptr %sigq.i, align 8
  %12 = getelementptr i8, ptr %timer, i32 -12
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call.i = tail call i32 @send_sigqueue(ptr noundef %11, ptr noundef %14, i32 noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %if.end.if.end27_crit_edge, label %if.then9

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then9:                                         ; preds = %if.end
  %15 = ptrtoint ptr %it_interval to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %it_interval, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp11.not = icmp eq i64 %16, 0
  br i1 %cmp11.not, label %if.then9.if.end27_crit_edge, label %if.then13

if.then9.if.end27_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_time.i, align 4
  %call.i43 = tail call i64 %20() #10
  %21 = ptrtoint ptr %it_interval to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %it_interval, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000000, i64 %22)
  %cmp16 = icmp slt i64 %22, 10000000
  %add = add i64 %call.i43, 10000000
  %spec.select = select i1 %cmp16, i64 %add, i64 %call.i43
  %call21 = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %spec.select, i64 noundef %22) #10
  %it_overrun = getelementptr i8, ptr %timer, i32 -48
  %23 = ptrtoint ptr %it_overrun to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %it_overrun, align 8
  %add22 = add i64 %24, %call21
  store i64 %add22, ptr %it_overrun, align 8
  %it_requeue_pending23 = getelementptr i8, ptr %timer, i32 -32
  %25 = ptrtoint ptr %it_requeue_pending23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %it_requeue_pending23, align 8
  %inc24 = add i32 %26, 1
  store i32 %inc24, ptr %it_requeue_pending23, align 8
  %27 = ptrtoint ptr %it_active to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %it_active, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then13, %if.then9.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %ret.0 = phi i32 [ 1, %if.then13 ], [ 0, %if.then9.if.end27_crit_edge ], [ 0, %if.end.if.end27_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %it_lock, i32 noundef %call3) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_add_safe(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_get_monotonic_timespec(i32 noundef %which_clock, ptr noundef %tp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ktime_get_ts64(ptr noundef %tp) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @posix_get_monotonic_ktime(i32 noundef %which_clock) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #10
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @common_nsleep_timens(i32 noundef %which_clock, i32 noundef %flags, ptr nocapture noundef readonly %rqtp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rqtp to i32
  call void @__asan_load8_noabort(i32 %0)
  %.unpack = load i64, ptr %rqtp, align 8
  %.elt8 = getelementptr inbounds [2 x i64], ptr %rqtp, i32 0, i32 1
  %1 = ptrtoint ptr %.elt8 to i32
  call void @__asan_load8_noabort(i32 %1)
  %.unpack9 = load i64, ptr %.elt8, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.unpack)
  %cmp.i.i = icmp sgt i64 %.unpack, 9223372035
  %ts.sroa.2.8.extract.shift.i = lshr i64 %.unpack9, 32
  %mul.i.i = mul i64 %.unpack, 1000000000
  %add.i.i = add i64 %ts.sroa.2.8.extract.shift.i, %mul.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %add.i.i, !prof !307
  %and = and i32 %flags, 1
  %2 = xor i32 %and, 1
  %call4 = tail call i32 @hrtimer_nanosleep(i64 noundef %retval.0.i.i, i32 noundef %2, i32 noundef %which_clock) #10
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_get_monotonic_raw(i32 noundef %which_clock, ptr noundef %tp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ktime_get_raw_ts64(ptr noundef %tp) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_raw_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_get_coarse_res(i32 noundef %which_clock, ptr nocapture noundef writeonly %tp) #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef 10000000) #10
  %0 = call ptr @memcpy(ptr %tp, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_get_realtime_coarse(i32 noundef %which_clock, ptr noundef %tp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ktime_get_coarse_real_ts64(ptr noundef %tp) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_get_monotonic_coarse(i32 noundef %which_clock, ptr noundef %tp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ktime_get_coarse_ts64(ptr noundef %tp) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_get_boottime_timespec(i32 noundef %which_clock, ptr nocapture noundef writeonly %tp) #1 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #10
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, i64 noundef %call.i.i) #10
  %0 = call ptr @memcpy(ptr %tp, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @posix_get_boottime_ktime(i32 noundef %which_clock) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #10
  ret i64 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_get_tai_timespec(i32 noundef %which_clock, ptr nocapture noundef writeonly %tp) #1 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #10
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 2) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, i64 noundef %call.i.i) #10
  %0 = call ptr @memcpy(ptr %tp, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @posix_get_tai_ktime(i32 noundef %which_clock) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 2) #10
  ret i64 %call.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 169)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 169)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !48, !49, !50, !51, !52, !54, !55, !56, !57, !58, !59, !60, !61, !62, !64, !65, !66, !67, !68, !69, !70, !71, !72, !74, !75, !76, !77, !78, !79, !80, !81, !82, !84, !85, !86, !87, !88, !89, !90, !91, !92, !94, !95, !96, !97, !98, !99, !100, !101, !102, !104, !105, !106, !107, !108, !109, !110, !111, !112, !114, !115, !116, !117, !118, !119, !120, !121, !122, !124, !125, !126, !127, !128, !129, !130, !131, !132, !134, !135, !136, !137, !138, !139, !140, !141, !142, !144, !145, !146, !147, !148, !149, !150, !151, !152, !154, !155, !156, !157, !158, !159, !160, !161, !162, !164, !165, !166, !167, !168, !169, !170, !171, !172, !174, !176, !177, !178, !179, !180, !181, !182, !183, !184, !186, !187, !189, !191, !193, !194, !196, !197, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !212, !213, !214, !215, !216, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !232, !234, !235, !236, !237, !238, !239, !240, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !275, !277, !279, !281, !283, !285, !287}
!llvm.named.register.sp = !{!289}
!llvm.module.flags = !{!290, !291, !292, !293, !294, !295, !296, !297}
!llvm.ident = !{!298}

!0 = !{ptr @__initcall__kmod_posix_timers__259_280_init_posix_timers6, !1, !"__initcall__kmod_posix_timers__259_280_init_posix_timers6", i1 false, i1 false}
!1 = !{!"../kernel/time/posix-timers.c", i32 280, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/time/posix-timers.c", i32 577, i32 1}
!4 = !{ptr @event_enter__timer_create, !3, !"event_enter__timer_create", i1 false, i1 false}
!5 = !{ptr @__event_enter__timer_create, !3, !"__event_enter__timer_create", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @event_exit__timer_create, !3, !"event_exit__timer_create", i1 false, i1 false}
!8 = !{ptr @__event_exit__timer_create, !3, !"__event_exit__timer_create", i1 false, i1 false}
!9 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__syscall_meta__timer_create, !3, !"__syscall_meta__timer_create", i1 false, i1 false}
!11 = !{ptr @__p_syscall_meta__timer_create, !3, !"__p_syscall_meta__timer_create", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/time/posix-timers.c", i32 738, i32 1}
!14 = !{ptr @event_enter__timer_gettime, !13, !"event_enter__timer_gettime", i1 false, i1 false}
!15 = !{ptr @__event_enter__timer_gettime, !13, !"__event_enter__timer_gettime", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @event_exit__timer_gettime, !13, !"event_exit__timer_gettime", i1 false, i1 false}
!18 = !{ptr @__event_exit__timer_gettime, !13, !"__event_exit__timer_gettime", i1 false, i1 false}
!19 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__syscall_meta__timer_gettime, !13, !"__syscall_meta__timer_gettime", i1 false, i1 false}
!21 = !{ptr @__p_syscall_meta__timer_gettime, !13, !"__p_syscall_meta__timer_gettime", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/time/posix-timers.c", i32 753, i32 1}
!24 = !{ptr @event_enter__timer_gettime32, !23, !"event_enter__timer_gettime32", i1 false, i1 false}
!25 = !{ptr @__event_enter__timer_gettime32, !23, !"__event_enter__timer_gettime32", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @event_exit__timer_gettime32, !23, !"event_exit__timer_gettime32", i1 false, i1 false}
!28 = !{ptr @__event_exit__timer_gettime32, !23, !"__event_exit__timer_gettime32", i1 false, i1 false}
!29 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__syscall_meta__timer_gettime32, !23, !"__syscall_meta__timer_gettime32", i1 false, i1 false}
!31 = !{ptr @__p_syscall_meta__timer_gettime32, !23, !"__p_syscall_meta__timer_gettime32", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/time/posix-timers.c", i32 777, i32 1}
!34 = !{ptr @event_enter__timer_getoverrun, !33, !"event_enter__timer_getoverrun", i1 false, i1 false}
!35 = !{ptr @__event_enter__timer_getoverrun, !33, !"__event_enter__timer_getoverrun", i1 false, i1 false}
!36 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @event_exit__timer_getoverrun, !33, !"event_exit__timer_getoverrun", i1 false, i1 false}
!38 = !{ptr @__event_exit__timer_getoverrun, !33, !"__event_exit__timer_getoverrun", i1 false, i1 false}
!39 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @__syscall_meta__timer_getoverrun, !33, !"__syscall_meta__timer_getoverrun", i1 false, i1 false}
!41 = !{ptr @__p_syscall_meta__timer_getoverrun, !33, !"__p_syscall_meta__timer_getoverrun", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/time/posix-timers.c", i32 938, i32 1}
!44 = !{ptr @event_enter__timer_settime, !43, !"event_enter__timer_settime", i1 false, i1 false}
!45 = !{ptr @__event_enter__timer_settime, !43, !"__event_enter__timer_settime", i1 false, i1 false}
!46 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @event_exit__timer_settime, !43, !"event_exit__timer_settime", i1 false, i1 false}
!48 = !{ptr @__event_exit__timer_settime, !43, !"__event_exit__timer_settime", i1 false, i1 false}
!49 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @__syscall_meta__timer_settime, !43, !"__syscall_meta__timer_settime", i1 false, i1 false}
!51 = !{ptr @__p_syscall_meta__timer_settime, !43, !"__p_syscall_meta__timer_settime", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/time/posix-timers.c", i32 961, i32 1}
!54 = !{ptr @event_enter__timer_settime32, !53, !"event_enter__timer_settime32", i1 false, i1 false}
!55 = !{ptr @__event_enter__timer_settime32, !53, !"__event_enter__timer_settime32", i1 false, i1 false}
!56 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @event_exit__timer_settime32, !53, !"event_exit__timer_settime32", i1 false, i1 false}
!58 = !{ptr @__event_exit__timer_settime32, !53, !"__event_exit__timer_settime32", i1 false, i1 false}
!59 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__syscall_meta__timer_settime32, !53, !"__syscall_meta__timer_settime32", i1 false, i1 false}
!61 = !{ptr @__p_syscall_meta__timer_settime32, !53, !"__p_syscall_meta__timer_settime32", i1 false, i1 false}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../kernel/time/posix-timers.c", i32 1004, i32 1}
!64 = !{ptr @event_enter__timer_delete, !63, !"event_enter__timer_delete", i1 false, i1 false}
!65 = !{ptr @__event_enter__timer_delete, !63, !"__event_enter__timer_delete", i1 false, i1 false}
!66 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @event_exit__timer_delete, !63, !"event_exit__timer_delete", i1 false, i1 false}
!68 = !{ptr @__event_exit__timer_delete, !63, !"__event_exit__timer_delete", i1 false, i1 false}
!69 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @__syscall_meta__timer_delete, !63, !"__syscall_meta__timer_delete", i1 false, i1 false}
!71 = !{ptr @__p_syscall_meta__timer_delete, !63, !"__p_syscall_meta__timer_delete", i1 false, i1 false}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../kernel/time/posix-timers.c", i32 1067, i32 1}
!74 = !{ptr @event_enter__clock_settime, !73, !"event_enter__clock_settime", i1 false, i1 false}
!75 = !{ptr @__event_enter__clock_settime, !73, !"__event_enter__clock_settime", i1 false, i1 false}
!76 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @event_exit__clock_settime, !73, !"event_exit__clock_settime", i1 false, i1 false}
!78 = !{ptr @__event_exit__clock_settime, !73, !"__event_exit__clock_settime", i1 false, i1 false}
!79 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @__syscall_meta__clock_settime, !73, !"__syscall_meta__clock_settime", i1 false, i1 false}
!81 = !{ptr @__p_syscall_meta__clock_settime, !73, !"__p_syscall_meta__clock_settime", i1 false, i1 false}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/time/posix-timers.c", i32 1082, i32 1}
!84 = !{ptr @event_enter__clock_gettime, !83, !"event_enter__clock_gettime", i1 false, i1 false}
!85 = !{ptr @__event_enter__clock_gettime, !83, !"__event_enter__clock_gettime", i1 false, i1 false}
!86 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @event_exit__clock_gettime, !83, !"event_exit__clock_gettime", i1 false, i1 false}
!88 = !{ptr @__event_exit__clock_gettime, !83, !"__event_exit__clock_gettime", i1 false, i1 false}
!89 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @__syscall_meta__clock_gettime, !83, !"__syscall_meta__clock_gettime", i1 false, i1 false}
!91 = !{ptr @__p_syscall_meta__clock_gettime, !83, !"__p_syscall_meta__clock_gettime", i1 false, i1 false}
!92 = !{ptr @.str.27, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../kernel/time/posix-timers.c", i32 1112, i32 1}
!94 = !{ptr @event_enter__clock_adjtime, !93, !"event_enter__clock_adjtime", i1 false, i1 false}
!95 = !{ptr @__event_enter__clock_adjtime, !93, !"__event_enter__clock_adjtime", i1 false, i1 false}
!96 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @event_exit__clock_adjtime, !93, !"event_exit__clock_adjtime", i1 false, i1 false}
!98 = !{ptr @__event_exit__clock_adjtime, !93, !"__event_exit__clock_adjtime", i1 false, i1 false}
!99 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @__syscall_meta__clock_adjtime, !93, !"__syscall_meta__clock_adjtime", i1 false, i1 false}
!101 = !{ptr @__p_syscall_meta__clock_adjtime, !93, !"__p_syscall_meta__clock_adjtime", i1 false, i1 false}
!102 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../kernel/time/posix-timers.c", i32 1129, i32 1}
!104 = !{ptr @event_enter__clock_getres, !103, !"event_enter__clock_getres", i1 false, i1 false}
!105 = !{ptr @__event_enter__clock_getres, !103, !"__event_enter__clock_getres", i1 false, i1 false}
!106 = !{ptr @.str.31, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @event_exit__clock_getres, !103, !"event_exit__clock_getres", i1 false, i1 false}
!108 = !{ptr @__event_exit__clock_getres, !103, !"__event_exit__clock_getres", i1 false, i1 false}
!109 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @__syscall_meta__clock_getres, !103, !"__syscall_meta__clock_getres", i1 false, i1 false}
!111 = !{ptr @__p_syscall_meta__clock_getres, !103, !"__p_syscall_meta__clock_getres", i1 false, i1 false}
!112 = !{ptr @.str.33, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../kernel/time/posix-timers.c", i32 1149, i32 1}
!114 = !{ptr @event_enter__clock_settime32, !113, !"event_enter__clock_settime32", i1 false, i1 false}
!115 = !{ptr @__event_enter__clock_settime32, !113, !"__event_enter__clock_settime32", i1 false, i1 false}
!116 = !{ptr @.str.34, !113, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @event_exit__clock_settime32, !113, !"event_exit__clock_settime32", i1 false, i1 false}
!118 = !{ptr @__event_exit__clock_settime32, !113, !"__event_exit__clock_settime32", i1 false, i1 false}
!119 = !{ptr @.str.35, !113, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @__syscall_meta__clock_settime32, !113, !"__syscall_meta__clock_settime32", i1 false, i1 false}
!121 = !{ptr @__p_syscall_meta__clock_settime32, !113, !"__p_syscall_meta__clock_settime32", i1 false, i1 false}
!122 = !{ptr @.str.36, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../kernel/time/posix-timers.c", i32 1164, i32 1}
!124 = !{ptr @event_enter__clock_gettime32, !123, !"event_enter__clock_gettime32", i1 false, i1 false}
!125 = !{ptr @__event_enter__clock_gettime32, !123, !"__event_enter__clock_gettime32", i1 false, i1 false}
!126 = !{ptr @.str.37, !123, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @event_exit__clock_gettime32, !123, !"event_exit__clock_gettime32", i1 false, i1 false}
!128 = !{ptr @__event_exit__clock_gettime32, !123, !"__event_exit__clock_gettime32", i1 false, i1 false}
!129 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @__syscall_meta__clock_gettime32, !123, !"__syscall_meta__clock_gettime32", i1 false, i1 false}
!131 = !{ptr @__p_syscall_meta__clock_gettime32, !123, !"__p_syscall_meta__clock_gettime32", i1 false, i1 false}
!132 = !{ptr @.str.39, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../kernel/time/posix-timers.c", i32 1182, i32 1}
!134 = !{ptr @event_enter__clock_adjtime32, !133, !"event_enter__clock_adjtime32", i1 false, i1 false}
!135 = !{ptr @__event_enter__clock_adjtime32, !133, !"__event_enter__clock_adjtime32", i1 false, i1 false}
!136 = !{ptr @.str.40, !133, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @event_exit__clock_adjtime32, !133, !"event_exit__clock_adjtime32", i1 false, i1 false}
!138 = !{ptr @__event_exit__clock_adjtime32, !133, !"__event_exit__clock_adjtime32", i1 false, i1 false}
!139 = !{ptr @.str.41, !133, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @__syscall_meta__clock_adjtime32, !133, !"__syscall_meta__clock_adjtime32", i1 false, i1 false}
!141 = !{ptr @__p_syscall_meta__clock_adjtime32, !133, !"__p_syscall_meta__clock_adjtime32", i1 false, i1 false}
!142 = !{ptr @.str.42, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../kernel/time/posix-timers.c", i32 1200, i32 1}
!144 = !{ptr @event_enter__clock_getres_time32, !143, !"event_enter__clock_getres_time32", i1 false, i1 false}
!145 = !{ptr @__event_enter__clock_getres_time32, !143, !"__event_enter__clock_getres_time32", i1 false, i1 false}
!146 = !{ptr @.str.43, !143, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @event_exit__clock_getres_time32, !143, !"event_exit__clock_getres_time32", i1 false, i1 false}
!148 = !{ptr @__event_exit__clock_getres_time32, !143, !"__event_exit__clock_getres_time32", i1 false, i1 false}
!149 = !{ptr @.str.44, !143, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @__syscall_meta__clock_getres_time32, !143, !"__syscall_meta__clock_getres_time32", i1 false, i1 false}
!151 = !{ptr @__p_syscall_meta__clock_getres_time32, !143, !"__p_syscall_meta__clock_getres_time32", i1 false, i1 false}
!152 = !{ptr @.str.45, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../kernel/time/posix-timers.c", i32 1245, i32 1}
!154 = !{ptr @event_enter__clock_nanosleep, !153, !"event_enter__clock_nanosleep", i1 false, i1 false}
!155 = !{ptr @__event_enter__clock_nanosleep, !153, !"__event_enter__clock_nanosleep", i1 false, i1 false}
!156 = !{ptr @.str.46, !153, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @event_exit__clock_nanosleep, !153, !"event_exit__clock_nanosleep", i1 false, i1 false}
!158 = !{ptr @__event_exit__clock_nanosleep, !153, !"__event_exit__clock_nanosleep", i1 false, i1 false}
!159 = !{ptr @.str.47, !153, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @__syscall_meta__clock_nanosleep, !153, !"__syscall_meta__clock_nanosleep", i1 false, i1 false}
!161 = !{ptr @__p_syscall_meta__clock_nanosleep, !153, !"__p_syscall_meta__clock_nanosleep", i1 false, i1 false}
!162 = !{ptr @.str.48, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../kernel/time/posix-timers.c", i32 1272, i32 1}
!164 = !{ptr @event_enter__clock_nanosleep_time32, !163, !"event_enter__clock_nanosleep_time32", i1 false, i1 false}
!165 = !{ptr @__event_enter__clock_nanosleep_time32, !163, !"__event_enter__clock_nanosleep_time32", i1 false, i1 false}
!166 = !{ptr @.str.49, !163, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @event_exit__clock_nanosleep_time32, !163, !"event_exit__clock_nanosleep_time32", i1 false, i1 false}
!168 = !{ptr @__event_exit__clock_nanosleep_time32, !163, !"__event_exit__clock_nanosleep_time32", i1 false, i1 false}
!169 = !{ptr @.str.50, !163, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @__syscall_meta__clock_nanosleep_time32, !163, !"__syscall_meta__clock_nanosleep_time32", i1 false, i1 false}
!171 = !{ptr @__p_syscall_meta__clock_nanosleep_time32, !163, !"__p_syscall_meta__clock_nanosleep_time32", i1 false, i1 false}
!172 = !{ptr @.str.51, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../kernel/time/posix-timers.c", i32 275, i32 41}
!174 = !{ptr @posix_timers_cache, !175, !"posix_timers_cache", i1 false, i1 false}
!175 = !{!"../kernel/time/posix-timers.c", i32 50, i32 27}
!176 = !{ptr @.str.52, !3, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.53, !3, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.54, !3, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @types__timer_create, !3, !"types__timer_create", i1 false, i1 false}
!180 = !{ptr @.str.55, !3, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.56, !3, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.57, !3, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @args__timer_create, !3, !"args__timer_create", i1 false, i1 false}
!184 = distinct !{null, !185, !"__already_done", i1 false, i1 false}
!185 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!186 = distinct !{null, !185, !"<string literal>", i1 false, i1 false}
!187 = distinct !{null, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!189 = !{ptr @.str.60, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!191 = !{ptr @do_timer_create.__key, !192, !"__key", i1 false, i1 false}
!192 = !{!"../kernel/time/posix-timers.c", i32 515, i32 2}
!193 = !{ptr @.str.61, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.62, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../kernel/time/posix-timers.c", i32 53, i32 8}
!196 = !{ptr @hash_lock, !195, !"hash_lock", i1 false, i1 false}
!197 = !{ptr @posix_timers_hashtable, !198, !"posix_timers_hashtable", i1 false, i1 false}
!198 = !{!"../kernel/time/posix-timers.c", i32 52, i32 8}
!199 = distinct !{null, !200, !"__warned", i1 false, i1 false}
!200 = !{!"../kernel/time/posix-timers.c", i32 124, i32 2}
!201 = !{ptr @.str.63, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.64, !200, !"<string literal>", i1 false, i1 false}
!203 = distinct !{null, !204, !"__warned", i1 false, i1 false}
!204 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!205 = !{ptr @.str.65, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.66, !204, !"<string literal>", i1 false, i1 false}
!207 = distinct !{null, !208, !"__warned", i1 false, i1 false}
!208 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!209 = !{ptr @.str.67, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.68, !13, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.69, !13, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @types__timer_gettime, !13, !"types__timer_gettime", i1 false, i1 false}
!213 = !{ptr @.str.70, !13, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.71, !13, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @args__timer_gettime, !13, !"args__timer_gettime", i1 false, i1 false}
!216 = distinct !{null, !217, !"__already_done", i1 false, i1 false}
!217 = !{!"../kernel/time/posix-timers.c", i32 728, i32 6}
!218 = !{ptr @.str.72, !23, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @types__timer_gettime32, !23, !"types__timer_gettime32", i1 false, i1 false}
!220 = !{ptr @args__timer_gettime32, !23, !"args__timer_gettime32", i1 false, i1 false}
!221 = !{ptr @types__timer_getoverrun, !33, !"types__timer_getoverrun", i1 false, i1 false}
!222 = !{ptr @args__timer_getoverrun, !33, !"args__timer_getoverrun", i1 false, i1 false}
!223 = !{ptr @.str.73, !43, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.74, !43, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @types__timer_settime, !43, !"types__timer_settime", i1 false, i1 false}
!226 = !{ptr @.str.75, !43, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.76, !43, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.77, !43, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @args__timer_settime, !43, !"args__timer_settime", i1 false, i1 false}
!230 = distinct !{null, !231, !"__already_done", i1 false, i1 false}
!231 = !{!"../kernel/time/posix-timers.c", i32 920, i32 6}
!232 = distinct !{null, !233, !"__already_done", i1 false, i1 false}
!233 = !{!"../kernel/time/posix-timers.c", i32 849, i32 7}
!234 = !{ptr @types__timer_settime32, !53, !"types__timer_settime32", i1 false, i1 false}
!235 = !{ptr @.str.78, !53, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.79, !53, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @args__timer_settime32, !53, !"args__timer_settime32", i1 false, i1 false}
!238 = !{ptr @types__timer_delete, !63, !"types__timer_delete", i1 false, i1 false}
!239 = !{ptr @args__timer_delete, !63, !"args__timer_delete", i1 false, i1 false}
!240 = distinct !{null, !241, !"__already_done", i1 false, i1 false}
!241 = !{!"../kernel/time/posix-timers.c", i32 998, i32 6}
!242 = !{ptr @.str.80, !73, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @types__clock_settime, !73, !"types__clock_settime", i1 false, i1 false}
!244 = !{ptr @.str.81, !73, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @args__clock_settime, !73, !"args__clock_settime", i1 false, i1 false}
!246 = !{ptr @.str.82, !83, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @types__clock_gettime, !83, !"types__clock_gettime", i1 false, i1 false}
!248 = !{ptr @args__clock_gettime, !83, !"args__clock_gettime", i1 false, i1 false}
!249 = !{ptr @.str.83, !93, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @types__clock_adjtime, !93, !"types__clock_adjtime", i1 false, i1 false}
!251 = !{ptr @.str.84, !93, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @args__clock_adjtime, !93, !"args__clock_adjtime", i1 false, i1 false}
!253 = !{ptr @types__clock_getres, !103, !"types__clock_getres", i1 false, i1 false}
!254 = !{ptr @args__clock_getres, !103, !"args__clock_getres", i1 false, i1 false}
!255 = !{ptr @.str.85, !113, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.86, !113, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @types__clock_settime32, !113, !"types__clock_settime32", i1 false, i1 false}
!258 = !{ptr @args__clock_settime32, !113, !"args__clock_settime32", i1 false, i1 false}
!259 = !{ptr @types__clock_gettime32, !123, !"types__clock_gettime32", i1 false, i1 false}
!260 = !{ptr @args__clock_gettime32, !123, !"args__clock_gettime32", i1 false, i1 false}
!261 = !{ptr @.str.87, !133, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @types__clock_adjtime32, !133, !"types__clock_adjtime32", i1 false, i1 false}
!263 = !{ptr @.str.88, !133, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @args__clock_adjtime32, !133, !"args__clock_adjtime32", i1 false, i1 false}
!265 = !{ptr @types__clock_getres_time32, !143, !"types__clock_getres_time32", i1 false, i1 false}
!266 = !{ptr @args__clock_getres_time32, !143, !"args__clock_getres_time32", i1 false, i1 false}
!267 = !{ptr @types__clock_nanosleep, !153, !"types__clock_nanosleep", i1 false, i1 false}
!268 = !{ptr @.str.89, !153, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.90, !153, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @args__clock_nanosleep, !153, !"args__clock_nanosleep", i1 false, i1 false}
!271 = !{ptr @types__clock_nanosleep_time32, !163, !"types__clock_nanosleep_time32", i1 false, i1 false}
!272 = !{ptr @args__clock_nanosleep_time32, !163, !"args__clock_nanosleep_time32", i1 false, i1 false}
!273 = !{ptr @posix_clocks, !274, !"posix_clocks", i1 false, i1 false}
!274 = !{!"../kernel/time/posix-timers.c", i32 1384, i32 37}
!275 = !{ptr @clock_realtime, !276, !"clock_realtime", i1 false, i1 false}
!276 = !{!"../kernel/time/posix-timers.c", i32 1299, i32 29}
!277 = !{ptr @clock_monotonic, !278, !"clock_monotonic", i1 false, i1 false}
!278 = !{!"../kernel/time/posix-timers.c", i32 1318, i32 29}
!279 = !{ptr @clock_monotonic_raw, !280, !"clock_monotonic_raw", i1 false, i1 false}
!280 = !{!"../kernel/time/posix-timers.c", i32 1335, i32 29}
!281 = !{ptr @clock_realtime_coarse, !282, !"clock_realtime_coarse", i1 false, i1 false}
!282 = !{!"../kernel/time/posix-timers.c", i32 1340, i32 29}
!283 = !{ptr @clock_monotonic_coarse, !284, !"clock_monotonic_coarse", i1 false, i1 false}
!284 = !{!"../kernel/time/posix-timers.c", i32 1345, i32 29}
!285 = !{ptr @clock_boottime, !286, !"clock_boottime", i1 false, i1 false}
!286 = !{!"../kernel/time/posix-timers.c", i32 1367, i32 29}
!287 = !{ptr @clock_tai, !288, !"clock_tai", i1 false, i1 false}
!288 = !{!"../kernel/time/posix-timers.c", i32 1350, i32 29}
!289 = !{!"sp"}
!290 = !{i32 1, !"wchar_size", i32 2}
!291 = !{i32 1, !"min_enum_size", i32 4}
!292 = !{i32 8, !"branch-target-enforcement", i32 0}
!293 = !{i32 8, !"sign-return-address", i32 0}
!294 = !{i32 8, !"sign-return-address-all", i32 0}
!295 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!296 = !{i32 7, !"uwtable", i32 1}
!297 = !{i32 7, !"frame-pointer", i32 2}
!298 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!299 = !{!"auto-init"}
!300 = !{i64 2150036673}
!301 = !{i64 2150036939}
!302 = !{i64 2152761570, i64 2152761595}
!303 = !{!"branch_weights", i32 2000, i32 1}
!304 = !{i64 5257125}
!305 = !{i64 5257322}
!306 = !{i64 2152742555}
!307 = !{!"branch_weights", i32 1, i32 2000}
!308 = !{i64 965660, i64 965677}
!309 = !{i64 2151600841}
!310 = !{i64 2148702870, i64 2148702902, i64 2148702931, i64 2148702965, i64 2148702996, i64 2148703019}
!311 = !{i64 2152762251, i64 2152762276}
!312 = !{i64 2151721202}
!313 = !{i64 2151721044}
