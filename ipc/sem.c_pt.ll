; ModuleID = '/llk/IR_all_yes/ipc/sem.c_pt.bc'
source_filename = "../ipc/sem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, i32, %struct.rhashtable }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.ipc_ops = type { ptr, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.74, %struct.trace_event, ptr, ptr, %union.anon.76, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.74 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wake_q_head = type { ptr, ptr }
%struct.sem_array = type { %struct.kern_ipc_perm, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, [84 x i8], [0 x %struct.sem] }
%struct.kern_ipc_perm = type { %struct.spinlock, i8, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i32, ptr, %struct.rhash_head, %struct.callback_head, %struct.refcount_struct, [28 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rhash_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.sem = type { i32, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, i64, [48 x i8] }
%struct.sem_undo_list = type { %struct.refcount_struct, %struct.spinlock, %struct.list_head }
%struct.sem_queue = type { %struct.list_head, ptr, ptr, ptr, i32, ptr, ptr, i32, i8, i8 }
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
%struct.ipc_params = type { i32, i32, %union.anon.102 }
%union.anon.102 = type { i32 }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.semid_ds = type { %struct.ipc_perm, i32, i32, ptr, ptr, ptr, ptr, i16 }
%struct.ipc_perm = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.seminfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.semid64_ds = type { %struct.ipc64_perm, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipc64_perm = type { i32, i32, i32, i32, i32, i16, [2 x i8], i16, i16, i32, i32 }
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
%struct.timespec64 = type { i64, i32 }
%struct.sembuf = type { i16, i16, i16 }
%struct.sem_undo = type { %struct.list_head, %struct.callback_head, ptr, %struct.list_head, i32, ptr }

@init_ipc_ns = external dso_local global %struct.ipc_namespace, align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sysvipc/sem\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"       key      semid perms      nsems   uid   gid  cuid  cgid      otime      ctime\0A\00", [42 x i8] zeroinitializer }, align 32
@ksys_semget.sem_ops = internal constant { %struct.ipc_ops, [20 x i8] } { %struct.ipc_ops { ptr @newary, ptr @security_sem_associate, ptr @sem_more_checks }, [20 x i8] zeroinitializer }, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_semget\00", [47 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__semget = internal global %struct.syscall_metadata { ptr @.str.4, i32 -1, i32 3, ptr @types__semget, ptr @args__semget, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__semget, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__semget, i64 20) }, ptr @event_enter__semget, ptr @event_exit__semget }, align 4
@event_enter__semget = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str.2 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__semget, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__semget = internal global ptr @event_enter__semget, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_semget\00", [16 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__semget = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__semget, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__semget = internal global ptr @event_exit__semget, section "_ftrace_events", align 4
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_semget\00", [21 x i8] zeroinitializer }, align 32
@types__semget = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.23], [20 x i8] zeroinitializer }, align 32
@args__semget = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__semget = internal global ptr @__syscall_meta__semget, section "__syscalls_metadata", align 4
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_semctl\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__semctl = internal global %struct.syscall_metadata { ptr @.str.7, i32 -1, i32 4, ptr @types__semctl, ptr @args__semctl, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__semctl, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__semctl, i64 20) }, ptr @event_enter__semctl, ptr @event_exit__semctl }, align 4
@event_enter__semctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str.5 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__semctl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__semctl = internal global ptr @event_enter__semctl, section "_ftrace_events", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_semctl\00", [16 x i8] zeroinitializer }, align 32
@event_exit__semctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__semctl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__semctl = internal global ptr @event_exit__semctl, section "_ftrace_events", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_semctl\00", [21 x i8] zeroinitializer }, align 32
@types__semctl = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.23, ptr @.str.23, ptr @.str.23, ptr @.str.27], [16 x i8] zeroinitializer }, align 32
@args__semctl = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__semctl = internal global ptr @__syscall_meta__semctl, section "__syscalls_metadata", align 4
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_old_semctl\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__old_semctl = internal global %struct.syscall_metadata { ptr @.str.10, i32 -1, i32 4, ptr @types__old_semctl, ptr @args__old_semctl, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__old_semctl, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__old_semctl, i64 20) }, ptr @event_enter__old_semctl, ptr @event_exit__old_semctl }, align 4
@event_enter__old_semctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str.8 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__old_semctl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__old_semctl = internal global ptr @event_enter__old_semctl, section "_ftrace_events", align 4
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_old_semctl\00", [44 x i8] zeroinitializer }, align 32
@event_exit__old_semctl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__old_semctl, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__old_semctl = internal global ptr @event_exit__old_semctl, section "_ftrace_events", align 4
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_old_semctl\00", [17 x i8] zeroinitializer }, align 32
@types__old_semctl = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.23, ptr @.str.23, ptr @.str.23, ptr @.str.27], [16 x i8] zeroinitializer }, align 32
@args__old_semctl = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__old_semctl = internal global ptr @__syscall_meta__old_semctl, section "__syscalls_metadata", align 4
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipc/sem.c\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_semtimedop\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__semtimedop = internal global %struct.syscall_metadata { ptr @.str.14, i32 -1, i32 4, ptr @types__semtimedop, ptr @args__semtimedop, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__semtimedop, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__semtimedop, i64 20) }, ptr @event_enter__semtimedop, ptr @event_exit__semtimedop }, align 4
@event_enter__semtimedop = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__semtimedop, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__semtimedop = internal global ptr @event_enter__semtimedop, section "_ftrace_events", align 4
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_semtimedop\00", [44 x i8] zeroinitializer }, align 32
@event_exit__semtimedop = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__semtimedop, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__semtimedop = internal global ptr @event_exit__semtimedop, section "_ftrace_events", align 4
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_semtimedop\00", [17 x i8] zeroinitializer }, align 32
@types__semtimedop = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.23, ptr @.str.40, ptr @.str.41, ptr @.str.42], [16 x i8] zeroinitializer }, align 32
@args__semtimedop = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.28, ptr @.str.43, ptr @.str.44, ptr @.str.45], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__semtimedop = internal global ptr @__syscall_meta__semtimedop, section "__syscalls_metadata", align 4
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sys_enter_semtimedop_time32\00", [36 x i8] zeroinitializer }, align 32
@__syscall_meta__semtimedop_time32 = internal global %struct.syscall_metadata { ptr @.str.17, i32 -1, i32 4, ptr @types__semtimedop_time32, ptr @args__semtimedop_time32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__semtimedop_time32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__semtimedop_time32, i64 20) }, ptr @event_enter__semtimedop_time32, ptr @event_exit__semtimedop_time32 }, align 4
@event_enter__semtimedop_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__semtimedop_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__semtimedop_time32 = internal global ptr @event_enter__semtimedop_time32, section "_ftrace_events", align 4
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_exit_semtimedop_time32\00", [37 x i8] zeroinitializer }, align 32
@event_exit__semtimedop_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.16 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__semtimedop_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__semtimedop_time32 = internal global ptr @event_exit__semtimedop_time32, section "_ftrace_events", align 4
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_semtimedop_time32\00", [42 x i8] zeroinitializer }, align 32
@types__semtimedop_time32 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.23, ptr @.str.40, ptr @.str.41, ptr @.str.46], [16 x i8] zeroinitializer }, align 32
@args__semtimedop_time32 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.28, ptr @.str.47, ptr @.str.44, ptr @.str.45], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__semtimedop_time32 = internal global ptr @__syscall_meta__semtimedop_time32, section "__syscalls_metadata", align 4
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_semop\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__semop = internal global %struct.syscall_metadata { ptr @.str.20, i32 -1, i32 3, ptr @types__semop, ptr @args__semop, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__semop, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__semop, i64 20) }, ptr @event_enter__semop, ptr @event_exit__semop }, align 4
@event_enter__semop = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.74 { ptr @.str.18 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__semop, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__semop = internal global ptr @event_enter__semop, section "_ftrace_events", align 4
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_semop\00", [17 x i8] zeroinitializer }, align 32
@event_exit__semop = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.74 { ptr @.str.19 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.76 zeroinitializer, ptr @__syscall_meta__semop, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__semop = internal global ptr @event_exit__semop, section "_ftrace_events", align 4
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_semop\00", [22 x i8] zeroinitializer }, align 32
@types__semop = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.23, ptr @.str.40, ptr @.str.48], [20 x i8] zeroinitializer }, align 32
@args__semop = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.28, ptr @.str.43, ptr @.str.44], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__semop = internal global ptr @__syscall_meta__semop, section "__syscalls_metadata", align 4
@newary.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&sma->sems[i].lock\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"key_t\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"key\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nsems\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"semflg\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"semid\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"semnum\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arg\00", [28 x i8] zeroinitializer }, align 32
@ipc_mni = external dso_local local_unnamed_addr global i32, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@check_qop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@check_qop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.11, i32 1087, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [144 x i8], [48 x i8] } { [144 x i8] c"\016semctl(GETNCNT/GETZCNT) is since 3.16 Single Unix Specification compliant.\0AThe task %s (%d) triggered the difference, watch for misbehavior.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"check_qop\00", [22 x i8] zeroinitializer }, align 32
@check_qop._entry_ptr = internal global ptr @check_qop._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"struct sembuf *\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"const struct __kernel_timespec *\00", [63 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tsops\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nsops\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"const struct old_timespec32 *\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tsems\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unsigned\00", [23 x i8] zeroinitializer }, align 32
@get_undo_list.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&undo_list->lock\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__lookup_undo.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%10d %10d  %4o %10u %5u %5u %5u %5u %10llu %10llu\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 20]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 17]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 11, i64 12, i64 14, i64 15]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 271, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 272, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant [8 x i8] c"sem_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 605, i32 30 }
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c"event_enter__semget\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"event_exit__semget\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"types__semget\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [13 x i8] c"args__semget\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c"event_enter__semctl\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c"event_exit__semctl\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"types__semctl\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [13 x i8] c"args__semctl\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [24 x i8] c"event_enter__old_semctl\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [23 x i8] c"event_exit__old_semctl\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [18 x i8] c"types__old_semctl\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"args__old_semctl\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1720, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2165, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [24 x i8] c"event_enter__semtimedop\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [23 x i8] c"event_exit__semtimedop\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"types__semtimedop\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"args__semtimedop\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [31 x i8] c"event_enter__semtimedop_time32\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [30 x i8] c"event_exit__semtimedop_time32\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [25 x i8] c"types__semtimedop_time32\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [24 x i8] c"args__semtimedop_time32\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [19 x i8] c"event_enter__semop\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [18 x i8] c"event_exit__semop\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [13 x i8] c"types__semop\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [12 x i8] c"args__semop\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 562, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 624, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1707, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 230, i32 6 }
@___asan_gen_.236 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 214, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 174, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1085, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 695, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 723, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2272, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2292, i32 1 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2300, i32 1 }
@___asan_gen_.286 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1861, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1875, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.296 = private constant [13 x i8] c"../ipc/sem.c\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 2472, i32 6 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__event_enter__old_semctl, ptr @__event_enter__semctl, ptr @__event_enter__semget, ptr @__event_enter__semop, ptr @__event_enter__semtimedop, ptr @__event_enter__semtimedop_time32, ptr @__event_exit__old_semctl, ptr @__event_exit__semctl, ptr @__event_exit__semget, ptr @__event_exit__semop, ptr @__event_exit__semtimedop, ptr @__event_exit__semtimedop_time32, ptr @__p_syscall_meta__old_semctl, ptr @__p_syscall_meta__semctl, ptr @__p_syscall_meta__semget, ptr @__p_syscall_meta__semop, ptr @__p_syscall_meta__semtimedop, ptr @__p_syscall_meta__semtimedop_time32, ptr @__syscall_meta__old_semctl, ptr @__syscall_meta__semctl, ptr @__syscall_meta__semget, ptr @__syscall_meta__semop, ptr @__syscall_meta__semtimedop, ptr @__syscall_meta__semtimedop_time32, ptr @check_qop._entry, ptr @check_qop._entry_ptr, ptr @event_enter__old_semctl, ptr @event_enter__semctl, ptr @event_enter__semget, ptr @event_enter__semop, ptr @event_enter__semtimedop, ptr @event_enter__semtimedop_time32, ptr @event_exit__old_semctl, ptr @event_exit__semctl, ptr @event_exit__semget, ptr @event_exit__semop, ptr @event_exit__semtimedop, ptr @event_exit__semtimedop_time32, ptr @.str, ptr @.str.1, ptr @ksys_semget.sem_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @types__semget, ptr @args__semget, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @types__semctl, ptr @args__semctl, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @types__old_semctl, ptr @args__old_semctl, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @types__semtimedop, ptr @args__semtimedop, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @types__semtimedop_time32, ptr @args__semtimedop_time32, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @types__semop, ptr @args__semop, ptr @newary.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @get_undo_list.__key, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksys_semget.sem_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__semget to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__semget to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__semget to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__semget to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__semctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__semctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__semctl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__semctl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__old_semctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__old_semctl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__old_semctl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__old_semctl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__semtimedop to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__semtimedop to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__semtimedop to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__semtimedop to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__semtimedop_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__semtimedop_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__semtimedop_time32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__semtimedop_time32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__semop to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__semop to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__semop to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__semop to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @newary.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_qop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_undo_list.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_semget = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_semget
@sys_semctl = dso_local alias i32 (i32, i32, i32, i32), ptr @__se_sys_semctl
@sys_old_semctl = dso_local alias i32 (i32, i32, i32, i32), ptr @__se_sys_old_semctl
@sys_semtimedop = dso_local alias i32 (i32, ptr, i32, ptr), ptr @__se_sys_semtimedop
@sys_semtimedop_time32 = dso_local alias i32 (i32, ptr, i32, ptr), ptr @__se_sys_semtimedop_time32
@sys_semop = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_semop

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sem_init_ns(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sem_ctls = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 1
  %0 = ptrtoint ptr %sem_ctls to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32000, ptr %sem_ctls, align 4
  %arrayidx2 = getelementptr %struct.ipc_namespace, ptr %ns, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1024000000, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.ipc_namespace, ptr %ns, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 500, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.ipc_namespace, ptr %ns, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32000, ptr %arrayidx6, align 4
  %used_sems = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 2
  %4 = ptrtoint ptr %used_sems to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %used_sems, align 4
  tail call void @ipc_init_ids(ptr noundef %ns) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_init_ids(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sem_exit_ns(ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @free_ipcs(ptr noundef %ns, ptr noundef %ns, ptr noundef nonnull @freeary) #13
  %ipcs_idr = getelementptr inbounds %struct.ipc_ids, ptr %ns, i32 0, i32 3
  tail call void @idr_destroy(ptr noundef %ipcs_idr) #13
  %key_ht = getelementptr inbounds %struct.ipc_ids, ptr %ns, i32 0, i32 7
  tail call void @rhashtable_destroy(ptr noundef %key_ht) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_ipcs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @freeary(ptr noundef %ns, ptr noundef %ipcp) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %wake_q = alloca %struct.wake_q_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q) #13
  %0 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1
  %1 = ptrtoint ptr %wake_q to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %wake_q, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %3 = ptrtoint ptr %ipcp to i32
  call void @__asan_load4_noabort(i32 %3)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %ipcp, align 4
  %4 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %ipc_assert_locked_object.exit, !prof !141

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22ipc/util.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #13, !srcloc !142
  unreachable

ipc_assert_locked_object.exit:                    ; preds = %entry
  %list_id = getelementptr inbounds %struct.sem_array, ptr %ipcp, i32 0, i32 4
  %5 = ptrtoint ptr %list_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list_id, align 8
  %cmp.not258 = icmp eq ptr %6, %list_id
  br i1 %cmp.not258, label %ipc_assert_locked_object.exit.for.end_crit_edge, label %ipc_assert_locked_object.exit.for.body_crit_edge

ipc_assert_locked_object.exit.for.body_crit_edge: ; preds = %ipc_assert_locked_object.exit
  br label %for.body

ipc_assert_locked_object.exit.for.end_crit_edge:  ; preds = %ipc_assert_locked_object.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %ipc_assert_locked_object.exit.for.body_crit_edge
  %.pn.in259 = phi ptr [ %.pn261, %if.end.for.body_crit_edge ], [ %6, %ipc_assert_locked_object.exit.for.body_crit_edge ]
  %7 = ptrtoint ptr %.pn.in259 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn261 = load ptr, ptr %.pn.in259, align 4
  %un.0 = getelementptr i8, ptr %.pn.in259, i32 -20
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in259) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in259, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %.pn.in259 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn.in259, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %14 = ptrtoint ptr %.pn.in259 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in259, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in259, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %ulp = getelementptr i8, ptr %.pn.in259, i32 -4
  %16 = ptrtoint ptr %ulp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ulp, align 4
  %lock = getelementptr inbounds %struct.sem_undo_list, ptr %17, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %lock) #13
  %semid = getelementptr i8, ptr %.pn.in259, i32 8
  %18 = ptrtoint ptr %semid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %semid, align 4
  %call.i.i174 = call zeroext i1 @__list_del_entry_valid(ptr noundef %un.0) #13
  br i1 %call.i.i174, label %if.end.i.i177, label %list_del.exit.list_del_rcu.exit_crit_edge

list_del.exit.list_del_rcu.exit_crit_edge:        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_rcu.exit

if.end.i.i177:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i175 = getelementptr i8, ptr %.pn.in259, i32 -16
  %19 = ptrtoint ptr %prev.i.i175 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i175, align 4
  %21 = ptrtoint ptr %un.0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %un.0, align 4
  %prev1.i.i.i176 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i176 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i176, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i177, %list_del.exit.list_del_rcu.exit_crit_edge
  %prev.i178 = getelementptr i8, ptr %.pn.in259, i32 -16
  %25 = ptrtoint ptr %prev.i178 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i178, align 4
  %26 = ptrtoint ptr %ulp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ulp, align 4
  %lock14 = getelementptr inbounds %struct.sem_undo_list, ptr %27, i32 0, i32 1
  call void @_raw_spin_unlock(ptr noundef %lock14) #13
  %tobool.not = icmp eq ptr %un.0, null
  br i1 %tobool.not, label %list_del_rcu.exit.if.end_crit_edge, label %do.end

list_del_rcu.exit.if.end_crit_edge:               ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #15
  %rcu = getelementptr i8, ptr %.pn.in259, i32 -12
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 8 to ptr)) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %list_del_rcu.exit.if.end_crit_edge
  %cmp.not = icmp eq ptr %.pn261, %list_id
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %ipc_assert_locked_object.exit.for.end_crit_edge
  %pending_const = getelementptr inbounds %struct.sem_array, ptr %ipcp, i32 0, i32 3
  %28 = ptrtoint ptr %pending_const to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pending_const, align 16
  %cmp34.not262 = icmp eq ptr %29, %pending_const
  br i1 %cmp34.not262, label %for.end.for.end43_crit_edge, label %for.body36.lr.ph

for.end.for.end43_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end43

for.body36.lr.ph:                                 ; preds = %for.end
  %complex_count.i = getelementptr inbounds %struct.sem_array, ptr %ipcp, i32 0, i32 6
  br label %for.body36

for.body36:                                       ; preds = %wake_up_sem_queue_prepare.exit.for.body36_crit_edge, %for.body36.lr.ph
  %q.0263 = phi ptr [ %29, %for.body36.lr.ph ], [ %tq.0, %wake_up_sem_queue_prepare.exit.for.body36_crit_edge ]
  %30 = ptrtoint ptr %q.0263 to i32
  call void @__asan_load4_noabort(i32 %30)
  %tq.0 = load ptr, ptr %q.0263, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %q.0263) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body36.list_del.exit.i_crit_edge

for.body36.list_del.exit.i_crit_edge:             ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %q.0263, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %q.0263 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %q.0263, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body36.list_del.exit.i_crit_edge
  %37 = ptrtoint ptr %q.0263 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %q.0263, align 4
  %prev.i.i179 = getelementptr inbounds %struct.list_head, ptr %q.0263, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i179 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i179, align 4
  %nsops.i = getelementptr inbounds %struct.sem_queue, ptr %q.0263, i32 0, i32 7
  %39 = ptrtoint ptr %nsops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nsops.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i = icmp sgt i32 %40, 1
  br i1 %cmp.i, label %if.then.i, label %list_del.exit.i.unlink_queue.exit_crit_edge

list_del.exit.i.unlink_queue.exit_crit_edge:      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlink_queue.exit

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %complex_count.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %complex_count.i, align 4
  %dec.i = add i32 %42, -1
  store i32 %dec.i, ptr %complex_count.i, align 4
  br label %unlink_queue.exit

unlink_queue.exit:                                ; preds = %if.then.i, %list_del.exit.i.unlink_queue.exit_crit_edge
  %sleeper1.i = getelementptr inbounds %struct.sem_queue, ptr %q.0263, i32 0, i32 1
  %43 = ptrtoint ptr %sleeper1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sleeper1.i, align 4
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #13
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #13, !srcloc !143
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %unlink_queue.exit.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !141

unlink_queue.exit.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %unlink_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %unlink_queue.exit
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %46 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %.not.i.i.i.i.i = icmp sgt i32 %46, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.wake_up_sem_queue_prepare.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.wake_up_sem_queue_prepare.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wake_up_sem_queue_prepare.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %unlink_queue.exit.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %unlink_queue.exit.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef %.sink.i.i.i.i.i) #13
  br label %wake_up_sem_queue_prepare.exit

wake_up_sem_queue_prepare.exit:                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.wake_up_sem_queue_prepare.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !145
  %status.i = getelementptr inbounds %struct.sem_queue, ptr %q.0263, i32 0, i32 4
  %47 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 -43, ptr %status.i, align 4
  call void @wake_q_add_safe(ptr noundef nonnull %wake_q, ptr noundef %44) #13
  %cmp34.not = icmp eq ptr %tq.0, %pending_const
  br i1 %cmp34.not, label %wake_up_sem_queue_prepare.exit.for.end43_crit_edge, label %wake_up_sem_queue_prepare.exit.for.body36_crit_edge

wake_up_sem_queue_prepare.exit.for.body36_crit_edge: ; preds = %wake_up_sem_queue_prepare.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body36

wake_up_sem_queue_prepare.exit.for.end43_crit_edge: ; preds = %wake_up_sem_queue_prepare.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end43

for.end43:                                        ; preds = %wake_up_sem_queue_prepare.exit.for.end43_crit_edge, %for.end.for.end43_crit_edge
  %pending_alter = getelementptr inbounds %struct.sem_array, ptr %ipcp, i32 0, i32 2
  %48 = ptrtoint ptr %pending_alter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pending_alter, align 8
  %cmp56.not264 = icmp eq ptr %49, %pending_alter
  br i1 %cmp56.not264, label %for.end43.for.cond66.preheader_crit_edge, label %for.body58.lr.ph

for.end43.for.cond66.preheader_crit_edge:         ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond66.preheader

for.body58.lr.ph:                                 ; preds = %for.end43
  %complex_count.i188 = getelementptr inbounds %struct.sem_array, ptr %ipcp, i32 0, i32 6
  br label %for.body58

for.cond66.preheader:                             ; preds = %wake_up_sem_queue_prepare.exit203.for.cond66.preheader_crit_edge, %for.end43.for.cond66.preheader_crit_edge
  %sem_nsems = getelementptr inbounds %struct.sem_array, ptr %ipcp, i32 0, i32 5
  %50 = ptrtoint ptr %sem_nsems to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sem_nsems, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp67270 = icmp sgt i32 %51, 0
  br i1 %cmp67270, label %for.body68.lr.ph, label %for.cond66.preheader.for.end116_crit_edge

for.cond66.preheader.for.end116_crit_edge:        ; preds = %for.cond66.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end116

for.body68.lr.ph:                                 ; preds = %for.cond66.preheader
  %complex_count.i212 = getelementptr inbounds %struct.sem_array, ptr %ipcp, i32 0, i32 6
  br label %for.body68

for.body58:                                       ; preds = %wake_up_sem_queue_prepare.exit203.for.body58_crit_edge, %for.body58.lr.ph
  %q.1265 = phi ptr [ %49, %for.body58.lr.ph ], [ %tq.1, %wake_up_sem_queue_prepare.exit203.for.body58_crit_edge ]
  %52 = ptrtoint ptr %q.1265 to i32
  call void @__asan_load4_noabort(i32 %52)
  %tq.1 = load ptr, ptr %q.1265, align 4
  %call.i.i.i180 = call zeroext i1 @__list_del_entry_valid(ptr noundef %q.1265) #13
  br i1 %call.i.i.i180, label %if.end.i.i.i183, label %for.body58.list_del.exit.i187_crit_edge

for.body58.list_del.exit.i187_crit_edge:          ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i187

if.end.i.i.i183:                                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i181 = getelementptr inbounds %struct.list_head, ptr %q.1265, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i.i181 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i.i181, align 4
  %55 = ptrtoint ptr %q.1265 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %q.1265, align 4
  %prev1.i.i.i.i182 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i.i182 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i.i182, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %list_del.exit.i187

list_del.exit.i187:                               ; preds = %if.end.i.i.i183, %for.body58.list_del.exit.i187_crit_edge
  %59 = ptrtoint ptr %q.1265 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 256 to ptr), ptr %q.1265, align 4
  %prev.i.i184 = getelementptr inbounds %struct.list_head, ptr %q.1265, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i184 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i184, align 4
  %nsops.i185 = getelementptr inbounds %struct.sem_queue, ptr %q.1265, i32 0, i32 7
  %61 = ptrtoint ptr %nsops.i185 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nsops.i185, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.i186 = icmp sgt i32 %62, 1
  br i1 %cmp.i186, label %if.then.i190, label %list_del.exit.i187.unlink_queue.exit191_crit_edge

list_del.exit.i187.unlink_queue.exit191_crit_edge: ; preds = %list_del.exit.i187
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlink_queue.exit191

if.then.i190:                                     ; preds = %list_del.exit.i187
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %complex_count.i188 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %complex_count.i188, align 4
  %dec.i189 = add i32 %64, -1
  store i32 %dec.i189, ptr %complex_count.i188, align 4
  br label %unlink_queue.exit191

unlink_queue.exit191:                             ; preds = %if.then.i190, %list_del.exit.i187.unlink_queue.exit191_crit_edge
  %sleeper1.i192 = getelementptr inbounds %struct.sem_queue, ptr %q.1265, i32 0, i32 1
  %65 = ptrtoint ptr %sleeper1.i192 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sleeper1.i192, align 4
  %usage.i.i193 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 2
  %call.i.i.i.i.i.i.i194 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i193, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usage.i.i193, i32 1, i32 3, i32 1) #13
  %67 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i193, ptr %usage.i.i193, i32 1, ptr elementtype(i32) %usage.i.i193) #13, !srcloc !143
  %asmresult.i.i.i.i.i.i.i195 = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i195)
  %tobool1.not.i.i.i.i.i196 = icmp eq i32 %asmresult.i.i.i.i.i.i.i195, 0
  br i1 %tobool1.not.i.i.i.i.i196, label %unlink_queue.exit191.if.end15.sink.split.i.i.i.i.i201_crit_edge, label %if.else.i.i.i.i.i199, !prof !141

unlink_queue.exit191.if.end15.sink.split.i.i.i.i.i201_crit_edge: ; preds = %unlink_queue.exit191
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i201

if.else.i.i.i.i.i199:                             ; preds = %unlink_queue.exit191
  %add.i.i.i.i.i197 = add i32 %asmresult.i.i.i.i.i.i.i195, 1
  %68 = or i32 %add.i.i.i.i.i197, %asmresult.i.i.i.i.i.i.i195
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %.not.i.i.i.i.i198 = icmp sgt i32 %68, -1
  br i1 %.not.i.i.i.i.i198, label %if.else.i.i.i.i.i199.wake_up_sem_queue_prepare.exit203_crit_edge, label %if.else.i.i.i.i.i199.if.end15.sink.split.i.i.i.i.i201_crit_edge, !prof !144

if.else.i.i.i.i.i199.if.end15.sink.split.i.i.i.i.i201_crit_edge: ; preds = %if.else.i.i.i.i.i199
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i201

if.else.i.i.i.i.i199.wake_up_sem_queue_prepare.exit203_crit_edge: ; preds = %if.else.i.i.i.i.i199
  call void @__sanitizer_cov_trace_pc() #15
  br label %wake_up_sem_queue_prepare.exit203

if.end15.sink.split.i.i.i.i.i201:                 ; preds = %if.else.i.i.i.i.i199.if.end15.sink.split.i.i.i.i.i201_crit_edge, %unlink_queue.exit191.if.end15.sink.split.i.i.i.i.i201_crit_edge
  %.sink.i.i.i.i.i200 = phi i32 [ 2, %unlink_queue.exit191.if.end15.sink.split.i.i.i.i.i201_crit_edge ], [ 1, %if.else.i.i.i.i.i199.if.end15.sink.split.i.i.i.i.i201_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i.i193, i32 noundef %.sink.i.i.i.i.i200) #13
  br label %wake_up_sem_queue_prepare.exit203

wake_up_sem_queue_prepare.exit203:                ; preds = %if.end15.sink.split.i.i.i.i.i201, %if.else.i.i.i.i.i199.wake_up_sem_queue_prepare.exit203_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !145
  %status.i202 = getelementptr inbounds %struct.sem_queue, ptr %q.1265, i32 0, i32 4
  %69 = ptrtoint ptr %status.i202 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 -43, ptr %status.i202, align 4
  call void @wake_q_add_safe(ptr noundef nonnull %wake_q, ptr noundef %66) #13
  %cmp56.not = icmp eq ptr %tq.1, %pending_alter
  br i1 %cmp56.not, label %wake_up_sem_queue_prepare.exit203.for.cond66.preheader_crit_edge, label %wake_up_sem_queue_prepare.exit203.for.body58_crit_edge

wake_up_sem_queue_prepare.exit203.for.body58_crit_edge: ; preds = %wake_up_sem_queue_prepare.exit203
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body58

wake_up_sem_queue_prepare.exit203.for.cond66.preheader_crit_edge: ; preds = %wake_up_sem_queue_prepare.exit203
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond66.preheader

for.body68:                                       ; preds = %ipc_update_pid.exit.for.body68_crit_edge, %for.body68.lr.ph
  %i.0271 = phi i32 [ 0, %for.body68.lr.ph ], [ %inc, %ipc_update_pid.exit.for.body68_crit_edge ]
  %pending_const70 = getelementptr %struct.sem_array, ptr %ipcp, i32 0, i32 9, i32 %i.0271, i32 4
  %70 = ptrtoint ptr %pending_const70 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pending_const70, align 4
  %cmp82.not266 = icmp eq ptr %71, %pending_const70
  br i1 %cmp82.not266, label %for.body68.for.end91_crit_edge, label %for.body68.for.body84_crit_edge

for.body68.for.body84_crit_edge:                  ; preds = %for.body68
  br label %for.body84

for.body68.for.end91_crit_edge:                   ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end91

for.body84:                                       ; preds = %wake_up_sem_queue_prepare.exit227.for.body84_crit_edge, %for.body68.for.body84_crit_edge
  %q.2267 = phi ptr [ %tq.2, %wake_up_sem_queue_prepare.exit227.for.body84_crit_edge ], [ %71, %for.body68.for.body84_crit_edge ]
  %72 = ptrtoint ptr %q.2267 to i32
  call void @__asan_load4_noabort(i32 %72)
  %tq.2 = load ptr, ptr %q.2267, align 4
  %call.i.i.i204 = call zeroext i1 @__list_del_entry_valid(ptr noundef %q.2267) #13
  br i1 %call.i.i.i204, label %if.end.i.i.i207, label %for.body84.list_del.exit.i211_crit_edge

for.body84.list_del.exit.i211_crit_edge:          ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i211

if.end.i.i.i207:                                  ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i205 = getelementptr inbounds %struct.list_head, ptr %q.2267, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i.i205 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i.i205, align 4
  %75 = ptrtoint ptr %q.2267 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %q.2267, align 4
  %prev1.i.i.i.i206 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i.i206 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev1.i.i.i.i206, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %74, align 4
  br label %list_del.exit.i211

list_del.exit.i211:                               ; preds = %if.end.i.i.i207, %for.body84.list_del.exit.i211_crit_edge
  %79 = ptrtoint ptr %q.2267 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 256 to ptr), ptr %q.2267, align 4
  %prev.i.i208 = getelementptr inbounds %struct.list_head, ptr %q.2267, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i.i208 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i208, align 4
  %nsops.i209 = getelementptr inbounds %struct.sem_queue, ptr %q.2267, i32 0, i32 7
  %81 = ptrtoint ptr %nsops.i209 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nsops.i209, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp.i210 = icmp sgt i32 %82, 1
  br i1 %cmp.i210, label %if.then.i214, label %list_del.exit.i211.unlink_queue.exit215_crit_edge

list_del.exit.i211.unlink_queue.exit215_crit_edge: ; preds = %list_del.exit.i211
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlink_queue.exit215

if.then.i214:                                     ; preds = %list_del.exit.i211
  call void @__sanitizer_cov_trace_pc() #15
  %83 = ptrtoint ptr %complex_count.i212 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %complex_count.i212, align 4
  %dec.i213 = add i32 %84, -1
  store i32 %dec.i213, ptr %complex_count.i212, align 4
  br label %unlink_queue.exit215

unlink_queue.exit215:                             ; preds = %if.then.i214, %list_del.exit.i211.unlink_queue.exit215_crit_edge
  %sleeper1.i216 = getelementptr inbounds %struct.sem_queue, ptr %q.2267, i32 0, i32 1
  %85 = ptrtoint ptr %sleeper1.i216 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sleeper1.i216, align 4
  %usage.i.i217 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 2
  %call.i.i.i.i.i.i.i218 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i217, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usage.i.i217, i32 1, i32 3, i32 1) #13
  %87 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i217, ptr %usage.i.i217, i32 1, ptr elementtype(i32) %usage.i.i217) #13, !srcloc !143
  %asmresult.i.i.i.i.i.i.i219 = extractvalue { i32, i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i219)
  %tobool1.not.i.i.i.i.i220 = icmp eq i32 %asmresult.i.i.i.i.i.i.i219, 0
  br i1 %tobool1.not.i.i.i.i.i220, label %unlink_queue.exit215.if.end15.sink.split.i.i.i.i.i225_crit_edge, label %if.else.i.i.i.i.i223, !prof !141

unlink_queue.exit215.if.end15.sink.split.i.i.i.i.i225_crit_edge: ; preds = %unlink_queue.exit215
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i225

if.else.i.i.i.i.i223:                             ; preds = %unlink_queue.exit215
  %add.i.i.i.i.i221 = add i32 %asmresult.i.i.i.i.i.i.i219, 1
  %88 = or i32 %add.i.i.i.i.i221, %asmresult.i.i.i.i.i.i.i219
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %.not.i.i.i.i.i222 = icmp sgt i32 %88, -1
  br i1 %.not.i.i.i.i.i222, label %if.else.i.i.i.i.i223.wake_up_sem_queue_prepare.exit227_crit_edge, label %if.else.i.i.i.i.i223.if.end15.sink.split.i.i.i.i.i225_crit_edge, !prof !144

if.else.i.i.i.i.i223.if.end15.sink.split.i.i.i.i.i225_crit_edge: ; preds = %if.else.i.i.i.i.i223
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i225

if.else.i.i.i.i.i223.wake_up_sem_queue_prepare.exit227_crit_edge: ; preds = %if.else.i.i.i.i.i223
  call void @__sanitizer_cov_trace_pc() #15
  br label %wake_up_sem_queue_prepare.exit227

if.end15.sink.split.i.i.i.i.i225:                 ; preds = %if.else.i.i.i.i.i223.if.end15.sink.split.i.i.i.i.i225_crit_edge, %unlink_queue.exit215.if.end15.sink.split.i.i.i.i.i225_crit_edge
  %.sink.i.i.i.i.i224 = phi i32 [ 2, %unlink_queue.exit215.if.end15.sink.split.i.i.i.i.i225_crit_edge ], [ 1, %if.else.i.i.i.i.i223.if.end15.sink.split.i.i.i.i.i225_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i.i217, i32 noundef %.sink.i.i.i.i.i224) #13
  br label %wake_up_sem_queue_prepare.exit227

wake_up_sem_queue_prepare.exit227:                ; preds = %if.end15.sink.split.i.i.i.i.i225, %if.else.i.i.i.i.i223.wake_up_sem_queue_prepare.exit227_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !145
  %status.i226 = getelementptr inbounds %struct.sem_queue, ptr %q.2267, i32 0, i32 4
  %89 = ptrtoint ptr %status.i226 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 -43, ptr %status.i226, align 4
  call void @wake_q_add_safe(ptr noundef nonnull %wake_q, ptr noundef %86) #13
  %cmp82.not = icmp eq ptr %tq.2, %pending_const70
  br i1 %cmp82.not, label %wake_up_sem_queue_prepare.exit227.for.end91_crit_edge, label %wake_up_sem_queue_prepare.exit227.for.body84_crit_edge

wake_up_sem_queue_prepare.exit227.for.body84_crit_edge: ; preds = %wake_up_sem_queue_prepare.exit227
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body84

wake_up_sem_queue_prepare.exit227.for.end91_crit_edge: ; preds = %wake_up_sem_queue_prepare.exit227
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end91

for.end91:                                        ; preds = %wake_up_sem_queue_prepare.exit227.for.end91_crit_edge, %for.body68.for.end91_crit_edge
  %pending_alter93 = getelementptr %struct.sem_array, ptr %ipcp, i32 0, i32 9, i32 %i.0271, i32 3
  %90 = ptrtoint ptr %pending_alter93 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pending_alter93, align 4
  %cmp105.not268 = icmp eq ptr %91, %pending_alter93
  br i1 %cmp105.not268, label %for.end91.for.end114_crit_edge, label %for.end91.for.body107_crit_edge

for.end91.for.body107_crit_edge:                  ; preds = %for.end91
  br label %for.body107

for.end91.for.end114_crit_edge:                   ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end114

for.body107:                                      ; preds = %wake_up_sem_queue_prepare.exit251.for.body107_crit_edge, %for.end91.for.body107_crit_edge
  %q.3269 = phi ptr [ %tq.3, %wake_up_sem_queue_prepare.exit251.for.body107_crit_edge ], [ %91, %for.end91.for.body107_crit_edge ]
  %92 = ptrtoint ptr %q.3269 to i32
  call void @__asan_load4_noabort(i32 %92)
  %tq.3 = load ptr, ptr %q.3269, align 4
  %call.i.i.i228 = call zeroext i1 @__list_del_entry_valid(ptr noundef %q.3269) #13
  br i1 %call.i.i.i228, label %if.end.i.i.i231, label %for.body107.list_del.exit.i235_crit_edge

for.body107.list_del.exit.i235_crit_edge:         ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i235

if.end.i.i.i231:                                  ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i229 = getelementptr inbounds %struct.list_head, ptr %q.3269, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i.i.i229 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i.i229, align 4
  %95 = ptrtoint ptr %q.3269 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %q.3269, align 4
  %prev1.i.i.i.i230 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev1.i.i.i.i230 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev1.i.i.i.i230, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %96, ptr %94, align 4
  br label %list_del.exit.i235

list_del.exit.i235:                               ; preds = %if.end.i.i.i231, %for.body107.list_del.exit.i235_crit_edge
  %99 = ptrtoint ptr %q.3269 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr inttoptr (i32 256 to ptr), ptr %q.3269, align 4
  %prev.i.i232 = getelementptr inbounds %struct.list_head, ptr %q.3269, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i232 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i232, align 4
  %nsops.i233 = getelementptr inbounds %struct.sem_queue, ptr %q.3269, i32 0, i32 7
  %101 = ptrtoint ptr %nsops.i233 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %nsops.i233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp.i234 = icmp sgt i32 %102, 1
  br i1 %cmp.i234, label %if.then.i238, label %list_del.exit.i235.unlink_queue.exit239_crit_edge

list_del.exit.i235.unlink_queue.exit239_crit_edge: ; preds = %list_del.exit.i235
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlink_queue.exit239

if.then.i238:                                     ; preds = %list_del.exit.i235
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %complex_count.i212 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %complex_count.i212, align 4
  %dec.i237 = add i32 %104, -1
  store i32 %dec.i237, ptr %complex_count.i212, align 4
  br label %unlink_queue.exit239

unlink_queue.exit239:                             ; preds = %if.then.i238, %list_del.exit.i235.unlink_queue.exit239_crit_edge
  %sleeper1.i240 = getelementptr inbounds %struct.sem_queue, ptr %q.3269, i32 0, i32 1
  %105 = ptrtoint ptr %sleeper1.i240 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sleeper1.i240, align 4
  %usage.i.i241 = getelementptr inbounds %struct.task_struct, ptr %106, i32 0, i32 2
  %call.i.i.i.i.i.i.i242 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i241, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %usage.i.i241, i32 1, i32 3, i32 1) #13
  %107 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i241, ptr %usage.i.i241, i32 1, ptr elementtype(i32) %usage.i.i241) #13, !srcloc !143
  %asmresult.i.i.i.i.i.i.i243 = extractvalue { i32, i32, i32 } %107, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i243)
  %tobool1.not.i.i.i.i.i244 = icmp eq i32 %asmresult.i.i.i.i.i.i.i243, 0
  br i1 %tobool1.not.i.i.i.i.i244, label %unlink_queue.exit239.if.end15.sink.split.i.i.i.i.i249_crit_edge, label %if.else.i.i.i.i.i247, !prof !141

unlink_queue.exit239.if.end15.sink.split.i.i.i.i.i249_crit_edge: ; preds = %unlink_queue.exit239
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i249

if.else.i.i.i.i.i247:                             ; preds = %unlink_queue.exit239
  %add.i.i.i.i.i245 = add i32 %asmresult.i.i.i.i.i.i.i243, 1
  %108 = or i32 %add.i.i.i.i.i245, %asmresult.i.i.i.i.i.i.i243
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %108)
  %.not.i.i.i.i.i246 = icmp sgt i32 %108, -1
  br i1 %.not.i.i.i.i.i246, label %if.else.i.i.i.i.i247.wake_up_sem_queue_prepare.exit251_crit_edge, label %if.else.i.i.i.i.i247.if.end15.sink.split.i.i.i.i.i249_crit_edge, !prof !144

if.else.i.i.i.i.i247.if.end15.sink.split.i.i.i.i.i249_crit_edge: ; preds = %if.else.i.i.i.i.i247
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i249

if.else.i.i.i.i.i247.wake_up_sem_queue_prepare.exit251_crit_edge: ; preds = %if.else.i.i.i.i.i247
  call void @__sanitizer_cov_trace_pc() #15
  br label %wake_up_sem_queue_prepare.exit251

if.end15.sink.split.i.i.i.i.i249:                 ; preds = %if.else.i.i.i.i.i247.if.end15.sink.split.i.i.i.i.i249_crit_edge, %unlink_queue.exit239.if.end15.sink.split.i.i.i.i.i249_crit_edge
  %.sink.i.i.i.i.i248 = phi i32 [ 2, %unlink_queue.exit239.if.end15.sink.split.i.i.i.i.i249_crit_edge ], [ 1, %if.else.i.i.i.i.i247.if.end15.sink.split.i.i.i.i.i249_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i.i241, i32 noundef %.sink.i.i.i.i.i248) #13
  br label %wake_up_sem_queue_prepare.exit251

wake_up_sem_queue_prepare.exit251:                ; preds = %if.end15.sink.split.i.i.i.i.i249, %if.else.i.i.i.i.i247.wake_up_sem_queue_prepare.exit251_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !145
  %status.i250 = getelementptr inbounds %struct.sem_queue, ptr %q.3269, i32 0, i32 4
  %109 = ptrtoint ptr %status.i250 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile i32 -43, ptr %status.i250, align 4
  call void @wake_q_add_safe(ptr noundef nonnull %wake_q, ptr noundef %106) #13
  %cmp105.not = icmp eq ptr %tq.3, %pending_alter93
  br i1 %cmp105.not, label %wake_up_sem_queue_prepare.exit251.for.end114_crit_edge, label %wake_up_sem_queue_prepare.exit251.for.body107_crit_edge

wake_up_sem_queue_prepare.exit251.for.body107_crit_edge: ; preds = %wake_up_sem_queue_prepare.exit251
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body107

wake_up_sem_queue_prepare.exit251.for.end114_crit_edge: ; preds = %wake_up_sem_queue_prepare.exit251
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end114

for.end114:                                       ; preds = %wake_up_sem_queue_prepare.exit251.for.end114_crit_edge, %for.end91.for.end114_crit_edge
  %sempid = getelementptr %struct.sem_array, ptr %ipcp, i32 0, i32 9, i32 %i.0271, i32 1
  %110 = ptrtoint ptr %sempid to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sempid, align 4
  %cmp.not.i = icmp eq ptr %111, null
  br i1 %cmp.not.i, label %for.end114.ipc_update_pid.exit_crit_edge, label %if.then.i252

for.end114.ipc_update_pid.exit_crit_edge:         ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_update_pid.exit

if.then.i252:                                     ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #15
  %112 = ptrtoint ptr %sempid to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %sempid, align 4
  call void @put_pid(ptr noundef nonnull %111) #13
  br label %ipc_update_pid.exit

ipc_update_pid.exit:                              ; preds = %if.then.i252, %for.end114.ipc_update_pid.exit_crit_edge
  %inc = add nuw nsw i32 %i.0271, 1
  %113 = ptrtoint ptr %sem_nsems to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sem_nsems, align 32
  %cmp67 = icmp slt i32 %inc, %114
  br i1 %cmp67, label %ipc_update_pid.exit.for.body68_crit_edge, label %ipc_update_pid.exit.for.end116_crit_edge

ipc_update_pid.exit.for.end116_crit_edge:         ; preds = %ipc_update_pid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end116

ipc_update_pid.exit.for.body68_crit_edge:         ; preds = %ipc_update_pid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body68

for.end116:                                       ; preds = %ipc_update_pid.exit.for.end116_crit_edge, %for.cond66.preheader.for.end116_crit_edge
  call void @ipc_rmid(ptr noundef %ns, ptr noundef %ipcp) #13
  %complex_count.i.i = getelementptr inbounds %struct.sem_array, ptr %ipcp, i32 0, i32 6
  %115 = ptrtoint ptr %complex_count.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %complex_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i.i = icmp eq i32 %116, 0
  br i1 %tobool.not.i.i, label %if.end.i.i254, label %for.end116.sem_unlock.exit_crit_edge

for.end116.sem_unlock.exit_crit_edge:             ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_unlock.exit

if.end.i.i254:                                    ; preds = %for.end116
  %117 = ptrtoint ptr %pending_alter to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pending_alter, align 8
  %cmp.not26.i.i = icmp eq ptr %118, %pending_alter
  br i1 %cmp.not26.i.i, label %if.end.i.i254.unmerge_queues.exit.i_crit_edge, label %if.end.i.i254.for.body.i.i_crit_edge

if.end.i.i254.for.body.i.i_crit_edge:             ; preds = %if.end.i.i254
  br label %for.body.i.i

if.end.i.i254.unmerge_queues.exit.i_crit_edge:    ; preds = %if.end.i.i254
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmerge_queues.exit.i

for.body.i.i:                                     ; preds = %list_add_tail.exit.i.i.for.body.i.i_crit_edge, %if.end.i.i254.for.body.i.i_crit_edge
  %q.027.i.i = phi ptr [ %tq.0.i.i, %list_add_tail.exit.i.i.for.body.i.i_crit_edge ], [ %118, %if.end.i.i254.for.body.i.i_crit_edge ]
  %119 = ptrtoint ptr %q.027.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %tq.0.i.i = load ptr, ptr %q.027.i.i, align 4
  %sops.i.i = getelementptr inbounds %struct.sem_queue, ptr %q.027.i.i, i32 0, i32 5
  %120 = ptrtoint ptr %sops.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sops.i.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %121, align 2
  %idxprom.i.i = zext i16 %123 to i32
  %pending_alter9.i.i = getelementptr %struct.sem_array, ptr %ipcp, i32 0, i32 9, i32 %idxprom.i.i, i32 3
  %prev.i.i.i255 = getelementptr %struct.sem_array, ptr %ipcp, i32 0, i32 9, i32 %idxprom.i.i, i32 3, i32 1
  %124 = ptrtoint ptr %prev.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i.i.i255, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %q.027.i.i, ptr noundef %125, ptr noundef %pending_alter9.i.i) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_add_tail.exit.i.i_crit_edge

for.body.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %126 = ptrtoint ptr %prev.i.i.i255 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %q.027.i.i, ptr %prev.i.i.i255, align 4
  %127 = ptrtoint ptr %q.027.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %pending_alter9.i.i, ptr %q.027.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %q.027.i.i, i32 0, i32 1
  %128 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev3.i.i.i.i, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %q.027.i.i, ptr %125, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %for.body.i.i.list_add_tail.exit.i.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %tq.0.i.i, %pending_alter
  br i1 %cmp.not.i.i, label %list_add_tail.exit.i.i.unmerge_queues.exit.i_crit_edge, label %list_add_tail.exit.i.i.for.body.i.i_crit_edge

list_add_tail.exit.i.i.for.body.i.i_crit_edge:    ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

list_add_tail.exit.i.i.unmerge_queues.exit.i_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmerge_queues.exit.i

unmerge_queues.exit.i:                            ; preds = %list_add_tail.exit.i.i.unmerge_queues.exit.i_crit_edge, %if.end.i.i254.unmerge_queues.exit.i_crit_edge
  %130 = ptrtoint ptr %pending_alter to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %pending_alter, ptr %pending_alter, align 4
  %prev.i25.i.i = getelementptr inbounds %struct.sem_array, ptr %ipcp, i32 0, i32 2, i32 1
  %131 = ptrtoint ptr %prev.i25.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %pending_alter, ptr %prev.i25.i.i, align 4
  %132 = ptrtoint ptr %complex_count.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %.pr.i = load i32, ptr %complex_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i6.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i6.i, label %if.end.i7.i, label %unmerge_queues.exit.i.sem_unlock.exit_crit_edge

unmerge_queues.exit.i.sem_unlock.exit_crit_edge:  ; preds = %unmerge_queues.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_unlock.exit

if.end.i7.i:                                      ; preds = %unmerge_queues.exit.i
  %use_global_lock.i.i = getelementptr inbounds %struct.sem_array, ptr %ipcp, i32 0, i32 7
  %133 = ptrtoint ptr %use_global_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %use_global_lock.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp.i.i = icmp eq i32 %134, 1
  br i1 %cmp.i.i, label %do.end5.i.i, label %do.body18.i.i

do.end5.i.i:                                      ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !146
  br label %if.end23.sink.split.i.i

do.body18.i.i:                                    ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %134, -1
  br label %if.end23.sink.split.i.i

if.end23.sink.split.i.i:                          ; preds = %do.body18.i.i, %do.end5.i.i
  %sub.sink.i.i = phi i32 [ %sub.i.i, %do.body18.i.i ], [ 0, %do.end5.i.i ]
  %135 = ptrtoint ptr %use_global_lock.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile i32 %sub.sink.i.i, ptr %use_global_lock.i.i, align 8
  br label %sem_unlock.exit

sem_unlock.exit:                                  ; preds = %if.end23.sink.split.i.i, %unmerge_queues.exit.i.sem_unlock.exit_crit_edge, %for.end116.sem_unlock.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %ipcp) #13
  %call.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %sem_unlock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

sem_unlock.exit.rcu_read_unlock.exit_crit_edge:   ; preds = %sem_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %sem_unlock.exit
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i256

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i256:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i256, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %sem_unlock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %136 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i = and i32 %136, -16384
  %137 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %139, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @wake_up_q(ptr noundef nonnull %wake_q) #13
  %140 = ptrtoint ptr %sem_nsems to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %sem_nsems, align 32
  %used_sems = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 2
  %142 = ptrtoint ptr %used_sems to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %used_sems, align 4
  %sub = sub i32 %143, %141
  store i32 %sub, ptr %used_sems, align 4
  call void @ipc_rcu_putref(ptr noundef %ipcp, ptr noundef nonnull @sem_rcu_free) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @sem_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 1) to i32))
  store i32 32000, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 1, i32 1) to i32))
  store i32 1024000000, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 1, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 1, i32 2) to i32))
  store i32 500, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 1, i32 2), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 1, i32 3) to i32))
  store i32 32000, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 1, i32 3), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 2) to i32))
  store i32 0, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 2), align 4
  tail call void @ipc_init_ids(ptr noundef nonnull @init_ipc_ns) #13
  tail call void @ipc_init_proc_interface(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef nonnull @sysvipc_sem_proc_show) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ipc_init_proc_interface(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysvipc_sem_proc_show(ptr noundef %s, ptr noundef %it) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
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
  %use_global_lock.i = getelementptr inbounds %struct.sem_array, ptr %it, i32 0, i32 7
  %6 = ptrtoint ptr %use_global_lock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %use_global_lock.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %use_global_lock.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 10, ptr %use_global_lock.i, align 8
  br i1 %cmp.not.i, label %do.body12.i, label %entry.complexmode_enter.exit_crit_edge

entry.complexmode_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %complexmode_enter.exit

do.body12.i:                                      ; preds = %entry
  %sem_nsems.i = getelementptr inbounds %struct.sem_array, ptr %it, i32 0, i32 5
  %9 = ptrtoint ptr %sem_nsems.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sem_nsems.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1828.i = icmp sgt i32 %10, 0
  br i1 %cmp1828.i, label %do.body12.i.for.body.i_crit_edge, label %do.body12.i.complexmode_enter.exit_crit_edge

do.body12.i.complexmode_enter.exit_crit_edge:     ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %complexmode_enter.exit

do.body12.i.for.body.i_crit_edge:                 ; preds = %do.body12.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body12.i.for.body.i_crit_edge
  %i.029.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body12.i.for.body.i_crit_edge ]
  %lock.i = getelementptr %struct.sem_array, ptr %it, i32 0, i32 9, i32 %i.029.i, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #13
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %11 = ptrtoint ptr %sem_nsems.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sem_nsems.i, align 32
  %cmp18.i = icmp slt i32 %inc.i, %12
  br i1 %cmp18.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.complexmode_enter.exit_crit_edge

for.body.i.complexmode_enter.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %complexmode_enter.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

complexmode_enter.exit:                           ; preds = %for.body.i.complexmode_enter.exit_crit_edge, %do.body12.i.complexmode_enter.exit_crit_edge, %entry.complexmode_enter.exit_crit_edge
  %sem_otime.i = getelementptr inbounds %struct.sem_array, ptr %it, i32 1, i32 0, i32 8
  %13 = ptrtoint ptr %sem_otime.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sem_otime.i, align 8
  %sem_nsems.i33 = getelementptr inbounds %struct.sem_array, ptr %it, i32 0, i32 5
  %15 = ptrtoint ptr %sem_nsems.i33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sem_nsems.i33, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp11.i = icmp sgt i32 %16, 1
  br i1 %cmp11.i, label %complexmode_enter.exit.for.body.i35_crit_edge, label %complexmode_enter.exit.get_semotime.exit_crit_edge

complexmode_enter.exit.get_semotime.exit_crit_edge: ; preds = %complexmode_enter.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_semotime.exit

complexmode_enter.exit.for.body.i35_crit_edge:    ; preds = %complexmode_enter.exit
  br label %for.body.i35

for.body.i35:                                     ; preds = %for.body.i35.for.body.i35_crit_edge, %complexmode_enter.exit.for.body.i35_crit_edge
  %res.013.i = phi i64 [ %19, %for.body.i35.for.body.i35_crit_edge ], [ %14, %complexmode_enter.exit.for.body.i35_crit_edge ]
  %i.012.i = phi i32 [ %inc.i34, %for.body.i35.for.body.i35_crit_edge ], [ 1, %complexmode_enter.exit.for.body.i35_crit_edge ]
  %sem_otime3.i = getelementptr %struct.sem_array, ptr %it, i32 0, i32 9, i32 %i.012.i, i32 5
  %17 = ptrtoint ptr %sem_otime3.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %sem_otime3.i, align 8
  %19 = tail call i64 @llvm.smax.i64(i64 %18, i64 %res.013.i) #13
  %inc.i34 = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i34, %16
  br i1 %exitcond.not.i, label %for.body.i35.get_semotime.exit_crit_edge, label %for.body.i35.for.body.i35_crit_edge

for.body.i35.for.body.i35_crit_edge:              ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i35

for.body.i35.get_semotime.exit_crit_edge:         ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_semotime.exit

get_semotime.exit:                                ; preds = %for.body.i35.get_semotime.exit_crit_edge, %complexmode_enter.exit.get_semotime.exit_crit_edge
  %res.0.lcssa.i = phi i64 [ %14, %complexmode_enter.exit.get_semotime.exit_crit_edge ], [ %19, %for.body.i35.get_semotime.exit_crit_edge ]
  %key = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 3
  %20 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %key, align 4
  %id = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 2
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 16
  %mode = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 8
  %24 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mode, align 8
  %conv = zext i16 %25 to i32
  %uid = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 4
  %26 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack = load i32, ptr %uid, align 8
  %27 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call5 = tail call i32 @from_kuid_munged(ptr noundef %5, [1 x i32] %27) #13
  %gid = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 5
  %28 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack30 = load i32, ptr %gid, align 4
  %29 = insertvalue [1 x i32] undef, i32 %.unpack30, 0
  %call8 = tail call i32 @from_kgid_munged(ptr noundef %5, [1 x i32] %29) #13
  %cuid = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 6
  %30 = ptrtoint ptr %cuid to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack31 = load i32, ptr %cuid, align 64
  %31 = insertvalue [1 x i32] undef, i32 %.unpack31, 0
  %call11 = tail call i32 @from_kuid_munged(ptr noundef %5, [1 x i32] %31) #13
  %cgid = getelementptr inbounds %struct.kern_ipc_perm, ptr %it, i32 0, i32 7
  %32 = ptrtoint ptr %cgid to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack32 = load i32, ptr %cgid, align 4
  %33 = insertvalue [1 x i32] undef, i32 %.unpack32, 0
  %call14 = tail call i32 @from_kgid_munged(ptr noundef %5, [1 x i32] %33) #13
  %sem_ctime = getelementptr inbounds %struct.sem_array, ptr %it, i32 0, i32 1
  %34 = ptrtoint ptr %sem_ctime to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %sem_ctime, align 128
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, i32 noundef %21, i32 noundef %23, i32 noundef %conv, i32 noundef %16, i32 noundef %call5, i32 noundef %call8, i32 noundef %call11, i32 noundef %call14, i64 noundef %res.0.lcssa.i, i64 noundef %35) #13
  %complex_count.i = getelementptr inbounds %struct.sem_array, ptr %it, i32 0, i32 6
  %36 = ptrtoint ptr %complex_count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %complex_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %if.end.i, label %get_semotime.exit.complexmode_tryleave.exit_crit_edge

get_semotime.exit.complexmode_tryleave.exit_crit_edge: ; preds = %get_semotime.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %complexmode_tryleave.exit

if.end.i:                                         ; preds = %get_semotime.exit
  %38 = ptrtoint ptr %use_global_lock.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %use_global_lock.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i = icmp eq i32 %39, 1
  br i1 %cmp.i, label %do.end5.i, label %do.body18.i

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !146
  br label %if.end23.sink.split.i

do.body18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = add i32 %39, -1
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %do.body18.i, %do.end5.i
  %sub.sink.i = phi i32 [ %sub.i, %do.body18.i ], [ 0, %do.end5.i ]
  %40 = ptrtoint ptr %use_global_lock.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 %sub.sink.i, ptr %use_global_lock.i, align 8
  br label %complexmode_tryleave.exit

complexmode_tryleave.exit:                        ; preds = %if.end23.sink.split.i, %get_semotime.exit.complexmode_tryleave.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_semget(i32 noundef %key, i32 noundef %nsems, i32 noundef %semflg) local_unnamed_addr #0 align 64 {
entry:
  %sem_params = alloca %struct.ipc_params, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sem_params) #13
  %0 = getelementptr inbounds %struct.ipc_params, ptr %sem_params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ipc_params, ptr %sem_params, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !131) #13
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsems)
  %cmp = icmp slt i32 %nsems, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sem_ctls = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sem_ctls to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sem_ctls, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %nsems)
  %cmp1 = icmp slt i32 %11, %nsems
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %sem_params to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %key, ptr %sem_params, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %semflg, ptr %0, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %nsems, ptr %1, align 4
  %call4 = call i32 @ipcget(ptr noundef %9, ptr noundef %9, ptr noundef nonnull @ksys_semget.sem_ops, ptr noundef nonnull %sem_params) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sem_params) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @newary(ptr noundef %ns, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params, align 4
  %u = getelementptr inbounds %struct.ipc_params, ptr %params, i32 0, i32 2
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %u, align 4
  %flg = getelementptr inbounds %struct.ipc_params, ptr %params, i32 0, i32 1
  %4 = ptrtoint ptr %flg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %used_sems = getelementptr inbounds %struct.ipc_namespace, ptr %ns, i32 0, i32 2
  %6 = ptrtoint ptr %used_sems to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used_sems, align 4
  %add = add i32 %7, %3
  %arrayidx = getelementptr %struct.ipc_namespace, ptr %ns, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp = icmp sgt i32 %add, %9
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777213, i32 %3)
  %cmp.i = icmp ugt i32 %3, 16777213
  br i1 %cmp.i, label %if.end4.cleanup_crit_edge, label %sem_alloc.exit

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sem_alloc.exit:                                   ; preds = %if.end4
  %10 = shl nuw nsw i32 %3, 7
  %spec.select.i9.i = add nuw nsw i32 %10, 256
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %spec.select.i9.i, i32 noundef 4197824, i32 noundef -1) #17
  %tobool5.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool5.not, label %sem_alloc.exit.cleanup_crit_edge, label %if.end7

sem_alloc.exit.cleanup_crit_edge:                 ; preds = %sem_alloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %sem_alloc.exit
  %11 = trunc i32 %5 to i16
  %conv = and i16 %11, 511
  %mode = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %mode, align 8
  %key9 = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %key9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %1, ptr %key9, align 4
  %security = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %security, align 16
  %call12 = tail call i32 @security_sem_alloc(ptr noundef nonnull %call.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end7.for.body_crit_edge, label %if.then14

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7.for.body_crit_edge
  %i.090 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %pending_alter = getelementptr %struct.sem_array, ptr %call.i.i.i, i32 0, i32 9, i32 %i.090, i32 3
  %15 = ptrtoint ptr %pending_alter to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %pending_alter, ptr %pending_alter, align 4
  %prev.i = getelementptr %struct.sem_array, ptr %call.i.i.i, i32 0, i32 9, i32 %i.090, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pending_alter, ptr %prev.i, align 4
  %pending_const = getelementptr %struct.sem_array, ptr %call.i.i.i, i32 0, i32 9, i32 %i.090, i32 4
  %17 = ptrtoint ptr %pending_const to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %pending_const, ptr %pending_const, align 4
  %prev.i82 = getelementptr %struct.sem_array, ptr %call.i.i.i, i32 0, i32 9, i32 %i.090, i32 4, i32 1
  %18 = ptrtoint ptr %prev.i82 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pending_const, ptr %prev.i82, align 4
  %lock = getelementptr %struct.sem_array, ptr %call.i.i.i, i32 0, i32 9, i32 %i.090, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @newary.__key, i16 noundef signext 3) #13
  %inc = add nuw nsw i32 %i.090, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %complex_count = getelementptr inbounds %struct.sem_array, ptr %call.i.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %complex_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %complex_count, align 4
  %use_global_lock = getelementptr inbounds %struct.sem_array, ptr %call.i.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %use_global_lock to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 10, ptr %use_global_lock, align 8
  %pending_alter24 = getelementptr inbounds %struct.sem_array, ptr %call.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %pending_alter24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %pending_alter24, ptr %pending_alter24, align 4
  %prev.i83 = getelementptr inbounds %struct.sem_array, ptr %call.i.i.i, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %pending_alter24, ptr %prev.i83, align 4
  %pending_const25 = getelementptr inbounds %struct.sem_array, ptr %call.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %pending_const25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %pending_const25, ptr %pending_const25, align 4
  %prev.i84 = getelementptr inbounds %struct.sem_array, ptr %call.i.i.i, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %prev.i84 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pending_const25, ptr %prev.i84, align 4
  %list_id = getelementptr inbounds %struct.sem_array, ptr %call.i.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %list_id to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %list_id, ptr %list_id, align 4
  %prev.i85 = getelementptr inbounds %struct.sem_array, ptr %call.i.i.i, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %prev.i85 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list_id, ptr %prev.i85, align 4
  %sem_nsems = getelementptr inbounds %struct.sem_array, ptr %call.i.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %sem_nsems to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %3, ptr %sem_nsems, align 32
  %call26 = tail call i64 @ktime_get_real_seconds() #13
  %sem_ctime = getelementptr inbounds %struct.sem_array, ptr %call.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %sem_ctime to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call26, ptr %sem_ctime, align 128
  %arrayidx30 = getelementptr %struct.ipc_namespace, ptr %ns, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx30, align 4
  %call31 = tail call i32 @ipc_addid(ptr noundef %ns, ptr noundef nonnull %call.i.i.i, i32 noundef %30) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ipc_rcu_putref(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull @sem_rcu_free) #13
  br label %cleanup

if.end36:                                         ; preds = %for.end
  %31 = ptrtoint ptr %used_sems to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %used_sems, align 4
  %add38 = add i32 %32, %3
  store i32 %add38, ptr %used_sems, align 4
  %33 = ptrtoint ptr %complex_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %complex_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end36.sem_unlock.exit_crit_edge

if.end36.sem_unlock.exit_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_unlock.exit

if.end.i.i:                                       ; preds = %if.end36
  %35 = ptrtoint ptr %pending_alter24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pending_alter24, align 8
  %cmp.not26.i.i = icmp eq ptr %36, %pending_alter24
  br i1 %cmp.not26.i.i, label %if.end.i.i.unmerge_queues.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.unmerge_queues.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmerge_queues.exit.i

for.body.i.i:                                     ; preds = %list_add_tail.exit.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %q.027.i.i = phi ptr [ %tq.0.i.i, %list_add_tail.exit.i.i.for.body.i.i_crit_edge ], [ %36, %if.end.i.i.for.body.i.i_crit_edge ]
  %37 = ptrtoint ptr %q.027.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %tq.0.i.i = load ptr, ptr %q.027.i.i, align 4
  %sops.i.i = getelementptr inbounds %struct.sem_queue, ptr %q.027.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %sops.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sops.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %39, align 2
  %idxprom.i.i = zext i16 %41 to i32
  %pending_alter9.i.i = getelementptr %struct.sem_array, ptr %call.i.i.i, i32 0, i32 9, i32 %idxprom.i.i, i32 3
  %prev.i.i.i = getelementptr %struct.sem_array, ptr %call.i.i.i, i32 0, i32 9, i32 %idxprom.i.i, i32 3, i32 1
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %q.027.i.i, ptr noundef %43, ptr noundef %pending_alter9.i.i) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_add_tail.exit.i.i_crit_edge

for.body.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %q.027.i.i, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %q.027.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %pending_alter9.i.i, ptr %q.027.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %q.027.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %q.027.i.i, ptr %43, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %for.body.i.i.list_add_tail.exit.i.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %tq.0.i.i, %pending_alter24
  br i1 %cmp.not.i.i, label %list_add_tail.exit.i.i.unmerge_queues.exit.i_crit_edge, label %list_add_tail.exit.i.i.for.body.i.i_crit_edge

list_add_tail.exit.i.i.for.body.i.i_crit_edge:    ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

list_add_tail.exit.i.i.unmerge_queues.exit.i_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmerge_queues.exit.i

unmerge_queues.exit.i:                            ; preds = %list_add_tail.exit.i.i.unmerge_queues.exit.i_crit_edge, %if.end.i.i.unmerge_queues.exit.i_crit_edge
  %48 = ptrtoint ptr %pending_alter24 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %pending_alter24, ptr %pending_alter24, align 4
  %49 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %pending_alter24, ptr %prev.i83, align 4
  %50 = ptrtoint ptr %complex_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr.i = load i32, ptr %complex_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i6.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i6.i, label %if.end.i7.i, label %unmerge_queues.exit.i.sem_unlock.exit_crit_edge

unmerge_queues.exit.i.sem_unlock.exit_crit_edge:  ; preds = %unmerge_queues.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_unlock.exit

if.end.i7.i:                                      ; preds = %unmerge_queues.exit.i
  %51 = ptrtoint ptr %use_global_lock to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %use_global_lock, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp.i.i = icmp eq i32 %52, 1
  br i1 %cmp.i.i, label %do.end5.i.i, label %do.body18.i.i

do.end5.i.i:                                      ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !146
  br label %if.end23.sink.split.i.i

do.body18.i.i:                                    ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %52, -1
  br label %if.end23.sink.split.i.i

if.end23.sink.split.i.i:                          ; preds = %do.body18.i.i, %do.end5.i.i
  %sub.sink.i.i = phi i32 [ %sub.i.i, %do.body18.i.i ], [ 0, %do.end5.i.i ]
  %53 = ptrtoint ptr %use_global_lock to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 %sub.sink.i.i, ptr %use_global_lock, align 8
  br label %sem_unlock.exit

sem_unlock.exit:                                  ; preds = %if.end23.sink.split.i.i, %unmerge_queues.exit.i.sem_unlock.exit_crit_edge, %if.end36.sem_unlock.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull %call.i.i.i) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %sem_unlock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

sem_unlock.exit.rcu_read_unlock.exit_crit_edge:   ; preds = %sem_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %sem_unlock.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %sem_unlock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %54 = tail call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %id = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id, align 16
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then34, %if.then14, %sem_alloc.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.then14 ], [ %call31, %if.then34 ], [ %59, %rcu_read_unlock.exit ], [ -22, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ -12, %sem_alloc.exit.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sem_associate(ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sem_more_checks(ptr nocapture noundef readonly %ipcp, ptr nocapture noundef readonly %params) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.ipc_params, ptr %params, i32 0, i32 2
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %u, align 4
  %sem_nsems = getelementptr inbounds %struct.sem_array, ptr %ipcp, i32 0, i32 5
  %2 = ptrtoint ptr %sem_nsems to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sem_nsems, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp sgt i32 %1, %3
  %. = select i1 %cmp, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipcget(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_semget(i32 noundef %key, i32 noundef %nsems, i32 noundef %semflg) #0 align 64 {
entry:
  %sem_params.i.i = alloca %struct.ipc_params, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sem_params.i.i) #13
  %0 = getelementptr inbounds %struct.ipc_params, ptr %sem_params.i.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ipc_params, ptr %sem_params.i.i, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i.i, align 8
  %nsproxy.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 110
  %6 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nsproxy.i.i, align 4
  %ipc_ns.i.i = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ipc_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipc_ns.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsems)
  %cmp.i.i = icmp slt i32 %nsems, 0
  br i1 %cmp.i.i, label %entry.__do_sys_semget.exit_crit_edge, label %lor.lhs.false.i.i

entry.__do_sys_semget.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_semget.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %sem_ctls.i.i = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %sem_ctls.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sem_ctls.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %nsems)
  %cmp1.i.i = icmp slt i32 %11, %nsems
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.__do_sys_semget.exit_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.__do_sys_semget.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_semget.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %sem_params.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %key, ptr %sem_params.i.i, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %semflg, ptr %0, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %nsems, ptr %1, align 4
  %call4.i.i = call i32 @ipcget(ptr noundef %9, ptr noundef %9, ptr noundef nonnull @ksys_semget.sem_ops, ptr noundef nonnull %sem_params.i.i) #13
  br label %__do_sys_semget.exit

__do_sys_semget.exit:                             ; preds = %if.end.i.i, %lor.lhs.false.i.i.__do_sys_semget.exit_crit_edge, %entry.__do_sys_semget.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call4.i.i, %if.end.i.i ], [ -22, %lor.lhs.false.i.i.__do_sys_semget.exit_crit_edge ], [ -22, %entry.__do_sys_semget.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sem_params.i.i) #13
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_semctl(i32 noundef %semid, i32 noundef %semnum, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @ksys_semctl(i32 noundef %semid, i32 noundef %semnum, i32 noundef %cmd, i32 noundef %arg, i32 noundef 256) #13
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_old_semctl(i32 noundef %semid, i32 noundef %semnum, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %cmd.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cmd, ptr %cmd.addr, align 4
  %call = call i32 @ipc_parse_version(ptr noundef nonnull %cmd.addr) #13
  %1 = ptrtoint ptr %cmd.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cmd.addr, align 4
  %call1 = call fastcc i32 @ksys_semctl(i32 noundef %semid, i32 noundef %semnum, i32 noundef %2, i32 noundef %arg, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipc_parse_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ksys_semctl(i32 noundef %semid, i32 noundef %semnum, i32 noundef %cmd, i32 noundef %arg, i32 noundef %version) unnamed_addr #0 align 64 {
entry:
  %tbuf_old.i = alloca %struct.semid_ds, align 4
  %agg.tmp.sroa.0.i.i.i96 = alloca i32, align 4
  %wake_q.i97 = alloca %struct.wake_q_head, align 4
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %fast_sem_io.i = alloca [256 x i16], align 2
  %wake_q.i = alloca %struct.wake_q_head, align 4
  %out.i = alloca %struct.semid_ds, align 4
  %seminfo.i = alloca %struct.seminfo, align 4
  %semid64 = alloca %struct.semid64_ds, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %semid64) #13
  %1 = call ptr @memset(ptr %semid64, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %semid)
  %cmp = icmp slt i32 %semid, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !131) #13
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
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 3, label %if.end.sw.bb_crit_edge
    i32 19, label %if.end.sw.bb_crit_edge234
    i32 2, label %if.end.sw.bb2_crit_edge
    i32 18, label %if.end.sw.bb2_crit_edge235
    i32 20, label %if.end.sw.bb2_crit_edge236
    i32 13, label %if.end.sw.bb10_crit_edge
    i32 12, label %if.end.sw.bb10_crit_edge237
    i32 11, label %if.end.sw.bb10_crit_edge238
    i32 14, label %if.end.sw.bb10_crit_edge239
    i32 15, label %if.end.sw.bb10_crit_edge240
    i32 17, label %if.end.sw.bb10_crit_edge241
    i32 16, label %sw.bb12
    i32 1, label %sw.bb14
    i32 0, label %if.end.sw.bb19_crit_edge
  ]

if.end.sw.bb19_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb19

if.end.sw.bb10_crit_edge241:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end.sw.bb10_crit_edge240:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end.sw.bb10_crit_edge239:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end.sw.bb10_crit_edge238:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end.sw.bb10_crit_edge237:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb10

if.end.sw.bb2_crit_edge236:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb2

if.end.sw.bb2_crit_edge235:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb2

if.end.sw.bb_crit_edge234:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge234
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %seminfo.i) #13
  %call.i = tail call i32 @security_sem_semctl(ptr noundef null, i32 noundef %cmd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.semctl_info.exit_crit_edge

sw.bb.semctl_info.exit_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %semctl_info.exit

if.end.i:                                         ; preds = %sw.bb
  %sem_ctls.i = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.ipc_namespace, ptr %9, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %semmni.i = getelementptr inbounds %struct.seminfo, ptr %seminfo.i, i32 0, i32 1
  %13 = ptrtoint ptr %semmni.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %semmni.i, align 4
  %arrayidx2.i = getelementptr %struct.ipc_namespace, ptr %9, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i, align 4
  %semmns.i = getelementptr inbounds %struct.seminfo, ptr %seminfo.i, i32 0, i32 2
  %16 = ptrtoint ptr %semmns.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %semmns.i, align 4
  %17 = ptrtoint ptr %sem_ctls.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sem_ctls.i, align 4
  %semmsl.i = getelementptr inbounds %struct.seminfo, ptr %seminfo.i, i32 0, i32 4
  %19 = ptrtoint ptr %semmsl.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %semmsl.i, align 4
  %arrayidx6.i = getelementptr %struct.ipc_namespace, ptr %9, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx6.i, align 4
  %semopm.i = getelementptr inbounds %struct.seminfo, ptr %seminfo.i, i32 0, i32 5
  %22 = ptrtoint ptr %semopm.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %semopm.i, align 4
  %semvmx.i = getelementptr inbounds %struct.seminfo, ptr %seminfo.i, i32 0, i32 8
  %23 = ptrtoint ptr %semvmx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 32767, ptr %semvmx.i, align 4
  %semmnu.i = getelementptr inbounds %struct.seminfo, ptr %seminfo.i, i32 0, i32 3
  %24 = ptrtoint ptr %semmnu.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1024000000, ptr %semmnu.i, align 4
  %25 = ptrtoint ptr %seminfo.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1024000000, ptr %seminfo.i, align 4
  %semume.i = getelementptr inbounds %struct.seminfo, ptr %seminfo.i, i32 0, i32 6
  %26 = ptrtoint ptr %semume.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 500, ptr %semume.i, align 4
  %rwsem.i = getelementptr inbounds %struct.ipc_ids, ptr %9, i32 0, i32 2
  tail call void @down_read(ptr noundef %rwsem.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %cmd)
  %cmp.i = icmp eq i32 %cmd, 19
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %9, align 4
  br i1 %cmp.i, label %if.then8.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %used_sems.i = getelementptr inbounds %struct.ipc_namespace, ptr %9, i32 0, i32 2
  %29 = ptrtoint ptr %used_sems.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %used_sems.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i, %if.end.i.if.end13.i_crit_edge
  %.sink3.i = phi i32 [ %28, %if.then8.i ], [ 20, %if.end.i.if.end13.i_crit_edge ]
  %.sink.i = phi i32 [ %30, %if.then8.i ], [ 32767, %if.end.i.if.end13.i_crit_edge ]
  %31 = getelementptr inbounds %struct.seminfo, ptr %seminfo.i, i32 0, i32 7
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink3.i, ptr %31, align 4
  %33 = getelementptr inbounds %struct.seminfo, ptr %seminfo.i, i32 0, i32 9
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink.i, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i = icmp eq i32 %28, 0
  br i1 %cmp.i.i, label %if.end13.i.ipc_get_maxidx.exit.i_crit_edge, label %if.end.i.i

if.end13.i.ipc_get_maxidx.exit.i_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_get_maxidx.exit.i

if.end.i.i:                                       ; preds = %if.end13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipc_mni to i32))
  %35 = load i32, ptr @ipc_mni, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %35)
  %cmp2.i.i = icmp eq i32 %28, %35
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %28, -1
  br label %ipc_get_maxidx.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %max_idx.i.i = getelementptr inbounds %struct.ipc_ids, ptr %9, i32 0, i32 4
  %36 = ptrtoint ptr %max_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_idx.i.i, align 4
  br label %ipc_get_maxidx.exit.i

ipc_get_maxidx.exit.i:                            ; preds = %if.end4.i.i, %if.then3.i.i, %if.end13.i.ipc_get_maxidx.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then3.i.i ], [ %37, %if.end4.i.i ], [ -1, %if.end13.i.ipc_get_maxidx.exit.i_crit_edge ]
  tail call void @up_read(ptr noundef %rwsem.i) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #13
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %ipc_get_maxidx.exit.i.semctl_info.exit_crit_edge, label %if.end.i.i.i

ipc_get_maxidx.exit.i.semctl_info.exit_crit_edge: ; preds = %ipc_get_maxidx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %semctl_info.exit

if.end.i.i.i:                                     ; preds = %ipc_get_maxidx.exit.i
  %38 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 40, i32 -1226833920) #18, !srcloc !148
  %asmresult.i.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.semctl_info.exit_crit_edge

if.end.i.i.i.semctl_info.exit_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %semctl_info.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %seminfo.i, i32 noundef 40) #13
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %seminfo.i, i32 noundef 40) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool21.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %39 = call i32 @llvm.smax.i32(i32 %retval.0.i.i, i32 0) #13
  %spec.select.i = select i1 %tobool21.not.i, i32 %39, i32 -14
  br label %semctl_info.exit

semctl_info.exit:                                 ; preds = %copy_to_user.exit.i, %if.end.i.i.i.semctl_info.exit_crit_edge, %ipc_get_maxidx.exit.i.semctl_info.exit_crit_edge, %sw.bb.semctl_info.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %sw.bb.semctl_info.exit_crit_edge ], [ -14, %ipc_get_maxidx.exit.i.semctl_info.exit_crit_edge ], [ -14, %if.end.i.i.i.semctl_info.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %seminfo.i) #13
  br label %cleanup

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge235, %if.end.sw.bb2_crit_edge236
  %40 = call ptr @memset(ptr %semid64, i32 0, i32 64)
  %41 = tail call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %44, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !149
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %sw.bb2.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

sw.bb2.rcu_read_lock.exit.i_crit_edge:            ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %sw.bb2
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %sw.bb2.rcu_read_lock.exit.i_crit_edge
  %45 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %cmd, label %if.else.i [
    i32 18, label %rcu_read_lock.exit.i.if.then.i_crit_edge
    i32 20, label %rcu_read_lock.exit.i.if.then.i_crit_edge242
  ]

rcu_read_lock.exit.i.if.then.i_crit_edge242:      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

rcu_read_lock.exit.i.if.then.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %rcu_read_lock.exit.i.if.then.i_crit_edge, %rcu_read_lock.exit.i.if.then.i_crit_edge242
  %call.i78.i = tail call ptr @ipc_obtain_object_idr(ptr noundef %9, i32 noundef %semid) #13
  %cmp.i.i45 = icmp ugt ptr %call.i78.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i45, label %if.then3.i, label %if.end10.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %call.i78.i to i32
  br label %out_unlock.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  %call.i79.i = tail call ptr @ipc_obtain_object_check(ptr noundef %9, i32 noundef %semid) #13
  %cmp.i80.i = icmp ugt ptr %call.i79.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80.i, label %if.then7.i, label %if.else.i.if.else13.i_crit_edge

if.else.i.if.else13.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else13.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %call.i79.i to i32
  br label %out_unlock.i

if.end10.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %cmd)
  %cmp11.i = icmp eq i32 %cmd, 20
  br i1 %cmp11.i, label %if.end10.i.if.end18.i_crit_edge, label %if.end10.i.if.else13.i_crit_edge

if.end10.i.if.else13.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else13.i

if.end10.i.if.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.else13.i:                                      ; preds = %if.end10.i.if.else13.i_crit_edge, %if.else.i.if.else13.i_crit_edge
  %sma.094.i = phi ptr [ %call.i78.i, %if.end10.i.if.else13.i_crit_edge ], [ %call.i79.i, %if.else.i.if.else13.i_crit_edge ]
  %call15.i = tail call i32 @ipcperms(ptr noundef %9, ptr noundef %sma.094.i, i16 noundef signext 292) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not.i46 = icmp eq i32 %call15.i, 0
  br i1 %tobool.not.i46, label %if.else13.i.if.end18.i_crit_edge, label %if.else13.i.out_unlock.i_crit_edge

if.else13.i.out_unlock.i_crit_edge:               ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.i

if.else13.i.if.end18.i_crit_edge:                 ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else13.i.if.end18.i_crit_edge, %if.end10.i.if.end18.i_crit_edge
  %sma.093.i = phi ptr [ %sma.094.i, %if.else13.i.if.end18.i_crit_edge ], [ %call.i78.i, %if.end10.i.if.end18.i_crit_edge ]
  %call20.i = tail call i32 @security_sem_semctl(ptr noundef %sma.093.i, i32 noundef %cmd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i47 = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i47, label %if.end23.i, label %if.end18.i.out_unlock.i_crit_edge

if.end18.i.out_unlock.i_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.i

if.end23.i:                                       ; preds = %if.end18.i
  tail call void @_raw_spin_lock(ptr noundef %sma.093.i) #13
  %deleted.i.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %sma.093.i, i32 0, i32 1
  %48 = ptrtoint ptr %deleted.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %deleted.i.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i81.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i81.i, label %if.end29.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %sma.093.i) #13
  br label %out_unlock.i

if.end29.i:                                       ; preds = %if.end23.i
  call void @kernel_to_ipc64_perm(ptr noundef %sma.093.i, ptr noundef nonnull %semid64) #13
  %sem_otime.i.i = getelementptr inbounds %struct.sem_array, ptr %sma.093.i, i32 1, i32 0, i32 8
  %50 = ptrtoint ptr %sem_otime.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %sem_otime.i.i, align 8
  %sem_nsems.i.i = getelementptr inbounds %struct.sem_array, ptr %sma.093.i, i32 0, i32 5
  %52 = ptrtoint ptr %sem_nsems.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sem_nsems.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp11.i.i = icmp sgt i32 %53, 1
  %extract.t.i = trunc i64 %51 to i32
  %extract.i = lshr i64 %51, 32
  %extract.t97.i = trunc i64 %extract.i to i32
  br i1 %cmp11.i.i, label %if.end29.i.for.body.i.i_crit_edge, label %if.end29.i.get_semotime.exit.i_crit_edge

if.end29.i.get_semotime.exit.i_crit_edge:         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_semotime.exit.i

if.end29.i.for.body.i.i_crit_edge:                ; preds = %if.end29.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end29.i.for.body.i.i_crit_edge
  %res.013.i.i = phi i64 [ %56, %for.body.i.i.for.body.i.i_crit_edge ], [ %51, %if.end29.i.for.body.i.i_crit_edge ]
  %i.012.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 1, %if.end29.i.for.body.i.i_crit_edge ]
  %sem_otime3.i.i = getelementptr %struct.sem_array, ptr %sma.093.i, i32 0, i32 9, i32 %i.012.i.i, i32 5
  %54 = ptrtoint ptr %sem_otime3.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %sem_otime3.i.i, align 8
  %56 = call i64 @llvm.smax.i64(i64 %55, i64 %res.013.i.i) #13
  %inc.i.i = add nuw nsw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %53
  br i1 %exitcond.not.i.i, label %get_semotime.exit.loopexit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

get_semotime.exit.loopexit.i:                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %extract.t96.le.i = trunc i64 %56 to i32
  %extract98.le.i = lshr i64 %56, 32
  %extract.t99.le.i = trunc i64 %extract98.le.i to i32
  br label %get_semotime.exit.i

get_semotime.exit.i:                              ; preds = %get_semotime.exit.loopexit.i, %if.end29.i.get_semotime.exit.i_crit_edge
  %res.0.lcssa.i.off0.i = phi i32 [ %extract.t.i, %if.end29.i.get_semotime.exit.i_crit_edge ], [ %extract.t96.le.i, %get_semotime.exit.loopexit.i ]
  %res.0.lcssa.i.off32.i = phi i32 [ %extract.t97.i, %if.end29.i.get_semotime.exit.i_crit_edge ], [ %extract.t99.le.i, %get_semotime.exit.loopexit.i ]
  %sem_otime.i = getelementptr inbounds %struct.semid64_ds, ptr %semid64, i32 0, i32 1
  %57 = ptrtoint ptr %sem_otime.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %res.0.lcssa.i.off0.i, ptr %sem_otime.i, align 4
  %sem_ctime.i = getelementptr inbounds %struct.sem_array, ptr %sma.093.i, i32 0, i32 1
  %58 = ptrtoint ptr %sem_ctime.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %sem_ctime.i, align 128
  %conv33.i = trunc i64 %59 to i32
  %sem_ctime34.i = getelementptr inbounds %struct.semid64_ds, ptr %semid64, i32 0, i32 3
  %60 = ptrtoint ptr %sem_ctime34.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv33.i, ptr %sem_ctime34.i, align 4
  %sem_otime_high.i = getelementptr inbounds %struct.semid64_ds, ptr %semid64, i32 0, i32 2
  %61 = ptrtoint ptr %sem_otime_high.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %res.0.lcssa.i.off32.i, ptr %sem_otime_high.i, align 4
  %62 = lshr i64 %59, 32
  %conv38.i = trunc i64 %62 to i32
  %sem_ctime_high.i = getelementptr inbounds %struct.semid64_ds, ptr %semid64, i32 0, i32 4
  %63 = ptrtoint ptr %sem_ctime_high.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv38.i, ptr %sem_ctime_high.i, align 4
  %sem_nsems39.i = getelementptr inbounds %struct.semid64_ds, ptr %semid64, i32 0, i32 5
  %64 = ptrtoint ptr %sem_nsems39.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %53, ptr %sem_nsems39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd)
  %cmp40.i = icmp eq i32 %cmd, 2
  br i1 %cmp40.i, label %get_semotime.exit.i.if.end45.i_crit_edge, label %if.else43.i

get_semotime.exit.i.if.end45.i_crit_edge:         ; preds = %get_semotime.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

if.else43.i:                                      ; preds = %get_semotime.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %id.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %sma.093.i, i32 0, i32 2
  %65 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %id.i, align 16
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else43.i, %get_semotime.exit.i.if.end45.i_crit_edge
  %err.0.i = phi i32 [ %66, %if.else43.i ], [ 0, %get_semotime.exit.i.if.end45.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %sma.093.i) #13
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %if.end45.i, %if.then27.i, %if.end18.i.out_unlock.i_crit_edge, %if.else13.i.out_unlock.i_crit_edge, %if.then7.i, %if.then3.i
  %err.1.i = phi i32 [ %46, %if.then3.i ], [ %call20.i, %if.end18.i.out_unlock.i_crit_edge ], [ %err.0.i, %if.end45.i ], [ -43, %if.then27.i ], [ -13, %if.else13.i.out_unlock.i_crit_edge ], [ %47, %if.then7.i ]
  %call.i82.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i82.i, label %out_unlock.i.semctl_stat.exit_crit_edge, label %land.lhs.true.i85.i

out_unlock.i.semctl_stat.exit_crit_edge:          ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %semctl_stat.exit

land.lhs.true.i85.i:                              ; preds = %out_unlock.i
  %call1.i83.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83.i)
  %tobool.not.i84.i = icmp eq i32 %call1.i83.i, 0
  br i1 %tobool.not.i84.i, label %land.lhs.true.i85.i.semctl_stat.exit_crit_edge, label %land.lhs.true2.i87.i

land.lhs.true.i85.i.semctl_stat.exit_crit_edge:   ; preds = %land.lhs.true.i85.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %semctl_stat.exit

land.lhs.true2.i87.i:                             ; preds = %land.lhs.true.i85.i
  %.b4.i86.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i86.i, label %land.lhs.true2.i87.i.semctl_stat.exit_crit_edge, label %if.then.i88.i

land.lhs.true2.i87.i.semctl_stat.exit_crit_edge:  ; preds = %land.lhs.true2.i87.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %semctl_stat.exit

if.then.i88.i:                                    ; preds = %land.lhs.true2.i87.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %semctl_stat.exit

semctl_stat.exit:                                 ; preds = %if.then.i88.i, %land.lhs.true2.i87.i.semctl_stat.exit_crit_edge, %land.lhs.true.i85.i.semctl_stat.exit_crit_edge, %out_unlock.i.semctl_stat.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %67 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i89.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i89.i to ptr
  %preempt_count.i.i.i.i90.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i90.i, align 4
  %sub.i.i.i.i = add i32 %70, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i90.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %cmp4 = icmp slt i32 %err.1.i, 0
  br i1 %cmp4, label %semctl_stat.exit.cleanup_crit_edge, label %if.end6

semctl_stat.exit.cleanup_crit_edge:               ; preds = %semctl_stat.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %semctl_stat.exit
  %71 = zext i32 %version to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %version, label %if.end6.cleanup_crit_edge [
    i32 256, label %if.end8.i.i.i
    i32 0, label %sw.bb1.i
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %if.end6
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #13
  %call.i.i.i48 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i48, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end.i.i.i51

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i.i51:                                   ; preds = %if.end8.i.i.i
  %72 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 64, i32 -1226833920) #18, !srcloc !148
  %asmresult.i.i.i49 = extractvalue { i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i49)
  %cmp.i6.i.i50 = icmp eq i32 %asmresult.i.i.i49, 0
  br i1 %cmp.i6.i.i50, label %if.then2.i.i.i, label %if.end.i.i.i51.cleanup_crit_edge

if.end.i.i.i51.cleanup_crit_edge:                 ; preds = %if.end.i.i.i51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i51
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i52 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %semid64, i32 noundef 64) #13
  %call.i12.i.i.i53 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %semid64, i32 noundef 64) #13
  br label %copy_semid_to_user.exit

sw.bb1.i:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %out.i) #13
  %73 = call ptr @memset(ptr %out.i, i32 0, i32 44)
  call void @ipc64_perm_to_ipc_perm(ptr noundef nonnull %semid64, ptr noundef nonnull %out.i) #13
  %sem_otime.i54 = getelementptr inbounds %struct.semid64_ds, ptr %semid64, i32 0, i32 1
  %74 = ptrtoint ptr %sem_otime.i54 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sem_otime.i54, align 4
  %sem_otime3.i = getelementptr inbounds %struct.semid_ds, ptr %out.i, i32 0, i32 1
  %76 = ptrtoint ptr %sem_otime3.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %sem_otime3.i, align 4
  %sem_ctime.i55 = getelementptr inbounds %struct.semid64_ds, ptr %semid64, i32 0, i32 3
  %77 = ptrtoint ptr %sem_ctime.i55 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sem_ctime.i55, align 4
  %sem_ctime4.i = getelementptr inbounds %struct.semid_ds, ptr %out.i, i32 0, i32 2
  %79 = ptrtoint ptr %sem_ctime4.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %sem_ctime4.i, align 4
  %sem_nsems.i = getelementptr inbounds %struct.semid64_ds, ptr %semid64, i32 0, i32 5
  %80 = ptrtoint ptr %sem_nsems.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sem_nsems.i, align 4
  %conv.i = trunc i32 %81 to i16
  %sem_nsems5.i = getelementptr inbounds %struct.semid_ds, ptr %out.i, i32 0, i32 7
  %82 = ptrtoint ptr %sem_nsems5.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv.i, ptr %sem_nsems5.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #13
  %call.i.i16.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i16.i, label %sw.bb1.i.copy_to_user.exit24.i_crit_edge, label %if.end.i.i19.i

sw.bb1.i.copy_to_user.exit24.i_crit_edge:         ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit24.i

if.end.i.i19.i:                                   ; preds = %sw.bb1.i
  %83 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 44, i32 -1226833920) #18, !srcloc !148
  %asmresult.i.i17.i = extractvalue { i32, i32 } %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i17.i)
  %cmp.i6.i18.i = icmp eq i32 %asmresult.i.i17.i, 0
  br i1 %cmp.i6.i18.i, label %if.then2.i.i22.i, label %if.end.i.i19.i.copy_to_user.exit24.i_crit_edge

if.end.i.i19.i.copy_to_user.exit24.i_crit_edge:   ; preds = %if.end.i.i19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit24.i

if.then2.i.i22.i:                                 ; preds = %if.end.i.i19.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i20.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %out.i, i32 noundef 44) #13
  %call.i12.i.i21.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %out.i, i32 noundef 44) #13
  br label %copy_to_user.exit24.i

copy_to_user.exit24.i:                            ; preds = %if.then2.i.i22.i, %if.end.i.i19.i.copy_to_user.exit24.i_crit_edge, %sw.bb1.i.copy_to_user.exit24.i_crit_edge
  %n.addr.0.i23.i = phi i32 [ 44, %sw.bb1.i.copy_to_user.exit24.i_crit_edge ], [ %call.i12.i.i21.i, %if.then2.i.i22.i ], [ 44, %if.end.i.i19.i.copy_to_user.exit24.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %out.i) #13
  br label %copy_semid_to_user.exit

copy_semid_to_user.exit:                          ; preds = %copy_to_user.exit24.i, %if.then2.i.i.i
  %retval.0.i56 = phi i32 [ %n.addr.0.i23.i, %copy_to_user.exit24.i ], [ %call.i12.i.i.i53, %if.then2.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i56)
  %tobool.not = icmp eq i32 %retval.0.i56, 0
  %spec.select = select i1 %tobool.not, i32 %err.1.i, i32 -14
  br label %cleanup

sw.bb10:                                          ; preds = %if.end.sw.bb10_crit_edge, %if.end.sw.bb10_crit_edge237, %if.end.sw.bb10_crit_edge238, %if.end.sw.bb10_crit_edge239, %if.end.sw.bb10_crit_edge240, %if.end.sw.bb10_crit_edge241
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %fast_sem_io.i) #13
  %84 = call ptr @memset(ptr %fast_sem_io.i, i32 255, i32 512)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q.i) #13
  %85 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q.i, i32 0, i32 1
  %86 = ptrtoint ptr %wake_q.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q.i, align 4
  %87 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %wake_q.i, ptr %85, align 4
  %88 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i.i57 = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i.i.i57 to ptr
  %preempt_count.i.i.i.i.i58 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i.i.i.i58, align 4
  %add.i.i.i.i59 = add i32 %91, 1
  store volatile i32 %add.i.i.i.i59, ptr %preempt_count.i.i.i.i.i58, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !149
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i60 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i60, label %sw.bb10.rcu_read_lock.exit.i68_crit_edge, label %land.lhs.true.i.i63

sw.bb10.rcu_read_lock.exit.i68_crit_edge:         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i68

land.lhs.true.i.i63:                              ; preds = %sw.bb10
  %call1.i.i61 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i61)
  %tobool.not.i.i62 = icmp eq i32 %call1.i.i61, 0
  br i1 %tobool.not.i.i62, label %land.lhs.true.i.i63.rcu_read_lock.exit.i68_crit_edge, label %land.lhs.true2.i.i65

land.lhs.true.i.i63.rcu_read_lock.exit.i68_crit_edge: ; preds = %land.lhs.true.i.i63
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i68

land.lhs.true2.i.i65:                             ; preds = %land.lhs.true.i.i63
  %.b4.i.i64 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i64, label %land.lhs.true2.i.i65.rcu_read_lock.exit.i68_crit_edge, label %if.then.i.i66

land.lhs.true2.i.i65.rcu_read_lock.exit.i68_crit_edge: ; preds = %land.lhs.true2.i.i65
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i68

if.then.i.i66:                                    ; preds = %land.lhs.true2.i.i65
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit.i68

rcu_read_lock.exit.i68:                           ; preds = %if.then.i.i66, %land.lhs.true2.i.i65.rcu_read_lock.exit.i68_crit_edge, %land.lhs.true.i.i63.rcu_read_lock.exit.i68_crit_edge, %sw.bb10.rcu_read_lock.exit.i68_crit_edge
  %call.i292.i = call ptr @ipc_obtain_object_check(ptr noundef %9, i32 noundef %semid) #13
  %cmp.i.i67 = icmp ugt ptr %call.i292.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i67, label %if.then.i69, label %if.end.i75

if.then.i69:                                      ; preds = %rcu_read_lock.exit.i68
  %call.i293.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i293.i, label %if.then.i69.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i296.i

if.then.i69.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true.i296.i:                             ; preds = %if.then.i69
  %call1.i294.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i294.i)
  %tobool.not.i295.i = icmp eq i32 %call1.i294.i, 0
  br i1 %tobool.not.i295.i, label %land.lhs.true.i296.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i298.i

land.lhs.true.i296.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i296.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i298.i:                            ; preds = %land.lhs.true.i296.i
  %.b4.i297.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i297.i, label %land.lhs.true2.i298.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i299.i

land.lhs.true2.i298.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i298.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

if.then.i299.i:                                   ; preds = %land.lhs.true2.i298.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i299.i, %land.lhs.true2.i298.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i296.i.rcu_read_unlock.exit.i_crit_edge, %if.then.i69.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %92 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i300.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i.i.i300.i to ptr
  %preempt_count.i.i.i.i301.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i.i.i301.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i.i.i301.i, align 4
  %sub.i.i.i.i70 = add i32 %95, -1
  store volatile i32 %sub.i.i.i.i70, ptr %preempt_count.i.i.i.i301.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %96 = ptrtoint ptr %call.i292.i to i32
  br label %semctl_main.exit

if.end.i75:                                       ; preds = %rcu_read_lock.exit.i68
  %sem_nsems.i71 = getelementptr inbounds %struct.sem_array, ptr %call.i292.i, i32 0, i32 5
  %97 = ptrtoint ptr %sem_nsems.i71 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sem_nsems.i71, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %cmd)
  %cmp.i72 = icmp eq i32 %cmd, 17
  %conv.i73 = select i1 %cmp.i72, i16 146, i16 292
  %call4.i = call i32 @ipcperms(ptr noundef %9, ptr noundef %call.i292.i, i16 noundef signext %conv.i73) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i74 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i74, label %if.end6.i, label %if.end.i75.out_rcu_wakeup.i_crit_edge

if.end.i75.out_rcu_wakeup.i_crit_edge:            ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_rcu_wakeup.i

if.end6.i:                                        ; preds = %if.end.i75
  %call8.i = call i32 @security_sem_semctl(ptr noundef %call.i292.i, i32 noundef %cmd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end6.i.out_rcu_wakeup.i_crit_edge

if.end6.i.out_rcu_wakeup.i_crit_edge:             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_rcu_wakeup.i

if.end11.i:                                       ; preds = %if.end6.i
  %99 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %cmd, label %sw.epilog.i [
    i32 13, label %sw.bb.i76
    i32 17, label %sw.bb45.i
  ]

sw.bb.i76:                                        ; preds = %if.end11.i
  call void @_raw_spin_lock(ptr noundef %call.i292.i) #13
  %use_global_lock.i.i.i = getelementptr inbounds %struct.sem_array, ptr %call.i292.i, i32 0, i32 7
  %100 = ptrtoint ptr %use_global_lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %use_global_lock.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.not.i.i.i = icmp eq i32 %101, 0
  %102 = ptrtoint ptr %use_global_lock.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 10, ptr %use_global_lock.i.i.i, align 8
  br i1 %cmp.not.i.i.i, label %do.body12.i.i.i, label %sw.bb.i76.sem_lock.exit.i_crit_edge

sw.bb.i76.sem_lock.exit.i_crit_edge:              ; preds = %sw.bb.i76
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_lock.exit.i

do.body12.i.i.i:                                  ; preds = %sw.bb.i76
  %103 = ptrtoint ptr %sem_nsems.i71 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sem_nsems.i71, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp1828.i.i.i = icmp sgt i32 %104, 0
  br i1 %cmp1828.i.i.i, label %do.body12.i.i.i.for.body.i.i.i_crit_edge, label %do.body12.i.i.i.sem_lock.exit.i_crit_edge

do.body12.i.i.i.sem_lock.exit.i_crit_edge:        ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_lock.exit.i

do.body12.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %do.body12.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %do.body12.i.i.i.for.body.i.i.i_crit_edge
  %i.029.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %do.body12.i.i.i.for.body.i.i.i_crit_edge ]
  %lock.i.i.i = getelementptr %struct.sem_array, ptr %call.i292.i, i32 0, i32 9, i32 %i.029.i.i.i, i32 2
  call void @_raw_spin_lock(ptr noundef %lock.i.i.i) #13
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i) #13
  %inc.i.i.i = add nuw nsw i32 %i.029.i.i.i, 1
  %105 = ptrtoint ptr %sem_nsems.i71 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sem_nsems.i71, align 32
  %cmp18.i.i.i = icmp slt i32 %inc.i.i.i, %106
  br i1 %cmp18.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.sem_lock.exit.i_crit_edge

for.body.i.i.i.sem_lock.exit.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_lock.exit.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

sem_lock.exit.i:                                  ; preds = %for.body.i.i.i.sem_lock.exit.i_crit_edge, %do.body12.i.i.i.sem_lock.exit.i_crit_edge, %sw.bb.i76.sem_lock.exit.i_crit_edge
  %deleted.i.i77 = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i292.i, i32 0, i32 1
  %107 = ptrtoint ptr %deleted.i.i77 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %deleted.i.i77, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i303.i = icmp eq i8 %108, 0
  br i1 %tobool.not.i303.i, label %if.end16.i, label %sem_lock.exit.i.out_unlock.i95_crit_edge

sem_lock.exit.i.out_unlock.i95_crit_edge:         ; preds = %sem_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.i95

if.end16.i:                                       ; preds = %sem_lock.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %98)
  %cmp17.i = icmp sgt i32 %98, 256
  br i1 %cmp17.i, label %if.then19.i, label %if.end16.i.if.end34.i_crit_edge

if.end16.i.if.end34.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.then19.i:                                      ; preds = %if.end16.i
  %call21.i = call zeroext i1 @ipc_rcu_getref(ptr noundef %call.i292.i) #13
  br i1 %call21.i, label %if.end23.i78, label %if.then19.i.out_unlock.i95_crit_edge

if.then19.i.out_unlock.i95_crit_edge:             ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.i95

if.end23.i78:                                     ; preds = %if.then19.i
  call fastcc void @sem_unlock(ptr noundef %call.i292.i, i32 noundef -1) #13
  call fastcc void @rcu_read_unlock() #13
  %109 = shl nuw i32 %98, 1
  %call.i.i304.i = call noalias ptr @kvmalloc_node(i32 noundef %109, i32 noundef 3264, i32 noundef -1) #17
  %cmp25.i = icmp eq ptr %call.i.i304.i, null
  br i1 %cmp25.i, label %cleanup.thread343.i, label %if.end29.i79

cleanup.thread343.i:                              ; preds = %if.end23.i78
  call void @__sanitizer_cov_trace_pc() #15
  call void @ipc_rcu_putref(ptr noundef %call.i292.i, ptr noundef nonnull @sem_rcu_free) #13
  br label %semctl_main.exit

if.end29.i79:                                     ; preds = %if.end23.i78
  %110 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i249.i = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i.i.i.i249.i to ptr
  %preempt_count.i.i.i.i250.i = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %preempt_count.i.i.i.i250.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %preempt_count.i.i.i.i250.i, align 4
  %add.i.i.i251.i = add i32 %113, 1
  store volatile i32 %add.i.i.i251.i, ptr %preempt_count.i.i.i.i250.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !149
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i252.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i252.i, label %if.end29.i79.rcu_read_lock.exit259.i_crit_edge, label %land.lhs.true.i255.i

if.end29.i79.rcu_read_lock.exit259.i_crit_edge:   ; preds = %if.end29.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit259.i

land.lhs.true.i255.i:                             ; preds = %if.end29.i79
  %call1.i253.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i253.i)
  %tobool.not.i254.i = icmp eq i32 %call1.i253.i, 0
  br i1 %tobool.not.i254.i, label %land.lhs.true.i255.i.rcu_read_lock.exit259.i_crit_edge, label %land.lhs.true2.i257.i

land.lhs.true.i255.i.rcu_read_lock.exit259.i_crit_edge: ; preds = %land.lhs.true.i255.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit259.i

land.lhs.true2.i257.i:                            ; preds = %land.lhs.true.i255.i
  %.b4.i256.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i256.i, label %land.lhs.true2.i257.i.rcu_read_lock.exit259.i_crit_edge, label %if.then.i258.i

land.lhs.true2.i257.i.rcu_read_lock.exit259.i_crit_edge: ; preds = %land.lhs.true2.i257.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit259.i

if.then.i258.i:                                   ; preds = %land.lhs.true2.i257.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit259.i

rcu_read_lock.exit259.i:                          ; preds = %if.then.i258.i, %land.lhs.true2.i257.i.rcu_read_lock.exit259.i_crit_edge, %land.lhs.true.i255.i.rcu_read_lock.exit259.i_crit_edge, %if.end29.i79.rcu_read_lock.exit259.i_crit_edge
  call fastcc void @sem_lock_and_putref(ptr noundef %call.i292.i) #13
  %114 = ptrtoint ptr %deleted.i.i77 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %deleted.i.i77, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i306.i = icmp eq i8 %115, 0
  br i1 %tobool.not.i306.i, label %rcu_read_lock.exit259.i.if.end34.i_crit_edge, label %rcu_read_lock.exit259.i.out_unlock.i95_crit_edge

rcu_read_lock.exit259.i.out_unlock.i95_crit_edge: ; preds = %rcu_read_lock.exit259.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.i95

rcu_read_lock.exit259.i.if.end34.i_crit_edge:     ; preds = %rcu_read_lock.exit259.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.end34.i:                                       ; preds = %rcu_read_lock.exit259.i.if.end34.i_crit_edge, %if.end16.i.if.end34.i_crit_edge
  %sem_io.0.i = phi ptr [ %call.i.i304.i, %rcu_read_lock.exit259.i.if.end34.i_crit_edge ], [ %fast_sem_io.i, %if.end16.i.if.end34.i_crit_edge ]
  %116 = ptrtoint ptr %sem_nsems.i71 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %sem_nsems.i71, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp36373.i = icmp sgt i32 %117, 0
  br i1 %cmp36373.i, label %if.end34.i.for.body.i_crit_edge, label %if.end34.i.for.end.i_crit_edge

if.end34.i.for.end.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end34.i.for.body.i_crit_edge:                  ; preds = %if.end34.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end34.i.for.body.i_crit_edge
  %i.0374.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end34.i.for.body.i_crit_edge ]
  %arrayidx.i80 = getelementptr %struct.sem_array, ptr %call.i292.i, i32 0, i32 9, i32 %i.0374.i
  %118 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx.i80, align 128
  %conv38.i81 = trunc i32 %119 to i16
  %arrayidx39.i = getelementptr i16, ptr %sem_io.0.i, i32 %i.0374.i
  %120 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv38.i81, ptr %arrayidx39.i, align 2
  %inc.i = add nuw nsw i32 %i.0374.i, 1
  %121 = ptrtoint ptr %sem_nsems.i71 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sem_nsems.i71, align 32
  %cmp36.i = icmp slt i32 %inc.i, %122
  br i1 %cmp36.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end34.i.for.end.i_crit_edge
  call fastcc void @sem_unlock(ptr noundef %call.i292.i, i32 noundef -1) #13
  call fastcc void @rcu_read_unlock() #13
  %mul.i = shl i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp9.i.i.i = icmp slt i32 %mul.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %for.end.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.out_free.i_crit_edge, label %if.then27.i.i.i, !prof !144

land.rhs16.i.i.i.out_free.i_crit_edge:            ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %out_free.i

if.then.i.i.i.i:                                  ; preds = %for.end.i
  call void @__check_object_size(ptr noundef nonnull %sem_io.0.i, i32 noundef %mul.i, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #13
  %call.i.i.i85 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i85, label %if.then.i.i.i.i.cleanup.i_crit_edge, label %if.end.i.i.i88

if.then.i.i.i.i.cleanup.i_crit_edge:              ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end.i.i.i88:                                   ; preds = %if.then.i.i.i.i
  %123 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %mul.i, i32 -1226833920) #18, !srcloc !148
  %asmresult.i.i.i86 = extractvalue { i32, i32 } %123, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i86)
  %cmp.i6.i.i87 = icmp eq i32 %asmresult.i.i.i86, 0
  br i1 %cmp.i6.i.i87, label %if.then2.i.i.i91, label %if.end.i.i.i88.cleanup.i_crit_edge

if.end.i.i.i88.cleanup.i_crit_edge:               ; preds = %if.end.i.i.i88
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.then2.i.i.i91:                                 ; preds = %if.end.i.i.i88
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i89 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sem_io.0.i, i32 noundef %mul.i) #13
  %call.i12.i.i.i90 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %sem_io.0.i, i32 noundef %mul.i) #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then2.i.i.i91, %if.end.i.i.i88.cleanup.i_crit_edge, %if.then.i.i.i.i.cleanup.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %mul.i, %if.then.i.i.i.i.cleanup.i_crit_edge ], [ %call.i12.i.i.i90, %if.then2.i.i.i91 ], [ %mul.i, %if.end.i.i.i88.cleanup.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool41.not.i = icmp eq i32 %n.addr.0.i.i, 0
  %spec.select.i92 = select i1 %tobool41.not.i, i32 0, i32 -14
  br label %out_free.i

sw.bb45.i:                                        ; preds = %if.end11.i
  %call48.i = call zeroext i1 @ipc_rcu_getref(ptr noundef %call.i292.i) #13
  br i1 %call48.i, label %if.end50.i, label %sw.bb45.i.out_rcu_wakeup.i_crit_edge

sw.bb45.i.out_rcu_wakeup.i_crit_edge:             ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_rcu_wakeup.i

if.end50.i:                                       ; preds = %sw.bb45.i
  call fastcc void @rcu_read_unlock() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %98)
  %cmp51.i = icmp sgt i32 %98, 256
  %124 = shl i32 %98, 1
  br i1 %cmp51.i, label %kvmalloc_array.exit310.i, label %if.end50.i.if.end8.i.i268.i_crit_edge

if.end50.i.if.end8.i.i268.i_crit_edge:            ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i268.i

kvmalloc_array.exit310.i:                         ; preds = %if.end50.i
  %call.i.i307.i = call noalias ptr @kvmalloc_node(i32 noundef %124, i32 noundef 3264, i32 noundef -1) #17
  %cmp55.i = icmp eq ptr %call.i.i307.i, null
  br i1 %cmp55.i, label %cleanup124.thread360.i, label %kvmalloc_array.exit310.i.if.end8.i.i268.i_crit_edge

kvmalloc_array.exit310.i.if.end8.i.i268.i_crit_edge: ; preds = %kvmalloc_array.exit310.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i268.i

cleanup124.thread360.i:                           ; preds = %kvmalloc_array.exit310.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @ipc_rcu_putref(ptr noundef %call.i292.i, ptr noundef nonnull @sem_rcu_free) #13
  br label %semctl_main.exit

if.end8.i.i268.i:                                 ; preds = %kvmalloc_array.exit310.i.if.end8.i.i268.i_crit_edge, %if.end50.i.if.end8.i.i268.i_crit_edge
  %sem_io.2.i = phi ptr [ %call.i.i307.i, %kvmalloc_array.exit310.i.if.end8.i.i268.i_crit_edge ], [ %fast_sem_io.i, %if.end50.i.if.end8.i.i268.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp9.i.i267.i = icmp slt i32 %124, 0
  br i1 %cmp9.i.i267.i, label %land.rhs16.i.i270.i, label %if.then.i.i.i273.i

land.rhs16.i.i270.i:                              ; preds = %if.end8.i.i268.i
  %.b71.i.i269.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i269.i, label %land.rhs16.i.i270.i.if.then64.i_crit_edge, label %if.then27.i.i271.i, !prof !144

land.rhs16.i.i270.i.if.then64.i_crit_edge:        ; preds = %land.rhs16.i.i270.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then64.i

if.then27.i.i271.i:                               ; preds = %land.rhs16.i.i270.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %if.then64.i

if.then.i.i.i273.i:                               ; preds = %if.end8.i.i268.i
  call void @__check_object_size(ptr noundef nonnull %sem_io.2.i, i32 noundef %124, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #13
  %call.i.i274.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i274.i, label %if.then.i.i.i273.i.if.end.i.i279.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i273.i.if.end.i.i279.i_crit_edge:     ; preds = %if.then.i.i.i273.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i279.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i273.i
  %125 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %124, i32 -1226833920) #18, !srcloc !151
  %asmresult.i.i276.i = extractvalue { i32, i32 } %125, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i276.i)
  %cmp.i6.i277.i = icmp eq i32 %asmresult.i.i276.i, 0
  br i1 %cmp.i6.i277.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i279.i_crit_edge, !prof !144

land.lhs.true.i.i.i.if.end.i.i279.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i279.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i278.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sem_io.2.i, i32 noundef %124) #13
  %126 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i.i.i = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 4
  %128 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #10, !srcloc !152
  %and.i.i.i.i.i = and i32 %128, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !154
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %sem_io.2.i, ptr noundef %0, i32 noundef %124) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %128) #13, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !154
  br label %if.end.i.i279.i

if.end.i.i279.i:                                  ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i279.i_crit_edge, %if.then.i.i.i273.i.if.end.i.i279.i_crit_edge
  %res.0.i.i.i = phi i32 [ %124, %if.then.i.i.i273.i.if.end.i.i279.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %124, %land.lhs.true.i.i.i.if.end.i.i279.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %for.cond67.preheader.i, label %if.then11.i.i.i, !prof !144

for.cond67.preheader.i:                           ; preds = %if.end.i.i279.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp68364.i = icmp sgt i32 %98, 0
  br i1 %cmp68364.i, label %for.cond67.preheader.i.for.body70.i_crit_edge, label %for.cond67.preheader.i.for.end80.i_crit_edge

for.cond67.preheader.i.for.end80.i_crit_edge:     ; preds = %for.cond67.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end80.i

for.cond67.preheader.i.for.body70.i_crit_edge:    ; preds = %for.cond67.preheader.i
  br label %for.body70.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i279.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = sub i32 %124, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %sem_io.2.i, i32 %sub.i.i.i
  %129 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %if.then64.i

if.then64.i:                                      ; preds = %if.then11.i.i.i, %if.then27.i.i271.i, %land.rhs16.i.i270.i.if.then64.i_crit_edge
  call void @ipc_rcu_putref(ptr noundef %call.i292.i, ptr noundef nonnull @sem_rcu_free) #13
  br label %out_free.i

for.cond67.i:                                     ; preds = %for.body70.i
  %inc79.i = add nuw nsw i32 %i46.0365.i, 1
  %exitcond.not.i = icmp eq i32 %inc79.i, %98
  br i1 %exitcond.not.i, label %for.cond67.i.for.end80.i_crit_edge, label %for.cond67.i.for.body70.i_crit_edge

for.cond67.i.for.body70.i_crit_edge:              ; preds = %for.cond67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body70.i

for.cond67.i.for.end80.i_crit_edge:               ; preds = %for.cond67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end80.i

for.body70.i:                                     ; preds = %for.cond67.i.for.body70.i_crit_edge, %for.cond67.preheader.i.for.body70.i_crit_edge
  %i46.0365.i = phi i32 [ %inc79.i, %for.cond67.i.for.body70.i_crit_edge ], [ 0, %for.cond67.preheader.i.for.body70.i_crit_edge ]
  %arrayidx71.i = getelementptr i16, ptr %sem_io.2.i, i32 %i46.0365.i
  %130 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx71.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %cmp73.i = icmp slt i16 %131, 0
  br i1 %cmp73.i, label %if.then75.i, label %for.cond67.i

if.then75.i:                                      ; preds = %for.body70.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @ipc_rcu_putref(ptr noundef %call.i292.i, ptr noundef nonnull @sem_rcu_free) #13
  br label %out_free.i

for.end80.i:                                      ; preds = %for.cond67.i.for.end80.i_crit_edge, %for.cond67.preheader.i.for.end80.i_crit_edge
  %132 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i281.i = and i32 %132, -16384
  %133 = inttoptr i32 %and.i.i.i.i.i281.i to ptr
  %preempt_count.i.i.i.i282.i = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %preempt_count.i.i.i.i282.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %preempt_count.i.i.i.i282.i, align 4
  %add.i.i.i283.i = add i32 %135, 1
  store volatile i32 %add.i.i.i283.i, ptr %preempt_count.i.i.i.i282.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !149
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i284.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i284.i, label %for.end80.i.rcu_read_lock.exit291.i_crit_edge, label %land.lhs.true.i287.i

for.end80.i.rcu_read_lock.exit291.i_crit_edge:    ; preds = %for.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit291.i

land.lhs.true.i287.i:                             ; preds = %for.end80.i
  %call1.i285.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i285.i)
  %tobool.not.i286.i = icmp eq i32 %call1.i285.i, 0
  br i1 %tobool.not.i286.i, label %land.lhs.true.i287.i.rcu_read_lock.exit291.i_crit_edge, label %land.lhs.true2.i289.i

land.lhs.true.i287.i.rcu_read_lock.exit291.i_crit_edge: ; preds = %land.lhs.true.i287.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit291.i

land.lhs.true2.i289.i:                            ; preds = %land.lhs.true.i287.i
  %.b4.i288.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i288.i, label %land.lhs.true2.i289.i.rcu_read_lock.exit291.i_crit_edge, label %if.then.i290.i

land.lhs.true2.i289.i.rcu_read_lock.exit291.i_crit_edge: ; preds = %land.lhs.true2.i289.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit291.i

if.then.i290.i:                                   ; preds = %land.lhs.true2.i289.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit291.i

rcu_read_lock.exit291.i:                          ; preds = %if.then.i290.i, %land.lhs.true2.i289.i.rcu_read_lock.exit291.i_crit_edge, %land.lhs.true.i287.i.rcu_read_lock.exit291.i_crit_edge, %for.end80.i.rcu_read_lock.exit291.i_crit_edge
  call fastcc void @sem_lock_and_putref(ptr noundef %call.i292.i) #13
  %deleted.i311.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i292.i, i32 0, i32 1
  %136 = ptrtoint ptr %deleted.i311.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %deleted.i311.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.not.i312.i = icmp eq i8 %137, 0
  br i1 %tobool.not.i312.i, label %for.cond85.preheader.i, label %rcu_read_lock.exit291.i.out_unlock.i95_crit_edge

rcu_read_lock.exit291.i.out_unlock.i95_crit_edge: ; preds = %rcu_read_lock.exit291.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.i95

for.cond85.preheader.i:                           ; preds = %rcu_read_lock.exit291.i
  br i1 %cmp68364.i, label %for.cond85.preheader.i.for.body88.i_crit_edge, label %for.cond85.preheader.i.for.end100.i_crit_edge

for.cond85.preheader.i.for.end100.i_crit_edge:    ; preds = %for.cond85.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end100.i

for.cond85.preheader.i.for.body88.i_crit_edge:    ; preds = %for.cond85.preheader.i
  br label %for.body88.i

for.body88.i:                                     ; preds = %ipc_update_pid.exit.i.for.body88.i_crit_edge, %for.cond85.preheader.i.for.body88.i_crit_edge
  %i46.1367.i = phi i32 [ %inc99.i, %ipc_update_pid.exit.i.for.body88.i_crit_edge ], [ 0, %for.cond85.preheader.i.for.body88.i_crit_edge ]
  %arrayidx89.i = getelementptr i16, ptr %sem_io.2.i, i32 %i46.1367.i
  %138 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %arrayidx89.i, align 2
  %conv90.i = zext i16 %139 to i32
  %arrayidx92.i = getelementptr %struct.sem_array, ptr %call.i292.i, i32 0, i32 9, i32 %i46.1367.i
  %140 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %conv90.i, ptr %arrayidx92.i, align 128
  %sempid.i = getelementptr %struct.sem_array, ptr %call.i292.i, i32 0, i32 9, i32 %i46.1367.i, i32 1
  %141 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i = and i32 %141, -16384
  %142 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %144, i32 0, i32 111
  %145 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %146, i32 0, i32 22, i32 1
  %147 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.i.i, align 4
  %149 = ptrtoint ptr %sempid.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %sempid.i, align 4
  %cmp.not.i.i = icmp eq ptr %150, %148
  br i1 %cmp.not.i.i, label %for.body88.i.ipc_update_pid.exit.i_crit_edge, label %if.then.i313.i

for.body88.i.ipc_update_pid.exit.i_crit_edge:     ; preds = %for.body88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_update_pid.exit.i

if.then.i313.i:                                   ; preds = %for.body88.i
  %tobool.not.i.i.i = icmp eq ptr %148, null
  br i1 %tobool.not.i.i.i, label %if.then.i313.i.get_pid.exit.i.i_crit_edge, label %if.then.i.i314.i

if.then.i313.i.get_pid.exit.i.i_crit_edge:        ; preds = %if.then.i313.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit.i.i

if.then.i.i314.i:                                 ; preds = %if.then.i313.i
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %148, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr nonnull %148, i32 1, i32 3, i32 1) #13
  %151 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %148, ptr nonnull %148, i32 1, ptr nonnull elementtype(i32) %148) #13, !srcloc !143
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %151, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i314.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !141

if.then.i.i314.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i314.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i314.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %152 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %152)
  %.not.i.i.i.i.i.i = icmp sgt i32 %152, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.get_pid.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.get_pid.exit.i.i_crit_edge:   ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i314.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i314.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %148, i32 noundef %.sink.i.i.i.i.i.i) #13
  br label %get_pid.exit.i.i

get_pid.exit.i.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.get_pid.exit.i.i_crit_edge, %if.then.i313.i.get_pid.exit.i.i_crit_edge
  %153 = ptrtoint ptr %sempid.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %148, ptr %sempid.i, align 4
  call void @put_pid(ptr noundef %150) #13
  br label %ipc_update_pid.exit.i

ipc_update_pid.exit.i:                            ; preds = %get_pid.exit.i.i, %for.body88.i.ipc_update_pid.exit.i_crit_edge
  %inc99.i = add nuw nsw i32 %i46.1367.i, 1
  %exitcond375.not.i = icmp eq i32 %inc99.i, %98
  br i1 %exitcond375.not.i, label %ipc_update_pid.exit.i.for.end100.i_crit_edge, label %ipc_update_pid.exit.i.for.body88.i_crit_edge

ipc_update_pid.exit.i.for.body88.i_crit_edge:     ; preds = %ipc_update_pid.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body88.i

ipc_update_pid.exit.i.for.end100.i_crit_edge:     ; preds = %ipc_update_pid.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end100.i

for.end100.i:                                     ; preds = %ipc_update_pid.exit.i.for.end100.i_crit_edge, %for.cond85.preheader.i.for.end100.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %154 = ptrtoint ptr %call.i292.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %call.i292.i, align 4
  %155 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %ipc_assert_locked_object.exit.i, !prof !141

do.body4.i.i:                                     ; preds = %for.end100.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22ipc/util.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #13, !srcloc !142
  unreachable

ipc_assert_locked_object.exit.i:                  ; preds = %for.end100.i
  %list_id.i = getelementptr inbounds %struct.sem_array, ptr %call.i292.i, i32 0, i32 4
  %156 = ptrtoint ptr %list_id.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %.pn370.i = load ptr, ptr %list_id.i, align 4
  %cmp105.not371.i = icmp eq ptr %.pn370.i, %list_id.i
  br i1 %cmp105.not371.i, label %ipc_assert_locked_object.exit.i.for.end122.i_crit_edge, label %ipc_assert_locked_object.exit.i.for.cond108.preheader.i_crit_edge

ipc_assert_locked_object.exit.i.for.cond108.preheader.i_crit_edge: ; preds = %ipc_assert_locked_object.exit.i
  br label %for.cond108.preheader.i

ipc_assert_locked_object.exit.i.for.end122.i_crit_edge: ; preds = %ipc_assert_locked_object.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end122.i

for.cond102.loopexit.i:                           ; preds = %for.body111.i.for.cond102.loopexit.i_crit_edge, %for.cond108.preheader.i.for.cond102.loopexit.i_crit_edge
  %157 = ptrtoint ptr %.pn372.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %.pn.i = load ptr, ptr %.pn372.i, align 4
  %cmp105.not.i = icmp eq ptr %.pn.i, %list_id.i
  br i1 %cmp105.not.i, label %for.cond102.loopexit.i.for.end122.i_crit_edge, label %for.cond102.loopexit.i.for.cond108.preheader.i_crit_edge

for.cond102.loopexit.i.for.cond108.preheader.i_crit_edge: ; preds = %for.cond102.loopexit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond108.preheader.i

for.cond102.loopexit.i.for.end122.i_crit_edge:    ; preds = %for.cond102.loopexit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end122.i

for.cond108.preheader.i:                          ; preds = %for.cond102.loopexit.i.for.cond108.preheader.i_crit_edge, %ipc_assert_locked_object.exit.i.for.cond108.preheader.i_crit_edge
  %.pn372.i = phi ptr [ %.pn.i, %for.cond102.loopexit.i.for.cond108.preheader.i_crit_edge ], [ %.pn370.i, %ipc_assert_locked_object.exit.i.for.cond108.preheader.i_crit_edge ]
  br i1 %cmp68364.i, label %for.body111.lr.ph.i, label %for.cond108.preheader.i.for.cond102.loopexit.i_crit_edge

for.cond108.preheader.i.for.cond102.loopexit.i_crit_edge: ; preds = %for.cond108.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond102.loopexit.i

for.body111.lr.ph.i:                              ; preds = %for.cond108.preheader.i
  %semadj.i = getelementptr i8, ptr %.pn372.i, i32 12
  br label %for.body111.i

for.body111.i:                                    ; preds = %for.body111.i.for.body111.i_crit_edge, %for.body111.lr.ph.i
  %i46.2369.i = phi i32 [ 0, %for.body111.lr.ph.i ], [ %inc114.i, %for.body111.i.for.body111.i_crit_edge ]
  %158 = ptrtoint ptr %semadj.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %semadj.i, align 4
  %arrayidx112.i = getelementptr i16, ptr %159, i32 %i46.2369.i
  %160 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 0, ptr %arrayidx112.i, align 2
  %inc114.i = add nuw nsw i32 %i46.2369.i, 1
  %exitcond376.not.i = icmp eq i32 %inc114.i, %98
  br i1 %exitcond376.not.i, label %for.body111.i.for.cond102.loopexit.i_crit_edge, label %for.body111.i.for.body111.i_crit_edge

for.body111.i.for.body111.i_crit_edge:            ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body111.i

for.body111.i.for.cond102.loopexit.i_crit_edge:   ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond102.loopexit.i

for.end122.i:                                     ; preds = %for.cond102.loopexit.i.for.end122.i_crit_edge, %ipc_assert_locked_object.exit.i.for.end122.i_crit_edge
  %call123.i = call i64 @ktime_get_real_seconds() #13
  %sem_ctime.i93 = getelementptr inbounds %struct.sem_array, ptr %call.i292.i, i32 0, i32 1
  %161 = ptrtoint ptr %sem_ctime.i93 to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 %call123.i, ptr %sem_ctime.i93, align 128
  call fastcc void @do_smart_update(ptr noundef %call.i292.i, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %wake_q.i) #13
  br label %out_unlock.i95

sw.epilog.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %semnum)
  %cmp126.i = icmp sgt i32 %semnum, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %semnum)
  %cmp128.not.i = icmp sgt i32 %98, %semnum
  %or.cond.i = select i1 %cmp126.i, i1 %cmp128.not.i, i1 false
  br i1 %or.cond.i, label %if.end131.i, label %sw.epilog.i.out_rcu_wakeup.i_crit_edge

sw.epilog.i.out_rcu_wakeup.i_crit_edge:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_rcu_wakeup.i

if.end131.i:                                      ; preds = %sw.epilog.i
  %call132.i = call fastcc i32 @sem_lock(ptr noundef %call.i292.i, ptr noundef null, i32 noundef -1) #13
  %deleted.i316.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i292.i, i32 0, i32 1
  %162 = ptrtoint ptr %deleted.i316.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %deleted.i316.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool.not.i317.i = icmp eq i8 %163, 0
  br i1 %tobool.not.i317.i, label %if.end136.i, label %if.end131.i.out_unlock.i95_crit_edge

if.end131.i.out_unlock.i95_crit_edge:             ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.i95

if.end136.i:                                      ; preds = %if.end131.i
  %164 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %semnum, i32 %98) #13, !srcloc !155
  %and.i94 = and i32 %164, %semnum
  %165 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %cmd, label %if.end136.i.out_unlock.i95_crit_edge [
    i32 12, label %sw.bb144.i
    i32 11, label %sw.bb146.i
    i32 14, label %sw.bb149.i
    i32 15, label %sw.bb152.i
  ]

if.end136.i.out_unlock.i95_crit_edge:             ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock.i95

sw.bb144.i:                                       ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx143.i = getelementptr %struct.sem_array, ptr %call.i292.i, i32 0, i32 9, i32 %and.i94
  %166 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx143.i, align 128
  br label %out_unlock.i95

sw.bb146.i:                                       ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #15
  %sempid147.i = getelementptr %struct.sem_array, ptr %call.i292.i, i32 0, i32 9, i32 %and.i94, i32 1
  %168 = ptrtoint ptr %sempid147.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %sempid147.i, align 4
  %call148.i = call i32 @pid_vnr(ptr noundef %169) #13
  br label %out_unlock.i95

sw.bb149.i:                                       ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv150.i = trunc i32 %and.i94 to i16
  %call151.i = call fastcc i32 @count_semcnt(ptr noundef %call.i292.i, i16 noundef zeroext %conv150.i, i1 noundef zeroext false) #13
  br label %out_unlock.i95

sw.bb152.i:                                       ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv153.i = trunc i32 %and.i94 to i16
  %call154.i = call fastcc i32 @count_semcnt(ptr noundef %call.i292.i, i16 noundef zeroext %conv153.i, i1 noundef zeroext true) #13
  br label %out_unlock.i95

out_unlock.i95:                                   ; preds = %sw.bb152.i, %sw.bb149.i, %sw.bb146.i, %sw.bb144.i, %if.end136.i.out_unlock.i95_crit_edge, %if.end131.i.out_unlock.i95_crit_edge, %for.end122.i, %rcu_read_lock.exit291.i.out_unlock.i95_crit_edge, %rcu_read_lock.exit259.i.out_unlock.i95_crit_edge, %if.then19.i.out_unlock.i95_crit_edge, %sem_lock.exit.i.out_unlock.i95_crit_edge
  %sem_io.4.i = phi ptr [ %fast_sem_io.i, %if.end136.i.out_unlock.i95_crit_edge ], [ %fast_sem_io.i, %sw.bb152.i ], [ %fast_sem_io.i, %sw.bb149.i ], [ %fast_sem_io.i, %sw.bb146.i ], [ %fast_sem_io.i, %sw.bb144.i ], [ %fast_sem_io.i, %if.end131.i.out_unlock.i95_crit_edge ], [ %call.i.i304.i, %rcu_read_lock.exit259.i.out_unlock.i95_crit_edge ], [ %fast_sem_io.i, %if.then19.i.out_unlock.i95_crit_edge ], [ %fast_sem_io.i, %sem_lock.exit.i.out_unlock.i95_crit_edge ], [ %sem_io.2.i, %for.end122.i ], [ %sem_io.2.i, %rcu_read_lock.exit291.i.out_unlock.i95_crit_edge ]
  %err.3.i = phi i32 [ -22, %if.end136.i.out_unlock.i95_crit_edge ], [ %call154.i, %sw.bb152.i ], [ %call151.i, %sw.bb149.i ], [ %call148.i, %sw.bb146.i ], [ %167, %sw.bb144.i ], [ -43, %if.end131.i.out_unlock.i95_crit_edge ], [ -43, %rcu_read_lock.exit259.i.out_unlock.i95_crit_edge ], [ -43, %if.then19.i.out_unlock.i95_crit_edge ], [ -43, %sem_lock.exit.i.out_unlock.i95_crit_edge ], [ 0, %for.end122.i ], [ -43, %rcu_read_lock.exit291.i.out_unlock.i95_crit_edge ]
  %complex_count.i.i.i = getelementptr inbounds %struct.sem_array, ptr %call.i292.i, i32 0, i32 6
  %170 = ptrtoint ptr %complex_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %complex_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool.not.i.i318.i = icmp eq i32 %171, 0
  br i1 %tobool.not.i.i318.i, label %if.end.i.i320.i, label %out_unlock.i95.sem_unlock.exit.i_crit_edge

out_unlock.i95.sem_unlock.exit.i_crit_edge:       ; preds = %out_unlock.i95
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_unlock.exit.i

if.end.i.i320.i:                                  ; preds = %out_unlock.i95
  %pending_alter.i.i.i = getelementptr inbounds %struct.sem_array, ptr %call.i292.i, i32 0, i32 2
  %172 = ptrtoint ptr %pending_alter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pending_alter.i.i.i, align 8
  %cmp.not26.i.i.i = icmp eq ptr %173, %pending_alter.i.i.i
  br i1 %cmp.not26.i.i.i, label %if.end.i.i320.i.unmerge_queues.exit.i.i_crit_edge, label %if.end.i.i320.i.for.body.i.i321.i_crit_edge

if.end.i.i320.i.for.body.i.i321.i_crit_edge:      ; preds = %if.end.i.i320.i
  br label %for.body.i.i321.i

if.end.i.i320.i.unmerge_queues.exit.i.i_crit_edge: ; preds = %if.end.i.i320.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmerge_queues.exit.i.i

for.body.i.i321.i:                                ; preds = %list_add_tail.exit.i.i.i.for.body.i.i321.i_crit_edge, %if.end.i.i320.i.for.body.i.i321.i_crit_edge
  %q.027.i.i.i = phi ptr [ %tq.0.i.i.i, %list_add_tail.exit.i.i.i.for.body.i.i321.i_crit_edge ], [ %173, %if.end.i.i320.i.for.body.i.i321.i_crit_edge ]
  %174 = ptrtoint ptr %q.027.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %tq.0.i.i.i = load ptr, ptr %q.027.i.i.i, align 4
  %sops.i.i.i = getelementptr inbounds %struct.sem_queue, ptr %q.027.i.i.i, i32 0, i32 5
  %175 = ptrtoint ptr %sops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %sops.i.i.i, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %176, align 2
  %idxprom.i.i.i = zext i16 %178 to i32
  %pending_alter9.i.i.i = getelementptr %struct.sem_array, ptr %call.i292.i, i32 0, i32 9, i32 %idxprom.i.i.i, i32 3
  %prev.i.i.i.i = getelementptr %struct.sem_array, ptr %call.i292.i, i32 0, i32 9, i32 %idxprom.i.i.i, i32 3, i32 1
  %179 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %q.027.i.i.i, ptr noundef %180, ptr noundef %pending_alter9.i.i.i) #13
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body.i.i321.i.list_add_tail.exit.i.i.i_crit_edge

for.body.i.i321.i.list_add_tail.exit.i.i.i_crit_edge: ; preds = %for.body.i.i321.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i321.i
  call void @__sanitizer_cov_trace_pc() #15
  %181 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %q.027.i.i.i, ptr %prev.i.i.i.i, align 4
  %182 = ptrtoint ptr %q.027.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %pending_alter9.i.i.i, ptr %q.027.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %q.027.i.i.i, i32 0, i32 1
  %183 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %180, ptr %prev3.i.i.i.i.i, align 4
  %184 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %184)
  store volatile ptr %q.027.i.i.i, ptr %180, align 4
  br label %list_add_tail.exit.i.i.i

list_add_tail.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %for.body.i.i321.i.list_add_tail.exit.i.i.i_crit_edge
  %cmp.not.i.i322.i = icmp eq ptr %tq.0.i.i.i, %pending_alter.i.i.i
  br i1 %cmp.not.i.i322.i, label %list_add_tail.exit.i.i.i.unmerge_queues.exit.i.i_crit_edge, label %list_add_tail.exit.i.i.i.for.body.i.i321.i_crit_edge

list_add_tail.exit.i.i.i.for.body.i.i321.i_crit_edge: ; preds = %list_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i321.i

list_add_tail.exit.i.i.i.unmerge_queues.exit.i.i_crit_edge: ; preds = %list_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmerge_queues.exit.i.i

unmerge_queues.exit.i.i:                          ; preds = %list_add_tail.exit.i.i.i.unmerge_queues.exit.i.i_crit_edge, %if.end.i.i320.i.unmerge_queues.exit.i.i_crit_edge
  %185 = ptrtoint ptr %pending_alter.i.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store volatile ptr %pending_alter.i.i.i, ptr %pending_alter.i.i.i, align 4
  %prev.i25.i.i.i = getelementptr inbounds %struct.sem_array, ptr %call.i292.i, i32 0, i32 2, i32 1
  %186 = ptrtoint ptr %prev.i25.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %pending_alter.i.i.i, ptr %prev.i25.i.i.i, align 4
  %187 = ptrtoint ptr %complex_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %.pr.i.i = load i32, ptr %complex_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %tobool.not.i6.i.i, label %if.end.i7.i.i, label %unmerge_queues.exit.i.i.sem_unlock.exit.i_crit_edge

unmerge_queues.exit.i.i.sem_unlock.exit.i_crit_edge: ; preds = %unmerge_queues.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_unlock.exit.i

if.end.i7.i.i:                                    ; preds = %unmerge_queues.exit.i.i
  %use_global_lock.i.i323.i = getelementptr inbounds %struct.sem_array, ptr %call.i292.i, i32 0, i32 7
  %188 = ptrtoint ptr %use_global_lock.i.i323.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %use_global_lock.i.i323.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %189)
  %cmp.i.i324.i = icmp eq i32 %189, 1
  br i1 %cmp.i.i324.i, label %do.end5.i.i.i, label %do.body18.i.i.i

do.end5.i.i.i:                                    ; preds = %if.end.i7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !146
  br label %if.end23.sink.split.i.i.i

do.body18.i.i.i:                                  ; preds = %if.end.i7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i325.i = add i32 %189, -1
  br label %if.end23.sink.split.i.i.i

if.end23.sink.split.i.i.i:                        ; preds = %do.body18.i.i.i, %do.end5.i.i.i
  %sub.sink.i.i.i = phi i32 [ %sub.i.i325.i, %do.body18.i.i.i ], [ 0, %do.end5.i.i.i ]
  %190 = ptrtoint ptr %use_global_lock.i.i323.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile i32 %sub.sink.i.i.i, ptr %use_global_lock.i.i323.i, align 8
  br label %sem_unlock.exit.i

sem_unlock.exit.i:                                ; preds = %if.end23.sink.split.i.i.i, %unmerge_queues.exit.i.i.sem_unlock.exit.i_crit_edge, %out_unlock.i95.sem_unlock.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %call.i292.i) #13
  br label %out_rcu_wakeup.i

out_rcu_wakeup.i:                                 ; preds = %sem_unlock.exit.i, %sw.epilog.i.out_rcu_wakeup.i_crit_edge, %sw.bb45.i.out_rcu_wakeup.i_crit_edge, %if.end6.i.out_rcu_wakeup.i_crit_edge, %if.end.i75.out_rcu_wakeup.i_crit_edge
  %sem_io.5.i = phi ptr [ %fast_sem_io.i, %if.end.i75.out_rcu_wakeup.i_crit_edge ], [ %fast_sem_io.i, %if.end6.i.out_rcu_wakeup.i_crit_edge ], [ %fast_sem_io.i, %sw.epilog.i.out_rcu_wakeup.i_crit_edge ], [ %sem_io.4.i, %sem_unlock.exit.i ], [ %fast_sem_io.i, %sw.bb45.i.out_rcu_wakeup.i_crit_edge ]
  %err.4.i = phi i32 [ -13, %if.end.i75.out_rcu_wakeup.i_crit_edge ], [ %call8.i, %if.end6.i.out_rcu_wakeup.i_crit_edge ], [ -22, %sw.epilog.i.out_rcu_wakeup.i_crit_edge ], [ %err.3.i, %sem_unlock.exit.i ], [ -43, %sw.bb45.i.out_rcu_wakeup.i_crit_edge ]
  %call.i327.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i327.i, label %out_rcu_wakeup.i.rcu_read_unlock.exit337.i_crit_edge, label %land.lhs.true.i330.i

out_rcu_wakeup.i.rcu_read_unlock.exit337.i_crit_edge: ; preds = %out_rcu_wakeup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit337.i

land.lhs.true.i330.i:                             ; preds = %out_rcu_wakeup.i
  %call1.i328.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i328.i)
  %tobool.not.i329.i = icmp eq i32 %call1.i328.i, 0
  br i1 %tobool.not.i329.i, label %land.lhs.true.i330.i.rcu_read_unlock.exit337.i_crit_edge, label %land.lhs.true2.i332.i

land.lhs.true.i330.i.rcu_read_unlock.exit337.i_crit_edge: ; preds = %land.lhs.true.i330.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit337.i

land.lhs.true2.i332.i:                            ; preds = %land.lhs.true.i330.i
  %.b4.i331.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i331.i, label %land.lhs.true2.i332.i.rcu_read_unlock.exit337.i_crit_edge, label %if.then.i333.i

land.lhs.true2.i332.i.rcu_read_unlock.exit337.i_crit_edge: ; preds = %land.lhs.true2.i332.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit337.i

if.then.i333.i:                                   ; preds = %land.lhs.true2.i332.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit337.i

rcu_read_unlock.exit337.i:                        ; preds = %if.then.i333.i, %land.lhs.true2.i332.i.rcu_read_unlock.exit337.i_crit_edge, %land.lhs.true.i330.i.rcu_read_unlock.exit337.i_crit_edge, %out_rcu_wakeup.i.rcu_read_unlock.exit337.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %191 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i334.i = and i32 %191, -16384
  %192 = inttoptr i32 %and.i.i.i.i.i334.i to ptr
  %preempt_count.i.i.i.i335.i = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %preempt_count.i.i.i.i335.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %preempt_count.i.i.i.i335.i, align 4
  %sub.i.i.i336.i = add i32 %194, -1
  store volatile i32 %sub.i.i.i336.i, ptr %preempt_count.i.i.i.i335.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @wake_up_q(ptr noundef nonnull %wake_q.i) #13
  br label %out_free.i

out_free.i:                                       ; preds = %rcu_read_unlock.exit337.i, %if.then75.i, %if.then64.i, %cleanup.i, %if.then27.i.i.i, %land.rhs16.i.i.i.out_free.i_crit_edge
  %sem_io.6.i = phi ptr [ %sem_io.5.i, %rcu_read_unlock.exit337.i ], [ %sem_io.2.i, %if.then64.i ], [ %sem_io.2.i, %if.then75.i ], [ %sem_io.0.i, %if.then27.i.i.i ], [ %sem_io.0.i, %land.rhs16.i.i.i.out_free.i_crit_edge ], [ %sem_io.0.i, %cleanup.i ]
  %err.5.i = phi i32 [ %err.4.i, %rcu_read_unlock.exit337.i ], [ -14, %if.then64.i ], [ -34, %if.then75.i ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.out_free.i_crit_edge ], [ %spec.select.i92, %cleanup.i ]
  %cmp158.not.i = icmp eq ptr %sem_io.6.i, %fast_sem_io.i
  br i1 %cmp158.not.i, label %out_free.i.semctl_main.exit_crit_edge, label %if.then160.i

out_free.i.semctl_main.exit_crit_edge:            ; preds = %out_free.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %semctl_main.exit

if.then160.i:                                     ; preds = %out_free.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kvfree(ptr noundef %sem_io.6.i) #13
  br label %semctl_main.exit

semctl_main.exit:                                 ; preds = %if.then160.i, %out_free.i.semctl_main.exit_crit_edge, %cleanup124.thread360.i, %cleanup.thread343.i, %rcu_read_unlock.exit.i
  %retval.2.i = phi i32 [ %96, %rcu_read_unlock.exit.i ], [ %err.5.i, %if.then160.i ], [ %err.5.i, %out_free.i.semctl_main.exit_crit_edge ], [ -12, %cleanup.thread343.i ], [ -12, %cleanup124.thread360.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q.i) #13
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %fast_sem_io.i) #13
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q.i97) #13
  %195 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q.i97, i32 0, i32 1
  %196 = ptrtoint ptr %wake_q.i97 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q.i97, align 4
  %197 = ptrtoint ptr %195 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %wake_q.i97, ptr %195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %arg)
  %198 = icmp ugt i32 %arg, 32767
  br i1 %198, label %sw.bb12.semctl_setval.exit_crit_edge, label %if.end.i102

sw.bb12.semctl_setval.exit_crit_edge:             ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #15
  br label %semctl_setval.exit

if.end.i102:                                      ; preds = %sw.bb12
  %199 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i.i98 = and i32 %199, -16384
  %200 = inttoptr i32 %and.i.i.i.i.i.i98 to ptr
  %preempt_count.i.i.i.i.i99 = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %preempt_count.i.i.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile i32, ptr %preempt_count.i.i.i.i.i99, align 4
  %add.i.i.i.i100 = add i32 %202, 1
  store volatile i32 %add.i.i.i.i100, ptr %preempt_count.i.i.i.i.i99, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !149
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i101 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i101, label %if.end.i102.rcu_read_lock.exit.i110_crit_edge, label %land.lhs.true.i.i105

if.end.i102.rcu_read_lock.exit.i110_crit_edge:    ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i110

land.lhs.true.i.i105:                             ; preds = %if.end.i102
  %call1.i.i103 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i103)
  %tobool.not.i.i104 = icmp eq i32 %call1.i.i103, 0
  br i1 %tobool.not.i.i104, label %land.lhs.true.i.i105.rcu_read_lock.exit.i110_crit_edge, label %land.lhs.true2.i.i107

land.lhs.true.i.i105.rcu_read_lock.exit.i110_crit_edge: ; preds = %land.lhs.true.i.i105
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i110

land.lhs.true2.i.i107:                            ; preds = %land.lhs.true.i.i105
  %.b4.i.i106 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i106, label %land.lhs.true2.i.i107.rcu_read_lock.exit.i110_crit_edge, label %if.then.i.i108

land.lhs.true2.i.i107.rcu_read_lock.exit.i110_crit_edge: ; preds = %land.lhs.true2.i.i107
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i110

if.then.i.i108:                                   ; preds = %land.lhs.true2.i.i107
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit.i110

rcu_read_lock.exit.i110:                          ; preds = %if.then.i.i108, %land.lhs.true2.i.i107.rcu_read_lock.exit.i110_crit_edge, %land.lhs.true.i.i105.rcu_read_lock.exit.i110_crit_edge, %if.end.i102.rcu_read_lock.exit.i110_crit_edge
  %call.i74.i = call ptr @ipc_obtain_object_check(ptr noundef %9, i32 noundef %semid) #13
  %cmp.i.i109 = icmp ugt ptr %call.i74.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i109, label %if.then4.i, label %if.end6.i113

if.then4.i:                                       ; preds = %rcu_read_lock.exit.i110
  %call.i75.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i75.i, label %if.then4.i.rcu_read_unlock.exit.i112_crit_edge, label %land.lhs.true.i78.i

if.then4.i.rcu_read_unlock.exit.i112_crit_edge:   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i112

land.lhs.true.i78.i:                              ; preds = %if.then4.i
  %call1.i76.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76.i)
  %tobool.not.i77.i = icmp eq i32 %call1.i76.i, 0
  br i1 %tobool.not.i77.i, label %land.lhs.true.i78.i.rcu_read_unlock.exit.i112_crit_edge, label %land.lhs.true2.i80.i

land.lhs.true.i78.i.rcu_read_unlock.exit.i112_crit_edge: ; preds = %land.lhs.true.i78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i112

land.lhs.true2.i80.i:                             ; preds = %land.lhs.true.i78.i
  %.b4.i79.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i79.i, label %land.lhs.true2.i80.i.rcu_read_unlock.exit.i112_crit_edge, label %if.then.i81.i

land.lhs.true2.i80.i.rcu_read_unlock.exit.i112_crit_edge: ; preds = %land.lhs.true2.i80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i112

if.then.i81.i:                                    ; preds = %land.lhs.true2.i80.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit.i112

rcu_read_unlock.exit.i112:                        ; preds = %if.then.i81.i, %land.lhs.true2.i80.i.rcu_read_unlock.exit.i112_crit_edge, %land.lhs.true.i78.i.rcu_read_unlock.exit.i112_crit_edge, %if.then4.i.rcu_read_unlock.exit.i112_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %203 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i82.i = and i32 %203, -16384
  %204 = inttoptr i32 %and.i.i.i.i.i82.i to ptr
  %preempt_count.i.i.i.i83.i = getelementptr inbounds %struct.thread_info, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %preempt_count.i.i.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load volatile i32, ptr %preempt_count.i.i.i.i83.i, align 4
  %sub.i.i.i.i111 = add i32 %206, -1
  store volatile i32 %sub.i.i.i.i111, ptr %preempt_count.i.i.i.i83.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %207 = ptrtoint ptr %call.i74.i to i32
  br label %semctl_setval.exit

if.end6.i113:                                     ; preds = %rcu_read_lock.exit.i110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %semnum)
  %cmp7.i = icmp slt i32 %semnum, 0
  br i1 %cmp7.i, label %if.end6.i113.if.then10.i_crit_edge, label %lor.lhs.false8.i

if.end6.i113.if.then10.i_crit_edge:               ; preds = %if.end6.i113
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10.i

lor.lhs.false8.i:                                 ; preds = %if.end6.i113
  %sem_nsems.i114 = getelementptr inbounds %struct.sem_array, ptr %call.i74.i, i32 0, i32 5
  %208 = ptrtoint ptr %sem_nsems.i114 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %sem_nsems.i114, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %semnum)
  %cmp9.not.i = icmp sgt i32 %209, %semnum
  br i1 %cmp9.not.i, label %if.end11.i116, label %lor.lhs.false8.i.if.then10.i_crit_edge

lor.lhs.false8.i.if.then10.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10.i

if.then10.i:                                      ; preds = %lor.lhs.false8.i.if.then10.i_crit_edge, %if.end6.i113.if.then10.i_crit_edge
  %call.i84.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i84.i, label %if.then10.i.rcu_read_unlock.exit94.i_crit_edge, label %land.lhs.true.i87.i

if.then10.i.rcu_read_unlock.exit94.i_crit_edge:   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit94.i

land.lhs.true.i87.i:                              ; preds = %if.then10.i
  %call1.i85.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85.i)
  %tobool.not.i86.i = icmp eq i32 %call1.i85.i, 0
  br i1 %tobool.not.i86.i, label %land.lhs.true.i87.i.rcu_read_unlock.exit94.i_crit_edge, label %land.lhs.true2.i89.i

land.lhs.true.i87.i.rcu_read_unlock.exit94.i_crit_edge: ; preds = %land.lhs.true.i87.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit94.i

land.lhs.true2.i89.i:                             ; preds = %land.lhs.true.i87.i
  %.b4.i88.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i88.i, label %land.lhs.true2.i89.i.rcu_read_unlock.exit94.i_crit_edge, label %if.then.i90.i

land.lhs.true2.i89.i.rcu_read_unlock.exit94.i_crit_edge: ; preds = %land.lhs.true2.i89.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit94.i

if.then.i90.i:                                    ; preds = %land.lhs.true2.i89.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit94.i

rcu_read_unlock.exit94.i:                         ; preds = %if.then.i90.i, %land.lhs.true2.i89.i.rcu_read_unlock.exit94.i_crit_edge, %land.lhs.true.i87.i.rcu_read_unlock.exit94.i_crit_edge, %if.then10.i.rcu_read_unlock.exit94.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %210 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i91.i = and i32 %210, -16384
  %211 = inttoptr i32 %and.i.i.i.i.i91.i to ptr
  %preempt_count.i.i.i.i92.i = getelementptr inbounds %struct.thread_info, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %preempt_count.i.i.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load volatile i32, ptr %preempt_count.i.i.i.i92.i, align 4
  %sub.i.i.i93.i = add i32 %213, -1
  store volatile i32 %sub.i.i.i93.i, ptr %preempt_count.i.i.i.i92.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %semctl_setval.exit

if.end11.i116:                                    ; preds = %lor.lhs.false8.i
  %call12.i = call i32 @ipcperms(ptr noundef %9, ptr noundef %call.i74.i, i16 noundef signext 146) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i115 = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i115, label %if.end14.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end11.i116
  %call.i95.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i95.i, label %if.then13.i.rcu_read_unlock.exit105.i_crit_edge, label %land.lhs.true.i98.i

if.then13.i.rcu_read_unlock.exit105.i_crit_edge:  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit105.i

land.lhs.true.i98.i:                              ; preds = %if.then13.i
  %call1.i96.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i96.i)
  %tobool.not.i97.i = icmp eq i32 %call1.i96.i, 0
  br i1 %tobool.not.i97.i, label %land.lhs.true.i98.i.rcu_read_unlock.exit105.i_crit_edge, label %land.lhs.true2.i100.i

land.lhs.true.i98.i.rcu_read_unlock.exit105.i_crit_edge: ; preds = %land.lhs.true.i98.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit105.i

land.lhs.true2.i100.i:                            ; preds = %land.lhs.true.i98.i
  %.b4.i99.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i99.i, label %land.lhs.true2.i100.i.rcu_read_unlock.exit105.i_crit_edge, label %if.then.i101.i

land.lhs.true2.i100.i.rcu_read_unlock.exit105.i_crit_edge: ; preds = %land.lhs.true2.i100.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit105.i

if.then.i101.i:                                   ; preds = %land.lhs.true2.i100.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit105.i

rcu_read_unlock.exit105.i:                        ; preds = %if.then.i101.i, %land.lhs.true2.i100.i.rcu_read_unlock.exit105.i_crit_edge, %land.lhs.true.i98.i.rcu_read_unlock.exit105.i_crit_edge, %if.then13.i.rcu_read_unlock.exit105.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %214 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i102.i = and i32 %214, -16384
  %215 = inttoptr i32 %and.i.i.i.i.i102.i to ptr
  %preempt_count.i.i.i.i103.i = getelementptr inbounds %struct.thread_info, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %preempt_count.i.i.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load volatile i32, ptr %preempt_count.i.i.i.i103.i, align 4
  %sub.i.i.i104.i = add i32 %217, -1
  store volatile i32 %sub.i.i.i104.i, ptr %preempt_count.i.i.i.i103.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %semctl_setval.exit

if.end14.i:                                       ; preds = %if.end11.i116
  %call16.i = call i32 @security_sem_semctl(ptr noundef %call.i74.i, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @rcu_read_unlock() #13
  br label %semctl_setval.exit

if.end19.i:                                       ; preds = %if.end14.i
  %call20.i117 = call fastcc i32 @sem_lock(ptr noundef %call.i74.i, ptr noundef null, i32 noundef -1) #13
  %deleted.i.i118 = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i74.i, i32 0, i32 1
  %218 = ptrtoint ptr %deleted.i.i118 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %deleted.i.i118, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool.not.i106.i = icmp eq i8 %219, 0
  br i1 %tobool.not.i106.i, label %if.end24.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @sem_unlock(ptr noundef %call.i74.i, i32 noundef -1) #13
  call fastcc void @rcu_read_unlock() #13
  br label %semctl_setval.exit

if.end24.i:                                       ; preds = %if.end19.i
  %220 = ptrtoint ptr %sem_nsems.i114 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %sem_nsems.i114, align 32
  %222 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %semnum, i32 %221) #13, !srcloc !155
  %and.i119 = and i32 %222, %semnum
  %arrayidx.i120 = getelementptr %struct.sem_array, ptr %call.i74.i, i32 0, i32 9, i32 %and.i119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i96)
  %223 = ptrtoint ptr %call.i74.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %agg.tmp.sroa.0.0.copyload.i.i.i121 = load volatile i32, ptr %call.i74.i, align 4
  %224 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i96 to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i121, ptr %agg.tmp.sroa.0.i.i.i96, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i122 = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i121, 16
  %conv.i.i.i.i123 = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i121, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i123, i32 %lock.sroa.0.0.extract.shift.i.i.i.i122)
  %cmp.i.i.not.i.i124 = icmp eq i32 %conv.i.i.i.i123, %lock.sroa.0.0.extract.shift.i.i.i.i122
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i96)
  br i1 %cmp.i.i.not.i.i124, label %do.body4.i.i125, label %ipc_assert_locked_object.exit.i127, !prof !141

do.body4.i.i125:                                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22ipc/util.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #13, !srcloc !142
  unreachable

ipc_assert_locked_object.exit.i127:               ; preds = %if.end24.i
  %list_id.i126 = getelementptr inbounds %struct.sem_array, ptr %call.i74.i, i32 0, i32 4
  %225 = ptrtoint ptr %list_id.i126 to i32
  call void @__asan_load4_noabort(i32 %225)
  %.pn107.i = load ptr, ptr %list_id.i126, align 4
  %cmp34.not108.i = icmp eq ptr %.pn107.i, %list_id.i126
  br i1 %cmp34.not108.i, label %ipc_assert_locked_object.exit.i127.for.end.i137_crit_edge, label %ipc_assert_locked_object.exit.i127.for.body.i130_crit_edge

ipc_assert_locked_object.exit.i127.for.body.i130_crit_edge: ; preds = %ipc_assert_locked_object.exit.i127
  br label %for.body.i130

ipc_assert_locked_object.exit.i127.for.end.i137_crit_edge: ; preds = %ipc_assert_locked_object.exit.i127
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i137

for.body.i130:                                    ; preds = %for.body.i130.for.body.i130_crit_edge, %ipc_assert_locked_object.exit.i127.for.body.i130_crit_edge
  %.pn109.i = phi ptr [ %.pn.i129, %for.body.i130.for.body.i130_crit_edge ], [ %.pn107.i, %ipc_assert_locked_object.exit.i127.for.body.i130_crit_edge ]
  %semadj.i128 = getelementptr i8, ptr %.pn109.i, i32 12
  %226 = ptrtoint ptr %semadj.i128 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %semadj.i128, align 4
  %arrayidx35.i = getelementptr i16, ptr %227, i32 %and.i119
  %228 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 0, ptr %arrayidx35.i, align 2
  %229 = ptrtoint ptr %.pn109.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %.pn.i129 = load ptr, ptr %.pn109.i, align 4
  %cmp34.not.i = icmp eq ptr %.pn.i129, %list_id.i126
  br i1 %cmp34.not.i, label %for.body.i130.for.end.i137_crit_edge, label %for.body.i130.for.body.i130_crit_edge

for.body.i130.for.body.i130_crit_edge:            ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i130

for.body.i130.for.end.i137_crit_edge:             ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i137

for.end.i137:                                     ; preds = %for.body.i130.for.end.i137_crit_edge, %ipc_assert_locked_object.exit.i127.for.end.i137_crit_edge
  %230 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %arg, ptr %arrayidx.i120, align 128
  %sempid.i131 = getelementptr %struct.sem_array, ptr %call.i74.i, i32 0, i32 9, i32 %and.i119, i32 1
  %231 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i132 = and i32 %231, -16384
  %232 = inttoptr i32 %and.i.i132 to ptr
  %task.i133 = getelementptr inbounds %struct.thread_info, ptr %232, i32 0, i32 2
  %233 = ptrtoint ptr %task.i133 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %task.i133, align 8
  %signal.i.i134 = getelementptr inbounds %struct.task_struct, ptr %234, i32 0, i32 111
  %235 = ptrtoint ptr %signal.i.i134 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %signal.i.i134, align 16
  %arrayidx.i.i135 = getelementptr %struct.signal_struct, ptr %236, i32 0, i32 22, i32 1
  %237 = ptrtoint ptr %arrayidx.i.i135 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %arrayidx.i.i135, align 4
  call fastcc void @ipc_update_pid(ptr noundef %sempid.i131, ptr noundef %238) #13
  %call43.i = call i64 @ktime_get_real_seconds() #13
  %sem_ctime.i136 = getelementptr inbounds %struct.sem_array, ptr %call.i74.i, i32 0, i32 1
  %239 = ptrtoint ptr %sem_ctime.i136 to i32
  call void @__asan_store8_noabort(i32 %239)
  store i64 %call43.i, ptr %sem_ctime.i136, align 128
  call fastcc void @do_smart_update(ptr noundef %call.i74.i, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %wake_q.i97) #13
  call fastcc void @sem_unlock(ptr noundef %call.i74.i, i32 noundef -1) #13
  call fastcc void @rcu_read_unlock() #13
  call void @wake_up_q(ptr noundef nonnull %wake_q.i97) #13
  br label %semctl_setval.exit

semctl_setval.exit:                               ; preds = %for.end.i137, %if.then23.i, %if.then18.i, %rcu_read_unlock.exit105.i, %rcu_read_unlock.exit94.i, %rcu_read_unlock.exit.i112, %sw.bb12.semctl_setval.exit_crit_edge
  %retval.0.i138 = phi i32 [ %207, %rcu_read_unlock.exit.i112 ], [ -22, %rcu_read_unlock.exit94.i ], [ -13, %rcu_read_unlock.exit105.i ], [ -13, %if.then18.i ], [ 0, %for.end.i137 ], [ -43, %if.then23.i ], [ -34, %sw.bb12.semctl_setval.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q.i97) #13
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  %240 = zext i32 %version to i64
  call void @__sanitizer_cov_trace_switch(i64 %240, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %version, label %sw.bb14.cleanup_crit_edge [
    i32 256, label %if.end8.i.i.i144
    i32 0, label %sw.bb1.i159
  ]

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i.i144:                                 ; preds = %sw.bb14
  tail call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #13
  %call.i.i.i143 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i143, label %if.end8.i.i.i144.if.then11.i.i.i158_crit_edge, label %land.lhs.true.i.i.i147

if.end8.i.i.i144.if.then11.i.i.i158_crit_edge:    ; preds = %if.end8.i.i.i144
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i158

land.lhs.true.i.i.i147:                           ; preds = %if.end8.i.i.i144
  %241 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 64, i32 -1226833920) #18, !srcloc !151
  %asmresult.i.i.i145 = extractvalue { i32, i32 } %241, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i145)
  %cmp.i6.i.i146 = icmp eq i32 %asmresult.i.i.i145, 0
  br i1 %cmp.i6.i.i146, label %if.end.i.i.i155, label %land.lhs.true.i.i.i147.if.then11.i.i.i158_crit_edge, !prof !144

land.lhs.true.i.i.i147.if.then11.i.i.i158_crit_edge: ; preds = %land.lhs.true.i.i.i147
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i158

if.end.i.i.i155:                                  ; preds = %land.lhs.true.i.i.i147
  %call.i.i.i.i148 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %semid64, i32 noundef 64) #13
  %242 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i.i.i149 = and i32 %242, -16384
  %243 = inttoptr i32 %and.i.i.i.i.i.i.i149 to ptr
  %cpu_domain.i.i.i.i.i.i150 = getelementptr inbounds %struct.thread_info, ptr %243, i32 0, i32 4
  %244 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i150) #10, !srcloc !152
  %and.i.i.i.i.i151 = and i32 %244, -13
  %or.i.i.i.i.i152 = or i32 %and.i.i.i.i.i151, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i152) #13, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !154
  %call1.i.i.i.i153 = call i32 @arm_copy_from_user(ptr noundef nonnull %semid64, ptr noundef %0, i32 noundef 64) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %244) #13, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i153)
  %tobool4.not.i.i.i154 = icmp eq i32 %call1.i.i.i.i153, 0
  br i1 %tobool4.not.i.i.i154, label %if.end.i.i.i155.sw.bb19_crit_edge, label %if.end.i.i.i155.if.then11.i.i.i158_crit_edge, !prof !144

if.end.i.i.i155.if.then11.i.i.i158_crit_edge:     ; preds = %if.end.i.i.i155
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i158

if.end.i.i.i155.sw.bb19_crit_edge:                ; preds = %if.end.i.i.i155
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb19

if.then11.i.i.i158:                               ; preds = %if.end.i.i.i155.if.then11.i.i.i158_crit_edge, %land.lhs.true.i.i.i147.if.then11.i.i.i158_crit_edge, %if.end8.i.i.i144.if.then11.i.i.i158_crit_edge
  %res.0.i.i44.i = phi i32 [ %call1.i.i.i.i153, %if.end.i.i.i155.if.then11.i.i.i158_crit_edge ], [ 64, %if.end8.i.i.i144.if.then11.i.i.i158_crit_edge ], [ 64, %land.lhs.true.i.i.i147.if.then11.i.i.i158_crit_edge ]
  %sub.i.i.i156 = sub i32 64, %res.0.i.i44.i
  %add.ptr.i.i.i157 = getelementptr i8, ptr %semid64, i32 %sub.i.i.i156
  %245 = call ptr @memset(ptr %add.ptr.i.i.i157, i32 0, i32 %res.0.i.i44.i)
  br label %cleanup

sw.bb1.i159:                                      ; preds = %sw.bb14
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tbuf_old.i) #13
  %246 = call ptr @memset(ptr %tbuf_old.i, i32 255, i32 44)
  tail call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #13
  %call.i.i23.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i23.i, label %sw.bb1.i159.copy_semid_from_user.exit_crit_edge, label %land.lhs.true.i.i26.i

sw.bb1.i159.copy_semid_from_user.exit_crit_edge:  ; preds = %sw.bb1.i159
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_semid_from_user.exit

land.lhs.true.i.i26.i:                            ; preds = %sw.bb1.i159
  %247 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 44, i32 -1226833920) #18, !srcloc !151
  %asmresult.i.i24.i = extractvalue { i32, i32 } %247, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i24.i)
  %cmp.i6.i25.i = icmp eq i32 %asmresult.i.i24.i, 0
  br i1 %cmp.i6.i25.i, label %if.end.i.i36.i, label %land.lhs.true.i.i26.i.copy_semid_from_user.exit_crit_edge, !prof !144

land.lhs.true.i.i26.i.copy_semid_from_user.exit_crit_edge: ; preds = %land.lhs.true.i.i26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_semid_from_user.exit

if.end.i.i36.i:                                   ; preds = %land.lhs.true.i.i26.i
  %call.i.i.i27.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tbuf_old.i, i32 noundef 44) #13
  %248 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i.i28.i = and i32 %248, -16384
  %249 = inttoptr i32 %and.i.i.i.i.i.i28.i to ptr
  %cpu_domain.i.i.i.i.i29.i = getelementptr inbounds %struct.thread_info, ptr %249, i32 0, i32 4
  %250 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i29.i) #10, !srcloc !152
  %and.i.i.i.i30.i = and i32 %250, -13
  %or.i.i.i.i31.i = or i32 %and.i.i.i.i30.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i31.i) #13, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !154
  %call1.i.i.i32.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tbuf_old.i, ptr noundef %0, i32 noundef 44) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %250) #13, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i32.i)
  %tobool4.not.i.i35.i = icmp eq i32 %call1.i.i.i32.i, 0
  br i1 %tobool4.not.i.i35.i, label %copy_semid_from_user.exit.thread231, label %if.end.i.i36.i.copy_semid_from_user.exit_crit_edge, !prof !144

if.end.i.i36.i.copy_semid_from_user.exit_crit_edge: ; preds = %if.end.i.i36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_semid_from_user.exit

copy_semid_from_user.exit.thread231:              ; preds = %if.end.i.i36.i
  call void @__sanitizer_cov_trace_pc() #15
  %uid.i = getelementptr inbounds %struct.ipc_perm, ptr %tbuf_old.i, i32 0, i32 1
  %251 = ptrtoint ptr %uid.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %uid.i, align 4
  %conv.i160 = zext i16 %252 to i32
  %uid7.i = getelementptr inbounds %struct.ipc64_perm, ptr %semid64, i32 0, i32 1
  %253 = ptrtoint ptr %uid7.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %conv.i160, ptr %uid7.i, align 4
  %gid.i = getelementptr inbounds %struct.ipc_perm, ptr %tbuf_old.i, i32 0, i32 2
  %254 = ptrtoint ptr %gid.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %gid.i, align 2
  %conv9.i = zext i16 %255 to i32
  %gid11.i = getelementptr inbounds %struct.ipc64_perm, ptr %semid64, i32 0, i32 2
  %256 = ptrtoint ptr %gid11.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %conv9.i, ptr %gid11.i, align 4
  %mode.i = getelementptr inbounds %struct.ipc_perm, ptr %tbuf_old.i, i32 0, i32 5
  %257 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %mode.i, align 4
  %mode14.i = getelementptr inbounds %struct.ipc64_perm, ptr %semid64, i32 0, i32 5
  %259 = ptrtoint ptr %mode14.i to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 %258, ptr %mode14.i, align 4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tbuf_old.i) #13
  br label %sw.bb19

copy_semid_from_user.exit:                        ; preds = %if.end.i.i36.i.copy_semid_from_user.exit_crit_edge, %land.lhs.true.i.i26.i.copy_semid_from_user.exit_crit_edge, %sw.bb1.i159.copy_semid_from_user.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tbuf_old.i) #13
  br label %cleanup

sw.bb19:                                          ; preds = %copy_semid_from_user.exit.thread231, %if.end.i.i.i155.sw.bb19_crit_edge, %if.end.sw.bb19_crit_edge
  %rwsem.i163 = getelementptr inbounds %struct.ipc_ids, ptr %9, i32 0, i32 2
  call void @down_write(ptr noundef %rwsem.i163) #13
  %260 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i.i164 = and i32 %260, -16384
  %261 = inttoptr i32 %and.i.i.i.i.i.i164 to ptr
  %preempt_count.i.i.i.i.i165 = getelementptr inbounds %struct.thread_info, ptr %261, i32 0, i32 1
  %262 = ptrtoint ptr %preempt_count.i.i.i.i.i165 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load volatile i32, ptr %preempt_count.i.i.i.i.i165, align 4
  %add.i.i.i.i166 = add i32 %263, 1
  store volatile i32 %add.i.i.i.i166, ptr %preempt_count.i.i.i.i.i165, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !149
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i167 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i167, label %sw.bb19.rcu_read_lock.exit.i176_crit_edge, label %land.lhs.true.i.i170

sw.bb19.rcu_read_lock.exit.i176_crit_edge:        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i176

land.lhs.true.i.i170:                             ; preds = %sw.bb19
  %call1.i.i168 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i168)
  %tobool.not.i.i169 = icmp eq i32 %call1.i.i168, 0
  br i1 %tobool.not.i.i169, label %land.lhs.true.i.i170.rcu_read_lock.exit.i176_crit_edge, label %land.lhs.true2.i.i172

land.lhs.true.i.i170.rcu_read_lock.exit.i176_crit_edge: ; preds = %land.lhs.true.i.i170
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i176

land.lhs.true2.i.i172:                            ; preds = %land.lhs.true.i.i170
  %.b4.i.i171 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i171, label %land.lhs.true2.i.i172.rcu_read_lock.exit.i176_crit_edge, label %if.then.i.i173

land.lhs.true2.i.i172.rcu_read_lock.exit.i176_crit_edge: ; preds = %land.lhs.true2.i.i172
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i176

if.then.i.i173:                                   ; preds = %land.lhs.true2.i.i172
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit.i176

rcu_read_lock.exit.i176:                          ; preds = %if.then.i.i173, %land.lhs.true2.i.i172.rcu_read_lock.exit.i176_crit_edge, %land.lhs.true.i.i170.rcu_read_lock.exit.i176_crit_edge, %sw.bb19.rcu_read_lock.exit.i176_crit_edge
  %call.i174 = call ptr @ipcctl_obtain_check(ptr noundef %9, ptr noundef %9, i32 noundef %semid, i32 noundef %cmd, ptr noundef nonnull %semid64, i32 noundef 0) #13
  %cmp.i.i175 = icmp ugt ptr %call.i174, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i175, label %if.then.i177, label %if.end.i179

if.then.i177:                                     ; preds = %rcu_read_lock.exit.i176
  call void @__sanitizer_cov_trace_pc() #15
  %264 = ptrtoint ptr %call.i174 to i32
  br label %out_unlock1.i

if.end.i179:                                      ; preds = %rcu_read_lock.exit.i176
  %call6.i = call i32 @security_sem_semctl(ptr noundef %call.i174, i32 noundef %cmd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i178 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i178, label %if.end8.i, label %if.end.i179.out_unlock1.i_crit_edge

if.end.i179.out_unlock1.i_crit_edge:              ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock1.i

if.end8.i:                                        ; preds = %if.end.i179
  %265 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %265, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %cmd, label %if.end8.i.out_unlock1.i_crit_edge [
    i32 0, label %sw.bb.i182
    i32 1, label %sw.bb10.i
  ]

if.end8.i.out_unlock1.i_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock1.i

sw.bb.i182:                                       ; preds = %if.end8.i
  call void @_raw_spin_lock(ptr noundef %call.i174) #13
  %use_global_lock.i.i.i180 = getelementptr inbounds %struct.sem_array, ptr %call.i174, i32 0, i32 7
  %266 = ptrtoint ptr %use_global_lock.i.i.i180 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %use_global_lock.i.i.i180, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %cmp.not.i.i.i181 = icmp eq i32 %267, 0
  %268 = ptrtoint ptr %use_global_lock.i.i.i180 to i32
  call void @__asan_store4_noabort(i32 %268)
  store volatile i32 10, ptr %use_global_lock.i.i.i180, align 8
  br i1 %cmp.not.i.i.i181, label %do.body12.i.i.i184, label %sw.bb.i182.sem_lock.exit.i190_crit_edge

sw.bb.i182.sem_lock.exit.i190_crit_edge:          ; preds = %sw.bb.i182
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_lock.exit.i190

do.body12.i.i.i184:                               ; preds = %sw.bb.i182
  %sem_nsems.i.i.i = getelementptr inbounds %struct.sem_array, ptr %call.i174, i32 0, i32 5
  %269 = ptrtoint ptr %sem_nsems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %sem_nsems.i.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %cmp1828.i.i.i183 = icmp sgt i32 %270, 0
  br i1 %cmp1828.i.i.i183, label %do.body12.i.i.i184.for.body.i.i.i189_crit_edge, label %do.body12.i.i.i184.sem_lock.exit.i190_crit_edge

do.body12.i.i.i184.sem_lock.exit.i190_crit_edge:  ; preds = %do.body12.i.i.i184
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_lock.exit.i190

do.body12.i.i.i184.for.body.i.i.i189_crit_edge:   ; preds = %do.body12.i.i.i184
  br label %for.body.i.i.i189

for.body.i.i.i189:                                ; preds = %for.body.i.i.i189.for.body.i.i.i189_crit_edge, %do.body12.i.i.i184.for.body.i.i.i189_crit_edge
  %i.029.i.i.i185 = phi i32 [ %inc.i.i.i187, %for.body.i.i.i189.for.body.i.i.i189_crit_edge ], [ 0, %do.body12.i.i.i184.for.body.i.i.i189_crit_edge ]
  %lock.i.i.i186 = getelementptr %struct.sem_array, ptr %call.i174, i32 0, i32 9, i32 %i.029.i.i.i185, i32 2
  call void @_raw_spin_lock(ptr noundef %lock.i.i.i186) #13
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i186) #13
  %inc.i.i.i187 = add nuw nsw i32 %i.029.i.i.i185, 1
  %271 = ptrtoint ptr %sem_nsems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %sem_nsems.i.i.i, align 32
  %cmp18.i.i.i188 = icmp slt i32 %inc.i.i.i187, %272
  br i1 %cmp18.i.i.i188, label %for.body.i.i.i189.for.body.i.i.i189_crit_edge, label %for.body.i.i.i189.sem_lock.exit.i190_crit_edge

for.body.i.i.i189.sem_lock.exit.i190_crit_edge:   ; preds = %for.body.i.i.i189
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_lock.exit.i190

for.body.i.i.i189.for.body.i.i.i189_crit_edge:    ; preds = %for.body.i.i.i189
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i189

sem_lock.exit.i190:                               ; preds = %for.body.i.i.i189.sem_lock.exit.i190_crit_edge, %do.body12.i.i.i184.sem_lock.exit.i190_crit_edge, %sw.bb.i182.sem_lock.exit.i190_crit_edge
  call void @freeary(ptr noundef %9, ptr noundef %call.i174) #13
  br label %semctl_down.exit

sw.bb10.i:                                        ; preds = %if.end8.i
  call void @_raw_spin_lock(ptr noundef %call.i174) #13
  %use_global_lock.i.i39.i = getelementptr inbounds %struct.sem_array, ptr %call.i174, i32 0, i32 7
  %273 = ptrtoint ptr %use_global_lock.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %use_global_lock.i.i39.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %cmp.not.i.i40.i = icmp eq i32 %274, 0
  %275 = ptrtoint ptr %use_global_lock.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store volatile i32 10, ptr %use_global_lock.i.i39.i, align 8
  br i1 %cmp.not.i.i40.i, label %do.body12.i.i44.i, label %sw.bb10.i.sem_lock.exit50.i_crit_edge

sw.bb10.i.sem_lock.exit50.i_crit_edge:            ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_lock.exit50.i

do.body12.i.i44.i:                                ; preds = %sw.bb10.i
  %sem_nsems.i.i42.i = getelementptr inbounds %struct.sem_array, ptr %call.i174, i32 0, i32 5
  %276 = ptrtoint ptr %sem_nsems.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %sem_nsems.i.i42.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %cmp1828.i.i43.i = icmp sgt i32 %277, 0
  br i1 %cmp1828.i.i43.i, label %do.body12.i.i44.i.for.body.i.i49.i_crit_edge, label %do.body12.i.i44.i.sem_lock.exit50.i_crit_edge

do.body12.i.i44.i.sem_lock.exit50.i_crit_edge:    ; preds = %do.body12.i.i44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_lock.exit50.i

do.body12.i.i44.i.for.body.i.i49.i_crit_edge:     ; preds = %do.body12.i.i44.i
  br label %for.body.i.i49.i

for.body.i.i49.i:                                 ; preds = %for.body.i.i49.i.for.body.i.i49.i_crit_edge, %do.body12.i.i44.i.for.body.i.i49.i_crit_edge
  %i.029.i.i45.i = phi i32 [ %inc.i.i47.i, %for.body.i.i49.i.for.body.i.i49.i_crit_edge ], [ 0, %do.body12.i.i44.i.for.body.i.i49.i_crit_edge ]
  %lock.i.i46.i = getelementptr %struct.sem_array, ptr %call.i174, i32 0, i32 9, i32 %i.029.i.i45.i, i32 2
  call void @_raw_spin_lock(ptr noundef %lock.i.i46.i) #13
  call void @_raw_spin_unlock(ptr noundef %lock.i.i46.i) #13
  %inc.i.i47.i = add nuw nsw i32 %i.029.i.i45.i, 1
  %278 = ptrtoint ptr %sem_nsems.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %sem_nsems.i.i42.i, align 32
  %cmp18.i.i48.i = icmp slt i32 %inc.i.i47.i, %279
  br i1 %cmp18.i.i48.i, label %for.body.i.i49.i.for.body.i.i49.i_crit_edge, label %for.body.i.i49.i.sem_lock.exit50.i_crit_edge

for.body.i.i49.i.sem_lock.exit50.i_crit_edge:     ; preds = %for.body.i.i49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_lock.exit50.i

for.body.i.i49.i.for.body.i.i49.i_crit_edge:      ; preds = %for.body.i.i49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i49.i

sem_lock.exit50.i:                                ; preds = %for.body.i.i49.i.sem_lock.exit50.i_crit_edge, %do.body12.i.i44.i.sem_lock.exit50.i_crit_edge, %sw.bb10.i.sem_lock.exit50.i_crit_edge
  %call13.i = call i32 @ipc_update_perm(ptr noundef nonnull %semid64, ptr noundef %call.i174) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i192, label %sem_lock.exit50.i.out_unlock0.i_crit_edge

sem_lock.exit50.i.out_unlock0.i_crit_edge:        ; preds = %sem_lock.exit50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock0.i

if.end16.i192:                                    ; preds = %sem_lock.exit50.i
  call void @__sanitizer_cov_trace_pc() #15
  %call17.i = call i64 @ktime_get_real_seconds() #13
  %sem_ctime.i191 = getelementptr inbounds %struct.sem_array, ptr %call.i174, i32 0, i32 1
  %280 = ptrtoint ptr %sem_ctime.i191 to i32
  call void @__asan_store8_noabort(i32 %280)
  store i64 %call17.i, ptr %sem_ctime.i191, align 128
  br label %out_unlock0.i

out_unlock0.i:                                    ; preds = %if.end16.i192, %sem_lock.exit50.i.out_unlock0.i_crit_edge
  %complex_count.i.i.i193 = getelementptr inbounds %struct.sem_array, ptr %call.i174, i32 0, i32 6
  %281 = ptrtoint ptr %complex_count.i.i.i193 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %complex_count.i.i.i193, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %282)
  %tobool.not.i.i.i194 = icmp eq i32 %282, 0
  br i1 %tobool.not.i.i.i194, label %if.end.i.i.i197, label %out_unlock0.i.sem_unlock.exit.i219_crit_edge

out_unlock0.i.sem_unlock.exit.i219_crit_edge:     ; preds = %out_unlock0.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_unlock.exit.i219

if.end.i.i.i197:                                  ; preds = %out_unlock0.i
  %pending_alter.i.i.i195 = getelementptr inbounds %struct.sem_array, ptr %call.i174, i32 0, i32 2
  %283 = ptrtoint ptr %pending_alter.i.i.i195 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %pending_alter.i.i.i195, align 8
  %cmp.not26.i.i.i196 = icmp eq ptr %284, %pending_alter.i.i.i195
  br i1 %cmp.not26.i.i.i196, label %if.end.i.i.i197.unmerge_queues.exit.i.i211_crit_edge, label %if.end.i.i.i197.for.body.i.i52.i_crit_edge

if.end.i.i.i197.for.body.i.i52.i_crit_edge:       ; preds = %if.end.i.i.i197
  br label %for.body.i.i52.i

if.end.i.i.i197.unmerge_queues.exit.i.i211_crit_edge: ; preds = %if.end.i.i.i197
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmerge_queues.exit.i.i211

for.body.i.i52.i:                                 ; preds = %list_add_tail.exit.i.i.i207.for.body.i.i52.i_crit_edge, %if.end.i.i.i197.for.body.i.i52.i_crit_edge
  %q.027.i.i.i198 = phi ptr [ %tq.0.i.i.i199, %list_add_tail.exit.i.i.i207.for.body.i.i52.i_crit_edge ], [ %284, %if.end.i.i.i197.for.body.i.i52.i_crit_edge ]
  %285 = ptrtoint ptr %q.027.i.i.i198 to i32
  call void @__asan_load4_noabort(i32 %285)
  %tq.0.i.i.i199 = load ptr, ptr %q.027.i.i.i198, align 4
  %sops.i.i.i200 = getelementptr inbounds %struct.sem_queue, ptr %q.027.i.i.i198, i32 0, i32 5
  %286 = ptrtoint ptr %sops.i.i.i200 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %sops.i.i.i200, align 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %287, align 2
  %idxprom.i.i.i201 = zext i16 %289 to i32
  %pending_alter9.i.i.i202 = getelementptr %struct.sem_array, ptr %call.i174, i32 0, i32 9, i32 %idxprom.i.i.i201, i32 3
  %prev.i.i.i.i203 = getelementptr %struct.sem_array, ptr %call.i174, i32 0, i32 9, i32 %idxprom.i.i.i201, i32 3, i32 1
  %290 = ptrtoint ptr %prev.i.i.i.i203 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %prev.i.i.i.i203, align 4
  %call.i.i.i.i.i204 = call zeroext i1 @__list_add_valid(ptr noundef %q.027.i.i.i198, ptr noundef %291, ptr noundef %pending_alter9.i.i.i202) #13
  br i1 %call.i.i.i.i.i204, label %if.end.i.i.i.i.i206, label %for.body.i.i52.i.list_add_tail.exit.i.i.i207_crit_edge

for.body.i.i52.i.list_add_tail.exit.i.i.i207_crit_edge: ; preds = %for.body.i.i52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i.i.i207

if.end.i.i.i.i.i206:                              ; preds = %for.body.i.i52.i
  call void @__sanitizer_cov_trace_pc() #15
  %292 = ptrtoint ptr %prev.i.i.i.i203 to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %q.027.i.i.i198, ptr %prev.i.i.i.i203, align 4
  %293 = ptrtoint ptr %q.027.i.i.i198 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %pending_alter9.i.i.i202, ptr %q.027.i.i.i198, align 4
  %prev3.i.i.i.i.i205 = getelementptr inbounds %struct.list_head, ptr %q.027.i.i.i198, i32 0, i32 1
  %294 = ptrtoint ptr %prev3.i.i.i.i.i205 to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %291, ptr %prev3.i.i.i.i.i205, align 4
  %295 = ptrtoint ptr %291 to i32
  call void @__asan_store4_noabort(i32 %295)
  store volatile ptr %q.027.i.i.i198, ptr %291, align 4
  br label %list_add_tail.exit.i.i.i207

list_add_tail.exit.i.i.i207:                      ; preds = %if.end.i.i.i.i.i206, %for.body.i.i52.i.list_add_tail.exit.i.i.i207_crit_edge
  %cmp.not.i.i53.i = icmp eq ptr %tq.0.i.i.i199, %pending_alter.i.i.i195
  br i1 %cmp.not.i.i53.i, label %list_add_tail.exit.i.i.i207.unmerge_queues.exit.i.i211_crit_edge, label %list_add_tail.exit.i.i.i207.for.body.i.i52.i_crit_edge

list_add_tail.exit.i.i.i207.for.body.i.i52.i_crit_edge: ; preds = %list_add_tail.exit.i.i.i207
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i52.i

list_add_tail.exit.i.i.i207.unmerge_queues.exit.i.i211_crit_edge: ; preds = %list_add_tail.exit.i.i.i207
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmerge_queues.exit.i.i211

unmerge_queues.exit.i.i211:                       ; preds = %list_add_tail.exit.i.i.i207.unmerge_queues.exit.i.i211_crit_edge, %if.end.i.i.i197.unmerge_queues.exit.i.i211_crit_edge
  %296 = ptrtoint ptr %pending_alter.i.i.i195 to i32
  call void @__asan_store4_noabort(i32 %296)
  store volatile ptr %pending_alter.i.i.i195, ptr %pending_alter.i.i.i195, align 4
  %prev.i25.i.i.i208 = getelementptr inbounds %struct.sem_array, ptr %call.i174, i32 0, i32 2, i32 1
  %297 = ptrtoint ptr %prev.i25.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %pending_alter.i.i.i195, ptr %prev.i25.i.i.i208, align 4
  %298 = ptrtoint ptr %complex_count.i.i.i193 to i32
  call void @__asan_load4_noabort(i32 %298)
  %.pr.i.i209 = load i32, ptr %complex_count.i.i.i193, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i209)
  %tobool.not.i6.i.i210 = icmp eq i32 %.pr.i.i209, 0
  br i1 %tobool.not.i6.i.i210, label %if.end.i7.i.i213, label %unmerge_queues.exit.i.i211.sem_unlock.exit.i219_crit_edge

unmerge_queues.exit.i.i211.sem_unlock.exit.i219_crit_edge: ; preds = %unmerge_queues.exit.i.i211
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_unlock.exit.i219

if.end.i7.i.i213:                                 ; preds = %unmerge_queues.exit.i.i211
  %299 = ptrtoint ptr %use_global_lock.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %use_global_lock.i.i39.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %300)
  %cmp.i.i.i212 = icmp eq i32 %300, 1
  br i1 %cmp.i.i.i212, label %do.end5.i.i.i214, label %do.body18.i.i.i216

do.end5.i.i.i214:                                 ; preds = %if.end.i7.i.i213
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !146
  br label %if.end23.sink.split.i.i.i218

do.body18.i.i.i216:                               ; preds = %if.end.i7.i.i213
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i215 = add i32 %300, -1
  br label %if.end23.sink.split.i.i.i218

if.end23.sink.split.i.i.i218:                     ; preds = %do.body18.i.i.i216, %do.end5.i.i.i214
  %sub.sink.i.i.i217 = phi i32 [ %sub.i.i.i215, %do.body18.i.i.i216 ], [ 0, %do.end5.i.i.i214 ]
  %301 = ptrtoint ptr %use_global_lock.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store volatile i32 %sub.sink.i.i.i217, ptr %use_global_lock.i.i39.i, align 8
  br label %sem_unlock.exit.i219

sem_unlock.exit.i219:                             ; preds = %if.end23.sink.split.i.i.i218, %unmerge_queues.exit.i.i211.sem_unlock.exit.i219_crit_edge, %out_unlock0.i.sem_unlock.exit.i219_crit_edge
  call void @_raw_spin_unlock(ptr noundef %call.i174) #13
  br label %out_unlock1.i

out_unlock1.i:                                    ; preds = %sem_unlock.exit.i219, %if.end8.i.out_unlock1.i_crit_edge, %if.end.i179.out_unlock1.i_crit_edge, %if.then.i177
  %err.0.i220 = phi i32 [ %264, %if.then.i177 ], [ %call6.i, %if.end.i179.out_unlock1.i_crit_edge ], [ %call13.i, %sem_unlock.exit.i219 ], [ -22, %if.end8.i.out_unlock1.i_crit_edge ]
  %call.i55.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i55.i, label %out_unlock1.i.rcu_read_unlock.exit.i222_crit_edge, label %land.lhs.true.i58.i

out_unlock1.i.rcu_read_unlock.exit.i222_crit_edge: ; preds = %out_unlock1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i222

land.lhs.true.i58.i:                              ; preds = %out_unlock1.i
  %call1.i56.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56.i)
  %tobool.not.i57.i = icmp eq i32 %call1.i56.i, 0
  br i1 %tobool.not.i57.i, label %land.lhs.true.i58.i.rcu_read_unlock.exit.i222_crit_edge, label %land.lhs.true2.i60.i

land.lhs.true.i58.i.rcu_read_unlock.exit.i222_crit_edge: ; preds = %land.lhs.true.i58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i222

land.lhs.true2.i60.i:                             ; preds = %land.lhs.true.i58.i
  %.b4.i59.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i59.i, label %land.lhs.true2.i60.i.rcu_read_unlock.exit.i222_crit_edge, label %if.then.i61.i

land.lhs.true2.i60.i.rcu_read_unlock.exit.i222_crit_edge: ; preds = %land.lhs.true2.i60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i222

if.then.i61.i:                                    ; preds = %land.lhs.true2.i60.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit.i222

rcu_read_unlock.exit.i222:                        ; preds = %if.then.i61.i, %land.lhs.true2.i60.i.rcu_read_unlock.exit.i222_crit_edge, %land.lhs.true.i58.i.rcu_read_unlock.exit.i222_crit_edge, %out_unlock1.i.rcu_read_unlock.exit.i222_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %302 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i62.i = and i32 %302, -16384
  %303 = inttoptr i32 %and.i.i.i.i.i62.i to ptr
  %preempt_count.i.i.i.i63.i = getelementptr inbounds %struct.thread_info, ptr %303, i32 0, i32 1
  %304 = ptrtoint ptr %preempt_count.i.i.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load volatile i32, ptr %preempt_count.i.i.i.i63.i, align 4
  %sub.i.i.i.i221 = add i32 %305, -1
  store volatile i32 %sub.i.i.i.i221, ptr %preempt_count.i.i.i.i63.i, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %semctl_down.exit

semctl_down.exit:                                 ; preds = %rcu_read_unlock.exit.i222, %sem_lock.exit.i190
  %err.1.i223 = phi i32 [ %err.0.i220, %rcu_read_unlock.exit.i222 ], [ 0, %sem_lock.exit.i190 ]
  call void @up_write(ptr noundef %rwsem.i163) #13
  br label %cleanup

cleanup:                                          ; preds = %semctl_down.exit, %copy_semid_from_user.exit, %if.then11.i.i.i158, %sw.bb14.cleanup_crit_edge, %semctl_setval.exit, %semctl_main.exit, %copy_semid_to_user.exit, %if.end.i.i.i51.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %semctl_stat.exit.cleanup_crit_edge, %semctl_info.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1.i223, %semctl_down.exit ], [ %retval.0.i138, %semctl_setval.exit ], [ %retval.2.i, %semctl_main.exit ], [ %retval.0.i, %semctl_info.exit ], [ -22, %entry.cleanup_crit_edge ], [ %err.1.i, %semctl_stat.exit.cleanup_crit_edge ], [ -14, %copy_semid_from_user.exit ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.end6.cleanup_crit_edge ], [ -14, %if.end8.i.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.i51.cleanup_crit_edge ], [ -14, %sw.bb14.cleanup_crit_edge ], [ -14, %if.then11.i.i.i158 ], [ %spec.select, %copy_semid_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %semid64) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_old_semctl(i32 noundef %semid, i32 noundef %semnum, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %cmd.addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.addr.i.i) #13
  %0 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cmd, ptr %cmd.addr.i.i, align 4
  %call.i.i = call i32 @ipc_parse_version(ptr noundef nonnull %cmd.addr.i.i) #13
  %1 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cmd.addr.i.i, align 4
  %call1.i.i = call fastcc i32 @ksys_semctl(i32 noundef %semid, i32 noundef %semnum, i32 noundef %2, i32 noundef %arg, i32 noundef %call.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.addr.i.i) #13
  ret i32 %call1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__do_semtimedop(i32 noundef %semid, ptr noundef %sops, i32 noundef %nsops, ptr noundef %timeout, ptr noundef %ns) #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %queue = alloca %struct.sem_queue, align 4
  %wake_q = alloca %struct.wake_q_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %queue) #13
  %0 = call ptr @memset(ptr %queue, i32 255, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsops)
  %cmp = icmp eq i32 %nsops, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %semid)
  %cmp1 = icmp slt i32 %semid, 0
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ipc_namespace, ptr %ns, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %nsops)
  %cmp2 = icmp ult i32 %2, %nsops
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %timeout, null
  br i1 %tobool.not, label %if.end4.if.end14_crit_edge, label %if.then5

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then5:                                         ; preds = %if.end4
  %3 = ptrtoint ptr %timeout to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp6 = icmp slt i64 %4, 0
  br i1 %cmp6, label %if.then5.cleanup_crit_edge, label %lor.lhs.false7

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false7:                                   ; preds = %if.then5
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %timeout, i32 0, i32 1
  %5 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tv_nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %6)
  %7 = icmp ugt i32 %6, 999999999
  br i1 %7, label %lor.lhs.false7.cleanup_crit_edge, label %if.end13

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @timespec64_to_jiffies(ptr noundef nonnull %timeout) #13
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end4.if.end14_crit_edge
  %jiffies_left.0 = phi i32 [ %call, %if.end13 ], [ 0, %if.end4.if.end14_crit_edge ]
  %add.ptr = getelementptr %struct.sembuf, ptr %sops, i32 %nsops
  %cmp15446 = icmp ugt ptr %add.ptr, %sops
  br i1 %cmp15446, label %if.end14.for.body_crit_edge, label %if.end14.if.else_crit_edge

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end14.for.body_crit_edge
  %sop.0452 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %sops, %if.end14.for.body_crit_edge ]
  %max.0451 = phi i32 [ %10, %for.body.for.body_crit_edge ], [ 0, %if.end14.for.body_crit_edge ]
  %undos.0.off0450 = phi i1 [ %undos.1.off0, %for.body.for.body_crit_edge ], [ false, %if.end14.for.body_crit_edge ]
  %alter.0.off0449 = phi i1 [ %alter.1.off0, %for.body.for.body_crit_edge ], [ false, %if.end14.for.body_crit_edge ]
  %dupsop.0.off0448 = phi i1 [ %dupsop.1.off0, %for.body.for.body_crit_edge ], [ false, %if.end14.for.body_crit_edge ]
  %dup.0447 = phi i32 [ %dup.1, %for.body.for.body_crit_edge ], [ 0, %if.end14.for.body_crit_edge ]
  %8 = ptrtoint ptr %sop.0452 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sop.0452, align 2
  %conv = zext i16 %9 to i32
  %rem = and i32 %conv, 31
  %shl = shl nuw i32 1, %rem
  %10 = tail call i32 @llvm.smax.i32(i32 %max.0451, i32 %conv)
  %sem_flg = getelementptr inbounds %struct.sembuf, ptr %sop.0452, i32 0, i32 2
  %11 = ptrtoint ptr %sem_flg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sem_flg, align 2
  %13 = and i16 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool26.not = icmp ne i16 %13, 0
  %undos.1.off0 = select i1 %tobool26.not, i1 true, i1 %undos.0.off0450
  %and29 = and i32 %shl, %dup.0447
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp ne i32 %and29, 0
  %dupsop.1.off0 = select i1 %tobool30.not, i1 true, i1 %dupsop.0.off0448
  %sem_op = getelementptr inbounds %struct.sembuf, ptr %sop.0452, i32 0, i32 1
  %14 = ptrtoint ptr %sem_op to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sem_op, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp34.not = icmp eq i16 %15, 0
  %or = select i1 %cmp34.not, i32 0, i32 %shl
  %dup.1 = or i32 %or, %dup.0447
  %not.cmp34.not = xor i1 %cmp34.not, true
  %alter.1.off0 = select i1 %not.cmp34.not, i1 true, i1 %alter.0.off0449
  %incdec.ptr = getelementptr %struct.sembuf, ptr %sop.0452, i32 1
  %cmp15 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp15, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %undos.1.off0, label %if.then39, label %for.end.if.else_crit_edge

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then39:                                        ; preds = %for.end
  %16 = tail call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i, align 8
  %sysvsem.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 103
  %20 = ptrtoint ptr %sysvsem.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sysvsem.i.i, align 4
  %tobool.not.i100.i = icmp eq ptr %21, null
  br i1 %tobool.not.i100.i, label %if.then.i101.i, label %if.then39.if.end.i_crit_edge

if.then39.if.end.i_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i101.i:                                   ; preds = %if.then39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 4197824, i32 noundef 56) #19
  %cmp.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i.i, label %if.then.i101.i.if.then42_crit_edge, label %do.body.i.i

if.then.i101.i.if.then42_crit_edge:               ; preds = %if.then.i101.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42

do.body.i.i:                                      ; preds = %if.then.i101.i
  call void @__sanitizer_cov_trace_pc() #15
  %lock.i.i = getelementptr inbounds %struct.sem_undo_list, ptr %call7.i.i.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @get_undo_list.__key, i16 noundef signext 3) #13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 4) #13
  %23 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %call7.i.i.i.i, align 8
  %list_proc.i.i = getelementptr inbounds %struct.sem_undo_list, ptr %call7.i.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %list_proc.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list_proc.i.i, ptr %list_proc.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.sem_undo_list, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list_proc.i.i, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i.i, align 8
  %sysvsem7.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 103
  %28 = ptrtoint ptr %sysvsem7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i.i.i, ptr %sysvsem7.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i.i, %if.then39.if.end.i_crit_edge
  %ulp.0.ph.i = phi ptr [ %call7.i.i.i.i, %do.body.i.i ], [ %21, %if.then39.if.end.i_crit_edge ]
  %29 = tail call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %32, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !149
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %lock.i = getelementptr inbounds %struct.sem_undo_list, ptr %ulp.0.ph.i, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #13
  %call2.i = tail call fastcc ptr @lookup_undo(ptr noundef nonnull %ulp.0.ph.i, i32 noundef %semid) #13
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  %cmp.not.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not.i, label %if.end7.i, label %rcu_read_lock.exit.i.find_alloc_undo.exit_crit_edge, !prof !141

rcu_read_lock.exit.i.find_alloc_undo.exit_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %find_alloc_undo.exit

if.end7.i:                                        ; preds = %rcu_read_lock.exit.i
  %call.i102.i = tail call ptr @ipc_obtain_object_check(ptr noundef %ns, i32 noundef %semid) #13
  %cmp.i103.i = icmp ugt ptr %call.i102.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103.i, label %if.then10.i, label %if.end12.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rcu_read_unlock() #13
  br label %find_alloc_undo.exit

if.end12.i:                                       ; preds = %if.end7.i
  %sem_nsems.i = getelementptr inbounds %struct.sem_array, ptr %call.i102.i, i32 0, i32 5
  %33 = ptrtoint ptr %sem_nsems.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sem_nsems.i, align 32
  %call13.i = tail call zeroext i1 @ipc_rcu_getref(ptr noundef %call.i102.i) #13
  tail call fastcc void @rcu_read_unlock() #13
  br i1 %call13.i, label %if.end16.i, label %if.end12.i.if.then42_crit_edge

if.end12.i.if.then42_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42

if.end16.i:                                       ; preds = %if.end12.i
  %mul.i = shl i32 %34, 1
  %add.i = add i32 %mul.i, 36
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add.i, i32 noundef 4197824, i32 noundef -1) #17
  %tobool18.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end22.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ipc_rcu_putref(ptr noundef %call.i102.i, ptr noundef nonnull @sem_rcu_free) #13
  br label %if.then42

if.end22.i:                                       ; preds = %if.end16.i
  %35 = tail call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i89.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i89.i to ptr
  %preempt_count.i.i.i.i90.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i90.i, align 4
  %add.i.i.i91.i = add i32 %38, 1
  store volatile i32 %add.i.i.i91.i, ptr %preempt_count.i.i.i.i90.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !149
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i92.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i92.i, label %if.end22.i.rcu_read_lock.exit99.i_crit_edge, label %land.lhs.true.i95.i

if.end22.i.rcu_read_lock.exit99.i_crit_edge:      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit99.i

land.lhs.true.i95.i:                              ; preds = %if.end22.i
  %call1.i93.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i93.i)
  %tobool.not.i94.i = icmp eq i32 %call1.i93.i, 0
  br i1 %tobool.not.i94.i, label %land.lhs.true.i95.i.rcu_read_lock.exit99.i_crit_edge, label %land.lhs.true2.i97.i

land.lhs.true.i95.i.rcu_read_lock.exit99.i_crit_edge: ; preds = %land.lhs.true.i95.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit99.i

land.lhs.true2.i97.i:                             ; preds = %land.lhs.true.i95.i
  %.b4.i96.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i96.i, label %land.lhs.true2.i97.i.rcu_read_lock.exit99.i_crit_edge, label %if.then.i98.i

land.lhs.true2.i97.i.rcu_read_lock.exit99.i_crit_edge: ; preds = %land.lhs.true2.i97.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit99.i

if.then.i98.i:                                    ; preds = %land.lhs.true2.i97.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit99.i

rcu_read_lock.exit99.i:                           ; preds = %if.then.i98.i, %land.lhs.true2.i97.i.rcu_read_lock.exit99.i_crit_edge, %land.lhs.true.i95.i.rcu_read_lock.exit99.i_crit_edge, %if.end22.i.rcu_read_lock.exit99.i_crit_edge
  tail call fastcc void @sem_lock_and_putref(ptr noundef %call.i102.i) #13
  %deleted.i.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i102.i, i32 0, i32 1
  %39 = ptrtoint ptr %deleted.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %deleted.i.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i104.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i104.i, label %if.end27.i, label %if.then25.i

if.then25.i:                                      ; preds = %rcu_read_lock.exit99.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @sem_unlock(ptr noundef %call.i102.i, i32 noundef -1) #13
  tail call fastcc void @rcu_read_unlock() #13
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #13
  br label %if.then42

if.end27.i:                                       ; preds = %rcu_read_lock.exit99.i
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #13
  %call29.i = tail call fastcc ptr @lookup_undo(ptr noundef nonnull %ulp.0.ph.i, i32 noundef %semid) #13
  %tobool30.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool30.not.i, label %if.end33.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #13
  br label %success.i

if.end33.i:                                       ; preds = %if.end27.i
  %arrayidx.i = getelementptr %struct.sem_undo, ptr %call.i.i.i, i32 1
  %semadj.i = getelementptr inbounds %struct.sem_undo, ptr %call.i.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %semadj.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx.i, ptr %semadj.i, align 4
  %ulp34.i = getelementptr inbounds %struct.sem_undo, ptr %call.i.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %ulp34.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ulp.0.ph.i, ptr %ulp34.i, align 4
  %semid35.i = getelementptr inbounds %struct.sem_undo, ptr %call.i.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %semid35.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %semid, ptr %semid35.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %44 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %lock.i, align 4
  %45 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body48.i, label %do.end54.i, !prof !141

do.body48.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22ipc/sem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1975, 0\0A.popsection", ""() #13, !srcloc !156
  unreachable

do.end54.i:                                       ; preds = %if.end33.i
  %list_proc55.i = getelementptr inbounds %struct.sem_undo_list, ptr %ulp.0.ph.i, i32 0, i32 2
  tail call fastcc void @list_add_rcu(ptr noundef nonnull %call.i.i.i, ptr noundef %list_proc55.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %46 = ptrtoint ptr %call.i102.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %call.i102.i, align 4
  %47 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %ipc_assert_locked_object.exit.i, !prof !141

do.body4.i.i:                                     ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22ipc/util.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #13, !srcloc !142
  unreachable

ipc_assert_locked_object.exit.i:                  ; preds = %do.end54.i
  %list_id.i = getelementptr inbounds %struct.sem_undo, ptr %call.i.i.i, i32 0, i32 3
  %list_id57.i = getelementptr inbounds %struct.sem_array, ptr %call.i102.i, i32 0, i32 4
  %48 = ptrtoint ptr %list_id57.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %list_id57.i, align 4
  %call.i.i105.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_id.i, ptr noundef %list_id57.i, ptr noundef %49) #13
  br i1 %call.i.i105.i, label %if.end.i.i.i, label %ipc_assert_locked_object.exit.i.list_add.exit.i_crit_edge

ipc_assert_locked_object.exit.i.list_add.exit.i_crit_edge: ; preds = %ipc_assert_locked_object.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %ipc_assert_locked_object.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %list_id.i, ptr %prev1.i.i.i, align 4
  %51 = ptrtoint ptr %list_id.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %49, ptr %list_id.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.sem_undo, ptr %call.i.i.i, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %list_id57.i, ptr %prev3.i.i.i, align 4
  %53 = ptrtoint ptr %list_id57.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %list_id.i, ptr %list_id57.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %ipc_assert_locked_object.exit.i.list_add.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  br label %success.i

success.i:                                        ; preds = %list_add.exit.i, %if.then31.i
  %un.0.i = phi ptr [ %call29.i, %if.then31.i ], [ %call.i.i.i, %list_add.exit.i ]
  tail call fastcc void @sem_unlock(ptr noundef %call.i102.i, i32 noundef -1) #13
  br label %find_alloc_undo.exit

find_alloc_undo.exit:                             ; preds = %success.i, %if.then10.i, %rcu_read_lock.exit.i.find_alloc_undo.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i102.i, %if.then10.i ], [ %call2.i, %rcu_read_lock.exit.i.find_alloc_undo.exit_crit_edge ], [ %un.0.i, %success.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %find_alloc_undo.exit.if.then42_crit_edge, label %find_alloc_undo.exit.if.end45_crit_edge

find_alloc_undo.exit.if.end45_crit_edge:          ; preds = %find_alloc_undo.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

find_alloc_undo.exit.if.then42_crit_edge:         ; preds = %find_alloc_undo.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42

if.then42:                                        ; preds = %find_alloc_undo.exit.if.then42_crit_edge, %if.then25.i, %if.then19.i, %if.end12.i.if.then42_crit_edge, %if.then.i101.i.if.then42_crit_edge
  %retval.0.i440 = phi ptr [ %retval.0.i, %find_alloc_undo.exit.if.then42_crit_edge ], [ inttoptr (i32 -43 to ptr), %if.end12.i.if.then42_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.i101.i.if.then42_crit_edge ], [ inttoptr (i32 -43 to ptr), %if.then25.i ], [ inttoptr (i32 -12 to ptr), %if.then19.i ]
  %54 = ptrtoint ptr %retval.0.i440 to i32
  br label %cleanup

if.else:                                          ; preds = %for.end.if.else_crit_edge, %if.end14.if.else_crit_edge
  %max.0.lcssa469 = phi i32 [ %10, %for.end.if.else_crit_edge ], [ 0, %if.end14.if.else_crit_edge ]
  %alter.0.off0.lcssa467 = phi i1 [ %alter.1.off0, %for.end.if.else_crit_edge ], [ false, %if.end14.if.else_crit_edge ]
  %dupsop.0.off0.lcssa465 = phi i1 [ %dupsop.1.off0, %for.end.if.else_crit_edge ], [ false, %if.end14.if.else_crit_edge ]
  %55 = tail call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %58, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !149
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %if.else.if.end45_crit_edge, label %land.lhs.true.i

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

land.lhs.true.i:                                  ; preds = %if.else
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end45_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end45_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.if.end45_crit_edge, label %if.then.i

land.lhs.true2.i.if.end45_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %if.end45

if.end45:                                         ; preds = %if.then.i, %land.lhs.true2.i.if.end45_crit_edge, %land.lhs.true.i.if.end45_crit_edge, %if.else.if.end45_crit_edge, %find_alloc_undo.exit.if.end45_crit_edge
  %max.0.lcssa468 = phi i32 [ %10, %find_alloc_undo.exit.if.end45_crit_edge ], [ %max.0.lcssa469, %if.else.if.end45_crit_edge ], [ %max.0.lcssa469, %land.lhs.true.i.if.end45_crit_edge ], [ %max.0.lcssa469, %land.lhs.true2.i.if.end45_crit_edge ], [ %max.0.lcssa469, %if.then.i ]
  %alter.0.off0.lcssa466 = phi i1 [ %alter.1.off0, %find_alloc_undo.exit.if.end45_crit_edge ], [ %alter.0.off0.lcssa467, %if.else.if.end45_crit_edge ], [ %alter.0.off0.lcssa467, %land.lhs.true.i.if.end45_crit_edge ], [ %alter.0.off0.lcssa467, %land.lhs.true2.i.if.end45_crit_edge ], [ %alter.0.off0.lcssa467, %if.then.i ]
  %dupsop.0.off0.lcssa464 = phi i1 [ %dupsop.1.off0, %find_alloc_undo.exit.if.end45_crit_edge ], [ %dupsop.0.off0.lcssa465, %if.else.if.end45_crit_edge ], [ %dupsop.0.off0.lcssa465, %land.lhs.true.i.if.end45_crit_edge ], [ %dupsop.0.off0.lcssa465, %land.lhs.true2.i.if.end45_crit_edge ], [ %dupsop.0.off0.lcssa465, %if.then.i ]
  %un.0 = phi ptr [ %retval.0.i, %find_alloc_undo.exit.if.end45_crit_edge ], [ null, %if.else.if.end45_crit_edge ], [ null, %land.lhs.true.i.if.end45_crit_edge ], [ null, %land.lhs.true2.i.if.end45_crit_edge ], [ null, %if.then.i ]
  %call.i384 = tail call ptr @ipc_obtain_object_check(ptr noundef %ns, i32 noundef %semid) #13
  %cmp.i385 = icmp ugt ptr %call.i384, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i385, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end45
  %call.i386 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i386, label %if.then48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i389

if.then48.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i389:                               ; preds = %if.then48
  %call1.i387 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i387)
  %tobool.not.i388 = icmp eq i32 %call1.i387, 0
  br i1 %tobool.not.i388, label %land.lhs.true.i389.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i391

land.lhs.true.i389.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i389
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i391:                              ; preds = %land.lhs.true.i389
  %.b4.i390 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i390, label %land.lhs.true2.i391.rcu_read_unlock.exit_crit_edge, label %if.then.i392

land.lhs.true2.i391.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i391
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i392:                                     ; preds = %land.lhs.true2.i391
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i392, %land.lhs.true2.i391.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i389.rcu_read_unlock.exit_crit_edge, %if.then48.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %59 = tail call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i393 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i393 to ptr
  %preempt_count.i.i.i.i394 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i394 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i394, align 4
  %sub.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i394, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %63 = ptrtoint ptr %call.i384 to i32
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  %sem_nsems = getelementptr inbounds %struct.sem_array, ptr %call.i384, i32 0, i32 5
  %64 = ptrtoint ptr %sem_nsems to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sem_nsems, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %max.0.lcssa468, i32 %65)
  %cmp51.not = icmp slt i32 %max.0.lcssa468, %65
  br i1 %cmp51.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end50
  %call.i395 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i395, label %if.then53.rcu_read_unlock.exit405_crit_edge, label %land.lhs.true.i398

if.then53.rcu_read_unlock.exit405_crit_edge:      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit405

land.lhs.true.i398:                               ; preds = %if.then53
  %call1.i396 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i396)
  %tobool.not.i397 = icmp eq i32 %call1.i396, 0
  br i1 %tobool.not.i397, label %land.lhs.true.i398.rcu_read_unlock.exit405_crit_edge, label %land.lhs.true2.i400

land.lhs.true.i398.rcu_read_unlock.exit405_crit_edge: ; preds = %land.lhs.true.i398
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit405

land.lhs.true2.i400:                              ; preds = %land.lhs.true.i398
  %.b4.i399 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i399, label %land.lhs.true2.i400.rcu_read_unlock.exit405_crit_edge, label %if.then.i401

land.lhs.true2.i400.rcu_read_unlock.exit405_crit_edge: ; preds = %land.lhs.true2.i400
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit405

if.then.i401:                                     ; preds = %land.lhs.true2.i400
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit405

rcu_read_unlock.exit405:                          ; preds = %if.then.i401, %land.lhs.true2.i400.rcu_read_unlock.exit405_crit_edge, %land.lhs.true.i398.rcu_read_unlock.exit405_crit_edge, %if.then53.rcu_read_unlock.exit405_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %66 = tail call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i402 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i402 to ptr
  %preempt_count.i.i.i.i403 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i403 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i403, align 4
  %sub.i.i.i404 = add i32 %69, -1
  store volatile i32 %sub.i.i.i404, ptr %preempt_count.i.i.i.i403, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %conv57 = select i1 %alter.0.off0.lcssa466, i16 146, i16 292
  %call58 = tail call i32 @ipcperms(ptr noundef %ns, ptr noundef %call.i384, i16 noundef signext %conv57) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.then60

if.then60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

if.end61:                                         ; preds = %if.end54
  %conv64 = zext i1 %alter.0.off0.lcssa466 to i32
  %call65 = tail call i32 @security_sem_semop(ptr noundef %call.i384, ptr noundef %sops, i32 noundef %nsops, i32 noundef %conv64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.then67

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

if.end68:                                         ; preds = %if.end61
  %call69 = tail call fastcc i32 @sem_lock(ptr noundef %call.i384, ptr noundef %sops, i32 noundef %nsops)
  %deleted.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i384, i32 0, i32 1
  %70 = ptrtoint ptr %deleted.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %deleted.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i406 = icmp eq i8 %71, 0
  br i1 %tobool.not.i406, label %if.end73, label %if.end68.out_unlock_crit_edge

if.end68.out_unlock_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end73:                                         ; preds = %if.end68
  %tobool74.not = icmp eq ptr %un.0, null
  br i1 %tobool74.not, label %if.end73.if.end79_crit_edge, label %land.lhs.true

if.end73.if.end79_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

land.lhs.true:                                    ; preds = %if.end73
  %semid75 = getelementptr inbounds %struct.sem_undo, ptr %un.0, i32 0, i32 4
  %72 = ptrtoint ptr %semid75 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %semid75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp76 = icmp eq i32 %73, -1
  br i1 %cmp76, label %land.lhs.true.out_unlock_crit_edge, label %land.lhs.true.if.end79_crit_edge

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

land.lhs.true.out_unlock_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end79:                                         ; preds = %land.lhs.true.if.end79_crit_edge, %if.end73.if.end79_crit_edge
  %sops80 = getelementptr inbounds %struct.sem_queue, ptr %queue, i32 0, i32 5
  %74 = ptrtoint ptr %sops80 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %sops, ptr %sops80, align 4
  %nsops81 = getelementptr inbounds %struct.sem_queue, ptr %queue, i32 0, i32 7
  %75 = ptrtoint ptr %nsops81 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %nsops, ptr %nsops81, align 4
  %undo = getelementptr inbounds %struct.sem_queue, ptr %queue, i32 0, i32 2
  %76 = ptrtoint ptr %undo to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %un.0, ptr %undo, align 4
  %77 = tail call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 111
  %81 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %signal.i, align 16
  %arrayidx.i407 = getelementptr %struct.signal_struct, ptr %82, i32 0, i32 22, i32 1
  %83 = ptrtoint ptr %arrayidx.i407 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i407, align 4
  %pid = getelementptr inbounds %struct.sem_queue, ptr %queue, i32 0, i32 3
  %85 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %pid, align 4
  %alter85 = getelementptr inbounds %struct.sem_queue, ptr %queue, i32 0, i32 8
  %frombool = zext i1 %alter.0.off0.lcssa466 to i8
  %86 = ptrtoint ptr %alter85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %frombool, ptr %alter85, align 4
  %dupsop87 = getelementptr inbounds %struct.sem_queue, ptr %queue, i32 0, i32 9
  %frombool88 = zext i1 %dupsop.0.off0.lcssa464 to i8
  %87 = ptrtoint ptr %dupsop87 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %frombool88, ptr %dupsop87, align 1
  %call89 = call fastcc i32 @perform_atomic_semop(ptr noundef %call.i384, ptr noundef nonnull %queue)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %if.then92, label %if.end98

if.then92:                                        ; preds = %if.end79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q) #13
  %88 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1
  %89 = ptrtoint ptr %wake_q to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q, align 4
  %90 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %wake_q, ptr %88, align 4
  br i1 %alter.0.off0.lcssa466, label %if.then95, label %if.else96

if.then95:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @do_smart_update(ptr noundef %call.i384, ptr noundef %sops, i32 noundef %nsops, i32 noundef 1, ptr noundef nonnull %wake_q)
  br label %if.end97

if.else96:                                        ; preds = %if.then92
  %cmp.i408 = icmp eq ptr %sops, null
  %call.i409 = call i64 @ktime_get_real_seconds() #13
  br i1 %cmp.i408, label %if.then.i410, label %if.else.i

if.then.i410:                                     ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #15
  %sem_otime.i = getelementptr inbounds %struct.sem_array, ptr %call.i384, i32 1, i32 0, i32 8
  br label %set_semotime.exit

if.else.i:                                        ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %sops to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %sops, align 2
  %idxprom.i = zext i16 %92 to i32
  %sem_otime5.i = getelementptr %struct.sem_array, ptr %call.i384, i32 0, i32 9, i32 %idxprom.i, i32 5
  br label %set_semotime.exit

set_semotime.exit:                                ; preds = %if.else.i, %if.then.i410
  %sem_otime5.sink.i = phi ptr [ %sem_otime5.i, %if.else.i ], [ %sem_otime.i, %if.then.i410 ]
  %93 = ptrtoint ptr %sem_otime5.sink.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %call.i409, ptr %sem_otime5.sink.i, align 8
  br label %if.end97

if.end97:                                         ; preds = %set_semotime.exit, %if.then95
  call fastcc void @sem_unlock(ptr noundef %call.i384, i32 noundef %call69)
  call fastcc void @rcu_read_unlock()
  call void @wake_up_q(ptr noundef nonnull %wake_q) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q) #13
  br label %cleanup

if.end98:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp99 = icmp slt i32 %call89, 0
  br i1 %cmp99, label %if.end98.out_unlock_crit_edge, label %if.end102

if.end98.out_unlock_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end102:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nsops)
  %cmp103 = icmp eq i32 %nsops, 1
  br i1 %cmp103, label %if.then105, label %if.else129

if.then105:                                       ; preds = %if.end102
  %94 = ptrtoint ptr %sops to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %sops, align 2
  %96 = ptrtoint ptr %sem_nsems to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sem_nsems, align 32
  %conv108 = zext i16 %95 to i32
  %98 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv108, i32 %97) #13, !srcloc !155
  %99 = trunc i32 %98 to i16
  %conv115 = and i16 %95, %99
  %conv116 = zext i16 %conv115 to i32
  br i1 %alter.0.off0.lcssa466, label %if.then119, label %if.else126

if.then119:                                       ; preds = %if.then105
  %complex_count = getelementptr inbounds %struct.sem_array, ptr %call.i384, i32 0, i32 6
  %100 = ptrtoint ptr %complex_count to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %complex_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool120.not = icmp eq i32 %101, 0
  br i1 %tobool120.not, label %if.else122, label %if.then121

if.then121:                                       ; preds = %if.then119
  %pending_alter = getelementptr inbounds %struct.sem_array, ptr %call.i384, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.sem_array, ptr %call.i384, i32 0, i32 2, i32 1
  %102 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %prev.i, align 4
  %call.i.i412 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %queue, ptr noundef %103, ptr noundef %pending_alter) #13
  br i1 %call.i.i412, label %if.end.i.i, label %if.then121.if.end143_crit_edge

if.then121.if.end143_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end143

if.end.i.i:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #15
  %104 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %queue, ptr %prev.i, align 4
  %105 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %pending_alter, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %queue, i32 0, i32 1
  %106 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %prev3.i.i, align 4
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %queue, ptr %103, align 4
  br label %if.end143

if.else122:                                       ; preds = %if.then119
  %pending_alter124 = getelementptr %struct.sem_array, ptr %call.i384, i32 0, i32 9, i32 %conv116, i32 3
  %prev.i413 = getelementptr %struct.sem_array, ptr %call.i384, i32 0, i32 9, i32 %conv116, i32 3, i32 1
  %108 = ptrtoint ptr %prev.i413 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i413, align 4
  %call.i.i414 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %queue, ptr noundef %109, ptr noundef %pending_alter124) #13
  br i1 %call.i.i414, label %if.end.i.i416, label %if.else122.if.end143_crit_edge

if.else122.if.end143_crit_edge:                   ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end143

if.end.i.i416:                                    ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %prev.i413 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %queue, ptr %prev.i413, align 4
  %111 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %pending_alter124, ptr %queue, align 4
  %prev3.i.i415 = getelementptr inbounds %struct.list_head, ptr %queue, i32 0, i32 1
  %112 = ptrtoint ptr %prev3.i.i415 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev3.i.i415, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %queue, ptr %109, align 4
  br label %if.end143

if.else126:                                       ; preds = %if.then105
  %pending_const = getelementptr %struct.sem_array, ptr %call.i384, i32 0, i32 9, i32 %conv116, i32 4
  %prev.i418 = getelementptr %struct.sem_array, ptr %call.i384, i32 0, i32 9, i32 %conv116, i32 4, i32 1
  %114 = ptrtoint ptr %prev.i418 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev.i418, align 4
  %call.i.i419 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %queue, ptr noundef %115, ptr noundef %pending_const) #13
  br i1 %call.i.i419, label %if.end.i.i421, label %if.else126.if.end143_crit_edge

if.else126.if.end143_crit_edge:                   ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end143

if.end.i.i421:                                    ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #15
  %116 = ptrtoint ptr %prev.i418 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %queue, ptr %prev.i418, align 4
  %117 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %pending_const, ptr %queue, align 4
  %prev3.i.i420 = getelementptr inbounds %struct.list_head, ptr %queue, i32 0, i32 1
  %118 = ptrtoint ptr %prev3.i.i420 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %prev3.i.i420, align 4
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %queue, ptr %115, align 4
  br label %if.end143

if.else129:                                       ; preds = %if.end102
  %complex_count130 = getelementptr inbounds %struct.sem_array, ptr %call.i384, i32 0, i32 6
  %120 = ptrtoint ptr %complex_count130 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %complex_count130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool131.not = icmp eq i32 %121, 0
  br i1 %tobool131.not, label %if.then132, label %if.else129.if.end133_crit_edge

if.else129.if.end133_crit_edge:                   ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end133

if.then132:                                       ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @merge_queues(ptr noundef %call.i384)
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %if.else129.if.end133_crit_edge
  br i1 %alter.0.off0.lcssa466, label %if.then135, label %if.else138

if.then135:                                       ; preds = %if.end133
  %pending_alter137 = getelementptr inbounds %struct.sem_array, ptr %call.i384, i32 0, i32 2
  %prev.i423 = getelementptr inbounds %struct.sem_array, ptr %call.i384, i32 0, i32 2, i32 1
  %122 = ptrtoint ptr %prev.i423 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %prev.i423, align 4
  %call.i.i424 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %queue, ptr noundef %123, ptr noundef %pending_alter137) #13
  br i1 %call.i.i424, label %if.then135.if.end141.sink.split_crit_edge, label %if.then135.if.end141_crit_edge

if.then135.if.end141_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

if.then135.if.end141.sink.split_crit_edge:        ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141.sink.split

if.else138:                                       ; preds = %if.end133
  %pending_const140 = getelementptr inbounds %struct.sem_array, ptr %call.i384, i32 0, i32 3
  %prev.i428 = getelementptr inbounds %struct.sem_array, ptr %call.i384, i32 0, i32 3, i32 1
  %124 = ptrtoint ptr %prev.i428 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i428, align 4
  %call.i.i429 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %queue, ptr noundef %125, ptr noundef %pending_const140) #13
  br i1 %call.i.i429, label %if.else138.if.end141.sink.split_crit_edge, label %if.else138.if.end141_crit_edge

if.else138.if.end141_crit_edge:                   ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141

if.else138.if.end141.sink.split_crit_edge:        ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end141.sink.split

if.end141.sink.split:                             ; preds = %if.else138.if.end141.sink.split_crit_edge, %if.then135.if.end141.sink.split_crit_edge
  %prev.i423.sink = phi ptr [ %prev.i423, %if.then135.if.end141.sink.split_crit_edge ], [ %prev.i428, %if.else138.if.end141.sink.split_crit_edge ]
  %storemerge = phi ptr [ %pending_alter137, %if.then135.if.end141.sink.split_crit_edge ], [ %pending_const140, %if.else138.if.end141.sink.split_crit_edge ]
  %.sink474 = phi ptr [ %123, %if.then135.if.end141.sink.split_crit_edge ], [ %125, %if.else138.if.end141.sink.split_crit_edge ]
  %126 = ptrtoint ptr %prev.i423.sink to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %queue, ptr %prev.i423.sink, align 4
  %127 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %storemerge, ptr %queue, align 4
  %prev3.i.i430 = getelementptr inbounds %struct.list_head, ptr %queue, i32 0, i32 1
  %128 = ptrtoint ptr %prev3.i.i430 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %.sink474, ptr %prev3.i.i430, align 4
  %129 = ptrtoint ptr %.sink474 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %queue, ptr %.sink474, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.end141.sink.split, %if.else138.if.end141_crit_edge, %if.then135.if.end141_crit_edge
  %130 = ptrtoint ptr %complex_count130 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %complex_count130, align 4
  %inc = add i32 %131, 1
  store i32 %inc, ptr %complex_count130, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.end141, %if.end.i.i421, %if.else126.if.end143_crit_edge, %if.end.i.i416, %if.else122.if.end143_crit_edge, %if.end.i.i, %if.then121.if.end143_crit_edge
  %status = getelementptr inbounds %struct.sem_queue, ptr %queue, i32 0, i32 4
  %sleeper = getelementptr inbounds %struct.sem_queue, ptr %queue, i32 0, i32 1
  %tobool.not.not = xor i1 %tobool.not, true
  br label %do.body144

do.body144:                                       ; preds = %signal_pending.exit.do.body144_crit_edge, %if.end143
  %jiffies_left.1 = phi i32 [ %jiffies_left.0, %if.end143 ], [ %jiffies_left.2, %signal_pending.exit.do.body144_crit_edge ]
  %locknum.0 = phi i32 [ %call69, %if.end143 ], [ %call236, %signal_pending.exit.do.body144_crit_edge ]
  %132 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile i32 -4, ptr %status, align 4
  %133 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %task, align 8
  %135 = ptrtoint ptr %sleeper to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %134, ptr %sleeper, align 4
  br label %__here

__here:                                           ; preds = %do.body144
  %136 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %137, i32 0, i32 212
  %138 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 ptrtoint (ptr blockaddress(@__do_semtimedop, %__here) to i32), ptr %task_state_change, align 4
  %139 = load ptr, ptr %task, align 8
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile i32 1, ptr %139, align 128
  call fastcc void @sem_unlock(ptr noundef %call.i384, i32 noundef %locknum.0)
  call fastcc void @rcu_read_unlock()
  br i1 %tobool.not, label %if.else219, label %if.then217

if.then217:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  %call218 = call i32 @schedule_timeout(i32 noundef %jiffies_left.1) #13
  br label %do.end223

if.else219:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  call void @schedule() #13
  br label %do.end223

do.end223:                                        ; preds = %if.else219, %if.then217
  %jiffies_left.2 = phi i32 [ %call218, %if.then217 ], [ %jiffies_left.1, %if.else219 ]
  %141 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %142)
  %cmp226.not = icmp eq i32 %142, -4
  br i1 %cmp226.not, label %if.end235, label %do.end232

do.end232:                                        ; preds = %do.end223
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !157
  br label %cleanup

if.end235:                                        ; preds = %do.end223
  %143 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i373 = and i32 %143, -16384
  %144 = inttoptr i32 %and.i.i.i.i.i373 to ptr
  %preempt_count.i.i.i.i374 = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %preempt_count.i.i.i.i374 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %preempt_count.i.i.i.i374, align 4
  %add.i.i.i375 = add i32 %146, 1
  store volatile i32 %add.i.i.i375, ptr %preempt_count.i.i.i.i374, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !149
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i376 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i376, label %if.end235.rcu_read_lock.exit383_crit_edge, label %land.lhs.true.i379

if.end235.rcu_read_lock.exit383_crit_edge:        ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit383

land.lhs.true.i379:                               ; preds = %if.end235
  %call1.i377 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i377)
  %tobool.not.i378 = icmp eq i32 %call1.i377, 0
  br i1 %tobool.not.i378, label %land.lhs.true.i379.rcu_read_lock.exit383_crit_edge, label %land.lhs.true2.i381

land.lhs.true.i379.rcu_read_lock.exit383_crit_edge: ; preds = %land.lhs.true.i379
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit383

land.lhs.true2.i381:                              ; preds = %land.lhs.true.i379
  %.b4.i380 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i380, label %land.lhs.true2.i381.rcu_read_lock.exit383_crit_edge, label %if.then.i382

land.lhs.true2.i381.rcu_read_lock.exit383_crit_edge: ; preds = %land.lhs.true2.i381
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit383

if.then.i382:                                     ; preds = %land.lhs.true2.i381
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit383

rcu_read_lock.exit383:                            ; preds = %if.then.i382, %land.lhs.true2.i381.rcu_read_lock.exit383_crit_edge, %land.lhs.true.i379.rcu_read_lock.exit383_crit_edge, %if.end235.rcu_read_lock.exit383_crit_edge
  %call236 = call fastcc i32 @sem_lock(ptr noundef %call.i384, ptr noundef %sops, i32 noundef %nsops)
  %147 = ptrtoint ptr %deleted.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %deleted.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.i434 = icmp eq i8 %148, 0
  br i1 %tobool.not.i434, label %do.end243, label %rcu_read_lock.exit383.out_unlock_crit_edge

rcu_read_lock.exit383.out_unlock_crit_edge:       ; preds = %rcu_read_lock.exit383
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

do.end243:                                        ; preds = %rcu_read_lock.exit383
  %149 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %150)
  %cmp246.not = icmp eq i32 %150, -4
  br i1 %cmp246.not, label %if.end249, label %do.end243.out_unlock_crit_edge

do.end243.out_unlock_crit_edge:                   ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end249:                                        ; preds = %do.end243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %jiffies_left.2)
  %cmp252 = icmp eq i32 %jiffies_left.2, 0
  %or.cond370 = select i1 %tobool.not.not, i1 %cmp252, i1 false
  br i1 %or.cond370, label %if.end249.do.end267_crit_edge, label %land.rhs259

if.end249.do.end267_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end267

land.rhs259:                                      ; preds = %if.end249
  %151 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %stack.i.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %154, align 4
  %157 = and i32 %156, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool.not.i435 = icmp eq i32 %157, 0
  br i1 %tobool.not.i435, label %signal_pending.exit, label %land.rhs259.do.end267_crit_edge, !prof !144

land.rhs259.do.end267_crit_edge:                  ; preds = %land.rhs259
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end267

signal_pending.exit:                              ; preds = %land.rhs259
  %158 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %154, align 4
  %and1.i.i.i.i.i = and i32 %159, 1
  %tobool263.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool263.not, label %signal_pending.exit.do.body144_crit_edge, label %signal_pending.exit.do.end267_crit_edge

signal_pending.exit.do.end267_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end267

signal_pending.exit.do.body144_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body144

do.end267:                                        ; preds = %signal_pending.exit.do.end267_crit_edge, %land.rhs259.do.end267_crit_edge, %if.end249.do.end267_crit_edge
  %spec.select372.le = phi i32 [ -4, %land.rhs259.do.end267_crit_edge ], [ -11, %if.end249.do.end267_crit_edge ], [ -4, %signal_pending.exit.do.end267_crit_edge ]
  call fastcc void @unlink_queue(ptr noundef %call.i384, ptr noundef nonnull %queue)
  br label %out_unlock

out_unlock:                                       ; preds = %do.end267, %do.end243.out_unlock_crit_edge, %rcu_read_lock.exit383.out_unlock_crit_edge, %if.end98.out_unlock_crit_edge, %land.lhs.true.out_unlock_crit_edge, %if.end68.out_unlock_crit_edge
  %locknum.1 = phi i32 [ %call69, %land.lhs.true.out_unlock_crit_edge ], [ %call69, %if.end98.out_unlock_crit_edge ], [ %call236, %do.end267 ], [ %call69, %if.end68.out_unlock_crit_edge ], [ %call236, %rcu_read_lock.exit383.out_unlock_crit_edge ], [ %call236, %do.end243.out_unlock_crit_edge ]
  %error.1 = phi i32 [ -43, %land.lhs.true.out_unlock_crit_edge ], [ %call89, %if.end98.out_unlock_crit_edge ], [ %spec.select372.le, %do.end267 ], [ -43, %if.end68.out_unlock_crit_edge ], [ %150, %do.end243.out_unlock_crit_edge ], [ -4, %rcu_read_lock.exit383.out_unlock_crit_edge ]
  call fastcc void @sem_unlock(ptr noundef %call.i384, i32 noundef %locknum.1)
  call fastcc void @rcu_read_unlock()
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %do.end232, %if.end97, %if.then67, %if.then60, %rcu_read_unlock.exit405, %rcu_read_unlock.exit, %if.then42, %lor.lhs.false7.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -7, %if.end.cleanup_crit_edge ], [ %54, %if.then42 ], [ %63, %rcu_read_unlock.exit ], [ -27, %rcu_read_unlock.exit405 ], [ -13, %if.then60 ], [ %call65, %if.then67 ], [ %error.1, %out_unlock ], [ 0, %if.end97 ], [ %142, %do.end232 ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %if.then5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %queue) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timespec64_to_jiffies(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %0 = tail call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipcperms(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sem_semop(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sem_lock(ptr noundef %sma, ptr nocapture noundef readonly %sops, i32 noundef %nsops) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nsops)
  %cmp.not = icmp eq i32 %nsops, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %sma) #13
  %use_global_lock.i = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 7
  %0 = ptrtoint ptr %use_global_lock.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use_global_lock.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  %2 = ptrtoint ptr %use_global_lock.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 10, ptr %use_global_lock.i, align 8
  br i1 %cmp.not.i, label %do.body12.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body12.i:                                      ; preds = %if.then
  %sem_nsems.i = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 5
  %3 = ptrtoint ptr %sem_nsems.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sem_nsems.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1828.i = icmp sgt i32 %4, 0
  br i1 %cmp1828.i, label %do.body12.i.for.body.i_crit_edge, label %do.body12.i.cleanup_crit_edge

do.body12.i.cleanup_crit_edge:                    ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body12.i.for.body.i_crit_edge:                 ; preds = %do.body12.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body12.i.for.body.i_crit_edge
  %i.029.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body12.i.for.body.i_crit_edge ]
  %lock.i = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %i.029.i, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #13
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %5 = ptrtoint ptr %sem_nsems.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sem_nsems.i, align 32
  %cmp18.i = icmp slt i32 %inc.i, %6
  br i1 %cmp18.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %sops to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sops, align 2
  %sem_nsems = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 5
  %9 = ptrtoint ptr %sem_nsems to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sem_nsems, align 32
  %conv = zext i16 %8 to i32
  %11 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv, i32 %10) #13, !srcloc !155
  %12 = trunc i32 %11 to i16
  %conv5 = and i16 %8, %12
  %conv6 = zext i16 %conv5 to i32
  %use_global_lock = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 7
  %13 = ptrtoint ptr %use_global_lock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %use_global_lock, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.then11, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then11:                                        ; preds = %if.end
  %lock = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %conv6, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %15 = ptrtoint ptr %use_global_lock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %use_global_lock, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool21.not = icmp eq i32 %16, 0
  br i1 %tobool21.not, label %if.then11.cleanup.sink.split_crit_edge, label %if.end25

if.then11.cleanup.sink.split_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end25:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %if.end.if.end27_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %sma) #13
  %17 = ptrtoint ptr %use_global_lock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %use_global_lock, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp30 = icmp eq i32 %18, 0
  br i1 %cmp30, label %if.then32, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %lock33 = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %conv6, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock33) #13
  tail call void @_raw_spin_unlock(ptr noundef %sma) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then32, %if.then11.cleanup.sink.split_crit_edge
  %19 = ptrtoint ptr %sops to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sops, align 2
  %conv36 = zext i16 %20 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end27.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %do.body12.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end27.cleanup_crit_edge ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %do.body12.i.cleanup_crit_edge ], [ %conv36, %cleanup.sink.split ], [ -1, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @perform_atomic_semop(ptr nocapture noundef %sma, ptr nocapture noundef %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sops1 = getelementptr inbounds %struct.sem_queue, ptr %q, i32 0, i32 5
  %0 = ptrtoint ptr %sops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sops1, align 4
  %undo = getelementptr inbounds %struct.sem_queue, ptr %q, i32 0, i32 2
  %2 = ptrtoint ptr %undo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %undo, align 4
  %dupsop = getelementptr inbounds %struct.sem_queue, ptr %q, i32 0, i32 9
  %4 = ptrtoint ptr %dupsop to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dupsop, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then, !prof !144

for.cond.preheader:                               ; preds = %entry
  %nsops2 = getelementptr inbounds %struct.sem_queue, ptr %q, i32 0, i32 7
  %6 = ptrtoint ptr %nsops2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nsops2, align 4
  %add.ptr = getelementptr %struct.sembuf, ptr %1, i32 %7
  %cmp146 = icmp ult ptr %1, %add.ptr
  br i1 %cmp146, label %for.body.lr.ph, label %for.cond.preheader.cleanup83_crit_edge

for.cond.preheader.cleanup83_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup83

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sem_nsems = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 5
  %semadj = getelementptr inbounds %struct.sem_undo, ptr %3, i32 0, i32 5
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call fastcc i32 @perform_atomic_semop_slow(ptr noundef %sma, ptr noundef %q)
  br label %cleanup83

for.cond44.preheader:                             ; preds = %for.inc
  br i1 %cmp146, label %for.body48.lr.ph, label %for.cond44.preheader.cleanup83_crit_edge

for.cond44.preheader.cleanup83_crit_edge:         ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup83

for.body48.lr.ph:                                 ; preds = %for.cond44.preheader
  %semadj62 = getelementptr inbounds %struct.sem_undo, ptr %3, i32 0, i32 5
  %pid = getelementptr inbounds %struct.sem_queue, ptr %q, i32 0, i32 3
  br label %for.body48

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sop.0147 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %sop.0147 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sop.0147, align 2
  %10 = ptrtoint ptr %sem_nsems to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sem_nsems, align 32
  %conv = zext i16 %9 to i32
  %12 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv, i32 %11) #13, !srcloc !155
  %13 = trunc i32 %12 to i16
  %conv10 = and i16 %9, %13
  %conv11 = zext i16 %conv10 to i32
  %arrayidx = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %conv11
  %sem_op12 = getelementptr inbounds %struct.sembuf, ptr %sop.0147, i32 0, i32 1
  %14 = ptrtoint ptr %sem_op12 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sem_op12, align 2
  %conv13 = sext i16 %15 to i32
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool14.not = icmp ne i16 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  %or.cond = select i1 %tobool14.not, i1 true, i1 %tobool15.not
  br i1 %or.cond, label %if.end17, label %for.body.would_block_crit_edge

for.body.would_block_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %would_block

if.end17:                                         ; preds = %for.body
  %add = add i32 %17, %conv13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp18 = icmp slt i32 %add, 0
  br i1 %cmp18, label %if.end17.would_block_crit_edge, label %if.end21

if.end17.would_block_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %would_block

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %add)
  %cmp22 = icmp ugt i32 %add, 32767
  br i1 %cmp22, label %if.end21.cleanup83_crit_edge, label %if.end25

if.end21.cleanup83_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup83

if.end25:                                         ; preds = %if.end21
  %sem_flg = getelementptr inbounds %struct.sembuf, ptr %sop.0147, i32 0, i32 2
  %18 = ptrtoint ptr %sem_flg to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sem_flg, align 2
  %20 = and i16 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool28.not = icmp eq i16 %20, 0
  br i1 %tobool28.not, label %if.end25.for.inc_crit_edge, label %if.then29

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then29:                                        ; preds = %if.end25
  %21 = ptrtoint ptr %semadj to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %semadj, align 4
  %23 = ptrtoint ptr %sop.0147 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sop.0147, align 2
  %idxprom = zext i16 %24 to i32
  %arrayidx32 = getelementptr i16, ptr %22, i32 %idxprom
  %25 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx32, align 2
  %conv33 = sext i16 %26 to i32
  %sub = sub nsw i32 -32768, %conv13
  %27 = add nsw i32 %sub, %conv33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %27)
  %28 = icmp ult i32 %27, -65536
  br i1 %28, label %if.then29.cleanup83_crit_edge, label %if.then29.for.inc_crit_edge

if.then29.for.inc_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then29.cleanup83_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup83

for.inc:                                          ; preds = %if.then29.for.inc_crit_edge, %if.end25.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.sembuf, ptr %sop.0147, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.cond44.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body48:                                       ; preds = %ipc_update_pid.exit.for.body48_crit_edge, %for.body48.lr.ph
  %sop.1150 = phi ptr [ %1, %for.body48.lr.ph ], [ %incdec.ptr77, %ipc_update_pid.exit.for.body48_crit_edge ]
  %29 = ptrtoint ptr %sop.1150 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sop.1150, align 2
  %idxprom51 = zext i16 %30 to i32
  %arrayidx52 = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %idxprom51
  %sem_op53 = getelementptr inbounds %struct.sembuf, ptr %sop.1150, i32 0, i32 1
  %31 = ptrtoint ptr %sem_op53 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sem_op53, align 2
  %conv54 = sext i16 %32 to i32
  %sem_flg56 = getelementptr inbounds %struct.sembuf, ptr %sop.1150, i32 0, i32 2
  %33 = ptrtoint ptr %sem_flg56 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sem_flg56, align 2
  %35 = and i16 %34, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool59.not = icmp eq i16 %35, 0
  br i1 %tobool59.not, label %for.body48.if.end73_crit_edge, label %if.then60

for.body48.if.end73_crit_edge:                    ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

if.then60:                                        ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %semadj62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %semadj62, align 4
  %arrayidx65 = getelementptr i16, ptr %37, i32 %idxprom51
  %38 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx65, align 2
  %sub67 = sub i16 %39, %32
  store i16 %sub67, ptr %arrayidx65, align 2
  br label %if.end73

if.end73:                                         ; preds = %if.then60, %for.body48.if.end73_crit_edge
  %40 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx52, align 128
  %add75 = add i32 %41, %conv54
  store i32 %add75, ptr %arrayidx52, align 128
  %sempid = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %idxprom51, i32 1
  %42 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pid, align 4
  %44 = ptrtoint ptr %sempid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sempid, align 4
  %cmp.not.i = icmp eq ptr %45, %43
  br i1 %cmp.not.i, label %if.end73.ipc_update_pid.exit_crit_edge, label %if.then.i

if.end73.ipc_update_pid.exit_crit_edge:           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_update_pid.exit

if.then.i:                                        ; preds = %if.end73
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %if.then.i.get_pid.exit.i_crit_edge, label %if.then.i.i

if.then.i.get_pid.exit.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %43, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %43, i32 1, i32 3, i32 1) #13
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %43, ptr nonnull %43, i32 1, ptr nonnull elementtype(i32) %43) #13, !srcloc !143
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !141

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %47 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %.not.i.i.i.i.i = icmp sgt i32 %47, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_pid.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %43, i32 noundef %.sink.i.i.i.i.i) #13
  br label %get_pid.exit.i

get_pid.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, %if.then.i.get_pid.exit.i_crit_edge
  %48 = ptrtoint ptr %sempid to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %43, ptr %sempid, align 4
  tail call void @put_pid(ptr noundef %45) #13
  br label %ipc_update_pid.exit

ipc_update_pid.exit:                              ; preds = %get_pid.exit.i, %if.end73.ipc_update_pid.exit_crit_edge
  %incdec.ptr77 = getelementptr %struct.sembuf, ptr %sop.1150, i32 1
  %cmp46 = icmp ult ptr %incdec.ptr77, %add.ptr
  br i1 %cmp46, label %ipc_update_pid.exit.for.body48_crit_edge, label %ipc_update_pid.exit.cleanup83_crit_edge

ipc_update_pid.exit.cleanup83_crit_edge:          ; preds = %ipc_update_pid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup83

ipc_update_pid.exit.for.body48_crit_edge:         ; preds = %ipc_update_pid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body48

would_block:                                      ; preds = %if.end17.would_block_crit_edge, %for.body.would_block_crit_edge
  %blocking = getelementptr inbounds %struct.sem_queue, ptr %q, i32 0, i32 6
  %49 = ptrtoint ptr %blocking to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %sop.0147, ptr %blocking, align 4
  %sem_flg79 = getelementptr inbounds %struct.sembuf, ptr %sop.0147, i32 0, i32 2
  %50 = ptrtoint ptr %sem_flg79 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %sem_flg79, align 2
  %52 = and i16 %51, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool82.not = icmp eq i16 %52, 0
  %cond = select i1 %tobool82.not, i32 1, i32 -11
  br label %cleanup83

cleanup83:                                        ; preds = %would_block, %ipc_update_pid.exit.cleanup83_crit_edge, %if.then29.cleanup83_crit_edge, %if.end21.cleanup83_crit_edge, %for.cond44.preheader.cleanup83_crit_edge, %if.then, %for.cond.preheader.cleanup83_crit_edge
  %retval.4 = phi i32 [ %call, %if.then ], [ %cond, %would_block ], [ 0, %for.cond44.preheader.cleanup83_crit_edge ], [ 0, %for.cond.preheader.cleanup83_crit_edge ], [ 0, %ipc_update_pid.exit.cleanup83_crit_edge ], [ -34, %if.end21.cleanup83_crit_edge ], [ -34, %if.then29.cleanup83_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_smart_update(ptr noundef %sma, ptr noundef %sops, i32 noundef %nsops, i32 noundef %otime, ptr noundef %wake_q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @do_smart_wakeup_zero(ptr noundef %sma, ptr noundef %sops, i32 noundef %nsops, ptr noundef %wake_q)
  %or = or i32 %call, %otime
  %pending_alter = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 2
  %0 = ptrtoint ptr %pending_alter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending_alter, align 4
  %cmp.i.not = icmp eq ptr %1, %pending_alter
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call fastcc i32 @update_queue(ptr noundef %sma, i32 noundef -1, ptr noundef %wake_q)
  %or3 = or i32 %call2, %or
  br label %if.end23

if.else:                                          ; preds = %entry
  %tobool4.not = icmp eq ptr %sops, null
  br i1 %tobool4.not, label %for.cond.preheader, label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsops)
  %cmp1053 = icmp sgt i32 %nsops, 0
  br i1 %cmp1053, label %for.cond9.preheader.for.body11_crit_edge, label %for.cond9.preheader.if.end23_crit_edge

for.cond9.preheader.if.end23_crit_edge:           ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

for.cond9.preheader.for.body11_crit_edge:         ; preds = %for.cond9.preheader
  br label %for.body11

for.cond.preheader:                               ; preds = %if.else
  %sem_nsems = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 5
  %2 = ptrtoint ptr %sem_nsems to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sem_nsems, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp57 = icmp sgt i32 %3, 0
  br i1 %cmp57, label %for.cond.preheader.for.body_crit_edge, label %if.end23.thread

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.059 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %otime.addr.058 = phi i32 [ %or7, %for.body.for.body_crit_edge ], [ %or, %for.cond.preheader.for.body_crit_edge ]
  %call6 = tail call fastcc i32 @update_queue(ptr noundef %sma, i32 noundef %i.059, ptr noundef %wake_q)
  %or7 = or i32 %call6, %otime.addr.058
  %inc = add nuw nsw i32 %i.059, 1
  %4 = ptrtoint ptr %sem_nsems to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sem_nsems, align 32
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end23_crit_edge

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body11:                                       ; preds = %for.inc19.for.body11_crit_edge, %for.cond9.preheader.for.body11_crit_edge
  %i.155 = phi i32 [ %inc20, %for.inc19.for.body11_crit_edge ], [ 0, %for.cond9.preheader.for.body11_crit_edge ]
  %otime.addr.154 = phi i32 [ %otime.addr.2, %for.inc19.for.body11_crit_edge ], [ %or, %for.cond9.preheader.for.body11_crit_edge ]
  %sem_op = getelementptr %struct.sembuf, ptr %sops, i32 %i.155, i32 1
  %6 = ptrtoint ptr %sem_op to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sem_op, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp12 = icmp sgt i16 %7, 0
  br i1 %cmp12, label %if.then14, label %for.body11.for.inc19_crit_edge

for.body11.for.inc19_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc19

if.then14:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.sembuf, ptr %sops, i32 %i.155
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %conv16 = zext i16 %9 to i32
  %call17 = tail call fastcc i32 @update_queue(ptr noundef %sma, i32 noundef %conv16, ptr noundef %wake_q)
  %or18 = or i32 %call17, %otime.addr.154
  br label %for.inc19

for.inc19:                                        ; preds = %if.then14, %for.body11.for.inc19_crit_edge
  %otime.addr.2 = phi i32 [ %or18, %if.then14 ], [ %otime.addr.154, %for.body11.for.inc19_crit_edge ]
  %inc20 = add nuw nsw i32 %i.155, 1
  %exitcond.not = icmp eq i32 %inc20, %nsops
  br i1 %exitcond.not, label %for.inc19.if.end23_crit_edge, label %for.inc19.for.body11_crit_edge

for.inc19.for.body11_crit_edge:                   ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body11

for.inc19.if.end23_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.end23:                                         ; preds = %for.inc19.if.end23_crit_edge, %for.body.if.end23_crit_edge, %for.cond9.preheader.if.end23_crit_edge, %if.then
  %otime.addr.3 = phi i32 [ %or3, %if.then ], [ %or, %for.cond9.preheader.if.end23_crit_edge ], [ %or7, %for.body.if.end23_crit_edge ], [ %otime.addr.2, %for.inc19.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %otime.addr.3)
  %tobool24.not = icmp eq i32 %otime.addr.3, 0
  br i1 %tobool24.not, label %if.end23.if.end26_crit_edge, label %if.then25

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.end23.thread:                                  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool24.not63 = icmp eq i32 %or, 0
  br i1 %tobool24.not63, label %if.end23.thread.if.end26_crit_edge, label %if.then25.thread

if.end23.thread.if.end26_crit_edge:               ; preds = %if.end23.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then25.thread:                                 ; preds = %if.end23.thread
  call void @__sanitizer_cov_trace_pc() #15
  %call.i65 = tail call i64 @ktime_get_real_seconds() #13
  br label %if.then.i

if.then25:                                        ; preds = %if.end23
  %cmp.i51 = icmp eq ptr %sops, null
  %call.i = tail call i64 @ktime_get_real_seconds() #13
  br i1 %cmp.i51, label %if.then25.if.then.i_crit_edge, label %if.else.i

if.then25.if.then.i_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %if.then25.if.then.i_crit_edge, %if.then25.thread
  %call.i67 = phi i64 [ %call.i65, %if.then25.thread ], [ %call.i, %if.then25.if.then.i_crit_edge ]
  %sem_otime.i = getelementptr inbounds %struct.sem_array, ptr %sma, i32 1, i32 0, i32 8
  br label %set_semotime.exit

if.else.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %sops to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sops, align 2
  %idxprom.i = zext i16 %11 to i32
  %sem_otime5.i = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %idxprom.i, i32 5
  br label %set_semotime.exit

set_semotime.exit:                                ; preds = %if.else.i, %if.then.i
  %call.i66 = phi i64 [ %call.i, %if.else.i ], [ %call.i67, %if.then.i ]
  %sem_otime5.sink.i = phi ptr [ %sem_otime5.i, %if.else.i ], [ %sem_otime.i, %if.then.i ]
  %12 = ptrtoint ptr %sem_otime5.sink.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call.i66, ptr %sem_otime5.sink.i, align 8
  br label %if.end26

if.end26:                                         ; preds = %set_semotime.exit, %if.end23.thread.if.end26_crit_edge, %if.end23.if.end26_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sem_unlock(ptr noundef %sma, i32 noundef %locknum) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %locknum)
  %cmp = icmp eq i32 %locknum, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %complex_count.i = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 6
  %0 = ptrtoint ptr %complex_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %complex_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %pending_alter.i = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 2
  %2 = ptrtoint ptr %pending_alter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pending_alter.i, align 8
  %cmp.not26.i = icmp eq ptr %3, %pending_alter.i
  br i1 %cmp.not26.i, label %if.end.i.unmerge_queues.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.unmerge_queues.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmerge_queues.exit

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %q.027.i = phi ptr [ %tq.0.i, %list_add_tail.exit.i.for.body.i_crit_edge ], [ %3, %if.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %q.027.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tq.0.i = load ptr, ptr %q.027.i, align 4
  %sops.i = getelementptr inbounds %struct.sem_queue, ptr %q.027.i, i32 0, i32 5
  %5 = ptrtoint ptr %sops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sops.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 2
  %idxprom.i = zext i16 %8 to i32
  %pending_alter9.i = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %idxprom.i, i32 3
  %prev.i.i = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %idxprom.i, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %q.027.i, ptr noundef %10, ptr noundef %pending_alter9.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_add_tail.exit.i_crit_edge

for.body.i.list_add_tail.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %q.027.i, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %q.027.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pending_alter9.i, ptr %q.027.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %q.027.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %q.027.i, ptr %10, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_add_tail.exit.i_crit_edge
  %cmp.not.i = icmp eq ptr %tq.0.i, %pending_alter.i
  br i1 %cmp.not.i, label %list_add_tail.exit.i.unmerge_queues.exit_crit_edge, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

list_add_tail.exit.i.unmerge_queues.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmerge_queues.exit

unmerge_queues.exit:                              ; preds = %list_add_tail.exit.i.unmerge_queues.exit_crit_edge, %if.end.i.unmerge_queues.exit_crit_edge
  %15 = ptrtoint ptr %pending_alter.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %pending_alter.i, ptr %pending_alter.i, align 4
  %prev.i25.i = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i25.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pending_alter.i, ptr %prev.i25.i, align 4
  %17 = ptrtoint ptr %complex_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %complex_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i6 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i6, label %if.end.i7, label %unmerge_queues.exit.if.end_crit_edge

unmerge_queues.exit.if.end_crit_edge:             ; preds = %unmerge_queues.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i7:                                        ; preds = %unmerge_queues.exit
  %use_global_lock.i = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 7
  %18 = ptrtoint ptr %use_global_lock.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %use_global_lock.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i = icmp eq i32 %19, 1
  br i1 %cmp.i, label %do.end5.i, label %do.body18.i

do.end5.i:                                        ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !146
  br label %if.end23.sink.split.i

do.body18.i:                                      ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = add i32 %19, -1
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %do.body18.i, %do.end5.i
  %sub.sink.i = phi i32 [ %sub.i, %do.body18.i ], [ 0, %do.end5.i ]
  %20 = ptrtoint ptr %use_global_lock.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %sub.sink.i, ptr %use_global_lock.i, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %locknum, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end23.sink.split.i, %unmerge_queues.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %lock.sink = phi ptr [ %lock, %if.else ], [ %sma, %if.then.if.end_crit_edge ], [ %sma, %unmerge_queues.exit.if.end_crit_edge ], [ %sma, %if.end23.sink.split.i ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.sink) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @merge_queues(ptr noundef %sma) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sem_nsems = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 5
  %0 = ptrtoint ptr %sem_nsems to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sem_nsems, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6 = icmp sgt i32 %1, 0
  br i1 %cmp6, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pending_alter1 = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %list_splice_init.exit.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_splice_init.exit.for.body_crit_edge ]
  %pending_alter = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %i.07, i32 3
  %2 = ptrtoint ptr %pending_alter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pending_alter, align 4
  %cmp.i.not.i = icmp eq ptr %3, %pending_alter
  br i1 %cmp.i.not.i, label %for.body.list_splice_init.exit_crit_edge, label %if.then.i

for.body.list_splice_init.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %pending_alter1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pending_alter1, align 4
  %prev2.i.i = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %i.07, i32 3, i32 1
  %6 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pending_alter1, ptr %prev3.i.i, align 4
  store ptr %3, ptr %pending_alter1, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %5, ptr %7, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev6.i.i, align 4
  %11 = ptrtoint ptr %pending_alter to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %pending_alter, ptr %pending_alter, align 4
  store ptr %pending_alter, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %for.body.list_splice_init.exit_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %12 = ptrtoint ptr %sem_nsems to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sem_nsems, align 32
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %list_splice_init.exit.for.body_crit_edge, label %list_splice_init.exit.for.end_crit_edge

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

list_splice_init.exit.for.body_crit_edge:         ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %list_splice_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unlink_queue(ptr nocapture noundef %sma, ptr noundef %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %q) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %q, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %q, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %q, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %nsops = getelementptr inbounds %struct.sem_queue, ptr %q, i32 0, i32 7
  %8 = ptrtoint ptr %nsops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nsops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp sgt i32 %9, 1
  br i1 %cmp, label %if.then, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %complex_count = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 6
  %10 = ptrtoint ptr %complex_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %complex_count, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %complex_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_semtimedop(i32 noundef %semid, ptr noundef %tsops, i32 noundef %nsops, ptr noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timeout, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #13
  %0 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %call = call i32 @get_timespec64(ptr noundef nonnull %ts, ptr noundef nonnull %timeout) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call fastcc i32 @do_semtimedop(i32 noundef %semid, ptr noundef %tsops, i32 noundef %nsops, ptr noundef nonnull %ts)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -14, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #13
  br label %return

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call fastcc i32 @do_semtimedop(i32 noundef %semid, ptr noundef %tsops, i32 noundef %nsops, ptr noundef null)
  br label %return

return:                                           ; preds = %if.end4, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %call5, %if.end4 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_semtimedop(i32 noundef %semid, ptr noundef %tsops, i32 noundef %nsops, ptr noundef %timeout) unnamed_addr #0 align 64 {
entry:
  %fast_sops = alloca [64 x %struct.sembuf], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %fast_sops) #13
  %0 = call ptr @memset(ptr %fast_sops, i32 255, i32 384)
  %1 = tail call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 110
  %5 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nsproxy, align 4
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ipc_ns, align 4
  %arrayidx = getelementptr %struct.ipc_namespace, ptr %8, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %nsops)
  %cmp = icmp ult i32 %10, %nsops
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsops)
  %cmp1 = icmp eq i32 %nsops, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %nsops)
  %cmp4 = icmp ugt i32 %nsops, 64
  br i1 %cmp4, label %if.then5, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = mul nuw nsw i32 %nsops, 6
  br label %if.end8.i.i

if.then5:                                         ; preds = %if.end3
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nsops, i32 6) #13
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %if.then5.cleanup_crit_edge, label %kvmalloc_array.exit, !prof !141

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

kvmalloc_array.exit:                              ; preds = %if.then5
  %13 = extractvalue { i32, i1 } %11, 0
  %call.i.i32 = tail call noalias ptr @kvmalloc_node(i32 noundef %13, i32 noundef 3264, i32 noundef -1) #17
  %cmp7 = icmp eq ptr %call.i.i32, null
  br i1 %cmp7, label %kvmalloc_array.exit.cleanup_crit_edge, label %kvmalloc_array.exit.if.end8.i.i_crit_edge

kvmalloc_array.exit.if.end8.i.i_crit_edge:        ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

kvmalloc_array.exit.cleanup_crit_edge:            ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i:                                      ; preds = %kvmalloc_array.exit.if.end8.i.i_crit_edge, %if.end3.if.end10_crit_edge
  %mul.pre-phi = phi i32 [ %.pre, %if.end3.if.end10_crit_edge ], [ %13, %kvmalloc_array.exit.if.end8.i.i_crit_edge ]
  %sops.0 = phi ptr [ %fast_sops, %if.end3.if.end10_crit_edge ], [ %call.i.i32, %kvmalloc_array.exit.if.end8.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.pre-phi)
  %cmp9.i.i = icmp slt i32 %mul.pre-phi, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out_free_crit_edge, label %if.then27.i.i, !prof !144

land.rhs16.i.i.out_free_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %out_free

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  call void @__check_object_size(ptr noundef nonnull %sops.0, i32 noundef %mul.pre-phi, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %14 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %tsops, i32 %mul.pre-phi, i32 -1226833920) #18, !srcloc !151
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !144

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sops.0, i32 noundef %mul.pre-phi) #13
  %15 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !152
  %and.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !154
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %sops.0, ptr noundef %tsops, i32 noundef %mul.pre-phi) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #13, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end13, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !144

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i37 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %mul.pre-phi, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %mul.pre-phi, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %mul.pre-phi, %res.0.i.i37
  %add.ptr.i.i = getelementptr i8, ptr %sops.0, i32 %sub.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i37)
  br label %out_free

if.end13:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call14 = call i32 @__do_semtimedop(i32 noundef %semid, ptr noundef nonnull %sops.0, i32 noundef %nsops, ptr noundef %timeout, ptr noundef %8)
  br label %out_free

out_free:                                         ; preds = %if.end13, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.out_free_crit_edge
  %ret.0 = phi i32 [ %call14, %if.end13 ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_free_crit_edge ]
  %cmp16.not = icmp eq ptr %sops.0, %fast_sops
  br i1 %cmp16.not, label %out_free.cleanup_crit_edge, label %if.then17

out_free.cleanup_crit_edge:                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then17:                                        ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #15
  call void @kvfree(ptr noundef nonnull %sops.0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %out_free.cleanup_crit_edge, %kvmalloc_array.exit.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -7, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %kvmalloc_array.exit.cleanup_crit_edge ], [ %ret.0, %if.then17 ], [ %ret.0, %out_free.cleanup_crit_edge ], [ -12, %if.then5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %fast_sops) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_semtimedop(i32 noundef %semid, i32 noundef %tsops, i32 noundef %nsops, i32 noundef %timeout) #0 align 64 {
entry:
  %ts.i.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %tsops to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not.i.i = icmp eq i32 %timeout, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %1 = inttoptr i32 %timeout to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i.i) #13
  %2 = call ptr @memset(ptr %ts.i.i, i32 255, i32 16)
  %call.i.i = call i32 @get_timespec64(ptr noundef nonnull %ts.i.i, ptr noundef nonnull %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i, label %if.then.i.i.cleanup.i.i_crit_edge

if.then.i.i.cleanup.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i.i = call fastcc i32 @do_semtimedop(i32 noundef %semid, ptr noundef %0, i32 noundef %nsops, ptr noundef nonnull %ts.i.i) #13
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i, %if.then.i.i.cleanup.i.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.end.i.i ], [ -14, %if.then.i.i.cleanup.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i.i) #13
  br label %__do_sys_semtimedop.exit

if.end4.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call5.i.i = tail call fastcc i32 @do_semtimedop(i32 noundef %semid, ptr noundef %0, i32 noundef %nsops, ptr noundef null) #13
  br label %__do_sys_semtimedop.exit

__do_sys_semtimedop.exit:                         ; preds = %if.end4.i.i, %cleanup.i.i
  %retval.1.i.i = phi i32 [ %retval.0.i.i, %cleanup.i.i ], [ %call5.i.i, %if.end4.i.i ]
  ret i32 %retval.1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @compat_ksys_semtimedop(i32 noundef %semid, ptr noundef %tsems, i32 noundef %nsops, ptr noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %timeout, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #13
  %0 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %call = call i32 @get_old_timespec32(ptr noundef nonnull %ts, ptr noundef nonnull %timeout) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call fastcc i32 @do_semtimedop(i32 noundef %semid, ptr noundef %tsems, i32 noundef %nsops, ptr noundef nonnull %ts)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -14, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #13
  br label %return

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call fastcc i32 @do_semtimedop(i32 noundef %semid, ptr noundef %tsems, i32 noundef %nsops, ptr noundef null)
  br label %return

return:                                           ; preds = %if.end4, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %call5, %if.end4 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_semtimedop_time32(i32 noundef %semid, i32 noundef %tsems, i32 noundef %nsops, i32 noundef %timeout) #0 align 64 {
entry:
  %ts.i.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %tsems to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not.i.i = icmp eq i32 %timeout, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %1 = inttoptr i32 %timeout to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i.i) #13
  %2 = call ptr @memset(ptr %ts.i.i, i32 255, i32 16)
  %call.i.i = call i32 @get_old_timespec32(ptr noundef nonnull %ts.i.i, ptr noundef nonnull %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i, label %if.then.i.i.cleanup.i.i_crit_edge

if.then.i.i.cleanup.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call3.i.i = call fastcc i32 @do_semtimedop(i32 noundef %semid, ptr noundef %0, i32 noundef %nsops, ptr noundef nonnull %ts.i.i) #13
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i, %if.then.i.i.cleanup.i.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.end.i.i ], [ -14, %if.then.i.i.cleanup.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i.i) #13
  br label %__do_sys_semtimedop_time32.exit

if.end4.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call5.i.i = tail call fastcc i32 @do_semtimedop(i32 noundef %semid, ptr noundef %0, i32 noundef %nsops, ptr noundef null) #13
  br label %__do_sys_semtimedop_time32.exit

__do_sys_semtimedop_time32.exit:                  ; preds = %if.end4.i.i, %cleanup.i.i
  %retval.1.i.i = phi i32 [ %retval.0.i.i, %cleanup.i.i ], [ %call5.i.i, %if.end4.i.i ]
  ret i32 %retval.1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_semop(i32 noundef %semid, i32 noundef %tsops, i32 noundef %nsops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %tsops to ptr
  %call.i = tail call fastcc i32 @do_semtimedop(i32 noundef %semid, ptr noundef %0, i32 noundef %nsops, ptr noundef null) #13
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @copy_semundo(i32 noundef %clone_flags, ptr nocapture noundef writeonly %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %clone_flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.then

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %sysvsem.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 103
  %4 = ptrtoint ptr %sysvsem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysvsem.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 4197824, i32 noundef 56) #19
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.then.i.cleanup_crit_edge, label %do.body.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %lock.i = getelementptr inbounds %struct.sem_undo_list, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @get_undo_list.__key, i16 noundef signext 3) #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i, i32 noundef 4) #13
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %call7.i.i.i, align 8
  %list_proc.i = getelementptr inbounds %struct.sem_undo_list, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %list_proc.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list_proc.i, ptr %list_proc.i, align 8
  %prev.i.i = getelementptr inbounds %struct.sem_undo_list, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list_proc.i, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %sysvsem7.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 103
  %12 = ptrtoint ptr %sysvsem7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i, ptr %sysvsem7.i, align 4
  br label %if.end

if.end:                                           ; preds = %do.body.i, %if.then.if.end_crit_edge
  %undo_list.0.ph = phi ptr [ %call7.i.i.i, %do.body.i ], [ %5, %if.then.if.end_crit_edge ]
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %undo_list.0.ph, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %undo_list.0.ph, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %undo_list.0.ph, ptr nonnull %undo_list.0.ph, i32 1, ptr nonnull elementtype(i32) %undo_list.0.ph) #13, !srcloc !143
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !141

if.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup.sink.split_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !144

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup.sink.split_crit_edge:       ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %undo_list.0.ph, i32 noundef %.sink.i.i.i) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %undo_list.0.ph.sink = phi ptr [ %undo_list.0.ph, %if.else.i.i.i.cleanup.sink.split_crit_edge ], [ %undo_list.0.ph, %if.end15.sink.split.i.i.i ], [ null, %entry.cleanup.sink.split_crit_edge ]
  %sysvsem = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 103
  %15 = ptrtoint ptr %sysvsem to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %undo_list.0.ph.sink, ptr %sysvsem, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_sem(ptr nocapture noundef %tsk) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %wake_q = alloca %struct.wake_q_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sysvsem = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 103
  %0 = ptrtoint ptr %sysvsem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysvsem, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup72_crit_edge, label %if.end

entry.cleanup72_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %sysvsem to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sysvsem, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !159
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #13, !srcloc !160
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup72_crit_edge, label %if.then10.i.i.i, !prof !144

if.end5.i.i.i.cleanup72_crit_edge:                ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup72

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #13
  br label %cleanup72

refcount_dec_and_test.exit:                       ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !161
  %4 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1
  %list_proc = getelementptr inbounds %struct.sem_undo_list, ptr %1, i32 0, i32 2
  %lock14 = getelementptr inbounds %struct.sem_undo_list, ptr %1, i32 0, i32 1
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 110
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %refcount_dec_and_test.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q) #13
  %5 = ptrtoint ptr %wake_q to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %wake_q, ptr %4, align 4
  call void @__might_resched(ptr noundef nonnull @.str.11, i32 noundef 2357, i32 noundef 0) #13
  %call.i120 = call i32 @__cond_resched() #13
  %7 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !149
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %for.cond.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.cond.rcu_read_lock.exit_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.cond
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.cond.rcu_read_lock.exit_crit_edge
  %11 = ptrtoint ptr %list_proc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %list_proc, align 4
  %cmp = icmp eq ptr %12, %list_proc
  call void @_raw_spin_lock(ptr noundef %lock14) #13
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %rcu_read_lock.exit
  call void @_raw_spin_unlock(ptr noundef %lock14) #13
  %call.i121 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i121, label %if.then11.for.end71_crit_edge, label %land.lhs.true.i124

if.then11.for.end71_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end71

land.lhs.true.i124:                               ; preds = %if.then11
  %call1.i122 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i122)
  %tobool.not.i123 = icmp eq i32 %call1.i122, 0
  br i1 %tobool.not.i123, label %land.lhs.true.i124.for.end71_crit_edge, label %land.lhs.true2.i126

land.lhs.true.i124.for.end71_crit_edge:           ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end71

land.lhs.true2.i126:                              ; preds = %land.lhs.true.i124
  %.b4.i125 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i125, label %land.lhs.true2.i126.for.end71_crit_edge, label %if.then.i127

land.lhs.true2.i126.for.end71_crit_edge:          ; preds = %land.lhs.true2.i126
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end71

if.then.i127:                                     ; preds = %land.lhs.true2.i126
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %for.end71

if.end13:                                         ; preds = %rcu_read_lock.exit
  %semid15 = getelementptr inbounds %struct.sem_undo, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %semid15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %semid15, align 4
  call void @_raw_spin_unlock(ptr noundef %lock14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp17 = icmp eq i32 %14, -1
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  %call.i130 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i130, label %if.then18.rcu_read_unlock.exit140_crit_edge, label %land.lhs.true.i133

if.then18.rcu_read_unlock.exit140_crit_edge:      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit140

land.lhs.true.i133:                               ; preds = %if.then18
  %call1.i131 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131)
  %tobool.not.i132 = icmp eq i32 %call1.i131, 0
  br i1 %tobool.not.i132, label %land.lhs.true.i133.rcu_read_unlock.exit140_crit_edge, label %land.lhs.true2.i135

land.lhs.true.i133.rcu_read_unlock.exit140_crit_edge: ; preds = %land.lhs.true.i133
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit140

land.lhs.true2.i135:                              ; preds = %land.lhs.true.i133
  %.b4.i134 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i134, label %land.lhs.true2.i135.rcu_read_unlock.exit140_crit_edge, label %if.then.i136

land.lhs.true2.i135.rcu_read_unlock.exit140_crit_edge: ; preds = %land.lhs.true2.i135
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit140

if.then.i136:                                     ; preds = %land.lhs.true2.i135
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit140

rcu_read_unlock.exit140:                          ; preds = %if.then.i136, %land.lhs.true2.i135.rcu_read_unlock.exit140_crit_edge, %land.lhs.true.i133.rcu_read_unlock.exit140_crit_edge, %if.then18.rcu_read_unlock.exit140_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %15 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i137 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i137 to ptr
  %preempt_count.i.i.i.i138 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i138 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i138, align 4
  %sub.i.i.i139 = add i32 %18, -1
  store volatile i32 %sub.i.i.i139, ptr %preempt_count.i.i.i.i138, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %19 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nsproxy, align 4
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ipc_ns, align 4
  %call.i141 = call ptr @ipc_obtain_object_check(ptr noundef %22, i32 noundef %14) #13
  %cmp.i = icmp ugt ptr %call.i141, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  %call.i142 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i142, label %if.then22.rcu_read_unlock.exit152_crit_edge, label %land.lhs.true.i145

if.then22.rcu_read_unlock.exit152_crit_edge:      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit152

land.lhs.true.i145:                               ; preds = %if.then22
  %call1.i143 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i143)
  %tobool.not.i144 = icmp eq i32 %call1.i143, 0
  br i1 %tobool.not.i144, label %land.lhs.true.i145.rcu_read_unlock.exit152_crit_edge, label %land.lhs.true2.i147

land.lhs.true.i145.rcu_read_unlock.exit152_crit_edge: ; preds = %land.lhs.true.i145
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit152

land.lhs.true2.i147:                              ; preds = %land.lhs.true.i145
  %.b4.i146 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i146, label %land.lhs.true2.i147.rcu_read_unlock.exit152_crit_edge, label %if.then.i148

land.lhs.true2.i147.rcu_read_unlock.exit152_crit_edge: ; preds = %land.lhs.true2.i147
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit152

if.then.i148:                                     ; preds = %land.lhs.true2.i147
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit152

rcu_read_unlock.exit152:                          ; preds = %if.then.i148, %land.lhs.true2.i147.rcu_read_unlock.exit152_crit_edge, %land.lhs.true.i145.rcu_read_unlock.exit152_crit_edge, %if.then22.rcu_read_unlock.exit152_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %23 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i149 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i149 to ptr
  %preempt_count.i.i.i.i150 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i150 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i150, align 4
  %sub.i.i.i151 = add i32 %26, -1
  store volatile i32 %sub.i.i.i151, ptr %preempt_count.i.i.i.i150, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @_raw_spin_lock(ptr noundef %call.i141) #13
  %use_global_lock.i.i = getelementptr inbounds %struct.sem_array, ptr %call.i141, i32 0, i32 7
  %27 = ptrtoint ptr %use_global_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %use_global_lock.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not.i.i = icmp eq i32 %28, 0
  %29 = ptrtoint ptr %use_global_lock.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 10, ptr %use_global_lock.i.i, align 8
  br i1 %cmp.not.i.i, label %do.body12.i.i, label %if.end23.sem_lock.exit_crit_edge

if.end23.sem_lock.exit_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_lock.exit

do.body12.i.i:                                    ; preds = %if.end23
  %sem_nsems.i.i = getelementptr inbounds %struct.sem_array, ptr %call.i141, i32 0, i32 5
  %30 = ptrtoint ptr %sem_nsems.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sem_nsems.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp1828.i.i = icmp sgt i32 %31, 0
  br i1 %cmp1828.i.i, label %do.body12.i.i.for.body.i.i_crit_edge, label %do.body12.i.i.sem_lock.exit_crit_edge

do.body12.i.i.sem_lock.exit_crit_edge:            ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_lock.exit

do.body12.i.i.for.body.i.i_crit_edge:             ; preds = %do.body12.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.body12.i.i.for.body.i.i_crit_edge
  %i.029.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %do.body12.i.i.for.body.i.i_crit_edge ]
  %lock.i.i = getelementptr %struct.sem_array, ptr %call.i141, i32 0, i32 9, i32 %i.029.i.i, i32 2
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #13
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #13
  %inc.i.i = add nuw nsw i32 %i.029.i.i, 1
  %32 = ptrtoint ptr %sem_nsems.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sem_nsems.i.i, align 32
  %cmp18.i.i = icmp slt i32 %inc.i.i, %33
  br i1 %cmp18.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.sem_lock.exit_crit_edge

for.body.i.i.sem_lock.exit_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_lock.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

sem_lock.exit:                                    ; preds = %for.body.i.i.sem_lock.exit_crit_edge, %do.body12.i.i.sem_lock.exit_crit_edge, %if.end23.sem_lock.exit_crit_edge
  %deleted.i = getelementptr inbounds %struct.kern_ipc_perm, ptr %call.i141, i32 0, i32 1
  %34 = ptrtoint ptr %deleted.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %deleted.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i154 = icmp eq i8 %35, 0
  br i1 %tobool.not.i154, label %if.end27, label %if.then26

if.then26:                                        ; preds = %sem_lock.exit
  %complex_count.i.i = getelementptr inbounds %struct.sem_array, ptr %call.i141, i32 0, i32 6
  %36 = ptrtoint ptr %complex_count.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %complex_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then26.sem_unlock.exit_crit_edge

if.then26.sem_unlock.exit_crit_edge:              ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_unlock.exit

if.end.i.i:                                       ; preds = %if.then26
  %pending_alter.i.i = getelementptr inbounds %struct.sem_array, ptr %call.i141, i32 0, i32 2
  %38 = ptrtoint ptr %pending_alter.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pending_alter.i.i, align 8
  %cmp.not26.i.i = icmp eq ptr %39, %pending_alter.i.i
  br i1 %cmp.not26.i.i, label %if.end.i.i.unmerge_queues.exit.i_crit_edge, label %if.end.i.i.for.body.i.i156_crit_edge

if.end.i.i.for.body.i.i156_crit_edge:             ; preds = %if.end.i.i
  br label %for.body.i.i156

if.end.i.i.unmerge_queues.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmerge_queues.exit.i

for.body.i.i156:                                  ; preds = %list_add_tail.exit.i.i.for.body.i.i156_crit_edge, %if.end.i.i.for.body.i.i156_crit_edge
  %q.027.i.i = phi ptr [ %tq.0.i.i, %list_add_tail.exit.i.i.for.body.i.i156_crit_edge ], [ %39, %if.end.i.i.for.body.i.i156_crit_edge ]
  %40 = ptrtoint ptr %q.027.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %tq.0.i.i = load ptr, ptr %q.027.i.i, align 4
  %sops.i.i = getelementptr inbounds %struct.sem_queue, ptr %q.027.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %sops.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sops.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %42, align 2
  %idxprom.i.i = zext i16 %44 to i32
  %pending_alter9.i.i = getelementptr %struct.sem_array, ptr %call.i141, i32 0, i32 9, i32 %idxprom.i.i, i32 3
  %prev.i.i.i = getelementptr %struct.sem_array, ptr %call.i141, i32 0, i32 9, i32 %idxprom.i.i, i32 3, i32 1
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %q.027.i.i, ptr noundef %46, ptr noundef %pending_alter9.i.i) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i156.list_add_tail.exit.i.i_crit_edge

for.body.i.i156.list_add_tail.exit.i.i_crit_edge: ; preds = %for.body.i.i156
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i156
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %q.027.i.i, ptr %prev.i.i.i, align 4
  %48 = ptrtoint ptr %q.027.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %pending_alter9.i.i, ptr %q.027.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %q.027.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %q.027.i.i, ptr %46, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %for.body.i.i156.list_add_tail.exit.i.i_crit_edge
  %cmp.not.i.i157 = icmp eq ptr %tq.0.i.i, %pending_alter.i.i
  br i1 %cmp.not.i.i157, label %list_add_tail.exit.i.i.unmerge_queues.exit.i_crit_edge, label %list_add_tail.exit.i.i.for.body.i.i156_crit_edge

list_add_tail.exit.i.i.for.body.i.i156_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i156

list_add_tail.exit.i.i.unmerge_queues.exit.i_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmerge_queues.exit.i

unmerge_queues.exit.i:                            ; preds = %list_add_tail.exit.i.i.unmerge_queues.exit.i_crit_edge, %if.end.i.i.unmerge_queues.exit.i_crit_edge
  %51 = ptrtoint ptr %pending_alter.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %pending_alter.i.i, ptr %pending_alter.i.i, align 4
  %prev.i25.i.i = getelementptr inbounds %struct.sem_array, ptr %call.i141, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %prev.i25.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %pending_alter.i.i, ptr %prev.i25.i.i, align 4
  %53 = ptrtoint ptr %complex_count.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr.i = load i32, ptr %complex_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i6.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i6.i, label %if.end.i7.i, label %unmerge_queues.exit.i.sem_unlock.exit_crit_edge

unmerge_queues.exit.i.sem_unlock.exit_crit_edge:  ; preds = %unmerge_queues.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_unlock.exit

if.end.i7.i:                                      ; preds = %unmerge_queues.exit.i
  %54 = ptrtoint ptr %use_global_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %use_global_lock.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i.i = icmp eq i32 %55, 1
  br i1 %cmp.i.i, label %do.end5.i.i, label %do.body18.i.i

do.end5.i.i:                                      ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !146
  br label %if.end23.sink.split.i.i

do.body18.i.i:                                    ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %55, -1
  br label %if.end23.sink.split.i.i

if.end23.sink.split.i.i:                          ; preds = %do.body18.i.i, %do.end5.i.i
  %sub.sink.i.i = phi i32 [ %sub.i.i, %do.body18.i.i ], [ 0, %do.end5.i.i ]
  %56 = ptrtoint ptr %use_global_lock.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 %sub.sink.i.i, ptr %use_global_lock.i.i, align 8
  br label %sem_unlock.exit

sem_unlock.exit:                                  ; preds = %if.end23.sink.split.i.i, %unmerge_queues.exit.i.sem_unlock.exit_crit_edge, %if.then26.sem_unlock.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %call.i141) #13
  %call.i159 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i159, label %sem_unlock.exit.rcu_read_unlock.exit169_crit_edge, label %land.lhs.true.i162

sem_unlock.exit.rcu_read_unlock.exit169_crit_edge: ; preds = %sem_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit169

land.lhs.true.i162:                               ; preds = %sem_unlock.exit
  %call1.i160 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i160)
  %tobool.not.i161 = icmp eq i32 %call1.i160, 0
  br i1 %tobool.not.i161, label %land.lhs.true.i162.rcu_read_unlock.exit169_crit_edge, label %land.lhs.true2.i164

land.lhs.true.i162.rcu_read_unlock.exit169_crit_edge: ; preds = %land.lhs.true.i162
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit169

land.lhs.true2.i164:                              ; preds = %land.lhs.true.i162
  %.b4.i163 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i163, label %land.lhs.true2.i164.rcu_read_unlock.exit169_crit_edge, label %if.then.i165

land.lhs.true2.i164.rcu_read_unlock.exit169_crit_edge: ; preds = %land.lhs.true2.i164
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit169

if.then.i165:                                     ; preds = %land.lhs.true2.i164
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit169

rcu_read_unlock.exit169:                          ; preds = %if.then.i165, %land.lhs.true2.i164.rcu_read_unlock.exit169_crit_edge, %land.lhs.true.i162.rcu_read_unlock.exit169_crit_edge, %sem_unlock.exit.rcu_read_unlock.exit169_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %57 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i166 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i166 to ptr
  %preempt_count.i.i.i.i167 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i167, align 4
  %sub.i.i.i168 = add i32 %60, -1
  store volatile i32 %sub.i.i.i168, ptr %preempt_count.i.i.i.i167, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

if.end27:                                         ; preds = %sem_lock.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %61 = ptrtoint ptr %lock14 to i32
  call void @__asan_load4_noabort(i32 %61)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %lock14, align 4
  %62 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.i.not.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.i.not.i, label %land.lhs.true.i171, label %if.end27.for.cond.i.preheader_crit_edge

if.end27.for.cond.i.preheader_crit_edge:          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.preheader

land.lhs.true.i171:                               ; preds = %if.end27
  %call1.i170 = call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i170)
  %tobool2.not.i = icmp eq i32 %call1.i170, 0
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %land.lhs.true.i171.for.cond.i.preheader_crit_edge

land.lhs.true.i171.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i171
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.preheader

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i171
  %call4.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.for.cond.i.preheader_crit_edge, label %land.lhs.true6.i

land.lhs.true3.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.preheader

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %.b32.i = load i1, ptr @__lookup_undo.__warned, align 1
  br i1 %.b32.i, label %land.lhs.true6.i.for.cond.i.preheader_crit_edge, label %if.then.i172

land.lhs.true6.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.preheader

if.then.i172:                                     ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__lookup_undo.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 1876, ptr noundef nonnull @.str.50) #13
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i172, %land.lhs.true6.i.for.cond.i.preheader_crit_edge, %land.lhs.true3.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i171.for.cond.i.preheader_crit_edge, %if.end27.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %un.0.in.i = phi ptr [ %un.0.i, %for.body.i.for.cond.i_crit_edge ], [ %list_proc, %for.cond.i.preheader ]
  %63 = ptrtoint ptr %un.0.in.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %un.0.i = load volatile ptr, ptr %un.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %un.0.i, %list_proc
  br i1 %cmp.not.i, label %for.cond.i.if.then30_crit_edge, label %for.body.i

for.cond.i.if.then30_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

for.body.i:                                       ; preds = %for.cond.i
  %semid14.i = getelementptr inbounds %struct.sem_undo, ptr %un.0.i, i32 0, i32 4
  %64 = ptrtoint ptr %semid14.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %semid14.i, align 4
  %cmp15.i = icmp eq i32 %65, %14
  br i1 %cmp15.i, label %__lookup_undo.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

__lookup_undo.exit:                               ; preds = %for.body.i
  %cmp29 = icmp eq ptr %un.0.i, null
  br i1 %cmp29, label %__lookup_undo.exit.if.then30_crit_edge, label %if.end31

__lookup_undo.exit.if.then30_crit_edge:           ; preds = %__lookup_undo.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

if.then30:                                        ; preds = %__lookup_undo.exit.if.then30_crit_edge, %for.cond.i.if.then30_crit_edge
  %complex_count.i.i173 = getelementptr inbounds %struct.sem_array, ptr %call.i141, i32 0, i32 6
  %66 = ptrtoint ptr %complex_count.i.i173 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %complex_count.i.i173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i174 = icmp eq i32 %67, 0
  br i1 %tobool.not.i.i174, label %if.end.i.i178, label %if.then30.sem_unlock.exit203_crit_edge

if.then30.sem_unlock.exit203_crit_edge:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_unlock.exit203

if.end.i.i178:                                    ; preds = %if.then30
  %pending_alter.i.i176 = getelementptr inbounds %struct.sem_array, ptr %call.i141, i32 0, i32 2
  %68 = ptrtoint ptr %pending_alter.i.i176 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pending_alter.i.i176, align 8
  %cmp.not26.i.i177 = icmp eq ptr %69, %pending_alter.i.i176
  br i1 %cmp.not26.i.i177, label %if.end.i.i178.unmerge_queues.exit.i194_crit_edge, label %if.end.i.i178.for.body.i.i186_crit_edge

if.end.i.i178.for.body.i.i186_crit_edge:          ; preds = %if.end.i.i178
  br label %for.body.i.i186

if.end.i.i178.unmerge_queues.exit.i194_crit_edge: ; preds = %if.end.i.i178
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmerge_queues.exit.i194

for.body.i.i186:                                  ; preds = %list_add_tail.exit.i.i190.for.body.i.i186_crit_edge, %if.end.i.i178.for.body.i.i186_crit_edge
  %q.027.i.i179 = phi ptr [ %tq.0.i.i180, %list_add_tail.exit.i.i190.for.body.i.i186_crit_edge ], [ %69, %if.end.i.i178.for.body.i.i186_crit_edge ]
  %70 = ptrtoint ptr %q.027.i.i179 to i32
  call void @__asan_load4_noabort(i32 %70)
  %tq.0.i.i180 = load ptr, ptr %q.027.i.i179, align 4
  %sops.i.i181 = getelementptr inbounds %struct.sem_queue, ptr %q.027.i.i179, i32 0, i32 5
  %71 = ptrtoint ptr %sops.i.i181 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sops.i.i181, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %72, align 2
  %idxprom.i.i182 = zext i16 %74 to i32
  %pending_alter9.i.i183 = getelementptr %struct.sem_array, ptr %call.i141, i32 0, i32 9, i32 %idxprom.i.i182, i32 3
  %prev.i.i.i184 = getelementptr %struct.sem_array, ptr %call.i141, i32 0, i32 9, i32 %idxprom.i.i182, i32 3, i32 1
  %75 = ptrtoint ptr %prev.i.i.i184 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i.i184, align 4
  %call.i.i.i.i185 = call zeroext i1 @__list_add_valid(ptr noundef %q.027.i.i179, ptr noundef %76, ptr noundef %pending_alter9.i.i183) #13
  br i1 %call.i.i.i.i185, label %if.end.i.i.i.i188, label %for.body.i.i186.list_add_tail.exit.i.i190_crit_edge

for.body.i.i186.list_add_tail.exit.i.i190_crit_edge: ; preds = %for.body.i.i186
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i.i190

if.end.i.i.i.i188:                                ; preds = %for.body.i.i186
  call void @__sanitizer_cov_trace_pc() #15
  %77 = ptrtoint ptr %prev.i.i.i184 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %q.027.i.i179, ptr %prev.i.i.i184, align 4
  %78 = ptrtoint ptr %q.027.i.i179 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %pending_alter9.i.i183, ptr %q.027.i.i179, align 4
  %prev3.i.i.i.i187 = getelementptr inbounds %struct.list_head, ptr %q.027.i.i179, i32 0, i32 1
  %79 = ptrtoint ptr %prev3.i.i.i.i187 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev3.i.i.i.i187, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %q.027.i.i179, ptr %76, align 4
  br label %list_add_tail.exit.i.i190

list_add_tail.exit.i.i190:                        ; preds = %if.end.i.i.i.i188, %for.body.i.i186.list_add_tail.exit.i.i190_crit_edge
  %cmp.not.i.i189 = icmp eq ptr %tq.0.i.i180, %pending_alter.i.i176
  br i1 %cmp.not.i.i189, label %list_add_tail.exit.i.i190.unmerge_queues.exit.i194_crit_edge, label %list_add_tail.exit.i.i190.for.body.i.i186_crit_edge

list_add_tail.exit.i.i190.for.body.i.i186_crit_edge: ; preds = %list_add_tail.exit.i.i190
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i186

list_add_tail.exit.i.i190.unmerge_queues.exit.i194_crit_edge: ; preds = %list_add_tail.exit.i.i190
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmerge_queues.exit.i194

unmerge_queues.exit.i194:                         ; preds = %list_add_tail.exit.i.i190.unmerge_queues.exit.i194_crit_edge, %if.end.i.i178.unmerge_queues.exit.i194_crit_edge
  %81 = ptrtoint ptr %pending_alter.i.i176 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %pending_alter.i.i176, ptr %pending_alter.i.i176, align 4
  %prev.i25.i.i191 = getelementptr inbounds %struct.sem_array, ptr %call.i141, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %prev.i25.i.i191 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %pending_alter.i.i176, ptr %prev.i25.i.i191, align 4
  %83 = ptrtoint ptr %complex_count.i.i173 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr.i192 = load i32, ptr %complex_count.i.i173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i192)
  %tobool.not.i6.i193 = icmp eq i32 %.pr.i192, 0
  br i1 %tobool.not.i6.i193, label %if.end.i7.i197, label %unmerge_queues.exit.i194.sem_unlock.exit203_crit_edge

unmerge_queues.exit.i194.sem_unlock.exit203_crit_edge: ; preds = %unmerge_queues.exit.i194
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_unlock.exit203

if.end.i7.i197:                                   ; preds = %unmerge_queues.exit.i194
  %84 = ptrtoint ptr %use_global_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %use_global_lock.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp.i.i196 = icmp eq i32 %85, 1
  br i1 %cmp.i.i196, label %do.end5.i.i198, label %do.body18.i.i200

do.end5.i.i198:                                   ; preds = %if.end.i7.i197
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !146
  br label %if.end23.sink.split.i.i202

do.body18.i.i200:                                 ; preds = %if.end.i7.i197
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i199 = add i32 %85, -1
  br label %if.end23.sink.split.i.i202

if.end23.sink.split.i.i202:                       ; preds = %do.body18.i.i200, %do.end5.i.i198
  %sub.sink.i.i201 = phi i32 [ %sub.i.i199, %do.body18.i.i200 ], [ 0, %do.end5.i.i198 ]
  %86 = ptrtoint ptr %use_global_lock.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile i32 %sub.sink.i.i201, ptr %use_global_lock.i.i, align 8
  br label %sem_unlock.exit203

sem_unlock.exit203:                               ; preds = %if.end23.sink.split.i.i202, %unmerge_queues.exit.i194.sem_unlock.exit203_crit_edge, %if.then30.sem_unlock.exit203_crit_edge
  call void @_raw_spin_unlock(ptr noundef %call.i141) #13
  %call.i204 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i204, label %sem_unlock.exit203.rcu_read_unlock.exit215_crit_edge, label %land.lhs.true.i207

sem_unlock.exit203.rcu_read_unlock.exit215_crit_edge: ; preds = %sem_unlock.exit203
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit215

land.lhs.true.i207:                               ; preds = %sem_unlock.exit203
  %call1.i205 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i205)
  %tobool.not.i206 = icmp eq i32 %call1.i205, 0
  br i1 %tobool.not.i206, label %land.lhs.true.i207.rcu_read_unlock.exit215_crit_edge, label %land.lhs.true2.i209

land.lhs.true.i207.rcu_read_unlock.exit215_crit_edge: ; preds = %land.lhs.true.i207
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit215

land.lhs.true2.i209:                              ; preds = %land.lhs.true.i207
  %.b4.i208 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i208, label %land.lhs.true2.i209.rcu_read_unlock.exit215_crit_edge, label %if.then.i210

land.lhs.true2.i209.rcu_read_unlock.exit215_crit_edge: ; preds = %land.lhs.true2.i209
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit215

if.then.i210:                                     ; preds = %land.lhs.true2.i209
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit215

rcu_read_unlock.exit215:                          ; preds = %if.then.i210, %land.lhs.true2.i209.rcu_read_unlock.exit215_crit_edge, %land.lhs.true.i207.rcu_read_unlock.exit215_crit_edge, %sem_unlock.exit203.rcu_read_unlock.exit215_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %87 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i211 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i211 to ptr
  %preempt_count.i.i.i.i212 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i212 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i212, align 4
  %sub.i.i.i213 = add i32 %90, -1
  store volatile i32 %sub.i.i.i213, ptr %preempt_count.i.i.i.i212, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

if.end31:                                         ; preds = %__lookup_undo.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %91 = ptrtoint ptr %call.i141 to i32
  call void @__asan_load4_noabort(i32 %91)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %call.i141, align 4
  %92 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %ipc_assert_locked_object.exit, !prof !141

do.body4.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22ipc/util.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #13, !srcloc !142
  unreachable

ipc_assert_locked_object.exit:                    ; preds = %if.end31
  %list_id = getelementptr inbounds %struct.sem_undo, ptr %un.0.i, i32 0, i32 3
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list_id) #13
  br i1 %call.i.i, label %if.end.i.i216, label %ipc_assert_locked_object.exit.list_del.exit_crit_edge

ipc_assert_locked_object.exit.list_del.exit_crit_edge: ; preds = %ipc_assert_locked_object.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i216:                                    ; preds = %ipc_assert_locked_object.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.sem_undo, ptr %un.0.i, i32 0, i32 3, i32 1
  %93 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i, align 4
  %95 = ptrtoint ptr %list_id to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %list_id, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev1.i.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %96, ptr %94, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i216, %ipc_assert_locked_object.exit.list_del.exit_crit_edge
  %99 = ptrtoint ptr %list_id to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr inttoptr (i32 256 to ptr), ptr %list_id, align 4
  %prev.i = getelementptr inbounds %struct.sem_undo, ptr %un.0.i, i32 0, i32 3, i32 1
  %100 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_lock(ptr noundef %lock14) #13
  %call.i.i217 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %un.0.i) #13
  br i1 %call.i.i217, label %if.end.i.i220, label %list_del.exit.list_del_rcu.exit_crit_edge

list_del.exit.list_del_rcu.exit_crit_edge:        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_rcu.exit

if.end.i.i220:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i218 = getelementptr inbounds %struct.list_head, ptr %un.0.i, i32 0, i32 1
  %101 = ptrtoint ptr %prev.i.i218 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %prev.i.i218, align 4
  %103 = ptrtoint ptr %un.0.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %un.0.i, align 4
  %prev1.i.i.i219 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %prev1.i.i.i219 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %102, ptr %prev1.i.i.i219, align 4
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %104, ptr %102, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i220, %list_del.exit.list_del_rcu.exit_crit_edge
  %prev.i221 = getelementptr inbounds %struct.list_head, ptr %un.0.i, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i221 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i221, align 4
  call void @_raw_spin_unlock(ptr noundef %lock14) #13
  %sem_nsems = getelementptr inbounds %struct.sem_array, ptr %call.i141, i32 0, i32 5
  %108 = ptrtoint ptr %sem_nsems to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %sem_nsems, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp37275 = icmp sgt i32 %109, 0
  br i1 %cmp37275, label %for.body.lr.ph, label %list_del_rcu.exit.for.end_crit_edge

list_del_rcu.exit.for.end_crit_edge:              ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_del_rcu.exit
  %semadj = getelementptr inbounds %struct.sem_undo, ptr %un.0.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end57.for.body_crit_edge, %for.body.lr.ph
  %i.0276 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end57.for.body_crit_edge ]
  %110 = ptrtoint ptr %semadj to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %semadj, align 4
  %arrayidx38 = getelementptr i16, ptr %111, i32 %i.0276
  %112 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx38, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool39.not = icmp eq i16 %113, 0
  br i1 %tobool39.not, label %for.body.if.end57_crit_edge, label %if.then40

for.body.if.end57_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then40:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.sem_array, ptr %call.i141, i32 0, i32 9, i32 %i.0276
  %conv = sext i16 %113 to i32
  %114 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx, align 128
  %add = add i32 %115, %conv
  %116 = call i32 @llvm.smax.i32(i32 %add, i32 0)
  %117 = call i32 @llvm.umin.i32(i32 %116, i32 32767)
  %118 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %arrayidx, align 128
  %sempid = getelementptr %struct.sem_array, ptr %call.i141, i32 0, i32 9, i32 %i.0276, i32 1
  %119 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i = and i32 %119, -16384
  %120 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %122, i32 0, i32 111
  %123 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %124, i32 0, i32 22, i32 1
  %125 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i, align 4
  %127 = ptrtoint ptr %sempid to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %sempid, align 4
  %cmp.not.i222 = icmp eq ptr %128, %126
  br i1 %cmp.not.i222, label %if.then40.if.end57_crit_edge, label %if.then.i224

if.then40.if.end57_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then.i224:                                     ; preds = %if.then40
  %tobool.not.i.i223 = icmp eq ptr %126, null
  br i1 %tobool.not.i.i223, label %if.then.i224.get_pid.exit.i_crit_edge, label %if.then.i.i

if.then.i224.get_pid.exit.i_crit_edge:            ; preds = %if.then.i224
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit.i

if.then.i.i:                                      ; preds = %if.then.i224
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %126, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr nonnull %126, i32 1, i32 3, i32 1) #13
  %129 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %126, ptr nonnull %126, i32 1, ptr nonnull elementtype(i32) %126) #13, !srcloc !143
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %129, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !141

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %130 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %130)
  %.not.i.i.i.i.i = icmp sgt i32 %130, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_pid.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %126, i32 noundef %.sink.i.i.i.i.i) #13
  br label %get_pid.exit.i

get_pid.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, %if.then.i224.get_pid.exit.i_crit_edge
  %131 = ptrtoint ptr %sempid to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %126, ptr %sempid, align 4
  call void @put_pid(ptr noundef %128) #13
  br label %if.end57

if.end57:                                         ; preds = %get_pid.exit.i, %if.then40.if.end57_crit_edge, %for.body.if.end57_crit_edge
  %inc = add nuw nsw i32 %i.0276, 1
  %132 = ptrtoint ptr %sem_nsems to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sem_nsems, align 32
  %cmp37 = icmp slt i32 %inc, %133
  br i1 %cmp37, label %if.end57.for.body_crit_edge, label %if.end57.for.end_crit_edge

if.end57.for.end_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end57.for.body_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end57.for.end_crit_edge, %list_del_rcu.exit.for.end_crit_edge
  call fastcc void @do_smart_update(ptr noundef %call.i141, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %wake_q)
  %complex_count.i.i225 = getelementptr inbounds %struct.sem_array, ptr %call.i141, i32 0, i32 6
  %134 = ptrtoint ptr %complex_count.i.i225 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %complex_count.i.i225, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.not.i.i226 = icmp eq i32 %135, 0
  br i1 %tobool.not.i.i226, label %if.end.i.i230, label %for.end.sem_unlock.exit255_crit_edge

for.end.sem_unlock.exit255_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_unlock.exit255

if.end.i.i230:                                    ; preds = %for.end
  %pending_alter.i.i228 = getelementptr inbounds %struct.sem_array, ptr %call.i141, i32 0, i32 2
  %136 = ptrtoint ptr %pending_alter.i.i228 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pending_alter.i.i228, align 8
  %cmp.not26.i.i229 = icmp eq ptr %137, %pending_alter.i.i228
  br i1 %cmp.not26.i.i229, label %if.end.i.i230.unmerge_queues.exit.i246_crit_edge, label %if.end.i.i230.for.body.i.i238_crit_edge

if.end.i.i230.for.body.i.i238_crit_edge:          ; preds = %if.end.i.i230
  br label %for.body.i.i238

if.end.i.i230.unmerge_queues.exit.i246_crit_edge: ; preds = %if.end.i.i230
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmerge_queues.exit.i246

for.body.i.i238:                                  ; preds = %list_add_tail.exit.i.i242.for.body.i.i238_crit_edge, %if.end.i.i230.for.body.i.i238_crit_edge
  %q.027.i.i231 = phi ptr [ %tq.0.i.i232, %list_add_tail.exit.i.i242.for.body.i.i238_crit_edge ], [ %137, %if.end.i.i230.for.body.i.i238_crit_edge ]
  %138 = ptrtoint ptr %q.027.i.i231 to i32
  call void @__asan_load4_noabort(i32 %138)
  %tq.0.i.i232 = load ptr, ptr %q.027.i.i231, align 4
  %sops.i.i233 = getelementptr inbounds %struct.sem_queue, ptr %q.027.i.i231, i32 0, i32 5
  %139 = ptrtoint ptr %sops.i.i233 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %sops.i.i233, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %140, align 2
  %idxprom.i.i234 = zext i16 %142 to i32
  %pending_alter9.i.i235 = getelementptr %struct.sem_array, ptr %call.i141, i32 0, i32 9, i32 %idxprom.i.i234, i32 3
  %prev.i.i.i236 = getelementptr %struct.sem_array, ptr %call.i141, i32 0, i32 9, i32 %idxprom.i.i234, i32 3, i32 1
  %143 = ptrtoint ptr %prev.i.i.i236 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %prev.i.i.i236, align 4
  %call.i.i.i.i237 = call zeroext i1 @__list_add_valid(ptr noundef %q.027.i.i231, ptr noundef %144, ptr noundef %pending_alter9.i.i235) #13
  br i1 %call.i.i.i.i237, label %if.end.i.i.i.i240, label %for.body.i.i238.list_add_tail.exit.i.i242_crit_edge

for.body.i.i238.list_add_tail.exit.i.i242_crit_edge: ; preds = %for.body.i.i238
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i.i242

if.end.i.i.i.i240:                                ; preds = %for.body.i.i238
  call void @__sanitizer_cov_trace_pc() #15
  %145 = ptrtoint ptr %prev.i.i.i236 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %q.027.i.i231, ptr %prev.i.i.i236, align 4
  %146 = ptrtoint ptr %q.027.i.i231 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %pending_alter9.i.i235, ptr %q.027.i.i231, align 4
  %prev3.i.i.i.i239 = getelementptr inbounds %struct.list_head, ptr %q.027.i.i231, i32 0, i32 1
  %147 = ptrtoint ptr %prev3.i.i.i.i239 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %144, ptr %prev3.i.i.i.i239, align 4
  %148 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %q.027.i.i231, ptr %144, align 4
  br label %list_add_tail.exit.i.i242

list_add_tail.exit.i.i242:                        ; preds = %if.end.i.i.i.i240, %for.body.i.i238.list_add_tail.exit.i.i242_crit_edge
  %cmp.not.i.i241 = icmp eq ptr %tq.0.i.i232, %pending_alter.i.i228
  br i1 %cmp.not.i.i241, label %list_add_tail.exit.i.i242.unmerge_queues.exit.i246_crit_edge, label %list_add_tail.exit.i.i242.for.body.i.i238_crit_edge

list_add_tail.exit.i.i242.for.body.i.i238_crit_edge: ; preds = %list_add_tail.exit.i.i242
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i238

list_add_tail.exit.i.i242.unmerge_queues.exit.i246_crit_edge: ; preds = %list_add_tail.exit.i.i242
  call void @__sanitizer_cov_trace_pc() #15
  br label %unmerge_queues.exit.i246

unmerge_queues.exit.i246:                         ; preds = %list_add_tail.exit.i.i242.unmerge_queues.exit.i246_crit_edge, %if.end.i.i230.unmerge_queues.exit.i246_crit_edge
  %149 = ptrtoint ptr %pending_alter.i.i228 to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %pending_alter.i.i228, ptr %pending_alter.i.i228, align 4
  %prev.i25.i.i243 = getelementptr inbounds %struct.sem_array, ptr %call.i141, i32 0, i32 2, i32 1
  %150 = ptrtoint ptr %prev.i25.i.i243 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %pending_alter.i.i228, ptr %prev.i25.i.i243, align 4
  %151 = ptrtoint ptr %complex_count.i.i225 to i32
  call void @__asan_load4_noabort(i32 %151)
  %.pr.i244 = load i32, ptr %complex_count.i.i225, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i244)
  %tobool.not.i6.i245 = icmp eq i32 %.pr.i244, 0
  br i1 %tobool.not.i6.i245, label %if.end.i7.i249, label %unmerge_queues.exit.i246.sem_unlock.exit255_crit_edge

unmerge_queues.exit.i246.sem_unlock.exit255_crit_edge: ; preds = %unmerge_queues.exit.i246
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_unlock.exit255

if.end.i7.i249:                                   ; preds = %unmerge_queues.exit.i246
  %152 = ptrtoint ptr %use_global_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %use_global_lock.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %153)
  %cmp.i.i248 = icmp eq i32 %153, 1
  br i1 %cmp.i.i248, label %do.end5.i.i250, label %do.body18.i.i252

do.end5.i.i250:                                   ; preds = %if.end.i7.i249
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !146
  br label %if.end23.sink.split.i.i254

do.body18.i.i252:                                 ; preds = %if.end.i7.i249
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i251 = add i32 %153, -1
  br label %if.end23.sink.split.i.i254

if.end23.sink.split.i.i254:                       ; preds = %do.body18.i.i252, %do.end5.i.i250
  %sub.sink.i.i253 = phi i32 [ %sub.i.i251, %do.body18.i.i252 ], [ 0, %do.end5.i.i250 ]
  %154 = ptrtoint ptr %use_global_lock.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile i32 %sub.sink.i.i253, ptr %use_global_lock.i.i, align 8
  br label %sem_unlock.exit255

sem_unlock.exit255:                               ; preds = %if.end23.sink.split.i.i254, %unmerge_queues.exit.i246.sem_unlock.exit255_crit_edge, %for.end.sem_unlock.exit255_crit_edge
  call void @_raw_spin_unlock(ptr noundef %call.i141) #13
  %call.i256 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i256, label %sem_unlock.exit255.rcu_read_unlock.exit267_crit_edge, label %land.lhs.true.i259

sem_unlock.exit255.rcu_read_unlock.exit267_crit_edge: ; preds = %sem_unlock.exit255
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit267

land.lhs.true.i259:                               ; preds = %sem_unlock.exit255
  %call1.i257 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i257)
  %tobool.not.i258 = icmp eq i32 %call1.i257, 0
  br i1 %tobool.not.i258, label %land.lhs.true.i259.rcu_read_unlock.exit267_crit_edge, label %land.lhs.true2.i261

land.lhs.true.i259.rcu_read_unlock.exit267_crit_edge: ; preds = %land.lhs.true.i259
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit267

land.lhs.true2.i261:                              ; preds = %land.lhs.true.i259
  %.b4.i260 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i260, label %land.lhs.true2.i261.rcu_read_unlock.exit267_crit_edge, label %if.then.i262

land.lhs.true2.i261.rcu_read_unlock.exit267_crit_edge: ; preds = %land.lhs.true2.i261
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit267

if.then.i262:                                     ; preds = %land.lhs.true2.i261
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit267

rcu_read_unlock.exit267:                          ; preds = %if.then.i262, %land.lhs.true2.i261.rcu_read_unlock.exit267_crit_edge, %land.lhs.true.i259.rcu_read_unlock.exit267_crit_edge, %sem_unlock.exit255.rcu_read_unlock.exit267_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %155 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i263 = and i32 %155, -16384
  %156 = inttoptr i32 %and.i.i.i.i.i263 to ptr
  %preempt_count.i.i.i.i264 = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %preempt_count.i.i.i.i264 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %preempt_count.i.i.i.i264, align 4
  %sub.i.i.i265 = add i32 %158, -1
  store volatile i32 %sub.i.i.i265, ptr %preempt_count.i.i.i.i264, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @wake_up_q(ptr noundef nonnull %wake_q) #13
  %rcu = getelementptr inbounds %struct.sem_undo, ptr %un.0.i, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 8 to ptr)) #13
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit267, %rcu_read_unlock.exit215, %rcu_read_unlock.exit169, %rcu_read_unlock.exit152, %rcu_read_unlock.exit140
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q) #13
  br label %for.cond

for.end71:                                        ; preds = %if.then.i127, %land.lhs.true2.i126.for.end71_crit_edge, %land.lhs.true.i124.for.end71_crit_edge, %if.then11.for.end71_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !147
  %159 = call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i.i.i.i128 = and i32 %159, -16384
  %160 = inttoptr i32 %and.i.i.i.i.i128 to ptr
  %preempt_count.i.i.i.i129 = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %preempt_count.i.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %preempt_count.i.i.i.i129, align 4
  %sub.i.i.i = add i32 %162, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i129, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q) #13
  call void @kfree(ptr noundef nonnull %1) #13
  br label %cleanup72

cleanup72:                                        ; preds = %for.end71, %if.then10.i.i.i, %if.end5.i.i.i.cleanup72_crit_edge, %entry.cleanup72_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipc_update_pid(ptr nocapture noundef %pos, ptr noundef %pid) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pos, align 4
  %cmp.not = icmp eq ptr %1, %pid
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %tobool.not.i = icmp eq ptr %pid, null
  br i1 %tobool.not.i, label %if.then.get_pid.exit_crit_edge, label %if.then.i

if.then.get_pid.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit

if.then.i:                                        ; preds = %if.then
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pid, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %pid, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pid, ptr nonnull %pid, i32 1, ptr nonnull elementtype(i32) %pid) #13, !srcloc !143
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !141

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %pid, i32 noundef %.sink.i.i.i.i) #13
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %if.then.get_pid.exit_crit_edge
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pid, ptr %pos, align 4
  tail call void @put_pid(ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %get_pid.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sem_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipc_addid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_rcu_putref(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sem_rcu_free(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -88
  tail call void @security_sem_free(ptr noundef %add.ptr) #13
  tail call void @kvfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sem_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add_safe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_rmid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_sem_semctl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_to_ipc64_perm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipc_obtain_object_idr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc64_perm_to_ipc_perm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipc_rcu_getref(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sem_lock_and_putref(ptr noundef %sma) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_lock(ptr noundef %sma) #13
  %use_global_lock.i.i = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 7
  %0 = ptrtoint ptr %use_global_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use_global_lock.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i.i = icmp eq i32 %1, 0
  %2 = ptrtoint ptr %use_global_lock.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 10, ptr %use_global_lock.i.i, align 8
  br i1 %cmp.not.i.i, label %do.body12.i.i, label %entry.sem_lock.exit_crit_edge

entry.sem_lock.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_lock.exit

do.body12.i.i:                                    ; preds = %entry
  %sem_nsems.i.i = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 5
  %3 = ptrtoint ptr %sem_nsems.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sem_nsems.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1828.i.i = icmp sgt i32 %4, 0
  br i1 %cmp1828.i.i, label %do.body12.i.i.for.body.i.i_crit_edge, label %do.body12.i.i.sem_lock.exit_crit_edge

do.body12.i.i.sem_lock.exit_crit_edge:            ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_lock.exit

do.body12.i.i.for.body.i.i_crit_edge:             ; preds = %do.body12.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.body12.i.i.for.body.i.i_crit_edge
  %i.029.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %do.body12.i.i.for.body.i.i_crit_edge ]
  %lock.i.i = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %i.029.i.i, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #13
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #13
  %inc.i.i = add nuw nsw i32 %i.029.i.i, 1
  %5 = ptrtoint ptr %sem_nsems.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sem_nsems.i.i, align 32
  %cmp18.i.i = icmp slt i32 %inc.i.i, %6
  br i1 %cmp18.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.sem_lock.exit_crit_edge

for.body.i.i.sem_lock.exit_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sem_lock.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

sem_lock.exit:                                    ; preds = %for.body.i.i.sem_lock.exit_crit_edge, %do.body12.i.i.sem_lock.exit_crit_edge, %entry.sem_lock.exit_crit_edge
  tail call void @ipc_rcu_putref(ptr noundef %sma, ptr noundef nonnull @sem_rcu_free) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @count_semcnt(ptr noundef readonly %sma, i16 noundef zeroext %semnum, i1 noundef zeroext %count_zero) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %semnum to i32
  %pending_const = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %idxprom, i32 4
  %pending_alter = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %idxprom, i32 3
  %l.0 = select i1 %count_zero, ptr %pending_const, ptr %pending_alter
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %semcnt.0 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.cond_crit_edge ]
  %q.0.in = phi ptr [ %l.0, %entry ], [ %q.0, %for.cond.for.cond_crit_edge ]
  %0 = ptrtoint ptr %q.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %q.0 = load ptr, ptr %q.0.in, align 4
  %cmp.not = icmp eq ptr %q.0, %l.0
  %inc = add i32 %semcnt.0, 1
  br i1 %cmp.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %pending_alter10 = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 2
  %1 = ptrtoint ptr %pending_alter10 to i32
  call void @__asan_load4_noabort(i32 %1)
  %q.196 = load ptr, ptr %pending_alter10, align 4
  %cmp17.not97 = icmp eq ptr %q.196, %pending_alter10
  br i1 %cmp17.not97, label %for.end.for.end27_crit_edge, label %for.end.for.body19_crit_edge

for.end.for.body19_crit_edge:                     ; preds = %for.end
  br label %for.body19

for.end.for.end27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end27

for.body19:                                       ; preds = %check_qop.exit.for.body19_crit_edge, %for.end.for.body19_crit_edge
  %q.199 = phi ptr [ %q.1, %check_qop.exit.for.body19_crit_edge ], [ %q.196, %for.end.for.body19_crit_edge ]
  %semcnt.198 = phi i32 [ %add, %check_qop.exit.for.body19_crit_edge ], [ %semcnt.0, %for.end.for.body19_crit_edge ]
  %blocking.i = getelementptr inbounds %struct.sem_queue, ptr %q.199, i32 0, i32 6
  %2 = ptrtoint ptr %blocking.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %blocking.i, align 4
  %.b1.i = load i1, ptr @check_qop.__already_done, align 1
  br i1 %.b1.i, label %for.body19.if.end.i_crit_edge, label %if.then.i, !prof !144

for.body19.if.end.i_crit_edge:                    ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_qop.__already_done, align 1
  %4 = tail call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid.i.i, align 8
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %comm.i, i32 noundef %9) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body19.if.end.i_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %semnum)
  %cmp.not.i = icmp eq i16 %11, %semnum
  br i1 %cmp.not.i, label %if.end18.i, label %if.end.i.check_qop.exit_crit_edge

if.end.i.check_qop.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_qop.exit

if.end18.i:                                       ; preds = %if.end.i
  %sem_op.i = getelementptr inbounds %struct.sembuf, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %sem_op.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sem_op.i, align 2
  br i1 %count_zero, label %land.lhs.true.i, label %land.lhs.true27.critedge.i

land.lhs.true.i:                                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp22.i = icmp eq i16 %13, 0
  br i1 %cmp22.i, label %land.lhs.true.i.check_qop.exit_crit_edge, label %land.lhs.true.i.if.end33.i_crit_edge

land.lhs.true.i.if.end33.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

land.lhs.true.i.check_qop.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_qop.exit

land.lhs.true27.critedge.i:                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp30.i = icmp slt i16 %13, 0
  br i1 %cmp30.i, label %land.lhs.true27.critedge.i.check_qop.exit_crit_edge, label %land.lhs.true27.critedge.i.if.end33.i_crit_edge

land.lhs.true27.critedge.i.if.end33.i_crit_edge:  ; preds = %land.lhs.true27.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

land.lhs.true27.critedge.i.check_qop.exit_crit_edge: ; preds = %land.lhs.true27.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_qop.exit

if.end33.i:                                       ; preds = %land.lhs.true27.critedge.i.if.end33.i_crit_edge, %land.lhs.true.i.if.end33.i_crit_edge
  br label %check_qop.exit

check_qop.exit:                                   ; preds = %if.end33.i, %land.lhs.true27.critedge.i.check_qop.exit_crit_edge, %land.lhs.true.i.check_qop.exit_crit_edge, %if.end.i.check_qop.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end33.i ], [ 0, %if.end.i.check_qop.exit_crit_edge ], [ 1, %land.lhs.true.i.check_qop.exit_crit_edge ], [ 1, %land.lhs.true27.critedge.i.check_qop.exit_crit_edge ]
  %add = add i32 %retval.0.i, %semcnt.198
  %14 = ptrtoint ptr %q.199 to i32
  call void @__asan_load4_noabort(i32 %14)
  %q.1 = load ptr, ptr %q.199, align 4
  %cmp17.not = icmp eq ptr %q.1, %pending_alter10
  br i1 %cmp17.not, label %check_qop.exit.for.end27_crit_edge, label %check_qop.exit.for.body19_crit_edge

check_qop.exit.for.body19_crit_edge:              ; preds = %check_qop.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body19

check_qop.exit.for.end27_crit_edge:               ; preds = %check_qop.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end27

for.end27:                                        ; preds = %check_qop.exit.for.end27_crit_edge, %for.end.for.end27_crit_edge
  %semcnt.1.lcssa = phi i32 [ %semcnt.0, %for.end.for.end27_crit_edge ], [ %add, %check_qop.exit.for.end27_crit_edge ]
  br i1 %count_zero, label %if.then29, label %for.end27.if.end53_crit_edge

for.end27.if.end53_crit_edge:                     ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then29:                                        ; preds = %for.end27
  %pending_const31 = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 3
  %15 = ptrtoint ptr %pending_const31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %q.2100 = load ptr, ptr %pending_const31, align 4
  %cmp38.not101 = icmp eq ptr %q.2100, %pending_const31
  br i1 %cmp38.not101, label %if.then29.if.end53_crit_edge, label %if.then29.for.body41_crit_edge

if.then29.for.body41_crit_edge:                   ; preds = %if.then29
  br label %for.body41

if.then29.if.end53_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

for.body41:                                       ; preds = %check_qop.exit95.for.body41_crit_edge, %if.then29.for.body41_crit_edge
  %q.2103 = phi ptr [ %q.2, %check_qop.exit95.for.body41_crit_edge ], [ %q.2100, %if.then29.for.body41_crit_edge ]
  %semcnt.2102 = phi i32 [ %add45, %check_qop.exit95.for.body41_crit_edge ], [ %semcnt.1.lcssa, %if.then29.for.body41_crit_edge ]
  %blocking.i78 = getelementptr inbounds %struct.sem_queue, ptr %q.2103, i32 0, i32 6
  %16 = ptrtoint ptr %blocking.i78 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %blocking.i78, align 4
  %.b1.i79 = load i1, ptr @check_qop.__already_done, align 1
  br i1 %.b1.i79, label %for.body41.if.end.i88_crit_edge, label %if.then.i85, !prof !144

for.body41.if.end.i88_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i88

if.then.i85:                                      ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_qop.__already_done, align 1
  %18 = tail call i32 @llvm.read_register.i32(metadata !131) #13
  %and.i.i80 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i80 to ptr
  %task.i81 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i81 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i81, align 8
  %comm.i82 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 101
  %pid.i.i83 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid.i.i83, align 8
  %call8.i84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %comm.i82, i32 noundef %23) #16
  br label %if.end.i88

if.end.i88:                                       ; preds = %if.then.i85, %for.body41.if.end.i88_crit_edge
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %17, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %semnum)
  %cmp.not.i87 = icmp eq i16 %25, %semnum
  br i1 %cmp.not.i87, label %if.end18.i90, label %if.end.i88.check_qop.exit95_crit_edge

if.end.i88.check_qop.exit95_crit_edge:            ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_qop.exit95

if.end18.i90:                                     ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #15
  %sem_op.i89 = getelementptr inbounds %struct.sembuf, ptr %17, i32 0, i32 1
  %26 = ptrtoint ptr %sem_op.i89 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sem_op.i89, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp22.i91 = icmp eq i16 %27, 0
  %spec.select = zext i1 %cmp22.i91 to i32
  br label %check_qop.exit95

check_qop.exit95:                                 ; preds = %if.end18.i90, %if.end.i88.check_qop.exit95_crit_edge
  %retval.0.i94 = phi i32 [ 0, %if.end.i88.check_qop.exit95_crit_edge ], [ %spec.select, %if.end18.i90 ]
  %add45 = add i32 %retval.0.i94, %semcnt.2102
  %28 = ptrtoint ptr %q.2103 to i32
  call void @__asan_load4_noabort(i32 %28)
  %q.2 = load ptr, ptr %q.2103, align 4
  %cmp38.not = icmp eq ptr %q.2, %pending_const31
  br i1 %cmp38.not, label %check_qop.exit95.if.end53_crit_edge, label %check_qop.exit95.for.body41_crit_edge

check_qop.exit95.for.body41_crit_edge:            ; preds = %check_qop.exit95
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body41

check_qop.exit95.if.end53_crit_edge:              ; preds = %check_qop.exit95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.end53:                                         ; preds = %check_qop.exit95.if.end53_crit_edge, %if.then29.if.end53_crit_edge, %for.end27.if.end53_crit_edge
  %semcnt.3 = phi i32 [ %semcnt.1.lcssa, %for.end27.if.end53_crit_edge ], [ %semcnt.1.lcssa, %if.then29.if.end53_crit_edge ], [ %add45, %check_qop.exit95.if.end53_crit_edge ]
  ret i32 %semcnt.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipcctl_obtain_check(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipc_update_perm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lookup_undo(ptr noundef %ulp, i32 noundef %semid) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sem_undo_list, ptr %ulp, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !141

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22ipc/sem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1887, 0\0A.popsection", ""() #13, !srcloc !162
  unreachable

do.end9:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %lock, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.i.not.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.i.not.i, label %land.lhs.true.i, label %do.end9.do.end.i_crit_edge

do.end9.do.end.i_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.end9
  %call1.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %land.lhs.true6.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %.b32.i = load i1, ptr @__lookup_undo.__warned, align 1
  br i1 %.b32.i, label %land.lhs.true6.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__lookup_undo.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 1876, ptr noundef nonnull @.str.50) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true6.i.do.end.i_crit_edge, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.end9.do.end.i_crit_edge
  %list_proc.i = getelementptr inbounds %struct.sem_undo_list, ptr %ulp, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %un.0.in.i = phi ptr [ %list_proc.i, %do.end.i ], [ %un.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %un.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %un.0.i = load volatile ptr, ptr %un.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %un.0.i, %list_proc.i
  br i1 %cmp.not.i, label %for.cond.i.if.end15_crit_edge, label %for.body.i

for.cond.i.if.end15_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

for.body.i:                                       ; preds = %for.cond.i
  %semid14.i = getelementptr inbounds %struct.sem_undo, ptr %un.0.i, i32 0, i32 4
  %5 = ptrtoint ptr %semid14.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %semid14.i, align 4
  %cmp15.i = icmp eq i32 %6, %semid
  br i1 %cmp15.i, label %__lookup_undo.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

__lookup_undo.exit:                               ; preds = %for.body.i
  %tobool11.not = icmp eq ptr %un.0.i, null
  br i1 %tobool11.not, label %__lookup_undo.exit.if.end15_crit_edge, label %if.then12

__lookup_undo.exit.if.end15_crit_edge:            ; preds = %__lookup_undo.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then12:                                        ; preds = %__lookup_undo.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %un.0.i) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then12.list_del_rcu.exit_crit_edge

if.then12.list_del_rcu.exit_crit_edge:            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %un.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %un.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %un.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then12.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %un.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = ptrtoint ptr %list_proc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %list_proc.i, align 4
  %call.i.i21 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %un.0.i, ptr noundef %list_proc.i, ptr noundef %15) #13
  br i1 %call.i.i21, label %if.end.i.i22, label %list_del_rcu.exit.if.end15_crit_edge

list_del_rcu.exit.if.end15_crit_edge:             ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end.i.i22:                                     ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %un.0.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %un.0.i, align 4
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list_proc.i, ptr %prev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !163
  %18 = ptrtoint ptr %list_proc.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %un.0.i, ptr %list_proc.i, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %un.0.i, ptr %prev37.i.i, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end.i.i22, %list_del_rcu.exit.if.end15_crit_edge, %__lookup_undo.exit.if.end15_crit_edge, %for.cond.i.if.end15_crit_edge
  %retval.0.i25 = phi ptr [ null, %__lookup_undo.exit.if.end15_crit_edge ], [ %un.0.i, %list_del_rcu.exit.if.end15_crit_edge ], [ %un.0.i, %if.end.i.i22 ], [ null, %for.cond.i.if.end15_crit_edge ]
  ret ptr %retval.0.i25
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %head, ptr noundef %1) #13
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !163
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %head, align 4
  %prev37.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %prev37.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev37.i, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipc_obtain_object_check(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @perform_atomic_semop_slow(ptr nocapture noundef %sma, ptr nocapture noundef %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sops1 = getelementptr inbounds %struct.sem_queue, ptr %q, i32 0, i32 5
  %0 = ptrtoint ptr %sops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sops1, align 4
  %nsops2 = getelementptr inbounds %struct.sem_queue, ptr %q, i32 0, i32 7
  %2 = ptrtoint ptr %nsops2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nsops2, align 4
  %add.ptr = getelementptr %struct.sembuf, ptr %1, i32 %3
  %cmp156 = icmp ult ptr %1, %add.ptr
  br i1 %cmp156, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %undo = getelementptr inbounds %struct.sem_queue, ptr %q, i32 0, i32 2
  %4 = ptrtoint ptr %undo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %undo, align 4
  %sem_nsems = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 5
  %semadj = getelementptr inbounds %struct.sem_undo, ptr %5, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sop.0157 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %sop.0157 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sop.0157, align 2
  %8 = ptrtoint ptr %sem_nsems to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sem_nsems, align 32
  %conv = zext i16 %7 to i32
  %10 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv, i32 %9) #13, !srcloc !155
  %11 = trunc i32 %10 to i16
  %conv7 = and i16 %7, %11
  %conv8 = zext i16 %conv7 to i32
  %arrayidx = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %conv8
  %sem_op9 = getelementptr inbounds %struct.sembuf, ptr %sop.0157, i32 0, i32 1
  %12 = ptrtoint ptr %sem_op9 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sem_op9, align 2
  %conv10 = sext i16 %13 to i32
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp ne i16 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %if.end, label %for.body.would_block_crit_edge

for.body.would_block_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %would_block

if.end:                                           ; preds = %for.body
  %add = add i32 %15, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp12 = icmp slt i32 %add, 0
  br i1 %cmp12, label %if.end.would_block_crit_edge, label %if.end15

if.end.would_block_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %would_block

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %add)
  %cmp16 = icmp ugt i32 %add, 32767
  br i1 %cmp16, label %if.end15.undo59_crit_edge, label %if.end19

if.end15.undo59_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %undo59

if.end19:                                         ; preds = %if.end15
  %sem_flg = getelementptr inbounds %struct.sembuf, ptr %sop.0157, i32 0, i32 2
  %16 = ptrtoint ptr %sem_flg to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sem_flg, align 2
  %18 = and i16 %17, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool22.not = icmp eq i16 %18, 0
  br i1 %tobool22.not, label %if.end19.for.inc_crit_edge, label %if.then23

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then23:                                        ; preds = %if.end19
  %19 = ptrtoint ptr %semadj to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %semadj, align 4
  %21 = ptrtoint ptr %sop.0157 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sop.0157, align 2
  %idxprom = zext i16 %22 to i32
  %arrayidx26 = getelementptr i16, ptr %20, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx26, align 2
  %conv27 = sext i16 %24 to i32
  %sub = sub nsw i32 %conv27, %conv10
  %25 = add nsw i32 %sub, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %25)
  %26 = icmp ult i32 %25, -65536
  br i1 %26, label %if.then23.undo59_crit_edge, label %cleanup.thread

if.then23.undo59_crit_edge:                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %undo59

cleanup.thread:                                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  %conv34 = trunc i32 %sub to i16
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv34, ptr %arrayidx26, align 2
  br label %for.inc

for.inc:                                          ; preds = %cleanup.thread, %if.end19.for.inc_crit_edge
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %arrayidx, align 128
  %incdec.ptr = getelementptr %struct.sembuf, ptr %sop.0157, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %sop.0.lcssa = phi ptr [ %1, %entry.for.end_crit_edge ], [ %incdec.ptr, %for.inc.for.end_crit_edge ]
  %pid45 = getelementptr inbounds %struct.sem_queue, ptr %q, i32 0, i32 3
  %29 = ptrtoint ptr %pid45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pid45, align 4
  %sop.1159 = getelementptr %struct.sembuf, ptr %sop.0.lcssa, i32 -1
  %cmp46.not160 = icmp ult ptr %sop.1159, %1
  br i1 %cmp46.not160, label %for.end.cleanup88_crit_edge, label %while.body.lr.ph

for.end.cleanup88_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup88

while.body.lr.ph:                                 ; preds = %for.end
  %tobool.not.i.i = icmp eq ptr %30, null
  br label %while.body

while.body:                                       ; preds = %ipc_update_pid.exit.while.body_crit_edge, %while.body.lr.ph
  %sop.1161 = phi ptr [ %sop.1159, %while.body.lr.ph ], [ %sop.1, %ipc_update_pid.exit.while.body_crit_edge ]
  %31 = ptrtoint ptr %sop.1161 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sop.1161, align 2
  %idxprom50 = zext i16 %32 to i32
  %sempid = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %idxprom50, i32 1
  %33 = ptrtoint ptr %sempid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sempid, align 4
  %cmp.not.i = icmp eq ptr %34, %30
  br i1 %cmp.not.i, label %while.body.ipc_update_pid.exit_crit_edge, label %if.then.i

while.body.ipc_update_pid.exit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %ipc_update_pid.exit

if.then.i:                                        ; preds = %while.body
  br i1 %tobool.not.i.i, label %if.then.i.get_pid.exit.i_crit_edge, label %if.then.i.i

if.then.i.get_pid.exit.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %30, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull %30, i32 1, i32 3, i32 1) #13
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %30, ptr nonnull %30, i32 1, ptr nonnull elementtype(i32) %30) #13, !srcloc !143
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !141

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %36 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %.not.i.i.i.i.i = icmp sgt i32 %36, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_pid.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_pid.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %30, i32 noundef %.sink.i.i.i.i.i) #13
  br label %get_pid.exit.i

get_pid.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_pid.exit.i_crit_edge, %if.then.i.get_pid.exit.i_crit_edge
  %37 = ptrtoint ptr %sempid to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %30, ptr %sempid, align 4
  tail call void @put_pid(ptr noundef %34) #13
  br label %ipc_update_pid.exit

ipc_update_pid.exit:                              ; preds = %get_pid.exit.i, %while.body.ipc_update_pid.exit_crit_edge
  %sop.1 = getelementptr %struct.sembuf, ptr %sop.1161, i32 -1
  %cmp46.not = icmp ult ptr %sop.1, %1
  br i1 %cmp46.not, label %ipc_update_pid.exit.cleanup88_crit_edge, label %ipc_update_pid.exit.while.body_crit_edge

ipc_update_pid.exit.while.body_crit_edge:         ; preds = %ipc_update_pid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

ipc_update_pid.exit.cleanup88_crit_edge:          ; preds = %ipc_update_pid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup88

would_block:                                      ; preds = %if.end.would_block_crit_edge, %for.body.would_block_crit_edge
  %blocking = getelementptr inbounds %struct.sem_queue, ptr %q, i32 0, i32 6
  %38 = ptrtoint ptr %blocking to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %sop.0157, ptr %blocking, align 4
  %sem_flg53 = getelementptr inbounds %struct.sembuf, ptr %sop.0157, i32 0, i32 2
  %39 = ptrtoint ptr %sem_flg53 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %sem_flg53, align 2
  %41 = and i16 %40, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool56.not = icmp eq i16 %41, 0
  %. = select i1 %tobool56.not, i32 1, i32 -11
  br label %undo59

undo59:                                           ; preds = %would_block, %if.then23.undo59_crit_edge, %if.end15.undo59_crit_edge
  %result.0 = phi i32 [ %., %would_block ], [ -34, %if.end15.undo59_crit_edge ], [ -34, %if.then23.undo59_crit_edge ]
  %sop.2162 = getelementptr %struct.sembuf, ptr %sop.0157, i32 -1
  %cmp62.not163 = icmp ult ptr %sop.2162, %1
  br i1 %cmp62.not163, label %undo59.cleanup88_crit_edge, label %undo59.while.body64_crit_edge

undo59.while.body64_crit_edge:                    ; preds = %undo59
  br label %while.body64

undo59.cleanup88_crit_edge:                       ; preds = %undo59
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup88

while.body64:                                     ; preds = %if.end85.while.body64_crit_edge, %undo59.while.body64_crit_edge
  %sop.2165 = phi ptr [ %sop.2, %if.end85.while.body64_crit_edge ], [ %sop.2162, %undo59.while.body64_crit_edge ]
  %sop.0.pn143164 = phi ptr [ %sop.2165, %if.end85.while.body64_crit_edge ], [ %sop.0157, %undo59.while.body64_crit_edge ]
  %sem_op65 = getelementptr %struct.sembuf, ptr %sop.0.pn143164, i32 -1, i32 1
  %42 = ptrtoint ptr %sem_op65 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sem_op65, align 2
  %conv66 = sext i16 %43 to i32
  %44 = ptrtoint ptr %sop.2165 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sop.2165, align 2
  %idxprom69 = zext i16 %45 to i32
  %arrayidx70 = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %idxprom69
  %46 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx70, align 128
  %sub72 = sub i32 %47, %conv66
  store i32 %sub72, ptr %arrayidx70, align 128
  %sem_flg73 = getelementptr %struct.sembuf, ptr %sop.0.pn143164, i32 -1, i32 2
  %48 = ptrtoint ptr %sem_flg73 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %sem_flg73, align 2
  %50 = and i16 %49, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool76.not = icmp eq i16 %50, 0
  br i1 %tobool76.not, label %while.body64.if.end85_crit_edge, label %if.then77

while.body64.if.end85_crit_edge:                  ; preds = %while.body64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then77:                                        ; preds = %while.body64
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %semadj to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %semadj, align 4
  %53 = ptrtoint ptr %sop.2165 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %sop.2165, align 2
  %idxprom80 = zext i16 %54 to i32
  %arrayidx81 = getelementptr i16, ptr %52, i32 %idxprom80
  %55 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx81, align 2
  %add83 = add i16 %56, %43
  store i16 %add83, ptr %arrayidx81, align 2
  br label %if.end85

if.end85:                                         ; preds = %if.then77, %while.body64.if.end85_crit_edge
  %sop.2 = getelementptr %struct.sembuf, ptr %sop.2165, i32 -1
  %cmp62.not = icmp ult ptr %sop.2, %1
  br i1 %cmp62.not, label %if.end85.cleanup88_crit_edge, label %if.end85.while.body64_crit_edge

if.end85.while.body64_crit_edge:                  ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body64

if.end85.cleanup88_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup88

cleanup88:                                        ; preds = %if.end85.cleanup88_crit_edge, %undo59.cleanup88_crit_edge, %ipc_update_pid.exit.cleanup88_crit_edge, %for.end.cleanup88_crit_edge
  %retval.0 = phi i32 [ %result.0, %undo59.cleanup88_crit_edge ], [ 0, %for.end.cleanup88_crit_edge ], [ %result.0, %if.end85.cleanup88_crit_edge ], [ 0, %ipc_update_pid.exit.cleanup88_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_smart_wakeup_zero(ptr noundef %sma, ptr noundef readonly %sops, i32 noundef %nsops, ptr noundef %wake_q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sops, null
  br i1 %tobool.not, label %for.cond5.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsops)
  %cmp46 = icmp sgt i32 %nsops, 0
  br i1 %cmp46, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end26_crit_edge

for.cond.preheader.if.end26_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond5.preheader:                              ; preds = %entry
  %sem_nsems = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 5
  %0 = ptrtoint ptr %sem_nsems to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sem_nsems, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp651 = icmp sgt i32 %1, 0
  br i1 %cmp651, label %for.cond5.preheader.for.body8_crit_edge, label %for.cond5.preheader.if.end26_crit_edge

for.cond5.preheader.if.end26_crit_edge:           ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

for.cond5.preheader.for.body8_crit_edge:          ; preds = %for.cond5.preheader
  br label %for.body8

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %got_zero.049 = phi i32 [ %got_zero.1, %if.end.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %semop_completed.048 = phi i32 [ %semop_completed.1, %if.end.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.047 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sembuf, ptr %sops, i32 %i.047
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %arrayidx1 = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %conv
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %if.then4, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call fastcc i32 @wake_const_ops(ptr noundef %sma, i32 noundef %conv, ptr noundef %wake_q)
  %or = or i32 %call, %semop_completed.048
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body.if.end_crit_edge
  %semop_completed.1 = phi i32 [ %or, %if.then4 ], [ %semop_completed.048, %for.body.if.end_crit_edge ]
  %got_zero.1 = phi i32 [ 1, %if.then4 ], [ %got_zero.049, %for.body.if.end_crit_edge ]
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, %nsops
  br i1 %exitcond.not, label %if.end.if.end21_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

for.body8:                                        ; preds = %for.inc18.for.body8_crit_edge, %for.cond5.preheader.for.body8_crit_edge
  %got_zero.255 = phi i32 [ %got_zero.3, %for.inc18.for.body8_crit_edge ], [ 0, %for.cond5.preheader.for.body8_crit_edge ]
  %semop_completed.254 = phi i32 [ %semop_completed.3, %for.inc18.for.body8_crit_edge ], [ 0, %for.cond5.preheader.for.body8_crit_edge ]
  %i.152 = phi i32 [ %inc19, %for.inc18.for.body8_crit_edge ], [ 0, %for.cond5.preheader.for.body8_crit_edge ]
  %arrayidx10 = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %i.152
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx10, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp eq i32 %7, 0
  br i1 %cmp12, label %if.then14, label %for.body8.for.inc18_crit_edge

for.body8.for.inc18_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc18

if.then14:                                        ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = tail call fastcc i32 @wake_const_ops(ptr noundef %sma, i32 noundef %i.152, ptr noundef %wake_q)
  %or16 = or i32 %call15, %semop_completed.254
  br label %for.inc18

for.inc18:                                        ; preds = %if.then14, %for.body8.for.inc18_crit_edge
  %semop_completed.3 = phi i32 [ %or16, %if.then14 ], [ %semop_completed.254, %for.body8.for.inc18_crit_edge ]
  %got_zero.3 = phi i32 [ 1, %if.then14 ], [ %got_zero.255, %for.body8.for.inc18_crit_edge ]
  %inc19 = add nuw nsw i32 %i.152, 1
  %8 = ptrtoint ptr %sem_nsems to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sem_nsems, align 32
  %cmp6 = icmp slt i32 %inc19, %9
  br i1 %cmp6, label %for.inc18.for.body8_crit_edge, label %for.inc18.if.end21_crit_edge

for.inc18.if.end21_crit_edge:                     ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

for.inc18.for.body8_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body8

if.end21:                                         ; preds = %for.inc18.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %semop_completed.4 = phi i32 [ %semop_completed.3, %for.inc18.if.end21_crit_edge ], [ %semop_completed.1, %if.end.if.end21_crit_edge ]
  %got_zero.4 = phi i32 [ %got_zero.3, %for.inc18.if.end21_crit_edge ], [ %got_zero.1, %if.end.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %got_zero.4)
  %tobool22.not = icmp eq i32 %got_zero.4, 0
  br i1 %tobool22.not, label %if.end21.if.end26_crit_edge, label %if.then23

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = tail call fastcc i32 @wake_const_ops(ptr noundef %sma, i32 noundef -1, ptr noundef %wake_q)
  %or25 = or i32 %call24, %semop_completed.4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end21.if.end26_crit_edge, %for.cond5.preheader.if.end26_crit_edge, %for.cond.preheader.if.end26_crit_edge
  %semop_completed.5 = phi i32 [ %or25, %if.then23 ], [ %semop_completed.4, %if.end21.if.end26_crit_edge ], [ 0, %for.cond5.preheader.if.end26_crit_edge ], [ 0, %for.cond.preheader.if.end26_crit_edge ]
  ret i32 %semop_completed.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_queue(ptr noundef %sma, i32 noundef %semnum, ptr noundef %wake_q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %semnum)
  %cmp = icmp eq i32 %semnum, -1
  %pending_alter = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 2
  %pending_alter1 = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %semnum, i32 3
  %pending_list.0 = select i1 %cmp, ptr %pending_alter, ptr %pending_alter1
  %arrayidx11 = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %semnum
  %0 = ptrtoint ptr %pending_list.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pending_list.0, align 4
  %cmp8.not6775 = icmp eq ptr %1, %pending_list.0
  br i1 %cmp8.not6775, label %entry.for.end_crit_edge, label %for.body.lr.ph.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph.lr.ph:                             ; preds = %entry
  %complex_count.i = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 6
  br label %for.body

again.loopexit:                                   ; preds = %wake_up_sem_queue_prepare.exit
  %2 = ptrtoint ptr %pending_list.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pending_list.0, align 4
  %cmp8.not67 = icmp eq ptr %3, %pending_list.0
  br i1 %cmp8.not67, label %again.loopexit.for.end_crit_edge, label %again.loopexit.for.body.backedge_crit_edge

again.loopexit.for.body.backedge_crit_edge:       ; preds = %again.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.backedge

again.loopexit.for.end_crit_edge:                 ; preds = %again.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.backedge, %for.body.lr.ph.lr.ph
  %q.070 = phi ptr [ %1, %for.body.lr.ph.lr.ph ], [ %q.070.be, %for.body.backedge ]
  %semop_completed.168 = phi i32 [ 0, %for.body.lr.ph.lr.ph ], [ %semop_completed.168.be, %for.body.backedge ]
  %4 = ptrtoint ptr %q.070 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.071 = load ptr, ptr %q.070, align 4
  br i1 %cmp, label %for.body.if.end14_crit_edge, label %land.lhs.true

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

land.lhs.true:                                    ; preds = %for.body
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx11, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp12 = icmp eq i32 %6, 0
  br i1 %cmp12, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %for.body.if.end14_crit_edge
  %call = tail call fastcc i32 @perform_atomic_semop(ptr noundef %sma, ptr noundef %q.070)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp15 = icmp sgt i32 %call, 0
  br i1 %cmp15, label %if.end14.for.inc_crit_edge, label %if.end17

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end17:                                         ; preds = %if.end14
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %q.070) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end17.list_del.exit.i_crit_edge

if.end17.list_del.exit.i_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %q.070, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %q.070 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %q.070, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end17.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %q.070 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %q.070, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %q.070, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %nsops.i = getelementptr inbounds %struct.sem_queue, ptr %q.070, i32 0, i32 7
  %15 = ptrtoint ptr %nsops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nsops.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp sgt i32 %16, 1
  br i1 %cmp.i, label %if.then.i, label %list_del.exit.i.unlink_queue.exit_crit_edge

list_del.exit.i.unlink_queue.exit_crit_edge:      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlink_queue.exit

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %complex_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %complex_count.i, align 4
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %complex_count.i, align 4
  br label %unlink_queue.exit

unlink_queue.exit:                                ; preds = %if.then.i, %list_del.exit.i.unlink_queue.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else19, label %unlink_queue.exit.if.end22_crit_edge

unlink_queue.exit.if.end22_crit_edge:             ; preds = %unlink_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.else19:                                        ; preds = %unlink_queue.exit
  %sops = getelementptr inbounds %struct.sem_queue, ptr %q.070, i32 0, i32 5
  %19 = ptrtoint ptr %sops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sops, align 4
  %21 = ptrtoint ptr %nsops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nsops.i, align 4
  %call20 = tail call fastcc i32 @do_smart_wakeup_zero(ptr noundef %sma, ptr noundef %20, i32 noundef %22, ptr noundef %wake_q)
  %23 = ptrtoint ptr %pending_alter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %pending_alter, align 4
  %cmp.i.not.i = icmp eq ptr %24, %pending_alter
  br i1 %cmp.i.not.i, label %if.end.i, label %if.else19.if.end22_crit_edge

if.else19.if.end22_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.end.i:                                         ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %nsops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nsops.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i58 = icmp sgt i32 %26, 1
  %..i = zext i1 %cmp.i58 to i32
  br label %if.end22

if.end22:                                         ; preds = %if.end.i, %if.else19.if.end22_crit_edge, %unlink_queue.exit.if.end22_crit_edge
  %semop_completed.2 = phi i32 [ %semop_completed.168, %unlink_queue.exit.if.end22_crit_edge ], [ 1, %if.else19.if.end22_crit_edge ], [ 1, %if.end.i ]
  %restart.0 = phi i32 [ 0, %unlink_queue.exit.if.end22_crit_edge ], [ 1, %if.else19.if.end22_crit_edge ], [ %..i, %if.end.i ]
  %sleeper1.i = getelementptr inbounds %struct.sem_queue, ptr %q.070, i32 0, i32 1
  %27 = ptrtoint ptr %sleeper1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sleeper1.i, align 4
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #13
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #13, !srcloc !143
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end22.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !141

if.end22.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end22
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.wake_up_sem_queue_prepare.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.wake_up_sem_queue_prepare.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wake_up_sem_queue_prepare.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end22.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end22.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef %.sink.i.i.i.i.i) #13
  br label %wake_up_sem_queue_prepare.exit

wake_up_sem_queue_prepare.exit:                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.wake_up_sem_queue_prepare.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !145
  %status.i = getelementptr inbounds %struct.sem_queue, ptr %q.070, i32 0, i32 4
  %31 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %call, ptr %status.i, align 4
  tail call void @wake_q_add_safe(ptr noundef %wake_q, ptr noundef %28) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %restart.0)
  %tobool23.not = icmp eq i32 %restart.0, 0
  br i1 %tobool23.not, label %wake_up_sem_queue_prepare.exit.for.inc_crit_edge, label %again.loopexit

wake_up_sem_queue_prepare.exit.for.inc_crit_edge: ; preds = %wake_up_sem_queue_prepare.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %wake_up_sem_queue_prepare.exit.for.inc_crit_edge, %if.end14.for.inc_crit_edge
  %semop_completed.3.ph = phi i32 [ %semop_completed.168, %if.end14.for.inc_crit_edge ], [ %semop_completed.2, %wake_up_sem_queue_prepare.exit.for.inc_crit_edge ]
  %cmp8.not = icmp eq ptr %tmp.071, %pending_list.0
  br i1 %cmp8.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.backedge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %again.loopexit.for.body.backedge_crit_edge
  %q.070.be = phi ptr [ %tmp.071, %for.inc.for.body.backedge_crit_edge ], [ %3, %again.loopexit.for.body.backedge_crit_edge ]
  %semop_completed.168.be = phi i32 [ %semop_completed.3.ph, %for.inc.for.body.backedge_crit_edge ], [ %semop_completed.2, %again.loopexit.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %again.loopexit.for.end_crit_edge, %entry.for.end_crit_edge
  %semop_completed.1.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %semop_completed.2, %again.loopexit.for.end_crit_edge ], [ %semop_completed.168, %land.lhs.true.for.end_crit_edge ], [ %semop_completed.3.ph, %for.inc.for.end_crit_edge ]
  ret i32 %semop_completed.1.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wake_const_ops(ptr noundef %sma, i32 noundef %semnum, ptr noundef %wake_q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %semnum)
  %cmp = icmp eq i32 %semnum, -1
  %pending_const = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 3
  %pending_const1 = getelementptr %struct.sem_array, ptr %sma, i32 0, i32 9, i32 %semnum, i32 4
  %pending_list.0 = select i1 %cmp, ptr %pending_const, ptr %pending_const1
  %0 = ptrtoint ptr %pending_list.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pending_list.0, align 4
  %cmp8.not37 = icmp eq ptr %1, %pending_list.0
  br i1 %cmp8.not37, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %complex_count.i = getelementptr inbounds %struct.sem_array, ptr %sma, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %q.039 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.040, %cleanup.for.body_crit_edge ]
  %semop_completed.038 = phi i32 [ 0, %for.body.lr.ph ], [ %semop_completed.2, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %q.039 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.040 = load ptr, ptr %q.039, align 4
  %call = tail call fastcc i32 @perform_atomic_semop(ptr noundef %sma, ptr noundef %q.039)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp sgt i32 %call, 0
  br i1 %cmp9, label %for.body.cleanup_crit_edge, label %if.end11

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %q.039) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end11.list_del.exit.i_crit_edge

if.end11.list_del.exit.i_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %q.039, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %q.039 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %q.039, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end11.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %q.039 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %q.039, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %q.039, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %nsops.i = getelementptr inbounds %struct.sem_queue, ptr %q.039, i32 0, i32 7
  %11 = ptrtoint ptr %nsops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nsops.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp sgt i32 %12, 1
  br i1 %cmp.i, label %if.then.i, label %list_del.exit.i.unlink_queue.exit_crit_edge

list_del.exit.i.unlink_queue.exit_crit_edge:      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlink_queue.exit

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %complex_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %complex_count.i, align 4
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %complex_count.i, align 4
  br label %unlink_queue.exit

unlink_queue.exit:                                ; preds = %if.then.i, %list_del.exit.i.unlink_queue.exit_crit_edge
  %sleeper1.i = getelementptr inbounds %struct.sem_queue, ptr %q.039, i32 0, i32 1
  %15 = ptrtoint ptr %sleeper1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sleeper1.i, align 4
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #13
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #13, !srcloc !143
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %unlink_queue.exit.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !141

unlink_queue.exit.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %unlink_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %unlink_queue.exit
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.wake_up_sem_queue_prepare.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.wake_up_sem_queue_prepare.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wake_up_sem_queue_prepare.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %unlink_queue.exit.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %unlink_queue.exit.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef %.sink.i.i.i.i.i) #13
  br label %wake_up_sem_queue_prepare.exit

wake_up_sem_queue_prepare.exit:                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.wake_up_sem_queue_prepare.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !145
  %status.i = getelementptr inbounds %struct.sem_queue, ptr %q.039, i32 0, i32 4
  %19 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %call, ptr %status.i, align 4
  tail call void @wake_q_add_safe(ptr noundef %wake_q, ptr noundef %16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12 = icmp eq i32 %call, 0
  %spec.select = select i1 %cmp12, i32 1, i32 %semop_completed.038
  br label %cleanup

cleanup:                                          ; preds = %wake_up_sem_queue_prepare.exit, %for.body.cleanup_crit_edge
  %semop_completed.2 = phi i32 [ %spec.select, %wake_up_sem_queue_prepare.exit ], [ %semop_completed.038, %for.body.cleanup_crit_edge ]
  %cmp8.not = icmp eq ptr %tmp.040, %pending_list.0
  br i1 %cmp8.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %semop_completed.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %semop_completed.2, %cleanup.for.end_crit_edge ]
  ret i32 %semop_completed.0.lcssa
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39, !41, !42, !43, !44, !45, !46, !47, !48, !49, !51, !52, !53, !54, !55, !56, !57, !58, !59, !61, !62, !63, !64, !65, !66, !67, !68, !69, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !88, !89, !91, !93, !95, !96, !97, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !125, !126, !128, !129}
!llvm.named.register.sp = !{!131}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../ipc/sem.c", i32 271, i32 26}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../ipc/sem.c", i32 272, i32 5}
!4 = !{ptr @ksys_semget.sem_ops, !5, !"sem_ops", i1 false, i1 false}
!5 = !{!"../ipc/sem.c", i32 605, i32 30}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../ipc/sem.c", i32 624, i32 1}
!8 = !{ptr @event_enter__semget, !7, !"event_enter__semget", i1 false, i1 false}
!9 = !{ptr @__event_enter__semget, !7, !"__event_enter__semget", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @event_exit__semget, !7, !"event_exit__semget", i1 false, i1 false}
!12 = !{ptr @__event_exit__semget, !7, !"__event_exit__semget", i1 false, i1 false}
!13 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__syscall_meta__semget, !7, !"__syscall_meta__semget", i1 false, i1 false}
!15 = !{ptr @__p_syscall_meta__semget, !7, !"__p_syscall_meta__semget", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../ipc/sem.c", i32 1707, i32 1}
!18 = !{ptr @event_enter__semctl, !17, !"event_enter__semctl", i1 false, i1 false}
!19 = !{ptr @__event_enter__semctl, !17, !"__event_enter__semctl", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @event_exit__semctl, !17, !"event_exit__semctl", i1 false, i1 false}
!22 = !{ptr @__event_exit__semctl, !17, !"__event_exit__semctl", i1 false, i1 false}
!23 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__syscall_meta__semctl, !17, !"__syscall_meta__semctl", i1 false, i1 false}
!25 = !{ptr @__p_syscall_meta__semctl, !17, !"__p_syscall_meta__semctl", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../ipc/sem.c", i32 1720, i32 1}
!28 = !{ptr @event_enter__old_semctl, !27, !"event_enter__old_semctl", i1 false, i1 false}
!29 = !{ptr @__event_enter__old_semctl, !27, !"__event_enter__old_semctl", i1 false, i1 false}
!30 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @event_exit__old_semctl, !27, !"event_exit__old_semctl", i1 false, i1 false}
!32 = !{ptr @__event_exit__old_semctl, !27, !"__event_exit__old_semctl", i1 false, i1 false}
!33 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__syscall_meta__old_semctl, !27, !"__syscall_meta__old_semctl", i1 false, i1 false}
!35 = !{ptr @__p_syscall_meta__old_semctl, !27, !"__p_syscall_meta__old_semctl", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../ipc/sem.c", i32 2165, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../ipc/sem.c", i32 2272, i32 1}
!41 = !{ptr @event_enter__semtimedop, !40, !"event_enter__semtimedop", i1 false, i1 false}
!42 = !{ptr @__event_enter__semtimedop, !40, !"__event_enter__semtimedop", i1 false, i1 false}
!43 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @event_exit__semtimedop, !40, !"event_exit__semtimedop", i1 false, i1 false}
!45 = !{ptr @__event_exit__semtimedop, !40, !"__event_exit__semtimedop", i1 false, i1 false}
!46 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @__syscall_meta__semtimedop, !40, !"__syscall_meta__semtimedop", i1 false, i1 false}
!48 = !{ptr @__p_syscall_meta__semtimedop, !40, !"__p_syscall_meta__semtimedop", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../ipc/sem.c", i32 2292, i32 1}
!51 = !{ptr @event_enter__semtimedop_time32, !50, !"event_enter__semtimedop_time32", i1 false, i1 false}
!52 = !{ptr @__event_enter__semtimedop_time32, !50, !"__event_enter__semtimedop_time32", i1 false, i1 false}
!53 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @event_exit__semtimedop_time32, !50, !"event_exit__semtimedop_time32", i1 false, i1 false}
!55 = !{ptr @__event_exit__semtimedop_time32, !50, !"__event_exit__semtimedop_time32", i1 false, i1 false}
!56 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @__syscall_meta__semtimedop_time32, !50, !"__syscall_meta__semtimedop_time32", i1 false, i1 false}
!58 = !{ptr @__p_syscall_meta__semtimedop_time32, !50, !"__p_syscall_meta__semtimedop_time32", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../ipc/sem.c", i32 2300, i32 1}
!61 = !{ptr @event_enter__semop, !60, !"event_enter__semop", i1 false, i1 false}
!62 = !{ptr @__event_enter__semop, !60, !"__event_enter__semop", i1 false, i1 false}
!63 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @event_exit__semop, !60, !"event_exit__semop", i1 false, i1 false}
!65 = !{ptr @__event_exit__semop, !60, !"__event_exit__semop", i1 false, i1 false}
!66 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @__syscall_meta__semop, !60, !"__syscall_meta__semop", i1 false, i1 false}
!68 = !{ptr @__p_syscall_meta__semop, !60, !"__p_syscall_meta__semop", i1 false, i1 false}
!69 = !{ptr @newary.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../ipc/sem.c", i32 562, i32 3}
!71 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.22, !7, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.23, !7, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @types__semget, !7, !"types__semget", i1 false, i1 false}
!75 = !{ptr @.str.24, !7, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.25, !7, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.26, !7, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @args__semget, !7, !"args__semget", i1 false, i1 false}
!79 = !{ptr @.str.27, !17, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @types__semctl, !17, !"types__semctl", i1 false, i1 false}
!81 = !{ptr @.str.28, !17, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.29, !17, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.30, !17, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.31, !17, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @args__semctl, !17, !"args__semctl", i1 false, i1 false}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!88 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../ipc/sem.c", i32 1085, i32 2}
!95 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @check_qop._entry, !94, !"_entry", i1 false, i1 false}
!98 = !{ptr @check_qop._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @types__old_semctl, !27, !"types__old_semctl", i1 false, i1 false}
!100 = !{ptr @args__old_semctl, !27, !"args__old_semctl", i1 false, i1 false}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!103 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!107 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.40, !40, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.41, !40, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.42, !40, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @types__semtimedop, !40, !"types__semtimedop", i1 false, i1 false}
!112 = !{ptr @.str.43, !40, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.44, !40, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.45, !40, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @args__semtimedop, !40, !"args__semtimedop", i1 false, i1 false}
!116 = !{ptr @.str.46, !50, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @types__semtimedop_time32, !50, !"types__semtimedop_time32", i1 false, i1 false}
!118 = !{ptr @.str.47, !50, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @args__semtimedop_time32, !50, !"args__semtimedop_time32", i1 false, i1 false}
!120 = !{ptr @.str.48, !60, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @types__semop, !60, !"types__semop", i1 false, i1 false}
!122 = !{ptr @args__semop, !60, !"args__semop", i1 false, i1 false}
!123 = !{ptr @get_undo_list.__key, !124, !"__key", i1 false, i1 false}
!124 = !{!"../ipc/sem.c", i32 1861, i32 3}
!125 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../ipc/sem.c", i32 1875, i32 2}
!128 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../ipc/sem.c", i32 2472, i32 6}
!131 = !{!"sp"}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{!"branch_weights", i32 1, i32 2000}
!142 = !{i64 2155378254, i64 2155378729, i64 2155378291, i64 2155378347, i64 2155378381, i64 2155378405, i64 2155378446, i64 2155378467, i64 2155378495, i64 2155378529}
!143 = !{i64 2148296410, i64 2148296442, i64 2148296471, i64 2148296505, i64 2148296536, i64 2148296559}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{i64 2155436664}
!146 = !{i64 2155394362}
!147 = !{i64 2149466314}
!148 = !{i64 2152326760, i64 2152326785}
!149 = !{i64 2149466048}
!150 = !{i8 0, i8 2}
!151 = !{i64 2152326079, i64 2152326104}
!152 = !{i64 4821634}
!153 = !{i64 4821831}
!154 = !{i64 2152307064}
!155 = !{i64 743682, i64 743699}
!156 = !{i64 2155582451, i64 2155582926, i64 2155582488, i64 2155582544, i64 2155582578, i64 2155582602, i64 2155582643, i64 2155582664, i64 2155582692, i64 2155582726}
!157 = !{i64 2155596326}
!158 = !{i64 2155411233}
!159 = !{i64 2148384411}
!160 = !{i64 2148298875, i64 2148298907, i64 2148298936, i64 2148298970, i64 2148299001, i64 2148299024}
!161 = !{i64 2149502463}
!162 = !{i64 2155580318, i64 2155580793, i64 2155580355, i64 2155580411, i64 2155580445, i64 2155580469, i64 2155580510, i64 2155580531, i64 2155580559, i64 2155580593}
!163 = !{i64 2150352092}
