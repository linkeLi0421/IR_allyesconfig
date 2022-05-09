; ModuleID = '/llk/IR_all_yes/kernel/uid16.c_pt.bc'
source_filename = "../kernel/uid16.c"
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.43 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.43 = type { %struct.callback_head }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }

@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_chown16\00", [46 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__chown16 = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 3, ptr @types__chown16, ptr @args__chown16, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__chown16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__chown16, i64 20) }, ptr @event_enter__chown16, ptr @event_exit__chown16 }, align 4
@event_enter__chown16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__chown16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__chown16 = internal global ptr @event_enter__chown16, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_chown16\00", [47 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__chown16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__chown16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__chown16 = internal global ptr @event_exit__chown16, section "_ftrace_events", align 4
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_chown16\00", [20 x i8] zeroinitializer }, align 32
@types__chown16 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.69, ptr @.str.70, ptr @.str.71], [20 x i8] zeroinitializer }, align 32
@args__chown16 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.72, ptr @.str.73, ptr @.str.74], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__chown16 = internal global ptr @__syscall_meta__chown16, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_lchown16\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__lchown16 = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 3, ptr @types__lchown16, ptr @args__lchown16, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__lchown16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__lchown16, i64 20) }, ptr @event_enter__lchown16, ptr @event_exit__lchown16 }, align 4
@event_enter__lchown16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__lchown16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__lchown16 = internal global ptr @event_enter__lchown16, section "_ftrace_events", align 4
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_lchown16\00", [46 x i8] zeroinitializer }, align 32
@event_exit__lchown16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__lchown16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__lchown16 = internal global ptr @event_exit__lchown16, section "_ftrace_events", align 4
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_lchown16\00", [19 x i8] zeroinitializer }, align 32
@types__lchown16 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.69, ptr @.str.70, ptr @.str.71], [20 x i8] zeroinitializer }, align 32
@args__lchown16 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.72, ptr @.str.73, ptr @.str.74], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__lchown16 = internal global ptr @__syscall_meta__lchown16, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_fchown16\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__fchown16 = internal global %struct.syscall_metadata { ptr @.str.8, i32 -1, i32 3, ptr @types__fchown16, ptr @args__fchown16, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fchown16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fchown16, i64 20) }, ptr @event_enter__fchown16, ptr @event_exit__fchown16 }, align 4
@event_enter__fchown16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__fchown16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fchown16 = internal global ptr @event_enter__fchown16, section "_ftrace_events", align 4
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_fchown16\00", [46 x i8] zeroinitializer }, align 32
@event_exit__fchown16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__fchown16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fchown16 = internal global ptr @event_exit__fchown16, section "_ftrace_events", align 4
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_fchown16\00", [19 x i8] zeroinitializer }, align 32
@types__fchown16 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.75, ptr @.str.70, ptr @.str.71], [20 x i8] zeroinitializer }, align 32
@args__fchown16 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.76, ptr @.str.73, ptr @.str.74], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fchown16 = internal global ptr @__syscall_meta__fchown16, section "__syscalls_metadata", align 4
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_setregid16\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__setregid16 = internal global %struct.syscall_metadata { ptr @.str.11, i32 -1, i32 2, ptr @types__setregid16, ptr @args__setregid16, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setregid16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setregid16, i64 20) }, ptr @event_enter__setregid16, ptr @event_exit__setregid16 }, align 4
@event_enter__setregid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setregid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setregid16 = internal global ptr @event_enter__setregid16, section "_ftrace_events", align 4
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_setregid16\00", [44 x i8] zeroinitializer }, align 32
@event_exit__setregid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setregid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setregid16 = internal global ptr @event_exit__setregid16, section "_ftrace_events", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_setregid16\00", [17 x i8] zeroinitializer }, align 32
@types__setregid16 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.71, ptr @.str.71], [24 x i8] zeroinitializer }, align 32
@args__setregid16 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.77, ptr @.str.78], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setregid16 = internal global ptr @__syscall_meta__setregid16, section "__syscalls_metadata", align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_setgid16\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__setgid16 = internal global %struct.syscall_metadata { ptr @.str.14, i32 -1, i32 1, ptr @types__setgid16, ptr @args__setgid16, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setgid16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setgid16, i64 20) }, ptr @event_enter__setgid16, ptr @event_exit__setgid16 }, align 4
@event_enter__setgid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setgid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setgid16 = internal global ptr @event_enter__setgid16, section "_ftrace_events", align 4
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_setgid16\00", [46 x i8] zeroinitializer }, align 32
@event_exit__setgid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setgid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setgid16 = internal global ptr @event_exit__setgid16, section "_ftrace_events", align 4
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_setgid16\00", [19 x i8] zeroinitializer }, align 32
@types__setgid16 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.71], [28 x i8] zeroinitializer }, align 32
@args__setgid16 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.79], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setgid16 = internal global ptr @__syscall_meta__setgid16, section "__syscalls_metadata", align 4
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_setreuid16\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__setreuid16 = internal global %struct.syscall_metadata { ptr @.str.17, i32 -1, i32 2, ptr @types__setreuid16, ptr @args__setreuid16, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setreuid16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setreuid16, i64 20) }, ptr @event_enter__setreuid16, ptr @event_exit__setreuid16 }, align 4
@event_enter__setreuid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setreuid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setreuid16 = internal global ptr @event_enter__setreuid16, section "_ftrace_events", align 4
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_setreuid16\00", [44 x i8] zeroinitializer }, align 32
@event_exit__setreuid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.16 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setreuid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setreuid16 = internal global ptr @event_exit__setreuid16, section "_ftrace_events", align 4
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_setreuid16\00", [17 x i8] zeroinitializer }, align 32
@types__setreuid16 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.70, ptr @.str.70], [24 x i8] zeroinitializer }, align 32
@args__setreuid16 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.80, ptr @.str.81], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setreuid16 = internal global ptr @__syscall_meta__setreuid16, section "__syscalls_metadata", align 4
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_setuid16\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__setuid16 = internal global %struct.syscall_metadata { ptr @.str.20, i32 -1, i32 1, ptr @types__setuid16, ptr @args__setuid16, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setuid16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setuid16, i64 20) }, ptr @event_enter__setuid16, ptr @event_exit__setuid16 }, align 4
@event_enter__setuid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.18 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setuid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setuid16 = internal global ptr @event_enter__setuid16, section "_ftrace_events", align 4
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_setuid16\00", [46 x i8] zeroinitializer }, align 32
@event_exit__setuid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.19 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setuid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setuid16 = internal global ptr @event_exit__setuid16, section "_ftrace_events", align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_setuid16\00", [19 x i8] zeroinitializer }, align 32
@types__setuid16 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.70], [28 x i8] zeroinitializer }, align 32
@args__setuid16 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.82], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setuid16 = internal global ptr @__syscall_meta__setuid16, section "__syscalls_metadata", align 4
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_setresuid16\00", [42 x i8] zeroinitializer }, align 32
@__syscall_meta__setresuid16 = internal global %struct.syscall_metadata { ptr @.str.23, i32 -1, i32 3, ptr @types__setresuid16, ptr @args__setresuid16, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setresuid16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setresuid16, i64 20) }, ptr @event_enter__setresuid16, ptr @event_exit__setresuid16 }, align 4
@event_enter__setresuid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.21 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setresuid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setresuid16 = internal global ptr @event_enter__setresuid16, section "_ftrace_events", align 4
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_setresuid16\00", [43 x i8] zeroinitializer }, align 32
@event_exit__setresuid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.22 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setresuid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setresuid16 = internal global ptr @event_exit__setresuid16, section "_ftrace_events", align 4
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_setresuid16\00", [16 x i8] zeroinitializer }, align 32
@types__setresuid16 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.70, ptr @.str.70, ptr @.str.70], [20 x i8] zeroinitializer }, align 32
@args__setresuid16 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.80, ptr @.str.81, ptr @.str.83], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setresuid16 = internal global ptr @__syscall_meta__setresuid16, section "__syscalls_metadata", align 4
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_getresuid16\00", [42 x i8] zeroinitializer }, align 32
@__syscall_meta__getresuid16 = internal global %struct.syscall_metadata { ptr @.str.26, i32 -1, i32 3, ptr @types__getresuid16, ptr @args__getresuid16, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getresuid16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getresuid16, i64 20) }, ptr @event_enter__getresuid16, ptr @event_exit__getresuid16 }, align 4
@event_enter__getresuid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.24 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getresuid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getresuid16 = internal global ptr @event_enter__getresuid16, section "_ftrace_events", align 4
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_getresuid16\00", [43 x i8] zeroinitializer }, align 32
@event_exit__getresuid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.25 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getresuid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getresuid16 = internal global ptr @event_exit__getresuid16, section "_ftrace_events", align 4
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_getresuid16\00", [16 x i8] zeroinitializer }, align 32
@types__getresuid16 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.84, ptr @.str.84, ptr @.str.84], [20 x i8] zeroinitializer }, align 32
@args__getresuid16 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.85, ptr @.str.86, ptr @.str.87], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getresuid16 = internal global ptr @__syscall_meta__getresuid16, section "__syscalls_metadata", align 4
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_setresgid16\00", [42 x i8] zeroinitializer }, align 32
@__syscall_meta__setresgid16 = internal global %struct.syscall_metadata { ptr @.str.29, i32 -1, i32 3, ptr @types__setresgid16, ptr @args__setresgid16, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setresgid16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setresgid16, i64 20) }, ptr @event_enter__setresgid16, ptr @event_exit__setresgid16 }, align 4
@event_enter__setresgid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.27 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setresgid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setresgid16 = internal global ptr @event_enter__setresgid16, section "_ftrace_events", align 4
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_setresgid16\00", [43 x i8] zeroinitializer }, align 32
@event_exit__setresgid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.28 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setresgid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setresgid16 = internal global ptr @event_exit__setresgid16, section "_ftrace_events", align 4
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_setresgid16\00", [16 x i8] zeroinitializer }, align 32
@types__setresgid16 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.71, ptr @.str.71, ptr @.str.71], [20 x i8] zeroinitializer }, align 32
@args__setresgid16 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.77, ptr @.str.78, ptr @.str.89], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setresgid16 = internal global ptr @__syscall_meta__setresgid16, section "__syscalls_metadata", align 4
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_getresgid16\00", [42 x i8] zeroinitializer }, align 32
@__syscall_meta__getresgid16 = internal global %struct.syscall_metadata { ptr @.str.32, i32 -1, i32 3, ptr @types__getresgid16, ptr @args__getresgid16, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getresgid16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getresgid16, i64 20) }, ptr @event_enter__getresgid16, ptr @event_exit__getresgid16 }, align 4
@event_enter__getresgid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.30 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getresgid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getresgid16 = internal global ptr @event_enter__getresgid16, section "_ftrace_events", align 4
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_getresgid16\00", [43 x i8] zeroinitializer }, align 32
@event_exit__getresgid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.31 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getresgid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getresgid16 = internal global ptr @event_exit__getresgid16, section "_ftrace_events", align 4
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_getresgid16\00", [16 x i8] zeroinitializer }, align 32
@types__getresgid16 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.90, ptr @.str.90, ptr @.str.90], [20 x i8] zeroinitializer }, align 32
@args__getresgid16 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.91, ptr @.str.92, ptr @.str.93], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getresgid16 = internal global ptr @__syscall_meta__getresgid16, section "__syscalls_metadata", align 4
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_setfsuid16\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__setfsuid16 = internal global %struct.syscall_metadata { ptr @.str.35, i32 -1, i32 1, ptr @types__setfsuid16, ptr @args__setfsuid16, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setfsuid16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setfsuid16, i64 20) }, ptr @event_enter__setfsuid16, ptr @event_exit__setfsuid16 }, align 4
@event_enter__setfsuid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.33 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setfsuid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setfsuid16 = internal global ptr @event_enter__setfsuid16, section "_ftrace_events", align 4
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_setfsuid16\00", [44 x i8] zeroinitializer }, align 32
@event_exit__setfsuid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.34 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setfsuid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setfsuid16 = internal global ptr @event_exit__setfsuid16, section "_ftrace_events", align 4
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_setfsuid16\00", [17 x i8] zeroinitializer }, align 32
@types__setfsuid16 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.70], [28 x i8] zeroinitializer }, align 32
@args__setfsuid16 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.82], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setfsuid16 = internal global ptr @__syscall_meta__setfsuid16, section "__syscalls_metadata", align 4
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_setfsgid16\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__setfsgid16 = internal global %struct.syscall_metadata { ptr @.str.38, i32 -1, i32 1, ptr @types__setfsgid16, ptr @args__setfsgid16, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setfsgid16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setfsgid16, i64 20) }, ptr @event_enter__setfsgid16, ptr @event_exit__setfsgid16 }, align 4
@event_enter__setfsgid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.36 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setfsgid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setfsgid16 = internal global ptr @event_enter__setfsgid16, section "_ftrace_events", align 4
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_setfsgid16\00", [44 x i8] zeroinitializer }, align 32
@event_exit__setfsgid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.37 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setfsgid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setfsgid16 = internal global ptr @event_exit__setfsgid16, section "_ftrace_events", align 4
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_setfsgid16\00", [17 x i8] zeroinitializer }, align 32
@types__setfsgid16 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.71], [28 x i8] zeroinitializer }, align 32
@args__setfsgid16 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.79], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setfsgid16 = internal global ptr @__syscall_meta__setfsgid16, section "__syscalls_metadata", align 4
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_getgroups16\00", [42 x i8] zeroinitializer }, align 32
@__syscall_meta__getgroups16 = internal global %struct.syscall_metadata { ptr @.str.41, i32 -1, i32 2, ptr @types__getgroups16, ptr @args__getgroups16, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getgroups16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getgroups16, i64 20) }, ptr @event_enter__getgroups16, ptr @event_exit__getgroups16 }, align 4
@event_enter__getgroups16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.39 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getgroups16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getgroups16 = internal global ptr @event_enter__getgroups16, section "_ftrace_events", align 4
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_getgroups16\00", [43 x i8] zeroinitializer }, align 32
@event_exit__getgroups16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.40 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getgroups16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getgroups16 = internal global ptr @event_exit__getgroups16, section "_ftrace_events", align 4
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_getgroups16\00", [16 x i8] zeroinitializer }, align 32
@types__getgroups16 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.94, ptr @.str.90], [24 x i8] zeroinitializer }, align 32
@args__getgroups16 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.95, ptr @.str.96], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getgroups16 = internal global ptr @__syscall_meta__getgroups16, section "__syscalls_metadata", align 4
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_setgroups16\00", [42 x i8] zeroinitializer }, align 32
@__syscall_meta__setgroups16 = internal global %struct.syscall_metadata { ptr @.str.44, i32 -1, i32 2, ptr @types__setgroups16, ptr @args__setgroups16, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__setgroups16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__setgroups16, i64 20) }, ptr @event_enter__setgroups16, ptr @event_exit__setgroups16 }, align 4
@event_enter__setgroups16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.42 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setgroups16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__setgroups16 = internal global ptr @event_enter__setgroups16, section "_ftrace_events", align 4
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_setgroups16\00", [43 x i8] zeroinitializer }, align 32
@event_exit__setgroups16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.43 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__setgroups16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__setgroups16 = internal global ptr @event_exit__setgroups16, section "_ftrace_events", align 4
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_setgroups16\00", [16 x i8] zeroinitializer }, align 32
@types__setgroups16 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.94, ptr @.str.90], [24 x i8] zeroinitializer }, align 32
@args__setgroups16 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.95, ptr @.str.96], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__setgroups16 = internal global ptr @__syscall_meta__setgroups16, section "__syscalls_metadata", align 4
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_getuid16\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__getuid16 = internal global %struct.syscall_metadata { ptr @.str.47, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getuid16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getuid16, i64 20) }, ptr @event_enter__getuid16, ptr @event_exit__getuid16 }, align 4
@event_enter__getuid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.45 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getuid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getuid16 = internal global ptr @event_enter__getuid16, section "_ftrace_events", align 4
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_getuid16\00", [46 x i8] zeroinitializer }, align 32
@event_exit__getuid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.46 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getuid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getuid16 = internal global ptr @event_exit__getuid16, section "_ftrace_events", align 4
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_getuid16\00", [19 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getuid16 = internal global ptr @__syscall_meta__getuid16, section "__syscalls_metadata", align 4
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_geteuid16\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__geteuid16 = internal global %struct.syscall_metadata { ptr @.str.53, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__geteuid16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__geteuid16, i64 20) }, ptr @event_enter__geteuid16, ptr @event_exit__geteuid16 }, align 4
@event_enter__geteuid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.51 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__geteuid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__geteuid16 = internal global ptr @event_enter__geteuid16, section "_ftrace_events", align 4
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_geteuid16\00", [45 x i8] zeroinitializer }, align 32
@event_exit__geteuid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.52 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__geteuid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__geteuid16 = internal global ptr @event_exit__geteuid16, section "_ftrace_events", align 4
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_geteuid16\00", [18 x i8] zeroinitializer }, align 32
@__p_syscall_meta__geteuid16 = internal global ptr @__syscall_meta__geteuid16, section "__syscalls_metadata", align 4
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_getgid16\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__getgid16 = internal global %struct.syscall_metadata { ptr @.str.59, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getgid16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getgid16, i64 20) }, ptr @event_enter__getgid16, ptr @event_exit__getgid16 }, align 4
@event_enter__getgid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.57 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getgid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getgid16 = internal global ptr @event_enter__getgid16, section "_ftrace_events", align 4
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_getgid16\00", [46 x i8] zeroinitializer }, align 32
@event_exit__getgid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.58 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getgid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getgid16 = internal global ptr @event_exit__getgid16, section "_ftrace_events", align 4
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_getgid16\00", [19 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getgid16 = internal global ptr @__syscall_meta__getgid16, section "__syscalls_metadata", align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_getegid16\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__getegid16 = internal global %struct.syscall_metadata { ptr @.str.65, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__getegid16, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__getegid16, i64 20) }, ptr @event_enter__getegid16, ptr @event_exit__getegid16 }, align 4
@event_enter__getegid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.63 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getegid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__getegid16 = internal global ptr @event_enter__getegid16, section "_ftrace_events", align 4
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_getegid16\00", [45 x i8] zeroinitializer }, align 32
@event_exit__getegid16 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.64 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__getegid16, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__getegid16 = internal global ptr @event_exit__getegid16, section "_ftrace_events", align 4
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_getegid16\00", [18 x i8] zeroinitializer }, align 32
@__p_syscall_meta__getegid16 = internal global ptr @__syscall_meta__getegid16, section "__syscalls_metadata", align 4
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"old_uid_t\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"old_gid_t\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"filename\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"group\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rgid\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"egid\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gid\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ruid\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"euid\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uid\00", [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"suid\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"old_uid_t *\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ruidp\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"euidp\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"suidp\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kernel/uid16.c\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sgid\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"old_gid_t *\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgidp\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"egidp\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgidp\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gidsetsize\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"grouplist\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.100 = private unnamed_addr constant [21 x i8] c"event_enter__chown16\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"event_exit__chown16\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [15 x i8] c"types__chown16\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [14 x i8] c"args__chown16\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"event_enter__lchown16\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [21 x i8] c"event_exit__lchown16\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [16 x i8] c"types__lchown16\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [15 x i8] c"args__lchown16\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 28, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant [22 x i8] c"event_enter__fchown16\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [21 x i8] c"event_exit__fchown16\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [16 x i8] c"types__fchown16\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [15 x i8] c"args__fchown16\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [24 x i8] c"event_enter__setregid16\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [23 x i8] c"event_exit__setregid16\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [18 x i8] c"types__setregid16\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"args__setregid16\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [22 x i8] c"event_enter__setgid16\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [21 x i8] c"event_exit__setgid16\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [16 x i8] c"types__setgid16\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [15 x i8] c"args__setgid16\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [24 x i8] c"event_enter__setreuid16\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [23 x i8] c"event_exit__setreuid16\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [18 x i8] c"types__setreuid16\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"args__setreuid16\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [22 x i8] c"event_enter__setuid16\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [21 x i8] c"event_exit__setuid16\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [16 x i8] c"types__setuid16\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [15 x i8] c"args__setuid16\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [25 x i8] c"event_enter__setresuid16\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [24 x i8] c"event_exit__setresuid16\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [19 x i8] c"types__setresuid16\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [18 x i8] c"args__setresuid16\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [25 x i8] c"event_enter__getresuid16\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [24 x i8] c"event_exit__getresuid16\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [19 x i8] c"types__getresuid16\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [18 x i8] c"args__getresuid16\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [25 x i8] c"event_enter__setresgid16\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [24 x i8] c"event_exit__setresgid16\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [19 x i8] c"types__setresgid16\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [18 x i8] c"args__setresgid16\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [25 x i8] c"event_enter__getresgid16\00", align 1
@___asan_gen_.316 = private unnamed_addr constant [24 x i8] c"event_exit__getresgid16\00", align 1
@___asan_gen_.322 = private unnamed_addr constant [19 x i8] c"types__getresgid16\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [18 x i8] c"args__getresgid16\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [24 x i8] c"event_enter__setfsuid16\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [23 x i8] c"event_exit__setfsuid16\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [18 x i8] c"types__setfsuid16\00", align 1
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"args__setfsuid16\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 104, i32 1 }
@___asan_gen_.352 = private unnamed_addr constant [24 x i8] c"event_enter__setfsgid16\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [23 x i8] c"event_exit__setfsgid16\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [18 x i8] c"types__setfsgid16\00", align 1
@___asan_gen_.367 = private unnamed_addr constant [17 x i8] c"args__setfsgid16\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 109, i32 1 }
@___asan_gen_.373 = private unnamed_addr constant [25 x i8] c"event_enter__getgroups16\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [24 x i8] c"event_exit__getgroups16\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [19 x i8] c"types__getgroups16\00", align 1
@___asan_gen_.388 = private unnamed_addr constant [18 x i8] c"args__getgroups16\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [25 x i8] c"event_enter__setgroups16\00", align 1
@___asan_gen_.400 = private unnamed_addr constant [24 x i8] c"event_exit__setgroups16\00", align 1
@___asan_gen_.406 = private unnamed_addr constant [19 x i8] c"types__setgroups16\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [18 x i8] c"args__setgroups16\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 177, i32 1 }
@___asan_gen_.415 = private unnamed_addr constant [22 x i8] c"event_enter__getuid16\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [21 x i8] c"event_exit__getuid16\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 203, i32 1 }
@___asan_gen_.430 = private unnamed_addr constant [23 x i8] c"event_enter__geteuid16\00", align 1
@___asan_gen_.436 = private unnamed_addr constant [22 x i8] c"event_exit__geteuid16\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 208, i32 1 }
@___asan_gen_.445 = private unnamed_addr constant [22 x i8] c"event_enter__getgid16\00", align 1
@___asan_gen_.451 = private unnamed_addr constant [21 x i8] c"event_exit__getgid16\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 213, i32 1 }
@___asan_gen_.460 = private unnamed_addr constant [23 x i8] c"event_enter__getegid16\00", align 1
@___asan_gen_.466 = private unnamed_addr constant [22 x i8] c"event_exit__getegid16\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 218, i32 1 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 23, i32 1 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 33, i32 1 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 38, i32 1 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 43, i32 1 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 48, i32 1 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 53, i32 1 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 58, i32 1 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 64, i32 1 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 74, i32 19 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 81, i32 1 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 87, i32 1 }
@___asan_gen_.553 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.554 = private constant [18 x i8] c"../kernel/uid16.c\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.554, i32 154, i32 1 }
@llvm.compiler.used = appending global [229 x ptr] [ptr @__event_enter__chown16, ptr @__event_enter__fchown16, ptr @__event_enter__getegid16, ptr @__event_enter__geteuid16, ptr @__event_enter__getgid16, ptr @__event_enter__getgroups16, ptr @__event_enter__getresgid16, ptr @__event_enter__getresuid16, ptr @__event_enter__getuid16, ptr @__event_enter__lchown16, ptr @__event_enter__setfsgid16, ptr @__event_enter__setfsuid16, ptr @__event_enter__setgid16, ptr @__event_enter__setgroups16, ptr @__event_enter__setregid16, ptr @__event_enter__setresgid16, ptr @__event_enter__setresuid16, ptr @__event_enter__setreuid16, ptr @__event_enter__setuid16, ptr @__event_exit__chown16, ptr @__event_exit__fchown16, ptr @__event_exit__getegid16, ptr @__event_exit__geteuid16, ptr @__event_exit__getgid16, ptr @__event_exit__getgroups16, ptr @__event_exit__getresgid16, ptr @__event_exit__getresuid16, ptr @__event_exit__getuid16, ptr @__event_exit__lchown16, ptr @__event_exit__setfsgid16, ptr @__event_exit__setfsuid16, ptr @__event_exit__setgid16, ptr @__event_exit__setgroups16, ptr @__event_exit__setregid16, ptr @__event_exit__setresgid16, ptr @__event_exit__setresuid16, ptr @__event_exit__setreuid16, ptr @__event_exit__setuid16, ptr @__p_syscall_meta__chown16, ptr @__p_syscall_meta__fchown16, ptr @__p_syscall_meta__getegid16, ptr @__p_syscall_meta__geteuid16, ptr @__p_syscall_meta__getgid16, ptr @__p_syscall_meta__getgroups16, ptr @__p_syscall_meta__getresgid16, ptr @__p_syscall_meta__getresuid16, ptr @__p_syscall_meta__getuid16, ptr @__p_syscall_meta__lchown16, ptr @__p_syscall_meta__setfsgid16, ptr @__p_syscall_meta__setfsuid16, ptr @__p_syscall_meta__setgid16, ptr @__p_syscall_meta__setgroups16, ptr @__p_syscall_meta__setregid16, ptr @__p_syscall_meta__setresgid16, ptr @__p_syscall_meta__setresuid16, ptr @__p_syscall_meta__setreuid16, ptr @__p_syscall_meta__setuid16, ptr @__syscall_meta__chown16, ptr @__syscall_meta__fchown16, ptr @__syscall_meta__getegid16, ptr @__syscall_meta__geteuid16, ptr @__syscall_meta__getgid16, ptr @__syscall_meta__getgroups16, ptr @__syscall_meta__getresgid16, ptr @__syscall_meta__getresuid16, ptr @__syscall_meta__getuid16, ptr @__syscall_meta__lchown16, ptr @__syscall_meta__setfsgid16, ptr @__syscall_meta__setfsuid16, ptr @__syscall_meta__setgid16, ptr @__syscall_meta__setgroups16, ptr @__syscall_meta__setregid16, ptr @__syscall_meta__setresgid16, ptr @__syscall_meta__setresuid16, ptr @__syscall_meta__setreuid16, ptr @__syscall_meta__setuid16, ptr @event_enter__chown16, ptr @event_enter__fchown16, ptr @event_enter__getegid16, ptr @event_enter__geteuid16, ptr @event_enter__getgid16, ptr @event_enter__getgroups16, ptr @event_enter__getresgid16, ptr @event_enter__getresuid16, ptr @event_enter__getuid16, ptr @event_enter__lchown16, ptr @event_enter__setfsgid16, ptr @event_enter__setfsuid16, ptr @event_enter__setgid16, ptr @event_enter__setgroups16, ptr @event_enter__setregid16, ptr @event_enter__setresgid16, ptr @event_enter__setresuid16, ptr @event_enter__setreuid16, ptr @event_enter__setuid16, ptr @event_exit__chown16, ptr @event_exit__fchown16, ptr @event_exit__getegid16, ptr @event_exit__geteuid16, ptr @event_exit__getgid16, ptr @event_exit__getgroups16, ptr @event_exit__getresgid16, ptr @event_exit__getresuid16, ptr @event_exit__getuid16, ptr @event_exit__lchown16, ptr @event_exit__setfsgid16, ptr @event_exit__setfsuid16, ptr @event_exit__setgid16, ptr @event_exit__setgroups16, ptr @event_exit__setregid16, ptr @event_exit__setresgid16, ptr @event_exit__setresuid16, ptr @event_exit__setreuid16, ptr @event_exit__setuid16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__chown16, ptr @args__chown16, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__lchown16, ptr @args__lchown16, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @types__fchown16, ptr @args__fchown16, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @types__setregid16, ptr @args__setregid16, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @types__setgid16, ptr @args__setgid16, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @types__setreuid16, ptr @args__setreuid16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @types__setuid16, ptr @args__setuid16, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @types__setresuid16, ptr @args__setresuid16, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @types__getresuid16, ptr @args__getresuid16, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @types__setresgid16, ptr @args__setresgid16, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @types__getresgid16, ptr @args__getresgid16, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @types__setfsuid16, ptr @args__setfsuid16, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @types__setfsgid16, ptr @args__setfsgid16, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @types__getgroups16, ptr @args__getgroups16, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @types__setgroups16, ptr @args__setgroups16, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], section "llvm.metadata"
@0 = internal global [153 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__chown16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__chown16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__chown16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__chown16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__lchown16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__lchown16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__lchown16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__lchown16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fchown16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fchown16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fchown16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fchown16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setregid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setregid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setregid16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setregid16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setgid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setgid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setgid16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setgid16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setreuid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setreuid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setreuid16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setreuid16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setuid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setuid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setuid16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setuid16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setresuid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setresuid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setresuid16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setresuid16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getresuid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getresuid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__getresuid16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__getresuid16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setresgid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setresgid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setresgid16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setresgid16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getresgid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getresgid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__getresgid16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__getresgid16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setfsuid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setfsuid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setfsuid16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setfsuid16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setfsgid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setfsgid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setfsgid16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setfsgid16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getgroups16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getgroups16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__getgroups16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__getgroups16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__setgroups16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__setgroups16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__setgroups16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__setgroups16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getuid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getuid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__geteuid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__geteuid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getgid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getgid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__getegid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__getegid16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_chown16 = dso_local alias i32 (ptr, i16, i16), ptr @__se_sys_chown16
@sys_lchown16 = dso_local alias i32 (ptr, i16, i16), ptr @__se_sys_lchown16
@sys_fchown16 = dso_local alias i32 (i32, i16, i16), ptr @__se_sys_fchown16
@sys_setregid16 = dso_local alias i32 (i16, i16), ptr @__se_sys_setregid16
@sys_setgid16 = dso_local alias i32 (i16), ptr @__se_sys_setgid16
@sys_setreuid16 = dso_local alias i32 (i16, i16), ptr @__se_sys_setreuid16
@sys_setuid16 = dso_local alias i32 (i16), ptr @__se_sys_setuid16
@sys_setresuid16 = dso_local alias i32 (i16, i16, i16), ptr @__se_sys_setresuid16
@sys_getresuid16 = dso_local alias i32 (ptr, ptr, ptr), ptr @__se_sys_getresuid16
@sys_setresgid16 = dso_local alias i32 (i16, i16, i16), ptr @__se_sys_setresgid16
@sys_getresgid16 = dso_local alias i32 (ptr, ptr, ptr), ptr @__se_sys_getresgid16
@sys_setfsuid16 = dso_local alias i32 (i16), ptr @__se_sys_setfsuid16
@sys_setfsgid16 = dso_local alias i32 (i16), ptr @__se_sys_setfsgid16
@sys_getgroups16 = dso_local alias i32 (i32, ptr), ptr @__se_sys_getgroups16
@sys_setgroups16 = dso_local alias i32 (i32, ptr), ptr @__se_sys_setgroups16

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_chown16(i32 noundef %filename, i32 noundef %user, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  %conv = trunc i32 %user to i16
  %conv1 = trunc i32 %group to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv)
  %cmp.i = icmp eq i16 %conv, -1
  %conv.i = and i32 %user, 65535
  %spec.select.i = select i1 %cmp.i, i32 -1, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv1)
  %cmp4.i = icmp eq i16 %conv1, -1
  %conv3.i = and i32 %group, 65535
  %cond10.i = select i1 %cmp4.i, i32 -1, i32 %conv3.i
  %call.i.i = tail call i32 @do_fchownat(i32 noundef -100, ptr noundef %0, i32 noundef %spec.select.i, i32 noundef %cond10.i, i32 noundef 0) #4
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_lchown16(i32 noundef %filename, i32 noundef %user, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  %conv = trunc i32 %user to i16
  %conv1 = trunc i32 %group to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv)
  %cmp.i = icmp eq i16 %conv, -1
  %conv.i = and i32 %user, 65535
  %spec.select.i = select i1 %cmp.i, i32 -1, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv1)
  %cmp4.i = icmp eq i16 %conv1, -1
  %conv3.i = and i32 %group, 65535
  %cond10.i = select i1 %cmp4.i, i32 -1, i32 %conv3.i
  %call.i.i = tail call i32 @do_fchownat(i32 noundef -100, ptr noundef %0, i32 noundef %spec.select.i, i32 noundef %cond10.i, i32 noundef 256) #4
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fchown16(i32 noundef %fd, i32 noundef %user, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %user to i16
  %conv1 = trunc i32 %group to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv)
  %cmp.i = icmp eq i16 %conv, -1
  %conv.i = and i32 %user, 65535
  %spec.select.i = select i1 %cmp.i, i32 -1, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv1)
  %cmp4.i = icmp eq i16 %conv1, -1
  %conv3.i = and i32 %group, 65535
  %cond10.i = select i1 %cmp4.i, i32 -1, i32 %conv3.i
  %call.i = tail call i32 @ksys_fchown(i32 noundef %fd, i32 noundef %spec.select.i, i32 noundef %cond10.i) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setregid16(i32 noundef %rgid, i32 noundef %egid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %rgid to i16
  %conv1 = trunc i32 %egid to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv)
  %cmp.i = icmp eq i16 %conv, -1
  %conv.i = and i32 %rgid, 65535
  %spec.select.i = select i1 %cmp.i, i32 -1, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv1)
  %cmp4.i = icmp eq i16 %conv1, -1
  %conv3.i = and i32 %egid, 65535
  %cond10.i = select i1 %cmp4.i, i32 -1, i32 %conv3.i
  %call.i = tail call i32 @__sys_setregid(i32 noundef %spec.select.i, i32 noundef %cond10.i) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setgid16(i32 noundef %gid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %gid to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv)
  %cmp.i = icmp eq i16 %conv, -1
  %conv.i = and i32 %gid, 65535
  %spec.select.i = select i1 %cmp.i, i32 -1, i32 %conv.i
  %call.i = tail call i32 @__sys_setgid(i32 noundef %spec.select.i) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setreuid16(i32 noundef %ruid, i32 noundef %euid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %ruid to i16
  %conv1 = trunc i32 %euid to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv)
  %cmp.i = icmp eq i16 %conv, -1
  %conv.i = and i32 %ruid, 65535
  %spec.select.i = select i1 %cmp.i, i32 -1, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv1)
  %cmp4.i = icmp eq i16 %conv1, -1
  %conv3.i = and i32 %euid, 65535
  %cond10.i = select i1 %cmp4.i, i32 -1, i32 %conv3.i
  %call.i = tail call i32 @__sys_setreuid(i32 noundef %spec.select.i, i32 noundef %cond10.i) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setuid16(i32 noundef %uid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %uid to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv)
  %cmp.i = icmp eq i16 %conv, -1
  %conv.i = and i32 %uid, 65535
  %spec.select.i = select i1 %cmp.i, i32 -1, i32 %conv.i
  %call.i = tail call i32 @__sys_setuid(i32 noundef %spec.select.i) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setresuid16(i32 noundef %ruid, i32 noundef %euid, i32 noundef %suid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %ruid to i16
  %conv1 = trunc i32 %euid to i16
  %conv2 = trunc i32 %suid to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv)
  %cmp.i = icmp eq i16 %conv, -1
  %conv.i = and i32 %ruid, 65535
  %spec.select.i = select i1 %cmp.i, i32 -1, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv1)
  %cmp4.i = icmp eq i16 %conv1, -1
  %conv3.i = and i32 %euid, 65535
  %cond10.i = select i1 %cmp4.i, i32 -1, i32 %conv3.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv2)
  %cmp12.i = icmp eq i16 %conv2, -1
  %conv11.i = and i32 %suid, 65535
  %cond18.i = select i1 %cmp12.i, i32 -1, i32 %conv11.i
  %call.i = tail call i32 @__sys_setresuid(i32 noundef %spec.select.i, i32 noundef %cond10.i, i32 noundef %cond18.i) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getresuid16(i32 noundef %ruidp, i32 noundef %euidp, i32 noundef %suidp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %ruidp to ptr
  %1 = inttoptr i32 %euidp to ptr
  %2 = inttoptr i32 %suidp to ptr
  %3 = tail call i32 @llvm.read_register.i32(metadata !279) #4
  %and.i113.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i113.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %cred1.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %cred1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred1.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user_ns.i, align 4
  %uid.i = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack.i = load i32, ptr %uid.i, align 4
  %12 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call3.i = tail call i32 @from_kuid_munged(ptr noundef %10, [1 x i32] %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call3.i)
  %tobool.not.i = icmp ult i32 %call3.i, 65536
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowuid to i32))
  %13 = load i32, ptr @overflowuid, align 4
  br label %cond.end.i

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns.i, align 4
  %16 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack100.i = load i32, ptr %uid.i, align 4
  %17 = insertvalue [1 x i32] undef, i32 %.unpack100.i, 0
  %call8.i = tail call i32 @from_kuid_munged(ptr noundef %15, [1 x i32] %17) #4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.in.i = phi i32 [ %13, %cond.true.i ], [ %call8.i, %cond.false.i ]
  %conv11.i = trunc i32 %cond.in.i to i16
  %18 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ns.i, align 4
  %euid13.i = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 8
  %20 = ptrtoint ptr %euid13.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack101.i = load i32, ptr %euid13.i, align 4
  %21 = insertvalue [1 x i32] undef, i32 %.unpack101.i, 0
  %call15.i = tail call i32 @from_kuid_munged(ptr noundef %19, [1 x i32] %21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call15.i)
  %tobool17.not.i = icmp ult i32 %call15.i, 65536
  br i1 %tobool17.not.i, label %cond.false21.i, label %cond.true18.i

cond.true18.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowuid to i32))
  %22 = load i32, ptr @overflowuid, align 4
  br label %cond.end28.i

cond.false21.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %user_ns.i, align 4
  %25 = ptrtoint ptr %euid13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack102.i = load i32, ptr %euid13.i, align 4
  %26 = insertvalue [1 x i32] undef, i32 %.unpack102.i, 0
  %call25.i = tail call i32 @from_kuid_munged(ptr noundef %24, [1 x i32] %26) #4
  br label %cond.end28.i

cond.end28.i:                                     ; preds = %cond.false21.i, %cond.true18.i
  %cond29.in.i = phi i32 [ %22, %cond.true18.i ], [ %call25.i, %cond.false21.i ]
  %conv30.i = trunc i32 %cond29.in.i to i16
  %27 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %user_ns.i, align 4
  %suid32.i = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 6
  %29 = ptrtoint ptr %suid32.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack103.i = load i32, ptr %suid32.i, align 4
  %30 = insertvalue [1 x i32] undef, i32 %.unpack103.i, 0
  %call34.i = tail call i32 @from_kuid_munged(ptr noundef %28, [1 x i32] %30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call34.i)
  %tobool36.not.i = icmp ult i32 %call34.i, 65536
  br i1 %tobool36.not.i, label %cond.false40.i, label %cond.true37.i

cond.true37.i:                                    ; preds = %cond.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowuid to i32))
  %31 = load i32, ptr @overflowuid, align 4
  br label %cond.end47.i

cond.false40.i:                                   ; preds = %cond.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %user_ns.i, align 4
  %34 = ptrtoint ptr %suid32.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack104.i = load i32, ptr %suid32.i, align 4
  %35 = insertvalue [1 x i32] undef, i32 %.unpack104.i, 0
  %call44.i = tail call i32 @from_kuid_munged(ptr noundef %33, [1 x i32] %35) #4
  br label %cond.end47.i

cond.end47.i:                                     ; preds = %cond.false40.i, %cond.true37.i
  %cond48.in.i = phi i32 [ %31, %cond.true37.i ], [ %call44.i, %cond.false40.i ]
  %conv49.i = trunc i32 %cond48.in.i to i16
  tail call void @__might_fault(ptr noundef nonnull @.str.88, i32 noundef 74) #4
  %36 = tail call i32 @llvm.read_register.i32(metadata !279) #4
  %and.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 4
  %38 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !289
  %and.i.i = and i32 %38, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #4, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !291
  %39 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i16 %conv11.i, i32 -1226833921) #4, !srcloc !292
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #4, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool56.not.i = icmp eq i32 %39, 0
  br i1 %tobool56.not.i, label %land.lhs.true.i, label %cond.end47.i.__do_sys_getresuid16.exit_crit_edge

cond.end47.i.__do_sys_getresuid16.exit_crit_edge: ; preds = %cond.end47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_getresuid16.exit

land.lhs.true.i:                                  ; preds = %cond.end47.i
  tail call void @__might_fault(ptr noundef nonnull @.str.88, i32 noundef 75) #4
  %40 = tail call i32 @llvm.read_register.i32(metadata !279) #4
  %and.i.i.i105.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i105.i to ptr
  %cpu_domain.i.i106.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 4
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i106.i) #3, !srcloc !289
  %and.i107.i = and i32 %42, -13
  %or.i108.i = or i32 %and.i107.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i108.i) #4, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !291
  %43 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i16 %conv30.i, i32 -1226833921) #4, !srcloc !293
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #4, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool72.not.i = icmp eq i32 %43, 0
  br i1 %tobool72.not.i, label %if.then.i, label %land.lhs.true.i.__do_sys_getresuid16.exit_crit_edge

land.lhs.true.i.__do_sys_getresuid16.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_getresuid16.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__might_fault(ptr noundef nonnull @.str.88, i32 noundef 76) #4
  %44 = tail call i32 @llvm.read_register.i32(metadata !279) #4
  %and.i.i.i109.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i109.i to ptr
  %cpu_domain.i.i110.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 4
  %46 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i110.i) #3, !srcloc !289
  %and.i111.i = and i32 %46, -13
  %or.i112.i = or i32 %and.i111.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i112.i) #4, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !291
  %47 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i16 %conv49.i, i32 -1226833921) #4, !srcloc !294
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #4, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !291
  br label %__do_sys_getresuid16.exit

__do_sys_getresuid16.exit:                        ; preds = %if.then.i, %land.lhs.true.i.__do_sys_getresuid16.exit_crit_edge, %cond.end47.i.__do_sys_getresuid16.exit_crit_edge
  %retval2.0.i = phi i32 [ %39, %cond.end47.i.__do_sys_getresuid16.exit_crit_edge ], [ %43, %land.lhs.true.i.__do_sys_getresuid16.exit_crit_edge ], [ %47, %if.then.i ]
  ret i32 %retval2.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setresgid16(i32 noundef %rgid, i32 noundef %egid, i32 noundef %sgid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %rgid to i16
  %conv1 = trunc i32 %egid to i16
  %conv2 = trunc i32 %sgid to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv)
  %cmp.i = icmp eq i16 %conv, -1
  %conv.i = and i32 %rgid, 65535
  %spec.select.i = select i1 %cmp.i, i32 -1, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv1)
  %cmp4.i = icmp eq i16 %conv1, -1
  %conv3.i = and i32 %egid, 65535
  %cond10.i = select i1 %cmp4.i, i32 -1, i32 %conv3.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv2)
  %cmp12.i = icmp eq i16 %conv2, -1
  %conv11.i = and i32 %sgid, 65535
  %cond18.i = select i1 %cmp12.i, i32 -1, i32 %conv11.i
  %call.i = tail call i32 @__sys_setresgid(i32 noundef %spec.select.i, i32 noundef %cond10.i, i32 noundef %cond18.i) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getresgid16(i32 noundef %rgidp, i32 noundef %egidp, i32 noundef %sgidp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %rgidp to ptr
  %1 = inttoptr i32 %egidp to ptr
  %2 = inttoptr i32 %sgidp to ptr
  %3 = tail call i32 @llvm.read_register.i32(metadata !279) #4
  %and.i113.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i113.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %cred1.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 99
  %7 = ptrtoint ptr %cred1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred1.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user_ns.i, align 4
  %gid.i = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack.i = load i32, ptr %gid.i, align 4
  %12 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call3.i = tail call i32 @from_kgid_munged(ptr noundef %10, [1 x i32] %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call3.i)
  %tobool.not.i = icmp ult i32 %call3.i, 65536
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowgid to i32))
  %13 = load i32, ptr @overflowgid, align 4
  br label %cond.end.i

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns.i, align 4
  %16 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack100.i = load i32, ptr %gid.i, align 4
  %17 = insertvalue [1 x i32] undef, i32 %.unpack100.i, 0
  %call8.i = tail call i32 @from_kgid_munged(ptr noundef %15, [1 x i32] %17) #4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.in.i = phi i32 [ %13, %cond.true.i ], [ %call8.i, %cond.false.i ]
  %conv11.i = trunc i32 %cond.in.i to i16
  %18 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ns.i, align 4
  %egid13.i = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 9
  %20 = ptrtoint ptr %egid13.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack101.i = load i32, ptr %egid13.i, align 4
  %21 = insertvalue [1 x i32] undef, i32 %.unpack101.i, 0
  %call15.i = tail call i32 @from_kgid_munged(ptr noundef %19, [1 x i32] %21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call15.i)
  %tobool17.not.i = icmp ult i32 %call15.i, 65536
  br i1 %tobool17.not.i, label %cond.false21.i, label %cond.true18.i

cond.true18.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowgid to i32))
  %22 = load i32, ptr @overflowgid, align 4
  br label %cond.end28.i

cond.false21.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %user_ns.i, align 4
  %25 = ptrtoint ptr %egid13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack102.i = load i32, ptr %egid13.i, align 4
  %26 = insertvalue [1 x i32] undef, i32 %.unpack102.i, 0
  %call25.i = tail call i32 @from_kgid_munged(ptr noundef %24, [1 x i32] %26) #4
  br label %cond.end28.i

cond.end28.i:                                     ; preds = %cond.false21.i, %cond.true18.i
  %cond29.in.i = phi i32 [ %22, %cond.true18.i ], [ %call25.i, %cond.false21.i ]
  %conv30.i = trunc i32 %cond29.in.i to i16
  %27 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %user_ns.i, align 4
  %sgid32.i = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 7
  %29 = ptrtoint ptr %sgid32.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack103.i = load i32, ptr %sgid32.i, align 4
  %30 = insertvalue [1 x i32] undef, i32 %.unpack103.i, 0
  %call34.i = tail call i32 @from_kgid_munged(ptr noundef %28, [1 x i32] %30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call34.i)
  %tobool36.not.i = icmp ult i32 %call34.i, 65536
  br i1 %tobool36.not.i, label %cond.false40.i, label %cond.true37.i

cond.true37.i:                                    ; preds = %cond.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowgid to i32))
  %31 = load i32, ptr @overflowgid, align 4
  br label %cond.end47.i

cond.false40.i:                                   ; preds = %cond.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %user_ns.i, align 4
  %34 = ptrtoint ptr %sgid32.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack104.i = load i32, ptr %sgid32.i, align 4
  %35 = insertvalue [1 x i32] undef, i32 %.unpack104.i, 0
  %call44.i = tail call i32 @from_kgid_munged(ptr noundef %33, [1 x i32] %35) #4
  br label %cond.end47.i

cond.end47.i:                                     ; preds = %cond.false40.i, %cond.true37.i
  %cond48.in.i = phi i32 [ %31, %cond.true37.i ], [ %call44.i, %cond.false40.i ]
  %conv49.i = trunc i32 %cond48.in.i to i16
  tail call void @__might_fault(ptr noundef nonnull @.str.88, i32 noundef 97) #4
  %36 = tail call i32 @llvm.read_register.i32(metadata !279) #4
  %and.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 4
  %38 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !289
  %and.i.i = and i32 %38, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #4, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !291
  %39 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i16 %conv11.i, i32 -1226833921) #4, !srcloc !295
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #4, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool56.not.i = icmp eq i32 %39, 0
  br i1 %tobool56.not.i, label %land.lhs.true.i, label %cond.end47.i.__do_sys_getresgid16.exit_crit_edge

cond.end47.i.__do_sys_getresgid16.exit_crit_edge: ; preds = %cond.end47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_getresgid16.exit

land.lhs.true.i:                                  ; preds = %cond.end47.i
  tail call void @__might_fault(ptr noundef nonnull @.str.88, i32 noundef 98) #4
  %40 = tail call i32 @llvm.read_register.i32(metadata !279) #4
  %and.i.i.i105.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i105.i to ptr
  %cpu_domain.i.i106.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 4
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i106.i) #3, !srcloc !289
  %and.i107.i = and i32 %42, -13
  %or.i108.i = or i32 %and.i107.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i108.i) #4, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !291
  %43 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i16 %conv30.i, i32 -1226833921) #4, !srcloc !296
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #4, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool72.not.i = icmp eq i32 %43, 0
  br i1 %tobool72.not.i, label %if.then.i, label %land.lhs.true.i.__do_sys_getresgid16.exit_crit_edge

land.lhs.true.i.__do_sys_getresgid16.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_getresgid16.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__might_fault(ptr noundef nonnull @.str.88, i32 noundef 99) #4
  %44 = tail call i32 @llvm.read_register.i32(metadata !279) #4
  %and.i.i.i109.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i109.i to ptr
  %cpu_domain.i.i110.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 4
  %46 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i110.i) #3, !srcloc !289
  %and.i111.i = and i32 %46, -13
  %or.i112.i = or i32 %and.i111.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i112.i) #4, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !291
  %47 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i16 %conv49.i, i32 -1226833921) #4, !srcloc !297
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #4, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !291
  br label %__do_sys_getresgid16.exit

__do_sys_getresgid16.exit:                        ; preds = %if.then.i, %land.lhs.true.i.__do_sys_getresgid16.exit_crit_edge, %cond.end47.i.__do_sys_getresgid16.exit_crit_edge
  %retval2.0.i = phi i32 [ %39, %cond.end47.i.__do_sys_getresgid16.exit_crit_edge ], [ %43, %land.lhs.true.i.__do_sys_getresgid16.exit_crit_edge ], [ %47, %if.then.i ]
  ret i32 %retval2.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setfsuid16(i32 noundef %uid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %uid to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv)
  %cmp.i = icmp eq i16 %conv, -1
  %conv.i = and i32 %uid, 65535
  %spec.select.i = select i1 %cmp.i, i32 -1, i32 %conv.i
  %call.i = tail call i32 @__sys_setfsuid(i32 noundef %spec.select.i) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setfsgid16(i32 noundef %gid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %gid to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv)
  %cmp.i = icmp eq i16 %conv, -1
  %conv.i = and i32 %gid, 65535
  %spec.select.i = select i1 %cmp.i, i32 -1, i32 %conv.i
  %call.i = tail call i32 @__sys_setfsgid(i32 noundef %spec.select.i) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getgroups16(i32 noundef %gidsetsize, i32 noundef %grouplist) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %grouplist to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gidsetsize)
  %cmp.i = icmp slt i32 %gidsetsize, 0
  br i1 %cmp.i, label %entry.__do_sys_getgroups16.exit_crit_edge, label %if.end.i

entry.__do_sys_getgroups16.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_getgroups16.exit

if.end.i:                                         ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !279) #4
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %cred1.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred1.i, align 16
  %group_info.i = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %group_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %group_info.i, align 4
  %ngroups.i = getelementptr inbounds %struct.group_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ngroups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gidsetsize)
  %tobool.not.i = icmp eq i32 %gidsetsize, 0
  br i1 %tobool.not.i, label %if.end.i.__do_sys_getgroups16.exit_crit_edge, label %if.then2.i

if.end.i.__do_sys_getgroups16.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_getgroups16.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %gidsetsize)
  %cmp3.i = icmp sgt i32 %10, %gidsetsize
  br i1 %cmp3.i, label %if.then2.i.__do_sys_getgroups16.exit_crit_edge, label %if.end5.i

if.then2.i.__do_sys_getgroups16.exit_crit_edge:   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_getgroups16.exit

if.end5.i:                                        ; preds = %if.then2.i
  %user_ns2.i.i = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 25
  %11 = ptrtoint ptr %user_ns2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %user_ns2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp30.i.i = icmp sgt i32 %10, 0
  br i1 %cmp30.i.i, label %if.end5.i.for.body.i.i_crit_edge, label %if.end5.i.__do_sys_getgroups16.exit_crit_edge

if.end5.i.__do_sys_getgroups16.exit_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_getgroups16.exit

if.end5.i.for.body.i.i_crit_edge:                 ; preds = %if.end5.i
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %cond.end.i.i
  %inc.i.i = add nuw nsw i32 %i.031.i.i, 1
  %13 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ngroups.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %14
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.__do_sys_getgroups16.exit_crit_edge

for.cond.i.i.__do_sys_getgroups16.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_getgroups16.exit

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end5.i.for.body.i.i_crit_edge
  %i.031.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end5.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.group_info, ptr %8, i32 0, i32 2, i32 %i.031.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %kgid.sroa.0.0.copyload.i.i = load i32, ptr %arrayidx.i.i, align 4
  %.fca.0.insert.i.i = insertvalue [1 x i32] poison, i32 %kgid.sroa.0.0.copyload.i.i, 0
  %call3.i.i = tail call i32 @from_kgid_munged(ptr noundef %12, [1 x i32] %.fca.0.insert.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call3.i.i)
  %tobool.not.i.i = icmp ult i32 %call3.i.i, 65536
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowgid to i32))
  %16 = load i32, ptr @overflowgid, align 4
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call6.i.i = tail call i32 @from_kgid_munged(ptr noundef %12, [1 x i32] %.fca.0.insert.i.i) #4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.in.i.i = phi i32 [ %16, %cond.true.i.i ], [ %call6.i.i, %cond.false.i.i ]
  %conv9.i.i = trunc i32 %cond.in.i.i to i16
  %add.ptr.i.i = getelementptr i16, ptr %0, i32 %i.031.i.i
  tail call void @__might_fault(ptr noundef nonnull @.str.88, i32 noundef 125) #4
  %17 = tail call i32 @llvm.read_register.i32(metadata !279) #4
  %and.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #3, !srcloc !289
  %and.i.i.i = and i32 %19, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #4, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !291
  %20 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr.i.i, i16 %conv9.i.i, i32 -1226833921) #4, !srcloc !298
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #4, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool16.not.i.i, label %for.cond.i.i, label %cond.end.i.i.__do_sys_getgroups16.exit_crit_edge

cond.end.i.i.__do_sys_getgroups16.exit_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_getgroups16.exit

__do_sys_getgroups16.exit:                        ; preds = %cond.end.i.i.__do_sys_getgroups16.exit_crit_edge, %for.cond.i.i.__do_sys_getgroups16.exit_crit_edge, %if.end5.i.__do_sys_getgroups16.exit_crit_edge, %if.then2.i.__do_sys_getgroups16.exit_crit_edge, %if.end.i.__do_sys_getgroups16.exit_crit_edge, %entry.__do_sys_getgroups16.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__do_sys_getgroups16.exit_crit_edge ], [ %10, %if.end.i.__do_sys_getgroups16.exit_crit_edge ], [ -22, %if.then2.i.__do_sys_getgroups16.exit_crit_edge ], [ %10, %if.end5.i.__do_sys_getgroups16.exit_crit_edge ], [ -14, %cond.end.i.i.__do_sys_getgroups16.exit_crit_edge ], [ %10, %for.cond.i.i.__do_sys_getgroups16.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setgroups16(i32 noundef %gidsetsize, i32 noundef %grouplist) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %grouplist to ptr
  %call.i = tail call zeroext i1 @may_setgroups() #4
  br i1 %call.i, label %if.end.i, label %entry.__do_sys_setgroups16.exit_crit_edge

entry.__do_sys_setgroups16.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_setgroups16.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %gidsetsize)
  %cmp.i = icmp ugt i32 %gidsetsize, 65536
  br i1 %cmp.i, label %if.end.i.__do_sys_setgroups16.exit_crit_edge, label %if.end3.i

if.end.i.__do_sys_setgroups16.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_setgroups16.exit

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call ptr @groups_alloc(i32 noundef %gidsetsize) #4
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end3.i.__do_sys_setgroups16.exit_crit_edge, label %if.end6.i

if.end3.i.__do_sys_setgroups16.exit_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_setgroups16.exit

if.end6.i:                                        ; preds = %if.end3.i
  %1 = tail call i32 @llvm.read_register.i32(metadata !279) #4
  %and.i25.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i25.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred.i.i, align 16
  %user_ns2.i.i = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %user_ns2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user_ns2.i.i, align 4
  %ngroups.i.i = getelementptr inbounds %struct.group_info, ptr %call4.i, i32 0, i32 1
  %9 = ptrtoint ptr %ngroups.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ngroups.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp26.i.i = icmp sgt i32 %10, 0
  br i1 %cmp26.i.i, label %if.end6.i.for.body.i.i_crit_edge, label %if.end6.i.if.end13.i_crit_edge

if.end6.i.if.end13.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

if.end6.i.for.body.i.i_crit_edge:                 ; preds = %if.end6.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end16.i.i.for.body.i.i_crit_edge, %if.end6.i.for.body.i.i_crit_edge
  %i.027.i.i = phi i32 [ %inc.i.i, %if.end16.i.i.for.body.i.i_crit_edge ], [ 0, %if.end6.i.for.body.i.i_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.88, i32 noundef 141) #4
  %add.ptr.i.i = getelementptr i16, ptr %0, i32 %i.027.i.i
  %11 = tail call i32 @llvm.read_register.i32(metadata !279) #4
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #3, !srcloc !289
  %and.i.i.i = and i32 %13, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #4, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !291
  %14 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr.i.i, i32 -1226833921) #4, !srcloc !299
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #4, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.do.body.i_crit_edge

for.body.i.i.do.body.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %asmresult5.i.i = extractvalue { i32, i32 } %14, 1
  %conv8.i.i = and i32 %asmresult5.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %conv8.i.i)
  %cmp9.i.i = icmp eq i32 %conv8.i.i, 65535
  %spec.select.i.i = select i1 %cmp9.i.i, i32 -1, i32 %conv8.i.i
  %call12.i.i = tail call i32 @make_kgid(ptr noundef %8, i32 noundef %spec.select.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12.i.i)
  %cmp.i.not.i.i = icmp eq i32 %call12.i.i, -1
  br i1 %cmp.i.not.i.i, label %if.end.i.i.do.body.i_crit_edge, label %if.end16.i.i

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

if.end16.i.i:                                     ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr %struct.group_info, ptr %call4.i, i32 0, i32 2, i32 %i.027.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call12.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.027.i.i, 1
  %16 = ptrtoint ptr %ngroups.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ngroups.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %17
  br i1 %cmp.i.i, label %if.end16.i.i.for.body.i.i_crit_edge, label %if.end16.i.i.if.end13.i_crit_edge

if.end16.i.i.if.end13.i_crit_edge:                ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13.i

if.end16.i.i.for.body.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

do.body.i:                                        ; preds = %if.end.i.i.do.body.i_crit_edge, %for.body.i.i.do.body.i_crit_edge
  %retval.0.i.i = phi i32 [ -22, %if.end.i.i.do.body.i_crit_edge ], [ -14, %for.body.i.i.do.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call4.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !300
  tail call void @llvm.prefetch.p0(ptr nonnull %call4.i, i32 1, i32 3, i32 1) #4
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call4.i, ptr nonnull %call4.i, i32 1, ptr nonnull elementtype(i32) %call4.i) #4, !srcloc !301
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !302
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body.i.cleanup.sink.split.i_crit_edge, label %do.body.i.__do_sys_setgroups16.exit_crit_edge

do.body.i.__do_sys_setgroups16.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_setgroups16.exit

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end13.i:                                       ; preds = %if.end16.i.i.if.end13.i_crit_edge, %if.end6.i.if.end13.i_crit_edge
  tail call void @groups_sort(ptr noundef nonnull %call4.i) #4
  %call14.i = tail call i32 @set_current_groups(ptr noundef nonnull %call4.i) #4
  %call.i.i33.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call4.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !300
  tail call void @llvm.prefetch.p0(ptr nonnull %call4.i, i32 1, i32 3, i32 1) #4
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call4.i, ptr nonnull %call4.i, i32 1, ptr nonnull elementtype(i32) %call4.i) #4, !srcloc !301
  %asmresult.i.i.i.i.i34.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !302
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i34.i)
  %cmp.i.i35.i = icmp eq i32 %asmresult.i.i.i.i.i34.i, 0
  br i1 %cmp.i.i35.i, label %if.end13.i.cleanup.sink.split.i_crit_edge, label %if.end13.i.__do_sys_setgroups16.exit_crit_edge

if.end13.i.__do_sys_setgroups16.exit_crit_edge:   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__do_sys_setgroups16.exit

if.end13.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end13.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %retval.0.i.i, %do.body.i.cleanup.sink.split.i_crit_edge ], [ %call14.i, %if.end13.i.cleanup.sink.split.i_crit_edge ]
  tail call void @groups_free(ptr noundef nonnull %call4.i) #4
  br label %__do_sys_setgroups16.exit

__do_sys_setgroups16.exit:                        ; preds = %cleanup.sink.split.i, %if.end13.i.__do_sys_setgroups16.exit_crit_edge, %do.body.i.__do_sys_setgroups16.exit_crit_edge, %if.end3.i.__do_sys_setgroups16.exit_crit_edge, %if.end.i.__do_sys_setgroups16.exit_crit_edge, %entry.__do_sys_setgroups16.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.__do_sys_setgroups16.exit_crit_edge ], [ -22, %if.end.i.__do_sys_setgroups16.exit_crit_edge ], [ -12, %if.end3.i.__do_sys_setgroups16.exit_crit_edge ], [ %retval.0.i.i, %do.body.i.__do_sys_setgroups16.exit_crit_edge ], [ %call14.i, %if.end13.i.__do_sys_setgroups16.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_getuid16() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !279) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %uid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %8)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %uid, align 4
  %.fca.0.insert30 = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call8 = tail call i32 @from_kuid_munged(ptr noundef %7, [1 x i32] %.fca.0.insert30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call8)
  %tobool.not = icmp ult i32 %call8, 65536
  br i1 %tobool.not, label %do.end12, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowuid to i32))
  %9 = load i32, ptr @overflowuid, align 4
  br label %cond.end

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %cred16 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred16, align 16
  %user_ns17 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %user_ns17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns17, align 4
  %uid25 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %uid25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %agg.tmp18.sroa.0.0.copyload = load i32, ptr %uid25, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp18.sroa.0.0.copyload, 0
  %call27 = tail call i32 @from_kuid_munged(ptr noundef %15, [1 x i32] %.fca.0.insert) #4
  br label %cond.end

cond.end:                                         ; preds = %do.end12, %cond.true
  %cond.in = phi i32 [ %9, %cond.true ], [ %call27, %do.end12 ]
  %cond = and i32 %cond.in, 65535
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_geteuid16() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !279) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %euid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %8)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %euid, align 4
  %.fca.0.insert30 = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call8 = tail call i32 @from_kuid_munged(ptr noundef %7, [1 x i32] %.fca.0.insert30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call8)
  %tobool.not = icmp ult i32 %call8, 65536
  br i1 %tobool.not, label %do.end12, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowuid to i32))
  %9 = load i32, ptr @overflowuid, align 4
  br label %cond.end

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %cred16 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred16, align 16
  %user_ns17 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %user_ns17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns17, align 4
  %euid25 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 8
  %16 = ptrtoint ptr %euid25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %agg.tmp18.sroa.0.0.copyload = load i32, ptr %euid25, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp18.sroa.0.0.copyload, 0
  %call27 = tail call i32 @from_kuid_munged(ptr noundef %15, [1 x i32] %.fca.0.insert) #4
  br label %cond.end

cond.end:                                         ; preds = %do.end12, %cond.true
  %cond.in = phi i32 [ %9, %cond.true ], [ %call27, %do.end12 ]
  %cond = and i32 %cond.in, 65535
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_getgid16() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !279) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %gid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %8)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %gid, align 4
  %.fca.0.insert30 = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call8 = tail call i32 @from_kgid_munged(ptr noundef %7, [1 x i32] %.fca.0.insert30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call8)
  %tobool.not = icmp ult i32 %call8, 65536
  br i1 %tobool.not, label %do.end12, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowgid to i32))
  %9 = load i32, ptr @overflowgid, align 4
  br label %cond.end

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %cred16 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred16, align 16
  %user_ns17 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %user_ns17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns17, align 4
  %gid25 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %gid25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %agg.tmp18.sroa.0.0.copyload = load i32, ptr %gid25, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp18.sroa.0.0.copyload, 0
  %call27 = tail call i32 @from_kgid_munged(ptr noundef %15, [1 x i32] %.fca.0.insert) #4
  br label %cond.end

cond.end:                                         ; preds = %do.end12, %cond.true
  %cond.in = phi i32 [ %9, %cond.true ], [ %call27, %do.end12 ]
  %cond = and i32 %cond.in, 65535
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_getegid16() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !279) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %egid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %8)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %egid, align 4
  %.fca.0.insert30 = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0.copyload, 0
  %call8 = tail call i32 @from_kgid_munged(ptr noundef %7, [1 x i32] %.fca.0.insert30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call8)
  %tobool.not = icmp ult i32 %call8, 65536
  br i1 %tobool.not, label %do.end12, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowgid to i32))
  %9 = load i32, ptr @overflowgid, align 4
  br label %cond.end

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %cred16 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 99
  %12 = ptrtoint ptr %cred16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred16, align 16
  %user_ns17 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %user_ns17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns17, align 4
  %egid25 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 9
  %16 = ptrtoint ptr %egid25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %agg.tmp18.sroa.0.0.copyload = load i32, ptr %egid25, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp18.sroa.0.0.copyload, 0
  %call27 = tail call i32 @from_kgid_munged(ptr noundef %15, [1 x i32] %.fca.0.insert) #4
  br label %cond.end

cond.end:                                         ; preds = %do.end12, %cond.true
  %cond.in = phi i32 [ %9, %cond.true ], [ %call27, %do.end12 ]
  %cond = and i32 %cond.in, 65535
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_fchownat(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksys_fchown(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sys_setregid(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sys_setgid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sys_setreuid(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sys_setuid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sys_setresuid(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sys_setresgid(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sys_setfsuid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sys_setfsgid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @may_setgroups() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @groups_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_sort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_current_groups(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !62, !63, !64, !65, !66, !67, !68, !69, !70, !72, !73, !74, !75, !76, !77, !78, !79, !80, !82, !83, !84, !85, !86, !87, !88, !89, !90, !92, !93, !94, !95, !96, !97, !98, !99, !100, !102, !103, !104, !105, !106, !107, !108, !109, !110, !112, !113, !114, !115, !116, !117, !118, !119, !120, !122, !123, !124, !125, !126, !127, !128, !129, !130, !132, !133, !134, !135, !136, !137, !138, !139, !140, !142, !143, !144, !145, !146, !147, !148, !149, !150, !152, !153, !154, !155, !156, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !171, !172, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !185, !186, !187, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !200, !201, !202, !203, !204, !205, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !249, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !273, !275, !276, !277}
!llvm.named.register.sp = !{!279}
!llvm.module.flags = !{!280, !281, !282, !283, !284, !285, !286, !287}
!llvm.ident = !{!288}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/uid16.c", i32 23, i32 1}
!2 = !{ptr @event_enter__chown16, !1, !"event_enter__chown16", i1 false, i1 false}
!3 = !{ptr @__event_enter__chown16, !1, !"__event_enter__chown16", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @event_exit__chown16, !1, !"event_exit__chown16", i1 false, i1 false}
!6 = !{ptr @__event_exit__chown16, !1, !"__event_exit__chown16", i1 false, i1 false}
!7 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__syscall_meta__chown16, !1, !"__syscall_meta__chown16", i1 false, i1 false}
!9 = !{ptr @__p_syscall_meta__chown16, !1, !"__p_syscall_meta__chown16", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/uid16.c", i32 28, i32 1}
!12 = !{ptr @event_enter__lchown16, !11, !"event_enter__lchown16", i1 false, i1 false}
!13 = !{ptr @__event_enter__lchown16, !11, !"__event_enter__lchown16", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @event_exit__lchown16, !11, !"event_exit__lchown16", i1 false, i1 false}
!16 = !{ptr @__event_exit__lchown16, !11, !"__event_exit__lchown16", i1 false, i1 false}
!17 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__syscall_meta__lchown16, !11, !"__syscall_meta__lchown16", i1 false, i1 false}
!19 = !{ptr @__p_syscall_meta__lchown16, !11, !"__p_syscall_meta__lchown16", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/uid16.c", i32 33, i32 1}
!22 = !{ptr @event_enter__fchown16, !21, !"event_enter__fchown16", i1 false, i1 false}
!23 = !{ptr @__event_enter__fchown16, !21, !"__event_enter__fchown16", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @event_exit__fchown16, !21, !"event_exit__fchown16", i1 false, i1 false}
!26 = !{ptr @__event_exit__fchown16, !21, !"__event_exit__fchown16", i1 false, i1 false}
!27 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__syscall_meta__fchown16, !21, !"__syscall_meta__fchown16", i1 false, i1 false}
!29 = !{ptr @__p_syscall_meta__fchown16, !21, !"__p_syscall_meta__fchown16", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/uid16.c", i32 38, i32 1}
!32 = !{ptr @event_enter__setregid16, !31, !"event_enter__setregid16", i1 false, i1 false}
!33 = !{ptr @__event_enter__setregid16, !31, !"__event_enter__setregid16", i1 false, i1 false}
!34 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @event_exit__setregid16, !31, !"event_exit__setregid16", i1 false, i1 false}
!36 = !{ptr @__event_exit__setregid16, !31, !"__event_exit__setregid16", i1 false, i1 false}
!37 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__syscall_meta__setregid16, !31, !"__syscall_meta__setregid16", i1 false, i1 false}
!39 = !{ptr @__p_syscall_meta__setregid16, !31, !"__p_syscall_meta__setregid16", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/uid16.c", i32 43, i32 1}
!42 = !{ptr @event_enter__setgid16, !41, !"event_enter__setgid16", i1 false, i1 false}
!43 = !{ptr @__event_enter__setgid16, !41, !"__event_enter__setgid16", i1 false, i1 false}
!44 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @event_exit__setgid16, !41, !"event_exit__setgid16", i1 false, i1 false}
!46 = !{ptr @__event_exit__setgid16, !41, !"__event_exit__setgid16", i1 false, i1 false}
!47 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__syscall_meta__setgid16, !41, !"__syscall_meta__setgid16", i1 false, i1 false}
!49 = !{ptr @__p_syscall_meta__setgid16, !41, !"__p_syscall_meta__setgid16", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../kernel/uid16.c", i32 48, i32 1}
!52 = !{ptr @event_enter__setreuid16, !51, !"event_enter__setreuid16", i1 false, i1 false}
!53 = !{ptr @__event_enter__setreuid16, !51, !"__event_enter__setreuid16", i1 false, i1 false}
!54 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @event_exit__setreuid16, !51, !"event_exit__setreuid16", i1 false, i1 false}
!56 = !{ptr @__event_exit__setreuid16, !51, !"__event_exit__setreuid16", i1 false, i1 false}
!57 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__syscall_meta__setreuid16, !51, !"__syscall_meta__setreuid16", i1 false, i1 false}
!59 = !{ptr @__p_syscall_meta__setreuid16, !51, !"__p_syscall_meta__setreuid16", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/uid16.c", i32 53, i32 1}
!62 = !{ptr @event_enter__setuid16, !61, !"event_enter__setuid16", i1 false, i1 false}
!63 = !{ptr @__event_enter__setuid16, !61, !"__event_enter__setuid16", i1 false, i1 false}
!64 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @event_exit__setuid16, !61, !"event_exit__setuid16", i1 false, i1 false}
!66 = !{ptr @__event_exit__setuid16, !61, !"__event_exit__setuid16", i1 false, i1 false}
!67 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @__syscall_meta__setuid16, !61, !"__syscall_meta__setuid16", i1 false, i1 false}
!69 = !{ptr @__p_syscall_meta__setuid16, !61, !"__p_syscall_meta__setuid16", i1 false, i1 false}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/uid16.c", i32 58, i32 1}
!72 = !{ptr @event_enter__setresuid16, !71, !"event_enter__setresuid16", i1 false, i1 false}
!73 = !{ptr @__event_enter__setresuid16, !71, !"__event_enter__setresuid16", i1 false, i1 false}
!74 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @event_exit__setresuid16, !71, !"event_exit__setresuid16", i1 false, i1 false}
!76 = !{ptr @__event_exit__setresuid16, !71, !"__event_exit__setresuid16", i1 false, i1 false}
!77 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @__syscall_meta__setresuid16, !71, !"__syscall_meta__setresuid16", i1 false, i1 false}
!79 = !{ptr @__p_syscall_meta__setresuid16, !71, !"__p_syscall_meta__setresuid16", i1 false, i1 false}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../kernel/uid16.c", i32 64, i32 1}
!82 = !{ptr @event_enter__getresuid16, !81, !"event_enter__getresuid16", i1 false, i1 false}
!83 = !{ptr @__event_enter__getresuid16, !81, !"__event_enter__getresuid16", i1 false, i1 false}
!84 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @event_exit__getresuid16, !81, !"event_exit__getresuid16", i1 false, i1 false}
!86 = !{ptr @__event_exit__getresuid16, !81, !"__event_exit__getresuid16", i1 false, i1 false}
!87 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @__syscall_meta__getresuid16, !81, !"__syscall_meta__getresuid16", i1 false, i1 false}
!89 = !{ptr @__p_syscall_meta__getresuid16, !81, !"__p_syscall_meta__getresuid16", i1 false, i1 false}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../kernel/uid16.c", i32 81, i32 1}
!92 = !{ptr @event_enter__setresgid16, !91, !"event_enter__setresgid16", i1 false, i1 false}
!93 = !{ptr @__event_enter__setresgid16, !91, !"__event_enter__setresgid16", i1 false, i1 false}
!94 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @event_exit__setresgid16, !91, !"event_exit__setresgid16", i1 false, i1 false}
!96 = !{ptr @__event_exit__setresgid16, !91, !"__event_exit__setresgid16", i1 false, i1 false}
!97 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @__syscall_meta__setresgid16, !91, !"__syscall_meta__setresgid16", i1 false, i1 false}
!99 = !{ptr @__p_syscall_meta__setresgid16, !91, !"__p_syscall_meta__setresgid16", i1 false, i1 false}
!100 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../kernel/uid16.c", i32 87, i32 1}
!102 = !{ptr @event_enter__getresgid16, !101, !"event_enter__getresgid16", i1 false, i1 false}
!103 = !{ptr @__event_enter__getresgid16, !101, !"__event_enter__getresgid16", i1 false, i1 false}
!104 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @event_exit__getresgid16, !101, !"event_exit__getresgid16", i1 false, i1 false}
!106 = !{ptr @__event_exit__getresgid16, !101, !"__event_exit__getresgid16", i1 false, i1 false}
!107 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @__syscall_meta__getresgid16, !101, !"__syscall_meta__getresgid16", i1 false, i1 false}
!109 = !{ptr @__p_syscall_meta__getresgid16, !101, !"__p_syscall_meta__getresgid16", i1 false, i1 false}
!110 = !{ptr @.str.33, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../kernel/uid16.c", i32 104, i32 1}
!112 = !{ptr @event_enter__setfsuid16, !111, !"event_enter__setfsuid16", i1 false, i1 false}
!113 = !{ptr @__event_enter__setfsuid16, !111, !"__event_enter__setfsuid16", i1 false, i1 false}
!114 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @event_exit__setfsuid16, !111, !"event_exit__setfsuid16", i1 false, i1 false}
!116 = !{ptr @__event_exit__setfsuid16, !111, !"__event_exit__setfsuid16", i1 false, i1 false}
!117 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @__syscall_meta__setfsuid16, !111, !"__syscall_meta__setfsuid16", i1 false, i1 false}
!119 = !{ptr @__p_syscall_meta__setfsuid16, !111, !"__p_syscall_meta__setfsuid16", i1 false, i1 false}
!120 = !{ptr @.str.36, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../kernel/uid16.c", i32 109, i32 1}
!122 = !{ptr @event_enter__setfsgid16, !121, !"event_enter__setfsgid16", i1 false, i1 false}
!123 = !{ptr @__event_enter__setfsgid16, !121, !"__event_enter__setfsgid16", i1 false, i1 false}
!124 = !{ptr @.str.37, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @event_exit__setfsgid16, !121, !"event_exit__setfsgid16", i1 false, i1 false}
!126 = !{ptr @__event_exit__setfsgid16, !121, !"__event_exit__setfsgid16", i1 false, i1 false}
!127 = !{ptr @.str.38, !121, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @__syscall_meta__setfsgid16, !121, !"__syscall_meta__setfsgid16", i1 false, i1 false}
!129 = !{ptr @__p_syscall_meta__setfsgid16, !121, !"__p_syscall_meta__setfsgid16", i1 false, i1 false}
!130 = !{ptr @.str.39, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../kernel/uid16.c", i32 154, i32 1}
!132 = !{ptr @event_enter__getgroups16, !131, !"event_enter__getgroups16", i1 false, i1 false}
!133 = !{ptr @__event_enter__getgroups16, !131, !"__event_enter__getgroups16", i1 false, i1 false}
!134 = !{ptr @.str.40, !131, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @event_exit__getgroups16, !131, !"event_exit__getgroups16", i1 false, i1 false}
!136 = !{ptr @__event_exit__getgroups16, !131, !"__event_exit__getgroups16", i1 false, i1 false}
!137 = !{ptr @.str.41, !131, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @__syscall_meta__getgroups16, !131, !"__syscall_meta__getgroups16", i1 false, i1 false}
!139 = !{ptr @__p_syscall_meta__getgroups16, !131, !"__p_syscall_meta__getgroups16", i1 false, i1 false}
!140 = !{ptr @.str.42, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../kernel/uid16.c", i32 177, i32 1}
!142 = !{ptr @event_enter__setgroups16, !141, !"event_enter__setgroups16", i1 false, i1 false}
!143 = !{ptr @__event_enter__setgroups16, !141, !"__event_enter__setgroups16", i1 false, i1 false}
!144 = !{ptr @.str.43, !141, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @event_exit__setgroups16, !141, !"event_exit__setgroups16", i1 false, i1 false}
!146 = !{ptr @__event_exit__setgroups16, !141, !"__event_exit__setgroups16", i1 false, i1 false}
!147 = !{ptr @.str.44, !141, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @__syscall_meta__setgroups16, !141, !"__syscall_meta__setgroups16", i1 false, i1 false}
!149 = !{ptr @__p_syscall_meta__setgroups16, !141, !"__p_syscall_meta__setgroups16", i1 false, i1 false}
!150 = !{ptr @.str.45, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../kernel/uid16.c", i32 203, i32 1}
!152 = !{ptr @event_enter__getuid16, !151, !"event_enter__getuid16", i1 false, i1 false}
!153 = !{ptr @__event_enter__getuid16, !151, !"__event_enter__getuid16", i1 false, i1 false}
!154 = !{ptr @.str.46, !151, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @event_exit__getuid16, !151, !"event_exit__getuid16", i1 false, i1 false}
!156 = !{ptr @__event_exit__getuid16, !151, !"__event_exit__getuid16", i1 false, i1 false}
!157 = !{ptr @.str.47, !151, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @__syscall_meta__getuid16, !151, !"__syscall_meta__getuid16", i1 false, i1 false}
!159 = !{ptr @__p_syscall_meta__getuid16, !151, !"__p_syscall_meta__getuid16", i1 false, i1 false}
!160 = distinct !{null, !161, !"__warned", i1 false, i1 false}
!161 = !{!"../kernel/uid16.c", i32 205, i32 9}
!162 = distinct !{null, !161, !"__warned", i1 false, i1 false}
!163 = distinct !{null, !161, !"__warned", i1 false, i1 false}
!164 = distinct !{null, !161, !"__warned", i1 false, i1 false}
!165 = !{ptr @.str.51, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../kernel/uid16.c", i32 208, i32 1}
!167 = !{ptr @event_enter__geteuid16, !166, !"event_enter__geteuid16", i1 false, i1 false}
!168 = !{ptr @__event_enter__geteuid16, !166, !"__event_enter__geteuid16", i1 false, i1 false}
!169 = !{ptr @.str.52, !166, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @event_exit__geteuid16, !166, !"event_exit__geteuid16", i1 false, i1 false}
!171 = !{ptr @__event_exit__geteuid16, !166, !"__event_exit__geteuid16", i1 false, i1 false}
!172 = !{ptr @.str.53, !166, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @__syscall_meta__geteuid16, !166, !"__syscall_meta__geteuid16", i1 false, i1 false}
!174 = !{ptr @__p_syscall_meta__geteuid16, !166, !"__p_syscall_meta__geteuid16", i1 false, i1 false}
!175 = distinct !{null, !176, !"__warned", i1 false, i1 false}
!176 = !{!"../kernel/uid16.c", i32 210, i32 9}
!177 = distinct !{null, !176, !"__warned", i1 false, i1 false}
!178 = distinct !{null, !176, !"__warned", i1 false, i1 false}
!179 = distinct !{null, !176, !"__warned", i1 false, i1 false}
!180 = !{ptr @.str.57, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../kernel/uid16.c", i32 213, i32 1}
!182 = !{ptr @event_enter__getgid16, !181, !"event_enter__getgid16", i1 false, i1 false}
!183 = !{ptr @__event_enter__getgid16, !181, !"__event_enter__getgid16", i1 false, i1 false}
!184 = !{ptr @.str.58, !181, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @event_exit__getgid16, !181, !"event_exit__getgid16", i1 false, i1 false}
!186 = !{ptr @__event_exit__getgid16, !181, !"__event_exit__getgid16", i1 false, i1 false}
!187 = !{ptr @.str.59, !181, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @__syscall_meta__getgid16, !181, !"__syscall_meta__getgid16", i1 false, i1 false}
!189 = !{ptr @__p_syscall_meta__getgid16, !181, !"__p_syscall_meta__getgid16", i1 false, i1 false}
!190 = distinct !{null, !191, !"__warned", i1 false, i1 false}
!191 = !{!"../kernel/uid16.c", i32 215, i32 9}
!192 = distinct !{null, !191, !"__warned", i1 false, i1 false}
!193 = distinct !{null, !191, !"__warned", i1 false, i1 false}
!194 = distinct !{null, !191, !"__warned", i1 false, i1 false}
!195 = !{ptr @.str.63, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../kernel/uid16.c", i32 218, i32 1}
!197 = !{ptr @event_enter__getegid16, !196, !"event_enter__getegid16", i1 false, i1 false}
!198 = !{ptr @__event_enter__getegid16, !196, !"__event_enter__getegid16", i1 false, i1 false}
!199 = !{ptr @.str.64, !196, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @event_exit__getegid16, !196, !"event_exit__getegid16", i1 false, i1 false}
!201 = !{ptr @__event_exit__getegid16, !196, !"__event_exit__getegid16", i1 false, i1 false}
!202 = !{ptr @.str.65, !196, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @__syscall_meta__getegid16, !196, !"__syscall_meta__getegid16", i1 false, i1 false}
!204 = !{ptr @__p_syscall_meta__getegid16, !196, !"__p_syscall_meta__getegid16", i1 false, i1 false}
!205 = distinct !{null, !206, !"__warned", i1 false, i1 false}
!206 = !{!"../kernel/uid16.c", i32 220, i32 9}
!207 = distinct !{null, !206, !"__warned", i1 false, i1 false}
!208 = distinct !{null, !206, !"__warned", i1 false, i1 false}
!209 = distinct !{null, !206, !"__warned", i1 false, i1 false}
!210 = !{ptr @.str.69, !1, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.70, !1, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.71, !1, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @types__chown16, !1, !"types__chown16", i1 false, i1 false}
!214 = !{ptr @.str.72, !1, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.73, !1, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.74, !1, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @args__chown16, !1, !"args__chown16", i1 false, i1 false}
!218 = !{ptr @types__lchown16, !11, !"types__lchown16", i1 false, i1 false}
!219 = !{ptr @args__lchown16, !11, !"args__lchown16", i1 false, i1 false}
!220 = !{ptr @.str.75, !21, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @types__fchown16, !21, !"types__fchown16", i1 false, i1 false}
!222 = !{ptr @.str.76, !21, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @args__fchown16, !21, !"args__fchown16", i1 false, i1 false}
!224 = !{ptr @types__setregid16, !31, !"types__setregid16", i1 false, i1 false}
!225 = !{ptr @.str.77, !31, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.78, !31, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @args__setregid16, !31, !"args__setregid16", i1 false, i1 false}
!228 = !{ptr @types__setgid16, !41, !"types__setgid16", i1 false, i1 false}
!229 = !{ptr @.str.79, !41, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @args__setgid16, !41, !"args__setgid16", i1 false, i1 false}
!231 = !{ptr @types__setreuid16, !51, !"types__setreuid16", i1 false, i1 false}
!232 = !{ptr @.str.80, !51, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.81, !51, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @args__setreuid16, !51, !"args__setreuid16", i1 false, i1 false}
!235 = !{ptr @types__setuid16, !61, !"types__setuid16", i1 false, i1 false}
!236 = !{ptr @.str.82, !61, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @args__setuid16, !61, !"args__setuid16", i1 false, i1 false}
!238 = !{ptr @types__setresuid16, !71, !"types__setresuid16", i1 false, i1 false}
!239 = !{ptr @.str.83, !71, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @args__setresuid16, !71, !"args__setresuid16", i1 false, i1 false}
!241 = !{ptr @.str.84, !81, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @types__getresuid16, !81, !"types__getresuid16", i1 false, i1 false}
!243 = !{ptr @.str.85, !81, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.86, !81, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.87, !81, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @args__getresuid16, !81, !"args__getresuid16", i1 false, i1 false}
!247 = distinct !{null, !248, !"__warned", i1 false, i1 false}
!248 = !{!"../kernel/uid16.c", i32 66, i32 28}
!249 = !{ptr @.str.88, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../kernel/uid16.c", i32 74, i32 19}
!251 = !{ptr @types__setresgid16, !91, !"types__setresgid16", i1 false, i1 false}
!252 = !{ptr @.str.89, !91, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @args__setresgid16, !91, !"args__setresgid16", i1 false, i1 false}
!254 = !{ptr @.str.90, !101, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @types__getresgid16, !101, !"types__getresgid16", i1 false, i1 false}
!256 = !{ptr @.str.91, !101, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.92, !101, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.93, !101, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @args__getresgid16, !101, !"args__getresgid16", i1 false, i1 false}
!260 = distinct !{null, !261, !"__warned", i1 false, i1 false}
!261 = !{!"../kernel/uid16.c", i32 89, i32 28}
!262 = !{ptr @types__setfsuid16, !111, !"types__setfsuid16", i1 false, i1 false}
!263 = !{ptr @args__setfsuid16, !111, !"args__setfsuid16", i1 false, i1 false}
!264 = !{ptr @types__setfsgid16, !121, !"types__setfsgid16", i1 false, i1 false}
!265 = !{ptr @args__setfsgid16, !121, !"args__setfsgid16", i1 false, i1 false}
!266 = !{ptr @.str.94, !131, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @types__getgroups16, !131, !"types__getgroups16", i1 false, i1 false}
!268 = !{ptr @.str.95, !131, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.96, !131, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @args__getgroups16, !131, !"args__getgroups16", i1 false, i1 false}
!271 = distinct !{null, !272, !"__warned", i1 false, i1 false}
!272 = !{!"../kernel/uid16.c", i32 156, i32 28}
!273 = distinct !{null, !274, !"__warned", i1 false, i1 false}
!274 = !{!"../kernel/uid16.c", i32 117, i32 35}
!275 = !{ptr @types__setgroups16, !141, !"types__setgroups16", i1 false, i1 false}
!276 = !{ptr @args__setgroups16, !141, !"args__setgroups16", i1 false, i1 false}
!277 = distinct !{null, !278, !"__warned", i1 false, i1 false}
!278 = !{!"../kernel/uid16.c", i32 135, i32 35}
!279 = !{!"sp"}
!280 = !{i32 1, !"wchar_size", i32 2}
!281 = !{i32 1, !"min_enum_size", i32 4}
!282 = !{i32 8, !"branch-target-enforcement", i32 0}
!283 = !{i32 8, !"sign-return-address", i32 0}
!284 = !{i32 8, !"sign-return-address-all", i32 0}
!285 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!286 = !{i32 7, !"uwtable", i32 1}
!287 = !{i32 7, !"frame-pointer", i32 2}
!288 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!289 = !{i64 5224244}
!290 = !{i64 5224441}
!291 = !{i64 2152709674}
!292 = !{i64 2155020572, i64 2155020852, i64 2155021186, i64 2155021520}
!293 = !{i64 2155029345, i64 2155029625, i64 2155029959, i64 2155030293}
!294 = !{i64 2155038118, i64 2155038398, i64 2155038732, i64 2155039066}
!295 = !{i64 2155076905, i64 2155077185, i64 2155077519, i64 2155077853}
!296 = !{i64 2155085678, i64 2155085958, i64 2155086292, i64 2155086626}
!297 = !{i64 2155094451, i64 2155094731, i64 2155095065, i64 2155095399}
!298 = !{i64 2155123610, i64 2155123890, i64 2155124224, i64 2155124558}
!299 = !{i64 2155135449, i64 2155135729, i64 2155136063, i64 2155136397}
!300 = !{i64 2148756935}
!301 = !{i64 2148671644, i64 2148671676, i64 2148671705, i64 2148671739, i64 2148671770, i64 2148671793}
!302 = !{i64 2148757164}
