; ModuleID = '/llk/IR_all_yes/ipc/msg.c_pt.bc'
source_filename = "../ipc/msg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ipc_ops = type { ptr, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.74, %struct.trace_event, ptr, ptr, %union.anon.76, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.74 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { ptr }
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, i32, %struct.rhashtable }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ipc_params = type { i32, i32, %union.anon.99 }
%union.anon.99 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.80, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kern_ipc_perm = type { %struct.spinlock, i8, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i32, ptr, %struct.rhash_head, %struct.callback_head, %struct.refcount_struct, [28 x i8] }
%struct.kgid_t = type { i32 }
%struct.rhash_head = type { ptr }
%struct.msg_queue = type { %struct.kern_ipc_perm, i64, i64, i64, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, [60 x i8] }
%struct.msqid_ds = type { %struct.ipc_perm, ptr, ptr, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.ipc_perm = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.msqid64_ds = type { %struct.ipc64_perm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipc64_perm = type { i32, i32, i32, i32, i32, i16, [2 x i8], i16, i16, i32, i32 }
%struct.msginfo = type { i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.wake_q_head = type { ptr, ptr }
%struct.msg_sender = type { %struct.list_head, ptr, i32 }
%struct.msgbuf = type { i32, [1 x i8] }
%struct.msg_msg = type { %struct.list_head, i32, i32, ptr, ptr }
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
%struct.msg_receiver = type { %struct.list_head, ptr, i32, i32, i32, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }

@ksys_msgget.msg_ops = internal constant { %struct.ipc_ops, [20 x i8] } { %struct.ipc_ops { ptr @newque, ptr @security_msg_queue_associate, ptr null }, [20 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_msgget\00", [47 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__msgget = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 2, ptr @types__msgget, ptr @args__msgget, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__msgget, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__msgget, i64 20) }, ptr @event_enter__msgget, ptr @event_exit__msgget }, align 4
@event_enter__msgget = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__msgget, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__msgget = internal global ptr @event_enter__msgget, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_msgget\00", [16 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__msgget = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__msgget, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__msgget = internal global ptr @event_exit__msgget, section "_ftrace_events", align 4
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_msgget\00", [21 x i8] zeroinitializer }, align 32
@types__msgget = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.20, ptr @.str.21], [24 x i8] zeroinitializer }, align 32
@args__msgget = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.22, ptr @.str.23], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__msgget = internal global ptr @__syscall_meta__msgget, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_msgctl\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__msgctl = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 3, ptr @types__msgctl, ptr @args__msgctl, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__msgctl, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__msgctl, i64 20) }, ptr @event_enter__msgctl, ptr @event_exit__msgctl }, align 4
@event_enter__msgctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__msgctl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__msgctl = internal global ptr @event_enter__msgctl, section "_ftrace_events", align 4
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_msgctl\00", [16 x i8] zeroinitializer }, align 32
@event_exit__msgctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__msgctl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__msgctl = internal global ptr @event_exit__msgctl, section "_ftrace_events", align 4
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_msgctl\00", [21 x i8] zeroinitializer }, align 32
@types__msgctl = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.21, ptr @.str.21, ptr @.str.24], [20 x i8] zeroinitializer }, align 32
@args__msgctl = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__msgctl = internal global ptr @__syscall_meta__msgctl, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_old_msgctl\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__old_msgctl = internal global %struct.syscall_metadata { ptr @.str.8, i32 -1, i32 3, ptr @types__old_msgctl, ptr @args__old_msgctl, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__old_msgctl, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__old_msgctl, i64 20) }, ptr @event_enter__old_msgctl, ptr @event_exit__old_msgctl }, align 4
@event_enter__old_msgctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__old_msgctl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__old_msgctl = internal global ptr @event_enter__old_msgctl, section "_ftrace_events", align 4
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_old_msgctl\00", [44 x i8] zeroinitializer }, align 32
@event_exit__old_msgctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__old_msgctl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__old_msgctl = internal global ptr @event_exit__old_msgctl, section "_ftrace_events", align 4
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_old_msgctl\00", [17 x i8] zeroinitializer }, align 32
@types__old_msgctl = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.21, ptr @.str.21, ptr @.str.24], [20 x i8] zeroinitializer }, align 32
@args__old_msgctl = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__old_msgctl = internal global ptr @__syscall_meta__old_msgctl, section "__syscalls_metadata", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipc/msg.c\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_msgsnd\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__msgsnd = internal global %struct.syscall_metadata { ptr @.str.12, i32 -1, i32 4, ptr @types__msgsnd, ptr @args__msgsnd, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__msgsnd, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__msgsnd, i64 20) }, ptr @event_enter__msgsnd, ptr @event_exit__msgsnd }, align 4
@event_enter__msgsnd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__msgsnd, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__msgsnd = internal global ptr @event_enter__msgsnd, section "_ftrace_events", align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_msgsnd\00", [16 x i8] zeroinitializer }, align 32
@event_exit__msgsnd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.11 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__msgsnd, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__msgsnd = internal global ptr @event_exit__msgsnd, section "_ftrace_events", align 4
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_msgsnd\00", [21 x i8] zeroinitializer }, align 32
@types__msgsnd = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.21, ptr @.str.32, ptr @.str.33, ptr @.str.21], [16 x i8] zeroinitializer }, align 32
@args__msgsnd = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.25, ptr @.str.34, ptr @.str.35, ptr @.str.23], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__msgsnd = internal global ptr @__syscall_meta__msgsnd, section "__syscalls_metadata", align 4
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_msgrcv\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__msgrcv = internal global %struct.syscall_metadata { ptr @.str.15, i32 -1, i32 5, ptr @types__msgrcv, ptr @args__msgrcv, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__msgrcv, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__msgrcv, i64 20) }, ptr @event_enter__msgrcv, ptr @event_exit__msgrcv }, align 4
@event_enter__msgrcv = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__msgrcv, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__msgrcv = internal global ptr @event_enter__msgrcv, section "_ftrace_events", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_msgrcv\00", [16 x i8] zeroinitializer }, align 32
@event_exit__msgrcv = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.14 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__msgrcv, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__msgrcv = internal global ptr @event_exit__msgrcv, section "_ftrace_events", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_msgrcv\00", [21 x i8] zeroinitializer }, align 32
@types__msgrcv = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.21, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.21], [44 x i8] zeroinitializer }, align 32
@args__msgrcv = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.25, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.23], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__msgrcv = internal global ptr @__syscall_meta__msgrcv, section "__syscalls_metadata", align 4
@init_ipc_ns = external dso_local global %struct.ipc_namespace, align 4
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sysvipc/msg\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"       key      msqid perms      cbytes       qnum lspid lrpid   uid   gid  cuid  cgid      stime      rtime      ctime\0A\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"key_t\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"key\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"msgflg\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"struct msqid_ds *\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"msqid\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@ipc_mni = external dso_local local_unnamed_addr global i32, align 4
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"struct msgbuf *\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"msgp\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"msgsz\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"long\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"msgtyp\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%10d %10d  %4o  %10lu %10lu %5u %5u %5u %5u %5u %5u %10llu %10llu %10llu\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 11, i64 13]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.46 = private unnamed_addr constant [8 x i8] c"msg_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 300, i32 30 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"event_enter__msgget\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"event_exit__msgget\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"types__msgget\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"args__msgget\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [20 x i8] c"event_enter__msgctl\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"event_exit__msgctl\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"types__msgctl\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [13 x i8] c"args__msgctl\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [24 x i8] c"event_enter__old_msgctl\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [23 x i8] c"event_exit__old_msgctl\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"types__old_msgctl\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"args__old_msgctl\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 647, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 960, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c"event_enter__msgsnd\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [19 x i8] c"event_exit__msgsnd\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [14 x i8] c"types__msgsnd\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [13 x i8] c"args__msgsnd\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c"event_enter__msgrcv\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [19 x i8] c"event_exit__msgrcv\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [14 x i8] c"types__msgrcv\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [13 x i8] c"args__msgrcv\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1353, i32 26 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1354, i32 5 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 723, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 314, i32 1 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 634, i32 1 }
@___asan_gen_.194 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 174, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 695, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 965, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1264, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private constant [13 x i8] c"../ipc/msg.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1329, i32 6 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__event_enter__msgctl, ptr @__event_enter__msgget, ptr @__event_enter__msgrcv, ptr @__event_enter__msgsnd, ptr @__event_enter__old_msgctl, ptr @__event_exit__msgctl, ptr @__event_exit__msgget, ptr @__event_exit__msgrcv, ptr @__event_exit__msgsnd, ptr @__event_exit__old_msgctl, ptr @__p_syscall_meta__msgctl, ptr @__p_syscall_meta__msgget, ptr @__p_syscall_meta__msgrcv, ptr @__p_syscall_meta__msgsnd, ptr @__p_syscall_meta__old_msgctl, ptr @__syscall_meta__msgctl, ptr @__syscall_meta__msgget, ptr @__syscall_meta__msgrcv, ptr @__syscall_meta__msgsnd, ptr @__syscall_meta__old_msgctl, ptr @event_enter__msgctl, ptr @event_enter__msgget, ptr @event_enter__msgrcv, ptr @event_enter__msgsnd, ptr @event_enter__old_msgctl, ptr @event_exit__msgctl, ptr @event_exit__msgget, ptr @event_exit__msgrcv, ptr @event_exit__msgsnd, ptr @event_exit__old_msgctl, ptr @ksys_msgget.msg_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__msgget, ptr @args__msgget, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__msgctl, ptr @args__msgctl, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @types__old_msgctl, ptr @args__old_msgctl, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @types__msgsnd, ptr @args__msgsnd, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @types__msgrcv, ptr @args__msgrcv, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksys_msgget.msg_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__msgget to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__msgget to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__msgget to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__msgget to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__msgctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__msgctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__msgctl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__msgctl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__old_msgctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__old_msgctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__old_msgctl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__old_msgctl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__msgsnd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__msgsnd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__msgsnd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__msgsnd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__msgrcv to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__msgrcv to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__msgrcv to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__msgrcv to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_msgget = dso_local alias i32 (i32, i32), ptr @__se_sys_msgget
@sys_msgctl = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_msgctl
@sys_old_msgctl = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_old_msgctl
@sys_msgsnd = dso_local alias i32 (i32, ptr, i32, i32), ptr @__se_sys_msgsnd
@sys_msgrcv = dso_local alias i32 (i32, ptr, i32, i32, i32), ptr @__se_sys_msgrcv

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_msgget(i32 noundef %key, i32 noundef %msgflg) local_unnamed_addr #0 align 64 {
entry:
  %msg_params = alloca %struct.ipc_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg_params) #10
  %0 = getelementptr inbounds %struct.ipc_params, ptr %msg_params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ipc_params, ptr %msg_params, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !112
  %3 = tail call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 110
  %7 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nsproxy, align 4
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ipc_ns, align 4
  %11 = ptrtoint ptr %msg_params to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %key, ptr %msg_params, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %msgflg, ptr %0, align 4
  %arrayidx = getelementptr [3 x %struct.ipc_ids], ptr %10, i32 0, i32 1
  %call2 = call i32 @ipcget(ptr noundef %10, ptr noundef %arrayidx, ptr noundef nonnull @ksys_msgget.msg_ops, ptr noundef nonnull %msg_params) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg_params) #10
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @newque(ptr noundef %ns, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params, align 4
  %flg = getelementptr inbounds %struct.ipc_params, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %flg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flg, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 4197568, i32 noundef 256) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !113

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = trunc i32 %3 to i16
  %conv = and i16 %5, 511
  %mode = getelementptr inbounds %struct.kern_ipc_perm, ptr %call7.i, i32 0, i32 8
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %mode, align 8
  %key7 = getelementptr inbounds %struct.kern_ipc_perm, ptr %call7.i, i32 0, i32 3
  %7 = ptrtoint ptr %key7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %1, ptr %key7, align 4
  %security = getelementptr inbounds %struct.kern_ipc_perm, ptr %call7.i, i32 0, i32 10
  %8 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %security, align 16
  %call10 = tail call i32 @security_msg_queue_alloc(ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %q_stime = getelementptr inbounds %struct.msg_queue, ptr %call7.i, i32 0, i32 1
  %9 = call ptr @memset(ptr %q_stime, i32 0, i32 16)
  %call14 = tail call i64 @ktime_get_real_seconds() #10
  %q_ctime = getelementptr inbounds %struct.msg_queue, ptr %call7.i, i32 0, i32 3
  %10 = ptrtoint ptr %q_ctime to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call14, ptr %q_ctime, align 16
  %q_qnum = getelementptr inbounds %struct.msg_queue, ptr %call7.i, i32 0, i32 5
  %11 = ptrtoint ptr %q_qnum to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %q_qnum, align 4
  %q_cbytes = getelementptr inbounds %struct.msg_queue, ptr %call7.i, i32 0, i32 4
  %12 = ptrtoint ptr %q_cbytes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %q_cbytes, align 8
  %msg_ctlmnb = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 4
  %13 = ptrtoint ptr %msg_ctlmnb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_ctlmnb, align 4
  %q_qbytes = getelementptr inbounds %struct.msg_queue, ptr %call7.i, i32 0, i32 6
  %15 = ptrtoint ptr %q_qbytes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %q_qbytes, align 32
  %q_lrpid = getelementptr inbounds %struct.msg_queue, ptr %call7.i, i32 0, i32 8
  %16 = ptrtoint ptr %q_lrpid to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %q_lrpid, align 8
  %q_lspid = getelementptr inbounds %struct.msg_queue, ptr %call7.i, i32 0, i32 7
  %17 = ptrtoint ptr %q_lspid to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %q_lspid, align 4
  %q_messages = getelementptr inbounds %struct.msg_queue, ptr %call7.i, i32 0, i32 9
  %18 = ptrtoint ptr %q_messages to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %q_messages, ptr %q_messages, align 4
  %prev.i = getelementptr inbounds %struct.msg_queue, ptr %call7.i, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %q_messages, ptr %prev.i, align 8
  %q_receivers = getelementptr inbounds %struct.msg_queue, ptr %call7.i, i32 0, i32 10
  %20 = ptrtoint ptr %q_receivers to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %q_receivers, ptr %q_receivers, align 4
  %prev.i52 = getelementptr inbounds %struct.msg_queue, ptr %call7.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i52 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %q_receivers, ptr %prev.i52, align 8
  %q_senders = getelementptr inbounds %struct.msg_queue, ptr %call7.i, i32 0, i32 11
  %22 = ptrtoint ptr %q_senders to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %q_senders, ptr %q_senders, align 4
  %prev.i53 = getelementptr inbounds %struct.msg_queue, ptr %call7.i, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %prev.i53 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %q_senders, ptr %prev.i53, align 8
  %arrayidx = getelementptr [3 x %struct.ipc_ids], ptr %ns, i32 0, i32 1
  %msg_ctlmni = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 5
  %24 = ptrtoint ptr %msg_ctlmni to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_ctlmni, align 4
  %call16 = tail call i32 @ipc_addid(ptr noundef %arrayidx, ptr noundef nonnull %call7.i, i32 noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ipc_rcu_putref(ptr noundef nonnull %call7.i, ptr noundef nonnull @msg_rcu_free) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  tail call void @_raw_spin_unlock(ptr noundef nonnull %call7.i) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

if.end20.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %if.end20
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.19) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %if.end20.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !114
  %26 = tail call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %id = getelementptr inbounds %struct.kern_ipc_perm, ptr %call7.i, i32 0, i32 2
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 16
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then18, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then12 ], [ %call16, %if.then18 ], [ %31, %rcu_read_unlock.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_msg_queue_associate(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipcget(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_msgget(i32 noundef %key, i32 noundef %msgflg) #0 align 64 {
entry:
  %msg_params.i.i = alloca %struct.ipc_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg_params.i.i) #10
  %0 = getelementptr inbounds %struct.ipc_params, ptr %msg_params.i.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ipc_params, ptr %msg_params.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !112
  %3 = tail call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i.i, align 8
  %nsproxy.i.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 110
  %7 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nsproxy.i.i, align 4
  %ipc_ns.i.i = getelementptr inbounds %struct.nsproxy, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %ipc_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ipc_ns.i.i, align 4
  %11 = ptrtoint ptr %msg_params.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %key, ptr %msg_params.i.i, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %msgflg, ptr %0, align 4
  %arrayidx.i.i = getelementptr [3 x %struct.ipc_ids], ptr %10, i32 0, i32 1
  %call2.i.i = call i32 @ipcget(ptr noundef %10, ptr noundef %arrayidx.i.i, ptr noundef nonnull @ksys_msgget.msg_ops, ptr noundef nonnull %msg_params.i.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg_params.i.i) #10
  ret i32 %call2.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_msgctl(i32 noundef %msqid, i32 noundef %cmd, i32 noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %buf to ptr
  %call.i = tail call fastcc i32 @ksys_msgctl(i32 noundef %msqid, i32 noundef %cmd, ptr noundef %0, i32 noundef 256) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_old_msgctl(i32 noundef %msqid, i32 noundef %cmd, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %cmd.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cmd, ptr %cmd.addr, align 4
  %call = call i32 @ipc_parse_version(ptr noundef nonnull %cmd.addr) #10
  %1 = ptrtoint ptr %cmd.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cmd.addr, align 4
  %call1 = call fastcc i32 @ksys_msgctl(i32 noundef %msqid, i32 noundef %2, ptr noundef %buf, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipc_parse_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ksys_msgctl(i32 noundef %msqid, i32 noundef %cmd, ptr noundef %buf, i32 noundef %version) unnamed_addr #0 align 64 {
entry:
  %tbuf_old.i = alloca %struct.msqid_ds, align 4
  %out.i = alloca %struct.msqid_ds, align 4
  %msqid64 = alloca %struct.msqid64_ds, align 4
  %msginfo = alloca %struct.msginfo, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %msqid64) #10
  %0 = call ptr @memset(ptr %msqid64, i32 255, i32 88)
  %1 = or i32 %cmd, %msqid
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not = icmp sgt i32 %1, -1
  br i1 %.not, label %if.end, label %entry.cleanup26_crit_edge

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup26

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 110
  %6 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nsproxy, align 4
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipc_ns, align 4
  %10 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup26_crit_edge [
    i32 3, label %if.end.sw.bb_crit_edge
    i32 12, label %if.end.sw.bb_crit_edge102
    i32 11, label %if.end.sw.bb9_crit_edge
    i32 13, label %if.end.sw.bb9_crit_edge103
    i32 2, label %if.end.sw.bb9_crit_edge104
    i32 1, label %sw.bb18
    i32 0, label %sw.bb24
  ]

if.end.sw.bb9_crit_edge104:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

if.end.sw.bb9_crit_edge103:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

if.end.sw.bb9_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb9

if.end.sw.bb_crit_edge102:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.cleanup26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup26

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge102
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %msginfo) #10
  %11 = call ptr @memset(ptr %msginfo, i32 255, i32 32)
  %call.i = tail call i32 @security_msg_queue_msgctl(ptr noundef null, i32 noundef %cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %msgctl_info.exit

if.end.i:                                         ; preds = %sw.bb
  %12 = call ptr @memset(ptr %msginfo, i32 0, i32 32)
  %msg_ctlmni.i = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 5
  %13 = ptrtoint ptr %msg_ctlmni.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_ctlmni.i, align 4
  %msgmni.i = getelementptr inbounds %struct.msginfo, ptr %msginfo, i32 0, i32 4
  %15 = ptrtoint ptr %msgmni.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %msgmni.i, align 4
  %msg_ctlmax.i = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %msg_ctlmax.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_ctlmax.i, align 4
  %msgmax.i = getelementptr inbounds %struct.msginfo, ptr %msginfo, i32 0, i32 2
  %18 = ptrtoint ptr %msgmax.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %msgmax.i, align 4
  %msg_ctlmnb.i = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 4
  %19 = ptrtoint ptr %msg_ctlmnb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_ctlmnb.i, align 4
  %msgmnb.i = getelementptr inbounds %struct.msginfo, ptr %msginfo, i32 0, i32 3
  %21 = ptrtoint ptr %msgmnb.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %msgmnb.i, align 4
  %msgssz.i = getelementptr inbounds %struct.msginfo, ptr %msginfo, i32 0, i32 5
  %22 = ptrtoint ptr %msgssz.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %msgssz.i, align 4
  %msgseg.i = getelementptr inbounds %struct.msginfo, ptr %msginfo, i32 0, i32 7
  %23 = ptrtoint ptr %msgseg.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %msgseg.i, align 4
  %arrayidx.i = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 1
  %rwsem.i = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 1, i32 2
  tail call void @down_read(ptr noundef %rwsem.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %cmd)
  %cmp.i = icmp eq i32 %cmd, 12
  br i1 %cmp.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %26 = ptrtoint ptr %msginfo to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %msginfo, align 4
  %msg_hdrs.i = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 7
  %call.i.i.i50 = tail call zeroext i1 @__kasan_check_read(ptr noundef %msg_hdrs.i, i32 noundef 4) #10
  %27 = ptrtoint ptr %msg_hdrs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %msg_hdrs.i, align 4
  %msg_bytes.i = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 6
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %msg_bytes.i, i32 noundef 4) #10
  %29 = ptrtoint ptr %msg_bytes.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %msg_bytes.i, align 4
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %msginfo to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 512000, ptr %msginfo, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.then1.i
  %.sink = phi i32 [ %28, %if.then1.i ], [ 16384, %if.else.i ]
  %.sink.i = phi i32 [ %30, %if.then1.i ], [ 16384, %if.else.i ]
  %32 = getelementptr inbounds %struct.msginfo, ptr %msginfo, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %32, align 4
  %34 = getelementptr inbounds %struct.msginfo, ptr %msginfo, i32 0, i32 6
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink.i, ptr %34, align 4
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i51 = icmp eq i32 %37, 0
  br i1 %cmp.i.i51, label %ipc_get_maxidx.exit.thread.i, label %if.end.i.i52

ipc_get_maxidx.exit.thread.i:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_read(ptr noundef %rwsem.i) #10
  br label %41

if.end.i.i52:                                     ; preds = %if.end9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipc_mni to i32))
  %38 = load i32, ptr @ipc_mni, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %38)
  %cmp2.i.i = icmp eq i32 %37, %38
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %37, -1
  br label %ipc_get_maxidx.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  %max_idx.i.i = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 1, i32 4
  %39 = ptrtoint ptr %max_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_idx.i.i, align 4
  br label %ipc_get_maxidx.exit.i

ipc_get_maxidx.exit.i:                            ; preds = %if.end4.i.i, %if.then3.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then3.i.i ], [ %40, %if.end4.i.i ]
  tail call void @up_read(ptr noundef %rwsem.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp16.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp16.i, label %ipc_get_maxidx.exit.i._crit_edge, label %ipc_get_maxidx.exit.i.if.end59.i.i_crit_edge

ipc_get_maxidx.exit.i.if.end59.i.i_crit_edge:     ; preds = %ipc_get_maxidx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i.i

ipc_get_maxidx.exit.i._crit_edge:                 ; preds = %ipc_get_maxidx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %41

41:                                               ; preds = %ipc_get_maxidx.exit.i._crit_edge, %ipc_get_maxidx.exit.thread.i
  br label %if.end59.i.i

msgctl_info.exit:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %msgctl_info.exit.cleanup_crit_edge, label %msgctl_info.exit.if.end59.i.i_crit_edge

msgctl_info.exit.if.end59.i.i_crit_edge:          ; preds = %msgctl_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i.i

msgctl_info.exit.cleanup_crit_edge:               ; preds = %msgctl_info.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end59.i.i:                                     ; preds = %msgctl_info.exit.if.end59.i.i_crit_edge, %41, %ipc_get_maxidx.exit.i.if.end59.i.i_crit_edge
  %retval.0.i87 = phi i32 [ %call.i, %msgctl_info.exit.if.end59.i.i_crit_edge ], [ %retval.0.i.i, %ipc_get_maxidx.exit.i.if.end59.i.i_crit_edge ], [ 0, %41 ]
  tail call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end59.i.i.cleanup_crit_edge, label %if.end.i.i

if.end59.i.i.cleanup_crit_edge:                   ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end59.i.i
  %42 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 32, i32 -1226833920) #14, !srcloc !115
  %asmresult.i.i = extractvalue { i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %msginfo, i32 noundef 32) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %msginfo, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 %retval.0.i87, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end59.i.i.cleanup_crit_edge, %msgctl_info.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %msgctl_info.exit.cleanup_crit_edge ], [ -14, %if.end59.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %msginfo) #10
  br label %cleanup26

sw.bb9:                                           ; preds = %if.end.sw.bb9_crit_edge, %if.end.sw.bb9_crit_edge103, %if.end.sw.bb9_crit_edge104
  %43 = call ptr @memset(ptr %msqid64, i32 0, i32 88)
  %44 = tail call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %47, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !116
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i53 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i53, label %sw.bb9.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

sw.bb9.rcu_read_lock.exit.i_crit_edge:            ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %sw.bb9
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i54

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i54:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.31) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i54, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %sw.bb9.rcu_read_lock.exit.i_crit_edge
  %48 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %cmd, label %if.else.i56 [
    i32 11, label %rcu_read_lock.exit.i.if.then.i_crit_edge
    i32 13, label %rcu_read_lock.exit.i.if.then.i_crit_edge105
  ]

rcu_read_lock.exit.i.if.then.i_crit_edge105:      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

rcu_read_lock.exit.i.if.then.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %rcu_read_lock.exit.i.if.then.i_crit_edge, %rcu_read_lock.exit.i.if.then.i_crit_edge105
  %arrayidx.i.i = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 1
  %call.i93.i = tail call ptr @ipc_obtain_object_idr(ptr noundef %arrayidx.i.i, i32 noundef %msqid) #10
  %cmp.i.i55 = icmp ugt ptr %call.i93.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i55, label %if.then3.i, label %if.end10.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %call.i93.i to i32
  br label %out_unlock.i

if.else.i56:                                      ; preds = %rcu_read_lock.exit.i
  %arrayidx.i94.i = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 1
  %call.i95.i = tail call ptr @ipc_obtain_object_check(ptr noundef %arrayidx.i94.i, i32 noundef %msqid) #10
  %cmp.i96.i = icmp ugt ptr %call.i95.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96.i, label %if.then7.i, label %if.else.i56.if.else13.i_crit_edge

if.else.i56.if.else13.i_crit_edge:                ; preds = %if.else.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13.i

if.then7.i:                                       ; preds = %if.else.i56
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %call.i95.i to i32
  br label %out_unlock.i

if.end10.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cmd)
  %cmp11.i = icmp eq i32 %cmd, 13
  br i1 %cmp11.i, label %if.end10.i.if.end18.i_crit_edge, label %if.end10.i.if.else13.i_crit_edge

if.end10.i.if.else13.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else13.i

if.end10.i.if.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.else13.i:                                      ; preds = %if.end10.i.if.else13.i_crit_edge, %if.else.i56.if.else13.i_crit_edge
  %msq.0110.i = phi ptr [ %call.i93.i, %if.end10.i.if.else13.i_crit_edge ], [ %call.i95.i, %if.else.i56.if.else13.i_crit_edge ]
  %call15.i = tail call i32 @ipcperms(ptr noundef %9, ptr noundef %msq.0110.i, i16 noundef signext 292) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not.i57 = icmp eq i32 %call15.i, 0
  br i1 %tobool.not.i57, label %if.else13.i.if.end18.i_crit_edge, label %if.else13.i.out_unlock.i_crit_edge

if.else13.i.out_unlock.i_crit_edge:               ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.i

if.else13.i.if.end18.i_crit_edge:                 ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else13.i.if.end18.i_crit_edge, %if.end10.i.if.end18.i_crit_edge
  %msq.0109.i = phi ptr [ %msq.0110.i, %if.else13.i.if.end18.i_crit_edge ], [ %call.i93.i, %if.end10.i.if.end18.i_crit_edge ]
  %call20.i = tail call i32 @security_msg_queue_msgctl(ptr noundef %msq.0109.i, i32 noundef %cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end18.i.out_unlock.i_crit_edge

if.end18.i.out_unlock.i_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.i

if.end23.i:                                       ; preds = %if.end18.i
  tail call void @_raw_spin_lock(ptr noundef %msq.0109.i) #10
  %deleted.i.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %msq.0109.i, i32 0, i32 1
  %51 = ptrtoint ptr %deleted.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %deleted.i.i, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i97.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i97.i, label %if.end29.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %msq.0109.i) #10
  br label %out_unlock.i

if.end29.i:                                       ; preds = %if.end23.i
  call void @kernel_to_ipc64_perm(ptr noundef %msq.0109.i, ptr noundef nonnull %msqid64) #10
  %q_stime.i = getelementptr inbounds %struct.msg_queue, ptr %msq.0109.i, i32 0, i32 1
  %53 = ptrtoint ptr %q_stime.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %q_stime.i, align 128
  %conv.i = trunc i64 %54 to i32
  %msg_stime.i = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 1
  %55 = ptrtoint ptr %msg_stime.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv.i, ptr %msg_stime.i, align 4
  %q_rtime.i = getelementptr inbounds %struct.msg_queue, ptr %msq.0109.i, i32 0, i32 2
  %56 = ptrtoint ptr %q_rtime.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %q_rtime.i, align 8
  %conv31.i = trunc i64 %57 to i32
  %msg_rtime.i = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 3
  %58 = ptrtoint ptr %msg_rtime.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv31.i, ptr %msg_rtime.i, align 4
  %q_ctime.i = getelementptr inbounds %struct.msg_queue, ptr %msq.0109.i, i32 0, i32 3
  %59 = ptrtoint ptr %q_ctime.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %q_ctime.i, align 16
  %conv32.i = trunc i64 %60 to i32
  %msg_ctime.i = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 5
  %61 = ptrtoint ptr %msg_ctime.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv32.i, ptr %msg_ctime.i, align 4
  %62 = lshr i64 %54, 32
  %conv34.i = trunc i64 %62 to i32
  %msg_stime_high.i = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 2
  %63 = ptrtoint ptr %msg_stime_high.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv34.i, ptr %msg_stime_high.i, align 4
  %64 = lshr i64 %57, 32
  %conv37.i = trunc i64 %64 to i32
  %msg_rtime_high.i = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 4
  %65 = ptrtoint ptr %msg_rtime_high.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv37.i, ptr %msg_rtime_high.i, align 4
  %66 = lshr i64 %60, 32
  %conv40.i = trunc i64 %66 to i32
  %msg_ctime_high.i = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 6
  %67 = ptrtoint ptr %msg_ctime_high.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv40.i, ptr %msg_ctime_high.i, align 4
  %q_cbytes.i = getelementptr inbounds %struct.msg_queue, ptr %msq.0109.i, i32 0, i32 4
  %68 = ptrtoint ptr %q_cbytes.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %q_cbytes.i, align 8
  %msg_cbytes.i = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 7
  %70 = ptrtoint ptr %msg_cbytes.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %msg_cbytes.i, align 4
  %q_qnum.i = getelementptr inbounds %struct.msg_queue, ptr %msq.0109.i, i32 0, i32 5
  %71 = ptrtoint ptr %q_qnum.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %q_qnum.i, align 4
  %msg_qnum.i = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 8
  %73 = ptrtoint ptr %msg_qnum.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %msg_qnum.i, align 4
  %q_qbytes.i = getelementptr inbounds %struct.msg_queue, ptr %msq.0109.i, i32 0, i32 6
  %74 = ptrtoint ptr %q_qbytes.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %q_qbytes.i, align 32
  %msg_qbytes.i = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 9
  %76 = ptrtoint ptr %msg_qbytes.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %msg_qbytes.i, align 4
  %q_lspid.i = getelementptr inbounds %struct.msg_queue, ptr %msq.0109.i, i32 0, i32 7
  %77 = ptrtoint ptr %q_lspid.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %q_lspid.i, align 4
  %call41.i = call i32 @pid_vnr(ptr noundef %78) #10
  %msg_lspid.i = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 10
  %79 = ptrtoint ptr %msg_lspid.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call41.i, ptr %msg_lspid.i, align 4
  %q_lrpid.i = getelementptr inbounds %struct.msg_queue, ptr %msq.0109.i, i32 0, i32 8
  %80 = ptrtoint ptr %q_lrpid.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %q_lrpid.i, align 8
  %call42.i = call i32 @pid_vnr(ptr noundef %81) #10
  %msg_lrpid.i = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 11
  %82 = ptrtoint ptr %msg_lrpid.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call42.i, ptr %msg_lrpid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd)
  %cmp43.i = icmp eq i32 %cmd, 2
  br i1 %cmp43.i, label %if.end29.i.if.end48.i_crit_edge, label %if.else46.i

if.end29.i.if.end48.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

if.else46.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %id.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %msq.0109.i, i32 0, i32 2
  %83 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %id.i, align 16
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else46.i, %if.end29.i.if.end48.i_crit_edge
  %err.0.i = phi i32 [ %84, %if.else46.i ], [ 0, %if.end29.i.if.end48.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %msq.0109.i) #10
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %if.end48.i, %if.then27.i, %if.end18.i.out_unlock.i_crit_edge, %if.else13.i.out_unlock.i_crit_edge, %if.then7.i, %if.then3.i
  %err.1.i = phi i32 [ %49, %if.then3.i ], [ %call20.i, %if.end18.i.out_unlock.i_crit_edge ], [ %err.0.i, %if.end48.i ], [ -43, %if.then27.i ], [ -13, %if.else13.i.out_unlock.i_crit_edge ], [ %50, %if.then7.i ]
  %call.i98.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i98.i, label %out_unlock.i.msgctl_stat.exit_crit_edge, label %land.lhs.true.i101.i

out_unlock.i.msgctl_stat.exit_crit_edge:          ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %msgctl_stat.exit

land.lhs.true.i101.i:                             ; preds = %out_unlock.i
  %call1.i99.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i99.i)
  %tobool.not.i100.i = icmp eq i32 %call1.i99.i, 0
  br i1 %tobool.not.i100.i, label %land.lhs.true.i101.i.msgctl_stat.exit_crit_edge, label %land.lhs.true2.i103.i

land.lhs.true.i101.i.msgctl_stat.exit_crit_edge:  ; preds = %land.lhs.true.i101.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %msgctl_stat.exit

land.lhs.true2.i103.i:                            ; preds = %land.lhs.true.i101.i
  %.b4.i102.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i102.i, label %land.lhs.true2.i103.i.msgctl_stat.exit_crit_edge, label %if.then.i104.i

land.lhs.true2.i103.i.msgctl_stat.exit_crit_edge: ; preds = %land.lhs.true2.i103.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %msgctl_stat.exit

if.then.i104.i:                                   ; preds = %land.lhs.true2.i103.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.19) #10
  br label %msgctl_stat.exit

msgctl_stat.exit:                                 ; preds = %if.then.i104.i, %land.lhs.true2.i103.i.msgctl_stat.exit_crit_edge, %land.lhs.true.i101.i.msgctl_stat.exit_crit_edge, %out_unlock.i.msgctl_stat.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !114
  %85 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i.i105.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i.i.i105.i to ptr
  %preempt_count.i.i.i.i106.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i.i.i106.i, align 4
  %sub.i.i.i.i = add i32 %88, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i106.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %cmp11 = icmp slt i32 %err.1.i, 0
  br i1 %cmp11, label %msgctl_stat.exit.cleanup26_crit_edge, label %if.end13

msgctl_stat.exit.cleanup26_crit_edge:             ; preds = %msgctl_stat.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup26

if.end13:                                         ; preds = %msgctl_stat.exit
  %89 = zext i32 %version to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %version, label %if.end13.cleanup26_crit_edge [
    i32 256, label %if.end59.i.i.i
    i32 0, label %sw.bb1.i
  ]

if.end13.cleanup26_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup26

if.end59.i.i.i:                                   ; preds = %if.end13
  call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 174) #10
  %call.i.i.i58 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i58, label %if.end59.i.i.i.cleanup26_crit_edge, label %if.end.i.i.i

if.end59.i.i.i.cleanup26_crit_edge:               ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup26

if.end.i.i.i:                                     ; preds = %if.end59.i.i.i
  %90 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 88, i32 -1226833920) #14, !srcloc !115
  %asmresult.i.i.i = extractvalue { i32, i32 } %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.cleanup26_crit_edge

if.end.i.i.i.cleanup26_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup26

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %msqid64, i32 noundef 88) #10
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %msqid64, i32 noundef 88) #10
  br label %copy_msqid_to_user.exit

sw.bb1.i:                                         ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %out.i) #10
  %91 = call ptr @memset(ptr %out.i, i32 0, i32 56)
  call void @ipc64_perm_to_ipc_perm(ptr noundef nonnull %msqid64, ptr noundef nonnull %out.i) #10
  %msg_stime.i59 = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 1
  %92 = ptrtoint ptr %msg_stime.i59 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %msg_stime.i59, align 4
  %msg_stime3.i = getelementptr inbounds %struct.msqid_ds, ptr %out.i, i32 0, i32 3
  %94 = ptrtoint ptr %msg_stime3.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %msg_stime3.i, align 4
  %msg_rtime.i60 = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 3
  %95 = ptrtoint ptr %msg_rtime.i60 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %msg_rtime.i60, align 4
  %msg_rtime4.i = getelementptr inbounds %struct.msqid_ds, ptr %out.i, i32 0, i32 4
  %97 = ptrtoint ptr %msg_rtime4.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %msg_rtime4.i, align 4
  %msg_ctime.i61 = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 5
  %98 = ptrtoint ptr %msg_ctime.i61 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %msg_ctime.i61, align 4
  %msg_ctime5.i = getelementptr inbounds %struct.msqid_ds, ptr %out.i, i32 0, i32 5
  %100 = ptrtoint ptr %msg_ctime5.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %msg_ctime5.i, align 4
  %msg_cbytes.i62 = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 7
  %101 = ptrtoint ptr %msg_cbytes.i62 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %msg_cbytes.i62, align 4
  %103 = call i32 @llvm.umin.i32(i32 %102, i32 65535) #10
  %104 = trunc i32 %103 to i16
  %105 = getelementptr inbounds %struct.msqid_ds, ptr %out.i, i32 0, i32 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %104, ptr %105, align 4
  %msg_lcbytes.i = getelementptr inbounds %struct.msqid_ds, ptr %out.i, i32 0, i32 6
  %107 = ptrtoint ptr %msg_lcbytes.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %102, ptr %msg_lcbytes.i, align 4
  %msg_qnum.i63 = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 8
  %108 = ptrtoint ptr %msg_qnum.i63 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %msg_qnum.i63, align 4
  %110 = call i32 @llvm.umin.i32(i32 %109, i32 65535) #10
  %111 = trunc i32 %110 to i16
  %112 = getelementptr inbounds %struct.msqid_ds, ptr %out.i, i32 0, i32 9
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %111, ptr %112, align 2
  %msg_qbytes.i64 = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 9
  %114 = ptrtoint ptr %msg_qbytes.i64 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %msg_qbytes.i64, align 4
  %116 = call i32 @llvm.umin.i32(i32 %115, i32 65535) #10
  %117 = trunc i32 %116 to i16
  %118 = getelementptr inbounds %struct.msqid_ds, ptr %out.i, i32 0, i32 10
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %117, ptr %118, align 4
  %msg_lqbytes.i = getelementptr inbounds %struct.msqid_ds, ptr %out.i, i32 0, i32 7
  %120 = ptrtoint ptr %msg_lqbytes.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %115, ptr %msg_lqbytes.i, align 4
  %msg_lspid.i65 = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 10
  %121 = ptrtoint ptr %msg_lspid.i65 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %msg_lspid.i65, align 4
  %conv29.i = trunc i32 %122 to i16
  %msg_lspid30.i = getelementptr inbounds %struct.msqid_ds, ptr %out.i, i32 0, i32 11
  %123 = ptrtoint ptr %msg_lspid30.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv29.i, ptr %msg_lspid30.i, align 2
  %msg_lrpid.i66 = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 11
  %124 = ptrtoint ptr %msg_lrpid.i66 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %msg_lrpid.i66, align 4
  %conv31.i67 = trunc i32 %125 to i16
  %msg_lrpid32.i = getelementptr inbounds %struct.msqid_ds, ptr %out.i, i32 0, i32 12
  %126 = ptrtoint ptr %msg_lrpid32.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv31.i67, ptr %msg_lrpid32.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 174) #10
  %call.i.i55.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i55.i, label %sw.bb1.i.copy_to_user.exit63.i_crit_edge, label %if.end.i.i58.i

sw.bb1.i.copy_to_user.exit63.i_crit_edge:         ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit63.i

if.end.i.i58.i:                                   ; preds = %sw.bb1.i
  %127 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 56, i32 -1226833920) #14, !srcloc !115
  %asmresult.i.i56.i = extractvalue { i32, i32 } %127, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i56.i)
  %cmp.i6.i57.i = icmp eq i32 %asmresult.i.i56.i, 0
  br i1 %cmp.i6.i57.i, label %if.then2.i.i61.i, label %if.end.i.i58.i.copy_to_user.exit63.i_crit_edge

if.end.i.i58.i.copy_to_user.exit63.i_crit_edge:   ; preds = %if.end.i.i58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit63.i

if.then2.i.i61.i:                                 ; preds = %if.end.i.i58.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i59.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %out.i, i32 noundef 56) #10
  %call.i12.i.i60.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %out.i, i32 noundef 56) #10
  br label %copy_to_user.exit63.i

copy_to_user.exit63.i:                            ; preds = %if.then2.i.i61.i, %if.end.i.i58.i.copy_to_user.exit63.i_crit_edge, %sw.bb1.i.copy_to_user.exit63.i_crit_edge
  %n.addr.0.i62.i = phi i32 [ 56, %sw.bb1.i.copy_to_user.exit63.i_crit_edge ], [ %call.i12.i.i60.i, %if.then2.i.i61.i ], [ 56, %if.end.i.i58.i.copy_to_user.exit63.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %out.i) #10
  br label %copy_msqid_to_user.exit

copy_msqid_to_user.exit:                          ; preds = %copy_to_user.exit63.i, %if.then2.i.i.i
  %retval.0.i68 = phi i32 [ %n.addr.0.i62.i, %copy_to_user.exit63.i ], [ %call.i12.i.i.i, %if.then2.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i68)
  %tobool15.not = icmp eq i32 %retval.0.i68, 0
  %spec.select101 = select i1 %tobool15.not, i32 %err.1.i, i32 -14
  br label %cleanup26

sw.bb18:                                          ; preds = %if.end
  %128 = zext i32 %version to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %version, label %sw.bb18.cleanup26_crit_edge [
    i32 256, label %if.end59.i.i.i73
    i32 0, label %sw.bb1.i78
  ]

sw.bb18.cleanup26_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup26

if.end59.i.i.i73:                                 ; preds = %sw.bb18
  tail call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 156) #10
  %call.i.i.i72 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i72, label %if.end59.i.i.i73.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end59.i.i.i73.if.then11.i.i.i_crit_edge:       ; preds = %if.end59.i.i.i73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end59.i.i.i73
  %129 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 88, i32 -1226833920) #14, !srcloc !118
  %asmresult.i.i.i74 = extractvalue { i32, i32 } %129, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i74)
  %cmp.i6.i.i75 = icmp eq i32 %asmresult.i.i.i74, 0
  br i1 %cmp.i6.i.i75, label %if.end.i.i.i77, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !119

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i77:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i76 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %msqid64, i32 noundef 88) #10
  %130 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i.i.i.i = and i32 %130, -16384
  %131 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 4
  %132 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !120
  %and.i.i.i.i.i = and i32 %132, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %msqid64, ptr noundef %buf, i32 noundef 88) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %132) #10, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i77.if.end22_crit_edge, label %if.end.i.i.i77.if.then11.i.i.i_crit_edge, !prof !119

if.end.i.i.i77.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i77.if.end22_crit_edge:                ; preds = %if.end.i.i.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i77.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end59.i.i.i73.if.then11.i.i.i_crit_edge
  %res.0.i.i54.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i77.if.then11.i.i.i_crit_edge ], [ 88, %if.end59.i.i.i73.if.then11.i.i.i_crit_edge ], [ 88, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 88, %res.0.i.i54.i
  %add.ptr.i.i.i = getelementptr i8, ptr %msqid64, i32 %sub.i.i.i
  %133 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i54.i)
  br label %cleanup26

sw.bb1.i78:                                       ; preds = %sw.bb18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tbuf_old.i) #10
  %134 = call ptr @memset(ptr %tbuf_old.i, i32 255, i32 56)
  tail call void @__might_fault(ptr noundef nonnull @.str.30, i32 noundef 156) #10
  %call.i.i33.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i33.i, label %sw.bb1.i78.copy_msqid_from_user.exit_crit_edge, label %land.lhs.true.i.i36.i

sw.bb1.i78.copy_msqid_from_user.exit_crit_edge:   ; preds = %sw.bb1.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_msqid_from_user.exit

land.lhs.true.i.i36.i:                            ; preds = %sw.bb1.i78
  %135 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 56, i32 -1226833920) #14, !srcloc !118
  %asmresult.i.i34.i = extractvalue { i32, i32 } %135, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i34.i)
  %cmp.i6.i35.i = icmp eq i32 %asmresult.i.i34.i, 0
  br i1 %cmp.i6.i35.i, label %if.end.i.i46.i, label %land.lhs.true.i.i36.i.copy_msqid_from_user.exit_crit_edge, !prof !119

land.lhs.true.i.i36.i.copy_msqid_from_user.exit_crit_edge: ; preds = %land.lhs.true.i.i36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_msqid_from_user.exit

if.end.i.i46.i:                                   ; preds = %land.lhs.true.i.i36.i
  %call.i.i.i37.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tbuf_old.i, i32 noundef 56) #10
  %136 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i.i.i38.i = and i32 %136, -16384
  %137 = inttoptr i32 %and.i.i.i.i.i.i38.i to ptr
  %cpu_domain.i.i.i.i.i39.i = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 4
  %138 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i39.i) #7, !srcloc !120
  %and.i.i.i.i40.i = and i32 %138, -13
  %or.i.i.i.i41.i = or i32 %and.i.i.i.i40.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i41.i) #10, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  %call1.i.i.i42.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tbuf_old.i, ptr noundef %buf, i32 noundef 56) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %138) #10, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i42.i)
  %tobool4.not.i.i45.i = icmp eq i32 %call1.i.i.i42.i, 0
  br i1 %tobool4.not.i.i45.i, label %if.end5.i, label %if.end.i.i46.i.copy_msqid_from_user.exit_crit_edge, !prof !119

if.end.i.i46.i.copy_msqid_from_user.exit_crit_edge: ; preds = %if.end.i.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_msqid_from_user.exit

if.end5.i:                                        ; preds = %if.end.i.i46.i
  %uid.i = getelementptr inbounds %struct.ipc_perm, ptr %tbuf_old.i, i32 0, i32 1
  %139 = ptrtoint ptr %uid.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %uid.i, align 4
  %conv.i79 = zext i16 %140 to i32
  %uid7.i = getelementptr inbounds %struct.ipc64_perm, ptr %msqid64, i32 0, i32 1
  %141 = ptrtoint ptr %uid7.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %conv.i79, ptr %uid7.i, align 4
  %gid.i = getelementptr inbounds %struct.ipc_perm, ptr %tbuf_old.i, i32 0, i32 2
  %142 = ptrtoint ptr %gid.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %gid.i, align 2
  %conv9.i = zext i16 %143 to i32
  %gid11.i = getelementptr inbounds %struct.ipc64_perm, ptr %msqid64, i32 0, i32 2
  %144 = ptrtoint ptr %gid11.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %conv9.i, ptr %gid11.i, align 4
  %mode.i = getelementptr inbounds %struct.ipc_perm, ptr %tbuf_old.i, i32 0, i32 5
  %145 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %mode.i, align 4
  %mode14.i = getelementptr inbounds %struct.ipc64_perm, ptr %msqid64, i32 0, i32 5
  %147 = ptrtoint ptr %mode14.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %mode14.i, align 4
  %msg_qbytes.i80 = getelementptr inbounds %struct.msqid_ds, ptr %tbuf_old.i, i32 0, i32 10
  %148 = ptrtoint ptr %msg_qbytes.i80 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %msg_qbytes.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %cmp.i81 = icmp eq i16 %149, 0
  br i1 %cmp.i81, label %if.then17.i, label %if.else.i83

if.then17.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %msg_lqbytes.i82 = getelementptr inbounds %struct.msqid_ds, ptr %tbuf_old.i, i32 0, i32 7
  %150 = ptrtoint ptr %msg_lqbytes.i82 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %msg_lqbytes.i82, align 4
  br label %copy_msqid_from_user.exit.thread98

if.else.i83:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv15.i = zext i16 %149 to i32
  br label %copy_msqid_from_user.exit.thread98

copy_msqid_from_user.exit.thread98:               ; preds = %if.else.i83, %if.then17.i
  %conv15.i.sink = phi i32 [ %151, %if.then17.i ], [ %conv15.i, %if.else.i83 ]
  %152 = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 9
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %conv15.i.sink, ptr %152, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tbuf_old.i) #10
  br label %if.end22

copy_msqid_from_user.exit:                        ; preds = %if.end.i.i46.i.copy_msqid_from_user.exit_crit_edge, %land.lhs.true.i.i36.i.copy_msqid_from_user.exit_crit_edge, %sw.bb1.i78.copy_msqid_from_user.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tbuf_old.i) #10
  br label %cleanup26

if.end22:                                         ; preds = %copy_msqid_from_user.exit.thread98, %if.end.i.i.i77.if.end22_crit_edge
  %msg_qbytes = getelementptr inbounds %struct.msqid64_ds, ptr %msqid64, i32 0, i32 9
  %154 = ptrtoint ptr %msg_qbytes to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %msg_qbytes, align 4
  %call23 = call fastcc i32 @msgctl_down(ptr noundef %9, i32 noundef %msqid, i32 noundef 1, ptr noundef nonnull %msqid64, i32 noundef %155)
  br label %cleanup26

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call fastcc i32 @msgctl_down(ptr noundef %9, i32 noundef %msqid, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br label %cleanup26

cleanup26:                                        ; preds = %sw.bb24, %if.end22, %copy_msqid_from_user.exit, %if.then11.i.i.i, %sw.bb18.cleanup26_crit_edge, %copy_msqid_to_user.exit, %if.end.i.i.i.cleanup26_crit_edge, %if.end59.i.i.i.cleanup26_crit_edge, %if.end13.cleanup26_crit_edge, %msgctl_stat.exit.cleanup26_crit_edge, %cleanup, %if.end.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  %retval.1 = phi i32 [ %call25, %sw.bb24 ], [ %call23, %if.end22 ], [ %retval.0, %cleanup ], [ -22, %entry.cleanup26_crit_edge ], [ %err.1.i, %msgctl_stat.exit.cleanup26_crit_edge ], [ -14, %copy_msqid_from_user.exit ], [ -22, %if.end.cleanup26_crit_edge ], [ -14, %if.end13.cleanup26_crit_edge ], [ -14, %if.end59.i.i.i.cleanup26_crit_edge ], [ -14, %if.end.i.i.i.cleanup26_crit_edge ], [ -14, %sw.bb18.cleanup26_crit_edge ], [ -14, %if.then11.i.i.i ], [ %spec.select101, %copy_msqid_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %msqid64) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_old_msgctl(i32 noundef %msqid, i32 noundef %cmd, i32 noundef %buf) #0 align 64 {
entry:
  %cmd.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %buf to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.addr.i.i) #10
  %1 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cmd, ptr %cmd.addr.i.i, align 4
  %call.i.i = call i32 @ipc_parse_version(ptr noundef nonnull %cmd.addr.i.i) #10
  %2 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd.addr.i.i, align 4
  %call1.i.i = call fastcc i32 @ksys_msgctl(i32 noundef %msqid, i32 noundef %3, ptr noundef %0, i32 noundef %call.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.addr.i.i) #10
  ret i32 %call1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_msgsnd(i32 noundef %msqid, ptr noundef %msgp, i32 noundef %msgsz, i32 noundef %msgflg) local_unnamed_addr #0 align 64 {
entry:
  %wake_q.i = alloca %struct.wake_q_head, align 4
  %s.i = alloca %struct.msg_sender, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 960) #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !120
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %msgp, i32 -1226833921) #10, !srcloc !123
  %asmresult = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #10, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %asmresult2 = extractvalue { i32, i32 } %3, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q.i) #10
  %4 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q.i, i32 0, i32 1
  %5 = ptrtoint ptr %wake_q.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q.i, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %wake_q.i, ptr %4, align 4
  %7 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 110
  %11 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nsproxy.i, align 4
  %ipc_ns.i = getelementptr inbounds %struct.nsproxy, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %ipc_ns.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ipc_ns.i, align 4
  %msg_ctlmax.i = getelementptr inbounds %struct.ipc_namespace, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %msg_ctlmax.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_ctlmax.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %msgsz)
  %cmp.i = icmp ult i32 %16, %msgsz
  %17 = or i32 %msgsz, %msqid
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp slt i32 %17, 0
  %19 = or i1 %18, %cmp.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult2)
  %cmp5.i = icmp slt i32 %asmresult2, 1
  %or.cond115.i = or i1 %cmp5.i, %19
  br i1 %or.cond115.i, label %if.end.do_msgsnd.exit_crit_edge, label %if.end7.i

if.end.do_msgsnd.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_msgsnd.exit

if.end7.i:                                        ; preds = %if.end
  %mtext = getelementptr inbounds %struct.msgbuf, ptr %msgp, i32 0, i32 1
  %call8.i = call ptr @load_msg(ptr noundef %mtext, i32 noundef %msgsz) #10
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then10.i, label %if.end12.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %call8.i to i32
  br label %do_msgsnd.exit

if.end12.i:                                       ; preds = %if.end7.i
  %m_type.i = getelementptr inbounds %struct.msg_msg, ptr %call8.i, i32 0, i32 1
  %21 = ptrtoint ptr %m_type.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %asmresult2, ptr %m_type.i, align 4
  %m_ts.i = getelementptr inbounds %struct.msg_msg, ptr %call8.i, i32 0, i32 2
  %22 = ptrtoint ptr %m_ts.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %msgsz, ptr %m_ts.i, align 4
  %23 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !116
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.end12.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end12.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end12.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.31) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end12.i.rcu_read_lock.exit.i_crit_edge
  %arrayidx.i.i = getelementptr [3 x %struct.ipc_ids], ptr %14, i32 0, i32 1
  %call.i128.i = call ptr @ipc_obtain_object_check(ptr noundef %arrayidx.i.i, i32 noundef %msqid) #10
  %cmp.i129.i = icmp ugt ptr %call.i128.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129.i, label %if.then15.i, label %if.end17.i

if.then15.i:                                      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %call.i128.i to i32
  br label %out_unlock1.i

if.end17.i:                                       ; preds = %rcu_read_lock.exit.i
  call void @_raw_spin_lock(ptr noundef %call.i128.i) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %s.i) #10
  %28 = call ptr @memset(ptr %s.i, i32 255, i32 16)
  %call19164.i = call i32 @ipcperms(ptr noundef %14, ptr noundef %call.i128.i, i16 noundef signext 146) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19164.i)
  %tobool.not165.i = icmp eq i32 %call19164.i, 0
  br i1 %tobool.not165.i, label %if.end21.lr.ph.i, label %if.end17.i.cleanup.thread.i_crit_edge

if.end17.i.cleanup.thread.i_crit_edge:            ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.end21.lr.ph.i:                                 ; preds = %if.end17.i
  %deleted.i.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i128.i, i32 0, i32 1
  %q_cbytes.i.i = getelementptr inbounds %struct.msg_queue, ptr %call.i128.i, i32 0, i32 4
  %q_qbytes.i.i = getelementptr inbounds %struct.msg_queue, ptr %call.i128.i, i32 0, i32 6
  %q_qnum.i.i = getelementptr inbounds %struct.msg_queue, ptr %call.i128.i, i32 0, i32 5
  %and.i6 = and i32 %msgflg, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6)
  %tobool34.not.i = icmp eq i32 %and.i6, 0
  %prev.i.i.i9 = getelementptr inbounds %struct.list_head, ptr %s.i, i32 0, i32 1
  br label %if.end21.i

if.end21.i:                                       ; preds = %cleanup.i.if.end21.i_crit_edge, %if.end21.lr.ph.i
  %29 = ptrtoint ptr %deleted.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %deleted.i.i, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i130.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i130.i, label %if.end25.i, label %if.end21.i.cleanup.thread.i_crit_edge

if.end21.i.cleanup.thread.i_crit_edge:            ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.end25.i:                                       ; preds = %if.end21.i
  %call27.i = call i32 @security_msg_queue_msgsnd(ptr noundef %call.i128.i, ptr noundef %call8.i, i32 noundef %msgflg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end25.i.cleanup.thread.i_crit_edge

if.end25.i.cleanup.thread.i_crit_edge:            ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.end30.i:                                       ; preds = %if.end25.i
  %31 = ptrtoint ptr %q_cbytes.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %q_cbytes.i.i, align 8
  %add.i.i = add i32 %32, %msgsz
  %33 = ptrtoint ptr %q_qbytes.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %q_qbytes.i.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %34)
  %cmp.not.i.i = icmp ugt i32 %add.i.i, %34
  br i1 %cmp.not.i.i, label %if.end30.i.if.end33.i_crit_edge, label %msg_fits_inqueue.exit.i

if.end30.i.if.end33.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

msg_fits_inqueue.exit.i:                          ; preds = %if.end30.i
  %35 = ptrtoint ptr %q_qnum.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %q_qnum.i.i, align 4
  %add1.i.i = add i32 %36, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i, i32 %34)
  %cmp3.i.not.i = icmp ugt i32 %add1.i.i, %34
  br i1 %cmp3.i.not.i, label %msg_fits_inqueue.exit.i.if.end33.i_crit_edge, label %for.end.i

msg_fits_inqueue.exit.i.if.end33.i_crit_edge:     ; preds = %msg_fits_inqueue.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.end33.i:                                       ; preds = %msg_fits_inqueue.exit.i.if.end33.i_crit_edge, %if.end30.i.if.end33.i_crit_edge
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end33.i.cleanup.thread.i_crit_edge

if.end33.i.cleanup.thread.i_crit_edge:            ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.end36.i:                                       ; preds = %if.end33.i
  call fastcc void @ss_add(ptr noundef %call.i128.i, ptr noundef nonnull %s.i, i32 noundef %msgsz) #10
  %call38.i = call zeroext i1 @ipc_rcu_getref(ptr noundef %call.i128.i) #10
  br i1 %call38.i, label %if.end40.i, label %if.end36.i.cleanup.thread.i_crit_edge

if.end36.i.cleanup.thread.i_crit_edge:            ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.end40.i:                                       ; preds = %if.end36.i
  call void @_raw_spin_unlock(ptr noundef %call.i128.i) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end40.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

if.end40.i.rcu_read_unlock.exit_crit_edge:        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %if.end40.i
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i12 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.19) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %if.end40.i.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !114
  %37 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @schedule() #10
  %41 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i.i116.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i116.i to ptr
  %preempt_count.i.i.i.i117.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i117.i, align 4
  %add.i.i.i118.i = add i32 %44, 1
  store volatile i32 %add.i.i.i118.i, ptr %preempt_count.i.i.i.i117.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !116
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i119.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i119.i, label %rcu_read_unlock.exit.rcu_read_lock.exit126.i_crit_edge, label %land.lhs.true.i122.i

rcu_read_unlock.exit.rcu_read_lock.exit126.i_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit126.i

land.lhs.true.i122.i:                             ; preds = %rcu_read_unlock.exit
  %call1.i120.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i120.i)
  %tobool.not.i121.i = icmp eq i32 %call1.i120.i, 0
  br i1 %tobool.not.i121.i, label %land.lhs.true.i122.i.rcu_read_lock.exit126.i_crit_edge, label %land.lhs.true2.i124.i

land.lhs.true.i122.i.rcu_read_lock.exit126.i_crit_edge: ; preds = %land.lhs.true.i122.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit126.i

land.lhs.true2.i124.i:                            ; preds = %land.lhs.true.i122.i
  %.b4.i123.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i123.i, label %land.lhs.true2.i124.i.rcu_read_lock.exit126.i_crit_edge, label %if.then.i125.i

land.lhs.true2.i124.i.rcu_read_lock.exit126.i_crit_edge: ; preds = %land.lhs.true2.i124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit126.i

if.then.i125.i:                                   ; preds = %land.lhs.true2.i124.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.31) #10
  br label %rcu_read_lock.exit126.i

rcu_read_lock.exit126.i:                          ; preds = %if.then.i125.i, %land.lhs.true2.i124.i.rcu_read_lock.exit126.i_crit_edge, %land.lhs.true.i122.i.rcu_read_lock.exit126.i_crit_edge, %rcu_read_unlock.exit.rcu_read_lock.exit126.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %call.i128.i) #10
  call void @ipc_rcu_putref(ptr noundef %call.i128.i, ptr noundef nonnull @msg_rcu_free) #10
  %45 = ptrtoint ptr %deleted.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %deleted.i.i, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i132.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i132.i, label %if.end47.i, label %rcu_read_lock.exit126.i.cleanup.thread.i_crit_edge

rcu_read_lock.exit126.i.cleanup.thread.i_crit_edge: ; preds = %rcu_read_lock.exit126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.end47.i:                                       ; preds = %rcu_read_lock.exit126.i
  %47 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s.i, align 4
  %tobool.not.i7 = icmp eq ptr %48, null
  br i1 %tobool.not.i7, label %if.end47.i.ss_del.exit_crit_edge, label %if.then.i

if.end47.i.ss_del.exit_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ss_del.exit

if.then.i:                                        ; preds = %if.end47.i
  %call.i.i.i8 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %s.i) #10
  br i1 %call.i.i.i8, label %if.end.i.i.i10, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i10:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %prev.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i.i9, align 4
  %51 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i10, %if.then.i.list_del.exit.i_crit_edge
  %55 = ptrtoint ptr %s.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %s.i, align 4
  %56 = ptrtoint ptr %prev.i.i.i9 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i9, align 4
  br label %ss_del.exit

ss_del.exit:                                      ; preds = %list_del.exit.i, %if.end47.i.ss_del.exit_crit_edge
  %57 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %stack.i.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  %63 = and i32 %62, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i133.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i133.i, label %signal_pending.exit.i, label %ss_del.exit.cleanup.thread.i_crit_edge, !prof !119

ss_del.exit.cleanup.thread.i_crit_edge:           ; preds = %ss_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

signal_pending.exit.i:                            ; preds = %ss_del.exit
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %60, align 4
  %and1.i.i.i.i.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool51.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool51.not.i, label %cleanup.i, label %signal_pending.exit.i.cleanup.thread.i_crit_edge

signal_pending.exit.i.cleanup.thread.i_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %cleanup.i.cleanup.thread.i_crit_edge, %signal_pending.exit.i.cleanup.thread.i_crit_edge, %ss_del.exit.cleanup.thread.i_crit_edge, %rcu_read_lock.exit126.i.cleanup.thread.i_crit_edge, %if.end36.i.cleanup.thread.i_crit_edge, %if.end33.i.cleanup.thread.i_crit_edge, %if.end25.i.cleanup.thread.i_crit_edge, %if.end21.i.cleanup.thread.i_crit_edge, %if.end17.i.cleanup.thread.i_crit_edge
  %err.0.ph.i = phi i32 [ -13, %if.end17.i.cleanup.thread.i_crit_edge ], [ -514, %signal_pending.exit.i.cleanup.thread.i_crit_edge ], [ -43, %rcu_read_lock.exit126.i.cleanup.thread.i_crit_edge ], [ -43, %if.end36.i.cleanup.thread.i_crit_edge ], [ -11, %if.end33.i.cleanup.thread.i_crit_edge ], [ %call27.i, %if.end25.i.cleanup.thread.i_crit_edge ], [ -43, %if.end21.i.cleanup.thread.i_crit_edge ], [ -13, %cleanup.i.cleanup.thread.i_crit_edge ], [ -514, %ss_del.exit.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %s.i) #10
  br label %out_unlock0.i

cleanup.i:                                        ; preds = %signal_pending.exit.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %s.i) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %s.i) #10
  %66 = call ptr @memset(ptr %s.i, i32 255, i32 16)
  %call19.i = call i32 @ipcperms(ptr noundef %14, ptr noundef %call.i128.i, i16 noundef signext 146) #10
  %tobool.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool.not.i, label %cleanup.i.if.end21.i_crit_edge, label %cleanup.i.cleanup.thread.i_crit_edge

cleanup.i.cleanup.thread.i_crit_edge:             ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

cleanup.i.if.end21.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

for.end.i:                                        ; preds = %msg_fits_inqueue.exit.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %s.i) #10
  %q_lspid.i = getelementptr inbounds %struct.msg_queue, ptr %call.i128.i, i32 0, i32 7
  %67 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 111
  %69 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i134.i = getelementptr %struct.signal_struct, ptr %70, i32 0, i32 22, i32 1
  %71 = ptrtoint ptr %arrayidx.i134.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i134.i, align 4
  %73 = ptrtoint ptr %q_lspid.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %q_lspid.i, align 4
  %cmp.not.i135.i = icmp eq ptr %74, %72
  br i1 %cmp.not.i135.i, label %for.end.i.ipc_update_pid.exit.i_crit_edge, label %if.then.i136.i

for.end.i.ipc_update_pid.exit.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipc_update_pid.exit.i

if.then.i136.i:                                   ; preds = %for.end.i
  %tobool.not.i.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i.i.i, label %if.then.i136.i.get_pid.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i136.i.get_pid.exit.i.i_crit_edge:        ; preds = %if.then.i136.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i136.i
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %72, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %72, i32 1, i32 3, i32 1) #10
  %75 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %72, ptr nonnull %72, i32 1, ptr nonnull elementtype(i32) %72) #10, !srcloc !124
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !113

if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %76 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %.not.i.i.i.i.i.i = icmp sgt i32 %76, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.get_pid.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !119

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.get_pid.exit.i.i_crit_edge:   ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %72, i32 noundef %.sink.i.i.i.i.i.i) #10
  br label %get_pid.exit.i.i

get_pid.exit.i.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.get_pid.exit.i.i_crit_edge, %if.then.i136.i.get_pid.exit.i.i_crit_edge
  %77 = ptrtoint ptr %q_lspid.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %72, ptr %q_lspid.i, align 4
  call void @put_pid(ptr noundef %74) #10
  br label %ipc_update_pid.exit.i

ipc_update_pid.exit.i:                            ; preds = %get_pid.exit.i.i, %for.end.i.ipc_update_pid.exit.i_crit_edge
  %call57.i = call i64 @ktime_get_real_seconds() #10
  %q_stime.i = getelementptr inbounds %struct.msg_queue, ptr %call.i128.i, i32 0, i32 1
  %78 = ptrtoint ptr %q_stime.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %call57.i, ptr %q_stime.i, align 128
  %q_receivers.i.i = getelementptr inbounds %struct.msg_queue, ptr %call.i128.i, i32 0, i32 10
  %79 = ptrtoint ptr %q_receivers.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %q_receivers.i.i, align 4
  %cmp.not94.i.i = icmp eq ptr %80, %q_receivers.i.i
  br i1 %cmp.not94.i.i, label %ipc_update_pid.exit.i.if.then60.i_crit_edge, label %ipc_update_pid.exit.i.for.body.i.i_crit_edge

ipc_update_pid.exit.i.for.body.i.i_crit_edge:     ; preds = %ipc_update_pid.exit.i
  br label %for.body.i.i

ipc_update_pid.exit.i.if.then60.i_crit_edge:      ; preds = %ipc_update_pid.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then60.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %ipc_update_pid.exit.i.for.body.i.i_crit_edge
  %msr.095.i.i = phi ptr [ %t.096.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %80, %ipc_update_pid.exit.i.for.body.i.i_crit_edge ]
  %81 = ptrtoint ptr %msr.095.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %t.096.i.i = load ptr, ptr %msr.095.i.i, align 4
  %r_msgtype.i.i = getelementptr inbounds %struct.msg_receiver, ptr %msr.095.i.i, i32 0, i32 3
  %82 = ptrtoint ptr %r_msgtype.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %r_msgtype.i.i, align 4
  %r_mode.i.i = getelementptr inbounds %struct.msg_receiver, ptr %msr.095.i.i, i32 0, i32 2
  %84 = ptrtoint ptr %r_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %r_mode.i.i, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %85, label %for.body.i.i.for.inc.i.i_crit_edge [
    i32 1, label %for.body.i.i.land.lhs.true.i138.i_crit_edge
    i32 5, label %for.body.i.i.land.lhs.true.i138.i_crit_edge20
    i32 4, label %sw.bb1.i.i.i
    i32 2, label %sw.bb2.i.i.i
    i32 3, label %sw.bb7.i.i.i
  ]

for.body.i.i.land.lhs.true.i138.i_crit_edge20:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i138.i

for.body.i.i.land.lhs.true.i138.i_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i138.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

sw.bb1.i.i.i:                                     ; preds = %for.body.i.i
  %87 = ptrtoint ptr %m_type.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %m_type.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %83)
  %cmp.not.i.i.i = icmp sgt i32 %88, %83
  br i1 %cmp.not.i.i.i, label %sw.bb1.i.i.i.for.inc.i.i_crit_edge, label %sw.bb1.i.i.i.land.lhs.true.i138.i_crit_edge

sw.bb1.i.i.i.land.lhs.true.i138.i_crit_edge:      ; preds = %sw.bb1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i138.i

sw.bb1.i.i.i.for.inc.i.i_crit_edge:               ; preds = %sw.bb1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

sw.bb2.i.i.i:                                     ; preds = %for.body.i.i
  %89 = ptrtoint ptr %m_type.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %m_type.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %83)
  %cmp4.i.i.i = icmp eq i32 %90, %83
  br i1 %cmp4.i.i.i, label %sw.bb2.i.i.i.land.lhs.true.i138.i_crit_edge, label %sw.bb2.i.i.i.for.inc.i.i_crit_edge

sw.bb2.i.i.i.for.inc.i.i_crit_edge:               ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

sw.bb2.i.i.i.land.lhs.true.i138.i_crit_edge:      ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i138.i

sw.bb7.i.i.i:                                     ; preds = %for.body.i.i
  %91 = ptrtoint ptr %m_type.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %m_type.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %83)
  %cmp9.not.i.i.i = icmp eq i32 %92, %83
  br i1 %cmp9.not.i.i.i, label %sw.bb7.i.i.i.for.inc.i.i_crit_edge, label %sw.bb7.i.i.i.land.lhs.true.i138.i_crit_edge

sw.bb7.i.i.i.land.lhs.true.i138.i_crit_edge:      ; preds = %sw.bb7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i138.i

sw.bb7.i.i.i.for.inc.i.i_crit_edge:               ; preds = %sw.bb7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i138.i:                             ; preds = %sw.bb7.i.i.i.land.lhs.true.i138.i_crit_edge, %sw.bb2.i.i.i.land.lhs.true.i138.i_crit_edge, %sw.bb1.i.i.i.land.lhs.true.i138.i_crit_edge, %for.body.i.i.land.lhs.true.i138.i_crit_edge, %for.body.i.i.land.lhs.true.i138.i_crit_edge20
  %r_tsk.i.i = getelementptr inbounds %struct.msg_receiver, ptr %msr.095.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %r_tsk.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %r_tsk.i.i, align 4
  %call9.i.i = call i32 @security_msg_queue_msgrcv(ptr noundef %call.i128.i, ptr noundef %call8.i, ptr noundef %94, i32 noundef %83, i32 noundef %85) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.then.i139.i, label %land.lhs.true.i138.i.for.inc.i.i_crit_edge

land.lhs.true.i138.i.for.inc.i.i_crit_edge:       ; preds = %land.lhs.true.i138.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then.i139.i:                                   ; preds = %land.lhs.true.i138.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %msr.095.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i139.i.list_del.exit.i.i_crit_edge

if.then.i139.i.list_del.exit.i.i_crit_edge:       ; preds = %if.then.i139.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i139.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msr.095.i.i, i32 0, i32 1
  %95 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i.i.i.i, align 4
  %97 = ptrtoint ptr %msr.095.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %msr.095.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev1.i.i.i.i.i, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %98, ptr %96, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i139.i.list_del.exit.i.i_crit_edge
  %101 = ptrtoint ptr %msr.095.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr inttoptr (i32 256 to ptr), ptr %msr.095.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msr.095.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %r_maxsize.i.i = getelementptr inbounds %struct.msg_receiver, ptr %msr.095.i.i, i32 0, i32 4
  %103 = ptrtoint ptr %r_maxsize.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %r_maxsize.i.i, align 4
  %105 = ptrtoint ptr %m_ts.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %m_ts.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %106)
  %cmp12.i.i = icmp ult i32 %104, %106
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.else.i.i

if.then13.i.i:                                    ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %r_tsk.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %r_tsk.i.i, align 4
  call void @wake_q_add(ptr noundef nonnull %wake_q.i, ptr noundef %108) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !125
  %r_msg.i.i = getelementptr inbounds %struct.msg_receiver, ptr %msr.095.i.i, i32 0, i32 5
  %109 = ptrtoint ptr %r_msg.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr inttoptr (i32 -7 to ptr), ptr %r_msg.i.i, align 4
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %list_del.exit.i.i
  %q_lrpid.i.i = getelementptr inbounds %struct.msg_queue, ptr %call.i128.i, i32 0, i32 8
  %110 = ptrtoint ptr %r_tsk.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %r_tsk.i.i, align 4
  %thread_pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %111, i32 0, i32 78
  %112 = ptrtoint ptr %thread_pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %thread_pid.i.i.i, align 16
  %114 = ptrtoint ptr %q_lrpid.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %q_lrpid.i.i, align 4
  %cmp.not.i89.i.i = icmp eq ptr %115, %113
  br i1 %cmp.not.i89.i.i, label %if.else.i.i.pipelined_send.exit.i_crit_edge, label %if.then.i.i140.i

if.else.i.i.pipelined_send.exit.i_crit_edge:      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pipelined_send.exit.i

if.then.i.i140.i:                                 ; preds = %if.else.i.i
  %tobool.not.i.i.i.i = icmp eq ptr %113, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i140.i.get_pid.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.then.i.i140.i.get_pid.exit.i.i.i_crit_edge:    ; preds = %if.then.i.i140.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i140.i
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %113, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %113, i32 1, i32 3, i32 1) #10
  %116 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %113, ptr nonnull %113, i32 1, ptr nonnull elementtype(i32) %113) #10, !srcloc !124
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !113

if.then.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %117 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %117)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %117, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.get_pid.exit.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !119

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.get_pid.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid.exit.i.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %113, i32 noundef %.sink.i.i.i.i.i.i.i) #10
  br label %get_pid.exit.i.i.i

get_pid.exit.i.i.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.get_pid.exit.i.i.i_crit_edge, %if.then.i.i140.i.get_pid.exit.i.i.i_crit_edge
  %118 = ptrtoint ptr %q_lrpid.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %113, ptr %q_lrpid.i.i, align 4
  call void @put_pid(ptr noundef %115) #10
  br label %pipelined_send.exit.i

for.inc.i.i:                                      ; preds = %if.then13.i.i, %land.lhs.true.i138.i.for.inc.i.i_crit_edge, %sw.bb7.i.i.i.for.inc.i.i_crit_edge, %sw.bb2.i.i.i.for.inc.i.i_crit_edge, %sw.bb1.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %cmp.not.i141.i = icmp eq ptr %t.096.i.i, %q_receivers.i.i
  br i1 %cmp.not.i141.i, label %for.inc.i.i.if.then60.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.then60.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then60.i

pipelined_send.exit.i:                            ; preds = %get_pid.exit.i.i.i, %if.else.i.i.pipelined_send.exit.i_crit_edge
  %call36.i.i = call i64 @ktime_get_real_seconds() #10
  %q_rtime.i.i = getelementptr inbounds %struct.msg_queue, ptr %call.i128.i, i32 0, i32 2
  %119 = ptrtoint ptr %q_rtime.i.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %call36.i.i, ptr %q_rtime.i.i, align 8
  %120 = ptrtoint ptr %r_tsk.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %r_tsk.i.i, align 4
  call void @wake_q_add(ptr noundef nonnull %wake_q.i, ptr noundef %121) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !126
  %r_msg51.i.i = getelementptr inbounds %struct.msg_receiver, ptr %msr.095.i.i, i32 0, i32 5
  %122 = ptrtoint ptr %r_msg51.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %call8.i, ptr %r_msg51.i.i, align 4
  br label %out_unlock0.i

if.then60.i:                                      ; preds = %for.inc.i.i.if.then60.i_crit_edge, %ipc_update_pid.exit.i.if.then60.i_crit_edge
  %q_messages.i = getelementptr inbounds %struct.msg_queue, ptr %call.i128.i, i32 0, i32 9
  %prev.i.i = getelementptr inbounds %struct.msg_queue, ptr %call.i128.i, i32 0, i32 9, i32 1
  %123 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %prev.i.i, align 4
  %call.i.i143.i = call zeroext i1 @__list_add_valid(ptr noundef %call8.i, ptr noundef %124, ptr noundef %q_messages.i) #10
  br i1 %call.i.i143.i, label %if.end.i.i.i, label %if.then60.i.list_add_tail.exit.i_crit_edge

if.then60.i.list_add_tail.exit.i_crit_edge:       ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call8.i, ptr %prev.i.i, align 4
  %126 = ptrtoint ptr %call8.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %q_messages.i, ptr %call8.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call8.i, i32 0, i32 1
  %127 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %124, ptr %prev3.i.i.i, align 4
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %call8.i, ptr %124, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then60.i.list_add_tail.exit.i_crit_edge
  %129 = ptrtoint ptr %q_cbytes.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %q_cbytes.i.i, align 8
  %add.i = add i32 %130, %msgsz
  store i32 %add.i, ptr %q_cbytes.i.i, align 8
  %131 = ptrtoint ptr %q_qnum.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %q_qnum.i.i, align 4
  %inc.i = add i32 %132, 1
  store i32 %inc.i, ptr %q_qnum.i.i, align 4
  %msg_bytes.i = getelementptr inbounds %struct.ipc_namespace, ptr %14, i32 0, i32 6
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %msg_bytes.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %msg_bytes.i, i32 1, i32 3, i32 1) #10
  %133 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %msg_bytes.i, ptr %msg_bytes.i, i32 %msgsz, ptr elementtype(i32) %msg_bytes.i) #10, !srcloc !127
  %msg_hdrs.i = getelementptr inbounds %struct.ipc_namespace, ptr %14, i32 0, i32 7
  %call.i.i127.i = call zeroext i1 @__kasan_check_write(ptr noundef %msg_hdrs.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %msg_hdrs.i, i32 1, i32 3, i32 1) #10
  %134 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %msg_hdrs.i, ptr %msg_hdrs.i, i32 1, ptr elementtype(i32) %msg_hdrs.i) #10, !srcloc !127
  br label %out_unlock0.i

out_unlock0.i:                                    ; preds = %list_add_tail.exit.i, %pipelined_send.exit.i, %cleanup.thread.i
  %msg.0.i = phi ptr [ null, %list_add_tail.exit.i ], [ null, %pipelined_send.exit.i ], [ %call8.i, %cleanup.thread.i ]
  %err.1.i = phi i32 [ 0, %list_add_tail.exit.i ], [ 0, %pipelined_send.exit.i ], [ %err.0.ph.i, %cleanup.thread.i ]
  call void @_raw_spin_unlock(ptr noundef %call.i128.i) #10
  call void @wake_up_q(ptr noundef nonnull %wake_q.i) #10
  br label %out_unlock1.i

out_unlock1.i:                                    ; preds = %out_unlock0.i, %if.then15.i
  %msg.1.i = phi ptr [ %call8.i, %if.then15.i ], [ %msg.0.i, %out_unlock0.i ]
  %err.2.i = phi i32 [ %27, %if.then15.i ], [ %err.1.i, %out_unlock0.i ]
  %call.i144.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i144.i, label %out_unlock1.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i147.i

out_unlock1.i.rcu_read_unlock.exit.i_crit_edge:   ; preds = %out_unlock1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i147.i:                             ; preds = %out_unlock1.i
  %call1.i145.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i145.i)
  %tobool.not.i146.i = icmp eq i32 %call1.i145.i, 0
  br i1 %tobool.not.i146.i, label %land.lhs.true.i147.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i149.i

land.lhs.true.i147.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i147.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i149.i:                            ; preds = %land.lhs.true.i147.i
  %.b4.i148.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i148.i, label %land.lhs.true2.i149.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i150.i

land.lhs.true2.i149.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i149.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i150.i:                                   ; preds = %land.lhs.true2.i149.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.19) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i150.i, %land.lhs.true2.i149.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i147.i.rcu_read_unlock.exit.i_crit_edge, %out_unlock1.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !114
  %135 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i.i151.i = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i.i.i.i151.i to ptr
  %preempt_count.i.i.i.i152.i = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %preempt_count.i.i.i.i152.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %preempt_count.i.i.i.i152.i, align 4
  %sub.i.i.i.i = add i32 %138, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i152.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %cmp63.not.i = icmp eq ptr %msg.1.i, null
  br i1 %cmp63.not.i, label %rcu_read_unlock.exit.i.do_msgsnd.exit_crit_edge, label %if.then64.i

rcu_read_unlock.exit.i.do_msgsnd.exit_crit_edge:  ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_msgsnd.exit

if.then64.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @free_msg(ptr noundef nonnull %msg.1.i) #10
  br label %do_msgsnd.exit

do_msgsnd.exit:                                   ; preds = %if.then64.i, %rcu_read_unlock.exit.i.do_msgsnd.exit_crit_edge, %if.then10.i, %if.end.do_msgsnd.exit_crit_edge
  %retval.0.i = phi i32 [ %20, %if.then10.i ], [ -22, %if.end.do_msgsnd.exit_crit_edge ], [ %err.2.i, %if.then64.i ], [ %err.2.i, %rcu_read_unlock.exit.i.do_msgsnd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do_msgsnd.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %do_msgsnd.exit ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_msgsnd(i32 noundef %msqid, i32 noundef %msgp, i32 noundef %msgsz, i32 noundef %msgflg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %msgp to ptr
  %call.i = tail call i32 @ksys_msgsnd(i32 noundef %msqid, ptr noundef %0, i32 noundef %msgsz, i32 noundef %msgflg) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_msgrcv(i32 noundef %msqid, ptr noundef %msgp, i32 noundef %msgsz, i32 noundef %msgtyp, i32 noundef %msgflg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @do_msgrcv(i32 noundef %msqid, ptr noundef %msgp, i32 noundef %msgsz, i32 noundef %msgtyp, i32 noundef %msgflg, ptr noundef nonnull @do_msg_fill)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_msgrcv(i32 noundef %msqid, ptr noundef %buf, i32 noundef %bufsz, i32 noundef %msgtyp, i32 noundef %msgflg, ptr nocapture noundef readnone %msg_handler) #0 align 64 {
entry:
  %wake_q = alloca %struct.wake_q_head, align 4
  %msr_d = alloca %struct.msg_receiver, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q) #10
  %0 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1
  %1 = ptrtoint ptr %wake_q to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %wake_q, ptr %0, align 4
  %3 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 110
  %7 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nsproxy, align 4
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ipc_ns, align 4
  %11 = or i32 %bufsz, %msqid
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not = icmp sgt i32 %11, -1
  br i1 %.not, label %if.end, label %entry.cleanup175_crit_edge

entry.cleanup175_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup175

if.end:                                           ; preds = %entry
  %and = and i32 %msgflg, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.i, label %if.then3

if.then3:                                         ; preds = %if.end
  %12 = and i32 %msgflg, 10240
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %12)
  %.not356 = icmp eq i32 %12, 2048
  br i1 %.not356, label %if.end10, label %if.then3.cleanup175_crit_edge

if.then3.cleanup175_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup175

if.end10:                                         ; preds = %if.then3
  %msg_ctlmax = getelementptr inbounds %struct.ipc_namespace, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %msg_ctlmax to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_ctlmax, align 4
  %15 = call i32 @llvm.umin.i32(i32 %14, i32 %bufsz)
  %call.i251 = call ptr @load_msg(ptr noundef %buf, i32 noundef %15) #10
  %cmp.i.i = icmp ugt ptr %call.i251, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %call.i251 to i32
  br label %cleanup175

if.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %m_ts.i = getelementptr inbounds %struct.msg_msg, ptr %call.i251, i32 0, i32 2
  %17 = ptrtoint ptr %m_ts.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %m_ts.i, align 4
  br label %convert_mode.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msgtyp)
  %cmp.i255 = icmp eq i32 %msgtyp, 0
  br i1 %cmp.i255, label %if.end.i.convert_mode.exit_crit_edge, label %if.end2.i

if.end.i.convert_mode.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %convert_mode.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msgtyp)
  %cmp3.i = icmp slt i32 %msgtyp, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end8.i

if.then4.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %msgtyp)
  %cmp5.i = icmp eq i32 %msgtyp, -2147483648
  %sub.i = sub i32 0, %msgtyp
  %storemerge.i = select i1 %cmp5.i, i32 2147483647, i32 %sub.i
  br label %convert_mode.exit

if.end8.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  %and9.i = and i32 %msgflg, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %..i = select i1 %tobool10.not.i, i32 2, i32 3
  br label %convert_mode.exit

convert_mode.exit:                                ; preds = %if.end8.i, %if.then4.i, %if.end.i.convert_mode.exit_crit_edge, %if.end17
  %copy.0333 = phi ptr [ null, %if.end.i.convert_mode.exit_crit_edge ], [ null, %if.then4.i ], [ null, %if.end8.i ], [ %call.i251, %if.end17 ]
  %msgtyp.addr.0 = phi i32 [ 0, %if.end.i.convert_mode.exit_crit_edge ], [ %storemerge.i, %if.then4.i ], [ %msgtyp, %if.end8.i ], [ %msgtyp, %if.end17 ]
  %retval.0.i = phi i32 [ 1, %if.end.i.convert_mode.exit_crit_edge ], [ 4, %if.then4.i ], [ %..i, %if.end8.i ], [ 5, %if.end17 ]
  %18 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !116
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %convert_mode.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

convert_mode.exit.rcu_read_lock.exit_crit_edge:   ; preds = %convert_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %convert_mode.exit
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.31) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %convert_mode.exit.rcu_read_lock.exit_crit_edge
  %arrayidx.i = getelementptr [3 x %struct.ipc_ids], ptr %10, i32 0, i32 1
  %call.i256 = call ptr @ipc_obtain_object_check(ptr noundef %arrayidx.i, i32 noundef %msqid) #10
  %cmp.i257 = icmp ugt ptr %call.i256, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i257, label %if.then21, label %for.cond.preheader

for.cond.preheader:                               ; preds = %rcu_read_lock.exit
  %22 = getelementptr inbounds %struct.list_head, ptr %msr_d, i32 0, i32 1
  %23 = getelementptr inbounds %struct.msg_receiver, ptr %msr_d, i32 0, i32 1
  %24 = getelementptr inbounds %struct.msg_receiver, ptr %msr_d, i32 0, i32 2
  %25 = getelementptr inbounds %struct.msg_receiver, ptr %msr_d, i32 0, i32 3
  %26 = getelementptr inbounds %struct.msg_receiver, ptr %msr_d, i32 0, i32 4
  %27 = getelementptr inbounds %struct.msg_receiver, ptr %msr_d, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %msr_d) #10
  %28 = call ptr @memset(ptr %msr_d, i32 255, i32 28)
  %call25359 = call i32 @ipcperms(ptr noundef %10, ptr noundef %call.i256, i16 noundef signext 292) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25359)
  %tobool26.not360 = icmp eq i32 %call25359, 0
  br i1 %tobool26.not360, label %if.end28.lr.ph, label %for.cond.preheader.cleanup.thread348_crit_edge

for.cond.preheader.cleanup.thread348_crit_edge:   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread348

if.end28.lr.ph:                                   ; preds = %for.cond.preheader
  %deleted.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i256, i32 0, i32 1
  %q_messages.i = getelementptr inbounds %struct.msg_queue, ptr %call.i256, i32 0, i32 9
  %and56 = and i32 %msgflg, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %q_receivers = getelementptr inbounds %struct.msg_queue, ptr %call.i256, i32 0, i32 10
  %prev.i281 = getelementptr inbounds %struct.msg_queue, ptr %call.i256, i32 0, i32 10, i32 1
  %and63 = and i32 %msgflg, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %bufsz.238 = select i1 %tobool64.not, i32 %bufsz, i32 2147483647
  br label %if.end28

if.then21:                                        ; preds = %rcu_read_lock.exit
  %call.i258 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i258, label %if.then21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i261

if.then21.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i261:                               ; preds = %if.then21
  %call1.i259 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i259)
  %tobool.not.i260 = icmp eq i32 %call1.i259, 0
  br i1 %tobool.not.i260, label %land.lhs.true.i261.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i263

land.lhs.true.i261.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i261
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i263:                              ; preds = %land.lhs.true.i261
  %.b4.i262 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i262, label %land.lhs.true2.i263.rcu_read_unlock.exit_crit_edge, label %if.then.i264

land.lhs.true2.i263.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i263
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i264:                                     ; preds = %land.lhs.true2.i263
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.19) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i264, %land.lhs.true2.i263.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i261.rcu_read_unlock.exit_crit_edge, %if.then21.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !114
  %29 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i.i265 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i265 to ptr
  %preempt_count.i.i.i.i266 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i266 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i266, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i266, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool.not.i267 = icmp eq ptr %copy.0333, null
  br i1 %tobool.not.i267, label %rcu_read_unlock.exit.free_copy.exit_crit_edge, label %if.then.i268

rcu_read_unlock.exit.free_copy.exit_crit_edge:    ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_copy.exit

if.then.i268:                                     ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @free_msg(ptr noundef nonnull %copy.0333) #10
  br label %free_copy.exit

free_copy.exit:                                   ; preds = %if.then.i268, %rcu_read_unlock.exit.free_copy.exit_crit_edge
  %33 = ptrtoint ptr %call.i256 to i32
  br label %cleanup175

if.end28:                                         ; preds = %cleanup.if.end28_crit_edge, %if.end28.lr.ph
  %msgtyp.addr.1361 = phi i32 [ %msgtyp.addr.0, %if.end28.lr.ph ], [ %msgtyp.addr.6338, %cleanup.if.end28_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %call.i256) #10
  %34 = ptrtoint ptr %deleted.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %deleted.i, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i270 = icmp eq i8 %35, 0
  br i1 %tobool.not.i270, label %if.end34, label %if.end28.out_unlock0_crit_edge

if.end28.out_unlock0_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock0

if.end34:                                         ; preds = %if.end28
  %36 = ptrtoint ptr %q_messages.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %msg.048.i = load ptr, ptr %q_messages.i, align 4
  %cmp.not49.i = icmp eq ptr %msg.048.i, %q_messages.i
  br i1 %cmp.not49.i, label %if.end34.if.end55_crit_edge, label %if.end34.for.body.i_crit_edge

if.end34.for.body.i_crit_edge:                    ; preds = %if.end34
  br label %for.body.i

if.end34.if.end55_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end34.for.body.i_crit_edge
  %msgtyp.addr.2 = phi i32 [ %msgtyp.addr.4, %for.inc.i.for.body.i_crit_edge ], [ %msgtyp.addr.1361, %if.end34.for.body.i_crit_edge ]
  %msg.055.i = phi ptr [ %msg.0.i, %for.inc.i.for.body.i_crit_edge ], [ %msg.048.i, %if.end34.for.body.i_crit_edge ]
  %found.053.i = phi ptr [ %found.2.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.end34.for.body.i_crit_edge ]
  %count.050.i = phi i32 [ %count.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end34.for.body.i_crit_edge ]
  %37 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %retval.0.i, label %for.body.i.for.inc.i_crit_edge [
    i32 1, label %for.body.i.land.lhs.true.i271_crit_edge
    i32 5, label %for.body.i.land.lhs.true.i271_crit_edge377
    i32 4, label %sw.bb1.i.i
    i32 2, label %sw.bb2.i.i
    i32 3, label %sw.bb7.i.i
  ]

for.body.i.land.lhs.true.i271_crit_edge377:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i271

for.body.i.land.lhs.true.i271_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i271

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

sw.bb1.i.i:                                       ; preds = %for.body.i
  %m_type.i.i = getelementptr inbounds %struct.msg_msg, ptr %msg.055.i, i32 0, i32 1
  %38 = ptrtoint ptr %m_type.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %m_type.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %msgtyp.addr.2)
  %cmp.not.i.i = icmp sgt i32 %39, %msgtyp.addr.2
  br i1 %cmp.not.i.i, label %sw.bb1.i.i.for.inc.i_crit_edge, label %sw.bb1.i.i.land.lhs.true.i271_crit_edge

sw.bb1.i.i.land.lhs.true.i271_crit_edge:          ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i271

sw.bb1.i.i.for.inc.i_crit_edge:                   ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

sw.bb2.i.i:                                       ; preds = %for.body.i
  %m_type3.i.i = getelementptr inbounds %struct.msg_msg, ptr %msg.055.i, i32 0, i32 1
  %40 = ptrtoint ptr %m_type3.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %m_type3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %msgtyp.addr.2)
  %cmp4.i.i = icmp eq i32 %41, %msgtyp.addr.2
  br i1 %cmp4.i.i, label %sw.bb2.i.i.land.lhs.true.i271_crit_edge, label %sw.bb2.i.i.for.inc.i_crit_edge

sw.bb2.i.i.for.inc.i_crit_edge:                   ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

sw.bb2.i.i.land.lhs.true.i271_crit_edge:          ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i271

sw.bb7.i.i:                                       ; preds = %for.body.i
  %m_type8.i.i = getelementptr inbounds %struct.msg_msg, ptr %msg.055.i, i32 0, i32 1
  %42 = ptrtoint ptr %m_type8.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %m_type8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %msgtyp.addr.2)
  %cmp9.not.i.i = icmp eq i32 %43, %msgtyp.addr.2
  br i1 %cmp9.not.i.i, label %sw.bb7.i.i.for.inc.i_crit_edge, label %sw.bb7.i.i.land.lhs.true.i271_crit_edge

sw.bb7.i.i.land.lhs.true.i271_crit_edge:          ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i271

sw.bb7.i.i.for.inc.i_crit_edge:                   ; preds = %sw.bb7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i271:                               ; preds = %sw.bb7.i.i.land.lhs.true.i271_crit_edge, %sw.bb2.i.i.land.lhs.true.i271_crit_edge, %sw.bb1.i.i.land.lhs.true.i271_crit_edge, %for.body.i.land.lhs.true.i271_crit_edge, %for.body.i.land.lhs.true.i271_crit_edge377
  %44 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i, align 8
  %call3.i = call i32 @security_msg_queue_msgrcv(ptr noundef %call.i256, ptr noundef %msg.055.i, ptr noundef %47, i32 noundef %msgtyp.addr.2, i32 noundef %retval.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then.i272, label %land.lhs.true.i271.for.inc.i_crit_edge

land.lhs.true.i271.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i271
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i272:                                     ; preds = %land.lhs.true.i271
  %48 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %retval.0.i, label %if.then.i272.find_msg.exit_crit_edge [
    i32 4, label %land.lhs.true6.i
    i32 5, label %if.then11.i
  ]

if.then.i272.find_msg.exit_crit_edge:             ; preds = %if.then.i272
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_msg.exit

land.lhs.true6.i:                                 ; preds = %if.then.i272
  %m_type.i = getelementptr inbounds %struct.msg_msg, ptr %msg.055.i, i32 0, i32 1
  %49 = ptrtoint ptr %m_type.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %m_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp7.not.i = icmp eq i32 %50, 1
  br i1 %cmp7.not.i, label %land.lhs.true6.i.find_msg.exit_crit_edge, label %if.then8.i

land.lhs.true6.i.find_msg.exit_crit_edge:         ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_msg.exit

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i273 = add i32 %50, -1
  br label %if.end16.i

if.then11.i:                                      ; preds = %if.then.i272
  call void @__sanitizer_cov_trace_cmp4(i32 %msgtyp.addr.2, i32 %count.050.i)
  %cmp12.i = icmp eq i32 %msgtyp.addr.2, %count.050.i
  br i1 %cmp12.i, label %if.then11.i.find_msg.exit_crit_edge, label %if.then11.i.if.end16.i_crit_edge

if.then11.i.if.end16.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then11.i.find_msg.exit_crit_edge:              ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_msg.exit

if.end16.i:                                       ; preds = %if.then11.i.if.end16.i_crit_edge, %if.then8.i
  %msgtyp.addr.3 = phi i32 [ %msgtyp.addr.2, %if.then11.i.if.end16.i_crit_edge ], [ %sub.i273, %if.then8.i ]
  %found.1.i = phi ptr [ %found.053.i, %if.then11.i.if.end16.i_crit_edge ], [ %msg.055.i, %if.then8.i ]
  %inc.i = add i32 %count.050.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end16.i, %land.lhs.true.i271.for.inc.i_crit_edge, %sw.bb7.i.i.for.inc.i_crit_edge, %sw.bb2.i.i.for.inc.i_crit_edge, %sw.bb1.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %msgtyp.addr.4 = phi i32 [ %msgtyp.addr.2, %for.body.i.for.inc.i_crit_edge ], [ %msgtyp.addr.2, %sw.bb7.i.i.for.inc.i_crit_edge ], [ %msgtyp.addr.3, %if.end16.i ], [ %msgtyp.addr.2, %land.lhs.true.i271.for.inc.i_crit_edge ], [ %msgtyp.addr.2, %sw.bb2.i.i.for.inc.i_crit_edge ], [ %msgtyp.addr.2, %sw.bb1.i.i.for.inc.i_crit_edge ]
  %count.1.i = phi i32 [ %count.050.i, %for.body.i.for.inc.i_crit_edge ], [ %count.050.i, %sw.bb7.i.i.for.inc.i_crit_edge ], [ %inc.i, %if.end16.i ], [ %count.050.i, %land.lhs.true.i271.for.inc.i_crit_edge ], [ %count.050.i, %sw.bb2.i.i.for.inc.i_crit_edge ], [ %count.050.i, %sw.bb1.i.i.for.inc.i_crit_edge ]
  %found.2.i = phi ptr [ %found.053.i, %for.body.i.for.inc.i_crit_edge ], [ %found.053.i, %sw.bb7.i.i.for.inc.i_crit_edge ], [ %found.1.i, %if.end16.i ], [ %found.053.i, %land.lhs.true.i271.for.inc.i_crit_edge ], [ %found.053.i, %sw.bb2.i.i.for.inc.i_crit_edge ], [ %found.053.i, %sw.bb1.i.i.for.inc.i_crit_edge ]
  %51 = ptrtoint ptr %msg.055.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %msg.0.i = load ptr, ptr %msg.055.i, align 4
  %cmp.not.i = icmp eq ptr %msg.0.i, %q_messages.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %tobool23.not.i = icmp eq ptr %found.2.i, null
  br i1 %tobool23.not.i, label %for.end.i.if.end55_crit_edge, label %for.end.i.find_msg.exit_crit_edge

for.end.i.find_msg.exit_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_msg.exit

for.end.i.if.end55_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

find_msg.exit:                                    ; preds = %for.end.i.find_msg.exit_crit_edge, %if.then11.i.find_msg.exit_crit_edge, %land.lhs.true6.i.find_msg.exit_crit_edge, %if.then.i272.find_msg.exit_crit_edge
  %msgtyp.addr.6 = phi i32 [ %msgtyp.addr.4, %for.end.i.find_msg.exit_crit_edge ], [ %msgtyp.addr.2, %if.then11.i.find_msg.exit_crit_edge ], [ %msgtyp.addr.2, %land.lhs.true6.i.find_msg.exit_crit_edge ], [ %msgtyp.addr.2, %if.then.i272.find_msg.exit_crit_edge ]
  %retval.0.i274 = phi ptr [ %found.2.i, %for.end.i.find_msg.exit_crit_edge ], [ %msg.055.i, %if.then11.i.find_msg.exit_crit_edge ], [ %msg.055.i, %land.lhs.true6.i.find_msg.exit_crit_edge ], [ %msg.055.i, %if.then.i272.find_msg.exit_crit_edge ]
  %cmp.i275 = icmp ugt ptr %retval.0.i274, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i275, label %find_msg.exit.if.end55_crit_edge, label %if.then37

find_msg.exit.if.end55_crit_edge:                 ; preds = %find_msg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then37:                                        ; preds = %find_msg.exit
  %m_ts = getelementptr inbounds %struct.msg_msg, ptr %retval.0.i274, i32 0, i32 2
  %52 = ptrtoint ptr %m_ts to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %m_ts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %bufsz)
  %cmp38 = icmp ugt i32 %53, %bufsz
  %or.cond237 = and i1 %tobool64.not, %cmp38
  br i1 %or.cond237, label %if.then37.out_unlock0_crit_edge, label %if.end43

if.then37.out_unlock0_crit_edge:                  ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock0

if.end43:                                         ; preds = %if.then37
  br i1 %tobool.not, label %if.end48, label %if.then46

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %call47 = call ptr @copy_msg(ptr noundef %retval.0.i274, ptr noundef %copy.0333) #10
  br label %out_unlock0

if.end48:                                         ; preds = %if.end43
  %call.i.i276 = call zeroext i1 @__list_del_entry_valid(ptr noundef %retval.0.i274) #10
  br i1 %call.i.i276, label %if.end.i.i, label %if.end48.list_del.exit_crit_edge

if.end48.list_del.exit_crit_edge:                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i274, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %retval.0.i274 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %retval.0.i274, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end48.list_del.exit_crit_edge
  %60 = ptrtoint ptr %retval.0.i274 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 256 to ptr), ptr %retval.0.i274, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i274, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %q_qnum = getelementptr inbounds %struct.msg_queue, ptr %call.i256, i32 0, i32 5
  %62 = ptrtoint ptr %q_qnum to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %q_qnum, align 4
  %dec = add i32 %63, -1
  store i32 %dec, ptr %q_qnum, align 4
  %call49 = call i64 @ktime_get_real_seconds() #10
  %q_rtime = getelementptr inbounds %struct.msg_queue, ptr %call.i256, i32 0, i32 2
  %64 = ptrtoint ptr %q_rtime to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %call49, ptr %q_rtime, align 8
  %q_lrpid = getelementptr inbounds %struct.msg_queue, ptr %call.i256, i32 0, i32 8
  %65 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 111
  %67 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %signal.i, align 16
  %arrayidx.i277 = getelementptr %struct.signal_struct, ptr %68, i32 0, i32 22, i32 1
  %69 = ptrtoint ptr %arrayidx.i277 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i277, align 4
  %71 = ptrtoint ptr %q_lrpid to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %q_lrpid, align 4
  %cmp.not.i278 = icmp eq ptr %72, %70
  br i1 %cmp.not.i278, label %list_del.exit.ipc_update_pid.exit_crit_edge, label %if.then.i279

list_del.exit.ipc_update_pid.exit_crit_edge:      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipc_update_pid.exit

if.then.i279:                                     ; preds = %list_del.exit
  %tobool.not.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i.i, label %if.then.i279.get_pid.exit.i_crit_edge, label %if.then.i.i

if.then.i279.get_pid.exit.i_crit_edge:            ; preds = %if.then.i279
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid.exit.i

if.then.i.i:                                      ; preds = %if.then.i279
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %70, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr nonnull %70, i32 1, i32 3, i32 1) #10
  %73 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %70, ptr nonnull %70, i32 1, ptr nonnull elementtype(i32) %70) #10, !srcloc !124
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !113

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %74 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %.not.i.i.i.i.i = icmp sgt i32 %74, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !119

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_pid.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %70, i32 noundef %.sink.i.i.i.i.i) #10
  br label %get_pid.exit.i

get_pid.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, %if.then.i279.get_pid.exit.i_crit_edge
  %75 = ptrtoint ptr %q_lrpid to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %70, ptr %q_lrpid, align 4
  call void @put_pid(ptr noundef %72) #10
  br label %ipc_update_pid.exit

ipc_update_pid.exit:                              ; preds = %get_pid.exit.i, %list_del.exit.ipc_update_pid.exit_crit_edge
  %76 = ptrtoint ptr %m_ts to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %m_ts, align 4
  %q_cbytes = getelementptr inbounds %struct.msg_queue, ptr %call.i256, i32 0, i32 4
  %78 = ptrtoint ptr %q_cbytes to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %q_cbytes, align 8
  %sub = sub i32 %79, %77
  store i32 %sub, ptr %q_cbytes, align 8
  %80 = load i32, ptr %m_ts, align 4
  %msg_bytes = getelementptr inbounds %struct.ipc_namespace, ptr %10, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %msg_bytes, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %msg_bytes, i32 1, i32 3, i32 1) #10
  %81 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %msg_bytes, ptr %msg_bytes, i32 %80, ptr elementtype(i32) %msg_bytes) #10, !srcloc !128
  %msg_hdrs = getelementptr inbounds %struct.ipc_namespace, ptr %10, i32 0, i32 7
  %call.i.i239 = call zeroext i1 @__kasan_check_write(ptr noundef %msg_hdrs, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %msg_hdrs, i32 1, i32 3, i32 1) #10
  %82 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %msg_hdrs, ptr %msg_hdrs, i32 1, ptr elementtype(i32) %msg_hdrs) #10, !srcloc !128
  call fastcc void @ss_wakeup(ptr noundef %call.i256, ptr noundef nonnull %wake_q, i1 noundef zeroext false)
  br label %out_unlock0

if.end55:                                         ; preds = %find_msg.exit.if.end55_crit_edge, %for.end.i.if.end55_crit_edge, %if.end34.if.end55_crit_edge
  %msgtyp.addr.6338 = phi i32 [ %msgtyp.addr.6, %find_msg.exit.if.end55_crit_edge ], [ %msgtyp.addr.4, %for.end.i.if.end55_crit_edge ], [ %msgtyp.addr.1361, %if.end34.if.end55_crit_edge ]
  br i1 %tobool57.not, label %if.end60, label %if.end55.out_unlock0_crit_edge

if.end55.out_unlock0_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock0

if.end60:                                         ; preds = %if.end55
  %83 = ptrtoint ptr %prev.i281 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i281, align 4
  %call.i.i282 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %msr_d, ptr noundef %84, ptr noundef %q_receivers) #10
  br i1 %call.i.i282, label %if.end.i.i283, label %if.end60.list_add_tail.exit_crit_edge

if.end60.list_add_tail.exit_crit_edge:            ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i283:                                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %prev.i281 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %msr_d, ptr %prev.i281, align 4
  %86 = ptrtoint ptr %msr_d to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %q_receivers, ptr %msr_d, align 4
  %87 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %22, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %msr_d, ptr %84, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i283, %if.end60.list_add_tail.exit_crit_edge
  %89 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task, align 8
  %91 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %23, align 4
  %92 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %msgtyp.addr.6338, ptr %25, align 4
  %93 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %retval.0.i, ptr %24, align 4
  %94 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %bufsz.238, ptr %26, align 4
  %95 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr inttoptr (i32 -11 to ptr), ptr %27, align 4
  br label %__here

__here:                                           ; preds = %list_add_tail.exit
  %96 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 212
  %98 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 ptrtoint (ptr blockaddress(@do_msgrcv, %__here) to i32), ptr %task_state_change, align 4
  %99 = load ptr, ptr %task, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 1, ptr %99, align 128
  call void @_raw_spin_unlock(ptr noundef %call.i256) #10
  %call.i284 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i284, label %__here.rcu_read_unlock.exit294_crit_edge, label %land.lhs.true.i287

__here.rcu_read_unlock.exit294_crit_edge:         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit294

land.lhs.true.i287:                               ; preds = %__here
  %call1.i285 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i285)
  %tobool.not.i286 = icmp eq i32 %call1.i285, 0
  br i1 %tobool.not.i286, label %land.lhs.true.i287.rcu_read_unlock.exit294_crit_edge, label %land.lhs.true2.i289

land.lhs.true.i287.rcu_read_unlock.exit294_crit_edge: ; preds = %land.lhs.true.i287
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit294

land.lhs.true2.i289:                              ; preds = %land.lhs.true.i287
  %.b4.i288 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i288, label %land.lhs.true2.i289.rcu_read_unlock.exit294_crit_edge, label %if.then.i290

land.lhs.true2.i289.rcu_read_unlock.exit294_crit_edge: ; preds = %land.lhs.true2.i289
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit294

if.then.i290:                                     ; preds = %land.lhs.true2.i289
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.19) #10
  br label %rcu_read_unlock.exit294

rcu_read_unlock.exit294:                          ; preds = %if.then.i290, %land.lhs.true2.i289.rcu_read_unlock.exit294_crit_edge, %land.lhs.true.i287.rcu_read_unlock.exit294_crit_edge, %__here.rcu_read_unlock.exit294_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !114
  %101 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i.i291 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i.i.i291 to ptr
  %preempt_count.i.i.i.i292 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %preempt_count.i.i.i.i292 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %preempt_count.i.i.i.i292, align 4
  %sub.i.i.i293 = add i32 %104, -1
  store volatile i32 %sub.i.i.i293, ptr %preempt_count.i.i.i.i292, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @schedule() #10
  %105 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i.i240 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i.i.i240 to ptr
  %preempt_count.i.i.i.i241 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i.i.i241 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i.i.i241, align 4
  %add.i.i.i242 = add i32 %108, 1
  store volatile i32 %add.i.i.i242, ptr %preempt_count.i.i.i.i241, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !116
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i243 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i243, label %rcu_read_unlock.exit294.rcu_read_lock.exit250_crit_edge, label %land.lhs.true.i246

rcu_read_unlock.exit294.rcu_read_lock.exit250_crit_edge: ; preds = %rcu_read_unlock.exit294
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit250

land.lhs.true.i246:                               ; preds = %rcu_read_unlock.exit294
  %call1.i244 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i244)
  %tobool.not.i245 = icmp eq i32 %call1.i244, 0
  br i1 %tobool.not.i245, label %land.lhs.true.i246.rcu_read_lock.exit250_crit_edge, label %land.lhs.true2.i248

land.lhs.true.i246.rcu_read_lock.exit250_crit_edge: ; preds = %land.lhs.true.i246
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit250

land.lhs.true2.i248:                              ; preds = %land.lhs.true.i246
  %.b4.i247 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i247, label %land.lhs.true2.i248.rcu_read_lock.exit250_crit_edge, label %if.then.i249

land.lhs.true2.i248.rcu_read_lock.exit250_crit_edge: ; preds = %land.lhs.true2.i248
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit250

if.then.i249:                                     ; preds = %land.lhs.true2.i248
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.31) #10
  br label %rcu_read_lock.exit250

rcu_read_lock.exit250:                            ; preds = %if.then.i249, %land.lhs.true2.i248.rcu_read_lock.exit250_crit_edge, %land.lhs.true.i246.rcu_read_lock.exit250_crit_edge, %rcu_read_unlock.exit294.rcu_read_lock.exit250_crit_edge
  %109 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile ptr, ptr %27, align 4
  %cmp141.not = icmp eq ptr %110, inttoptr (i32 -11 to ptr)
  br i1 %cmp141.not, label %if.end149, label %do.end146

do.end146:                                        ; preds = %rcu_read_lock.exit250
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !129
  br label %cleanup.thread348

if.end149:                                        ; preds = %rcu_read_lock.exit250
  call void @_raw_spin_lock(ptr noundef %call.i256) #10
  %111 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile ptr, ptr %27, align 4
  %cmp157.not = icmp eq ptr %112, inttoptr (i32 -11 to ptr)
  br i1 %cmp157.not, label %if.end159, label %if.end149.out_unlock0_crit_edge

if.end149.out_unlock0_crit_edge:                  ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock0

if.end159:                                        ; preds = %if.end149
  %call.i.i295 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %msr_d) #10
  br i1 %call.i.i295, label %if.end.i.i298, label %if.end159.list_del.exit300_crit_edge

if.end159.list_del.exit300_crit_edge:             ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit300

if.end.i.i298:                                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %22, align 4
  %115 = ptrtoint ptr %msr_d to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %msr_d, align 4
  %prev1.i.i.i297 = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %prev1.i.i.i297 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %114, ptr %prev1.i.i.i297, align 4
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %116, ptr %114, align 4
  br label %list_del.exit300

list_del.exit300:                                 ; preds = %if.end.i.i298, %if.end159.list_del.exit300_crit_edge
  %119 = ptrtoint ptr %msr_d to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 256 to ptr), ptr %msr_d, align 4
  %120 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  %121 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %stack.i.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %124, align 4
  %127 = and i32 %126, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.not.i301 = icmp eq i32 %127, 0
  br i1 %tobool.not.i301, label %signal_pending.exit, label %list_del.exit300.out_unlock0_crit_edge, !prof !119

list_del.exit300.out_unlock0_crit_edge:           ; preds = %list_del.exit300
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock0

signal_pending.exit:                              ; preds = %list_del.exit300
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %124, align 4
  %and1.i.i.i.i.i = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool164.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool164.not, label %cleanup, label %signal_pending.exit.out_unlock0_crit_edge

signal_pending.exit.out_unlock0_crit_edge:        ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock0

cleanup.thread348:                                ; preds = %cleanup.cleanup.thread348_crit_edge, %do.end146, %for.cond.preheader.cleanup.thread348_crit_edge
  %msg.0.ph347 = phi ptr [ %110, %do.end146 ], [ inttoptr (i32 -13 to ptr), %for.cond.preheader.cleanup.thread348_crit_edge ], [ inttoptr (i32 -13 to ptr), %cleanup.cleanup.thread348_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %msr_d) #10
  br label %out_unlock1

cleanup:                                          ; preds = %signal_pending.exit
  call void @_raw_spin_unlock(ptr noundef %call.i256) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %msr_d) #10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %msr_d) #10
  %130 = call ptr @memset(ptr %msr_d, i32 255, i32 28)
  %call25 = call i32 @ipcperms(ptr noundef %10, ptr noundef %call.i256, i16 noundef signext 292) #10
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cleanup.if.end28_crit_edge, label %cleanup.cleanup.thread348_crit_edge

cleanup.cleanup.thread348_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread348

cleanup.if.end28_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

out_unlock0:                                      ; preds = %signal_pending.exit.out_unlock0_crit_edge, %list_del.exit300.out_unlock0_crit_edge, %if.end149.out_unlock0_crit_edge, %if.end55.out_unlock0_crit_edge, %ipc_update_pid.exit, %if.then46, %if.then37.out_unlock0_crit_edge, %if.end28.out_unlock0_crit_edge
  %msg.0.ph = phi ptr [ inttoptr (i32 -7 to ptr), %if.then37.out_unlock0_crit_edge ], [ %retval.0.i274, %ipc_update_pid.exit ], [ %call47, %if.then46 ], [ inttoptr (i32 -514 to ptr), %list_del.exit300.out_unlock0_crit_edge ], [ %112, %if.end149.out_unlock0_crit_edge ], [ inttoptr (i32 -43 to ptr), %if.end28.out_unlock0_crit_edge ], [ inttoptr (i32 -42 to ptr), %if.end55.out_unlock0_crit_edge ], [ inttoptr (i32 -514 to ptr), %signal_pending.exit.out_unlock0_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %msr_d) #10
  call void @_raw_spin_unlock(ptr noundef %call.i256) #10
  call void @wake_up_q(ptr noundef nonnull %wake_q) #10
  br label %out_unlock1

out_unlock1:                                      ; preds = %out_unlock0, %cleanup.thread348
  %msg.0344 = phi ptr [ %msg.0.ph, %out_unlock0 ], [ %msg.0.ph347, %cleanup.thread348 ]
  %call.i304 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i304, label %out_unlock1.rcu_read_unlock.exit314_crit_edge, label %land.lhs.true.i307

out_unlock1.rcu_read_unlock.exit314_crit_edge:    ; preds = %out_unlock1
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit314

land.lhs.true.i307:                               ; preds = %out_unlock1
  %call1.i305 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i305)
  %tobool.not.i306 = icmp eq i32 %call1.i305, 0
  br i1 %tobool.not.i306, label %land.lhs.true.i307.rcu_read_unlock.exit314_crit_edge, label %land.lhs.true2.i309

land.lhs.true.i307.rcu_read_unlock.exit314_crit_edge: ; preds = %land.lhs.true.i307
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit314

land.lhs.true2.i309:                              ; preds = %land.lhs.true.i307
  %.b4.i308 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i308, label %land.lhs.true2.i309.rcu_read_unlock.exit314_crit_edge, label %if.then.i310

land.lhs.true2.i309.rcu_read_unlock.exit314_crit_edge: ; preds = %land.lhs.true2.i309
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit314

if.then.i310:                                     ; preds = %land.lhs.true2.i309
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.19) #10
  br label %rcu_read_unlock.exit314

rcu_read_unlock.exit314:                          ; preds = %if.then.i310, %land.lhs.true2.i309.rcu_read_unlock.exit314_crit_edge, %land.lhs.true.i307.rcu_read_unlock.exit314_crit_edge, %out_unlock1.rcu_read_unlock.exit314_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !114
  %131 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i.i311 = and i32 %131, -16384
  %132 = inttoptr i32 %and.i.i.i.i.i311 to ptr
  %preempt_count.i.i.i.i312 = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %preempt_count.i.i.i.i312 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %preempt_count.i.i.i.i312, align 4
  %sub.i.i.i313 = add i32 %134, -1
  store volatile i32 %sub.i.i.i313, ptr %preempt_count.i.i.i.i312, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %cmp.i315 = icmp ugt ptr %msg.0344, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i315, label %if.then171, label %if.end173

if.then171:                                       ; preds = %rcu_read_unlock.exit314
  %tobool.not.i316 = icmp eq ptr %copy.0333, null
  br i1 %tobool.not.i316, label %if.then171.free_copy.exit319_crit_edge, label %if.then.i317

if.then171.free_copy.exit319_crit_edge:           ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_copy.exit319

if.then.i317:                                     ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #12
  call void @free_msg(ptr noundef nonnull %copy.0333) #10
  br label %free_copy.exit319

free_copy.exit319:                                ; preds = %if.then.i317, %if.then171.free_copy.exit319_crit_edge
  %135 = ptrtoint ptr %msg.0344 to i32
  br label %cleanup175

if.end173:                                        ; preds = %rcu_read_unlock.exit314
  %m_type.i320 = getelementptr inbounds %struct.msg_msg, ptr %msg.0344, i32 0, i32 1
  %136 = ptrtoint ptr %m_type.i320 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %m_type.i320, align 4
  call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 1025) #10
  %138 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i = and i32 %138, -16384
  %139 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 4
  %140 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #7, !srcloc !120
  %and.i.i321 = and i32 %140, -13
  %or.i.i = or i32 %and.i.i321, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #10, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  %141 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf, i32 %137, i32 -1226833921) #10, !srcloc !130
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %140) #10, !srcloc !121
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool.not.i322 = icmp eq i32 %141, 0
  br i1 %tobool.not.i322, label %if.end.i327, label %if.end173.do_msg_fill.exit_crit_edge

if.end173.do_msg_fill.exit_crit_edge:             ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_msg_fill.exit

if.end.i327:                                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #12
  %m_ts.i323 = getelementptr inbounds %struct.msg_msg, ptr %msg.0344, i32 0, i32 2
  %142 = ptrtoint ptr %m_ts.i323 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %m_ts.i323, align 4
  %144 = call i32 @llvm.umin.i32(i32 %143, i32 %bufsz) #10
  %mtext.i = getelementptr inbounds %struct.msgbuf, ptr %buf, i32 0, i32 1
  %call3.i324 = call i32 @store_msg(ptr noundef %mtext.i, ptr noundef %msg.0344, i32 noundef %144) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i324)
  %tobool4.not.i325 = icmp eq i32 %call3.i324, 0
  %spec.select.i326 = select i1 %tobool4.not.i325, i32 %144, i32 -14
  br label %do_msg_fill.exit

do_msg_fill.exit:                                 ; preds = %if.end.i327, %if.end173.do_msg_fill.exit_crit_edge
  %retval.0.i328 = phi i32 [ -14, %if.end173.do_msg_fill.exit_crit_edge ], [ %spec.select.i326, %if.end.i327 ]
  call void @free_msg(ptr noundef %msg.0344) #10
  br label %cleanup175

cleanup175:                                       ; preds = %do_msg_fill.exit, %free_copy.exit319, %free_copy.exit, %if.then14, %if.then3.cleanup175_crit_edge, %entry.cleanup175_crit_edge
  %retval.0 = phi i32 [ %16, %if.then14 ], [ %33, %free_copy.exit ], [ %135, %free_copy.exit319 ], [ %retval.0.i328, %do_msg_fill.exit ], [ -22, %entry.cleanup175_crit_edge ], [ -22, %if.then3.cleanup175_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_msg_fill(ptr noundef %dest, ptr noundef %msg, i32 noundef %bufsz) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %m_type = getelementptr inbounds %struct.msg_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %m_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_type, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 1025) #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !120
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  %5 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %dest, i32 %1, i32 -1226833921) #10, !srcloc !130
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #10, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %m_ts = getelementptr inbounds %struct.msg_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %m_ts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_ts, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %bufsz)
  %mtext = getelementptr inbounds %struct.msgbuf, ptr %dest, i32 0, i32 1
  %call3 = tail call i32 @store_msg(ptr noundef %mtext, ptr noundef %msg, i32 noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool4.not, i32 %8, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_msgrcv(i32 noundef %msqid, i32 noundef %msgp, i32 noundef %msgsz, i32 noundef %msgtyp, i32 noundef %msgflg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %msgp to ptr
  %call.i.i = tail call fastcc i32 @do_msgrcv(i32 noundef %msqid, ptr noundef %0, i32 noundef %msgsz, i32 noundef %msgtyp, i32 noundef %msgflg, ptr noundef nonnull @do_msg_fill) #10
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msg_init_ns(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_ctlmax = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 3
  %0 = ptrtoint ptr %msg_ctlmax to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8192, ptr %msg_ctlmax, align 4
  %msg_ctlmnb = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 4
  %1 = ptrtoint ptr %msg_ctlmnb to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16384, ptr %msg_ctlmnb, align 4
  %msg_ctlmni = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 5
  %2 = ptrtoint ptr %msg_ctlmni to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32000, ptr %msg_ctlmni, align 4
  %msg_bytes = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %msg_bytes, i32 noundef 4) #10
  %3 = ptrtoint ptr %msg_bytes to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %msg_bytes, align 4
  %msg_hdrs = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 7
  %call.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %msg_hdrs, i32 noundef 4) #10
  %4 = ptrtoint ptr %msg_hdrs to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %msg_hdrs, align 4
  %arrayidx = getelementptr [3 x %struct.ipc_ids], ptr %ns, i32 0, i32 1
  tail call void @ipc_init_ids(ptr noundef %arrayidx) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_init_ids(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msg_exit_ns(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x %struct.ipc_ids], ptr %ns, i32 0, i32 1
  tail call void @free_ipcs(ptr noundef %ns, ptr noundef %arrayidx, ptr noundef nonnull @freeque) #10
  %ipcs_idr = getelementptr [3 x %struct.ipc_ids], ptr %ns, i32 0, i32 1, i32 3
  tail call void @idr_destroy(ptr noundef %ipcs_idr) #10
  %key_ht = getelementptr [3 x %struct.ipc_ids], ptr %ns, i32 0, i32 1, i32 7
  tail call void @rhashtable_destroy(ptr noundef %key_ht) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_ipcs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @freeque(ptr noundef %ns, ptr noundef %ipcp) #0 align 64 {
entry:
  %wake_q = alloca %struct.wake_q_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q) #10
  %0 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1
  %1 = ptrtoint ptr %wake_q to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %wake_q, ptr %0, align 4
  %q_receivers.i = getelementptr inbounds %struct.msg_queue, ptr %ipcp, i32 0, i32 10
  %3 = ptrtoint ptr %q_receivers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %q_receivers.i, align 4
  %cmp.not37.i = icmp eq ptr %4, %q_receivers.i
  br i1 %cmp.not37.i, label %entry.expunge_all.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.expunge_all.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %expunge_all.exit

for.body.i:                                       ; preds = %get_task_struct.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %msr.038.i = phi ptr [ %t.0.i, %get_task_struct.exit.i.for.body.i_crit_edge ], [ %4, %entry.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %msr.038.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %t.0.i = load ptr, ptr %msr.038.i, align 4
  %r_tsk7.i = getelementptr inbounds %struct.msg_receiver, ptr %msr.038.i, i32 0, i32 1
  %6 = ptrtoint ptr %r_tsk7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r_tsk7.i, align 4
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #10
  %8 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #10, !srcloc !124
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %for.body.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !113

for.body.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %for.body.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !119

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_task_struct.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %for.body.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %for.body.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %get_task_struct.exit.i

get_task_struct.exit.i:                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_task_struct.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !131
  %r_msg.i = getelementptr inbounds %struct.msg_receiver, ptr %msr.038.i, i32 0, i32 5
  %10 = ptrtoint ptr %r_msg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr inttoptr (i32 -43 to ptr), ptr %r_msg.i, align 4
  call void @wake_q_add_safe(ptr noundef nonnull %wake_q, ptr noundef %7) #10
  %cmp.not.i = icmp eq ptr %t.0.i, %q_receivers.i
  br i1 %cmp.not.i, label %get_task_struct.exit.i.expunge_all.exit_crit_edge, label %get_task_struct.exit.i.for.body.i_crit_edge

get_task_struct.exit.i.for.body.i_crit_edge:      ; preds = %get_task_struct.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

get_task_struct.exit.i.expunge_all.exit_crit_edge: ; preds = %get_task_struct.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %expunge_all.exit

expunge_all.exit:                                 ; preds = %get_task_struct.exit.i.expunge_all.exit_crit_edge, %entry.expunge_all.exit_crit_edge
  %q_senders.i = getelementptr inbounds %struct.msg_queue, ptr %ipcp, i32 0, i32 11
  %11 = ptrtoint ptr %q_senders.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %q_senders.i, align 4
  %cmp.not39.i = icmp eq ptr %12, %q_senders.i
  br i1 %cmp.not39.i, label %expunge_all.exit.ss_wakeup.exit_crit_edge, label %expunge_all.exit.for.body.i33_crit_edge

expunge_all.exit.for.body.i33_crit_edge:          ; preds = %expunge_all.exit
  br label %for.body.i33

expunge_all.exit.ss_wakeup.exit_crit_edge:        ; preds = %expunge_all.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ss_wakeup.exit

for.body.i33:                                     ; preds = %for.body.i33.for.body.i33_crit_edge, %expunge_all.exit.for.body.i33_crit_edge
  %mss.042.i = phi ptr [ %t.045.i, %for.body.i33.for.body.i33_crit_edge ], [ %12, %expunge_all.exit.for.body.i33_crit_edge ]
  %13 = ptrtoint ptr %mss.042.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %t.045.i = load ptr, ptr %mss.042.i, align 4
  store ptr null, ptr %mss.042.i, align 4
  %tsk20.i = getelementptr inbounds %struct.msg_sender, ptr %mss.042.i, i32 0, i32 1
  %14 = ptrtoint ptr %tsk20.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tsk20.i, align 4
  call void @wake_q_add(ptr noundef nonnull %wake_q, ptr noundef %15) #10
  %cmp.not.i34 = icmp eq ptr %t.045.i, %q_senders.i
  br i1 %cmp.not.i34, label %for.body.i33.ss_wakeup.exit_crit_edge, label %for.body.i33.for.body.i33_crit_edge

for.body.i33.for.body.i33_crit_edge:              ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i33

for.body.i33.ss_wakeup.exit_crit_edge:            ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %ss_wakeup.exit

ss_wakeup.exit:                                   ; preds = %for.body.i33.ss_wakeup.exit_crit_edge, %expunge_all.exit.ss_wakeup.exit_crit_edge
  %arrayidx.i = getelementptr [3 x %struct.ipc_ids], ptr %ns, i32 0, i32 1
  call void @ipc_rmid(ptr noundef %arrayidx.i, ptr noundef %ipcp) #10
  call void @_raw_spin_unlock(ptr noundef %ipcp) #10
  call void @wake_up_q(ptr noundef nonnull %wake_q) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %ss_wakeup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

ss_wakeup.exit.rcu_read_unlock.exit_crit_edge:    ; preds = %ss_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %ss_wakeup.exit
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.19) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %ss_wakeup.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !114
  %16 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %q_messages = getelementptr inbounds %struct.msg_queue, ptr %ipcp, i32 0, i32 9
  %20 = ptrtoint ptr %q_messages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %q_messages, align 4
  %cmp.not40 = icmp eq ptr %21, %q_messages
  br i1 %cmp.not40, label %rcu_read_unlock.exit.for.end_crit_edge, label %for.body.lr.ph

rcu_read_unlock.exit.for.end_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_unlock.exit
  %msg_hdrs = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %msg.041 = phi ptr [ %21, %for.body.lr.ph ], [ %t.0, %for.body.for.body_crit_edge ]
  %22 = ptrtoint ptr %msg.041 to i32
  call void @__asan_load4_noabort(i32 %22)
  %t.0 = load ptr, ptr %msg.041, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %msg_hdrs, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %msg_hdrs, i32 1, i32 3, i32 1) #10
  %23 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %msg_hdrs, ptr %msg_hdrs, i32 1, ptr elementtype(i32) %msg_hdrs) #10, !srcloc !128
  call void @free_msg(ptr noundef %msg.041) #10
  %cmp.not = icmp eq ptr %t.0, %q_messages
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %rcu_read_unlock.exit.for.end_crit_edge
  %q_cbytes = getelementptr inbounds %struct.msg_queue, ptr %ipcp, i32 0, i32 4
  %24 = ptrtoint ptr %q_cbytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %q_cbytes, align 8
  %msg_bytes = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 6
  %call.i.i31 = call zeroext i1 @__kasan_check_write(ptr noundef %msg_bytes, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %msg_bytes, i32 1, i32 3, i32 1) #10
  %26 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %msg_bytes, ptr %msg_bytes, i32 %25, ptr elementtype(i32) %msg_bytes) #10, !srcloc !128
  %q_lspid = getelementptr inbounds %struct.msg_queue, ptr %ipcp, i32 0, i32 7
  %27 = ptrtoint ptr %q_lspid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %q_lspid, align 4
  %cmp.not.i35 = icmp eq ptr %28, null
  br i1 %cmp.not.i35, label %for.end.ipc_update_pid.exit_crit_edge, label %if.then.i36

for.end.ipc_update_pid.exit_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipc_update_pid.exit

if.then.i36:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %q_lspid to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %q_lspid, align 4
  call void @put_pid(ptr noundef nonnull %28) #10
  br label %ipc_update_pid.exit

ipc_update_pid.exit:                              ; preds = %if.then.i36, %for.end.ipc_update_pid.exit_crit_edge
  %q_lrpid = getelementptr inbounds %struct.msg_queue, ptr %ipcp, i32 0, i32 8
  %30 = ptrtoint ptr %q_lrpid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %q_lrpid, align 4
  %cmp.not.i37 = icmp eq ptr %31, null
  br i1 %cmp.not.i37, label %ipc_update_pid.exit.ipc_update_pid.exit39_crit_edge, label %if.then.i38

ipc_update_pid.exit.ipc_update_pid.exit39_crit_edge: ; preds = %ipc_update_pid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipc_update_pid.exit39

if.then.i38:                                      ; preds = %ipc_update_pid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %q_lrpid to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %q_lrpid, align 4
  call void @put_pid(ptr noundef nonnull %31) #10
  br label %ipc_update_pid.exit39

ipc_update_pid.exit39:                            ; preds = %if.then.i38, %ipc_update_pid.exit.ipc_update_pid.exit39_crit_edge
  call void @ipc_rcu_putref(ptr noundef %ipcp, ptr noundef nonnull @msg_rcu_free) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @msg_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msg_init_ns(ptr noundef nonnull @init_ipc_ns)
  tail call void @ipc_init_proc_interface(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 1, ptr noundef nonnull @sysvipc_msg_proc_show) #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ipc_init_proc_interface(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysvipc_msg_proc_show(ptr noundef %s, ptr nocapture noundef readonly %it) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ipc_seq_pid_ns(ptr noundef %s) #10
  %file.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns.i, align 4
  %key = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 3
  %6 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key, align 4
  %id = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 16
  %mode = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 8
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode, align 8
  %conv = zext i16 %11 to i32
  %q_cbytes = getelementptr inbounds %struct.msg_queue, ptr %it, i32 0, i32 4
  %12 = ptrtoint ptr %q_cbytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %q_cbytes, align 8
  %q_qnum = getelementptr inbounds %struct.msg_queue, ptr %it, i32 0, i32 5
  %14 = ptrtoint ptr %q_qnum to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %q_qnum, align 4
  %q_lspid = getelementptr inbounds %struct.msg_queue, ptr %it, i32 0, i32 7
  %16 = ptrtoint ptr %q_lspid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %q_lspid, align 4
  %call4 = tail call i32 @pid_nr_ns(ptr noundef %17, ptr noundef %call) #10
  %q_lrpid = getelementptr inbounds %struct.msg_queue, ptr %it, i32 0, i32 8
  %18 = ptrtoint ptr %q_lrpid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %q_lrpid, align 8
  %call5 = tail call i32 @pid_nr_ns(ptr noundef %19, ptr noundef %call) #10
  %uid = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 4
  %20 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack = load i32, ptr %uid, align 8
  %21 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call7 = tail call i32 @from_kuid_munged(ptr noundef %5, [1 x i32] %21) #10
  %gid = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 5
  %22 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack36 = load i32, ptr %gid, align 4
  %23 = insertvalue [1 x i32] undef, i32 %.unpack36, 0
  %call10 = tail call i32 @from_kgid_munged(ptr noundef %5, [1 x i32] %23) #10
  %cuid = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 6
  %24 = ptrtoint ptr %cuid to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack37 = load i32, ptr %cuid, align 64
  %25 = insertvalue [1 x i32] undef, i32 %.unpack37, 0
  %call13 = tail call i32 @from_kuid_munged(ptr noundef %5, [1 x i32] %25) #10
  %cgid = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 7
  %26 = ptrtoint ptr %cgid to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack38 = load i32, ptr %cgid, align 4
  %27 = insertvalue [1 x i32] undef, i32 %.unpack38, 0
  %call16 = tail call i32 @from_kgid_munged(ptr noundef %5, [1 x i32] %27) #10
  %q_stime = getelementptr inbounds %struct.msg_queue, ptr %it, i32 0, i32 1
  %28 = ptrtoint ptr %q_stime to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %q_stime, align 128
  %q_rtime = getelementptr inbounds %struct.msg_queue, ptr %it, i32 0, i32 2
  %30 = ptrtoint ptr %q_rtime to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %q_rtime, align 8
  %q_ctime = getelementptr inbounds %struct.msg_queue, ptr %it, i32 0, i32 3
  %32 = ptrtoint ptr %q_ctime to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %q_ctime, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, i32 noundef %7, i32 noundef %9, i32 noundef %conv, i32 noundef %13, i32 noundef %15, i32 noundef %call4, i32 noundef %call5, i32 noundef %call7, i32 noundef %call10, i32 noundef %call13, i32 noundef %call16, i64 noundef %29, i64 noundef %31, i64 noundef %33) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_msg_queue_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipc_addid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_rcu_putref(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msg_rcu_free(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -88
  tail call void @security_msg_queue_free(ptr noundef %add.ptr) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_msg_queue_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msgctl_down(ptr noundef %ns, i32 noundef %msqid, i32 noundef %cmd, ptr noundef %perm, i32 noundef %msg_qbytes) unnamed_addr #0 align 64 {
entry:
  %wake_q = alloca %struct.wake_q_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x %struct.ipc_ids], ptr %ns, i32 0, i32 1
  %rwsem = getelementptr [3 x %struct.ipc_ids], ptr %ns, i32 0, i32 1, i32 2
  tail call void @down_write(ptr noundef %rwsem) #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !116
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.31) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @ipcctl_obtain_check(ptr noundef %ns, ptr noundef %arrayidx, i32 noundef %msqid, i32 noundef %cmd, ptr noundef %perm, i32 noundef %msg_qbytes) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call to i32
  br label %out_unlock1

if.end:                                           ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @security_msg_queue_msgctl(ptr noundef %call, i32 noundef %cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.out_unlock1_crit_edge

if.end.out_unlock1_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock1

if.end7:                                          ; preds = %if.end
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %cmd, label %if.end7.out_unlock1_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
  ]

if.end7.out_unlock1_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock1

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef %call) #10
  tail call void @freeque(ptr noundef %ns, ptr noundef %call)
  br label %cleanup25

sw.bb9:                                           ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q) #10
  %6 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1
  %7 = ptrtoint ptr %wake_q to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %wake_q, ptr %6, align 4
  %msg_ctlmnb = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 4
  %9 = ptrtoint ptr %msg_ctlmnb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_ctlmnb, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %msg_qbytes)
  %cmp = icmp ult i32 %10, %msg_qbytes
  br i1 %cmp, label %land.lhs.true, label %sw.bb9.if.end13_crit_edge

sw.bb9.if.end13_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true:                                    ; preds = %sw.bb9
  %call11 = call zeroext i1 @capable(i32 noundef 24) #10
  br i1 %call11, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.cleanup.thread_crit_edge

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %sw.bb9.if.end13_crit_edge
  call void @_raw_spin_lock(ptr noundef %call) #10
  %call15 = call i32 @ipc_update_perm(ptr noundef %perm, ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %out_unlock0

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %q_qbytes = getelementptr inbounds %struct.msg_queue, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %q_qbytes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %msg_qbytes, ptr %q_qbytes, align 32
  %call19 = call i64 @ktime_get_real_seconds() #10
  %q_ctime = getelementptr inbounds %struct.msg_queue, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %q_ctime to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call19, ptr %q_ctime, align 16
  call fastcc void @expunge_all(ptr noundef %call, i32 noundef -11, ptr noundef nonnull %wake_q)
  call fastcc void @ss_wakeup(ptr noundef %call, ptr noundef nonnull %wake_q, i1 noundef zeroext false)
  call void @_raw_spin_unlock(ptr noundef %call) #10
  call void @wake_up_q(ptr noundef nonnull %wake_q) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end18, %land.lhs.true.cleanup.thread_crit_edge
  %err.0.ph = phi i32 [ -1, %land.lhs.true.cleanup.thread_crit_edge ], [ 0, %if.end18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q) #10
  br label %out_unlock1

out_unlock0:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q) #10
  call void @_raw_spin_unlock(ptr noundef %call) #10
  br label %out_unlock1

out_unlock1:                                      ; preds = %out_unlock0, %cleanup.thread, %if.end7.out_unlock1_crit_edge, %if.end.out_unlock1_crit_edge, %if.then
  %err.1 = phi i32 [ %4, %if.then ], [ %call5, %if.end.out_unlock1_crit_edge ], [ %call15, %out_unlock0 ], [ -22, %if.end7.out_unlock1_crit_edge ], [ %err.0.ph, %cleanup.thread ]
  %call.i52 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i52, label %out_unlock1.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i55

out_unlock1.rcu_read_unlock.exit_crit_edge:       ; preds = %out_unlock1
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i55:                                ; preds = %out_unlock1
  %call1.i53 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool.not.i54, label %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i57

land.lhs.true.i55.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i57:                               ; preds = %land.lhs.true.i55
  %.b4.i56 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56, label %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, label %if.then.i58

land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i58:                                      ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.19) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i58, %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, %out_unlock1.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !114
  %13 = call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i.i.i.i.i59 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i59 to ptr
  %preempt_count.i.i.i.i60 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i60, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i60, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup25

cleanup25:                                        ; preds = %rcu_read_unlock.exit, %sw.bb
  %err.2 = phi i32 [ %err.1, %rcu_read_unlock.exit ], [ 0, %sw.bb ]
  call void @up_write(ptr noundef %rwsem) #10
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_msg_queue_msgctl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipcperms(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_to_ipc64_perm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipc_obtain_object_idr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipc_obtain_object_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc64_perm_to_ipc_perm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipcctl_obtain_check(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipc_update_perm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @expunge_all(ptr noundef readonly %msq, i32 noundef %res, ptr noundef %wake_q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %q_receivers = getelementptr inbounds %struct.msg_queue, ptr %msq, i32 0, i32 10
  %0 = ptrtoint ptr %q_receivers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_receivers, align 4
  %cmp.not37 = icmp eq ptr %1, %q_receivers
  br i1 %cmp.not37, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = inttoptr i32 %res to ptr
  br label %for.body

for.body:                                         ; preds = %get_task_struct.exit.for.body_crit_edge, %for.body.lr.ph
  %msr.038 = phi ptr [ %1, %for.body.lr.ph ], [ %t.0, %get_task_struct.exit.for.body_crit_edge ]
  %3 = ptrtoint ptr %msr.038 to i32
  call void @__asan_load4_noabort(i32 %3)
  %t.0 = load ptr, ptr %msr.038, align 4
  %r_tsk7 = getelementptr inbounds %struct.msg_receiver, ptr %msr.038, i32 0, i32 1
  %4 = ptrtoint ptr %r_tsk7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %r_tsk7, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !124
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %for.body.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !113

for.body.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %for.body
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !119

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %for.body.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %for.body.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #10
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !131
  %r_msg = getelementptr inbounds %struct.msg_receiver, ptr %msr.038, i32 0, i32 5
  %8 = ptrtoint ptr %r_msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %2, ptr %r_msg, align 4
  tail call void @wake_q_add_safe(ptr noundef %wake_q, ptr noundef %5) #10
  %cmp.not = icmp eq ptr %t.0, %q_receivers
  br i1 %cmp.not, label %get_task_struct.exit.for.end_crit_edge, label %get_task_struct.exit.for.body_crit_edge

get_task_struct.exit.for.body_crit_edge:          ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

get_task_struct.exit.for.end_crit_edge:           ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %get_task_struct.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ss_wakeup(ptr noundef %msq, ptr noundef %wake_q, i1 noundef zeroext %kill) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %q_senders = getelementptr inbounds %struct.msg_queue, ptr %msq, i32 0, i32 11
  %0 = ptrtoint ptr %q_senders to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_senders, align 4
  %cmp.not39 = icmp eq ptr %1, %q_senders
  br i1 %cmp.not39, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %q_cbytes.i = getelementptr inbounds %struct.msg_queue, ptr %msq, i32 0, i32 4
  %q_qbytes.i = getelementptr inbounds %struct.msg_queue, ptr %msq, i32 0, i32 6
  %q_qnum.i = getelementptr inbounds %struct.msg_queue, ptr %msq, i32 0, i32 5
  %prev.i2.i = getelementptr inbounds %struct.msg_queue, ptr %msq, i32 0, i32 11, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mss.042 = phi ptr [ %1, %for.body.lr.ph ], [ %t.045, %for.inc.for.body_crit_edge ]
  %stop_tsk.040 = phi ptr [ null, %for.body.lr.ph ], [ %stop_tsk.2, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %mss.042 to i32
  call void @__asan_load4_noabort(i32 %2)
  %t.045 = load ptr, ptr %mss.042, align 4
  br i1 %kill, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %mss.042 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %mss.042, align 4
  br label %if.end19

if.else:                                          ; preds = %for.body
  %tsk = getelementptr inbounds %struct.msg_sender, ptr %mss.042, i32 0, i32 1
  %4 = ptrtoint ptr %tsk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tsk, align 4
  %cmp8 = icmp eq ptr %stop_tsk.040, %5
  br i1 %cmp8, label %if.else.for.end_crit_edge, label %if.else10

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.else10:                                        ; preds = %if.else
  %msgsz = getelementptr inbounds %struct.msg_sender, ptr %mss.042, i32 0, i32 2
  %6 = ptrtoint ptr %msgsz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msgsz, align 4
  %8 = ptrtoint ptr %q_cbytes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %q_cbytes.i, align 8
  %add.i = add i32 %9, %7
  %10 = ptrtoint ptr %q_qbytes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %q_qbytes.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %11)
  %cmp.not.i = icmp ugt i32 %add.i, %11
  br i1 %cmp.not.i, label %if.else10.if.then11_crit_edge, label %msg_fits_inqueue.exit

if.else10.if.then11_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

msg_fits_inqueue.exit:                            ; preds = %if.else10
  %12 = ptrtoint ptr %q_qnum.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %q_qnum.i, align 4
  %add1.i = add i32 %13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %11)
  %cmp3.i.not = icmp ugt i32 %add1.i, %11
  br i1 %cmp3.i.not, label %msg_fits_inqueue.exit.if.then11_crit_edge, label %msg_fits_inqueue.exit.if.end19_crit_edge

msg_fits_inqueue.exit.if.end19_crit_edge:         ; preds = %msg_fits_inqueue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

msg_fits_inqueue.exit.if.then11_crit_edge:        ; preds = %msg_fits_inqueue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %msg_fits_inqueue.exit.if.then11_crit_edge, %if.else10.if.then11_crit_edge
  %tobool12.not = icmp eq ptr %stop_tsk.040, null
  %spec.select = select i1 %tobool12.not, ptr %5, ptr %stop_tsk.040
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mss.042) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.__list_del_entry.exit.i_crit_edge

if.then11.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mss.042, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %mss.042 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mss.042, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then11.__list_del_entry.exit.i_crit_edge
  %20 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mss.042, ptr noundef %21, ptr noundef %q_senders) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %mss.042, ptr %prev.i2.i, align 4
  %23 = ptrtoint ptr %mss.042 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %q_senders, ptr %mss.042, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %mss.042, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %mss.042, ptr %21, align 4
  br label %for.inc

if.end19:                                         ; preds = %msg_fits_inqueue.exit.if.end19_crit_edge, %if.then
  %tsk20 = getelementptr inbounds %struct.msg_sender, ptr %mss.042, i32 0, i32 1
  %26 = ptrtoint ptr %tsk20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tsk20, align 4
  tail call void @wake_q_add(ptr noundef %wake_q, ptr noundef %27) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge
  %stop_tsk.2 = phi ptr [ %stop_tsk.040, %if.end19 ], [ %spec.select, %__list_del_entry.exit.i.for.inc_crit_edge ], [ %spec.select, %if.end.i.i.i ]
  %cmp.not = icmp eq ptr %t.045, %q_senders
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add_safe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_msg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_msg_queue_msgsnd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ss_add(ptr noundef %msq, ptr noundef %mss, i32 noundef %msgsz) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !102) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %tsk = getelementptr inbounds %struct.msg_sender, ptr %mss, i32 0, i32 1
  %4 = ptrtoint ptr %tsk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %tsk, align 4
  %msgsz1 = getelementptr inbounds %struct.msg_sender, ptr %mss, i32 0, i32 2
  %5 = ptrtoint ptr %msgsz1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %msgsz, ptr %msgsz1, align 4
  br label %__here

__here:                                           ; preds = %entry
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 212
  %8 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 ptrtoint (ptr blockaddress(@ss_add, %__here) to i32), ptr %task_state_change, align 4
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %9, align 128
  %q_senders = getelementptr inbounds %struct.msg_queue, ptr %msq, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.msg_queue, ptr %msq, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mss, ptr noundef %12, ptr noundef %q_senders) #10
  br i1 %call.i.i, label %if.end.i.i, label %__here.list_add_tail.exit_crit_edge

__here.list_add_tail.exit_crit_edge:              ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mss, ptr %prev.i, align 4
  %14 = ptrtoint ptr %mss to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %q_senders, ptr %mss, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %mss, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %mss, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %__here.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipc_rcu_getref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_msg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_msg_queue_msgrcv(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @copy_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @store_msg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_rmid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipc_seq_pid_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !51, !52, !53, !54, !56, !58, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !76, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !91, !92, !93, !94, !96, !97, !98, !99, !100}
!llvm.named.register.sp = !{!102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @ksys_msgget.msg_ops, !1, !"msg_ops", i1 false, i1 false}
!1 = !{!"../ipc/msg.c", i32 300, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../ipc/msg.c", i32 314, i32 1}
!4 = !{ptr @event_enter__msgget, !3, !"event_enter__msgget", i1 false, i1 false}
!5 = !{ptr @__event_enter__msgget, !3, !"__event_enter__msgget", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @event_exit__msgget, !3, !"event_exit__msgget", i1 false, i1 false}
!8 = !{ptr @__event_exit__msgget, !3, !"__event_exit__msgget", i1 false, i1 false}
!9 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__syscall_meta__msgget, !3, !"__syscall_meta__msgget", i1 false, i1 false}
!11 = !{ptr @__p_syscall_meta__msgget, !3, !"__p_syscall_meta__msgget", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../ipc/msg.c", i32 634, i32 1}
!14 = !{ptr @event_enter__msgctl, !13, !"event_enter__msgctl", i1 false, i1 false}
!15 = !{ptr @__event_enter__msgctl, !13, !"__event_enter__msgctl", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @event_exit__msgctl, !13, !"event_exit__msgctl", i1 false, i1 false}
!18 = !{ptr @__event_exit__msgctl, !13, !"__event_exit__msgctl", i1 false, i1 false}
!19 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__syscall_meta__msgctl, !13, !"__syscall_meta__msgctl", i1 false, i1 false}
!21 = !{ptr @__p_syscall_meta__msgctl, !13, !"__p_syscall_meta__msgctl", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../ipc/msg.c", i32 647, i32 1}
!24 = !{ptr @event_enter__old_msgctl, !23, !"event_enter__old_msgctl", i1 false, i1 false}
!25 = !{ptr @__event_enter__old_msgctl, !23, !"__event_enter__old_msgctl", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @event_exit__old_msgctl, !23, !"event_exit__old_msgctl", i1 false, i1 false}
!28 = !{ptr @__event_exit__old_msgctl, !23, !"__event_exit__old_msgctl", i1 false, i1 false}
!29 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__syscall_meta__old_msgctl, !23, !"__syscall_meta__old_msgctl", i1 false, i1 false}
!31 = !{ptr @__p_syscall_meta__old_msgctl, !23, !"__p_syscall_meta__old_msgctl", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../ipc/msg.c", i32 960, i32 6}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../ipc/msg.c", i32 965, i32 1}
!36 = !{ptr @event_enter__msgsnd, !35, !"event_enter__msgsnd", i1 false, i1 false}
!37 = !{ptr @__event_enter__msgsnd, !35, !"__event_enter__msgsnd", i1 false, i1 false}
!38 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @event_exit__msgsnd, !35, !"event_exit__msgsnd", i1 false, i1 false}
!40 = !{ptr @__event_exit__msgsnd, !35, !"__event_exit__msgsnd", i1 false, i1 false}
!41 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__syscall_meta__msgsnd, !35, !"__syscall_meta__msgsnd", i1 false, i1 false}
!43 = !{ptr @__p_syscall_meta__msgsnd, !35, !"__p_syscall_meta__msgsnd", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../ipc/msg.c", i32 1264, i32 1}
!46 = !{ptr @event_enter__msgrcv, !45, !"event_enter__msgrcv", i1 false, i1 false}
!47 = !{ptr @__event_enter__msgrcv, !45, !"__event_enter__msgrcv", i1 false, i1 false}
!48 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @event_exit__msgrcv, !45, !"event_exit__msgrcv", i1 false, i1 false}
!50 = !{ptr @__event_exit__msgrcv, !45, !"__event_exit__msgrcv", i1 false, i1 false}
!51 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @__syscall_meta__msgrcv, !45, !"__syscall_meta__msgrcv", i1 false, i1 false}
!53 = !{ptr @__p_syscall_meta__msgrcv, !45, !"__p_syscall_meta__msgrcv", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../ipc/msg.c", i32 1353, i32 26}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../ipc/msg.c", i32 1354, i32 5}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!60 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.20, !3, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.21, !3, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @types__msgget, !3, !"types__msgget", i1 false, i1 false}
!65 = !{ptr @.str.22, !3, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.23, !3, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @args__msgget, !3, !"args__msgget", i1 false, i1 false}
!68 = !{ptr @.str.24, !13, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @types__msgctl, !13, !"types__msgctl", i1 false, i1 false}
!70 = !{ptr @.str.25, !13, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.26, !13, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.27, !13, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @args__msgctl, !13, !"args__msgctl", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!76 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!83 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @types__old_msgctl, !23, !"types__old_msgctl", i1 false, i1 false}
!85 = !{ptr @args__old_msgctl, !23, !"args__old_msgctl", i1 false, i1 false}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../ipc/msg.c", i32 201, i32 2}
!88 = !{ptr @.str.32, !35, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.33, !35, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @types__msgsnd, !35, !"types__msgsnd", i1 false, i1 false}
!91 = !{ptr @.str.34, !35, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.35, !35, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @args__msgsnd, !35, !"args__msgsnd", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../ipc/msg.c", i32 1188, i32 3}
!96 = !{ptr @.str.36, !45, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @types__msgrcv, !45, !"types__msgrcv", i1 false, i1 false}
!98 = !{ptr @.str.37, !45, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @args__msgrcv, !45, !"args__msgrcv", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../ipc/msg.c", i32 1329, i32 6}
!102 = !{!"sp"}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"auto-init"}
!113 = !{!"branch_weights", i32 1, i32 2000}
!114 = !{i64 2149420241}
!115 = !{i64 2152762120, i64 2152762145}
!116 = !{i64 2149419975}
!117 = !{i8 0, i8 2}
!118 = !{i64 2152761439, i64 2152761464}
!119 = !{!"branch_weights", i32 2000, i32 1}
!120 = !{i64 5256994}
!121 = !{i64 5257191}
!122 = !{i64 2152742424}
!123 = !{i64 2155343908, i64 2155344188, i64 2155344522, i64 2155344856}
!124 = !{i64 2148552176, i64 2148552208, i64 2148552237, i64 2148552271, i64 2148552302, i64 2148552325}
!125 = !{i64 2155328639}
!126 = !{i64 2155332813}
!127 = !{i64 2148550646, i64 2148550672, i64 2148550701, i64 2148550735, i64 2148550766, i64 2148550789}
!128 = !{i64 2148553111, i64 2148553137, i64 2148553166, i64 2148553200, i64 2148553231, i64 2148553254}
!129 = !{i64 2155387943}
!130 = !{i64 2155369652, i64 2155369932, i64 2155370266, i64 2155370600}
!131 = !{i64 2155270542}
